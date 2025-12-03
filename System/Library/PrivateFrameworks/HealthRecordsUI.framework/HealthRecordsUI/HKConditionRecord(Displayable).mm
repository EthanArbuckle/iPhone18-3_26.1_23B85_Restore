@interface HKConditionRecord(Displayable)
- (id)codings;
@end

@implementation HKConditionRecord(Displayable)

- (id)codings
{
  conditionCodingCollection = [self conditionCodingCollection];
  codings = [conditionCodingCollection codings];

  return codings;
}

@end