@interface HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager
- (BOOL)_countryCodeIsSupportedForDevicePairing:(id)pairing device:(id)device;
- (BOOL)_isFeatureSupportedOnDevice:(id)device;
- (HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager)initWithProfile:(id)profile;
- (HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager)initWithProfile:(id)profile disableAndExpiryProvider:(id)provider notificationSettingDefaults:(id)defaults;
- (id)_onboardingCompletionWithError:(id *)error;
- (id)_onboardingEligibilityForCountryCode:(id)code error:(id *)error;
- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error;
- (id)countryAvailabilityVersion;
- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)error;
- (id)featureOnboardingRecordWithError:(id *)error;
- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error;
- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)error;
- (id)onboardedCountryCodeSupportedStateWithError:(id *)error;
- (id)onboardingEligibilityForCountryCode:(id)code error:(id *)error;
- (id)pairedFeatureAttributesWithError:(id *)error;
- (void)daemonReady:(id)ready;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
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

@implementation HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager

- (HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager)initWithProfile:(id)profile
{
  v4 = MEMORY[0x277D107C0];
  profileCopy = profile;
  v6 = [v4 alloc];
  daemon = [profileCopy daemon];
  v8 = [v6 initWithDaemon:daemon remoteDisableCondition:*MEMORY[0x277CCCCE8] seedExpirationCondition:*MEMORY[0x277CCCCF8]];

  v9 = objc_alloc(MEMORY[0x277CBEBD0]);
  v10 = [v9 initWithSuiteName:*MEMORY[0x277CCE458]];
  v11 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self initWithProfile:profileCopy disableAndExpiryProvider:v8 notificationSettingDefaults:v10];

  return v11;
}

- (HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager)initWithProfile:(id)profile disableAndExpiryProvider:(id)provider notificationSettingDefaults:(id)defaults
{
  profileCopy = profile;
  providerCopy = provider;
  defaultsCopy = defaults;
  v24.receiver = self;
  v24.super_class = HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager;
  v11 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    daemon = [profileCopy daemon];
    nanoRegistryDeviceCapabilityProvider = [daemon nanoRegistryDeviceCapabilityProvider];
    pairedDeviceProvider = v12->_pairedDeviceProvider;
    v12->_pairedDeviceProvider = nanoRegistryDeviceCapabilityProvider;

    objc_storeStrong(&v12->_disableAndExpiryProvider, provider);
    objc_storeStrong(&v12->_notificationSettingDefaults, defaults);
    v16 = objc_alloc(MEMORY[0x277CCD738]);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v16 initWithName:v18 loggingCategory:*MEMORY[0x277CCC2D8]];
    observers = v12->_observers;
    v12->_observers = v19;

    WeakRetained = objc_loadWeakRetained(&v12->_profile);
    daemon2 = [WeakRetained daemon];
    [daemon2 registerDaemonReadyObserver:v12 queue:0];
  }

  return v12;
}

- (void)dealloc
{
  if ([(HKFeatureAvailabilityProvidingObserver *)self->_observers count])
  {
    [(NSUserDefaults *)self->_notificationSettingDefaults removeObserver:self forKeyPath:*MEMORY[0x277CCE430] context:HDHRIrregularRhythmNotificationsSettingObservingContext];
  }

  v3.receiver = self;
  v3.super_class = HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager;
  [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)&v3 dealloc];
}

- (BOOL)_countryCodeIsSupportedForDevicePairing:(id)pairing device:(id)device
{
  pairingCopy = pairing;
  deviceCopy = device;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (isAppleWatch)
  {
    v9 = _LocalWatchDeviceSupportsCountryCode(pairingCopy);
  }

  else
  {
    v10 = _PairedWatchDeviceSupportsCountryCode(deviceCopy, pairingCopy);
    v11 = pairingCopy;
    v12 = HKAtrialFibrillationDetectionSupportedCountries();
    v13 = [v12 containsObject:v11];

    v9 = v10 & v13;
  }

  return v9;
}

