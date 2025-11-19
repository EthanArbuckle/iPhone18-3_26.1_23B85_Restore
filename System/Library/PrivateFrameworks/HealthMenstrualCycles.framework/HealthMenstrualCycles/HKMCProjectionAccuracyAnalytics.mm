@interface HKMCProjectionAccuracyAnalytics
+ (BOOL)_isMetricEnabled;
+ (BOOL)shouldSubmit;
+ (id)_closestProjectionToLoggedDayIndex:(int64_t)a3 analysis:(id)a4;
+ (id)_isSleepConfiguredForWristTemperatureMeasurementsWithError:(id *)a3;
+ (void)submitMetricWithDayIndex:(int64_t)a3 oldMenstrualFlow:(int64_t)a4 newMenstrualFlow:(int64_t)a5 analysis:(id)a6 isLoggingMultipleDays:(BOOL)a7 periodPredictionEnabled:(BOOL)a8 heartRateBasedPredictionEnabled:(BOOL)a9 wristTemperatureBasedPredictionEnabled:(BOOL)a10 isWristTemperatureInputDelivered:(BOOL)a11 internalLiveOnCycleFactorOverrideEnabled:(BOOL)a12 cycles:(id)a13;
@end

@implementation HKMCProjectionAccuracyAnalytics

+ (BOOL)shouldSubmit
{
  v3 = [a1 _isMetricEnabled];
  if (v3)
  {

    LOBYTE(v3) = [a1 _isAllowed];
  }

  return v3;
}

+ (BOOL)_isMetricEnabled
{
  v2 = +[HKMCProjectionAccuracyMetric eventName];
  if (AnalyticsIsEventUsed())
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x277CBEBD0] hkmc_menstrualCyclesDefaults];
    v3 = [v4 hkmc_analyticsDebugModeEnabled];
  }

  return v3;
}

+ (id)_closestProjectionToLoggedDayIndex:(int64_t)a3 analysis:(id)a4
{
  v5 = [a4 menstruationProjections];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HKMCProjectionAccuracyAnalytics__closestProjectionToLoggedDayIndex_analysis___block_invoke;
  v8[3] = &__block_descriptor_40_e24_d16__0__HKMCProjection_8l;
  v8[4] = a3;
  v6 = [v5 hk_firstObjectWithMinimumValueUsingEvaluationBlock:v8];

  return v6;
}

double __79__HKMCProjectionAccuracyAnalytics__closestProjectionToLoggedDayIndex_analysis___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mostLikelyDays] - *(a1 + 32);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  return v2;
}

