@interface HKHRHypertensionNotificationsFeatureAvailabilityRequirements
+ (id)_analysis;
+ (id)_backgroundDelivery;
+ (id)_basePromotionRequirements;
+ (id)_baseUsageWithFeatureOnRequirementIncluded:(BOOL)a3;
+ (id)_dtdrEducationVisibility;
+ (id)_dtdrStatusVisibility;
+ (id)_pregnancyAdjustmentEligibility;
+ (id)_promotion;
+ (id)_requirementIdentifiersForRequirements:(id)a3;
+ (id)_settingsUserInteractionEnabled;
+ (id)_settingsVisibilityWithFeatureOnboarded:(BOOL)a3;
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
  v18 = [objc_opt_class() _onboardingInitiation];
  v20[0] = v18;
  v19[1] = *MEMORY[0x277CCBE50];
  v17 = [objc_opt_class() _promotion];
  v20[1] = v17;
  v19[2] = *MEMORY[0x277CCBEA0];
  v16 = [objc_opt_class() _usage];
  v20[2] = v16;
  v19[3] = *MEMORY[0x277CCBDF8];
  v14 = [objc_opt_class() _analysis];
  v20[3] = v14;
  v19[4] = *MEMORY[0x277CCBE70];
  v2 = [objc_opt_class() _settingsVisibilityWithFeatureOnboarded:1];
  v20[4] = v2;
  v19[5] = @"NotOnboardedSettingsVisibility";
  v3 = [objc_opt_class() _settingsVisibilityWithFeatureOnboarded:0];
  v20[5] = v3;
  v19[6] = @"RoomEducationSectionVisibility";
  v4 = [objc_opt_class() _dtdrEducationVisibility];
  v20[6] = v4;
  v19[7] = @"RoomStatusSectionVisibility";
  v5 = [objc_opt_class() _dtdrStatusVisibility];
  v20[7] = v5;
  v19[8] = *MEMORY[0x277CCBE68];
  v6 = [objc_opt_class() _settingsUserInteractionEnabled];
  v20[8] = v6;
  v19[9] = *MEMORY[0x277CCBE60];
  v7 = [objc_opt_class() _pregnancyAdjustmentEligibility];
  v20[9] = v7;
  v19[10] = *MEMORY[0x277CCBE00];
  v8 = [objc_opt_class() _backgroundDelivery];
  v20[10] = v8;
  v19[11] = *MEMORY[0x277CCBE28];
  v9 = [objc_opt_class() _notificationSettingsVisibility];
  v20[11] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:12];
  v11 = [v15 initWithRequirementsByContext:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
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

+ (id)settingsUserInteractionRequirementIdentifiers
{
  v3 = [a1 _settingsUserInteractionEnabled];
  v4 = [a1 _requirementIdentifiersForRequirements:v3];

  return v4;
}

+ (id)_backgroundDelivery
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = MEMORY[0x277CCD428];
  v4 = [MEMORY[0x277CCDD30] sharedBehavior];
  v5 = [v4 features];
  v6 = [v3 featureFlagIsEnabled:{objc_msgSend(v5, "hermit")}];
  [v2 addObject:v6];

  v7 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:*MEMORY[0x277CCC068]];
  [v2 addObjectsFromArray:v7];

  return v2;
}

