@interface HDMobilityWalkingSteadinessFeatureAvailabilityManager
- (BOOL)_determineIsSupportedWithOnboardingCompletions:(id)a3 regionCheckBlock:(id)a4;
- (BOOL)_localRegionCheckWithCountryCode:(id)a3;
- (HDMobilityWalkingSteadinessFeatureAvailabilityManager)initWithProfile:(id)a3 regionAvailabilityProvider:(id)a4;
- (id)_onboardedCountryCodeSupportedStateWithError:(id *)a3;
- (id)_onboardingCompletionsForHighestVersionWithError:(id *)a3;
- (id)canCompleteOnboardingForCountryCode:(id)a3 error:(id *)a4;
- (id)canCompleteOnboardingWhileBypassingDeviceForDemoDataPurposesWithCountryCode:(id)a3;
- (id)description;
- (id)isCurrentOnboardingVersionCompletedWithError:(id *)a3;
- (id)onboardingEligibilityForCountryCode:(id)a3 error:(id *)a4;
- (int64_t)_currentOnboardingVersion;
- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)a3;
- (void)removeFeatureSettingValueForKey:(id)a3 completion:(id)a4;
- (void)saveOnboardingCompletion:(id)a3 settings:(id)a4 completion:(id)a5;
- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)a3 countryCodeProvenance:(int64_t)a4 date:(id)a5 settings:(id)a6 completion:(id)a7;
- (void)setFeatureSettingData:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setFeatureSettingNumber:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setFeatureSettingString:(id)a3 forKey:(id)a4 completion:(id)a5;
@end

@implementation HDMobilityWalkingSteadinessFeatureAvailabilityManager

- (HDMobilityWalkingSteadinessFeatureAvailabilityManager)initWithProfile:(id)a3 regionAvailabilityProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = HDMobilityWalkingSteadinessFeatureAvailabilityManager;
  v8 = [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    v9->_currentOnboardingVersion = 1;
    objc_storeStrong(&v9->_supportedRegionProvider, a4);
    v10 = objc_alloc(MEMORY[0x277D106D8]);
    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    v12 = [v10 initWithProfile:WeakRetained featureIdentifier:*MEMORY[0x277CCC118] currentOnboardingVersion:v9->_currentOnboardingVersion loggingCategory:*MEMORY[0x277CCC2F8]];
    manager = v9->_manager;
    v9->_manager = v12;

    v14 = v9;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HDFeatureAvailabilityManager *)self->_manager featureIdentifier];
  v6 = [v3 stringWithFormat:@"%@:%@", v4, v5];

  return v6;
}

- (id)canCompleteOnboardingWhileBypassingDeviceForDemoDataPurposesWithCountryCode:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(HDRegionAvailabilityProviding *)self->_supportedRegionProvider onboardingEligibilityForCountryCode:a3];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "isEligible")}];

  return v5;
}

- (id)isCurrentOnboardingVersionCompletedWithError:(id *)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v5 = [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self _onboardingCompletionsForHighestVersionWithError:&v14];
  v6 = v14;
  if (v5)
  {
    if ([v5 count])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __102__HDMobilityWalkingSteadinessFeatureAvailabilityManager_isCurrentOnboardingVersionCompletedWithError___block_invoke;
      v13[3] = &unk_2796D95B8;
      v13[4] = self;
      v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDMobilityWalkingSteadinessFeatureAvailabilityManager _determineIsSupportedWithOnboardingCompletions:regionCheckBlock:](self, "_determineIsSupportedWithOnboardingCompletions:regionCheckBlock:", v5, v13)}];
    }

    else
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC2F8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v16 = self;
        _os_log_impl(&dword_251962000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] No onboarding completion found", buf, 0xCu);
      }

      v7 = MEMORY[0x277CBEC28];
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      [HDMobilityWalkingSteadinessFeatureAvailabilityManager isCurrentOnboardingVersionCompletedWithError:];
    }

    v8 = v6;
    if (v8)
    {
      if (a3)
      {
        v9 = v8;
        *a3 = v8;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self isCurrentOnboardingVersionCompletedWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (id)canCompleteOnboardingForCountryCode:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self _localRegionCheckWithCountryCode:a3, a4];

  return [v4 numberWithBool:v5];
}

