@interface HKMostRecentValueQuantityTypeDataSource
- (BOOL)_interval:(id)_interval isEqualToInterval:(id)interval;
- (HKMostRecentValueQuantityTypeDataSource)initWithUnitController:(id)controller displayType:(id)type healthStore:(id)store currentCalendar:(id)calendar attenuated:(BOOL)attenuated;
- (id)_dataSourceValueFromMostRecentQuantity:(id)quantity quantityDateInterval:(id)interval statisticsInterval:(id)statisticsInterval;
- (id)_intervalFromZoomLevel:(int64_t)level resolution:(int64_t)resolution;
- (id)_middleDateFromInterval:(id)interval endDate:(id)date;
- (id)queriesForRequest:(id)request completionHandler:(id)handler;
- (id)queryDescription;
@end

@implementation HKMostRecentValueQuantityTypeDataSource

- (HKMostRecentValueQuantityTypeDataSource)initWithUnitController:(id)controller displayType:(id)type healthStore:(id)store currentCalendar:(id)calendar attenuated:(BOOL)attenuated
{
  objc_storeStrong(&self->_currentCalendar, calendar);
  calendarCopy = calendar;
  storeCopy = store;
  typeCopy = type;
  controllerCopy = controller;
  self->_attenuated = attenuated;
  v19.receiver = self;
  v19.super_class = HKMostRecentValueQuantityTypeDataSource;
  v17 = [(HKQuantityTypeDataSource *)&v19 initWithUnitController:controllerCopy options:32 displayType:typeCopy healthStore:storeCopy];

  return v17;
}

- (id)queryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  quantityType = [(HKQuantityTypeDataSource *)self quantityType];
  hk_localizedName = [quantityType hk_localizedName];
  v5 = [v2 stringWithFormat:@"HKMostRecentValueQuantity(%@)", hk_localizedName];

  return v5;
}

