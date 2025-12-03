@interface HDHRHypertensionNotificationsDailyAnalyticsEvent
- (HDHRHypertensionNotificationsDailyAnalyticsEvent)initWithProfile:(id)profile;
- (id)_countOfLast30DaysWithHypertensiveMeasurementSamplesWithCurrentDate:(id)date calendar:(id)calendar;
- (id)_countOfSamplesWithType:(id)type dateInterval:(id)interval additionalPredicate:(id)predicate;
- (id)_dateIntervalForCalendarDays:(int64_t)days fromDate:(id)date calendar:(id)calendar;
- (id)_daysSinceLastHypertensionNotificationToDate:(id)date withinDateInterval:(id)interval calendar:(id)calendar;
- (id)_daysSinceMostRecentSampleWithType:(id)type toDate:(id)date calendar:(id)calendar additionalPredicate:(id)predicate error:(id *)error;
- (id)_daysSinceOldestHypertensionNotificationToDate:(id)date withinDateInterval:(id)interval calendar:(id)calendar;
- (id)_daysSinceOldestSampleWithType:(id)type toDate:(id)date calendar:(id)calendar additionalPredicate:(id)predicate error:(id *)error;
- (id)_dnuNumDaysAnalyticsWithCurrentDate:(id)date calendar:(id)calendar;
- (id)_dnuOnboardingAnalyticsWithDataSource:(id)source;
- (id)_dnuSampleCountsInPreviousCalendarDayWithCurrentDate:(id)date calendar:(id)calendar;
- (id)_ihaBPJCountAnalyticsWithCurrentDate:(id)date calendar:(id)calendar;
- (id)_ihaNumDaysAnalyticsWithCurrentDate:(id)date calendar:(id)calendar;
- (id)_ihaOnboardingAnalyticsWithDataSource:(id)source;
- (id)_ihaSampleCountsAnalyticsWithCurrentDate:(id)date calendar:(id)calendar;
- (id)_numDaysSinceLastAnalysisWithCurrentDate:(id)date calendar:(id)calendar;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HDHRHypertensionNotificationsDailyAnalyticsEvent

- (HDHRHypertensionNotificationsDailyAnalyticsEvent)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDHRHypertensionNotificationsDailyAnalyticsEvent;
  v5 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = MEMORY[0x277CBEB38];
  sourceCopy = source;
  v7 = objc_alloc_init(v5);
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];

  environmentDataSource2 = [sourceCopy environmentDataSource];
  calendarCache = [environmentDataSource2 calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  v13 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _dnuSampleCountsInPreviousCalendarDayWithCurrentDate:currentDate calendar:currentCalendar];
  [v7 hk_addEntriesFromNonNilDictionary:v13];

  v14 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _dnuNumDaysAnalyticsWithCurrentDate:currentDate calendar:currentCalendar];
  [v7 hk_addEntriesFromNonNilDictionary:v14];

  v15 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _dnuOnboardingAnalyticsWithDataSource:sourceCopy];

  [v7 hk_addEntriesFromNonNilDictionary:v15];

  return v7;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];

  environmentDataSource2 = [sourceCopy environmentDataSource];
  calendarCache = [environmentDataSource2 calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _ihaNumDaysAnalyticsWithCurrentDate:currentDate calendar:currentCalendar];
  [v11 hk_addEntriesFromNonNilDictionary:v12];

  v13 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _ihaSampleCountsAnalyticsWithCurrentDate:currentDate calendar:currentCalendar];
  [v11 hk_addEntriesFromNonNilDictionary:v13];

  v14 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _ihaOnboardingAnalyticsWithDataSource:sourceCopy];

  [v11 hk_addEntriesFromNonNilDictionary:v14];
  v15 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _ihaBPJCountAnalyticsWithCurrentDate:currentDate calendar:currentCalendar];
  [v11 hk_addEntriesFromNonNilDictionary:v15];

  return v11;
}

