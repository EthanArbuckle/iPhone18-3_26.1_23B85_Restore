@interface HDHRHeartRateNotificationsFeatureAvailabilityManager
- (BOOL)_isActiveRemoteDevicePresent;
- (BOOL)_isOnboardingRecordPresent;
- (HDHRHeartRateNotificationsFeatureAvailabilityManager)initWithFeatureIdentifier:(id)a3 notificationSettingsDefaults:(id)a4 pairedDeviceCapabilityProvider:(id)a5 disableAndExpiryProvider:(id)a6;
- (id)_activeRemoteDeviceSupportsHeartRateNotificationsWithError:(id *)a3;
- (id)_featureEnabledDefaultsKey;
- (id)_featureSettings;
- (id)_thresholdDefaultsKey;
- (id)canCompleteOnboardingForCountryCode:(id)a3 error:(id *)a4;
- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)a3;
- (id)featureAvailabilityRequirementsWithError:(id *)a3;
- (id)featureOnboardingRecordWithError:(id *)a3;
- (id)isCurrentOnboardingVersionCompletedWithError:(id *)a3;
- (id)onboardedCountryCodeSupportedStateWithError:(id *)a3;
- (id)onboardingEligibilityForCountryCode:(id)a3 error:(id *)a4;
- (id)pairedFeatureAttributesWithError:(id *)a3;
- (int64_t)_defaultHeartRateThreshold;
- (void)_setFeatureEnabled:(id)a3 preferredThreshold:(id)a4;
- (void)disableAndExpiryProviderDidUpdate:(id)a3;
- (void)getFeatureOnboardingRecordWithCompletion:(id)a3;
- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerObserver:(id)a3 queue:(id)a4;
- (void)removeFeatureSettingValueForKey:(id)a3 completion:(id)a4;
- (void)resetOnboardingWithCompletion:(id)a3;
- (void)saveOnboardingCompletion:(id)a3 settings:(id)a4 completion:(id)a5;
- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)a3 countryCodeProvenance:(int64_t)a4 date:(id)a5 settings:(id)a6 completion:(id)a7;
- (void)setFeatureSettingData:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setFeatureSettingNumber:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setFeatureSettingString:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)unregisterObserver:(id)a3;
@end

@implementation HDHRHeartRateNotificationsFeatureAvailabilityManager

- (HDHRHeartRateNotificationsFeatureAvailabilityManager)initWithFeatureIdentifier:(id)a3 notificationSettingsDefaults:(id)a4 pairedDeviceCapabilityProvider:(id)a5 disableAndExpiryProvider:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (([v12 isEqualToString:*MEMORY[0x277CCC088]] & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CCC060]) & 1) == 0)
  {
    [HDHRHeartRateNotificationsFeatureAvailabilityManager initWithFeatureIdentifier:a2 notificationSettingsDefaults:self pairedDeviceCapabilityProvider:v12 disableAndExpiryProvider:?];
  }

  v23.receiver = self;
  v23.super_class = HDHRHeartRateNotificationsFeatureAvailabilityManager;
  v16 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_featureIdentifier, a3);
    objc_storeStrong(&v17->_notificationSettingsDefaults, a4);
    objc_storeStrong(&v17->_pairedDeviceCapabilityProvider, a5);
    objc_storeStrong(&v17->_disableAndExpiryProvider, a6);
    [(HDFeatureDisableAndExpiryProviding *)v17->_disableAndExpiryProvider setDelegate:v17];
    v18 = objc_alloc(MEMORY[0x277CCD738]);
    v19 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)v17 description];
    v20 = [v18 initWithName:v19 loggingCategory:*MEMORY[0x277CCC2D0]];
    observers = v17->_observers;
    v17->_observers = v20;
  }

  return v17;
}

- (id)_featureEnabledDefaultsKey
{
  if ([(NSString *)self->_featureIdentifier isEqualToString:*MEMORY[0x277CCC088]])
  {
    v4 = MEMORY[0x277CCE438];
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([(NSString *)self->_featureIdentifier isEqualToString:*MEMORY[0x277CCC060]])
  {
    v4 = MEMORY[0x277CCE448];
    goto LABEL_5;
  }

  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"HDHRHeartRateNotificationsFeatureAvailabilityManager.m" lineNumber:124 description:{@"Unsupported feature identifier %@", self->_featureIdentifier}];

  v5 = &stru_283CC4740;
LABEL_7:

  return v5;
}

