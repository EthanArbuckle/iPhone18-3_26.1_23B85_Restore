@interface HKAllergyRecord(Displayable)
- (id)codings;
@end

@implementation HKAllergyRecord(Displayable)

- (id)codings
{
  v1 = [a1 allergyCodingCollection];
  v2 = [v1 codings];

  return v2;
}

@end