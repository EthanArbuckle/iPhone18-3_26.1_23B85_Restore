@interface HDLocalCountrySetAvailabilityProvider
- (HDLocalCountrySetAvailabilityProvider)initWithFeatureIdentifier:(id)identifier defaultCountrySet:(id)set healthDaemon:(id)daemon;
- (HDLocalCountrySetAvailabilityProvider)initWithFeatureIdentifier:(id)identifier defaultCountrySet:(id)set healthDaemon:(id)daemon overrideUserDefaults:(id)defaults;
- (HDRegionAvailabilityProvidingDelegate)delegate;
- (HKCountrySet)countrySet;
- (id)onboardingEligibilityForCountryCode:(id)code;
- (id)onboardingEligibilityForCountryCode:(id)code device:(id)device;
- (id)regionAvailability;
- (void)OTAFeatureAvailabilityManagerDidUpdateFeatureAvailabilityInfo:(id)info;
- (void)dealloc;
- (void)downloadLatestOTAAvailabilityInfoWithCompletion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setDelegate:(id)delegate;
@end

@implementation HDLocalCountrySetAvailabilityProvider

- (HDLocalCountrySetAvailabilityProvider)initWithFeatureIdentifier:(id)identifier defaultCountrySet:(id)set healthDaemon:(id)daemon
{
  v8 = MEMORY[0x277CBEBD0];
  daemonCopy = daemon;
  setCopy = set;
  identifierCopy = identifier;
  hk_localCountrySetOverrideUserDefaults = [v8 hk_localCountrySetOverrideUserDefaults];
  v13 = [(HDLocalCountrySetAvailabilityProvider *)self initWithFeatureIdentifier:identifierCopy defaultCountrySet:setCopy healthDaemon:daemonCopy overrideUserDefaults:hk_localCountrySetOverrideUserDefaults];

  return v13;
}

- (HDLocalCountrySetAvailabilityProvider)initWithFeatureIdentifier:(id)identifier defaultCountrySet:(id)set healthDaemon:(id)daemon overrideUserDefaults:(id)defaults
{
  identifierCopy = identifier;
  setCopy = set;
  daemonCopy = daemon;
  defaultsCopy = defaults;
  v23.receiver = self;
  v23.super_class = HDLocalCountrySetAvailabilityProvider;
  v14 = [(HDLocalCountrySetAvailabilityProvider *)&v23 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    featureIdentifier = v14->_featureIdentifier;
    v14->_featureIdentifier = v15;

    v17 = [setCopy copy];
    defaultCountrySet = v14->_defaultCountrySet;
    v14->_defaultCountrySet = v17;

    objc_storeWeak(&v14->_healthDaemon, daemonCopy);
    objc_storeStrong(&v14->_overrideUserDefaults, defaults);
    WeakRetained = objc_loadWeakRetained(&v14->_healthDaemon);
    oTAFeatureAvailabilityManager = [WeakRetained OTAFeatureAvailabilityManager];
    [oTAFeatureAvailabilityManager registerObserver:v14 queue:0];

    overrideUserDefaults = v14->_overrideUserDefaults;
    if (overrideUserDefaults)
    {
      [(NSUserDefaults *)overrideUserDefaults addObserver:v14 forKeyPath:identifierCopy options:0 context:0];
    }
  }

  return v14;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_healthDaemon);
  oTAFeatureAvailabilityManager = [WeakRetained OTAFeatureAvailabilityManager];
  [oTAFeatureAvailabilityManager unregisterObserver:self];

  [(NSUserDefaults *)self->_overrideUserDefaults removeObserver:self forKeyPath:self->_featureIdentifier];
  v5.receiver = self;
  v5.super_class = HDLocalCountrySetAvailabilityProvider;
  [(HDLocalCountrySetAvailabilityProvider *)&v5 dealloc];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  if (obj)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = objc_loadWeakRetained(&self->_delegate);

      if (v7 != obj)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"HDLocalCountrySetAvailabilityProvider.m" lineNumber:72 description:@"Delegate cannot be changed after it is set"];
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
    allowedCountrySet = 0;
    goto LABEL_11;
  }

  WeakRetained = objc_loadWeakRetained(&self->_healthDaemon);
  oTAFeatureAvailabilityManager = [WeakRetained OTAFeatureAvailabilityManager];
  featureIdentifier = self->_featureIdentifier;
  v20 = 0;
  v6 = [oTAFeatureAvailabilityManager featureAvailabilityInfoForFeature:featureIdentifier error:&v20];
  v7 = v20;
  allowedCountrySet = [v6 allowedCountrySet];

  if (!allowedCountrySet)
  {
    if (([v7 hk_isHealthKitErrorWithCode:11] & 1) == 0)
    {
      _HKInitializeLogging();
      v11 = HKLogInfrastructure();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v23 = 2114;
        v24 = v7;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected error attempting to read OTA info: %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_10;
  }

  contentVersion = [allowedCountrySet contentVersion];
  if (contentVersion >= [(HKCountrySet *)self->_defaultCountrySet contentVersion])
  {
    v10 = allowedCountrySet;
    allowedCountrySet = v10;
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
      dictionaryRepresentation = [v13 dictionaryRepresentation];
      *buf = 138543618;
      selfCopy2 = self;
      v23 = 2114;
      v24 = dictionaryRepresentation;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Internal country set override present: %{public}@", buf, 0x16u);
    }

    v14 = v13;
  }

  v16 = v14;

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)OTAFeatureAvailabilityManagerDidUpdateFeatureAvailabilityInfo:(id)info
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained regionAvailabilityProvidingDidUpdate:self];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:self->_featureIdentifier] && self->_overrideUserDefaults == objectCopy)
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
        selfCopy = self;
        _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_INFO, "[%{public}@] No delegate to receive observation message", buf, 0xCu);
      }
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = HDLocalCountrySetAvailabilityProvider;
    [(HDLocalCountrySetAvailabilityProvider *)&v18 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

LABEL_4:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)onboardingEligibilityForCountryCode:(id)code
{
  codeCopy = code;
  regionAvailability = [(HDLocalCountrySetAvailabilityProvider *)self regionAvailability];
  v6 = [regionAvailability onboardingEligibilityForCountryCode:codeCopy];

  return v6;
}

- (id)onboardingEligibilityForCountryCode:(id)code device:(id)device
{
  codeCopy = code;
  regionAvailability = [(HDLocalCountrySetAvailabilityProvider *)self regionAvailability];
  v7 = [regionAvailability onboardingEligibilityForCountryCode:codeCopy];

  return v7;
}

- (id)regionAvailability
{
  v2 = MEMORY[0x277CCD898];
  v3 = MEMORY[0x277CCCFE0];
  countrySet = [(HDLocalCountrySetAvailabilityProvider *)self countrySet];
  v5 = [v3 allowedCountriesInLocalSet:countrySet];
  v6 = [v2 allowedInSomeCountries:v5];

  return v6;
}

- (void)downloadLatestOTAAvailabilityInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_healthDaemon);
  oTAFeatureAvailabilityManager = [WeakRetained OTAFeatureAvailabilityManager];
  [oTAFeatureAvailabilityManager downloadWithCompletion:completionCopy];
}

- (HDRegionAvailabilityProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end