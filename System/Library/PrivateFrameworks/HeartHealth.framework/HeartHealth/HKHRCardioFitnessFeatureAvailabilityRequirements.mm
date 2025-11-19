@interface HKHRCardioFitnessFeatureAvailabilityRequirements
+ (id)_advertiseableFeature;
+ (id)_backgroundDelivery;
+ (id)_bridgeNotificationsEnablement;
+ (id)_bridgeNotificationsFooter;
+ (id)_bridgeOnboardingEnablement;
+ (id)_bridgeOnboardingVisibility;
+ (id)_bridgeSettingsVisibility;
+ (id)_classification;
+ (id)_healthChecklistSettingsFooter;
+ (id)_nanoSettingsEnablement;
+ (id)_nanoSettingsVisibility;
+ (id)_notInPregnancyMode;
+ (id)_notOnboardedHealthChecklist;
+ (id)_notificationGeneration;
+ (id)_onboardedHealthChecklist;
+ (id)_onboardingInitiation;
+ (id)_postPregnancyAdjustmentEligibility;
+ (id)_pregnancyAdjustmentEligibility;
+ (id)_promotion;
+ (id)_usage;
+ (id)backgroundDelivery;
+ (id)bridgeNotificationsEnablementRequirementIdentifiers;
+ (id)bridgeNotificationsFooterRequirementIdentifiers;
+ (id)bridgeOnboardingEnablementRequirementIdentifiers;
+ (id)bridgeOnboardingVisibilityRequirementIdentifiers;
+ (id)bridgeSettingsVisibilityRequirementIdentifiers;
+ (id)classificationGeneration;
+ (id)healthChecklistSettingsFooter;
+ (id)nanoSettingsEnablementRequirementIdentifiers;
+ (id)nanoSettingsVisibilityRequirementIdentifiers;
+ (id)notInPregnancyModeRequirementIdentifiers;
+ (id)notificationGeneration;
+ (id)onboardingInitiationRequirementIdentifiers;
+ (id)promotionRequirementIdentifiers;
+ (id)requirementSet;
+ (id)usageRequirementIdentifiers;
@end

@implementation HKHRCardioFitnessFeatureAvailabilityRequirements

+ (id)requirementSet
{
  v28[20] = *MEMORY[0x277D85DE8];
  v21 = objc_alloc(MEMORY[0x277CCD420]);
  v27[0] = *MEMORY[0x277CCBE00];
  v26 = [objc_opt_class() _backgroundDelivery];
  v28[0] = v26;
  v27[1] = *MEMORY[0x277CCBE38];
  v25 = [objc_opt_class() _onboardingInitiation];
  v28[1] = v25;
  v27[2] = *MEMORY[0x277CCBE50];
  v24 = [objc_opt_class() _promotion];
  v28[2] = v24;
  v27[3] = *MEMORY[0x277CCBDF0];
  v23 = [objc_opt_class() _advertiseableFeature];
  v28[3] = v23;
  v27[4] = *MEMORY[0x277CCBEA0];
  v22 = [objc_opt_class() _usage];
  v28[4] = v22;
  v27[5] = *MEMORY[0x277CCBE30];
  v20 = [objc_opt_class() _notInPregnancyMode];
  v28[5] = v20;
  v27[6] = *MEMORY[0x277CCBE60];
  v19 = [objc_opt_class() _pregnancyAdjustmentEligibility];
  v28[6] = v19;
  v27[7] = *MEMORY[0x277CCBE58];
  v18 = [objc_opt_class() _postPregnancyAdjustmentEligibility];
  v28[7] = v18;
  v27[8] = @"CardioFitnessNotification";
  v17 = [objc_opt_class() _notificationGeneration];
  v28[8] = v17;
  v27[9] = @"CardioFitnessClassification";
  v16 = [objc_opt_class() _classification];
  v28[9] = v16;
  v27[10] = @"CardioFitnessHealthChecklistSettingsFooter";
  v15 = [objc_opt_class() _healthChecklistSettingsFooter];
  v28[10] = v15;
  v27[11] = @"CardioFitnessBridgeSettingsVisibility";
  v14 = [objc_opt_class() _bridgeSettingsVisibility];
  v28[11] = v14;
  v27[12] = @"CardioFitnessBridgeOnboardingVisibility";
  v2 = [objc_opt_class() _bridgeOnboardingVisibility];
  v28[12] = v2;
  v27[13] = @"CardioFitnessBridgeOnboardingEnablement";
  v3 = [objc_opt_class() _bridgeOnboardingEnablement];
  v28[13] = v3;
  v27[14] = @"CardioFitnessBridgeNotificationsEnablement";
  v4 = [objc_opt_class() _bridgeNotificationsEnablement];
  v28[14] = v4;
  v27[15] = @"CardioFitnessBridgeNotificationsFooter";
  v5 = [objc_opt_class() _bridgeNotificationsFooter];
  v28[15] = v5;
  v27[16] = @"CardioFitnessNanoSettingsVisibility";
  v6 = [objc_opt_class() _nanoSettingsVisibility];
  v28[16] = v6;
  v27[17] = @"CardioFitnessNanoSettingsEnablement";
  v7 = [objc_opt_class() _nanoSettingsEnablement];
  v28[17] = v7;
  v27[18] = @"CardioFitnessOnboardedHealthChecklist";
  v8 = [objc_opt_class() _onboardedHealthChecklist];
  v28[18] = v8;
  v27[19] = @"CardioFitnessNotOnboardedHealthChecklist";
  v9 = [objc_opt_class() _notOnboardedHealthChecklist];
  v28[19] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:20];
  v11 = [v21 initWithRequirementsByContext:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)backgroundDelivery
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

