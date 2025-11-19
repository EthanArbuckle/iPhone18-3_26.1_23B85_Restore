id HKHRAFibBurdenControlServerInterface()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283BEE240];
  v1 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [v1 setWithArray:v2];

  [v0 setClasses:v3 forSelector:sel_remote_injectBurdenValues_completion_ argumentIndex:0 ofReply:0];
  v4 = *MEMORY[0x277D85DE8];

  return v0;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

id HKHRHeartHealthBundle()
{
  v0 = HKHRHeartHealthBundle___ClassBundle;
  if (!HKHRHeartHealthBundle___ClassBundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = HKHRHeartHealthBundle___ClassBundle;
    HKHRHeartHealthBundle___ClassBundle = v1;

    v0 = HKHRHeartHealthBundle___ClassBundle;
  }

  return v0;
}

id HKHeartRateLocalizedString(void *a1)
{
  v1 = a1;
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_283BD8508 table:@"HeartRateSettings"];

  return v3;
}

id HKHRAFibHistoryLocalizedString(void *a1)
{
  v1 = a1;
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

id HKHRBloodPressureJournalLocalizedString(void *a1)
{
  v1 = a1;
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_283BD8508 table:@"BloodPressureJournal-Notifications"];

  return v3;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

double HKHRAFibBurdenSevenDayAnalysisMaximumXPCDelay()
{
  v0 = 1800.0;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2 = [v1 objectForKey:@"HKHRAFibBurdenSevenDayAnalysisMaximumXPCDelay"];

    if (v2)
    {
      v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v0 = [v3 integerForKey:@"HKHRAFibBurdenSevenDayAnalysisMaximumXPCDelay"];
    }
  }

  return v0;
}

uint64_t HKHRAFibBurdenSevenDayAnalysisNotificationEndWeekdayToFire()
{
  if (![MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    return 4;
  }

  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 objectForKey:@"HKHRAFibBurdenSevenDayAnalysisNotificationEndWeekdayToFire"];

  if (!v1)
  {
    return 4;
  }

  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 integerForKey:@"HKHRAFibBurdenSevenDayAnalysisNotificationEndWeekdayToFire"];

  return v3;
}

