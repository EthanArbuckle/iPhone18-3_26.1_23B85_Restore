@interface HDHRHypertensionNotificationsDailyAnalyticsEvent
- (HDHRHypertensionNotificationsDailyAnalyticsEvent)initWithProfile:(id)a3;
- (id)_countOfLast30DaysWithHypertensiveMeasurementSamplesWithCurrentDate:(id)a3 calendar:(id)a4;
- (id)_countOfSamplesWithType:(id)a3 dateInterval:(id)a4 additionalPredicate:(id)a5;
- (id)_dateIntervalForCalendarDays:(int64_t)a3 fromDate:(id)a4 calendar:(id)a5;
- (id)_daysSinceLastHypertensionNotificationToDate:(id)a3 withinDateInterval:(id)a4 calendar:(id)a5;
- (id)_daysSinceMostRecentSampleWithType:(id)a3 toDate:(id)a4 calendar:(id)a5 additionalPredicate:(id)a6 error:(id *)a7;
- (id)_daysSinceOldestHypertensionNotificationToDate:(id)a3 withinDateInterval:(id)a4 calendar:(id)a5;
- (id)_daysSinceOldestSampleWithType:(id)a3 toDate:(id)a4 calendar:(id)a5 additionalPredicate:(id)a6 error:(id *)a7;
- (id)_dnuNumDaysAnalyticsWithCurrentDate:(id)a3 calendar:(id)a4;
- (id)_dnuOnboardingAnalyticsWithDataSource:(id)a3;
- (id)_dnuSampleCountsInPreviousCalendarDayWithCurrentDate:(id)a3 calendar:(id)a4;
- (id)_ihaBPJCountAnalyticsWithCurrentDate:(id)a3 calendar:(id)a4;
- (id)_ihaNumDaysAnalyticsWithCurrentDate:(id)a3 calendar:(id)a4;
- (id)_ihaOnboardingAnalyticsWithDataSource:(id)a3;
- (id)_ihaSampleCountsAnalyticsWithCurrentDate:(id)a3 calendar:(id)a4;
- (id)_numDaysSinceLastAnalysisWithCurrentDate:(id)a3 calendar:(id)a4;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HDHRHypertensionNotificationsDailyAnalyticsEvent

- (HDHRHypertensionNotificationsDailyAnalyticsEvent)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDHRHypertensionNotificationsDailyAnalyticsEvent;
  v5 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
  }

  return v6;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [v6 environmentDataSource];
  v9 = [v8 currentDate];

  v10 = [v6 environmentDataSource];
  v11 = [v10 calendarCache];
  v12 = [v11 currentCalendar];

  v13 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _dnuSampleCountsInPreviousCalendarDayWithCurrentDate:v9 calendar:v12];
  [v7 hk_addEntriesFromNonNilDictionary:v13];

  v14 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _dnuNumDaysAnalyticsWithCurrentDate:v9 calendar:v12];
  [v7 hk_addEntriesFromNonNilDictionary:v14];

  v15 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _dnuOnboardingAnalyticsWithDataSource:v6];

  [v7 hk_addEntriesFromNonNilDictionary:v15];

  return v7;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 environmentDataSource];
  v7 = [v6 currentDate];

  v8 = [v5 environmentDataSource];
  v9 = [v8 calendarCache];
  v10 = [v9 currentCalendar];

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _ihaNumDaysAnalyticsWithCurrentDate:v7 calendar:v10];
  [v11 hk_addEntriesFromNonNilDictionary:v12];

  v13 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _ihaSampleCountsAnalyticsWithCurrentDate:v7 calendar:v10];
  [v11 hk_addEntriesFromNonNilDictionary:v13];

  v14 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _ihaOnboardingAnalyticsWithDataSource:v5];

  [v11 hk_addEntriesFromNonNilDictionary:v14];
  v15 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _ihaBPJCountAnalyticsWithCurrentDate:v7 calendar:v10];
  [v11 hk_addEntriesFromNonNilDictionary:v15];

  return v11;
}

