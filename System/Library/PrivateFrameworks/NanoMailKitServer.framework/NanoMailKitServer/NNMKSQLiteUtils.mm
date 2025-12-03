@interface NNMKSQLiteUtils
+ (id)dataFromStatement:(sqlite3_stmt *)statement columnIndex:(int)index;
+ (id)dateFromStatement:(sqlite3_stmt *)statement columnIndex:(int)index;
+ (id)stringFromStatement:(sqlite3_stmt *)statement columnIndex:(int)index;
+ (void)bindData:(id)data intoStatement:(sqlite3_stmt *)statement paramIndex:(int)index;
+ (void)bindDate:(id)date intoStatement:(sqlite3_stmt *)statement paramIndex:(int)index;
+ (void)bindString:(id)string intoStatement:(sqlite3_stmt *)statement paramIndex:(int)index;
+ (void)closeExecutedPreparedStatement:(sqlite3_stmt *)statement;
@end

@implementation NNMKSQLiteUtils

+ (void)closeExecutedPreparedStatement:(sqlite3_stmt *)statement
{
  sqlite3_clear_bindings(statement);

  sqlite3_reset(statement);
}

+ (void)bindString:(id)string intoStatement:(sqlite3_stmt *)statement paramIndex:(int)index
{
  if (string)
  {
    uTF8String = [string UTF8String];

    sqlite3_bind_text(statement, index, uTF8String, -1, 0);
  }

  else
  {

    sqlite3_bind_null(statement, index);
  }
}

+ (void)bindDate:(id)date intoStatement:(sqlite3_stmt *)statement paramIndex:(int)index
{
  if (date)
  {
    [date timeIntervalSince1970];

    sqlite3_bind_double(statement, index, v7);
  }

  else
  {

    sqlite3_bind_null(statement, index);
  }
}

+ (void)bindData:(id)data intoStatement:(sqlite3_stmt *)statement paramIndex:(int)index
{
  dataCopy = data;
  v11 = dataCopy;
  if (dataCopy)
  {
    v8 = dataCopy;
    bytes = [v11 bytes];
    if (bytes)
    {
      v10 = bytes;
    }

    else
    {
      v10 = "";
    }

    sqlite3_bind_blob(statement, index, v10, [v11 length], 0);
  }

  else
  {
    sqlite3_bind_null(statement, index);
  }
}

+ (id)stringFromStatement:(sqlite3_stmt *)statement columnIndex:(int)index
{
  if (sqlite3_column_type(statement, index) == 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sqlite3_column_text(statement, index);
    if (v6)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    }
  }

  return v6;
}

+ (id)dateFromStatement:(sqlite3_stmt *)statement columnIndex:(int)index
{
  if (sqlite3_column_type(statement, index) == 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(statement, index)}];
  }

  return v6;
}

+ (id)dataFromStatement:(sqlite3_stmt *)statement columnIndex:(int)index
{
  if (sqlite3_column_type(statement, index) == 5)
  {
    v6 = 0;
  }

  else
  {
    v7 = sqlite3_column_bytes(statement, index);
    v6 = [MEMORY[0x277CBEB28] dataWithLength:v7];
    mutableBytes = [v6 mutableBytes];
    v9 = sqlite3_column_blob(statement, index);
    memcpy(mutableBytes, v9, v7);
  }

  return v6;
}

@end