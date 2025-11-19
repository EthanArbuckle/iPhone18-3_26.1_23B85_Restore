@interface HKQuantityTypeDataSource
- (BOOL)requiresPointRealignmentToMidnightForStatisticsInterval:(id)a3;
- (HKQuantityType)quantityType;
- (HKQuantityTypeDataSource)initWithUnitController:(id)a3 options:(unint64_t)a4 displayType:(id)a5 healthStore:(id)a6;
- (id)_averageByInterval:(id)a3 startDate:(id)a4 statistics:(id)a5;
- (id)_createMappingFunction:(id)a3;
- (id)_dailyAverageQueriesWithStartDate:(id)a3 endDate:(id)a4 statisticsInterval:(id)a5 completion:(id)a6;
- (id)_defaultQueriesForStartDate:(id)a3 endDate:(id)a4 statisticsInterval:(id)a5 completionHandler:(id)a6;
- (id)_unshiftedDateIntervalIfNecessaryForStatisticsInterval:(id)a3 startDate:(id)a4 endDate:(id)a5 gregorianCalendar:(id)a6;
- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4;
- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5;
- (id)mappingFunctionForContext:(id)a3;
- (id)queriesForRequest:(id)a3 completionHandler:(id)a4;
- (id)queryDescription;
@end

@implementation HKQuantityTypeDataSource

- (HKQuantityTypeDataSource)initWithUnitController:(id)a3 options:(unint64_t)a4 displayType:(id)a5 healthStore:(id)a6
{
  v11 = a3;
  v19.receiver = self;
  v19.super_class = HKQuantityTypeDataSource;
  v12 = [(HKHealthQueryChartCacheDataSource *)&v19 initWithDisplayType:a5 healthStore:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_unitController, a3);
    v13->_statisticsOptions = a4;
    v14 = [[_HKQuantityTypeDataSourceMapping alloc] initWithQuantityTypeDataSource:v13];
    mappingState = v13->_mappingState;
    v13->_mappingState = v14;

    v16 = [(HKQuantityTypeDataSource *)v13 _createMappingFunction:v13->_mappingState];
    mappingFunction = v13->_mappingFunction;
    v13->_mappingFunction = v16;
  }

  return v13;
}

- (HKQuantityType)quantityType
{
  v2 = [(HKHealthQueryChartCacheDataSource *)self displayType];
  v3 = [v2 sampleType];

  return v3;
}

- (id)mappingFunctionForContext:(id)a3
{
  v3 = _Block_copy(self->_mappingFunction);

  return v3;
}

- (id)_createMappingFunction:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__HKQuantityTypeDataSource__createMappingFunction___block_invoke;
  aBlock[3] = &unk_1E81B9308;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  return v5;
}

- (id)queryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HKQuantityTypeDataSource *)self quantityType];
  v4 = [v3 hk_localizedName];
  v5 = [v2 stringWithFormat:@"HKQuantityType(%@)", v4];

  return v5;
}

- (id)queriesForRequest:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x1E696C660];
  v7 = a4;
  v8 = a3;
  v9 = [v8 statisticsInterval];
  v10 = [(HKHealthQueryChartCacheDataSource *)self displayType];
  v11 = [v10 sampleType];
  v12 = [v6 shouldUseDailyAverageWithDateComponents:v9 sampleType:v11];

  v13 = [v8 startDate];
  v14 = [v8 endDate];
  v15 = [v8 statisticsInterval];

  if (v12)
  {
    [(HKQuantityTypeDataSource *)self _dailyAverageQueriesWithStartDate:v13 endDate:v14 statisticsInterval:v15 completion:v7];
  }

  else
  {
    [(HKQuantityTypeDataSource *)self _defaultQueriesForStartDate:v13 endDate:v14 statisticsInterval:v15 completionHandler:v7];
  }
  v16 = ;

  return v16;
}

- (id)_dailyAverageQueriesWithStartDate:(id)a3 endDate:(id)a4 statisticsInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x1E695DF10];
  v14 = a4;
  v15 = [v13 hk_oneDay];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __100__HKQuantityTypeDataSource__dailyAverageQueriesWithStartDate_endDate_statisticsInterval_completion___block_invoke;
  v21[3] = &unk_1E81B9330;
  v21[4] = self;
  v22 = v11;
  v23 = v10;
  v24 = v12;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = [(HKQuantityTypeDataSource *)self _defaultQueriesForStartDate:v16 endDate:v14 statisticsInterval:v15 completionHandler:v21];

  return v19;
}

