/*Project Steps:
1. Database Setup
Import the dataset into your SQL environment.
Set up the table with appropriate columns (Rank, University, Country, Teaching, Research, etc.).*/
-- SOLUTION 1
Create database university;
select * from 2024unirankings;

/*2. Data Exploration Using SQL
Explore the structure of the dataset using basic SQL queries 
(e.g., SELECT, COUNT(), GROUP BY, etc.).*/
-- SULUTION 2
select * from 2024unirankings;
select count(*) from 2024unirankings;
select country,count(*) from 2024unirankings group by country;

/*3. Analysis Questions

-- i. Top Universities by Overall Score
ii. Top Countries by Research Performance
iii. Impact of International Outlook on Rankings
iv. Correlation Between Industry Income and Rankings*/

-- SOLTION 3
-- i. Top Universities by Overall Score
select 2024unirankings.rank,University,country,overall from 2024unirankings 
order by overall desc;
-- the rank was done based on teaching column.

-- ii. Top Countries by Research Performance
select * from 2024unirankings;
select country,count(*),sum(research) from 2024unirankings group by country
order by sum(research) desc;
select country,count(*),avg(research) from 2024unirankings group by country
order by avg(research) desc;

-- iii. Impact of International Outlook on Rankings
select * from 2024unirankings;
/*To call out a column in MySQL whose column title is an SQL keyword 
or a column name that contains special characters (like spaces or is a reserved keyword),
 you need to enclose the column name in backticks (`). 
This tells MySQL to treat it as an identifier, not as a part of the SQL language.*/

select * from 2024unirankings order by `international Outlook` desc;
select `rank`,University,country,`international outlook`from 2024unirankings
order by `international Outlook` desc;
/*the rank was done based on teaching column,though universities with higher 
international outlook also has higher rank.*/

-- iv. Correlation Between Industry Income and Rankings*/
select `rank`,University,country,`international outlook`,`industry income` 
from 2024unirankings
order by `international Outlook` desc limit 15;
/*the rank was done based on teaching column,though when sorted to the top 15
most universities with higher 
industry income  also has higher rank except for University of Tokyo with rank 29th position .*/




