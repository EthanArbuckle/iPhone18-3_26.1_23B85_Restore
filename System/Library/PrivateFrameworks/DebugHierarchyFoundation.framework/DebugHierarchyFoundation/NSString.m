@interface NSString
- (BOOL)dbgBoolValue;
- (double)dbgDoubleValue;
- (float)dbgFloatValue;
- (id)dbgDataValue;
- (int)dbgIntValue;
- (int64_t)dbgLongLongValue;
- (int64_t)dbgLongValue;
- (unint64_t)dbgUnsignedLongLongValue;
- (unint64_t)dbgUnsignedLongValue;
- (unsigned)dbgUnsignedIntValue;
@end

@implementation NSString

- (BOOL)dbgBoolValue
{
  v3 = 0;
  sscanf([(NSString *)self UTF8String], "%d", &v3);
  return v3 != 0;
}

- (float)dbgFloatValue
{
  v3 = 0.0;
  sscanf([(NSString *)self UTF8String], "%a", &v3);
  return v3;
}

- (double)dbgDoubleValue
{
  v3 = 0.0;
  sscanf([(NSString *)self UTF8String], "%la", &v3);
  return v3;
}

- (int)dbgIntValue
{
  v3 = 0;
  sscanf([(NSString *)self UTF8String], "%d", &v3);
  return v3;
}

- (unsigned)dbgUnsignedIntValue
{
  v3 = 0;
  sscanf([(NSString *)self UTF8String], "%u", &v3);
  return v3;
}

- (int64_t)dbgLongValue
{
  v3 = 0;
  sscanf([(NSString *)self UTF8String], "%ld", &v3);
  return v3;
}

- (unint64_t)dbgUnsignedLongValue
{
  v3 = 0;
  sscanf([(NSString *)self UTF8String], "%lx", &v3);
  return v3;
}

- (int64_t)dbgLongLongValue
{
  v3 = 0;
  sscanf([(NSString *)self UTF8String], "%lld", &v3);
  return v3;
}

- (unint64_t)dbgUnsignedLongLongValue
{
  v3 = 0;
  sscanf([(NSString *)self UTF8String], "%llx", &v3);
  return v3;
}

- (id)dbgDataValue
{
  v2 = [[NSData alloc] initWithBase64EncodedString:self options:0];

  return v2;
}

@end