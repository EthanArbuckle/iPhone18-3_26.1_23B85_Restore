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
  _backgroundDelivery = [objc_opt_class() _backgroundDelivery];
  v24[0] = _backgroundDelivery;
  v23[1] = *MEMORY[0x277CCBE38];
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v24[1] = _onboardingInitiation;
  v23[2] = *MEMORY[0x277CCBE50];
  _promotion = [objc_opt_class() _promotion];
  v24[2] = _promotion;
  v23[3] = *MEMORY[0x277CCBDF0];
  _advertisableFeature = [objc_opt_class() _advertisableFeature];
  v24[3] = _advertisableFeature;
  v23[4] = *MEMORY[0x277CCBE30];
  isNotInPostPregnancy = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v22[0] = isNotInPostPregnancy;
  noOngoingPregnancy = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v22[1] = noOngoingPregnancy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v24[4] = v14;
  v23[5] = *MEMORY[0x277CCBE60];
  _pregnancyAdjustmentEligibility = [objc_opt_class() _pregnancyAdjustmentEligibility];
  v24[5] = _pregnancyAdjustmentEligibility;
  v23[6] = @"WalkingSteadinessEventSubmission";
  _eventSubmission = [objc_opt_class() _eventSubmission];
  v24[6] = _eventSubmission;
  v23[7] = @"WalkingSteadinessNotificationSettingsVisibility";
  _notificationSettingsVisibility = [objc_opt_class() _notificationSettingsVisibility];
  v24[7] = _notificationSettingsVisibility;
  v23[8] = @"WalkingSteadinessClassification";
  _classification = [objc_opt_class() _classification];
  v24[8] = _classification;
  v23[9] = @"WalkingSteadinessOnboardedHealthChecklist";
  _onboardedHealthChecklist = [objc_opt_class() _onboardedHealthChecklist];
  v24[9] = _onboardedHealthChecklist;
  v23[10] = @"WalkingSteadinessNotOnboardedHealthChecklist";
  _notOnboardedHealthChecklist = [objc_opt_class() _notOnboardedHealthChecklist];
  v24[10] = _notOnboardedHealthChecklist;
  v23[11] = @"WalkingSteadinessPromotionFeatureTag";
  _promotionFeatureTag = [objc_opt_class() _promotionFeatureTag];
  v24[11] = _promotionFeatureTag;
  v23[12] = @"WalkingSteadinessShouldNotShowPregnancyContent";
  _notInPregnancyMode = [objc_opt_class() _notInPregnancyMode];
  v24[12] = _notInPregnancyMode;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:13];
  v11 = [v18 initWithRequirementsByContext:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)backgroundDeliveryIdentifiers
{
  _backgroundDelivery = [self _backgroundDelivery];
  v4 = [self _requirementIdentifiersForRequirements:_backgroundDelivery];

  return v4;
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

+ (id)eventSubmission
{
  _eventSubmission = [self _eventSubmission];
  v4 = [self _requirementIdentifiersForRequirements:_eventSubmission];

  return v4;
}

+ (id)notificationSettingsVisibility
{
  _notificationSettingsVisibility = [self _notificationSettingsVisibility];
  v4 = [self _requirementIdentifiersForRequirements:_notificationSettingsVisibility];

  return v4;
}

+ (id)classificationGeneration
{
  _classification = [self _classification];
  v4 = [self _requirementIdentifiersForRequirements:_classification];

  return v4;
}

+ (id)promotionFeatureTagRequirementIdentifiers
{
  _promotionFeatureTag = [self _promotionFeatureTag];
  v4 = [self _requirementIdentifiersForRequirements:_promotionFeatureTag];

  return v4;
}

+ (id)notInPregnancyModeRequirementIdentifiers
{
  _notInPregnancyMode = [self _notInPregnancyMode];
  v4 = [self _requirementIdentifiersForRequirements:_notInPregnancyMode];

  return v4;
}

+ (id)_backgroundDelivery
{
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v4 = [v2 defaultOnboardingEligibilityRequirementsForFeatureIdentifier:_featureIdentifier];

  return v4;
}

+ (id)_onboardingInitiation
{
  v20[7] = *MEMORY[0x277D85DE8];
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v20[0] = profileIsNotFamilySetupPairingProfile;
  walkingSteadinessCapabilityIsSupportedOnLocalDevice = [MEMORY[0x277CCD428] walkingSteadinessCapabilityIsSupportedOnLocalDevice];
  v20[1] = walkingSteadinessCapabilityIsSupportedOnLocalDevice;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v20[2] = healthAppIsNotHidden;
  v3 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v5 = [v3 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier];
  v20[3] = v5;
  v6 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v8 = [v6 countryCodeIsPresentForFeatureWithIdentifier:_featureIdentifier2];
  v20[4] = v8;
  v9 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v11 = [v9 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier3];
  v20[5] = v11;
  v12 = MEMORY[0x277CCD428];
  _featureIdentifier4 = [objc_opt_class() _featureIdentifier];
  v14 = [v12 onboardingNotAcknowledgedWithIdentifier:_featureIdentifier4];
  v20[6] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:7];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_promotion
{
  v9[2] = *MEMORY[0x277D85DE8];
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v3 = [_onboardingInitiation mutableCopy];

  fitnessTrackingIsEnabledInPrivacy = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v9[0] = fitnessTrackingIsEnabledInPrivacy;
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
  heightIsPresent = [MEMORY[0x277CCD428] heightIsPresent];
  v6[0] = heightIsPresent;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_eventSubmission
{
  v26[11] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v24 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier];
  v26[0] = v24;
  v3 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v22 = [v3 onboardingAcknowledgedWithIdentifier:_featureIdentifier2];
  v26[1] = v22;
  v4 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v20 = [v4 featureIsOnWithIdentifier:_featureIdentifier3 isOnIfSettingIsAbsent:0];
  v26[2] = v20;
  v5 = MEMORY[0x277CCD428];
  _featureIdentifier4 = [objc_opt_class() _featureIdentifier];
  v6 = [v5 countryCodeIsPresentForFeatureWithIdentifier:_featureIdentifier4];
  v26[3] = v6;
  v7 = MEMORY[0x277CCD428];
  _featureIdentifier5 = [objc_opt_class() _featureIdentifier];
  v9 = [v7 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier5];
  v26[4] = v9;
  walkingSteadinessCapabilityIsSupportedOnLocalDevice = [MEMORY[0x277CCD428] walkingSteadinessCapabilityIsSupportedOnLocalDevice];
  v26[5] = walkingSteadinessCapabilityIsSupportedOnLocalDevice;
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v26[6] = ageIsPresent;
  heightIsPresent = [MEMORY[0x277CCD428] heightIsPresent];
  v26[7] = heightIsPresent;
  v13 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE270]];
  v26[8] = v13;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v26[9] = healthAppIsNotHidden;
  fitnessTrackingIsEnabledInPrivacy = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v26[10] = fitnessTrackingIsEnabledInPrivacy;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:11];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_advertisableFeature
{
  v15[1] = *MEMORY[0x277D85DE8];
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v3 = [_onboardingInitiation mutableCopy];

  fitnessTrackingIsEnabledInPrivacy = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v15[0] = fitnessTrackingIsEnabledInPrivacy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v3 addObjectsFromArray:v5];

  [v3 hk_removeObjectsPassingTest:&__block_literal_global_1];
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v14[0] = ageIsPresent;
  heightIsPresent = [MEMORY[0x277CCD428] heightIsPresent];
  v14[1] = heightIsPresent;
  v8 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v10 = [v8 featureIsOffWithIdentifier:_featureIdentifier isOffIfSettingIsAbsent:1];
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
  _eventSubmission = [objc_opt_class() _eventSubmission];
  v3 = [_eventSubmission mutableCopy];

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
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v27[0] = healthAppIsNotHidden;
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v24 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier];
  v27[1] = v24;
  v3 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v22 = [v3 countryCodeIsPresentForFeatureWithIdentifier:_featureIdentifier2];
  v27[2] = v22;
  v4 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v20 = [v4 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier3];
  v27[3] = v20;
  v19 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE270]];
  v27[4] = v19;
  walkingSteadinessCapabilityIsSupportedOnLocalDevice = [MEMORY[0x277CCD428] walkingSteadinessCapabilityIsSupportedOnLocalDevice];
  v27[5] = walkingSteadinessCapabilityIsSupportedOnLocalDevice;
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v27[6] = ageIsPresent;
  v7 = [MEMORY[0x277CCD428] notificationAuthorizedWithBundleIdentifier:*MEMORY[0x277CCE3A8]];
  v27[7] = v7;
  fitnessTrackingIsEnabledInPrivacy = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v27[8] = fitnessTrackingIsEnabledInPrivacy;
  heightIsPresent = [MEMORY[0x277CCD428] heightIsPresent];
  v27[9] = heightIsPresent;
  v10 = MEMORY[0x277CCD428];
  _featureIdentifier4 = [objc_opt_class() _featureIdentifier];
  v12 = [v10 onboardingAcknowledgedWithIdentifier:_featureIdentifier4];
  v27[10] = v12;
  v13 = MEMORY[0x277CCD428];
  _featureIdentifier5 = [objc_opt_class() _featureIdentifier];
  v15 = [v13 featureIsOnWithIdentifier:_featureIdentifier5 isOnIfSettingIsAbsent:0];
  v27[11] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:12];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_notOnboardedHealthChecklist
{
  v18[7] = *MEMORY[0x277D85DE8];
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v18[0] = healthAppIsNotHidden;
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v4 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier];
  v18[1] = v4;
  v5 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v7 = [v5 countryCodeIsPresentForFeatureWithIdentifier:_featureIdentifier2];
  v18[2] = v7;
  v8 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier3];
  v18[3] = v10;
  v11 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE270]];
  v18[4] = v11;
  walkingSteadinessCapabilityIsSupportedOnLocalDevice = [MEMORY[0x277CCD428] walkingSteadinessCapabilityIsSupportedOnLocalDevice];
  v18[5] = walkingSteadinessCapabilityIsSupportedOnLocalDevice;
  fitnessTrackingIsEnabledInPrivacy = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v18[6] = fitnessTrackingIsEnabledInPrivacy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:7];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_classification
{
  v16[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v4 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier];
  v5 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v7 = [v5 countryCodeIsPresentForFeatureWithIdentifier:_featureIdentifier2];
  v16[1] = v7;
  v8 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier3];
  v16[2] = v10;
  v11 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE270]];
  v16[3] = v11;
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v16[4] = ageIsPresent;
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
  isNotInPostPregnancy = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v7[0] = isNotInPostPregnancy;
  noOngoingPregnancy = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v7[1] = noOngoingPregnancy;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_pregnancyAdjustmentEligibility
{
  v16[1] = *MEMORY[0x277D85DE8];
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v3 = [_onboardingInitiation mutableCopy];

  fitnessTrackingIsEnabledInPrivacy = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v16[0] = fitnessTrackingIsEnabledInPrivacy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v3 addObjectsFromArray:v5];

  [v3 hk_removeObjectsPassingTest:&__block_literal_global_323];
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v7 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:{*MEMORY[0x277CCE270], ageIsPresent}];
  v15[1] = v7;
  heightIsPresent = [MEMORY[0x277CCD428] heightIsPresent];
  v15[2] = heightIsPresent;
  v9 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v11 = [v9 featureIsOffWithIdentifier:_featureIdentifier isOffIfSettingIsAbsent:1];
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