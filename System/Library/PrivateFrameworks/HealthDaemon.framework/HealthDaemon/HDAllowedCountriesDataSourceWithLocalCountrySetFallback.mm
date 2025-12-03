@interface HDAllowedCountriesDataSourceWithLocalCountrySetFallback
- (HDAllowedCountriesDataSourceWithLocalCountrySetFallback)initWithDaemon:(id)daemon allowedCountriesDataSource:(id)source loggingCategory:(id)category;
- (HKCountrySet)activeRemoteCountrySet;
- (id)remoteCountrySetForDevice:(id)device;
@end

@implementation HDAllowedCountriesDataSourceWithLocalCountrySetFallback

- (HDAllowedCountriesDataSourceWithLocalCountrySetFallback)initWithDaemon:(id)daemon allowedCountriesDataSource:(id)source loggingCategory:(id)category
{
  daemonCopy = daemon;
  sourceCopy = source;
  categoryCopy = category;
  v16.receiver = self;
  v16.super_class = HDAllowedCountriesDataSourceWithLocalCountrySetFallback;
  v11 = [(HDAllowedCountriesDataSourceWithLocalCountrySetFallback *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_allowedCountriesDataSource, source);
    nanoRegistryDeviceCapabilityProvider = [daemonCopy nanoRegistryDeviceCapabilityProvider];
    pairedDeviceCapabilityProvider = v12->_pairedDeviceCapabilityProvider;
    v12->_pairedDeviceCapabilityProvider = nanoRegistryDeviceCapabilityProvider;

    objc_storeStrong(&v12->_loggingCategory, category);
  }

  return v12;
}

- (HKCountrySet)activeRemoteCountrySet
{
  v15 = *MEMORY[0x277D85DE8];
  activeRemoteCountrySet = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource activeRemoteCountrySet];
  v4 = activeRemoteCountrySet;
  if (activeRemoteCountrySet)
  {
    localCountrySet = activeRemoteCountrySet;
  }

  else
  {
    activePairedDevice = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceCapabilityProvider activePairedDevice];
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    v8 = os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT);
    if (activePairedDevice)
    {
      if (v8)
      {
        v11 = 138543618;
        selfCopy2 = self;
        v13 = 2114;
        v14 = activePairedDevice;
        _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning local device availability for paired device %{public}@", &v11, 0x16u);
      }

      localCountrySet = [(HDAllowedCountriesDataSourceWithLocalCountrySetFallback *)self localCountrySet];
    }

    else
    {
      if (v8)
      {
        v11 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] No active paired device found", &v11, 0xCu);
      }

      localCountrySet = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return localCountrySet;
}

- (id)remoteCountrySetForDevice:(id)device
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource remoteCountrySetForDevice:deviceCopy];
  v6 = v5;
  if (v5)
  {
    localCountrySet = v5;
  }

  else
  {
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = deviceCopy;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning local device availability for paired device %{public}@", &v12, 0x16u);
    }

    localCountrySet = [(HDAllowedCountriesDataSourceWithLocalCountrySetFallback *)self localCountrySet];
  }

  v9 = localCountrySet;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end