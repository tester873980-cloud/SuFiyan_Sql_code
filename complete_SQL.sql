
--➖WELCOME TO MY FILE!🥰YOU CAN VISIT🔍IT IF YOU WANT👀BUT BUT DON'T EDIT ANYTHING🧮👊🤜🤛➖

create database db_1;

create table table_1(
    Roll_no int , 
    Name varchar(50) not null,
    Gender varchar(50) not null,
    math int not null,
    s_s_t int not null,
    hindi varchar(50) not null,
    total int not null
);


insert into table_1(
    roll_no,
    Name,
    Gender,
    math,
    s_s_t,
    hindi,
    total
)

values
(1,'priti','female',50,60,90,200),
(2,'rahul','male',50,50,50,150),
(3,'kavita','female',100,100,50,250),
(4,'ramesh','male',80,80,80,240),
(5,'ravi','male',100,100,100,300),
(6,'rajiv','male',90,90,90,270),
(6,'rajiv','male',90,90,90,270);

select * from table_1;

SELECT ROLL_NO,NAME,GENDER,MATH,S_S_T,HINDI,TOTAL FROM TABLE_1;

--difference❓❔
SELECT  DISTINCT ROLL_NO,NAME,GENDER,MATH,S_S_T,HINDI,TOTAL
FROM TABLE_1;

SELECT  DISTINCT *
FROM TABLE_1;

drop table table_1;
SELECT * FROM TABLE_1
LIMIT 3;

create table table_1A(
column1 int,
column2 int,
column3 int
);
insert into table_1A(column1,column2,column3)
values
(10,20,30),
(10,10,30),
(10,10,10),
(20,20,20),
(30,30,30),
(20,10,30),
(10,30,20);

select * from table_1A;

select count(*) from table_1;
select sum(total) from table_1;
select avg(total) from table_1;
select min(total) from table_1;
select max(total) from table_1;
select group_concat(name) from table_1;
-- This will return a single string with all employee names concatenated together.
select variance(total) from table_1;
select stddev(total) from table_1;

-- USE OF EXTRACT FUNCTION👇👇
SELECT EXTRACT(YEAR FROM NOW()) AS current_year;
select extract (month from now()) as current_month;
select extract (day from now()) as current_day;
select extract (hour from now()) as current_hour;
select extract (minute from now()) as current_minute;
select extract (second from now()) as current_second;

-- sbhi ek sath
SELECT EXTRACT(YEAR FROM NOW()) AS current_year,
 extract (month from now()) as current_month,
 extract (day from now()) as current_day,
 extract (hour from now()) as current_hour,
 extract (minute from now()) as current_minute,
 extract (second from now()) as current_second;

select * from table_1;

-- if want to add these columns in table_1 
ALTER TABLE table_1
ADD COLUMN current_year INT,
ADD COLUMN current_month INT,
ADD COLUMN current_day INT,
ADD COLUMN current_hour INT,
ADD COLUMN current_minute INT,
ADD COLUMN current_second INT;

alter table table_1
add column currentdate date,
add column currenttimestamp timestamp;

update table_1
set
 current_year=extract(year from now()),
 current_month = EXTRACT(MONTH FROM NOW()),
 current_day = EXTRACT(DAY FROM NOW()),
 current_hour = EXTRACT(HOUR FROM NOW()),
 current_minute = EXTRACT(MINUTE FROM NOW()),
 current_second = EXTRACT(SECOND FROM NOW());
 currentdate = CURRENT_DATE,
 curenttimestamp=current_timestamp;


-- FOR MYSQL
select 
year(last_promotion) as year
from sample_data;

select 
-- month(last_promotion) as month
-- day(last_promotion) as day
-- hour(last_promotion) as hour
-- MINUTE(current_timestamp) AS minute,
-- SECOND(current_timestamp) AS second,
dayofweek(current_timestamp) as DOW
from sample_data;





create table table_2(
SR_NO INT PRIMARY KEY NOT NULL,
EMPLOYEE_NAME VARCHAR(50) NOT NULL,
EMPLOYEE_ID VARCHAR NOT NULL,
BASIC_SALARY INT,
DA varchar(50),
TA varchar(50),
HRA varchar(50),
PF varchar(50),
TOTAL Int
);




INSERT INTO table_2(
	SR_NO,
	EMPLOYEE_NAME,
	EMPLOYEE_ID,
	BASIC_SALARY,
	DA,
	TA,
	HRA,
	PF,
	TOTAL
)

VALUES
(1,'PRITI',1001,15000,'2%','3%','1%','3%',15450),
(2,'MOHAN',1002,20000,'2%','3%','1%','3%',20600),
(3,'SOHAN',1003,30000,'4%','6%','3%','4%',32700),
(4,'ROHAN',1004,50000,'19%','22%','21%','25%',68500),
(5,'VIRAT',1005,60000,'19%','22%','21%','25%',82200),
(6,'KAPIL',1006,45000,'12%','15%','16%','16%',57150),
(7,'SUMIT',1007,55000,'19%','22%','21%','25%',75350),
(8,'SHYAM',1008,48000,'12%','15%','16%','16%',60960);

SELECT * FROM TABLE_2;

CREATE TABLE TABLE_3(
SR_NO INT PRIMARY KEY NOT NULL,
NAME VARCHAR(50) NOT NULL,
GENDER VARCHAR(50) NOT NULL,
COUNTRY VARCHAR(50) NOT NULL,
AGE INT NOT NULL,
OUTPUT VARCHAR(50) 
);

INSERT INTO TABLE_3(
SR_NO,
NAME,
GENDER,
COUNTRY,
AGE,
OUTPUT
)

