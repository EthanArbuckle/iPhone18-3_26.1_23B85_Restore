@interface HKSingleDailyValueQuantityTypeDataSource
- (BOOL)_shouldEmitOnlySinglePointForStatistics:(id)statistics;
- (BOOL)requiresPointRealignmentToMidnightForStatisticsInterval:(id)interval;
- (id)_componentsForDailyValues;
- (id)_quantityValueFromStatistics:(id)statistics statisticsInterval:(id)interval date:(id)date;
- (id)queriesForRequest:(id)request completionHandler:(id)handler;
- (id)queryDescription;
- (id)statisticsIntervalForTimeScope:(int64_t)scope resolution:(int64_t)resolution displayType:(id)type;
- (unint64_t)calendarUnitForTimeScope:(int64_t)scope displayType:(id)type;
@end

@implementation HKSingleDailyValueQuantityTypeDataSource

- (id)queryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  quantityType = [(HKQuantityTypeDataSource *)self quantityType];
  hk_localizedName = [quantityType hk_localizedName];
  v5 = [v2 stringWithFormat:@"HKSingleDailyValueQuantity(%@)", hk_localizedName];

  return v5;
}

- (id)queriesForRequest:(id)request completionHandler:(id)handler
{
  v32[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  statisticsInterval = [requestCopy statisticsInterval];
  v9 = [(HKSingleDailyValueQuantityTypeDataSource *)self _matchesDailyValues:statisticsInterval];

  if (v9)
  {
    hk_oneDay = [MEMORY[0x1E695DF10] hk_oneDay];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    startDate = [requestCopy startDate];
    v25 = [currentCalendar startOfDayForDate:startDate];

    endDate = [requestCopy endDate];
    v26 = [currentCalendar dateByAddingUnit:16 value:1 toDate:endDate options:0];

    v24 = [currentCalendar startOfDayForDate:v26];
    v14 = [MEMORY[0x1E696C378] predicateForSamplesWithStartDate:v25 endDate:v24 options:0];
    v15 = objc_alloc(MEMORY[0x1E696C4D8]);
    quantityType = [(HKQuantityTypeDataSource *)self quantityType];
    statisticsOptions = [(HKQuantityTypeDataSource *)self statisticsOptions];
    startDate2 = [requestCopy startDate];
    v19 = [v15 initWithQuantityType:quantityType quantitySamplePredicate:v14 options:statisticsOptions anchorDate:startDate2 intervalComponents:hk_oneDay];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __80__HKSingleDailyValueQuantityTypeDataSource_queriesForRequest_completionHandler___block_invoke;
    v27[3] = &unk_1E81B9D58;
    v27[4] = self;
    v28 = hk_oneDay;
    v29 = currentCalendar;
    v30 = handlerCopy;
    v20 = currentCalendar;
    v21 = hk_oneDay;
    [v19 setInitialResultsHandler:v27];
    [v19 setDebugIdentifier:@"charting (single daily value)"];
    v32[0] = v19;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  }

  else
  {
    v31.receiver = self;
    v31.super_class = HKSingleDailyValueQuantityTypeDataSource;
    v22 = [(HKQuantityTypeDataSource *)&v31 queriesForRequest:requestCopy completionHandler:handlerCopy];
  }

  return v22;
}

void __80__HKSingleDailyValueQuantityTypeDataSource_queriesForRequest_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = MEMORY[0x1E695DF70];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = [v8 statistics];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__HKSingleDailyValueQuantityTypeDataSource_queriesForRequest_completionHandler___block_invoke_2;
  v14[3] = &unk_1E81B9D30;
  v11 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v17 = *(a1 + 48);
  [v10 enumerateObjectsUsingBlock:v14];

  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))(v13, v12, v6);
  }
}

void __80__HKSingleDailyValueQuantityTypeDataSource_queriesForRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _shouldEmitOnlySinglePointForStatistics:v3])
  {
    v4 = [v3 startDate];
    v5 = [v3 endDate];
    v6 = HKUIMidDate(v4, v5);

    v7 = [*(a1 + 32) _quantityValueFromStatistics:v3 statisticsInterval:*(a1 + 40) date:v6];
    [*(a1 + 48) addObject:v7];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E696AB80]);
    v9 = [v3 startDate];
    v10 = [v3 endDate];
    v11 = [v8 initWithStartDate:v9 endDate:v10];

    v12 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v12 setHour:1];
    v13 = [v3 startDate];
    v14 = [v13 dateByAddingTimeInterval:180.0];

    v15 = [*(a1 + 32) _quantityValueFromStatistics:v3 statisticsInterval:*(a1 + 40) date:v14];
    [*(a1 + 48) addObject:v15];
    v16 = *(a1 + 56);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __80__HKSingleDailyValueQuantityTypeDataSource_queriesForRequest_completionHandler___block_invoke_3;
    v24 = &unk_1E81B9D08;
    v25 = *(a1 + 32);
    v17 = v3;
    v26 = v17;
    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    [v16 hk_enumerateDateInterval:v11 byDateComponents:v12 block:&v21];
    v18 = [v17 endDate];
    v19 = [v18 dateByAddingTimeInterval:-60.0];

    v20 = [*(a1 + 32) _quantityValueFromStatistics:v17 statisticsInterval:*(a1 + 40) date:v19];
    [*(a1 + 48) addObject:v20];
  }
}

