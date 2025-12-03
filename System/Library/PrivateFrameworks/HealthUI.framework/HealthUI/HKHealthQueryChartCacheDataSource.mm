@interface HKHealthQueryChartCacheDataSource
- (HKHealthQueryChartCacheDataSource)initWithDataType:(id)type healthStore:(id)store;
- (HKHealthQueryChartCacheDataSource)initWithDisplayType:(id)type healthStore:(id)store;
- (id)_buildDescriptionFromStartDate:(id)date endDate:(id)endDate statisticsInterval:(id)interval;
- (id)_shiftedQueryIntervalIfNecessaryForStartDate:(id)date endDate:(id)endDate calendar:(id)calendar;
- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source;
- (id)codableQueryDataWithType:(int)type startDate:(id)date endDate:(id)endDate statisticsInterval:(id)interval queryDataObject:(id)object;
- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler;
- (id)operationForIdentifier:(id)identifier priorityDelegate:(id)delegate completion:(id)completion;
- (id)queriesForRequest:(id)request completionHandler:(id)handler;
- (id)queryCalendar;
- (id)queryDescription;
- (id)statisticsIntervalForTimeScope:(int64_t)scope resolution:(int64_t)resolution displayType:(id)type;
- (unint64_t)calendarUnitForTimeScope:(int64_t)scope displayType:(id)type;
- (void)_setDataType:(id)type displayType:(id)displayType healthStore:(id)store queryAlignment:(int64_t)alignment;
@end

@implementation HKHealthQueryChartCacheDataSource

- (HKHealthQueryChartCacheDataSource)initWithDataType:(id)type healthStore:(id)store
{
  typeCopy = type;
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = HKHealthQueryChartCacheDataSource;
  v8 = [(HKHealthQueryChartCacheDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HKHealthQueryChartCacheDataSource *)v8 _setDataType:typeCopy displayType:0 healthStore:storeCopy queryAlignment:0];
  }

  return v9;
}

- (HKHealthQueryChartCacheDataSource)initWithDisplayType:(id)type healthStore:(id)store
{
  typeCopy = type;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = HKHealthQueryChartCacheDataSource;
  v8 = [(HKHealthQueryChartCacheDataSource *)&v12 init];
  if (v8)
  {
    v9 = [[HKChartableDataType alloc] initWithDisplayType:typeCopy];
    behavior = [typeCopy behavior];
    -[HKHealthQueryChartCacheDataSource _setDataType:displayType:healthStore:queryAlignment:](v8, "_setDataType:displayType:healthStore:queryAlignment:", v9, typeCopy, storeCopy, [behavior preferredCalendarDayAlignment]);
  }

  return v8;
}

- (void)_setDataType:(id)type displayType:(id)displayType healthStore:(id)store queryAlignment:(int64_t)alignment
{
  typeCopy = type;
  displayTypeCopy = displayType;
  storeCopy = store;
  dataType = self->_dataType;
  self->_dataType = typeCopy;
  v14 = typeCopy;

  displayType = self->_displayType;
  self->_displayType = displayTypeCopy;
  v16 = displayTypeCopy;

  healthStore = self->_healthStore;
  self->_healthStore = storeCopy;
  v18 = storeCopy;

  hk_gregorianCalendarWithFirstWeekdayFromRegion = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithFirstWeekdayFromRegion];
  calendar = self->_calendar;
  self->_calendar = hk_gregorianCalendarWithFirstWeekdayFromRegion;

  calendarOverride = self->_calendarOverride;
  self->_calendarOverride = 0;

  self->_queryAlignment = alignment;
}