VALUES
(1,'PRITI','MALE','USA',15,'NOT APPLICABLE'),
(2,'SOHAN','MALE','JAPAN',16,'NOT APPLICABLE'),
(3,'MOHAN','MALE','INDIA',18,'APPLICABLE FOR VOTE'),
(4,'RAMESH','MALE','USA',21,'NOT APPLICABLE'),
(5,'VIRAT','MALE','JAPAN',22,'NOT APPLICABLE'),
(6,'KAPIL','MALE','INDIA',14,'NOT APPLICABLE'),
(7,'MAHESH','MALE','USA',23,'NOT APPLICABLE'),
(8,'SURESH','MALE','JAPAN',25,'NOT APPLICABLE'),
(9,'YADAV','MALE','INDIA',17,'NOT APPLICABLE'),
(10,'REHAN','MALE','INDIA',22,'APPLICABLE FOR VOTE');


SELECT * FROM TABLE_3;

CREATE TABLE TABLE_4(
DATE DATE ,
EXPENSE_NAME VARCHAR(50) NOT NULL,
CATEGORY VARCHAR(50),
PAYMENT_MODE VARCHAR(50),
TYPE VARCHAR(50),
AMOUNT INT NOT NULL,
REMARK VARCHAR(50)
);

INSERT INTO TABLE_4(
DATE, 
EXPENSE_NAME,
CATEGORY,
PAYMENT_MODE,
TYPE,
AMOUNT,
REMARK
)

VALUES
('2025-OCT-1','STATINORY','OFFICE','CASH','EXPENSE',250,'PENS FILES'),
('2025-OCT-2','ELECTRICITY BILL','UTILITY','UPI','EXPENSE',1800,'MONTHLY BILL'),
('2025-OCT-3','TEA & SNACKS','MAINTENANCE','CASH','EXPENSE',120,'PENS FILES'),
('2025-OCT-4','INTERNET BILL','UTILITY','ONLINE','EXPENSE',700,'PENS FILES'),
('2025-OCT-5','LAPTOP REPAIR','MAINTENANCE','CASH','EXPENSE',1000,'PENS FILES'),
('2025-OCT-6','STAFF BONUS','SALARY','CASH','INCOME',850,'PENS FILES'),
('2025-OCT-7','NEW SOFTWARE','TECH','CASH','EXPENSE',2100,'PENS FILES'),
('2025-OCT-8','PRINTER INK','MAINTENANCE','CASH','EXPENSE',2000,'PENS FILES'),
('2025-OCT-9','WATER BOTTLE','FOOD','CASH','EXPENSE',80,'PENS FILES'),
('2025-OCT-10','LIGHT BLUB','MAINTENANCE','CASH','EXPENSE',230,'PENS FILES');



SELECT * FROM TABLE_4;

create table TABLE_5(
STUDENT_ID INT PRIMARY KEY NOT NULL,
STUDENT_NAME VARCHAR(50) NOT NULL,
COURSE VARCHAR(50),
DURATION_IN_MONTHS INT NOT NULL,
DOJ DATE,
DOC DATE,
FEES INT NOT NULL
);

INSERT INTO TABLE_5(
STUDENT_ID,
STUDENT_NAME,
COURSE,
DURATION_IN_MONTHS,
DOJ,
DOC,
FEES
)
VALUES 
(1001,'PRITI','MS OFFICE',3,'2025-7-1','2025-7-3',10000),
(1002,'KAVITA','PYTHON',2,'2025-7-1','2025-7-3',12000),
(1003,'RAHUL','TALLY',6,'2025-7-1','2025-7-3',16000),
(1004,'KOMAL','DATA ANALYTICS',8,'2025-7-1','2025-7-3',0000),
(1005,'RIYA','DATA ANALYTICS',8,'2025-7-1','2025-7-3',30000),
(1006,'HARISH','WEB DESIGN',12,'2025-7-1','2025-7-3',20000),
(1007,'LALIT','DATA ANALYTICS',8,'2025-7-1','2025-7-3',16000),
(1008,'RONAK','WEB DESIGN',8,'2025-7-1','2025-7-3',16000),
(1009,'KAPIL','TALLY',12,'2025-7-1','2025-7-3',16000),
(1010,'RAMESH','TALLY',6,'2025-7-1','2025-7-3',30000),
(1011,'MOHIT','TALLY',6,'2025-7-1','2025-7-3',30000),
(1012,'SOHAN','DATA ANALYTICS',6,'2025-7-1','2025-7-3',30000),
(1013,'MOHAN','DATA ANALYTICS',8,'2025-7-1','2025-7-3',30000),
(1014,'RAM','TYPING',8,'2025-7-1','2025-7-3',30000),
(1015,'DEV','DATA ANALYTICS',2,'2025-7-1','2025-7-3',20000),
(1016,'KAVYA','DATA ANALYTICS',8,'2025-7-1','2025-7-3',30000),
(1017,'EKTA','WEB DESGIN',8,'2025-7-1','2025-7-3',30000),
(1018,'VINOD','MS OFFICE',12,'2025-7-1','2025-7-3',10000),
(1019,'MAHESH','TYPING',2,'2025-7-1','2025-7-3',10000),
(1020,'REHAN','DATA ANALYTICS',8,'2025-7-1','2025-7-3',10000);

elect datediff('2025-01-01','2025-01-31');


-- Q1. Write a query to display each course and the number of students enrolled in it.
-- Only display courses having more than 2 students
select course, count(student_id) as total_students
from table_5
group by course
having count(student_id) > 2;



-- Q2.Write a query to find the total fees collected for each course.
-- Show only those courses where the total collected fees is greater than 40,000.

select course,sum(fees) as total_fees
from table_5
group by course
having total_fees > 40000;



-- Q3.Write a query to display the average fees of each course.
-- Show only those courses whose average fees is above 15,000.
select course,avg(fees) as avg_fees
from table_5
group by course
having avg_fees > 15000;