- (id)_thresholdDefaultsKey
{
  if ([(NSString *)self->_featureIdentifier isEqualToString:*MEMORY[0x277CCC088]])
  {
    v4 = MEMORY[0x277CCE428];
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([(NSString *)self->_featureIdentifier isEqualToString:*MEMORY[0x277CCC060]])
  {
    v4 = MEMORY[0x277CCE450];
    goto LABEL_5;
  }

  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"HDHRHeartRateNotificationsFeatureAvailabilityManager.m" lineNumber:135 description:{@"Unsupported feature identifier %@", self->_featureIdentifier}];

  v5 = &stru_283CC4740;
LABEL_7:

  return v5;
}

- (int64_t)_defaultHeartRateThreshold
{
  if ([(NSString *)self->_featureIdentifier isEqualToString:*MEMORY[0x277CCC088]])
  {
    v4 = MEMORY[0x277D13020];
    return *v4;
  }

  if ([(NSString *)self->_featureIdentifier isEqualToString:*MEMORY[0x277CCC060]])
  {
    v4 = MEMORY[0x277D13028];
    return *v4;
  }

  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"HDHRHeartRateNotificationsFeatureAvailabilityManager.m" lineNumber:146 description:{@"Unsupported feature identifier %@", self->_featureIdentifier}];

  return -1;
}

- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)a3
{
  if ([(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _isOnboardingRecordPresent])
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)featureOnboardingRecordWithError:(id *)a3
{
  if ([(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _isOnboardingRecordPresent])
  {
    v5 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:0 error:a3];
    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x277CCD740]);
      featureIdentifier = self->_featureIdentifier;
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
      v9 = [v6 initWithFeatureIdentifier:featureIdentifier version:1 completionDate:v8 countryCode:0 countryCodeProvenance:0];

      v10 = objc_alloc(MEMORY[0x277CCD448]);
      v11 = [v5 onboardedCountrySupportedState];
      v12 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _featureSettings];
      v13 = [v10 initWithOnboardingState:v11 onboardingCompletion:v9 featureSettings:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CCD448]) initWithOnboardingState:1 onboardingCompletion:0 featureSettings:0];
  }

  return v13;
}

- (void)getFeatureOnboardingRecordWithCompletion:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self featureOnboardingRecordWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (id)_featureSettings
{
  v21[1] = *MEMORY[0x277D85DE8];
  if ([(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _isOnboardingRecordPresent])
  {
    notificationSettingsDefaults = self->_notificationSettingsDefaults;
    v4 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _featureEnabledDefaultsKey];
    v5 = [(NSUserDefaults *)notificationSettingsDefaults objectForKey:v4];

    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [v5 BOOLValue];
    }

    else
    {
      v6 = 0;
    }

    v9 = self->_notificationSettingsDefaults;
    v10 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _thresholdDefaultsKey];
    v11 = [(NSUserDefaults *)v9 objectForKey:v10];

    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = v11;
    }

    else
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDHRHeartRateNotificationsFeatureAvailabilityManager _defaultHeartRateThreshold](self, "_defaultHeartRateThreshold")}];
    }

    v13 = v12;
    v14 = MEMORY[0x277CBEB38];
    v20 = *MEMORY[0x277CCC120];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v21[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v17 = [v14 dictionaryWithDictionary:v16];

    if (v6)
    {
      [v17 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCC128]];
    }

    v8 = [objc_alloc(MEMORY[0x277CCD450]) initWithDictionary:v17];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CCD450]);
    v8 = [v7 initWithDictionary:MEMORY[0x277CBEC10]];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_isOnboardingRecordPresent
{
  notificationSettingsDefaults = self->_notificationSettingsDefaults;
  v3 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _featureEnabledDefaultsKey];
  v4 = [(NSUserDefaults *)notificationSettingsDefaults objectForKey:v3];
  LOBYTE(notificationSettingsDefaults) = v4 != 0;

  return notificationSettingsDefaults;
}

