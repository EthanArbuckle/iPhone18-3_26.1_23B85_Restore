@interface HDHRBloodPressureDailyAnalyticsEvent
- (HDHRBloodPressureDailyAnalyticsEvent)initWithProfile:(id)a3;
- (id)_IHAGatedDemographicsFieldsWithDataSource:(id)a3;
- (id)_calculateJournalEntryAnalytics:(id)a3 dataSource:(id)a4;
- (id)_calculateJournalStateAnalytics:(id)a3 dataSource:(id)a4;
- (id)_calculateMostRecentBPJCycleAnalytics:(id)a3 dataSource:(id)a4;
- (id)_featureStatusForFeatureIdentifier:(id)a3 dataSource:(id)a4 error:(id *)a5;
- (id)_fetchBloodPressureJournals;
- (id)_fetchBloodPressureSamplesWithPredicate:(id)a3;
- (id)_fetchMostRecentBPJCycleWithBloodPressureJournals:(id)a3;
- (id)_hasUserEverSetUpBPJ:(id)a3;
- (id)_isFeatureEnabledForFeatureIdentifier:(id)a3 dataSource:(id)a4 featureAvailabilityContext:(id)a5;
- (id)_isPregnancyModeEnabled;
- (id)_numDaysSinceLastLoggedinBPJWithDataSource:(id)a3;
- (id)_weeksSinceOnboardingWithDataSource:(id)a3;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (int64_t)_bucketedWeeksSinceDate:(id)a3 dataSource:(id)a4;
- (int64_t)numberOfDaysBetweenStartDate:(id)a3 endDate:(id)a4 withCalendar:(id)a5;
- (void)_fetchBloodPressureJournals;
- (void)_observePregnancy;
@end

@implementation HDHRBloodPressureDailyAnalyticsEvent

- (HDHRBloodPressureDailyAnalyticsEvent)initWithProfile:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HDHRBloodPressureDailyAnalyticsEvent;
  v5 = [(HDHRBloodPressureDailyAnalyticsEvent *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = [v4 heartHealthProfileExtension];
    v8 = [v7 bloodPressureJournalManager];
    bloodPressureJournalManager = v6->_bloodPressureJournalManager;
    v6->_bloodPressureJournalManager = v8;

    [(HDHRBloodPressureDailyAnalyticsEvent *)v6 _observePregnancy];
    v10 = [[HDHRHypertensionNotificationsDailyAnalyticsEvent alloc] initWithProfile:v4];
    htnDailyAnalyticsEvent = v6->_htnDailyAnalyticsEvent;
    v6->_htnDailyAnalyticsEvent = v10;
  }

  return v6;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = [v6 dictionary];
  v9 = [v7 environmentDataSource];
  v10 = [v9 activePairedDeviceProductType];
  [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCB7B8]];

  v11 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v13 = [WeakRetained notificationManager];
  v14 = [v11 numberWithBool:{objc_msgSend(v13, "areHealthNotificationsAuthorized")}];
  [v8 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCB7C8]];

  v15 = MEMORY[0x277CCABB0];
  v16 = [v7 environmentDataSource];
  v17 = [v15 numberWithBool:{objc_msgSend(v16, "isImproveHealthAndActivityEnabled")}];
  [v8 setObject:v17 forKeyedSubscript:*MEMORY[0x277CCB7F8]];

  v18 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self->_htnDailyAnalyticsEvent makeUnrestrictedEventPayloadWithDataSource:v7 error:a4];

  [v8 hk_addEntriesFromNonNilDictionary:v18];

  return v8;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = [v6 dictionary];
  v9 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _IHAGatedDemographicsFieldsWithDataSource:v7];
  [v8 addEntriesFromDictionary:v9];

  v10 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _fetchBloodPressureJournals];
  v11 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _fetchMostRecentBPJCycleWithBloodPressureJournals:v10];
  v12 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _weeksSinceOnboardingWithDataSource:v7];
  [v8 setObject:v12 forKeyedSubscript:@"weeksSinceOnboardedBPJ"];

  v13 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _hasUserEverSetUpBPJ:v10];
  [v8 setObject:v13 forKeyedSubscript:@"hasSetUpBPJ"];

  v14 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _calculateMostRecentBPJCycleAnalytics:v11 dataSource:v7];
  [v8 addEntriesFromDictionary:v14];

  v15 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _calculateJournalEntryAnalytics:v11 dataSource:v7];
  [v8 addEntriesFromDictionary:v15];

  v16 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _calculateJournalStateAnalytics:v10 dataSource:v7];
  [v8 addEntriesFromDictionary:v16];

  v17 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _numDaysSinceLastLoggedinBPJWithDataSource:v7];
  [v8 setObject:v17 forKeyedSubscript:@"numDaysSinceLastLoggedinBPJ"];

  v18 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _isPregnancyModeEnabled];
  [v8 setObject:v18 forKeyedSubscript:@"isPregnancyModeEnabled"];

  v19 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self->_htnDailyAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:v7 error:a4];

  [v8 hk_addEntriesFromNonNilDictionary:v19];

  return v8;
}

