@interface HKSingleDailyValueQuantityTypeDataSource
- (BOOL)_shouldEmitOnlySinglePointForStatistics:(id)a3;
- (BOOL)requiresPointRealignmentToMidnightForStatisticsInterval:(id)a3;
- (id)_componentsForDailyValues;
- (id)_quantityValueFromStatistics:(id)a3 statisticsInterval:(id)a4 date:(id)a5;
- (id)queriesForRequest:(id)a3 completionHandler:(id)a4;
- (id)queryDescription;
- (id)statisticsIntervalForTimeScope:(int64_t)a3 resolution:(int64_t)a4 displayType:(id)a5;
- (unint64_t)calendarUnitForTimeScope:(int64_t)a3 displayType:(id)a4;
@end

@implementation HKSingleDailyValueQuantityTypeDataSource

- (id)queryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HKQuantityTypeDataSource *)self quantityType];
  v4 = [v3 hk_localizedName];
  v5 = [v2 stringWithFormat:@"HKSingleDailyValueQuantity(%@)", v4];

  return v5;
}

- (id)queriesForRequest:(id)a3 completionHandler:(id)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 statisticsInterval];
  v9 = [(HKSingleDailyValueQuantityTypeDataSource *)self _matchesDailyValues:v8];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DF10] hk_oneDay];
    v11 = [MEMORY[0x1E695DEE8] currentCalendar];
    v12 = [v6 startDate];
    v25 = [v11 startOfDayForDate:v12];

    v13 = [v6 endDate];
    v26 = [v11 dateByAddingUnit:16 value:1 toDate:v13 options:0];

    v24 = [v11 startOfDayForDate:v26];
    v14 = [MEMORY[0x1E696C378] predicateForSamplesWithStartDate:v25 endDate:v24 options:0];
    v15 = objc_alloc(MEMORY[0x1E696C4D8]);
    v16 = [(HKQuantityTypeDataSource *)self quantityType];
    v17 = [(HKQuantityTypeDataSource *)self statisticsOptions];
    v18 = [v6 startDate];
    v19 = [v15 initWithQuantityType:v16 quantitySamplePredicate:v14 options:v17 anchorDate:v18 intervalComponents:v10];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __80__HKSingleDailyValueQuantityTypeDataSource_queriesForRequest_completionHandler___block_invoke;
    v27[3] = &unk_1E81B9D58;
    v27[4] = self;
    v28 = v10;
    v29 = v11;
    v30 = v7;
    v20 = v11;
    v21 = v10;
    [v19 setInitialResultsHandler:v27];
    [v19 setDebugIdentifier:@"charting (single daily value)"];
    v32[0] = v19;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  }

  else
  {
    v31.receiver = self;
    v31.super_class = HKSingleDailyValueQuantityTypeDataSource;
    v22 = [(HKQuantityTypeDataSource *)&v31 queriesForRequest:v6 completionHandler:v7];
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

- (BOOL)_shouldEmitOnlySinglePointForStatistics:(id)a3
{
  v3 = [a3 baselineRelativeValueState];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue] != 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_quantityValueFromStatistics:(id)a3 statisticsInterval:(id)a4 date:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(HKQuantityTypeDataSourceValue);
  [(HKQuantityTypeDataSourceValue *)v10 setStartDate:v7];
  [(HKQuantityTypeDataSourceValue *)v10 setEndDate:v7];

  v11 = [v9 quantityType];
  [(HKQuantityTypeDataSourceValue *)v10 setQuantityType:v11];

  v12 = [v9 averageQuantity];
  [(HKQuantityTypeDataSourceValue *)v10 setAverageQuantity:v12];

  v13 = [v9 duration];
  [(HKQuantityTypeDataSourceValue *)v10 setDurationQuantity:v13];

  v14 = [v9 sumQuantity];
  [(HKQuantityTypeDataSourceValue *)v10 setSumQuantity:v14];

  v15 = [v9 minimumQuantity];
  [(HKQuantityTypeDataSourceValue *)v10 setMinQuantity:v15];

  v16 = [v9 maximumQuantity];
  [(HKQuantityTypeDataSourceValue *)v10 setMaxQuantity:v16];

  v17 = [v9 mostRecentQuantity];
  [(HKQuantityTypeDataSourceValue *)v10 setMostRecentQuantity:v17];

  [(HKQuantityTypeDataSourceValue *)v10 setRecordCount:1];
  [(HKQuantityTypeDataSourceValue *)v10 setStatisticsInterval:v8];

  v18 = [v9 baselineRelativeValueState];

  [(HKQuantityTypeDataSourceValue *)v10 setBaselineRelativeValueState:v18];

  return v10;
}

- (id)_componentsForDailyValues
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v2 setDay:0x7FFFFFFFFFFFFFFELL];

  return v2;
}

- (id)statisticsIntervalForTimeScope:(int64_t)a3 resolution:(int64_t)a4 displayType:(id)a5
{
  v8 = a5;
  if (a3 <= 8)
  {
    if (((1 << a3) & 0x13F) != 0)
    {
      v11.receiver = self;
      v11.super_class = HKSingleDailyValueQuantityTypeDataSource;
      v9 = [(HKHealthQueryChartCacheDataSource *)&v11 statisticsIntervalForTimeScope:a3 resolution:a4 displayType:v8];
    }

    else
    {
      v9 = [(HKSingleDailyValueQuantityTypeDataSource *)self _componentsForDailyValues];
    }

    a4 = v9;
  }

  return a4;
}

- (unint64_t)calendarUnitForTimeScope:(int64_t)a3 displayType:(id)a4
{
  v6 = a4;
  if (a3 < 6 || a3 == 8)
  {
    v9.receiver = self;
    v9.super_class = HKSingleDailyValueQuantityTypeDataSource;
    v7 = [(HKHealthQueryChartCacheDataSource *)&v9 calendarUnitForTimeScope:a3 displayType:v6];
  }

  else
  {
    v7 = 16;
  }

  return v7;
}

- (BOOL)requiresPointRealignmentToMidnightForStatisticsInterval:(id)a3
{
  v4 = a3;
  if ([(HKSingleDailyValueQuantityTypeDataSource *)self _matchesDailyValues:v4])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HKSingleDailyValueQuantityTypeDataSource;
    v5 = [(HKQuantityTypeDataSource *)&v7 requiresPointRealignmentToMidnightForStatisticsInterval:v4];
  }

  return v5;
}

@end