- (id)_ihaBPJCountAnalyticsWithCurrentDate:(id)a3 calendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [MEMORY[0x277CCD0C0] hypertensionEventType];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained heartHealthProfileExtension];
  v12 = [v11 bloodPressureJournalManager];
  v54 = 0;
  v13 = [v12 bloodPressureJournalsWithLimit:2 ascending:0 error:&v54];
  v14 = v54;

  if (!v13 || ![v13 count])
  {
    if (v14)
    {
      _HKInitializeLogging();
      v27 = HKLogAnalytics();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [HDHRHypertensionNotificationsDailyAnalyticsEvent _ihaBPJCountAnalyticsWithCurrentDate:calendar:];
      }
    }

    else
    {
      v27 = [v7 dateByAddingUnit:16 value:-180 toDate:v6 options:0];
      v28 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v27 endDate:v6];
      v29 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:v9 dateInterval:v28];
      v30 = v29;
      if (v29 && [v29 integerValue] >= 1)
      {
        [v8 setObject:&unk_283CD33D0 forKeyedSubscript:HDHRAnalyticsPropertyNameCountHTNotificationsUntilMostRecentBPJStarted];
        [v8 setObject:&unk_283CD33D0 forKeyedSubscript:HDHRAnalyticsPropertyNameDifferenceInDaysBetweenFirstHTNotificationAndBPJStarted];
        [v8 setObject:&unk_283CD33D0 forKeyedSubscript:HDHRAnalyticsPropertyNameDifferenceInDaysBetweenMostRecentHTNotificationAndBPJStarted];
      }
    }

    v31 = v8;
    goto LABEL_30;
  }

  v53 = v6;
  v52 = v9;
  if ([v13 count])
  {
    v15 = [v13 objectAtIndexedSubscript:0];
    v16 = [v15 startDate];
    if (!v16)
    {
LABEL_18:

      goto LABEL_19;
    }

    v17 = v16;
    v18 = [v13 objectAtIndexedSubscript:0];
    v19 = [v18 startDate];
    v20 = [v19 hk_isBeforeDate:v6];

    if (v20)
    {
      v21 = objc_alloc(MEMORY[0x277CCA970]);
      v22 = [v13 objectAtIndexedSubscript:0];
      v23 = [v22 startDate];
      v15 = [v21 initWithStartDate:v23 endDate:v53];

      v9 = v52;
      v24 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:v52 dateInterval:v15];
      v25 = v24;
      if (v24 && [v24 integerValue] >= 1)
      {
        [v8 setObject:&unk_283CD33D0 forKeyedSubscript:HDHRAnalyticsPropertyNameCountHTNotificationsUntilMostRecentBPJStarted];
        [v8 setObject:&unk_283CD33D0 forKeyedSubscript:HDHRAnalyticsPropertyNameDifferenceInDaysBetweenFirstHTNotificationAndBPJStarted];
        [v8 setObject:&unk_283CD33D0 forKeyedSubscript:HDHRAnalyticsPropertyNameDifferenceInDaysBetweenMostRecentHTNotificationAndBPJStarted];
        v26 = v8;

LABEL_28:
        v6 = v53;
        goto LABEL_30;
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  if ([v13 count] == 2)
  {
    v32 = [v13 objectAtIndexedSubscript:1];
    v33 = [v32 startDate];
    if (v33)
    {
      v34 = v33;
      v35 = [v13 objectAtIndexedSubscript:0];
      v36 = [v35 startDate];

      if (v36)
      {
        v37 = [v13 objectAtIndexedSubscript:1];
        v38 = [v37 startDate];

        v39 = [v13 objectAtIndexedSubscript:0];
        v40 = [v39 startDate];
LABEL_27:

        v44 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v38 endDate:v40];
        v9 = v52;
        v45 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:v52 dateInterval:v44];
        [v8 setObject:v45 forKeyedSubscript:HDHRAnalyticsPropertyNameCountHTNotificationsUntilMostRecentBPJStarted];

        v46 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _daysSinceOldestHypertensionNotificationToDate:v40 withinDateInterval:v44 calendar:v7];
        [v8 setObject:v46 forKeyedSubscript:HDHRAnalyticsPropertyNameDifferenceInDaysBetweenFirstHTNotificationAndBPJStarted];

        v47 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _daysSinceLastHypertensionNotificationToDate:v40 withinDateInterval:v44 calendar:v7];
        [v8 setObject:v47 forKeyedSubscript:HDHRAnalyticsPropertyNameDifferenceInDaysBetweenMostRecentHTNotificationAndBPJStarted];

        v48 = v8;
        goto LABEL_28;
      }
    }

    else
    {
    }
  }

  if ([v13 count] == 1)
  {
    v41 = [v13 objectAtIndexedSubscript:0];
    v42 = [v41 startDate];

    if (v42)
    {
      v43 = [v13 objectAtIndexedSubscript:0];
      v40 = [v43 startDate];

      v39 = [v7 dateByAddingUnit:16 value:-180 toDate:v40 options:0];
      v38 = [v7 startOfDayForDate:v39];
      goto LABEL_27;
    }
  }

  v49 = *MEMORY[0x277CCB7A0];
  [v8 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:HDHRAnalyticsPropertyNameCountHTNotificationsUntilMostRecentBPJStarted];
  [v8 setObject:v49 forKeyedSubscript:HDHRAnalyticsPropertyNameDifferenceInDaysBetweenFirstHTNotificationAndBPJStarted];
  [v8 setObject:v49 forKeyedSubscript:HDHRAnalyticsPropertyNameDifferenceInDaysBetweenMostRecentHTNotificationAndBPJStarted];
  v50 = v8;
  v9 = v52;
  v6 = v53;