- (BOOL)_isFeatureSupportedOnDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

    if (isAppleWatch)
    {
      v6 = 1;
    }

    else
    {
      v7 = [deviceCopy valueForProperty:*MEMORY[0x277D2BA98]];
      v8 = v7 != 0;

      v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"38627122-E97A-4089-861C-81704B480D2E"];
      v10 = [deviceCopy supportsCapability:v9];

      v6 = v8 & (v10 ^ 1);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_onboardingCompletionWithError:(id *)error
{
  v5 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [v5 hdhr_heartRhythmProtectedSyncedDomainForProfile:WeakRetained];

  featureIdentifier = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self featureIdentifier];
  v9 = [v7 hdhr_irregularRhythmNotificationsOnboardingCompletionForFeatureIdentifier:featureIdentifier error:error];

  return v9;
}

- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error
{
  v4 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:code error:error];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isEligible")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)onboardingEligibilityForCountryCode:(id)code error:(id *)error
{
  v5 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self _onboardingEligibilityForCountryCode:code error:error];
  featureIdentifier = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self featureIdentifier];
  v7 = [v5 eligibilityRespectingOverridesForFeatureIdentifier:featureIdentifier];

  return v7;
}

- (id)_onboardingEligibilityForCountryCode:(id)code error:(id *)error
{
  codeCopy = code;
  activePairedDevice = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceProvider activePairedDevice];
  v8 = [(HDFeatureDisableAndExpiryProviding *)self->_disableAndExpiryProvider rescindedStatusForCountryCode:codeCopy device:activePairedDevice error:error];
  v9 = v8;
  if (!v8)
  {
    v18 = 0;
    goto LABEL_21;
  }

  [v8 integerValue];
  v10 = HKFeatureAvailabilityOnboardingIneligibilityReasonsForRescindedStatus() | (2 * (activePairedDevice == 0));
  if (codeCopy)
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

    if (isAppleWatch)
    {
      v13 = _LocalWatchDeviceSupportsCountryCode(codeCopy);
      mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
      features = [mEMORY[0x277CCDD30]2 features];
      deprecateIRN1 = [features deprecateIRN1];

      if (deprecateIRN1 & 1 | ((v13 & 1) == 0))
      {
        v17 = v10 | 8;
      }

      else
      {
        v17 = v10;
      }

      if (!activePairedDevice)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (activePairedDevice && !_PairedWatchDeviceSupportsCountryCode(activePairedDevice, codeCopy))
      {
        v10 |= 0x20uLL;
      }

      v19 = codeCopy;
      v20 = HKAtrialFibrillationDetectionSupportedCountries();
      v21 = [v20 containsObject:v19];

      if (v21)
      {
        v17 = v10;
      }

      else
      {
        v17 = v10 | 8;
      }

      if (!activePairedDevice)
      {
        goto LABEL_20;
      }
    }

    if (![(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self _isFeatureSupportedOnDevice:activePairedDevice])
    {
      v17 |= 4uLL;
    }

    goto LABEL_20;
  }

  v17 = v10 | 1;
LABEL_20:
  v22 = objc_alloc(MEMORY[0x277CCD3F8]);
  countryAvailabilityVersion = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self countryAvailabilityVersion];
  v18 = [v22 initWithIneligibilityReasons:v17 countryAvailabilityVersion:countryAvailabilityVersion];

LABEL_21:

  return v18;
}

- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)error
{
  v4 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [v4 hdhr_heartRhythmProtectedSyncedDomainForProfile:WeakRetained];

  v7 = [v6 hdhr_atrialFibrillationOnboardingCompletedDateWithError:error];

  return v7;
}

