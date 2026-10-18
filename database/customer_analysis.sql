
-- DataLens: Customer analysis
-- Source: Snowflake sample data
-- Table: SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER
-- Purpose: Summarise customers and account balances by market segment.

SELECT
    C_MKTSEGMENT,
    COUNT(*) AS customer_count,
    ROUND(AVG(C_ACCTBAL), 2) AS average_balance,
    ROUND(MIN(C_ACCTBAL), 2) AS minimum_balance,
    ROUND(MAX(C_ACCTBAL), 2) AS maximum_balance
FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER
GROUP BY C_MKTSEGMENT
ORDER BY customer_count DESC;
