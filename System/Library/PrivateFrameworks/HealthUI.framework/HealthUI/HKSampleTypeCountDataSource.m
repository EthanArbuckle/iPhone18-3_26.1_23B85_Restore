@interface HKSampleTypeCountDataSource
- (id)_chartPointsWithCounts:(id)a3 blockStart:(id)a4 blockEnd:(id)a5 sourceTimeZone:(id)a6;
- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4;
- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5;
- (id)queriesForRequest:(id)a3 completionHandler:(id)a4;
- (id)queryDescription;
@end

@implementation HKSampleTypeCountDataSource

- (id)queryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HKHealthQueryChartCacheDataSource *)self displayType];
  v4 = [v3 localization];
  v5 = [v4 displayName];
  v6 = [v2 stringWithFormat:@"HKSampleTypeCount(%@)", v5];

  return v6;
}

- (id)queriesForRequest:(id)a3 completionHandler:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(HKHealthQueryChartCacheDataSource *)self displayType];
  v9 = [v8 sampleType];

  v10 = MEMORY[0x1E696C660];
  v11 = [v7 startDate];
  v12 = [v7 endDate];
  v13 = [v7 statisticsInterval];

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __67__HKSampleTypeCountDataSource_queriesForRequest_completionHandler___block_invoke;
  v22 = &unk_1E81B7B20;
  v23 = v9;
  v24 = v6;
  v14 = v6;
  v15 = v9;
  v16 = [v10 countStatisticsQueryWithSampleType:v15 startDate:v11 endDate:v12 intervalComponents:v13 predicate:0 completion:&v19];

  [v16 setDebugIdentifier:{@"charting (sample count)", v19, v20, v21, v22}];
  v25[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];

  return v17;
}

void __67__HKSampleTypeCountDataSource_queriesForRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    v10 = v9;
    if (!v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __68__HKHandwashingEventDataSource_queriesForRequest_completionHandler___block_invoke_cold_1();
      }

      goto LABEL_8;
    }

    v11 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v10 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __68__HKHandwashingEventDataSource_queriesForRequest_completionHandler___block_invoke_cold_2();
      }

LABEL_8:
    }
  }

  v12 = objc_alloc_init(HKCodableChartSampleTypeCountDataQueryData);
  v13 = [v5 allKeys];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__HKSampleTypeCountDataSource_queriesForRequest_completionHandler___block_invoke_297;
  v17[3] = &unk_1E81BB300;
  v18 = v5;
  v14 = v5;
  v15 = [v13 hk_map:v17];
  v16 = [v15 mutableCopy];
  [(HKCodableChartSampleTypeCountDataQueryData *)v12 setTimePeriodToCounts:v16];

  (*(*(a1 + 40) + 16))();
}

HKCodableSampleTypeCountData *__67__HKSampleTypeCountDataSource_queriesForRequest_completionHandler___block_invoke_297(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(HKCodableSampleTypeCountData);
  v5 = [v3 startDate];
  [v5 timeIntervalSinceReferenceDate];
  [(HKCodableSampleTypeCountData *)v4 setStartDate:?];

  v6 = [v3 endDate];
  [v6 timeIntervalSinceReferenceDate];
  [(HKCodableSampleTypeCountData *)v4 setEndDate:?];

  v7 = [*(a1 + 32) objectForKeyedSubscript:v3];

  -[HKCodableSampleTypeCountData setCount:](v4, "setCount:", [v7 integerValue]);

  return v4;
}

- (id)_chartPointsWithCounts:(id)a3 blockStart:(id)a4 blockEnd:(id)a5 sourceTimeZone:(id)a6
{
  v8 = a6;
  v9 = MEMORY[0x1E695DF70];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  v12 = [(HKSampleTypeCountDataSource *)self userInfoCreationBlock];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89__HKSampleTypeCountDataSource__chartPointsWithCounts_blockStart_blockEnd_sourceTimeZone___block_invoke;
  v18[3] = &unk_1E81BB328;
  v20 = v11;
  v21 = v12;
  v19 = v8;
  v13 = v11;
  v14 = v8;
  v15 = v12;
  [v10 enumerateKeysAndObjectsUsingBlock:v18];

  [v13 sortUsingComparator:&__block_literal_global_78];
  v16 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v16 setChartPoints:v13];

  return v16;
}

void __89__HKSampleTypeCountDataSource__chartPointsWithCounts_blockStart_blockEnd_sourceTimeZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = (*(v6 + 16))(v6, v5);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v15 startDate];
  v9 = [v8 hk_dateFromSourceTimeZone:*(a1 + 32)];

  v10 = [v15 endDate];
  v11 = [v10 hk_dateFromSourceTimeZone:*(a1 + 32)];

  v12 = [HKNumericChartPoint alloc];
  v13 = HKUIMidDate(v9, v11);
  v14 = [(HKNumericChartPoint *)v12 initWithXValue:v13 yValue:v5 userInfo:v7];

  [*(a1 + 40) addObject:v14];
}

