@interface HDMCDailyAnalytics
+ (BOOL)shouldSubmit;
+ (id)_countDeviationSamplesInPastYearOfType:(int64_t)a3 profile:(id)a4 calendar:(id)a5 error:(id *)a6;
+ (id)_daysWithWristTemperatureSamplesInDayIndexRange:(id)a3 profile:(id)a4 calendarCache:(id)a5 error:(id *)a6;
+ (id)_getDeviationDetectedCountForDeviationType:(int64_t)a3 gregorianCalendar:(id)a4 domain:(id)a5 error:(id *)a6;
+ (id)_hasConfirmedDeviationInPastMonthOfType:(int64_t)a3 profile:(id)a4 calendar:(id)a5 error:(id *)a6;
+ (id)_setCycleFactorRelatedFieldsInMetric:(id)a3 analysis:(id)a4 appProtectedKeyValueDomain:(id)a5 error:(id *)a6;
+ (id)_setCycleStatisticsFieldsInMetric:(id)a3 analysis:(id)a4 keyValueDomain:(id)a5 fertileWindowNotificationKeyValueDomain:(id)a6 todayDayIndex:(int64_t)a7 todayAsDate:(id)a8 gregorianCalendar:(id)a9 error:(id *)a10;
+ (id)_setDetectedDeviationFieldsInMetric:(id)a3 gregorianCalendar:(id)a4 deviationDetectionAnalyticsKeyValueDomain:(id)a5 todayDayIndex:(int64_t)a6 error:(id *)a7;
+ (id)_setDeviationSampleFieldsInMetric:(id)a3 profile:(id)a4 userCalendar:(id)a5 error:(id *)a6;
+ (id)_setDiagnosticOnboardingFieldsInMetric:(id)a3 keyValueDomain:(id)a4 heartRateInputFeatureStatus:(id)a5 deviationDetectionFeatureStatus:(id)a6 wristTemperatureInputFeatureStatus:(id)a7 gregorianCalendar:(id)a8 error:(id *)a9;
+ (id)_setFertileWindowFieldsInMetric:(id)a3 analysis:(id)a4 profile:(id)a5 todayDayIndex:(int64_t)a6 error:(id *)a7;
+ (id)_setPregnancyPropertiesInMetric:(id)a3 manager:(id)a4 todayAsDate:(id)a5 gregorianCalendar:(id)a6 error:(id *)a7;
- (BOOL)_collectDiagnosticFieldsForMetric:(id)a3 settingsManager:(id)a4 heartRateInputFeatureStatus:(id)a5 deviationDetectionFeatureStatus:(id)a6 wristTemperatureInputFeatureStatus:(id)a7 gregorianCalendar:(id)a8 error:(id *)a9;
- (BOOL)_collectSensitiveFieldsForMetric:(id)a3 settingsManager:(id)a4 menstrualCyclesSettings:(id)a5 heartRateInputFeatureStatus:(id)a6 deviationDetectionSettings:(id)a7 wristTemperatureInputFeatureStatus:(id)a8 gregorianCalendar:(id)a9 error:(id *)a10;
- (BOOL)submitMetricWithError:(id *)a3;
- (HDMCDailyAnalytics)initWithProfile:(id)a3 analysis:(id)a4 heartRateFeatureAvailabilityManager:(id)a5 deviationDetectionFeatureAvailabilityManager:(id)a6 wristTemperatureInputFeatureAvailabilityManager:(id)a7 pregnancyManager:(id)a8;
- (id)_eligibleCyclesStartPastDayIndex:(int64_t)a3;
- (id)_predicateForFirstPartySleepDataFromPast48HoursWithCalendar:(id)a3;
- (id)_predicateForSleepDataFromPast45DaysWithCalendar:(id)a3;
- (id)_predicateForSleepDataFromPast48HoursWithCalendar:(id)a3;
- (int64_t)_daysWithSleepSamples:(id)a3 calendar:(id)a4;
@end

@implementation HDMCDailyAnalytics

+ (id)_setDiagnosticOnboardingFieldsInMetric:(id)a3 keyValueDomain:(id)a4 heartRateInputFeatureStatus:(id)a5 deviationDetectionFeatureStatus:(id)a6 wristTemperatureInputFeatureStatus:(id)a7 gregorianCalendar:(id)a8 error:(id *)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v50 = a7;
  v51 = a8;
  v53 = 0;
  v18 = [v15 hdmc_legacyOnboardingVersionCompletedWithError:&v53];
  v19 = v53;
  v20 = v19;
  if (v18 || !v19)
  {
    v49 = v16;
    v24 = [MEMORY[0x277CCABB0] numberWithInt:v18 != 0];
    [v14 setOnboardingCompleted:v24];

    [v14 setOnboardedVersion:v18];
    v52 = v20;
    v25 = [v15 hdmc_legacyOnboardingFirstCompletedDateWithError:&v52];
    v26 = v52;

    if (v25 || !v26)
    {
      if (v25)
      {
        v30 = MEMORY[0x277CCABB0];
        v31 = [MEMORY[0x277CBEAA8] date];
        v32 = [v30 _weeksBetweenStartDate:v25 endDate:v31 calendar:v51];
        [v14 setWeeksSinceOnboarded:v32];
      }

      v33 = [MEMORY[0x277D2BCF8] sharedInstance];
      v34 = [v33 getActivePairedDevice];

      if (v34)
      {
        v35 = MEMORY[0x277CCABB0];
        v36 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"02979F49-FAFA-49CC-8478-C2562BC81FB6"];
        v37 = [v35 numberWithBool:{objc_msgSend(v34, "supportsCapability:", v36)}];
        [v14 setHasCompatiblePairedAppleWatch:v37];

        v38 = MEMORY[0x277CCABB0];
        v39 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"CBC78224-8F5E-4D43-8666-69ADBE2A6277"];
        v40 = [v38 numberWithBool:{objc_msgSend(v34, "supportsCapability:", v39)}];
        [v14 setHasWristTemperatureCompatiblePairedWatch:v40];

        v41 = [MEMORY[0x277CCABB0] numberWithBool:HKMCIsAlgorithmsVersionSameOnPairedDevice()];
        [v14 setHasSameAlgorithmVersionOnPairedWatch:v41];
      }

      v42 = [v49 isOnboardingRecordPresent];
      v43 = [MEMORY[0x277CCABB0] numberWithBool:v42];
      [v14 setWasHeartRateInputDelivered:v43];

      v44 = [v17 isOnboardingRecordPresent];
      v45 = [MEMORY[0x277CCABB0] numberWithBool:v44];
      [v14 setWasDeviationDetectionDelivered:v45];

      v28 = v50;
      v46 = [v50 isOnboardingRecordPresent];
      v47 = [MEMORY[0x277CCABB0] numberWithBool:v46];
      [v14 setWasWristTemperatureInputDelivered:v47];

      v23 = v14;
    }

    else
    {
      _HKInitializeLogging();
      v27 = *MEMORY[0x277CCC2E8];
      v28 = v50;
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCDailyAnalytics(Onboarding) _setDiagnosticOnboardingFieldsInMetric:v27 keyValueDomain:? heartRateInputFeatureStatus:? deviationDetectionFeatureStatus:? wristTemperatureInputFeatureStatus:? gregorianCalendar:? error:?];
      }

      if (a9)
      {
        v29 = v26;
        v23 = 0;
        *a9 = v26;
      }

      else
      {
        _HKLogDroppedError();
        v23 = 0;
      }
    }

    v16 = v49;
  }

  else
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [HDMCDailyAnalytics(Onboarding) _setDiagnosticOnboardingFieldsInMetric:v21 keyValueDomain:? heartRateInputFeatureStatus:? deviationDetectionFeatureStatus:? wristTemperatureInputFeatureStatus:? gregorianCalendar:? error:?];
    }

    if (a9)
    {
      v22 = v20;
      v23 = 0;
      *a9 = v20;
    }

    else
    {
      _HKLogDroppedError();
      v23 = 0;
    }

    v26 = v20;
    v28 = v50;
  }

  return v23;
}

+ (id)_setDeviationSampleFieldsInMetric:(id)a3 profile:(id)a4 userCalendar:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v60 = 0;
  v12 = [HDMCDailyAnalytics _countDeviationSamplesInPastYearOfType:1 profile:v10 calendar:v11 error:&v60];
  v13 = v60;
  if (v13)
  {
    v14 = v13;
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      +[HDMCDailyAnalytics(Deviation) _setDeviationSampleFieldsInMetric:profile:userCalendar:error:];
    }

    if (a6)
    {
      v15 = v14;
      v16 = 0;
      *a6 = v14;
    }

    else
    {
      _HKLogDroppedError();
      v16 = 0;
    }
  }

  else
  {
    v56 = [v12 objectForKeyedSubscript:@"countPastYear"];
    v17 = [v12 objectForKeyedSubscript:@"hasConfirmedInThePastMonth"];
    v59 = 0;
    v18 = [HDMCDailyAnalytics _countDeviationSamplesInPastYearOfType:2 profile:v10 calendar:v11 error:&v59];
    v19 = v59;
    if (v19)
    {
      v14 = v19;
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        +[HDMCDailyAnalytics(Deviation) _setDeviationSampleFieldsInMetric:profile:userCalendar:error:];
      }

      if (a6)
      {
        v20 = v14;
        v16 = 0;
        *a6 = v14;
      }

      else
      {
        _HKLogDroppedError();
        v16 = 0;
      }
    }

    else
    {
      v53 = v17;
      v54 = [v18 objectForKeyedSubscript:@"countPastYear"];
      v55 = [v18 objectForKeyedSubscript:@"hasConfirmedInThePastMonth"];
      v58 = 0;
      v21 = [HDMCDailyAnalytics _countDeviationSamplesInPastYearOfType:3 profile:v10 calendar:v11 error:&v58];
      v22 = v58;
      if (v22)
      {
        v14 = v22;
        _HKInitializeLogging();
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
        {
          +[HDMCDailyAnalytics(Deviation) _setDeviationSampleFieldsInMetric:profile:userCalendar:error:];
        }

        if (a6)
        {
          v23 = v14;
          v16 = 0;
          *a6 = v14;
        }

        else
        {
          _HKLogDroppedError();
          v16 = 0;
        }
      }

      else
      {
        v52 = [v21 objectForKeyedSubscript:@"countPastYear"];
        v51 = [v21 objectForKeyedSubscript:@"hasConfirmedInThePastMonth"];
        v57 = 0;
        v24 = [HDMCDailyAnalytics _countDeviationSamplesInPastYearOfType:0 profile:v10 calendar:v11 error:&v57];
        v14 = v57;
        v50 = v24;
        if (v14)
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
          {
            +[HDMCDailyAnalytics(Deviation) _setDeviationSampleFieldsInMetric:profile:userCalendar:error:];
          }

          if (a6)
          {
            v25 = v14;
            v16 = 0;
            *a6 = v14;
          }

          else
          {
            _HKLogDroppedError();
            v16 = 0;
          }

          v46 = v52;
          v45 = v50;
          v32 = v51;
        }

        else
        {
          v26 = [v24 objectForKeyedSubscript:@"countPastYear"];
          v49 = [v24 objectForKeyedSubscript:@"hasConfirmedInThePastMonth"];
          [v9 setCountConfirmedSpottingDeviationPastYear:v56];
          [v9 setCountConfirmedIrregularDeviationPastYear:v54];
          [v9 setCountConfirmedInfrequentDeviationPastYear:v52];
          v48 = v26;
          [v9 setCountConfirmedProlongedDeviationPastYear:v26];
          v27 = [v56 integerValue];
          v28 = [v54 integerValue] + v27;
          v29 = [v52 integerValue];
          v30 = [v26 integerValue];
          v31 = [MEMORY[0x277CCABB0] numberWithInteger:v28 + v29 + v30];
          [v9 setCountTotalConfirmedDeviationsPastYear:v31];

          v32 = v51;
          v33 = [v53 integerValue];
          v34 = [v55 integerValue] + v33;
          v35 = [v49 integerValue];
          v36 = [v51 integerValue];
          v37 = [MEMORY[0x277CCABB0] numberWithInteger:v34 + v35 + v36];
          [v9 setCountTotalConfirmedDeviationsPastMonth:v37];

          v38 = [v53 integerValue];
          v39 = MEMORY[0x277CBEC28];
          v40 = MEMORY[0x277CBEC38];
          if (v38 == 1)
          {
            v41 = MEMORY[0x277CBEC38];
          }

          else
          {
            v41 = MEMORY[0x277CBEC28];
          }

          [v9 setHasConfirmedSpottingDeviationPastMonth:v41];
          if ([v55 integerValue] == 1)
          {
            v42 = v40;
          }

          else
          {
            v42 = v39;
          }

          [v9 setHasConfirmedIrregularDeviationPastMonth:v42];
          if ([v51 integerValue] == 1)
          {
            v43 = v40;
          }

          else
          {
            v43 = v39;
          }

          [v9 setHasConfirmedInfrequentDeviationPastMonth:v43];
          if ([v49 integerValue] == 1)
          {
            v44 = v40;
          }

          else
          {
            v44 = v39;
          }

          [v9 setHasConfirmedProlongedDeviationPastMonth:v44];
          v16 = v9;

          v45 = v50;
          v46 = v52;
        }
      }

      v17 = v53;
    }
  }

  return v16;
}

