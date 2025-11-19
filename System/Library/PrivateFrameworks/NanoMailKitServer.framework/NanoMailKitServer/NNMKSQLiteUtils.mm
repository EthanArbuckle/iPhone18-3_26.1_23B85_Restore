@interface NNMKSQLiteUtils
+ (id)dataFromStatement:(sqlite3_stmt *)a3 columnIndex:(int)a4;
+ (id)dateFromStatement:(sqlite3_stmt *)a3 columnIndex:(int)a4;
+ (id)stringFromStatement:(sqlite3_stmt *)a3 columnIndex:(int)a4;
+ (void)bindData:(id)a3 intoStatement:(sqlite3_stmt *)a4 paramIndex:(int)a5;
+ (void)bindDate:(id)a3 intoStatement:(sqlite3_stmt *)a4 paramIndex:(int)a5;
+ (void)bindString:(id)a3 intoStatement:(sqlite3_stmt *)a4 paramIndex:(int)a5;
+ (void)closeExecutedPreparedStatement:(sqlite3_stmt *)a3;
@end

@implementation NNMKSQLiteUtils

+ (void)closeExecutedPreparedStatement:(sqlite3_stmt *)a3
{
  sqlite3_clear_bindings(a3);

  sqlite3_reset(a3);
}

+ (void)bindString:(id)a3 intoStatement:(sqlite3_stmt *)a4 paramIndex:(int)a5
{
  if (a3)
  {
    v7 = [a3 UTF8String];

    sqlite3_bind_text(a4, a5, v7, -1, 0);
  }

  else
  {

    sqlite3_bind_null(a4, a5);
  }
}

+ (void)bindDate:(id)a3 intoStatement:(sqlite3_stmt *)a4 paramIndex:(int)a5
{
  if (a3)
  {
    [a3 timeIntervalSince1970];

    sqlite3_bind_double(a4, a5, v7);
  }

  else
  {

    sqlite3_bind_null(a4, a5);
  }
}

+ (void)bindData:(id)a3 intoStatement:(sqlite3_stmt *)a4 paramIndex:(int)a5
{
  v7 = a3;
  v11 = v7;
  if (v7)
  {
    v8 = v7;
    v9 = [v11 bytes];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = "";
    }

    sqlite3_bind_blob(a4, a5, v10, [v11 length], 0);
  }

  else
  {
    sqlite3_bind_null(a4, a5);
  }
}

+ (id)stringFromStatement:(sqlite3_stmt *)a3 columnIndex:(int)a4
{
  if (sqlite3_column_type(a3, a4) == 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sqlite3_column_text(a3, a4);
    if (v6)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    }
  }

  return v6;
}

+ (id)dateFromStatement:(sqlite3_stmt *)a3 columnIndex:(int)a4
{
  if (sqlite3_column_type(a3, a4) == 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(a3, a4)}];
  }

  return v6;
}

+ (id)dataFromStatement:(sqlite3_stmt *)a3 columnIndex:(int)a4
{
  if (sqlite3_column_type(a3, a4) == 5)
  {
    v6 = 0;
  }

  else
  {
    v7 = sqlite3_column_bytes(a3, a4);
    v6 = [MEMORY[0x277CBEB28] dataWithLength:v7];
    v8 = [v6 mutableBytes];
    v9 = sqlite3_column_blob(a3, a4);
    memcpy(v8, v9, v7);
  }

  return v6;
}

@end