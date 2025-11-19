@interface HKMostRecentValueQuantityTypeDataSource
- (BOOL)_interval:(id)a3 isEqualToInterval:(id)a4;
- (HKMostRecentValueQuantityTypeDataSource)initWithUnitController:(id)a3 displayType:(id)a4 healthStore:(id)a5 currentCalendar:(id)a6 attenuated:(BOOL)a7;
- (id)_dataSourceValueFromMostRecentQuantity:(id)a3 quantityDateInterval:(id)a4 statisticsInterval:(id)a5;
- (id)_intervalFromZoomLevel:(int64_t)a3 resolution:(int64_t)a4;
- (id)_middleDateFromInterval:(id)a3 endDate:(id)a4;
- (id)queriesForRequest:(id)a3 completionHandler:(id)a4;
- (id)queryDescription;
@end

@implementation HKMostRecentValueQuantityTypeDataSource

- (HKMostRecentValueQuantityTypeDataSource)initWithUnitController:(id)a3 displayType:(id)a4 healthStore:(id)a5 currentCalendar:(id)a6 attenuated:(BOOL)a7
{
  objc_storeStrong(&self->_currentCalendar, a6);
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  self->_attenuated = a7;
  v19.receiver = self;
  v19.super_class = HKMostRecentValueQuantityTypeDataSource;
  v17 = [(HKQuantityTypeDataSource *)&v19 initWithUnitController:v16 options:32 displayType:v15 healthStore:v14];

  return v17;
}

- (id)queryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HKQuantityTypeDataSource *)self quantityType];
  v4 = [v3 hk_localizedName];
  v5 = [v2 stringWithFormat:@"HKMostRecentValueQuantity(%@)", v4];

  return v5;
}

- (id)queriesForRequest:(id)a3 completionHandler:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__HKMostRecentValueQuantityTypeDataSource_queriesForRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E81B7AD8;
  aBlock[4] = self;
  v8 = v7;
  v21 = v8;
  v9 = v6;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  if (self->_attenuated && (-[HKQuantityTypeDataSource quantityType](self, "quantityType"), v11 = objc_claimAutoreleasedReturnValue(), [v11 identifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = *MEMORY[0x1E696BD08], v12, v11, v12 == v13))
  {
    v16 = [MEMORY[0x1E696C1C0] queryForMostRecentAttenuatedEAEQuantityWithHealthStore:self->super.super._healthStore completion:v10];
  }

  else
  {
    v14 = MEMORY[0x1E696C1C0];
    v15 = [(HKQuantityTypeDataSource *)self quantityType];
    v16 = [v14 queryForMostRecentQuantityOfType:v15 healthStore:self->super.super._healthStore predicate:0 completion:v10];
  }

  [v16 setDebugIdentifier:@"charting (most recent)"];
  v22[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];

  return v17;
}

void __79__HKMostRecentValueQuantityTypeDataSource_queriesForRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    v12 = HKLogWellnessDashboard();
    v13 = v12;
    if (v11)
    {
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

      if (!v14)
      {
        goto LABEL_13;
      }

      v13 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __79__HKMostRecentValueQuantityTypeDataSource_queriesForRequest_completionHandler___block_invoke_cold_2(a1, v10, v13);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __79__HKMostRecentValueQuantityTypeDataSource_queriesForRequest_completionHandler___block_invoke_cold_1(a1, v10, v13);
    }

LABEL_13:
    v24 = *(a1 + 48);
    if (v24)
    {
      (*(v24 + 16))(v24, 0, v10);
    }

    goto LABEL_18;
  }

  v15 = objc_alloc(MEMORY[0x1E696AB80]);
  v16 = [*(a1 + 40) startDate];
  v17 = [*(a1 + 40) endDate];
  v18 = [v15 initWithStartDate:v16 endDate:v17];

  if ([v8 intersectsDateInterval:v18])
  {
    v19 = *(a1 + 32);
    v20 = [*(a1 + 40) statisticsInterval];
    v21 = [v19 _dataSourceValueFromMostRecentQuantity:v7 quantityDateInterval:v8 statisticsInterval:v20];

    v22 = *(a1 + 48);
    if (v22)
    {
      v26[0] = v21;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      (*(v22 + 16))(v22, v23, 0);
    }
  }

  else
  {
    v25 = *(a1 + 48);
    if (v25)
    {
      (*(v25 + 16))(v25, MEMORY[0x1E695E0F0], 0);
    }
  }