LABEL_30:

  return v8;
}

- (id)_dnuOnboardingAnalyticsWithDataSource:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [v3 healthDataSource];
  v6 = [v5 featureStatusProviderForIdentifier:*MEMORY[0x277CCC068]];

  v52 = 0;
  v7 = [v6 featureStatusWithError:&v52];
  v8 = v52;
  v9 = [v7 onboardingRecord];
  v10 = [v9 onboardingCompletion];

  v11 = [v7 requirementsEvaluationByContext];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];

  v13 = [v12 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]];
  v50 = v12;
  if (v10)
  {
    v14 = v13;
    v15 = [v7 onboardingRecord];
    v16 = ([v15 onboardingState] != 3) & v14;

    v17 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    [v4 setObject:v17 forKeyedSubscript:HDHRAnalyticsPropertyNameIsOnboardedHTN];

    v18 = [v10 countryCode];
    [v4 setObject:v18 forKeyedSubscript:HDHRAnalyticsPropertyNameCountryCodeHTN];

    if (v16 != 1)
    {
      goto LABEL_8;
    }

    v19 = [v3 environmentDataSource];
    v20 = [v19 currentDate];

    v21 = [v3 environmentDataSource];
    v22 = [v21 calendarCache];
    v23 = [v22 currentCalendar];

    v24 = [v10 completionDate];
    v25 = [v23 components:0x2000 fromDate:v24 toDate:v20 options:0];

    v26 = *MEMORY[0x277CCB7A0];
    if ([v25 weekOfYear] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v47 = v23;
      v27 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v25, "weekOfYear")}];
      HKAnalyticsSigFigBinnedValue();
      v48 = v7;
      v28 = v10;
      v29 = v4;
      v30 = v3;
      v31 = v8;
      v33 = v32 = v6;

      v26 = v33;
      v6 = v32;
      v8 = v31;
      v3 = v30;
      v4 = v29;
      v10 = v28;
      v23 = v47;
      v7 = v48;
    }

    [v4 setObject:v26 forKeyedSubscript:HDHRAnalyticsPropertyNameWeeksSinceOnboardedHTN];

    v12 = v50;
  }

  else
  {
    v34 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [v4 setObject:v34 forKeyedSubscript:HDHRAnalyticsPropertyNameIsOnboardedHTN];

    v20 = [0 countryCode];
    [v4 setObject:v20 forKeyedSubscript:HDHRAnalyticsPropertyNameCountryCodeHTN];
  }

