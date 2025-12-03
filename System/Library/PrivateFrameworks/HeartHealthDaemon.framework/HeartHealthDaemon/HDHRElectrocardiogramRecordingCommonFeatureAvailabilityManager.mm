@interface HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager
- (HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager)initWithProfile:(id)profile featureIdentifier:(id)identifier onboardingVersion:(unint64_t)version pairedFeatureAttributesProvider:(id)provider disableAndExpiryProvider:(id)expiryProvider regionAvailabilityProvider:(id)availabilityProvider deviceSupportedProvider:(id)supportedProvider availabilityRequirementSet:(id)self0 cacheDefaults:(id)self1 isStandalone:(BOOL)self2;
- (NSString)description;
- (id)_currentOnboardingHistoryDictionaryWithError:(id *)error;
- (id)_makeOnboardingHistoryWithOnboardingVersion:(int64_t)version countryCode:(id)code error:(id *)error;
- (id)_onboardedCountryCodeSupportedStateWithOnboardingCompletion:(id)completion error:(id *)error;
- (id)_onboardingCompletionWithError:(id *)error;
- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error;
- (id)countryAvailabilityVersion;
- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)error;
- (id)featureOnboardingRecordWithError:(id *)error;
- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error;
- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)error;
- (id)onboardedCountryCodeSupportedStateWithError:(id *)error;
- (id)onboardingEligibilityForCountryCode:(id)code error:(id *)error;
- (id)pairedDeviceProvider;
- (unint64_t)_ineligibilityReasonsForRescindedStatus:(int64_t)status;
- (void)_saveFirstOnboardingCompletionDateIfNeeded:(id)needed;
- (void)_setOnboardingCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance onboardingVersion:(unint64_t)version date:(id)date settings:(id)settings completion:(id)completion;
- (void)daemonReady:(id)ready;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)getFeatureOnboardingRecordWithCompletion:(id)completion;
- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)completion;
- (void)pairedDeviceCapabilitiesDidUpdate:(id)update;
- (void)registerObserver:(id)observer queue:(id)queue;
- (void)removeFeatureSettingValueForKey:(id)key completion:(id)completion;
- (void)resetOnboardingWithCompletion:(id)completion;
- (void)saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5;
- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion;
- (void)setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion;
- (void)setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion;
- (void)setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion;
@end

@implementation HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  featureIdentifier = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self featureIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p: %@>", v5, self, featureIdentifier];

  return v7;
}

- (HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager)initWithProfile:(id)profile featureIdentifier:(id)identifier onboardingVersion:(unint64_t)version pairedFeatureAttributesProvider:(id)provider disableAndExpiryProvider:(id)expiryProvider regionAvailabilityProvider:(id)availabilityProvider deviceSupportedProvider:(id)supportedProvider availabilityRequirementSet:(id)self0 cacheDefaults:(id)self1 isStandalone:(BOOL)self2
{
  profileCopy = profile;
  identifierCopy = identifier;
  providerCopy = provider;
  expiryProviderCopy = expiryProvider;
  availabilityProviderCopy = availabilityProvider;
  supportedProviderCopy = supportedProvider;
  setCopy = set;
  defaultsCopy = defaults;
  v37.receiver = self;
  v37.super_class = HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager;
  v19 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)&v37 init];
  v20 = v19;
  if (v19)
  {
    v29 = identifierCopy;
    objc_storeWeak(&v19->_profile, profileCopy);
    objc_storeStrong(&v20->_featureIdentifier, identifier);
    v20->_onboardingVersion = version;
    objc_storeStrong(&v20->_pairedFeatureAttributesProvider, provider);
    objc_storeStrong(&v20->_disableAndExpiryProvider, expiryProvider);
    objc_storeStrong(&v20->_regionAvailabilityProvider, availabilityProvider);
    objc_storeStrong(&v20->_deviceSupportedProvider, supportedProvider);
    objc_storeStrong(&v20->_availabilityRequirementSet, set);
    objc_storeStrong(&v20->_cacheDefaults, defaults);
    v20->_isStandalone = standalone;
    v21 = objc_alloc(MEMORY[0x277CCD738]);
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v21 initWithName:v23 loggingCategory:*MEMORY[0x277CCC2D8]];
    observers = v20->_observers;
    v20->_observers = v24;

    WeakRetained = objc_loadWeakRetained(&v20->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerDaemonReadyObserver:v20 queue:0];

    identifierCopy = v29;
  }

  return v20;
}

