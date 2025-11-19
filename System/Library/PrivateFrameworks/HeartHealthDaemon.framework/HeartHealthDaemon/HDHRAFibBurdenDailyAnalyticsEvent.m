@interface HDHRAFibBurdenDailyAnalyticsEvent
- (HDHRAFibBurdenDailyAnalyticsEvent)initWithProfile:(id)a3;
- (HDHRAFibBurdenDailyAnalyticsEvent)initWithProfile:(id)a3 notificationsAuthorizedProvider:(id)a4;
- (id)_determineIfSamplesOverlappingSample:(id)a3 dataSource:(id)a4;
- (id)_numberOfSamplesOfType:(id)a3 dateInterval:(id)a4 additionalPredicate:(id)a5 bucketer:(id)a6;
- (id)_sedentaryAndBackgroundHeartRateContextPredicate;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (int64_t)_bucketedBurdenValueForSample:(id)a3;
- (int64_t)_bucketedWeeksSinceDate:(id)a3 dataSource:(id)a4;
- (int64_t)_daysSinceDate:(id)a3 dataSource:(id)a4;
- (int64_t)_daysSinceDate:(id)a3 maximum:(id)a4 dataSource:(id)a5;
- (void)_extractAFibBurdenFeatureStatusPropertiesFromDataSource:(id)a3 payload:(id)a4;
- (void)_extractBucketedDaysSinceLastSampleOfType:(id)a3 intoProperty:(id)a4 inPayload:(id)a5 dataSource:(id)a6;
- (void)_extractBurdenSamplePropertiesIntoPayload:(id)a3 dataSource:(id)a4;
- (void)_extractDaysSinceDateInKeyValueDomain:(id)a3 withKey:(id)a4 intoProperty:(id)a5 inPayload:(id)a6 dataSource:(id)a7;
- (void)_extractFeatureStatusPropertiesForFeatureIdentifier:(id)a3 payload:(id)a4 dataSource:(id)a5 ifOnboardedBlock:(id)a6 ifUsageRequirementsEvaluationPresentBlock:(id)a7 ifErrorRetrievingFeatureStatusBlock:(id)a8;
- (void)_extractIRNFeatureStatusPropertiesFromDataSource:(id)a3 payload:(id)a4;
- (void)_extractWatchWearPropertiesIntoPayload:(id)a3 dataSource:(id)a4;
@end

@implementation HDHRAFibBurdenDailyAnalyticsEvent

- (HDHRAFibBurdenDailyAnalyticsEvent)initWithProfile:(id)a3
{
  v4 = a3;
  v5 = [v4 notificationManager];
  v6 = [(HDHRAFibBurdenDailyAnalyticsEvent *)self initWithProfile:v4 notificationsAuthorizedProvider:v5];

  return v6;
}

- (HDHRAFibBurdenDailyAnalyticsEvent)initWithProfile:(id)a3 notificationsAuthorizedProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HDHRAFibBurdenDailyAnalyticsEvent;
  v8 = [(HDHRAFibBurdenDailyAnalyticsEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    objc_storeStrong(&v9->_notificationsAuthorizedProvider, a4);
  }

  return v9;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [v5 environmentDataSource];
  v8 = [v7 activePairedDeviceProductType];

  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCB7B8]];
  }

  v9 = [v5 healthDataSource];
  v35 = 0;
  v10 = [v9 biologicalSexWithError:&v35];
  v11 = v35;

  if (v11)
  {
    _HKInitializeLogging();
    v12 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [HDHRAFibBurdenDailyAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v13 = *MEMORY[0x277CCB800];
    v14 = *MEMORY[0x277CCB7D0];
    v15 = v6;
    goto LABEL_9;
  }

  if (v10)
  {
    v11 = HKAnalyticsPropertyValueForBiologicalSex();
    v14 = *MEMORY[0x277CCB7D0];
    v15 = v6;
    v13 = v11;
LABEL_9:
    [v15 setObject:v13 forKeyedSubscript:v14];
    goto LABEL_10;
  }

  _HKInitializeLogging();
  v11 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    [HDHRAFibBurdenDailyAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
  }

LABEL_10:

  v16 = [v5 healthDataSource];
  v17 = [v5 environmentDataSource];
  v18 = [v17 currentDate];
  v34 = 0;
  v19 = [v16 ageWithCurrentDate:v18 error:&v34];
  v20 = v34;

  if (v20)
  {
    _HKInitializeLogging();
    v21 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [HDHRAFibBurdenDailyAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v22 = *MEMORY[0x277CCB7A0];
  }

  else
  {
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE208]];
    v22 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAge();

    v20 = v22;
    if (!v19)
    {
      goto LABEL_16;
    }
  }

  [v6 setObject:v22 forKeyedSubscript:*MEMORY[0x277CCB7C0]];
  v22 = v20;
