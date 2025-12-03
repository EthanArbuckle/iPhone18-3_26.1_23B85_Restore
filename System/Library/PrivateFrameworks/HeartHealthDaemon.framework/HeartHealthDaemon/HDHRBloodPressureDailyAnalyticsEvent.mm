@interface HDHRBloodPressureDailyAnalyticsEvent
- (HDHRBloodPressureDailyAnalyticsEvent)initWithProfile:(id)profile;
- (id)_IHAGatedDemographicsFieldsWithDataSource:(id)source;
- (id)_calculateJournalEntryAnalytics:(id)analytics dataSource:(id)source;
- (id)_calculateJournalStateAnalytics:(id)analytics dataSource:(id)source;
- (id)_calculateMostRecentBPJCycleAnalytics:(id)analytics dataSource:(id)source;
- (id)_featureStatusForFeatureIdentifier:(id)identifier dataSource:(id)source error:(id *)error;
- (id)_fetchBloodPressureJournals;
- (id)_fetchBloodPressureSamplesWithPredicate:(id)predicate;
- (id)_fetchMostRecentBPJCycleWithBloodPressureJournals:(id)journals;
- (id)_hasUserEverSetUpBPJ:(id)j;
- (id)_isFeatureEnabledForFeatureIdentifier:(id)identifier dataSource:(id)source featureAvailabilityContext:(id)context;
- (id)_isPregnancyModeEnabled;
- (id)_numDaysSinceLastLoggedinBPJWithDataSource:(id)source;
- (id)_weeksSinceOnboardingWithDataSource:(id)source;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
- (int64_t)_bucketedWeeksSinceDate:(id)date dataSource:(id)source;
- (int64_t)numberOfDaysBetweenStartDate:(id)date endDate:(id)endDate withCalendar:(id)calendar;
- (void)_fetchBloodPressureJournals;
- (void)_observePregnancy;
@end

@implementation HDHRBloodPressureDailyAnalyticsEvent

- (HDHRBloodPressureDailyAnalyticsEvent)initWithProfile:(id)profile
{
  profileCopy = profile;
  v13.receiver = self;
  v13.super_class = HDHRBloodPressureDailyAnalyticsEvent;
  v5 = [(HDHRBloodPressureDailyAnalyticsEvent *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    heartHealthProfileExtension = [profileCopy heartHealthProfileExtension];
    bloodPressureJournalManager = [heartHealthProfileExtension bloodPressureJournalManager];
    bloodPressureJournalManager = v6->_bloodPressureJournalManager;
    v6->_bloodPressureJournalManager = bloodPressureJournalManager;

    [(HDHRBloodPressureDailyAnalyticsEvent *)v6 _observePregnancy];
    v10 = [[HDHRHypertensionNotificationsDailyAnalyticsEvent alloc] initWithProfile:profileCopy];
    htnDailyAnalyticsEvent = v6->_htnDailyAnalyticsEvent;
    v6->_htnDailyAnalyticsEvent = v10;
  }

  return v6;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v6 = MEMORY[0x277CBEB38];
  sourceCopy = source;
  dictionary = [v6 dictionary];
  environmentDataSource = [sourceCopy environmentDataSource];
  activePairedDeviceProductType = [environmentDataSource activePairedDeviceProductType];
  [dictionary setObject:activePairedDeviceProductType forKeyedSubscript:*MEMORY[0x277CCB7B8]];

  v11 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  notificationManager = [WeakRetained notificationManager];
  v14 = [v11 numberWithBool:{objc_msgSend(notificationManager, "areHealthNotificationsAuthorized")}];
  [dictionary setObject:v14 forKeyedSubscript:*MEMORY[0x277CCB7C8]];

  v15 = MEMORY[0x277CCABB0];
  environmentDataSource2 = [sourceCopy environmentDataSource];
  v17 = [v15 numberWithBool:{objc_msgSend(environmentDataSource2, "isImproveHealthAndActivityEnabled")}];
  [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x277CCB7F8]];

  v18 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self->_htnDailyAnalyticsEvent makeUnrestrictedEventPayloadWithDataSource:sourceCopy error:error];

  [dictionary hk_addEntriesFromNonNilDictionary:v18];

  return dictionary;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v6 = MEMORY[0x277CBEB38];
  sourceCopy = source;
  dictionary = [v6 dictionary];
  v9 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _IHAGatedDemographicsFieldsWithDataSource:sourceCopy];
  [dictionary addEntriesFromDictionary:v9];

  _fetchBloodPressureJournals = [(HDHRBloodPressureDailyAnalyticsEvent *)self _fetchBloodPressureJournals];
  v11 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _fetchMostRecentBPJCycleWithBloodPressureJournals:_fetchBloodPressureJournals];
  v12 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _weeksSinceOnboardingWithDataSource:sourceCopy];
  [dictionary setObject:v12 forKeyedSubscript:@"weeksSinceOnboardedBPJ"];

  v13 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _hasUserEverSetUpBPJ:_fetchBloodPressureJournals];
  [dictionary setObject:v13 forKeyedSubscript:@"hasSetUpBPJ"];

  v14 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _calculateMostRecentBPJCycleAnalytics:v11 dataSource:sourceCopy];
  [dictionary addEntriesFromDictionary:v14];

  v15 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _calculateJournalEntryAnalytics:v11 dataSource:sourceCopy];
  [dictionary addEntriesFromDictionary:v15];

  v16 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _calculateJournalStateAnalytics:_fetchBloodPressureJournals dataSource:sourceCopy];
  [dictionary addEntriesFromDictionary:v16];

  v17 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _numDaysSinceLastLoggedinBPJWithDataSource:sourceCopy];
  [dictionary setObject:v17 forKeyedSubscript:@"numDaysSinceLastLoggedinBPJ"];

  _isPregnancyModeEnabled = [(HDHRBloodPressureDailyAnalyticsEvent *)self _isPregnancyModeEnabled];
  [dictionary setObject:_isPregnancyModeEnabled forKeyedSubscript:@"isPregnancyModeEnabled"];

  v19 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self->_htnDailyAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:sourceCopy error:error];

  [dictionary hk_addEntriesFromNonNilDictionary:v19];

  return dictionary;
}

