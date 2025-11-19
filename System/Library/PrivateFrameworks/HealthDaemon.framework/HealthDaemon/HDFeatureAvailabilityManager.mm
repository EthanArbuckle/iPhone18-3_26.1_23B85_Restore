@interface HDFeatureAvailabilityManager
- (HDFeatureAvailabilityManager)initWithProfile:(id)a3 featureIdentifier:(id)a4 availabilityRequirements:(id)a5 currentOnboardingVersion:(int64_t)a6 pairedDeviceCapability:(id)a7 pairedFeatureAttributesProvider:(id)a8 regionAvailabilityProvider:(id)a9 disableAndExpiryProvider:(id)a10 loggingCategory:(id)a11;
- (HDFeatureAvailabilityManager)initWithProfile:(id)a3 featureIdentifier:(id)a4 availabilityRequirements:(id)a5 currentOnboardingVersion:(int64_t)a6 pairedDeviceCapability:(id)a7 pairedFeatureAttributesProvider:(id)a8 regionAvailabilityProvider:(id)a9 disableAndExpiryProvider:(id)a10 onboardingEligibilityDeterminer:(id)a11 featureSettingsAtOnboardingTimeValidator:(id)a12 loggingCategory:(id)a13;
- (HDFeatureAvailabilityManager)initWithProfile:(id)a3 featureIdentifier:(id)a4 availabilityRequirements:(id)a5 currentOnboardingVersion:(int64_t)a6 pairedDeviceCapability:(id)a7 regionAvailabilityProvider:(id)a8 disableAndExpiryProvider:(id)a9 loggingCategory:(id)a10;
- (HDFeatureAvailabilityManager)initWithProfile:(id)a3 featureIdentifier:(id)a4 currentOnboardingVersion:(int64_t)a5 loggingCategory:(id)a6;
- (HDFeatureAvailabilityManager)initWithProfile:(id)a3 featureIdentifier:(id)a4 currentOnboardingVersion:(int64_t)a5 pairedDeviceCapability:(id)a6 regionAvailabilityProvider:(id)a7 loggingCategory:(id)a8;
- (id)_onboardingCompletionsByStateWithError:(uint64_t)a1;
- (id)canCompleteOnboardingForCountryCode:(id)a3 error:(id *)a4;
- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)a3;
- (id)featureOnboardingRecordWithError:(id *)a3;
- (id)isCurrentOnboardingVersionCompletedWithError:(id *)a3;
- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)a3;
- (id)onboardedCountryCodeSupportedStateWithError:(id *)a3;
- (uint64_t)_onboardedCountryCodeSupportedStateFromOnboardingCompletionsByState:(uint64_t)a1;
- (void)_triggerImmediateSyncWithReason:(uint64_t)a1;
- (void)dealloc;
- (void)disableAndExpiryProviderDidUpdate:(id)a3;
- (void)featureSettingsManager:(id)a3 didUpdateSettingsForFeatureIdentifier:(id)a4;
- (void)getFeatureOnboardingRecordWithCompletion:(id)a3;
- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)a3;
- (void)onboardingCompletionManager:(id)a3 didUpdateOnboardingCompletionsForFeatureIdentifier:(id)a4;
- (void)pairedDeviceCapabilitiesDidUpdate:(id)a3;
- (void)regionAvailabilityProvidingDidUpdate:(id)a3;
- (void)registerObserver:(id)a3 queue:(id)a4;
- (void)removeFeatureSettingValueForKey:(id)a3 completion:(id)a4;
- (void)resetOnboardingWithCompletion:(id)a3;
- (void)saveOnboardingCompletion:(id)a3 settings:(id)a4 completion:(id)a5;
- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)a3 countryCodeProvenance:(int64_t)a4 date:(id)a5 settings:(id)a6 completion:(id)a7;
- (void)setFeatureSettingData:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setFeatureSettingNumber:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setFeatureSettingString:(id)a3 forKey:(id)a4 completion:(id)a5;
@end

@implementation HDFeatureAvailabilityManager

- (HDFeatureAvailabilityManager)initWithProfile:(id)a3 featureIdentifier:(id)a4 currentOnboardingVersion:(int64_t)a5 loggingCategory:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = +[HDRegionAvailabilityProvider uncheckedAvailability];
  v14 = [(HDFeatureAvailabilityManager *)self initWithProfile:v12 featureIdentifier:v11 currentOnboardingVersion:a5 pairedDeviceCapability:0 regionAvailabilityProvider:v13 loggingCategory:v10];

  return v14;
}

- (HDFeatureAvailabilityManager)initWithProfile:(id)a3 featureIdentifier:(id)a4 currentOnboardingVersion:(int64_t)a5 pairedDeviceCapability:(id)a6 regionAvailabilityProvider:(id)a7 loggingCategory:(id)a8
{
  v14 = MEMORY[0x277CCD420];
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a4;
  v19 = a3;
  v20 = [v14 noRequirements];
  v21 = objc_alloc_init(HDFeatureNeverDisabledOrExpiredProvider);
  v22 = [(HDFeatureAvailabilityManager *)self initWithProfile:v19 featureIdentifier:v18 availabilityRequirements:v20 currentOnboardingVersion:a5 pairedDeviceCapability:v17 regionAvailabilityProvider:v16 disableAndExpiryProvider:v21 loggingCategory:v15];

  return v22;
}

