@interface HDSettingsMigrationManager(HealthMobilityDaemon)
- (uint64_t)initForWalkingSteadinessWithProfile:()HealthMobilityDaemon delegate:;
@end

@implementation HDSettingsMigrationManager(HealthMobilityDaemon)

- (uint64_t)initForWalkingSteadinessWithProfile:()HealthMobilityDaemon delegate:
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEBD0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithSuiteName:@"com.apple.Mobility.notifications"];
  v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.private.health.walking-steadiness"];
  v11 = [MEMORY[0x277D10860] crystalMigrateWalkingSteadinessEnablementToFeatureSettingsWithUserDefaults:v9];
  v17[0] = v11;
  v12 = [MEMORY[0x277D10860] crystalMigrateWalkingSteadinessMoveOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults:v10];
  v17[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v14 = [self initWithProfile:v8 identifier:@"HealthMobilityDaemon" currentMigrationVersion:18002 migrationSteps:v13 delegate:v7 loggingCategory:*MEMORY[0x277CCC2F8]];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

@end