- (id)pairedDeviceProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  nanoRegistryDeviceCapabilityProvider = [daemon nanoRegistryDeviceCapabilityProvider];

  return nanoRegistryDeviceCapabilityProvider;
}

- (id)featureOnboardingRecordWithError:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v5 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self _onboardingCompletionWithError:&v32];
  v6 = v32;
  v7 = MEMORY[0x277CCC2D8];
  if (v5)
  {
    goto LABEL_2;
  }

  _HKInitializeLogging();
  v20 = *v7;
  v21 = *v7;
  if (!v6)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_229486000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] ECG is not onboarded", buf, 0xCu);
    }

LABEL_2:
    v31 = 0;
    v8 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self _onboardedCountryCodeSupportedStateWithOnboardingCompletion:v5 error:&v31];
    v9 = v31;
    _HKInitializeLogging();
    v10 = *v7;
    v11 = os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      errorCopy = error;
      if (v11)
      {
        v12 = v10;
        [v8 integerValue];
        v13 = NSStringFromHKFeatureAvailabilityOnboardedCountrySupportedState();
        *buf = 138543618;
        selfCopy3 = self;
        v35 = 2114;
        v36 = v13;
        _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarded country state: %{public}@", buf, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_profile);
      featureSettingsManager = [WeakRetained featureSettingsManager];
      featureIdentifier = self->_featureIdentifier;
      v30 = 0;
      v17 = [featureSettingsManager featureSettingsForFeatureIdentifier:featureIdentifier error:&v30];
      v18 = v30;

      if (v17)
      {
        v19 = [objc_alloc(MEMORY[0x277CCD448]) initWithOnboardingState:objc_msgSend(v8 onboardingCompletion:"integerValue") featureSettings:{v5, v17}];
      }

      else
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          [HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager featureOnboardingRecordWithError:];
        }

        v24 = v18;
        v25 = v24;
        if (v24)
        {
          if (errorCopy)
          {
            v26 = v24;
            *errorCopy = v25;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v19 = 0;
      }

      goto LABEL_30;
    }

    if (v11)
    {
      *buf = 138543618;
      selfCopy3 = self;
      v35 = 2114;
      v36 = v9;
      _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Can't read ECG onboarding state with error: %{public}@", buf, 0x16u);
    }

    v18 = v9;
    if (v18)
    {
      if (error)
      {
        v23 = v18;
        v19 = 0;
        *error = v18;
LABEL_30:

        goto LABEL_31;
      }

      _HKLogDroppedError();
    }

    v19 = 0;
    goto LABEL_30;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager featureOnboardingRecordWithError:];
  }

  if (error)
  {
    v22 = v6;
    v19 = 0;
    *error = v6;
  }

  else
  {
    _HKLogDroppedError();
    v19 = 0;
  }

LABEL_31:

  v27 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)getFeatureOnboardingRecordWithCompletion:(id)completion
{
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self featureOnboardingRecordWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)completion
{
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self isCurrentOnboardingVersionCompletedWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error
{
  v3 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self onboardedCountryCodeSupportedStateWithError:error];
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

- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error
{
  v4 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:code error:error];
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
  codeCopy = code;
  v7 = [(HDRegionAvailabilityProviding *)self->_regionAvailabilityProvider onboardingEligibilityForCountryCode:codeCopy];
  ineligibilityReasons = [v7 ineligibilityReasons];
  pairedDeviceProvider = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self pairedDeviceProvider];
  activePairedDevice = [pairedDeviceProvider activePairedDevice];

  if (!activePairedDevice)
  {
    v21 = objc_alloc(MEMORY[0x277CCD3F8]);
    countryAvailabilityVersion = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self countryAvailabilityVersion];
    v13 = [v21 initWithIneligibilityReasons:ineligibilityReasons | 2 countryAvailabilityVersion:countryAvailabilityVersion];

    featureIdentifier = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self featureIdentifier];
    v20 = [v13 eligibilityRespectingOverridesForFeatureIdentifier:featureIdentifier];
