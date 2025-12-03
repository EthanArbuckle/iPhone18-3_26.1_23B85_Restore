@interface HKMedicationOrder(Displayable)
- (id)codings;
@end

@implementation HKMedicationOrder(Displayable)

- (id)codings
{
  medicationCodingCollection = [self medicationCodingCollection];
  codings = [medicationCodingCollection codings];

  return codings;
}

@end