+ (id)_countDeviationSamplesInPastYearOfType:(int64_t)a3 profile:(id)a4 calendar:(id)a5 error:(id *)a6
{
  v33[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = HKCategoryTypeFromDeviationType();
  v13 = [MEMORY[0x277CBEAA8] date];
  v33[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v15 = [v11 hd_predicateForSamplesWithTypes:v14 endingAfterDate:v13 minusDays:365];

  v28 = 0;
  v16 = [MEMORY[0x277D10848] countOfSamplesWithType:v12 profile:v10 matchingPredicate:v15 withError:&v28];
  v17 = v28;
  if (!v17)
  {
    if (v16 < 1)
    {
      v29[0] = @"countPastYear";
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
      v29[1] = @"hasConfirmedInThePastMonth";
      v30[0] = v18;
      v30[1] = &unk_283CC3120;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      goto LABEL_15;
    }

    v27 = 0;
    v21 = [a1 _hasConfirmedDeviationInPastMonthOfType:a3 profile:v10 calendar:v11 error:&v27];
    v22 = v27;
    v18 = v22;
    if (v21)
    {
      v31[0] = @"countPastYear";
      v23 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
      v31[1] = @"hasConfirmedInThePastMonth";
      v32[0] = v23;
      v32[1] = v21;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
LABEL_14:

      goto LABEL_15;
    }

    v23 = v22;
    if (v23)
    {
      if (a6)
      {
        v24 = v23;
        v20 = 0;
        *a6 = v23;
        goto LABEL_14;
      }

      _HKLogDroppedError();
    }

    v20 = 0;
    goto LABEL_14;
  }

  v18 = v17;
  if (a6)
  {
    v19 = v17;
    v20 = 0;
    *a6 = v18;
  }

  else
  {
    _HKLogDroppedError();
    v20 = 0;
  }

LABEL_15:

  v25 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)_hasConfirmedDeviationInPastMonthOfType:(int64_t)a3 profile:(id)a4 calendar:(id)a5 error:(id *)a6
{
  v8 = a5;
  v9 = a4;
  v10 = HKCategoryTypeFromDeviationType();
  v24 = 0;
  v11 = [MEMORY[0x277D10848] mostRecentSampleWithType:v10 profile:v9 encodingOptions:0 predicate:0 anchor:0 error:&v24];

  v12 = v24;
  v13 = v12;
  if (v11)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12 == 0;
  }

  if (v14)
  {
    v15 = &unk_283CC3120;
    if (v11)
    {
      v16 = [v11 _creationDate];
      v17 = [MEMORY[0x277CBEAA8] date];
      v18 = [v8 hk_startOfDateByAddingDays:-30 toDate:v17];
      v19 = [v16 hk_isAfterOrEqualToDate:v18];
      v20 = &unk_283CC3138;
      if (!v19)
      {
        v20 = &unk_283CC3120;
      }

      v15 = v20;
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      +[HDMCDailyAnalytics(Deviation) _setDeviationSampleFieldsInMetric:profile:userCalendar:error:];
    }

    if (a6)
    {
      v22 = v13;
      v15 = 0;
      *a6 = v13;
    }

    else
    {
      _HKLogDroppedError();
      v15 = 0;
    }
  }

  return v15;
}

+ (id)_setDetectedDeviationFieldsInMetric:(id)a3 gregorianCalendar:(id)a4 deviationDetectionAnalyticsKeyValueDomain:(id)a5 todayDayIndex:(int64_t)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v59 = 0;
  v14 = [HDMCDailyAnalytics _getDeviationDetectedCountForDeviationType:1 gregorianCalendar:v12 domain:v13 error:&v59];
  v15 = v59;
  if (v15)
  {
    v16 = v15;
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      +[HDMCDailyAnalytics(Deviation) _setDetectedDeviationFieldsInMetric:gregorianCalendar:deviationDetectionAnalyticsKeyValueDomain:todayDayIndex:error:];
    }

    if (a7)
    {
      v17 = v16;
      v18 = 0;
      *a7 = v16;
    }

    else
    {
      _HKLogDroppedError();
      v18 = 0;
    }
  }

  else
  {
    v54 = [v14 objectForKeyedSubscript:@"countPastYear"];
    [v11 setCountDetectedSpottingDeviationsPastYear:?];
    v58 = 0;
    v19 = [HDMCDailyAnalytics _getDeviationDetectedCountForDeviationType:2 gregorianCalendar:v12 domain:v13 error:&v58];
    v20 = v58;
    if (v20)
    {
      v16 = v20;
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        +[HDMCDailyAnalytics(Deviation) _setDetectedDeviationFieldsInMetric:gregorianCalendar:deviationDetectionAnalyticsKeyValueDomain:todayDayIndex:error:];
      }

      if (a7)
      {
        v21 = v16;
        v18 = 0;
        *a7 = v16;
      }

      else
      {
        _HKLogDroppedError();
        v18 = 0;
      }
    }

    else
    {
      v53 = v19;
      v22 = [v19 objectForKeyedSubscript:@"countPastYear"];
      [v11 setCountDetectedIrregularDeviationsInPastYear:v22];
      v57 = 0;
      v23 = [HDMCDailyAnalytics _getDeviationDetectedCountForDeviationType:3 gregorianCalendar:v12 domain:v13 error:&v57];
      v24 = v57;
      v52 = v22;
      if (v24)
      {
        v16 = v24;
        v25 = v23;
        _HKInitializeLogging();
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
        {
          +[HDMCDailyAnalytics(Deviation) _setDetectedDeviationFieldsInMetric:gregorianCalendar:deviationDetectionAnalyticsKeyValueDomain:todayDayIndex:error:];
        }

        v19 = v53;
        if (a7)
        {
          v26 = v16;
          v18 = 0;
          *a7 = v16;
        }

        else
        {
          _HKLogDroppedError();
          v18 = 0;
        }
      }

      else
      {
        v27 = [v23 objectForKeyedSubscript:@"countPastYear"];
        [v11 setCountDetectedInfrequentDeviationsPastYear:?];
        v56 = 0;
        v28 = [HDMCDailyAnalytics _getDeviationDetectedCountForDeviationType:0 gregorianCalendar:v12 domain:v13 error:&v56];
        v29 = v56;
        v50 = v27;
        v51 = v28;
        if (v29)
        {
          v16 = v29;
          v25 = v23;
          _HKInitializeLogging();
          if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
          {
            +[HDMCDailyAnalytics(Deviation) _setDetectedDeviationFieldsInMetric:gregorianCalendar:deviationDetectionAnalyticsKeyValueDomain:todayDayIndex:error:];
          }

          v19 = v53;
          if (a7)
          {
            v30 = v16;
            v18 = 0;
            *a7 = v16;
          }

          else
          {
            _HKLogDroppedError();
            v18 = 0;
          }
        }

        else
        {
          v31 = [v28 objectForKeyedSubscript:@"countPastYear"];
          [v11 setCountDetectedProlongedDeviationsPastYear:v31];
          v48 = MEMORY[0x277CCABB0];
          v46 = [v54 integerValue];
          v44 = [v52 integerValue] + v46;
          v47 = v31;
          v32 = [v48 numberWithInteger:{v44 + objc_msgSend(v27, "integerValue") + objc_msgSend(v31, "integerValue")}];
          [v11 setCountTotalDetectedDeviationsPastYear:v32];

          v33 = [v14 objectForKeyedSubscript:@"countPastMonth"];
          v49 = v23;
          v34 = [v23 objectForKeyedSubscript:@"countPastMonth"];
          v35 = [v53 objectForKeyedSubscript:@"countPastMonth"];
          v42 = [v51 objectForKeyedSubscript:@"countPastMonth"];
          v43 = v33;
          v45 = v34;
          v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v34, "integerValue") + objc_msgSend(v33, "integerValue") + objc_msgSend(v35, "integerValue") + objc_msgSend(v42, "integerValue")}];
          [v11 setCountTotalDetectedDeviationsPastMonth:v36];

          v37 = *MEMORY[0x277D11948];
          v55 = 0;
          v38 = [v13 numberForKey:v37 error:&v55];
          v16 = v55;
          if (v16)
          {
            _HKInitializeLogging();
            if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
            {
              +[HDMCDailyAnalytics(Deviation) _setDetectedDeviationFieldsInMetric:gregorianCalendar:deviationDetectionAnalyticsKeyValueDomain:todayDayIndex:error:];
            }

            v19 = v53;
            if (a7)
            {
              v39 = v16;
              v18 = 0;
              *a7 = v16;
            }

            else
            {
              _HKLogDroppedError();
              v18 = 0;
            }
          }

          else
          {
            if (v38)
            {
              v40 = [MEMORY[0x277CCABB0] numberWithInteger:{a6 - objc_msgSend(v38, "integerValue")}];
              [v11 setDaysSinceDeviationTilePosted:v40];
            }

            v18 = v11;
            v19 = v53;
          }

          v25 = v49;
        }
      }
    }
  }

  return v18;
}