LABEL_16:

  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractAFibBurdenFeatureStatusPropertiesFromDataSource:v5 payload:v6];
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractIRNFeatureStatusPropertiesFromDataSource:v5 payload:v6];
  v24 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v26 = [v24 hdhr_aFibBurdenProtectedSyncedDomainForProfile:WeakRetained];

  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractDaysSinceDateInKeyValueDomain:v26 withKey:*MEMORY[0x277D12EB0] intoProperty:@"numberOfDaysSinceLastAnalysis" inPayload:v6 dataSource:v5];
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractDaysSinceDateInKeyValueDomain:v26 withKey:*MEMORY[0x277D12EB8] intoProperty:@"numberOfDaysSinceLastNotification" inPayload:v6 dataSource:v5];
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractBurdenSamplePropertiesIntoPayload:v6 dataSource:v5];
  v27 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractBucketedDaysSinceLastSampleOfType:v27 intoProperty:@"numberOfDaysSinceLastSleepEntry" inPayload:v6 dataSource:v5];

  v28 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBD8]];
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractBucketedDaysSinceLastSampleOfType:v28 intoProperty:@"numberOfDaysSinceLastAlcoholicDrinksEntry" inPayload:v6 dataSource:v5];

  v29 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA30]];
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractBucketedDaysSinceLastSampleOfType:v29 intoProperty:@"numberOfDaysSinceLastMindfulMinutesEntry" inPayload:v6 dataSource:v5];

  v30 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC990]];
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractBucketedDaysSinceLastSampleOfType:v30 intoProperty:@"numberOfDaysSinceLastBodyMassEntry" inPayload:v6 dataSource:v5];

  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractWatchWearPropertiesIntoPayload:v6 dataSource:v5];
  v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDHRAFibBurdenAnalyticsEventHealthAppNotificationsAuthorizedProvider areHealthNotificationsAuthorized](self->_notificationsAuthorizedProvider, "areHealthNotificationsAuthorized")}];
  [v6 setObject:v31 forKeyedSubscript:*MEMORY[0x277CCB7C8]];

  v32 = [v6 copy];

  return v32;
}

- (void)_extractAFibBurdenFeatureStatusPropertiesFromDataSource:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = *MEMORY[0x277CCBFF0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __101__HDHRAFibBurdenDailyAnalyticsEvent__extractAFibBurdenFeatureStatusPropertiesFromDataSource_payload___block_invoke;
  v9[3] = &unk_278660498;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractFeatureStatusPropertiesForFeatureIdentifier:v7 payload:a4 dataSource:v8 ifOnboardedBlock:v9 ifUsageRequirementsEvaluationPresentBlock:&__block_literal_global_6 ifErrorRetrievingFeatureStatusBlock:&__block_literal_global_363];
}

