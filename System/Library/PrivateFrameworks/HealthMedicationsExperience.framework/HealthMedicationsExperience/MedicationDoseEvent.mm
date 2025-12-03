@interface MedicationDoseEvent
- (void)medicationDetailDidUpdate:(id)update for:(id)for;
@end

@implementation MedicationDoseEvent

- (void)medicationDetailDidUpdate:(id)update for:(id)for
{
  v5 = sub_1D166FA04();
  v7 = v6;
  updateCopy = update;

  sub_1D1615174(updateCopy, v5, v7);
}

@end