LABEL_8:
  v35 = [v3 healthDataSource];
  v36 = [v35 featureStatusProviderForIdentifier:*MEMORY[0x277CCC070]];

  if (v36)
  {
    v49 = v7;
    v37 = v10;
    v38 = v3;
    v39 = v8;
    v40 = v6;
    v51 = 0;
    v41 = [v36 featureStatusWithError:&v51];
    v42 = v51;
    v43 = [v41 onboardingRecord];
    v44 = [v43 onboardingCompletion];

    if (v44)
    {
      v45 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v44, "version")}];
      [v4 setObject:v45 forKeyedSubscript:HDHRAnalyticsPropertyNameIRNOnboardedVersion];
    }

    v6 = v40;
    v8 = v39;
    v3 = v38;
    v10 = v37;
    v7 = v49;
    v12 = v50;
  }

  return v4;
}

- (id)_ihaOnboardingAnalyticsWithDataSource:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 healthDataSource];

  v7 = [v6 featureStatusProviderForIdentifier:*MEMORY[0x277CCBFF0]];

  if (v7)
  {
    v14 = 0;
    v8 = [v7 featureStatusWithError:&v14];
    v9 = v14;
    v10 = [v8 onboardingRecord];
    v11 = [v10 onboardingCompletion];

    if (v11)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "version")}];
      [v5 setObject:v12 forKeyedSubscript:HDHRAnalyticsPropertyNameAfibOnboardedVersion];
    }
  }

  return v5;
}

- (id)_dateIntervalForCalendarDays:(int64_t)a3 fromDate:(id)a4 calendar:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (a3 < 0)
  {
    v10 = [v8 dateByAddingUnit:16 value:a3 toDate:v7 options:0];
    v11 = 1;
  }

  else
  {
    v10 = v7;
    v11 = a3 + 1;
  }

  v12 = [v9 dateByAddingUnit:16 value:v11 toDate:v7 options:0];
  v13 = [v9 startOfDayForDate:v10];
  v14 = [v9 startOfDayForDate:v12];
  v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v14];

  return v15;
}

- (id)_dnuSampleCountsInPreviousCalendarDayWithCurrentDate:(id)a3 calendar:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [v7 hk_dateBySubtractingDays:1 fromDate:v8];

  v11 = [MEMORY[0x277CCA970] hk_dateIntervalForDayFromDate:v10 calendar:v7];

  v12 = [MEMORY[0x277CCD920] heartbeatSeriesType];
  v13 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:v12 dateInterval:v11];
  [v9 setObject:v13 forKeyedSubscript:HDHRAnalyticsPropertyNameNumTachogramsInPreviousCalendarDay];

  v14 = [MEMORY[0x277CCD830] heartRateType];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = HDHRBackgroundHeartRateContextPredicate(WeakRetained);
  v17 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:v14 dateInterval:v11 additionalPredicate:v16];
  [v9 setObject:v17 forKeyedSubscript:HDHRAnalyticsPropertyNameNumBackgroundHRSamplesInPreviousCalendarDay];

  v18 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8E0]];
  v19 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:v18 dateInterval:v11];
  [v9 setObject:v19 forKeyedSubscript:HDHRAnalyticsPropertyNameNumStandHoursInPreviousCalendarDay];

  return v9;
}

