@interface HKMobilityWalkingSteadinessFeatureAvailabilityRequirements
+ (id)_advertisableFeature;
+ (id)_backgroundDelivery;
+ (id)_classification;
+ (id)_eventSubmission;
+ (id)_notInPregnancyMode;
+ (id)_notOnboardedHealthChecklist;
+ (id)_notificationSettingsVisibility;
+ (id)_onboardedHealthChecklist;
+ (id)_onboardingInitiation;
+ (id)_pregnancyAdjustmentEligibility;
+ (id)_promotion;
+ (id)_promotionFeatureTag;
+ (id)backgroundDeliveryIdentifiers;
+ (id)classificationGeneration;
+ (id)eventSubmission;
+ (id)notInPregnancyModeRequirementIdentifiers;
+ (id)notificationSettingsVisibility;
+ (id)onboardingInitiationRequirementIdentifiers;
+ (id)promotionFeatureTagRequirementIdentifiers;
+ (id)promotionRequirementIdentifiers;
+ (id)requirementSet;
@end

@implementation HKMobilityWalkingSteadinessFeatureAvailabilityRequirements

+ (id)requirementSet
{
  v24[13] = *MEMORY[0x277D85DE8];
  v18 = objc_alloc(MEMORY[0x277CCD420]);
  v23[0] = *MEMORY[0x277CCBE00];
  v21 = [objc_opt_class() _backgroundDelivery];
  v24[0] = v21;
  v23[1] = *MEMORY[0x277CCBE38];
  v20 = [objc_opt_class() _onboardingInitiation];
  v24[1] = v20;
  v23[2] = *MEMORY[0x277CCBE50];
  v19 = [objc_opt_class() _promotion];
  v24[2] = v19;
  v23[3] = *MEMORY[0x277CCBDF0];
  v17 = [objc_opt_class() _advertisableFeature];
  v24[3] = v17;
  v23[4] = *MEMORY[0x277CCBE30];
  v16 = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v22[0] = v16;
  v15 = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v22[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v24[4] = v14;
  v23[5] = *MEMORY[0x277CCBE60];
  v2 = [objc_opt_class() _pregnancyAdjustmentEligibility];
  v24[5] = v2;
  v23[6] = @"WalkingSteadinessEventSubmission";
  v3 = [objc_opt_class() _eventSubmission];
  v24[6] = v3;
  v23[7] = @"WalkingSteadinessNotificationSettingsVisibility";
  v4 = [objc_opt_class() _notificationSettingsVisibility];
  v24[7] = v4;
  v23[8] = @"WalkingSteadinessClassification";
  v5 = [objc_opt_class() _classification];
  v24[8] = v5;
  v23[9] = @"WalkingSteadinessOnboardedHealthChecklist";
  v6 = [objc_opt_class() _onboardedHealthChecklist];
  v24[9] = v6;
  v23[10] = @"WalkingSteadinessNotOnboardedHealthChecklist";
  v7 = [objc_opt_class() _notOnboardedHealthChecklist];
  v24[10] = v7;
  v23[11] = @"WalkingSteadinessPromotionFeatureTag";
  v8 = [objc_opt_class() _promotionFeatureTag];
  v24[11] = v8;
  v23[12] = @"WalkingSteadinessShouldNotShowPregnancyContent";
  v9 = [objc_opt_class() _notInPregnancyMode];
  v24[12] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:13];
  v11 = [v18 initWithRequirementsByContext:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)backgroundDeliveryIdentifiers
{
  v3 = [a1 _backgroundDelivery];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)onboardingInitiationRequirementIdentifiers
{
  v3 = [a1 _onboardingInitiation];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)promotionRequirementIdentifiers
{
  v3 = [a1 _promotion];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)eventSubmission
{
  v3 = [a1 _eventSubmission];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)notificationSettingsVisibility
{
  v3 = [a1 _notificationSettingsVisibility];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)classificationGeneration
{
  v3 = [a1 _classification];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)promotionFeatureTagRequirementIdentifiers
{
  v3 = [a1 _promotionFeatureTag];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)notInPregnancyModeRequirementIdentifiers
{
  v3 = [a1 _notInPregnancyMode];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)_backgroundDelivery
{
  v2 = MEMORY[0x277CCD428];
  v3 = [objc_opt_class() _featureIdentifier];
  v4 = [v2 defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v3];

  return v4;
}

+ (id)_onboardingInitiation
{
  v20[7] = *MEMORY[0x277D85DE8];
  v19 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v20[0] = v19;
  v18 = [MEMORY[0x277CCD428] walkingSteadinessCapabilityIsSupportedOnLocalDevice];
  v20[1] = v18;
  v2 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v20[2] = v2;
  v3 = MEMORY[0x277CCD428];
  v4 = [objc_opt_class() _featureIdentifier];
  v5 = [v3 onboardingRecordIsPresentForFeatureWithIdentifier:v4];
  v20[3] = v5;
  v6 = MEMORY[0x277CCD428];
  v7 = [objc_opt_class() _featureIdentifier];
  v8 = [v6 countryCodeIsPresentForFeatureWithIdentifier:v7];
  v20[4] = v8;
  v9 = MEMORY[0x277CCD428];
  v10 = [objc_opt_class() _featureIdentifier];
  v11 = [v9 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v10];
  v20[5] = v11;
  v12 = MEMORY[0x277CCD428];
  v13 = [objc_opt_class() _featureIdentifier];
  v14 = [v12 onboardingNotAcknowledgedWithIdentifier:v13];
  v20[6] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:7];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_promotion
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() _onboardingInitiation];
  v3 = [v2 mutableCopy];

  v4 = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v9[0] = v4;
  v5 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE270]];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [v3 addObjectsFromArray:v6];

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_promotionFeatureTag
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD428] heightIsPresent];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_eventSubmission
{
  v26[11] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  v25 = [objc_opt_class() _featureIdentifier];
  v24 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:v25];
  v26[0] = v24;
  v3 = MEMORY[0x277CCD428];
  v23 = [objc_opt_class() _featureIdentifier];
  v22 = [v3 onboardingAcknowledgedWithIdentifier:v23];
  v26[1] = v22;
  v4 = MEMORY[0x277CCD428];
  v21 = [objc_opt_class() _featureIdentifier];
  v20 = [v4 featureIsOnWithIdentifier:v21 isOnIfSettingIsAbsent:0];
  v26[2] = v20;
  v5 = MEMORY[0x277CCD428];
  v19 = [objc_opt_class() _featureIdentifier];
  v6 = [v5 countryCodeIsPresentForFeatureWithIdentifier:v19];
  v26[3] = v6;
  v7 = MEMORY[0x277CCD428];
  v8 = [objc_opt_class() _featureIdentifier];
  v9 = [v7 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v8];
  v26[4] = v9;
  v10 = [MEMORY[0x277CCD428] walkingSteadinessCapabilityIsSupportedOnLocalDevice];
  v26[5] = v10;
  v11 = [MEMORY[0x277CCD428] ageIsPresent];
  v26[6] = v11;
  v12 = [MEMORY[0x277CCD428] heightIsPresent];
  v26[7] = v12;
  v13 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE270]];
  v26[8] = v13;
  v14 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v26[9] = v14;
  v15 = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v26[10] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:11];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_advertisableFeature
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() _onboardingInitiation];
  v3 = [v2 mutableCopy];

  v4 = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v15[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v3 addObjectsFromArray:v5];

  [v3 hk_removeObjectsPassingTest:&__block_literal_global_1];
  v6 = [MEMORY[0x277CCD428] ageIsPresent];
  v14[0] = v6;
  v7 = [MEMORY[0x277CCD428] heightIsPresent];
  v14[1] = v7;
  v8 = MEMORY[0x277CCD428];
  v9 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 featureIsOffWithIdentifier:v9 isOffIfSettingIsAbsent:1];
  v14[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  [v3 addObjectsFromArray:v11];

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __82__HKMobilityWalkingSteadinessFeatureAvailabilityRequirements__advertisableFeature__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() requirementIdentifier];
  if ([v3 isEqualToString:*MEMORY[0x277CCBFA0]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [objc_opt_class() requirementIdentifier];
    v4 = [v5 isEqualToString:*MEMORY[0x277CCBFA8]];
  }

  return v4;
}