+ (id)_getDeviationDetectedCountForDeviationType:(int64_t)a3 gregorianCalendar:(id)a4 domain:(id)a5 error:(id *)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = HKMCDeviationDetectionAnalyticsKeyFromDeviationType();
  v27 = 0;
  v11 = [v9 propertyListValueForKey:v10 error:&v27];

  v12 = v27;
  v13 = v12;
  if (v11 || !v12)
  {
    v17 = HKMCTodayIndex();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __107__HDMCDailyAnalytics_Deviation___getDeviationDetectedCountForDeviationType_gregorianCalendar_domain_error___block_invoke;
    v26[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
    v26[4] = v17 - 30;
    v18 = [v11 hk_filter:v26];
    v28[0] = @"countPastYear";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
    v28[1] = @"countPastMonth";
    v29[0] = v19;
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
    v29[1] = v20;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      v23 = v14;
      v24 = objc_opt_class();
      *buf = 138543874;
      v31 = v24;
      v32 = 2114;
      v33 = v10;
      v34 = 2114;
      v35 = v13;
      v25 = v24;
      _os_log_error_impl(&dword_2293D1000, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving %{public}@: %{public}@", buf, 0x20u);
    }

    if (a6)
    {
      v15 = v13;
      v16 = 0;
      *a6 = v13;
    }

    else
    {
      _HKLogDroppedError();
      v16 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_setCycleFactorRelatedFieldsInMetric:(id)a3 analysis:(id)a4 appProtectedKeyValueDomain:(id)a5 error:(id *)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = [a4 ongoingCycleFactors];
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    v15 = MEMORY[0x277CBEC38];
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [*(*(&v30 + 1) + 8 * v16) hkmc_cycleFactor];
        if ((v17 - 3) >= 7)
        {
          if (v17 == 2)
          {
            [v9 setOngoingPregnancy:v15];
          }

          else if (v17 == 1)
          {
            [v9 setOngoingLactation:v15];
          }
        }

        else
        {
          [v9 setOngoingContraception:v15];
        }

        ++v16;
      }

      while (v13 != v16);
      v18 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
      v13 = v18;
    }

    while (v18);
  }

  v19 = *MEMORY[0x277D11818];
  v29 = 0;
  v20 = [v10 numberForKey:v19 error:&v29];
  v21 = v29;
  v22 = v21;
  if (v20)
  {
    v23 = 1;
  }

  else
  {
    v23 = v21 == 0;
  }

  if (v23)
  {
    [v9 setIsEligibleForCycleFactorsReminder:v20];
    v24 = v9;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      +[HDMCDailyAnalytics(Deviation) _setCycleFactorRelatedFieldsInMetric:analysis:appProtectedKeyValueDomain:error:];
    }

    if (a6)
    {
      v26 = v22;
      v24 = 0;
      *a6 = v22;
    }

    else
    {
      _HKLogDroppedError();
      v24 = 0;
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (BOOL)shouldSubmit
{
  v2 = +[HDMCDailyMetric eventName];
  IsEventUsed = AnalyticsIsEventUsed();

  return IsEventUsed;
}

- (HDMCDailyAnalytics)initWithProfile:(id)a3 analysis:(id)a4 heartRateFeatureAvailabilityManager:(id)a5 deviationDetectionFeatureAvailabilityManager:(id)a6 wristTemperatureInputFeatureAvailabilityManager:(id)a7 pregnancyManager:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v40.receiver = self;
  v40.super_class = HDMCDailyAnalytics;
  v21 = [(HDMCDailyAnalytics *)&v40 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_profile, a3);
    objc_storeStrong(&v22->_analysis, a4);
    v23 = [MEMORY[0x277D10718] hdmc_syncedMenstrualCyclesDefaultsDomainWithProfile:v22->_profile];
    keyValueDomain = v22->_keyValueDomain;
    v22->_keyValueDomain = v23;

    v25 = [MEMORY[0x277D10718] hdmc_syncedUnprotectedDomainWithProfile:v22->_profile];
    fertileWindowNotificationKeyValueDomain = v22->_fertileWindowNotificationKeyValueDomain;
    v22->_fertileWindowNotificationKeyValueDomain = v25;

    v27 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v17 healthDataSource:v15];
    heartRateFeatureStatusManager = v22->_heartRateFeatureStatusManager;
    v22->_heartRateFeatureStatusManager = v27;

    v29 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v18 healthDataSource:v15];
    deviationDetectionFeatureStatusManager = v22->_deviationDetectionFeatureStatusManager;
    v22->_deviationDetectionFeatureStatusManager = v29;

    v31 = [MEMORY[0x277D10718] hdmc_deviationDetectionAnalyticsProtectedDomainWithProfile:v22->_profile];
    deviationDetectionAnalyticsKeyValueDomain = v22->_deviationDetectionAnalyticsKeyValueDomain;
    v22->_deviationDetectionAnalyticsKeyValueDomain = v31;

    v33 = [MEMORY[0x277D10718] hdmc_appProtectedSyncedMenstrualCyclesDefaultsDomainWithProfile:v22->_profile];
    appProtectedKeyValueDomain = v22->_appProtectedKeyValueDomain;
    v22->_appProtectedKeyValueDomain = v33;

    v35 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v19 healthDataSource:v15];
    wristTemperatureInputFeatureStatusManager = v22->_wristTemperatureInputFeatureStatusManager;
    v22->_wristTemperatureInputFeatureStatusManager = v35;

    objc_storeStrong(&v22->_pregnancyManager, a8);
    v37 = [objc_alloc(MEMORY[0x277D62528]) initWithIdentifier:@"HDMCDailyAnalytics" healthStore:0 options:2];
    sleepStore = v22->_sleepStore;
    v22->_sleepStore = v37;
  }

  return v22;
}

- (BOOL)submitMetricWithError:(id *)a3
{
  v5 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v6 = [[HDMCDailyMetric alloc] initWithImproveHealthAndActivityAllowed:HKImproveHealthAndActivityAnalyticsAllowed()];
  v7 = [(HDProfile *)self->_profile featureSettingsManager];
  v8 = *MEMORY[0x277CCC090];
  v39 = 0;
  v9 = [v7 featureSettingsForFeatureIdentifier:v8 error:&v39];
  v10 = v39;

  if (v9)
  {
    v35 = v6;
    heartRateFeatureStatusManager = self->_heartRateFeatureStatusManager;
    v38 = v10;
    v12 = [(HKFeatureStatusManager *)heartRateFeatureStatusManager featureStatusWithError:&v38];
    v13 = v38;

    v34 = v5;
    if (!v12)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCDailyAnalytics submitMetricWithError:];
      }

      v15 = v13;
      if (v15)
      {
        v6 = v35;
        if (a3)
        {
          v29 = v15;
          v21 = 0;
          *a3 = v15;
        }

        else
        {
          _HKLogDroppedError();
          v21 = 0;
        }

        v20 = v15;
        goto LABEL_43;
      }

      v21 = 0;
      v20 = 0;
LABEL_42:
      v6 = v35;
LABEL_43:

      v5 = v34;
      goto LABEL_44;
    }

    deviationDetectionFeatureStatusManager = self->_deviationDetectionFeatureStatusManager;
    v37 = v13;
    v15 = [(HKFeatureStatusManager *)deviationDetectionFeatureStatusManager featureStatusWithError:&v37];
    v16 = v37;

    if (v15)
    {
      v17 = [objc_alloc(MEMORY[0x277D119F8]) initWithObservationEnabled:0];
      wristTemperatureInputFeatureStatusManager = self->_wristTemperatureInputFeatureStatusManager;
      v36 = v16;
      v19 = [(HKFeatureStatusManager *)wristTemperatureInputFeatureStatusManager featureStatusWithError:&v36];
      v20 = v36;

      v21 = v19 != 0;
      if (v19)
      {
        if (![(HDMCDailyAnalytics *)self _collectDiagnosticFieldsForMetric:v35 settingsManager:v17 heartRateInputFeatureStatus:v12 deviationDetectionFeatureStatus:v15 wristTemperatureInputFeatureStatus:v19 gregorianCalendar:v34 error:a3])
        {
          goto LABEL_23;
        }

        v33 = [v15 onboardingRecord];
        v22 = [v33 featureSettings];
        v23 = self;
        v24 = v22;
        v25 = [(HDMCDailyAnalytics *)v23 _collectSensitiveFieldsForMetric:v35 settingsManager:v17 menstrualCyclesSettings:v9 heartRateInputFeatureStatus:v12 deviationDetectionSettings:v22 wristTemperatureInputFeatureStatus:v19 gregorianCalendar:v34 error:a3];

        if (!v25)
        {
LABEL_23:
          v21 = 0;
LABEL_40:

          goto LABEL_41;
        }

        v26 = [objc_opt_class() eventName];
        v27 = [(HDMCDailyMetric *)v35 eventPayload];
        AnalyticsSendEvent();
      }

      else
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
        {
          [HDMCDailyAnalytics submitMetricWithError:];
        }

        v26 = v20;
        if (v26)
        {
          if (a3)
          {
            v31 = v26;
            *a3 = v26;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }

      goto LABEL_40;
    }

    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [HDMCDailyAnalytics submitMetricWithError:];
    }

    v17 = v16;
    if (v17)
    {
      if (a3)
      {
        v30 = v17;
        v21 = 0;
        *a3 = v17;
LABEL_37:
        v20 = v17;
LABEL_41:

        goto LABEL_42;
      }

      _HKLogDroppedError();
    }

    v21 = 0;
    goto LABEL_37;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    [HDMCDailyAnalytics submitMetricWithError:];
  }

  v12 = v10;
  if (!v12)
  {
    goto LABEL_30;
  }

  if (!a3)
  {
    _HKLogDroppedError();
LABEL_30:
    v21 = 0;
    goto LABEL_31;
  }

  v28 = v12;
  v21 = 0;
  *a3 = v12;
LABEL_31:
  v20 = v12;
LABEL_44:

  return v21;
}

