@interface IRRuleInspection
- (IRRuleInspection)initWithRuleName:(id)name evaluation:(id)evaluation;
@end

@implementation IRRuleInspection

- (IRRuleInspection)initWithRuleName:(id)name evaluation:(id)evaluation
{
  nameCopy = name;
  evaluationCopy = evaluation;
  v11.receiver = self;
  v11.super_class = IRRuleInspection;
  v8 = [(IRRuleInspection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IRRuleInspection *)v8 setRuleName:nameCopy];
    [(IRRuleInspection *)v9 setEvaluation:evaluationCopy];
  }

  return v9;
}

@end