+ (id)_notificationSettingsVisibility
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() _eventSubmission];
  v3 = [v2 mutableCopy];

  [v3 hk_removeObjectsPassingTest:&__block_literal_global_318];
  v4 = [MEMORY[0x277CCD428] notificationAuthorizedWithBundleIdentifier:*MEMORY[0x277CCE3A8]];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v3 addObjectsFromArray:v5];

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __93__HKMobilityWalkingSteadinessFeatureAvailabilityRequirements__notificationSettingsVisibility__block_invoke()
{
  v0 = [objc_opt_class() requirementIdentifier];
  v1 = [v0 isEqualToString:*MEMORY[0x277CCBF38]];

  return v1;
}

+ (id)_onboardedHealthChecklist
{
  v27[12] = *MEMORY[0x277D85DE8];
  v26 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v27[0] = v26;
  v2 = MEMORY[0x277CCD428];
  v25 = [objc_opt_class() _featureIdentifier];
  v24 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:v25];
  v27[1] = v24;
  v3 = MEMORY[0x277CCD428];
  v23 = [objc_opt_class() _featureIdentifier];
  v22 = [v3 countryCodeIsPresentForFeatureWithIdentifier:v23];
  v27[2] = v22;
  v4 = MEMORY[0x277CCD428];
  v21 = [objc_opt_class() _featureIdentifier];
  v20 = [v4 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v21];
  v27[3] = v20;
  v19 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE270]];
  v27[4] = v19;
  v5 = [MEMORY[0x277CCD428] walkingSteadinessCapabilityIsSupportedOnLocalDevice];
  v27[5] = v5;
  v6 = [MEMORY[0x277CCD428] ageIsPresent];
  v27[6] = v6;
  v7 = [MEMORY[0x277CCD428] notificationAuthorizedWithBundleIdentifier:*MEMORY[0x277CCE3A8]];
  v27[7] = v7;
  v8 = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v27[8] = v8;
  v9 = [MEMORY[0x277CCD428] heightIsPresent];
  v27[9] = v9;
  v10 = MEMORY[0x277CCD428];
  v11 = [objc_opt_class() _featureIdentifier];
  v12 = [v10 onboardingAcknowledgedWithIdentifier:v11];
  v27[10] = v12;
  v13 = MEMORY[0x277CCD428];
  v14 = [objc_opt_class() _featureIdentifier];
  v15 = [v13 featureIsOnWithIdentifier:v14 isOnIfSettingIsAbsent:0];
  v27[11] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:12];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_notOnboardedHealthChecklist
{
  v18[7] = *MEMORY[0x277D85DE8];
  v17 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v18[0] = v17;
  v2 = MEMORY[0x277CCD428];
  v3 = [objc_opt_class() _featureIdentifier];
  v4 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v18[1] = v4;
  v5 = MEMORY[0x277CCD428];
  v6 = [objc_opt_class() _featureIdentifier];
  v7 = [v5 countryCodeIsPresentForFeatureWithIdentifier:v6];
  v18[2] = v7;
  v8 = MEMORY[0x277CCD428];
  v9 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v9];
  v18[3] = v10;
  v11 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE270]];
  v18[4] = v11;
  v12 = [MEMORY[0x277CCD428] walkingSteadinessCapabilityIsSupportedOnLocalDevice];
  v18[5] = v12;
  v13 = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v18[6] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:7];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_classification
{
  v16[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  v3 = [objc_opt_class() _featureIdentifier];
  v4 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v5 = MEMORY[0x277CCD428];
  v6 = [objc_opt_class() _featureIdentifier];
  v7 = [v5 countryCodeIsPresentForFeatureWithIdentifier:v6];
  v16[1] = v7;
  v8 = MEMORY[0x277CCD428];
  v9 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v9];
  v16[2] = v10;
  v11 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE270]];
  v16[3] = v11;
  v12 = [MEMORY[0x277CCD428] ageIsPresent];
  v16[4] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __101__HKMobilityWalkingSteadinessFeatureAvailabilityRequirements__requirementIdentifiersForRequirements___block_invoke()
{
  v0 = objc_opt_class();

  return [v0 requirementIdentifier];
}

