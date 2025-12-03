@interface NSObject(ML3Comparing)
- (uint64_t)ml_matchesValue:()ML3Comparing usingComparison:;
@end

@implementation NSObject(ML3Comparing)

- (uint64_t)ml_matchesValue:()ML3Comparing usingComparison:
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [self isEqual:v6] ^ 1;
  }

  else if (a4 == 1)
  {
    v7 = [self isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end