- (id)_ihaBPJCountAnalyticsWithCurrentDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  hypertensionEventType = [MEMORY[0x277CCD0C0] hypertensionEventType];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  heartHealthProfileExtension = [WeakRetained heartHealthProfileExtension];
  bloodPressureJournalManager = [heartHealthProfileExtension bloodPressureJournalManager];
  v54 = 0;
  v13 = [bloodPressureJournalManager bloodPressureJournalsWithLimit:2 ascending:0 error:&v54];
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
      v27 = [calendarCopy dateByAddingUnit:16 value:-180 toDate:dateCopy options:0];
      v28 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v27 endDate:dateCopy];
      v29 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:hypertensionEventType dateInterval:v28];
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

  v53 = dateCopy;
  v52 = hypertensionEventType;
  if ([v13 count])
  {
    v15 = [v13 objectAtIndexedSubscript:0];
    startDate = [v15 startDate];
    if (!startDate)
    {
LABEL_18:

      goto LABEL_19;
    }

    v17 = startDate;
    v18 = [v13 objectAtIndexedSubscript:0];
    startDate2 = [v18 startDate];
    v20 = [startDate2 hk_isBeforeDate:dateCopy];

    if (v20)
    {
      v21 = objc_alloc(MEMORY[0x277CCA970]);
      v22 = [v13 objectAtIndexedSubscript:0];
      startDate3 = [v22 startDate];
      v15 = [v21 initWithStartDate:startDate3 endDate:v53];

      hypertensionEventType = v52;
      v24 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:v52 dateInterval:v15];
      v25 = v24;
      if (v24 && [v24 integerValue] >= 1)
      {
        [v8 setObject:&unk_283CD33D0 forKeyedSubscript:HDHRAnalyticsPropertyNameCountHTNotificationsUntilMostRecentBPJStarted];
        [v8 setObject:&unk_283CD33D0 forKeyedSubscript:HDHRAnalyticsPropertyNameDifferenceInDaysBetweenFirstHTNotificationAndBPJStarted];
        [v8 setObject:&unk_283CD33D0 forKeyedSubscript:HDHRAnalyticsPropertyNameDifferenceInDaysBetweenMostRecentHTNotificationAndBPJStarted];
        v26 = v8;

LABEL_28:
        dateCopy = v53;
        goto LABEL_30;
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  if ([v13 count] == 2)
  {
    v32 = [v13 objectAtIndexedSubscript:1];
    startDate4 = [v32 startDate];
    if (startDate4)
    {
      v34 = startDate4;
      v35 = [v13 objectAtIndexedSubscript:0];
      startDate5 = [v35 startDate];

      if (startDate5)
      {
        v37 = [v13 objectAtIndexedSubscript:1];
        startDate6 = [v37 startDate];

        v39 = [v13 objectAtIndexedSubscript:0];
        startDate7 = [v39 startDate];
LABEL_27:

        v44 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:startDate6 endDate:startDate7];
        hypertensionEventType = v52;
        v45 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:v52 dateInterval:v44];
        [v8 setObject:v45 forKeyedSubscript:HDHRAnalyticsPropertyNameCountHTNotificationsUntilMostRecentBPJStarted];

        v46 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _daysSinceOldestHypertensionNotificationToDate:startDate7 withinDateInterval:v44 calendar:calendarCopy];
        [v8 setObject:v46 forKeyedSubscript:HDHRAnalyticsPropertyNameDifferenceInDaysBetweenFirstHTNotificationAndBPJStarted];

        v47 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _daysSinceLastHypertensionNotificationToDate:startDate7 withinDateInterval:v44 calendar:calendarCopy];
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
    startDate8 = [v41 startDate];

    if (startDate8)
    {
      v43 = [v13 objectAtIndexedSubscript:0];
      startDate7 = [v43 startDate];

      v39 = [calendarCopy dateByAddingUnit:16 value:-180 toDate:startDate7 options:0];
      startDate6 = [calendarCopy startOfDayForDate:v39];
      goto LABEL_27;
    }
  }

  v49 = *MEMORY[0x277CCB7A0];
  [v8 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:HDHRAnalyticsPropertyNameCountHTNotificationsUntilMostRecentBPJStarted];
  [v8 setObject:v49 forKeyedSubscript:HDHRAnalyticsPropertyNameDifferenceInDaysBetweenFirstHTNotificationAndBPJStarted];
  [v8 setObject:v49 forKeyedSubscript:HDHRAnalyticsPropertyNameDifferenceInDaysBetweenMostRecentHTNotificationAndBPJStarted];
  v50 = v8;
  hypertensionEventType = v52;
  dateCopy = v53;
LABEL_30:

  return v8;
}

