@interface HDHRAFibBurdenDailyAnalyticsEvent
- (HDHRAFibBurdenDailyAnalyticsEvent)initWithProfile:(id)profile;
- (HDHRAFibBurdenDailyAnalyticsEvent)initWithProfile:(id)profile notificationsAuthorizedProvider:(id)provider;
- (id)_determineIfSamplesOverlappingSample:(id)sample dataSource:(id)source;
- (id)_numberOfSamplesOfType:(id)type dateInterval:(id)interval additionalPredicate:(id)predicate bucketer:(id)bucketer;
- (id)_sedentaryAndBackgroundHeartRateContextPredicate;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (int64_t)_bucketedBurdenValueForSample:(id)sample;
- (int64_t)_bucketedWeeksSinceDate:(id)date dataSource:(id)source;
- (int64_t)_daysSinceDate:(id)date dataSource:(id)source;
- (int64_t)_daysSinceDate:(id)date maximum:(id)maximum dataSource:(id)source;
- (void)_extractAFibBurdenFeatureStatusPropertiesFromDataSource:(id)source payload:(id)payload;
- (void)_extractBucketedDaysSinceLastSampleOfType:(id)type intoProperty:(id)property inPayload:(id)payload dataSource:(id)source;
- (void)_extractBurdenSamplePropertiesIntoPayload:(id)payload dataSource:(id)source;
- (void)_extractDaysSinceDateInKeyValueDomain:(id)domain withKey:(id)key intoProperty:(id)property inPayload:(id)payload dataSource:(id)source;
- (void)_extractFeatureStatusPropertiesForFeatureIdentifier:(id)identifier payload:(id)payload dataSource:(id)source ifOnboardedBlock:(id)block ifUsageRequirementsEvaluationPresentBlock:(id)presentBlock ifErrorRetrievingFeatureStatusBlock:(id)statusBlock;
- (void)_extractIRNFeatureStatusPropertiesFromDataSource:(id)source payload:(id)payload;
- (void)_extractWatchWearPropertiesIntoPayload:(id)payload dataSource:(id)source;
@end

@implementation HDHRAFibBurdenDailyAnalyticsEvent

- (HDHRAFibBurdenDailyAnalyticsEvent)initWithProfile:(id)profile
{
  profileCopy = profile;
  notificationManager = [profileCopy notificationManager];
  v6 = [(HDHRAFibBurdenDailyAnalyticsEvent *)self initWithProfile:profileCopy notificationsAuthorizedProvider:notificationManager];

  return v6;
}

- (HDHRAFibBurdenDailyAnalyticsEvent)initWithProfile:(id)profile notificationsAuthorizedProvider:(id)provider
{
  profileCopy = profile;
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = HDHRAFibBurdenDailyAnalyticsEvent;
  v8 = [(HDHRAFibBurdenDailyAnalyticsEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    objc_storeStrong(&v9->_notificationsAuthorizedProvider, provider);
  }

  return v9;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  environmentDataSource = [sourceCopy environmentDataSource];
  activePairedDeviceProductType = [environmentDataSource activePairedDeviceProductType];

  if (activePairedDeviceProductType)
  {
    [v6 setObject:activePairedDeviceProductType forKeyedSubscript:*MEMORY[0x277CCB7B8]];
  }

  healthDataSource = [sourceCopy healthDataSource];
  v35 = 0;
  v10 = [healthDataSource biologicalSexWithError:&v35];
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

  healthDataSource2 = [sourceCopy healthDataSource];
  environmentDataSource2 = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource2 currentDate];
  v34 = 0;
  v19 = [healthDataSource2 ageWithCurrentDate:currentDate error:&v34];
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

  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractAFibBurdenFeatureStatusPropertiesFromDataSource:sourceCopy payload:v6];
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractIRNFeatureStatusPropertiesFromDataSource:sourceCopy payload:v6];
  v24 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v26 = [v24 hdhr_aFibBurdenProtectedSyncedDomainForProfile:WeakRetained];

  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractDaysSinceDateInKeyValueDomain:v26 withKey:*MEMORY[0x277D12EB0] intoProperty:@"numberOfDaysSinceLastAnalysis" inPayload:v6 dataSource:sourceCopy];
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractDaysSinceDateInKeyValueDomain:v26 withKey:*MEMORY[0x277D12EB8] intoProperty:@"numberOfDaysSinceLastNotification" inPayload:v6 dataSource:sourceCopy];
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractBurdenSamplePropertiesIntoPayload:v6 dataSource:sourceCopy];
  v27 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractBucketedDaysSinceLastSampleOfType:v27 intoProperty:@"numberOfDaysSinceLastSleepEntry" inPayload:v6 dataSource:sourceCopy];

  v28 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBD8]];
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractBucketedDaysSinceLastSampleOfType:v28 intoProperty:@"numberOfDaysSinceLastAlcoholicDrinksEntry" inPayload:v6 dataSource:sourceCopy];

  v29 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA30]];
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractBucketedDaysSinceLastSampleOfType:v29 intoProperty:@"numberOfDaysSinceLastMindfulMinutesEntry" inPayload:v6 dataSource:sourceCopy];

  v30 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC990]];
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractBucketedDaysSinceLastSampleOfType:v30 intoProperty:@"numberOfDaysSinceLastBodyMassEntry" inPayload:v6 dataSource:sourceCopy];

  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractWatchWearPropertiesIntoPayload:v6 dataSource:sourceCopy];
  v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDHRAFibBurdenAnalyticsEventHealthAppNotificationsAuthorizedProvider areHealthNotificationsAuthorized](self->_notificationsAuthorizedProvider, "areHealthNotificationsAuthorized")}];
  [v6 setObject:v31 forKeyedSubscript:*MEMORY[0x277CCB7C8]];

  v32 = [v6 copy];

  return v32;
}