id HKHRAFibBurdenAnalysisPercentageOverride()
{
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall] && (objc_msgSend(MEMORY[0x277CBEBD0], "standardUserDefaults"), v0 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v0, "objectForKey:", @"HKHRAFibBurdenAnalysisPercentageOverride"), v1 = objc_claimAutoreleasedReturnValue(), v1, v0, v1))
  {
    v2 = MEMORY[0x277CCABB0];
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v2 numberWithInteger:{objc_msgSend(v3, "integerForKey:", @"HKHRAFibBurdenAnalysisPercentageOverride"}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id HKHRAFibBurdenSevenDayAnalysisUnavailabilityReasonOverride()
{
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall] && (objc_msgSend(MEMORY[0x277CBEBD0], "standardUserDefaults"), v0 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v0, "objectForKey:", @"HKHRAFibBurdenSevenDayAnalysisUnavailabilityReasonOverride"), v1 = objc_claimAutoreleasedReturnValue(), v1, v0, v1))
  {
    v2 = MEMORY[0x277CCABB0];
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v2 numberWithInteger:{objc_msgSend(v3, "integerForKey:", @"HKHRAFibBurdenSevenDayAnalysisUnavailabilityReasonOverride"}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id HKHRAFibBurdenOnboardingDateOverride()
{
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall] && (objc_msgSend(MEMORY[0x277CBEBD0], "standardUserDefaults"), v0 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v0, "objectForKey:", @"HKHRAFibBurdenOnboardingDateOverride"), v1 = objc_claimAutoreleasedReturnValue(), v1, v0, v1))
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [v2 stringForKey:@"HKHRAFibBurdenOnboardingDateOverride"];

    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v5 = [v4 dateFromString:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id _ParseArrayOfValuesFromStringWithExpectedCount(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if ([v3 hasPrefix:@"["] && objc_msgSend(v3, "hasSuffix:", @"]"))
  {
    v24 = v3;
    v4 = [v3 substringWithRange:{1, objc_msgSend(v3, "length") - 2}];
    v5 = [v4 componentsSeparatedByString:{@", "}];

    v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [v6 numberFromString:*(*(&v26 + 1) + 8 * i)];
          v13 = v12;
          if (v12)
          {
            v14 = [v12 integerValue];
            v15 = v14 < 3;
            v16 = 100;
            if (v14 < 100)
            {
              v16 = v14;
            }

            if (v16 <= 2)
            {
              v17 = 2;
            }

            else
            {
              v17 = v16;
            }

            v18 = [HKHRAFibBurdenAnalysisResult alloc];
            v19 = [MEMORY[0x277CCABB0] numberWithDouble:v17 / 100.0];
            v20 = [(HKHRAFibBurdenAnalysisResult *)v18 initWithBurdenPercentage:v19 burdenPercentageWasClampedToLowerBound:v15 unavailabilityReason:0];
            [v7 addObject:v20];
          }

          else
          {
            v19 = [[HKHRAFibBurdenAnalysisResult alloc] initWithBurdenPercentage:0 burdenPercentageWasClampedToLowerBound:0 unavailabilityReason:2];
            [v7 addObject:v19];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    if ([v7 count] == a2)
    {
      v21 = v7;
    }

    else
    {
      v21 = 0;
    }

    v3 = v24;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id _RetrieveAndParseArrayOfResultsForKeyWithExpectedCount(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall] && (objc_msgSend(MEMORY[0x277CBEBD0], "standardUserDefaults"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKey:", v3), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [v6 stringForKey:v3];

    v8 = _ParseArrayOfValuesFromStringWithExpectedCount(v7, a2);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

HKHRAFibBurdenDayOfWeekHistogram *HKHRAFibBurdenDayOfWeekHistogramOverride()
{
  v0 = _RetrieveAndParseArrayOfResultsForKeyWithExpectedCount(@"HKHRAFibBurdenDayOfWeekHistogramOverride", 7);
  if (v0)
  {
    v1 = [HKHRAFibBurdenDayOfWeekHistogram alloc];
    v2 = [v0 objectAtIndexedSubscript:6];
    v3 = [v0 objectAtIndexedSubscript:0];
    v4 = [v0 objectAtIndexedSubscript:1];
    v5 = [v0 objectAtIndexedSubscript:2];
    v6 = [v0 objectAtIndexedSubscript:3];
    v7 = [v0 objectAtIndexedSubscript:4];
    v8 = [v0 objectAtIndexedSubscript:5];
    v9 = [(HKHRAFibBurdenDayOfWeekHistogram *)v1 initWithSundayBurden:v2 mondayBurden:v3 tuesdayBurden:v4 wednesdayBurden:v5 thursdayBurden:v6 fridayBurden:v7 saturdayBurden:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

HKHRAFibBurdenTimeOfDayHistogram *HKHRAFibBurdenTimeOfDayHistogramOverride()
{
  v0 = _RetrieveAndParseArrayOfResultsForKeyWithExpectedCount(@"HKHRAFibBurdenTimeOfDayHistogramOverride", 6);
  if (v0)
  {
    v1 = [HKHRAFibBurdenTimeOfDayHistogram alloc];
    v2 = [v0 objectAtIndexedSubscript:0];
    v3 = [v0 objectAtIndexedSubscript:1];
    v4 = [v0 objectAtIndexedSubscript:2];
    v5 = [v0 objectAtIndexedSubscript:3];
    v6 = [v0 objectAtIndexedSubscript:4];
    v7 = [v0 objectAtIndexedSubscript:5];
    v8 = [(HKHRAFibBurdenTimeOfDayHistogram *)v1 initWithMidnightToFourAMBurden:v2 fourAMtoEightAMBurden:v3 eightAMToNoonBurden:v4 noonToFourPMBurden:v5 fourPMToEightPMBurden:v6 eightPMToMidnightBurden:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id HKHRAFibBurdenDefaultsOverrideKeys()
{
  v3[11] = *MEMORY[0x277D85DE8];
  v3[0] = @"HKHRAFibBurdenSevenDayAnalysisStartingWeekday";
  v3[1] = @"HKHRAFibBurdenSevenDayAnalysisStartingHour";
  v3[2] = @"HKHRAFibBurdenSevenDayAnalysisStartingMinute";
  v3[3] = @"HKHRAFibBurdenSevenDayAnalysisStartingSecond";
  v3[4] = @"HKHRAFibBurdenSevenDayAnalysisMaximumXPCDelay";
  v3[5] = @"HKHRAFibBurdenSevenDayAnalysisNotificationEndWeekdayToFire";
  v3[6] = @"HKHRAFibBurdenAnalysisPercentageOverride";
  v3[7] = @"HKHRAFibBurdenSevenDayAnalysisUnavailabilityReasonOverride";
  v3[8] = @"HKHRAFibBurdenDayOfWeekHistogramOverride";
  v3[9] = @"HKHRAFibBurdenTimeOfDayHistogramOverride";
  v3[10] = @"HKHRAFibBurdenOnboardingDateOverride";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:11];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id HKHRIrregularRhythmNotificationsRequirementsWithFeatureIdentifier(void *a1)
{
  v81[11] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCD420];
  v2 = a1;
  v52 = [v1 alloc];
  v80[0] = *MEMORY[0x277CCBE38];
  v73 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v79[0] = v73;
  v72 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v2];
  v79[1] = v72;
  v71 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v79[2] = v71;
  v70 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v2];
  v79[3] = v70;
  v69 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v2];
  v79[4] = v69;
  v68 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v2];
  v79[5] = v68;
  v3 = *MEMORY[0x277CCC228];
  v67 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC228]];
  v79[6] = v67;
  v4 = *MEMORY[0x277CCBFF0];
  v66 = [MEMORY[0x277CCD428] mutuallyExclusiveFeatureIsOffWithIdentifier:*MEMORY[0x277CCBFF0]];
  v79[7] = v66;
  v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:8];
  v81[0] = v65;
  v80[1] = *MEMORY[0x277CCBE48];
  v64 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v78[0] = v64;
  v63 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v78[1] = v63;
  v62 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v2];
  v78[2] = v62;
  v61 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v78[3] = v61;
  v60 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v2];
  v78[4] = v60;
  v59 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v2];
  v78[5] = v59;
  v58 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v2];
  v78[6] = v58;
  v57 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v3];
  v78[7] = v57;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:8];
  v81[1] = v56;
  v80[2] = *MEMORY[0x277CCBE40];
  v55 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v77[0] = v55;
  v54 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v77[1] = v54;
  v51 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v2];
  v77[2] = v51;
  v50 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v77[3] = v50;
  v49 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v2];
  v77[4] = v49;
  v48 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v3];
  v77[5] = v48;
  v47 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v77[6] = v47;
  v46 = [MEMORY[0x277CCD428] mutuallyExclusiveFeatureIsOffWithIdentifier:v4];
  v77[7] = v46;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:8];
  v81[2] = v45;
  v80[3] = *MEMORY[0x277CCBE50];
  v44 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v76[0] = v44;
  v43 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v2];
  v76[1] = v43;
  v42 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v76[2] = v42;
  v41 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v2];
  v76[3] = v41;
  v40 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v2];
  v76[4] = v40;
  v39 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v2];
  v76[5] = v39;
  v38 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v2];
  v76[6] = v38;
  v37 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v2 isSupportedIfCountryListMissing:0];
  v76[7] = v37;
  v36 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v3];
  v76[8] = v36;
  v35 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v76[9] = v35;
  v34 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v76[10] = v34;
  v33 = [MEMORY[0x277CCD428] onboardingRecordIsNotPresentForMutuallyExclusiveFeatureWithIdentifier:v4];
  v76[11] = v33;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:12];
  v81[3] = v32;
  v80[4] = *MEMORY[0x277CCBE70];
  v31 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v75[0] = v31;
  v30 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v75[1] = v30;
  v29 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v2];
  v75[2] = v29;
  v28 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v75[3] = v28;
  v27 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v2];
  v75[4] = v27;
  v26 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v3];
  v75[5] = v26;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:6];
  v81[4] = v25;
  v80[5] = *MEMORY[0x277CCBE68];
  v24 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v2];
  v74[0] = v24;
  v23 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v2];
  v74[1] = v23;
  v22 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v2];
  v74[2] = v22;
  v21 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v74[3] = v21;
  v20 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v2 isSupportedIfCountryListMissing:1];
  v74[4] = v20;
  v19 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v74[5] = v19;
  v18 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v74[6] = v18;
  v5 = [MEMORY[0x277CCD428] mutuallyExclusiveFeatureIsOffWithIdentifier:v4];
  v74[7] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:8];
  v81[5] = v6;
  v80[6] = *MEMORY[0x277CCBE88];
  v7 = _TipsAppVisibilityRequirementsForFeatureIdentifier(v2);
  v81[6] = v7;
  v80[7] = *MEMORY[0x277CCBE80];
  v8 = _TipsAppVisibilityRequirementsForFeatureIdentifier(v2);
  v9 = [MEMORY[0x277CCD428] onboardingRecordIsNotPresentForFeatureWithIdentifier:v2];
  v10 = [v8 arrayByAddingObject:v9];
  v81[7] = v10;
  v80[8] = *MEMORY[0x277CCBE20];
  v11 = _UsageRequirementsForFeatureIdentifier(v2);
  v12 = [v11 hk_filter:&__block_literal_global_1];

  v81[8] = v12;
  v80[9] = @"UsagePendingOnboarding";
  v13 = _UsageRequirementsPendingOnboardingForFeatureIdentifier(v2);
  v81[9] = v13;
  v80[10] = *MEMORY[0x277CCBEA0];
  v14 = _UsageRequirementsForFeatureIdentifier(v2);

  v81[10] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:11];
  v53 = [v52 initWithRequirementsByContext:v15];

  v16 = *MEMORY[0x277D85DE8];

  return v53;
}

id _TipsAppVisibilityRequirementsForFeatureIdentifier(void *a1)
{
  v14[8] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCD428];
  v2 = a1;
  v3 = [v1 profileIsNotFamilySetupPairingProfile];
  v14[0] = v3;
  v4 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v2];
  v14[1] = v4;
  v5 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v2];
  v14[2] = v5;
  v6 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v2];
  v14[3] = v6;
  v7 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v2];
  v14[4] = v7;
  v8 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v2];
  v14[5] = v8;
  v9 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v2 isSupportedIfCountryListMissing:1];

  v14[6] = v9;
  v10 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC228]];
  v14[7] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:8];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id _UsageRequirementsPendingOnboardingForFeatureIdentifier(void *a1)
{
  v19[13] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCD428];
  v2 = a1;
  v18 = [v1 healthAppIsNotHidden];
  v19[0] = v18;
  v17 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v19[1] = v17;
  v16 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v2];
  v19[2] = v16;
  v15 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v19[3] = v15;
  v3 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v2];
  v19[4] = v3;
  v4 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v2];
  v19[5] = v4;
  v5 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v2];
  v19[6] = v5;
  v6 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v2];
  v19[7] = v6;
  v7 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v2 isSupportedIfCountryListMissing:1];

  v19[8] = v7;
  v8 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC228]];
  v19[9] = v8;
  v9 = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v19[10] = v9;
  v10 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v19[11] = v10;
  v11 = [MEMORY[0x277CCD428] mutuallyExclusiveFeatureIsOffWithIdentifier:*MEMORY[0x277CCBFF0]];
  v19[12] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:13];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id _UsageRequirementsForFeatureIdentifier(void *a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = _UsageRequirementsPendingOnboardingForFeatureIdentifier(v1);
  v3 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v1];
  v9[0] = v3;
  v4 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v1 isOnIfSettingIsAbsent:0];

  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v2 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