- (id)featureOnboardingRecordWithError:(id *)error
{
  v18 = 0;
  v5 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self onboardedCountryCodeSupportedStateWithError:&v18];
  v6 = v18;
  v7 = v6;
  if (v5)
  {
    v17 = 0;
    v8 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self _onboardingCompletionWithError:&v17];
    v9 = v17;
    if (v8)
    {
LABEL_3:
      v10 = [MEMORY[0x277CCD450] hdhr_irregularRhythmNotificationsV1SettingsFromDefaults:self->_notificationSettingDefaults];
LABEL_4:
      v11 = [objc_alloc(MEMORY[0x277CCD448]) initWithOnboardingState:objc_msgSend(v5 onboardingCompletion:"integerValue") featureSettings:{v8, v10}];

      goto LABEL_13;
    }

    if ([v5 integerValue] == 1)
    {
      if (v9)
      {
        if (!error)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }

      if ([v5 integerValue] != 1)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Unexpectedly in an onboarded state with no onboarding completion"];
        goto LABEL_12;
      }

      v8 = 0;
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEBUG))
      {
        [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager featureOnboardingRecordWithError:];
      }

      v14 = objc_alloc(MEMORY[0x277CCD740]);
      featureIdentifier = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self featureIdentifier];
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      v8 = [v14 initWithFeatureIdentifier:featureIdentifier version:1 completionDate:distantPast countryCode:0 countryCodeProvenance:0];

      if (v8)
      {
        goto LABEL_3;
      }
    }

    v10 = 0;
    goto LABEL_4;
  }

  v9 = v6;
  if (v9)
  {
    if (!error)
    {
LABEL_11:
      _HKLogDroppedError();
      goto LABEL_12;
    }

LABEL_7:
    v12 = v9;
    v11 = 0;
    *error = v9;
    goto LABEL_13;
  }

LABEL_12:
  v11 = 0;
LABEL_13:

  return v11;
}

- (void)getFeatureOnboardingRecordWithCompletion:(id)completion
{
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self featureOnboardingRecordWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)completion
{
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self isCurrentOnboardingVersionCompletedWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error
{
  v3 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self onboardedCountryCodeSupportedStateWithError:error];
  v4 = v3;
  if (v3)
  {
    if ([v3 integerValue] == 2)
    {
      v5 = MEMORY[0x277CBEC38];
    }

    else
    {
      v5 = MEMORY[0x277CBEC28];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)error
{
  v4 = MEMORY[0x277CCABB0];
  activePairedDevice = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceProvider activePairedDevice];
  v6 = [v4 numberWithBool:{-[HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager _isFeatureSupportedOnDevice:](self, "_isFeatureSupportedOnDevice:", activePairedDevice)}];

  return v6;
}

- (id)onboardedCountryCodeSupportedStateWithError:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v5 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self _onboardingCompletionWithError:&v38];
  v6 = v38;
  countryCode = [v5 countryCode];
  if (v5)
  {
LABEL_12:
    activePairedDevice = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceProvider activePairedDevice];
    if (activePairedDevice)
    {
      if (!countryCode)
      {
        _HKInitializeLogging();
        v22 = *MEMORY[0x277CCC2D8];
        v23 = os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          if (v23)
          {
            [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:v22];
          }

          countryCode = @"OnboardedInHealthDatabaseWithoutACountryCode";
          goto LABEL_34;
        }

        if (v23)
        {
          [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:];
        }

        if (error)
        {
          v24 = v6;
          countryCode = 0;
          v20 = 0;
          *error = v6;
        }

        else
        {
          _HKLogDroppedError();
          countryCode = 0;
          v20 = 0;
        }

LABEL_20:
        v21 = v6;
LABEL_53:

        goto LABEL_54;
      }

      if (!v5 || [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self _countryCodeIsSupportedForDevicePairing:countryCode device:activePairedDevice])
      {
LABEL_34:
        disableAndExpiryProvider = self->_disableAndExpiryProvider;
        v37 = v6;
        v28 = [(HDFeatureDisableAndExpiryProviding *)disableAndExpiryProvider rescindedStatusForCountryCode:countryCode device:activePairedDevice error:&v37];
        v21 = v37;

        if (v28)
        {
          integerValue = [v28 integerValue];
          if (integerValue > 2)
          {
            v20 = &unk_283CD26E0;
          }

          else
          {
            v20 = qword_27865FDB0[integerValue];
          }
        }

        else
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
          {
            [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:];
          }

          v30 = v21;
          if (v30)
          {
            if (error)
            {
              v31 = v30;
              *error = v30;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v20 = 0;
        }

        goto LABEL_53;
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = objc_opt_class();
        *buf = 138543362;
        v40 = v18;
        v19 = v18;
        _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding record present but not supported due to nil paired device", buf, 0xCu);
      }
    }

    v20 = &unk_283CD2698;
    goto LABEL_20;
  }

  if (v6 && [v6 hk_isDatabaseAccessibilityError])
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    isDataProtectedByFirstUnlockAvailable = [database isDataProtectedByFirstUnlockAvailable];

    v11 = isDataProtectedByFirstUnlockAvailable ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = [(NSUserDefaults *)self->_notificationSettingDefaults objectForKey:*MEMORY[0x277CCE430]];

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2D8];
  if (v12 && (v11 & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:v13];
    }

    v14 = @"HealthDatabaseIsUnavailableButSettingIsPresent";