- (HDFeatureAvailabilityManager)initWithProfile:(id)a3 featureIdentifier:(id)a4 availabilityRequirements:(id)a5 currentOnboardingVersion:(int64_t)a6 pairedDeviceCapability:(id)a7 regionAvailabilityProvider:(id)a8 disableAndExpiryProvider:(id)a9 loggingCategory:(id)a10
{
  v16 = MEMORY[0x277CCACA8];
  v28 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v27 = a5;
  v20 = a4;
  v21 = a3;
  v30 = [v16 stringWithFormat:@"%ld", a6];
  v29 = [objc_alloc(MEMORY[0x277CCD3D8]) initWithFeatureVersion:v30 updateVersion:v30 UDIDeviceIdentifier:0 yearOfRelease:0];
  v26 = [[HDLocalFeatureAttributesProvider alloc] initWithLocalFeatureAttributes:v29];
  v22 = [v21 daemon];
  v23 = [v22 nanoRegistryDeviceCapabilityProvider];

  v24 = [[HDFeatureAvailabilityOnboardingEligibilityDeterminer alloc] initWithFeatureIdentifier:v20 currentOnboardingVersion:a6 pairedDeviceCapability:v19 pairedDeviceCapabilityProvider:v23 regionAvailabilityProvider:v18 disableAndExpiryProvider:v17 loggingCategory:v28];
  v32 = [(HDFeatureAvailabilityManager *)self initWithProfile:v21 featureIdentifier:v20 availabilityRequirements:v27 currentOnboardingVersion:a6 pairedDeviceCapability:v19 pairedFeatureAttributesProvider:v26 regionAvailabilityProvider:v18 disableAndExpiryProvider:v17 onboardingEligibilityDeterminer:v24 featureSettingsAtOnboardingTimeValidator:0 loggingCategory:v28];

  return v32;
}

- (HDFeatureAvailabilityManager)initWithProfile:(id)a3 featureIdentifier:(id)a4 availabilityRequirements:(id)a5 currentOnboardingVersion:(int64_t)a6 pairedDeviceCapability:(id)a7 pairedFeatureAttributesProvider:(id)a8 regionAvailabilityProvider:(id)a9 disableAndExpiryProvider:(id)a10 loggingCategory:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v29 = a8;
  v20 = a7;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [v23 daemon];
  v28 = [v24 nanoRegistryDeviceCapabilityProvider];

  v25 = [[HDFeatureAvailabilityOnboardingEligibilityDeterminer alloc] initWithFeatureIdentifier:v22 currentOnboardingVersion:a6 pairedDeviceCapability:v20 pairedDeviceCapabilityProvider:v28 regionAvailabilityProvider:v19 disableAndExpiryProvider:v18 loggingCategory:v17];
  v26 = [(HDFeatureAvailabilityManager *)self initWithProfile:v23 featureIdentifier:v22 availabilityRequirements:v21 currentOnboardingVersion:a6 pairedDeviceCapability:v20 pairedFeatureAttributesProvider:v29 regionAvailabilityProvider:v19 disableAndExpiryProvider:v18 onboardingEligibilityDeterminer:v25 featureSettingsAtOnboardingTimeValidator:0 loggingCategory:v17];

  return v26;
}

- (HDFeatureAvailabilityManager)initWithProfile:(id)a3 featureIdentifier:(id)a4 availabilityRequirements:(id)a5 currentOnboardingVersion:(int64_t)a6 pairedDeviceCapability:(id)a7 pairedFeatureAttributesProvider:(id)a8 regionAvailabilityProvider:(id)a9 disableAndExpiryProvider:(id)a10 onboardingEligibilityDeterminer:(id)a11 featureSettingsAtOnboardingTimeValidator:(id)a12 loggingCategory:(id)a13
{
  v17 = a3;
  obj = a4;
  v42 = a4;
  v18 = a5;
  v41 = a7;
  v40 = a8;
  v39 = a9;
  v38 = a10;
  v37 = a11;
  v19 = a12;
  v43 = a13;
  v44.receiver = self;
  v44.super_class = HDFeatureAvailabilityManager;
  v20 = [(HDFeatureAvailabilityManager *)&v44 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_profile, v17);
    objc_storeStrong(&v21->_loggingCategory, a13);
    objc_storeStrong(&v21->_featureIdentifier, obj);
    v21->_currentOnboardingVersion = a6;
    objc_storeStrong(&v21->_pairedDeviceCapability, a7);
    v22 = [v17 daemon];
    v23 = [v22 nanoRegistryDeviceCapabilityProvider];
    pairedDeviceCapabilityProvider = v21->_pairedDeviceCapabilityProvider;
    v21->_pairedDeviceCapabilityProvider = v23;

    objc_storeStrong(&v21->_pairedFeatureAttributesProvider, a8);
    objc_storeStrong(&v21->_regionAvailabilityProvider, a9);
    objc_storeStrong(&v21->_disableAndExpiryProvider, a10);
    objc_storeStrong(&v21->_onboardingEligibilityDeterminer, a11);
    if (v18)
    {
      v25 = v18;
    }

    else
    {
      v18 = 0;
      v25 = [MEMORY[0x277CCD420] noRequirements];
    }

    requirements = v21->_requirements;
    v21->_requirements = v25;

    v27 = objc_alloc(MEMORY[0x277CCD738]);
    v28 = [(HDFeatureAvailabilityManager *)v21 description];
    v29 = [v27 initWithName:v28 loggingCategory:v43];
    observers = v21->_observers;
    v21->_observers = v29;

    v31 = HKCreateSerialDispatchQueue();
    queue = v21->_queue;
    v21->_queue = v31;

    [(HDPairedDeviceCapabilityProviding *)v21->_pairedDeviceCapabilityProvider registerObserver:v21 queue:v21->_queue];
    [(HDFeatureDisableAndExpiryProviding *)v21->_disableAndExpiryProvider setDelegate:v21];
    if ([(HDRegionAvailabilityProviding *)v21->_regionAvailabilityProvider conformsToProtocol:&unk_283CC2F60])
    {
      [(HDRegionAvailabilityProviding *)v21->_regionAvailabilityProvider setDelegate:v21];
    }

    objc_storeStrong(&v21->_featureSettingsAtOnboardingTimeValidator, a12);
  }

  return v21;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained featureSettingsManager];
  [v4 unregisterObserver:self];

  v5 = objc_loadWeakRetained(&self->_profile);
  v6 = [v5 onboardingCompletionManager];
  [v6 unregisterObserver:self];

  v7.receiver = self;
  v7.super_class = HDFeatureAvailabilityManager;
  [(HDFeatureAvailabilityManager *)&v7 dealloc];
}