__CFString *NSStringFromHKHRAnalyticsAgeBin(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_27860AB90[a1 - 1];
  }
}

uint64_t HKHRAnalyticsAgeBinFromAgeInYears(void *a1)
{
  v2 = [a1 integerValue];
  v3 = 1;
  v4 = 2;
  v5 = 3;
  if (v2 >= 0x41)
  {
    v5 = 4;
  }

  if (v2 >= 0x37)
  {
    v4 = v5;
  }

  if (v2 >= 0x28)
  {
    v3 = v4;
  }

  if (v2 < 22)
  {
    v3 = 0;
  }

  if (a1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

id HKHRPrettyPrintedAFibBurdenSevenDayAnalysisBreadcrumbs(void *a1)
{
  v48[2] = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"======== Seven Day Analysis Steps ========\n"];
  v4 = [objc_alloc(MEMORY[0x277CCDA90]) initWithColumnTitles:0];
  v5 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v6 = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v5 setTimeZone:v6];

  v48[0] = @"Alarm Fired";
  v7 = [v2 alarmFiredDate];
  if (v7)
  {
    v1 = [v2 alarmFiredDate];
    v8 = [v5 stringFromDate:v1];
  }

  else
  {
    v8 = @"(null)";
  }

  v48[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  [v4 appendRow:v9];

  if (v7)
  {
  }

  v47[0] = @"XPC Activity Fired";
  v10 = [v2 xpcActivityFiredDate];
  if (v10)
  {
    v1 = [v2 xpcActivityFiredDate];
    v11 = [v5 stringFromDate:v1];
  }

  else
  {
    v11 = @"(null)";
  }

  v47[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
  [v4 appendRow:v12];

  if (v10)
  {
  }

  v46[0] = @"Maintenance Operation Run";
  v13 = [v2 protectedDataOperationRunDate];
  if (v13)
  {
    v1 = [v2 protectedDataOperationRunDate];
    v14 = [v5 stringFromDate:v1];
  }

  else
  {
    v14 = @"(null)";
  }

  v46[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
  [v4 appendRow:v15];

  if (v13)
  {
  }

  v45[0] = @"Analysis Started";
  v16 = [v2 analysisStartedDate];
  if (v16)
  {
    v1 = [v2 analysisStartedDate];
    v17 = [v5 stringFromDate:v1];
  }

  else
  {
    v17 = @"(null)";
  }

  v45[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  [v4 appendRow:v18];

  if (v16)
  {
  }

  v44[0] = @"Tachograms Classified";
  v19 = [v2 tachogramsClassifiedDate];
  if (v19)
  {
    v1 = [v2 tachogramsClassifiedDate];
    v20 = [v5 stringFromDate:v1];
  }

  else
  {
    v20 = @"(null)";
  }

  v44[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  [v4 appendRow:v21];

  if (v19)
  {
  }

  v43[0] = @"Analysis Ended";
  v22 = [v2 analysisEndedDate];
  if (v22)
  {
    v1 = [v2 analysisEndedDate];
    v23 = [v5 stringFromDate:v1];
  }

  else
  {
    v23 = @"(null)";
  }

  v43[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  [v4 appendRow:v24];

  if (v22)
  {
  }

  v42[0] = @"Analysis Retry Later Requested";
  v25 = [v2 analysisRetryLaterRequestedDate];
  if (v25)
  {
    v1 = [v2 analysisRetryLaterRequestedDate];
    v26 = [v5 stringFromDate:v1];
  }

  else
  {
    v26 = @"(null)";
  }

  v42[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  [v4 appendRow:v27];

  if (v25)
  {
  }

  v28 = [v4 formattedTable];
  [v3 appendString:v28];

  [v3 appendFormat:@"\n======== Seven Day Analysis Results ========\n"];
  v29 = [objc_alloc(MEMORY[0x277CCDA90]) initWithColumnTitles:0];
  v41[0] = @"Last Analysis Result Date";
  v30 = [v2 lastAnalysisResultDate];
  if (v30)
  {
    v26 = [v2 lastAnalysisResultDate];
    v31 = [v5 stringFromDate:v26];
  }

  else
  {
    v31 = @"(null)";
  }

  v41[1] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  [v29 appendRow:v32];

  if (v30)
  {
  }

  v33 = [v2 lastAnalysisResultContext];
  if (v33)
  {
    v34 = [v2 lastAnalysisResultContext];
  }

  else
  {
    v34 = @"(null)";
  }

  v40[1] = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  [v29 appendRow:v35];

  if (v33)
  {
  }

  v36 = [v29 formattedTable];
  [v3 appendString:v36];

  v37 = [v3 copy];
  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

id HKHRHypertensionEventSampleDetailsLink(uint64_t a1)
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"x-apple-health://Heart.healthplugin/%@/%@", @"HypertensionEventSampleDetails", a1];
  v3 = [v1 URLWithString:v2];

  return v3;
}

id HKHRHypertensionNotificationsSettingsLocstr(void *a1)
{
  v1 = a1;
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_283BD8508 table:@"HeartRateSettings-HypertensionNotifications"];

  v4 = HKConditionallyRedactedHeartRhythmString();

  return v4;
}

uint64_t HKHRAFibBurdenPreviousWeekDayIndexRange(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 hk_dayIndexWithCalendar:v3];
  v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v6 setWeekday:2];
  v7 = [v3 nextDateAfterDate:v4 matchingComponents:v6 options:260];

  v8 = [v7 hk_dayIndexWithCalendar:v3];
  if (v8 + 7 <= v5)
  {
    v10 = v8;
  }

  else
  {
    v9 = [v3 nextDateAfterDate:v7 matchingComponents:v6 options:260];

    v10 = [v9 hk_dayIndexWithCalendar:v3];
    v7 = v9;
  }

  return v10;
}

uint64_t HKHRAFibBurdenNotificationsEnabledWithFeatureStatus(void *a1)
{
  v1 = a1;
  v2 = [v1 onboardingRecord];
  v3 = [v2 featureSettings];

  if (v3)
  {
    v4 = [v1 onboardingRecord];
    v5 = [v4 featureSettings];
    v6 = HKHRAFibBurdenNotificationsEnabledWithFeatureSettings(v5);
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKHRAFibBurdenLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      HKHRAFibBurdenNotificationsEnabledWithFeatureStatus_cold_1(v7);
    }

    v6 = 1;
  }

  return v6;
}

uint64_t HKHRAFibBurdenNotificationsEnabledWithFeatureSettings(void *a1)
{
  v1 = [a1 numberForKey:@"WeeklyNotificationEnabled"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t HKHRAFibBurdenSevenDayAnalysisDetermineStartingWeekday()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = HKHRAFibBurdenSevenDayAnalysisDetermineStartingWeekdayWithDefaults(v0);

  return v1;
}

uint64_t HKHRAFibBurdenSevenDayAnalysisDetermineStartingWeekdayWithDefaults(void *a1)
{
  v1 = a1;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall] && (objc_msgSend(v1, "objectForKey:", @"HKHRAFibBurdenSevenDayAnalysisStartingWeekday"), v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = [v1 integerForKey:@"HKHRAFibBurdenSevenDayAnalysisStartingWeekday"];
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

uint64_t HKHRAFibBurdenSevenDayAnalysisDetermineStartingHour()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = HKHRAFibBurdenSevenDayAnalysisDetermineStartingHourWithDefaults(v0);

  return v1;
}

uint64_t HKHRAFibBurdenSevenDayAnalysisDetermineStartingHourWithDefaults(void *a1)
{
  v1 = a1;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall] && (objc_msgSend(v1, "objectForKey:", @"HKHRAFibBurdenSevenDayAnalysisStartingHour"), v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = [v1 integerForKey:@"HKHRAFibBurdenSevenDayAnalysisStartingHour"];
  }

  else
  {
    v3 = 8;
  }

  return v3;
}

uint64_t HKHRAFibBurdenSevenDayAnalysisDetermineStartingMinute()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = HKHRAFibBurdenSevenDayAnalysisDetermineStartingMinuteWithDefaults(v0);

  return v1;
}

uint64_t HKHRAFibBurdenSevenDayAnalysisDetermineStartingMinuteWithDefaults(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"HKHRAFibBurdenSevenDayAnalysisStartingMinute"];

  if (v2)
  {
    v3 = [v1 integerForKey:@"HKHRAFibBurdenSevenDayAnalysisStartingMinute"];
  }

  else
  {
    v3 = arc4random_uniform(0x3Cu);
    [v1 setInteger:v3 forKey:@"HKHRAFibBurdenSevenDayAnalysisStartingMinute"];
  }

  return v3;
}

