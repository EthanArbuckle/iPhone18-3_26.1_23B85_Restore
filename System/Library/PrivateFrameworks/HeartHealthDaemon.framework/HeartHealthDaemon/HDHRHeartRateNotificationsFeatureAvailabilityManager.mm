@interface HDHRHeartRateNotificationsFeatureAvailabilityManager
- (BOOL)_isActiveRemoteDevicePresent;
- (BOOL)_isOnboardingRecordPresent;
- (HDHRHeartRateNotificationsFeatureAvailabilityManager)initWithFeatureIdentifier:(id)identifier notificationSettingsDefaults:(id)defaults pairedDeviceCapabilityProvider:(id)provider disableAndExpiryProvider:(id)expiryProvider;
- (id)_activeRemoteDeviceSupportsHeartRateNotificationsWithError:(id *)error;
- (id)_featureEnabledDefaultsKey;
- (id)_featureSettings;
- (id)_thresholdDefaultsKey;
- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error;
- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)error;
- (id)featureAvailabilityRequirementsWithError:(id *)error;
- (id)featureOnboardingRecordWithError:(id *)error;
- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error;
- (id)onboardedCountryCodeSupportedStateWithError:(id *)error;
- (id)onboardingEligibilityForCountryCode:(id)code error:(id *)error;
- (id)pairedFeatureAttributesWithError:(id *)error;
- (int64_t)_defaultHeartRateThreshold;
- (void)_setFeatureEnabled:(id)enabled preferredThreshold:(id)threshold;
- (void)disableAndExpiryProviderDidUpdate:(id)update;
- (void)getFeatureOnboardingRecordWithCompletion:(id)completion;
- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerObserver:(id)observer queue:(id)queue;
- (void)removeFeatureSettingValueForKey:(id)key completion:(id)completion;
- (void)resetOnboardingWithCompletion:(id)completion;
- (void)saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5;
- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion;
- (void)setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion;
- (void)setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion;
- (void)setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation HDHRHeartRateNotificationsFeatureAvailabilityManager

- (HDHRHeartRateNotificationsFeatureAvailabilityManager)initWithFeatureIdentifier:(id)identifier notificationSettingsDefaults:(id)defaults pairedDeviceCapabilityProvider:(id)provider disableAndExpiryProvider:(id)expiryProvider
{
  identifierCopy = identifier;
  defaultsCopy = defaults;
  providerCopy = provider;
  expiryProviderCopy = expiryProvider;
  if (([identifierCopy isEqualToString:*MEMORY[0x277CCC088]] & 1) == 0 && (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x277CCC060]) & 1) == 0)
  {
    [HDHRHeartRateNotificationsFeatureAvailabilityManager initWithFeatureIdentifier:a2 notificationSettingsDefaults:self pairedDeviceCapabilityProvider:identifierCopy disableAndExpiryProvider:?];
  }

  v23.receiver = self;
  v23.super_class = HDHRHeartRateNotificationsFeatureAvailabilityManager;
  v16 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_featureIdentifier, identifier);
    objc_storeStrong(&v17->_notificationSettingsDefaults, defaults);
    objc_storeStrong(&v17->_pairedDeviceCapabilityProvider, provider);
    objc_storeStrong(&v17->_disableAndExpiryProvider, expiryProvider);
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

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HDHRHeartRateNotificationsFeatureAvailabilityManager.m" lineNumber:124 description:{@"Unsupported feature identifier %@", self->_featureIdentifier}];

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

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HDHRHeartRateNotificationsFeatureAvailabilityManager.m" lineNumber:135 description:{@"Unsupported feature identifier %@", self->_featureIdentifier}];

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

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HDHRHeartRateNotificationsFeatureAvailabilityManager.m" lineNumber:146 description:{@"Unsupported feature identifier %@", self->_featureIdentifier}];

  return -1;
}

- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)error
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

- (id)featureOnboardingRecordWithError:(id *)error
{
  if ([(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _isOnboardingRecordPresent])
  {
    v5 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:0 error:error];
    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x277CCD740]);
      featureIdentifier = self->_featureIdentifier;
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
      v9 = [v6 initWithFeatureIdentifier:featureIdentifier version:1 completionDate:v8 countryCode:0 countryCodeProvenance:0];

      v10 = objc_alloc(MEMORY[0x277CCD448]);
      onboardedCountrySupportedState = [v5 onboardedCountrySupportedState];
      _featureSettings = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _featureSettings];
      v13 = [v10 initWithOnboardingState:onboardedCountrySupportedState onboardingCompletion:v9 featureSettings:_featureSettings];
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