- (id)featureOnboardingRecordWithError:(id *)a3
{
  v4 = self;
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v5 = [(HDFeatureAvailabilityManager *)self _onboardingCompletionsByStateWithError:?];
  v6 = v22;
  v7 = v6;
  if (v5)
  {
    v8 = [(HDFeatureAvailabilityManager *)v4 _onboardedCountryCodeSupportedStateFromOnboardingCompletionsByState:v5];
    if (v8 == 1)
    {
      v4 = 0;
LABEL_16:
      v10 = [objc_alloc(MEMORY[0x277CCD448]) initWithOnboardingState:v8 onboardingCompletionsByState:v5 featureSettings:v4];
      goto LABEL_22;
    }

    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(&v4->_profile);
      v12 = [WeakRetained featureSettingsManager];
      featureIdentifier = v4->_featureIdentifier;
      v23 = 0;
      v14 = [v12 featureSettingsForFeatureIdentifier:featureIdentifier error:&v23];
      v15 = v23;

      if (v15)
      {
        v16 = v15;
        _HKInitializeLogging();
        loggingCategory = v4->_loggingCategory;
        if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v25 = v4;
          v26 = 2114;
          v27 = v15;
          _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get keys/values out of feature settings domain: %{public}@", buf, 0x16u);
        }

        v4 = 0;
        v18 = v15;
      }

      else
      {
        v4 = v14;
        v18 = v7;
      }
    }

    else
    {
      v18 = v7;
    }

    v19 = v18;

    if (v4)
    {
      v7 = v19;
      goto LABEL_16;
    }

    v4 = v19;
    if (v4)
    {
      if (!a3)
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v4 = v6;
    if (v4)
    {
      if (!a3)
      {
LABEL_19:
        _HKLogDroppedError();
        v10 = 0;
        goto LABEL_20;
      }

LABEL_6:
      v9 = v4;
      v10 = 0;
      *a3 = v4;
LABEL_20:
      v7 = v4;
      goto LABEL_22;
    }
  }

  v7 = 0;
  v10 = 0;
