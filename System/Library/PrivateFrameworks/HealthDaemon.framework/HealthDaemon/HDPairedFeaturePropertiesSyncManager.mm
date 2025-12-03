@interface HDPairedFeaturePropertiesSyncManager
- (HDAllowedCountriesDataSourceObserver)delegate;
- (HDPairedFeaturePropertiesSyncManager)initWithFeatureIdentifier:(id)identifier localFeatureAttributes:(id)attributes localCountrySetAvailabilityProvider:(id)provider;
- (HDPairedFeaturePropertiesSyncManager)initWithFeatureIdentifier:(id)identifier localFeatureAttributes:(id)attributes localCountrySetAvailabilityProvider:(id)provider activeRemoteReadSourceProvider:(id)sourceProvider remoteReadSourceForDeviceProvider:(id)deviceProvider localWriteSource:(id)source;
- (HKCountrySet)activeRemoteCountrySet;
- (HKPairedFeatureAttributes)currentPairedFeatureAttributes;
- (id)pairedFeatureAttributesForPairedDevice:(id)device;
- (id)remoteCountrySetForDevice:(id)device;
- (void)dealloc;
- (void)regionAvailabilityProvidingDidUpdate:(id)update;
- (void)synchronizeLocalProperties;
@end

@implementation HDPairedFeaturePropertiesSyncManager

- (HDPairedFeaturePropertiesSyncManager)initWithFeatureIdentifier:(id)identifier localFeatureAttributes:(id)attributes localCountrySetAvailabilityProvider:(id)provider
{
  providerCopy = provider;
  attributesCopy = attributes;
  identifierCopy = identifier;
  v11 = HKLocalFeaturePropertiesDefaultsDomainForFeatureIdentifier(identifierCopy);
  v12 = MEMORY[0x277CCDD30];
  v13 = v11;
  sharedBehavior = [v12 sharedBehavior];
  isAppleWatch = [sharedBehavior isAppleWatch];

  if (isAppleWatch)
  {
    v16 = [_HDDeferredFeaturePropertiesWriting alloc];
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    v18 = [(_HDDeferredFeaturePropertiesWriting *)v16 initWithLocalDomain:v13 pairedDeviceRegistry:mEMORY[0x277D2BCF8]];
  }

  else
  {
    v18 = [[_HDFeaturePropertiesWriting alloc] initWithLocalDomain:v13];
    mEMORY[0x277D2BCF8] = v13;
  }

  v19 = [(HDPairedFeaturePropertiesSyncManager *)self initWithFeatureIdentifier:identifierCopy localFeatureAttributes:attributesCopy localCountrySetAvailabilityProvider:providerCopy activeRemoteReadSourceProvider:&__block_literal_global_155 remoteReadSourceForDeviceProvider:&__block_literal_global_393 localWriteSource:v18];
  return v19;
}

id __125__HDPairedFeaturePropertiesSyncManager_initWithFeatureIdentifier_localFeatureAttributes_localCountrySetAvailabilityProvider___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isCompanionCapable];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:v2];
    v6 = [v5 synchronize];
  }

  else
  {
    v7 = [MEMORY[0x277CCDD30] sharedBehavior];
    v8 = [v7 isAppleWatch];

    if (v8)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v2];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

id __125__HDPairedFeaturePropertiesSyncManager_initWithFeatureIdentifier_localFeatureAttributes_localCountrySetAvailabilityProvider___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = [v7 isCompanionCapable];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:v6 pairedDevice:v5];
    v10 = [v9 synchronize];
  }

  else
  {
    v11 = [MEMORY[0x277CCDD30] sharedBehavior];
    v12 = [v11 isAppleWatch];

    if (v12)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v6];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HDPairedFeaturePropertiesSyncManager)initWithFeatureIdentifier:(id)identifier localFeatureAttributes:(id)attributes localCountrySetAvailabilityProvider:(id)provider activeRemoteReadSourceProvider:(id)sourceProvider remoteReadSourceForDeviceProvider:(id)deviceProvider localWriteSource:(id)source
{
  identifierCopy = identifier;
  attributesCopy = attributes;
  providerCopy = provider;
  sourceProviderCopy = sourceProvider;
  deviceProviderCopy = deviceProvider;
  sourceCopy = source;
  v36.receiver = self;
  v36.super_class = HDPairedFeaturePropertiesSyncManager;
  v20 = [(HDPairedFeaturePropertiesSyncManager *)&v36 init];
  if (v20)
  {
    v35 = providerCopy;
    v21 = [identifierCopy copy];
    featureIdentifier = v20->_featureIdentifier;
    v20->_featureIdentifier = v21;

    v23 = [attributesCopy copy];
    localFeatureAttributes = v20->_localFeatureAttributes;
    v20->_localFeatureAttributes = v23;

    objc_storeStrong(&v20->_localCountrySetAvailabilityProvider, provider);
    v25 = _Block_copy(sourceProviderCopy);
    activeRemoteReadSourceProvider = v20->_activeRemoteReadSourceProvider;
    v20->_activeRemoteReadSourceProvider = v25;

    v27 = _Block_copy(deviceProviderCopy);
    remoteReadSourceForDeviceProvider = v20->_remoteReadSourceForDeviceProvider;
    v20->_remoteReadSourceForDeviceProvider = v27;

    objc_storeStrong(&v20->_localWriteSource, source);
    v20->_nanoPreferencesSyncChangeNotificationToken = -1;
    objc_initWeak(&location, v20);
    v29 = v20->_featureIdentifier;
    v30 = HKFeaturePropertiesChangeNotificationForFeatureIdentifier();
    uTF8String = [v30 UTF8String];
    v32 = MEMORY[0x277D85CD0];
    v33 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __89__HDPairedFeaturePropertiesSyncManager__registerForNanoPreferencesSyncChangeNotification__block_invoke;
    handler[3] = &unk_278613BF0;
    objc_copyWeak(&v38, &location);
    notify_register_dispatch(uTF8String, &v20->_nanoPreferencesSyncChangeNotificationToken, v32, handler);

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
    [(HDLocalCountrySetAvailabilityProvider *)v20->_localCountrySetAvailabilityProvider setDelegate:v20];
    providerCopy = v35;
  }

  return v20;
}