+ (id)_notInPregnancyMode
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v7[0] = v2;
  v3 = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_pregnancyAdjustmentEligibility
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() _onboardingInitiation];
  v3 = [v2 mutableCopy];

  v4 = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v16[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v3 addObjectsFromArray:v5];

  [v3 hk_removeObjectsPassingTest:&__block_literal_global_323];
  v6 = [MEMORY[0x277CCD428] ageIsPresent];
  v7 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:{*MEMORY[0x277CCE270], v6}];
  v15[1] = v7;
  v8 = [MEMORY[0x277CCD428] heightIsPresent];
  v15[2] = v8;
  v9 = MEMORY[0x277CCD428];
  v10 = [objc_opt_class() _featureIdentifier];
  v11 = [v9 featureIsOffWithIdentifier:v10 isOffIfSettingIsAbsent:1];
  v15[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  [v3 addObjectsFromArray:v12];

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __93__HKMobilityWalkingSteadinessFeatureAvailabilityRequirements__pregnancyAdjustmentEligibility__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() requirementIdentifier];
  if ([v3 isEqualToString:*MEMORY[0x277CCBFA0]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [objc_opt_class() requirementIdentifier];
    v4 = [v5 isEqualToString:*MEMORY[0x277CCBFA8]];
  }

  return v4;
}

@end