@interface HFConditionUISummary
- (HFConditionUISummary)initWithCondition:(id)condition title:(id)title description:(id)description;
@end

@implementation HFConditionUISummary

- (HFConditionUISummary)initWithCondition:(id)condition title:(id)title description:(id)description
{
  conditionCopy = condition;
  titleCopy = title;
  descriptionCopy = description;
  v15.receiver = self;
  v15.super_class = HFConditionUISummary;
  v12 = [(HFConditionUISummary *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_condition, condition);
    objc_storeStrong(&v13->_conditionTitle, title);
    objc_storeStrong(&v13->_conditionDescription, description);
  }

  return v13;
}

@end