- (BOOL)_collectDiagnosticFieldsForMetric:(id)a3 settingsManager:(id)a4 heartRateInputFeatureStatus:(id)a5 deviationDetectionFeatureStatus:(id)a6 wristTemperatureInputFeatureStatus:(id)a7 gregorianCalendar:(id)a8 error:(id *)a9
{
  v99 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v76 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  keyValueDomain = self->_keyValueDomain;
  v96 = 0;
  v77 = v16;
  v78 = v19;
  v73 = v17;
  v74 = v18;
  v79 = [HDMCDailyAnalytics _setDiagnosticOnboardingFieldsInMetric:v15 keyValueDomain:keyValueDomain heartRateInputFeatureStatus:v16 deviationDetectionFeatureStatus:v17 wristTemperatureInputFeatureStatus:v18 gregorianCalendar:&v96 error:?];
  v21 = v96;
  if (v79)
  {
    v22 = v79;

    if ([v16 isOnboardingRecordPresent])
    {
      v23 = [v16 onboardingRecord];
      v24 = [v23 onboardingCompletion];
      v25 = [v24 countryCode];
      [v22 setHeartRateInputDeliveryCountryCode:v25];
    }

    sleepStore = self->_sleepStore;
    v95 = v21;
    v27 = [(HKSPSleepStore *)sleepStore currentSleepEventRecordWithError:&v95];
    v28 = v95;

    v72 = [v27 sleepCoachingOnboardingFirstCompletedDate];
    v70 = [v27 sleepTrackingOnboardingFirstCompletedDate];
    v29 = 0;
    if (v72 && v70)
    {
      v29 = [(HKSPSleepStore *)self->_sleepStore hasSleepFocusMode];
    }

    v30 = [MEMORY[0x277CCABB0] numberWithBool:v29];
    [v22 setIsSleepConfiguredToAllowWristTemperatureMeasurements:v30];

    v71 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
    v31 = [MEMORY[0x277CBEAA8] date];
    v32 = [v31 hk_morningIndexWithCalendar:v78];

    v75 = objc_alloc_init(MEMORY[0x277CCD0A0]);
    LOBYTE(v68) = 1;
    v33 = [[HDMCDaySummaryEnumerator alloc] initWithProfile:self->_profile calendarCache:v75 dayIndexRange:v32 - 45 ascending:45 includeFactors:1 includeWristTemperature:0, v68];
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v94 = 0;
    v85 = 0;
    v86 = &v85;
    v87 = 0x3032000000;
    v88 = __Block_byref_object_copy__2;
    v89 = __Block_byref_object_dispose__2;
    v90 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v83[5] = &v85;
    v84 = v28;
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __191__HDMCDailyAnalytics__collectDiagnosticFieldsForMetric_settingsManager_heartRateInputFeatureStatus_deviationDetectionFeatureStatus_wristTemperatureInputFeatureStatus_gregorianCalendar_error___block_invoke;
    v83[3] = &unk_27865A970;
    v83[4] = &v91;
    LOBYTE(v32) = [(HDMCDaySummaryEnumerator *)v33 enumerateWithError:&v84 handler:v83];
    v34 = v84;

    if (v32)
    {
      v35 = [MEMORY[0x277CCABB0] numberWithInteger:v92[3]];
      [v22 setDaysWithWristTempInPast45Days:v35];

      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v86[5], "count")}];
      [v22 setCountWatchesWithWristTempMeasurementDataInLast45Days:v36];
    }

    else
    {
      _HKInitializeLogging();
      v36 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v40 = objc_opt_class();
        [HDMCDailyAnalytics _collectDiagnosticFieldsForMetric:v40 settingsManager:v34 heartRateInputFeatureStatus:v98 deviationDetectionFeatureStatus:? wristTemperatureInputFeatureStatus:? gregorianCalendar:? error:?];
      }
    }

    v41 = MEMORY[0x277D10848];
    profile = self->_profile;
    v43 = [(HDMCDailyAnalytics *)self _predicateForSleepDataFromPast45DaysWithCalendar:v78];
    v82 = v34;
    v44 = [v41 samplesWithType:v71 profile:profile encodingOptions:MEMORY[0x277CBEC10] predicate:v43 limit:0 anchor:0 error:&v82];
    v45 = v82;

    if ([v44 count])
    {
      v46 = [(HDMCDailyAnalytics *)self _daysWithSleepSamples:v44 calendar:v78];
      v47 = [MEMORY[0x277CCABB0] numberWithInteger:v46];
      [v22 setDaysWornWatchToSleepInLast45Days:v47];
    }

    v48 = [(HKMCAnalysis *)self->_analysis fertileWindowProjections];
    v49 = [v48 count] == 0;

    if (v49)
    {
      v57 = v33;
      v59 = v45;
    }

    else
    {
      v50 = [(HKMCAnalysis *)self->_analysis fertileWindowProjections];
      v51 = [v50 firstObject];
      v52 = [v51 allDays];
      v54 = v53;

      v55 = [HDMCDaySummaryEnumerator alloc];
      if (v54 <= 0)
      {
        v56 = 0x7FFFFFFFFFFFFFD3;
      }

      else
      {
        v56 = v54 + v52 - 45;
      }

      LOBYTE(v69) = 1;
      v57 = [(HDMCDaySummaryEnumerator *)v55 initWithProfile:self->_profile calendarCache:v75 dayIndexRange:v56 ascending:45 includeFactors:1 includeWristTemperature:0, v69];

      v92[3] = 0;
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __191__HDMCDailyAnalytics__collectDiagnosticFieldsForMetric_settingsManager_heartRateInputFeatureStatus_deviationDetectionFeatureStatus_wristTemperatureInputFeatureStatus_gregorianCalendar_error___block_invoke_312;
      v80[3] = &unk_27865A998;
      v80[4] = &v91;
      v81 = v45;
      v58 = [(HDMCDaySummaryEnumerator *)v57 enumerateWithError:&v81 handler:v80];
      v59 = v81;

      if (v58)
      {
        v60 = [MEMORY[0x277CCABB0] numberWithInteger:v92[3]];
        [v22 setDaysWithWristTempIn45DaysBeforeFertileWindowEnd:v60];
      }

      else
      {
        _HKInitializeLogging();
        v60 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v61 = objc_opt_class();
          [HDMCDailyAnalytics _collectDiagnosticFieldsForMetric:v61 settingsManager:v59 heartRateInputFeatureStatus:v97 deviationDetectionFeatureStatus:? wristTemperatureInputFeatureStatus:? gregorianCalendar:? error:?];
        }
      }
    }

    v62 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v76, "internalCycleFactorsOverrideEnabled")}];
    [v22 setInternalLiveOnCycleFactorOverrideEnabled:v62];

    v63 = MEMORY[0x277CCABB0];
    v64 = [(HDProfile *)self->_profile notificationManager];
    v65 = [v63 numberWithBool:{objc_msgSend(v64, "areHealthNotificationsAuthorized")}];
    [v22 setAreHealthNotificationsAuthorized:v65];

    _Block_object_dispose(&v85, 8);
    _Block_object_dispose(&v91, 8);

    v15 = v22;
  }

  else
  {
    _HKInitializeLogging();
    v37 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [HDMCDailyAnalytics _collectDiagnosticFieldsForMetric:v37 settingsManager:self heartRateInputFeatureStatus:v21 deviationDetectionFeatureStatus:? wristTemperatureInputFeatureStatus:? gregorianCalendar:? error:?];
    }

    v38 = v21;
    v27 = v38;
    if (v38)
    {
      if (a9)
      {
        v39 = v38;
        *a9 = v27;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v59 = v27;
  }

  v66 = *MEMORY[0x277D85DE8];
  return v79 != 0;
}

void __191__HDMCDailyAnalytics__collectDiagnosticFieldsForMetric_settingsManager_heartRateInputFeatureStatus_deviationDetectionFeatureStatus_wristTemperatureInputFeatureStatus_gregorianCalendar_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 wristTemperature];

  if (v3)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = [v7 wristTemperature];
    v6 = [v5 watchBundleIdentifier];
    [v4 addObject:v6];
  }
}

