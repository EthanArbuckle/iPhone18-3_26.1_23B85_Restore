@interface HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager
- (BOOL)_countryCodeIsSupportedForDevicePairing:(id)a3 device:(id)a4;
- (BOOL)_isFeatureSupportedOnDevice:(id)a3;
- (HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager)initWithProfile:(id)a3;
- (HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager)initWithProfile:(id)a3 disableAndExpiryProvider:(id)a4 notificationSettingDefaults:(id)a5;
- (id)_onboardingCompletionWithError:(id *)a3;
- (id)_onboardingEligibilityForCountryCode:(id)a3 error:(id *)a4;
- (id)canCompleteOnboardingForCountryCode:(id)a3 error:(id *)a4;
- (id)countryAvailabilityVersion;
- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)a3;
- (id)featureOnboardingRecordWithError:(id *)a3;
- (id)isCurrentOnboardingVersionCompletedWithError:(id *)a3;
- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)a3;
- (id)onboardedCountryCodeSupportedStateWithError:(id *)a3;
- (id)onboardingEligibilityForCountryCode:(id)a3 error:(id *)a4;
- (id)pairedFeatureAttributesWithError:(id *)a3;
- (void)daemonReady:(id)a3;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)dealloc;
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

@implementation HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager

- (HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager)initWithProfile:(id)a3
{
  v4 = MEMORY[0x277D107C0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 daemon];
  v8 = [v6 initWithDaemon:v7 remoteDisableCondition:*MEMORY[0x277CCCCE8] seedExpirationCondition:*MEMORY[0x277CCCCF8]];

  v9 = objc_alloc(MEMORY[0x277CBEBD0]);
  v10 = [v9 initWithSuiteName:*MEMORY[0x277CCE458]];
  v11 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self initWithProfile:v5 disableAndExpiryProvider:v8 notificationSettingDefaults:v10];

  return v11;
}

- (HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager)initWithProfile:(id)a3 disableAndExpiryProvider:(id)a4 notificationSettingDefaults:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager;
  v11 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, v8);
    v13 = [v8 daemon];
    v14 = [v13 nanoRegistryDeviceCapabilityProvider];
    pairedDeviceProvider = v12->_pairedDeviceProvider;
    v12->_pairedDeviceProvider = v14;

    objc_storeStrong(&v12->_disableAndExpiryProvider, a4);
    objc_storeStrong(&v12->_notificationSettingDefaults, a5);
    v16 = objc_alloc(MEMORY[0x277CCD738]);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v16 initWithName:v18 loggingCategory:*MEMORY[0x277CCC2D8]];
    observers = v12->_observers;
    v12->_observers = v19;

    WeakRetained = objc_loadWeakRetained(&v12->_profile);
    v22 = [WeakRetained daemon];
    [v22 registerDaemonReadyObserver:v12 queue:0];
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

- (BOOL)_countryCodeIsSupportedForDevicePairing:(id)a3 device:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = [v7 isAppleWatch];

  if (v8)
  {
    v9 = _LocalWatchDeviceSupportsCountryCode(v5);
  }

  else
  {
    v10 = _PairedWatchDeviceSupportsCountryCode(v6, v5);
    v11 = v5;
    v12 = HKAtrialFibrillationDetectionSupportedCountries();
    v13 = [v12 containsObject:v11];

    v9 = v10 & v13;
  }

  return v9;
}

- (BOOL)_isFeatureSupportedOnDevice:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCDD30] sharedBehavior];
    v5 = [v4 isAppleWatch];

    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v7 = [v3 valueForProperty:*MEMORY[0x277D2BA98]];
      v8 = v7 != 0;

      v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"38627122-E97A-4089-861C-81704B480D2E"];
      v10 = [v3 supportsCapability:v9];

      v6 = v8 & (v10 ^ 1);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_onboardingCompletionWithError:(id *)a3
{
  v5 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [v5 hdhr_heartRhythmProtectedSyncedDomainForProfile:WeakRetained];

  v8 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self featureIdentifier];
  v9 = [v7 hdhr_irregularRhythmNotificationsOnboardingCompletionForFeatureIdentifier:v8 error:a3];

  return v9;
}