-- Q4.Write a query to find how many students joined on each DOJ date.
-- Show only the dates that have at least 3 students.
select doj, count(student_id) as total_students
from table_5
group by doj
having count(student_id) >= 3;



-- Q5.Write a query to list each course and its maximum and minimum fees.
-- Show only those courses where the maximum fee is 20,000 or more.
select course,max(fees),min(fees)
from table_5
group by course
having max(fees) >= 20000;



-- Q6.Write a query to display each COURSE with the total duration in months of all students in that course combined.
-- Show only courses with a total duration greater than 20 months.
select course,sum(duration_in_months)
from table_5
group by course
having sum(duration_in_months)>20;



-- 👁‍🗨👁‍🗨Q7.Write a query to find the number of students paying 0 fees for each course.
-- Show only courses having at least one zero-fee student.
select course, count(student_id) as zero_fee_students
from table_5
where fees = 0
group by course
having count(student_id) >= 1;



-- Q8.Write a query to list each course and the count of students whose fees are 30,000.
-- Show only courses where the count is greater than or equal to 2.
select course, count(student_id) as total_30000_students
from table_5
where fees = 30000
group by course
having count(student_id) >= 2;


-- Q9.Write a query to display each course and the average duration of students.
-- Show only those courses where the average duration is greater than 6 months.
select course,avg(duration_in_months)
from table_5
group by course
having avg(duration_in_months) > 6;

-- Q10.Write a query to find the number of students in each course where the duration is more than 6 months.
-- Show only courses having more than 1 such student.
select course, count(student_id) as total_students_above_6
from table_5
where duration_in_months > 6
group by course
having count(student_id) > 1;

SELECT * FROM TABLE_5;

/* this is for multiple line comment */
update table_5 
SET STUDENT_NAME ='RENCHO', COURSE = 'FULL STACK'
WHERE STUDENT_ID = 1013;

DELETE FROM TABLE_5
WHERE STUDENT_ID = 20;

TRUNCATE TABLE TABLE_5;

DROP TABLE TABLE_5;   

ALTER TABLE TABLE_5
ADD REMARK VARCHAR(10);

-- ERROR❓❔
INSERT INTO TABLE_5(REMARK)
VALUES
(GOOD),
(BAD),
(NORMAL),
(GOOD);
--

-- TO RENAME COLUMN NAME 
ALTER TABLE TABLE_5
RENAME COLUMN STUDENT_ID TO ROLL_NO;

--TO CHANGE COLUMN DATATYPE  

/*ERROR❗- column "remark" cannot be cast automatically to type integer
 ANSWER KYUKI USS REMARK COLUMN ME VALUE KO INT ME CONVERT NHI KAR SKTE
 KYUKI ALPPHABETS BHI HAIN✔✔*/

 CODE 👇👇👇👇
CREATE TABLE TABLE_9(ROLL INT ,DURATION VARCHAR(50));

INSERT INTO TABLE_9(ROLL,DURATION)
VALUES
(1,1),
(1,2),
(1,3);
SELECT * FROM  TABLE_9;

ALTER TABLE TABLE_9
ALTER COLUMN DURATION TYPE INT
USING DURATION::INTEGER;
DROP TABLE TABLE_9


 
-- IS PRIMARY KEY DATATYPE❓❔
ALTER TABLE TABLE_5
ALTER COLUMN REMARK TYPE INT;  

--SET CONSTRAINT
--ALL CONSTRAINT--NOT NULL,UNIQUE,PRIMARY KEY,FOREIGN KEY,CHECK,DEFAULT,
                -- AUTO INCREMENT,INDEX
ALTER TABLE TABLE_5
ALTER COLUMN COURSE SET NOT NULL;

--DROP CONSTRAINT
-- CAN WE CHANGE CONSTRAINT??
ALTER TABLE TABLE_5
ALTER COLUMN COURSE DROP NOT NULL;

--HOW WE CAN DROP CONSTRAINT❓❔
ALTER TABLE TABLE_5
ALTER COLUMN ROLL_NO DROP PRIMARY KEY;

ALTER TABLE TABLE_5
ADD PRIMARY KEY (ROLL_NO);

ALTER TABLE TABLE_5
ADD COLUMN_1 INT;

--PROCESS TO CHANGE IN OUR QUERY? LIKE IF WANT TO CHANGE DATATYPE,CONSTRAITN ETC...??


--ADD UNIQUE CONSTRAINT
--ERROR❓❔
ALTER TABLE TABLE_5
ADD CONSTRAINT STUDENT_NAME UNIQUE()


--DROP COLUMN
ALTER TABLE TABLE_5
DROP COLUMN REMARK;

ALTER TABLE TABLE_5
DROP COLUMN COLUMN_1;

--ERROR❓❔
--DROP CONSTRAINT
ALTER TABLE TABLE_5
DROP CONSTRAINT PRIMARY KEY;

--TO RENAME TABLE
ALTER TABLE TABLE_55
RENAME TO TABLE_5;



-- ERROR📌📌
CREATE TABLE TABLE_6(
RECORD_ID SERIAL PRIMARY KEY,
EMP_ID INT,
BASIC_SALARY DECIMAL(10,2) NOT NULL,
DA DECIMAL(10,2),
TA DECIMAL(10,2),
HRA DECIMAL(10,2),
PF DECIMAL(10,2),
JOIN_DATE DATE DEFAULT CURRENT_DATE,
TOTAL DECIMAL(10,2)
GENERATED ALWAYS AS (BASIC_SALARY+DA+TA+HRA-PF) STORED,
SALARY_DATE DATE DEFAULT CURRENT_DATE
);

INSERT INTO TABLE_6(
RECORD_ID,
EMP_ID,
BASIC_SALARY,
DA,
TA,
HRA,
PF,
JOIN_DATE,
TOTAL,
SALARY_DATE
)

