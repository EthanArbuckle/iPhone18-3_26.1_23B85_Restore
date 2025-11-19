@interface ICIAMMessageRule(Utilities)
- (BOOL)isExactMatchRule;
@end

@implementation ICIAMMessageRule(Utilities)

- (BOOL)isExactMatchRule
{
  if ([a1 type])
  {
    return 0;
  }

  v3 = [a1 triggerCondition];
  if ([v3 comparisonType])
  {
    v4 = [a1 triggerCondition];
    v2 = [v4 comparisonType] == 1;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

@end