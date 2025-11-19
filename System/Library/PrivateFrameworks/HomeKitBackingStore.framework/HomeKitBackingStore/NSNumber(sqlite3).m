@interface NSNumber(sqlite3)
+ (id)hmbNumberWithSQLite3Column:()sqlite3 column:;
@end

@implementation NSNumber(sqlite3)

+ (id)hmbNumberWithSQLite3Column:()sqlite3 column:
{
  v6 = sqlite3_column_type(a3, iCol);
  if (v6 == 2)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:{sqlite3_column_double(a3, iCol)}];
  }

  else if (v6 == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{sqlite3_column_int64(a3, iCol)}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end