- (void)_extractAFibBurdenFeatureStatusPropertiesFromDataSource:(id)source payload:(id)payload
{
  sourceCopy = source;
  v7 = *MEMORY[0x277CCBFF0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __101__HDHRAFibBurdenDailyAnalyticsEvent__extractAFibBurdenFeatureStatusPropertiesFromDataSource_payload___block_invoke;
  v9[3] = &unk_278660498;
  v9[4] = self;
  v10 = sourceCopy;
  v8 = sourceCopy;
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractFeatureStatusPropertiesForFeatureIdentifier:v7 payload:payload dataSource:v8 ifOnboardedBlock:v9 ifUsageRequirementsEvaluationPresentBlock:&__block_literal_global_6 ifErrorRetrievingFeatureStatusBlock:&__block_literal_global_363];
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

- (void)_extractIRNFeatureStatusPropertiesFromDataSource:(id)source payload:(id)payload
{
  sourceCopy = source;
  v7 = *MEMORY[0x277CCC070];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__HDHRAFibBurdenDailyAnalyticsEvent__extractIRNFeatureStatusPropertiesFromDataSource_payload___block_invoke;
  v9[3] = &unk_278660498;
  v9[4] = self;
  v10 = sourceCopy;
  v8 = sourceCopy;
  [(HDHRAFibBurdenDailyAnalyticsEvent *)self _extractFeatureStatusPropertiesForFeatureIdentifier:v7 payload:payload dataSource:v8 ifOnboardedBlock:v9 ifUsageRequirementsEvaluationPresentBlock:&__block_literal_global_365 ifErrorRetrievingFeatureStatusBlock:&__block_literal_global_367_0];
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

- (void)_extractFeatureStatusPropertiesForFeatureIdentifier:(id)identifier payload:(id)payload dataSource:(id)source ifOnboardedBlock:(id)block ifUsageRequirementsEvaluationPresentBlock:(id)presentBlock ifErrorRetrievingFeatureStatusBlock:(id)statusBlock
{
  v50 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  payloadCopy = payload;
  blockCopy = block;
  presentBlockCopy = presentBlock;
  statusBlockCopy = statusBlock;
  healthDataSource = [source healthDataSource];
  v20 = [healthDataSource featureStatusProviderForIdentifier:identifierCopy];

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
        selfCopy = self;
        v46 = 2114;
        v47 = identifierCopy;
        v48 = 2114;
        v49 = v23;
        _os_log_error_impl(&dword_229486000, v38, OS_LOG_TYPE_ERROR, "[%{public}@] Error when retrieving feature status for %{public}@: %{public}@", buf, 0x20u);
      }

      statusBlockCopy[2](statusBlockCopy, payloadCopy);
      goto LABEL_18;
    }

    v42 = v22;
    onboardingRecord = [v21 onboardingRecord];
    onboardingCompletion = [onboardingRecord onboardingCompletion];
    if (onboardingCompletion)
    {
      v26 = onboardingCompletion;
      [v21 onboardingRecord];
      v27 = statusBlockCopy;
      v28 = identifierCopy;
      v29 = payloadCopy;
      v30 = blockCopy;
      v32 = v31 = presentBlockCopy;
      v41 = v21;
      onboardingState = [v32 onboardingState];

      presentBlockCopy = v31;
      blockCopy = v30;
      payloadCopy = v29;
      identifierCopy = v28;
      statusBlockCopy = v27;

      v34 = onboardingState == 3;
      v21 = v41;
      v23 = v42;
      if (v34)
      {
LABEL_18:

        goto LABEL_19;
      }

      onboardingRecord2 = [v41 onboardingRecord];
      blockCopy[2](blockCopy, onboardingRecord2, payloadCopy);

      requirementsEvaluationByContext = [v41 requirementsEvaluationByContext];
      onboardingRecord = [requirementsEvaluationByContext objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];

      if (onboardingRecord)
      {
        presentBlockCopy[2](presentBlockCopy, onboardingRecord, payloadCopy);
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

  statusBlockCopy[2](statusBlockCopy, payloadCopy);
LABEL_19:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_extractDaysSinceDateInKeyValueDomain:(id)domain withKey:(id)key intoProperty:(id)property inPayload:(id)payload dataSource:(id)source
{
  propertyCopy = property;
  payloadCopy = payload;
  sourceCopy = source;
  v17 = 0;
  v15 = [domain dateForKey:key error:&v17];
  if (v15)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDHRAFibBurdenDailyAnalyticsEvent _daysSinceDate:maximum:dataSource:](self, "_daysSinceDate:maximum:dataSource:", v15, &unk_283CD2848, sourceCopy)}];
    [payloadCopy setObject:v16 forKeyedSubscript:propertyCopy];
  }

  else if (v17)
  {
    [payloadCopy setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:propertyCopy];
  }
}

