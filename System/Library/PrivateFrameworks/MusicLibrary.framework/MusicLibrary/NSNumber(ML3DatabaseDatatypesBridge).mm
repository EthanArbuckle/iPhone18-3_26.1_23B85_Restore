@interface NSNumber(ML3DatabaseDatatypesBridge)
- (uint64_t)ml_bindToSQLiteStatement:()ML3DatabaseDatatypesBridge atPosition:;
@end

@implementation NSNumber(ML3DatabaseDatatypesBridge)

- (uint64_t)ml_bindToSQLiteStatement:()ML3DatabaseDatatypesBridge atPosition:
{
  Type = CFNumberGetType(self);
  if (Type > kCFNumberCGFloatType)
  {
    goto LABEL_10;
  }

  if (((1 << Type) & 0x38E) != 0)
  {
    intValue = [(__CFNumber *)self intValue];

    return sqlite3_bind_int(a3, a4, intValue);
  }

  if (((1 << Type) & 0x10060) != 0)
  {
    [(__CFNumber *)self doubleValue];

    return sqlite3_bind_double(a3, a4, v10);
  }

  else
  {
LABEL_10:
    longLongValue = [(__CFNumber *)self longLongValue];

    return sqlite3_bind_int64(a3, a4, longLongValue);
  }
}

@end