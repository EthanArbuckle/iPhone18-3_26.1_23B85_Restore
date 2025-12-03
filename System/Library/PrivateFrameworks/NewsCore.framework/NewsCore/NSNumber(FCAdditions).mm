@interface NSNumber(FCAdditions)
- (void)fc_largerNumber:()FCAdditions;
- (void)fc_smallerNumber:()FCAdditions;
@end

@implementation NSNumber(FCAdditions)

- (void)fc_smallerNumber:()FCAdditions
{
  v4 = a3;
  if ([self compare:v4] == 1)
  {
    self = v4;
  }

  selfCopy = self;

  return self;
}

- (void)fc_largerNumber:()FCAdditions
{
  v4 = a3;
  if ([self compare:v4] == -1)
  {
    self = v4;
  }

  selfCopy = self;

  return self;
}

@end