VALUES
(101,25000,5000,2000,3000,1000,'2024-01-15','2024-01-31'),
(101,25000,5000,2000,3000,1000,'2024-01-15','2024-01-31'),
(101,25000,5000,2000,3000,1000,'2024-01-15','2024-01-31'),
(101,25000,5000,2000,3000,1000,'2024-01-15','2024-01-31'),
(101,25000,5000,2000,3000,1000,'2024-01-15','2024-01-31');

select * from table_6;


CREATE TABLE TABLE_7(
SR_NO INT PRIMARY KEY,
NAME VARCHAR(50) NOT NULL,
GMAIL VARCHAR(100) UNIQUE);

INSERT INTO TABLE_7(
SR_NO,
NAME,
GMAIL)

VALUES
(1,'RAHUL','RAHUL@GMAIL.COM'),
(2,'HARISH','HARISH@GMAIL.COM'),
(3,'HARISH','HARISH123@GMAIL.COM');
-- ERROR📍📍(3,NULL),
-- ERROR📍📍(3,'PRITI')
-- ERROR📍📍(3,'HARISH','HARISH@GMAIL.COM')
SELECT * FROM TABLE_7;


DROP TABLE TABLE_7;


create TABLE TABLE_8(
    ROLL_NO INT PRIMARY KEY NOT NULL,
    STUDENT_NAME VARCHAR(50) NOT NULL,
    COURSE VARCHAR(50) NOT NULL,
    MARKS INT NOT NULL,
    CITY VARCHAR(50) NOT NULL,
    GRADE CHAR(1)
);

INSERT INTO TABLE_8(
    ROLL_NO,
    STUDENT_NAME,
    COURSE,
    MARKS,
    CITY
)
VALUES
(1,'PRITI','DATA SCIENCE',85,'JAIPUR'),
(2,'MUSKAN','WEB DEVELOPMENT',78,'DELHI'),
(3,'AMAN','DATA SCIENCE',92,'MUMBAI'),
(4,'ROHTI','AI BASICS',67,'PUNE'),
(5,'PRIYA','WEB DEVELOPMENT',88,'JAIPUR'),
(6,'RAVI','AI BASICS',73,'DELHI'),
(7,'NEHA','MACHINE LEARNING',95,'CHENNAI'),
(8,'ARJUN','WEB DEVELOPMENT',60,'MUMBAI'),
(9,'POOJA','DATA SCIENCE',82,'JAIPUR'),
(10,'KARAN','AI BASICS',69,'DELHI');

SELECT * FROM TABLE_8;

UPDATE TABLE_8
SET MARKS = MARKS+10
WHERE STUDENT_NAME = 'ROHIT';

UPDATE TABLE_8
SET COURSE = 'MACHINE LEARNING'
WHERE STUDENT_NAME = 'AMAN';

UPDATE TABLE_8
SET CITY = 'BANGALORE'
WHERE STUDENT_NAME = 'NEHA';

update TABLE_8
SET GRADE='A'
WHERE MARKS>=90;
/*📌📌ERROR
UPDATE TABLE_8
SET GRADE='B'
WHERE BETWEEN 80 AND 89;

UPDATE TABLE_8
SET GRADE='C'
WHERE BETWEEN 70 AND 79;

UPDATE TABLE_8
SET GRADE='D'
WHERE MARKS<70;
*/

DELETE FROM TABLE_8
WHERE MARKS<70;

DELETE FROM TABLE_8
WHERE STUDENT_NAME='MUSKAN'

TRUNCATE TABLE TABLE_8;
DROP TABLE TABLE_8; 




create table student_info(
    STUDENT_ID INT PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    AGE INT NOT NULL,
    CITY VARCHAR(50) NOT NULL,
    MARKS INT 
);

INSERT INTO student_info(STUDENT_ID,NAME,AGE,CITY,MARKS)
VALUES
(1,'PRITI',17,'JAIPUR',78),
(2,'NEHA',18,'SIKAR',85),
(3,'MEENA',17,'DELHI',92),
(4,'ROHIT',16,'MUMBAI',55),
(5,'ANJALI',18,'SIKAR',61),
(6,'SAMEER',19,'PUNE',49),
(7,'PRIYA',17,'SIKAR',72),
(8,'ARJUN',18,'JAIPUR',88),
(9,'KOMAL',16,'MUMBAI',67),
(10,'KARAN',17,'DELHI',58);

select * from student_info;

SELECT * FROM STUDENT_INFO
WHERE CITY = 'JAIPUR';

SELECT * FROM STUDENT_INFO
WHERE MARKS > 70;

SELECT  DISTINCT *
FROM STUDENT_INFO;

select * FROM STUDENT_INFO
WHERE AGE = 17 AND MARKS > 60;

SELECT * FROM STUDENT_INFO
ORDER BY MARKS DESC;

SELECT * FROM STUDENT_INFO
WHERE NAME LIKE 'A%';
--A% %A %A% _A%

SELECT * FROM STUDENT_INFO
WHERE NOT CITY = 'DELHI';

-- ADD BONUS TO ALL STUDENT+5
UPDATE STUDENT_INFO
SET MARKS=MARKS+5;

-- LOWER+LIKE
SELECT * FROM STUDENT_INFO
WHERE LOWER(NAME) LIKE 'A%';


create TABLE EMPLOYEE_DIRECTORY_SYSTEM(
    EMP_ID INT PRIMARY KEY  SERIAL NOT NULL,
    NAME VARCHAR(50) NOT NULL,
    AGE INT NOT NULL,
    CITY VARCHAR(20) NOT NULL,
    SALARY INT ,
    DEPARTMENT VARCHAR(20)
);

