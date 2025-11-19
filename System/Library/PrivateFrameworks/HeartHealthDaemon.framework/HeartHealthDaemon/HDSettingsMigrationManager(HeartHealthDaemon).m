@interface HDSettingsMigrationManager(HeartHealthDaemon)
- (uint64_t)initWithProfile:()HeartHealthDaemon heartNotificationsUserDefaults:delegate:;
@end

@implementation HDSettingsMigrationManager(HeartHealthDaemon)

- (uint64_t)initWithProfile:()HeartHealthDaemon heartNotificationsUserDefaults:delegate:
{
  v19[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEBD0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithSuiteName:@"com.apple.private.health.cardio-fitness"];
  v13 = [MEMORY[0x277D10860] crystalMigrateCardioFitnessEnabledToNotificationDetailsEnteredWithUserDefaults:v10];

  v19[0] = v13;
  v14 = [MEMORY[0x277D10860] crystalMigrateCardioFitnessOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults:v12];
  v19[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v16 = [a1 initWithProfile:v11 identifier:@"HeartHealthDaemon" currentMigrationVersion:18002 migrationSteps:v15 delegate:v9 loggingCategory:*MEMORY[0x277CCC2D0]];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

@end