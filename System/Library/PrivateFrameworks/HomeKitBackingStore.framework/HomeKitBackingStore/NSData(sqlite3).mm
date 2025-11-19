@interface NSData(sqlite3)
+ (id)hmbDataWithSQLite3Column:()sqlite3 column:;
+ (id)hmbDataWithSQLite3ColumnNoCopy:()sqlite3 column:;
@end

@implementation NSData(sqlite3)

+ (id)hmbDataWithSQLite3Column:()sqlite3 column:
{
  v6 = sqlite3_column_blob(a3, iCol);
  if (v6)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:{sqlite3_column_bytes(a3, iCol)}];
  }

  else if (sqlite3_column_type(a3, iCol) == 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CBEA90] data];
  }

  return v7;
}

+ (id)hmbDataWithSQLite3ColumnNoCopy:()sqlite3 column:
{
  v6 = sqlite3_column_blob(a3, iCol);
  if (v6)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v6 length:sqlite3_column_bytes(a3 freeWhenDone:{iCol), 0}];
  }

  else if (sqlite3_column_type(a3, iCol) == 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CBEA90] data];
  }

  return v7;
}

@end