@interface HDSettingsMigrationStep
@end

@implementation HDSettingsMigrationStep

uint64_t __125__HDSettingsMigrationStep_HeartHealthDaemon__crystalMigrateCardioFitnessEnabledToNotificationDetailsEnteredWithUserDefaults___block_invoke(uint64_t a1, void *a2, NSObject **a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) hk_keyExists:*MEMORY[0x277CCE440]])
  {
    v6 = [v5 featureSettingsManager];
    v7 = *MEMORY[0x277D12E48];
    v8 = *MEMORY[0x277CCC000];
    v15 = 0;
    v9 = [v6 setFeatureSettingsNumber:MEMORY[0x277CBEC38] forKey:v7 featureIdentifier:v8 suppressNotificationsToObserver:0 error:&v15];
    v10 = v15;

    if ((v9 & 1) == 0)
    {
      _HKInitializeLogging();
      v11 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __125__HDSettingsMigrationStep_HeartHealthDaemon__crystalMigrateCardioFitnessEnabledToNotificationDetailsEnteredWithUserDefaults___block_invoke_cold_1();
      }

      v10 = v10;
      if (v10)
      {
        if (a3)
        {
          v12 = v10;
          *a3 = v10;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = @"CrystalMigrateCardioFitnessEnablemedToNotificationDetailsEntered";
      _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Migration occurred but no Cardio Fitness notifications enablement key present, not setting notification details entered", buf, 0xCu);
    }

    v9 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __134__HDSettingsMigrationStep_HeartHealthDaemon__crystalMigrateCardioFitnessOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) hk_keyExists:@"OnboardingTileDismissedDate"])
  {
    v6 = [objc_alloc(MEMORY[0x277D10718]) initWithCategory:100 domainName:@"OnboardingPromotionDismissalState" profile:v5];
    v7 = *MEMORY[0x277D12E50];
    v15 = 0;
    v8 = [v6 setNumber:MEMORY[0x277CBEC38] forKey:v7 error:&v15];
    v9 = v15;
    if ((v8 & 1) == 0)
    {
      _HKInitializeLogging();
      v10 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __134__HDSettingsMigrationStep_HeartHealthDaemon__crystalMigrateCardioFitnessOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults___block_invoke_cold_1();
      }

      v11 = v9;
      if (v11)
      {
        if (a3)
        {
          v12 = v11;
          *a3 = v11;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = @"CrystalMoveOnboardingTileDismissalDateToKeyValueStorage";
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Migration occurred but no Cardio Fitness onboarding dismissal key present, not setting notification details entered", buf, 0xCu);
    }

    v8 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

void __125__HDSettingsMigrationStep_HeartHealthDaemon__crystalMigrateCardioFitnessEnabledToNotificationDetailsEnteredWithUserDefaults___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 138543618;
  OUTLINED_FUNCTION_0_14();
  _os_log_error_impl(&dword_229486000, v0, OS_LOG_TYPE_ERROR, "[%{public}@] Error when saving notification details entered: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __134__HDSettingsMigrationStep_HeartHealthDaemon__crystalMigrateCardioFitnessOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 138543618;
  OUTLINED_FUNCTION_0_14();
  _os_log_error_impl(&dword_229486000, v0, OS_LOG_TYPE_ERROR, "[%{public}@] Error when saving onboarding promotion dismissal state: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end