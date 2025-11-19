@interface HDAllowedCountriesDataSourceWithNanoRegistryFallback
- (HDAllowedCountriesDataSourceWithNanoRegistryFallback)initWithDaemon:(id)a3 allowedCountriesDataSource:(id)a4 availableRegionsDevicePropertyName:(id)a5 loggingCategory:(id)a6 shouldReturnLocalAvailabilityForNilDeviceRegions:(BOOL)a7;
- (HKCountrySet)activeRemoteCountrySet;
- (id)_nanoRegistryCountryListForDevice:(uint64_t)a1;
- (id)remoteCountrySetForDevice:(id)a3;
@end

@implementation HDAllowedCountriesDataSourceWithNanoRegistryFallback

- (HDAllowedCountriesDataSourceWithNanoRegistryFallback)initWithDaemon:(id)a3 allowedCountriesDataSource:(id)a4 availableRegionsDevicePropertyName:(id)a5 loggingCategory:(id)a6 shouldReturnLocalAvailabilityForNilDeviceRegions:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v21.receiver = self;
  v21.super_class = HDAllowedCountriesDataSourceWithNanoRegistryFallback;
  v16 = [(HDAllowedCountriesDataSourceWithNanoRegistryFallback *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_allowedCountriesDataSource, a4);
    v18 = [v12 nanoRegistryDeviceCapabilityProvider];
    pairedDeviceCapabilityProvider = v17->_pairedDeviceCapabilityProvider;
    v17->_pairedDeviceCapabilityProvider = v18;

    objc_storeStrong(&v17->_devicePropertyName, a5);
    objc_storeStrong(&v17->_loggingCategory, a6);
    v17->_shouldReturnLocalAvailabilityForNilDeviceRegions = a7;
  }

  return v17;
}

- (HKCountrySet)activeRemoteCountrySet
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource activeRemoteCountrySet];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceCapabilityProvider activePairedDevice];
    if (v6)
    {
      v5 = [(HDAllowedCountriesDataSourceWithNanoRegistryFallback *)self _nanoRegistryCountryListForDevice:v6];
    }

    else
    {
      _HKInitializeLogging();
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = self;
        _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] No active paired device found", &v10, 0xCu);
      }

      v5 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_nanoRegistryCountryListForDevice:(uint64_t)a1
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 valueForProperty:*(a1 + 24)];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CCD260]) initWithDictionaryRepresentation:v5 provenance:2];
    }

    else
    {
      _HKInitializeLogging();
      v7 = *(a1 + 32);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = a1;
        v13 = 2114;
        v14 = v4;
        _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Nil available regions found for paired device %{public}@", &v11, 0x16u);
      }

      if (*(a1 + 40) != 1)
      {
        a1 = 0;
        goto LABEL_11;
      }

      _HKInitializeLogging();
      v8 = *(a1 + 32);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = a1;
        v13 = 2114;
        v14 = v4;
        _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning local device availability for paired device %{public}@", &v11, 0x16u);
      }

      v6 = [a1 localCountrySet];
    }

    a1 = v6;
LABEL_11:
  }

  v9 = *MEMORY[0x277D85DE8];

  return a1;
}

- (id)remoteCountrySetForDevice:(id)a3
{
  v4 = a3;
  v5 = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource remoteCountrySetForDevice:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(HDAllowedCountriesDataSourceWithNanoRegistryFallback *)self _nanoRegistryCountryListForDevice:v4];
  }

  v8 = v7;

  return v8;
}

@end