void __100__HKQuantityTypeDataSource__dailyAverageQueriesWithStartDate_endDate_statisticsInterval_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a3;
  v9 = [v4 _averageByInterval:v5 startDate:v7 statistics:a2];
  (*(v6 + 16))(v6, v9, v8);
}

- (id)_averageByInterval:(id)a3 startDate:(id)a4 statistics:(id)a5
{
  v8 = a3;
  unitController = self->_unitController;
  v10 = a5;
  v11 = a4;
  v12 = [(HKHealthQueryChartCacheDataSource *)self displayType];
  v13 = [(HKUnitPreferenceController *)unitController unitForDisplayType:v12];

  v14 = [(HKHealthQueryChartCacheDataSource *)self displayType];
  v15 = [v14 sampleType];

  v16 = [MEMORY[0x1E695DEE8] currentCalendar];
  v17 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
  v18 = MEMORY[0x1E696C660];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __68__HKQuantityTypeDataSource__averageByInterval_startDate_statistics___block_invoke;
  v25[3] = &unk_1E81B9358;
  v26 = v13;
  v27 = self;
  v28 = v8;
  v29 = v17;
  v30 = v15;
  v19 = v15;
  v20 = v17;
  v21 = v8;
  v22 = v13;
  v23 = [v18 arrayByCoalescingObjects:v10 startDate:v11 intervalComponents:v21 calendar:v16 combiningBlock:v25];

  return v23;
}

HKQuantityTypeDataSourceValue *__68__HKQuantityTypeDataSource__averageByInterval_startDate_statistics___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v31 + 1) + 8 * i) sumQuantity];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v13);
  }

  v17 = [MEMORY[0x1E696C660] averageSumFromQuantities:v10 unit:*(a1 + 32)];
  v18 = [MEMORY[0x1E696C660] minimumFromQuantities:v10 unit:*(a1 + 32)];
  v19 = [MEMORY[0x1E696C660] maximumFromQuantities:v10 unit:*(a1 + 32)];
  v20 = v19;
  v21 = 0;
  if (v17 && v18 && v19)
  {
    v21 = objc_alloc_init(HKQuantityTypeDataSourceValue);
    [*(a1 + 40) _unshiftedDateIntervalIfNecessaryForStatisticsInterval:*(a1 + 48) startDate:v8 endDate:v9 gregorianCalendar:*(a1 + 56)];
    v30 = v9;
    v23 = v22 = v8;
    v24 = [v23 startDate];
    [(HKQuantityTypeDataSourceValue *)v21 setStartDate:v24];

    v25 = [v23 endDate];
    [(HKQuantityTypeDataSourceValue *)v21 setEndDate:v25];

    [(HKQuantityTypeDataSourceValue *)v21 setQuantityType:*(a1 + 64)];
    [(HKQuantityTypeDataSourceValue *)v21 setSumQuantity:v17];
    [(HKQuantityTypeDataSourceValue *)v21 setMinQuantity:v18];
    [(HKQuantityTypeDataSourceValue *)v21 setMaxQuantity:v20];
    -[HKQuantityTypeDataSourceValue setRecordCount:](v21, "setRecordCount:", [v11 count]);
    v26 = [MEMORY[0x1E695DF10] hk_oneDay];
    [(HKQuantityTypeDataSourceValue *)v21 setStatisticsInterval:v26];

    v8 = v22;
    v9 = v30;
  }

  v27 = [v11 lastObject];
  v28 = [v27 mostRecentQuantity];

  if (v28)
  {
    [(HKQuantityTypeDataSourceValue *)v21 setMostRecentQuantity:v28];
  }

  return v21;
}

- (id)_defaultQueriesForStartDate:(id)a3 endDate:(id)a4 statisticsInterval:(id)a5 completionHandler:(id)a6
{
  v30[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E696C378] predicateForSamplesWithStartDate:v10 endDate:v11 options:0];
  v15 = objc_alloc(MEMORY[0x1E696C4D8]);
  v16 = [(HKQuantityTypeDataSource *)self quantityType];
  v17 = [v15 initWithQuantityType:v16 quantitySamplePredicate:v14 options:self->_statisticsOptions anchorDate:v10 intervalComponents:v12];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __101__HKQuantityTypeDataSource__defaultQueriesForStartDate_endDate_statisticsInterval_completionHandler___block_invoke;
  v24[3] = &unk_1E81B93A8;
  v25 = v10;
  v26 = v11;
  v27 = self;
  v28 = v12;
  v29 = v13;
  v18 = v13;
  v19 = v12;
  v20 = v11;
  v21 = v10;
  [v17 setInitialResultsHandler:v24];
  [v17 setDebugIdentifier:@"charting (quantity)"];
  v30[0] = v17;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];

  return v22;
}

