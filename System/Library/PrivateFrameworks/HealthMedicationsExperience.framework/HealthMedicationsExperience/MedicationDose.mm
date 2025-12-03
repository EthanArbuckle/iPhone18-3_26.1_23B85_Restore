@interface MedicationDose
- (void)medicationDetailDidUpdate:(id)update for:(id)for;
@end

@implementation MedicationDose

- (void)medicationDetailDidUpdate:(id)update for:(id)for
{
  v5 = sub_1D166FA04();
  v7 = v6;
  updateCopy = update;

  MedicationDose.medicationDetailDidUpdate(_:for:)(updateCopy, v5, v7);
}

@end