- (id)_dnuOnboardingAnalyticsWithDataSource:(id)source
{
  sourceCopy = source;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  healthDataSource = [sourceCopy healthDataSource];
  v6 = [healthDataSource featureStatusProviderForIdentifier:*MEMORY[0x277CCC068]];

  v52 = 0;
  v7 = [v6 featureStatusWithError:&v52];
  v8 = v52;
  onboardingRecord = [v7 onboardingRecord];
  onboardingCompletion = [onboardingRecord onboardingCompletion];

  requirementsEvaluationByContext = [v7 requirementsEvaluationByContext];
  v12 = [requirementsEvaluationByContext objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];

  v13 = [v12 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]];
  v50 = v12;
  if (onboardingCompletion)
  {
    v14 = v13;
    onboardingRecord2 = [v7 onboardingRecord];
    v16 = ([onboardingRecord2 onboardingState] != 3) & v14;

    v17 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    [v4 setObject:v17 forKeyedSubscript:HDHRAnalyticsPropertyNameIsOnboardedHTN];

    countryCode = [onboardingCompletion countryCode];
    [v4 setObject:countryCode forKeyedSubscript:HDHRAnalyticsPropertyNameCountryCodeHTN];

    if (v16 != 1)
    {
      goto LABEL_8;
    }

    environmentDataSource = [sourceCopy environmentDataSource];
    currentDate = [environmentDataSource currentDate];

    environmentDataSource2 = [sourceCopy environmentDataSource];
    calendarCache = [environmentDataSource2 calendarCache];
    currentCalendar = [calendarCache currentCalendar];

    completionDate = [onboardingCompletion completionDate];
    v25 = [currentCalendar components:0x2000 fromDate:completionDate toDate:currentDate options:0];

    v26 = *MEMORY[0x277CCB7A0];
    if ([v25 weekOfYear] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v47 = currentCalendar;
      v27 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v25, "weekOfYear")}];
      HKAnalyticsSigFigBinnedValue();
      v48 = v7;
      v28 = onboardingCompletion;
      v29 = v4;
      v30 = sourceCopy;
      v31 = v8;
      v33 = v32 = v6;

      v26 = v33;
      v6 = v32;
      v8 = v31;
      sourceCopy = v30;
      v4 = v29;
      onboardingCompletion = v28;
      currentCalendar = v47;
      v7 = v48;
    }

    [v4 setObject:v26 forKeyedSubscript:HDHRAnalyticsPropertyNameWeeksSinceOnboardedHTN];

    v12 = v50;
  }

  else
  {
    v34 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [v4 setObject:v34 forKeyedSubscript:HDHRAnalyticsPropertyNameIsOnboardedHTN];

    currentDate = [0 countryCode];
    [v4 setObject:currentDate forKeyedSubscript:HDHRAnalyticsPropertyNameCountryCodeHTN];
  }

LABEL_8:
  healthDataSource2 = [sourceCopy healthDataSource];
  v36 = [healthDataSource2 featureStatusProviderForIdentifier:*MEMORY[0x277CCC070]];

  if (v36)
  {
    v49 = v7;
    v37 = onboardingCompletion;
    v38 = sourceCopy;
    v39 = v8;
    v40 = v6;
    v51 = 0;
    v41 = [v36 featureStatusWithError:&v51];
    v42 = v51;
    onboardingRecord3 = [v41 onboardingRecord];
    onboardingCompletion2 = [onboardingRecord3 onboardingCompletion];

    if (onboardingCompletion2)
    {
      v45 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(onboardingCompletion2, "version")}];
      [v4 setObject:v45 forKeyedSubscript:HDHRAnalyticsPropertyNameIRNOnboardedVersion];
    }

    v6 = v40;
    v8 = v39;
    sourceCopy = v38;
    onboardingCompletion = v37;
    v7 = v49;
    v12 = v50;
  }

  return v4;
}

- (id)_ihaOnboardingAnalyticsWithDataSource:(id)source
{
  v3 = MEMORY[0x277CBEB38];
  sourceCopy = source;
  v5 = objc_alloc_init(v3);
  healthDataSource = [sourceCopy healthDataSource];

  v7 = [healthDataSource featureStatusProviderForIdentifier:*MEMORY[0x277CCBFF0]];

  if (v7)
  {
    v14 = 0;
    v8 = [v7 featureStatusWithError:&v14];
    v9 = v14;
    onboardingRecord = [v8 onboardingRecord];
    onboardingCompletion = [onboardingRecord onboardingCompletion];

    if (onboardingCompletion)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(onboardingCompletion, "version")}];
      [v5 setObject:v12 forKeyedSubscript:HDHRAnalyticsPropertyNameAfibOnboardedVersion];
    }
  }

  return v5;
}

