@interface HDMobilityWalkingSteadinessFeatureAvailabilityManager
- (BOOL)_determineIsSupportedWithOnboardingCompletions:(id)completions regionCheckBlock:(id)block;
- (BOOL)_localRegionCheckWithCountryCode:(id)code;
- (HDMobilityWalkingSteadinessFeatureAvailabilityManager)initWithProfile:(id)profile regionAvailabilityProvider:(id)provider;
- (id)_onboardedCountryCodeSupportedStateWithError:(id *)error;
- (id)_onboardingCompletionsForHighestVersionWithError:(id *)error;
- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error;
- (id)canCompleteOnboardingWhileBypassingDeviceForDemoDataPurposesWithCountryCode:(id)code;
- (id)description;
- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error;
- (id)onboardingEligibilityForCountryCode:(id)code error:(id *)error;
- (int64_t)_currentOnboardingVersion;
- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)completion;
- (void)removeFeatureSettingValueForKey:(id)key completion:(id)completion;
- (void)saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5;
- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion;
- (void)setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion;
- (void)setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion;
- (void)setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion;
@end

@implementation HDMobilityWalkingSteadinessFeatureAvailabilityManager

- (HDMobilityWalkingSteadinessFeatureAvailabilityManager)initWithProfile:(id)profile regionAvailabilityProvider:(id)provider
{
  profileCopy = profile;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = HDMobilityWalkingSteadinessFeatureAvailabilityManager;
  v8 = [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    v9->_currentOnboardingVersion = 1;
    objc_storeStrong(&v9->_supportedRegionProvider, provider);
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
  featureIdentifier = [(HDFeatureAvailabilityManager *)self->_manager featureIdentifier];
  v6 = [v3 stringWithFormat:@"%@:%@", v4, featureIdentifier];

  return v6;
}

- (id)canCompleteOnboardingWhileBypassingDeviceForDemoDataPurposesWithCountryCode:(id)code
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(HDRegionAvailabilityProviding *)self->_supportedRegionProvider onboardingEligibilityForCountryCode:code];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "isEligible")}];

  return v5;
}

- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error
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
        selfCopy = self;
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
      if (error)
      {
        v9 = v8;
        *error = v8;
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

- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)completion
{
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self isCurrentOnboardingVersionCompletedWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error
{
  v4 = MEMORY[0x277CCABB0];
  error = [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self _localRegionCheckWithCountryCode:code, error];

  return [v4 numberWithBool:error];
}

- (id)onboardingEligibilityForCountryCode:(id)code error:(id *)error
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
    if (error)
    {
      v13 = v12;
      *error = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return 0;
}

- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion
{
  codeCopy = code;
  dateCopy = date;
  v13 = MEMORY[0x277CCD740];
  completionCopy = completion;
  settingsCopy = settings;
  v16 = [v13 alloc];
  featureIdentifier = [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self featureIdentifier];
  _currentOnboardingVersion = [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self _currentOnboardingVersion];
  if (dateCopy)
  {
    v19 = [v16 initWithFeatureIdentifier:featureIdentifier version:_currentOnboardingVersion completionDate:dateCopy countryCode:codeCopy countryCodeProvenance:provenance];
  }

  else
  {
    v20 = [MEMORY[0x277CBEAA8] now];
    v19 = [v16 initWithFeatureIdentifier:featureIdentifier version:_currentOnboardingVersion completionDate:v20 countryCode:codeCopy countryCodeProvenance:provenance];
  }

  [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self saveOnboardingCompletion:v19 settings:settingsCopy completion:completionCopy];
}

- (void)saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5
{
  completionCopy = completion;
  v8 = a5;
  countryCode = [completionCopy countryCode];

  if (countryCode)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    onboardingCompletionManager = [WeakRetained onboardingCompletionManager];
    v17 = 0;
    v12 = [onboardingCompletionManager insertOnboardingCompletion:completionCopy error:&v17];
    v13 = v17;

    if (v12)
    {
      nanoSyncManager = [WeakRetained nanoSyncManager];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Onboarding completed", self];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __102__HDMobilityWalkingSteadinessFeatureAvailabilityManager_saveOnboardingCompletion_settings_completion___block_invoke;
      v16[3] = &unk_2796D9488;
      v16[4] = self;
      [nanoSyncManager syncHealthDataWithOptions:0 reason:v15 completion:v16];
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

- (void)setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
  {
    [HDMobilityWalkingSteadinessFeatureAvailabilityManager setFeatureSettingData:forKey:completion:];
  }

  v6 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Walking Steadiness."];
  completionCopy[2](completionCopy, 0, v6);
}

- (void)setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
  {
    [HDMobilityWalkingSteadinessFeatureAvailabilityManager setFeatureSettingData:forKey:completion:];
  }

  v6 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Walking Steadiness."];
  completionCopy[2](completionCopy, 0, v6);
}

- (void)setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
  {
    [HDMobilityWalkingSteadinessFeatureAvailabilityManager setFeatureSettingData:forKey:completion:];
  }

  v6 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Walking Steadiness."];
  completionCopy[2](completionCopy, 0, v6);
}

