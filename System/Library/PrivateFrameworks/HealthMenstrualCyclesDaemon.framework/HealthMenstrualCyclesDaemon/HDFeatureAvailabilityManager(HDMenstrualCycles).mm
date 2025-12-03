@interface HDFeatureAvailabilityManager(HDMenstrualCycles)
+ (id)hdmc_deviationsAvailabilityManagerWithProfile:()HDMenstrualCycles;
+ (id)hdmc_heartRateInputAvailabilityManagerWithProfile:()HDMenstrualCycles;
+ (id)hdmc_menstrualCyclesAvailabilityManagerWithProfile:()HDMenstrualCycles;
+ (id)hdmc_wristTemperatureInputAvailabilityManagerWithProfile:()HDMenstrualCycles;
@end

@implementation HDFeatureAvailabilityManager(HDMenstrualCycles)

+ (id)hdmc_menstrualCyclesAvailabilityManagerWithProfile:()HDMenstrualCycles
{
  v3 = *MEMORY[0x277CCC090];
  v4 = MEMORY[0x277D10728];
  v5 = a3;
  v6 = [v4 alloc];
  emptyCountrySet = [MEMORY[0x277CCD260] emptyCountrySet];
  daemon = [v5 daemon];
  v9 = [v6 initWithFeatureIdentifier:v3 defaultCountrySet:emptyCountrySet healthDaemon:daemon];

  v10 = objc_alloc(MEMORY[0x277D107D8]);
  v11 = HDMCLocalFeatureAttributes();
  v12 = [v10 initWithFeatureIdentifier:v3 localFeatureAttributes:v11 localCountrySetAvailabilityProvider:v9];

  [v12 synchronizeLocalProperties];
  v13 = objc_alloc(MEMORY[0x277D106D8]);
  noRequirements = [MEMORY[0x277CCD420] noRequirements];
  uncheckedAvailability = [MEMORY[0x277D10828] uncheckedAvailability];
  v16 = objc_alloc_init(MEMORY[0x277D106E8]);
  v17 = [v13 initWithProfile:v5 featureIdentifier:v3 availabilityRequirements:noRequirements currentOnboardingVersion:1 pairedDeviceCapability:0 pairedFeatureAttributesProvider:v12 regionAvailabilityProvider:uncheckedAvailability disableAndExpiryProvider:v16 loggingCategory:*MEMORY[0x277CCC2E8]];

  return v17;
}

+ (id)hdmc_heartRateInputAvailabilityManagerWithProfile:()HDMenstrualCycles
{
  v65[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CCC0A0];
  localAvailabilityForMenstrualCyclesHeartRateInput = [MEMORY[0x277CCD260] localAvailabilityForMenstrualCyclesHeartRateInput];
  v6 = objc_alloc(MEMORY[0x277D10728]);
  daemon = [v3 daemon];
  v53 = localAvailabilityForMenstrualCyclesHeartRateInput;
  v8 = [v6 initWithFeatureIdentifier:v4 defaultCountrySet:localAvailabilityForMenstrualCyclesHeartRateInput healthDaemon:daemon];

  v9 = objc_alloc(MEMORY[0x277D107D8]);
  v10 = HDMCHeartRateInputLocalFeatureAttributes();
  v52 = v8;
  v11 = [v9 initWithFeatureIdentifier:v4 localFeatureAttributes:v10 localCountrySetAvailabilityProvider:v8];

  v50 = v11;
  [v11 synchronizeLocalProperties];
  v12 = objc_alloc(MEMORY[0x277D107C0]);
  daemon2 = [v3 daemon];
  v51 = [v12 initWithDaemon:daemon2 featureIdentifier:v4];

  v64[0] = *MEMORY[0x277CCBE70];
  v14 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v4];
  v63 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
  v65[0] = v15;
  v64[1] = *MEMORY[0x277CCBE68];
  v16 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
  v62[0] = v16;
  v17 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceAndPhoneForFeatureWithIdentifier:v4 isSupportedIfCountryListMissing:1];
  v62[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
  v65[1] = v18;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];

  v19 = v3;
  daemon3 = [v3 daemon];
  behavior = [daemon3 behavior];
  LODWORD(v15) = [behavior isAppleWatch];

  v22 = MEMORY[0x277CCC2E8];
  if (v15)
  {
    v23 = v50;
    v24 = [objc_alloc(MEMORY[0x277D10968]) initWithAllowedCountriesDataSource:v50 profile:v3 featureCapability:0 loggingCategory:*MEMORY[0x277CCC2E8]];
    v60 = *MEMORY[0x277CCBEA0];
    v48 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
    v59[0] = v48;
    v47 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v4];
    v59[1] = v47;
    v46 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v4 isSupportedIfCountryListMissing:1];
    v59[2] = v46;
    v45 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v4];
    v59[3] = v45;
    v44 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v4 isOnIfSettingIsAbsent:1];
    v59[4] = v44;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:5];
    v61 = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v27 = v49;
    v28 = [v49 hk_dictionaryByAddingEntriesFromDictionary:v26];
    v29 = v22;
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x277D10728]);
    daemon4 = [v3 daemon];
    v43 = [v30 initWithFeatureIdentifier:v4 defaultCountrySet:v53 healthDaemon:daemon4];

    v57[0] = *MEMORY[0x277CCBE00];
    v48 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v4];
    v56[0] = v48;
    v47 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:*MEMORY[0x277CCC090]];
    v56[1] = v47;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v58[0] = v46;
    v57[1] = *MEMORY[0x277CCBE38];
    v45 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v4];
    v55[0] = v45;
    v44 = [MEMORY[0x277CCD428] onboardingRecordIsNotPresentForFeatureWithIdentifier:v4];
    v55[1] = v44;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v58[1] = v25;
    v57[2] = *MEMORY[0x277CCBEA0];
    v26 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
    v54[0] = v26;
    v42 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v4];
    v54[1] = v42;
    v32 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v4];
    v54[2] = v32;
    v33 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v4 isOnIfSettingIsAbsent:1];
    v54[3] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
    v58[2] = v34;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
    v36 = v35 = v19;
    v28 = [v49 hk_dictionaryByAddingEntriesFromDictionary:v36];

    v19 = v35;
    v29 = MEMORY[0x277CCC2E8];

    v27 = v42;
    v24 = v43;
    v23 = v50;
  }

  v37 = objc_alloc(MEMORY[0x277D106D8]);
  v38 = [objc_alloc(MEMORY[0x277CCD420]) initWithRequirementsByContext:v28];
  v39 = [v37 initWithProfile:v19 featureIdentifier:v4 availabilityRequirements:v38 currentOnboardingVersion:1 pairedDeviceCapability:0 pairedFeatureAttributesProvider:v23 regionAvailabilityProvider:v24 disableAndExpiryProvider:v51 loggingCategory:*v29];

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

