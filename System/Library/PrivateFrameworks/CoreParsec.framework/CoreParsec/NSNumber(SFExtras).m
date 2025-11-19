@interface NSNumber(SFExtras)
- (uint64_t)sf_asRowAlignment;
- (uint64_t)sf_asTopHit;
@end

@implementation NSNumber(SFExtras)

- (uint64_t)sf_asTopHit
{
  v1 = [a1 unsignedIntegerValue];
  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v1 == 1;
  }
}

- (uint64_t)sf_asRowAlignment
{
  result = [a1 integerValue];
  if ((result + 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end