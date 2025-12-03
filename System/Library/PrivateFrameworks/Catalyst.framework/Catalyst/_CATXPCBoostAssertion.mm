@interface _CATXPCBoostAssertion
- (void)dealloc;
@end

@implementation _CATXPCBoostAssertion

- (void)dealloc
{
  block = [(_CATXPCBoostAssertion *)self block];

  if (block)
  {
    block2 = [(_CATXPCBoostAssertion *)self block];
    block2[2]();
  }

  v5.receiver = self;
  v5.super_class = _CATXPCBoostAssertion;
  [(_CATXPCBoostAssertion *)&v5 dealloc];
}

@end