LABEL_11:

    countryCode = v14;
    goto LABEL_12;
  }

  v25 = *MEMORY[0x277CCC2D8];
  if (v6)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:];
    }

    if (error)
    {
      v26 = v6;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError();
    }

    v20 = 0;
  }

  else
  {
    if (v12)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:v13];
      }

      v14 = @"NoOnboardingInHealthDatabaseButSettingIsPresent";
      goto LABEL_11;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v13;
      v35 = objc_opt_class();
      *buf = 138543362;
      v40 = v35;
      v36 = v35;
      _os_log_impl(&dword_229486000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] No record of onboarding found", buf, 0xCu);
    }

    v20 = &unk_283CD2680;
  }

LABEL_54:

  v32 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)pairedFeatureAttributesWithError:(id *)error
{
  v4 = [MEMORY[0x277CCD3D8] featureAttributesDerivedFromOSBuildAndFeatureVersion:*MEMORY[0x277CCC200] watchDeviceIdentifier:*MEMORY[0x277CCC210] phoneDeviceIdentifier:*MEMORY[0x277CCC208]];
  activePairedDevice = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceProvider activePairedDevice];
  v6 = activePairedDevice;
  if (activePairedDevice)
  {
    v7 = [activePairedDevice valueForProperty:*MEMORY[0x277D2BA98]];
    if (v7)
    {
      v8 = [v6 valueForProperty:*MEMORY[0x277D2BA90]];
      v9 = [v6 valueForProperty:*MEMORY[0x277D2BA88]];
      v10 = [objc_alloc(MEMORY[0x277CCD3D8]) initWithFeatureVersion:@"1" updateVersion:v7 UDIDeviceIdentifier:v8 yearOfRelease:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_alloc(MEMORY[0x277CCD780]) initWithLocalAttributes:v4 pairedAttributes:v10];

  return v11;
}

- (id)countryAvailabilityVersion
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  currentOSBuild = [mEMORY[0x277CCDD30] currentOSBuild];

  return currentOSBuild;
}

- (void)removeFeatureSettingValueForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  v7 = *MEMORY[0x277CCC120];
  completionCopy = completion;
  if ([keyCopy isEqual:v7])
  {
    notificationSettingDefaults = self->_notificationSettingDefaults;
    v10 = *MEMORY[0x277CCE430];
    [(NSUserDefaults *)notificationSettingDefaults removeObjectForKey:*MEMORY[0x277CCE430]];
    v11 = *MEMORY[0x277CCE458];
    v12 = [MEMORY[0x277CBEB98] setWithObject:v10];
    HKSynchronizeNanoPreferencesUserDefaults();

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager removeFeatureSettingValueForKey:completion:];
    }

    v13 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot remove unknown setting for IRN 1.0"];
    completionCopy[2](completionCopy, 0, v13);

    completionCopy = v13;
  }
}