LABEL_18:
}

- (id)_dataSourceValueFromMostRecentQuantity:(id)a3 quantityDateInterval:(id)a4 statisticsInterval:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(HKQuantityTypeDataSourceValue);
  v12 = [(HKQuantityTypeDataSource *)self quantityType];
  [(HKQuantityTypeDataSourceValue *)v11 setQuantityType:v12];

  if (v8)
  {
    v13 = [v9 endDate];
    v14 = [(HKMostRecentValueQuantityTypeDataSource *)self _middleDateFromInterval:v10 endDate:v13];

    if (v14)
    {
      [(HKQuantityTypeDataSourceValue *)v11 setStartDate:v14];
      [(HKQuantityTypeDataSourceValue *)v11 setEndDate:v14];
    }

    else
    {
      v15 = [v9 startDate];
      [(HKQuantityTypeDataSourceValue *)v11 setStartDate:v15];

      v16 = [v9 endDate];
      [(HKQuantityTypeDataSourceValue *)v11 setEndDate:v16];
    }

    [(HKQuantityTypeDataSourceValue *)v11 setMostRecentQuantity:v8];
  }

  return v11;
}

- (id)_middleDateFromInterval:(id)a3 endDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:7];
  v54 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:6];
  v53 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:5 resolution:0];
  v10 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:5 resolution:1];
  v11 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:4];
  v52 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:3];
  v12 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:2];
  v13 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:1];
  v14 = [(HKMostRecentValueQuantityTypeDataSource *)self currentCalendar];
  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:v7 isEqualToInterval:v9])
  {
    [v14 hk_startOfMinuteForDate:v8 moduloMinutes:objc_msgSend(v9 addingModuloCount:{"minute"), 0}];
    v50 = v7;
    v16 = v15 = v11;
    v17 = [v14 hk_startOfMinuteForDate:v8 moduloMinutes:objc_msgSend(v9 addingModuloCount:{"minute"), 1}];
    v18 = HKUIMidDate(v16, v17);

    v11 = v15;
    v7 = v50;
LABEL_3:
    v19 = v14;
    goto LABEL_10;
  }

  v51 = v14;
  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:v7 isEqualToInterval:v54])
  {
    v20 = v14;
    [v14 hk_startOfHourForDate:v8 addingHours:0];
    v47 = v13;
    v21 = v8;
    v22 = v9;
    v23 = v7;
    v24 = v10;
    v25 = v12;
    v27 = v26 = v11;
    v28 = [v51 hk_startOfHourForDate:v21 addingHours:1];
LABEL_8:
    v29 = v28;
    v30 = HKUIMidDate(v27, v28);

    v19 = v20;
    v18 = v30;

    v11 = v26;
    v12 = v25;
    v10 = v24;
LABEL_9:
    v7 = v23;
    v9 = v22;
    v8 = v21;
    v13 = v47;
    goto LABEL_10;
  }

  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:v7 isEqualToInterval:v53])
  {
    goto LABEL_7;
  }

  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:v7 isEqualToInterval:v10])
  {
    v46 = v12;
    v48 = v11;
    v57 = 0uLL;
    v58 = 0;
    HKGraphSeriesDataBlockPathContainingDate(v8, 5, 1, &v57);
    v55 = v57;
    v56 = v58;
    v45 = HKGraphSeriesDataBlockPathMinimumX(&v55);
    v32 = [v45 hk_dateBeforeDateForCalendar:v14 rangeUnit:16];
    if (([v32 hk_isBeforeOrEqualToDate:v8] & 1) == 0)
    {
      [HKMostRecentValueQuantityTypeDataSource _middleDateFromInterval:a2 endDate:self];
    }

    v33 = v32;
    v34 = v33;
    v35 = v33;
    if ([v33 hk_isBeforeDate:v8])
    {
      v35 = v33;
      v36 = v33;
      do
      {
        v34 = v35;

        v35 = [v14 dateByAddingComponents:v10 toDate:v34 options:0];

        v36 = v34;
      }

      while (([v35 hk_isBeforeDate:v8] & 1) != 0);
    }

    v18 = HKUIMidDate(v34, v35);

    v12 = v46;
    v11 = v48;
    goto LABEL_3;
  }

  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:v7 isEqualToInterval:v11])
  {
LABEL_7:
    v20 = v14;
    [v14 hk_startOfDateByAddingDays:0 toDate:v8];
    v47 = v13;
    v21 = v8;
    v22 = v9;
    v23 = v7;
    v24 = v10;
    v25 = v12;
    v27 = v26 = v11;
    v28 = [v51 hk_startOfDateByAddingDays:1 toDate:v21];
    goto LABEL_8;
  }

  v19 = v14;
  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:v7 isEqualToInterval:v52])
  {
    [v14 hk_startOfWeekWithFirstWeekday:objc_msgSend(v14 beforeDate:"firstWeekday") addingWeeks:{v8, 0}];
    v49 = v9;
    v37 = v7;
    v39 = v38 = v11;
    v40 = [v14 hk_startOfWeekWithFirstWeekday:objc_msgSend(v14 beforeDate:"firstWeekday") addingWeeks:{v8, 1}];
    v18 = HKUIMidDate(v39, v40);

    v19 = v14;
    v11 = v38;
    v7 = v37;
    v9 = v49;
    goto LABEL_10;
  }

  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:v7 isEqualToInterval:v12])
  {
    [v14 hk_startOfMonthForDate:v8];
    v47 = v13;
    v21 = v8;
    v22 = v9;
    v23 = v7;
    v42 = v41 = v11;
    v43 = [v14 hk_startOfMonthForDate:v21 addingMonths:1];
LABEL_27:
    v44 = v43;
    v18 = HKUIMidDate(v42, v43);

    v19 = v14;
    v11 = v41;
    goto LABEL_9;
  }

  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:v7 isEqualToInterval:v13])
  {
    [v14 hk_startOfYearForDate:v8 addingYears:0];
    v47 = v13;
    v21 = v8;
    v22 = v9;
    v23 = v7;
    v42 = v41 = v11;
    v43 = [v14 hk_startOfYearForDate:v21 addingYears:1];
    goto LABEL_27;
  }

  v18 = 0;
LABEL_10:

  return v18;
}

- (id)_intervalFromZoomLevel:(int64_t)a3 resolution:(int64_t)a4
{
  v5 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:a3];
  v6 = [v5 seriesPointIntervalComponentsAtResolution:a4];

  return v6;
}

- (BOOL)_interval:(id)a3 isEqualToInterval:(id)a4
{
  v5 = a4;
  [a3 hk_approximateDuration];
  v7 = v6;
  [v5 hk_approximateDuration];
  v9 = v8;

  return v7 == v9;
}

void __79__HKMostRecentValueQuantityTypeDataSource_queriesForRequest_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) quantityType];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "Encountered error querying for %{public}@: %{public}@", v5, 0x16u);
}

void __79__HKMostRecentValueQuantityTypeDataSource_queriesForRequest_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) quantityType];
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(&dword_1C3942000, a3, OS_LOG_TYPE_DEBUG, "Encountered error querying for %{public}@: %{public}@", v5, 0x16u);
}

- (void)_middleDateFromInterval:(uint64_t)a1 endDate:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMostRecentValueQuantityTypeDataSource.m" lineNumber:158 description:@"HKMostRecentValueQuantityTypeDataSource: anchor date must be before end date"];
}

@end