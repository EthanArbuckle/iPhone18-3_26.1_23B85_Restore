@interface HDWristTemperatureMeasurementsProfileExtension
- (HDWristTemperatureMeasurementsProfileExtension)initWithProfile:(id)a3;
- (HDWristTemperatureMeasurementsProfileExtension)initWithProfile:(id)a3 featureIdentifier:(id)a4 isBackgroundDeliveryEnabled:(BOOL)a5 loggingCategory:(id)a6;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3;
@end

@implementation HDWristTemperatureMeasurementsProfileExtension

- (HDWristTemperatureMeasurementsProfileExtension)initWithProfile:(id)a3
{
  v4 = *MEMORY[0x277CCC0F8];
  v5 = a3;
  v6 = HKLogInfrastructure();
  v7 = [(HDRespiratoryRateMeasurementsProfileExtension *)self _initWithProfile:v5 featureIdentifier:v4 loggingCategory:v6];

  return v7;
}

- (HDWristTemperatureMeasurementsProfileExtension)initWithProfile:(id)a3 featureIdentifier:(id)a4 isBackgroundDeliveryEnabled:(BOOL)a5 loggingCategory:(id)a6
{
  v7 = a5;
  v98[8] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v87.receiver = self;
  v87.super_class = HDWristTemperatureMeasurementsProfileExtension;
  v13 = [(HDWristTemperatureMeasurementsProfileExtension *)&v87 init];
  v14 = v13;
  if (v13)
  {
    v84 = v13;
    objc_storeStrong(&v13->_featureIdentifier, a4);
    v15 = [MEMORY[0x277CCDD30] sharedBehavior];
    v83 = v7;
    if ([v15 isAppleWatch])
    {
      v16 = 0;
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"CBC78224-8F5E-4D43-8666-69ADBE2A6277"];
    }

    v17 = [MEMORY[0x277CCD260] localAvailabilityForWristTemperatureMeasurements];
    v18 = objc_alloc(MEMORY[0x277D10728]);
    v19 = [v10 daemon];
    v82 = v17;
    v20 = [v18 initWithFeatureIdentifier:v11 defaultCountrySet:v17 healthDaemon:v19];

    v21 = objc_alloc(MEMORY[0x277D107D8]);
    v22 = [MEMORY[0x277CCD3D8] featureAttributesDerivedFromOSBuildAndFeatureVersion:@"1"];
    v81 = v20;
    v23 = [v21 initWithFeatureIdentifier:v11 localFeatureAttributes:v22 localCountrySetAvailabilityProvider:v20];

    [v23 synchronizeLocalProperties];
    v80 = v23;
    v75 = [objc_alloc(MEMORY[0x277D10968]) initWithAllowedCountriesDataSource:v23 profile:v10 featureCapability:v16 loggingCategory:v12];
    v24 = objc_alloc(MEMORY[0x277D107C0]);
    v25 = [v10 daemon];
    v71 = [v24 initWithDaemon:v25 featureIdentifier:v11];

    v79 = objc_alloc(MEMORY[0x277D106D8]);
    v26 = MEMORY[0x277CCD420];
    v85 = v11;
    v27 = v11;
    v28 = v16;
    v66 = [v26 alloc];
    v97[0] = *MEMORY[0x277CCBE00];
    v78 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v27];
    v96 = v78;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:&v96 count:1];
    v98[0] = v77;
    v97[1] = *MEMORY[0x277CCBE08];
    v76 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v27 supportedOnLocalDevice:HKLocalDeviceHardwareSupportsWristTemperatureMeasurements()];
    v95[0] = v76;
    v74 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v27];
    v95[1] = v74;
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:2];
    v98[1] = v73;
    v97[2] = *MEMORY[0x277CCBE10];
    v29 = *MEMORY[0x277CCC258];
    v72 = [MEMORY[0x277CCD428] defaultHelpTileRequirementsForBackgroundDeliveredFeatureWithFeatureIdentifier:v27 isAgeGatedUserDefaultsKey:*MEMORY[0x277CCC258]];
    v94[0] = v72;
    v70 = [MEMORY[0x277CCD428] capabilityIsSupportedOnAnyWatch:v28 supportedOnLocalDevice:HKLocalDeviceHardwareSupportsWristTemperatureMeasurements()];
    v94[1] = v70;
    v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
    v98[2] = v69;
    v97[3] = *MEMORY[0x277CCBE70];
    v68 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v27];
    v93[0] = v68;
    v65 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v27 supportedOnLocalDevice:HKLocalDeviceHardwareSupportsWristTemperatureMeasurements()];
    v93[1] = v65;
    v64 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v29];
    v93[2] = v64;
    v63 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
    v93[3] = v63;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:4];
    v98[3] = v62;
    v97[4] = *MEMORY[0x277CCBE68];
    v61 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v27];
    v92[0] = v61;
    v60 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v27];
    v92[1] = v60;
    v59 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v27 isSupportedIfCountryListMissing:1];
    v92[2] = v59;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:3];
    v98[4] = v58;
    v97[5] = *MEMORY[0x277CCBE88];
    v57 = [MEMORY[0x277CCD428] defaultTipsAppVisibilityRequirementsForBackgroundDeliveredFeatureWithFeatureIdentifier:v27 isAgeGatedUserDefaultsKey:v29];
    v91[0] = v57;
    v56 = [MEMORY[0x277CCD428] capabilityIsSupportedOnAnyWatch:v28 supportedOnLocalDevice:HKLocalDeviceHardwareSupportsWristTemperatureMeasurements()];
    v91[1] = v56;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
    v98[5] = v55;
    v97[6] = *MEMORY[0x277CCBE80];
    v54 = [MEMORY[0x277CCD428] defaultTipsAppVisibilityRequirementsForBackgroundDeliveredFeatureWithFeatureIdentifier:v27 isAgeGatedUserDefaultsKey:v29];
    v90[0] = v54;
    v49 = v28;
    v53 = [MEMORY[0x277CCD428] capabilityIsSupportedOnAnyWatch:v28 supportedOnLocalDevice:HKLocalDeviceHardwareSupportsWristTemperatureMeasurements()];

    v90[1] = v53;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
    v98[6] = v52;
    v97[7] = *MEMORY[0x277CCBEA0];
    v51 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
    v89[0] = v51;
    v50 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v27];
    v89[1] = v50;
    v48 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v27 supportedOnLocalDevice:HKLocalDeviceHardwareSupportsWristTemperatureMeasurements()];
    v89[2] = v48;
    v47 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v27];
    v89[3] = v47;
    v46 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v27];
    v89[4] = v46;
    v30 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v27 isSupportedIfCountryListMissing:1];
    v89[5] = v30;
    v31 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v29];
    v89[6] = v31;
    v32 = MEMORY[0x277CCD428];
    v88 = *MEMORY[0x277CCC0E8];
    [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
    v33 = v86 = v10;
    [v32 onboardingRecordsArePresentForPrerequisiteFeaturesWithIdentifiers:v33];
    v35 = v34 = v12;
    v89[7] = v35;
    v36 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v27 isOnIfSettingIsAbsent:1];

    v89[8] = v36;
    v37 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
    v89[9] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:10];
    v98[7] = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:8];
    v67 = [v66 initWithRequirementsByContext:v39];

    v12 = v34;
    v10 = v86;

    v40 = [v79 initWithProfile:v86 featureIdentifier:v27 availabilityRequirements:v67 currentOnboardingVersion:1 pairedDeviceCapability:v49 regionAvailabilityProvider:v75 disableAndExpiryProvider:v71 loggingCategory:v34];
    v14 = v84;
    featureAvailabilityManager = v84->_featureAvailabilityManager;
    v84->_featureAvailabilityManager = v40;

    if (v83)
    {
      v42 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:v86 featureAvailabilityExtension:v84->_featureAvailabilityManager loggingCategory:v34];
      featureDeliveryManager = v84->_featureDeliveryManager;
      v84->_featureDeliveryManager = v42;
    }

    v11 = v85;
  }

  v44 = *MEMORY[0x277D85DE8];
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

@end