- (void)_extractBurdenSamplePropertiesIntoPayload:(id)payload dataSource:(id)source
{
  v39 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  sourceCopy = source;
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
    _creationDate = [v11 _creationDate];
    v15 = [v13 numberWithInteger:{-[HDHRAFibBurdenDailyAnalyticsEvent _daysSinceDate:maximum:dataSource:](self, "_daysSinceDate:maximum:dataSource:", _creationDate, &unk_283CD2848, sourceCopy)}];
    v35 = payloadCopy;
    [payloadCopy setObject:v15 forKeyedSubscript:@"numberOfDaysSinceLastSample"];

    environmentDataSource = [sourceCopy environmentDataSource];
    calendarCache = [environmentDataSource calendarCache];
    _timeZone = [v11 _timeZone];
    v19 = [calendarCache calendarForTimeZone:_timeZone];

    v20 = [v11 hk_dayIndexRangeWithCalendar:v19];
    v22 = v21;
    environmentDataSource2 = [sourceCopy environmentDataSource];
    currentDate = [environmentDataSource2 currentDate];
    v25 = HKHRAFibBurdenPreviousWeekDayIndexRange();
    v27 = v26;

    if (v20 == v25 && v22 - 1 == v27)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDHRAFibBurdenDailyAnalyticsEvent _bucketedBurdenValueForSample:](self, "_bucketedBurdenValueForSample:", v11)}];
      payloadCopy = v35;
      [v35 setObject:v28 forKeyedSubscript:@"previousWeekBurdenValue"];

      v29 = [(HDHRAFibBurdenDailyAnalyticsEvent *)self _determineIfSamplesOverlappingSample:v11 dataSource:sourceCopy];
      [v35 setObject:v29 forKeyedSubscript:@"previousWeekHasOverlappingSamples"];
    }

    else
    {
      _HKInitializeLogging();
      v29 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_229486000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Most recent sample not for previous calendar week", buf, 0xCu);
      }

      payloadCopy = v35;
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
    [payloadCopy setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:@"numberOfDaysSinceLastSample"];
    [payloadCopy setObject:v31 forKeyedSubscript:@"previousWeekBurdenValue"];
    [payloadCopy setObject:*MEMORY[0x277CCB798] forKeyedSubscript:@"previousWeekHasOverlappingSamples"];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_determineIfSamplesOverlappingSample:(id)sample dataSource:(id)source
{
  sampleCopy = sample;
  environmentDataSource = [source environmentDataSource];
  calendarCache = [environmentDataSource calendarCache];
  _timeZone = [sampleCopy _timeZone];
  v10 = [calendarCache calendarForTimeZone:_timeZone];

  startDate = [sampleCopy startDate];
  v12 = [startDate hk_dayIndexWithCalendar:v10];

  endDate = [sampleCopy endDate];
  v14 = [endDate hk_dayIndexWithCalendar:v10];

  v15 = [MEMORY[0x277CBEAA8] hk_earliestPossibleDateWithDayIndex:v12];
  v16 = [MEMORY[0x277CBEAA8] hk_latestPossibleDateWithDayIndex:v14];
  v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v15 endDate:v16];
  v18 = MEMORY[0x277D10848];
  quantityType = [sampleCopy quantityType];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  quantityType2 = [sampleCopy quantityType];

  v22 = HDSampleEntityPredicateForDateInterval();
  v30 = 0;
  v23 = [v18 samplesWithType:quantityType profile:WeakRetained encodingOptions:0 predicate:v22 limit:2 anchor:0 error:&v30];
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