- (id)canCompleteOnboardingForCountryCode:(id)a3 error:(id *)a4
{
  v4 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:a3 error:a4];
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

- (id)onboardingEligibilityForCountryCode:(id)a3 error:(id *)a4
{
  v5 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self _onboardingEligibilityForCountryCode:a3 error:a4];
  v6 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self featureIdentifier];
  v7 = [v5 eligibilityRespectingOverridesForFeatureIdentifier:v6];

  return v7;
}

- (id)_onboardingEligibilityForCountryCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceProvider activePairedDevice];
  v8 = [(HDFeatureDisableAndExpiryProviding *)self->_disableAndExpiryProvider rescindedStatusForCountryCode:v6 device:v7 error:a4];
  v9 = v8;
  if (!v8)
  {
    v18 = 0;
    goto LABEL_21;
  }

  [v8 integerValue];
  v10 = HKFeatureAvailabilityOnboardingIneligibilityReasonsForRescindedStatus() | (2 * (v7 == 0));
  if (v6)
  {
    v11 = [MEMORY[0x277CCDD30] sharedBehavior];
    v12 = [v11 isAppleWatch];

    if (v12)
    {
      v13 = _LocalWatchDeviceSupportsCountryCode(v6);
      v14 = [MEMORY[0x277CCDD30] sharedBehavior];
      v15 = [v14 features];
      v16 = [v15 deprecateIRN1];

      if (v16 & 1 | ((v13 & 1) == 0))
      {
        v17 = v10 | 8;
      }

      else
      {
        v17 = v10;
      }

      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v7 && !_PairedWatchDeviceSupportsCountryCode(v7, v6))
      {
        v10 |= 0x20uLL;
      }

      v19 = v6;
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

      if (!v7)
      {
        goto LABEL_20;
      }
    }

    if (![(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self _isFeatureSupportedOnDevice:v7])
    {
      v17 |= 4uLL;
    }

    goto LABEL_20;
  }

  v17 = v10 | 1;
LABEL_20:
  v22 = objc_alloc(MEMORY[0x277CCD3F8]);
  v23 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self countryAvailabilityVersion];
  v18 = [v22 initWithIneligibilityReasons:v17 countryAvailabilityVersion:v23];

LABEL_21:

  return v18;
}

- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)a3
{
  v4 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [v4 hdhr_heartRhythmProtectedSyncedDomainForProfile:WeakRetained];

  v7 = [v6 hdhr_atrialFibrillationOnboardingCompletedDateWithError:a3];

  return v7;
}

- (id)featureOnboardingRecordWithError:(id *)a3
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
        if (!a3)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }

      if ([v5 integerValue] != 1)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 description:@"Unexpectedly in an onboarded state with no onboarding completion"];
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
      v15 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self featureIdentifier];
      v16 = [MEMORY[0x277CBEAA8] distantPast];
      v8 = [v14 initWithFeatureIdentifier:v15 version:1 completionDate:v16 countryCode:0 countryCodeProvenance:0];

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
    if (!a3)
    {
LABEL_11:
      _HKLogDroppedError();
      goto LABEL_12;
    }

LABEL_7:
    v12 = v9;
    v11 = 0;
    *a3 = v9;
    goto LABEL_13;
  }

LABEL_12:
  v11 = 0;
LABEL_13:

  return v11;
}

- (void)getFeatureOnboardingRecordWithCompletion:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self featureOnboardingRecordWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self isCurrentOnboardingVersionCompletedWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (id)isCurrentOnboardingVersionCompletedWithError:(id *)a3
{
  v3 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self onboardedCountryCodeSupportedStateWithError:a3];
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

- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceProvider activePairedDevice];
  v6 = [v4 numberWithBool:{-[HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager _isFeatureSupportedOnDevice:](self, "_isFeatureSupportedOnDevice:", v5)}];

  return v6;
}