- (void)resetOnboardingWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D10718];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [v4 hdhr_heartRhythmProtectedSyncedDomainForProfile:WeakRetained];

  v26 = 0;
  v8 = [v7 hdhr_resetAtrialFibrillationDetectionOnboardingWithError:&v26];
  v9 = v26;
  if (v8)
  {
    hk_heartRhythmDefaults = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    v11 = *MEMORY[0x277CCB840];
    [hk_heartRhythmDefaults removeObjectForKey:*MEMORY[0x277CCB840]];
    v12 = *MEMORY[0x277CCE460];
    v13 = [MEMORY[0x277CBEB98] setWithObject:v11];
    HKSynchronizeNanoPreferencesUserDefaults();

    v14 = *MEMORY[0x277CCE430];
    [(NSUserDefaults *)self->_notificationSettingDefaults removeObjectForKey:*MEMORY[0x277CCE430]];
    v15 = *MEMORY[0x277CCE458];
    v16 = [MEMORY[0x277CBEB98] setWithObject:v14];
    HKSynchronizeNanoPreferencesUserDefaults();

    notify_post(*MEMORY[0x277CCCD08]);
    v17 = [HDHRHealthKitSyncManager alloc];
    v18 = objc_loadWeakRetained(&self->_profile);
    v19 = [(HDHRHealthKitSyncManager *)v17 initWithProfile:v18];

    v20 = MEMORY[0x277CCC2D8];
    [(HDHRHealthKitSyncManager *)v19 triggerImmediateSyncWithReason:@"IRN onboarding has been reset" loggingCategory:*MEMORY[0x277CCC2D8]];
    _HKInitializeLogging();
    v21 = *v20;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = objc_opt_class();
      *buf = 138543362;
      v28 = v23;
      v24 = v23;
      _os_log_impl(&dword_229486000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Reset onboarding successfully", buf, 0xCu);
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager resetOnboardingWithCompletion:];
    }
  }

  completionCopy[2](completionCopy, v8, v9);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion
{
  v62 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  dateCopy = date;
  settingsCopy = settings;
  completionCopy = completion;
  if (dateCopy)
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = objc_opt_class();
      v18 = v17;
      v19 = [dateCopy debugDescription];
      *buf = 138543618;
      v57 = v17;
      v58 = 2114;
      v59 = v19;
      _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Attempting to set onboarding date to %{public}@, but IRN V1 does not support specifying onboarding date", buf, 0x16u);
    }
  }

  if (codeCopy)
  {
    v55 = 0;
    v20 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self featureOnboardingRecordWithError:&v55];
    v21 = v55;
    if (!v20)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager setCurrentOnboardingVersionCompletedForCountryCode:countryCodeProvenance:date:settings:completion:];
      }

      completionCopy[2](completionCopy, 0, v21);
      goto LABEL_23;
    }

    allOnboardedCountryCodesRegardlessOfSupportedState = [v20 allOnboardedCountryCodesRegardlessOfSupportedState];
    v23 = [allOnboardedCountryCodesRegardlessOfSupportedState containsObject:codeCopy];

    if (v23)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager setCurrentOnboardingVersionCompletedForCountryCode:countryCodeProvenance:date:settings:completion:];
      }

      v24 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"IRN is already onboarded for %@", codeCopy}];
      completionCopy[2](completionCopy, 0, v24);

      goto LABEL_23;
    }

    v25 = MEMORY[0x277D10718];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v27 = [v25 hdhr_heartRhythmProtectedSyncedDomainForProfile:WeakRetained];

    v54 = v21;
    v43 = v27;
    v28 = [v27 hdhr_setAtrialFibrillationDetectionCurrentOnboardingVersionCompletedInCountryCode:codeCopy error:&v54];
    v45 = v54;

    if (v28)
    {
      notify_post(*MEMORY[0x277CCCD08]);
      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC2D8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:
        v34 = *MEMORY[0x277CCC120];
        v44 = settingsCopy;
        v35 = [settingsCopy numberForKey:*MEMORY[0x277CCC120]];
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __162__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke;
        v50[3] = &unk_27865FD40;
        v50[4] = self;
        v52 = completionCopy;
        v53 = v28;
        v21 = v45;
        v51 = v21;
        v36 = MEMORY[0x22AACDB50](v50);
        v37 = v36;
        if (v35)
        {
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __162__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_3;
          v48[3] = &unk_27865FD68;
          v38 = &v49;
          v48[4] = self;
          v49 = v36;
          v39 = v36;
          [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self setFeatureSettingNumber:v35 forKey:v34 completion:v48];
        }

        else
        {
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __162__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_362;
          v46[3] = &unk_27865FD68;
          v38 = &v47;
          v46[4] = self;
          v47 = v36;
          v40 = v36;
          [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self removeFeatureSettingValueForKey:v34 completion:v46];
        }

        settingsCopy = v44;
LABEL_23:

        goto LABEL_24;
      }

      v30 = v29;
      v31 = objc_opt_class();
      *buf = 138543618;
      v57 = v31;
      v58 = 2114;
      v59 = codeCopy;
      v32 = v31;
      _os_log_impl(&dword_229486000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set onboarding completed in country %{public}@", buf, 0x16u);
    }

    else
    {
      _HKInitializeLogging();
      v33 = *MEMORY[0x277CCC2D8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v30 = v33;
      v42 = objc_opt_class();
      *buf = 138543874;
      v57 = v42;
      v58 = 2114;
      v59 = codeCopy;
      v60 = 2114;
      v61 = v45;
      v32 = v42;
      _os_log_error_impl(&dword_229486000, v30, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting onboarding completed in country %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_19;
  }

  v21 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"A non-nil country code is required to onboard this feature"];
  completionCopy[2](completionCopy, 0, v21);
LABEL_24:

  v41 = *MEMORY[0x277D85DE8];
}