- (void)_extractBucketedDaysSinceLastSampleOfType:(id)type intoProperty:(id)property inPayload:(id)payload dataSource:(id)source
{
  v33 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  propertyCopy = property;
  payloadCopy = payload;
  sourceCopy = source;
  v14 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v26 = 0;
  v16 = [v14 mostRecentSampleWithType:typeCopy profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v26];
  v17 = v26;

  if (v16)
  {
    startDate = [v16 startDate];
    v19 = [(HDHRAFibBurdenDailyAnalyticsEvent *)self _daysSinceDate:startDate dataSource:sourceCopy];

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
                  [payloadCopy setObject:v21 forKeyedSubscript:propertyCopy];

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
      identifier = [typeCopy identifier];
      *buf = 138543874;
      selfCopy = self;
      v29 = 2114;
      v30 = identifier;
      v31 = 2114;
      v32 = v17;
      _os_log_error_impl(&dword_229486000, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Error when retrieving sample of type %{public}@: %{public}@", buf, 0x20u);
    }

    [payloadCopy setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:propertyCopy];
  }

LABEL_28:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_extractWatchWearPropertiesIntoPayload:(id)payload dataSource:(id)source
{
  payloadCopy = payload;
  sourceCopy = source;
  environmentDataSource = [sourceCopy environmentDataSource];
  calendarCache = [environmentDataSource calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  environmentDataSource2 = [sourceCopy environmentDataSource];

  currentDate = [environmentDataSource2 currentDate];

  v13 = [currentCalendar dateByAddingUnit:16 value:-1 toDate:currentDate options:0];
  v14 = objc_alloc(MEMORY[0x277CCA970]);
  v15 = [currentCalendar startOfDayForDate:v13];
  v16 = [currentCalendar startOfDayForDate:currentDate];
  v17 = [v14 initWithStartDate:v15 endDate:v16];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(currentCalendar, "component:fromDate:", 512, v13)}];
  [payloadCopy setObject:v18 forKeyedSubscript:@"previousCalendarDayOfWeek"];

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

  [payloadCopy setObject:v20 forKeyedSubscript:@"numberOfStandHoursInPreviousCalendarDay"];
  [MEMORY[0x277CCD920] heartbeatSeriesType];
  v29 = v21;
  v24 = v23 = payloadCopy;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __87__HDHRAFibBurdenDailyAnalyticsEvent__extractWatchWearPropertiesIntoPayload_dataSource___block_invoke;
  v31[3] = &unk_278660500;
  v31[4] = self;
  v25 = [(HDHRAFibBurdenDailyAnalyticsEvent *)self _numberOfSamplesOfType:v24 dateInterval:v17 additionalPredicate:0 bucketer:v31];

  [v23 setObject:v25 forKeyedSubscript:@"numberOfTachogramsInPreviousCalendarDay"];
  heartRateType = [MEMORY[0x277CCD830] heartRateType];
  _sedentaryAndBackgroundHeartRateContextPredicate = [(HDHRAFibBurdenDailyAnalyticsEvent *)self _sedentaryAndBackgroundHeartRateContextPredicate];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __87__HDHRAFibBurdenDailyAnalyticsEvent__extractWatchWearPropertiesIntoPayload_dataSource___block_invoke_403;
  v30[3] = &unk_278660500;
  v30[4] = self;
  v28 = [(HDHRAFibBurdenDailyAnalyticsEvent *)self _numberOfSamplesOfType:heartRateType dateInterval:v17 additionalPredicate:_sedentaryAndBackgroundHeartRateContextPredicate bucketer:v30];

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

- (id)_numberOfSamplesOfType:(id)type dateInterval:(id)interval additionalPredicate:(id)predicate bucketer:(id)bucketer
{
  v34[2] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  predicateCopy = predicate;
  bucketerCopy = bucketer;
  v12 = HDSampleEntityPredicateForDateInterval();
  v13 = v12;
  if (predicateCopy)
  {
    v14 = MEMORY[0x277D10B20];
    v34[0] = v12;
    v34[1] = predicateCopy;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v16 = [v14 predicateMatchingAllPredicates:v15];

    v13 = v16;
  }

  v17 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v27 = 0;
  v19 = [v17 countOfSamplesWithType:typeCopy profile:WeakRetained matchingPredicate:v13 withError:&v27];
  v20 = v27;

  if (v20)
  {
    _HKInitializeLogging();
    v21 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      identifier = [typeCopy identifier];
      *buf = 138543874;
      selfCopy = self;
      v30 = 2114;
      v31 = identifier;
      v32 = 2114;
      v33 = v20;
      _os_log_error_impl(&dword_229486000, v21, OS_LOG_TYPE_ERROR, "[%{public}@] Error when retrieving sample count of type %{public}@: %{public}@", buf, 0x20u);
    }

    v22 = *MEMORY[0x277CCB7A0];
  }

  else
  {
    v22 = bucketerCopy[2](bucketerCopy, v19);
  }

  v23 = v22;

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (int64_t)_bucketedWeeksSinceDate:(id)date dataSource:(id)source
{
  dateCopy = date;
  environmentDataSource = [source environmentDataSource];
  v7 = [environmentDataSource bucketedNumberOfWeeksSinceDate:dateCopy];

  v8 = *MEMORY[0x277CCB7A0];
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  integerValue = [v9 integerValue];
  return integerValue;
}

- (int64_t)_daysSinceDate:(id)date dataSource:(id)source
{
  sourceCopy = source;
  dateCopy = date;
  environmentDataSource = [sourceCopy environmentDataSource];
  calendarCache = [environmentDataSource calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  environmentDataSource2 = [sourceCopy environmentDataSource];

  currentDate = [environmentDataSource2 currentDate];
  v12 = [currentCalendar components:16 fromDate:dateCopy toDate:currentDate options:0];

  v13 = [v12 day];
  return v13;
}

- (int64_t)_daysSinceDate:(id)date maximum:(id)maximum dataSource:(id)source
{
  maximumCopy = maximum;
  sourceCopy = source;
  dateCopy = date;
  environmentDataSource = [sourceCopy environmentDataSource];
  calendarCache = [environmentDataSource calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  environmentDataSource2 = [sourceCopy environmentDataSource];

  currentDate = [environmentDataSource2 currentDate];
  v15 = [currentCalendar components:16 fromDate:dateCopy toDate:currentDate options:0];

  v16 = [v15 day];
  if (maximumCopy)
  {
    integerValue = [maximumCopy integerValue];
    if (v16 >= integerValue)
    {
      v16 = integerValue;
    }
  }

  return v16;
}

- (int64_t)_bucketedBurdenValueForSample:(id)sample
{
  quantity = [sample quantity];
  [quantity _value];
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
  metadataManager = [WeakRetained metadataManager];
  v6 = [metadataManager predicateWithMetadataKey:*MEMORY[0x277CCE030] allowedValues:v3];

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