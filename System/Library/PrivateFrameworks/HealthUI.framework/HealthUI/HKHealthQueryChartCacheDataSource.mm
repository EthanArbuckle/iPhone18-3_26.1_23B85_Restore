@interface HKHealthQueryChartCacheDataSource
- (HKHealthQueryChartCacheDataSource)initWithDataType:(id)a3 healthStore:(id)a4;
- (HKHealthQueryChartCacheDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4;
- (id)_buildDescriptionFromStartDate:(id)a3 endDate:(id)a4 statisticsInterval:(id)a5;
- (id)_shiftedQueryIntervalIfNecessaryForStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5;
- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4;
- (id)codableQueryDataWithType:(int)a3 startDate:(id)a4 endDate:(id)a5 statisticsInterval:(id)a6 queryDataObject:(id)a7;
- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5;
- (id)operationForIdentifier:(id)a3 priorityDelegate:(id)a4 completion:(id)a5;
- (id)queriesForRequest:(id)a3 completionHandler:(id)a4;
- (id)queryCalendar;
- (id)queryDescription;
- (id)statisticsIntervalForTimeScope:(int64_t)a3 resolution:(int64_t)a4 displayType:(id)a5;
- (unint64_t)calendarUnitForTimeScope:(int64_t)a3 displayType:(id)a4;
- (void)_setDataType:(id)a3 displayType:(id)a4 healthStore:(id)a5 queryAlignment:(int64_t)a6;
@end

@implementation HKHealthQueryChartCacheDataSource

- (HKHealthQueryChartCacheDataSource)initWithDataType:(id)a3 healthStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HKHealthQueryChartCacheDataSource;
  v8 = [(HKHealthQueryChartCacheDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HKHealthQueryChartCacheDataSource *)v8 _setDataType:v6 displayType:0 healthStore:v7 queryAlignment:0];
  }

  return v9;
}

- (HKHealthQueryChartCacheDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HKHealthQueryChartCacheDataSource;
  v8 = [(HKHealthQueryChartCacheDataSource *)&v12 init];
  if (v8)
  {
    v9 = [[HKChartableDataType alloc] initWithDisplayType:v6];
    v10 = [v6 behavior];
    -[HKHealthQueryChartCacheDataSource _setDataType:displayType:healthStore:queryAlignment:](v8, "_setDataType:displayType:healthStore:queryAlignment:", v9, v6, v7, [v10 preferredCalendarDayAlignment]);
  }

  return v8;
}

- (void)_setDataType:(id)a3 displayType:(id)a4 healthStore:(id)a5 queryAlignment:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  dataType = self->_dataType;
  self->_dataType = v10;
  v14 = v10;

  displayType = self->_displayType;
  self->_displayType = v11;
  v16 = v11;

  healthStore = self->_healthStore;
  self->_healthStore = v12;
  v18 = v12;

  v19 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithFirstWeekdayFromRegion];
  calendar = self->_calendar;
  self->_calendar = v19;

  calendarOverride = self->_calendarOverride;
  self->_calendarOverride = 0;

  self->_queryAlignment = a6;
}

- (id)operationForIdentifier:(id)a3 priorityDelegate:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v30 = v9;
  v31 = a5;
  v36 = 0uLL;
  v37 = 0;
  if (v8)
  {
    [v8 HKGraphSeriesDataBlockPathValue];
    v11 = *(&v36 + 1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [(HKHealthQueryChartCacheDataSource *)self calendarUnitForTimeScope:v11 displayType:self->_displayType];
  v13 = [(HKHealthQueryChartCacheDataSource *)self queryCalendar];
  *location = v36;
  v35 = v37;
  v14 = HKGraphSeriesDataBlockPathMinimumX(location);
  v15 = [v14 hk_dateBeforeDateForCalendar:v13 rangeUnit:v12];

  *location = v36;
  v35 = v37;
  v16 = HKGraphSeriesDataBlockPathMaximumX(location);
  v17 = [v16 hk_dateBeforeDateForCalendar:v13 rangeUnit:v12];

  v18 = [(HKHealthQueryChartCacheDataSource *)self _shiftedQueryIntervalIfNecessaryForStartDate:v15 endDate:v17 calendar:v13];
  v19 = [v18 startDate];

  v20 = [v18 endDate];

  v21 = v37;
  v22 = [(HKHealthQueryChartCacheDataSource *)self statisticsIntervalForTimeScope:*(&v36 + 1) resolution:v37 displayType:self->_displayType];
  if (!v22)
  {
    v23 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:*(&v36 + 1)];
    v22 = [v23 seriesPointIntervalComponentsAtResolution:v21];
  }

  v24 = [(HKHealthQueryChartCacheDataSource *)self _buildDescriptionFromStartDate:v19 endDate:v20 statisticsInterval:v22];
  if ([(HKHealthQueryChartCacheDataSource *)self supportsChartQueryDataGeneration])
  {
    v25 = [[HKChartQueryDataGenerationOperation alloc] initWithHealthStore:self->_healthStore dataSource:self startDate:v19 endDate:v20 statisticsInterval:v22 operationDescription:v24 completion:v31];
  }

  else
  {
    v25 = [[HKHealthQueryFetchOperation alloc] initWithHealthStore:self->_healthStore operationDescription:v24 completion:v31];
    objc_initWeak(location, v25);
    v26 = [[HKHealthQueryChartCacheQueryRequest alloc] initWithStartDate:v19 endDate:v20 statisticsInterval:v22];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __88__HKHealthQueryChartCacheDataSource_operationForIdentifier_priorityDelegate_completion___block_invoke;
    v32[3] = &unk_1E81B9120;
    objc_copyWeak(&v33, location);
    v27 = [(HKHealthQueryChartCacheDataSource *)self queriesForRequest:v26 completionHandler:v32];
    [(HKChartQueryDataGenerationOperation *)v25 setQueries:v27];

    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  if (v30)
  {
    v28 = [HKValueRange valueRangeWithMinValue:v19 maxValue:v20];
    -[HKFetchOperation setHighPriority:](v25, "setHighPriority:", [v30 isRangeHighPriority:v28]);
  }

  return v25;
}

void __88__HKHealthQueryChartCacheDataSource_operationForIdentifier_priorityDelegate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__HKHealthQueryChartCacheDataSource_operationForIdentifier_priorityDelegate_completion___block_invoke_2;
  block[3] = &unk_1E81B90F8;
  objc_copyWeak(&v13, (a1 + 32));
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v13);
}