- (id)onboardingEligibilityForCountryCode:(id)a3 error:(id *)a4
{
  disableAndExpiryProvider = self->_disableAndExpiryProvider;
  v18 = 0;
  v7 = [(HDFeatureDisableAndExpiryProviding *)disableAndExpiryProvider rescindedStatusOnActivePairedDeviceForCountryCode:a3 error:&v18];
  v8 = v18;
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Failure when determining rescinded status, no error given"}];
      if (!v13)
      {
        v15 = 0;
        goto LABEL_13;
      }
    }

    if (a4)
    {
      v16 = v13;
      *a4 = v13;
    }

    else
    {
      _HKLogDroppedError();
    }

    v15 = 0;
    v14 = 0;
    if (v9)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  [v7 integerValue];
  v10 = HKFeatureAvailabilityOnboardingIneligibilityReasonsForRescindedStatus();
  v11 = [MEMORY[0x277CCDD30] sharedBehavior];
  v12 = [v11 isAppleWatch];

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277CCD3F8]) initWithIneligibilityReasons:v10 countryAvailabilityVersion:@"unchecked"];
  }

  else
  {
    v14 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _activeRemoteDeviceSupportsHeartRateNotificationsWithError:a4];
    if (!v14)
    {
      goto LABEL_19;
    }

    if (![(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _isActiveRemoteDevicePresent])
    {
      v10 |= 2uLL;
    }

    if (![v14 BOOLValue])
    {
      v10 |= 4uLL;
    }

    v13 = [objc_alloc(MEMORY[0x277CCD3F8]) initWithIneligibilityReasons:v10 countryAvailabilityVersion:@"unchecked"];
  }

  v15 = [v13 eligibilityRespectingOverridesForFeatureIdentifier:self->_featureIdentifier];
LABEL_13:

  v14 = v15;
LABEL_19:

  return v14;
}

- (BOOL)_isActiveRemoteDevicePresent
{
  v2 = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceCapabilityProvider activePairedDevice];
  v3 = v2 != 0;

  return v3;
}

- (id)_activeRemoteDeviceSupportsHeartRateNotificationsWithError:(id *)a3
{
  pairedDeviceCapabilityProvider = self->_pairedDeviceCapabilityProvider;
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"E17D2903-B868-4E6C-8E76-6D4939BEED44"];
  v6 = [(HDPairedDeviceCapabilityProviding *)pairedDeviceCapabilityProvider isCapabilitySupportedOnActivePairedDevice:v5 error:a3];

  return v6;
}

- (id)pairedFeatureAttributesWithError:(id *)a3
{
  v3 = [MEMORY[0x277CCD3D8] featureAttributesDerivedFromOSBuildAndFeatureVersion:@"1"];
  v4 = [objc_alloc(MEMORY[0x277CCD780]) initWithLocalAttributes:v3 pairedAttributes:0];

  return v4;
}

