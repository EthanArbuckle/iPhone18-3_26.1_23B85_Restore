@interface HDFeatureAvailabilityManager
- (HDFeatureAvailabilityManager)initWithProfile:(id)profile featureIdentifier:(id)identifier availabilityRequirements:(id)requirements currentOnboardingVersion:(int64_t)version pairedDeviceCapability:(id)capability pairedFeatureAttributesProvider:(id)provider regionAvailabilityProvider:(id)availabilityProvider disableAndExpiryProvider:(id)self0 loggingCategory:(id)self1;
- (HDFeatureAvailabilityManager)initWithProfile:(id)profile featureIdentifier:(id)identifier availabilityRequirements:(id)requirements currentOnboardingVersion:(int64_t)version pairedDeviceCapability:(id)capability pairedFeatureAttributesProvider:(id)provider regionAvailabilityProvider:(id)availabilityProvider disableAndExpiryProvider:(id)self0 onboardingEligibilityDeterminer:(id)self1 featureSettingsAtOnboardingTimeValidator:(id)self2 loggingCategory:(id)self3;
- (HDFeatureAvailabilityManager)initWithProfile:(id)profile featureIdentifier:(id)identifier availabilityRequirements:(id)requirements currentOnboardingVersion:(int64_t)version pairedDeviceCapability:(id)capability regionAvailabilityProvider:(id)provider disableAndExpiryProvider:(id)expiryProvider loggingCategory:(id)self0;
- (HDFeatureAvailabilityManager)initWithProfile:(id)profile featureIdentifier:(id)identifier currentOnboardingVersion:(int64_t)version loggingCategory:(id)category;
- (HDFeatureAvailabilityManager)initWithProfile:(id)profile featureIdentifier:(id)identifier currentOnboardingVersion:(int64_t)version pairedDeviceCapability:(id)capability regionAvailabilityProvider:(id)provider loggingCategory:(id)category;
- (id)_onboardingCompletionsByStateWithError:(uint64_t)error;
- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error;
- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)error;
- (id)featureOnboardingRecordWithError:(id *)error;
- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error;
- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)error;
- (id)onboardedCountryCodeSupportedStateWithError:(id *)error;
- (uint64_t)_onboardedCountryCodeSupportedStateFromOnboardingCompletionsByState:(uint64_t)state;
- (void)_triggerImmediateSyncWithReason:(uint64_t)reason;
- (void)dealloc;
- (void)disableAndExpiryProviderDidUpdate:(id)update;
- (void)featureSettingsManager:(id)manager didUpdateSettingsForFeatureIdentifier:(id)identifier;
- (void)getFeatureOnboardingRecordWithCompletion:(id)completion;
- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)completion;
- (void)onboardingCompletionManager:(id)manager didUpdateOnboardingCompletionsForFeatureIdentifier:(id)identifier;
- (void)pairedDeviceCapabilitiesDidUpdate:(id)update;
- (void)regionAvailabilityProvidingDidUpdate:(id)update;
- (void)registerObserver:(id)observer queue:(id)queue;
- (void)removeFeatureSettingValueForKey:(id)key completion:(id)completion;
- (void)resetOnboardingWithCompletion:(id)completion;
- (void)saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5;
- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion;
- (void)setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion;
- (void)setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion;
- (void)setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion;
@end

@implementation HDFeatureAvailabilityManager

- (HDFeatureAvailabilityManager)initWithProfile:(id)profile featureIdentifier:(id)identifier currentOnboardingVersion:(int64_t)version loggingCategory:(id)category
{
  categoryCopy = category;
  identifierCopy = identifier;
  profileCopy = profile;
  v13 = +[HDRegionAvailabilityProvider uncheckedAvailability];
  v14 = [(HDFeatureAvailabilityManager *)self initWithProfile:profileCopy featureIdentifier:identifierCopy currentOnboardingVersion:version pairedDeviceCapability:0 regionAvailabilityProvider:v13 loggingCategory:categoryCopy];

  return v14;
}