void __101__HKQuantityTypeDataSource__defaultQueriesForStartDate_endDate_statisticsInterval_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v10 = v9;
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
  v14 = [v7 statistics];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __101__HKQuantityTypeDataSource__defaultQueriesForStartDate_endDate_statisticsInterval_completionHandler___block_invoke_2;
  v19[3] = &unk_1E81B9380;
  v23 = v10;
  v24 = v12;
  v15 = *(a1 + 56);
  v19[4] = *(a1 + 48);
  v20 = v15;
  v16 = v13;
  v21 = v16;
  v17 = v8;
  v22 = v17;
  [v14 enumerateObjectsUsingBlock:v19];

  v18 = *(a1 + 64);
  if (v18)
  {
    (*(v18 + 16))(v18, v17, v6);
  }
}

void __101__HKQuantityTypeDataSource__defaultQueriesForStartDate_endDate_statisticsInterval_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = [v28 startDate];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = *(a1 + 64);

  v7 = [v28 endDate];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = *(a1 + 72);

  if (v5 >= v6 && v9 <= v10)
  {
    v12 = objc_alloc_init(HKQuantityTypeDataSourceValue);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = [v28 startDate];
    v16 = [v28 endDate];
    v17 = [v13 _unshiftedDateIntervalIfNecessaryForStatisticsInterval:v14 startDate:v15 endDate:v16 gregorianCalendar:*(a1 + 48)];

    v18 = [v17 startDate];
    [(HKQuantityTypeDataSourceValue *)v12 setStartDate:v18];

    v19 = [v17 endDate];
    [(HKQuantityTypeDataSourceValue *)v12 setEndDate:v19];

    v20 = [v28 quantityType];
    [(HKQuantityTypeDataSourceValue *)v12 setQuantityType:v20];

    v21 = [v28 averageQuantity];
    [(HKQuantityTypeDataSourceValue *)v12 setAverageQuantity:v21];

    v22 = [v28 duration];
    [(HKQuantityTypeDataSourceValue *)v12 setDurationQuantity:v22];

    v23 = [v28 sumQuantity];
    [(HKQuantityTypeDataSourceValue *)v12 setSumQuantity:v23];

    v24 = [v28 minimumQuantity];
    [(HKQuantityTypeDataSourceValue *)v12 setMinQuantity:v24];

    v25 = [v28 maximumQuantity];
    [(HKQuantityTypeDataSourceValue *)v12 setMaxQuantity:v25];

    v26 = [v28 mostRecentQuantity];
    [(HKQuantityTypeDataSourceValue *)v12 setMostRecentQuantity:v26];

    -[HKQuantityTypeDataSourceValue setRecordCount:](v12, "setRecordCount:", [v28 dataCount]);
    [(HKQuantityTypeDataSourceValue *)v12 setStatisticsInterval:*(a1 + 40)];
    v27 = [v28 baselineRelativeValueState];
    [(HKQuantityTypeDataSourceValue *)v12 setBaselineRelativeValueState:v27];

    [*(a1 + 56) addObject:v12];
  }
}

- (BOOL)requiresPointRealignmentToMidnightForStatisticsInterval:(id)a3
{
  v4 = a3;
  if ([(HKHealthQueryChartCacheDataSource *)self queryAlignment]== 1)
  {
    [v4 hk_approximateDuration];
    v6 = v5;
    v7 = [MEMORY[0x1E695DF10] hk_oneDay];
    [v7 hk_approximateDuration];
    v9 = v6 >= v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_unshiftedDateIntervalIfNecessaryForStatisticsInterval:(id)a3 startDate:(id)a4 endDate:(id)a5 gregorianCalendar:(id)a6
{
  v10 = a6;
  v11 = MEMORY[0x1E696AB80];
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[v11 alloc] initWithStartDate:v13 endDate:v12];

  LODWORD(v13) = [(HKQuantityTypeDataSource *)self requiresPointRealignmentToMidnightForStatisticsInterval:v14];
  if (v13)
  {
    v16 = [v15 hk_dateIntervalUnshiftedFromQueryAlignment:1 calendar:v10];
  }

  else
  {
    v16 = v15;
  }

  v17 = v16;

  return v17;
}

- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __94__HKQuantityTypeDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke;
  v23[3] = &unk_1E81B7088;
  v24 = v8;
  v25 = self;
  v26 = v10;
  v11 = v10;
  v12 = v8;
  v13 = [(HKQuantityTypeDataSource *)self queriesForRequest:v12 completionHandler:v23];
  v14 = [v13 firstObject];
  [v9 executeQuery:v14];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__HKQuantityTypeDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E81B5AD0;
  v21 = v9;
  v22 = v13;
  v15 = v13;
  v16 = v9;
  v17 = _Block_copy(aBlock);
  v18 = _Block_copy(v17);

  return v18;
}