insert INTO EMPLOYEE_DIRECTORY_SYSTEM(EMP_ID,NAME,AGE,CITY,SALARY,DEPARTMENT)
VALUES
('PRITI',24,'JAIPUR',28000),
('RAHUL',22,'DELHI',35000),
('MEERA',26,'MUMBAI',42000),
('ARJUN',29,'JAIPUR',39000),
('PRIYA',23,'PUNE',31000),
('ROHIT',27,'DELHI',45000),
('KIRAN',25,'SURAT',26000),
('KOMAL',28,'MUMBAI',48000),
('SAMEER',24,'DELHI',33000),
('ANJALI',30,'JAIPUR',52000);

SELECT * FROM EMPLOYEE_DIRECTORY_SYSTEM;

SELECT * FROM EMPLOYEE_DIRECTORY_SYSTEM
WHERE CITY = 'DELHI';

SELECT * FROM EMPLOYEE_DIRECTORY_SYSTEM
WHERE SALARY>30000 AND SALARY<45000;

SELECT DISTINCT * FROM EMPLOYEE_DIRECTORY_SYSTEM;

SELECT * FROM EMPLOYEE_DIRECTORY_SYSTEM
WHERE NAME LIKE (A%);

SELECT * FROM EMPLOYEE_DIRECTORY_SYSTEM
WHERE NOT DEPARTMENT = 'IT';

SELECT NAME,AGE,SALARY FROM EMPLOYEE_DIRECTORY_SYSTEM
WHERE AGE >25;

--table STUDENTS
CREATE TABLE STUDENTS(
    ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    AGE INT,
    CITY VARCHAR(50),
    MARKS DECIMAL(5,2)
);

INSERT INTO STUDENTS(ID,NAME,AGE,CITY,MARKS)
VALUES
(1,'AMIT',20,'DELHI',80.5)
(2,'RIYA',19,NULL,75.0)
(3,'ROHAN',21,'MUMBAI',NULL)
(4,'SNEHA',22,'PUNE',90.0)
(5,'KARAN',20,NULL,NULL);


--table EMPLOYEES
CREATE TABLE STUDENTS(
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(50),
    DEPARTMENT VARCHAR(50),
    SALARY DECIMAL(10,2),
    CITY VARCHAR(50)
);

SELECT * FROM STUDENTS;

SELECT * STUDENT_NAME FROM STUDENTS
WHERE STUDENT_NAME IS NULL;

SELECT * FROM STUDENT_NAME FROM STUDENTS
WHERE MARKS IS NOT NULL;

SELECT * FROM STUDENTS
UPDATE STUDENTS
SET MARKS = 85
WHERE STUDENT_ID=2;

DELETE FROM STUDENTS
WHERE STUDENT_NAME='KARAN';

SELECT * FROM STUDENTS
ORDER BY STUDENT_NAME ASC;

SELECT * FROM STUDENTS
ORDER BY MARKS DESC;

ALTER TABLE STUDENTS
ADD GENDER VARCHAR(20);

ALTER TABLE STUDENTS
RENAME COLUMN MARKS TO SCORE ;

SELECT * FROM STUDENTS
WHERE AGE > 20 AND CITY IS NOT NULL;




INSERT into EMPLOYEES(EMP_ID,EMP_NAME,DEPARTMENT,SALARY,CITY)
VALUES
(1,'AMIT','HR',40000,'DELHI'),
(2,'RIYA','IT',NULL,'MUMBAI'),
(3,'ROHAN',NULL,55000,'PUNE'),
(4,'SNEHA','FINANCE',60000,NULL),
(5,'KARAN','SALES',NULL,NULL),
(6,'NEHA','HR',45000,'DELHI');

CREATE TABLE PRODUCTS(
    PRODUCT_ID INT PRIMARY KEY,
    PRODUCT_NAME VARCHAR(50),
    CATEGORY VARCHAR(50),
    PRICE DECIMAL(10,2),
    STOCK INT
);


INSERT INTO PRODUCTS(PRODUCT_ID,PRODUCT_NAME,CATEGORY,PRICE,STOCK)
VALUES
(1,'LAPTOP','ELECTRONICS',55000,20),
(2,'MOBILE','ELECTRONICS',15000,NULL),
(3,'CHAIR','FURNITURE',3000,15),
(4,'TABLE',NUL,4500,5),
(5,'SHOES','FASHION',NULL,10),
(6,'WATCH','FASHION',2000,NULL),
(7,'TV','ELECTRONICS',40000,8),
(8,'CUP',NULL,200,50);


SELECT * FROM PRODUCTS;

SELECT * FROM PRODUCTS
WHERE CATEGORY IS NULL;

UPDATE PRODUCTS
SET CATEGORY = 'NULL'
WHERE CATEGORY IS NULL;




CREATE TABLE sample_data (
    id INT PRIMARY KEY,                -- Integer (Numeric)
    name VARCHAR(100),                  -- String (Text)
    age INT,                            -- Integer (Numeric)
    salary DECIMAL(10, 2),              -- Decimal (Numeric with precision)
    join_date DATE,                     -- Date (Date)
    is_active BOOLEAN,                  -- Boolean (True/False)
    department VARCHAR(50),             -- String (Text)
    last_promotion DATE,                -- Date (Date)
    profile_picture BLOB,               -- Binary Large Object (for storing images, files)
    performance_rating FLOAT,           -- Floating point number
    address TEXT,                       -- Long text (to store larger amounts of text)
    bonus INT,                          -- Integer (Numeric)
    email VARCHAR(255),                 -- String (Text)
    start_time TIME,                    -- Time (Time)
    department_id INT                   -- Integer (Foreign key for reference)
);
select * from sample_data;