void __101__HDHRAFibBurdenDailyAnalyticsEvent__extractAFibBurdenFeatureStatusPropertiesFromDataSource_payload___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [v16 featureSettings];
  v7 = [v6 numberForKey:*MEMORY[0x277CCC120]];

  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"isBurdenSettingEnabled"];
  }

  v8 = [v16 featureSettings];
  v9 = [v8 numberForKey:*MEMORY[0x277D12EF8]];

  if (v7)
  {
    [v5 setObject:v9 forKeyedSubscript:@"isWeeklyNotificationSettingEnabled"];
  }

  v10 = [v16 onboardingCompletion];
  v11 = MEMORY[0x277CCABB0];
  v12 = *(a1 + 32);
  v13 = [v10 completionDate];
  v14 = [v11 numberWithInteger:{objc_msgSend(v12, "_bucketedWeeksSinceDate:dataSource:", v13, *(a1 + 40))}];
  [v5 setObject:v14 forKeyedSubscript:@"weeksSinceOnboardedBurden"];

  [v10 version];
  v15 = HKHRAFibBurdenAnalyticsPropertyValueForVersion();
  [v5 setObject:v15 forKeyedSubscript:@"versionBurden"];
}

void __101__HDHRAFibBurdenDailyAnalyticsEvent__extractAFibBurdenFeatureStatusPropertiesFromDataSource_payload___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{objc_msgSend(a2, "areAllRequirementsSatisfied")}];
  [v5 setObject:v6 forKeyedSubscript:@"isBurdenFeatureEnabled"];
}

void __101__HDHRAFibBurdenDailyAnalyticsEvent__extractAFibBurdenFeatureStatusPropertiesFromDataSource_payload___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277CCB798];
  v4 = a2;
  [v4 setObject:v2 forKeyedSubscript:@"isBurdenSettingEnabled"];
  [v4 setObject:v2 forKeyedSubscript:@"isWeeklyNotificationSettingEnabled"];
  v3 = *MEMORY[0x277CCB7A0];
  [v4 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:@"isBurdenFeatureEnabled"];
  [v4 setObject:v3 forKeyedSubscript:@"weeksSinceOnboardedBurden"];
  [v4 setObject:*MEMORY[0x277CCB800] forKeyedSubscript:@"versionBurden"];
}

- (void)_extractIRNFeatureStatusPropertiesFromDataSource:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = *MEMORY[0x277CCC070];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__HDHRAFibBurdenDailyAnalyticsEvent__extractIRNFeatureStatusPropertiesFromDataSource_payload___block_invoke;
  v9[3] = &unk_278660498;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractFeatureStatusPropertiesForFeatureIdentifier:v7 payload:a4 dataSource:v8 ifOnboardedBlock:v9 ifUsageRequirementsEvaluationPresentBlock:&__block_literal_global_365 ifErrorRetrievingFeatureStatusBlock:&__block_literal_global_367_0];
}

void __94__HDHRAFibBurdenDailyAnalyticsEvent__extractIRNFeatureStatusPropertiesFromDataSource_payload___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v10 = [a2 onboardingCompletion];
  v6 = MEMORY[0x277CCABB0];
  v7 = *(a1 + 32);
  v8 = [v10 completionDate];
  v9 = [v6 numberWithInteger:{objc_msgSend(v7, "_bucketedWeeksSinceDate:dataSource:", v8, *(a1 + 40))}];
  [v5 setObject:v9 forKeyedSubscript:@"weeksSinceOnboardedIRN"];
}

void __94__HDHRAFibBurdenDailyAnalyticsEvent__extractIRNFeatureStatusPropertiesFromDataSource_payload___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{objc_msgSend(a2, "areAllRequirementsSatisfied")}];
  [v5 setObject:v6 forKeyedSubscript:@"isIRNEnabled"];
}

void __94__HDHRAFibBurdenDailyAnalyticsEvent__extractIRNFeatureStatusPropertiesFromDataSource_payload___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277CCB798];
  v3 = a2;
  [v3 setObject:v2 forKeyedSubscript:@"isIRNEnabled"];
  [v3 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:@"weeksSinceOnboardedIRN"];
}

