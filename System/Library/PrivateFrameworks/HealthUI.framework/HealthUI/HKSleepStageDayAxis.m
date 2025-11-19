@interface HKSleepStageDayAxis
- (HKSleepStageDayAxisDelegate)delegate;
- (id)_currentOrGregorianCalendar;
- (id)stringForDate:(id)a3 somnogramDateInterval:(id)a4;
- (id)stringForDate:(id)a3 zoom:(int64_t)a4 labelType:(int64_t)a5;
@end

@implementation HKSleepStageDayAxis

- (id)_currentOrGregorianCalendar
{
  v3 = [(HKDateAxis *)self currentCalendar];
  v4 = [v3 calendarIdentifier];
  v5 = *MEMORY[0x1E695D850];
  if ([v4 isEqualToString:*MEMORY[0x1E695D850]])
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

- (id)stringForDate:(id)a3 zoom:(int64_t)a4 labelType:(int64_t)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  _HKInitializeLogging();
  v9 = MEMORY[0x1E696B998];
  v10 = *MEMORY[0x1E696B998];
  if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEBUG))
  {
    v20 = v10;
    v21 = objc_opt_class();
    v22 = v21;
    v23 = [v8 description];
    v29 = 138544130;
    v30 = v21;
    v31 = 2114;
    v32 = v23;
    v33 = 2048;
    v34 = a4;
    v35 = 2048;
    v36 = a5;
    _os_log_debug_impl(&dword_1C3942000, v20, OS_LOG_TYPE_DEBUG, "[%{public}@] Determining string for date %{public}@ zoom %ld labelType %ld", &v29, 0x2Au);
  }

  v11 = 0;
  if (a4 == 6 && a5 != 2)
  {
    v12 = [(HKSleepStageDayAxis *)self delegate];
    v13 = [v12 sleepDaySummaryForDate:v8];

    v14 = [v13 hkui_somnogramChartDateInterval];
    if (!v13)
    {
      v15 = [(HKSleepStageDayAxis *)self _currentOrGregorianCalendar];
      v16 = [v8 hk_morningIndexWithCalendar:v15];
      v17 = [MEMORY[0x1E696AB80] hk_sleepDayIntervalForMorningIndex:v16 calendar:v15];

      v14 = v17;
    }

    v11 = [(HKSleepStageDayAxis *)self stringForDate:v8 somnogramDateInterval:v14];
    _HKInitializeLogging();
    v18 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v24 = v18;
      v25 = objc_opt_class();
      v26 = v25;
      v27 = [v8 description];
      v28 = [v13 description];
      v29 = 138544130;
      v30 = v25;
      v31 = 2114;
      v32 = v11;
      v33 = 2114;
      v34 = v27;
      v35 = 2114;
      v36 = v28;
      _os_log_debug_impl(&dword_1C3942000, v24, OS_LOG_TYPE_DEBUG, "[%{public}@] Returning date label: %{public}@ axis date: %{public}@ summary: %{public}@", &v29, 0x2Au);
    }
  }

  return v11;
}

- (id)stringForDate:(id)a3 somnogramDateInterval:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:6];
  v9 = [(HKDateAxis *)self axisLabelIntervalComponentsForZoomLevelConfiguration:v8];
  v10 = [v9 hour];

  [v8 canonicalSize];
  v12 = v11 / (v10 * 3600.0);
  v13 = [(HKDateAxis *)self currentCalendar];
  v14 = [v13 component:32 fromDate:v7];

  [v6 duration];
  v16 = v15 / v12;
  v17 = [v6 startDate];

  v18 = [v17 dateByAddingTimeInterval:v16 * (v14 / v10)];

  v19 = HKLocalizedStringForDateAndTemplate(v18, 24);

  return v19;
}

- (HKSleepStageDayAxisDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end