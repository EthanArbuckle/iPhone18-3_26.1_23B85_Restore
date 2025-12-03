@interface FCHCBlockExpectation
- (void)validate;
@end

@implementation FCHCBlockExpectation

- (void)validate
{
  block = [(FCHCBlockExpectation *)self block];

  if (block)
  {
    block2 = [(FCHCBlockExpectation *)self block];
    block2[2]();
  }
}

@end