uint64_t HKHRAFibBurdenSevenDayAnalysisDetermineStartingSecond()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = HKHRAFibBurdenSevenDayAnalysisDetermineStartingSecondWithDefaults(v0);

  return v1;
}

uint64_t HKHRAFibBurdenSevenDayAnalysisDetermineStartingSecondWithDefaults(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"HKHRAFibBurdenSevenDayAnalysisStartingSecond"];

  if (v2)
  {
    v3 = [v1 integerForKey:@"HKHRAFibBurdenSevenDayAnalysisStartingSecond"];
  }

  else
  {
    v3 = arc4random_uniform(0x3Cu);
    [v1 setInteger:v3 forKey:@"HKHRAFibBurdenSevenDayAnalysisStartingSecond"];
  }

  return v3;
}

id HKHRAFibBurdenSevenDayAnalysisDetermineAlarmDateComponents()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = HKHRAFibBurdenSevenDayAnalysisDetermineAlarmDateComponentsWithDefaults(v0);

  return v1;
}

id HKHRAFibBurdenSevenDayAnalysisDetermineAlarmDateComponentsWithDefaults(void *a1)
{
  v1 = MEMORY[0x277CBEAB8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setWeekday:HKHRAFibBurdenSevenDayAnalysisDetermineStartingWeekdayWithDefaults(v2)];
  [v3 setHour:HKHRAFibBurdenSevenDayAnalysisDetermineStartingHourWithDefaults(v2)];
  [v3 setMinute:HKHRAFibBurdenSevenDayAnalysisDetermineStartingMinuteWithDefaults(v2)];
  v4 = HKHRAFibBurdenSevenDayAnalysisDetermineStartingSecondWithDefaults(v2);

  [v3 setSecond:v4];
  v5 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  [v3 setCalendar:v5];

  return v3;
}

id HKHRAFibBurdenSevenDayAnalysisMetadataWithTimeZoneAndWasClamped(void *a1, int a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = HKHRAFibBurdenLocalFeatureAttributes();
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v15[0] = *MEMORY[0x277CCE0D0];
  v6 = [v4 updateVersion];
  v16[0] = v6;
  v15[1] = *MEMORY[0x277CCC428];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v4 featureVersion];
  v9 = [v7 numberWithInteger:{objc_msgSend(v8, "integerValue")}];
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v11 = [v5 initWithDictionary:v10];

  if (v3)
  {
    v12 = [v3 name];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCC530]];
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKHRAFibBurdenLogForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      HKHRAFibBurdenSevenDayAnalysisMetadataWithTimeZoneAndWasClamped_cold_1(v12);
    }
  }

  if (a2)
  {
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CCC4F8]];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

void sub_2289520FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2289523C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_22895263C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2289528EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_228952BB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_228952F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void HKHRSubmitNotificationsEnabledSignal()
{
  v0 = BiomeLibrary();
  v1 = [v0 Discoverability];
  v4 = [v1 Signals];

  v2 = [v4 source];
  v3 = [objc_alloc(MEMORY[0x277CF1168]) initWithContentIdentifier:@"com.apple.health.HeartRate.notifications.enabled" context:0 osBuild:0 userInfo:0];
  [v2 sendEvent:v3];
}

__CFString *HKHRAFibBurdenAnalyticsPropertyValueForVersion(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"1.0";
  }

  else
  {
    v2 = *MEMORY[0x277CCB800];
  }

  return v2;
}

id HKHRAFibBurdenDetermineIsFocusModeOn()
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v0 = BiomeLibrary();
  v1 = [v0 UserFocus];
  v2 = [v1 ComputedMode];
  v3 = [v2 publisher];
  v4 = [v3 last];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __HKHRAFibBurdenDetermineIsFocusModeOn_block_invoke;
  v9[3] = &unk_27860AF20;
  v9[4] = &v10;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __HKHRAFibBurdenDetermineIsFocusModeOn_block_invoke_305;
  v8[3] = &unk_27860AF48;
  v8[4] = &v10;
  v5 = [v4 sinkWithCompletion:v9 receiveInput:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void sub_228954050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __HKHRAFibBurdenDetermineIsFocusModeOn_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 error];
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_228942000, v4, OS_LOG_TYPE_DEFAULT, "[HKHRAFibBurdenDetermineIsFocusModeOn] User focus computed mode publisher finished with error: %{public}@", &v10, 0xCu);
  }

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    _HKInitializeLogging();
    v6 = HKHRAFibBurdenLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_228942000, v6, OS_LOG_TYPE_DEFAULT, "[HKHRAFibBurdenDetermineIsFocusModeOn] No focus mode returned, possibly implying focus modes never used, sending off.", &v10, 2u);
    }

    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = MEMORY[0x277CBEC28];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __HKHRAFibBurdenDetermineIsFocusModeOn_block_invoke_305(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];

  _HKInitializeLogging();
  v5 = HKHRAFibBurdenLogForCategory(3);
  v6 = v5;
  if (v4)
  {
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v7)
    {
      v8 = HKHRAFibBurdenLogForCategory(3);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __HKHRAFibBurdenDetermineIsFocusModeOn_block_invoke_305_cold_1(v3, v8);
      }
    }

    v9 = MEMORY[0x277CCABB0];
    v6 = [v3 eventBody];
    v10 = [v9 numberWithBool:{-[NSObject starting](v6, "starting")}];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __HKHRAFibBurdenDetermineIsFocusModeOn_block_invoke_305_cold_2(v3, v6);
  }
}

const char *HKHRAFibBurdenLogCategoryForCategory(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return "default";
  }

  else
  {
    return off_27860AF90[a1 - 1];
  }
}

id HKHRAFibBurdenLogForCategory(uint64_t a1)
{
  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v3 = [v2 showSensitiveLogItems];

  if (v3)
  {
    v4 = MEMORY[0x277CCC2D0];
  }

  else
  {
    if (HKHRAFibBurdenLogForCategory_onceToken != -1)
    {
      HKHRAFibBurdenLogForCategory_cold_1();
    }

    v4 = &HKHRAFibBurdenLogForCategory_logObjects[a1];
  }

  v5 = *v4;

  return v5;
}