LABEL_8:

    goto LABEL_10;
  }

  v11 = [(HDHRElectrocardiogramDeviceSupportedStateProvider *)self->_deviceSupportedProvider isDeviceSupported:activePairedDevice];
  v12 = [(HDFeatureDisableAndExpiryProviding *)self->_disableAndExpiryProvider rescindedStatusForCountryCode:codeCopy device:activePairedDevice error:error];
  v13 = v12;
  if (v12)
  {
    if (v11)
    {
      v14 = ineligibilityReasons | (codeCopy == 0);
    }

    else
    {
      v14 = ineligibilityReasons | (codeCopy == 0) | 4;
    }

    v15 = -[HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager _ineligibilityReasonsForRescindedStatus:](self, "_ineligibilityReasonsForRescindedStatus:", [v12 integerValue]);
    v16 = objc_alloc(MEMORY[0x277CCD3F8]);
    countryAvailabilityVersion2 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self countryAvailabilityVersion];
    featureIdentifier = [v16 initWithIneligibilityReasons:v15 | v14 countryAvailabilityVersion:countryAvailabilityVersion2];

    featureIdentifier2 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self featureIdentifier];
    v20 = [featureIdentifier eligibilityRespectingOverridesForFeatureIdentifier:featureIdentifier2];

    goto LABEL_8;
  }

  v20 = 0;
LABEL_10:

  return v20;
}

- (unint64_t)_ineligibilityReasonsForRescindedStatus:(int64_t)status
{
  if (status == 1)
  {
    return 64;
  }

  else
  {
    return (status == 2) << 7;
  }
}

- (id)onboardedCountryCodeSupportedStateWithError:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v5 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self _onboardingCompletionWithError:&v15];
  v6 = v15;
  v7 = v6;
  if (v6)
  {
    hk_isDatabaseAccessibilityError = [v6 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2D8];
    v10 = *MEMORY[0x277CCC2D8];
    if (hk_isDatabaseAccessibilityError)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Database is inaccessible; can't read ECG onboarding completion", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:];
    }

    if (error)
    {
      v12 = v7;
      v11 = 0;
      *error = v7;
    }

    else
    {
      _HKLogDroppedError();
      v11 = 0;
    }
  }

  else
  {
    v11 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self _onboardedCountryCodeSupportedStateWithOnboardingCompletion:v5 error:error];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)error
{
  v3 = MEMORY[0x277CCABB0];
  deviceSupportedProvider = self->_deviceSupportedProvider;
  pairedDeviceProvider = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self pairedDeviceProvider];
  activePairedDevice = [pairedDeviceProvider activePairedDevice];
  v7 = [v3 numberWithBool:{-[HDHRElectrocardiogramDeviceSupportedStateProvider isDeviceSupported:](deviceSupportedProvider, "isDeviceSupported:", activePairedDevice)}];

  return v7;
}

- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)error
{
  v4 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [v4 hdhr_heartRhythmProtectedSyncedDomainForProfile:WeakRetained];

  v7 = [v6 hdhr_electrocardiogramRecordingFirstOnboardingCompletedDateWithError:error];

  return v7;
}

