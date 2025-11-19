@interface MedicationDose
- (void)medicationDetailDidUpdate:(id)a3 for:(id)a4;
@end

@implementation MedicationDose

- (void)medicationDetailDidUpdate:(id)a3 for:(id)a4
{
  v5 = sub_1D166FA04();
  v7 = v6;
  v8 = a3;

  MedicationDose.medicationDetailDidUpdate(_:for:)(v8, v5, v7);
}

@end