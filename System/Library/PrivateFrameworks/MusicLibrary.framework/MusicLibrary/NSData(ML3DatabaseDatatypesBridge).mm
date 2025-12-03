@interface NSData(ML3DatabaseDatatypesBridge)
- (uint64_t)ml_bindToSQLiteStatement:()ML3DatabaseDatatypesBridge atPosition:;
@end

@implementation NSData(ML3DatabaseDatatypesBridge)

- (uint64_t)ml_bindToSQLiteStatement:()ML3DatabaseDatatypesBridge atPosition:
{
  bytes = [self bytes];
  if (bytes)
  {
    v8 = bytes;
  }

  else
  {
    v8 = "";
  }

  v9 = [self length];

  return sqlite3_bind_blob(a3, a4, v8, v9, 0);
}

@end