INSERT INTO sample_data (id, name, age, salary, join_date, is_active, department, last_promotion, profile_picture, performance_rating, address, bonus, email, start_time, department_id)
VALUES
(1, 'Alice Johnson', 30, 75000.00, '2018-06-15', TRUE, 'HR', '2023-05-01', NULL, 4.5, '123 Maple St, Springfield', 5000, 'alice.johnson@email.com', '09:00:00', 1),
(2, 'Bob Smith', 40, 82000.50, '2015-08-25', TRUE, 'IT', '2022-11-12', NULL, 4.8, '456 Oak Ave, Lincoln', 6000, 'bob.smith@email.com', '10:00:00', 2),
(3, 'Charlie Brown', 35, 90000.75, '2016-02-10', FALSE, 'Finance', '2021-07-30', NULL, 3.9, '789 Pine Rd, Shelbyville', 4000, 'charlie.brown@email.com', '08:30:00', 3),
(4, 'Dana White', 28, 69000.00, '2019-12-05', TRUE, 'Marketing', '2023-03-14', NULL, 4.0, '101 Birch Ln, Capital City', 3000, 'dana.white@email.com', '09:30:00', 4),
(5, 'Eve Green', 25, 68000.25, '2021-03-20', TRUE, 'Sales', '2023-09-10', NULL, 4.7, '202 Cedar Blvd, Greenfield', 3500, 'eve.green@email.com', '08:45:00', 5),
(6, 'Frank Black', 45, 95000.50, '2012-07-01', TRUE, 'IT', '2023-01-12', NULL, 4.6, '334 Maple Ln, Riverside', 5500, 'frank.black@email.com', '08:00:00', 2),
(7, 'Grace Lee', 38, 70000.00, '2016-09-23', TRUE, 'HR', '2022-12-22', NULL, 4.2, '567 Elm St, Brookfield', 4200, 'grace.lee@email.com', '10:00:00', 1),
(8, 'Henry Gray', 29, 60000.75, '2020-01-15', TRUE, 'Finance', '2023-06-18', NULL, 4.1, '678 Cedar Rd, Hilltown', 3800, 'henry.gray@email.com', '09:30:00', 3),
(9, 'Isla Black', 32, 77000.00, '2017-05-08', TRUE, 'Sales', '2023-04-15', NULL, 4.3, '890 Oak Dr, Centerville', 4500, 'isla.black@email.com', '09:00:00', 5),
(10, 'Jack White', 26, 65000.25, '2021-02-19', TRUE, 'Marketing', '2023-02-10', NULL, 4.4, '123 Pine St, Springfield', 3300, 'jack.white@email.com', '08:30:00', 4),
(11, 'Katherine King', 34, 85000.00, '2014-11-02', TRUE, 'HR', '2023-03-25', NULL, 4.7, '234 Oak Blvd, Green City', 5100, 'katherine.king@email.com', '10:30:00', 1),
(12, 'Liam Scott', 50, 105000.50, '2010-10-15', FALSE, 'IT', '2021-11-18', NULL, 4.9, '345 Birch Ave, Oakfield', 7200, 'liam.scott@email.com', '07:30:00', 2),
(13, 'Megan Taylor', 27, 67000.25, '2020-08-20', TRUE, 'Finance', '2023-07-15', NULL, 3.8, '456 Maple Blvd, Highland', 3300, 'megan.taylor@email.com', '09:00:00', 3),
(14, 'Nina Adams', 31, 71000.00, '2019-06-05', TRUE, 'Sales', '2023-01-01', NULL, 4.2, '567 Pine Rd, Oakville', 4200, 'nina.adams@email.com', '10:00:00', 5),
(15, 'Oscar Brown', 43, 93000.75, '2014-03-15', TRUE, 'IT', '2022-08-30', NULL, 4.4, '678 Maple Ln, Roseville', 5800, 'oscar.brown@email.com', '08:30:00', 2),
(16, 'Paul Green', 26, 66000.00, '2021-11-23', TRUE, 'HR', '2023-04-10', NULL, 4.1, '789 Oak St, Valleytown', 3100, 'paul.green@email.com', '09:30:00', 1),
(17, 'Quincy White', 33, 72000.50, '2018-09-11', TRUE, 'Marketing', '2022-12-05', NULL, 4.5, '890 Birch Blvd, Pinehill', 4600, 'quincy.white@email.com', '08:45:00', 4),
(18, 'Rachel Stone', 29, 63000.75, '2021-01-17', TRUE, 'Sales', '2023-03-12', NULL, 4.0, '234 Elm Rd, Westfield', 4000, 'rachel.stone@email.com', '09:00:00', 5),
(19, 'Steve Martin', 47, 105500.25, '2011-12-10', TRUE, 'Finance', '2022-10-21', NULL, 4.7, '345 Oak St, Lakedale', 7400, 'steve.martin@email.com', '07:00:00', 3),
(20, 'Tina Harris', 39, 85000.00, '2016-03-15', TRUE, 'HR', '2023-08-01', NULL, 4.3, '456 Birch Ave, Silverlake', 5000, 'tina.harris@email.com', '10:00:00', 1),
(21, 'Uma Patel', 24, 65000.50, '2022-04-18', TRUE, 'IT', '2023-10-10', NULL, 4.2, '567 Cedar St, Eastwood', 3200, 'uma.patel@email.com', '09:30:00', 2),
(22, 'Victor Green', 31, 72000.25, '2020-05-06', TRUE, 'Finance', '2023-01-15', NULL, 4.0, '678 Elm St, Hillcrest', 3700, 'victor.green@email.com', '08:45:00', 3),
(23, 'Wendy Blue', 50, 90000.00, '2011-07-25', TRUE, 'Marketing', '2022-06-22', NULL, 4.6, '789 Oak Ln, Sunnydale', 6000, 'wendy.blue@email.com', '08:00:00', 4),
(24, 'Xander Knight', 28, 66000.75, '2020-07-12', TRUE, 'HR', '2023-03-05', NULL, 4.4, '890 Cedar Blvd, Rivertown', 3500, 'xander.knight@email.com', '09:00:00', 1),
(25, 'Yara White', 37, 78000.00, '2014-01-05', TRUE, 'Sales', '2022-11-09', NULL, 4.2, '123 Birch Rd, Westlake', 4800, 'yara.white@email.com', '10:00:00', 5),
(26, 'Zane Davis', 41, 83000.50, '2013-08-21', TRUE, 'IT', '2022-05-18', NULL, 4.8, '234 Oak Rd, Clearview', 5900, 'zane.davis@email.com', '08:15:00', 2),
(27, 'Anna Black', 33, 70000.25, '2019-12-12', TRUE, 'HR', '2023-06-01', NULL, 4.0, '345 Pine Blvd, Evergreen', 4300, 'anna.black@email.com', '09:30:00', 1),
(28, 'Brian Moore', 29, 64000.00, '2021-10-22', TRUE, 'Marketing', '2023-02-25', NULL, 4.1, '456 Cedar Ln, Hilltop', 3600, 'brian.moore@email.com', '08:45:00', 4),
(29, 'Catherine Lee', 30, 77000.00, '2020-06-17', TRUE, 'Sales', '2023-07-25', NULL, 4.6, '567 Birch Rd, Clearfield', 4400, 'catherine.lee@email.com', '09:00:00', 5),
(30, 'David Young', 44, 98000.50, '2012-04-01', TRUE, 'Finance', '2022-07-14', NULL, 4.9, '678 Maple Blvd, Fairview', 7100, 'david.young@email.com', '07:45:00', 3),
(31, 'Ella Walker', 29, 72000.75, '2021-08-14', TRUE, 'IT', '2023-05-02', NULL, 4.3, '789 Oak Ave, Brookfield', 4000, 'ella.walker@email.com', '10:00:00', 2),
(32, 'Fiona Roberts', 36, 88000.00, '2017-03-18', TRUE, 'Marketing', '2023-05-30', NULL, 4.7, '890 Pine Blvd, Westwood', 5200, 'fiona.roberts@email.com', '08:00:00', 4),
(33, 'George Harris', 52, 110000.25, '2010-11-20', TRUE, 'Sales', '2022-04-12', NULL, 4.8, '101 Cedar Rd, Oakridge', 8000, 'george.harris@email.com', '07:30:00', 5),
(34, 'Helen Scott', 33, 71000.50, '2018-01-01', TRUE, 'HR', '2023-03-18', NULL, 4.2, '202 Birch Ln, Wildwood', 4600, 'helen.scott@email.com', '09:30:00', 1),
(35, 'Ian Morgan', 25, 65000.00, '2021-04-12', TRUE, 'Finance', '2023-08-20', NULL, 4.0, '303 Maple Blvd, Midcity', 3000, 'ian.morgan@email.com', '09:00:00', 3),
(36, 'Jackie Gray', 27, 69000.25, '2020-03-29', TRUE, 'IT', '2023-07-10', NULL, 4.1, '404 Pine Rd, Lakeside', 3400, 'jackie.gray@email.com', '10:00:00', 2),
(37, 'Kevin Turner', 40, 94000.50, '2014-02-15', TRUE, 'Sales', '2023-05-05', NULL, 4.6, '505 Cedar Blvd, Northville', 5900, 'kevin.turner@email.com', '08:45:00', 5),
(38, 'Lily West', 31, 71000.00, '2017-12-10', TRUE, 'Marketing', '2022-12-12', NULL, 4.3, '606 Oak Rd, Springfield', 4300, 'lily.west@email.com', '09:00:00', 4),
(39, 'Mike Fisher', 44, 102000.25, '2012-05-25', TRUE, 'HR', '2023-06-21', NULL, 4.7, '707 Pine Blvd, Riverdale', 7000, 'mike.fisher@email.com', '07:30:00', 1),
(40, 'Nina Pierce', 29, 73000.50, '2018-09-20', TRUE, 'Finance', '2023-02-02', NULL, 4.2, '808 Birch Rd, Clearwater', 5200, 'nina.pierce@email.com', '10:00:00', 3),
(41, 'Oscar Clark', 36, 88000.00, '2016-11-03', TRUE, 'Marketing', '2023-04-11', NULL, 4.6, '909 Oak Ave, Treetown', 5500, 'oscar.clark@email.com', '08:30:00', 4),
(42, 'Paula Adams', 45, 110500.50, '2011-06-11', TRUE, 'Sales', '2022-07-01', NULL, 4.9, '101 Pine Ln, Riverton', 7500, 'paula.adams@email.com', '07:00:00', 5),
(43, 'Quinn Lopez', 28, 67000.75, '2019-01-17', TRUE, 'HR', '2023-02-21', NULL, 4.1, '202 Cedar Blvd, Westside', 3800, 'quinn.lopez@email.com', '09:00:00', 1),
(44, 'Rachel King', 37, 89000.00, '2015-08-28', TRUE, 'Finance', '2023-05-09', NULL, 4.7, '303 Birch Ln, Newfield', 6200, 'rachel.king@email.com', '09:30:00', 3),
(45, 'Samuel Thomas', 39, 88000.25, '2014-10-17', TRUE, 'IT', '2022-09-10', NULL, 4.4, '404 Maple Blvd, Highfield', 5800, 'samuel.thomas@email.com', '08:30:00', 2),
(46, 'Tara Evans', 33, 75000.00, '2016-03-12', TRUE, 'Marketing', '2023-08-30', NULL, 4.5, '505 Oak Rd, Westbrook', 5100, 'tara.evans@email.com', '10:00:00', 4),
(47, 'Ursula Gray', 25, 63000.50, '2020-10-30', TRUE, 'Sales', '2023-06-14', NULL, 4.2, '606 Cedar Rd, Clearwater', 3400, 'ursula.gray@email.com', '09:30:00', 5),
(48, 'Victor Brown', 29, 66000.00, '2019-07-10', TRUE, 'HR', '2023-03-19', NULL, 4.0, '707 Oak Blvd, Kingswood', 3900, 'victor.brown@email.com', '08:00:00', 1),
(49, 'Wanda Harris', 41, 102500.75, '2013-02-23', TRUE, 'Finance', '2022-12-01', NULL, 4.8, '808 Pine Blvd, Lakeshore', 7100, 'wanda.harris@email.com', '07:30:00', 3),
(50, 'Xena Martinez', 34, 75000.25, '2015-09-05', TRUE, 'Marketing', '2023-03-18', NULL, 4.4, '909 Birch Rd, Seaside', 4900, 'xena.martinez@email.com', '08:30:00', 4);

