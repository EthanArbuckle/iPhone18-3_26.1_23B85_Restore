@interface HDHRAFibBurdenNotificationModeDeterminer
- ($0AC6E346AE4835514AAA8AC86D8F4844)_dayIndexRangeFromSample:(id)sample;
- (BOOL)_isPreviousSampleSevenDaysBeforeCurrentSample:(id)sample previousSample:(id)previousSample;
- (BOOL)_isSampleForPreviousCalendarWeek:(id)week;
- (BOOL)_shouldShowNotificationWithEndWeekdayToFire:(int64_t)fire;
- (HDHRAFibBurdenNotificationModeDeterminer)initWithProfile:(id)profile calendarCache:(id)cache dateGenerator:(id)generator;
- (id)_noDataNotificationWithFeatureStatus:(id)status onboardedWithinAnalysisInterval:(BOOL)interval;
- (id)_noNotification;
- (id)_notificationWithCurrentValue:(id)value errorOut:(id *)out;
- (id)_previousSampleFromCurrentValue:(id)value error:(id *)error;
- (void)_extractFromSample:(id)sample percentageValue:(id *)value isClamped:(id *)clamped;
@end

@implementation HDHRAFibBurdenNotificationModeDeterminer

- (HDHRAFibBurdenNotificationModeDeterminer)initWithProfile:(id)profile calendarCache:(id)cache dateGenerator:(id)generator
{
  profileCopy = profile;
  cacheCopy = cache;
  generatorCopy = generator;
  v16.receiver = self;
  v16.super_class = HDHRAFibBurdenNotificationModeDeterminer;
  v11 = [(HDHRAFibBurdenNotificationModeDeterminer *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    objc_storeStrong(&v12->_calendarCache, cache);
    v13 = MEMORY[0x22AACDB50](generatorCopy);
    dateGenerator = v12->_dateGenerator;
    v12->_dateGenerator = v13;
  }

  return v12;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_dayIndexRangeFromSample:(id)sample
{
  calendarCache = self->_calendarCache;
  sampleCopy = sample;
  _timeZone = [sampleCopy _timeZone];
  v6 = [(HKCalendarCache *)calendarCache calendarForTimeZone:_timeZone];
  v7 = [sampleCopy hk_dayIndexRangeWithCalendar:v6];
  v9 = v8;

  v10 = v9 - 1;
  v11 = v7;
  result.var1 = v10;
  result.var0 = v11;
  return result;
}

- (BOOL)_shouldShowNotificationWithEndWeekdayToFire:(int64_t)fire
{
  currentCalendar = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v6 = (*(self->_dateGenerator + 2))();
  v7 = [currentCalendar component:512 fromDate:v6];

  return v7 <= fire;
}

- (BOOL)_isSampleForPreviousCalendarWeek:(id)week
{
  dateGenerator = self->_dateGenerator;
  v5 = dateGenerator[2];
  weekCopy = week;
  v7 = v5(dateGenerator);
  currentCalendar = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v9 = HKHRAFibBurdenPreviousWeekDayIndexRange();
  v11 = v10;

  v12 = [(HDHRAFibBurdenNotificationModeDeterminer *)self _dayIndexRangeFromSample:weekCopy];
  v14 = v13;

  return v9 == v12 && v11 == v14;
}

- (void)_extractFromSample:(id)sample percentageValue:(id *)value isClamped:(id *)clamped
{
  v7 = MEMORY[0x277CCABB0];
  sampleCopy = sample;
  quantity = [sampleCopy quantity];
  [quantity _value];
  *value = [v7 numberWithDouble:v10 * 100.0];

  v11 = MEMORY[0x277CCABB0];
  metadata = [sampleCopy metadata];

  v12 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC4F8]];
  *clamped = [v11 numberWithBool:{objc_msgSend(v12, "isEqual:", MEMORY[0x277CBEC38])}];
}

- (id)_previousSampleFromCurrentValue:(id)value error:(id *)error
{
  valueCopy = value;
  currentCalendar = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  startDate = [valueCopy startDate];
  v9 = [currentCalendar dateByAddingUnit:16 value:-1 toDate:startDate options:0];

  v10 = HDSampleEntityPredicateForStartDate();
  v11 = MEMORY[0x277D10848];
  v12 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC950]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [v11 mostRecentSampleWithType:v12 profile:WeakRetained encodingOptions:0 predicate:v10 anchor:0 error:error];

  if (v14 && [(HDHRAFibBurdenNotificationModeDeterminer *)self _isPreviousSampleSevenDaysBeforeCurrentSample:valueCopy previousSample:v14])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_isPreviousSampleSevenDaysBeforeCurrentSample:(id)sample previousSample:(id)previousSample
{
  previousSampleCopy = previousSample;
  v7 = [(HDHRAFibBurdenNotificationModeDeterminer *)self _dayIndexRangeFromSample:sample];
  v9 = v8;
  v10 = [(HDHRAFibBurdenNotificationModeDeterminer *)self _dayIndexRangeFromSample:previousSampleCopy];
  v12 = v11;

  return v7 - 7 == v10 && v9 == v12;
}

