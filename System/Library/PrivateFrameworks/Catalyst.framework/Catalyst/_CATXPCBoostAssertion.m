@interface _CATXPCBoostAssertion
- (void)dealloc;
@end

@implementation _CATXPCBoostAssertion

- (void)dealloc
{
  v3 = [(_CATXPCBoostAssertion *)self block];

  if (v3)
  {
    v4 = [(_CATXPCBoostAssertion *)self block];
    v4[2]();
  }

  v5.receiver = self;
  v5.super_class = _CATXPCBoostAssertion;
  [(_CATXPCBoostAssertion *)&v5 dealloc];
}

@end