+ (id)usageRequirementIdentifiers
{
  v3 = [a1 _usage];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)notificationGeneration
{
  v3 = [a1 _notificationGeneration];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)classificationGeneration
{
  v3 = [a1 _classification];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)healthChecklistSettingsFooter
{
  v3 = [a1 _healthChecklistSettingsFooter];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)bridgeSettingsVisibilityRequirementIdentifiers
{
  v3 = [a1 _bridgeSettingsVisibility];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)bridgeOnboardingVisibilityRequirementIdentifiers
{
  v3 = [a1 _bridgeOnboardingVisibility];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)bridgeOnboardingEnablementRequirementIdentifiers
{
  v3 = [a1 _bridgeOnboardingEnablement];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)bridgeNotificationsEnablementRequirementIdentifiers
{
  v3 = [a1 _bridgeNotificationsEnablement];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)bridgeNotificationsFooterRequirementIdentifiers
{
  v3 = [a1 _bridgeNotificationsFooter];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)nanoSettingsVisibilityRequirementIdentifiers
{
  v3 = [a1 _nanoSettingsVisibility];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)nanoSettingsEnablementRequirementIdentifiers
{
  v3 = [a1 _nanoSettingsEnablement];
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
  v25[10] = *MEMORY[0x277D85DE8];
  v24 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v25[0] = v24;
  v23 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC218]];
  v25[1] = v23;
  v2 = MEMORY[0x277CCD428];
  v22 = [objc_opt_class() _featureIdentifier];
  v21 = [v2 capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v22 supportedOnLocalDevice:1];
  v25[2] = v21;
  v20 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v25[3] = v20;
  v19 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v25[4] = v19;
  v3 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v25[5] = v3;
  v4 = MEMORY[0x277CCD428];
  v5 = [objc_opt_class() _featureIdentifier];
  v6 = [v4 onboardingRecordIsPresentForFeatureWithIdentifier:v5];
  v25[6] = v6;
  v7 = MEMORY[0x277CCD428];
  v8 = [objc_opt_class() _featureIdentifier];
  v9 = [v7 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v8];
  v25[7] = v9;
  v10 = MEMORY[0x277CCD428];
  v11 = [objc_opt_class() _featureIdentifier];
  v12 = [v10 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v11 isSupportedIfCountryListMissing:1];
  v25[8] = v12;
  v13 = MEMORY[0x277CCD428];
  v14 = [objc_opt_class() _featureIdentifier];
  v15 = [v13 onboardingNotAcknowledgedWithIdentifier:v14 settingsKey:@"CardioFitnessFeatureSettingsKeyNotificationDetailsEntered"];
  v25[9] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:10];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_promotion
{
  v3 = [objc_opt_class() _onboardingInitiation];
  v4 = [v3 mutableCopy];

  v5 = [a1 _notInPregnancyMode];
  [v4 addObjectsFromArray:v5];

  return v4;
}