- (void)_extractFeatureStatusPropertiesForFeatureIdentifier:(id)a3 payload:(id)a4 dataSource:(id)a5 ifOnboardedBlock:(id)a6 ifUsageRequirementsEvaluationPresentBlock:(id)a7 ifErrorRetrievingFeatureStatusBlock:(id)a8
{
  v50 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [a5 healthDataSource];
  v20 = [v19 featureStatusProviderForIdentifier:v14];

  if (v20)
  {
    v43 = 0;
    v21 = [v20 featureStatusWithError:&v43];
    v22 = v43;
    v23 = v22;
    if (!v21)
    {
      _HKInitializeLogging();
      v38 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v45 = self;
        v46 = 2114;
        v47 = v14;
        v48 = 2114;
        v49 = v23;
        _os_log_error_impl(&dword_229486000, v38, OS_LOG_TYPE_ERROR, "[%{public}@] Error when retrieving feature status for %{public}@: %{public}@", buf, 0x20u);
      }

      v18[2](v18, v15);
      goto LABEL_18;
    }

    v42 = v22;
    v24 = [v21 onboardingRecord];
    v25 = [v24 onboardingCompletion];
    if (v25)
    {
      v26 = v25;
      [v21 onboardingRecord];
      v27 = v18;
      v28 = v14;
      v29 = v15;
      v30 = v16;
      v32 = v31 = v17;
      v41 = v21;
      v33 = [v32 onboardingState];

      v17 = v31;
      v16 = v30;
      v15 = v29;
      v14 = v28;
      v18 = v27;

      v34 = v33 == 3;
      v21 = v41;
      v23 = v42;
      if (v34)
      {
LABEL_18:

        goto LABEL_19;
      }

      v35 = [v41 onboardingRecord];
      v16[2](v16, v35, v15);

      v36 = [v41 requirementsEvaluationByContext];
      v24 = [v36 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];

      if (v24)
      {
        v17[2](v17, v24, v15);
      }

      else
      {
        _HKInitializeLogging();
        v39 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          [HDHRAFibBurdenDailyAnalyticsEvent _extractFeatureStatusPropertiesForFeatureIdentifier:payload:dataSource:ifOnboardedBlock:ifUsageRequirementsEvaluationPresentBlock:ifErrorRetrievingFeatureStatusBlock:];
        }
      }

      v21 = v41;
    }

    v23 = v42;
    goto LABEL_18;
  }

  _HKInitializeLogging();
  v37 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
  {
    [HDHRAFibBurdenDailyAnalyticsEvent _extractFeatureStatusPropertiesForFeatureIdentifier:payload:dataSource:ifOnboardedBlock:ifUsageRequirementsEvaluationPresentBlock:ifErrorRetrievingFeatureStatusBlock:];
  }

  v18[2](v18, v15);
LABEL_19:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_extractDaysSinceDateInKeyValueDomain:(id)a3 withKey:(id)a4 intoProperty:(id)a5 inPayload:(id)a6 dataSource:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v17 = 0;
  v15 = [a3 dateForKey:a4 error:&v17];
  if (v15)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDHRAFibBurdenDailyAnalyticsEvent _daysSinceDate:maximum:dataSource:](self, "_daysSinceDate:maximum:dataSource:", v15, &unk_283CD2848, v14)}];
    [v13 setObject:v16 forKeyedSubscript:v12];
  }

  else if (v17)
  {
    [v13 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:v12];
  }
}

