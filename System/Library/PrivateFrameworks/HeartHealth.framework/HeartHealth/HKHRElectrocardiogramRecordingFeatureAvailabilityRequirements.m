@interface HKHRElectrocardiogramRecordingFeatureAvailabilityRequirements
+ (id)_onboardingInitiationRequirementsForFeatureIdentifier:(id)a3;
+ (id)_onboardingPromotionRequirementsForFeatureIdentifier:(id)a3;
+ (id)_settingsUserInteractionEnabledForFeatureIdentifier:(id)a3;
+ (id)_settingsVisibilityRequirementsForFeatureIdentifier:(id)a3;
+ (id)_upgradeInitiation;
+ (id)_upgradePromotion;
+ (id)_usageRequirementsForFeatureIdentifier:(id)a3;
+ (id)requirementSet;
+ (id)requirementSetV2;
@end

@implementation HKHRElectrocardiogramRecordingFeatureAvailabilityRequirements

+ (id)requirementSet
{
  v17[7] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CCD420]);
  v16[0] = *MEMORY[0x277CCBE38];
  v3 = objc_opt_class();
  v4 = *MEMORY[0x277CCC010];
  v5 = [v3 _onboardingInitiationRequirementsForFeatureIdentifier:*MEMORY[0x277CCC010]];
  v17[0] = v5;
  v16[1] = *MEMORY[0x277CCBE50];
  v6 = [objc_opt_class() _onboardingPromotionRequirementsForFeatureIdentifier:v4];
  v17[1] = v6;
  v16[2] = *MEMORY[0x277CCBEA0];
  v7 = [objc_opt_class() _usageRequirementsForFeatureIdentifier:v4];
  v17[2] = v7;
  v16[3] = *MEMORY[0x277CCBE98];
  v8 = [objc_opt_class() _upgradePromotion];
  v17[3] = v8;
  v16[4] = *MEMORY[0x277CCBE90];
  v9 = [objc_opt_class() _upgradeInitiation];
  v17[4] = v9;
  v16[5] = *MEMORY[0x277CCBE70];
  v10 = [objc_opt_class() _settingsVisibilityRequirementsForFeatureIdentifier:v4];
  v17[5] = v10;
  v16[6] = *MEMORY[0x277CCBE68];
  v11 = [objc_opt_class() _settingsUserInteractionEnabledForFeatureIdentifier:v4];
  v17[6] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:7];
  v13 = [v2 initWithRequirementsByContext:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)requirementSetV2
{
  v19[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CCC020];
  v3 = objc_alloc(MEMORY[0x277CCD420]);
  v18[0] = *MEMORY[0x277CCBE38];
  v4 = [objc_opt_class() _onboardingInitiationRequirementsForFeatureIdentifier:v2];
  v19[0] = v4;
  v18[1] = *MEMORY[0x277CCBE50];
  v5 = [objc_opt_class() _onboardingPromotionRequirementsForFeatureIdentifier:v2];
  v19[1] = v5;
  v18[2] = *MEMORY[0x277CCBEA0];
  v6 = [objc_opt_class() _usageRequirementsForFeatureIdentifier:v2];
  v19[2] = v6;
  v18[3] = *MEMORY[0x277CCBE00];
  v7 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v2];
  v8 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:{*MEMORY[0x277CCC018], v7}];
  v17[1] = v8;
  v9 = MEMORY[0x277CCD428];
  v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"253F2ED0-FFC6-4D36-A387-B6965C9E4682"];
  v11 = [v9 capabilityIsSupportedOnAnyWatch:v10 supportedOnLocalDevice:1];
  v17[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v19[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v14 = [v3 initWithRequirementsByContext:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_onboardingInitiationRequirementsForFeatureIdentifier:(id)a3
{
  v16[8] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD428];
  v4 = a3;
  v5 = [v3 seedIsNotExpiredForFeatureWithIdentifier:v4];
  v16[0] = v5;
  v6 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
  v16[1] = v6;
  v7 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v16[2] = v7;
  v8 = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v16[3] = v8;
  v9 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v4];
  v16[4] = v9;
  v10 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v4];

  v16[5] = v10;
  v11 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC228]];
  v16[6] = v11;
  v12 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v16[7] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:8];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_onboardingPromotionRequirementsForFeatureIdentifier:(id)a3
{
  v20[12] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD428];
  v4 = a3;
  v19 = [v3 seedIsNotExpiredForFeatureWithIdentifier:v4];
  v20[0] = v19;
  v18 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
  v20[1] = v18;
  v17 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v20[2] = v17;
  v5 = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v20[3] = v5;
  v6 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v4];
  v20[4] = v6;
  v7 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v4];
  v20[5] = v7;
  v8 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v4 isSupportedIfCountryListMissing:0];
  v20[6] = v8;
  v9 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v4];

  v20[7] = v9;
  v10 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC228]];
  v20[8] = v10;
  v11 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v20[9] = v11;
  v12 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v20[10] = v12;
  v13 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v20[11] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:12];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_usageRequirementsForFeatureIdentifier:(id)a3
{
  v19[11] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD428];
  v4 = a3;
  v18 = [v3 seedIsNotExpiredForFeatureWithIdentifier:v4];
  v19[0] = v18;
  v17 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
  v19[1] = v17;
  v5 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v19[2] = v5;
  v6 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v4];
  v19[3] = v6;
  v7 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v4];
  v19[4] = v7;
  v8 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v4 isSupportedIfCountryListMissing:0];
  v19[5] = v8;
  v9 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v4];

  v19[6] = v9;
  v10 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC228]];
  v19[7] = v10;
  v11 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v19[8] = v11;
  v12 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v19[9] = v12;
  v13 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v19[10] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:11];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_upgradePromotion
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CCC020];
  v3 = [a1 _onboardingPromotionRequirementsForFeatureIdentifier:*MEMORY[0x277CCC020]];
  v4 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:*MEMORY[0x277CCC018]];
  v10[0] = v4;
  v5 = [MEMORY[0x277CCD428] onboardingRecordIsNotPresentForFeatureWithIdentifier:v2];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v3 arrayByAddingObjectsFromArray:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_upgradeInitiation
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CCC020];
  v3 = [a1 _onboardingInitiationRequirementsForFeatureIdentifier:*MEMORY[0x277CCC020]];
  v4 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:*MEMORY[0x277CCC018]];
  v12[0] = v4;
  v5 = [MEMORY[0x277CCD428] onboardingRecordIsNotPresentForFeatureWithIdentifier:v2];
  v12[1] = v5;
  v6 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v2 isSupportedIfCountryListMissing:0];
  v12[2] = v6;
  v7 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v2];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v9 = [v3 arrayByAddingObjectsFromArray:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_settingsVisibilityRequirementsForFeatureIdentifier:(id)a3
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD428];
  v4 = a3;
  v5 = [v3 profileIsNotFamilySetupPairingProfile];
  v12[0] = v5;
  v6 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v4];
  v12[1] = v6;
  v7 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v4];

  v12[2] = v7;
  v8 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v12[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_settingsUserInteractionEnabledForFeatureIdentifier:(id)a3
{
  v13[5] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD428];
  v4 = a3;
  v5 = [v3 profileIsNotFamilySetupPairingProfile];
  v6 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v13[1] = v6;
  v7 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
  v13[2] = v7;
  v8 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v4];

  v13[3] = v8;
  v9 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v13[4] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end