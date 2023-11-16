SELECT * FROM sales;

# Write a query to find the 2nd highest/nth highest Salary of employee.
SELECT *, amount FROM sales ORDER BY Amount DESC LIMIT 1,1;

# Use a Common Table Expression (CTE) to calculate the rank based on the 'amount'
WITH custom_rank_number AS
(SELECT *, 
RANK() OVER (ORDER BY amount DESC) AS find_rank
FROM sales)

SELECT *, amount
FROM custom_rank_number
WHERE find_rank = 2;