- (void)getFeatureOnboardingRecordWithCompletion:(id)completion
{
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self featureOnboardingRecordWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (id)_featureSettings
{
  v21[1] = *MEMORY[0x277D85DE8];
  if ([(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _isOnboardingRecordPresent])
  {
    notificationSettingsDefaults = self->_notificationSettingsDefaults;
    _featureEnabledDefaultsKey = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _featureEnabledDefaultsKey];
    v5 = [(NSUserDefaults *)notificationSettingsDefaults objectForKey:_featureEnabledDefaultsKey];

    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v5 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v9 = self->_notificationSettingsDefaults;
    _thresholdDefaultsKey = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _thresholdDefaultsKey];
    v11 = [(NSUserDefaults *)v9 objectForKey:_thresholdDefaultsKey];

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
    v15 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v21[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v17 = [v14 dictionaryWithDictionary:v16];

    if (bOOLValue)
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
  _featureEnabledDefaultsKey = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _featureEnabledDefaultsKey];
  v4 = [(NSUserDefaults *)notificationSettingsDefaults objectForKey:_featureEnabledDefaultsKey];
  LOBYTE(notificationSettingsDefaults) = v4 != 0;

  return notificationSettingsDefaults;
}

- (id)onboardingEligibilityForCountryCode:(id)code error:(id *)error
{
  disableAndExpiryProvider = self->_disableAndExpiryProvider;
  v18 = 0;
  v7 = [(HDFeatureDisableAndExpiryProviding *)disableAndExpiryProvider rescindedStatusOnActivePairedDeviceForCountryCode:code error:&v18];
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

    if (error)
    {
      v16 = v13;
      *error = v13;
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
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (isAppleWatch)
  {
    v13 = [objc_alloc(MEMORY[0x277CCD3F8]) initWithIneligibilityReasons:v10 countryAvailabilityVersion:@"unchecked"];
  }

  else
  {
    v14 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _activeRemoteDeviceSupportsHeartRateNotificationsWithError:error];
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
  activePairedDevice = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceCapabilityProvider activePairedDevice];
  v3 = activePairedDevice != 0;

  return v3;
}

- (id)_activeRemoteDeviceSupportsHeartRateNotificationsWithError:(id *)error
{
  pairedDeviceCapabilityProvider = self->_pairedDeviceCapabilityProvider;
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"E17D2903-B868-4E6C-8E76-6D4939BEED44"];
  v6 = [(HDPairedDeviceCapabilityProviding *)pairedDeviceCapabilityProvider isCapabilitySupportedOnActivePairedDevice:v5 error:error];

  return v6;
}

- (id)pairedFeatureAttributesWithError:(id *)error
{
  v3 = [MEMORY[0x277CCD3D8] featureAttributesDerivedFromOSBuildAndFeatureVersion:@"1"];
  v4 = [objc_alloc(MEMORY[0x277CCD780]) initWithLocalAttributes:v3 pairedAttributes:0];

  return v4;
}

- (id)featureAvailabilityRequirementsWithError:(id *)error
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
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v37[4] = heartRateIsEnabledInPrivacy;
  wristDetectionIsEnabledForActiveWatch = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v37[5] = wristDetectionIsEnabledForActiveWatch;
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
  heartRateIsEnabledInPrivacy2 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v35[4] = heartRateIsEnabledInPrivacy2;
  wristDetectionIsEnabledForActiveWatch2 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v35[5] = wristDetectionIsEnabledForActiveWatch2;
  v10 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v4 isOnIfSettingIsAbsent:0];

  v35[6] = v10;
  v11 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:v6];
  v35[7] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:8];
  v39[2] = v12;
  v38[3] = *MEMORY[0x277CCBE30];
  isNotInPostPregnancy = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v34[0] = isNotInPostPregnancy;
  noOngoingPregnancy = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v34[1] = noOngoingPregnancy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v39[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];
  v26 = [v25 initWithRequirementsByContext:v16];

  v17 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v10 = a5;
  countryCode = [completion countryCode];
  v25 = 0;
  v12 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:countryCode error:&v25];
  v13 = v25;

  if (v12)
  {
    isEligible = [v12 isEligible];
    _HKInitializeLogging();
    v15 = HKLogHeartRateCategory();
    v16 = v15;
    if (isEligible)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saving onboarding record", buf, 0xCu);
      }

      v17 = [settingsCopy numberForKey:*MEMORY[0x277CCC128]];
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
      ineligibilityReasonsDescription = [v12 ineligibilityReasonsDescription];
      v22 = [v19 hk_errorForInvalidArgument:@"@" class:v20 selector:a2 format:{@"Cannot complete onboarding: %@", ineligibilityReasonsDescription}];
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

- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion
{
  codeCopy = code;
  dateCopy = date;
  v13 = MEMORY[0x277CCD740];
  completionCopy = completion;
  settingsCopy = settings;
  v16 = [v13 alloc];
  v17 = v16;
  featureIdentifier = self->_featureIdentifier;
  if (dateCopy)
  {
    v19 = [v16 initWithFeatureIdentifier:self->_featureIdentifier version:1 completionDate:dateCopy countryCode:codeCopy countryCodeProvenance:provenance];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    v19 = [v17 initWithFeatureIdentifier:featureIdentifier version:1 completionDate:date countryCode:codeCopy countryCodeProvenance:provenance];
  }

  [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self saveOnboardingCompletion:v19 settings:settingsCopy completion:completionCopy];
}

- (void)resetOnboardingWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_229486000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Resetting onboarding", &v7, 0xCu);
  }

  [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _setFeatureEnabled:0 preferredThreshold:0];
  completionCopy[2](completionCopy, 1, 0);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion
{
  numberCopy = number;
  keyCopy = key;
  completionCopy = completion;
  if ([keyCopy isEqualToString:*MEMORY[0x277CCC120]])
  {
    notificationSettingsDefaults = self->_notificationSettingsDefaults;
    _thresholdDefaultsKey = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _thresholdDefaultsKey];
    v13 = [(NSUserDefaults *)notificationSettingsDefaults objectForKey:_thresholdDefaultsKey];
    [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _setFeatureEnabled:numberCopy preferredThreshold:v13];

LABEL_5:
    completionCopy[2](completionCopy, 1, 0);
    goto LABEL_9;
  }

  if ([keyCopy isEqualToString:*MEMORY[0x277CCC128]])
  {
    [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _setFeatureEnabled:MEMORY[0x277CBEC38] preferredThreshold:numberCopy];
    goto LABEL_5;
  }

  _HKInitializeLogging();
  v14 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [HDHRHeartRateNotificationsFeatureAvailabilityManager setFeatureSettingNumber:forKey:completion:];
  }

  v15 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Unsupported feature setting %@", keyCopy}];
  (completionCopy)[2](completionCopy, 0, v15);

LABEL_9:
}

- (void)setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  _HKInitializeLogging();
  v7 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [HDHRHeartRateNotificationsFeatureAvailabilityManager setFeatureSettingData:v7 forKey:? completion:?];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 format:@"setFeatureSettingData: is not supported"];
  completionCopy[2](completionCopy, 0, v8);
}

- (void)setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  _HKInitializeLogging();
  v7 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [HDHRHeartRateNotificationsFeatureAvailabilityManager setFeatureSettingString:v7 forKey:? completion:?];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 format:@"setFeatureSettingString: is not supported"];
  completionCopy[2](completionCopy, 0, v8);
}

- (void)removeFeatureSettingValueForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  if ([keyCopy isEqualToString:*MEMORY[0x277CCC120]])
  {
    [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self resetOnboardingWithCompletion:completionCopy];
  }

  else if ([keyCopy isEqualToString:*MEMORY[0x277CCC128]])
  {
    notificationSettingsDefaults = self->_notificationSettingsDefaults;
    _thresholdDefaultsKey = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _thresholdDefaultsKey];
    [(NSUserDefaults *)notificationSettingsDefaults removeObjectForKey:_thresholdDefaultsKey];

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HDHRHeartRateNotificationsFeatureAvailabilityManager setFeatureSettingNumber:forKey:completion:];
    }

    v11 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Unsupported feature setting %@", keyCopy}];
    (completionCopy)[2](completionCopy, 0, v11);
  }
}