+ (void)submitMetricWithDayIndex:(int64_t)a3 oldMenstrualFlow:(int64_t)a4 newMenstrualFlow:(int64_t)a5 analysis:(id)a6 isLoggingMultipleDays:(BOOL)a7 periodPredictionEnabled:(BOOL)a8 heartRateBasedPredictionEnabled:(BOOL)a9 wristTemperatureBasedPredictionEnabled:(BOOL)a10 isWristTemperatureInputDelivered:(BOOL)a11 internalLiveOnCycleFactorOverrideEnabled:(BOOL)a12 cycles:(id)a13
{
  v90 = *MEMORY[0x277D85DE8];
  v18 = a6;
  v19 = a13;
  if ([a1 shouldSubmit])
  {
    v75 = a7;
    v20 = [v18 menstruationProjections];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __301__HKMCProjectionAccuracyAnalytics_submitMetricWithDayIndex_oldMenstrualFlow_newMenstrualFlow_analysis_isLoggingMultipleDays_periodPredictionEnabled_heartRateBasedPredictionEnabled_wristTemperatureBasedPredictionEnabled_isWristTemperatureInputDelivered_internalLiveOnCycleFactorOverrideEnabled_cycles___block_invoke;
    v83[3] = &__block_descriptor_40_e24_B16__0__HKMCProjection_8l;
    v83[4] = a3;
    v21 = [v20 hk_firstObjectPassingTest:v83];

    v22 = [v21 mostLikelyDays];
    v25 = a3 >= v22 && a3 - v22 < v23;
    v74 = v25;
    v26 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v73 = HKMCTodayIndex(v26);

    if (v19)
    {
      v27 = a1;
      v28 = MEMORY[0x277CCABB0];
      v29 = [v19 count];
      if (v29)
      {
        v13 = [v19 firstObject];
        a1 = [v13 menstruationSegment];
        v30 = a3 - [a1 days] < 11;
      }

      else
      {
        v30 = 0;
      }

      v81 = [v28 numberWithInt:v30];
      if (v29)
      {
      }

      a1 = v27;
    }

    else
    {
      v81 = 0;
    }

    v77 = v19;
    v76 = a8;
    if (v21)
    {
      v38 = v21;
    }

    else
    {
      v38 = [a1 _closestProjectionToLoggedDayIndex:a3 analysis:v18];
      if (!v38)
      {
        v47 = 0;
        v78 = 0;
        v79 = 0;
        v80 = 0;
LABEL_26:
        v48 = NSStringFromPredictionPrimarySource([v38 predictionPrimarySource]);
        [v38 allDays];
        v50 = v49;
        v72 = [v38 isPartiallyLogged];
        v82 = 0;
        v51 = [a1 _isSleepConfiguredForWristTemperatureMeasurementsWithError:&v82];
        v52 = v82;
        v53 = v52;
        if (v51 || !v52)
        {
          v69 = v52;
          v71 = v21;
          v55 = [HKMCProjectionAccuracyMetric alloc];
          HKMCActiveWatchPairedProductType();
          v57 = v56 = v47;
          v70 = v51;
          BYTE3(v68) = a12;
          BYTE2(v68) = [v51 BOOLValue];
          LOWORD(v68) = __PAIR16__(a11, a10);
          BYTE2(v67) = v75;
          BYTE1(v67) = a9;
          LOBYTE(v67) = v76;
          v58 = [HKMCProjectionAccuracyMetric initWithOverlapMostLikelyDays:v55 overlapProjectedDays:"initWithOverlapMostLikelyDays:overlapProjectedDays:overlapNone:predictionPrimarySource:totalDayRange:partiallyLogged:periodPredictionEnabled:heartRateBasedPredictionEnabled:isLoggingMultipleDays:daysAgoLogged:isOngoingPeriod:activePairedWatchProductType:daysFromMostLikelyStart:daysFromMostLikelyEnd:daysFromProjectedStart:daysFromProjectedEnd:wristTemperatureBasedPredictionEnabled:isWristTemperatureInputDelivered:isSleepConfiguredForWristTemperatureMeasurements:internalLiveOnCycleFactorOverrideEnabled:" overlapNone:v74 predictionPrimarySource:v21 != 0 totalDayRange:v21 == 0 partiallyLogged:v48 periodPredictionEnabled:v50 heartRateBasedPredictionEnabled:v72 isLoggingMultipleDays:v67 daysAgoLogged:v73 - a3 isOngoingPeriod:v81 activePairedWatchProductType:v57 daysFromMostLikelyStart:v80 daysFromMostLikelyEnd:v79 daysFromProjectedStart:v78 daysFromProjectedEnd:v56 wristTemperatureBasedPredictionEnabled:v68 isWristTemperatureInputDelivered:? isSleepConfiguredForWristTemperatureMeasurements:? internalLiveOnCycleFactorOverrideEnabled:?];

          v59 = +[HKMCProjectionAccuracyMetric eventName];
          v60 = [(HKMCProjectionAccuracyMetric *)v58 eventPayload];
          AnalyticsSendEvent();

          _HKInitializeLogging();
          v61 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
          {
            v62 = v61;
            v63 = objc_opt_class();
            v64 = v63;
            v65 = HKSensitiveLogItem();
            *buf = 138543618;
            v85 = v63;
            v86 = 2114;
            v87 = v65;
            _os_log_impl(&dword_2518FC000, v62, OS_LOG_TYPE_DEFAULT, "[%{public}@] Submitted metric %{public}@", buf, 0x16u);
          }

          v21 = v71;
          v47 = v56;
          v53 = v69;
          v51 = v70;
        }

        else
        {
          _HKInitializeLogging();
          v54 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
          {
            [HKMCProjectionAccuracyAnalytics submitMetricWithDayIndex:v54 oldMenstrualFlow:? newMenstrualFlow:? analysis:? isLoggingMultipleDays:? periodPredictionEnabled:? heartRateBasedPredictionEnabled:? wristTemperatureBasedPredictionEnabled:? isWristTemperatureInputDelivered:? internalLiveOnCycleFactorOverrideEnabled:? cycles:?];
          }
        }

        v19 = v77;
        goto LABEL_34;
      }
    }

    v80 = [MEMORY[0x277CCABB0] numberWithInteger:{a3 - objc_msgSend(v38, "mostLikelyDays")}];
    v39 = MEMORY[0x277CCABB0];
    v40 = [v38 mostLikelyDays];
    v42 = v41 + v40 - 1;
    if (v41 <= 0)
    {
      v42 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v79 = [v39 numberWithInteger:a3 - v42];
    v78 = [MEMORY[0x277CCABB0] numberWithInteger:{a3 - objc_msgSend(v38, "allDays")}];
    v43 = MEMORY[0x277CCABB0];
    v44 = [v38 allDays];
    v46 = v45 + v44 - 1;
    if (v45 <= 0)
    {
      v46 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v47 = [v43 numberWithInteger:a3 - v46];
    goto LABEL_26;
  }

  _HKInitializeLogging();
  v31 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v32 = v31;
    v33 = objc_opt_class();
    v34 = MEMORY[0x277CCABB0];
    v35 = v33;
    v36 = [v34 numberWithBool:{objc_msgSend(a1, "_isMetricEnabled")}];
    v37 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "_isAllowed")}];
    *buf = 138543874;
    v85 = v33;
    v86 = 2114;
    v87 = v36;
    v88 = 2114;
    v89 = v37;
    _os_log_impl(&dword_2518FC000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping submitting metric. isMetricEnabled: %{public}@, isHealthDataSubmissionAllowed: %{public}@", buf, 0x20u);
  }