+ (id)_advertiseableFeature
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() _onboardingInitiation];
  v4 = [v3 mutableCopy];

  [v4 hk_removeObjectsPassingTest:&__block_literal_global_3];
  v5 = [MEMORY[0x277CCD428] ageIsPresent];
  v13[0] = v5;
  v6 = MEMORY[0x277CCD428];
  v7 = [objc_opt_class() _featureIdentifier];
  v8 = [v6 featureIsOffWithIdentifier:v7 isOffIfSettingIsAbsent:1];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v4 addObjectsFromArray:v9];

  v10 = [a1 _notInPregnancyMode];
  [v4 addObjectsFromArray:v10];

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __73__HKHRCardioFitnessFeatureAvailabilityRequirements__advertiseableFeature__block_invoke(uint64_t a1, void *a2)
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

+ (id)_usage
{
  v28[11] = *MEMORY[0x277D85DE8];
  v27 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v28[0] = v27;
  v26 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v28[1] = v26;
  v25 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE240]];
  v28[2] = v25;
  v2 = MEMORY[0x277CCD428];
  v24 = [objc_opt_class() _featureIdentifier];
  v23 = [v2 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v24];
  v28[3] = v23;
  v3 = MEMORY[0x277CCD428];
  v22 = [objc_opt_class() _featureIdentifier];
  v21 = [v3 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v22 isSupportedIfCountryListMissing:1];
  v28[4] = v21;
  v4 = MEMORY[0x277CCD428];
  v20 = [objc_opt_class() _featureIdentifier];
  v5 = [v4 capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v20 supportedOnLocalDevice:1];
  v28[5] = v5;
  v6 = [MEMORY[0x277CCD428] ageIsPresent];
  v28[6] = v6;
  v7 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v28[7] = v7;
  v8 = MEMORY[0x277CCD428];
  v9 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 onboardingRecordIsPresentForFeatureWithIdentifier:v9];
  v28[8] = v10;
  v11 = MEMORY[0x277CCD428];
  v12 = [objc_opt_class() _featureIdentifier];
  v13 = [v11 onboardingAcknowledgedWithIdentifier:v12 settingsKey:@"CardioFitnessFeatureSettingsKeyNotificationDetailsEntered"];
  v28[9] = v13;
  v14 = MEMORY[0x277CCD428];
  v15 = [objc_opt_class() _featureIdentifier];
  v16 = [v14 featureIsOnWithIdentifier:v15 isOnIfSettingIsAbsent:1];
  v28[10] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:11];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_notificationGeneration
{
  v2 = [objc_opt_class() _usage];
  v3 = [v2 mutableCopy];

  return v3;
}

