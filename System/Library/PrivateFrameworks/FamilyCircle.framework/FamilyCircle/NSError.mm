@interface NSError
- (id)removingNonSecureCodingValues;
@end

@implementation NSError

- (id)removingNonSecureCodingValues
{
  selfCopy = self;
  v3 = sub_100063A88();

  return v3;
}

@end