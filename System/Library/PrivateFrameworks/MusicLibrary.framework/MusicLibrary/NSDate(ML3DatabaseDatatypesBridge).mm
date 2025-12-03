@interface NSDate(ML3DatabaseDatatypesBridge)
- (uint64_t)ml_bindToSQLiteStatement:()ML3DatabaseDatatypesBridge atPosition:;
- (uint64_t)ml_stringValueForSQL;
@end

@implementation NSDate(ML3DatabaseDatatypesBridge)

- (uint64_t)ml_stringValueForSQL
{
  v1 = MEMORY[0x277CCACA8];
  [self timeIntervalSinceReferenceDate];
  return [v1 stringWithFormat:@"%f", v2];
}

- (uint64_t)ml_bindToSQLiteStatement:()ML3DatabaseDatatypesBridge atPosition:
{
  [self timeIntervalSinceReferenceDate];

  return sqlite3_bind_double(a3, a4, v6);
}

@end