select name from sample_data
where department='sales';

select * from sample_data;

select department, count(department) as department_count
from sample_data
group by department;

select avg(salary) as avg_salary
from sample_data;

select name from sample_data
order by name;

select name,salary from sample_data
where salary>75000
order by salary desc;


SELECT department, AVG(salary) AS avg_salary
FROM sample_data
GROUP BY department
HAVING AVG(salary) > 80000;

select department,max(salary) as highest_salary,min(salary) as lowest_salary
from sample_data
group by department;

select name,join_date from sample_data
where join_date > '2020-1-1';

select department,avg(salary) as avg_salary
from sample_data
group by department
order by avg_salary desc
limit 1;


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Position VARCHAR(50)
);

-- Inserting sample data into Employees table
INSERT INTO Employees (EmployeeID, Name, Position) VALUES
(1, 'John Doe', 'Software Engineer'),
(2, 'Sarah Smith', 'Data Analyst'),
(3, 'Mike Johnson', 'Product Manager'),
(4, 'Emily Davis', 'HR Specialist');


--    -------      JOIN      --------  
select * from employees;
select * from departments;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    EmployeeID INT,
    Department VARCHAR(50)
);
-- Inserting sample data into Departments table
INSERT INTO Departments (DepartmentID, EmployeeID, Department) VALUES
(1, 1, 'Engineering'),
(2, 2, 'Analytics'),
(3, 3, 'Product'),
(4, 5, 'Marketing'); -- Note: EmployeeID 5 does not exist in Employees table

