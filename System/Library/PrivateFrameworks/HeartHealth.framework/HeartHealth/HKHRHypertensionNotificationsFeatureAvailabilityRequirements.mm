@interface HKHRHypertensionNotificationsFeatureAvailabilityRequirements
+ (id)_analysis;
+ (id)_backgroundDelivery;
+ (id)_basePromotionRequirements;
+ (id)_baseUsageWithFeatureOnRequirementIncluded:(BOOL)included;
+ (id)_dtdrEducationVisibility;
+ (id)_dtdrStatusVisibility;
+ (id)_pregnancyAdjustmentEligibility;
+ (id)_promotion;
+ (id)_requirementIdentifiersForRequirements:(id)requirements;
+ (id)_settingsUserInteractionEnabled;
+ (id)_settingsVisibilityWithFeatureOnboarded:(BOOL)onboarded;
+ (id)onboardingInitiationRequirementIdentifiers;
+ (id)promotionRequirementIdentifiers;
+ (id)requirementSet;
+ (id)settingsUserInteractionRequirementIdentifiers;
+ (id)usageRequirementIdentifiers;
@end

@implementation HKHRHypertensionNotificationsFeatureAvailabilityRequirements

+ (id)requirementSet
{
  v20[12] = *MEMORY[0x277D85DE8];
  v15 = objc_alloc(MEMORY[0x277CCD420]);
  v19[0] = *MEMORY[0x277CCBE38];
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v20[0] = _onboardingInitiation;
  v19[1] = *MEMORY[0x277CCBE50];
  _promotion = [objc_opt_class() _promotion];
  v20[1] = _promotion;
  v19[2] = *MEMORY[0x277CCBEA0];
  _usage = [objc_opt_class() _usage];
  v20[2] = _usage;
  v19[3] = *MEMORY[0x277CCBDF8];
  _analysis = [objc_opt_class() _analysis];
  v20[3] = _analysis;
  v19[4] = *MEMORY[0x277CCBE70];
  v2 = [objc_opt_class() _settingsVisibilityWithFeatureOnboarded:1];
  v20[4] = v2;
  v19[5] = @"NotOnboardedSettingsVisibility";
  v3 = [objc_opt_class() _settingsVisibilityWithFeatureOnboarded:0];
  v20[5] = v3;
  v19[6] = @"RoomEducationSectionVisibility";
  _dtdrEducationVisibility = [objc_opt_class() _dtdrEducationVisibility];
  v20[6] = _dtdrEducationVisibility;
  v19[7] = @"RoomStatusSectionVisibility";
  _dtdrStatusVisibility = [objc_opt_class() _dtdrStatusVisibility];
  v20[7] = _dtdrStatusVisibility;
  v19[8] = *MEMORY[0x277CCBE68];
  _settingsUserInteractionEnabled = [objc_opt_class() _settingsUserInteractionEnabled];
  v20[8] = _settingsUserInteractionEnabled;
  v19[9] = *MEMORY[0x277CCBE60];
  _pregnancyAdjustmentEligibility = [objc_opt_class() _pregnancyAdjustmentEligibility];
  v20[9] = _pregnancyAdjustmentEligibility;
  v19[10] = *MEMORY[0x277CCBE00];
  _backgroundDelivery = [objc_opt_class() _backgroundDelivery];
  v20[10] = _backgroundDelivery;
  v19[11] = *MEMORY[0x277CCBE28];
  _notificationSettingsVisibility = [objc_opt_class() _notificationSettingsVisibility];
  v20[11] = _notificationSettingsVisibility;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:12];
  v11 = [v15 initWithRequirementsByContext:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
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

+ (id)usageRequirementIdentifiers
{
  _usage = [self _usage];
  v4 = [self _requirementIdentifiersForRequirements:_usage];

  return v4;
}

+ (id)settingsUserInteractionRequirementIdentifiers
{
  _settingsUserInteractionEnabled = [self _settingsUserInteractionEnabled];
  v4 = [self _requirementIdentifiersForRequirements:_settingsUserInteractionEnabled];

  return v4;
}

+ (id)_backgroundDelivery
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v6 = [v3 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  [v2 addObject:v6];

  v7 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:*MEMORY[0x277CCC068]];
  [v2 addObjectsFromArray:v7];

  return v2;
}

