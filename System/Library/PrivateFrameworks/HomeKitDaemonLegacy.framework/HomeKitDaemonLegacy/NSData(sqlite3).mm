@interface NSData(sqlite3)
+ (id)dataWithSQLite3Column:()sqlite3 column:;
+ (id)dataWithSQLite3ColumnNoCopy:()sqlite3 column:;
@end

@implementation NSData(sqlite3)

+ (id)dataWithSQLite3Column:()sqlite3 column:
{
  v6 = sqlite3_column_blob(a3, iCol);
  if (v6)
  {
    data = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:{sqlite3_column_bytes(a3, iCol)}];
  }

  else if (sqlite3_column_type(a3, iCol) == 5)
  {
    data = 0;
  }

  else
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  return data;
}

+ (id)dataWithSQLite3ColumnNoCopy:()sqlite3 column:
{
  v6 = sqlite3_column_blob(a3, iCol);
  if (v6)
  {
    data = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v6 length:sqlite3_column_bytes(a3 freeWhenDone:{iCol), 0}];
  }

  else if (sqlite3_column_type(a3, iCol) == 5)
  {
    data = 0;
  }

  else
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  return data;
}

@end