LABEL_22:

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_onboardingCompletionsByStateWithError:(uint64_t)a1
{
  v57 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v5 = [WeakRetained onboardingCompletionManager];
    v6 = *(a1 + 24);
    v49 = 0;
    v7 = [v5 onboardingCompletionsForHighestVersionOfFeatureIdentifier:v6 error:&v49];
    v8 = v49;

    if (v7)
    {
      v9 = v7;
      v10 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v11 = *(a1 + 16);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v54 = a1;
        v55 = 2114;
        v56 = v8;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch highest version of onboarding completed: %{public}@", buf, 0x16u);
      }

      v12 = v8;
      v10 = v12;
      if (v12)
      {
        v13 = v12;
      }
    }

    v14 = v10;
    v15 = v14;
    if (!v7)
    {
      v17 = v14;
      if (v17)
      {
        if (a2)
        {
          v38 = v17;
          v37 = 0;
          *a2 = v17;
        }

        else
        {
          _HKLogDroppedError();
          v37 = 0;
        }

        v18 = v17;
      }

      else
      {
        v18 = 0;
        v37 = 0;
      }

      goto LABEL_31;
    }

    v16 = *(a1 + 88);
    v48 = v15;
    v17 = [v16 onboardingEligibilitiesForOnboardingCompletions:v7 error:&v48];
    v18 = v48;

    if (v17)
    {
      v42 = v18;
      v43 = v7;
      v19 = MEMORY[0x277CBEB38];
      v51[0] = &unk_283CB0A08;
      v20 = [MEMORY[0x277CBEB18] array];
      v52[0] = v20;
      v51[1] = &unk_283CB0A50;
      v21 = [MEMORY[0x277CBEB18] array];
      v52[1] = v21;
      v51[2] = &unk_283CB0A38;
      v22 = [MEMORY[0x277CBEB18] array];
      v52[2] = v22;
      v51[3] = &unk_283CB0A20;
      v23 = [MEMORY[0x277CBEB18] array];
      v52[3] = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:4];
      v25 = [v19 dictionaryWithDictionary:v24];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v26 = v17;
      v27 = [v26 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v45;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v45 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v44 + 1) + 8 * i);
            v32 = MEMORY[0x277CCABB0];
            v33 = [v31 onboardingEligibility];
            v34 = [v32 numberWithInteger:{objc_msgSend(v33, "onboardedCountrySupportedState")}];
            v35 = [v25 objectForKeyedSubscript:v34];
            v36 = [v31 onboardingCompletion];
            [v35 addObject:v36];
          }

          v28 = [v26 countByEnumeratingWithState:&v44 objects:v50 count:16];
        }

        while (v28);
      }

      v37 = [v25 hk_map:&__block_literal_global_64];
      v7 = v43;
      v18 = v42;
      goto LABEL_30;
    }

    v25 = v18;
    if (v25)
    {
      if (a2)
      {
        v39 = v25;
        v37 = 0;
        *a2 = v25;
LABEL_30:

LABEL_31:
        goto LABEL_32;
      }

      _HKLogDroppedError();
    }

    v37 = 0;
    goto LABEL_30;
  }

  v37 = 0;
LABEL_32:
  v40 = *MEMORY[0x277D85DE8];

  return v37;
}

- (uint64_t)_onboardedCountryCodeSupportedStateFromOnboardingCompletionsByState:(uint64_t)a1
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = [&unk_283CAEA88 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v15;
        a1 = 3;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(&unk_283CAEA88);
            }

            v9 = *(*(&v14 + 1) + 8 * i);
            v10 = [v4 objectForKeyedSubscript:v9];
            v11 = [v10 count];

            if (v11)
            {
              a1 = [v9 integerValue];
              goto LABEL_15;
            }
          }

          v6 = [&unk_283CAEA88 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        a1 = 3;
      }
    }

    else
    {
      a1 = 1;
    }
  }

LABEL_15:

  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

- (void)getFeatureOnboardingRecordWithCompletion:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(HDFeatureAvailabilityManager *)self featureOnboardingRecordWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (id)isCurrentOnboardingVersionCompletedWithError:(id *)a3
{
  v11 = 0;
  v4 = [(HDFeatureAvailabilityManager *)self onboardedCountryCodeSupportedStateWithError:&v11];
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isEqual:", &unk_283CB0A08)}];
  }

  else
  {
    v8 = v5;
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

  return v7;
}

- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(HDFeatureAvailabilityManager *)self isCurrentOnboardingVersionCompletedWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)a3
{
  v59 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v6 = [WeakRetained onboardingCompletionManager];
    featureIdentifier = self->_featureIdentifier;
    v53 = 0;
    v8 = [v6 onboardingCompletionsForLowestVersionOfFeatureIdentifier:featureIdentifier error:&v53];
    v9 = v53;

    if (v8)
    {
      v10 = v8;
      v11 = 0;
    }

    else
    {
      _HKInitializeLogging();
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v56 = self;
        v57 = 2114;
        v58 = v9;
        _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch lowest version of onboarding completed: %{public}@", buf, 0x16u);
      }

      v13 = v9;
      v11 = v13;
      if (v13)
      {
        v14 = v13;
      }
    }
  }

  else
  {
    v11 = 0;
    v8 = 0;
  }

  v15 = v11;
  v16 = v15;
  if (!v8)
  {
    v16 = v15;
    if (v16)
    {
      if (a3)
      {
        v38 = v16;
        *a3 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_39;
  }

  if (![v8 count])
  {
    _HKInitializeLogging();
    v41 = self->_loggingCategory;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v56 = self;
      _os_log_impl(&dword_228986000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@] No onboarding completion found", buf, 0xCu);
    }

LABEL_39:
    v42 = 0;
    goto LABEL_45;
  }

  v17 = [MEMORY[0x277CBEAA8] distantFuture];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v46 = v8;
  obj = v8;
  v18 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v18)
  {
    v19 = v18;
    v45 = a3;
    v20 = *v50;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        v22 = v16;
        if (*v50 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v49 + 1) + 8 * i);
        v24 = [v23 countryCode];
        v48 = v16;
        v25 = [(HDFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:v24 error:&v48];
        v16 = v48;

        if (!v25)
        {
          v39 = v16;
          v16 = v39;
          v8 = v46;
          if (v39)
          {
            if (v45)
            {
              v40 = v39;
              *v45 = v16;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          goto LABEL_43;
        }

        v26 = [v25 isEligible];
        _HKInitializeLogging();
        v27 = self->_loggingCategory;
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (v26)
        {
          if (v28)
          {
            v29 = v27;
            v30 = HKSensitiveLogItem();
            *buf = 138543618;
            v56 = self;
            v57 = 2114;
            v58 = v30;
            _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding completion found with supported country code: %{public}@", buf, 0x16u);
          }

          v31 = [v23 completionDate];
          v32 = [v17 earlierDate:v31];

          v17 = v32;
        }

        else if (v28)
        {
          v33 = v27;
          v34 = HKSensitiveLogItem();
          *buf = 138543618;
          v56 = self;
          v57 = 2114;
          v58 = v34;
          _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding completion found with unsupported country code: %{public}@", buf, 0x16u);
        }
      }

      v19 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v35 = [MEMORY[0x277CBEAA8] distantFuture];
  v36 = [v17 isEqualToDate:v35];

  if (v36)
  {
    _HKInitializeLogging();
    v37 = self->_loggingCategory;
    v8 = v46;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v56 = self;
      _os_log_impl(&dword_228986000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] No onboarding completions meet the current requirements", buf, 0xCu);
    }

LABEL_43:
    v42 = 0;
  }

  else
  {
    v17 = v17;
    v42 = v17;
    v8 = v46;
  }

LABEL_45:
  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (id)canCompleteOnboardingForCountryCode:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v15 = 0;
  v7 = [(HDFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:v6 error:&v15];
  v8 = v15;
  if (v7)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "isEligible")}];
    goto LABEL_14;
  }

  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v17 = self;
    v18 = 2114;
    v19 = v8;
    _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to determine onboarding eligibility: %{public}@", buf, 0x16u);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else if (v8)
  {
LABEL_5:
    v11 = v8;
    goto LABEL_8;
  }

  v11 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Unexpected failure when evaluating eligibility for %@", v6}];
  if (v11)
  {
LABEL_8:
    if (a4)
    {
      v12 = v11;
      *a4 = v11;
    }

    else
    {
      _HKLogDroppedError();
    }

    if (v8)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  v9 = 0;
LABEL_14:

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

void __71__HDFeatureAvailabilityManager__onboardingCompletionsByStateWithError___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [MEMORY[0x277CBEA60] arrayWithArray:v6];
    v7[2](v7, v9, v8);
  }
}