- (id)onboardingEligibilityForCountryCode:(id)a3 error:(id *)a4
{
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
  {
    [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:v7 error:a2];
  }

  v8 = MEMORY[0x277CCA9B8];
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"%@ is not implemented for %@", v10, objc_opt_class()];
  v12 = [v8 hk_error:110 description:v11];
  if (v12)
  {
    if (a4)
    {
      v13 = v12;
      *a4 = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return 0;
}

- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)a3 countryCodeProvenance:(int64_t)a4 date:(id)a5 settings:(id)a6 completion:(id)a7
{
  v21 = a3;
  v12 = a5;
  v13 = MEMORY[0x277CCD740];
  v14 = a7;
  v15 = a6;
  v16 = [v13 alloc];
  v17 = [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self featureIdentifier];
  v18 = [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self _currentOnboardingVersion];
  if (v12)
  {
    v19 = [v16 initWithFeatureIdentifier:v17 version:v18 completionDate:v12 countryCode:v21 countryCodeProvenance:a4];
  }

  else
  {
    v20 = [MEMORY[0x277CBEAA8] now];
    v19 = [v16 initWithFeatureIdentifier:v17 version:v18 completionDate:v20 countryCode:v21 countryCodeProvenance:a4];
  }

  [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self saveOnboardingCompletion:v19 settings:v15 completion:v14];
}

- (void)saveOnboardingCompletion:(id)a3 settings:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 countryCode];

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v11 = [WeakRetained onboardingCompletionManager];
    v17 = 0;
    v12 = [v11 insertOnboardingCompletion:v7 error:&v17];
    v13 = v17;

    if (v12)
    {
      v14 = [WeakRetained nanoSyncManager];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Onboarding completed", self];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __102__HDMobilityWalkingSteadinessFeatureAvailabilityManager_saveOnboardingCompletion_settings_completion___block_invoke;
      v16[3] = &unk_2796D9488;
      v16[4] = self;
      [v14 syncHealthDataWithOptions:0 reason:v15 completion:v16];
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
      {
        [HDMobilityWalkingSteadinessFeatureAvailabilityManager saveOnboardingCompletion:settings:completion:];
      }
    }

    v8[2](v8, v12, v13);
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      [HDMobilityWalkingSteadinessFeatureAvailabilityManager saveOnboardingCompletion:settings:completion:];
    }

    WeakRetained = [MEMORY[0x277CCA9B8] hk_error:3 format:@"Country code <nil> is not an allowed country code"];
    v8[2](v8, 0, WeakRetained);
    v13 = v8;
  }
}

void __102__HDMobilityWalkingSteadinessFeatureAvailabilityManager_saveOnboardingCompletion_settings_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2F8];
  v7 = *MEMORY[0x277CCC2F8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_251962000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] NanoSync completed after onboarding completed", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __102__HDMobilityWalkingSteadinessFeatureAvailabilityManager_saveOnboardingCompletion_settings_completion___block_invoke_cold_1(a1, v5, v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingData:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v5 = a5;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
  {
    [HDMobilityWalkingSteadinessFeatureAvailabilityManager setFeatureSettingData:forKey:completion:];
  }

  v6 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Walking Steadiness."];
  v5[2](v5, 0, v6);
}

- (void)setFeatureSettingString:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v5 = a5;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
  {
    [HDMobilityWalkingSteadinessFeatureAvailabilityManager setFeatureSettingData:forKey:completion:];
  }

  v6 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Walking Steadiness."];
  v5[2](v5, 0, v6);
}

- (void)setFeatureSettingNumber:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v5 = a5;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
  {
    [HDMobilityWalkingSteadinessFeatureAvailabilityManager setFeatureSettingData:forKey:completion:];
  }

  v6 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Walking Steadiness."];
  v5[2](v5, 0, v6);
}

- (void)removeFeatureSettingValueForKey:(id)a3 completion:(id)a4
{
  v4 = a4;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
  {
    [HDMobilityWalkingSteadinessFeatureAvailabilityManager setFeatureSettingData:forKey:completion:];
  }

  v5 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Walking Steadiness."];
  v4[2](v4, 0, v5);
}