- (id)onboardedCountryCodeSupportedStateWithError:(id *)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v5 = [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self _onboardingCompletionWithError:&v38];
  v6 = v38;
  v7 = [v5 countryCode];
  if (v5)
  {
LABEL_12:
    v15 = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceProvider activePairedDevice];
    if (v15)
    {
      if (!v7)
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

          v7 = @"OnboardedInHealthDatabaseWithoutACountryCode";
          goto LABEL_34;
        }

        if (v23)
        {
          [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:];
        }

        if (a3)
        {
          v24 = v6;
          v7 = 0;
          v20 = 0;
          *a3 = v6;
        }

        else
        {
          _HKLogDroppedError();
          v7 = 0;
          v20 = 0;
        }

LABEL_20:
        v21 = v6;
LABEL_53:

        goto LABEL_54;
      }

      if (!v5 || [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)self _countryCodeIsSupportedForDevicePairing:v7 device:v15])
      {
LABEL_34:
        disableAndExpiryProvider = self->_disableAndExpiryProvider;
        v37 = v6;
        v28 = [(HDFeatureDisableAndExpiryProviding *)disableAndExpiryProvider rescindedStatusForCountryCode:v7 device:v15 error:&v37];
        v21 = v37;

        if (v28)
        {
          v29 = [v28 integerValue];
          if (v29 > 2)
          {
            v20 = &unk_283CD26E0;
          }

          else
          {
            v20 = qword_27865FDB0[v29];
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
            if (a3)
            {
              v31 = v30;
              *a3 = v30;
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
    v9 = [WeakRetained database];
    v10 = [v9 isDataProtectedByFirstUnlockAvailable];

    v11 = v10 ^ 1;
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

    v7 = v14;
    goto LABEL_12;
  }

  v25 = *MEMORY[0x277CCC2D8];
  if (v6)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:];
    }

    if (a3)
    {
      v26 = v6;
      *a3 = v6;
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

- (id)pairedFeatureAttributesWithError:(id *)a3
{
  v4 = [MEMORY[0x277CCD3D8] featureAttributesDerivedFromOSBuildAndFeatureVersion:*MEMORY[0x277CCC200] watchDeviceIdentifier:*MEMORY[0x277CCC210] phoneDeviceIdentifier:*MEMORY[0x277CCC208]];
  v5 = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceProvider activePairedDevice];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 valueForProperty:*MEMORY[0x277D2BA98]];
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
  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v3 = [v2 currentOSBuild];

  return v3;
}

- (void)removeFeatureSettingValueForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = *MEMORY[0x277CCC120];
  v8 = a4;
  if ([v6 isEqual:v7])
  {
    notificationSettingDefaults = self->_notificationSettingDefaults;
    v10 = *MEMORY[0x277CCE430];
    [(NSUserDefaults *)notificationSettingDefaults removeObjectForKey:*MEMORY[0x277CCE430]];
    v11 = *MEMORY[0x277CCE458];
    v12 = [MEMORY[0x277CBEB98] setWithObject:v10];
    HKSynchronizeNanoPreferencesUserDefaults();

    v8[2](v8, 1, 0);
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager removeFeatureSettingValueForKey:completion:];
    }

    v13 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot remove unknown setting for IRN 1.0"];
    v8[2](v8, 0, v13);

    v8 = v13;
  }
}

