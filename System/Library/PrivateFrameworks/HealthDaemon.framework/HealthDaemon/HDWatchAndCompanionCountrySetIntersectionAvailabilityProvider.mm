@interface HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider
+ (id)lastContentVersionDuringReloadAttemptDomainForProfile:(id)a3;
- (HDRegionAvailabilityProvidingDelegate)delegate;
- (HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider)initWithAllowedCountriesDataSource:(id)a3 profile:(id)a4 featureCapability:(id)a5 loggingCategory:(id)a6;
- (HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider)initWithAllowedCountriesDataSource:(id)a3 profile:(id)a4 featureCapability:(id)a5 reloadsLocalCountrySetOnRemoteCountrySetUpdate:(BOOL)a6 loggingCategory:(id)a7;
- (NSString)description;
- (id)_lastContentVersionDuringReloadAttemptDomain;
- (id)onboardingEligibilityForCountryCode:(id)a3;
- (id)onboardingEligibilityForCountryCode:(id)a3 device:(id)a4;
- (id)regionAvailability;
- (id)regionAvailabilityForDevice:(id)a3;
- (void)allowedCountriesDataSourceDidUpdateActiveRemoteCountrySet:(id)a3;
- (void)allowedCountriesDataSourceDidUpdateLocalCountrySet:(id)a3;
@end

@implementation HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider

- (HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider)initWithAllowedCountriesDataSource:(id)a3 profile:(id)a4 featureCapability:(id)a5 loggingCategory:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v12 daemon];
  v15 = [v14 behavior];
  v16 = [v15 isAppleWatch];

  v17 = [(HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider *)self initWithAllowedCountriesDataSource:v13 profile:v12 featureCapability:v11 reloadsLocalCountrySetOnRemoteCountrySetUpdate:v16 loggingCategory:v10];
  return v17;
}

- (HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider)initWithAllowedCountriesDataSource:(id)a3 profile:(id)a4 featureCapability:(id)a5 reloadsLocalCountrySetOnRemoteCountrySetUpdate:(BOOL)a6 loggingCategory:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider;
  v17 = [(HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_allowedCountriesDataSource, a3);
    objc_storeWeak(&v18->_profile, v14);
    v19 = [v14 daemon];
    v20 = [v19 nanoRegistryDeviceCapabilityProvider];
    pairedDeviceCapabilityProvider = v18->_pairedDeviceCapabilityProvider;
    v18->_pairedDeviceCapabilityProvider = v20;

    objc_storeStrong(&v18->_featureCapability, a5);
    v18->_reloadsLocalCountrySetOnRemoteCountrySetUpdate = a6;
    objc_storeStrong(&v18->_loggingCategory, a7);
    [(HDAllowedCountriesDataSource *)v18->_allowedCountriesDataSource setDelegate:v18];
  }

  return v18;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource featureIdentifier];
  v6 = [v3 stringWithFormat:@"%@:%@", v4, v5];

  return v6;
}

- (id)onboardingEligibilityForCountryCode:(id)a3
{
  v4 = a3;
  v5 = [(HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider *)self regionAvailability];
  v6 = [v5 onboardingEligibilityForCountryCode:v4];

  return v6;
}

- (id)onboardingEligibilityForCountryCode:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = [(HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider *)self regionAvailabilityForDevice:a4];
  v8 = [v7 onboardingEligibilityForCountryCode:v6];

  return v8;
}

- (id)regionAvailability
{
  v3 = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceCapabilityProvider activePairedDevice];
  v4 = [(HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider *)self regionAvailabilityForDevice:v3];

  return v4;
}