- (id)onboardedCountryCodeSupportedStateWithError:(id *)a3
{
  v12 = 0;
  v5 = [(HDFeatureAvailabilityManager *)self _onboardingCompletionsByStateWithError:?];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDFeatureAvailabilityManager _onboardedCountryCodeSupportedStateFromOnboardingCompletionsByState:](self, v5)}];
  }

  else
  {
    v9 = v6;
    if (v9)
    {
      if (a3)
      {
        v10 = v9;
        *a3 = v9;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v8 = 0;
  }

  return v8;
}

- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)a3
{
  pairedDeviceCapabilityProvider = self->_pairedDeviceCapabilityProvider;
  if (pairedDeviceCapabilityProvider && (pairedDeviceCapability = self->_pairedDeviceCapability) != 0)
  {
    v8 = [(HDPairedDeviceCapabilityProviding *)pairedDeviceCapabilityProvider isCapabilitySupportedOnActivePairedDevice:pairedDeviceCapability error:a3];
  }

  else
  {
    v8 = MEMORY[0x277CBEC28];
  }

  return v8;
}

- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)a3 countryCodeProvenance:(int64_t)a4 date:(id)a5 settings:(id)a6 completion:(id)a7
{
  v22 = a3;
  v12 = a5;
  v13 = MEMORY[0x277CCD740];
  v14 = a7;
  v15 = a6;
  v16 = [v13 alloc];
  v17 = v16;
  featureIdentifier = self->_featureIdentifier;
  currentOnboardingVersion = self->_currentOnboardingVersion;
  if (v12)
  {
    v20 = [v16 initWithFeatureIdentifier:self->_featureIdentifier version:self->_currentOnboardingVersion completionDate:v12 countryCode:v22 countryCodeProvenance:a4];
  }

  else
  {
    v21 = [MEMORY[0x277CBEAA8] date];
    v20 = [v17 initWithFeatureIdentifier:featureIdentifier version:currentOnboardingVersion completionDate:v21 countryCode:v22 countryCodeProvenance:a4];
  }

  [(HDFeatureAvailabilityManager *)self saveOnboardingCompletion:v20 settings:v15 completion:v14];
}