void __191__HDMCDailyAnalytics__collectDiagnosticFieldsForMetric_settingsManager_heartRateInputFeatureStatus_deviationDetectionFeatureStatus_wristTemperatureInputFeatureStatus_gregorianCalendar_error___block_invoke_312(uint64_t a1, void *a2)
{
  v3 = [a2 wristTemperature];

  if (v3)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (BOOL)_collectSensitiveFieldsForMetric:(id)a3 settingsManager:(id)a4 menstrualCyclesSettings:(id)a5 heartRateInputFeatureStatus:(id)a6 deviationDetectionSettings:(id)a7 wristTemperatureInputFeatureStatus:(id)a8 gregorianCalendar:(id)a9 error:(id *)a10
{
  v299 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v274 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if ([v16 isImproveHealthAndActivityAllowed])
  {
    v272 = v20;
    v22 = v21;
    v261 = HKMCTodayIndex();
    v273 = [MEMORY[0x277CBEAA8] date];
    v23 = [(HDProfile *)self->_profile deviceContextManager];
    v293 = 0;
    v24 = [v23 numberOfDeviceContextsPerDeviceType:&v293];
    v25 = v293;

    v270 = v24;
    v271 = v19;
    v268 = self;
    if (v24)
    {
      v26 = [v24 objectForKeyedSubscript:&unk_283CC3150];
      if (v26)
      {
        v27 = [v24 objectForKeyedSubscript:&unk_283CC3150];
        [v16 setCountPairediPhone:v27];
      }

      else
      {
        [v16 setCountPairediPhone:&unk_283CC3168];
      }

      v37 = [v24 objectForKeyedSubscript:&unk_283CC3180];
      if (v37)
      {
        v38 = [v24 objectForKeyedSubscript:&unk_283CC3180];
        [v16 setCountPairediPad:v38];
      }

      else
      {
        [v16 setCountPairediPad:&unk_283CC3168];
      }

      v39 = [v24 objectForKeyedSubscript:&unk_283CC3198];
      v265 = v22;
      if (v39)
      {
        v40 = [v24 objectForKeyedSubscript:&unk_283CC3198];
        [v16 setCountPairedWatch:v40];
      }

      else
      {
        [v16 setCountPairedWatch:&unk_283CC3168];
      }

      v32 = v17;

      v41 = [v24 objectForKeyedSubscript:&unk_283CC31B0];
      v264 = v18;
      v34 = v274;
      if (v41)
      {
        v42 = [v24 objectForKeyedSubscript:&unk_283CC31B0];
        [v16 setCountPairedVisionPro:v42];
      }

      else
      {
        [v16 setCountPairedVisionPro:&unk_283CC3168];
      }

      v43 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
      v44 = [(HDProfile *)v268->_profile userCharacteristicsManager];
      v292 = v25;
      v263 = v43;
      v45 = [v44 userCharacteristicForType:v43 error:&v292];
      v46 = v292;

      v266 = v45;
      if (v45 || !v46)
      {
        v48 = v268;
        if (v45)
        {
          v49 = MEMORY[0x277CCABB0];
          v50 = [MEMORY[0x277CBEAA8] date];
          v51 = [v49 _yearsBetweenStartDateComponents:v45 endDate:v50 calendar:v265];

          if (!v51)
          {
            _HKInitializeLogging();
            v52 = *MEMORY[0x277CCC2E8];
            if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
            {
              [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:v52 settingsManager:? menstrualCyclesSettings:? heartRateInputFeatureStatus:? deviationDetectionSettings:? wristTemperatureInputFeatureStatus:? gregorianCalendar:? error:?];
            }
          }

          [v16 setAge:v51];
        }

        v53 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB08]];
        v54 = [(HDProfile *)v268->_profile userCharacteristicsManager];
        v291 = v46;
        v260 = v53;
        v55 = [v54 userCharacteristicForType:v53 error:&v291];
        v56 = v291;

        v259 = v55;
        if (v55 || !v56)
        {
          v257 = v32;
          [v16 setBiologicalSex:v55];
          v58 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
          v59 = MEMORY[0x277D10848];
          profile = v268->_profile;
          v61 = [(HDMCDailyAnalytics *)v268 _predicateForSleepDataFromPast48HoursWithCalendar:v265];
          v290 = v56;
          v62 = [v59 samplesWithType:v58 profile:profile encodingOptions:MEMORY[0x277CBEC10] predicate:v61 limit:0 anchor:0 error:&v290];
          v63 = v290;

          if (v62)
          {
            v255 = v62;
            v64 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v62, "count") != 0}];
            [v16 setHasSleepSamplesPast48Hours:v64];

            v65 = MEMORY[0x277D10848];
            v66 = v268->_profile;
            v67 = [(HDMCDailyAnalytics *)v268 _predicateForFirstPartySleepDataFromPast48HoursWithCalendar:v265];
            v289 = v63;
            v256 = v58;
            v68 = [v65 samplesWithType:v58 profile:v66 encodingOptions:MEMORY[0x277CBEC10] predicate:v67 limit:0 anchor:0 error:&v289];
            v69 = v289;

            v254 = v68;
            if (v68)
            {
              v70 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v68, "count") != 0}];
              [v16 setHasFirstPartySleepSamplesPast48Hours:v70];

              analysis = v268->_analysis;
              keyValueDomain = v268->_keyValueDomain;
              fertileWindowNotificationKeyValueDomain = v268->_fertileWindowNotificationKeyValueDomain;
              v288 = v69;
              v74 = [HDMCDailyAnalytics _setCycleStatisticsFieldsInMetric:v16 analysis:analysis keyValueDomain:keyValueDomain fertileWindowNotificationKeyValueDomain:fertileWindowNotificationKeyValueDomain todayDayIndex:v261 todayAsDate:v273 gregorianCalendar:v265 error:&v288];
              v75 = v288;

              v33 = v264;
              v253 = v74;
              if (v74)
              {
                v76 = v74;

                v77 = [v274 numberForKey:*MEMORY[0x277D11808]];
                [v76 setPeriodPredictionEnabled:v77];

                v78 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v32, "menstruationNotificationsEnabled")}];
                [v76 setPeriodNotificationEnabled:v78];

                v79 = [v274 numberForKey:*MEMORY[0x277D11800]];
                [v76 setFertilityPredictionEnabled:v79];

                v80 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v32, "fertileWindowNotificationsEnabled")}];
                [v76 setFertilityNotificationEnabled:v80];

                v81 = [v264 onboardingRecord];
                v82 = [v81 featureSettings];
                v83 = *MEMORY[0x277CCC120];
                [v82 numberForKey:*MEMORY[0x277CCC120]];
                v84 = v250 = v75;
                [v76 setSensorBasedPredictionEnabled:v84];

                v85 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v271, "deviationDetectionEnabledForType:", 1)}];
                [v76 setDeviationDetectionSpottingEnabled:v85];

                v86 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v271, "deviationDetectionEnabledForType:", 2)}];
                [v76 setDeviationDetectionIrregularEnabled:v86];

                v87 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v271, "deviationDetectionEnabledForType:", 3)}];
                [v76 setDeviationDetectionInfrequentEnabled:v87];

                v88 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v271, "deviationDetectionEnabledForType:", 0)}];
                [v76 setDeviationDetectionProlongedEnabled:v88];

                v89 = [v272 onboardingRecord];
                v90 = [v89 featureSettings];
                v91 = [v90 numberForKey:v83];
                [v76 setWristTemperatureBasedPredictionEnabled:v91];

                v92 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v274, "isLoggingVisibleForDisplayTypeIdentifier:", *MEMORY[0x277D11848])}];
                [v76 setLogFactorsEnabled:v92];

                v93 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v274, "isLoggingVisibleForDisplayTypeIdentifier:", *MEMORY[0x277D11878])}];
                [v76 setLogSymptomsEnabled:v93];

                v94 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v274, "isLoggingVisibleForDisplayTypeIdentifier:", *MEMORY[0x277D11850])}];
                [v76 setLogSpottingEnabled:v94];

                v95 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v274, "isLoggingVisibleForDisplayTypeIdentifier:", *MEMORY[0x277D11870])}];
                [v76 setLogSexualActivityEnabled:v95];

                v96 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v274, "isLoggingVisibleForDisplayTypeIdentifier:", *MEMORY[0x277D11840])}];
                [v76 setLogCervicalMucusQualityEnabled:v96];

                v97 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v274, "isLoggingVisibleForDisplayTypeIdentifier:", *MEMORY[0x277D11838])}];
                [v76 setLogBasalBodyTemperatureEnabled:v97];

                v98 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v274, "isLoggingVisibleForDisplayTypeIdentifier:", *MEMORY[0x277D11858])}];
                [v76 setLogOvulationTestResultEnabled:v98];

                v99 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v274, "isLoggingVisibleForDisplayTypeIdentifier:", *MEMORY[0x277D11860])}];
                [v76 setLogPregnancyTestResultEnabled:v99];

                v100 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v274, "isLoggingVisibleForDisplayTypeIdentifier:", *MEMORY[0x277D11868])}];
                [v76 setLogProgesteroneTestResultEnabled:v100];

                v101 = [MEMORY[0x277CBEA80] currentCalendar];
                v102 = v268->_profile;
                v287[1] = v250;
                v249 = v101;
                v103 = [HDMCDailyAnalytics _setDeviationSampleFieldsInMetric:"_setDeviationSampleFieldsInMetric:profile:userCalendar:error:" profile:v76 userCalendar:v102 error:?];
                v104 = v250;

                if (v103)
                {
                  v105 = v103;
                  v106 = v103;

                  deviationDetectionAnalyticsKeyValueDomain = v268->_deviationDetectionAnalyticsKeyValueDomain;
                  v287[0] = v104;
                  v108 = [HDMCDailyAnalytics _setDetectedDeviationFieldsInMetric:v106 gregorianCalendar:v265 deviationDetectionAnalyticsKeyValueDomain:deviationDetectionAnalyticsKeyValueDomain todayDayIndex:v261 error:v287];
                  v109 = v287[0];

                  v248 = v108;
                  if (v108)
                  {
                    v110 = v108;

                    v111 = v268->_analysis;
                    appProtectedKeyValueDomain = v268->_appProtectedKeyValueDomain;
                    v286 = v109;
                    v113 = [HDMCDailyAnalytics _setCycleFactorRelatedFieldsInMetric:v110 analysis:v111 appProtectedKeyValueDomain:appProtectedKeyValueDomain error:&v286];
                    v114 = v286;

                    if (v113)
                    {
                      v247 = v113;

                      sleepStore = v268->_sleepStore;
                      v285 = v114;
                      v116 = [(HKSPSleepStore *)sleepStore currentSleepEventRecordWithError:&v285];
                      v117 = v285;

                      v103 = v105;
                      if (v116)
                      {
                        v242 = v105;
                        v243 = v113;
                        v246 = [v116 sleepCoachingOnboardingFirstCompletedDate];
                        v245 = [v116 sleepTrackingOnboardingFirstCompletedDate];
                        v118 = v268->_sleepStore;
                        v284 = v117;
                        v119 = [(HKSPSleepStore *)v118 currentSleepSettingsWithError:&v284];
                        v120 = v284;

                        v33 = v264;
                        v241 = v119;
                        if (v119)
                        {
                          v121 = [MEMORY[0x277CCABB0] numberWithInt:{(objc_msgSend(v119, "sleepModeOptions") >> 14) & 1}];
                          [v247 setIsSleepScreenEnabled:v121];
                        }

                        else
                        {
                          _HKInitializeLogging();
                          if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
                          {
                            [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:];
                          }

                          [v247 setIsSleepScreenEnabled:*MEMORY[0x277CCB798]];
                        }

                        v133 = v268->_sleepStore;
                        v283 = v120;
                        v134 = [(HKSPSleepStore *)v133 currentSleepScheduleWithError:&v283];
                        v135 = v283;

                        if (v134)
                        {
                          v136 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v134, "isEnabled")}];
                          [v247 setIsSleepScheduleEnabled:v136];
                        }

                        else
                        {
                          _HKInitializeLogging();
                          if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
                          {
                            [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:];
                          }

                          [v247 setIsSleepScheduleEnabled:*MEMORY[0x277CCB798]];
                        }

                        [(HDProfile *)v268->_profile featureAvailabilityProvidingForFeatureIdentifier:*MEMORY[0x277CCC0F8]];
                        v240 = v282 = v135;
                        v137 = [v240 featureOnboardingRecordWithError:&v282];
                        v138 = v282;

                        v139 = 0x278659000;
                        v244 = v137;
                        if (v137)
                        {
                          v140 = [v272 isOnboardingRecordPresent];
                          v239 = v134;
                          if (v140)
                          {
                            v141 = [v272 onboardingRecord];
                            v142 = [v141 onboardingCompletion];
                            [v142 countryCode];
                            v144 = v143 = v116;
                            [v247 setWristTemperatureInputDeliveryCountryCode:v144];

                            v116 = v143;
                            v33 = v264;
                          }

                          if (v246)
                          {
                            if (v245)
                            {
                              if ((v140 & [(HKSPSleepStore *)v268->_sleepStore hasSleepFocusMode]) == 1)
                              {
                                v145 = [v244 onboardingCompletion];

                                if (v145)
                                {
                                  v146 = [v244 onboardingCompletion];
                                  v147 = [v146 completionDate];

                                  if ([v147 compare:v245] == -1)
                                  {
                                    v148 = v245;
                                  }

                                  else
                                  {
                                    v148 = v147;
                                  }

                                  v149 = v148;
                                  v150 = MEMORY[0x277CCABB0];
                                  v151 = [MEMORY[0x277CBEAA8] date];
                                  v152 = v265;
                                  v153 = [v150 _weeksBetweenStartDate:v149 endDate:v151 calendar:v265];
                                  [v247 setWeeksSinceOnboardedWristTemperatureOvulationPrediction:v153];

                                  v154 = [(HKMCAnalysis *)v268->_analysis cycles];
                                  v155 = [v154 count];

                                  if (v155 >= 2)
                                  {
                                    _HKInitializeLogging();
                                    v156 = *MEMORY[0x277CCC2E8];
                                    v236 = v149;
                                    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
                                    {
                                      v157 = v156;
                                      v158 = objc_opt_class();
                                      v159 = v116;
                                      v160 = MEMORY[0x277CCABB0];
                                      v161 = v268->_analysis;
                                      v251 = v158;
                                      v162 = [(HKMCAnalysis *)v161 cycles];
                                      v163 = [v160 numberWithUnsignedInteger:{objc_msgSend(v162, "count")}];
                                      *buf = 138543618;
                                      v296 = v158;
                                      v297 = 2112;
                                      v298 = v163;
                                      _os_log_impl(&dword_2293D1000, v157, OS_LOG_TYPE_DEFAULT, "[%{public}@] Number of historical cycles: %@", buf, 0x16u);

                                      v116 = v159;
                                      v149 = v236;

                                      v152 = v265;
                                    }

                                    v164 = -[HDMCDailyAnalytics _eligibleCyclesStartPastDayIndex:](v268, "_eligibleCyclesStartPastDayIndex:", [v149 hk_dayIndexWithCalendar:v152]);
                                    if ([v164 count])
                                    {
                                      v234 = v164;
                                      v235 = v147;
                                      v237 = v116;
                                      v280 = 0u;
                                      v281 = 0u;
                                      v278 = 0u;
                                      v279 = 0u;
                                      v165 = v164;
                                      v166 = [v165 countByEnumeratingWithState:&v278 objects:v294 count:16];
                                      if (v166)
                                      {
                                        v167 = v166;
                                        v168 = 0;
                                        v169 = 0;
                                        v170 = 0;
                                        v171 = 0;
                                        v172 = 0;
                                        v252 = *v279;
                                        do
                                        {
                                          for (i = 0; i != v167; ++i)
                                          {
                                            if (*v279 != v252)
                                            {
                                              objc_enumerationMutation(v165);
                                            }

                                            v174 = *(*(&v278 + 1) + 8 * i);
                                            v175 = [v174 ovulationConfirmationType];
                                            if (v175 == 1)
                                            {
                                              v176 = v171 + 1;
                                            }

                                            else
                                            {
                                              v176 = v171;
                                            }

                                            if (v175 == 2)
                                            {
                                              ++v172;
                                            }

                                            else
                                            {
                                              v171 = v176;
                                            }

                                            v177 = [v174 ovulationConfirmationFailure];
                                            switch(v177)
                                            {
                                              case 3:
                                                ++v168;
                                                break;
                                              case 2:
                                                ++v169;
                                                break;
                                              case 1:
                                                ++v170;
                                                break;
                                            }
                                          }

                                          v167 = [v165 countByEnumeratingWithState:&v278 objects:v294 count:16];
                                        }

                                        while (v167);
                                      }

                                      else
                                      {
                                        v168 = 0;
                                        v169 = 0;
                                        v170 = 0;
                                        v171 = 0;
                                        v172 = 0;
                                      }

                                      if (v171 >= 15)
                                      {
                                        v181 = 15;
                                      }

                                      else
                                      {
                                        v181 = v171;
                                      }

                                      v182 = [MEMORY[0x277CCABB0] numberWithInteger:v181];
                                      [v247 setCountWristTempEligibleHistoricalCycles_ConfirmedWristTemp:v182];

                                      if (v172 >= 15)
                                      {
                                        v183 = 15;
                                      }

                                      else
                                      {
                                        v183 = v172;
                                      }

                                      v184 = [MEMORY[0x277CCABB0] numberWithInteger:v183];
                                      [v247 setCountWristTempEligibleHistoricalCycles_ConfirmedOPK:v184];

                                      if (v170 >= 15)
                                      {
                                        v185 = 15;
                                      }

                                      else
                                      {
                                        v185 = v170;
                                      }

                                      v186 = [MEMORY[0x277CCABB0] numberWithInteger:v185];
                                      [v247 setCountWristTempEligibleHistoricalCycles_FailedAvailability:v186];

                                      if (v169 >= 15)
                                      {
                                        v187 = 15;
                                      }

                                      else
                                      {
                                        v187 = v169;
                                      }

                                      v188 = [MEMORY[0x277CCABB0] numberWithInteger:v187];
                                      [v247 setCountWristTempEligibleHistoricalCycles_FailedNoise:v188];

                                      if (v168 >= 15)
                                      {
                                        v189 = 15;
                                      }

                                      else
                                      {
                                        v189 = v168;
                                      }

                                      v190 = [MEMORY[0x277CCABB0] numberWithInteger:v189];
                                      [v247 setCountWristTempEligibleHistoricalCycles_FailedOther:v190];

                                      v191 = MEMORY[0x277CCABB0];
                                      v192 = [v165 count];
                                      if (v192 >= 0xF)
                                      {
                                        v193 = 15;
                                      }

                                      else
                                      {
                                        v193 = v192;
                                      }

                                      v194 = [v191 numberWithUnsignedInteger:v193];
                                      [v247 setCountWristTempEligibleHistoricalCycles:v194];

                                      v32 = v257;
                                      v139 = 0x278659000uLL;
                                      v116 = v237;
                                      v164 = v234;
                                      v147 = v235;
                                    }

                                    v48 = v268;
                                    v149 = v236;
                                  }

                                  v33 = v264;
                                }
                              }
                            }
                          }

                          v195 = *(v139 + 2672);
                          v197 = v48->_profile;
                          v196 = v48->_analysis;
                          v277 = v138;
                          v198 = [v195 _setFertileWindowFieldsInMetric:v247 analysis:v196 profile:v197 todayDayIndex:v261 error:&v277];
                          v199 = v277;

                          v179 = v198;
                          v269 = v198 != 0;
                          if (v198)
                          {
                            v267 = v198;
                            v200 = v198;

                            v201 = [(HKMCAnalysis *)v48->_analysis menstruationProjections];
                            v202 = [v201 count];

                            v113 = v243;
                            if (v202)
                            {
                              v203 = [(HKMCAnalysis *)v48->_analysis menstruationProjections];
                              v204 = [v203 firstObject];

                              if ([v204 isPartiallyLogged])
                              {
                                v205 = [(HKMCAnalysis *)v48->_analysis menstruationProjections];
                                v206 = [v205 count];

                                if (v206 >= 2)
                                {
                                  v207 = [(HKMCAnalysis *)v48->_analysis menstruationProjections];
                                  v208 = [v207 objectAtIndexedSubscript:1];

                                  v204 = v208;
                                }
                              }

                              v209 = [v204 mostLikelyDays] - v261;
                              v210 = [v204 daysOffsetFromCalendarMethod];
                              v211 = [MEMORY[0x277CCABB0] numberWithInteger:v209];
                              [v200 setDaysBeforeMostLikelyPeriodPredictionStart:v211];

                              v212 = [MEMORY[0x277CCABB0] numberWithInteger:v210];
                              [v200 setDaysFirstPeriodPredictionShifted:v212];

                              v213 = [MEMORY[0x277CCABB0] numberWithInt:v210 != 0];
                              [v200 setDidFirstPeriodPredictionShift:v213];

                              [v204 predictionPrimarySource];
                              v214 = NSStringFromPredictionPrimarySource();
                              [v200 setPredictionPrimarySourceTypeFirstPeriodPrediction:v214];

                              v113 = v243;
                            }

                            v238 = v116;
                            v215 = [(HKMCAnalysis *)v48->_analysis cycles];
                            v216 = [v215 count];

                            if (v216)
                            {
                              v217 = HKMCTodayIndex();
                              v218 = [(HKMCAnalysis *)v48->_analysis cycles];
                              v219 = [v218 firstObject];
                              v220 = [v219 menstruationSegment];
                              v221 = v217 - [v220 days];

                              v222 = [MEMORY[0x277CCABB0] numberWithInteger:v221];
                              [v200 setDaysSinceCycleStart:v222];
                            }

                            v262 = [MEMORY[0x277D2BCF8] sharedInstance];
                            v258 = [v262 getActivePairedDevice];
                            v223 = [v258 valueForProperty:*MEMORY[0x277D2BBC0]];
                            [v200 setActiveWatchProductType:v223];

                            pregnancyManager = v48->_pregnancyManager;
                            v276 = 0;
                            v225 = [HDMCDailyAnalytics _setPregnancyPropertiesInMetric:v200 manager:pregnancyManager todayAsDate:v273 gregorianCalendar:v265 error:&v276];

                            v226 = [(HDProfile *)v48->_profile medicalIDDataManager];
                            v275 = 0;
                            v227 = [v226 fetchMedicalIDIfSetUpWithError:&v275];
                            v56 = v275;

                            if (v227)
                            {
                              v228 = [v227 pregnancyEstimatedDueDate];
                              v229 = [MEMORY[0x277CCABB0] numberWithInt:v228 != 0];
                              [v225 setHasPregnancyInMedicalID:v229];
                            }

                            else
                            {
                              if (v56)
                              {
                                _HKInitializeLogging();
                                if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
                                {
                                  [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:];
                                }
                              }

                              [v225 setHasPregnancyInMedicalID:MEMORY[0x277CBEC28]];
                            }

                            v33 = v264;
                            v103 = v242;

                            v247 = v225;
                            v230 = v262;
                            v35 = v263;
                            v116 = v238;
                            v179 = v267;
                          }

                          else
                          {
                            _HKInitializeLogging();
                            v103 = v242;
                            v113 = v243;
                            if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
                            {
                              [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:];
                            }

                            v230 = v199;
                            if (v230)
                            {
                              v35 = v263;
                              if (a10)
                              {
                                v231 = v230;
                                *a10 = v230;
                              }

                              else
                              {
                                _HKLogDroppedError();
                              }

                              v56 = v230;
                            }

                            else
                            {
                              v56 = 0;
                              v35 = v263;
                            }
                          }

                          v134 = v239;
                        }

                        else
                        {
                          _HKInitializeLogging();
                          if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
                          {
                            [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:];
                          }

                          v178 = v138;
                          v179 = v178;
                          v103 = v242;
                          v113 = v243;
                          if (v178)
                          {
                            v35 = v263;
                            if (a10)
                            {
                              v180 = v178;
                              v269 = 0;
                              *a10 = v179;
                            }

                            else
                            {
                              _HKLogDroppedError();
                              v269 = 0;
                            }

                            v56 = v179;
                          }

                          else
                          {
                            v269 = 0;
                            v56 = 0;
                            v35 = v263;
                          }
                        }

                        v132 = v246;
                      }

                      else
                      {
                        _HKInitializeLogging();
                        v33 = v264;
                        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
                        {
                          [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:];
                        }

                        v132 = v117;
                        if (v132)
                        {
                          v35 = v263;
                          if (a10)
                          {
                            v132 = v132;
                            v269 = 0;
                            *a10 = v132;
                            v56 = v132;
                          }

                          else
                          {
                            v56 = v132;
                            _HKLogDroppedError();
                            v132 = v56;
                            v269 = 0;
                          }
                        }

                        else
                        {
                          v269 = 0;
                          v56 = 0;
                          v35 = v263;
                        }
                      }

                      v110 = v247;
                    }

                    else
                    {
                      _HKInitializeLogging();
                      v33 = v264;
                      v103 = v105;
                      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
                      {
                        [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:];
                      }

                      v130 = v114;
                      v116 = v130;
                      if (v130)
                      {
                        v35 = v263;
                        if (a10)
                        {
                          v131 = v130;
                          v269 = 0;
                          *a10 = v116;
                        }

                        else
                        {
                          _HKLogDroppedError();
                          v269 = 0;
                        }

                        v56 = v116;
                      }

                      else
                      {
                        v269 = 0;
                        v56 = 0;
                        v35 = v263;
                      }
                    }

                    v106 = v110;
                  }

                  else
                  {
                    _HKInitializeLogging();
                    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
                    {
                      [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:];
                    }

                    v128 = v109;
                    v113 = v128;
                    v33 = v264;
                    v103 = v105;
                    if (v128)
                    {
                      v35 = v263;
                      if (a10)
                      {
                        v129 = v128;
                        v269 = 0;
                        *a10 = v113;
                      }

                      else
                      {
                        _HKLogDroppedError();
                        v269 = 0;
                      }

                      v56 = v113;
                    }

                    else
                    {
                      v269 = 0;
                      v56 = 0;
                      v35 = v263;
                    }
                  }

                  v76 = v106;
                  v126 = v248;
                }

                else
                {
                  _HKInitializeLogging();
                  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
                  {
                    [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:];
                  }

                  v125 = v104;
                  v126 = v125;
                  v33 = v264;
                  if (v125)
                  {
                    v35 = v263;
                    if (a10)
                    {
                      v127 = v125;
                      v269 = 0;
                      *a10 = v126;
                    }

                    else
                    {
                      _HKLogDroppedError();
                      v269 = 0;
                    }

                    v56 = v126;
                  }

                  else
                  {
                    v269 = 0;
                    v56 = 0;
                    v35 = v263;
                  }
                }

                v16 = v76;
                v62 = v255;
                v58 = v256;
                v124 = v249;
              }

              else
              {
                _HKInitializeLogging();
                if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
                {
                  [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:];
                }

                v124 = v75;
                v62 = v255;
                v58 = v256;
                if (v124)
                {
                  v35 = v263;
                  if (a10)
                  {
                    v124 = v124;
                    v269 = 0;
                    *a10 = v124;
                    v56 = v124;
                  }

                  else
                  {
                    v56 = v124;
                    _HKLogDroppedError();
                    v124 = v56;
                    v269 = 0;
                  }
                }

                else
                {
                  v269 = 0;
                  v56 = 0;
                  v35 = v263;
                }
              }

              v123 = v253;
            }

            else
            {
              _HKInitializeLogging();
              v33 = v264;
              if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
              {
                [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:];
              }

              v123 = v69;
              v62 = v255;
              v58 = v256;
              if (v123)
              {
                v35 = v263;
                if (a10)
                {
                  v123 = v123;
                  v269 = 0;
                  *a10 = v123;
                  v56 = v123;
                }

                else
                {
                  v56 = v123;
                  _HKLogDroppedError();
                  v123 = v56;
                  v269 = 0;
                }
              }

              else
              {
                v269 = 0;
                v56 = 0;
                v35 = v263;
              }
            }

            v122 = v254;
          }

          else
          {
            _HKInitializeLogging();
            if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
            {
              [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:];
            }

            v122 = v63;
            v33 = v264;
            if (v122)
            {
              v35 = v263;
              if (a10)
              {
                v122 = v122;
                v269 = 0;
                *a10 = v122;
                v56 = v122;
              }

              else
              {
                v56 = v122;
                _HKLogDroppedError();
                v122 = v56;
                v269 = 0;
              }
            }

            else
            {
              v269 = 0;
              v56 = 0;
              v35 = v263;
            }
          }

          v34 = v274;
        }

        else
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
          {
            [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:];
          }

          v33 = v264;
          if (a10)
          {
            v57 = v56;
            v269 = 0;
            *a10 = v56;
          }

          else
          {
            _HKLogDroppedError();
            v269 = 0;
          }

          v35 = v263;
        }

        v46 = v56;
        v21 = v265;
        v31 = v269;
      }

      else
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
        {
          [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:];
        }

        v31 = a10;
        if (a10)
        {
          v47 = v46;
          *a10 = v46;
          v31 = 0;
        }

        else
        {
          _HKLogDroppedError();
        }

        v35 = v263;
        v21 = v22;
        v33 = v264;
      }
    }

    else
    {
      _HKInitializeLogging();
      v32 = v17;
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        [HDMCDailyAnalytics _collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:];
      }

      v35 = v25;
      if (v35)
      {
        v31 = a10;
        v33 = v18;
        if (a10)
        {
          v36 = v35;
          *a10 = v35;
          v31 = 0;
        }

        else
        {
          _HKLogDroppedError();
        }

        v46 = v35;
        v21 = v22;
      }

      else
      {
        v31 = 0;
        v46 = 0;
        v21 = v22;
        v33 = v18;
      }

      v34 = v274;
    }

    v19 = v271;
    v20 = v272;
  }

  else
  {
    _HKInitializeLogging();
    v28 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      *buf = 138543362;
      v296 = objc_opt_class();
      v30 = v296;
      _os_log_impl(&dword_2293D1000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping collecting metrics due to IH&A not allowed", buf, 0xCu);
    }

    v31 = 1;
    v32 = v17;
    v33 = v18;
    v34 = v274;
  }

  v232 = *MEMORY[0x277D85DE8];
  return v31;
}

