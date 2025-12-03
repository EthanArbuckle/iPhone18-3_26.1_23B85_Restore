@interface HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider
- (HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider)initWithRegionAvailabilityProvider:(id)provider pairedDeviceCapabilityProvider:(id)capabilityProvider;
- (HDRegionAvailabilityProvidingDelegate)delegate;
- (id)onboardingEligibilityForCountryCode:(id)code;
- (id)onboardingEligibilityForCountryCode:(id)code device:(id)device;
@end

@implementation HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider

- (HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider)initWithRegionAvailabilityProvider:(id)provider pairedDeviceCapabilityProvider:(id)capabilityProvider
{
  providerCopy = provider;
  capabilityProviderCopy = capabilityProvider;
  v12.receiver = self;
  v12.super_class = HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider;
  v9 = [(HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backingProvider, provider);
    objc_storeStrong(&v10->_capabilityProvider, capabilityProvider);
  }

  return v10;
}

- (id)onboardingEligibilityForCountryCode:(id)code
{
  codeCopy = code;
  activePairedDevice = [(HDPairedDeviceCapabilityProviding *)self->_capabilityProvider activePairedDevice];
  if (activePairedDevice)
  {
    v6 = [(HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider *)self onboardingEligibilityForCountryCode:codeCopy device:activePairedDevice];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CCD3F8]);
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    currentOSBuild = [mEMORY[0x277CCDD30] currentOSBuild];
    v6 = [v7 initWithIneligibilityReasons:2 countryAvailabilityVersion:currentOSBuild];
  }

  return v6;
}

- (id)onboardingEligibilityForCountryCode:(id)code device:(id)device
{
  codeCopy = code;
  deviceCopy = device;
  v8 = [(HDObservableRegionAvailabilityProviding *)self->_backingProvider regionAvailabilityForDevice:deviceCopy];
  allowedCountries = [v8 allowedCountries];
  remoteState = [allowedCountries remoteState];

  if (remoteState != 4)
  {
    v27 = [(HDObservableRegionAvailabilityProviding *)self->_backingProvider onboardingEligibilityForCountryCode:codeCopy device:deviceCopy];
    goto LABEL_22;
  }

  v11 = MEMORY[0x277CCACA8];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  currentOSBuild = [mEMORY[0x277CCDD30] currentOSBuild];
  version = [v8 version];
  v15 = [v11 stringWithFormat:@"%@.%@", currentOSBuild, version];

  if (codeCopy)
  {
    allowedCountries2 = [v8 allowedCountries];
    localCountrySet = [allowedCountries2 localCountrySet];
    v18 = [localCountrySet containsCountryCode:codeCopy];

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = 8;
    }

    mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleWatch = [mEMORY[0x277CCDD30]2 isAppleWatch];

    v22 = codeCopy;
    v23 = [deviceCopy valueForProperty:*MEMORY[0x277D2BC20]];
    v24 = v23;
    if (isAppleWatch)
    {
      if (v23)
      {
        v25 = v22;
        NRRawVersionFromString();
        v26 = HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndIOSVersion();
        goto LABEL_13;
      }

      _HKInitializeLogging();
      v31 = *MEMORY[0x277CCC2D8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v23)
      {
        v25 = v22;
        NRRawVersionFromString();
        v26 = HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndWatchOSVersion();
LABEL_13:
        v30 = v26;

        if (v30 < 2)
        {

LABEL_20:
          v28 = objc_alloc(MEMORY[0x277CCD3F8]);
          v29 = v19;
          goto LABEL_21;
        }

LABEL_19:

        v19 |= 0x20uLL;
        goto LABEL_20;
      }

      _HKInitializeLogging();
      v31 = *MEMORY[0x277CCC2D8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }
    }

    [HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider onboardingEligibilityForCountryCode:v31 device:?];
    goto LABEL_19;
  }

  v28 = objc_alloc(MEMORY[0x277CCD3F8]);
  v29 = 1;
LABEL_21:
  v27 = [v28 initWithIneligibilityReasons:v29 countryAvailabilityVersion:v15];

LABEL_22:

  return v27;
}

- (HDRegionAvailabilityProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)onboardingEligibilityForCountryCode:(void *)a1 device:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_3_0(&dword_229486000, v3, v4, "[%{public}@] Watch version is nil", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

@end