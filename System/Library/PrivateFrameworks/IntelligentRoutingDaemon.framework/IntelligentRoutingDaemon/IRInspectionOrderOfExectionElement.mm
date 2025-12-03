@interface IRInspectionOrderOfExectionElement
- (IRInspectionOrderOfExectionElement)initWithRuleName:(id)name andRuleType:(id)type;
@end

@implementation IRInspectionOrderOfExectionElement

- (IRInspectionOrderOfExectionElement)initWithRuleName:(id)name andRuleType:(id)type
{
  nameCopy = name;
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = IRInspectionOrderOfExectionElement;
  v8 = [(IRInspectionOrderOfExectionElement *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IRInspectionOrderOfExectionElement *)v8 setRuleName:nameCopy];
    [(IRInspectionOrderOfExectionElement *)v9 setRuleType:typeCopy];
  }

  return v9;
}

@end