- (void)_setFeatureEnabled:(id)enabled preferredThreshold:(id)threshold
{
  enabledCopy = enabled;
  thresholdCopy = threshold;
  notificationSettingsDefaults = self->_notificationSettingsDefaults;
  _featureEnabledDefaultsKey = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _featureEnabledDefaultsKey];
  v9 = [(NSUserDefaults *)notificationSettingsDefaults objectForKey:_featureEnabledDefaultsKey];

  v10 = enabledCopy;
  if (v9 != enabledCopy)
  {
    if (!v9 || (v11 = [enabledCopy isEqual:v9], v10 = enabledCopy, (v11 & 1) == 0))
    {
      v12 = self->_notificationSettingsDefaults;
      _featureEnabledDefaultsKey2 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _featureEnabledDefaultsKey];
      [(NSUserDefaults *)v12 setObject:enabledCopy forKey:_featureEnabledDefaultsKey2];

      v10 = enabledCopy;
    }
  }

  bOOLValue = [v10 BOOLValue];
  if (!thresholdCopy && bOOLValue)
  {
    thresholdCopy = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDHRHeartRateNotificationsFeatureAvailabilityManager _defaultHeartRateThreshold](self, "_defaultHeartRateThreshold")}];
  }

  v15 = self->_notificationSettingsDefaults;
  _thresholdDefaultsKey = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _thresholdDefaultsKey];
  [(NSUserDefaults *)v15 setObject:thresholdCopy forKey:_thresholdDefaultsKey];

  v17 = *MEMORY[0x277CCE458];
  v18 = MEMORY[0x277CBEB98];
  _featureEnabledDefaultsKey3 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _featureEnabledDefaultsKey];
  _thresholdDefaultsKey2 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _thresholdDefaultsKey];
  v21 = [v18 setWithObjects:{_featureEnabledDefaultsKey3, _thresholdDefaultsKey2, 0}];
  HKSynchronizeNanoPreferencesUserDefaults();

  if ([enabledCopy BOOLValue])
  {
    HKHRSubmitNotificationsEnabledSignal();
  }
}

- (void)registerObserver:(id)observer queue:(id)queue
{
  observers = self->_observers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__HDHRHeartRateNotificationsFeatureAvailabilityManager_registerObserver_queue___block_invoke;
  v5[3] = &unk_27865FD90;
  v5[4] = self;
  [(HKObserverSet *)observers registerObserver:observer queue:queue runIfFirstObserver:v5];
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

- (void)unregisterObserver:(id)observer
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__HDHRHeartRateNotificationsFeatureAvailabilityManager_unregisterObserver___block_invoke;
  v4[3] = &unk_27865FD90;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:observer runIfLastObserver:v4];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v42 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (_HDHRHeartRateNotificationsSettingObservingContext != context)
  {
    v35.receiver = self;
    v35.super_class = HDHRHeartRateNotificationsFeatureAvailabilityManager;
    [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)&v35 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context, v32.receiver, v32.super_class];
    goto LABEL_13;
  }

  _featureEnabledDefaultsKey = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _featureEnabledDefaultsKey];
  v14 = [pathCopy isEqualToString:_featureEnabledDefaultsKey];

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
      v41 = pathCopy;
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
    _thresholdDefaultsKey = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _thresholdDefaultsKey];
    v24 = [pathCopy isEqualToString:_thresholdDefaultsKey];

    if (!v24)
    {
      [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)&v32 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context, self, HDHRHeartRateNotificationsFeatureAvailabilityManager];
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
      v41 = pathCopy;
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

- (void)disableAndExpiryProviderDidUpdate:(id)update
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HKObserverSet count](self->_observers, "count")}];
    *buf = 138543618;
    selfCopy = self;
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

- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error
{
  v4 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:code error:error];
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

- (id)onboardedCountryCodeSupportedStateWithError:(id *)error
{
  v3 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:0 error:error];
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

- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)completion
{
  completionCopy = completion;
  _isOnboardingRecordPresent = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _isOnboardingRecordPresent];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:_isOnboardingRecordPresent];
  completionCopy[2](completionCopy, v6, 0);
}

- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error
{
  v3 = MEMORY[0x277CCABB0];
  _isOnboardingRecordPresent = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)self _isOnboardingRecordPresent];

  return [v3 numberWithBool:_isOnboardingRecordPresent];
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