+ (id)_classification
{
  v13[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  v3 = [objc_opt_class() _featureIdentifier];
  v4 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v13[0] = v4;
  v5 = MEMORY[0x277CCD428];
  v6 = [objc_opt_class() _featureIdentifier];
  v7 = [v5 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v6];
  v13[1] = v7;
  v8 = [MEMORY[0x277CCD428] ageIsPresent];
  v13[2] = v8;
  v9 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC218]];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_healthChecklistSettingsFooter
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() _usage];
  v3 = [v2 mutableCopy];

  v4 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v3 addObjectsFromArray:v5];

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_bridgeSettingsVisibility
{
  v13[5] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() _featureIdentifier];
  v3 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v2];
  v4 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:{*MEMORY[0x277CCE248], v3}];
  v13[1] = v4;
  v5 = MEMORY[0x277CCD428];
  v6 = [objc_opt_class() _featureIdentifier];
  v7 = [v5 capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v6 supportedOnLocalDevice:1];
  v13[2] = v7;
  v8 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v13[3] = v8;
  v9 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v13[4] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_bridgeOnboardingVisibility
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  v3 = [objc_opt_class() _featureIdentifier];
  v4 = [v2 onboardingNotAcknowledgedWithIdentifier:v3 settingsKey:@"CardioFitnessFeatureSettingsKeyNotificationDetailsEntered"];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_bridgeOnboardingEnablement
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  v3 = [objc_opt_class() _featureIdentifier];
  v4 = [v2 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v5 = MEMORY[0x277CCD428];
  v6 = [objc_opt_class() _featureIdentifier];
  v7 = [v5 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v6 isSupportedIfCountryListMissing:1];
  v12[1] = v7;
  v8 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_bridgeNotificationsEnablement
{
  v14[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC218]];
  v3 = [MEMORY[0x277CCD428] ageIsPresent];
  v14[1] = v3;
  v4 = MEMORY[0x277CCD428];
  v5 = [objc_opt_class() _featureIdentifier];
  v6 = [v4 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v5];
  v14[2] = v6;
  v7 = MEMORY[0x277CCD428];
  v8 = [objc_opt_class() _featureIdentifier];
  v9 = [v7 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v8 isSupportedIfCountryListMissing:1];
  v14[3] = v9;
  v10 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v14[4] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_bridgeNotificationsFooter
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() _bridgeNotificationsEnablement];
  v3 = [v2 mutableCopy];

  v4 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v3 addObjectsFromArray:v5];

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_nanoSettingsVisibility
{
  v2 = [objc_opt_class() _notificationGeneration];
  v3 = [v2 mutableCopy];

  v4 = MEMORY[0x277CCD428];
  v5 = [objc_opt_class() _featureIdentifier];
  v6 = [v4 featureIsOnWithIdentifier:v5 isOnIfSettingIsAbsent:1];
  [v3 removeObject:v6];

  v7 = [MEMORY[0x277CCD428] ageIsPresent];
  [v3 removeObject:v7];

  v8 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC218]];
  [v3 removeObject:v8];

  v9 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  [v3 addObject:v9];

  return v3;
}