- (id)queriesForRequest:(id)request completionHandler:(id)handler
{
  v22[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__HKMostRecentValueQuantityTypeDataSource_queriesForRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E81B7AD8;
  aBlock[4] = self;
  v8 = handlerCopy;
  v21 = v8;
  v9 = requestCopy;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  if (self->_attenuated && (-[HKQuantityTypeDataSource quantityType](self, "quantityType"), v11 = objc_claimAutoreleasedReturnValue(), [v11 identifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = *MEMORY[0x1E696BD08], v12, v11, v12 == v13))
  {
    v16 = [MEMORY[0x1E696C1C0] queryForMostRecentAttenuatedEAEQuantityWithHealthStore:self->super.super._healthStore completion:v10];
  }

  else
  {
    v14 = MEMORY[0x1E696C1C0];
    quantityType = [(HKQuantityTypeDataSource *)self quantityType];
    v16 = [v14 queryForMostRecentQuantityOfType:quantityType healthStore:self->super.super._healthStore predicate:0 completion:v10];
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

- (id)_dataSourceValueFromMostRecentQuantity:(id)quantity quantityDateInterval:(id)interval statisticsInterval:(id)statisticsInterval
{
  quantityCopy = quantity;
  intervalCopy = interval;
  statisticsIntervalCopy = statisticsInterval;
  v11 = objc_alloc_init(HKQuantityTypeDataSourceValue);
  quantityType = [(HKQuantityTypeDataSource *)self quantityType];
  [(HKQuantityTypeDataSourceValue *)v11 setQuantityType:quantityType];

  if (quantityCopy)
  {
    endDate = [intervalCopy endDate];
    v14 = [(HKMostRecentValueQuantityTypeDataSource *)self _middleDateFromInterval:statisticsIntervalCopy endDate:endDate];

    if (v14)
    {
      [(HKQuantityTypeDataSourceValue *)v11 setStartDate:v14];
      [(HKQuantityTypeDataSourceValue *)v11 setEndDate:v14];
    }

    else
    {
      startDate = [intervalCopy startDate];
      [(HKQuantityTypeDataSourceValue *)v11 setStartDate:startDate];

      endDate2 = [intervalCopy endDate];
      [(HKQuantityTypeDataSourceValue *)v11 setEndDate:endDate2];
    }

    [(HKQuantityTypeDataSourceValue *)v11 setMostRecentQuantity:quantityCopy];
  }

  return v11;
}

- (id)_middleDateFromInterval:(id)interval endDate:(id)date
{
  intervalCopy = interval;
  dateCopy = date;
  v9 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:7];
  v54 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:6];
  v53 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:5 resolution:0];
  v10 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:5 resolution:1];
  v11 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:4];
  v52 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:3];
  v12 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:2];
  v13 = [(HKMostRecentValueQuantityTypeDataSource *)self _intervalFromZoomLevel:1];
  currentCalendar = [(HKMostRecentValueQuantityTypeDataSource *)self currentCalendar];
  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:intervalCopy isEqualToInterval:v9])
  {
    [currentCalendar hk_startOfMinuteForDate:dateCopy moduloMinutes:objc_msgSend(v9 addingModuloCount:{"minute"), 0}];
    v50 = intervalCopy;
    v16 = v15 = v11;
    v17 = [currentCalendar hk_startOfMinuteForDate:dateCopy moduloMinutes:objc_msgSend(v9 addingModuloCount:{"minute"), 1}];
    v18 = HKUIMidDate(v16, v17);

    v11 = v15;
    intervalCopy = v50;
LABEL_3:
    v19 = currentCalendar;
    goto LABEL_10;
  }

  v51 = currentCalendar;
  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:intervalCopy isEqualToInterval:v54])
  {
    v20 = currentCalendar;
    [currentCalendar hk_startOfHourForDate:dateCopy addingHours:0];
    v47 = v13;
    v21 = dateCopy;
    v22 = v9;
    v23 = intervalCopy;
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
    intervalCopy = v23;
    v9 = v22;
    dateCopy = v21;
    v13 = v47;
    goto LABEL_10;
  }

  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:intervalCopy isEqualToInterval:v53])
  {
    goto LABEL_7;
  }

  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:intervalCopy isEqualToInterval:v10])
  {
    v46 = v12;
    v48 = v11;
    v57 = 0uLL;
    v58 = 0;
    HKGraphSeriesDataBlockPathContainingDate(dateCopy, 5, 1, &v57);
    v55 = v57;
    v56 = v58;
    v45 = HKGraphSeriesDataBlockPathMinimumX(&v55);
    v32 = [v45 hk_dateBeforeDateForCalendar:currentCalendar rangeUnit:16];
    if (([v32 hk_isBeforeOrEqualToDate:dateCopy] & 1) == 0)
    {
      [HKMostRecentValueQuantityTypeDataSource _middleDateFromInterval:a2 endDate:self];
    }

    v33 = v32;
    v34 = v33;
    v35 = v33;
    if ([v33 hk_isBeforeDate:dateCopy])
    {
      v35 = v33;
      v36 = v33;
      do
      {
        v34 = v35;

        v35 = [currentCalendar dateByAddingComponents:v10 toDate:v34 options:0];

        v36 = v34;
      }

      while (([v35 hk_isBeforeDate:dateCopy] & 1) != 0);
    }

    v18 = HKUIMidDate(v34, v35);

    v12 = v46;
    v11 = v48;
    goto LABEL_3;
  }

  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:intervalCopy isEqualToInterval:v11])
  {
LABEL_7:
    v20 = currentCalendar;
    [currentCalendar hk_startOfDateByAddingDays:0 toDate:dateCopy];
    v47 = v13;
    v21 = dateCopy;
    v22 = v9;
    v23 = intervalCopy;
    v24 = v10;
    v25 = v12;
    v27 = v26 = v11;
    v28 = [v51 hk_startOfDateByAddingDays:1 toDate:v21];
    goto LABEL_8;
  }

  v19 = currentCalendar;
  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:intervalCopy isEqualToInterval:v52])
  {
    [currentCalendar hk_startOfWeekWithFirstWeekday:objc_msgSend(currentCalendar beforeDate:"firstWeekday") addingWeeks:{dateCopy, 0}];
    v49 = v9;
    v37 = intervalCopy;
    v39 = v38 = v11;
    v40 = [currentCalendar hk_startOfWeekWithFirstWeekday:objc_msgSend(currentCalendar beforeDate:"firstWeekday") addingWeeks:{dateCopy, 1}];
    v18 = HKUIMidDate(v39, v40);

    v19 = currentCalendar;
    v11 = v38;
    intervalCopy = v37;
    v9 = v49;
    goto LABEL_10;
  }

  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:intervalCopy isEqualToInterval:v12])
  {
    [currentCalendar hk_startOfMonthForDate:dateCopy];
    v47 = v13;
    v21 = dateCopy;
    v22 = v9;
    v23 = intervalCopy;
    v42 = v41 = v11;
    v43 = [currentCalendar hk_startOfMonthForDate:v21 addingMonths:1];
LABEL_27:
    v44 = v43;
    v18 = HKUIMidDate(v42, v43);

    v19 = currentCalendar;
    v11 = v41;
    goto LABEL_9;
  }

  if ([(HKMostRecentValueQuantityTypeDataSource *)self _interval:intervalCopy isEqualToInterval:v13])
  {
    [currentCalendar hk_startOfYearForDate:dateCopy addingYears:0];
    v47 = v13;
    v21 = dateCopy;
    v22 = v9;
    v23 = intervalCopy;
    v42 = v41 = v11;
    v43 = [currentCalendar hk_startOfYearForDate:v21 addingYears:1];
    goto LABEL_27;
  }

  v18 = 0;
LABEL_10:

  return v18;
}

- (id)_intervalFromZoomLevel:(int64_t)level resolution:(int64_t)resolution
{
  v5 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:level];
  v6 = [v5 seriesPointIntervalComponentsAtResolution:resolution];

  return v6;
}

- (BOOL)_interval:(id)_interval isEqualToInterval:(id)interval
{
  intervalCopy = interval;
  [_interval hk_approximateDuration];
  v7 = v6;
  [intervalCopy hk_approximateDuration];
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