- (id)featureAvailabilityRequirementsWithError:(id *)a3
{
  v39[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD420];
  v4 = self->_featureIdentifier;
  v25 = [v3 alloc];
  v38[0] = *MEMORY[0x277CCBE50];
  v33 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v4];
  v37[0] = v33;
  v32 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v4 supportedOnLocalDevice:1];
  v37[1] = v32;
  v31 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
  v37[2] = v31;
  v5 = *MEMORY[0x277CCC228];
  v30 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC228]];
  v37[3] = v30;
  v29 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v37[4] = v29;
  v28 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v37[5] = v28;
  v6 = *MEMORY[0x277D12F18];
  v27 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:*MEMORY[0x277D12F18]];
  v37[6] = v27;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:7];
  v39[0] = v24;
  v38[1] = *MEMORY[0x277CCBE70];
  v23 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:v6];
  v36 = v23;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v39[1] = v22;
  v38[2] = *MEMORY[0x277CCBEA0];
  v21 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v4];
  v35[0] = v21;
  v20 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v4 supportedOnLocalDevice:1];
  v35[1] = v20;
  v19 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
  v35[2] = v19;
  v7 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v5];
  v35[3] = v7;
  v8 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v35[4] = v8;
  v9 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v35[5] = v9;
  v10 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v4 isOnIfSettingIsAbsent:0];

  v35[6] = v10;
  v11 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:v6];
  v35[7] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:8];
  v39[2] = v12;
  v38[3] = *MEMORY[0x277CCBE30];
  v13 = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v34[0] = v13;
  v14 = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v34[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v39[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];
  v26 = [v25 initWithRequirementsByContext:v16];

  v17 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)saveOnboardingCompletion:(id)a3 settings:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = [a3 countryCode];
  v25 = 0;
  v12 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:v11 error:&v25];
  v13 = v25;

  if (v12)
  {
    v14 = [v12 isEligible];
    _HKInitializeLogging();
    v15 = HKLogHeartRateCategory();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = self;
        _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saving onboarding record", buf, 0xCu);
      }

      v17 = [v9 numberForKey:*MEMORY[0x277CCC128]];
      [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _setFeatureEnabled:MEMORY[0x277CBEC38] preferredThreshold:v17];
      v10[2](v10, 1, 0);
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [HDHRHeartRateNotificationsFeatureAvailabilityManager saveOnboardingCompletion:v12 settings:v16 completion:?];
      }

      v19 = MEMORY[0x277CCA9B8];
      v20 = objc_opt_class();
      v21 = [v12 ineligibilityReasonsDescription];
      v22 = [v19 hk_errorForInvalidArgument:@"@" class:v20 selector:a2 format:{@"Cannot complete onboarding: %@", v21}];
      (v10)[2](v10, 0, v22);
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [HDHRHeartRateNotificationsFeatureAvailabilityManager saveOnboardingCompletion:settings:completion:];
    }

    if (v13)
    {
      (v10)[2](v10, 0, v13);
    }

    else
    {
      v23 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Unexpected failure when evaluating eligibility"];
      (v10)[2](v10, 0, v23);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)a3 countryCodeProvenance:(int64_t)a4 date:(id)a5 settings:(id)a6 completion:(id)a7
{
  v21 = a3;
  v12 = a5;
  v13 = MEMORY[0x277CCD740];
  v14 = a7;
  v15 = a6;
  v16 = [v13 alloc];
  v17 = v16;
  featureIdentifier = self->_featureIdentifier;
  if (v12)
  {
    v19 = [v16 initWithFeatureIdentifier:self->_featureIdentifier version:1 completionDate:v12 countryCode:v21 countryCodeProvenance:a4];
  }

  else
  {
    v20 = [MEMORY[0x277CBEAA8] date];
    v19 = [v17 initWithFeatureIdentifier:featureIdentifier version:1 completionDate:v20 countryCode:v21 countryCodeProvenance:a4];
  }

  [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self saveOnboardingCompletion:v19 settings:v15 completion:v14];
}

- (void)resetOnboardingWithCompletion:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_229486000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Resetting onboarding", &v7, 0xCu);
  }

  [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _setFeatureEnabled:0 preferredThreshold:0];
  v4[2](v4, 1, 0);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingNumber:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:*MEMORY[0x277CCC120]])
  {
    notificationSettingsDefaults = self->_notificationSettingsDefaults;
    v12 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _thresholdDefaultsKey];
    v13 = [(NSUserDefaults *)notificationSettingsDefaults objectForKey:v12];
    [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _setFeatureEnabled:v8 preferredThreshold:v13];

LABEL_5:
    v10[2](v10, 1, 0);
    goto LABEL_9;
  }

  if ([v9 isEqualToString:*MEMORY[0x277CCC128]])
  {
    [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _setFeatureEnabled:MEMORY[0x277CBEC38] preferredThreshold:v8];
    goto LABEL_5;
  }

  _HKInitializeLogging();
  v14 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [HDHRHeartRateNotificationsFeatureAvailabilityManager setFeatureSettingNumber:forKey:completion:];
  }

  v15 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Unsupported feature setting %@", v9}];
  (v10)[2](v10, 0, v15);

LABEL_9:
}

- (void)setFeatureSettingData:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v6 = a5;
  _HKInitializeLogging();
  v7 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [HDHRHeartRateNotificationsFeatureAvailabilityManager setFeatureSettingData:v7 forKey:? completion:?];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 format:@"setFeatureSettingData: is not supported"];
  v6[2](v6, 0, v8);
}

- (void)setFeatureSettingString:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v6 = a5;
  _HKInitializeLogging();
  v7 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [HDHRHeartRateNotificationsFeatureAvailabilityManager setFeatureSettingString:v7 forKey:? completion:?];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 format:@"setFeatureSettingString: is not supported"];
  v6[2](v6, 0, v8);
}