- (void)_extractBurdenSamplePropertiesIntoPayload:(id)a3 dataSource:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC950]];
  v9 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v36 = 0;
  v11 = [v9 mostRecentSampleWithType:v8 profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v36];
  v12 = v36;

  if (v11)
  {
    v33 = v12;
    v34 = v8;
    v13 = MEMORY[0x277CCABB0];
    v14 = [v11 _creationDate];
    v15 = [v13 numberWithInteger:{-[HDHRAFibBurdenDailyAnalyticsEvent _daysSinceDate:maximum:dataSource:](self, "_daysSinceDate:maximum:dataSource:", v14, &unk_283CD2848, v7)}];
    v35 = v6;
    [v6 setObject:v15 forKeyedSubscript:@"numberOfDaysSinceLastSample"];

    v16 = [v7 environmentDataSource];
    v17 = [v16 calendarCache];
    v18 = [v11 _timeZone];
    v19 = [v17 calendarForTimeZone:v18];

    v20 = [v11 hk_dayIndexRangeWithCalendar:v19];
    v22 = v21;
    v23 = [v7 environmentDataSource];
    v24 = [v23 currentDate];
    v25 = HKHRAFibBurdenPreviousWeekDayIndexRange();
    v27 = v26;

    if (v20 == v25 && v22 - 1 == v27)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDHRAFibBurdenDailyAnalyticsEvent _bucketedBurdenValueForSample:](self, "_bucketedBurdenValueForSample:", v11)}];
      v6 = v35;
      [v35 setObject:v28 forKeyedSubscript:@"previousWeekBurdenValue"];

      v29 = [(HDHRAFibBurdenDailyAnalyticsEvent *)self _determineIfSamplesOverlappingSample:v11 dataSource:v7];
      [v35 setObject:v29 forKeyedSubscript:@"previousWeekHasOverlappingSamples"];
    }

    else
    {
      _HKInitializeLogging();
      v29 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v38 = self;
        _os_log_impl(&dword_229486000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Most recent sample not for previous calendar week", buf, 0xCu);
      }

      v6 = v35;
    }

    v12 = v33;

    v8 = v34;
  }

  else if (v12)
  {
    _HKInitializeLogging();
    v30 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [HDHRAFibBurdenDailyAnalyticsEvent _extractBurdenSamplePropertiesIntoPayload:dataSource:];
    }

    v31 = *MEMORY[0x277CCB7A0];
    [v6 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:@"numberOfDaysSinceLastSample"];
    [v6 setObject:v31 forKeyedSubscript:@"previousWeekBurdenValue"];
    [v6 setObject:*MEMORY[0x277CCB798] forKeyedSubscript:@"previousWeekHasOverlappingSamples"];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_determineIfSamplesOverlappingSample:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = [a4 environmentDataSource];
  v8 = [v7 calendarCache];
  v9 = [v6 _timeZone];
  v10 = [v8 calendarForTimeZone:v9];

  v11 = [v6 startDate];
  v12 = [v11 hk_dayIndexWithCalendar:v10];

  v13 = [v6 endDate];
  v14 = [v13 hk_dayIndexWithCalendar:v10];

  v15 = [MEMORY[0x277CBEAA8] hk_earliestPossibleDateWithDayIndex:v12];
  v16 = [MEMORY[0x277CBEAA8] hk_latestPossibleDateWithDayIndex:v14];
  v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v15 endDate:v16];
  v18 = MEMORY[0x277D10848];
  v19 = [v6 quantityType];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v21 = [v6 quantityType];

  v22 = HDSampleEntityPredicateForDateInterval();
  v30 = 0;
  v23 = [v18 samplesWithType:v19 profile:WeakRetained encodingOptions:0 predicate:v22 limit:2 anchor:0 error:&v30];
  v24 = v30;

  if (v23)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v23, "count") > 1}];
  }

  else
  {
    _HKInitializeLogging();
    v26 = HKHRAFibBurdenLogForCategory();
    v27 = v26;
    if (v24)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [HDHRAFibBurdenDailyAnalyticsEvent _determineIfSamplesOverlappingSample:dataSource:];
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      [HDHRAFibBurdenDailyAnalyticsEvent _determineIfSamplesOverlappingSample:dataSource:];
    }

    v25 = *MEMORY[0x277CCB798];
  }

  v28 = v25;

  return v28;
}