+ (id)_promotion
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [a1 _basePromotionRequirements];
  v3 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v9[0] = v3;
  v4 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v2 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_basePromotionRequirements
{
  v36[14] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  v35 = [MEMORY[0x277CCDD30] sharedBehavior];
  v34 = [v35 features];
  v33 = [v2 featureFlagIsEnabled:{objc_msgSend(v34, "hermit")}];
  v36[0] = v33;
  v3 = MEMORY[0x277CCD428];
  v32 = [objc_opt_class() _hypertensionIdentifier];
  v31 = [v3 someRegionIsSupportedForFeatureWithIdentifier:v32];
  v36[1] = v31;
  v4 = MEMORY[0x277CCD428];
  v30 = [objc_opt_class() _hypertensionIdentifier];
  v29 = [v4 onboardingRecordIsPresentForFeatureWithIdentifier:v30];
  v36[2] = v29;
  v5 = MEMORY[0x277CCD428];
  v28 = [objc_opt_class() _hypertensionIdentifier];
  v27 = [v5 seedIsNotExpiredForFeatureWithIdentifier:v28];
  v36[3] = v27;
  v6 = MEMORY[0x277CCD428];
  v26 = [objc_opt_class() _hypertensionIdentifier];
  v25 = [v6 featureIsNotRemotelyDisabledWithIdentifier:v26];
  v36[4] = v25;
  v24 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v36[5] = v24;
  v23 = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v36[6] = v23;
  v7 = MEMORY[0x277CCD428];
  v8 = [objc_opt_class() _hypertensionIdentifier];
  v9 = [v7 activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v8];
  v36[7] = v9;
  v10 = MEMORY[0x277CCD428];
  v11 = [objc_opt_class() _hypertensionIdentifier];
  v12 = [v10 capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v11];
  v36[8] = v12;
  v13 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  v36[9] = v13;
  v14 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v36[10] = v14;
  v15 = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v36[11] = v15;
  v16 = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v36[12] = v16;
  v17 = MEMORY[0x277CCD428];
  v18 = [objc_opt_class() _hypertensionIdentifier];
  v19 = [v17 onboardingNotAcknowledgedWithIdentifier:v18];
  v36[13] = v19;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:14];

  v20 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)_baseUsageWithFeatureOnRequirementIncluded:(BOOL)a3
{
  v48 = a3;
  v50[17] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD428];
  v47 = [MEMORY[0x277CCDD30] sharedBehavior];
  v46 = [v47 features];
  v45 = [v3 featureFlagIsEnabled:{objc_msgSend(v46, "hermit")}];
  v50[0] = v45;
  v4 = MEMORY[0x277CCD428];
  v44 = [objc_opt_class() _hypertensionIdentifier];
  v43 = [v4 onboardingRecordIsPresentForFeatureWithIdentifier:v44];
  v50[1] = v43;
  v5 = MEMORY[0x277CCD428];
  v42 = [objc_opt_class() _hypertensionIdentifier];
  v41 = [v5 seedIsNotExpiredForFeatureWithIdentifier:v42];
  v50[2] = v41;
  v6 = MEMORY[0x277CCD428];
  v40 = [objc_opt_class() _hypertensionIdentifier];
  v39 = [v6 featureIsNotRemotelyDisabledWithIdentifier:v40];
  v50[3] = v39;
  v38 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v50[4] = v38;
  v37 = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v50[5] = v37;
  v7 = MEMORY[0x277CCD428];
  v36 = [objc_opt_class() _hypertensionIdentifier];
  v35 = [v7 activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v36];
  v50[6] = v35;
  v8 = MEMORY[0x277CCD428];
  v33 = [objc_opt_class() _hypertensionIdentifier];
  v32 = [v8 capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v33];
  v50[7] = v32;
  v9 = MEMORY[0x277CCD428];
  v31 = [objc_opt_class() _hypertensionIdentifier];
  v30 = [v9 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v31 isSupportedIfCountryListMissing:1];
  v50[8] = v30;
  v10 = MEMORY[0x277CCD428];
  v29 = [objc_opt_class() _hypertensionIdentifier];
  v11 = [v10 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v29];
  v50[9] = v11;
  v12 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  v50[10] = v12;
  v13 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v50[11] = v13;
  v14 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v50[12] = v14;
  v15 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v50[13] = v15;
  v16 = MEMORY[0x277CCD428];
  v17 = [objc_opt_class() _hypertensionIdentifier];
  v18 = [v16 onboardingAcknowledgedWithIdentifier:v17];
  v50[14] = v18;
  v19 = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v50[15] = v19;
  v20 = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v50[16] = v20;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:17];

  if (v48)
  {
    v21 = MEMORY[0x277CCD428];
    v22 = [objc_opt_class() _hypertensionIdentifier];
    v23 = [v21 featureIsOnWithIdentifier:v22 isOnIfSettingIsAbsent:0];
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
  v39 = [objc_opt_class() _hypertensionIdentifier];
  v38 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:v39];
  v40[0] = v38;
  v3 = MEMORY[0x277CCD428];
  v37 = [MEMORY[0x277CCDD30] sharedBehavior];
  v36 = [v37 features];
  v35 = [v3 featureFlagIsEnabled:{objc_msgSend(v36, "hermit")}];
  v40[1] = v35;
  v4 = MEMORY[0x277CCD428];
  v34 = [objc_opt_class() _hypertensionIdentifier];
  v33 = [v4 seedIsNotExpiredForFeatureWithIdentifier:v34];
  v40[2] = v33;
  v5 = MEMORY[0x277CCD428];
  v32 = [objc_opt_class() _hypertensionIdentifier];
  v31 = [v5 featureIsNotRemotelyDisabledWithIdentifier:v32];
  v40[3] = v31;
  v30 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v40[4] = v30;
  v29 = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v40[5] = v29;
  v6 = MEMORY[0x277CCD428];
  v28 = [objc_opt_class() _hypertensionIdentifier];
  v27 = [v6 activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v28];
  v40[6] = v27;
  v7 = MEMORY[0x277CCD428];
  v25 = [objc_opt_class() _hypertensionIdentifier];
  v24 = [v7 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v25];
  v40[7] = v24;
  v8 = MEMORY[0x277CCD428];
  v9 = [objc_opt_class() _hypertensionIdentifier];
  v10 = [v8 featureIsOnWithIdentifier:v9 isOnIfSettingIsAbsent:0];
  v40[8] = v10;
  v11 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  v40[9] = v11;
  v12 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v40[10] = v12;
  v13 = MEMORY[0x277CCD428];
  v14 = [MEMORY[0x277CCDD30] sharedBehavior];
  v15 = [v13 capabilityIsSupportedOnAnyWatch:v26 supportedOnLocalDevice:{objc_msgSend(v14, "isCompanionCapable")}];
  v40[11] = v15;
  v16 = MEMORY[0x277CCD428];
  v17 = [objc_opt_class() _hypertensionIdentifier];
  v18 = [v16 onboardingAcknowledgedWithIdentifier:v17];
  v40[12] = v18;
  v19 = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v40[13] = v19;
  v20 = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v40[14] = v20;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:15];

  v21 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)_settingsVisibilityWithFeatureOnboarded:(BOOL)a3
{
  v34[8] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD428];
  v31 = [MEMORY[0x277CCDD30] sharedBehavior];
  v30 = [v31 features];
  v28 = [v3 featureFlagIsEnabled:{objc_msgSend(v30, "hermit")}];
  v34[0] = v28;
  v4 = MEMORY[0x277CCD428];
  v27 = [objc_opt_class() _hypertensionIdentifier];
  v26 = [v4 someRegionIsSupportedForFeatureWithIdentifier:v27];
  v34[1] = v26;
  v5 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  v34[2] = v5;
  v6 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v34[3] = v6;
  v7 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v34[4] = v7;
  v8 = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v34[5] = v8;
  v9 = MEMORY[0x277CCD428];
  v10 = [objc_opt_class() _hypertensionIdentifier];
  v11 = [v9 capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v10];
  v34[6] = v11;
  v12 = MEMORY[0x277CCD428];
  v13 = [objc_opt_class() _hypertensionIdentifier];
  v14 = [v12 onboardingRecordIsPresentForFeatureWithIdentifier:v13];
  v34[7] = v14;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:8];

  if (a3)
  {
    v15 = v29;
    v16 = v29;
  }

  else
  {
    v17 = MEMORY[0x277CCD428];
    v18 = [objc_opt_class() _hypertensionIdentifier];
    v19 = [v17 onboardingNotAcknowledgedWithIdentifier:v18];
    v33[0] = v19;
    v20 = MEMORY[0x277CCD428];
    v21 = [objc_opt_class() _hypertensionIdentifier];
    v22 = [v20 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v21];
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
  v20 = [MEMORY[0x277CCDD30] sharedBehavior];
  v19 = [v20 features];
  v3 = [v2 featureFlagIsEnabled:{objc_msgSend(v19, "hermit")}];
  v21[0] = v3;
  v4 = MEMORY[0x277CCD428];
  v5 = [objc_opt_class() _hypertensionIdentifier];
  v6 = [v4 onboardingAcknowledgedWithIdentifier:v5];
  v21[1] = v6;
  v7 = MEMORY[0x277CCD428];
  v8 = [objc_opt_class() _hypertensionIdentifier];
  v9 = [v7 seedIsNotExpiredForFeatureWithIdentifier:v8];
  v21[2] = v9;
  v10 = MEMORY[0x277CCD428];
  v11 = [objc_opt_class() _hypertensionIdentifier];
  v12 = [v10 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v11];
  v21[3] = v12;
  v13 = MEMORY[0x277CCD428];
  v14 = [objc_opt_class() _hypertensionIdentifier];
  v15 = [v13 featureIsNotRemotelyDisabledWithIdentifier:v14];
  v21[4] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_dtdrStatusVisibility
{
  v17[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 features];
  v5 = [v2 featureFlagIsEnabled:{objc_msgSend(v4, "hermit")}];
  v6 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v17[1] = v6;
  v7 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v17[2] = v7;
  v8 = MEMORY[0x277CCD428];
  v9 = [objc_opt_class() _hypertensionIdentifier];
  v10 = [v8 activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v9];
  v17[3] = v10;
  v11 = MEMORY[0x277CCD428];
  v12 = [objc_opt_class() _hypertensionIdentifier];
  v13 = [v11 someRegionIsSupportedForFeatureWithIdentifier:v12];
  v17[4] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_settingsUserInteractionEnabled
{
  v21[8] = *MEMORY[0x277D85DE8];
  v20 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v21[0] = v20;
  v19 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v21[1] = v19;
  v2 = MEMORY[0x277CCD428];
  v18 = [objc_opt_class() _hypertensionIdentifier];
  v3 = [v2 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v18 isSupportedIfCountryListMissing:1];
  v21[2] = v3;
  v4 = MEMORY[0x277CCD428];
  v5 = [objc_opt_class() _hypertensionIdentifier];
  v6 = [v4 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v5];
  v21[3] = v6;
  v7 = MEMORY[0x277CCD428];
  v8 = [objc_opt_class() _hypertensionIdentifier];
  v9 = [v7 featureIsNotRemotelyDisabledWithIdentifier:v8];
  v21[4] = v9;
  v10 = MEMORY[0x277CCD428];
  v11 = [objc_opt_class() _hypertensionIdentifier];
  v12 = [v10 seedIsNotExpiredForFeatureWithIdentifier:v11];
  v21[5] = v12;
  v13 = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v21[6] = v13;
  v14 = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v21[7] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:8];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_requirementIdentifiersForRequirements:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v11 = [objc_opt_class() requirementIdentifier];
        [v4 addObject:v11];
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
  v38 = [MEMORY[0x277CCDD30] sharedBehavior];
  v37 = [v38 features];
  v36 = [v2 featureFlagIsEnabled:{objc_msgSend(v37, "hermit")}];
  v39[0] = v36;
  v3 = MEMORY[0x277CCD428];
  v35 = [objc_opt_class() _hypertensionIdentifier];
  v34 = [v3 someRegionIsSupportedForFeatureWithIdentifier:v35];
  v39[1] = v34;
  v4 = MEMORY[0x277CCD428];
  v33 = [objc_opt_class() _hypertensionIdentifier];
  v32 = [v4 seedIsNotExpiredForFeatureWithIdentifier:v33];
  v39[2] = v32;
  v5 = MEMORY[0x277CCD428];
  v31 = [objc_opt_class() _hypertensionIdentifier];
  v30 = [v5 featureIsNotRemotelyDisabledWithIdentifier:v31];
  v39[3] = v30;
  v29 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v39[4] = v29;
  v28 = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v39[5] = v28;
  v6 = MEMORY[0x277CCD428];
  v27 = [objc_opt_class() _hypertensionIdentifier];
  v26 = [v6 capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v27];
  v39[6] = v26;
  v7 = MEMORY[0x277CCD428];
  v25 = [objc_opt_class() _hypertensionIdentifier];
  v24 = [v7 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v25 isSupportedIfCountryListMissing:1];
  v39[7] = v24;
  v8 = MEMORY[0x277CCD428];
  v9 = [objc_opt_class() _hypertensionIdentifier];
  v10 = [v8 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v9];
  v39[8] = v10;
  v11 = MEMORY[0x277CCD428];
  v12 = [objc_opt_class() _hypertensionIdentifier];
  v13 = [v11 onboardingRecordIsPresentForFeatureWithIdentifier:v12];
  v39[9] = v13;
  v14 = MEMORY[0x277CCD428];
  v15 = [objc_opt_class() _hypertensionIdentifier];
  v16 = [v14 featureIsOnWithIdentifier:v15 isOnIfSettingIsAbsent:0];
  v39[10] = v16;
  v17 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  v39[11] = v17;
  v18 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v39[12] = v18;
  v19 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v39[13] = v19;
  v20 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v39[14] = v20;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:15];

  v21 = *MEMORY[0x277D85DE8];

  return v23;
}

@end