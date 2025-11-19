@interface NSNumber(FCAdditions)
- (void)fc_largerNumber:()FCAdditions;
- (void)fc_smallerNumber:()FCAdditions;
@end

@implementation NSNumber(FCAdditions)

- (void)fc_smallerNumber:()FCAdditions
{
  v4 = a3;
  if ([a1 compare:v4] == 1)
  {
    a1 = v4;
  }

  v5 = a1;

  return a1;
}

- (void)fc_largerNumber:()FCAdditions
{
  v4 = a3;
  if ([a1 compare:v4] == -1)
  {
    a1 = v4;
  }

  v5 = a1;

  return a1;
}

@end