- (void)_setOnboardingCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance onboardingVersion:(unint64_t)version date:(id)date settings:(id)settings completion:(id)completion
{
  v70 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  settingsCopy = settings;
  completionCopy = completion;
  v16 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v18 = [v16 hdhr_heartRhythmProtectedSyncedDomainForProfile:WeakRetained];

  v19 = *MEMORY[0x277CCC1E8];
  if (*MEMORY[0x277CCC1E8] == version)
  {
    v54 = settingsCopy;
    v20 = MEMORY[0x277CBEC10];
    goto LABEL_8;
  }

  v59 = 0;
  v21 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self _makeOnboardingHistoryWithOnboardingVersion:version countryCode:codeCopy error:&v59];
  v22 = v59;
  v20 = v22;
  if (v21 || !v22)
  {
    v54 = settingsCopy;

    v20 = v21;
LABEL_8:
    v23 = *MEMORY[0x277CCBCE8];
    v58 = 0;
    v24 = [v18 setPropertyListValue:v20 forKey:v23 error:&v58];
    v53 = v58;
    if ((v24 & 1) == 0)
    {
      _HKInitializeLogging();
      v33 = *MEMORY[0x277CCC2D8];
      v34 = v53;
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        selfCopy2 = self;
        v64 = 2048;
        versionCopy2 = version;
        v66 = 2112;
        v67 = v23;
        v68 = 2112;
        v69 = v53;
        _os_log_error_impl(&dword_229486000, v33, OS_LOG_TYPE_ERROR, "[%{public}@] Couldn't set ECG onboarding history %ld for key [%@]: %@", buf, 0x2Au);
      }

      settingsCopy = v54;
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0, v53);
      }

      goto LABEL_29;
    }

    v25 = *MEMORY[0x277CCBCE0];
    v52 = codeCopy;
    v61[0] = codeCopy;
    v26 = *MEMORY[0x277CCBCF0];
    v60[0] = v25;
    v60[1] = v26;
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
    v61[1] = v27;
    v60[2] = @"HKElectrocardiogramOnboardingCountryCodeProvenance";
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:provenance];
    v61[2] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:3];

    v57 = 0;
    v51 = v29;
    LOBYTE(v27) = [v18 setValuesWithDictionary:v29 error:&v57];
    v50 = v57;
    if ((v27 & 1) == 0)
    {
      _HKInitializeLogging();
      v35 = *MEMORY[0x277CCC2D8];
      v34 = v53;
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v64 = 2048;
        versionCopy2 = version;
        v66 = 2112;
        v67 = v53;
        _os_log_error_impl(&dword_229486000, v35, OS_LOG_TYPE_ERROR, "[%{public}@] Couldn't set ECG onboarding completion version %ld: %@", buf, 0x20u);
      }

      codeCopy = v52;
      settingsCopy = v54;
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0, v53);
      }

      goto LABEL_28;
    }

    cacheDefaults = self->_cacheDefaults;
    if (v19 == version)
    {
      [(NSUserDefaults *)cacheDefaults removeObjectForKey:v26];
      v31 = *MEMORY[0x277CCBD20];
      v32 = *MEMORY[0x277CCBD18];
      codeCopy = v52;
    }

    else
    {
      [(NSUserDefaults *)cacheDefaults setInteger:version forKey:v26];
      v31 = *MEMORY[0x277CCBD20];
      [(NSUserDefaults *)self->_cacheDefaults setBool:1 forKey:*MEMORY[0x277CCBD20]];
      v32 = *MEMORY[0x277CCBD18];
      codeCopy = v52;
      if (v54)
      {
        v36 = [v54 numberForKey:*MEMORY[0x277CCBD18]];
        v37 = v36;
        v38 = MEMORY[0x277CCBD10];
        if (v36)
        {
          -[NSUserDefaults setBool:forKey:](self->_cacheDefaults, "setBool:forKey:", [v36 BOOLValue], v32);
        }

        v48 = *v38;
        v49 = v37;
        v39 = [v54 numberForKey:?];
        v40 = v39;
        if (v39)
        {
          -[NSUserDefaults setBool:forKey:](self->_cacheDefaults, "setBool:forKey:", [v39 BOOLValue], v48);
        }

        goto LABEL_27;
      }
    }

    v38 = MEMORY[0x277CCBD10];
LABEL_27:
    v41 = *MEMORY[0x277CCE460];
    v42 = [MEMORY[0x277CBEB98] setWithObjects:{v26, v31, v32, *v38, 0}];
    HKSynchronizeNanoPreferencesUserDefaults();

    observers = self->_observers;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __169__HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager__setOnboardingCompletedForCountryCode_countryCodeProvenance_onboardingVersion_date_settings_completion___block_invoke;
    v56[3] = &unk_27865FD18;
    v56[4] = self;
    [(HKFeatureAvailabilityProvidingObserver *)observers notifyObservers:v56];
    v44 = objc_loadWeakRetained(&self->_profile);
    nanoSyncManager = [v44 nanoSyncManager];
    v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Onboarding completed", objc_opt_class()];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __169__HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager__setOnboardingCompletedForCountryCode_countryCodeProvenance_onboardingVersion_date_settings_completion___block_invoke_2;
    v55[3] = &unk_278660408;
    v55[4] = self;
    [nanoSyncManager syncHealthDataWithOptions:0 reason:v46 completion:v55];

    v34 = v53;
    completionCopy[2](completionCopy, 1, v53);
    settingsCopy = v54;
LABEL_28:

LABEL_29:
    goto LABEL_30;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v22);
  }

LABEL_30:

  v47 = *MEMORY[0x277D85DE8];
}