- (void)resetOnboardingWithCompletion:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D10718];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [v4 hdhr_heartRhythmProtectedSyncedDomainForProfile:WeakRetained];

  v26 = 0;
  v8 = [v7 hdhr_resetAtrialFibrillationDetectionOnboardingWithError:&v26];
  v9 = v26;
  if (v8)
  {
    v10 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    v11 = *MEMORY[0x277CCB840];
    [v10 removeObjectForKey:*MEMORY[0x277CCB840]];
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

  v5[2](v5, v8, v9);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)a3 countryCodeProvenance:(int64_t)a4 date:(id)a5 settings:(id)a6 completion:(id)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (v12)
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = objc_opt_class();
      v18 = v17;
      v19 = [v12 debugDescription];
      *buf = 138543618;
      v57 = v17;
      v58 = 2114;
      v59 = v19;
      _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Attempting to set onboarding date to %{public}@, but IRN V1 does not support specifying onboarding date", buf, 0x16u);
    }
  }

  if (v11)
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

      v14[2](v14, 0, v21);
      goto LABEL_23;
    }

    v22 = [v20 allOnboardedCountryCodesRegardlessOfSupportedState];
    v23 = [v22 containsObject:v11];

    if (v23)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager setCurrentOnboardingVersionCompletedForCountryCode:countryCodeProvenance:date:settings:completion:];
      }

      v24 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"IRN is already onboarded for %@", v11}];
      v14[2](v14, 0, v24);

      goto LABEL_23;
    }

    v25 = MEMORY[0x277D10718];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v27 = [v25 hdhr_heartRhythmProtectedSyncedDomainForProfile:WeakRetained];

    v54 = v21;
    v43 = v27;
    v28 = [v27 hdhr_setAtrialFibrillationDetectionCurrentOnboardingVersionCompletedInCountryCode:v11 error:&v54];
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
        v44 = v13;
        v35 = [v13 numberForKey:*MEMORY[0x277CCC120]];
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __162__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke;
        v50[3] = &unk_27865FD40;
        v50[4] = self;
        v52 = v14;
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

        v13 = v44;
LABEL_23:

        goto LABEL_24;
      }

      v30 = v29;
      v31 = objc_opt_class();
      *buf = 138543618;
      v57 = v31;
      v58 = 2114;
      v59 = v11;
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
      v59 = v11;
      v60 = 2114;
      v61 = v45;
      v32 = v42;
      _os_log_error_impl(&dword_229486000, v30, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting onboarding completed in country %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_19;
  }

  v21 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"A non-nil country code is required to onboard this feature"];
  v14[2](v14, 0, v21);
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

- (void)saveOnboardingCompletion:(id)a3 settings:(id)a4 completion:(id)a5
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

- (void)setFeatureSettingData:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a5;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager setFeatureSettingData:forKey:completion:];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot set unknown data setting for IRN 1.0"];
  v7[2](v7, 0, v8);
}

- (void)setFeatureSettingString:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a5;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager setFeatureSettingString:forKey:completion:];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot set unknown string setting for IRN 1.0"];
  v7[2](v7, 0, v8);
}

- (void)setFeatureSettingNumber:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = *MEMORY[0x277CCC120];
  v11 = a5;
  if ([v9 isEqual:v10])
  {
    notificationSettingDefaults = self->_notificationSettingDefaults;
    v13 = [v8 BOOLValue];
    v14 = *MEMORY[0x277CCE430];
    [(NSUserDefaults *)notificationSettingDefaults setBool:v13 forKey:*MEMORY[0x277CCE430]];
    v15 = *MEMORY[0x277CCE458];
    v16 = [MEMORY[0x277CBEB98] setWithObject:v14];
    HKSynchronizeNanoPreferencesUserDefaults();

    v11[2](v11, 1, 0);
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager setFeatureSettingNumber:forKey:completion:];
    }

    v17 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot set number string setting for IRN 1.0"];
    v11[2](v11, 0, v17);

    v11 = v17;
  }
}

- (void)registerObserver:(id)a3 queue:(id)a4
{
  observers = self->_observers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_registerObserver_queue___block_invoke;
  v5[3] = &unk_27865FD90;
  v5[4] = self;
  [(HKFeatureAvailabilityProvidingObserver *)observers registerObserver:a3 queue:a4 runIfFirstObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager_unregisterObserver___block_invoke;
  v4[3] = &unk_27865FD90;
  v4[4] = self;
  [(HKFeatureAvailabilityProvidingObserver *)observers unregisterObserver:a3 runIfLastObserver:v4];
}

- (void)daemonReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained database];
  [v4 addProtectedDataObserver:self];
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if (a4)
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (HDHRIrregularRhythmNotificationsSettingObservingContext == a6)
  {
    if (v10 && ([v10 isEqualToString:*MEMORY[0x277CCE430]] & 1) != 0)
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
          v31 = v10;
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
      [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)&v24 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    }
  }

  else
  {
    v25.receiver = self;
    v25.super_class = HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager;
    [(HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager *)&v25 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
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