- (HDFeatureAvailabilityManager)initWithProfile:(id)profile featureIdentifier:(id)identifier currentOnboardingVersion:(int64_t)version pairedDeviceCapability:(id)capability regionAvailabilityProvider:(id)provider loggingCategory:(id)category
{
  v14 = MEMORY[0x277CCD420];
  categoryCopy = category;
  providerCopy = provider;
  capabilityCopy = capability;
  identifierCopy = identifier;
  profileCopy = profile;
  noRequirements = [v14 noRequirements];
  v21 = objc_alloc_init(HDFeatureNeverDisabledOrExpiredProvider);
  v22 = [(HDFeatureAvailabilityManager *)self initWithProfile:profileCopy featureIdentifier:identifierCopy availabilityRequirements:noRequirements currentOnboardingVersion:version pairedDeviceCapability:capabilityCopy regionAvailabilityProvider:providerCopy disableAndExpiryProvider:v21 loggingCategory:categoryCopy];

  return v22;
}

- (HDFeatureAvailabilityManager)initWithProfile:(id)profile featureIdentifier:(id)identifier availabilityRequirements:(id)requirements currentOnboardingVersion:(int64_t)version pairedDeviceCapability:(id)capability regionAvailabilityProvider:(id)provider disableAndExpiryProvider:(id)expiryProvider loggingCategory:(id)self0
{
  v16 = MEMORY[0x277CCACA8];
  categoryCopy = category;
  expiryProviderCopy = expiryProvider;
  providerCopy = provider;
  capabilityCopy = capability;
  requirementsCopy = requirements;
  identifierCopy = identifier;
  profileCopy = profile;
  version = [v16 stringWithFormat:@"%ld", version];
  v29 = [objc_alloc(MEMORY[0x277CCD3D8]) initWithFeatureVersion:version updateVersion:version UDIDeviceIdentifier:0 yearOfRelease:0];
  v26 = [[HDLocalFeatureAttributesProvider alloc] initWithLocalFeatureAttributes:v29];
  daemon = [profileCopy daemon];
  nanoRegistryDeviceCapabilityProvider = [daemon nanoRegistryDeviceCapabilityProvider];

  v24 = [[HDFeatureAvailabilityOnboardingEligibilityDeterminer alloc] initWithFeatureIdentifier:identifierCopy currentOnboardingVersion:version pairedDeviceCapability:capabilityCopy pairedDeviceCapabilityProvider:nanoRegistryDeviceCapabilityProvider regionAvailabilityProvider:providerCopy disableAndExpiryProvider:expiryProviderCopy loggingCategory:categoryCopy];
  v32 = [(HDFeatureAvailabilityManager *)self initWithProfile:profileCopy featureIdentifier:identifierCopy availabilityRequirements:requirementsCopy currentOnboardingVersion:version pairedDeviceCapability:capabilityCopy pairedFeatureAttributesProvider:v26 regionAvailabilityProvider:providerCopy disableAndExpiryProvider:expiryProviderCopy onboardingEligibilityDeterminer:v24 featureSettingsAtOnboardingTimeValidator:0 loggingCategory:categoryCopy];

  return v32;
}