- (void)_extractBucketedDaysSinceLastSampleOfType:(id)a3 intoProperty:(id)a4 inPayload:(id)a5 dataSource:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v26 = 0;
  v16 = [v14 mostRecentSampleWithType:v10 profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v26];
  v17 = v26;

  if (v16)
  {
    v18 = [v16 startDate];
    v19 = [(HDHRAFibBurdenDailyAnalyticsEvent *)self _daysSinceDate:v18 dataSource:v13];

    v20 = *MEMORY[0x277CCB7A0];
    v21 = v20;
    if (v19)
    {
      if (v19 == 1)
      {
        v22 = &unk_283CD2878;
      }

      else if ((v19 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v22 = &unk_283CD2890;
      }

      else if ((v19 & 0xFFFFFFFFFFFFFFFCLL) == 4)
      {
        v22 = &unk_283CD28A8;
      }

      else if ((v19 - 8) >= 7)
      {
        if ((v19 - 15) >= 7)
        {
          if ((v19 - 22) >= 7)
          {
            if ((v19 - 29) >= 0x20)
            {
              if ((v19 - 61) >= 0x1E)
              {
                if (v19 < 91)
                {
LABEL_27:
                  [v12 setObject:v21 forKeyedSubscript:v11];

                  goto LABEL_28;
                }

                v22 = &unk_283CD2938;
              }

              else
              {
                v22 = &unk_283CD2920;
              }
            }

            else
            {
              v22 = &unk_283CD2908;
            }
          }

          else
          {
            v22 = &unk_283CD28F0;
          }
        }

        else
        {
          v22 = &unk_283CD28D8;
        }
      }

      else
      {
        v22 = &unk_283CD28C0;
      }
    }

    else
    {
      v22 = &unk_283CD2860;
    }

    v21 = v22;
    goto LABEL_27;
  }

  if (v17)
  {
    _HKInitializeLogging();
    v23 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [v10 identifier];
      *buf = 138543874;
      v28 = self;
      v29 = 2114;
      v30 = v24;
      v31 = 2114;
      v32 = v17;
      _os_log_error_impl(&dword_229486000, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Error when retrieving sample of type %{public}@: %{public}@", buf, 0x20u);
    }

    [v12 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:v11];
  }

LABEL_28:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_extractWatchWearPropertiesIntoPayload:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 environmentDataSource];
  v9 = [v8 calendarCache];
  v10 = [v9 currentCalendar];

  v11 = [v7 environmentDataSource];

  v12 = [v11 currentDate];

  v13 = [v10 dateByAddingUnit:16 value:-1 toDate:v12 options:0];
  v14 = objc_alloc(MEMORY[0x277CCA970]);
  v15 = [v10 startOfDayForDate:v13];
  v16 = [v10 startOfDayForDate:v12];
  v17 = [v14 initWithStartDate:v15 endDate:v16];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "component:fromDate:", 512, v13)}];
  [v6 setObject:v18 forKeyedSubscript:@"previousCalendarDayOfWeek"];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v31[5] = 0;
  v20 = HDAnalyticsBucketedNumberOfStandAndIdleHours();
  v21 = 0;

  if (!v20)
  {
    _HKInitializeLogging();
    v22 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [HDHRAFibBurdenDailyAnalyticsEvent _extractWatchWearPropertiesIntoPayload:dataSource:];
    }

    v20 = *MEMORY[0x277CCB7A0];
  }

  [v6 setObject:v20 forKeyedSubscript:@"numberOfStandHoursInPreviousCalendarDay"];
  [MEMORY[0x277CCD920] heartbeatSeriesType];
  v29 = v21;
  v24 = v23 = v6;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __87__HDHRAFibBurdenDailyAnalyticsEvent__extractWatchWearPropertiesIntoPayload_dataSource___block_invoke;
  v31[3] = &unk_278660500;
  v31[4] = self;
  v25 = [(HDHRAFibBurdenDailyAnalyticsEvent *)self _numberOfSamplesOfType:v24 dateInterval:v17 additionalPredicate:0 bucketer:v31];

  [v23 setObject:v25 forKeyedSubscript:@"numberOfTachogramsInPreviousCalendarDay"];
  v26 = [MEMORY[0x277CCD830] heartRateType];
  v27 = [(HDHRAFibBurdenDailyAnalyticsEvent *)self _sedentaryAndBackgroundHeartRateContextPredicate];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __87__HDHRAFibBurdenDailyAnalyticsEvent__extractWatchWearPropertiesIntoPayload_dataSource___block_invoke_403;
  v30[3] = &unk_278660500;
  v30[4] = self;
  v28 = [(HDHRAFibBurdenDailyAnalyticsEvent *)self _numberOfSamplesOfType:v26 dateInterval:v17 additionalPredicate:v27 bucketer:v30];

  [v23 setObject:v28 forKeyedSubscript:@"numberOfBackgroundHRSamplesInPreviousCalendarDay"];
}

