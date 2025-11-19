@interface IRRuleInspection
- (IRRuleInspection)initWithRuleName:(id)a3 evaluation:(id)a4;
@end

@implementation IRRuleInspection

- (IRRuleInspection)initWithRuleName:(id)a3 evaluation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IRRuleInspection;
  v8 = [(IRRuleInspection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IRRuleInspection *)v8 setRuleName:v6];
    [(IRRuleInspection *)v9 setEvaluation:v7];
  }

  return v9;
}

@end