- (void)removeFeatureSettingValueForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:*MEMORY[0x277CCC120]])
  {
    [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self resetOnboardingWithCompletion:v7];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CCC128]])
  {
    notificationSettingsDefaults = self->_notificationSettingsDefaults;
    v9 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _thresholdDefaultsKey];
    [(NSUserDefaults *)notificationSettingsDefaults removeObjectForKey:v9];

    v7[2](v7, 1, 0);
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HDHRHeartRateNotificationsFeatureAvailabilityManager setFeatureSettingNumber:forKey:completion:];
    }

    v11 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Unsupported feature setting %@", v6}];
    (v7)[2](v7, 0, v11);
  }
}

- (void)_setFeatureEnabled:(id)a3 preferredThreshold:(id)a4
{
  v22 = a3;
  v6 = a4;
  notificationSettingsDefaults = self->_notificationSettingsDefaults;
  v8 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _featureEnabledDefaultsKey];
  v9 = [(NSUserDefaults *)notificationSettingsDefaults objectForKey:v8];

  v10 = v22;
  if (v9 != v22)
  {
    if (!v9 || (v11 = [v22 isEqual:v9], v10 = v22, (v11 & 1) == 0))
    {
      v12 = self->_notificationSettingsDefaults;
      v13 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _featureEnabledDefaultsKey];
      [(NSUserDefaults *)v12 setObject:v22 forKey:v13];

      v10 = v22;
    }
  }

  v14 = [v10 BOOLValue];
  if (!v6 && v14)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDHRHeartRateNotificationsFeatureAvailabilityManager _defaultHeartRateThreshold](self, "_defaultHeartRateThreshold")}];
  }

  v15 = self->_notificationSettingsDefaults;
  v16 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _thresholdDefaultsKey];
  [(NSUserDefaults *)v15 setObject:v6 forKey:v16];

  v17 = *MEMORY[0x277CCE458];
  v18 = MEMORY[0x277CBEB98];
  v19 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _featureEnabledDefaultsKey];
  v20 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _thresholdDefaultsKey];
  v21 = [v18 setWithObjects:{v19, v20, 0}];
  HKSynchronizeNanoPreferencesUserDefaults();

  if ([v22 BOOLValue])
  {
    HKHRSubmitNotificationsEnabledSignal();
  }
}

- (void)registerObserver:(id)a3 queue:(id)a4
{
  observers = self->_observers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__HDHRHeartRateNotificationsFeatureAvailabilityManager_registerObserver_queue___block_invoke;
  v5[3] = &unk_27865FD90;
  v5[4] = self;
  [(HKObserverSet *)observers registerObserver:a3 queue:a4 runIfFirstObserver:v5];
}

void __79__HDHRHeartRateNotificationsFeatureAvailabilityManager_registerObserver_queue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = [v2 _featureEnabledDefaultsKey];
  [v3 addObserver:v2 forKeyPath:v4 options:1 context:_HDHRHeartRateNotificationsSettingObservingContext];

  v5 = *(a1 + 32);
  v6 = v5[1];
  v7 = [v5 _thresholdDefaultsKey];
  [v6 addObserver:v5 forKeyPath:v7 options:1 context:_HDHRHeartRateNotificationsSettingObservingContext];
}

- (void)unregisterObserver:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__HDHRHeartRateNotificationsFeatureAvailabilityManager_unregisterObserver___block_invoke;
  v4[3] = &unk_27865FD90;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:a3 runIfLastObserver:v4];
}