+ (id)hdmc_wristTemperatureInputAvailabilityManagerWithProfile:()HDMenstrualCycles
{
  v83[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CCC0A8];
  v5 = HKLocalDeviceHardwareSupportsWristTemperatureMeasurements();
  localAvailabilityForMenstrualCyclesWristTemperatureInput = [MEMORY[0x277CCD260] localAvailabilityForMenstrualCyclesWristTemperatureInput];
  v7 = objc_alloc(MEMORY[0x277D10728]);
  v68 = v3;
  daemon = [v3 daemon];
  v67 = localAvailabilityForMenstrualCyclesWristTemperatureInput;
  v9 = [v7 initWithFeatureIdentifier:v4 defaultCountrySet:localAvailabilityForMenstrualCyclesWristTemperatureInput healthDaemon:daemon];

  v10 = objc_alloc(MEMORY[0x277D107D8]);
  v11 = HDMCWristTemperatureInputLocalFeatureAttributes();
  v66 = v9;
  v12 = [v10 initWithFeatureIdentifier:v4 localFeatureAttributes:v11 localCountrySetAvailabilityProvider:v9];

  v64 = v12;
  [v12 synchronizeLocalProperties];
  v13 = objc_alloc(MEMORY[0x277D107C0]);
  daemon2 = [v3 daemon];
  v65 = [v13 initWithDaemon:daemon2 featureIdentifier:v4];

  v82[0] = *MEMORY[0x277CCBE70];
  v61 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v4];
  v81 = v61;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
  v83[0] = v59;
  v82[1] = *MEMORY[0x277CCBE68];
  v57 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
  v80[0] = v57;
  v15 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceAndPhoneForFeatureWithIdentifier:v4 isSupportedIfCountryListMissing:1];
  v80[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
  v83[1] = v16;
  v82[2] = *MEMORY[0x277CCBE88];
  v17 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v4];
  v79[0] = v17;
  v18 = *MEMORY[0x277CCC258];
  v19 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC258]];
  v79[1] = v19;
  v55 = v5;
  v20 = [MEMORY[0x277CCD428] capabilityIsSupportedOnAnyWatch:0 supportedOnLocalDevice:v5];
  v79[2] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:3];
  v83[2] = v21;
  v82[3] = *MEMORY[0x277CCBE80];
  v53 = v18;
  v22 = [MEMORY[0x277CCD428] defaultTipsAppVisibilityRequirementsForBackgroundDeliveredFeatureWithFeatureIdentifier:v4 isAgeGatedUserDefaultsKey:v18];
  v78 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  v83[3] = v23;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:4];

  v24 = v68;
  daemon3 = [v68 daemon];
  behavior = [daemon3 behavior];
  LODWORD(v23) = [behavior isAppleWatch];

  v27 = MEMORY[0x277CCC2E8];
  if (v23)
  {
    v28 = v64;
    v29 = [objc_alloc(MEMORY[0x277D10968]) initWithAllowedCountriesDataSource:v64 profile:v68 featureCapability:0 loggingCategory:*MEMORY[0x277CCC2E8]];
    v76 = *MEMORY[0x277CCBEA0];
    v30 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
    v75[0] = v30;
    v62 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v4];
    v75[1] = v62;
    v60 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v4 isSupportedIfCountryListMissing:1];
    v75[2] = v60;
    v58 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v4];
    v75[3] = v58;
    v56 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v4 isOnIfSettingIsAbsent:1];
    v75[4] = v56;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:5];
    v77 = v54;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v32 = v63;
    v33 = [v63 hk_dictionaryByAddingEntriesFromDictionary:v31];
    v34 = 0;
  }

  else
  {
    v50 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"CBC78224-8F5E-4D43-8666-69ADBE2A6277"];
    v35 = objc_alloc(MEMORY[0x277D10728]);
    daemon4 = [v68 daemon];
    v51 = [v35 initWithFeatureIdentifier:v4 defaultCountrySet:v67 healthDaemon:daemon4];

    v73[0] = *MEMORY[0x277CCBE00];
    v52 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v4];
    v72[0] = v52;
    v62 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:*MEMORY[0x277CCC090]];
    v72[1] = v62;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
    v74[0] = v60;
    v73[1] = *MEMORY[0x277CCBE10];
    v58 = [MEMORY[0x277CCD428] defaultHelpTileRequirementsForBackgroundDeliveredFeatureWithFeatureIdentifier:v4 isAgeGatedUserDefaultsKey:v53];
    v71[0] = v58;
    v56 = [MEMORY[0x277CCD428] capabilityIsSupportedOnAnyWatch:v50 supportedOnLocalDevice:v55];
    v71[1] = v56;
    v54 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v4 isOnIfSettingIsAbsent:1];
    v71[2] = v54;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:3];
    v74[1] = v31;
    v73[2] = *MEMORY[0x277CCBE38];
    v49 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v4];
    v70 = v49;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
    v74[2] = v48;
    v73[3] = *MEMORY[0x277CCBEA0];
    v37 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
    v69[0] = v37;
    v38 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v4];
    v69[1] = v38;
    v39 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v4];
    v69[2] = v39;
    v40 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v4 isOnIfSettingIsAbsent:1];
    v69[3] = v40;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:4];
    v74[3] = v41;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:4];
    v33 = [v63 hk_dictionaryByAddingEntriesFromDictionary:v42];

    v29 = v51;
    v34 = v50;

    v27 = MEMORY[0x277CCC2E8];
    v24 = v68;

    v30 = v52;
    v32 = v49;
    v28 = v64;
  }

  v43 = objc_alloc(MEMORY[0x277D106D8]);
  v44 = [objc_alloc(MEMORY[0x277CCD420]) initWithRequirementsByContext:v33];
  v45 = [v43 initWithProfile:v24 featureIdentifier:v4 availabilityRequirements:v44 currentOnboardingVersion:1 pairedDeviceCapability:v34 pairedFeatureAttributesProvider:v28 regionAvailabilityProvider:v29 disableAndExpiryProvider:v65 loggingCategory:*v27];

  v46 = *MEMORY[0x277D85DE8];

  return v45;
}