- (id)_IHAGatedDemographicsFieldsWithDataSource:(id)source
{
  sourceCopy = source;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  healthDataSource = [sourceCopy healthDataSource];
  v6 = [healthDataSource biologicalSexWithError:0];

  if (v6)
  {
    v7 = HKAnalyticsPropertyValueForBiologicalSex();
    [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  else
  {
    [dictionary setObject:*MEMORY[0x277CCB800] forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  healthDataSource2 = [sourceCopy healthDataSource];
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];
  v11 = [healthDataSource2 ageWithCurrentDate:currentDate error:0];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_283CD2740;
  }

  [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277CCB7C0]];
  v13 = [dictionary copy];

  return v13;
}

- (id)_fetchBloodPressureJournals
{
  bloodPressureJournalManager = self->_bloodPressureJournalManager;
  v8 = 0;
  v3 = [(HDHRBloodPressureJournalManager *)bloodPressureJournalManager bloodPressureJournalsWithError:&v8];
  v4 = v8;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [HDHRBloodPressureDailyAnalyticsEvent _fetchBloodPressureJournals];
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)_fetchBloodPressureSamplesWithPredicate:(id)predicate
{
  v4 = MEMORY[0x277CCD250];
  v5 = *MEMORY[0x277CCBBA8];
  predicateCopy = predicate;
  v7 = [v4 correlationTypeForIdentifier:v5];
  v8 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = 0;
  v10 = [v8 samplesWithType:v7 profile:WeakRetained encodingOptions:0 predicate:predicateCopy limit:0 anchor:0 error:&v15];

  v11 = v15;
  if (v11)
  {
    _HKInitializeLogging();
    v12 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [HDHRBloodPressureDailyAnalyticsEvent _fetchBloodPressureJournals];
    }

    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  return v13;
}

- (id)_fetchMostRecentBPJCycleWithBloodPressureJournals:(id)journals
{
  journalsCopy = journals;
  bloodPressureJournalManager = self->_bloodPressureJournalManager;
  v12 = 0;
  v6 = [(HDHRBloodPressureJournalManager *)bloodPressureJournalManager latestActiveBloodPressureJournalWithError:&v12];
  v7 = v12;
  if (v7)
  {
    _HKInitializeLogging();
    v8 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HDHRBloodPressureDailyAnalyticsEvent _fetchMostRecentBPJCycleWithBloodPressureJournals:];
    }
  }

  if (v6)
  {
    lastObject = v6;
  }

  else
  {
    lastObject = [journalsCopy lastObject];
  }

  v10 = lastObject;

  return v10;
}