- (id)_noNotification
{
  v2 = [objc_alloc(MEMORY[0x277D12F50]) initWithType:0 shouldForwardToWatch:0 currentPercentage:0 currentValueClamped:0 currentValueDateInterval:0 currentValueUUID:0 previousPercentage:0 previousValueClamped:0 previousTimeZoneDiffersFromCurrent:0];

  return v2;
}

- (id)_noDataNotificationWithFeatureStatus:(id)status onboardedWithinAnalysisInterval:(BOOL)interval
{
  v14 = *MEMORY[0x277D85DE8];
  if (interval)
  {
    _HKInitializeLogging();
    v5 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_229486000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarded within analysis interval, not posting no data notification", buf, 0xCu);
    }

    _noNotification = [(HDHRAFibBurdenNotificationModeDeterminer *)self _noNotification];
  }

  else
  {
    requirementsEvaluationByContext = [status requirementsEvaluationByContext];
    v8 = [requirementsEvaluationByContext objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    areAllRequirementsSatisfied = [v8 areAllRequirementsSatisfied];

    _noNotification = [objc_alloc(MEMORY[0x277D12F50]) initWithType:3 shouldForwardToWatch:areAllRequirementsSatisfied currentPercentage:0 currentValueClamped:0 currentValueDateInterval:0 currentValueUUID:0 previousPercentage:0 previousValueClamped:0 previousTimeZoneDiffersFromCurrent:0];
  }

  v10 = *MEMORY[0x277D85DE8];

  return _noNotification;
}

- (id)_notificationWithCurrentValue:(id)value errorOut:(id *)out
{
  valueCopy = value;
  if ([(HDHRAFibBurdenNotificationModeDeterminer *)self _isSampleForPreviousCalendarWeek:valueCopy])
  {
    v30 = 0;
    v31 = 0;
    [(HDHRAFibBurdenNotificationModeDeterminer *)self _extractFromSample:valueCopy percentageValue:&v31 isClamped:&v30];
    v27 = v31;
    v26 = v30;
    v7 = [(HDHRAFibBurdenNotificationModeDeterminer *)self _previousSampleFromCurrentValue:valueCopy error:out];
    v25 = v7;
    if (v7)
    {
      v8 = v7;
      v28 = 0;
      v29 = 0;
      [(HDHRAFibBurdenNotificationModeDeterminer *)self _extractFromSample:v7 percentageValue:&v29 isClamped:&v28];
      v9 = v29;
      v10 = v28;
      v11 = MEMORY[0x277CCABB0];
      _timeZone = [valueCopy _timeZone];
      _timeZone2 = [v8 _timeZone];
      v14 = [v11 numberWithInt:{objc_msgSend(_timeZone, "isEqualToTimeZone:", _timeZone2) ^ 1}];

      v15 = 2;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v14 = 0;
      v15 = 1;
    }

    v18 = objc_alloc(MEMORY[0x277D12F50]);
    v19 = objc_alloc(MEMORY[0x277CCA970]);
    startDate = [valueCopy startDate];
    endDate = [valueCopy endDate];
    v22 = [v19 initWithStartDate:startDate endDate:endDate];
    uUID = [valueCopy UUID];
    _noNotification = [v18 initWithType:v15 shouldForwardToWatch:1 currentPercentage:v27 currentValueClamped:v26 currentValueDateInterval:v22 currentValueUUID:uUID previousPercentage:v9 previousValueClamped:v10 previousTimeZoneDiffersFromCurrent:v14];
  }

  else
  {
    _HKInitializeLogging();
    v16 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [HDHRAFibBurdenNotificationModeDeterminer _notificationWithCurrentValue:v16 errorOut:?];
    }

    _noNotification = [(HDHRAFibBurdenNotificationModeDeterminer *)self _noNotification];
  }

  return _noNotification;
}

- (void)notificationModeForCurrentValue:(uint64_t)a1 featureStatus:(NSObject *)a2 onboardedWithinAnalysisInterval:endWeekdayToFire:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_229486000, a2, OS_LOG_TYPE_FAULT, "[%{public}@] Attempting to post notification for analysis when analysis is not allowed", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_notificationWithCurrentValue:(uint64_t)a1 errorOut:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_229486000, a2, OS_LOG_TYPE_FAULT, "[%{public}@] Notified sample created, but most recent sample is not for previous calendar week", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end