- (id)_ihaSampleCountsAnalyticsWithCurrentDate:(id)a3 calendar:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [MEMORY[0x277CCD0C0] hypertensionEventType];
  v11 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _dateIntervalForCalendarDays:-30 fromDate:v8 calendar:v7];
  v12 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _dateIntervalForCalendarDays:-180 fromDate:v8 calendar:v7];

  v13 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:v10 dateInterval:v12];
  [v9 setObject:v13 forKeyedSubscript:HDHRAnalyticsPropertyNameNumHTNotificationsInPast180Days];

  v14 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:v10 dateInterval:v11];
  [v9 setObject:v14 forKeyedSubscript:HDHRAnalyticsPropertyNameNumHTNotificationsInPast30Days];

  return v9;
}

- (id)_ihaNumDaysAnalyticsWithCurrentDate:(id)a3 calendar:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _daysSinceLastHypertensionNotificationToDate:v8 withinDateInterval:0 calendar:v7];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *MEMORY[0x277CCB7A0];
  }

  [v9 setObject:v11 forKeyedSubscript:HDHRAnalyticsPropertyNameNumDaysSinceLastHTNotification];

  return v9;
}

- (id)_dnuNumDaysAnalyticsWithCurrentDate:(id)a3 calendar:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfLast30DaysWithHypertensiveMeasurementSamplesWithCurrentDate:v8 calendar:v7];
  [v9 setObject:v10 forKeyedSubscript:HDHRAnalyticsPropertyNameNumDaysWithAdequateDataInPast30Days];

  v11 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _numDaysSinceLastAnalysisWithCurrentDate:v8 calendar:v7];

  [v9 setObject:v11 forKeyedSubscript:HDHRAnalyticsPropertyNameNumDaysSinceLastAnalysis];

  return v9;
}

- (id)_numDaysSinceLastAnalysisWithCurrentDate:(id)a3 calendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = [v8 hdhr_hypertensionNotificationsSyncedDomainForProfile:WeakRetained];

  v11 = *MEMORY[0x277D12F08];
  v19 = 0;
  v12 = [v10 dateForKey:v11 error:&v19];
  v13 = v19;
  if (v12)
  {
    v14 = [v7 components:16 fromDate:v12 toDate:v6 options:0];
    v15 = [v14 day];

    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
  }

  else
  {
    _HKInitializeLogging();
    v17 = HKLogAnalytics();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [HDHRHypertensionNotificationsDailyAnalyticsEvent _numDaysSinceLastAnalysisWithCurrentDate:calendar:];
    }

    v16 = &unk_283CD3400;
  }

  return v16;
}

- (id)_countOfLast30DaysWithHypertensiveMeasurementSamplesWithCurrentDate:(id)a3 calendar:(id)a4
{
  v6 = a4;
  v7 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _dateIntervalForCalendarDays:-30 fromDate:a3 calendar:v6];
  v8 = [MEMORY[0x277CBEAB8] hk_oneDay];
  [v8 setCalendar:v6];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = [MEMORY[0x277CCD830] hypertensiveMeasurementType];
  v11 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
  v12 = HDAnalyticsCountOfIntervalsForQuantityType();
  v13 = 0;

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    _HKInitializeLogging();
    v15 = HKLogAnalytics();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [HDHRHypertensionNotificationsDailyAnalyticsEvent _countOfLast30DaysWithHypertensiveMeasurementSamplesWithCurrentDate:calendar:];
    }

    v14 = &unk_283CD3400;
  }

  return v14;
}