void __HKHRAFibBurdenLogForCategory_block_invoke()
{
  v0 = HKHRAFibBurdenLogForCategory_logObjects;
  for (i = -1; i != 3; ++i)
  {
    v2 = "default";
    if (i <= 2)
    {
      v2 = off_27860AFB0[i];
    }

    v3 = os_log_create(HKHRAFibBurdenLogSubsystem, v2);
    v4 = *v0;
    *v0++ = v3;
  }
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_2289585E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228959A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_22895A4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

const char *HKHRBloodPressureLogCategoryForCategory(uint64_t a1)
{
  if (a1 == 1)
  {
    return "journal";
  }

  else
  {
    return "default";
  }
}

id HKHRBloodPressureLogForCategory(uint64_t a1)
{
  if (HKHRBloodPressureLogForCategory_onceToken[0] != -1)
  {
    HKHRBloodPressureLogForCategory_cold_1();
  }

  v2 = HKHRBloodPressureLogForCategory_logObjects[a1];

  return v2;
}

uint64_t __HKHRBloodPressureLogForCategory_block_invoke()
{
  v0 = os_log_create(HKHRBloodPressureLogSubsystem, "default");
  v1 = HKHRBloodPressureLogForCategory_logObjects[0];
  HKHRBloodPressureLogForCategory_logObjects[0] = v0;

  qword_27D85E210 = os_log_create(HKHRBloodPressureLogSubsystem, "journal");

  return MEMORY[0x2821F96F8]();
}

void sub_22895B284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22895C490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromHKHeartbeatSeriesFeature(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"HKHeartbeatSeriesFeature: %@", v3];
  }

  else
  {
    v1 = off_27860B560[a1 - 1];
  }

  return v1;
}

void sub_22895D3D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22895DB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_0_6(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t _HKHRIsIrregularRhythmNotificationsRowHiddenInBridgeWithFeatureStatus(void *a1)
{
  v1 = a1;
  v2 = [v1 isOnboardingRecordPresent];
  v3 = MEMORY[0x277CCBE70];
  if (!v2)
  {
    v3 = MEMORY[0x277CCBE48];
  }

  v4 = [v1 objectForKeyedSubscript:*v3];

  v5 = [v4 areAllRequirementsSatisfied];
  return v5 ^ 1u;
}

uint64_t _HKHRIsUserInteractionEnabledForIrregularRhythmNotificationsBridgeSettingsWithFeatureStatus(void *a1)
{
  v1 = a1;
  v2 = [v1 isOnboardingRecordPresent];
  v3 = MEMORY[0x277CCBE68];
  if (!v2)
  {
    v3 = MEMORY[0x277CCBE40];
  }

  v4 = [v1 objectForKeyedSubscript:*v3];

  v5 = [v4 areAllRequirementsSatisfied];
  return v5;
}

uint64_t _HKHRAreIrregularRhythmNotificationsOnWithFeatureStatus(void *a1)
{
  v1 = a1;
  if ([v1 isOnboardingRecordPresent])
  {
    v2 = [v1 onboardingRecord];
    v3 = [v2 featureSettings];
    v4 = [v3 numberForKey:*MEMORY[0x277CCC120]];

    if (v4)
    {
      v5 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCBE68]];
      v6 = [v5 areAllRequirementsSatisfied];

      if (v6)
      {
        v7 = [v4 BOOLValue];
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        _HKHRAreIrregularRhythmNotificationsOnWithFeatureStatus_cold_1(v8);
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

id _HKHRIrregularRhythmNotificationsHeaderWithFeatureStatus(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCBFE8]];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = HKHeartRateLocalizedString(@"FEATURES_DISABLED_WRIST_DETECTION_MESSAGE");
  }

  return v4;
}

id _HKHRIrregularRhythmNotificationsBridgeFooterWithFeatureStatus(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  v3 = [v1 isOnboardingRecordPresent];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCBF30]];
  v5 = [v4 BOOLValue];

  v6 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCBFD0]];
  v7 = [v6 BOOLValue];

  v8 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCBF08]];
  v9 = [v8 BOOLValue];

  v10 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCBF00]];
  v11 = [v10 BOOLValue];

  v12 = v3 ^ 1;
  if ((v3 ^ 1) & 1) != 0 || (v7)
  {
    if ((v12 | v5))
    {
      if ((v12 | v9 & v11))
      {
        v14 = MEMORY[0x277CCBE68];
        if (!v3)
        {
          v14 = MEMORY[0x277CCBE40];
        }

        v15 = [v1 objectForKeyedSubscript:*v14];
        v16 = [v15 unsatisfiedRequirementIdentifiers];
        v17 = [v16 count];

        v18 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCBF60]];
        v19 = [v18 BOOLValue];

        if (v17 != 1 || (v19 & 1) != 0)
        {
          v13 = +[HKHRIrregularRhythmNotificationsBridgeFooter standardFooter];
        }

        else
        {
          v13 = +[HKHRIrregularRhythmNotificationsBridgeFooter footerWhenAFibHistoryIsEnabled];
        }
      }

      else
      {
        v13 = +[HKHRIrregularRhythmNotificationsBridgeFooter footerWhenUnavailableInOnboardedCountry];
      }
    }

    else
    {
      v13 = +[HKHRIrregularRhythmNotificationsBridgeFooter footerWhenRemotelyDisabled];
    }
  }

  else
  {
    v13 = +[HKHRIrregularRhythmNotificationsBridgeFooter footerWhenSeedHasExpired];
  }

  v20 = v13;

  return v20;
}

HKHRIrregularRhythmNotificationsBridgeSettings *HKHRIrregularRhythmNotificationsBridgeSettingsWithFeatureStatus(void *a1)
{
  v1 = a1;
  v2 = _HKHRIsIrregularRhythmNotificationsRowHiddenInBridgeWithFeatureStatus(v1);
  v3 = _HKHRAreIrregularRhythmNotificationsOnWithFeatureStatus(v1);
  v4 = [v1 isOnboardingRecordPresent];
  v5 = _HKHRIsUserInteractionEnabledForIrregularRhythmNotificationsBridgeSettingsWithFeatureStatus(v1);
  v6 = _HKHRIrregularRhythmNotificationsHeaderWithFeatureStatus(v1);
  v7 = _HKHRIrregularRhythmNotificationsBridgeFooterWithFeatureStatus(v1);

  v8 = [[HKHRIrregularRhythmNotificationsBridgeSettings alloc] initWithSettingHidden:v2 notificationsOn:v3 shouldLinkToOnboarding:v4 ^ 1u userInteractionEnabled:v5 headerText:v6 footer:v7];

  return v8;
}

id HKHRCardioFitnessAllowedCountrySet()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = [GSSystemRootDirectory() stringByAppendingString:@"/System/Library/Health/AvailableRegions"];
  v2 = [v0 fileURLWithPath:v1 isDirectory:1];

  v3 = [v2 URLByAppendingPathComponent:*MEMORY[0x277CCC000]];

  v4 = [v3 URLByAppendingPathExtension:@"plist"];

  v5 = [MEMORY[0x277CCD260] countrySetWithPlistURL:v4 error:0];

  return v5;
}

uint64_t HKHRCardioFitnessShouldSkipHardwareCheck()
{
  result = [MEMORY[0x277CCDD30] isAppleInternalInstall];
  if (result)
  {
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2 = [v1 BOOLForKey:@"HKHRCardioFitnessShouldSkipHardwareCheck"];

    return v2;
  }

  return result;
}

uint64_t HKHRCardioFitnessShouldSkipLocationCheck()
{
  result = [MEMORY[0x277CCDD30] isAppleInternalInstall];
  if (result)
  {
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2 = [v1 BOOLForKey:@"HKHRCardioFitnessShouldSkipLocationCheck"];

    return v2;
  }

  return result;
}

