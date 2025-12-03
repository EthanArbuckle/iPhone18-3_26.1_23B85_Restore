@interface HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider
+ (id)lastContentVersionDuringReloadAttemptDomainForProfile:(id)profile;
- (HDRegionAvailabilityProvidingDelegate)delegate;
- (HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider)initWithAllowedCountriesDataSource:(id)source profile:(id)profile featureCapability:(id)capability loggingCategory:(id)category;
- (HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider)initWithAllowedCountriesDataSource:(id)source profile:(id)profile featureCapability:(id)capability reloadsLocalCountrySetOnRemoteCountrySetUpdate:(BOOL)update loggingCategory:(id)category;
- (NSString)description;
- (id)_lastContentVersionDuringReloadAttemptDomain;
- (id)onboardingEligibilityForCountryCode:(id)code;
- (id)onboardingEligibilityForCountryCode:(id)code device:(id)device;
- (id)regionAvailability;
- (id)regionAvailabilityForDevice:(id)device;
- (void)allowedCountriesDataSourceDidUpdateActiveRemoteCountrySet:(id)set;
- (void)allowedCountriesDataSourceDidUpdateLocalCountrySet:(id)set;
@end

@implementation HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider

- (HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider)initWithAllowedCountriesDataSource:(id)source profile:(id)profile featureCapability:(id)capability loggingCategory:(id)category
{
  categoryCopy = category;
  capabilityCopy = capability;
  profileCopy = profile;
  sourceCopy = source;
  daemon = [profileCopy daemon];
  behavior = [daemon behavior];
  isAppleWatch = [behavior isAppleWatch];

  v17 = [(HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider *)self initWithAllowedCountriesDataSource:sourceCopy profile:profileCopy featureCapability:capabilityCopy reloadsLocalCountrySetOnRemoteCountrySetUpdate:isAppleWatch loggingCategory:categoryCopy];
  return v17;
}

- (HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider)initWithAllowedCountriesDataSource:(id)source profile:(id)profile featureCapability:(id)capability reloadsLocalCountrySetOnRemoteCountrySetUpdate:(BOOL)update loggingCategory:(id)category
{
  sourceCopy = source;
  profileCopy = profile;
  capabilityCopy = capability;
  categoryCopy = category;
  v23.receiver = self;
  v23.super_class = HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider;
  v17 = [(HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_allowedCountriesDataSource, source);
    objc_storeWeak(&v18->_profile, profileCopy);
    daemon = [profileCopy daemon];
    nanoRegistryDeviceCapabilityProvider = [daemon nanoRegistryDeviceCapabilityProvider];
    pairedDeviceCapabilityProvider = v18->_pairedDeviceCapabilityProvider;
    v18->_pairedDeviceCapabilityProvider = nanoRegistryDeviceCapabilityProvider;

    objc_storeStrong(&v18->_featureCapability, capability);
    v18->_reloadsLocalCountrySetOnRemoteCountrySetUpdate = update;
    objc_storeStrong(&v18->_loggingCategory, category);
    [(HDAllowedCountriesDataSource *)v18->_allowedCountriesDataSource setDelegate:v18];
  }

  return v18;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  featureIdentifier = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource featureIdentifier];
  v6 = [v3 stringWithFormat:@"%@:%@", v4, featureIdentifier];

  return v6;
}

- (id)onboardingEligibilityForCountryCode:(id)code
{
  codeCopy = code;
  regionAvailability = [(HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider *)self regionAvailability];
  v6 = [regionAvailability onboardingEligibilityForCountryCode:codeCopy];

  return v6;
}

- (id)onboardingEligibilityForCountryCode:(id)code device:(id)device
{
  codeCopy = code;
  v7 = [(HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider *)self regionAvailabilityForDevice:device];
  v8 = [v7 onboardingEligibilityForCountryCode:codeCopy];

  return v8;
}

- (id)regionAvailability
{
  activePairedDevice = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceCapabilityProvider activePairedDevice];
  v4 = [(HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider *)self regionAvailabilityForDevice:activePairedDevice];

  return v4;
}

- (id)regionAvailabilityForDevice:(id)device
{
  deviceCopy = device;
  localCountrySet = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource localCountrySet];
  if (deviceCopy)
  {
    v6 = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource remoteCountrySetForDevice:deviceCopy];
    if (v6)
    {
      v7 = [MEMORY[0x277CCCFE0] allowedCountriesInIntersectionOfLocalSet:localCountrySet remoteSet:v6];
    }

    else
    {
      featureCapability = self->_featureCapability;
      if (featureCapability && ([(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceCapabilityProvider isCapabilitySupported:featureCapability onDevice:deviceCopy]& 1) == 0)
      {
        v7 = [MEMORY[0x277CCCFE0] capabilityNotSupportedOnRemoteDevice:localCountrySet];
      }

      else
      {
        v7 = [MEMORY[0x277CCCFE0] allowedCountriesInIntersectionOfLocalAndRemoteSetPendingSync:localCountrySet];
      }
    }

    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x277CCCFE0] noRemoteDevice:localCountrySet];
  }

  v10 = [MEMORY[0x277CCD898] allowedInSomeCountries:v8];

  return v10;
}

- (void)allowedCountriesDataSourceDidUpdateLocalCountrySet:(id)set
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained regionAvailabilityProvidingDidUpdate:self];
}

- (void)allowedCountriesDataSourceDidUpdateActiveRemoteCountrySet:(id)set
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_reloadsLocalCountrySetOnRemoteCountrySetUpdate)
  {
    activeRemoteCountrySet = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource activeRemoteCountrySet];
    v5 = activeRemoteCountrySet;
    if (activeRemoteCountrySet)
    {
      contentVersion = [activeRemoteCountrySet contentVersion];
      v22 = 0;
      _lastContentVersionDuringReloadAttemptDomain = [(HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider *)self _lastContentVersionDuringReloadAttemptDomain];
      featureIdentifier = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource featureIdentifier];
      v9 = [_lastContentVersionDuringReloadAttemptDomain numberForKey:featureIdentifier error:&v22];

      v10 = v22;
      v11 = v10;
      if (v9 || !v10)
      {
        v13 = [v9 integerValue] < contentVersion;
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
        selfCopy = self;
        v26 = contentVersion;
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

+ (id)lastContentVersionDuringReloadAttemptDomainForProfile:(id)profile
{
  profileCopy = profile;
  v4 = [[HDKeyValueDomain alloc] initWithCategory:0 domainName:@"HDWatchAndCompanionCountrySetIntersectionAvailabilityProvider_LastContentVersionDuringReloadAttempt" profile:profileCopy];

  return v4;
}

- (id)_lastContentVersionDuringReloadAttemptDomain
{
  v2 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained((self + 16));
  v4 = [v2 lastContentVersionDuringReloadAttemptDomainForProfile:WeakRetained];

  return v4;
}

- (HDRegionAvailabilityProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end