- (id)_eligibleCyclesStartPastDayIndex:(int64_t)a3
{
  v5 = [(HKMCAnalysis *)self->_analysis cycles];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HDMCDailyAnalytics__eligibleCyclesStartPastDayIndex___block_invoke;
  v8[3] = &unk_27865A9C0;
  v8[4] = self;
  v8[5] = a3;
  v6 = [v5 hk_map:v8];

  return v6;
}

id __55__HDMCDailyAnalytics__eligibleCyclesStartPastDayIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lastDayIndex];

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [v3 lastDayIndex];
  v6 = [v5 integerValue];

  v7 = [*(*(a1 + 32) + 16) cycles];
  v8 = [v7 firstObject];
  if ([v3 isEqual:v8])
  {

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = *(a1 + 40);

  if (v9 > v6)
  {
    goto LABEL_5;
  }

  v10 = v3;
LABEL_6:

  return v10;
}

- (int64_t)_daysWithSleepSamples:(id)a3 calendar:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v19 + 1) + 8 * v12) startDate];
        v14 = [v13 hk_morningIndexWithCalendar:v6];

        v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
        [v7 addObject:v15];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v7 count];
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_predicateForSleepDataFromPast45DaysWithCalendar:(id)a3
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD0C0];
  v4 = *MEMORY[0x277CCBAB8];
  v5 = a3;
  v6 = [v3 categoryTypeForIdentifier:v4];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v7 hk_morningIndexWithCalendar:v5];

  v9 = [MEMORY[0x277CBEAA8] hk_sleepDayStartForMorningIndex:v8 calendar:v5];
  v10 = [MEMORY[0x277CBEAA8] hk_sleepDayStartForMorningIndex:v8 - 46 calendar:v5];

  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:v9];
  v12 = HDSampleEntityPredicateForDateInterval();

  v13 = _HKCategoryValueSleepAnalysisAsleepValues();
  v14 = HDCategorySampleEntityPredicateEqualToValues();

  v15 = MEMORY[0x277D10B20];
  v21[0] = v12;
  v16 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
  v21[1] = v16;
  v21[2] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v18 = [v15 predicateMatchingAllPredicates:{v17, v21[0]}];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_predicateForSleepDataFromPast48HoursWithCalendar:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v4 dateByAddingTimeInterval:-172800.0];
  v6 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v4];
  v7 = HDSampleEntityPredicateForDateInterval();

  v8 = _HKCategoryValueSleepAnalysisAsleepValues();
  v9 = HDCategorySampleEntityPredicateEqualToValues();

  v10 = MEMORY[0x277D10B20];
  v15[0] = v7;
  v15[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v12 = [v10 predicateMatchingAllPredicates:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_predicateForFirstPartySleepDataFromPast48HoursWithCalendar:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = [(HDMCDailyAnalytics *)self _predicateForSleepDataFromPast48HoursWithCalendar:a3];
  v4 = MEMORY[0x277D10B20];
  v10[0] = v3;
  v5 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v4 predicateMatchingAllPredicates:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_setFertileWindowFieldsInMetric:(id)a3 analysis:(id)a4 profile:(id)a5 todayDayIndex:(int64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [v13 fertileWindowProjections];
  v16 = [v15 count];

  if (!v16)
  {
    v45 = 0;
LABEL_16:
    v46 = v12;
    goto LABEL_58;
  }

  v61 = a1;
  v17 = [v13 fertileWindowProjections];
  v18 = [v17 firstObject];
  v19 = [v18 allDays];
  if (v20 <= 0)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v20 + v19 - 1;
  }

  v22 = v21 - a6;
  v23 = [v13 fertileWindowProjections];
  v24 = [v23 firstObject];
  v25 = [v24 daysOffsetFromCalendarMethod];

  v26 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
  [v12 setDaysBeforeFertileWindowEnd:v26];

  v27 = [MEMORY[0x277CCABB0] numberWithInteger:v25];
  [v12 setDaysFertileWindowShifted:v27];

  v28 = [v13 fertileWindowProjections];
  v29 = [v28 firstObject];
  [v29 predictionPrimarySource];
  v30 = NSStringFromPredictionPrimarySource();
  [v12 setPredictionPrimarySourceTypeFertileWindow:v30];

  v31 = [v13 fertileWindowProjections];
  v32 = [v31 firstObject];
  v33 = [v32 allDays];
  v35 = v34 + v33 - 1;
  if (v34 <= 0)
  {
    v35 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v36 = v35 - v25;

  v37 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  if (v36 >= a6)
  {
    v45 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v60 = a7;
  v66 = 0;
  v38 = [v61 _daysWithWristTemperatureSamplesInDayIndexRange:v36 - 5 profile:6 calendarCache:v14 error:{v37, &v66}];
  v39 = v66;
  if (!v38)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      +[HDMCDailyAnalytics(Analysis) _setFertileWindowFieldsInMetric:analysis:profile:todayDayIndex:error:];
    }

    v47 = v39;
    v38 = v47;
    if (v47)
    {
      if (v60)
      {
        v48 = v47;
        *v60 = v38;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v45 = v38;
    goto LABEL_57;
  }

  [v12 setDaysWithWristTempIn6DaysBeforeCalendarOvulation:v38];
  v65 = v39;
  v40 = [v61 _daysWithWristTemperatureSamplesInDayIndexRange:v36 - 9 profile:10 calendarCache:v14 error:{v37, &v65}];
  v41 = v65;

  v42 = v40;
  if (!v40)
  {
    _HKInitializeLogging();
    v49 = v60;
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      +[HDMCDailyAnalytics(Analysis) _setFertileWindowFieldsInMetric:analysis:profile:todayDayIndex:error:];
    }

    v45 = v41;
    if (!v45)
    {
      goto LABEL_56;
    }

    goto LABEL_46;
  }

  v59 = v40;
  [v12 setDaysWithWristTempIn10DaysBeforeCalendarOvulation:v40];
  if (v36 + 3 >= a6)
  {
    v44 = v41;
    goto LABEL_27;
  }

  v64 = v41;
  v43 = [v61 _daysWithWristTemperatureSamplesInDayIndexRange:v36 + 1 profile:3 calendarCache:v14 error:{v37, &v64}];
  v44 = v64;

  if (v43)
  {
    [v12 setDaysWithWristTempIn3DaysAfterCalendarOvulation:v43];

LABEL_27:
    if (v36 + 6 >= a6)
    {
      v51 = v44;
      goto LABEL_31;
    }

    v63 = v44;
    v50 = [v61 _daysWithWristTemperatureSamplesInDayIndexRange:v36 + 1 profile:6 calendarCache:v14 error:{v37, &v63}];
    v51 = v63;

    if (v50)
    {
      [v12 setDaysWithWristTempIn6DaysAfterCalendarOvulation:v50];

LABEL_31:
      if (v36 + 10 >= a6)
      {
        v45 = v51;
        goto LABEL_35;
      }

      v62 = v51;
      v52 = [v61 _daysWithWristTemperatureSamplesInDayIndexRange:v36 + 1 profile:10 calendarCache:v14 error:{v37, &v62}];
      v45 = v62;

      if (v52)
      {
        [v12 setDaysWithWristTempIn10DaysAfterOvulation:v52];

LABEL_35:
        goto LABEL_15;
      }

      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        +[HDMCDailyAnalytics(Analysis) _setFertileWindowFieldsInMetric:analysis:profile:todayDayIndex:error:];
      }

      v56 = v45;
      v45 = v56;
      if (v56)
      {
        if (v60)
        {
          v57 = v56;
          *v60 = v45;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_55;
    }

    _HKInitializeLogging();
    v49 = v60;
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      +[HDMCDailyAnalytics(Analysis) _setFertileWindowFieldsInMetric:analysis:profile:todayDayIndex:error:];
    }

    v45 = v51;
    v42 = v59;
    if (!v45)
    {
      goto LABEL_56;
    }

LABEL_46:
    if (v49)
    {
      v55 = v45;
      *v49 = v45;
      goto LABEL_56;
    }

LABEL_48:
    _HKLogDroppedError();
    goto LABEL_56;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    +[HDMCDailyAnalytics(Analysis) _setFertileWindowFieldsInMetric:analysis:profile:todayDayIndex:error:];
  }

  v53 = v44;
  v45 = v53;
  if (!v53)
  {
LABEL_55:
    v42 = v59;
    goto LABEL_56;
  }

  v42 = v59;
  if (!v60)
  {
    goto LABEL_48;
  }

  v54 = v53;
  *v60 = v45;
LABEL_56:

LABEL_57:
  v46 = 0;
LABEL_58:

  return v46;
}

+ (id)_setCycleStatisticsFieldsInMetric:(id)a3 analysis:(id)a4 keyValueDomain:(id)a5 fertileWindowNotificationKeyValueDomain:(id)a6 todayDayIndex:(int64_t)a7 todayAsDate:(id)a8 gregorianCalendar:(id)a9 error:(id *)a10
{
  v14 = a10;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v58 = a8;
  v19 = a9;
  v20 = [v16 statistics];
  v21 = [v20 cycleLengthMedian];

  if (v21 && ([v21 doubleValue], v22 > 0.0))
  {
    v23 = v22;
    v55 = v18;
    v24 = [v16 lastLoggedDayIndex];

    if (v24)
    {
      v25 = [v16 lastLoggedDayIndex];
      v26 = [v25 integerValue];

      v27 = [MEMORY[0x277CCABB0] numberWithDouble:(a7 - v26) / v23];
      [v15 setNumberOfCyclesSinceLastDayOfLogging:v27];
    }

    v60 = 0;
    v28 = [v17 hdmc_lastLoggedInCycleTrackingDateWithError:&v60];
    v29 = v60;
    v30 = v29;
    if (!v28 && v29)
    {
      _HKInitializeLogging();
      v31 = v55;
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        +[HDMCDailyAnalytics(Analysis) _setCycleStatisticsFieldsInMetric:analysis:keyValueDomain:fertileWindowNotificationKeyValueDomain:todayDayIndex:todayAsDate:gregorianCalendar:error:];
      }

      if (a10)
      {
        v32 = v30;
        v14 = 0;
        *a10 = v30;
      }

      else
      {
        _HKLogDroppedError();
      }

      goto LABEL_23;
    }

    if (v28)
    {
      v41 = [v19 components:16 fromDate:v28 toDate:v58 options:0];
      v42 = v41;
      if (v41)
      {
        v43 = [MEMORY[0x277CCABB0] numberWithDouble:{objc_msgSend(v41, "day") / v23}];
        [v15 setNumberOfCyclesSinceLastDayOfLoggingInCycleTracking:v43];

        v14 = a10;
      }
    }

    v44 = v14;
    v57 = v17;
    v45 = [v16 statistics];
    v46 = [v45 cycleLengthLowerPercentile];

    if (v46)
    {
      v47 = MEMORY[0x277CCABB0];
      [v46 doubleValue];
      v49 = [v47 numberWithDouble:v48 / v23];
      [v15 setCycleLengthVariationLowerPercentile:v49];
    }

    v50 = [v16 statistics];
    v51 = [v50 cycleLengthUpperPercentile];

    if (v51)
    {
      v52 = MEMORY[0x277CCABB0];
      [v51 doubleValue];
      v54 = [v52 numberWithDouble:v53 / v23];
      [v15 setCycleLengthVariationUpperPercentile:v54];
    }

    v18 = v55;
    v14 = v44;
  }

  else
  {
    v57 = v17;
    v30 = 0;
  }

  v33 = v30;
  v59 = v30;
  v31 = v18;
  v34 = [v18 hdmc_updatedFertileWindowNotificationFireDateWithError:&v59];
  v30 = v59;

  if (v34 || !v30)
  {
    if (v34)
    {
      v37 = [MEMORY[0x277CCABB0] numberWithInteger:{a7 - objc_msgSend(v34, "hk_dayIndexWithCalendar:", v19)}];
      [v15 setNumberOfDaysSinceLastFiredUpdateFertileWindowNotification:v37];
    }

    v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "numberOfDailySleepHeartRateStatisticsForPast100Days")}];
    [v15 setNumberOfDailySleepHeartRateStatisticsForPast100Days:v38];

    v39 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "numberOfDailyAwakeHeartRateStatisticsForPast100Days")}];
    [v15 setNumberOfDailyAwakeHeartRateStatisticsForPast100Days:v39];

    v14 = v15;
    v17 = v57;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      +[HDMCDailyAnalytics(Analysis) _setCycleStatisticsFieldsInMetric:analysis:keyValueDomain:fertileWindowNotificationKeyValueDomain:todayDayIndex:todayAsDate:gregorianCalendar:error:];
    }

    v17 = v57;
    if (v14)
    {
      v35 = v30;
      v36 = v14;
      v14 = 0;
      *v36 = v30;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_23:

  return v14;
}

