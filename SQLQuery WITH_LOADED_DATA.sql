CREATE DATABASE JOINT_EXCERCISE
GO
USE JOINT_EXCERCISE
CREATE TABLE dbo.EMPLOYEES
(
	EMPLOYEE_ID INT PRIMARY KEY,
	FIRST_NAME NVARCHAR(50),
	LAST_NAME NVARCHAR(50),
	DEPARTMENT NVARCHAR(50),
	SALARY INT,
	CITY VARCHAR(50),
	AGE INT

);
INSERT INTO dbo.EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT, SALARY, CITY, AGE) VALUES
(1, 'John', 'Doe', 'Engineering', 75000, 'New York', 30),
(2, 'Jane', 'Smith', 'Marketing', 65000, 'Los Angeles', 28),
(3, 'Michael', 'Johnson', 'Sales', 70000, 'Chicago', 35),
(4, 'Emily', 'Davis', 'HR', 60000, 'Houston', 32),
(5, 'David', 'Wilson', 'Finance', 80000, 'Phoenix', 40);


----------------------SECOND TABLE

CREATE TABLE PROJECTS
(
	PROJECT_ID INT,
	EMPLOYEE_ID INT,
	PROJECT_NAME NVARCHAR(100),
	BUDGET INT,
	START_DATE DATE,
	STATUS NVARCHAR(20)
	);
	
	INSERT INTO PROJECTS (PROJECT_ID, EMPLOYEE_ID, PROJECT_NAME, BUDGET, START_DATE, STATUS) VALUES
	(101, 1, 'AI DEVELOPMENT', 100000, '2024-01-10', 'Completed'),
	(102, 2, 'EMPLOYEE TRAINING', 50000, '2024-02-15', 'Ongoing'),
	(103, 3, 'CYBERSECURITY AUDIT', 75000, '2024-03-05', 'Pending'),
	(104, 4, 'FINANCIAL ANALYSIS', 90000, '2024-04-12', 'Ongoing'),
	(105, 5, 'MARKET EXPANSION', 65000, '2024-05-20', 'Completed'),
	(106, 6, 'RISK MANAGEMENT', 80000, '2024-05-10', 'Pending');


	-------------------QUESTIONS , WE'RE ANALYSING THE DATA IN THE TABLES----------
--	1. SQL Joins 
--1. Retrieve all employees and their assigned projects using an INNER JOIN. 
--o Return: EmployeeID, FirstName, LastName, Department, Salary, ProjectID, ProjectName, Budget, Status.

		SELECT EMPLOYEE_TABLE.EMPLOYEE_ID, First_Name, Last_Name, Department, Salary, Project_ID, Project_Name, Budget, Status
		FROM EMPLOYEES AS EMPLOYEE_TABLE
		INNER JOIN PROJECTS AS PROJECT_TABLE 
		ON EMPLOYEE_TABLE.EMPLOYEE_ID = PROJECT_TABLE.EMPLOYEE_ID
		Order by BUDGET desc
		----------I've encountered an error of AMBIGUOUS COLOUMN ----whic means SQL was confused of where
		----the EMPLOYEE_ID Which was the matching coloumn from the the other --SQL it was confused of where the EMPLOYEE_ID Belongs to