@interface HDLocalCountrySetAvailabilityProvider
- (HDLocalCountrySetAvailabilityProvider)initWithFeatureIdentifier:(id)a3 defaultCountrySet:(id)a4 healthDaemon:(id)a5;
- (HDLocalCountrySetAvailabilityProvider)initWithFeatureIdentifier:(id)a3 defaultCountrySet:(id)a4 healthDaemon:(id)a5 overrideUserDefaults:(id)a6;
- (HDRegionAvailabilityProvidingDelegate)delegate;
- (HKCountrySet)countrySet;
- (id)onboardingEligibilityForCountryCode:(id)a3;
- (id)onboardingEligibilityForCountryCode:(id)a3 device:(id)a4;
- (id)regionAvailability;
- (void)OTAFeatureAvailabilityManagerDidUpdateFeatureAvailabilityInfo:(id)a3;
- (void)dealloc;
- (void)downloadLatestOTAAvailabilityInfoWithCompletion:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setDelegate:(id)a3;
@end

@implementation HDLocalCountrySetAvailabilityProvider

- (HDLocalCountrySetAvailabilityProvider)initWithFeatureIdentifier:(id)a3 defaultCountrySet:(id)a4 healthDaemon:(id)a5
{
  v8 = MEMORY[0x277CBEBD0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 hk_localCountrySetOverrideUserDefaults];
  v13 = [(HDLocalCountrySetAvailabilityProvider *)self initWithFeatureIdentifier:v11 defaultCountrySet:v10 healthDaemon:v9 overrideUserDefaults:v12];

  return v13;
}

- (HDLocalCountrySetAvailabilityProvider)initWithFeatureIdentifier:(id)a3 defaultCountrySet:(id)a4 healthDaemon:(id)a5 overrideUserDefaults:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = HDLocalCountrySetAvailabilityProvider;
  v14 = [(HDLocalCountrySetAvailabilityProvider *)&v23 init];
  if (v14)
  {
    v15 = [v10 copy];
    featureIdentifier = v14->_featureIdentifier;
    v14->_featureIdentifier = v15;

    v17 = [v11 copy];
    defaultCountrySet = v14->_defaultCountrySet;
    v14->_defaultCountrySet = v17;

    objc_storeWeak(&v14->_healthDaemon, v12);
    objc_storeStrong(&v14->_overrideUserDefaults, a6);
    WeakRetained = objc_loadWeakRetained(&v14->_healthDaemon);
    v20 = [WeakRetained OTAFeatureAvailabilityManager];
    [v20 registerObserver:v14 queue:0];

    overrideUserDefaults = v14->_overrideUserDefaults;
    if (overrideUserDefaults)
    {
      [(NSUserDefaults *)overrideUserDefaults addObserver:v14 forKeyPath:v10 options:0 context:0];
    }
  }

  return v14;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_healthDaemon);
  v4 = [WeakRetained OTAFeatureAvailabilityManager];
  [v4 unregisterObserver:self];

  [(NSUserDefaults *)self->_overrideUserDefaults removeObserver:self forKeyPath:self->_featureIdentifier];
  v5.receiver = self;
  v5.super_class = HDLocalCountrySetAvailabilityProvider;
  [(HDLocalCountrySetAvailabilityProvider *)&v5 dealloc];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  if (obj)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = objc_loadWeakRetained(&self->_delegate);

      if (v7 != obj)
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        [v8 handleFailureInMethod:a2 object:self file:@"HDLocalCountrySetAvailabilityProvider.m" lineNumber:72 description:@"Delegate cannot be changed after it is set"];
      }
    }
  }

  objc_storeWeak(&self->_delegate, obj);
}

- (HKCountrySet)countrySet
{
  v25 = *MEMORY[0x277D85DE8];
  if (!self)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  WeakRetained = objc_loadWeakRetained(&self->_healthDaemon);
  v4 = [WeakRetained OTAFeatureAvailabilityManager];
  featureIdentifier = self->_featureIdentifier;
  v20 = 0;
  v6 = [v4 featureAvailabilityInfoForFeature:featureIdentifier error:&v20];
  v7 = v20;
  v8 = [v6 allowedCountrySet];

  if (!v8)
  {
    if (([v7 hk_isHealthKitErrorWithCode:11] & 1) == 0)
    {
      _HKInitializeLogging();
      v11 = HKLogInfrastructure();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v22 = self;
        v23 = 2114;
        v24 = v7;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected error attempting to read OTA info: %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_10;
  }

  v9 = [v8 contentVersion];
  if (v9 >= [(HKCountrySet *)self->_defaultCountrySet contentVersion])
  {
    v10 = v8;
    v8 = v10;
    goto LABEL_12;
  }

LABEL_11:
  v10 = self->_defaultCountrySet;
LABEL_12:
  v12 = v10;
  v13 = [(NSUserDefaults *)self->_overrideUserDefaults hk_countrySetForKey:self->_featureIdentifier];
  v14 = v12;
  if (v13)
  {
    _HKInitializeLogging();
    v15 = HKLogInfrastructure();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = [v13 dictionaryRepresentation];
      *buf = 138543618;
      v22 = self;
      v23 = 2114;
      v24 = v19;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Internal country set override present: %{public}@", buf, 0x16u);
    }

    v14 = v13;
  }

  v16 = v14;

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)OTAFeatureAvailabilityManagerDidUpdateFeatureAvailabilityInfo:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained regionAvailabilityProvidingDidUpdate:self];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:self->_featureIdentifier] && self->_overrideUserDefaults == v11)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 regionAvailabilityProvidingDidUpdate:self];
    }

    else
    {
      _HKInitializeLogging();
      v16 = HKLogInfrastructure();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

      if (!v17)
      {
        goto LABEL_4;
      }

      v15 = HKLogInfrastructure();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v20 = self;
        _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_INFO, "[%{public}@] No delegate to receive observation message", buf, 0xCu);
      }
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = HDLocalCountrySetAvailabilityProvider;
    [(HDLocalCountrySetAvailabilityProvider *)&v18 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

LABEL_4:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)onboardingEligibilityForCountryCode:(id)a3
{
  v4 = a3;
  v5 = [(HDLocalCountrySetAvailabilityProvider *)self regionAvailability];
  v6 = [v5 onboardingEligibilityForCountryCode:v4];

  return v6;
}

- (id)onboardingEligibilityForCountryCode:(id)a3 device:(id)a4
{
  v5 = a3;
  v6 = [(HDLocalCountrySetAvailabilityProvider *)self regionAvailability];
  v7 = [v6 onboardingEligibilityForCountryCode:v5];

  return v7;
}

- (id)regionAvailability
{
  v2 = MEMORY[0x277CCD898];
  v3 = MEMORY[0x277CCCFE0];
  v4 = [(HDLocalCountrySetAvailabilityProvider *)self countrySet];
  v5 = [v3 allowedCountriesInLocalSet:v4];
  v6 = [v2 allowedInSomeCountries:v5];

  return v6;
}

- (void)downloadLatestOTAAvailabilityInfoWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_healthDaemon);
  v5 = [WeakRetained OTAFeatureAvailabilityManager];
  [v5 downloadWithCompletion:v4];
}

- (HDRegionAvailabilityProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end