+ (id)_setPregnancyPropertiesInMetric:(id)a3 manager:(id)a4 todayAsDate:(id)a5 gregorianCalendar:(id)a6 error:(id *)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [a4 getCurrentPregnancyModel];
  v14 = v13;
  if (v13)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "state")}];
    [v10 setPregnancyModeState:v15];

    v16 = [v14 sample];

    if (v16)
    {
      v17 = MEMORY[0x277CCD5A0];
      v18 = [v14 sample];
      v19 = [v18 startDate];
      v20 = [MEMORY[0x277CBEBB0] localTimeZone];
      v21 = [v20 name];
      v22 = [v17 gestationalAgeInComponentsOnDate:v11 pregnancyStartDate:v19 startTimeZoneName:v21];

      v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v22, "weekOfMonth")}];
      [v10 setGestationalAge:v23];
    }

    v24 = [v14 educationalStepsCompletedDate];

    v25 = [MEMORY[0x277CCABB0] numberWithBool:v24 != 0];
    [v10 setHasOnboardedPregnancyMode:v25];

    if (v24)
    {
      v26 = [v14 educationalStepsCompletedDate];
      v27 = [MEMORY[0x277CBEAA8] now];
      v28 = [v12 components:0x2000 fromDate:v26 toDate:v27 options:0];

      v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v28, "weekOfYear")}];
      [v10 setWeeksSinceOnboardedPregnancyMode:v29];
    }
  }

  else
  {
    _HKInitializeLogging();
    v30 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      *v35 = 138543362;
      *&v35[4] = objc_opt_class();
      v32 = *&v35[4];
      _os_log_impl(&dword_2293D1000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] PregnancyProvider could not return a pregnancyModel", v35, 0xCu);
    }

    [v10 setHasOnboardedPregnancyMode:{MEMORY[0x277CBEC28], *v35}];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_daysWithWristTemperatureSamplesInDayIndexRange:(id)a3 profile:(id)a4 calendarCache:(id)a5 error:(id *)a6
{
  var1 = a3.var1;
  var0 = a3.var0;
  v10 = a4;
  v11 = a5;
  LOBYTE(v21) = 1;
  v12 = [[HDMCDaySummaryEnumerator alloc] initWithProfile:v10 calendarCache:v11 dayIndexRange:var0 ascending:var1 includeFactors:1 includeWristTemperature:0, v21];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v22[4] = &v24;
  v23 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __108__HDMCDailyAnalytics_Analysis___daysWithWristTemperatureSamplesInDayIndexRange_profile_calendarCache_error___block_invoke;
  v22[3] = &unk_27865A998;
  v13 = [(HDMCDaySummaryEnumerator *)v12 enumerateWithError:&v23 handler:v22];
  v14 = v23;
  v15 = v14;
  if (v13)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v25[3]];
  }

  else
  {
    v17 = v14;
    v18 = v17;
    if (v17)
    {
      if (a6)
      {
        v19 = v17;
        *a6 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v16;
}

void __108__HDMCDailyAnalytics_Analysis___daysWithWristTemperatureSamplesInDayIndexRange_profile_calendarCache_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 wristTemperature];

  if (v3)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (void)submitMetricWithError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving feature status for wrist temperature input: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)submitMetricWithError:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving feature status for deviation detection: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)submitMetricWithError:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving feature status for prediction improvements: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)submitMetricWithError:.cold.4()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving feature settings for menstrual cycles: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectDiagnosticFieldsForMetric:(uint64_t)a3 settingsManager:heartRateInputFeatureStatus:deviationDetectionFeatureStatus:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  v9 = a3;
  v6 = v5;
  _os_log_error_impl(&dword_2293D1000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving diagnostic onboarding metrics: %{public}@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_collectDiagnosticFieldsForMetric:(uint64_t)a3 settingsManager:heartRateInputFeatureStatus:deviationDetectionFeatureStatus:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_2_1(a1, a2, a3, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_2293D1000, v4, v5, "[%{public}@] Error computing days with wrist temperature samples 45 days before now and different bundle identifiers within the past 45 days: %{public}@");
}

