@interface IRRuleOutput
- (IRRuleOutput)initWithRule:(id)a3;
@end

@implementation IRRuleOutput

- (IRRuleOutput)initWithRule:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IRRuleOutput;
  v6 = [(IRRuleOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rule, a3);
  }

  return v7;
}

@end