void __169__HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager__setOnboardingCompletedForCountryCode_countryCodeProvenance_onboardingVersion_date_settings_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2D8];
  v7 = *MEMORY[0x277CCC2D8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] NanoSync completed after onboarding completed", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __169__HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager__setOnboardingCompletedForCountryCode_countryCodeProvenance_onboardingVersion_date_settings_completion___block_invoke_2_cold_1(a1, v5, v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  dateCopy = date;
  settingsCopy = settings;
  completionCopy = completion;
  if (codeCopy)
  {
    v29 = 0;
    v16 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:codeCopy error:&v29];
    v17 = v29;
    if (v16)
    {
      if ([v16 isEligible])
      {
        objc_initWeak(location, self);
        onboardingVersion = self->_onboardingVersion;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __164__HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke;
        v25[3] = &unk_278660BA8;
        objc_copyWeak(&v28, location);
        v26 = dateCopy;
        v27 = completionCopy;
        [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self _setOnboardingCompletedForCountryCode:codeCopy countryCodeProvenance:provenance onboardingVersion:onboardingVersion date:v26 settings:settingsCopy completion:v25];

        objc_destroyWeak(&v28);
        objc_destroyWeak(location);
      }

      else
      {
        v21 = MEMORY[0x277CCA9B8];
        ineligibilityReasonsDescription = [v16 ineligibilityReasonsDescription];
        v23 = [v21 hk_error:110 format:{@"This feature cannot be enabled for country %@: %@", codeCopy, ineligibilityReasonsDescription}];
        (*(completionCopy + 2))(completionCopy, 0, v23);
      }
    }

    else
    {
      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        *location = 138543874;
        *&location[4] = self;
        v31 = 2114;
        v32 = codeCopy;
        v33 = 2114;
        v34 = v17;
        _os_log_error_impl(&dword_229486000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Error checking onboarding completion ability in country %{public}@: %{public}@", location, 0x20u);
      }

      (*(completionCopy + 2))(completionCopy, 0, v17);
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"A non-nil country code is required to onboard this feature"];
    (*(completionCopy + 2))(completionCopy, 0, v19);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __164__HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _saveFirstOnboardingCompletionDateIfNeeded:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5
{
  v6 = a5;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager saveOnboardingCompletion:v7 settings:? completion:?];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Saving HKOnboardingCompletion is not supported for ECG 1.0"];
  v6[2](v6, 0, v8);
}

- (void)setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager setFeatureSettingData:forKey:completion:];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot set unknown data setting for ECG 1.0"];
  completionCopy[2](completionCopy, 0, v8);
}

- (void)setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager setFeatureSettingString:forKey:completion:];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot set unknown string setting for ECG 1.0"];
  completionCopy[2](completionCopy, 0, v8);
}

- (void)setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager setFeatureSettingNumber:forKey:completion:];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot set unknown string setting for ECG 1.0"];
  completionCopy[2](completionCopy, 0, v8);
}

- (void)removeFeatureSettingValueForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager removeFeatureSettingValueForKey:completion:];
  }

  v7 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Removing settings for ECG 1.0 is not supported"];
  completionCopy[2](completionCopy, 0, v7);
}

- (void)resetOnboardingWithCompletion:(id)completion
{
  cacheDefaults = self->_cacheDefaults;
  v5 = *MEMORY[0x277CCBCD8];
  completionCopy = completion;
  [(NSUserDefaults *)cacheDefaults removeObjectForKey:v5];
  [(NSUserDefaults *)self->_cacheDefaults removeObjectForKey:@"WristConfirmationAlertDate"];
  v7 = *MEMORY[0x277CCBD20];
  [(NSUserDefaults *)self->_cacheDefaults removeObjectForKey:*MEMORY[0x277CCBD20]];
  [(NSUserDefaults *)self->_cacheDefaults removeObjectForKey:@"PromimentUpgradeTileDismissed"];
  v8 = *MEMORY[0x277CCBD18];
  [(NSUserDefaults *)self->_cacheDefaults removeObjectForKey:*MEMORY[0x277CCBD18]];
  v9 = *MEMORY[0x277CCBD10];
  [(NSUserDefaults *)self->_cacheDefaults removeObjectForKey:*MEMORY[0x277CCBD10]];
  v10 = *MEMORY[0x277CCE460];
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{v5, @"WristConfirmationAlertDate", v7, v8, v9, 0}];
  HKSynchronizeNanoPreferencesUserDefaults();

  v12 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [v12 hdhr_heartRhythmProtectedSyncedDomainForProfile:WeakRetained];

  v15 = 0;
  [v14 hdhr_resetElectrocardiogramRecordingFirstOnboardingCompletedDateWithError:&v15];
  [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self _setOnboardingCompletedForCountryCode:&stru_283CC4740 countryCodeProvenance:0 onboardingVersion:*MEMORY[0x277CCC1E8] date:0 settings:0 completion:completionCopy];
}