- (HDFeatureAvailabilityManager)initWithProfile:(id)profile featureIdentifier:(id)identifier availabilityRequirements:(id)requirements currentOnboardingVersion:(int64_t)version pairedDeviceCapability:(id)capability pairedFeatureAttributesProvider:(id)provider regionAvailabilityProvider:(id)availabilityProvider disableAndExpiryProvider:(id)self0 loggingCategory:(id)self1
{
  categoryCopy = category;
  expiryProviderCopy = expiryProvider;
  availabilityProviderCopy = availabilityProvider;
  providerCopy = provider;
  capabilityCopy = capability;
  requirementsCopy = requirements;
  identifierCopy = identifier;
  profileCopy = profile;
  daemon = [profileCopy daemon];
  nanoRegistryDeviceCapabilityProvider = [daemon nanoRegistryDeviceCapabilityProvider];

  v25 = [[HDFeatureAvailabilityOnboardingEligibilityDeterminer alloc] initWithFeatureIdentifier:identifierCopy currentOnboardingVersion:version pairedDeviceCapability:capabilityCopy pairedDeviceCapabilityProvider:nanoRegistryDeviceCapabilityProvider regionAvailabilityProvider:availabilityProviderCopy disableAndExpiryProvider:expiryProviderCopy loggingCategory:categoryCopy];
  v26 = [(HDFeatureAvailabilityManager *)self initWithProfile:profileCopy featureIdentifier:identifierCopy availabilityRequirements:requirementsCopy currentOnboardingVersion:version pairedDeviceCapability:capabilityCopy pairedFeatureAttributesProvider:providerCopy regionAvailabilityProvider:availabilityProviderCopy disableAndExpiryProvider:expiryProviderCopy onboardingEligibilityDeterminer:v25 featureSettingsAtOnboardingTimeValidator:0 loggingCategory:categoryCopy];

  return v26;
}

- (HDFeatureAvailabilityManager)initWithProfile:(id)profile featureIdentifier:(id)identifier availabilityRequirements:(id)requirements currentOnboardingVersion:(int64_t)version pairedDeviceCapability:(id)capability pairedFeatureAttributesProvider:(id)provider regionAvailabilityProvider:(id)availabilityProvider disableAndExpiryProvider:(id)self0 onboardingEligibilityDeterminer:(id)self1 featureSettingsAtOnboardingTimeValidator:(id)self2 loggingCategory:(id)self3
{
  profileCopy = profile;
  obj = identifier;
  identifierCopy = identifier;
  requirementsCopy = requirements;
  capabilityCopy = capability;
  providerCopy = provider;
  availabilityProviderCopy = availabilityProvider;
  expiryProviderCopy = expiryProvider;
  determinerCopy = determiner;
  validatorCopy = validator;
  categoryCopy = category;
  v44.receiver = self;
  v44.super_class = HDFeatureAvailabilityManager;
  v20 = [(HDFeatureAvailabilityManager *)&v44 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_profile, profileCopy);
    objc_storeStrong(&v21->_loggingCategory, category);
    objc_storeStrong(&v21->_featureIdentifier, obj);
    v21->_currentOnboardingVersion = version;
    objc_storeStrong(&v21->_pairedDeviceCapability, capability);
    daemon = [profileCopy daemon];
    nanoRegistryDeviceCapabilityProvider = [daemon nanoRegistryDeviceCapabilityProvider];
    pairedDeviceCapabilityProvider = v21->_pairedDeviceCapabilityProvider;
    v21->_pairedDeviceCapabilityProvider = nanoRegistryDeviceCapabilityProvider;

    objc_storeStrong(&v21->_pairedFeatureAttributesProvider, provider);
    objc_storeStrong(&v21->_regionAvailabilityProvider, availabilityProvider);
    objc_storeStrong(&v21->_disableAndExpiryProvider, expiryProvider);
    objc_storeStrong(&v21->_onboardingEligibilityDeterminer, determiner);
    if (requirementsCopy)
    {
      noRequirements = requirementsCopy;
    }

    else
    {
      requirementsCopy = 0;
      noRequirements = [MEMORY[0x277CCD420] noRequirements];
    }

    requirements = v21->_requirements;
    v21->_requirements = noRequirements;

    v27 = objc_alloc(MEMORY[0x277CCD738]);
    v28 = [(HDFeatureAvailabilityManager *)v21 description];
    v29 = [v27 initWithName:v28 loggingCategory:categoryCopy];
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

    objc_storeStrong(&v21->_featureSettingsAtOnboardingTimeValidator, validator);
  }

  return v21;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  featureSettingsManager = [WeakRetained featureSettingsManager];
  [featureSettingsManager unregisterObserver:self];

  v5 = objc_loadWeakRetained(&self->_profile);
  onboardingCompletionManager = [v5 onboardingCompletionManager];
  [onboardingCompletionManager unregisterObserver:self];

  v7.receiver = self;
  v7.super_class = HDFeatureAvailabilityManager;
  [(HDFeatureAvailabilityManager *)&v7 dealloc];
}

