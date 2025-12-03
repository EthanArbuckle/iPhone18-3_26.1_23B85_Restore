@interface IRRuleOutput
- (IRRuleOutput)initWithRule:(id)rule;
@end

@implementation IRRuleOutput

- (IRRuleOutput)initWithRule:(id)rule
{
  ruleCopy = rule;
  v9.receiver = self;
  v9.super_class = IRRuleOutput;
  v6 = [(IRRuleOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rule, rule);
  }

  return v7;
}

@end