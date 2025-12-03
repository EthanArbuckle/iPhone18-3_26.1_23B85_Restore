@interface HKHRAFibBurdenFeatureAvailabilityRequirements
+ (id)_analysis;
+ (id)_highlightGeneration;
+ (id)_lifeFactorPlatterGeneration;
+ (id)_mutualExclusivityEnforcement;
+ (id)_onboardingInitiation;
+ (id)_pdfGeneration;
+ (id)_promotion;
+ (id)_tipsAppVisibility;
+ (id)_usage;
+ (id)analysisRequirementIdentifiers;
+ (id)highlightGenerationRequirementIdentifiers;
+ (id)lifeFactorPlatterGenerationRequirementIdentifiers;
+ (id)onboardingInitiationRequirementIdentifiers;
+ (id)pdfRequirementIdentifiers;
+ (id)promotionRequirementIdentifiers;
+ (id)requirementSet;
+ (id)tipsAppVisibilityRequirementIdentifiers;
+ (id)usageRequirementIdentifiers;
@end

@implementation HKHRAFibBurdenFeatureAvailabilityRequirements

+ (id)requirementSet
{
  v17[9] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CCD420]);
  v16[0] = *MEMORY[0x277CCBE38];
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v17[0] = _onboardingInitiation;
  v16[1] = *MEMORY[0x277CCBE50];
  _promotion = [objc_opt_class() _promotion];
  v17[1] = _promotion;
  v16[2] = *MEMORY[0x277CCBE88];
  _tipsAppVisibility = [objc_opt_class() _tipsAppVisibility];
  v17[2] = _tipsAppVisibility;
  v16[3] = *MEMORY[0x277CCBEA0];
  _usage = [objc_opt_class() _usage];
  v17[3] = _usage;
  v16[4] = @"AFibBurdenAnalysis";
  _analysis = [objc_opt_class() _analysis];
  v17[4] = _analysis;
  v16[5] = *MEMORY[0x277CCBE18];
  _highlightGeneration = [objc_opt_class() _highlightGeneration];
  v17[5] = _highlightGeneration;
  v16[6] = @"LifeFactorPlatterGeneration";
  _lifeFactorPlatterGeneration = [objc_opt_class() _lifeFactorPlatterGeneration];
  v17[6] = _lifeFactorPlatterGeneration;
  v16[7] = @"PDFGeneration";
  _pdfGeneration = [objc_opt_class() _pdfGeneration];
  v17[7] = _pdfGeneration;
  v16[8] = *MEMORY[0x277CCBE20];
  _mutualExclusivityEnforcement = [objc_opt_class() _mutualExclusivityEnforcement];
  v17[8] = _mutualExclusivityEnforcement;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:9];
  v12 = [v2 initWithRequirementsByContext:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)onboardingInitiationRequirementIdentifiers
{
  _onboardingInitiation = [self _onboardingInitiation];
  v4 = [self _requirementIdentifiersForRequirements:_onboardingInitiation];

  return v4;
}

+ (id)promotionRequirementIdentifiers
{
  _promotion = [self _promotion];
  v4 = [self _requirementIdentifiersForRequirements:_promotion];

  return v4;
}

+ (id)tipsAppVisibilityRequirementIdentifiers
{
  _tipsAppVisibility = [self _tipsAppVisibility];
  v4 = [self _requirementIdentifiersForRequirements:_tipsAppVisibility];

  return v4;
}

+ (id)usageRequirementIdentifiers
{
  _usage = [self _usage];
  v4 = [self _requirementIdentifiersForRequirements:_usage];

  return v4;
}

+ (id)analysisRequirementIdentifiers
{
  _analysis = [self _analysis];
  v4 = [self _requirementIdentifiersForRequirements:_analysis];

  return v4;
}

+ (id)highlightGenerationRequirementIdentifiers
{
  _highlightGeneration = [self _highlightGeneration];
  v4 = [self _requirementIdentifiersForRequirements:_highlightGeneration];

  return v4;
}

+ (id)lifeFactorPlatterGenerationRequirementIdentifiers
{
  _lifeFactorPlatterGeneration = [self _lifeFactorPlatterGeneration];
  v4 = [self _requirementIdentifiersForRequirements:_lifeFactorPlatterGeneration];

  return v4;
}

+ (id)pdfRequirementIdentifiers
{
  _pdfGeneration = [self _pdfGeneration];
  v4 = [self _requirementIdentifiersForRequirements:_pdfGeneration];

  return v4;
}