- (id)countryAvailabilityVersion
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  currentOSBuild = [mEMORY[0x277CCDD30] currentOSBuild];

  return currentOSBuild;
}

- (void)registerObserver:(id)observer queue:(id)queue
{
  observers = self->_observers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __89__HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager_registerObserver_queue___block_invoke;
  v5[3] = &unk_27865FD90;
  v5[4] = self;
  [(HKFeatureAvailabilityProvidingObserver *)observers registerObserver:observer queue:queue runIfFirstObserver:v5];
}

void __89__HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager_registerObserver_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pairedDeviceProvider];
  [v2 registerObserver:*(a1 + 32) queue:0];
}

- (void)pairedDeviceCapabilitiesDidUpdate:(id)update
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = HKLogInfrastructure();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HKFeatureAvailabilityProvidingObserver count](self->_observers, "count")}];
      *buf = 138543618;
      selfCopy = self;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_INFO, "[%{public}@] Notifying %{public}@ observers paired device capability changes", buf, 0x16u);
    }
  }

  observers = self->_observers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager_pairedDeviceCapabilitiesDidUpdate___block_invoke;
  v10[3] = &unk_27865FD18;
  v10[4] = self;
  [(HKFeatureAvailabilityProvidingObserver *)observers notifyObservers:v10];
  v9 = *MEMORY[0x277D85DE8];
}

void __100__HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager_pairedDeviceCapabilitiesDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureAvailabilityExtensionDidUpdatePairedDeviceCapability:*(a1 + 32)];
  }
}

- (void)daemonReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database addProtectedDataObserver:self];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  v16 = *MEMORY[0x277D85DE8];
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
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HKFeatureAvailabilityProvidingObserver count](self->_observers, "count")}];
        *buf = 138543618;
        selfCopy = self;
        v14 = 2114;
        v15 = v8;
        _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_INFO, "[%{public}@] Notifying %{public}@ observers for protected database becoming available", buf, 0x16u);
      }
    }

    observers = self->_observers;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __107__HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager_database_protectedDataDidBecomeAvailable___block_invoke;
    v11[3] = &unk_27865FD18;
    v11[4] = self;
    [(HKFeatureAvailabilityProvidingObserver *)observers notifyObservers:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __107__HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager_database_protectedDataDidBecomeAvailable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_283CDA550])
  {
    [v3 featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:*(a1 + 32)];
  }
}

- (id)_onboardedCountryCodeSupportedStateWithOnboardingCompletion:(id)completion error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  if (completion)
  {
    countryCode = [completion countryCode];
    v19 = 0;
    v7 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:countryCode error:&v19];
    v8 = v19;
    v9 = v8;
    if (v7)
    {
      if (self->_isStandalone)
      {
        [v7 ineligibilityReasons];
        ineligibilityReasons = [v7 ineligibilityReasons];
        v11 = objc_alloc(MEMORY[0x277CCD3F8]);
        countryAvailabilityVersion = [v7 countryAvailabilityVersion];
        v13 = [v11 initWithIneligibilityReasons:ineligibilityReasons & 0xFFFFFFFFFFFFFFFDLL countryAvailabilityVersion:countryAvailabilityVersion];

        v7 = v13;
      }

      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "onboardedCountrySupportedState")}];
      goto LABEL_14;
    }

    v7 = v8;
    if (v7)
    {
      if (error)
      {
        v16 = v7;
        v14 = 0;
        *error = v7;
LABEL_14:

        goto LABEL_15;
      }

      _HKLogDroppedError();
    }

    v14 = 0;
    goto LABEL_14;
  }

  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_229486000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] No record of onboarding found, assuming not onboarded", buf, 0xCu);
  }

  v14 = &unk_283CD31F0;
