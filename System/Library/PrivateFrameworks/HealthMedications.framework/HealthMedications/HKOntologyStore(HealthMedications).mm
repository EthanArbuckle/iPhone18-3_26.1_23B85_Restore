@interface HKOntologyStore(HealthMedications)
- (void)markMedicationShardsAsRequiredOnFirstLaunchWithCompletion:()HealthMedications;
@end

@implementation HKOntologyStore(HealthMedications)

- (void)markMedicationShardsAsRequiredOnFirstLaunchWithCompletion:()HealthMedications
{
  v9[2] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCC600];
  v9[0] = *MEMORY[0x277CCC5D8];
  v9[1] = v4;
  v5 = MEMORY[0x277CBEA60];
  v6 = a3;
  v7 = [v5 arrayWithObjects:v9 count:2];
  [self markShardsWithIdentifiers:v7 options:3 completion:v6];

  v8 = *MEMORY[0x277D85DE8];
}

@end