void __162__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __162__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_2;
  v9[3] = &unk_27865FD18;
  v9[4] = v2;
  [v3 notifyObservers:v9];
  v4 = [HDHRHealthKitSyncManager alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = [(HDHRHealthKitSyncManager *)v4 initWithProfile:WeakRetained];

  [(HDHRHealthKitSyncManager *)v6 triggerImmediateSyncWithReason:@"IRN onboarding has been completed" loggingCategory:*MEMORY[0x277CCC2D8]];
  v7 = *(a1 + 56);
  v8 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

void __162__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __162__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_3_cold_1(a1, v6);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __162__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_362(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __162__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_362_cold_1(a1, v6);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5
{
  v5 = a5;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager saveOnboardingCompletion:v6 settings:? completion:?];
  }

  v7 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Saving HKOnboardingCompletion is not supported for IRN 1.0"];
  v5[2](v5, 0, v7);
}

- (void)setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager setFeatureSettingData:forKey:completion:];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot set unknown data setting for IRN 1.0"];
  completionCopy[2](completionCopy, 0, v8);
}

- (void)setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager setFeatureSettingString:forKey:completion:];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot set unknown string setting for IRN 1.0"];
  completionCopy[2](completionCopy, 0, v8);
}

- (void)setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion
{
  numberCopy = number;
  keyCopy = key;
  v10 = *MEMORY[0x277CCC120];
  completionCopy = completion;
  if ([keyCopy isEqual:v10])
  {
    notificationSettingDefaults = self->_notificationSettingDefaults;
    bOOLValue = [numberCopy BOOLValue];
    v14 = *MEMORY[0x277CCE430];
    [(NSUserDefaults *)notificationSettingDefaults setBool:bOOLValue forKey:*MEMORY[0x277CCE430]];
    v15 = *MEMORY[0x277CCE458];
    v16 = [MEMORY[0x277CBEB98] setWithObject:v14];
    HKSynchronizeNanoPreferencesUserDefaults();

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager setFeatureSettingNumber:forKey:completion:];
    }

    v17 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot set number string setting for IRN 1.0"];
    completionCopy[2](completionCopy, 0, v17);

    completionCopy = v17;
  }
}

