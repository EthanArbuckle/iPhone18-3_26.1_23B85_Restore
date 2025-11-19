@interface HDAllowedCountriesDataSourceWithLocalCountrySetFallback
- (HDAllowedCountriesDataSourceWithLocalCountrySetFallback)initWithDaemon:(id)a3 allowedCountriesDataSource:(id)a4 loggingCategory:(id)a5;
- (HKCountrySet)activeRemoteCountrySet;
- (id)remoteCountrySetForDevice:(id)a3;
@end

@implementation HDAllowedCountriesDataSourceWithLocalCountrySetFallback

- (HDAllowedCountriesDataSourceWithLocalCountrySetFallback)initWithDaemon:(id)a3 allowedCountriesDataSource:(id)a4 loggingCategory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HDAllowedCountriesDataSourceWithLocalCountrySetFallback;
  v11 = [(HDAllowedCountriesDataSourceWithLocalCountrySetFallback *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_allowedCountriesDataSource, a4);
    v13 = [v8 nanoRegistryDeviceCapabilityProvider];
    pairedDeviceCapabilityProvider = v12->_pairedDeviceCapabilityProvider;
    v12->_pairedDeviceCapabilityProvider = v13;

    objc_storeStrong(&v12->_loggingCategory, a5);
  }

  return v12;
}

- (HKCountrySet)activeRemoteCountrySet
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource activeRemoteCountrySet];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceCapabilityProvider activePairedDevice];
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    v8 = os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v11 = 138543618;
        v12 = self;
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning local device availability for paired device %{public}@", &v11, 0x16u);
      }

      v5 = [(HDAllowedCountriesDataSourceWithLocalCountrySetFallback *)self localCountrySet];
    }

    else
    {
      if (v8)
      {
        v11 = 138543362;
        v12 = self;
        _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] No active paired device found", &v11, 0xCu);
      }

      v5 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)remoteCountrySetForDevice:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource remoteCountrySetForDevice:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = self;
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning local device availability for paired device %{public}@", &v12, 0x16u);
    }

    v7 = [(HDAllowedCountriesDataSourceWithLocalCountrySetFallback *)self localCountrySet];
  }

  v9 = v7;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end