- (void)saveOnboardingCompletion:(id)a3 settings:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  featureSettingsAtOnboardingTimeValidator = self->_featureSettingsAtOnboardingTimeValidator;
  v13 = v11;
  if (featureSettingsAtOnboardingTimeValidator && (v26 = 0, [(HDFeatureSettingsValidating *)featureSettingsAtOnboardingTimeValidator featureSettingsGivenBaseSettings:v11 onboardingCompletion:v8 error:&v26], v13 = objc_claimAutoreleasedReturnValue(), v14 = v26, v11, v14))
  {
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Feature settings failed validation: %{public}@", buf, 0x16u);
    }

    v10[2](v10, 0, v14);
  }

  else
  {
    v25 = 0;
    v16 = v8;
    v17 = v13;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v19 = [WeakRetained database];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __88__HDFeatureAvailabilityManager__insertOnboardingCompletion_featureSettingsValues_error___block_invoke;
    v28 = &unk_27861B120;
    v13 = v17;
    v29 = v13;
    v30 = WeakRetained;
    v20 = v16;
    v31 = v20;
    v32 = self;
    v21 = WeakRetained;
    v22 = [(HDHealthEntity *)HDOnboardingCompletionEntity performWriteTransactionWithHealthDatabase:v19 error:&v25 block:buf inaccessibilityHandler:0];

    v14 = v25;
    _HKInitializeLogging();
    v23 = self->_loggingCategory;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did set current onboarding version completed with success", buf, 0xCu);
      }

      [(HDFeatureAvailabilityManager *)self _triggerImmediateSyncWithReason:?];
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set current onboarding version completed: %{public}@", buf, 0x16u);
    }

    v10[2](v10, v22, v14);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_triggerImmediateSyncWithReason:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v5 = [WeakRetained nanoSyncManager];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@", a1, v3];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__HDFeatureAvailabilityManager__triggerImmediateSyncWithReason___block_invoke;
    v17[3] = &unk_278616020;
    v17[4] = a1;
    v7 = v3;
    v18 = v7;
    [v5 syncHealthDataWithOptions:0 reason:v6 completion:v17];

    v8 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
    v9 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v8];
    v10 = objc_loadWeakRetained((a1 + 8));
    v11 = [v10 cloudSyncManager];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@", a1, v7];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__HDFeatureAvailabilityManager__triggerImmediateSyncWithReason___block_invoke_412;
    v15[3] = &unk_278616020;
    v15[4] = a1;
    v13 = v7;
    v16 = v13;
    [v11 syncWithRequest:v9 reason:v12 completion:v15];

    v14 = *(a1 + 120);
    if (v14)
    {
      (*(v14 + 16))(v14, v13);
    }
  }
}

- (void)setFeatureSettingData:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [WeakRetained featureSettingsManager];
  featureIdentifier = self->_featureIdentifier;
  v18 = 0;
  v14 = [v12 setFeatureSettingsData:v10 forKey:v9 featureIdentifier:featureIdentifier error:&v18];

  v15 = v18;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (v14)
  {
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = self;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did set data for key in feature settings domain with success", buf, 0xCu);
    }

    [(HDFeatureAvailabilityManager *)self _triggerImmediateSyncWithReason:?];
  }

  else if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v20 = self;
    v21 = 2114;
    v22 = v15;
    _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set data for key in feature settings domain, with error: %{public}@", buf, 0x16u);
  }

  v8[2](v8, v14, v15);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingNumber:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [WeakRetained featureSettingsManager];
  featureIdentifier = self->_featureIdentifier;
  v18 = 0;
  v14 = [v12 setFeatureSettingsNumber:v10 forKey:v9 featureIdentifier:featureIdentifier suppressNotificationsToObserver:0 error:&v18];

  v15 = v18;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (v14)
  {
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = self;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did set number for key in feature settings domain with success", buf, 0xCu);
    }

    [(HDFeatureAvailabilityManager *)self _triggerImmediateSyncWithReason:?];
  }

  else if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v20 = self;
    v21 = 2114;
    v22 = v15;
    _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set number for key in feature settings domain, with error: %{public}@", buf, 0x16u);
  }

  v8[2](v8, v14, v15);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingString:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [WeakRetained featureSettingsManager];
  featureIdentifier = self->_featureIdentifier;
  v18 = 0;
  v14 = [v12 setFeatureSettingsString:v10 forKey:v9 featureIdentifier:featureIdentifier error:&v18];

  v15 = v18;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (v14)
  {
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = self;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did set string for key in feature settings domain with success", buf, 0xCu);
    }

    [(HDFeatureAvailabilityManager *)self _triggerImmediateSyncWithReason:?];
  }

  else if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v20 = self;
    v21 = 2114;
    v22 = v15;
    _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set string for key in feature settings domain, with error: %{public}@", buf, 0x16u);
  }

  v8[2](v8, v14, v15);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeFeatureSettingValueForKey:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [WeakRetained featureSettingsManager];
  featureIdentifier = self->_featureIdentifier;
  v15 = 0;
  v11 = [v9 removeFeatureSettingsValueForKey:v7 featureIdentifier:featureIdentifier error:&v15];

  v12 = v15;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (v11)
  {
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = self;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did remove value for key in feature settings domain with success", buf, 0xCu);
    }

    [(HDFeatureAvailabilityManager *)self _triggerImmediateSyncWithReason:?];
  }

  else if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v17 = self;
    v18 = 2114;
    v19 = v12;
    _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to remove value for key in feature settings domain, with error: %{public}@", buf, 0x16u);
  }

  v6[2](v6, v11, v12);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)resetOnboardingWithCompletion:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained database];
  v15 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HDFeatureAvailabilityManager_resetOnboardingWithCompletion___block_invoke;
  v12[3] = &unk_278613218;
  v7 = WeakRetained;
  v13 = v7;
  v14 = self;
  v8 = [(HDHealthEntity *)HDOnboardingCompletionEntity performWriteTransactionWithHealthDatabase:v6 error:&v15 block:v12 inaccessibilityHandler:0];
  v9 = v15;

  if (v8)
  {
    [(HDFeatureAvailabilityManager *)self _triggerImmediateSyncWithReason:?];
  }

  else
  {
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = self;
      v18 = 2114;
      v19 = v9;
      _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to reset onboarding: %{public}@", buf, 0x16u);
    }
  }

  v4[2](v4, v8, v9);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __62__HDFeatureAvailabilityManager_resetOnboardingWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [*(a1 + 32) featureSettingsManager];
  v6 = *(a1 + 40);
  v7 = *(v6 + 24);
  v18 = 0;
  v8 = [v5 resetFeatureSettingsForFeatureIdentifier:v7 suppressNotificationsToObserver:v6 error:&v18];
  v9 = v18;

  if ((v8 & 1) == 0)
  {
    v13 = v9;
    if (!v13)
    {
LABEL_10:

      v14 = 0;
      goto LABEL_11;
    }

    if (!a3)
    {
LABEL_9:
      _HKLogDroppedError();
      goto LABEL_10;
    }

LABEL_6:
    v15 = v13;
    *a3 = v13;
    goto LABEL_10;
  }

  v10 = [*(a1 + 32) onboardingCompletionManager];
  v11 = *(*(a1 + 40) + 24);
  v17 = v9;
  v12 = [v10 resetOnboardingCompletionsForFeature:v11 error:&v17];
  v13 = v17;

  if ((v12 & 1) == 0)
  {
    v13 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }

    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v14 = 1;