- (void)registerObserver:(id)observer queue:(id)queue
{
  observers = self->_observers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_registerObserver_queue___block_invoke;
  v5[3] = &unk_27865FD90;
  v5[4] = self;
  [(HKFeatureAvailabilityProvidingObserver *)observers registerObserver:observer queue:queue runIfFirstObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_unregisterObserver___block_invoke;
  v4[3] = &unk_27865FD90;
  v4[4] = self;
  [(HKFeatureAvailabilityProvidingObserver *)observers unregisterObserver:observer runIfLastObserver:v4];
}

- (void)daemonReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database addProtectedDataObserver:self];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  v20 = *MEMORY[0x277D85DE8];
  if (available)
  {
    _HKInitializeLogging();
    v5 = HKLogInfrastructure();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

    if (v6)
    {
      v7 = HKLogInfrastructure();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = MEMORY[0x277CCABB0];
        observers = self->_observers;
        v11 = v8;
        v12 = [v9 numberWithUnsignedInteger:{-[HKFeatureAvailabilityProvidingObserver count](observers, "count")}];
        *buf = 138543618;
        v17 = v8;
        v18 = 2114;
        v19 = v12;
        _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_INFO, "[%{public}@] Notifying %{public}@ observers for protected database becoming available", buf, 0x16u);
      }
    }

    v13 = self->_observers;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __105__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_database_protectedDataDidBecomeAvailable___block_invoke;
    v15[3] = &unk_27865FD18;
    v15[4] = self;
    [(HKFeatureAvailabilityProvidingObserver *)v13 notifyObservers:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __105__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_database_protectedDataDidBecomeAvailable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_283CDA550])
  {
    [v3 featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:*(a1 + 32)];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v32 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (HDHRIrregularRhythmNotificationsSettingObservingContext == context)
  {
    if (pathCopy && ([pathCopy isEqualToString:*MEMORY[0x277CCE430]] & 1) != 0)
    {
      _HKInitializeLogging();
      v13 = HKLogInfrastructure();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

      if (v14)
      {
        v15 = HKLogInfrastructure();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = objc_opt_class();
          v17 = MEMORY[0x277CCABB0];
          observers = self->_observers;
          v19 = v16;
          v20 = [v17 numberWithUnsignedInteger:{-[HKFeatureAvailabilityProvidingObserver count](observers, "count")}];
          *buf = 138543874;
          v27 = v16;
          v28 = 2114;
          v29 = v20;
          v30 = 2114;
          v31 = pathCopy;
          _os_log_impl(&dword_229486000, v15, OS_LOG_TYPE_INFO, "[%{public}@] Notifying %{public}@ observers for change in setting %{public}@", buf, 0x20u);
        }
      }

      v21 = self->_observers;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __111__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v23[3] = &unk_27865FD18;
      v23[4] = self;
      [(HKFeatureAvailabilityProvidingObserver *)v21 notifyObservers:v23];
    }

    else
    {
      v24.receiver = self;
      v24.super_class = HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager;
      [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)&v24 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    }
  }

  else
  {
    v25.receiver = self;
    v25.super_class = HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager;
    [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)&v25 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __111__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureAvailabilityProvidingDidUpdateSettings:*(a1 + 32)];
  }
}

- (void)featureOnboardingRecordWithError:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v7 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_2(v3);
  _os_log_debug_impl(&dword_229486000, v0, OS_LOG_TYPE_DEBUG, "[%{public}@] No onboarding found in health database (error: %{public}@), but workaround is present", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)onboardedCountryCodeSupportedStateWithError:(void *)a1 .cold.1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  v4 = v3;
  OUTLINED_FUNCTION_3_0(&dword_229486000, v5, v6, "[%{public}@] Onboarding is unavailable while the health database is locked, but setting is present. Applying Workaround.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)onboardedCountryCodeSupportedStateWithError:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)onboardedCountryCodeSupportedStateWithError:(void *)a1 .cold.3(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  v4 = v3;
  OUTLINED_FUNCTION_3_0(&dword_229486000, v5, v6, "[%{public}@] No onboarding found in health database, but setting is present. Applying Workaround.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)onboardedCountryCodeSupportedStateWithError:.cold.4()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)onboardedCountryCodeSupportedStateWithError:(void *)a1 .cold.5(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  v4 = v3;
  OUTLINED_FUNCTION_3_0(&dword_229486000, v5, v6, "[%{public}@] Nil country code found with non-nil onboarding. Applying Workaround.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)onboardedCountryCodeSupportedStateWithError:.cold.6()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeFeatureSettingValueForKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)resetOnboardingWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentOnboardingVersionCompletedForCountryCode:countryCodeProvenance:date:settings:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentOnboardingVersionCompletedForCountryCode:countryCodeProvenance:date:settings:completion:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void __162__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_3_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  OUTLINED_FUNCTION_5();
  v5 = *MEMORY[0x277CCC120];
  OUTLINED_FUNCTION_2_0();
  v7 = OUTLINED_FUNCTION_6(v6);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x20u);

  v13 = *MEMORY[0x277D85DE8];
}

void __162__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_362_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  OUTLINED_FUNCTION_5();
  v5 = *MEMORY[0x277CCC120];
  OUTLINED_FUNCTION_2_0();
  v7 = OUTLINED_FUNCTION_6(v6);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x20u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)saveOnboardingCompletion:(void *)a1 settings:completion:.cold.1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  v4 = v3;
  OUTLINED_FUNCTION_3_0(&dword_229486000, v5, v6, "[%{public}@] Saving HKOnboardingCompletion is not supported for IRN 1.0", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingData:forKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingString:forKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingNumber:forKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

@end