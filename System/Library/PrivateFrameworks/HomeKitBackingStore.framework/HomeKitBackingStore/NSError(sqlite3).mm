@interface NSError(sqlite3)
+ (__CFString)errorMessageForSQLite3Context:()sqlite3;
+ (id)hmbErrorWithSQLite3Connection:()sqlite3;
+ (id)hmbErrorWithSQLite3Connection:()sqlite3 statement:;
+ (id)hmbErrorWithSQLite3Statement:()sqlite3;
+ (id)hmbErrorWithSQLite3Status:()sqlite3;
+ (uint64_t)hmbErrorWithSQLContext:()sqlite3;
+ (uint64_t)hmbErrorWithSQLContext:()sqlite3 statement:;
@end

@implementation NSError(sqlite3)

+ (__CFString)errorMessageForSQLite3Context:()sqlite3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = sqlite3_errmsg(a3);
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1];
      v10 = v9;
      if (v9)
      {
        v8 = v9;
      }

      else
      {
        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = HMFGetLogIdentifier();
          v17 = 138543618;
          v18 = v14;
          v19 = 2080;
          v20 = v5;
          _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not convert SQLite error into NSString: %s", &v17, 0x16u);
        }

        objc_autoreleasePoolPop(v11);
        v8 = @"<Unknown SQLite3 error>";
      }
    }
  }

  else
  {
    v8 = @"<NULL SQLite3 error>";
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)hmbErrorWithSQLite3Status:()sqlite3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D0F1A0];
  v15[0] = @"extcode";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v15[1] = @"text";
  v16[0] = v6;
  v7 = MEMORY[0x277CCACA8];
  v8 = sqlite3_errstr(a3);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = "NULL SQLite3 error for status";
  }

  v10 = [v7 stringWithUTF8String:v9];
  v16[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = [v4 errorWithDomain:v5 code:3 userInfo:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)hmbErrorWithSQLite3Statement:()sqlite3
{
  v20[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D0F1A0];
  v19[0] = @"extcode";
  v7 = MEMORY[0x277CCABB0];
  v8 = sqlite3_db_handle(a3);
  v9 = [v7 numberWithInt:sqlite3_errcode(v8)];
  v20[0] = v9;
  v19[1] = @"text";
  v10 = [self errorMessageForSQLite3Context:sqlite3_db_handle(a3)];
  v20[1] = v10;
  v19[2] = @"statement";
  v11 = MEMORY[0x277CCACA8];
  v12 = sqlite3_sql(a3);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = "NULL SQLite3 statement";
  }

  v14 = [v11 stringWithUTF8String:v13];
  v20[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v16 = [v5 errorWithDomain:v6 code:3 userInfo:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)hmbErrorWithSQLite3Connection:()sqlite3 statement:
{
  v18[3] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277D0F1A0];
  v17[0] = @"extcode";
  v9 = [MEMORY[0x277CCABB0] numberWithInt:sqlite3_errcode(db)];
  v18[0] = v9;
  v17[1] = @"text";
  v10 = [self errorMessageForSQLite3Context:db];
  v18[1] = v10;
  v17[2] = @"statement";
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = "NULL statement";
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
  v18[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v14 = [v7 errorWithDomain:v8 code:3 userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)hmbErrorWithSQLite3Connection:()sqlite3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D0F1A0];
  v15[0] = @"extcode";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:sqlite3_errcode(db)];
  v15[1] = @"text";
  v16[0] = v6;
  v7 = MEMORY[0x277CCACA8];
  v8 = sqlite3_errmsg(db);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = "NULL SQLite3 error for context";
  }

  v10 = [v7 stringWithUTF8String:v9];
  v16[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = [v4 errorWithDomain:v5 code:3 userInfo:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (uint64_t)hmbErrorWithSQLContext:()sqlite3 statement:
{
  v5 = MEMORY[0x277CCA9B8];
  connection = [a3 connection];

  return [v5 hmbErrorWithSQLite3Connection:connection statement:a4];
}

+ (uint64_t)hmbErrorWithSQLContext:()sqlite3
{
  v3 = MEMORY[0x277CCA9B8];
  connection = [a3 connection];

  return [v3 hmbErrorWithSQLite3Connection:connection];
}

@end