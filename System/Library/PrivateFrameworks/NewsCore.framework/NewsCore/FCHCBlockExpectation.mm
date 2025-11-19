@interface FCHCBlockExpectation
- (void)validate;
@end

@implementation FCHCBlockExpectation

- (void)validate
{
  v3 = [(FCHCBlockExpectation *)self block];

  if (v3)
  {
    v4 = [(FCHCBlockExpectation *)self block];
    v4[2]();
  }
}

@end