- (id)_IHAGatedDemographicsFieldsWithDataSource:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 healthDataSource];
  v6 = [v5 biologicalSexWithError:0];

  if (v6)
  {
    v7 = HKAnalyticsPropertyValueForBiologicalSex();
    [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  else
  {
    [v4 setObject:*MEMORY[0x277CCB800] forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  v8 = [v3 healthDataSource];
  v9 = [v3 environmentDataSource];
  v10 = [v9 currentDate];
  v11 = [v8 ageWithCurrentDate:v10 error:0];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_283CD2740;
  }

  [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCB7C0]];
  v13 = [v4 copy];

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

- (id)_fetchBloodPressureSamplesWithPredicate:(id)a3
{
  v4 = MEMORY[0x277CCD250];
  v5 = *MEMORY[0x277CCBBA8];
  v6 = a3;
  v7 = [v4 correlationTypeForIdentifier:v5];
  v8 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = 0;
  v10 = [v8 samplesWithType:v7 profile:WeakRetained encodingOptions:0 predicate:v6 limit:0 anchor:0 error:&v15];

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

- (id)_fetchMostRecentBPJCycleWithBloodPressureJournals:(id)a3
{
  v4 = a3;
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
    v9 = v6;
  }

  else
  {
    v9 = [v4 lastObject];
  }

  v10 = v9;

  return v10;
}

- (id)_hasUserEverSetUpBPJ:(id)a3
{
  v3 = MEMORY[0x277CBEC28];
  if (a3 && [a3 count])
  {
    v3 = MEMORY[0x277CBEC38];
  }

  return v3;
}

- (id)_calculateMostRecentBPJCycleAnalytics:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = v8;
  if (!v6)
  {
    [v8 setObject:*MEMORY[0x277CCB800] forKeyedSubscript:@"BPJTypeForMostRecentCycle"];
    v11 = *MEMORY[0x277CCB7A0];
    [v9 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:@"numDaysSinceMostRecentBPJCycleStart"];
    [v9 setObject:v11 forKeyedSubscript:@"numBPJRemindersSinceMostRecentBPJCycleStart"];
    v12 = [v9 copy];
    goto LABEL_9;
  }

  if (![v6 journalType])
  {
    v10 = @"Week";
    goto LABEL_7;
  }

  if ([v6 journalType] == 1)
  {
    v10 = @"Month";
LABEL_7:
    [v9 setObject:v10 forKeyedSubscript:@"BPJTypeForMostRecentCycle"];
  }

  v13 = [v7 environmentDataSource];
  v14 = [v13 currentDate];

  v15 = [v7 environmentDataSource];
  v16 = [v15 calendarCache];
  v17 = [v16 currentCalendar];

  v18 = MEMORY[0x277CCABB0];
  v19 = [v6 startDate];
  v20 = [v18 numberWithInteger:{-[HDHRBloodPressureDailyAnalyticsEvent numberOfDaysBetweenStartDate:endDate:withCalendar:](self, "numberOfDaysBetweenStartDate:endDate:withCalendar:", v19, v14, v17)}];
  [v9 setObject:v20 forKeyedSubscript:@"numDaysSinceMostRecentBPJCycleStart"];

  v12 = [v9 copy];
LABEL_9:

  return v12;
}

- (id)_calculateJournalEntryAnalytics:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = v8;
  if (!v6)
  {
    v23 = *MEMORY[0x277CCB7A0];
    [v8 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:@"numCompletedBPJBedTimeEntriesInMostRecentCycle"];
    [v9 setObject:v23 forKeyedSubscript:@"numCompletedBPJWakeUpEntriesInMostRecentCycle"];
    [v9 setObject:v23 forKeyedSubscript:@"numCompletedBPJDailyEntriesInMostRecentCycle"];
    [v9 setObject:0 forKeyedSubscript:@"didCompleteMonthBPJInMostRecentCycle"];
    [v9 setObject:0 forKeyedSubscript:@"didCompleteWeekBPJInMostRecentCycle"];
    v24 = [v9 copy];
    goto LABEL_9;
  }

  v10 = [v7 environmentDataSource];
  v11 = [v10 calendarCache];
  v12 = [v11 currentCalendar];

  v13 = [v6 startDate];
  v14 = [v12 startOfDayForDate:v13];

  v15 = HDSampleEntityPredicateForStartDate();
  v16 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _fetchBloodPressureSamplesWithPredicate:v15];
  if (![v6 journalType])
  {
    v17 = [MEMORY[0x277D12FE8] summaryFromSamples:v16 journal:v6];
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

  if ([v6 journalType] == 1)
  {
    v17 = [MEMORY[0x277D12FF0] summaryFromSamples:v16 journal:v6];
    v18 = *MEMORY[0x277CCB7A0];
    [v9 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:@"numCompletedBPJBedTimeEntriesInMostRecentCycle"];
    [v9 setObject:v18 forKeyedSubscript:@"numCompletedBPJWakeUpEntriesInMostRecentCycle"];
    v19 = MEMORY[0x277CCABB0];
    v20 = [v17 datesWithSamples];
    v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
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

- (id)_calculateJournalStateAnalytics:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  if (v5 && [v5 count])
  {
    v8 = [v6 environmentDataSource];
    v26 = [v8 currentDate];

    v9 = [v6 environmentDataSource];
    v10 = [v9 calendarCache];
    v11 = [v10 currentCalendar];

    v12 = [v11 dateByAddingUnit:4 value:-1 toDate:v26 options:0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __83__HDHRBloodPressureDailyAnalyticsEvent__calculateJournalStateAnalytics_dataSource___block_invoke;
    v29[3] = &unk_278660358;
    v13 = v12;
    v30 = v13;
    v14 = [v5 hk_filter:v29];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __83__HDHRBloodPressureDailyAnalyticsEvent__calculateJournalStateAnalytics_dataSource___block_invoke_2;
    v27[3] = &unk_278660358;
    v28 = v13;
    v25 = v13;
    v15 = [v5 hk_filter:v27];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
    [v7 setObject:v16 forKeyedSubscript:@"numMonthBPJCyclesStartedPastYear"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
    [v7 setObject:v17 forKeyedSubscript:@"numWeekBPJCyclesStartedPastYear"];

    v18 = [v14 hk_filter:&__block_literal_global_4];
    v19 = [v15 hk_filter:&__block_literal_global_367];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
    [v7 setObject:v20 forKeyedSubscript:@"numMonthBPJCyclesClosedPastYear"];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
    [v7 setObject:v21 forKeyedSubscript:@"numWeekBPJCyclesClosedPastYear"];

    v22 = [v7 copy];
  }

  else
  {
    v23 = *MEMORY[0x277CCB7A0];
    [v7 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:@"numMonthBPJCyclesStartedPastYear"];
    [v7 setObject:v23 forKeyedSubscript:@"numWeekBPJCyclesStartedPastYear"];
    [v7 setObject:v23 forKeyedSubscript:@"numMonthBPJCyclesCompletedPastYear"];
    [v7 setObject:v23 forKeyedSubscript:@"numWeekBPJCyclesCompletedPastYear"];
    [v7 setObject:v23 forKeyedSubscript:@"numMonthBPJCyclesClosedPastYear"];
    [v7 setObject:v23 forKeyedSubscript:@"numWeekBPJCyclesClosedPastYear"];
    v22 = [v7 copy];
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

- (id)_numDaysSinceLastLoggedinBPJWithDataSource:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v12 = [v4 environmentDataSource];
    v13 = [v12 currentDate];

    v14 = [v4 environmentDataSource];
    v15 = [v14 calendarCache];
    v16 = [v15 currentCalendar];

    v17 = MEMORY[0x277CCABB0];
    v18 = [v25[5] startDate];
    v19 = [v17 numberWithInteger:{-[HDHRBloodPressureDailyAnalyticsEvent numberOfDaysBetweenStartDate:endDate:withCalendar:](self, "numberOfDaysBetweenStartDate:endDate:withCalendar:", v18, v13, v16)}];
  }

  else
  {
    v19 = *MEMORY[0x277CCB7A0];
  }

  _Block_object_dispose(&v24, 8);
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_isFeatureEnabledForFeatureIdentifier:(id)a3 dataSource:(id)a4 featureAvailabilityContext:(id)a5
{
  v8 = a5;
  v9 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:a3 dataSource:a4 error:0];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:v8];
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

- (id)_featureStatusForFeatureIdentifier:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [a4 healthDataSource];
  v9 = [v8 featureStatusProviderForIdentifier:v7];

  v10 = [v9 featureStatusWithError:a5];

  return v10;
}

- (void)_observePregnancy
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained profileExtensionsConformingToProtocol:&unk_283CF7818];

  v4 = [v6 firstObject];
  v5 = [v4 getPregnancyModelProvider];

  [v5 registerObserver:self isUserInitiated:0];
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

- (id)_weeksSinceOnboardingWithDataSource:(id)a3
{
  v4 = a3;
  v5 = [(HDHRBloodPressureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCBFF8] dataSource:v4 error:0];
  v6 = v5;
  if (v5 && ([v5 isOnboardingRecordPresent] & 1) != 0)
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [v6 onboardingRecord];
    v9 = [v8 onboardingCompletion];
    v10 = [v9 completionDate];
    v11 = [v7 numberWithInteger:{-[HDHRBloodPressureDailyAnalyticsEvent _bucketedWeeksSinceDate:dataSource:](self, "_bucketedWeeksSinceDate:dataSource:", v10, v4)}];
  }

  else
  {
    v11 = *MEMORY[0x277CCB7A0];
  }

  return v11;
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

- (int64_t)numberOfDaysBetweenStartDate:(id)a3 endDate:(id)a4 withCalendar:(id)a5
{
  v5 = [a5 components:16 fromDate:a3 toDate:a4 options:0];
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