id __87__HDHRAFibBurdenDailyAnalyticsEvent__extractWatchWearPropertiesIntoPayload_dataSource___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 >= 5)
    {
      if ((a2 - 5) >= 6)
      {
        if ((a2 - 11) >= 0xA)
        {
          if ((a2 - 21) >= 0x14)
          {
            if (a2 <= 40)
            {
              _HKInitializeLogging();
              v6 = HKHRAFibBurdenLogForCategory();
              if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
              {
                __87__HDHRAFibBurdenDailyAnalyticsEvent__extractWatchWearPropertiesIntoPayload_dataSource___block_invoke_cold_1(a1);
              }

              v3 = *MEMORY[0x277CCB7A0];
            }

            else
            {
              v3 = &unk_283CD2998;
            }
          }

          else
          {
            v3 = &unk_283CD2980;
          }
        }

        else
        {
          v3 = &unk_283CD2968;
        }
      }

      else
      {
        v3 = &unk_283CD2950;
      }
    }

    else
    {
      v3 = &unk_283CD2878;
    }
  }

  else
  {
    v3 = &unk_283CD2860;
  }

  return v3;
}

id __87__HDHRAFibBurdenDailyAnalyticsEvent__extractWatchWearPropertiesIntoPayload_dataSource___block_invoke_403(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 >= 5)
    {
      if ((a2 - 5) >= 6)
      {
        if ((a2 - 11) >= 0xA)
        {
          if ((a2 - 21) >= 0x14)
          {
            if ((a2 - 41) >= 0x3C)
            {
              if ((a2 - 101) >= 0x3C)
              {
                if ((a2 - 161) >= 0x3C)
                {
                  if ((a2 - 221) >= 0x50)
                  {
                    if ((a2 - 301) >= 0x64)
                    {
                      if (a2 <= 400)
                      {
                        _HKInitializeLogging();
                        v6 = HKHRAFibBurdenLogForCategory();
                        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
                        {
                          __87__HDHRAFibBurdenDailyAnalyticsEvent__extractWatchWearPropertiesIntoPayload_dataSource___block_invoke_cold_1(a1);
                        }

                        v3 = *MEMORY[0x277CCB7A0];
                      }

                      else
                      {
                        v3 = &unk_283CD2A10;
                      }
                    }

                    else
                    {
                      v3 = &unk_283CD29F8;
                    }
                  }

                  else
                  {
                    v3 = &unk_283CD29E0;
                  }
                }

                else
                {
                  v3 = &unk_283CD29C8;
                }
              }

              else
              {
                v3 = &unk_283CD29B0;
              }
            }

            else
            {
              v3 = &unk_283CD2998;
            }
          }

          else
          {
            v3 = &unk_283CD2980;
          }
        }

        else
        {
          v3 = &unk_283CD2968;
        }
      }

      else
      {
        v3 = &unk_283CD2950;
      }
    }

    else
    {
      v3 = &unk_283CD2878;
    }
  }

  else
  {
    v3 = &unk_283CD2860;
  }

  return v3;
}

- (id)_numberOfSamplesOfType:(id)a3 dateInterval:(id)a4 additionalPredicate:(id)a5 bucketer:(id)a6
{
  v34[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = HDSampleEntityPredicateForDateInterval();
  v13 = v12;
  if (v10)
  {
    v14 = MEMORY[0x277D10B20];
    v34[0] = v12;
    v34[1] = v10;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v16 = [v14 predicateMatchingAllPredicates:v15];

    v13 = v16;
  }

  v17 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v27 = 0;
  v19 = [v17 countOfSamplesWithType:v9 profile:WeakRetained matchingPredicate:v13 withError:&v27];
  v20 = v27;

  if (v20)
  {
    _HKInitializeLogging();
    v21 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = [v9 identifier];
      *buf = 138543874;
      v29 = self;
      v30 = 2114;
      v31 = v26;
      v32 = 2114;
      v33 = v20;
      _os_log_error_impl(&dword_229486000, v21, OS_LOG_TYPE_ERROR, "[%{public}@] Error when retrieving sample count of type %{public}@: %{public}@", buf, 0x20u);
    }

    v22 = *MEMORY[0x277CCB7A0];
  }

  else
  {
    v22 = v11[2](v11, v19);
  }

  v23 = v22;

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (int64_t)_bucketedWeeksSinceDate:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  v6 = [a4 environmentDataSource];
  v7 = [v6 bucketedNumberOfWeeksSinceDate:v5];

  v8 = *MEMORY[0x277CCB7A0];
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  v10 = [v9 integerValue];
  return v10;
}

