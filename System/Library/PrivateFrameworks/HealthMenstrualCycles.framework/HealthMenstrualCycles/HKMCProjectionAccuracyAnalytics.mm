@interface HKMCProjectionAccuracyAnalytics
+ (BOOL)_isMetricEnabled;
+ (BOOL)shouldSubmit;
+ (id)_closestProjectionToLoggedDayIndex:(int64_t)index analysis:(id)analysis;
+ (id)_isSleepConfiguredForWristTemperatureMeasurementsWithError:(id *)error;
+ (void)submitMetricWithDayIndex:(int64_t)index oldMenstrualFlow:(int64_t)flow newMenstrualFlow:(int64_t)menstrualFlow analysis:(id)analysis isLoggingMultipleDays:(BOOL)days periodPredictionEnabled:(BOOL)enabled heartRateBasedPredictionEnabled:(BOOL)predictionEnabled wristTemperatureBasedPredictionEnabled:(BOOL)self0 isWristTemperatureInputDelivered:(BOOL)self1 internalLiveOnCycleFactorOverrideEnabled:(BOOL)self2 cycles:(id)self3;
@end

@implementation HKMCProjectionAccuracyAnalytics

+ (BOOL)shouldSubmit
{
  _isMetricEnabled = [self _isMetricEnabled];
  if (_isMetricEnabled)
  {

    LOBYTE(_isMetricEnabled) = [self _isAllowed];
  }

  return _isMetricEnabled;
}

+ (BOOL)_isMetricEnabled
{
  v2 = +[HKMCProjectionAccuracyMetric eventName];
  if (AnalyticsIsEventUsed())
  {
    hkmc_analyticsDebugModeEnabled = 1;
  }

  else
  {
    hkmc_menstrualCyclesDefaults = [MEMORY[0x277CBEBD0] hkmc_menstrualCyclesDefaults];
    hkmc_analyticsDebugModeEnabled = [hkmc_menstrualCyclesDefaults hkmc_analyticsDebugModeEnabled];
  }

  return hkmc_analyticsDebugModeEnabled;
}

