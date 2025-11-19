@interface _CriticalSectionAssertion
- (BOOL)isInvalidated;
- (NSString)name;
- (void)invalidate;
@end

@implementation _CriticalSectionAssertion

- (NSString)name
{
  sub_1C5E3E638();
  v2 = sub_1C6016900();

  return v2;
}

- (BOOL)isInvalidated
{
  v2 = self;
  v3 = sub_1C5E3E55C();

  return v3 & 1;
}

- (void)invalidate
{
  v2 = self;
  sub_1C5E3E6A8();
}

@end