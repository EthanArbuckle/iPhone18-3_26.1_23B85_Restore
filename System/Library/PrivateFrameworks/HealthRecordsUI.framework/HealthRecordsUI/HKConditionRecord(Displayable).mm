@interface HKConditionRecord(Displayable)
- (id)codings;
@end

@implementation HKConditionRecord(Displayable)

- (id)codings
{
  v1 = [a1 conditionCodingCollection];
  v2 = [v1 codings];

  return v2;
}

@end