- (id)operationForIdentifier:(id)identifier priorityDelegate:(id)delegate completion:(id)completion
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  v10 = identifierCopy;
  v30 = delegateCopy;
  completionCopy = completion;
  v36 = 0uLL;
  v37 = 0;
  if (identifierCopy)
  {
    [identifierCopy HKGraphSeriesDataBlockPathValue];
    v11 = *(&v36 + 1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [(HKHealthQueryChartCacheDataSource *)self calendarUnitForTimeScope:v11 displayType:self->_displayType];
  queryCalendar = [(HKHealthQueryChartCacheDataSource *)self queryCalendar];
  *location = v36;
  v35 = v37;
  v14 = HKGraphSeriesDataBlockPathMinimumX(location);
  v15 = [v14 hk_dateBeforeDateForCalendar:queryCalendar rangeUnit:v12];

  *location = v36;
  v35 = v37;
  v16 = HKGraphSeriesDataBlockPathMaximumX(location);
  v17 = [v16 hk_dateBeforeDateForCalendar:queryCalendar rangeUnit:v12];

  v18 = [(HKHealthQueryChartCacheDataSource *)self _shiftedQueryIntervalIfNecessaryForStartDate:v15 endDate:v17 calendar:queryCalendar];
  startDate = [v18 startDate];

  endDate = [v18 endDate];

  v21 = v37;
  v22 = [(HKHealthQueryChartCacheDataSource *)self statisticsIntervalForTimeScope:*(&v36 + 1) resolution:v37 displayType:self->_displayType];
  if (!v22)
  {
    v23 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:*(&v36 + 1)];
    v22 = [v23 seriesPointIntervalComponentsAtResolution:v21];
  }

  v24 = [(HKHealthQueryChartCacheDataSource *)self _buildDescriptionFromStartDate:startDate endDate:endDate statisticsInterval:v22];
  if ([(HKHealthQueryChartCacheDataSource *)self supportsChartQueryDataGeneration])
  {
    v25 = [[HKChartQueryDataGenerationOperation alloc] initWithHealthStore:self->_healthStore dataSource:self startDate:startDate endDate:endDate statisticsInterval:v22 operationDescription:v24 completion:completionCopy];
  }

  else
  {
    v25 = [[HKHealthQueryFetchOperation alloc] initWithHealthStore:self->_healthStore operationDescription:v24 completion:completionCopy];
    objc_initWeak(location, v25);
    v26 = [[HKHealthQueryChartCacheQueryRequest alloc] initWithStartDate:startDate endDate:endDate statisticsInterval:v22];
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
    v28 = [HKValueRange valueRangeWithMinValue:startDate maxValue:endDate];
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

- (id)_shiftedQueryIntervalIfNecessaryForStartDate:(id)date endDate:(id)endDate calendar:(id)calendar
{
  calendarCopy = calendar;
  endDateCopy = endDate;
  dateCopy = date;
  queryAlignment = [(HKHealthQueryChartCacheDataSource *)self queryAlignment];
  v12 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:dateCopy endDate:endDateCopy];

  if (queryAlignment == 1)
  {
    v13 = [v12 hk_dateIntervalShiftedToQueryAlignment:1 calendar:calendarCopy];

    v12 = v13;
  }

  return v12;
}

- (unint64_t)calendarUnitForTimeScope:(int64_t)scope displayType:(id)type
{
  if (type)
  {
    result = [type hk_chartCalendarUnitForTimeScope:scope];
    if (!result)
    {
      return 32;
    }
  }

  else
  {
    dataType = self->_dataType;

    return [(HKChartableDataType *)dataType hk_chartCalendarUnitForTimeScope:scope];
  }

  return result;
}

- (id)statisticsIntervalForTimeScope:(int64_t)scope resolution:(int64_t)resolution displayType:(id)type
{
  if (type)
  {
    dataType = type;
  }

  else
  {
    dataType = self->_dataType;
  }

  v6 = [dataType hk_customSeriesPointIntervalComponentsForTimeScope:scope resolution:resolution];

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

- (id)_buildDescriptionFromStartDate:(id)date endDate:(id)endDate statisticsInterval:(id)interval
{
  intervalCopy = interval;
  v9 = MEMORY[0x1E696AEC0];
  endDateCopy = endDate;
  dateCopy = date;
  queryDescription = [(HKHealthQueryChartCacheDataSource *)self queryDescription];
  v13 = _DateForDescription(dateCopy);

  v14 = _DateForDescription(endDateCopy);

  v15 = intervalCopy;
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

  v24 = [v9 stringWithFormat:@"%@: %@ -> %@ interval %@", queryDescription, v13, v14, v23];

  return v24;
}

- (id)codableQueryDataWithType:(int)type startDate:(id)date endDate:(id)endDate statisticsInterval:(id)interval queryDataObject:(id)object
{
  v10 = *&type;
  dateCopy = date;
  endDateCopy = endDate;
  intervalCopy = interval;
  objectCopy = object;
  v16 = objc_alloc_init(HKCodableChartDataSourceQueryData);
  [(HKCodableChartDataSourceQueryData *)v16 setType:v10];
  if (dateCopy)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    [(HKCodableChartDataSourceQueryData *)v16 setStartDate:?];
  }

  if (endDateCopy)
  {
    [endDateCopy timeIntervalSinceReferenceDate];
    [(HKCodableChartDataSourceQueryData *)v16 setEndDate:?];
  }

  if (intervalCopy)
  {
    hkui_codableDateComponents = [intervalCopy hkui_codableDateComponents];
    [(HKCodableChartDataSourceQueryData *)v16 setStatisticsInterval:hkui_codableDateComponents];
  }

  [(HKCodableChartDataSourceQueryData *)v16 setQueryDataObject:objectCopy];
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  name = [localTimeZone name];
  [(HKCodableChartDataSourceQueryData *)v16 setTimeZoneName:name];

  queryCalendar = [(HKHealthQueryChartCacheDataSource *)self queryCalendar];
  -[HKCodableChartDataSourceQueryData setFirstWeekday:](v16, "setFirstWeekday:", [queryCalendar firstWeekday]);

  return v16;
}

- (id)queryDescription
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_2();
  return @"UnknownQuery";
}

- (id)queriesForRequest:(id)request completionHandler:(id)handler
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_2();
  return MEMORY[0x1E695E0F0];
}

- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_2();
  return 0;
}

- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_2();
  return 0;
}

@end