@interface KVDonator(HDHealthMedicationDataProvider)
- (void)donateWithOptions:()HDHealthMedicationDataProvider usingDataStream:;
@end

@implementation KVDonator(HDHealthMedicationDataProvider)

- (void)donateWithOptions:()HDHealthMedicationDataProvider usingDataStream:
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__KVDonator_HDHealthMedicationDataProvider__donateWithOptions_usingDataStream___block_invoke;
  v8[3] = &unk_2796CDE10;
  v9 = v6;
  v7 = v6;
  [self donateWithOptions:a3 usingStream:v8];
}

@end