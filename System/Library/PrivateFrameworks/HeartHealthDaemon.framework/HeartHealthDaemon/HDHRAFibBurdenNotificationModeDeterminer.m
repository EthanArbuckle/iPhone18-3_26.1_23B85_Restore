@interface HDHRAFibBurdenNotificationModeDeterminer
- ($0AC6E346AE4835514AAA8AC86D8F4844)_dayIndexRangeFromSample:(id)a3;
- (BOOL)_isPreviousSampleSevenDaysBeforeCurrentSample:(id)a3 previousSample:(id)a4;
- (BOOL)_isSampleForPreviousCalendarWeek:(id)a3;
- (BOOL)_shouldShowNotificationWithEndWeekdayToFire:(int64_t)a3;
- (HDHRAFibBurdenNotificationModeDeterminer)initWithProfile:(id)a3 calendarCache:(id)a4 dateGenerator:(id)a5;
- (id)_noDataNotificationWithFeatureStatus:(id)a3 onboardedWithinAnalysisInterval:(BOOL)a4;
- (id)_noNotification;
- (id)_notificationWithCurrentValue:(id)a3 errorOut:(id *)a4;
- (id)_previousSampleFromCurrentValue:(id)a3 error:(id *)a4;
- (void)_extractFromSample:(id)a3 percentageValue:(id *)a4 isClamped:(id *)a5;
@end

@implementation HDHRAFibBurdenNotificationModeDeterminer

- (HDHRAFibBurdenNotificationModeDeterminer)initWithProfile:(id)a3 calendarCache:(id)a4 dateGenerator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HDHRAFibBurdenNotificationModeDeterminer;
  v11 = [(HDHRAFibBurdenNotificationModeDeterminer *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, v8);
    objc_storeStrong(&v12->_calendarCache, a4);
    v13 = MEMORY[0x22AACDB50](v10);
    dateGenerator = v12->_dateGenerator;
    v12->_dateGenerator = v13;
  }

  return v12;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_dayIndexRangeFromSample:(id)a3
{
  calendarCache = self->_calendarCache;
  v4 = a3;
  v5 = [v4 _timeZone];
  v6 = [(HKCalendarCache *)calendarCache calendarForTimeZone:v5];
  v7 = [v4 hk_dayIndexRangeWithCalendar:v6];
  v9 = v8;

  v10 = v9 - 1;
  v11 = v7;
  result.var1 = v10;
  result.var0 = v11;
  return result;
}

- (BOOL)_shouldShowNotificationWithEndWeekdayToFire:(int64_t)a3
{
  v5 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v6 = (*(self->_dateGenerator + 2))();
  v7 = [v5 component:512 fromDate:v6];

  return v7 <= a3;
}

- (BOOL)_isSampleForPreviousCalendarWeek:(id)a3
{
  dateGenerator = self->_dateGenerator;
  v5 = dateGenerator[2];
  v6 = a3;
  v7 = v5(dateGenerator);
  v8 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v9 = HKHRAFibBurdenPreviousWeekDayIndexRange();
  v11 = v10;

  v12 = [(HDHRAFibBurdenNotificationModeDeterminer *)self _dayIndexRangeFromSample:v6];
  v14 = v13;

  return v9 == v12 && v11 == v14;
}

- (void)_extractFromSample:(id)a3 percentageValue:(id *)a4 isClamped:(id *)a5
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a3;
  v9 = [v8 quantity];
  [v9 _value];
  *a4 = [v7 numberWithDouble:v10 * 100.0];

  v11 = MEMORY[0x277CCABB0];
  v13 = [v8 metadata];

  v12 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCC4F8]];
  *a5 = [v11 numberWithBool:{objc_msgSend(v12, "isEqual:", MEMORY[0x277CBEC38])}];
}