void __88__HKHealthQueryChartCacheDataSource_operationForIdentifier_priorityDelegate_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained completedWithResults:*(a1 + 32) error:*(a1 + 40)];
}

- (id)_shiftedQueryIntervalIfNecessaryForStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HKHealthQueryChartCacheDataSource *)self queryAlignment];
  v12 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v10 endDate:v9];

  if (v11 == 1)
  {
    v13 = [v12 hk_dateIntervalShiftedToQueryAlignment:1 calendar:v8];

    v12 = v13;
  }

  return v12;
}

- (unint64_t)calendarUnitForTimeScope:(int64_t)a3 displayType:(id)a4
{
  if (a4)
  {
    result = [a4 hk_chartCalendarUnitForTimeScope:a3];
    if (!result)
    {
      return 32;
    }
  }

  else
  {
    dataType = self->_dataType;

    return [(HKChartableDataType *)dataType hk_chartCalendarUnitForTimeScope:a3];
  }

  return result;
}

- (id)statisticsIntervalForTimeScope:(int64_t)a3 resolution:(int64_t)a4 displayType:(id)a5
{
  if (a5)
  {
    dataType = a5;
  }

  else
  {
    dataType = self->_dataType;
  }

  v6 = [dataType hk_customSeriesPointIntervalComponentsForTimeScope:a3 resolution:a4];

  return v6;
}

- (id)queryCalendar
{
  calendarOverride = self->_calendarOverride;
  if (!calendarOverride)
  {
    calendarOverride = self->_calendar;
  }

  return calendarOverride;
}

- (id)_buildDescriptionFromStartDate:(id)a3 endDate:(id)a4 statisticsInterval:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x1E696AEC0];
  v10 = a4;
  v11 = a3;
  v12 = [(HKHealthQueryChartCacheDataSource *)self queryDescription];
  v13 = _DateForDescription(v11);

  v14 = _DateForDescription(v10);

  v15 = v8;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v15 year] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ldy", objc_msgSend(v15, "year")];
    [v16 addObject:v17];
  }

  if ([v15 month] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ldm", objc_msgSend(v15, "month")];
    [v16 addObject:v18];
  }

  if ([v15 day] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ldd", objc_msgSend(v15, "day")];
    [v16 addObject:v19];
  }

  if ([v15 hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ldh", objc_msgSend(v15, "hour")];
    [v16 addObject:v20];
  }

  if ([v15 minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ldm", objc_msgSend(v15, "minute")];
    [v16 addObject:v21];
  }

  if ([v15 second] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lds", objc_msgSend(v15, "second")];
    [v16 addObject:v22];
  }

  if ([v16 count])
  {
    v23 = [v16 componentsJoinedByString:@"_"];
  }

  else
  {
    v23 = @"NoDateComponents";
  }

  v24 = [v9 stringWithFormat:@"%@: %@ -> %@ interval %@", v12, v13, v14, v23];

  return v24;
}

- (id)codableQueryDataWithType:(int)a3 startDate:(id)a4 endDate:(id)a5 statisticsInterval:(id)a6 queryDataObject:(id)a7
{
  v10 = *&a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc_init(HKCodableChartDataSourceQueryData);
  [(HKCodableChartDataSourceQueryData *)v16 setType:v10];
  if (v12)
  {
    [v12 timeIntervalSinceReferenceDate];
    [(HKCodableChartDataSourceQueryData *)v16 setStartDate:?];
  }

  if (v13)
  {
    [v13 timeIntervalSinceReferenceDate];
    [(HKCodableChartDataSourceQueryData *)v16 setEndDate:?];
  }

  if (v14)
  {
    v17 = [v14 hkui_codableDateComponents];
    [(HKCodableChartDataSourceQueryData *)v16 setStatisticsInterval:v17];
  }

  [(HKCodableChartDataSourceQueryData *)v16 setQueryDataObject:v15];
  v18 = [MEMORY[0x1E695DFE8] localTimeZone];
  v19 = [v18 name];
  [(HKCodableChartDataSourceQueryData *)v16 setTimeZoneName:v19];

  v20 = [(HKHealthQueryChartCacheDataSource *)self queryCalendar];
  -[HKCodableChartDataSourceQueryData setFirstWeekday:](v16, "setFirstWeekday:", [v20 firstWeekday]);

  return v16;
}

- (id)queryDescription
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_2();
  return @"UnknownQuery";
}

- (id)queriesForRequest:(id)a3 completionHandler:(id)a4
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_2();
  return MEMORY[0x1E695E0F0];
}

- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_2();
  return 0;
}

- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_2();
  return 0;
}

@end