- (void)_collectDiagnosticFieldsForMetric:(uint64_t)a3 settingsManager:heartRateInputFeatureStatus:deviationDetectionFeatureStatus:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.3(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_2_1(a1, a2, a3, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_2293D1000, v4, v5, "[%{public}@] Error computing days with wrist temperature samples 45 days before fertile window end: %{public}@");
}

- (void)_collectSensitiveFieldsForMetric:(void *)a1 settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v4 = 138543362;
  v5 = objc_opt_class();
  v2 = v5;
  _os_log_error_impl(&dword_2293D1000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to convert date of birth to a date", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving current sleep settings: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving sleep screen enabled status: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.4()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error setting fertile window fields in metric: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.5()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving medical ID data: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.6()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving feature status for sleeping wrist temperature: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.7()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving sleep event record: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.8()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error setting cycle factor reminder metrics: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.9()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving deviation detected metrics: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.10()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving deviation sample metrics: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.11()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Failed to set statistics and Heart Rate fields with error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.12()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Failed to read firstPartySleepSamplesPast48Hours with error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.13()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Failed to read anySleepSamplesPast48Hours with error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.14()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Failed to read biological sex with error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.15()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Failed to read date of birth with error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectSensitiveFieldsForMetric:settingsManager:menstrualCyclesSettings:heartRateInputFeatureStatus:deviationDetectionSettings:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.16()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  v4 = v0;
  _os_log_error_impl(&dword_2293D1000, v1, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get device contexts dictionary for HealthMenstrualCycles daily analytics: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end