- (id)_previousSampleFromCurrentValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v8 = [v6 startDate];
  v9 = [v7 dateByAddingUnit:16 value:-1 toDate:v8 options:0];

  v10 = HDSampleEntityPredicateForStartDate();
  v11 = MEMORY[0x277D10848];
  v12 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC950]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [v11 mostRecentSampleWithType:v12 profile:WeakRetained encodingOptions:0 predicate:v10 anchor:0 error:a4];

  if (v14 && [(HDHRAFibBurdenNotificationModeDeterminer *)self _isPreviousSampleSevenDaysBeforeCurrentSample:v6 previousSample:v14])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_isPreviousSampleSevenDaysBeforeCurrentSample:(id)a3 previousSample:(id)a4
{
  v6 = a4;
  v7 = [(HDHRAFibBurdenNotificationModeDeterminer *)self _dayIndexRangeFromSample:a3];
  v9 = v8;
  v10 = [(HDHRAFibBurdenNotificationModeDeterminer *)self _dayIndexRangeFromSample:v6];
  v12 = v11;

  return v7 - 7 == v10 && v9 == v12;
}

- (id)_noNotification
{
  v2 = [objc_alloc(MEMORY[0x277D12F50]) initWithType:0 shouldForwardToWatch:0 currentPercentage:0 currentValueClamped:0 currentValueDateInterval:0 currentValueUUID:0 previousPercentage:0 previousValueClamped:0 previousTimeZoneDiffersFromCurrent:0];

  return v2;
}

- (id)_noDataNotificationWithFeatureStatus:(id)a3 onboardedWithinAnalysisInterval:(BOOL)a4
{
  v14 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    _HKInitializeLogging();
    v5 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = self;
      _os_log_impl(&dword_229486000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarded within analysis interval, not posting no data notification", buf, 0xCu);
    }

    v6 = [(HDHRAFibBurdenNotificationModeDeterminer *)self _noNotification];
  }

  else
  {
    v7 = [a3 requirementsEvaluationByContext];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v9 = [v8 areAllRequirementsSatisfied];

    v6 = [objc_alloc(MEMORY[0x277D12F50]) initWithType:3 shouldForwardToWatch:v9 currentPercentage:0 currentValueClamped:0 currentValueDateInterval:0 currentValueUUID:0 previousPercentage:0 previousValueClamped:0 previousTimeZoneDiffersFromCurrent:0];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_notificationWithCurrentValue:(id)a3 errorOut:(id *)a4
{
  v6 = a3;
  if ([(HDHRAFibBurdenNotificationModeDeterminer *)self _isSampleForPreviousCalendarWeek:v6])
  {
    v30 = 0;
    v31 = 0;
    [(HDHRAFibBurdenNotificationModeDeterminer *)self _extractFromSample:v6 percentageValue:&v31 isClamped:&v30];
    v27 = v31;
    v26 = v30;
    v7 = [(HDHRAFibBurdenNotificationModeDeterminer *)self _previousSampleFromCurrentValue:v6 error:a4];
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
      v12 = [v6 _timeZone];
      v13 = [v8 _timeZone];
      v14 = [v11 numberWithInt:{objc_msgSend(v12, "isEqualToTimeZone:", v13) ^ 1}];

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
    v20 = [v6 startDate];
    v21 = [v6 endDate];
    v22 = [v19 initWithStartDate:v20 endDate:v21];
    v23 = [v6 UUID];
    v17 = [v18 initWithType:v15 shouldForwardToWatch:1 currentPercentage:v27 currentValueClamped:v26 currentValueDateInterval:v22 currentValueUUID:v23 previousPercentage:v9 previousValueClamped:v10 previousTimeZoneDiffersFromCurrent:v14];
  }

  else
  {
    _HKInitializeLogging();
    v16 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [HDHRAFibBurdenNotificationModeDeterminer _notificationWithCurrentValue:v16 errorOut:?];
    }

    v17 = [(HDHRAFibBurdenNotificationModeDeterminer *)self _noNotification];
  }

  return v17;
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