+ (id)_promotion
{
  v9[2] = *MEMORY[0x277D85DE8];
  _basePromotionRequirements = [self _basePromotionRequirements];
  wristDetectionIsEnabledForActiveWatch = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v9[0] = wristDetectionIsEnabledForActiveWatch;
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v9[1] = heartRateIsEnabledInPrivacy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [_basePromotionRequirements arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_basePromotionRequirements
{
  v36[14] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v33 = [v2 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  v36[0] = v33;
  v3 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v31 = [v3 someRegionIsSupportedForFeatureWithIdentifier:_hypertensionIdentifier];
  v36[1] = v31;
  v4 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v29 = [v4 onboardingRecordIsPresentForFeatureWithIdentifier:_hypertensionIdentifier2];
  v36[2] = v29;
  v5 = MEMORY[0x277CCD428];
  _hypertensionIdentifier3 = [objc_opt_class() _hypertensionIdentifier];
  v27 = [v5 seedIsNotExpiredForFeatureWithIdentifier:_hypertensionIdentifier3];
  v36[3] = v27;
  v6 = MEMORY[0x277CCD428];
  _hypertensionIdentifier4 = [objc_opt_class() _hypertensionIdentifier];
  v25 = [v6 featureIsNotRemotelyDisabledWithIdentifier:_hypertensionIdentifier4];
  v36[4] = v25;
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v36[5] = profileIsNotFamilySetupPairingProfile;
  notInStoreDemoMode = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v36[6] = notInStoreDemoMode;
  v7 = MEMORY[0x277CCD428];
  _hypertensionIdentifier5 = [objc_opt_class() _hypertensionIdentifier];
  v9 = [v7 activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:_hypertensionIdentifier5];
  v36[7] = v9;
  v10 = MEMORY[0x277CCD428];
  _hypertensionIdentifier6 = [objc_opt_class() _hypertensionIdentifier];
  v12 = [v10 capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_hypertensionIdentifier6];
  v36[8] = v12;
  v13 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  v36[9] = v13;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v36[10] = healthAppIsNotHidden;
  isNotInPostPregnancy = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v36[11] = isNotInPostPregnancy;
  noOngoingPregnancy = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v36[12] = noOngoingPregnancy;
  v17 = MEMORY[0x277CCD428];
  _hypertensionIdentifier7 = [objc_opt_class() _hypertensionIdentifier];
  v19 = [v17 onboardingNotAcknowledgedWithIdentifier:_hypertensionIdentifier7];
  v36[13] = v19;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:14];

  v20 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)_baseUsageWithFeatureOnRequirementIncluded:(BOOL)included
{
  includedCopy = included;
  v50[17] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v45 = [v3 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  v50[0] = v45;
  v4 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v43 = [v4 onboardingRecordIsPresentForFeatureWithIdentifier:_hypertensionIdentifier];
  v50[1] = v43;
  v5 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v41 = [v5 seedIsNotExpiredForFeatureWithIdentifier:_hypertensionIdentifier2];
  v50[2] = v41;
  v6 = MEMORY[0x277CCD428];
  _hypertensionIdentifier3 = [objc_opt_class() _hypertensionIdentifier];
  v39 = [v6 featureIsNotRemotelyDisabledWithIdentifier:_hypertensionIdentifier3];
  v50[3] = v39;
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v50[4] = profileIsNotFamilySetupPairingProfile;
  notInStoreDemoMode = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v50[5] = notInStoreDemoMode;
  v7 = MEMORY[0x277CCD428];
  _hypertensionIdentifier4 = [objc_opt_class() _hypertensionIdentifier];
  v35 = [v7 activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:_hypertensionIdentifier4];
  v50[6] = v35;
  v8 = MEMORY[0x277CCD428];
  _hypertensionIdentifier5 = [objc_opt_class() _hypertensionIdentifier];
  v32 = [v8 capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_hypertensionIdentifier5];
  v50[7] = v32;
  v9 = MEMORY[0x277CCD428];
  _hypertensionIdentifier6 = [objc_opt_class() _hypertensionIdentifier];
  v30 = [v9 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_hypertensionIdentifier6 isSupportedIfCountryListMissing:1];
  v50[8] = v30;
  v10 = MEMORY[0x277CCD428];
  _hypertensionIdentifier7 = [objc_opt_class() _hypertensionIdentifier];
  v11 = [v10 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_hypertensionIdentifier7];
  v50[9] = v11;
  v12 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  v50[10] = v12;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v50[11] = healthAppIsNotHidden;
  wristDetectionIsEnabledForActiveWatch = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v50[12] = wristDetectionIsEnabledForActiveWatch;
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v50[13] = heartRateIsEnabledInPrivacy;
  v16 = MEMORY[0x277CCD428];
  _hypertensionIdentifier8 = [objc_opt_class() _hypertensionIdentifier];
  v18 = [v16 onboardingAcknowledgedWithIdentifier:_hypertensionIdentifier8];
  v50[14] = v18;
  isNotInPostPregnancy = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v50[15] = isNotInPostPregnancy;
  noOngoingPregnancy = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v50[16] = noOngoingPregnancy;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:17];

  if (includedCopy)
  {
    v21 = MEMORY[0x277CCD428];
    _hypertensionIdentifier9 = [objc_opt_class() _hypertensionIdentifier];
    v23 = [v21 featureIsOnWithIdentifier:_hypertensionIdentifier9 isOnIfSettingIsAbsent:0];
    v49 = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    v25 = v34;
    v26 = [v34 arrayByAddingObjectsFromArray:v24];
  }

  else
  {
    v25 = v34;
    v26 = v34;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)_analysis
{
  v40[15] = *MEMORY[0x277D85DE8];
  v26 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"A0A8CBBD-8F56-46ED-A36B-446D452C0515"];
  v2 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v38 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:_hypertensionIdentifier];
  v40[0] = v38;
  v3 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v35 = [v3 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  v40[1] = v35;
  v4 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v33 = [v4 seedIsNotExpiredForFeatureWithIdentifier:_hypertensionIdentifier2];
  v40[2] = v33;
  v5 = MEMORY[0x277CCD428];
  _hypertensionIdentifier3 = [objc_opt_class() _hypertensionIdentifier];
  v31 = [v5 featureIsNotRemotelyDisabledWithIdentifier:_hypertensionIdentifier3];
  v40[3] = v31;
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v40[4] = profileIsNotFamilySetupPairingProfile;
  notInStoreDemoMode = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v40[5] = notInStoreDemoMode;
  v6 = MEMORY[0x277CCD428];
  _hypertensionIdentifier4 = [objc_opt_class() _hypertensionIdentifier];
  v27 = [v6 activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:_hypertensionIdentifier4];
  v40[6] = v27;
  v7 = MEMORY[0x277CCD428];
  _hypertensionIdentifier5 = [objc_opt_class() _hypertensionIdentifier];
  v24 = [v7 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_hypertensionIdentifier5];
  v40[7] = v24;
  v8 = MEMORY[0x277CCD428];
  _hypertensionIdentifier6 = [objc_opt_class() _hypertensionIdentifier];
  v10 = [v8 featureIsOnWithIdentifier:_hypertensionIdentifier6 isOnIfSettingIsAbsent:0];
  v40[8] = v10;
  v11 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  v40[9] = v11;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v40[10] = healthAppIsNotHidden;
  v13 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v15 = [v13 capabilityIsSupportedOnAnyWatch:v26 supportedOnLocalDevice:{objc_msgSend(mEMORY[0x277CCDD30]2, "isCompanionCapable")}];
  v40[11] = v15;
  v16 = MEMORY[0x277CCD428];
  _hypertensionIdentifier7 = [objc_opt_class() _hypertensionIdentifier];
  v18 = [v16 onboardingAcknowledgedWithIdentifier:_hypertensionIdentifier7];
  v40[12] = v18;
  isNotInPostPregnancy = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v40[13] = isNotInPostPregnancy;
  noOngoingPregnancy = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v40[14] = noOngoingPregnancy;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:15];

  v21 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)_settingsVisibilityWithFeatureOnboarded:(BOOL)onboarded
{
  v34[8] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v28 = [v3 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  v34[0] = v28;
  v4 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v26 = [v4 someRegionIsSupportedForFeatureWithIdentifier:_hypertensionIdentifier];
  v34[1] = v26;
  v5 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  v34[2] = v5;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v34[3] = healthAppIsNotHidden;
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v34[4] = profileIsNotFamilySetupPairingProfile;
  notInStoreDemoMode = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v34[5] = notInStoreDemoMode;
  v9 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v11 = [v9 capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_hypertensionIdentifier2];
  v34[6] = v11;
  v12 = MEMORY[0x277CCD428];
  _hypertensionIdentifier3 = [objc_opt_class() _hypertensionIdentifier];
  v14 = [v12 onboardingRecordIsPresentForFeatureWithIdentifier:_hypertensionIdentifier3];
  v34[7] = v14;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:8];

  if (onboarded)
  {
    v15 = v29;
    v16 = v29;
  }

  else
  {
    v17 = MEMORY[0x277CCD428];
    _hypertensionIdentifier4 = [objc_opt_class() _hypertensionIdentifier];
    v19 = [v17 onboardingNotAcknowledgedWithIdentifier:_hypertensionIdentifier4];
    v33[0] = v19;
    v20 = MEMORY[0x277CCD428];
    _hypertensionIdentifier5 = [objc_opt_class() _hypertensionIdentifier];
    v22 = [v20 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_hypertensionIdentifier5];
    v33[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    v15 = v29;
    v16 = [v29 arrayByAddingObjectsFromArray:v23];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_dtdrEducationVisibility
{
  v21[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v3 = [v2 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  v21[0] = v3;
  v4 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v6 = [v4 onboardingAcknowledgedWithIdentifier:_hypertensionIdentifier];
  v21[1] = v6;
  v7 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v9 = [v7 seedIsNotExpiredForFeatureWithIdentifier:_hypertensionIdentifier2];
  v21[2] = v9;
  v10 = MEMORY[0x277CCD428];
  _hypertensionIdentifier3 = [objc_opt_class() _hypertensionIdentifier];
  v12 = [v10 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_hypertensionIdentifier3];
  v21[3] = v12;
  v13 = MEMORY[0x277CCD428];
  _hypertensionIdentifier4 = [objc_opt_class() _hypertensionIdentifier];
  v15 = [v13 featureIsNotRemotelyDisabledWithIdentifier:_hypertensionIdentifier4];
  v21[4] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_dtdrStatusVisibility
{
  v17[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v5 = [v2 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v17[1] = profileIsNotFamilySetupPairingProfile;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v17[2] = healthAppIsNotHidden;
  v8 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v10 = [v8 activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:_hypertensionIdentifier];
  v17[3] = v10;
  v11 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v13 = [v11 someRegionIsSupportedForFeatureWithIdentifier:_hypertensionIdentifier2];
  v17[4] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_settingsUserInteractionEnabled
{
  v21[8] = *MEMORY[0x277D85DE8];
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v21[0] = heartRateIsEnabledInPrivacy;
  wristDetectionIsEnabledForActiveWatch = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v21[1] = wristDetectionIsEnabledForActiveWatch;
  v2 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v3 = [v2 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_hypertensionIdentifier isSupportedIfCountryListMissing:1];
  v21[2] = v3;
  v4 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v6 = [v4 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_hypertensionIdentifier2];
  v21[3] = v6;
  v7 = MEMORY[0x277CCD428];
  _hypertensionIdentifier3 = [objc_opt_class() _hypertensionIdentifier];
  v9 = [v7 featureIsNotRemotelyDisabledWithIdentifier:_hypertensionIdentifier3];
  v21[4] = v9;
  v10 = MEMORY[0x277CCD428];
  _hypertensionIdentifier4 = [objc_opt_class() _hypertensionIdentifier];
  v12 = [v10 seedIsNotExpiredForFeatureWithIdentifier:_hypertensionIdentifier4];
  v21[5] = v12;
  isNotInPostPregnancy = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v21[6] = isNotInPostPregnancy;
  noOngoingPregnancy = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v21[7] = noOngoingPregnancy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:8];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_requirementIdentifiersForRequirements:(id)requirements
{
  v20 = *MEMORY[0x277D85DE8];
  requirementsCopy = requirements;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(requirementsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = requirementsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        requirementIdentifier = [objc_opt_class() requirementIdentifier];
        [v4 addObject:requirementIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_pregnancyAdjustmentEligibility
{
  v39[15] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v36 = [v2 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  v39[0] = v36;
  v3 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v34 = [v3 someRegionIsSupportedForFeatureWithIdentifier:_hypertensionIdentifier];
  v39[1] = v34;
  v4 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v32 = [v4 seedIsNotExpiredForFeatureWithIdentifier:_hypertensionIdentifier2];
  v39[2] = v32;
  v5 = MEMORY[0x277CCD428];
  _hypertensionIdentifier3 = [objc_opt_class() _hypertensionIdentifier];
  v30 = [v5 featureIsNotRemotelyDisabledWithIdentifier:_hypertensionIdentifier3];
  v39[3] = v30;
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v39[4] = profileIsNotFamilySetupPairingProfile;
  notInStoreDemoMode = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v39[5] = notInStoreDemoMode;
  v6 = MEMORY[0x277CCD428];
  _hypertensionIdentifier4 = [objc_opt_class() _hypertensionIdentifier];
  v26 = [v6 capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_hypertensionIdentifier4];
  v39[6] = v26;
  v7 = MEMORY[0x277CCD428];
  _hypertensionIdentifier5 = [objc_opt_class() _hypertensionIdentifier];
  v24 = [v7 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_hypertensionIdentifier5 isSupportedIfCountryListMissing:1];
  v39[7] = v24;
  v8 = MEMORY[0x277CCD428];
  _hypertensionIdentifier6 = [objc_opt_class() _hypertensionIdentifier];
  v10 = [v8 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_hypertensionIdentifier6];
  v39[8] = v10;
  v11 = MEMORY[0x277CCD428];
  _hypertensionIdentifier7 = [objc_opt_class() _hypertensionIdentifier];
  v13 = [v11 onboardingRecordIsPresentForFeatureWithIdentifier:_hypertensionIdentifier7];
  v39[9] = v13;
  v14 = MEMORY[0x277CCD428];
  _hypertensionIdentifier8 = [objc_opt_class() _hypertensionIdentifier];
  v16 = [v14 featureIsOnWithIdentifier:_hypertensionIdentifier8 isOnIfSettingIsAbsent:0];
  v39[10] = v16;
  v17 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  v39[11] = v17;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v39[12] = healthAppIsNotHidden;
  wristDetectionIsEnabledForActiveWatch = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v39[13] = wristDetectionIsEnabledForActiveWatch;
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v39[14] = heartRateIsEnabledInPrivacy;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:15];

  v21 = *MEMORY[0x277D85DE8];

  return v23;
}

@end