- (id)regionAvailabilityForDevice:(id)a3
{
  v4 = a3;
  v5 = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource localCountrySet];
  if (v4)
  {
    v6 = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource remoteCountrySetForDevice:v4];
    if (v6)
    {
      v7 = [MEMORY[0x277CCCFE0] allowedCountriesInIntersectionOfLocalSet:v5 remoteSet:v6];
    }

    else
    {
      featureCapability = self->_featureCapability;
      if (featureCapability && ([(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceCapabilityProvider isCapabilitySupported:featureCapability onDevice:v4]& 1) == 0)
      {
        v7 = [MEMORY[0x277CCCFE0] capabilityNotSupportedOnRemoteDevice:v5];
      }

      else
      {
        v7 = [MEMORY[0x277CCCFE0] allowedCountriesInIntersectionOfLocalAndRemoteSetPendingSync:v5];
      }
    }

    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x277CCCFE0] noRemoteDevice:v5];
  }

  v10 = [MEMORY[0x277CCD898] allowedInSomeCountries:v8];

  return v10;
}

- (void)allowedCountriesDataSourceDidUpdateLocalCountrySet:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained regionAvailabilityProvidingDidUpdate:self];
}

- (void)allowedCountriesDataSourceDidUpdateActiveRemoteCountrySet:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_reloadsLocalCountrySetOnRemoteCountrySetUpdate)
  {
    v4 = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource activeRemoteCountrySet];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 contentVersion];
      v22 = 0;
      v7 = [(HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider *)self _lastContentVersionDuringReloadAttemptDomain];
      v8 = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource featureIdentifier];
      v9 = [v7 numberForKey:v8 error:&v22];

      v10 = v22;
      v11 = v10;
      if (v9 || !v10)
      {
        v13 = [v9 integerValue] < v6;
      }

      else
      {
        _HKInitializeLogging();
        loggingCategory = self->_loggingCategory;
        if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v11;
          _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "[%{public}@] Could not read last content version to determine reload attempt eligibility: %{public}@", buf, 0x16u);
        }

        v13 = 0;
      }

      _HKInitializeLogging();
      v17 = self->_loggingCategory;
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v18)
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Attempting reload of local country set", buf, 0xCu);
        }

        allowedCountriesDataSource = self->_allowedCountriesDataSource;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __87__HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider__reloadLocalCountrySet__block_invoke;
        v24 = &unk_27861DCA0;
        v25 = self;
        v26 = v6;
        [(HDAllowedCountriesDataSource *)allowedCountriesDataSource reloadLocalCountrySetWithCompletion:buf];
        goto LABEL_18;
      }

      if (v18)
      {
        *buf = 138543362;
        *&buf[4] = self;
        v15 = "[%{public}@] Skipping reload of local country set: already attempted for current remote country set version";
        v16 = v17;
        goto LABEL_17;
      }
    }

    else
    {
      _HKInitializeLogging();
      v14 = self->_loggingCategory;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = self;
        v15 = "[%{public}@] Skipping reload of local country set due to missing remote country set";
        v16 = v14;
LABEL_17:
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      }
    }

LABEL_18:
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained regionAvailabilityProvidingDidUpdate:self];
  v20 = *MEMORY[0x277D85DE8];
}

void __87__HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider__reloadLocalCountrySet__block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(a1 + 40);
      v17 = 0;
      v8 = [(HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider *)v6 _lastContentVersionDuringReloadAttemptDomain];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
      v10 = [*(v6 + 8) featureIdentifier];
      v11 = [v8 setNumber:v9 forKey:v10 error:&v17];

      v12 = v17;
      if ((v11 & 1) == 0)
      {
        _HKInitializeLogging();
        v13 = *(v6 + 48);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v19 = v6;
          v20 = 2114;
          v21 = v12;
          _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting last content version: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = *(a1 + 32);
    v15 = *(v14 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to initiate local country set reload: %{public}@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)lastContentVersionDuringReloadAttemptDomainForProfile:(id)a3
{
  v3 = a3;
  v4 = [[HDKeyValueDomain alloc] initWithCategory:0 domainName:@"HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider_LastContentVersionDuringReloadAttempt" profile:v3];

  return v4;
}

- (id)_lastContentVersionDuringReloadAttemptDomain
{
  v2 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v4 = [v2 lastContentVersionDuringReloadAttemptDomainForProfile:WeakRetained];

  return v4;
}

- (HDRegionAvailabilityProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end