@interface HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider
- (HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider)initWithRegionAvailabilityProvider:(id)a3 pairedDeviceCapabilityProvider:(id)a4;
- (HDRegionAvailabilityProvidingDelegate)delegate;
- (id)onboardingEligibilityForCountryCode:(id)a3;
- (id)onboardingEligibilityForCountryCode:(id)a3 device:(id)a4;
@end

@implementation HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider

- (HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider)initWithRegionAvailabilityProvider:(id)a3 pairedDeviceCapabilityProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider;
  v9 = [(HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backingProvider, a3);
    objc_storeStrong(&v10->_capabilityProvider, a4);
  }

  return v10;
}

- (id)onboardingEligibilityForCountryCode:(id)a3
{
  v4 = a3;
  v5 = [(HDPairedDeviceCapabilityProviding *)self->_capabilityProvider activePairedDevice];
  if (v5)
  {
    v6 = [(HDHRElectrocardiogramRecordingV1RegionAvailabilityProvider *)self onboardingEligibilityForCountryCode:v4 device:v5];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CCD3F8]);
    v8 = [MEMORY[0x277CCDD30] sharedBehavior];
    v9 = [v8 currentOSBuild];
    v6 = [v7 initWithIneligibilityReasons:2 countryAvailabilityVersion:v9];
  }

  return v6;
}

- (id)onboardingEligibilityForCountryCode:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDObservableRegionAvailabilityProviding *)self->_backingProvider regionAvailabilityForDevice:v7];
  v9 = [v8 allowedCountries];
  v10 = [v9 remoteState];

  if (v10 != 4)
  {
    v27 = [(HDObservableRegionAvailabilityProviding *)self->_backingProvider onboardingEligibilityForCountryCode:v6 device:v7];
    goto LABEL_22;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCDD30] sharedBehavior];
  v13 = [v12 currentOSBuild];
  v14 = [v8 version];
  v15 = [v11 stringWithFormat:@"%@.%@", v13, v14];

  if (v6)
  {
    v16 = [v8 allowedCountries];
    v17 = [v16 localCountrySet];
    v18 = [v17 containsCountryCode:v6];

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = 8;
    }

    v20 = [MEMORY[0x277CCDD30] sharedBehavior];
    v21 = [v20 isAppleWatch];

    v22 = v6;
    v23 = [v7 valueForProperty:*MEMORY[0x277D2BC20]];
    v24 = v23;
    if (v21)
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