@interface HDWatchSettingsReconciliationManager(HDMenstrualCycles)
- (uint64_t)initWithProfile:()HDMenstrualCycles userDefaults:;
@end

@implementation HDWatchSettingsReconciliationManager(HDMenstrualCycles)

- (uint64_t)initWithProfile:()HDMenstrualCycles userDefaults:
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D10970];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [v9 initWithFeatureIdentifier:*MEMORY[0x277CCC0A0] defaultsEnabledKey:@"SensorBasedProjectionsEnabled"];
  v17[0] = v10;
  v11 = objc_alloc(MEMORY[0x277D10970]);
  v12 = [v11 initWithFeatureIdentifier:*MEMORY[0x277CCC0A8] defaultsEnabledKey:@"WristTemperatureBasedProjectionsEnabled"];
  v17[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v14 = [a1 initWithProfile:v8 userDefaults:v7 managedKeys:v13 debugIdentifier:@"HealthMenstrualCycles" loggingCategory:*MEMORY[0x277CCC2E8]];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

@end