USE new;

DROP TABLE IF EXISTS sales_tran

CREATE TABLE sales_tran(
Transaction_No VARCHAR(255),
Purchase_Date Date,
Product_No VARCHAR(255),
Product_Name VARCHAR(255),
Price DOUBLE(6,2),
Quantity INT,
Customer_No VARCHAR(255),
Country VARCHAR(255)
);

SELECT * FROM sales_tran;

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Sales Transaction.csv" INTO TABLE sales_tran
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

SELECT Transaction_No, Purchase_Date, Product_No,
 Product_Name, Price, Quantity, Customer_No, Country,
 (Price * Quantity) as Total_Price from sales_tran;
