@interface HDSettingsMigrationStep
@end

@implementation HDSettingsMigrationStep

uint64_t __124__HDSettingsMigrationStep_HealthMobilityDaemon__crystalMigrateWalkingSteadinessEnablementToFeatureSettingsWithUserDefaults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) hk_keyExists:@"EnableWalkingSteadinessNotifications"])
  {
    v6 = [v5 featureSettingsManager];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "BOOLForKey:", @"EnableWalkingSteadinessNotifications"}];
    v8 = *MEMORY[0x277CCC120];
    v9 = *MEMORY[0x277CCC110];
    v17 = 0;
    v10 = [v6 setFeatureSettingsNumber:v7 forKey:v8 featureIdentifier:v9 suppressNotificationsToObserver:0 error:&v17];
    v11 = v17;

    if ((v10 & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
      {
        __124__HDSettingsMigrationStep_HealthMobilityDaemon__crystalMigrateWalkingSteadinessEnablementToFeatureSettingsWithUserDefaults___block_invoke_cold_1();
      }

      v12 = v11;
      if (v12)
      {
        if (a3)
        {
          v13 = v12;
          *a3 = v12;
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
    v14 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = @"CrystalMigrateWalkingSteadinessEnablementToFeatureSettings";
      _os_log_impl(&dword_251962000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Migration occurred but no Walking Steadiness notifications enablement key present, not setting enablement feature setting", buf, 0xCu);
    }

    v10 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __145__HDSettingsMigrationStep_HealthMobilityDaemon__crystalMigrateWalkingSteadinessMoveOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __145__HDSettingsMigrationStep_HealthMobilityDaemon__crystalMigrateWalkingSteadinessMoveOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults___block_invoke_2;
  v17[3] = &unk_2796D9460;
  v18 = *(a1 + 32);
  v6 = MEMORY[0x253088390](v17);
  if ([*(a1 + 32) hk_keyExists:@"OnboardingTileDismissedDate"])
  {
    v7 = [objc_alloc(MEMORY[0x277D10718]) initWithCategory:100 domainName:@"OnboardingPromotionDismissalState" profile:v5];
    v8 = *MEMORY[0x277D11A50];
    v16 = 0;
    v9 = [v7 setNumber:MEMORY[0x277CBEC38] forKey:v8 error:&v16];
    v10 = v16;
    if (v9)
    {
      v6[2](v6);
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
      {
        __145__HDSettingsMigrationStep_HealthMobilityDaemon__crystalMigrateWalkingSteadinessMoveOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults___block_invoke_cold_1();
      }

      v12 = v10;
      if (v12)
      {
        if (a3)
        {
          v13 = v12;
          *a3 = v12;
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
    v11 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = @"CrystalMigrateWalkingSteadinessOnboardingTileDismissalDateToKeyValueStorage";
      _os_log_impl(&dword_251962000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Migration occurred but no Walking Steadiness onboarding dismissal key present, not setting notification details entered", buf, 0xCu);
    }

    v6[2](v6);
    v9 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __145__HDSettingsMigrationStep_HealthMobilityDaemon__crystalMigrateWalkingSteadinessMoveOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = @"CrystalMigrateWalkingSteadinessOnboardingTileDismissalDateToKeyValueStorage";
    _os_log_impl(&dword_251962000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleting the old defaults domain", &v5, 0xCu);
  }

  result = [*(a1 + 32) removePersistentDomainForName:@"com.apple.private.health.walking-steadiness"];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __124__HDSettingsMigrationStep_HealthMobilityDaemon__crystalMigrateWalkingSteadinessEnablementToFeatureSettingsWithUserDefaults___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 138543618;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_251962000, v0, OS_LOG_TYPE_ERROR, "[%{public}@] Error when saving notification details entered: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __145__HDSettingsMigrationStep_HealthMobilityDaemon__crystalMigrateWalkingSteadinessMoveOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 138543618;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_251962000, v0, OS_LOG_TYPE_ERROR, "[%{public}@] Error when saving onboarding promotion dismissal state: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end