- (id)featureOnboardingRecordWithError:(id *)error
{
  selfCopy = self;
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v5 = [(HDFeatureAvailabilityManager *)self _onboardingCompletionsByStateWithError:?];
  v6 = v22;
  v7 = v6;
  if (v5)
  {
    v8 = [(HDFeatureAvailabilityManager *)selfCopy _onboardedCountryCodeSupportedStateFromOnboardingCompletionsByState:v5];
    if (v8 == 1)
    {
      selfCopy = 0;
LABEL_16:
      v10 = [objc_alloc(MEMORY[0x277CCD448]) initWithOnboardingState:v8 onboardingCompletionsByState:v5 featureSettings:selfCopy];
      goto LABEL_22;
    }

    if (selfCopy)
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_profile);
      featureSettingsManager = [WeakRetained featureSettingsManager];
      featureIdentifier = selfCopy->_featureIdentifier;
      v23 = 0;
      v14 = [featureSettingsManager featureSettingsForFeatureIdentifier:featureIdentifier error:&v23];
      v15 = v23;

      if (v15)
      {
        v16 = v15;
        _HKInitializeLogging();
        loggingCategory = selfCopy->_loggingCategory;
        if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v25 = selfCopy;
          v26 = 2114;
          v27 = v15;
          _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get keys/values out of feature settings domain: %{public}@", buf, 0x16u);
        }

        selfCopy = 0;
        v18 = v15;
      }

      else
      {
        selfCopy = v14;
        v18 = v7;
      }
    }

    else
    {
      v18 = v7;
    }

    v19 = v18;

    if (selfCopy)
    {
      v7 = v19;
      goto LABEL_16;
    }

    selfCopy = v19;
    if (selfCopy)
    {
      if (!error)
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    }
  }

  else
  {
    selfCopy = v6;
    if (selfCopy)
    {
      if (!error)
      {
LABEL_19:
        _HKLogDroppedError();
        v10 = 0;
        goto LABEL_20;
      }

LABEL_6:
      v9 = selfCopy;
      v10 = 0;
      *error = selfCopy;
LABEL_20:
      v7 = selfCopy;
      goto LABEL_22;
    }
  }

  v7 = 0;
  v10 = 0;
LABEL_22:

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_onboardingCompletionsByStateWithError:(uint64_t)error
{
  v57 = *MEMORY[0x277D85DE8];
  if (error)
  {
    WeakRetained = objc_loadWeakRetained((error + 8));
    onboardingCompletionManager = [WeakRetained onboardingCompletionManager];
    v6 = *(error + 24);
    v49 = 0;
    v7 = [onboardingCompletionManager onboardingCompletionsForHighestVersionOfFeatureIdentifier:v6 error:&v49];
    v8 = v49;

    if (v7)
    {
      v9 = v7;
      v10 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v11 = *(error + 16);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        errorCopy = error;
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

    v16 = *(error + 88);
    v48 = v15;
    v17 = [v16 onboardingEligibilitiesForOnboardingCompletions:v7 error:&v48];
    v18 = v48;

    if (v17)
    {
      v42 = v18;
      v43 = v7;
      v19 = MEMORY[0x277CBEB38];
      v51[0] = &unk_283CB0A08;
      array = [MEMORY[0x277CBEB18] array];
      v52[0] = array;
      v51[1] = &unk_283CB0A50;
      array2 = [MEMORY[0x277CBEB18] array];
      v52[1] = array2;
      v51[2] = &unk_283CB0A38;
      array3 = [MEMORY[0x277CBEB18] array];
      v52[2] = array3;
      v51[3] = &unk_283CB0A20;
      array4 = [MEMORY[0x277CBEB18] array];
      v52[3] = array4;
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
            onboardingEligibility = [v31 onboardingEligibility];
            v34 = [v32 numberWithInteger:{objc_msgSend(onboardingEligibility, "onboardedCountrySupportedState")}];
            v35 = [v25 objectForKeyedSubscript:v34];
            onboardingCompletion = [v31 onboardingCompletion];
            [v35 addObject:onboardingCompletion];
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

- (uint64_t)_onboardedCountryCodeSupportedStateFromOnboardingCompletionsByState:(uint64_t)state
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (state)
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
        state = 3;
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
              state = [v9 integerValue];
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
        state = 3;
      }
    }

    else
    {
      state = 1;
    }
  }

LABEL_15:

  v12 = *MEMORY[0x277D85DE8];
  return state;
}

