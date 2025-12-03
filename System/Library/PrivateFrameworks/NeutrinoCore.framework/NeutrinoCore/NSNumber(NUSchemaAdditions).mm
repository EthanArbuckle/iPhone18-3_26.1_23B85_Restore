@interface NSNumber(NUSchemaAdditions)
- (uint64_t)nu_isBoolean;
- (uint64_t)nu_isInfinite;
- (uint64_t)nu_isNaN;
@end

@implementation NSNumber(NUSchemaAdditions)

- (uint64_t)nu_isInfinite
{
  result = [self nu_isFloat];
  if (result)
  {
    [self doubleValue];
    return fabs(v3) == INFINITY;
  }

  return result;
}

- (uint64_t)nu_isNaN
{
  result = [self nu_isFloat];
  if (result)
  {
    [self doubleValue];
    return 0;
  }

  return result;
}

- (uint64_t)nu_isBoolean
{
  result = [self nu_isInteger];
  if (result)
  {
    return [self integerValue] < 2;
  }

  return result;
}

@end