- (id)_dateIntervalForCalendarDays:(int64_t)days fromDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v9 = calendarCopy;
  if (days < 0)
  {
    v10 = [calendarCopy dateByAddingUnit:16 value:days toDate:dateCopy options:0];
    v11 = 1;
  }

  else
  {
    v10 = dateCopy;
    v11 = days + 1;
  }

  v12 = [v9 dateByAddingUnit:16 value:v11 toDate:dateCopy options:0];
  v13 = [v9 startOfDayForDate:v10];
  v14 = [v9 startOfDayForDate:v12];
  v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v14];

  return v15;
}

- (id)_dnuSampleCountsInPreviousCalendarDayWithCurrentDate:(id)date calendar:(id)calendar
{
  v6 = MEMORY[0x277CBEB38];
  calendarCopy = calendar;
  dateCopy = date;
  v9 = objc_alloc_init(v6);
  v10 = [calendarCopy hk_dateBySubtractingDays:1 fromDate:dateCopy];

  v11 = [MEMORY[0x277CCA970] hk_dateIntervalForDayFromDate:v10 calendar:calendarCopy];

  heartbeatSeriesType = [MEMORY[0x277CCD920] heartbeatSeriesType];
  v13 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:heartbeatSeriesType dateInterval:v11];
  [v9 setObject:v13 forKeyedSubscript:HDHRAnalyticsPropertyNameNumTachogramsInPreviousCalendarDay];

  heartRateType = [MEMORY[0x277CCD830] heartRateType];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = HDHRBackgroundHeartRateContextPredicate(WeakRetained);
  v17 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:heartRateType dateInterval:v11 additionalPredicate:v16];
  [v9 setObject:v17 forKeyedSubscript:HDHRAnalyticsPropertyNameNumBackgroundHRSamplesInPreviousCalendarDay];

  v18 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8E0]];
  v19 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:v18 dateInterval:v11];
  [v9 setObject:v19 forKeyedSubscript:HDHRAnalyticsPropertyNameNumStandHoursInPreviousCalendarDay];

  return v9;
}

- (id)_ihaSampleCountsAnalyticsWithCurrentDate:(id)date calendar:(id)calendar
{
  v6 = MEMORY[0x277CBEB38];
  calendarCopy = calendar;
  dateCopy = date;
  v9 = objc_alloc_init(v6);
  hypertensionEventType = [MEMORY[0x277CCD0C0] hypertensionEventType];
  v11 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _dateIntervalForCalendarDays:-30 fromDate:dateCopy calendar:calendarCopy];
  v12 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _dateIntervalForCalendarDays:-180 fromDate:dateCopy calendar:calendarCopy];

  v13 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:hypertensionEventType dateInterval:v12];
  [v9 setObject:v13 forKeyedSubscript:HDHRAnalyticsPropertyNameNumHTNotificationsInPast180Days];

  v14 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfSamplesWithType:hypertensionEventType dateInterval:v11];
  [v9 setObject:v14 forKeyedSubscript:HDHRAnalyticsPropertyNameNumHTNotificationsInPast30Days];

  return v9;
}

- (id)_ihaNumDaysAnalyticsWithCurrentDate:(id)date calendar:(id)calendar
{
  v6 = MEMORY[0x277CBEB38];
  calendarCopy = calendar;
  dateCopy = date;
  v9 = objc_alloc_init(v6);
  v10 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _daysSinceLastHypertensionNotificationToDate:dateCopy withinDateInterval:0 calendar:calendarCopy];

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

- (id)_dnuNumDaysAnalyticsWithCurrentDate:(id)date calendar:(id)calendar
{
  v6 = MEMORY[0x277CBEB38];
  calendarCopy = calendar;
  dateCopy = date;
  v9 = objc_alloc_init(v6);
  v10 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _countOfLast30DaysWithHypertensiveMeasurementSamplesWithCurrentDate:dateCopy calendar:calendarCopy];
  [v9 setObject:v10 forKeyedSubscript:HDHRAnalyticsPropertyNameNumDaysWithAdequateDataInPast30Days];

  v11 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _numDaysSinceLastAnalysisWithCurrentDate:dateCopy calendar:calendarCopy];

  [v9 setObject:v11 forKeyedSubscript:HDHRAnalyticsPropertyNameNumDaysSinceLastAnalysis];

  return v9;
}