+ (id)hdmc_deviationsAvailabilityManagerWithProfile:()HDMenstrualCycles
{
  v40[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  daemon = [v3 daemon];
  behavior = [daemon behavior];
  isAppleWatch = [behavior isAppleWatch];

  if (isAppleWatch)
  {
    v7 = 0;
  }

  else
  {
    v8 = *MEMORY[0x277CCC098];
    v29 = objc_alloc(MEMORY[0x277CCD420]);
    v39[0] = *MEMORY[0x277CCBE00];
    v34 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:*MEMORY[0x277CCC090]];
    v38[0] = v34;
    v33 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v8];
    v38[1] = v33;
    v32 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v8];
    v38[2] = v32;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
    v40[0] = v31;
    v39[1] = *MEMORY[0x277CCBEA0];
    v28 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v8];
    v37[0] = v28;
    v27 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v8];
    v37[1] = v27;
    v9 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v8];
    v37[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
    v40[1] = v10;
    v39[2] = *MEMORY[0x277CCBE70];
    v11 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v8];
    v36 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v40[2] = v12;
    v39[3] = *MEMORY[0x277CCBE38];
    v13 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v8];
    v35[0] = v13;
    v14 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v8];
    v35[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v40[3] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];
    v30 = [v29 initWithRequirementsByContext:v16];

    localAvailabilityForMenstrualCyclesDeviationDetection = [MEMORY[0x277CCD260] localAvailabilityForMenstrualCyclesDeviationDetection];
    v18 = objc_alloc(MEMORY[0x277D10728]);
    daemon2 = [v3 daemon];
    v20 = [v18 initWithFeatureIdentifier:v8 defaultCountrySet:localAvailabilityForMenstrualCyclesDeviationDetection healthDaemon:daemon2];

    v21 = objc_alloc(MEMORY[0x277D107C0]);
    daemon3 = [v3 daemon];
    v23 = [v21 initWithDaemon:daemon3 featureIdentifier:v8];

    v24 = objc_alloc(MEMORY[0x277D106D8]);
    v7 = [v24 initWithProfile:v3 featureIdentifier:v8 availabilityRequirements:v30 currentOnboardingVersion:1 pairedDeviceCapability:0 regionAvailabilityProvider:v20 disableAndExpiryProvider:v23 loggingCategory:*MEMORY[0x277CCC2E8]];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v7;
}

@end