LABEL_15:
  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_saveFirstOnboardingCompletionDateIfNeeded:(id)needed
{
  v22 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  if (neededCopy)
  {
    v5 = MEMORY[0x277D10718];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v7 = [v5 hdhr_heartRhythmProtectedSyncedDomainForProfile:WeakRetained];

    v19 = 0;
    v8 = [v7 hdhr_electrocardiogramRecordingFirstOnboardingCompletedDateWithError:&v19];
    v9 = v19;
    if (!v8)
    {
      v18 = 0;
      v10 = [v7 hdhr_setElectrocardiogramRecordingFirstOnboardingCompletedDate:neededCopy error:&v18];
      v11 = v18;
      v12 = v11;
      if ((v10 & 1) == 0 && v11)
      {
        hk_isDatabaseAccessibilityError = [v11 hk_isDatabaseAccessibilityError];
        _HKInitializeLogging();
        v14 = *MEMORY[0x277CCC2D8];
        v15 = *MEMORY[0x277CCC2D8];
        if (hk_isDatabaseAccessibilityError)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy2 = self;
            _os_log_impl(&dword_229486000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Database is inaccessible; can't save first ECG onboarding completion date", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager _saveFirstOnboardingCompletionDateIfNeeded:];
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] First ECG onboarding completion date is not provided", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_onboardingCompletionWithError:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [v5 hdhr_heartRhythmProtectedSyncedDomainForProfile:WeakRetained];

  v46 = 0;
  v8 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self _currentOnboardingHistoryDictionaryWithError:&v46];
  v9 = v46;
  v10 = v9;
  if (!v8)
  {
    if (v9)
    {
      if (error)
      {
        v26 = v9;
        v27 = 0;
        *error = v10;
      }

      else
      {
        _HKLogDroppedError();
        v27 = 0;
      }

      goto LABEL_27;
    }

    v8 = MEMORY[0x277CBEC10];
  }

  v44 = v9;
  onboardingVersion = self->_onboardingVersion;
  v12 = v8;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  allKeys = [v12 allKeys];
  v14 = [allKeys countByEnumeratingWithState:&v47 objects:buf count:16];
  if (v14)
  {
    v15 = v14;
    v42 = v7;
    v16 = *v48;
    v17 = MEMORY[0x277CBEC10];
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(allKeys);
        }

        if ([*(*(&v47 + 1) + 8 * i) integerValue] == onboardingVersion)
        {
          onboardingVersion = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", onboardingVersion];
          v20 = [v12 objectForKeyedSubscript:onboardingVersion];
          v21 = [(__CFString *)v20 length];
          v22 = &stru_283CC4740;
          if (v21)
          {
            v22 = v20;
          }

          v23 = MEMORY[0x277CCABB0];
          v24 = v22;
          v25 = [v23 numberWithInteger:onboardingVersion];
          v51 = v25;
          v52 = v24;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];

          goto LABEL_14;
        }
      }

      v15 = [allKeys countByEnumeratingWithState:&v47 objects:buf count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

LABEL_14:
    v7 = v42;
  }

  else
  {
    v17 = MEMORY[0x277CBEC10];
  }

  if ([v17 count])
  {
    allKeys2 = [v17 allKeys];
    lastObject = [allKeys2 lastObject];

    v30 = [v17 objectForKeyedSubscript:lastObject];
    v45 = 0;
    v31 = [v7 hdhr_electrocardiogramRecordingFirstOnboardingCompletedDateWithError:&v45];
    v43 = v45;
    if (!v31)
    {
      v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:1.0];
    }

    _HKInitializeLogging();
    v32 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy = self;
      v55 = 2114;
      v56 = v30;
      v57 = 2114;
      v58 = lastObject;
      _os_log_impl(&dword_229486000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] ECG onboarding countryCode: %{public}@, version: %{public}@", buf, 0x20u);
    }

    v33 = [v7 hdhr_electrocardiogramRecordingCountryCodeProvenanceWithError:0];
    v34 = objc_alloc(MEMORY[0x277CCD740]);
    featureIdentifier = self->_featureIdentifier;
    v36 = v7;
    integerValue = [lastObject integerValue];
    integerValue2 = [v33 integerValue];
    v39 = integerValue;
    v7 = v36;
    v27 = [v34 initWithFeatureIdentifier:featureIdentifier version:v39 completionDate:v31 countryCode:v30 countryCodeProvenance:integerValue2];
  }

  else
  {
    v27 = 0;
  }

  v10 = v44;