- (int64_t)_currentOnboardingVersion
{
  if (![(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self _unitTest_currentOnboardingVersionOverride])
  {
    return self->_currentOnboardingVersion;
  }

  return [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self _unitTest_currentOnboardingVersionOverride];
}

- (id)_onboardedCountryCodeSupportedStateWithError:(id *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v5 = [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self _onboardingCompletionsForHighestVersionWithError:&v16];
  v6 = v16;
  if (v5)
  {
    if ([v5 count])
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __102__HDMobilityWalkingSteadinessFeatureAvailabilityManager__onboardedCountryCodeSupportedStateWithError___block_invoke;
      v15[3] = &unk_2796D95B8;
      v15[4] = self;
      if ([(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self _determineIsSupportedWithOnboardingCompletions:v5 regionCheckBlock:v15])
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }

      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2F8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v18 = self;
        v19 = 1026;
        v20 = v7;
        _os_log_impl(&dword_251962000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarded country code state: %{public}i", buf, 0x12u);
      }

      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2F8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = self;
        _os_log_impl(&dword_251962000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] No onboarding completion found", buf, 0xCu);
      }

      v9 = &unk_2863D8408;
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      [HDMobilityWalkingSteadinessFeatureAvailabilityManager isCurrentOnboardingVersionCompletedWithError:];
    }

    v10 = v6;
    if (v10)
    {
      if (a3)
      {
        v11 = v10;
        *a3 = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)_determineIsSupportedWithOnboardingCompletions:(id)a3 regionCheckBlock:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
  v11 = MEMORY[0x277CCC2F8];
  if (v9)
  {
    v12 = v9;
    v13 = *v32;
    *&v10 = 138543362;
    v30 = v10;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v32 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v31 + 1) + 8 * v14);
      v16 = [v15 version];
      if (v16 >= [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self _currentOnboardingVersion])
      {
        v20 = [v15 countryCode];

        if (v20)
        {
          v21 = [v15 countryCode];
          v22 = v7[2](v7, v21);

          _HKInitializeLogging();
          v23 = *v11;
          v24 = os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT);
          if (v22)
          {
            if (v24)
            {
              *buf = v30;
              v36 = self;
              _os_log_impl(&dword_251962000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding completion found that satisfies region check", buf, 0xCu);
            }

            v27 = 1;
            goto LABEL_23;
          }

          if (!v24)
          {
            goto LABEL_16;
          }

          *buf = v30;
          v36 = self;
          v18 = v23;
          v19 = "[%{public}@] Onboarding completion found that does not satisfy region check";
          goto LABEL_15;
        }

        _HKInitializeLogging();
        v25 = *v11;
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v30;
          v36 = self;
          v18 = v25;
          v19 = "[%{public}@] Onboarding completion found with no country code";
          goto LABEL_15;
        }
      }

      else
      {
        _HKInitializeLogging();
        v17 = *v11;
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v30;
          v36 = self;
          v18 = v17;
          v19 = "[%{public}@] Onboarding completion found with older version than current";
LABEL_15:
          _os_log_impl(&dword_251962000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
        }
      }

LABEL_16:
      if (v12 == ++v14)
      {
        v12 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _HKInitializeLogging();
  v26 = *v11;
  v27 = 0;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = self;
    _os_log_impl(&dword_251962000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] No onboarding completions meet the current requirements", buf, 0xCu);
    v27 = 0;
  }

LABEL_23:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (id)_onboardingCompletionsForHighestVersionWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained onboardingCompletionManager];
  v7 = [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self featureIdentifier];
  v14 = 0;
  v8 = [v6 onboardingCompletionsForHighestVersionOfFeatureIdentifier:v7 error:&v14];
  v9 = v14;

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      [HDMobilityWalkingSteadinessFeatureAvailabilityManager _onboardingCompletionsForHighestVersionWithError:];
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

  return v8;
}

- (BOOL)_localRegionCheckWithCountryCode:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDRegionAvailabilityProviding *)self->_supportedRegionProvider onboardingEligibilityForCountryCode:v4];
  v6 = [v5 isEligible];

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2F8];
  v8 = os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v12 = 138543619;
      v13 = self;
      v14 = 2113;
      v15 = v4;
      v9 = "[%{public}@] Country code %{private}@ supported";
LABEL_6:
      _os_log_impl(&dword_251962000, v7, OS_LOG_TYPE_DEFAULT, v9, &v12, 0x16u);
    }
  }

  else if (v8)
  {
    v12 = 138543619;
    v13 = self;
    v14 = 2113;
    v15 = v4;
    v9 = "[%{public}@] Country code %{private}@ not supported";
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)isCurrentOnboardingVersionCompletedWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_251962000, v0, v1, "[%{public}@] Error retrieving onboarding completions: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)onboardingEligibilityForCountryCode:(const char *)a3 error:.cold.1(uint64_t a1, void *a2, const char *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = NSStringFromSelector(a3);
  v8 = 138543618;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_251962000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ is not implemented", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)saveOnboardingCompletion:settings:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_251962000, v0, v1, "[%{public}@] Failed to set current onboarding version completed: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)saveOnboardingCompletion:settings:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3(&dword_251962000, v0, v1, "[%{public}@] Cannot save onboarding completion with nil country code", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __102__HDMobilityWalkingSteadinessFeatureAvailabilityManager_saveOnboardingCompletion_settings_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_251962000, a2, a3, "[%{public}@] NanoSync failed after onboarding completed: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingData:forKey:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3(&dword_251962000, v0, v1, "[%{public}@] Feature settings is not implemented for Walking Steadiness.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_onboardingCompletionsForHighestVersionWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_251962000, v0, v1, "[%{public}@] Failed to fetch highest version of onboarding completed: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end