- (id)_daysSinceLastHypertensionNotificationToDate:(id)a3 withinDateInterval:(id)a4 calendar:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCD0C0] hypertensionEventType];
  if (v9)
  {
    v12 = HDSampleEntityPredicateForDateInterval();
  }

  else
  {
    v12 = 0;
  }

  v19 = 0;
  v13 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _daysSinceMostRecentSampleWithType:v11 toDate:v8 calendar:v10 additionalPredicate:v12 error:&v19];
  v14 = v19;
  v15 = v14;
  if (v13)
  {
    v16 = v13;
  }

  else if (v14)
  {
    _HKInitializeLogging();
    v17 = HKLogAnalytics();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [HDHRHypertensionNotificationsDailyAnalyticsEvent _daysSinceLastHypertensionNotificationToDate:withinDateInterval:calendar:];
    }

    v16 = &unk_283CD3400;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_daysSinceOldestHypertensionNotificationToDate:(id)a3 withinDateInterval:(id)a4 calendar:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCD0C0] hypertensionEventType];
  if (v9)
  {
    v12 = HDSampleEntityPredicateForDateInterval();
  }

  else
  {
    v12 = 0;
  }

  v19 = 0;
  v13 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _daysSinceOldestSampleWithType:v11 toDate:v8 calendar:v10 additionalPredicate:v12 error:&v19];
  v14 = v19;
  v15 = v14;
  if (v13)
  {
    v16 = v13;
  }

  else if (v14)
  {
    _HKInitializeLogging();
    v17 = HKLogAnalytics();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [HDHRHypertensionNotificationsDailyAnalyticsEvent _daysSinceOldestHypertensionNotificationToDate:withinDateInterval:calendar:];
    }

    v16 = &unk_283CD3400;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_daysSinceMostRecentSampleWithType:(id)a3 toDate:(id)a4 calendar:(id)a5 additionalPredicate:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = MEMORY[0x277D10848];
  v15 = a6;
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v27 = 0;
  v18 = [v14 mostRecentSampleWithType:v16 profile:WeakRetained encodingOptions:0 predicate:v15 anchor:0 error:&v27];

  v19 = v27;
  if (v18)
  {
    v20 = [v18 endDate];
    v21 = [v13 components:16 fromDate:v20 toDate:v12 options:0];
    v22 = [v21 day];

    v23 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
  }

  else
  {
    v24 = v19;
    if (v24)
    {
      if (a7)
      {
        v25 = v24;
        *a7 = v24;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v23 = 0;
  }

  return v23;
}

- (id)_daysSinceOldestSampleWithType:(id)a3 toDate:(id)a4 calendar:(id)a5 additionalPredicate:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = MEMORY[0x277D10848];
  v15 = a6;
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v27 = 0;
  v18 = [v14 oldestSampleWithType:v16 profile:WeakRetained encodingOptions:0 predicate:v15 error:&v27];

  v19 = v27;
  if (v18)
  {
    v20 = [v18 endDate];
    v21 = [v13 components:16 fromDate:v20 toDate:v12 options:0];
    v22 = [v21 day];

    v23 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
  }

  else
  {
    v24 = v19;
    if (v24)
    {
      if (a7)
      {
        v25 = v24;
        *a7 = v24;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v23 = 0;
  }

  return v23;
}

- (id)_countOfSamplesWithType:(id)a3 dateInterval:(id)a4 additionalPredicate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = HDAnalyticsCountOfSamples();

  v13 = 0;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    _HKInitializeLogging();
    v15 = HKLogAnalytics();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [HDHRHypertensionNotificationsDailyAnalyticsEvent _countOfSamplesWithType:dateInterval:additionalPredicate:];
    }

    v14 = &unk_283CD3400;
  }

  return v14;
}

- (void)_ihaBPJCountAnalyticsWithCurrentDate:calendar:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_229486000, v0, v1, "Could not get BPJs with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_numDaysSinceLastAnalysisWithCurrentDate:calendar:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_229486000, v0, v1, "Could not get last analysis window end date with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_countOfLast30DaysWithHypertensiveMeasurementSamplesWithCurrentDate:calendar:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_229486000, v0, v1, "Could not get number of days with adequate data with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_daysSinceLastHypertensionNotificationToDate:withinDateInterval:calendar:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_229486000, v0, v1, "Could not get days since most recent hypertension event with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_daysSinceOldestHypertensionNotificationToDate:withinDateInterval:calendar:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_229486000, v0, v1, "Could not get days since oldest hypertension event with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_countOfSamplesWithType:dateInterval:additionalPredicate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_229486000, v1, OS_LOG_TYPE_ERROR, "Could not get count of samples of type %{public}@ with error: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end