void __94__HKQuantityTypeDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      _HKInitializeLogging();
      v8 = HKLogWellnessDashboard();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

      if (v9)
      {
        v10 = HKLogWellnessDashboard();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = HKStringForChartDataSourceQueryRequestAudience([a1[4] audience]);
          v12 = [a1[5] quantityType];
          v13 = [v12 identifier];
          v14 = [v7 localizedDescription];
          *buf = 138412802;
          v24 = v11;
          v25 = 2112;
          v26 = v13;
          v27 = 2112;
          v28 = v14;
          _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_INFO, "[RemoteCharting]_%@_%@: query returned successfully with error: %@", buf, 0x20u);
        }
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__HKQuantityTypeDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_395;
    aBlock[3] = &unk_1E81B93D0;
    v19 = *(a1 + 2);
    v15 = v19.i64[0];
    v21 = vextq_s8(v19, v19, 8uLL);
    v22 = a1[6];
    v16 = _Block_copy(aBlock);
    v17 = *(a1[5] + 12);
    if (v17)
    {
      (*(v17 + 16))(v17, v5, v16);
    }

    else
    {
      v16[2](v16, v5);
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __94__HKQuantityTypeDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(a1, v7, v18);
    }

    (*(a1[6] + 2))();
  }
}

void __94__HKQuantityTypeDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_395(uint64_t a1, void *a2)
{
  v13 = [a2 hk_map:&__block_literal_global_58];
  v3 = objc_alloc_init(HKCodableChartQuantityDataSourceQueryData);
  v4 = objc_alloc_init(HKCodableStatisticsCollection);
  [(HKCodableChartQuantityDataSourceQueryData *)v3 setStatisticsCollection:v4];

  v5 = [v13 mutableCopy];
  v6 = [(HKCodableChartQuantityDataSourceQueryData *)v3 statisticsCollection];
  [v6 setStatistics:v5];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) startDate];
  v9 = [*(a1 + 40) endDate];
  v10 = [*(a1 + 40) statisticsInterval];
  v11 = [(HKCodableChartQuantityDataSourceQueryData *)v3 data];
  v12 = [v7 codableQueryDataWithType:0 startDate:v8 endDate:v9 statisticsInterval:v10 queryDataObject:v11];

  (*(*(a1 + 48) + 16))();
}

void __94__HKQuantityTypeDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) firstObject];
  [v1 stopQuery:v2];
}

- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4
{
  v4 = a3;
  if ([v4 hasTimeZoneName])
  {
    v5 = objc_alloc(MEMORY[0x1E695DFE8]);
    v6 = [v4 timeZoneName];
    v7 = [v5 initWithName:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [HKCodableChartQuantityDataSourceQueryData alloc];
  v9 = [v4 queryDataObject];
  v10 = [(HKCodableChartQuantityDataSourceQueryData *)v8 initWithData:v9];

  v11 = objc_alloc_init(HKGraphSeriesDataBlock);
  v12 = [(HKCodableChartQuantityDataSourceQueryData *)v10 statisticsCollection];
  v13 = [v12 statistics];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__HKQuantityTypeDataSource_chartPointsFromQueryData_dataIsFromRemoteSource___block_invoke;
  v17[3] = &unk_1E81B6B90;
  v18 = v7;
  v14 = v7;
  v15 = [v13 hk_map:v17];
  [(HKGraphSeriesDataBlock *)v11 setChartPoints:v15];

  return v11;
}

void __94__HKQuantityTypeDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = HKStringForChartDataSourceQueryRequestAudience([*(a1 + 32) audience]);
  v7 = [*(a1 + 40) quantityType];
  v8 = [v7 identifier];
  v9 = [a2 localizedDescription];
  v10 = 138412802;
  v11 = v6;
  v12 = 2112;
  v13 = v8;
  v14 = 2112;
  v15 = v9;
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "[RemoteCharting]_%@_%@: unable to fetch results from query with error: %@", &v10, 0x20u);
}

@end