- (id)_hasUserEverSetUpBPJ:(id)j
{
  v3 = MEMORY[0x277CBEC28];
  if (j && [j count])
  {
    v3 = MEMORY[0x277CBEC38];
  }

  return v3;
}

- (id)_calculateMostRecentBPJCycleAnalytics:(id)analytics dataSource:(id)source
{
  analyticsCopy = analytics;
  sourceCopy = source;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = dictionary;
  if (!analyticsCopy)
  {
    [dictionary setObject:*MEMORY[0x277CCB800] forKeyedSubscript:@"BPJTypeForMostRecentCycle"];
    v11 = *MEMORY[0x277CCB7A0];
    [v9 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:@"numDaysSinceMostRecentBPJCycleStart"];
    [v9 setObject:v11 forKeyedSubscript:@"numBPJRemindersSinceMostRecentBPJCycleStart"];
    v12 = [v9 copy];
    goto LABEL_9;
  }

  if (![analyticsCopy journalType])
  {
    v10 = @"Week";
    goto LABEL_7;
  }

  if ([analyticsCopy journalType] == 1)
  {
    v10 = @"Month";
LABEL_7:
    [v9 setObject:v10 forKeyedSubscript:@"BPJTypeForMostRecentCycle"];
  }

  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];

  environmentDataSource2 = [sourceCopy environmentDataSource];
  calendarCache = [environmentDataSource2 calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  v18 = MEMORY[0x277CCABB0];
  startDate = [analyticsCopy startDate];
  v20 = [v18 numberWithInteger:{-[HDHRBloodPressureDailyAnalyticsEvent numberOfDaysBetweenStartDate:endDate:withCalendar:](self, "numberOfDaysBetweenStartDate:endDate:withCalendar:", startDate, currentDate, currentCalendar)}];
  [v9 setObject:v20 forKeyedSubscript:@"numDaysSinceMostRecentBPJCycleStart"];

  v12 = [v9 copy];
LABEL_9:

  return v12;
}

- (id)_calculateJournalEntryAnalytics:(id)analytics dataSource:(id)source
{
  analyticsCopy = analytics;
  sourceCopy = source;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = dictionary;
  if (!analyticsCopy)
  {
    v23 = *MEMORY[0x277CCB7A0];
    [dictionary setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:@"numCompletedBPJBedTimeEntriesInMostRecentCycle"];
    [v9 setObject:v23 forKeyedSubscript:@"numCompletedBPJWakeUpEntriesInMostRecentCycle"];
    [v9 setObject:v23 forKeyedSubscript:@"numCompletedBPJDailyEntriesInMostRecentCycle"];
    [v9 setObject:0 forKeyedSubscript:@"didCompleteMonthBPJInMostRecentCycle"];
    [v9 setObject:0 forKeyedSubscript:@"didCompleteWeekBPJInMostRecentCycle"];
    v24 = [v9 copy];
    goto LABEL_9;
  }

  environmentDataSource = [sourceCopy environmentDataSource];
  calendarCache = [environmentDataSource calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  startDate = [analyticsCopy startDate];
  v14 = [currentCalendar startOfDayForDate:startDate];

  v15 = HDSampleEntityPredicateForStartDate();
  v16 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _fetchBloodPressureSamplesWithPredicate:v15];
  if (![analyticsCopy journalType])
  {
    v17 = [MEMORY[0x277D12FE8] summaryFromSamples:v16 journal:analyticsCopy];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "bedTimeCount")}];
    [v9 setObject:v25 forKeyedSubscript:@"numCompletedBPJBedTimeEntriesInMostRecentCycle"];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "wakeUpCount")}];
    [v9 setObject:v26 forKeyedSubscript:@"numCompletedBPJWakeUpEntriesInMostRecentCycle"];

    [v9 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:@"numCompletedBPJDailyEntriesInMostRecentCycle"];
    [v9 setObject:0 forKeyedSubscript:@"didCompleteMonthBPJInMostRecentCycle"];
    v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v17, "isComplete")}];
    [v9 setObject:v27 forKeyedSubscript:@"didCompleteWeekBPJInMostRecentCycle"];

    goto LABEL_7;
  }

  if ([analyticsCopy journalType] == 1)
  {
    v17 = [MEMORY[0x277D12FF0] summaryFromSamples:v16 journal:analyticsCopy];
    v18 = *MEMORY[0x277CCB7A0];
    [v9 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:@"numCompletedBPJBedTimeEntriesInMostRecentCycle"];
    [v9 setObject:v18 forKeyedSubscript:@"numCompletedBPJWakeUpEntriesInMostRecentCycle"];
    v19 = MEMORY[0x277CCABB0];
    datesWithSamples = [v17 datesWithSamples];
    v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(datesWithSamples, "count")}];
    [v9 setObject:v21 forKeyedSubscript:@"numCompletedBPJDailyEntriesInMostRecentCycle"];

    v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v17, "isComplete")}];
    [v9 setObject:v22 forKeyedSubscript:@"didCompleteMonthBPJInMostRecentCycle"];

    [v9 setObject:0 forKeyedSubscript:@"didCompleteWeekBPJInMostRecentCycle"];