uint64_t __89__HKSampleTypeCountDataSource__chartPointsWithCounts_blockStart_blockEnd_sourceTimeZone___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 xValueAsGenericType];
  v6 = [v4 xValueAsGenericType];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __97__HKSampleTypeCountDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke;
  v25[3] = &unk_1E81BB370;
  v26 = v8;
  v27 = self;
  v28 = v10;
  v11 = v10;
  v12 = v8;
  v13 = [(HKSampleTypeCountDataSource *)self queriesForRequest:v12 completionHandler:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __97__HKSampleTypeCountDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_311;
  v23[3] = &unk_1E81B6D60;
  v14 = v9;
  v24 = v14;
  [v13 enumerateObjectsUsingBlock:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97__HKSampleTypeCountDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2;
  v20[3] = &unk_1E81B5AD0;
  v21 = v13;
  v22 = v14;
  v15 = v14;
  v16 = v13;
  v17 = _Block_copy(v20);
  v18 = _Block_copy(v17);

  return v18;
}

void __97__HKSampleTypeCountDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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
          v11 = HKStringForChartDataSourceQueryRequestAudience([*(a1 + 32) audience]);
          v12 = [*(a1 + 40) displayType];
          v13 = [v12 objectType];
          v14 = [v13 identifier];
          v15 = [v7 localizedDescription];
          v23 = 138412802;
          v24 = v11;
          v25 = 2112;
          v26 = v14;
          v27 = 2112;
          v28 = v15;
          _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_INFO, "[RemoteCharting]_%@_%@: query returned successfully with error: %@", &v23, 0x20u);
        }
      }
    }

    v16 = *(a1 + 40);
    v17 = [*(a1 + 32) startDate];
    v18 = [*(a1 + 32) endDate];
    v19 = [*(a1 + 32) statisticsInterval];
    v20 = [v5 data];
    v21 = [v16 codableQueryDataWithType:2 startDate:v17 endDate:v18 statisticsInterval:v19 queryDataObject:v20];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v22 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __97__HKSampleTypeCountDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(a1, v7, v22);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __97__HKSampleTypeCountDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __97__HKSampleTypeCountDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_3;
  v2[3] = &unk_1E81B6D60;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsUsingBlock:v2];
}

- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v33 = self;
  if ([v5 hasTimeZoneName])
  {
    v6 = objc_alloc(MEMORY[0x1E695DFE8]);
    v7 = [v5 timeZoneName];
    v32 = [v6 initWithName:v7];
  }

  else
  {
    v32 = 0;
  }

  v8 = [HKCodableChartSampleTypeCountDataQueryData alloc];
  v34 = v5;
  v9 = [v5 queryDataObject];
  v10 = [(HKCodableChartSampleTypeCountDataQueryData *)v8 initWithData:v9];

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = v10;
  obj = [(HKCodableChartSampleTypeCountDataQueryData *)v10 timePeriodToCounts];
  v12 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v36 + 1) + 8 * i);
        v17 = objc_alloc(MEMORY[0x1E696AB80]);
        v18 = MEMORY[0x1E695DF00];
        [v16 startDate];
        v19 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
        v20 = MEMORY[0x1E695DF00];
        [v16 endDate];
        v21 = [v20 dateWithTimeIntervalSinceReferenceDate:?];
        v22 = [v17 initWithStartDate:v19 endDate:v21];

        v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v16, "count")}];
        [v11 setObject:v23 forKeyedSubscript:v22];
      }

      v13 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v13);
  }

  v24 = MEMORY[0x1E695DF00];
  [v34 startDate];
  v25 = [v24 dateWithTimeIntervalSinceReferenceDate:?];
  v26 = MEMORY[0x1E695DF00];
  [v34 endDate];
  v27 = [v26 dateWithTimeIntervalSinceReferenceDate:?];
  v28 = [v11 copy];
  v29 = [(HKSampleTypeCountDataSource *)v33 _chartPointsWithCounts:v28 blockStart:v25 blockEnd:v27 sourceTimeZone:v32];

  return v29;
}

void __97__HKSampleTypeCountDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = HKStringForChartDataSourceQueryRequestAudience([*(a1 + 32) audience]);
  v7 = [*(a1 + 40) displayType];
  v8 = [v7 objectType];
  v9 = [v8 identifier];
  v10 = [a2 localizedDescription];
  v11 = 138412802;
  v12 = v6;
  v13 = 2112;
  v14 = v9;
  v15 = 2112;
  v16 = v10;
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "[RemoteCharting]_%@_%@: unable to fetch results from query with error: %@", &v11, 0x20u);
}

@end