- (void)dealloc
{
  if (self)
  {
    nanoPreferencesSyncChangeNotificationToken = self->_nanoPreferencesSyncChangeNotificationToken;
    if (nanoPreferencesSyncChangeNotificationToken != -1)
    {
      notify_cancel(nanoPreferencesSyncChangeNotificationToken);
    }
  }

  v4.receiver = self;
  v4.super_class = HDPairedFeaturePropertiesSyncManager;
  [(HDPairedFeaturePropertiesSyncManager *)&v4 dealloc];
}

- (void)synchronizeLocalProperties
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = NSDictionaryPreferencesSyncRepresentationForHKFeatureAttributes(self->_localFeatureAttributes);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HDPairedFeaturePropertiesSyncManager_synchronizeLocalProperties__block_invoke;
  v12[3] = &unk_278624E60;
  v12[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v12];

  countrySet = [(HDLocalCountrySetAvailabilityProvider *)self->_localCountrySetAvailabilityProvider countrySet];
  v5 = NSDictionaryPreferencesSyncRepresentationForHKCountrySet(countrySet);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__HDPairedFeaturePropertiesSyncManager_synchronizeLocalProperties__block_invoke_2;
  v11[3] = &unk_278624E60;
  v11[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v11];

  _HKInitializeLogging();
  v6 = HKLogInfrastructure();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    featureIdentifier = self->_featureIdentifier;
    *buf = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = featureIdentifier;
    v9 = v7;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Initiating NanoPreferencesSync of feature properties", buf, 0x16u);
  }

  [(HDFeaturePropertiesWriting *)self->_localWriteSource synchronize];
  v10 = *MEMORY[0x277D85DE8];
}

- (HKPairedFeatureAttributes)currentPairedFeatureAttributes
{
  v3 = HKRemoteFeaturePropertiesDefaultsDomainForFeatureIdentifier(self->_featureIdentifier);
  v4 = (*(self->_activeRemoteReadSourceProvider + 2))();
  v5 = HKFeatureAttributesFromSource(v4);
  v6 = [objc_alloc(MEMORY[0x277CCD780]) initWithLocalAttributes:self->_localFeatureAttributes pairedAttributes:v5];

  return v6;
}

- (id)pairedFeatureAttributesForPairedDevice:(id)device
{
  featureIdentifier = self->_featureIdentifier;
  deviceCopy = device;
  v6 = HKRemoteFeaturePropertiesDefaultsDomainForFeatureIdentifier(featureIdentifier);
  v7 = (*(self->_remoteReadSourceForDeviceProvider + 2))();

  v8 = HKFeatureAttributesFromSource(v7);
  v9 = [objc_alloc(MEMORY[0x277CCD780]) initWithLocalAttributes:self->_localFeatureAttributes pairedAttributes:v8];

  return v9;
}

- (HKCountrySet)activeRemoteCountrySet
{
  v3 = HKRemoteFeaturePropertiesDefaultsDomainForFeatureIdentifier(self->_featureIdentifier);
  v4 = (*(self->_activeRemoteReadSourceProvider + 2))();
  v5 = HKCountrySetFromSource(v4);

  return v5;
}

- (id)remoteCountrySetForDevice:(id)device
{
  featureIdentifier = self->_featureIdentifier;
  deviceCopy = device;
  v6 = HKRemoteFeaturePropertiesDefaultsDomainForFeatureIdentifier(featureIdentifier);
  v7 = (*(self->_remoteReadSourceForDeviceProvider + 2))();

  v8 = HKCountrySetFromSource(v7);

  return v8;
}

void __89__HDPairedFeaturePropertiesSyncManager__registerForNanoPreferencesSyncChangeNotification__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _HKInitializeLogging();
    v1 = HKLogInfrastructure();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v2 = objc_opt_class();
      v3 = *(WeakRetained + 1);
      *buf = 138543618;
      v9 = v2;
      v10 = 2114;
      v11 = v3;
      v4 = v2;
      _os_log_impl(&dword_228986000, v1, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Notifying observers for received NPS change notification", buf, 0x16u);
    }

    v5 = objc_loadWeakRetained(WeakRetained + 8);
    [v5 allowedCountriesDataSourceDidUpdateActiveRemoteCountrySet:WeakRetained];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)regionAvailabilityProvidingDidUpdate:(id)update
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    featureIdentifier = self->_featureIdentifier;
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = featureIdentifier;
    v7 = v5;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Notifying observers for local country set update", &v10, 0x16u);
  }

  [(HDPairedFeaturePropertiesSyncManager *)self synchronizeLocalProperties];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained allowedCountriesDataSourceDidUpdateLocalCountrySet:self];

  v9 = *MEMORY[0x277D85DE8];
}

- (HDAllowedCountriesDataSourceObserver)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end