- (void)getFeatureOnboardingRecordWithCompletion:(id)completion
{
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDFeatureAvailabilityManager *)self featureOnboardingRecordWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error
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

  return v7;
}

- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)completion
{
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDFeatureAvailabilityManager *)self isCurrentOnboardingVersionCompletedWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    onboardingCompletionManager = [WeakRetained onboardingCompletionManager];
    featureIdentifier = self->_featureIdentifier;
    v53 = 0;
    v8 = [onboardingCompletionManager onboardingCompletionsForLowestVersionOfFeatureIdentifier:featureIdentifier error:&v53];
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
        selfCopy5 = self;
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
      if (error)
      {
        v38 = v16;
        *error = v16;
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
      selfCopy5 = self;
      _os_log_impl(&dword_228986000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@] No onboarding completion found", buf, 0xCu);
    }

LABEL_39:
    v42 = 0;
    goto LABEL_45;
  }

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
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
    errorCopy = error;
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
        countryCode = [v23 countryCode];
        v48 = v16;
        v25 = [(HDFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:countryCode error:&v48];
        v16 = v48;

        if (!v25)
        {
          v39 = v16;
          v16 = v39;
          v8 = v46;
          if (v39)
          {
            if (errorCopy)
            {
              v40 = v39;
              *errorCopy = v16;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          goto LABEL_43;
        }

        isEligible = [v25 isEligible];
        _HKInitializeLogging();
        v27 = self->_loggingCategory;
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (isEligible)
        {
          if (v28)
          {
            v29 = v27;
            v30 = HKSensitiveLogItem();
            *buf = 138543618;
            selfCopy5 = self;
            v57 = 2114;
            v58 = v30;
            _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding completion found with supported country code: %{public}@", buf, 0x16u);
          }

          completionDate = [v23 completionDate];
          v32 = [distantFuture earlierDate:completionDate];

          distantFuture = v32;
        }

        else if (v28)
        {
          v33 = v27;
          v34 = HKSensitiveLogItem();
          *buf = 138543618;
          selfCopy5 = self;
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

  distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
  v36 = [distantFuture isEqualToDate:distantFuture2];

  if (v36)
  {
    _HKInitializeLogging();
    v37 = self->_loggingCategory;
    v8 = v46;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy5 = self;
      _os_log_impl(&dword_228986000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] No onboarding completions meet the current requirements", buf, 0xCu);
    }

LABEL_43:
    v42 = 0;
  }

  else
  {
    distantFuture = distantFuture;
    v42 = distantFuture;
    v8 = v46;
  }

LABEL_45:
  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v15 = 0;
  v7 = [(HDFeatureAvailabilityManager *)self onboardingEligibilityForCountryCode:codeCopy error:&v15];
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
    selfCopy = self;
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

  v11 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Unexpected failure when evaluating eligibility for %@", codeCopy}];
  if (v11)
  {
LABEL_8:
    if (error)
    {
      v12 = v11;
      *error = v11;
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

- (id)onboardedCountryCodeSupportedStateWithError:(id *)error
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
      if (error)
      {
        v10 = v9;
        *error = v9;
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

- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)error
{
  pairedDeviceCapabilityProvider = self->_pairedDeviceCapabilityProvider;
  if (pairedDeviceCapabilityProvider && (pairedDeviceCapability = self->_pairedDeviceCapability) != 0)
  {
    v8 = [(HDPairedDeviceCapabilityProviding *)pairedDeviceCapabilityProvider isCapabilitySupportedOnActivePairedDevice:pairedDeviceCapability error:error];
  }

  else
  {
    v8 = MEMORY[0x277CBEC28];
  }

  return v8;
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
  currentOnboardingVersion = self->_currentOnboardingVersion;
  if (dateCopy)
  {
    v20 = [v16 initWithFeatureIdentifier:self->_featureIdentifier version:self->_currentOnboardingVersion completionDate:dateCopy countryCode:codeCopy countryCodeProvenance:provenance];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    v20 = [v17 initWithFeatureIdentifier:featureIdentifier version:currentOnboardingVersion completionDate:date countryCode:codeCopy countryCodeProvenance:provenance];
  }

  [(HDFeatureAvailabilityManager *)self saveOnboardingCompletion:v20 settings:settingsCopy completion:completionCopy];
}

- (void)saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  settingsCopy = settings;
  v10 = a5;
  v11 = settingsCopy;
  featureSettingsAtOnboardingTimeValidator = self->_featureSettingsAtOnboardingTimeValidator;
  v13 = v11;
  if (featureSettingsAtOnboardingTimeValidator && (v26 = 0, [(HDFeatureSettingsValidating *)featureSettingsAtOnboardingTimeValidator featureSettingsGivenBaseSettings:v11 onboardingCompletion:completionCopy error:&v26], v13 = objc_claimAutoreleasedReturnValue(), v14 = v26, v11, v14))
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
    v16 = completionCopy;
    v17 = v13;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __88__HDFeatureAvailabilityManager__insertOnboardingCompletion_featureSettingsValues_error___block_invoke;
    v28 = &unk_27861B120;
    v13 = v17;
    v29 = v13;
    v30 = WeakRetained;
    v20 = v16;
    v31 = v20;
    selfCopy = self;
    v21 = WeakRetained;
    v22 = [(HDHealthEntity *)HDOnboardingCompletionEntity performWriteTransactionWithHealthDatabase:database error:&v25 block:buf inaccessibilityHandler:0];

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

- (void)_triggerImmediateSyncWithReason:(uint64_t)reason
{
  v3 = a2;
  if (reason)
  {
    WeakRetained = objc_loadWeakRetained((reason + 8));
    nanoSyncManager = [WeakRetained nanoSyncManager];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@", reason, v3];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__HDFeatureAvailabilityManager__triggerImmediateSyncWithReason___block_invoke;
    v17[3] = &unk_278616020;
    v17[4] = reason;
    v7 = v3;
    v18 = v7;
    [nanoSyncManager syncHealthDataWithOptions:0 reason:v6 completion:v17];

    v8 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
    v9 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v8];
    v10 = objc_loadWeakRetained((reason + 8));
    cloudSyncManager = [v10 cloudSyncManager];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@", reason, v7];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__HDFeatureAvailabilityManager__triggerImmediateSyncWithReason___block_invoke_412;
    v15[3] = &unk_278616020;
    v15[4] = reason;
    v13 = v7;
    v16 = v13;
    [cloudSyncManager syncWithRequest:v9 reason:v12 completion:v15];

    v14 = *(reason + 120);
    if (v14)
    {
      (*(v14 + 16))(v14, v13);
    }
  }
}

- (void)setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  keyCopy = key;
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  featureSettingsManager = [WeakRetained featureSettingsManager];
  featureIdentifier = self->_featureIdentifier;
  v18 = 0;
  v14 = [featureSettingsManager setFeatureSettingsData:dataCopy forKey:keyCopy featureIdentifier:featureIdentifier error:&v18];

  v15 = v18;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (v14)
  {
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did set data for key in feature settings domain with success", buf, 0xCu);
    }

    [(HDFeatureAvailabilityManager *)self _triggerImmediateSyncWithReason:?];
  }

  else if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v21 = 2114;
    v22 = v15;
    _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set data for key in feature settings domain, with error: %{public}@", buf, 0x16u);
  }

  completionCopy[2](completionCopy, v14, v15);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  keyCopy = key;
  numberCopy = number;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  featureSettingsManager = [WeakRetained featureSettingsManager];
  featureIdentifier = self->_featureIdentifier;
  v18 = 0;
  v14 = [featureSettingsManager setFeatureSettingsNumber:numberCopy forKey:keyCopy featureIdentifier:featureIdentifier suppressNotificationsToObserver:0 error:&v18];

  v15 = v18;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (v14)
  {
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did set number for key in feature settings domain with success", buf, 0xCu);
    }

    [(HDFeatureAvailabilityManager *)self _triggerImmediateSyncWithReason:?];
  }

  else if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v21 = 2114;
    v22 = v15;
    _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set number for key in feature settings domain, with error: %{public}@", buf, 0x16u);
  }

  completionCopy[2](completionCopy, v14, v15);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  keyCopy = key;
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  featureSettingsManager = [WeakRetained featureSettingsManager];
  featureIdentifier = self->_featureIdentifier;
  v18 = 0;
  v14 = [featureSettingsManager setFeatureSettingsString:stringCopy forKey:keyCopy featureIdentifier:featureIdentifier error:&v18];

  v15 = v18;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (v14)
  {
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did set string for key in feature settings domain with success", buf, 0xCu);
    }

    [(HDFeatureAvailabilityManager *)self _triggerImmediateSyncWithReason:?];
  }

  else if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v21 = 2114;
    v22 = v15;
    _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set string for key in feature settings domain, with error: %{public}@", buf, 0x16u);
  }

  completionCopy[2](completionCopy, v14, v15);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeFeatureSettingValueForKey:(id)key completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  featureSettingsManager = [WeakRetained featureSettingsManager];
  featureIdentifier = self->_featureIdentifier;
  v15 = 0;
  v11 = [featureSettingsManager removeFeatureSettingsValueForKey:keyCopy featureIdentifier:featureIdentifier error:&v15];

  v12 = v15;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (v11)
  {
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did remove value for key in feature settings domain with success", buf, 0xCu);
    }

    [(HDFeatureAvailabilityManager *)self _triggerImmediateSyncWithReason:?];
  }

  else if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v18 = 2114;
    v19 = v12;
    _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to remove value for key in feature settings domain, with error: %{public}@", buf, 0x16u);
  }

  completionCopy[2](completionCopy, v11, v12);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)resetOnboardingWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v15 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HDFeatureAvailabilityManager_resetOnboardingWithCompletion___block_invoke;
  v12[3] = &unk_278613218;
  v7 = WeakRetained;
  v13 = v7;
  selfCopy = self;
  v8 = [(HDHealthEntity *)HDOnboardingCompletionEntity performWriteTransactionWithHealthDatabase:database error:&v15 block:v12 inaccessibilityHandler:0];
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
      selfCopy2 = self;
      v18 = 2114;
      v19 = v9;
      _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to reset onboarding: %{public}@", buf, 0x16u);
    }
  }

  completionCopy[2](completionCopy, v8, v9);

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

- (void)registerObserver:(id)observer queue:(id)queue
{
  queueCopy = queue;
  observerCopy = observer;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  observers = self->_observers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HDFeatureAvailabilityManager_registerObserver_queue___block_invoke;
  v11[3] = &unk_278613920;
  v12 = WeakRetained;
  selfCopy = self;
  v10 = WeakRetained;
  [(HKObserverSet *)observers registerObserver:observerCopy queue:queueCopy runIfFirstObserver:v11];
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

- (void)onboardingCompletionManager:(id)manager didUpdateOnboardingCompletionsForFeatureIdentifier:(id)identifier
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
    selfCopy = self;
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

- (void)featureSettingsManager:(id)manager didUpdateSettingsForFeatureIdentifier:(id)identifier
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
    selfCopy = self;
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

- (void)pairedDeviceCapabilitiesDidUpdate:(id)update
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
    selfCopy = self;
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

- (void)regionAvailabilityProvidingDidUpdate:(id)update
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
    selfCopy = self;
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

- (void)disableAndExpiryProviderDidUpdate:(id)update
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
    selfCopy = self;
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