+ (id)_closestProjectionToLoggedDayIndex:(int64_t)index analysis:(id)analysis
{
  menstruationProjections = [analysis menstruationProjections];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HKMCProjectionAccuracyAnalytics__closestProjectionToLoggedDayIndex_analysis___block_invoke;
  v8[3] = &__block_descriptor_40_e24_d16__0__HKMCProjection_8l;
  v8[4] = index;
  v6 = [menstruationProjections hk_firstObjectWithMinimumValueUsingEvaluationBlock:v8];

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

+ (void)submitMetricWithDayIndex:(int64_t)index oldMenstrualFlow:(int64_t)flow newMenstrualFlow:(int64_t)menstrualFlow analysis:(id)analysis isLoggingMultipleDays:(BOOL)days periodPredictionEnabled:(BOOL)enabled heartRateBasedPredictionEnabled:(BOOL)predictionEnabled wristTemperatureBasedPredictionEnabled:(BOOL)self0 isWristTemperatureInputDelivered:(BOOL)self1 internalLiveOnCycleFactorOverrideEnabled:(BOOL)self2 cycles:(id)self3
{
  v90 = *MEMORY[0x277D85DE8];
  analysisCopy = analysis;
  cyclesCopy = cycles;
  if ([self shouldSubmit])
  {
    daysCopy = days;
    menstruationProjections = [analysisCopy menstruationProjections];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __301__HKMCProjectionAccuracyAnalytics_submitMetricWithDayIndex_oldMenstrualFlow_newMenstrualFlow_analysis_isLoggingMultipleDays_periodPredictionEnabled_heartRateBasedPredictionEnabled_wristTemperatureBasedPredictionEnabled_isWristTemperatureInputDelivered_internalLiveOnCycleFactorOverrideEnabled_cycles___block_invoke;
    v83[3] = &__block_descriptor_40_e24_B16__0__HKMCProjection_8l;
    v83[4] = index;
    v21 = [menstruationProjections hk_firstObjectPassingTest:v83];

    mostLikelyDays = [v21 mostLikelyDays];
    v25 = index >= mostLikelyDays && index - mostLikelyDays < v23;
    v74 = v25;
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v73 = HKMCTodayIndex(hk_gregorianCalendar);

    if (cyclesCopy)
    {
      selfCopy = self;
      v28 = MEMORY[0x277CCABB0];
      v29 = [cyclesCopy count];
      if (v29)
      {
        firstObject = [cyclesCopy firstObject];
        self = [firstObject menstruationSegment];
        v30 = index - [self days] < 11;
      }

      else
      {
        v30 = 0;
      }

      v81 = [v28 numberWithInt:v30];
      if (v29)
      {
      }

      self = selfCopy;
    }

    else
    {
      v81 = 0;
    }

    v77 = cyclesCopy;
    enabledCopy = enabled;
    if (v21)
    {
      v38 = v21;
    }

    else
    {
      v38 = [self _closestProjectionToLoggedDayIndex:index analysis:analysisCopy];
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
        isPartiallyLogged = [v38 isPartiallyLogged];
        v82 = 0;
        v51 = [self _isSleepConfiguredForWristTemperatureMeasurementsWithError:&v82];
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
          BYTE3(v68) = overrideEnabled;
          BYTE2(v68) = [v51 BOOLValue];
          LOWORD(v68) = __PAIR16__(delivered, basedPredictionEnabled);
          BYTE2(v67) = daysCopy;
          BYTE1(v67) = predictionEnabled;
          LOBYTE(v67) = enabledCopy;
          v58 = [HKMCProjectionAccuracyMetric initWithOverlapMostLikelyDays:v55 overlapProjectedDays:"initWithOverlapMostLikelyDays:overlapProjectedDays:overlapNone:predictionPrimarySource:totalDayRange:partiallyLogged:periodPredictionEnabled:heartRateBasedPredictionEnabled:isLoggingMultipleDays:daysAgoLogged:isOngoingPeriod:activePairedWatchProductType:daysFromMostLikelyStart:daysFromMostLikelyEnd:daysFromProjectedStart:daysFromProjectedEnd:wristTemperatureBasedPredictionEnabled:isWristTemperatureInputDelivered:isSleepConfiguredForWristTemperatureMeasurements:internalLiveOnCycleFactorOverrideEnabled:" overlapNone:v74 predictionPrimarySource:v21 != 0 totalDayRange:v21 == 0 partiallyLogged:v48 periodPredictionEnabled:v50 heartRateBasedPredictionEnabled:isPartiallyLogged isLoggingMultipleDays:v67 daysAgoLogged:v73 - index isOngoingPeriod:v81 activePairedWatchProductType:v57 daysFromMostLikelyStart:v80 daysFromMostLikelyEnd:v79 daysFromProjectedStart:v78 daysFromProjectedEnd:v56 wristTemperatureBasedPredictionEnabled:v68 isWristTemperatureInputDelivered:? isSleepConfiguredForWristTemperatureMeasurements:? internalLiveOnCycleFactorOverrideEnabled:?];

          v59 = +[HKMCProjectionAccuracyMetric eventName];
          eventPayload = [(HKMCProjectionAccuracyMetric *)v58 eventPayload];
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

        cyclesCopy = v77;
        goto LABEL_34;
      }
    }

    v80 = [MEMORY[0x277CCABB0] numberWithInteger:{index - objc_msgSend(v38, "mostLikelyDays")}];
    v39 = MEMORY[0x277CCABB0];
    mostLikelyDays2 = [v38 mostLikelyDays];
    v42 = v41 + mostLikelyDays2 - 1;
    if (v41 <= 0)
    {
      v42 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v79 = [v39 numberWithInteger:index - v42];
    v78 = [MEMORY[0x277CCABB0] numberWithInteger:{index - objc_msgSend(v38, "allDays")}];
    v43 = MEMORY[0x277CCABB0];
    allDays = [v38 allDays];
    v46 = v45 + allDays - 1;
    if (v45 <= 0)
    {
      v46 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v47 = [v43 numberWithInteger:index - v46];
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
    v36 = [v34 numberWithBool:{objc_msgSend(self, "_isMetricEnabled")}];
    v37 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "_isAllowed")}];
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

+ (id)_isSleepConfiguredForWristTemperatureMeasurementsWithError:(id *)error
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
    sleepCoachingOnboardingFirstCompletedDate = [v5 sleepCoachingOnboardingFirstCompletedDate];
    sleepTrackingOnboardingFirstCompletedDate = [v5 sleepTrackingOnboardingFirstCompletedDate];
    v11 = sleepTrackingOnboardingFirstCompletedDate;
    if (sleepCoachingOnboardingFirstCompletedDate)
    {
      v12 = sleepTrackingOnboardingFirstCompletedDate == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      hasSleepFocusMode = 0;
    }

    else
    {
      hasSleepFocusMode = [v4 hasSleepFocusMode];
    }

    v16 = [MEMORY[0x277CCABB0] numberWithBool:hasSleepFocusMode];
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [HKMCProjectionAccuracyAnalytics _isSleepConfiguredForWristTemperatureMeasurementsWithError:v13];
    }

    if (error)
    {
      v15 = v7;
      v16 = 0;
      *error = v7;
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