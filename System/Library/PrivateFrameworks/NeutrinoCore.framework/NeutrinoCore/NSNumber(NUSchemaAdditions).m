@interface NSNumber(NUSchemaAdditions)
- (uint64_t)nu_isBoolean;
- (uint64_t)nu_isInfinite;
- (uint64_t)nu_isNaN;
@end

@implementation NSNumber(NUSchemaAdditions)

- (uint64_t)nu_isInfinite
{
  result = [a1 nu_isFloat];
  if (result)
  {
    [a1 doubleValue];
    return fabs(v3) == INFINITY;
  }

  return result;
}

- (uint64_t)nu_isNaN
{
  result = [a1 nu_isFloat];
  if (result)
  {
    [a1 doubleValue];
    return 0;
  }

  return result;
}

- (uint64_t)nu_isBoolean
{
  result = [a1 nu_isInteger];
  if (result)
  {
    return [a1 integerValue] < 2;
  }

  return result;
}

@end