LABEL_11:

  return v14;
}

uint64_t __88__HDFeatureAvailabilityManager__insertOnboardingCompletion_featureSettingsValues_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (*(a1 + 32))
  {
    v6 = [*(a1 + 40) featureSettingsManager];
    v7 = [*(a1 + 32) keyValueStorage];
    v8 = [*(a1 + 48) featureIdentifier];
    v9 = *(a1 + 56);
    v20 = 0;
    v10 = [v6 setFeatureSettingsValues:v7 featureIdentifier:v8 suppressNotificationsToObserver:v9 error:&v20];
    v11 = v20;

    if ((v10 & 1) == 0)
    {
      v12 = v11;
      if (!v12)
      {
LABEL_14:

        v17 = 0;
        goto LABEL_15;
      }

      if (a3)
      {
LABEL_5:
        v13 = v12;
        *a3 = v12;
        goto LABEL_14;
      }

LABEL_13:
      _HKLogDroppedError();
      goto LABEL_14;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = [*(a1 + 40) onboardingCompletionManager];
  v15 = *(a1 + 48);
  v19 = v11;
  v16 = [v14 insertOnboardingCompletion:v15 error:&v19];
  v12 = v19;

  if ((v16 & 1) == 0 && (!*(a1 + 32) || ([v12 hk_isDuplicateObjectError] & 1) == 0))
  {
    v12 = v12;
    if (!v12)
    {
      goto LABEL_14;
    }

    if (a3)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  v17 = 1;
LABEL_15:

  return v17;
}

void __64__HDFeatureAvailabilityManager__triggerImmediateSyncWithReason___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v11 = 138543618;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] NanoSync completed after %{public}@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 40);
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v10;
    v15 = 2114;
    v16 = v5;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] NanoSync failed after %{public}@: %{public}@", &v11, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __64__HDFeatureAvailabilityManager__triggerImmediateSyncWithReason___block_invoke_412(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v8)
    {
      v9 = *(a1 + 40);
      v15 = 138543618;
      v16 = v6;
      v17 = 2114;
      v18 = v9;
      v10 = "[%{public}@] Cloud sync request completed after %{public}@";
      v11 = v7;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
    }
  }

  else if (v8)
  {
    v13 = *(a1 + 40);
    v15 = 138543874;
    v16 = v6;
    v17 = 2114;
    v18 = v13;
    v19 = 2114;
    v20 = v5;
    v10 = "[%{public}@] Cloud sync request failed after %{public}@: %{public}@";
    v11 = v7;
    v12 = 32;
    goto LABEL_6;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)registerObserver:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  observers = self->_observers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HDFeatureAvailabilityManager_registerObserver_queue___block_invoke;
  v11[3] = &unk_278613920;
  v12 = WeakRetained;
  v13 = self;
  v10 = WeakRetained;
  [(HKObserverSet *)observers registerObserver:v7 queue:v6 runIfFirstObserver:v11];
}

void __55__HDFeatureAvailabilityManager_registerObserver_queue___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) featureSettingsManager];
  [v2 registerObserver:*(a1 + 40) featureIdentifier:*(*(a1 + 40) + 24) queue:*(*(a1 + 40) + 112)];

  v3 = [*(a1 + 32) onboardingCompletionManager];
  [v3 registerObserver:*(a1 + 40) featureIdentifier:*(*(a1 + 40) + 24) queue:*(*(a1 + 40) + 112)];

  [*(*(a1 + 40) + 48) registerObserver:*(a1 + 40) queue:*(*(a1 + 40) + 112)];
  v4 = [*(a1 + 32) database];
  v5 = [v4 isDataProtectedByFirstUnlockAvailable];

  if ((v5 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *(a1 + 40);
    v7 = *(v6 + 16);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] First unlock has not occurred, registering to notify when it has", buf, 0xCu);
    }

    v8 = [*(a1 + 32) database];
    v9 = *(a1 + 40);
    v10 = *(v9 + 112);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__HDFeatureAvailabilityManager_registerObserver_queue___block_invoke_413;
    v12[3] = &unk_278613968;
    v12[4] = v9;
    [v8 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:v10 block:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __55__HDFeatureAvailabilityManager_registerObserver_queue___block_invoke_413(uint64_t result)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 112));
    _HKInitializeLogging();
    v2 = *(v1 + 16);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v5) = 138543362;
      *(&v5 + 4) = v1;
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying for first unlock", &v5, 0xCu);
    }

    v3 = *(v1 + 104);
    *&v5 = MEMORY[0x277D85DD0];
    *(&v5 + 1) = 3221225472;
    v6 = __76__HDFeatureAvailabilityManager__queue_dataProtectedByFirstUnlockIsAvailable__block_invoke;
    v7 = &unk_27861BF80;
    v8 = v1;
    result = [v3 notifyObservers:&v5];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __76__HDFeatureAvailabilityManager__queue_dataProtectedByFirstUnlockIsAvailable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_283D07E80])
  {
    [v3 featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:*(a1 + 32)];
  }
}