void __75__HDHRHeartRateNotificationsFeatureAvailabilityManager_unregisterObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = [v2 _featureEnabledDefaultsKey];
  [v3 removeObserver:v2 forKeyPath:v4 context:_HDHRHeartRateNotificationsSettingObservingContext];

  v5 = *(a1 + 32);
  v6 = v5[1];
  v7 = [v5 _thresholdDefaultsKey];
  [v6 removeObserver:v5 forKeyPath:v7 context:_HDHRHeartRateNotificationsSettingObservingContext];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (_HDHRHeartRateNotificationsSettingObservingContext != a6)
  {
    v35.receiver = self;
    v35.super_class = HDHRHeartRateNotificationsFeatureAvailabilityManager;
    [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)&v35 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6, v32.receiver, v32.super_class];
    goto LABEL_13;
  }

  v13 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _featureEnabledDefaultsKey];
  v14 = [v10 isEqualToString:v13];

  if (v14)
  {
    _HKInitializeLogging();
    v15 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = MEMORY[0x277CCABB0];
      observers = self->_observers;
      v19 = v16;
      v20 = [v17 numberWithUnsignedInteger:{-[HKObserverSet count](observers, "count")}];
      *buf = 138543874;
      v37 = v16;
      v38 = 2114;
      v39 = v20;
      v40 = 2114;
      v41 = v10;
      _os_log_impl(&dword_229486000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying %{public}@ observers for change in setting %{public}@", buf, 0x20u);
    }

    v21 = self->_observers;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __103__HDHRHeartRateNotificationsFeatureAvailabilityManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v34[3] = &unk_27865FD18;
    v34[4] = self;
    v22 = v34;
  }

  else
  {
    v23 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _thresholdDefaultsKey];
    v24 = [v10 isEqualToString:v23];

    if (!v24)
    {
      [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)&v32 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6, self, HDHRHeartRateNotificationsFeatureAvailabilityManager];
      goto LABEL_13;
    }

    _HKInitializeLogging();
    v25 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      v27 = MEMORY[0x277CCABB0];
      v28 = self->_observers;
      v29 = v26;
      v30 = [v27 numberWithUnsignedInteger:{-[HKObserverSet count](v28, "count")}];
      *buf = 138543874;
      v37 = v26;
      v38 = 2114;
      v39 = v30;
      v40 = 2114;
      v41 = v10;
      _os_log_impl(&dword_229486000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying %{public}@ observers for change in setting %{public}@", buf, 0x20u);
    }

    v21 = self->_observers;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __103__HDHRHeartRateNotificationsFeatureAvailabilityManager_observeValueForKeyPath_ofObject_change_context___block_invoke_358;
    v33[3] = &unk_27865FD18;
    v33[4] = self;
    v22 = v33;
  }

  [(HKObserverSet *)v21 notifyObservers:v22];
LABEL_13:

  v31 = *MEMORY[0x277D85DE8];
}

void __103__HDHRHeartRateNotificationsFeatureAvailabilityManager_observeValueForKeyPath_ofObject_change_context___block_invoke_358(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureAvailabilityProvidingDidUpdateSettings:*(a1 + 32)];
  }
}

- (void)disableAndExpiryProviderDidUpdate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HKObserverSet count](self->_observers, "count")}];
    *buf = 138543618;
    v10 = self;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying %@ observers of disable and expiry update", buf, 0x16u);
  }

  observers = self->_observers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__HDHRHeartRateNotificationsFeatureAvailabilityManager_disableAndExpiryProviderDidUpdate___block_invoke;
  v8[3] = &unk_27865FD18;
  v8[4] = self;
  [(HKObserverSet *)observers notifyObservers:v8];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)canCompleteOnboardingForCountryCode:(id)a3 error:(id *)a4
{
  v4 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "ineligibilityReasons") == 0}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)onboardedCountryCodeSupportedStateWithError:(id *)a3
{
  v3 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:0 error:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "onboardedCountrySupportedState")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _isOnboardingRecordPresent];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v4[2](v4, v6, 0);
}

- (id)isCurrentOnboardingVersionCompletedWithError:(id *)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _isOnboardingRecordPresent];

  return [v3 numberWithBool:v4];
}

- (void)initWithFeatureIdentifier:(uint64_t)a3 notificationSettingsDefaults:pairedDeviceCapabilityProvider:disableAndExpiryProvider:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HDHRHeartRateNotificationsFeatureAvailabilityManager.m" lineNumber:101 description:{@"Unsupported feature identifier %@", a3}];
}

- (void)saveOnboardingCompletion:(uint64_t)a1 settings:(void *)a2 completion:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 ineligibilityReasonsDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Ineligible for onboarding: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveOnboardingCompletion:settings:completion:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Failed to determine onboarding eligibility: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingNumber:forKey:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Unsupported feature setting %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingData:(uint64_t)a1 forKey:(NSObject *)a2 completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_229486000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] setFeatureSettingData: is not supported", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingString:(uint64_t)a1 forKey:(NSObject *)a2 completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_229486000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] setFeatureSettingString: is not supported", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end