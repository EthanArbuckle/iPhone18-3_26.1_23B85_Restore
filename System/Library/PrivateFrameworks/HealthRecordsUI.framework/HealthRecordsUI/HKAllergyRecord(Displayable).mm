@interface HKAllergyRecord(Displayable)
- (id)codings;
@end

@implementation HKAllergyRecord(Displayable)

- (id)codings
{
  allergyCodingCollection = [self allergyCodingCollection];
  codings = [allergyCodingCollection codings];

  return codings;
}

@end