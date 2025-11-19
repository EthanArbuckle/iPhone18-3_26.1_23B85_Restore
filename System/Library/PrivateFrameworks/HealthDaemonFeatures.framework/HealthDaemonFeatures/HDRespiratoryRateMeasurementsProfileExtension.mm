@interface HDRespiratoryRateMeasurementsProfileExtension
- (HDRespiratoryRateMeasurementsProfileExtension)initWithProfile:(id)a3;
- (HDRespiratoryRateMeasurementsProfileExtension)initWithProfile:(id)a3 featureIdentifier:(id)a4 isBackgroundDeliveryEnabled:(BOOL)a5 loggingCategory:(id)a6;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3;
- (void)_initWithProfile:(void *)a3 featureIdentifier:(void *)a4 loggingCategory:;
@end

@implementation HDRespiratoryRateMeasurementsProfileExtension

- (HDRespiratoryRateMeasurementsProfileExtension)initWithProfile:(id)a3
{
  v4 = *MEMORY[0x277CCC0C8];
  v5 = a3;
  v6 = HKLogInfrastructure();
  v7 = [(HDRespiratoryRateMeasurementsProfileExtension *)self _initWithProfile:v5 featureIdentifier:v4 loggingCategory:v6];

  return v7;
}

- (HDRespiratoryRateMeasurementsProfileExtension)initWithProfile:(id)a3 featureIdentifier:(id)a4 isBackgroundDeliveryEnabled:(BOOL)a5 loggingCategory:(id)a6
{
  v7 = a5;
  v62[4] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v56.receiver = self;
  v56.super_class = HDRespiratoryRateMeasurementsProfileExtension;
  v13 = [(HDRespiratoryRateMeasurementsProfileExtension *)&v56 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_featureIdentifier, a4);
    v15 = objc_alloc(MEMORY[0x277D107C0]);
    [v10 daemon];
    v16 = v54 = v12;
    v52 = [v15 initWithDaemon:v16 featureIdentifier:v11];

    v49 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"5C64C95B-8E7C-46AB-A110-1E51C93D7B7F"];
    v53 = objc_alloc(MEMORY[0x277D106D8]);
    v17 = MEMORY[0x277CCD420];
    v18 = v14->_featureIdentifier;
    v43 = [v17 alloc];
    v61[0] = *MEMORY[0x277CCBE00];
    v51 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v18];
    v60 = v51;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    v62[0] = v50;
    v61[1] = *MEMORY[0x277CCBE70];
    v48 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v18];
    v59[0] = v48;
    v47 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v18];
    v59[1] = v47;
    v19 = *MEMORY[0x277CCC240];
    v46 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC240]];
    v59[2] = v46;
    v45 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
    v59[3] = v45;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:4];
    v62[1] = v41;
    v61[2] = *MEMORY[0x277CCBE68];
    v40 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v18];
    v58[0] = v40;
    v39 = [MEMORY[0x277CCD428] countryIsSupportedOnWatchForFeatureWithIdentifier:v18 isSupportedIfCountryListMissing:0];
    v58[1] = v39;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
    v62[2] = v38;
    v61[3] = *MEMORY[0x277CCBEA0];
    v37 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v18];
    v57[0] = v37;
    v36 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
    v57[1] = v36;
    [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v18];
    v20 = v42 = v7;
    v57[2] = v20;
    v21 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v18];
    v57[3] = v21;
    [MEMORY[0x277CCD428] countryIsSupportedOnWatchForFeatureWithIdentifier:v18 isSupportedIfCountryListMissing:0];
    v22 = v55 = v10;
    v57[4] = v22;
    v23 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v19];
    v57[5] = v23;
    v24 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v18 isOnIfSettingIsAbsent:1];

    v57[6] = v24;
    [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
    v26 = v25 = v11;
    v57[7] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:8];
    v62[3] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:4];
    v44 = [v43 initWithRequirementsByContext:v28];

    v11 = v25;
    v12 = v54;

    v10 = v55;
    v29 = [MEMORY[0x277D10828] anyCountryAvailability];
    v30 = [v53 initWithProfile:v55 featureIdentifier:v25 availabilityRequirements:v44 currentOnboardingVersion:1 pairedDeviceCapability:v49 regionAvailabilityProvider:v29 disableAndExpiryProvider:v52 loggingCategory:v54];
    featureAvailabilityManager = v14->_featureAvailabilityManager;
    v14->_featureAvailabilityManager = v30;

    if (v42)
    {
      v32 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:v55 featureAvailabilityExtension:v14->_featureAvailabilityManager loggingCategory:v54];
      featureDeliveryManager = v14->_featureDeliveryManager;
      v14->_featureDeliveryManager = v32;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3
{
  if ([a3 isEqualToString:self->_featureIdentifier])
  {
    v4 = self->_featureAvailabilityManager;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_initWithProfile:(void *)a3 featureIdentifier:(void *)a4 loggingCategory:
{
  if (result)
  {
    v6 = result;
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v10 = [v9 daemon];
    v11 = [v10 behavior];
    v12 = [v11 isCompanionCapable];

    v13 = [v6 initWithProfile:v9 featureIdentifier:v8 isBackgroundDeliveryEnabled:v12 loggingCategory:v7];
    return v13;
  }

  return result;
}

@end