void __80__HKSingleDailyValueQuantityTypeDataSource_queriesForRequest_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 startDate];
  v5 = [v3 dateByAddingTimeInterval:1800.0];

  v4 = [*(a1 + 32) _quantityValueFromStatistics:*(a1 + 40) statisticsInterval:*(a1 + 48) date:v5];
  [*(a1 + 56) addObject:v4];
}

- (BOOL)_shouldEmitOnlySinglePointForStatistics:(id)statistics
{
  baselineRelativeValueState = [statistics baselineRelativeValueState];
  v4 = baselineRelativeValueState;
  if (baselineRelativeValueState)
  {
    v5 = [baselineRelativeValueState integerValue] != 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_quantityValueFromStatistics:(id)statistics statisticsInterval:(id)interval date:(id)date
{
  dateCopy = date;
  intervalCopy = interval;
  statisticsCopy = statistics;
  v10 = objc_alloc_init(HKQuantityTypeDataSourceValue);
  [(HKQuantityTypeDataSourceValue *)v10 setStartDate:dateCopy];
  [(HKQuantityTypeDataSourceValue *)v10 setEndDate:dateCopy];

  quantityType = [statisticsCopy quantityType];
  [(HKQuantityTypeDataSourceValue *)v10 setQuantityType:quantityType];

  averageQuantity = [statisticsCopy averageQuantity];
  [(HKQuantityTypeDataSourceValue *)v10 setAverageQuantity:averageQuantity];

  duration = [statisticsCopy duration];
  [(HKQuantityTypeDataSourceValue *)v10 setDurationQuantity:duration];

  sumQuantity = [statisticsCopy sumQuantity];
  [(HKQuantityTypeDataSourceValue *)v10 setSumQuantity:sumQuantity];

  minimumQuantity = [statisticsCopy minimumQuantity];
  [(HKQuantityTypeDataSourceValue *)v10 setMinQuantity:minimumQuantity];

  maximumQuantity = [statisticsCopy maximumQuantity];
  [(HKQuantityTypeDataSourceValue *)v10 setMaxQuantity:maximumQuantity];

  mostRecentQuantity = [statisticsCopy mostRecentQuantity];
  [(HKQuantityTypeDataSourceValue *)v10 setMostRecentQuantity:mostRecentQuantity];

  [(HKQuantityTypeDataSourceValue *)v10 setRecordCount:1];
  [(HKQuantityTypeDataSourceValue *)v10 setStatisticsInterval:intervalCopy];

  baselineRelativeValueState = [statisticsCopy baselineRelativeValueState];

  [(HKQuantityTypeDataSourceValue *)v10 setBaselineRelativeValueState:baselineRelativeValueState];

  return v10;
}

- (id)_componentsForDailyValues
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v2 setDay:0x7FFFFFFFFFFFFFFELL];

  return v2;
}

- (id)statisticsIntervalForTimeScope:(int64_t)scope resolution:(int64_t)resolution displayType:(id)type
{
  typeCopy = type;
  if (scope <= 8)
  {
    if (((1 << scope) & 0x13F) != 0)
    {
      v11.receiver = self;
      v11.super_class = HKSingleDailyValueQuantityTypeDataSource;
      _componentsForDailyValues = [(HKHealthQueryChartCacheDataSource *)&v11 statisticsIntervalForTimeScope:scope resolution:resolution displayType:typeCopy];
    }

    else
    {
      _componentsForDailyValues = [(HKSingleDailyValueQuantityTypeDataSource *)self _componentsForDailyValues];
    }

    resolution = _componentsForDailyValues;
  }

  return resolution;
}

- (unint64_t)calendarUnitForTimeScope:(int64_t)scope displayType:(id)type
{
  typeCopy = type;
  if (scope < 6 || scope == 8)
  {
    v9.receiver = self;
    v9.super_class = HKSingleDailyValueQuantityTypeDataSource;
    v7 = [(HKHealthQueryChartCacheDataSource *)&v9 calendarUnitForTimeScope:scope displayType:typeCopy];
  }

  else
  {
    v7 = 16;
  }

  return v7;
}

- (BOOL)requiresPointRealignmentToMidnightForStatisticsInterval:(id)interval
{
  intervalCopy = interval;
  if ([(HKSingleDailyValueQuantityTypeDataSource *)self _matchesDailyValues:intervalCopy])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HKSingleDailyValueQuantityTypeDataSource;
    v5 = [(HKQuantityTypeDataSource *)&v7 requiresPointRealignmentToMidnightForStatisticsInterval:intervalCopy];
  }

  return v5;
}

@end