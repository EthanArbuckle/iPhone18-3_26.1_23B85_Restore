@interface HKMedicationOrder(Displayable)
- (id)codings;
@end

@implementation HKMedicationOrder(Displayable)

- (id)codings
{
  v1 = [a1 medicationCodingCollection];
  v2 = [v1 codings];

  return v2;
}

@end