@interface HKFeatureAvailabilityRequirementSet(BPJ)
+ (id)bloodPressureJournalFeatureAvailabilityRequirementSet;
@end

@implementation HKFeatureAvailabilityRequirementSet(BPJ)

+ (id)bloodPressureJournalFeatureAvailabilityRequirementSet
{
  v55[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCBFF8];
  v35 = objc_alloc(MEMORY[0x277CCD420]);
  v54[0] = *MEMORY[0x277CCBE00];
  v48 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v0];
  v53[0] = v48;
  v1 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v45 = [v1 featureFlagIsEnabled:{objc_msgSend(features, "chutney")}];
  v53[1] = v45;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v55[0] = v44;
  v54[1] = *MEMORY[0x277CCBE70];
  v43 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v0];
  v52[0] = v43;
  v42 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v0];
  v52[1] = v42;
  v41 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v52[2] = v41;
  v40 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v0];
  v52[3] = v40;
  v2 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
  features2 = [mEMORY[0x277CCDD30]2 features];
  v37 = [v2 featureFlagIsEnabled:{objc_msgSend(features2, "chutney")}];
  v52[4] = v37;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:5];
  v55[1] = v34;
  v54[2] = *MEMORY[0x277CCBEA0];
  v33 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v0];
  v51[0] = v33;
  v32 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v0];
  v51[1] = v32;
  v31 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v51[2] = v31;
  v30 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v0];
  v51[3] = v30;
  v3 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]3 = [MEMORY[0x277CCDD30] sharedBehavior];
  features3 = [mEMORY[0x277CCDD30]3 features];
  v27 = [v3 featureFlagIsEnabled:{objc_msgSend(features3, "chutney")}];
  v51[4] = v27;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:5];
  v55[2] = v26;
  v54[3] = *MEMORY[0x277CCBE50];
  v25 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v0];
  v50[0] = v25;
  v24 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v0];
  v50[1] = v24;
  v23 = [MEMORY[0x277CCD428] onboardingNotAcknowledgedWithIdentifier:v0];
  v50[2] = v23;
  v22 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v50[3] = v22;
  v21 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v0];
  v50[4] = v21;
  v4 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]4 = [MEMORY[0x277CCDD30] sharedBehavior];
  features4 = [mEMORY[0x277CCDD30]4 features];
  v18 = [v4 featureFlagIsEnabled:{objc_msgSend(features4, "chutney")}];
  v50[5] = v18;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:6];
  v55[3] = v5;
  v54[4] = *MEMORY[0x277D12E60];
  v6 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v0];
  v49[0] = v6;
  v7 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v0];
  v49[1] = v7;
  v8 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v49[2] = v8;
  v9 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v0];
  v49[3] = v9;
  v10 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]5 = [MEMORY[0x277CCDD30] sharedBehavior];
  features5 = [mEMORY[0x277CCDD30]5 features];
  v13 = [v10 featureFlagIsEnabled:{objc_msgSend(features5, "chutney")}];
  v49[4] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:5];
  v55[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:5];
  v36 = [v35 initWithRequirementsByContext:v15];

  v16 = *MEMORY[0x277D85DE8];

  return v36;
}

@end