- (int64_t)_daysSinceDate:(id)a3 dataSource:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 environmentDataSource];
  v8 = [v7 calendarCache];
  v9 = [v8 currentCalendar];

  v10 = [v5 environmentDataSource];

  v11 = [v10 currentDate];
  v12 = [v9 components:16 fromDate:v6 toDate:v11 options:0];

  v13 = [v12 day];
  return v13;
}

- (int64_t)_daysSinceDate:(id)a3 maximum:(id)a4 dataSource:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v8 environmentDataSource];
  v11 = [v10 calendarCache];
  v12 = [v11 currentCalendar];

  v13 = [v8 environmentDataSource];

  v14 = [v13 currentDate];
  v15 = [v12 components:16 fromDate:v9 toDate:v14 options:0];

  v16 = [v15 day];
  if (v7)
  {
    v17 = [v7 integerValue];
    if (v16 >= v17)
    {
      v16 = v17;
    }
  }

  return v16;
}

- (int64_t)_bucketedBurdenValueForSample:(id)a3
{
  v3 = [a3 quantity];
  [v3 _value];
  v5 = (v4 * 100.0);

  if (v5 < 3)
  {
    return 2;
  }

  if (v5 >= 0xA)
  {
    return 10 * (v5 / 0xAuLL);
  }

  return 3;
}

- (id)_sedentaryAndBackgroundHeartRateContextPredicate
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_283CD2A28, &unk_283CD2A40, &unk_283CD2A58, 0}];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained metadataManager];
  v6 = [v5 predicateWithMetadataKey:*MEMORY[0x277CCE030] allowedValues:v3];

  return v6;
}

- (void)makeIHAGatedEventPayloadWithDataSource:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)makeIHAGatedEventPayloadWithDataSource:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_0(&dword_229486000, v0, v1, "[%{public}@] No error when fetching biological sex but also didn't get object", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)makeIHAGatedEventPayloadWithDataSource:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_extractFeatureStatusPropertiesForFeatureIdentifier:payload:dataSource:ifOnboardedBlock:ifUsageRequirementsEvaluationPresentBlock:ifErrorRetrievingFeatureStatusBlock:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_0(&dword_229486000, v0, v1, "[%{public}@] No usage requirements evaluation found.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_extractFeatureStatusPropertiesForFeatureIdentifier:payload:dataSource:ifOnboardedBlock:ifUsageRequirementsEvaluationPresentBlock:ifErrorRetrievingFeatureStatusBlock:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_3_3(&dword_229486000, v0, v1, "[%{public}@] No feature status provider could be found for %{public}@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_extractBurdenSamplePropertiesIntoPayload:dataSource:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_determineIfSamplesOverlappingSample:dataSource:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_determineIfSamplesOverlappingSample:dataSource:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_0(&dword_229486000, v0, v1, "[%{public}@] When determining overlapping samples could no longer find previous sample.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_extractWatchWearPropertiesIntoPayload:dataSource:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCB8E0];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __87__HDHRAFibBurdenDailyAnalyticsEvent__extractWatchWearPropertiesIntoPayload_dataSource___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_3(&dword_229486000, v2, v3, "[%{public}@] Unexpectedly got %{sensitive}ld tachograms");
  v4 = *MEMORY[0x277D85DE8];
}

@end