@interface IRInspectionOrderOfExectionElement
- (IRInspectionOrderOfExectionElement)initWithRuleName:(id)a3 andRuleType:(id)a4;
@end

@implementation IRInspectionOrderOfExectionElement

- (IRInspectionOrderOfExectionElement)initWithRuleName:(id)a3 andRuleType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IRInspectionOrderOfExectionElement;
  v8 = [(IRInspectionOrderOfExectionElement *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IRInspectionOrderOfExectionElement *)v8 setRuleName:v6];
    [(IRInspectionOrderOfExectionElement *)v9 setRuleType:v7];
  }

  return v9;
}

@end