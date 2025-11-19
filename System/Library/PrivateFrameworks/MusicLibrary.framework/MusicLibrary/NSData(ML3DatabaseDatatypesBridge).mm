@interface NSData(ML3DatabaseDatatypesBridge)
- (uint64_t)ml_bindToSQLiteStatement:()ML3DatabaseDatatypesBridge atPosition:;
@end

@implementation NSData(ML3DatabaseDatatypesBridge)

- (uint64_t)ml_bindToSQLiteStatement:()ML3DatabaseDatatypesBridge atPosition:
{
  v7 = [a1 bytes];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = "";
  }

  v9 = [a1 length];

  return sqlite3_bind_blob(a3, a4, v8, v9, 0);
}

@end