+ (id)_nanoSettingsEnablement
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC218]];
  v7[0] = v2;
  v3 = [MEMORY[0x277CCD428] ageIsPresent];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_onboardedHealthChecklist
{
  v28[11] = *MEMORY[0x277D85DE8];
  v27 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v28[0] = v27;
  v26 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v28[1] = v26;
  v25 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE240]];
  v28[2] = v25;
  v2 = MEMORY[0x277CCD428];
  v24 = [objc_opt_class() _featureIdentifier];
  v23 = [v2 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v24];
  v28[3] = v23;
  v3 = MEMORY[0x277CCD428];
  v22 = [objc_opt_class() _featureIdentifier];
  v21 = [v3 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v22 isSupportedIfCountryListMissing:1];
  v28[4] = v21;
  v4 = MEMORY[0x277CCD428];
  v20 = [objc_opt_class() _featureIdentifier];
  v5 = [v4 capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v20 supportedOnLocalDevice:1];
  v28[5] = v5;
  v6 = [MEMORY[0x277CCD428] ageIsPresent];
  v28[6] = v6;
  v7 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v28[7] = v7;
  v8 = MEMORY[0x277CCD428];
  v9 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 onboardingRecordIsPresentForFeatureWithIdentifier:v9];
  v28[8] = v10;
  v11 = MEMORY[0x277CCD428];
  v12 = [objc_opt_class() _featureIdentifier];
  v13 = [v11 onboardingAcknowledgedWithIdentifier:v12 settingsKey:@"CardioFitnessFeatureSettingsKeyNotificationDetailsEntered"];
  v28[9] = v13;
  v14 = MEMORY[0x277CCD428];
  v15 = [objc_opt_class() _featureIdentifier];
  v16 = [v14 featureIsOnWithIdentifier:v15 isOnIfSettingIsAbsent:1];
  v28[10] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:11];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_notOnboardedHealthChecklist
{
  v21[8] = *MEMORY[0x277D85DE8];
  v20 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v21[0] = v20;
  v19 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v21[1] = v19;
  v18 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE240]];
  v21[2] = v18;
  v2 = MEMORY[0x277CCD428];
  v3 = [objc_opt_class() _featureIdentifier];
  v4 = [v2 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v21[3] = v4;
  v5 = MEMORY[0x277CCD428];
  v6 = [objc_opt_class() _featureIdentifier];
  v7 = [v5 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v6 isSupportedIfCountryListMissing:1];
  v21[4] = v7;
  v8 = MEMORY[0x277CCD428];
  v9 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v9 supportedOnLocalDevice:1];
  v21[5] = v10;
  v11 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v21[6] = v11;
  v12 = MEMORY[0x277CCD428];
  v13 = [objc_opt_class() _featureIdentifier];
  v14 = [v12 onboardingRecordIsPresentForFeatureWithIdentifier:v13];
  v21[7] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:8];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
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
  v28[11] = *MEMORY[0x277D85DE8];
  v27 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v28[0] = v27;
  v26 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v28[1] = v26;
  v25 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE240]];
  v28[2] = v25;
  v2 = MEMORY[0x277CCD428];
  v24 = [objc_opt_class() _featureIdentifier];
  v23 = [v2 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v24];
  v28[3] = v23;
  v3 = MEMORY[0x277CCD428];
  v22 = [objc_opt_class() _featureIdentifier];
  v21 = [v3 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v22 isSupportedIfCountryListMissing:1];
  v28[4] = v21;
  v4 = MEMORY[0x277CCD428];
  v20 = [objc_opt_class() _featureIdentifier];
  v5 = [v4 capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v20 supportedOnLocalDevice:1];
  v28[5] = v5;
  v6 = [MEMORY[0x277CCD428] ageIsPresent];
  v28[6] = v6;
  v7 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v28[7] = v7;
  v8 = MEMORY[0x277CCD428];
  v9 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 onboardingRecordIsPresentForFeatureWithIdentifier:v9];
  v28[8] = v10;
  v11 = MEMORY[0x277CCD428];
  v12 = [objc_opt_class() _featureIdentifier];
  v13 = [v11 onboardingAcknowledgedWithIdentifier:v12 settingsKey:@"CardioFitnessFeatureSettingsKeyNotificationDetailsEntered"];
  v28[9] = v13;
  v14 = MEMORY[0x277CCD428];
  v15 = [objc_opt_class() _featureIdentifier];
  v16 = [v14 featureIsOnWithIdentifier:v15 isOnIfSettingIsAbsent:1];
  v28[10] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:11];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_postPregnancyAdjustmentEligibility
{
  v28[11] = *MEMORY[0x277D85DE8];
  v27 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v28[0] = v27;
  v26 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v28[1] = v26;
  v25 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE240]];
  v28[2] = v25;
  v2 = MEMORY[0x277CCD428];
  v24 = [objc_opt_class() _featureIdentifier];
  v23 = [v2 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v24];
  v28[3] = v23;
  v3 = MEMORY[0x277CCD428];
  v22 = [objc_opt_class() _featureIdentifier];
  v21 = [v3 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v22 isSupportedIfCountryListMissing:1];
  v28[4] = v21;
  v4 = MEMORY[0x277CCD428];
  v20 = [objc_opt_class() _featureIdentifier];
  v5 = [v4 capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v20 supportedOnLocalDevice:1];
  v28[5] = v5;
  v6 = [MEMORY[0x277CCD428] ageIsPresent];
  v28[6] = v6;
  v7 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v28[7] = v7;
  v8 = MEMORY[0x277CCD428];
  v9 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 onboardingRecordIsPresentForFeatureWithIdentifier:v9];
  v28[8] = v10;
  v11 = MEMORY[0x277CCD428];
  v12 = [objc_opt_class() _featureIdentifier];
  v13 = [v11 onboardingAcknowledgedWithIdentifier:v12 settingsKey:@"CardioFitnessFeatureSettingsKeyNotificationDetailsEntered"];
  v28[9] = v13;
  v14 = MEMORY[0x277CCD428];
  v15 = [objc_opt_class() _featureIdentifier];
  v16 = [v14 featureIsOffWithIdentifier:v15 isOffIfSettingIsAbsent:1];
  v28[10] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:11];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __91__HKHRCardioFitnessFeatureAvailabilityRequirements__requirementIdentifiersForRequirements___block_invoke()
{
  v0 = objc_opt_class();

  return [v0 requirementIdentifier];
}

@end