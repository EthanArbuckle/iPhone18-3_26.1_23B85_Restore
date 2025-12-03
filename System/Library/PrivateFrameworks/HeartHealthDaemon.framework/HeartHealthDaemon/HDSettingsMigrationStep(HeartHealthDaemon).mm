@interface HDSettingsMigrationStep(HeartHealthDaemon)
+ (id)crystalMigrateCardioFitnessEnabledToNotificationDetailsEnteredWithUserDefaults:()HeartHealthDaemon;
+ (id)crystalMigrateCardioFitnessOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults:()HeartHealthDaemon;
@end

@implementation HDSettingsMigrationStep(HeartHealthDaemon)

+ (id)crystalMigrateCardioFitnessEnabledToNotificationDetailsEnteredWithUserDefaults:()HeartHealthDaemon
{
  v4 = a3;
  v5 = [self alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __125__HDSettingsMigrationStep_HeartHealthDaemon__crystalMigrateCardioFitnessEnabledToNotificationDetailsEnteredWithUserDefaults___block_invoke;
  v9[3] = &unk_278660A68;
  v10 = v4;
  v6 = v4;
  v7 = [v5 initWithIdentifier:@"CrystalMigrateCardioFitnessEnablemedToNotificationDetailsEntered" migrationVersion:18001 block:v9];

  return v7;
}

+ (id)crystalMigrateCardioFitnessOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults:()HeartHealthDaemon
{
  v4 = a3;
  v5 = [self alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __134__HDSettingsMigrationStep_HeartHealthDaemon__crystalMigrateCardioFitnessOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults___block_invoke;
  v9[3] = &unk_278660A68;
  v10 = v4;
  v6 = v4;
  v7 = [v5 initWithIdentifier:@"CrystalMigrateCardioFitnessEnablemedToNotificationDetailsEntered" migrationVersion:18002 block:v9];

  return v7;
}

@end