LABEL_7:
  }

  v24 = [v9 copy];

LABEL_9:

  return v24;
}

- (id)_calculateJournalStateAnalytics:(id)analytics dataSource:(id)source
{
  analyticsCopy = analytics;
  sourceCopy = source;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (analyticsCopy && [analyticsCopy count])
  {
    environmentDataSource = [sourceCopy environmentDataSource];
    currentDate = [environmentDataSource currentDate];

    environmentDataSource2 = [sourceCopy environmentDataSource];
    calendarCache = [environmentDataSource2 calendarCache];
    currentCalendar = [calendarCache currentCalendar];

    v12 = [currentCalendar dateByAddingUnit:4 value:-1 toDate:currentDate options:0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __83__HDHRBloodPressureDailyAnalyticsEvent__calculateJournalStateAnalytics_dataSource___block_invoke;
    v29[3] = &unk_278660358;
    v13 = v12;
    v30 = v13;
    v14 = [analyticsCopy hk_filter:v29];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __83__HDHRBloodPressureDailyAnalyticsEvent__calculateJournalStateAnalytics_dataSource___block_invoke_2;
    v27[3] = &unk_278660358;
    v28 = v13;
    v25 = v13;
    v15 = [analyticsCopy hk_filter:v27];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
    [dictionary setObject:v16 forKeyedSubscript:@"numMonthBPJCyclesStartedPastYear"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
    [dictionary setObject:v17 forKeyedSubscript:@"numWeekBPJCyclesStartedPastYear"];

    v18 = [v14 hk_filter:&__block_literal_global_4];
    v19 = [v15 hk_filter:&__block_literal_global_367];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
    [dictionary setObject:v20 forKeyedSubscript:@"numMonthBPJCyclesClosedPastYear"];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
    [dictionary setObject:v21 forKeyedSubscript:@"numWeekBPJCyclesClosedPastYear"];

    v22 = [dictionary copy];
  }

  else
  {
    v23 = *MEMORY[0x277CCB7A0];
    [dictionary setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:@"numMonthBPJCyclesStartedPastYear"];
    [dictionary setObject:v23 forKeyedSubscript:@"numWeekBPJCyclesStartedPastYear"];
    [dictionary setObject:v23 forKeyedSubscript:@"numMonthBPJCyclesCompletedPastYear"];
    [dictionary setObject:v23 forKeyedSubscript:@"numWeekBPJCyclesCompletedPastYear"];
    [dictionary setObject:v23 forKeyedSubscript:@"numMonthBPJCyclesClosedPastYear"];
    [dictionary setObject:v23 forKeyedSubscript:@"numWeekBPJCyclesClosedPastYear"];
    v22 = [dictionary copy];
  }

  return v22;
}

BOOL __83__HDHRBloodPressureDailyAnalyticsEvent__calculateJournalStateAnalytics_dataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startDate];
  if ([v4 hk_isAfterOrEqualToDate:*(a1 + 32)])
  {
    v5 = [v3 journalType] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __83__HDHRBloodPressureDailyAnalyticsEvent__calculateJournalStateAnalytics_dataSource___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startDate];
  if ([v4 hk_isAfterOrEqualToDate:*(a1 + 32)])
  {
    v5 = [v3 journalType] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_numDaysSinceLastLoggedinBPJWithDataSource:(id)source
{
  v30[1] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v5 = [MEMORY[0x277CCD250] correlationTypeForIdentifier:*MEMORY[0x277CCBBA8]];
  v6 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [v6 entityEnumeratorWithType:v5 profile:WeakRetained];

  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:0];
  v30[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [v8 setSortDescriptors:v10];

  [v8 setLimitCount:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83__HDHRBloodPressureDailyAnalyticsEvent__numDaysSinceLastLoggedinBPJWithDataSource___block_invoke;
  v22[3] = &unk_2786603A0;
  v22[4] = &v24;
  v23 = 0;
  [v8 enumerateWithError:&v23 handler:v22];
  v11 = v23;
  if (v25[5])
  {
    environmentDataSource = [sourceCopy environmentDataSource];
    currentDate = [environmentDataSource currentDate];

    environmentDataSource2 = [sourceCopy environmentDataSource];
    calendarCache = [environmentDataSource2 calendarCache];
    currentCalendar = [calendarCache currentCalendar];

    v17 = MEMORY[0x277CCABB0];
    startDate = [v25[5] startDate];
    v19 = [v17 numberWithInteger:{-[HDHRBloodPressureDailyAnalyticsEvent numberOfDaysBetweenStartDate:endDate:withCalendar:](self, "numberOfDaysBetweenStartDate:endDate:withCalendar:", startDate, currentDate, currentCalendar)}];
  }

  else
  {
    v19 = *MEMORY[0x277CCB7A0];
  }

  _Block_object_dispose(&v24, 8);
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_isFeatureEnabledForFeatureIdentifier:(id)identifier dataSource:(id)source featureAvailabilityContext:(id)context
{
  contextCopy = context;
  v9 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:identifier dataSource:source error:0];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:contextCopy];
    v12 = [v11 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  }

  else
  {
    v13 = *MEMORY[0x277CCB798];
  }

  v14 = v13;

  return v14;
}

- (id)_featureStatusForFeatureIdentifier:(id)identifier dataSource:(id)source error:(id *)error
{
  identifierCopy = identifier;
  healthDataSource = [source healthDataSource];
  v9 = [healthDataSource featureStatusProviderForIdentifier:identifierCopy];

  v10 = [v9 featureStatusWithError:error];

  return v10;
}

- (void)_observePregnancy
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained profileExtensionsConformingToProtocol:&unk_283CF7818];

  firstObject = [v6 firstObject];
  getPregnancyModelProvider = [firstObject getPregnancyModelProvider];

  [getPregnancyModelProvider registerObserver:self isUserInitiated:0];
}

