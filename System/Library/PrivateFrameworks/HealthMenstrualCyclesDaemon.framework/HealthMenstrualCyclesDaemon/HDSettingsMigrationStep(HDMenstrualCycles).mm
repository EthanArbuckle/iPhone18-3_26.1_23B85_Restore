@interface HDSettingsMigrationStep(HDMenstrualCycles)
+ (id)dawnMoveAlgorithmicProjectionsToFeatureSettingsWithUserDefaults:()HDMenstrualCycles;
+ (id)dawnMoveHiddenCycleChartRowsSettingsWithUserDefaults:()HDMenstrualCycles;
+ (id)dawnMoveHiddenLoggingRowsSettingsWithUserDefaults:()HDMenstrualCycles;
+ (id)dawnMoveOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults:()HDMenstrualCycles;
+ (id)dawnMoveToDeviationDetectionFeatureSettingsWithUserDefaults:()HDMenstrualCycles;
@end

@implementation HDSettingsMigrationStep(HDMenstrualCycles)

+ (id)dawnMoveAlgorithmicProjectionsToFeatureSettingsWithUserDefaults:()HDMenstrualCycles
{
  v4 = a3;
  v5 = [self alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __110__HDSettingsMigrationStep_HDMenstrualCycles__dawnMoveAlgorithmicProjectionsToFeatureSettingsWithUserDefaults___block_invoke;
  v9[3] = &unk_27865ADE8;
  v10 = v4;
  selfCopy = self;
  v6 = v4;
  v7 = [v5 initWithIdentifier:@"DawnMoveAlgorithmicProjectionsToFeatureSettings" migrationVersion:17001 block:v9];

  return v7;
}

+ (id)dawnMoveOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults:()HDMenstrualCycles
{
  v4 = a3;
  v5 = [self alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __115__HDSettingsMigrationStep_HDMenstrualCycles__dawnMoveOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults___block_invoke;
  v9[3] = &unk_27865ADE8;
  v10 = v4;
  selfCopy = self;
  v6 = v4;
  v7 = [v5 initWithIdentifier:@"DawnMoveOnboardingTileDismissalDateToKeyValueStorage" migrationVersion:17002 block:v9];

  return v7;
}

+ (id)dawnMoveHiddenCycleChartRowsSettingsWithUserDefaults:()HDMenstrualCycles
{
  v4 = a3;
  v5 = [self alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__HDSettingsMigrationStep_HDMenstrualCycles__dawnMoveHiddenCycleChartRowsSettingsWithUserDefaults___block_invoke;
  v9[3] = &unk_27865ADE8;
  v10 = v4;
  selfCopy = self;
  v6 = v4;
  v7 = [v5 initWithIdentifier:@"DawnMoveHiddenCycleChartRowsSettings" migrationVersion:17003 block:v9];

  return v7;
}

+ (id)dawnMoveHiddenLoggingRowsSettingsWithUserDefaults:()HDMenstrualCycles
{
  v4 = a3;
  v5 = [self alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__HDSettingsMigrationStep_HDMenstrualCycles__dawnMoveHiddenLoggingRowsSettingsWithUserDefaults___block_invoke;
  v9[3] = &unk_27865ADE8;
  v10 = v4;
  selfCopy = self;
  v6 = v4;
  v7 = [v5 initWithIdentifier:@"DawnMoveHiddenLoggingRowsSettings" migrationVersion:17004 block:v9];

  return v7;
}

+ (id)dawnMoveToDeviationDetectionFeatureSettingsWithUserDefaults:()HDMenstrualCycles
{
  v4 = a3;
  v5 = [self alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __106__HDSettingsMigrationStep_HDMenstrualCycles__dawnMoveToDeviationDetectionFeatureSettingsWithUserDefaults___block_invoke;
  v9[3] = &unk_27865ADE8;
  v10 = v4;
  selfCopy = self;
  v6 = v4;
  v7 = [v5 initWithIdentifier:@"DawnMoveDeviationDetectionFeatureSettings" migrationVersion:17005 block:v9];

  return v7;
}

@end