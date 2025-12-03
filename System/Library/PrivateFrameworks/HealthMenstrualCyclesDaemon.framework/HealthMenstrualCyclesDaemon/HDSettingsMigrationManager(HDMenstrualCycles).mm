@interface HDSettingsMigrationManager(HDMenstrualCycles)
- (uint64_t)initWithProfile:()HDMenstrualCycles userDefaults:delegate:;
@end

@implementation HDSettingsMigrationManager(HDMenstrualCycles)

- (uint64_t)initWithProfile:()HDMenstrualCycles userDefaults:delegate:
{
  v21[5] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D10860];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dawnMoveAlgorithmicProjectionsToFeatureSettingsWithUserDefaults:v10];
  v21[0] = v12;
  v13 = [MEMORY[0x277D10860] dawnMoveOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults:v10];
  v21[1] = v13;
  v14 = [MEMORY[0x277D10860] dawnMoveHiddenCycleChartRowsSettingsWithUserDefaults:v10];
  v21[2] = v14;
  v15 = [MEMORY[0x277D10860] dawnMoveHiddenLoggingRowsSettingsWithUserDefaults:v10];
  v21[3] = v15;
  v16 = [MEMORY[0x277D10860] dawnMoveToDeviationDetectionFeatureSettingsWithUserDefaults:v10];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];
  v18 = [self initWithProfile:v11 identifier:@"HealthMenstrualCycles" currentMigrationVersion:17005 migrationSteps:v17 delegate:v9 migrationVersionDefaults:v10 lastMigratedVersionKey:@"HDMCSettingsMigrationManager_LastCompletedVersion" loggingCategory:*MEMORY[0x277CCC2E8]];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

@end