void sub_22896492C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228965030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t HKAnalyticsEvent.extractBiologicalSexProperty(healthDataSource:logger:)(void *a1, uint64_t a2, uint64_t a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v30[0] = 0;
  v4 = [a1 biologicalSexWithError_];
  if (v4)
  {
    v5 = v4;
    v6 = v30[0];
    v7 = HKAnalyticsPropertyValueForBiologicalSex();
    v8 = sub_22896CC94();
  }

  else
  {
    v9 = v30[0];
    v10 = sub_22896CC04();

    swift_willThrow();
    v11 = v10;
    v12 = sub_22896CC44();
    v13 = sub_22896CCE4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30[0] = v15;
      *v14 = 136446466;
      v29[4] = a3;
      swift_getMetatypeMetadata();
      v16 = sub_22896CCA4();
      v18 = sub_228966D10(v16, v17, v30);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v20 = *(*(v29[1] - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue, v29[0]);
      (*(v22 + 16))(v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      v23 = sub_22896CCA4();
      v25 = sub_228966D10(v23, v24, v30);

      *(v14 + 14) = v25;
      _os_log_impl(&dword_228942000, v12, v13, "[%{public}s] Error when retrieving biological sex: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC52A0](v15, -1, -1);
      MEMORY[0x22AAC52A0](v14, -1, -1);
    }

    v26 = *MEMORY[0x277CCB800];
    v8 = sub_22896CC94();
  }

  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

id HKAnalyticsEvent.extractAgeProperty(healthDataSource:environmentDataSource:logger:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v7 = sub_22896CC34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 currentDate];
  sub_22896CC24();

  v14 = sub_22896CC14();
  (*(v8 + 8))(v12, v7);
  v39[0] = 0;
  v15 = [a1 ageWithCurrentDate:v14 error:v39];

  if (v15)
  {
    v16 = v39[0];
    v17 = *MEMORY[0x277D85DE8];
    return v15;
  }

  else
  {
    v19 = v39[0];
    v20 = sub_22896CC04();

    swift_willThrow();
    v21 = v20;
    v22 = sub_22896CC44();
    v23 = sub_22896CCE4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v39[0] = v25;
      *v24 = 136446466;
      v38[4] = a4;
      swift_getMetatypeMetadata();
      v26 = sub_22896CCA4();
      v28 = sub_228966D10(v26, v27, v39);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v30 = *(*(v38[1] - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue, v38[0]);
      (*(v32 + 16))(v38 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
      v33 = sub_22896CCA4();
      v35 = sub_228966D10(v33, v34, v39);

      *(v24 + 14) = v35;
      _os_log_impl(&dword_228942000, v22, v23, "[%{public}s] Error when retrieving  age: %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC52A0](v25, -1, -1);
      MEMORY[0x22AAC52A0](v24, -1, -1);
    }

    v36 = *MEMORY[0x277CCB7A0];
    v37 = *MEMORY[0x277D85DE8];
    return v36;
  }
}

uint64_t sub_228966D10(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_228966DDC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2289672EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_228966DDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_228966EE8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22896CD34();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_228966EE8(uint64_t a1, unint64_t a2)
{
  v4 = sub_228966F34(a1, a2);
  sub_228967064(&unk_283BD8158);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_228966F34(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_228967150(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22896CD34();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22896CCD4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_228967150(v10, 0);
        result = sub_22896CD14();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_228967064(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2289671B8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_228967150(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_228967348();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2289671B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_228967348();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2289672EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_228967348()
{
  if (!qword_27D85E188)
  {
    v0 = sub_22896CDA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D85E188);
    }
  }
}

uint64_t sub_22896739C()
{
  v0 = sub_22896CC64();
  __swift_allocate_value_buffer(v0, qword_27D85E3A8);
  __swift_project_value_buffer(v0, qword_27D85E3A8);
  return sub_22896CC54();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

HeartHealth::HypertensionNotificationInteractionEventAction_optional __swiftcall HypertensionNotificationInteractionEventAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22896CD94();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HypertensionNotificationInteractionEventAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7070416E65706FLL;
  v3 = 0x726F4D6E7261656CLL;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7373696D736964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2289675B8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x7373696D736964;
    }

    else
    {
      v2 = 0x7070416E65706FLL;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0x726F4D6E7261656CLL;
    v3 = 0xE900000000000065;
  }

  else if (a1 == 3)
  {
    v2 = 0xD000000000000012;
    v3 = 0x8000000228973CD0;
  }

  else
  {
    v3 = 0xE700000000000000;
    v2 = 0x6E776F6E6B6E75;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v5 = 0x7373696D736964;
    }

    else
    {
      v5 = 0x7070416E65706FLL;
    }

    v4 = 0xE700000000000000;
    if (v2 != v5)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 2)
  {
    v4 = 0xE900000000000065;
    if (v2 != 0x726F4D6E7261656CLL)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 3)
  {
    v4 = 0x8000000228973CD0;
    if (v2 != 0xD000000000000012)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v4 = 0xE700000000000000;
    if (v2 != 0x6E776F6E6B6E75)
    {
LABEL_26:
      v6 = sub_22896CDB4();
      goto LABEL_27;
    }
  }

  if (v3 != v4)
  {
    goto LABEL_26;
  }

  v6 = 1;
LABEL_27:

  return v6 & 1;
}

uint64_t sub_228967764()
{
  v1 = *v0;
  sub_22896CDD4();
  sub_22896CCB4();

  return sub_22896CDE4();
}

uint64_t sub_228967850()
{
  *v0;
  *v0;
  *v0;
  sub_22896CCB4();
}

uint64_t sub_228967928()
{
  v1 = *v0;
  sub_22896CDD4();
  sub_22896CCB4();

  return sub_22896CDE4();
}

void sub_228967A1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7070416E65706FLL;
  v5 = 0xE900000000000065;
  v6 = 0x726F4D6E7261656CLL;
  v7 = 0x8000000228973CD0;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7373696D736964;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t HypertensionNotificationInteractionEvent.__allocating_init(action:categoryIdentifier:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  HypertensionNotificationInteractionEvent.init(action:categoryIdentifier:)(a1, a2, a3);
  return v6;
}

uint64_t HypertensionNotificationInteractionEvent.init(action:categoryIdentifier:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = *a1;
  if (sub_22896CC94() == a2 && v6 == a3)
  {

LABEL_8:

    v9 = "possibleHypertension";
    goto LABEL_9;
  }

  v8 = sub_22896CDB4();

  if (v8)
  {
    goto LABEL_8;
  }

  if (sub_22896CC94() == a2 && v11 == a3)
  {
  }

  else
  {
    v13 = sub_22896CDB4();

    if ((v13 & 1) == 0)
    {
      *(v3 + 24) = 0;
      *(v3 + 32) = 0;
      return v3;
    }
  }

  v9 = "rescindedOrReenabled";
LABEL_9:
  *(v3 + 24) = 0xD000000000000014;
  *(v3 + 32) = (v9 - 32) | 0x8000000000000000;
  return v3;
}

uint64_t HypertensionNotificationInteractionEvent.makeIHAGatedEventPayload(with:)(void *a1)
{
  v3 = *v1;
  v4 = [a1 healthDataSource];
  if (v4)
  {
    v5 = v4;
    v77 = [a1 environmentDataSource];
    v6 = MEMORY[0x277D84F98];
    v84 = MEMORY[0x277D84F98];
    v7 = *MEMORY[0x277CCB7C8];
    v8 = sub_22896CC94();
    v10 = v9;
    v82 = MEMORY[0x277D839B0];
    v83 = MEMORY[0x277D839C8];
    LOBYTE(v81) = 1;
    sub_22896A338(&v81, v79);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v6;
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    sub_22896919C(*v12, v8, v10, isUniquelyReferenced_nonNull_native, &v78);

    __swift_destroy_boxed_opaque_existential_0(v79);
    v13 = v78;
    v14 = *(v1 + 16);
    if (v14 <= 1)
    {
      v15 = 0xE700000000000000;
      if (*(v1 + 16))
      {
        v16 = 0x7373696D736964;
      }

      else
      {
        v16 = 0x7070416E65706FLL;
      }
    }

    else if (v14 == 2)
    {
      v15 = 0xE900000000000065;
      v16 = 0x726F4D6E7261656CLL;
    }

    else if (v14 == 3)
    {
      v15 = 0x8000000228973CD0;
      v16 = 0xD000000000000012;
    }

    else
    {
      v15 = 0xE700000000000000;
      v16 = 0x6E776F6E6B6E75;
    }

    v17 = MEMORY[0x277D837D0];
    v18 = MEMORY[0x277D837F8];
    v82 = MEMORY[0x277D837D0];
    v83 = MEMORY[0x277D837F8];
    *&v81 = v16;
    *(&v81 + 1) = v15;
    sub_22896A338(&v81, v79);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v13;
    v20 = v80;
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    v22 = *(*(v20 - 8) + 64);
    MEMORY[0x28223BE20](v21, v21);
    v24 = (&v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    sub_228969300(*v24, v24[1], 0x6E6F69746361, 0xE600000000000000, v19, &v78);
    __swift_destroy_boxed_opaque_existential_0(v79);
    v26 = v78;
    v84 = v78;
    v27 = v1[4];
    if (v27)
    {
      v28 = v1[3];
      v82 = v17;
      v83 = v18;
      *&v81 = v28;
      *(&v81 + 1) = v27;
      sub_22896A338(&v81, v79);

      v29 = swift_isUniquelyReferenced_nonNull_native();
      v78 = v26;
      v30 = v80;
      v31 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
      v32 = *(*(v30 - 8) + 64);
      MEMORY[0x28223BE20](v31, v31);
      v34 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v35 + 16))(v34);
      sub_2289696E8(v34, 1701869940, 0xE400000000000000, v29, &v78, v17, v18);
      __swift_destroy_boxed_opaque_existential_0(v79);
      v84 = v78;
    }

    else
    {
      sub_228968AE0(1701869940, 0xE400000000000000, &v81);
      sub_22896A3A0(&v81);
    }

    if (qword_27D85E180 != -1)
    {
      swift_once();
    }

    v36 = sub_22896CC64();
    __swift_project_value_buffer(v36, qword_27D85E3A8);
    v37 = sub_228969E98(v5, v77);
    v82 = sub_22896A4B8();
    v83 = sub_22896A504();
    *&v81 = v37;
    sub_22896A338(&v81, v79);
    v38 = v84;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v38;
    v40 = v80;
    v41 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    v42 = *(*(v40 - 8) + 64);
    MEMORY[0x28223BE20](v41, v41);
    v44 = (&v76 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v45 + 16))(v44);
    sub_2289694F0(*v44, 6645601, 0xE300000000000000, v39, &v78);
    __swift_destroy_boxed_opaque_existential_0(v79);
    v46 = v78;
    v47 = sub_228969BC4(v5);
    v82 = v17;
    v83 = v18;
    *&v81 = v47;
    *(&v81 + 1) = v48;
    sub_22896A338(&v81, v79);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v46;
    v50 = v80;
    v51 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    v52 = *(*(v50 - 8) + 64);
    MEMORY[0x28223BE20](v51, v51);
    v54 = (&v76 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))(v54);
    sub_228969300(*v54, v54[1], 0x6369676F6C6F6962, 0xED00007865536C61, v49, &v78);
    __swift_destroy_boxed_opaque_existential_0(v79);
    v56 = v78;
    v84 = v78;
    v57 = *MEMORY[0x277CCB7B8];
    v58 = sub_22896CC94();
    v60 = v59;
    v61 = [a1 environmentDataSource];
    v62 = [v61 activePairedDeviceProductType];

    if (v62)
    {
      v63 = sub_22896CC94();
      v65 = v64;

      v82 = v17;
      v83 = v18;
      *&v81 = v63;
      *(&v81 + 1) = v65;
      sub_22896A338(&v81, v79);
      LOBYTE(v63) = swift_isUniquelyReferenced_nonNull_native();
      v78 = v56;
      v66 = v80;
      v67 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
      v68 = *(*(v66 - 8) + 64);
      MEMORY[0x28223BE20](v67, v67);
      v70 = &v76 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v71 + 16))(v70);
      sub_2289696E8(v70, v58, v60, v63, &v78, v17, v18);

      __swift_destroy_boxed_opaque_existential_0(v79);
      v72 = v78;
    }

    else
    {
      sub_228968AE0(v58, v60, &v81);

      sub_22896A3A0(&v81);
      v72 = v84;
    }

    v73 = sub_228968630(v72);

    swift_unknownObjectRelease();

    return v73;
  }

  else
  {
    sub_22896CD24();
    MEMORY[0x22AAC4990](91, 0xE100000000000000);
    v75 = sub_22896CDF4();
    MEMORY[0x22AAC4990](v75);

    MEMORY[0x22AAC4990](0xD00000000000004DLL, 0x8000000228973DD0);
    result = sub_22896CD44();
    __break(1u);
  }

  return result;
}

unint64_t sub_228968630(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22896A8A8();
    v2 = sub_22896CD74();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_22896A844(*(a1 + 56) + 40 * v15, v32);
        *&v31 = v17;
        *(&v31 + 1) = v18;
        v28[2] = v31;
        v29[0] = v32[0];
        v29[1] = v32[1];
        v30 = v33;
        v19 = v31;
        sub_22896A338(v29, v24);
        sub_22896A454();

        swift_dynamicCast();
        sub_22896A90C(&v25, v27);
        sub_22896A90C(v27, v28);
        sub_22896A90C(v28, &v26);
        result = sub_2289689B0(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_22896A90C(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_22896A90C(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t HypertensionNotificationInteractionEvent.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t HypertensionNotificationInteractionEvent.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_2289689B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22896CDD4();
  sub_22896CCB4();
  v6 = sub_22896CDE4();

  return sub_228968A28(a1, a2, v6);
}

unint64_t sub_228968A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22896CDB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

double sub_228968AE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2289689B0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_228969000();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_22896A338((*(v12 + 56) + 40 * v9), a3);
    sub_228968E44(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_228968B8C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22896A7DC();
  v36 = a2;
  result = sub_22896CD64();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_22896A338(v25, v37);
      }

      else
      {
        sub_22896A844(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22896CDD4();
      sub_22896CCB4();
      result = sub_22896CDE4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_22896A338(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_228968E44(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22896CD04() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_22896CDD4();

      sub_22896CCB4();
      v15 = sub_22896CDE4();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_228969000()
{
  v1 = v0;
  sub_22896A7DC();
  v2 = *v0;
  v3 = sub_22896CD54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_22896A844(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22896A338(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_22896919C(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v24) = a1;
  v25 = MEMORY[0x277D839B0];
  v26 = MEMORY[0x277D839C8];
  v9 = *a5;
  v11 = sub_2289689B0(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_22896A338(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_228969000();
    goto LABEL_7;
  }

  sub_228968B8C(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_2289689B0(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_22896CDC4();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D839B0]);
  sub_228969A5C(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

uint64_t sub_228969300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277D837D0];
  v32 = MEMORY[0x277D837D0];
  v33 = MEMORY[0x277D837F8];
  *&v31 = a1;
  *(&v31 + 1) = a2;
  v11 = *a6;
  v13 = sub_2289689B0(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_22896A338(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_228969000();
    goto LABEL_7;
  }

  sub_228968B8C(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_2289689B0(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_22896CDC4();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25, v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_2289699CC(v13, a3, a4, *v28, v28[1], v19);

  return __swift_destroy_boxed_opaque_existential_0(&v31);
}

uint64_t sub_2289694F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_22896A4B8();
  v32 = v10;
  v33 = sub_22896A504();
  *&v31 = a1;
  v11 = *a5;
  v13 = sub_2289689B0(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_22896A338(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_228969000();
    goto LABEL_7;
  }

  sub_228968B8C(v16, a4 & 1);
  v22 = *a5;
  v23 = sub_2289689B0(a2, a3);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_22896CDC4();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25, v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_22896991C(v13, a2, a3, *v28, v19);

  return __swift_destroy_boxed_opaque_existential_0(&v31);
}

uint64_t sub_2289696E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v15 = *a5;
  v17 = sub_2289689B0(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_0(v24);
      return sub_22896A338(&v36, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_228969000();
    goto LABEL_7;
  }

  sub_228968B8C(v20, a4 & 1);
  v26 = *a5;
  v27 = sub_2289689B0(a2, a3);
  if ((v21 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_22896CDC4();
    __break(1u);
    return result;
  }

  v17 = v27;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = v37;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v37);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30, v30);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  sub_228969AEC(v17, a2, a3, v33, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0(&v36);
}

uint64_t sub_22896991C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = sub_22896A4B8();
  v17 = sub_22896A504();
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_22896A338(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_2289699CC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x277D837F8];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_22896A338(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_228969A5C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D839C8];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22896A338(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_228969AEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_22896A338(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_228969BC4(void *a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v27[0] = 0;
  v1 = [a1 biologicalSexWithError_];
  if (v1)
  {
    v2 = v1;
    v3 = v27[0];
    v4 = HKAnalyticsPropertyValueForBiologicalSex();
    v5 = sub_22896CC94();
  }

  else
  {
    v6 = v27[0];
    v7 = sub_22896CC04();

    swift_willThrow();
    v8 = v7;
    v9 = sub_22896CC44();
    v10 = sub_22896CCE4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27[0] = v12;
      *v11 = 136446466;
      v26[4] = type metadata accessor for HypertensionNotificationInteractionEvent();
      sub_22896A91C();
      v13 = sub_22896CCA4();
      v15 = sub_228966D10(v13, v14, v27);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v17 = *(*(v26[1] - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue, v26[0]);
      (*(v19 + 16))(v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      v20 = sub_22896CCA4();
      v22 = sub_228966D10(v20, v21, v27);

      *(v11 + 14) = v22;
      _os_log_impl(&dword_228942000, v9, v10, "[%{public}s] Error when retrieving biological sex: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC52A0](v12, -1, -1);
      MEMORY[0x22AAC52A0](v11, -1, -1);
    }

    v23 = *MEMORY[0x277CCB800];
    v5 = sub_22896CC94();
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

id sub_228969E98(void *a1, void *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22896CC34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 currentDate];
  sub_22896CC24();

  v11 = sub_22896CC14();
  (*(v5 + 8))(v9, v4);
  v36[0] = 0;
  v12 = [a1 ageWithCurrentDate:v11 error:v36];

  if (v12)
  {
    v13 = v36[0];
    v14 = *MEMORY[0x277D85DE8];
    return v12;
  }

  else
  {
    v16 = v36[0];
    v17 = sub_22896CC04();

    swift_willThrow();
    v18 = v17;
    v19 = sub_22896CC44();
    v20 = sub_22896CCE4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36[0] = v22;
      *v21 = 136446466;
      v35[4] = type metadata accessor for HypertensionNotificationInteractionEvent();
      sub_22896A91C();
      v23 = sub_22896CCA4();
      v25 = sub_228966D10(v23, v24, v36);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v27 = *(*(v35[1] - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue, v35[0]);
      (*(v29 + 16))(v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      v30 = sub_22896CCA4();
      v32 = sub_228966D10(v30, v31, v36);

      *(v21 + 14) = v32;
      _os_log_impl(&dword_228942000, v19, v20, "[%{public}s] Error when retrieving  age: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC52A0](v22, -1, -1);
      MEMORY[0x22AAC52A0](v21, -1, -1);
    }

    v33 = *MEMORY[0x277CCB7A0];
    v34 = *MEMORY[0x277D85DE8];
    return v33;
  }
}

unint64_t sub_22896A234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22896A8A8();
    v3 = sub_22896CD74();
    v4 = a1 + 32;

    while (1)
    {
      sub_22896A960(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2289689B0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22896A90C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22896A338(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_22896A3A0(uint64_t a1)
{
  sub_22896A3FC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22896A3FC()
{
  if (!qword_27D85E190)
  {
    sub_22896A454();
    v0 = sub_22896CCF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D85E190);
    }
  }
}

unint64_t sub_22896A454()
{
  result = qword_27D85E198;
  if (!qword_27D85E198)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D85E198);
  }

  return result;
}

unint64_t sub_22896A4B8()
{
  result = qword_27D85E1A0;
  if (!qword_27D85E1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D85E1A0);
  }

  return result;
}

unint64_t sub_22896A504()
{
  result = qword_27D85E1A8;
  if (!qword_27D85E1A8)
  {
    sub_22896A4B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85E1A8);
  }

  return result;
}

unint64_t sub_22896A560()
{
  result = qword_27D85E1B0;
  if (!qword_27D85E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85E1B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HypertensionNotificationInteractionEventAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HypertensionNotificationInteractionEventAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_22896A7DC()
{
  if (!qword_27D85E1B8)
  {
    sub_22896A454();
    v0 = sub_22896CD84();
    if (!v1)
    {
      atomic_store(v0, &qword_27D85E1B8);
    }
  }
}

uint64_t sub_22896A844(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_22896A8A8()
{
  if (!qword_27D85E1C0)
  {
    v0 = sub_22896CD84();
    if (!v1)
    {
      atomic_store(v0, &qword_27D85E1C0);
    }
  }
}

_OWORD *sub_22896A90C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_22896A91C()
{
  result = qword_27D85E1C8;
  if (!qword_27D85E1C8)
  {
    type metadata accessor for HypertensionNotificationInteractionEvent();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D85E1C8);
  }

  return result;
}

uint64_t sub_22896A960(uint64_t a1, uint64_t a2)
{
  sub_22896A9C4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22896A9C4()
{
  if (!qword_27D85E1D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85E1D0);
    }
  }
}

void __HKHRAFibBurdenDetermineIsFocusModeOn_block_invoke_305_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 eventBody];
  v5 = 138543362;
  v6 = v3;
  _os_log_debug_impl(&dword_228942000, a2, OS_LOG_TYPE_DEBUG, "[HKHRAFibBurdenDetermineIsFocusModeOn] Received event: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __HKHRAFibBurdenDetermineIsFocusModeOn_block_invoke_305_cold_2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(a1, "error")}];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_228942000, a2, OS_LOG_TYPE_ERROR, "[HKHRAFibBurdenDetermineIsFocusModeOn] Received nil user focus computed mode with reason: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void _HKHRAreIrregularRhythmNotificationsOnWithFeatureStatus_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136446210;
  v3 = "BOOL _HKHRAreIrregularRhythmNotificationsOnWithFeatureStatus(HKFeatureStatus * _Nonnull __strong)";
  _os_log_error_impl(&dword_228942000, log, OS_LOG_TYPE_ERROR, "[%{public}s]: Prompted for IRN's 'enabled' state, but setting is missing or invalid; reporting 'off'", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}