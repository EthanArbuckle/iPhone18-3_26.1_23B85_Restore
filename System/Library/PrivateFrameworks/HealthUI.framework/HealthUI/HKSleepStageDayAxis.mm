@interface HKSleepStageDayAxis
- (HKSleepStageDayAxisDelegate)delegate;
- (id)_currentOrGregorianCalendar;
- (id)stringForDate:(id)date somnogramDateInterval:(id)interval;
- (id)stringForDate:(id)date zoom:(int64_t)zoom labelType:(int64_t)type;
@end

@implementation HKSleepStageDayAxis

- (id)_currentOrGregorianCalendar
{
  currentCalendar = [(HKDateAxis *)self currentCalendar];
  calendarIdentifier = [currentCalendar calendarIdentifier];
  v5 = *MEMORY[0x1E695D850];
  if ([calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]])
  {
    [(HKDateAxis *)self currentCalendar];
  }

  else
  {
    [MEMORY[0x1E695DEE8] calendarWithIdentifier:v5];
  }
  v6 = ;

  return v6;
}

- (id)stringForDate:(id)date zoom:(int64_t)zoom labelType:(int64_t)type
{
  v37 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  _HKInitializeLogging();
  v9 = MEMORY[0x1E696B998];
  v10 = *MEMORY[0x1E696B998];
  if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEBUG))
  {
    v20 = v10;
    v21 = objc_opt_class();
    v22 = v21;
    v23 = [dateCopy description];
    v29 = 138544130;
    v30 = v21;
    v31 = 2114;
    v32 = v23;
    v33 = 2048;
    zoomCopy = zoom;
    v35 = 2048;
    typeCopy = type;
    _os_log_debug_impl(&dword_1C3942000, v20, OS_LOG_TYPE_DEBUG, "[%{public}@] Determining string for date %{public}@ zoom %ld labelType %ld", &v29, 0x2Au);
  }

  v11 = 0;
  if (zoom == 6 && type != 2)
  {
    delegate = [(HKSleepStageDayAxis *)self delegate];
    v13 = [delegate sleepDaySummaryForDate:dateCopy];

    hkui_somnogramChartDateInterval = [v13 hkui_somnogramChartDateInterval];
    if (!v13)
    {
      _currentOrGregorianCalendar = [(HKSleepStageDayAxis *)self _currentOrGregorianCalendar];
      v16 = [dateCopy hk_morningIndexWithCalendar:_currentOrGregorianCalendar];
      v17 = [MEMORY[0x1E696AB80] hk_sleepDayIntervalForMorningIndex:v16 calendar:_currentOrGregorianCalendar];

      hkui_somnogramChartDateInterval = v17;
    }

    v11 = [(HKSleepStageDayAxis *)self stringForDate:dateCopy somnogramDateInterval:hkui_somnogramChartDateInterval];
    _HKInitializeLogging();
    v18 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v24 = v18;
      v25 = objc_opt_class();
      v26 = v25;
      v27 = [dateCopy description];
      v28 = [v13 description];
      v29 = 138544130;
      v30 = v25;
      v31 = 2114;
      v32 = v11;
      v33 = 2114;
      zoomCopy = v27;
      v35 = 2114;
      typeCopy = v28;
      _os_log_debug_impl(&dword_1C3942000, v24, OS_LOG_TYPE_DEBUG, "[%{public}@] Returning date label: %{public}@ axis date: %{public}@ summary: %{public}@", &v29, 0x2Au);
    }
  }

  return v11;
}

- (id)stringForDate:(id)date somnogramDateInterval:(id)interval
{
  intervalCopy = interval;
  dateCopy = date;
  v8 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:6];
  v9 = [(HKDateAxis *)self axisLabelIntervalComponentsForZoomLevelConfiguration:v8];
  hour = [v9 hour];

  [v8 canonicalSize];
  v12 = v11 / (hour * 3600.0);
  currentCalendar = [(HKDateAxis *)self currentCalendar];
  v14 = [currentCalendar component:32 fromDate:dateCopy];

  [intervalCopy duration];
  v16 = v15 / v12;
  startDate = [intervalCopy startDate];

  v18 = [startDate dateByAddingTimeInterval:v16 * (v14 / hour)];

  v19 = HKLocalizedStringForDateAndTemplate(v18, 24);

  return v19;
}

- (HKSleepStageDayAxisDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end