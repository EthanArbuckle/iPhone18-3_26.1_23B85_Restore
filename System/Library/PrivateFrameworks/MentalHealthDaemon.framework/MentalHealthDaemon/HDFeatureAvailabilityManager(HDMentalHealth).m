@interface HDFeatureAvailabilityManager(HDMentalHealth)
+ (id)_hdmc_availabilityManagerForFeatureIdentifier:()HDMentalHealth profile:availabilityRequirements:localCountrySet:;
+ (id)hdmh_depressionAndAnxietyAssessmentsAvailabilityManagerWithProfile:()HDMentalHealth;
+ (id)hdmh_periodicDepressionAndAnxietyAssessmentPromptsAvailabilityManagerWithProfile:()HDMentalHealth;
+ (id)hdmh_stateOfMindLoggingAvailabilityManagerWithProfile:()HDMentalHealth;
+ (id)hdmh_stateOfMindLoggingPatternEscalationsAvailabilityManagerWithProfile:()HDMentalHealth;
@end

@implementation HDFeatureAvailabilityManager(HDMentalHealth)

+ (id)hdmh_stateOfMindLoggingAvailabilityManagerWithProfile:()HDMentalHealth
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCC100];
  v26 = *MEMORY[0x277CCC100];
  v4 = MEMORY[0x277D106D8];
  v28 = a3;
  v27 = [v4 alloc];
  v5 = objc_alloc(MEMORY[0x277CCD420]);
  v31[0] = *MEMORY[0x277CCBE50];
  v6 = MEMORY[0x277CCD428];
  v25 = [MEMORY[0x277CCDD30] sharedBehavior];
  v24 = [v25 features];
  v23 = [v6 featureFlagIsEnabled:{objc_msgSend(v24, "chamomile")}];
  v30[0] = v23;
  v7 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v30[1] = v7;
  v8 = [MEMORY[0x277CCD428] onboardingRecordIsNotPresentForFeatureWithIdentifier:v3];
  v30[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v32[0] = v9;
  v31[1] = *MEMORY[0x277CCBEA0];
  v10 = MEMORY[0x277CCD428];
  v11 = [MEMORY[0x277CCDD30] sharedBehavior];
  v12 = [v11 features];
  v13 = [v10 featureFlagIsEnabled:{objc_msgSend(v12, "chamomile")}];
  v29[0] = v13;
  v14 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v29[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v32[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v17 = [v5 initWithRequirementsByContext:v16];

  v18 = [MEMORY[0x277D10828] uncheckedAvailability];
  v19 = objc_alloc_init(MEMORY[0x277D106E8]);
  v20 = [v27 initWithProfile:v28 featureIdentifier:v26 availabilityRequirements:v17 currentOnboardingVersion:1 pairedDeviceCapability:0 regionAvailabilityProvider:v18 disableAndExpiryProvider:v19 loggingCategory:*MEMORY[0x277CCC2F0]];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)_hdmc_availabilityManagerForFeatureIdentifier:()HDMentalHealth profile:availabilityRequirements:localCountrySet:
{
  v9 = MEMORY[0x277D10728];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 alloc];
  v15 = [v12 daemon];
  v16 = [v14 initWithFeatureIdentifier:v13 defaultCountrySet:v10 healthDaemon:v15];

  v17 = objc_alloc(MEMORY[0x277D107C0]);
  v18 = [v12 daemon];
  v19 = [v17 initWithDaemon:v18 featureIdentifier:v13];

  v20 = objc_alloc(MEMORY[0x277D106D8]);
  v21 = [v20 initWithProfile:v12 featureIdentifier:v13 availabilityRequirements:v11 currentOnboardingVersion:1 pairedDeviceCapability:0 regionAvailabilityProvider:v16 disableAndExpiryProvider:v19 loggingCategory:*MEMORY[0x277CCC2F0]];

  return v21;
}

+ (id)hdmh_depressionAndAnxietyAssessmentsAvailabilityManagerWithProfile:()HDMentalHealth
{
  v46[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCC008];
  v4 = MEMORY[0x277CCD420];
  v39 = a3;
  v30 = [v4 alloc];
  v45[0] = *MEMORY[0x277CCBE00];
  v5 = MEMORY[0x277CCD428];
  v38 = [MEMORY[0x277CCDD30] sharedBehavior];
  v37 = [v38 features];
  v36 = [v5 featureFlagIsEnabled:{objc_msgSend(v37, "chamomile")}];
  v44[0] = v36;
  v35 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v44[1] = v35;
  v34 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v44[2] = v34;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
  v46[0] = v33;
  v45[1] = *MEMORY[0x277CCBE70];
  v6 = MEMORY[0x277CCD428];
  v32 = [MEMORY[0x277CCDD30] sharedBehavior];
  v29 = [v32 features];
  v28 = [v6 featureFlagIsEnabled:{objc_msgSend(v29, "chamomile")}];
  v43[0] = v28;
  v27 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v43[1] = v27;
  v26 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC238]];
  v43[2] = v26;
  v25 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v43[3] = v25;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
  v46[1] = v24;
  v45[2] = *MEMORY[0x277CCBE68];
  v23 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v42[0] = v23;
  v22 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v42[1] = v22;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  v46[2] = v21;
  v45[3] = *MEMORY[0x277CCBEA0];
  v7 = MEMORY[0x277CCD428];
  v8 = [MEMORY[0x277CCDD30] sharedBehavior];
  v9 = [v8 features];
  v10 = [v7 featureFlagIsEnabled:{objc_msgSend(v9, "chamomile")}];
  v41[0] = v10;
  v11 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v41[1] = v11;
  v12 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v41[2] = v12;
  v13 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v41[3] = v13;
  v14 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v41[4] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:5];
  v46[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:4];
  v31 = [v30 initWithRequirementsByContext:v16];

  v17 = [MEMORY[0x277CCD260] localAvailabilityForDepressionAndAnxietyAssessments];
  v18 = [a1 _hdmc_availabilityManagerForFeatureIdentifier:v3 profile:v39 availabilityRequirements:v31 localCountrySet:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)hdmh_periodicDepressionAndAnxietyAssessmentPromptsAvailabilityManagerWithProfile:()HDMentalHealth
{
  v56[5] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCC0C0];
  v4 = MEMORY[0x277CCD420];
  v48 = a3;
  v36 = [v4 alloc];
  v55[0] = *MEMORY[0x277CCBE00];
  v5 = MEMORY[0x277CCD428];
  v47 = [MEMORY[0x277CCDD30] sharedBehavior];
  v46 = [v47 features];
  v45 = [v5 featureFlagIsEnabled:{objc_msgSend(v46, "chamomile")}];
  v54[0] = v45;
  v44 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v54[1] = v44;
  v43 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v54[2] = v43;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
  v56[0] = v42;
  v55[1] = *MEMORY[0x277CCBE70];
  v6 = MEMORY[0x277CCD428];
  v41 = [MEMORY[0x277CCDD30] sharedBehavior];
  v40 = [v41 features];
  v39 = [v6 featureFlagIsEnabled:{objc_msgSend(v40, "chamomile")}];
  v53[0] = v39;
  v38 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v53[1] = v38;
  v7 = *MEMORY[0x277CCC238];
  v35 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC238]];
  v53[2] = v35;
  v34 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v53[3] = v34;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
  v56[1] = v33;
  v55[2] = *MEMORY[0x277CCBE68];
  v32 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v52[0] = v32;
  v31 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v52[1] = v31;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v56[2] = v30;
  v55[3] = *MEMORY[0x277CCBEA0];
  v8 = MEMORY[0x277CCD428];
  v29 = [MEMORY[0x277CCDD30] sharedBehavior];
  v28 = [v29 features];
  v27 = [v8 featureFlagIsEnabled:{objc_msgSend(v28, "chamomile")}];
  v51[0] = v27;
  v26 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v51[1] = v26;
  v25 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v51[2] = v25;
  v24 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v51[3] = v24;
  v23 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v7];
  v51[4] = v23;
  v22 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v51[5] = v22;
  v9 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v3 isOnIfSettingIsAbsent:1];
  v51[6] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:7];
  v56[3] = v10;
  v55[4] = *MEMORY[0x277CCBE60];
  v11 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v50[0] = v11;
  v12 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v7];
  v50[1] = v12;
  v13 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v50[2] = v13;
  v14 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v50[3] = v14;
  v15 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v50[4] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:5];
  v56[4] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:5];
  v37 = [v36 initWithRequirementsByContext:v17];

  v18 = [MEMORY[0x277CCD260] localAvailabilityForPeriodicDepressionAndAnxietyAssessmentPrompts];
  v19 = [a1 _hdmc_availabilityManagerForFeatureIdentifier:v3 profile:v48 availabilityRequirements:v37 localCountrySet:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)hdmh_stateOfMindLoggingPatternEscalationsAvailabilityManagerWithProfile:()HDMentalHealth
{
  v49[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCC108];
  v4 = MEMORY[0x277CCD420];
  v42 = a3;
  v32 = [v4 alloc];
  v48[0] = *MEMORY[0x277CCBE00];
  v5 = MEMORY[0x277CCD428];
  v41 = [MEMORY[0x277CCDD30] sharedBehavior];
  v40 = [v41 features];
  v39 = [v5 featureFlagIsEnabled:{objc_msgSend(v40, "chamomile")}];
  v47[0] = v39;
  v38 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v47[1] = v38;
  v37 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v47[2] = v37;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
  v49[0] = v36;
  v48[1] = *MEMORY[0x277CCBE70];
  v6 = MEMORY[0x277CCD428];
  v35 = [MEMORY[0x277CCDD30] sharedBehavior];
  v34 = [v35 features];
  v31 = [v6 featureFlagIsEnabled:{objc_msgSend(v34, "chamomile")}];
  v46[0] = v31;
  v30 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v46[1] = v30;
  v7 = *MEMORY[0x277CCC238];
  v29 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC238]];
  v46[2] = v29;
  v28 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v46[3] = v28;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
  v49[1] = v27;
  v48[2] = *MEMORY[0x277CCBE68];
  v26 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v45[0] = v26;
  v25 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v45[1] = v25;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  v49[2] = v24;
  v48[3] = *MEMORY[0x277CCBEA0];
  v8 = MEMORY[0x277CCD428];
  v23 = [MEMORY[0x277CCDD30] sharedBehavior];
  v22 = [v23 features];
  v9 = [v8 featureFlagIsEnabled:{objc_msgSend(v22, "chamomile")}];
  v44[0] = v9;
  v10 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v44[1] = v10;
  v11 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v44[2] = v11;
  v12 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v44[3] = v12;
  v13 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v7];
  v44[4] = v13;
  v14 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v44[5] = v14;
  v15 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v3 isOnIfSettingIsAbsent:1];
  v44[6] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:7];
  v49[3] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:4];
  v33 = [v32 initWithRequirementsByContext:v17];

  v18 = [MEMORY[0x277CCD260] localAvailabilityForStateOfMindLoggingPatternEscalations];
  v19 = [a1 _hdmc_availabilityManagerForFeatureIdentifier:v3 profile:v42 availabilityRequirements:v33 localCountrySet:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end