- (id)_numDaysSinceLastAnalysisWithCurrentDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v8 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = [v8 hdhr_hypertensionNotificationsSyncedDomainForProfile:WeakRetained];

  v11 = *MEMORY[0x277D12F08];
  v19 = 0;
  v12 = [v10 dateForKey:v11 error:&v19];
  v13 = v19;
  if (v12)
  {
    v14 = [calendarCopy components:16 fromDate:v12 toDate:dateCopy options:0];
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

- (id)_countOfLast30DaysWithHypertensiveMeasurementSamplesWithCurrentDate:(id)date calendar:(id)calendar
{
  calendarCopy = calendar;
  v7 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _dateIntervalForCalendarDays:-30 fromDate:date calendar:calendarCopy];
  hk_oneDay = [MEMORY[0x277CBEAB8] hk_oneDay];
  [hk_oneDay setCalendar:calendarCopy];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  hypertensiveMeasurementType = [MEMORY[0x277CCD830] hypertensiveMeasurementType];
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

- (id)_daysSinceLastHypertensionNotificationToDate:(id)date withinDateInterval:(id)interval calendar:(id)calendar
{
  dateCopy = date;
  intervalCopy = interval;
  calendarCopy = calendar;
  hypertensionEventType = [MEMORY[0x277CCD0C0] hypertensionEventType];
  if (intervalCopy)
  {
    v12 = HDSampleEntityPredicateForDateInterval();
  }

  else
  {
    v12 = 0;
  }

  v19 = 0;
  v13 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _daysSinceMostRecentSampleWithType:hypertensionEventType toDate:dateCopy calendar:calendarCopy additionalPredicate:v12 error:&v19];
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

- (id)_daysSinceOldestHypertensionNotificationToDate:(id)date withinDateInterval:(id)interval calendar:(id)calendar
{
  dateCopy = date;
  intervalCopy = interval;
  calendarCopy = calendar;
  hypertensionEventType = [MEMORY[0x277CCD0C0] hypertensionEventType];
  if (intervalCopy)
  {
    v12 = HDSampleEntityPredicateForDateInterval();
  }

  else
  {
    v12 = 0;
  }

  v19 = 0;
  v13 = [(HDHRHypertensionNotificationsDailyAnalyticsEvent *)self _daysSinceOldestSampleWithType:hypertensionEventType toDate:dateCopy calendar:calendarCopy additionalPredicate:v12 error:&v19];
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

- (id)_daysSinceMostRecentSampleWithType:(id)type toDate:(id)date calendar:(id)calendar additionalPredicate:(id)predicate error:(id *)error
{
  dateCopy = date;
  calendarCopy = calendar;
  v14 = MEMORY[0x277D10848];
  predicateCopy = predicate;
  typeCopy = type;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v27 = 0;
  v18 = [v14 mostRecentSampleWithType:typeCopy profile:WeakRetained encodingOptions:0 predicate:predicateCopy anchor:0 error:&v27];

  v19 = v27;
  if (v18)
  {
    endDate = [v18 endDate];
    v21 = [calendarCopy components:16 fromDate:endDate toDate:dateCopy options:0];
    v22 = [v21 day];

    v23 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
  }

  else
  {
    v24 = v19;
    if (v24)
    {
      if (error)
      {
        v25 = v24;
        *error = v24;
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

- (id)_daysSinceOldestSampleWithType:(id)type toDate:(id)date calendar:(id)calendar additionalPredicate:(id)predicate error:(id *)error
{
  dateCopy = date;
  calendarCopy = calendar;
  v14 = MEMORY[0x277D10848];
  predicateCopy = predicate;
  typeCopy = type;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v27 = 0;
  v18 = [v14 oldestSampleWithType:typeCopy profile:WeakRetained encodingOptions:0 predicate:predicateCopy error:&v27];

  v19 = v27;
  if (v18)
  {
    endDate = [v18 endDate];
    v21 = [calendarCopy components:16 fromDate:endDate toDate:dateCopy options:0];
    v22 = [v21 day];

    v23 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
  }

  else
  {
    v24 = v19;
    if (v24)
    {
      if (error)
      {
        v25 = v24;
        *error = v24;
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

- (id)_countOfSamplesWithType:(id)type dateInterval:(id)interval additionalPredicate:(id)predicate
{
  typeCopy = type;
  predicateCopy = predicate;
  intervalCopy = interval;
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