- (id)_isPregnancyModeEnabled
{
  pregnancyState = self->_pregnancyState;
  if (pregnancyState >= 3)
  {
    v4 = *MEMORY[0x277CCB798];
  }

  else
  {
    v4 = qword_2786603C0[pregnancyState];
  }

  return v4;
}

- (id)_weeksSinceOnboardingWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCBFF8] dataSource:sourceCopy error:0];
  v6 = v5;
  if (v5 && ([v5 isOnboardingRecordPresent] & 1) != 0)
  {
    v7 = MEMORY[0x277CCABB0];
    onboardingRecord = [v6 onboardingRecord];
    onboardingCompletion = [onboardingRecord onboardingCompletion];
    completionDate = [onboardingCompletion completionDate];
    v11 = [v7 numberWithInteger:{-[HDHRBloodPressureDailyAnalyticsEvent _bucketedWeeksSinceDate:dataSource:](self, "_bucketedWeeksSinceDate:dataSource:", completionDate, sourceCopy)}];
  }

  else
  {
    v11 = *MEMORY[0x277CCB7A0];
  }

  return v11;
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

- (int64_t)numberOfDaysBetweenStartDate:(id)date endDate:(id)endDate withCalendar:(id)calendar
{
  v5 = [calendar components:16 fromDate:date toDate:endDate options:0];
  v6 = [v5 day];

  return v6;
}

- (void)_fetchBloodPressureJournals
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Failed to fetch all blood pressure journals with error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_fetchMostRecentBPJCycleWithBloodPressureJournals:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Failed to fetch active blood pressure journal with error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end