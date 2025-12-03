@interface HDRespiratoryRateMeasurementsProfileExtension
- (HDRespiratoryRateMeasurementsProfileExtension)initWithProfile:(id)profile;
- (HDRespiratoryRateMeasurementsProfileExtension)initWithProfile:(id)profile featureIdentifier:(id)identifier isBackgroundDeliveryEnabled:(BOOL)enabled loggingCategory:(id)category;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier;
- (void)_initWithProfile:(void *)profile featureIdentifier:(void *)identifier loggingCategory:;
@end

@implementation HDRespiratoryRateMeasurementsProfileExtension

- (HDRespiratoryRateMeasurementsProfileExtension)initWithProfile:(id)profile
{
  v4 = *MEMORY[0x277CCC0C8];
  profileCopy = profile;
  v6 = HKLogInfrastructure();
  v7 = [(HDRespiratoryRateMeasurementsProfileExtension *)self _initWithProfile:profileCopy featureIdentifier:v4 loggingCategory:v6];

  return v7;
}

- (HDRespiratoryRateMeasurementsProfileExtension)initWithProfile:(id)profile featureIdentifier:(id)identifier isBackgroundDeliveryEnabled:(BOOL)enabled loggingCategory:(id)category
{
  enabledCopy = enabled;
  v62[4] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  identifierCopy = identifier;
  categoryCopy = category;
  v56.receiver = self;
  v56.super_class = HDRespiratoryRateMeasurementsProfileExtension;
  v13 = [(HDRespiratoryRateMeasurementsProfileExtension *)&v56 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_featureIdentifier, identifier);
    v15 = objc_alloc(MEMORY[0x277D107C0]);
    [profileCopy daemon];
    v16 = v54 = categoryCopy;
    v52 = [v15 initWithDaemon:v16 featureIdentifier:identifierCopy];

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
    profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
    v59[3] = profileIsNotFamilySetupPairingProfile;
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
    profileIsNotFamilySetupPairingProfile2 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
    v57[1] = profileIsNotFamilySetupPairingProfile2;
    [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v18];
    v20 = v42 = enabledCopy;
    v57[2] = v20;
    v21 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v18];
    v57[3] = v21;
    [MEMORY[0x277CCD428] countryIsSupportedOnWatchForFeatureWithIdentifier:v18 isSupportedIfCountryListMissing:0];
    v22 = v55 = profileCopy;
    v57[4] = v22;
    v23 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v19];
    v57[5] = v23;
    v24 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v18 isOnIfSettingIsAbsent:1];

    v57[6] = v24;
    [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
    v26 = v25 = identifierCopy;
    v57[7] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:8];
    v62[3] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:4];
    v44 = [v43 initWithRequirementsByContext:v28];

    identifierCopy = v25;
    categoryCopy = v54;

    profileCopy = v55;
    anyCountryAvailability = [MEMORY[0x277D10828] anyCountryAvailability];
    v30 = [v53 initWithProfile:v55 featureIdentifier:v25 availabilityRequirements:v44 currentOnboardingVersion:1 pairedDeviceCapability:v49 regionAvailabilityProvider:anyCountryAvailability disableAndExpiryProvider:v52 loggingCategory:v54];
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

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier
{
  if ([identifier isEqualToString:self->_featureIdentifier])
  {
    v4 = self->_featureAvailabilityManager;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_initWithProfile:(void *)profile featureIdentifier:(void *)identifier loggingCategory:
{
  if (result)
  {
    v6 = result;
    identifierCopy = identifier;
    profileCopy = profile;
    v9 = a2;
    daemon = [v9 daemon];
    behavior = [daemon behavior];
    isCompanionCapable = [behavior isCompanionCapable];

    v13 = [v6 initWithProfile:v9 featureIdentifier:profileCopy isBackgroundDeliveryEnabled:isCompanionCapable loggingCategory:identifierCopy];
    return v13;
  }

  return result;
}

@end