LABEL_27:

  v40 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_currentOnboardingHistoryDictionaryWithError:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [v5 hdhr_heartRhythmProtectedSyncedDomainForProfile:WeakRetained];

  v33 = 0;
  v8 = [v7 hdhr_electrocardiogramRecordingOnboardingHistoryWithError:&v33];
  v9 = v33;
  v10 = v9;
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (v11)
  {
    v32 = 0;
    v12 = [v7 hdhr_electrocardiogramRecordingOnboardingCompletionVersionWithError:&v32];
    v13 = v32;
    if (!v12)
    {
      mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
      isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

      if (!isAppleWatch || (v24 = -[NSUserDefaults integerForKey:](self->_cacheDefaults, "integerForKey:", *MEMORY[0x277CCBCF0]), v24 < 1) || ([MEMORY[0x277CCABB0] numberWithInteger:v24], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v12 = v13;
        if (v12)
        {
          if (error)
          {
            v26 = v12;
            v18 = 0;
            *error = v12;
            goto LABEL_35;
          }

          _HKLogDroppedError();
        }

        v18 = 0;
        goto LABEL_35;
      }

      v12 = v25;
    }

    v31 = 0;
    v14 = [v7 hdhr_electrocardiogramRecordingOnboardingCountryCodeWithError:&v31];
    v15 = v31;
    hk_copyNonEmptyString = [v14 hk_copyNonEmptyString];

    if (!hk_copyNonEmptyString)
    {
      if (v15)
      {
        if (error)
        {
          v27 = v15;
          v18 = 0;
          *error = v15;
        }

        else
        {
          _HKLogDroppedError();
          v18 = 0;
        }

LABEL_16:

LABEL_35:
        goto LABEL_36;
      }

      if ([v12 integerValue])
      {
        _HKInitializeLogging();
        v28 = *MEMORY[0x277CCC2D8];
        hk_copyNonEmptyString = @"US";
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy = self;
          v36 = 2114;
          v37 = @"US";
          _os_log_impl(&dword_229486000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding region: %{public}@ (Not Present, Assumed)", buf, 0x16u);
        }
      }

      else
      {
        hk_copyNonEmptyString = 0;
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v18 = dictionary;
    if (v8)
    {
      [dictionary addEntriesFromDictionary:v8];
    }

    if ([v12 integerValue])
    {
      if (hk_copyNonEmptyString)
      {
        v19 = hk_copyNonEmptyString;
      }

      else
      {
        v19 = &stru_283CC4740;
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", objc_msgSend(v12, "integerValue")];
      [v18 setObject:v19 forKey:v20];
    }

    goto LABEL_16;
  }

  if (error)
  {
    v21 = v9;
    v18 = 0;
    *error = v10;
  }

  else
  {
    _HKLogDroppedError();
    v18 = 0;
  }

LABEL_36:

  v29 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_makeOnboardingHistoryWithOnboardingVersion:(int64_t)version countryCode:(id)code error:(id *)error
{
  codeCopy = code;
  if (codeCopy)
  {
    v9 = codeCopy;
  }

  else
  {
    v9 = &stru_283CC4740;
  }

  v18 = 0;
  v10 = [(HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager *)self _currentOnboardingHistoryDictionaryWithError:&v18];
  v11 = v18;
  v12 = v11;
  if (v10)
  {
    goto LABEL_5;
  }

  if (!v11)
  {
    v10 = MEMORY[0x277CBEC10];
LABEL_5:
    v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
    version = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", version];
    [v13 setObject:v9 forKey:version];

    v15 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v13];

    goto LABEL_6;
  }

  if (error)
  {
    v17 = v11;
    v15 = 0;
    *error = v12;
  }

  else
  {
    _HKLogDroppedError();
    v15 = 0;
  }

LABEL_6:

  return v15;
}

- (void)featureOnboardingRecordWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Can't read ECG onboarding record with error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)featureOnboardingRecordWithError:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Can't read ECG feature settings with error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)onboardedCountryCodeSupportedStateWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Error reading ECG onboarding completion: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __169__HDHRElectrocardiogramRecordingCommonFeatureAvailabilityManager__setOnboardingCompletedForCountryCode_countryCodeProvenance_onboardingVersion_date_settings_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_229486000, a2, a3, "[%{public}@] NanoSync failed after onboarding completed: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)saveOnboardingCompletion:(uint64_t)a1 settings:(NSObject *)a2 completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_229486000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Saving HKOnboardingCompletion is not supported for ECG 1.0", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingData:forKey:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Unknown data setting for ECG 1.0: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingString:forKey:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Unknown string setting for ECG 1.0: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingNumber:forKey:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Unknown number setting for ECG 1.0: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)removeFeatureSettingValueForKey:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Removing settings for ECG 1.0 is not supported: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveFirstOnboardingCompletionDateIfNeeded:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Error saving first ECG onboarding completion date: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end