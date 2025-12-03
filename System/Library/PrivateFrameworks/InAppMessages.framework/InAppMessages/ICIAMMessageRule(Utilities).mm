@interface ICIAMMessageRule(Utilities)
- (BOOL)isExactMatchRule;
@end

@implementation ICIAMMessageRule(Utilities)

- (BOOL)isExactMatchRule
{
  if ([self type])
  {
    return 0;
  }

  triggerCondition = [self triggerCondition];
  if ([triggerCondition comparisonType])
  {
    triggerCondition2 = [self triggerCondition];
    v2 = [triggerCondition2 comparisonType] == 1;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

@end