- (void)onboardingCompletionManager:(id)a3 didUpdateOnboardingCompletionsForFeatureIdentifier:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    observers = self->_observers;
    v8 = loggingCategory;
    v9 = [v6 numberWithUnsignedInteger:{-[HKObserverSet count](observers, "count")}];
    *buf = 138543618;
    v14 = self;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying %@ observers of onboarding completion update", buf, 0x16u);
  }

  v10 = self->_observers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __111__HDFeatureAvailabilityManager_onboardingCompletionManager_didUpdateOnboardingCompletionsForFeatureIdentifier___block_invoke;
  v12[3] = &unk_27861BF80;
  v12[4] = self;
  [(HKObserverSet *)v10 notifyObservers:v12];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)featureSettingsManager:(id)a3 didUpdateSettingsForFeatureIdentifier:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    observers = self->_observers;
    v8 = loggingCategory;
    v9 = [v6 numberWithUnsignedInteger:{-[HKObserverSet count](observers, "count")}];
    *buf = 138543618;
    v14 = self;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying %@ observers of feature settings update", buf, 0x16u);
  }

  v10 = self->_observers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__HDFeatureAvailabilityManager_featureSettingsManager_didUpdateSettingsForFeatureIdentifier___block_invoke;
  v12[3] = &unk_27861BF80;
  v12[4] = self;
  [(HKObserverSet *)v10 notifyObservers:v12];
  v11 = *MEMORY[0x277D85DE8];
}

void __93__HDFeatureAvailabilityManager_featureSettingsManager_didUpdateSettingsForFeatureIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureAvailabilityProvidingDidUpdateSettings:*(a1 + 32)];
  }
}

- (void)pairedDeviceCapabilitiesDidUpdate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x277CCABB0];
    observers = self->_observers;
    v7 = loggingCategory;
    v8 = [v5 numberWithUnsignedInteger:{-[HKObserverSet count](observers, "count")}];
    *buf = 138543618;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying %@ observers of paired device capability update", buf, 0x16u);
  }

  v9 = self->_observers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__HDFeatureAvailabilityManager_pairedDeviceCapabilitiesDidUpdate___block_invoke;
  v11[3] = &unk_27861BF80;
  v11[4] = self;
  [(HKObserverSet *)v9 notifyObservers:v11];
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HDFeatureAvailabilityManager_pairedDeviceCapabilitiesDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 conformsToProtocol:&unk_283D07E80])
  {
    v3 = v5;
    if (objc_opt_respondsToSelector())
    {
      [v3 featureAvailabilityExtensionDidUpdatePairedDeviceCapability:*(a1 + 32)];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)regionAvailabilityProvidingDidUpdate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x277CCABB0];
    observers = self->_observers;
    v7 = loggingCategory;
    v8 = [v5 numberWithUnsignedInteger:{-[HKObserverSet count](observers, "count")}];
    *buf = 138543618;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying %@ observers of region availability update", buf, 0x16u);
  }

  v9 = self->_observers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HDFeatureAvailabilityManager_regionAvailabilityProvidingDidUpdate___block_invoke;
  v11[3] = &unk_27861BF80;
  v11[4] = self;
  [(HKObserverSet *)v9 notifyObservers:v11];
  v10 = *MEMORY[0x277D85DE8];
}

void __69__HDFeatureAvailabilityManager_regionAvailabilityProvidingDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_283D07E80])
  {
    [v3 featureAvailabilityExtensionDidUpdateRegionAvailability:*(a1 + 32)];
  }
}

- (void)disableAndExpiryProviderDidUpdate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x277CCABB0];
    observers = self->_observers;
    v7 = loggingCategory;
    v8 = [v5 numberWithUnsignedInteger:{-[HKObserverSet count](observers, "count")}];
    *buf = 138543618;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying %@ observers of disable and expiry update", buf, 0x16u);
  }

  v9 = self->_observers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__HDFeatureAvailabilityManager_disableAndExpiryProviderDidUpdate___block_invoke;
  v11[3] = &unk_27861BF80;
  v11[4] = self;
  [(HKObserverSet *)v9 notifyObservers:v11];
  v10 = *MEMORY[0x277D85DE8];
}

@end