+ (id)_onboardingInitiation
{
  v13[6] = *MEMORY[0x277D85DE8];
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v13[0] = profileIsNotFamilySetupPairingProfile;
  notInStoreDemoMode = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v13[1] = notInStoreDemoMode;
  v4 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v6 = [v4 capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_featureIdentifier];
  v13[2] = v6;
  v7 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC228]];
  v13[3] = v7;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v13[4] = healthAppIsNotHidden;
  localDeviceIsCapableOfWatchPairing = [MEMORY[0x277CCD428] localDeviceIsCapableOfWatchPairing];
  v13[5] = localDeviceIsCapableOfWatchPairing;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_promotion
{
  v22[7] = *MEMORY[0x277D85DE8];
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v3 = [_onboardingInitiation mutableCopy];

  v4 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v20 = [v4 seedIsNotExpiredForFeatureWithIdentifier:_featureIdentifier];
  v22[0] = v20;
  v5 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v6 = [v5 featureIsNotRemotelyDisabledWithIdentifier:_featureIdentifier2];
  v22[1] = v6;
  v7 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v9 = [v7 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_featureIdentifier3 isSupportedIfCountryListMissing:0];
  v22[2] = v9;
  v10 = MEMORY[0x277CCD428];
  _featureIdentifier4 = [objc_opt_class() _featureIdentifier];
  v12 = [v10 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier4];
  v22[3] = v12;
  wristDetectionIsEnabledForActiveWatch = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v22[4] = wristDetectionIsEnabledForActiveWatch;
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v22[5] = heartRateIsEnabledInPrivacy;
  v15 = [MEMORY[0x277CCD428] mutuallyExclusiveFeatureIsOffWithIdentifier:*MEMORY[0x277CCC070]];
  v22[6] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:7];
  [v3 addObjectsFromArray:v16];

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_tipsAppVisibility
{
  v19[4] = *MEMORY[0x277D85DE8];
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v3 = [_onboardingInitiation mutableCopy];

  v4 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v6 = [v4 seedIsNotExpiredForFeatureWithIdentifier:_featureIdentifier];
  v19[0] = v6;
  v7 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v9 = [v7 featureIsNotRemotelyDisabledWithIdentifier:_featureIdentifier2];
  v19[1] = v9;
  v10 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v12 = [v10 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_featureIdentifier3 isSupportedIfCountryListMissing:0];
  v19[2] = v12;
  v13 = MEMORY[0x277CCD428];
  _featureIdentifier4 = [objc_opt_class() _featureIdentifier];
  v15 = [v13 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier4];
  v19[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
  [v3 addObjectsFromArray:v16];

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_usage
{
  v17[4] = *MEMORY[0x277D85DE8];
  _promotion = [objc_opt_class() _promotion];
  v3 = [_promotion mutableCopy];

  [v3 hk_removeObjectsPassingTest:&__block_literal_global_9];
  v4 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC228]];
  v17[0] = v4;
  v5 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v7 = [v5 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_featureIdentifier isSupportedIfCountryListMissing:1];
  v17[1] = v7;
  v8 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier2];
  v17[2] = v10;
  v11 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v13 = [v11 featureIsOnWithIdentifier:_featureIdentifier3 isOnIfSettingIsAbsent:0];
  v17[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  [v3 addObjectsFromArray:v14];

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __55__HKHRAFibBurdenFeatureAvailabilityRequirements__usage__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() requirementIdentifier];
  if ([v3 isEqualToString:*MEMORY[0x277CCBF70]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [objc_opt_class() requirementIdentifier];
    v4 = [v5 isEqualToString:*MEMORY[0x277CCBF00]];
  }

  return v4;
}

+ (id)_analysis
{
  v8[1] = *MEMORY[0x277D85DE8];
  _usage = [objc_opt_class() _usage];
  v3 = [_usage mutableCopy];

  [v3 hk_removeObjectsPassingTest:&__block_literal_global_306];
  localDeviceIsCapableOfPairingWithWatch = [MEMORY[0x277CCD428] localDeviceIsCapableOfPairingWithWatch];
  v8[0] = localDeviceIsCapableOfPairingWithWatch;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v3 addObjectsFromArray:v5];

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __58__HKHRAFibBurdenFeatureAvailabilityRequirements__analysis__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() requirementIdentifier];
  if ([v3 isEqualToString:*MEMORY[0x277CCBEF0]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [objc_opt_class() requirementIdentifier];
    if ([v5 isEqualToString:*MEMORY[0x277CCBF00]])
    {
      v4 = 1;
    }

    else
    {
      v6 = [objc_opt_class() requirementIdentifier];
      v4 = [v6 isEqualToString:*MEMORY[0x277CCBF60]];
    }
  }

  return v4;
}

+ (id)_highlightGeneration
{
  v8[1] = *MEMORY[0x277D85DE8];
  _analysis = [objc_opt_class() _analysis];
  v3 = [_analysis mutableCopy];

  [v3 hk_removeObjectsPassingTest:&__block_literal_global_308];
  v4 = [MEMORY[0x277CCD428] onboardedAtLeastDaysAgo:42 featureIdentifier:*MEMORY[0x277CCBFF0]];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v3 addObjectsFromArray:v5];

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __69__HKHRAFibBurdenFeatureAvailabilityRequirements__highlightGeneration__block_invoke()
{
  v0 = [objc_opt_class() requirementIdentifier];
  v1 = [v0 isEqualToString:*MEMORY[0x277CCBF80]];

  return v1;
}

+ (id)_lifeFactorPlatterGeneration
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v4 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_pdfGeneration
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v4 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier];
  v9[0] = v4;
  localDeviceIsCapableOfPairingWithWatch = [MEMORY[0x277CCD428] localDeviceIsCapableOfPairingWithWatch];
  v9[1] = localDeviceIsCapableOfPairingWithWatch;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_mutualExclusivityEnforcement
{
  _usage = [objc_opt_class() _usage];
  v3 = [_usage mutableCopy];

  [v3 hk_removeObjectsPassingTest:&__block_literal_global_310];

  return v3;
}

uint64_t __78__HKHRAFibBurdenFeatureAvailabilityRequirements__mutualExclusivityEnforcement__block_invoke()
{
  v0 = [objc_opt_class() requirementIdentifier];
  v1 = [v0 isEqualToString:*MEMORY[0x277CCBF60]];

  return v1;
}

uint64_t __88__HKHRAFibBurdenFeatureAvailabilityRequirements__requirementIdentifiersForRequirements___block_invoke()
{
  v0 = objc_opt_class();

  return [v0 requirementIdentifier];
}

@end