- (void)removeFeatureSettingValueForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
  {
    [HDMobilityWalkingSteadinessFeatureAvailabilityManager setFeatureSettingData:forKey:completion:];
  }

  v5 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Walking Steadiness."];
  completionCopy[2](completionCopy, 0, v5);
}

- (int64_t)_currentOnboardingVersion
{
  if (![(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self _unitTest_currentOnboardingVersionOverride])
  {
    return self->_currentOnboardingVersion;
  }

  return [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self _unitTest_currentOnboardingVersionOverride];
}

- (id)_onboardedCountryCodeSupportedStateWithError:(id *)error
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
        selfCopy2 = self;
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
        selfCopy2 = self;
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
      if (error)
      {
        v11 = v10;
        *error = v10;
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

- (BOOL)_determineIsSupportedWithOnboardingCompletions:(id)completions regionCheckBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  completionsCopy = completions;
  blockCopy = block;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = completionsCopy;
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
      version = [v15 version];
      if (version >= [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self _currentOnboardingVersion])
      {
        countryCode = [v15 countryCode];

        if (countryCode)
        {
          countryCode2 = [v15 countryCode];
          v22 = blockCopy[2](blockCopy, countryCode2);

          _HKInitializeLogging();
          v23 = *v11;
          v24 = os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT);
          if (v22)
          {
            if (v24)
            {
              *buf = v30;
              selfCopy5 = self;
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
          selfCopy5 = self;
          v18 = v23;
          v19 = "[%{public}@] Onboarding completion found that does not satisfy region check";
          goto LABEL_15;
        }

        _HKInitializeLogging();
        v25 = *v11;
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v30;
          selfCopy5 = self;
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
          selfCopy5 = self;
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
    selfCopy5 = self;
    _os_log_impl(&dword_251962000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] No onboarding completions meet the current requirements", buf, 0xCu);
    v27 = 0;
  }

LABEL_23:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (id)_onboardingCompletionsForHighestVersionWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  onboardingCompletionManager = [WeakRetained onboardingCompletionManager];
  featureIdentifier = [(HDMobilityWalkingSteadinessFeatureAvailabilityManager *)self featureIdentifier];
  v14 = 0;
  v8 = [onboardingCompletionManager onboardingCompletionsForHighestVersionOfFeatureIdentifier:featureIdentifier error:&v14];
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
      if (error)
      {
        v12 = v11;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v8;
}

- (BOOL)_localRegionCheckWithCountryCode:(id)code
{
  v16 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v5 = [(HDRegionAvailabilityProviding *)self->_supportedRegionProvider onboardingEligibilityForCountryCode:codeCopy];
  isEligible = [v5 isEligible];

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2F8];
  v8 = os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT);
  if (isEligible)
  {
    if (v8)
    {
      v12 = 138543619;
      selfCopy2 = self;
      v14 = 2113;
      v15 = codeCopy;
      v9 = "[%{public}@] Country code %{private}@ supported";
LABEL_6:
      _os_log_impl(&dword_251962000, v7, OS_LOG_TYPE_DEFAULT, v9, &v12, 0x16u);
    }
  }

  else if (v8)
  {
    v12 = 138543619;
    selfCopy2 = self;
    v14 = 2113;
    v15 = codeCopy;
    v9 = "[%{public}@] Country code %{private}@ not supported";
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
  return isEligible;
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