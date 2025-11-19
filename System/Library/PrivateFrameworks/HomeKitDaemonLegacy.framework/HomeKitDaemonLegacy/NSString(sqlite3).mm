@interface NSString(sqlite3)
+ (id)stringWithSQLite3Column:()sqlite3 column:;
@end

@implementation NSString(sqlite3)

+ (id)stringWithSQLite3Column:()sqlite3 column:
{
  v4 = sqlite3_column_text(a3, iCol);
  if (v4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  }

  return v4;
}

@end