select * from employees
inner join departments on employees.employeeid=departments.employeeid;

select * from employees
left join departments on employees.employeeid = departments.employeeid;


								                      -- JOIN --

create table students (
    student_id int primary key,
    student_name varchar(50),
    course_id int,
    fees int
);

insert into students values
(1, 'Amit', 101, 15000),
(2, 'Pooja', 102, 12000),
(3, 'Rohan', 103, 20000),
(4, 'Sneha', 101, 15000),
(5, 'Vikas', 104, 10000),
(6, 'Kiran', 102, 12000),
(7, 'Manish', 105, 18000);

select * from students;

create table courses (
    course_id int primary key,
    course_name varchar(50),
    duration_months int
);

insert into courses values
(101, 'MS Office', 3),
(102, 'Tally', 6),
(103, 'Python', 4),
(104, 'Typing', 2),
(105, 'Data Analytics', 8),
(106, 'Web Designing', 6);
select * from courses;

-- Basic INNER JOIN
select * from students
inner join courses on students.course_id = courses.course_id;

-- INNER JOIN + WHERE (Filtering after join)
select * from students
inner join courses on students.course_id = courses.course_id
where duration_months > 4;

-- INNER JOIN + ORDER BY (Sorting)
select * from students
inner join courses on students.course_id = courses.course_id
order by student_id desc;

-- INNER JOIN + GROUP BY (Grouped results)
-- 🎯 Goal: Har course mein kitne students hain?
select course_name,count(student_id) as total_students
from students
inner join courses on students.course_id = courses.course_id
group by course_name;

-- INNER JOIN + Multiple Conditions
select student_name, course_name, fees
from students
inner join courses
on students.course_id = courses.course_id
where course_name = 'Python'
and fees > 15000;

-- INNER JOIN + HAVING
-- 🎯 Goal: Sirf un courses ko dikhao jahan total fees 25000 se zyada ho.
select course_name,sum(fees) as total_fees
from students
inner join courses on students.course_id = courses.course_id
group by course_name
having total_fees > 25000;

-- left join --
select students.student_name,students.course_id, courses.course_name
from students
left join courses on students.course_id = courses.course_id;

-- right join--
select students.student_name, courses.course_name
from students
right join courses
on students.course_id = courses.course_id;

/*  TASK 1 (Left Join)
STUDENTS table se student_name aur COURSES table se course_name LEFT JOIN use karke dikhaiye.
Agar course exist nahi karta to NULL aana chahiye. */
select students.student_name,courses.course_name
from students
left join courses on students.course_id = courses.course_id;

/*TASK 2 (Left Join)
Sabhi students ke saath unka duration_months (COURSES table se) dikhaiye. */
select students.student_name, courses.duration_months 
from students
left join courses 
on students.course_id = courses.course_id;


/*TASK 3 (Left Join)
Un students ko dikhaiye jinka course COURSES table me exist nahi karta. */
select students.student_name 
from students
left join courses 
on students.course_id = courses.course_id
where courses.course_id is null;


/*TASK 4 (Right Join)
Saare courses dikhaiye, chahe students enrolled ho ya nahi.*/
select courses.course_name, students.student_name
from students
right join courses
on students.course_id = courses.course_id;

/*TASK 5 (Right Join)
Un courses ka naam dikhaiye jisme koi bhi student enrolled nahi hai.*/
select courses.course_name
from courses
right join students
on students.course_id = courses.course_id
where students.student_id is null;


/*TASK 6 (Mixing JOIN + WHERE)
LEFT JOIN ka use karke sirf un students ka naam aur course ka naam dikhaiye
jinke course ka duration 4 months se zyada hai.*/

select students.student_name, courses.course_name
from students
left join courses  on students.course_id = courses.course_id
where courses.duration_months > 4;