LABEL_34:

  v66 = *MEMORY[0x277D85DE8];
}

BOOL __301__HKMCProjectionAccuracyAnalytics_submitMetricWithDayIndex_oldMenstrualFlow_newMenstrualFlow_analysis_isLoggingMultipleDays_periodPredictionEnabled_heartRateBasedPredictionEnabled_wristTemperatureBasedPredictionEnabled_isWristTemperatureInputDelivered_internalLiveOnCycleFactorOverrideEnabled_cycles___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 allDays];
  return v2 >= v3 && v2 - v3 < v4;
}

+ (id)_isSleepConfiguredForWristTemperatureMeasurementsWithError:(id *)a3
{
  v4 = [objc_alloc(MEMORY[0x277D62528]) initWithIdentifier:@"HKMCProjectionAccuracyAnalytics" healthStore:0 options:2];
  v19 = 0;
  v5 = [v4 currentSleepEventRecordWithError:&v19];
  v6 = v19;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v9 = [v5 sleepCoachingOnboardingFirstCompletedDate];
    v10 = [v5 sleepTrackingOnboardingFirstCompletedDate];
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v17 = 0;
    }

    else
    {
      v17 = [v4 hasSleepFocusMode];
    }

    v16 = [MEMORY[0x277CCABB0] numberWithBool:v17];
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [HKMCProjectionAccuracyAnalytics _isSleepConfiguredForWristTemperatureMeasurementsWithError:v13];
    }

    if (a3)
    {
      v15 = v7;
      v16 = 0;
      *a3 = v7;
    }

    else
    {
      _HKLogDroppedError();
      v16 = 0;
    }
  }

  return v16;
}

+ (void)submitMetricWithDayIndex:(void *)a1 oldMenstrualFlow:newMenstrualFlow:analysis:isLoggingMultipleDays:periodPredictionEnabled:heartRateBasedPredictionEnabled:wristTemperatureBasedPredictionEnabled:isWristTemperatureInputDelivered:internalLiveOnCycleFactorOverrideEnabled:cycles:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v4, v5, "[%{public}@] Error computing if sleep is configured for wrist temperature: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)_isSleepConfiguredForWristTemperatureMeasurementsWithError:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v4, v5, "[%{public}@] Error retrieving sleep event record: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end