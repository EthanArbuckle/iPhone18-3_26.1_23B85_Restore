@interface NSError(sqlite3)
+ (id)errorWithSQLite3Context:()sqlite3;
+ (id)errorWithSQLite3Context:()sqlite3 statement:;
+ (id)errorWithSQLite3Statement:()sqlite3;
@end

@implementation NSError(sqlite3)

+ (id)errorWithSQLite3Statement:()sqlite3
{
  v18[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D0F1A0];
  v17[0] = @"extcode";
  v6 = MEMORY[0x277CCABB0];
  v7 = sqlite3_db_handle(a3);
  v8 = [v6 numberWithInt:sqlite3_errcode(v7)];
  v18[0] = v8;
  v17[1] = @"text";
  v9 = MEMORY[0x277CCACA8];
  v10 = sqlite3_db_handle(a3);
  v11 = [v9 stringWithUTF8String:sqlite3_errmsg(v10)];
  v18[1] = v11;
  v17[2] = @"statement";
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_sql(a3)];
  v18[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v14 = [v4 errorWithDomain:v5 code:3 userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)errorWithSQLite3Context:()sqlite3 statement:
{
  v16[3] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277D0F1A0];
  v15[0] = @"extcode";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:sqlite3_errcode(db)];
  v16[0] = v8;
  v15[1] = @"text";
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_errmsg(db)];
  v16[1] = v9;
  v15[2] = @"statement";
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a4];
  v16[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v12 = [v6 errorWithDomain:v7 code:3 userInfo:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)errorWithSQLite3Context:()sqlite3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D0F1A0];
  v12[0] = @"extcode";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:sqlite3_errcode(db)];
  v12[1] = @"text";
  v13[0] = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_errmsg(db)];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [v4 errorWithDomain:v5 code:3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end