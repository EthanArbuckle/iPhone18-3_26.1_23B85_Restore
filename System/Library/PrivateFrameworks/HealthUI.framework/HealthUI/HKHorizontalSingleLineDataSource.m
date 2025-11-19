@interface HKHorizontalSingleLineDataSource
- (id)_chartPointsWithSamples:(id)a3 blockStart:(id)a4 blockEnd:(id)a5 sourceTimeZone:(id)a6;
- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4;
- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5;
- (id)queriesForRequest:(id)a3 completionHandler:(id)a4;
- (id)queryDescription;
@end

@implementation HKHorizontalSingleLineDataSource

- (id)queryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HKHealthQueryChartCacheDataSource *)self displayType];
  v4 = [v3 localization];
  v5 = [v4 displayName];
  v6 = [v2 stringWithFormat:@"HKHorizontalSingleLine(%@)", v5];

  return v6;
}

- (id)queriesForRequest:(id)a3 completionHandler:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E696C378];
  v8 = a3;
  v9 = [v8 startDate];
  v10 = [v8 endDate];

  v11 = [v7 predicateForSamplesWithStartDate:v9 endDate:v10 options:0];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E696BE38] ascending:1];
  v13 = objc_alloc(MEMORY[0x1E696C3C8]);
  sampleType = self->_sampleType;
  v23[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__HKHorizontalSingleLineDataSource_queriesForRequest_completionHandler___block_invoke;
  v20[3] = &unk_1E81B6D10;
  v20[4] = self;
  v21 = v6;
  v16 = v6;
  v17 = [v13 initWithSampleType:sampleType predicate:v11 limit:0 sortDescriptors:v15 resultsHandler:v20];

  [v17 setDebugIdentifier:@"charting (horizontal single line)"];
  v22 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];

  return v18;
}

void __72__HKHorizontalSingleLineDataSource_queriesForRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
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
    if (!v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __72__HKHorizontalSingleLineDataSource_queriesForRequest_completionHandler___block_invoke_cold_1(a1, v10, v13);
      }

      goto LABEL_8;
    }

    v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

    if (v14)
    {
      v13 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __72__HKHorizontalSingleLineDataSource_queriesForRequest_completionHandler___block_invoke_cold_2(a1, v10, v13);
      }

LABEL_8:
    }
  }

  v15 = objc_alloc_init(HKCodableSampleDataSourceQueryData);
  v16 = [v8 hk_map:&__block_literal_global_18];
  v17 = [v16 mutableCopy];
  [(HKCodableSampleDataSourceQueryData *)v15 setSamples:v17];

  (*(*(a1 + 40) + 16))();
}

id __72__HKHorizontalSingleLineDataSource_queriesForRequest_completionHandler___block_invoke_300(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 metadata];
  v4 = [v3 hk_filter:&__block_literal_global_304];
  [v2 _setMetadata:v4];

  v5 = [v2 codableSampleChartData];

  return v5;
}

- (id)_chartPointsWithSamples:(id)a3 blockStart:(id)a4 blockEnd:(id)a5 sourceTimeZone:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v33 = a6;
  v31 = self;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [(HKHorizontalSingleLineDataSource *)self userInfoCreationBlock];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v8;
  v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v34)
  {
    v10 = 0;
    v30 = *v36;
    v29 = *MEMORY[0x1E696BB28];
    do
    {
      v11 = 0;
      v12 = v10;
      do
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * v11);
        v14 = objc_alloc_init(HKHorizontalSingleLineChartPoint);
        v15 = [v13 startDate];
        v16 = [v15 hk_dateFromSourceTimeZone:v33];

        v17 = [v13 endDate];
        v18 = [v17 hk_dateFromSourceTimeZone:v33];

        v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "hk_integerValue")}];
        if (v12)
        {
          [v16 timeIntervalSinceDate:v12];
          v21 = v20 < 172800.0;
        }

        else
        {
          v21 = 0;
        }

        v10 = v16;

        [(HKHorizontalSingleLineChartPoint *)v14 setXValue:v10];
        [(HKHorizontalSingleLineChartPoint *)v14 setYValue:v19];
        [(HKHorizontalSingleLineChartPoint *)v14 setGroupToPrevious:v21];
        if (v9)
        {
          v22 = [v13 metadata];
          v23 = [v22 valueForKey:v29];
          v24 = [v23 BOOLValue];

          v25 = (v9)[2](v9, [v19 integerValue], v10, v18, v24);
          [(HKHorizontalSingleLineChartPoint *)v14 setUserInfo:v25];
        }

        [(HKHorizontalSingleLineChartPoint *)v14 setMarkStyle:0];
        [(HKHorizontalSingleLineDataSource *)v31 applyMarkStyleToPoint:v14 sample:v13];
        [v32 addObject:v14];

        ++v11;
        v12 = v10;
      }

      while (v34 != v11);
      v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v34);
  }

  v26 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v26 setChartPoints:v32];

  return v26;
}

- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __102__HKHorizontalSingleLineDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke;
  v25[3] = &unk_1E81B6D38;
  v26 = v8;
  v27 = self;
  v28 = v10;
  v11 = v10;
  v12 = v8;
  v13 = [(HKHorizontalSingleLineDataSource *)self queriesForRequest:v12 completionHandler:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __102__HKHorizontalSingleLineDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_314;
  v23[3] = &unk_1E81B6D60;
  v14 = v9;
  v24 = v14;
  [v13 enumerateObjectsUsingBlock:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __102__HKHorizontalSingleLineDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2;
  v20[3] = &unk_1E81B5AD0;
  v21 = v13;
  v22 = v14;
  v15 = v14;
  v16 = v13;
  v17 = _Block_copy(v20);
  v18 = _Block_copy(v17);

  return v18;
}

void __102__HKHorizontalSingleLineDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
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
          v12 = [*(*(a1 + 40) + 56) identifier];
          v13 = [v7 localizedDescription];
          v21 = 138412802;
          v22 = v11;
          v23 = 2112;
          v24 = v12;
          v25 = 2112;
          v26 = v13;
          _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_INFO, "[RemoteCharting]_%@_%@: query returned successfully with error: %@", &v21, 0x20u);
        }
      }
    }

    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) startDate];
    v16 = [*(a1 + 32) endDate];
    v17 = [*(a1 + 32) statisticsInterval];
    v18 = [v5 data];
    v19 = [v14 codableQueryDataWithType:8 startDate:v15 endDate:v16 statisticsInterval:v17 queryDataObject:v18];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __102__HKHorizontalSingleLineDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(a1, v7, v20);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __102__HKHorizontalSingleLineDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __102__HKHorizontalSingleLineDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_3;
  v2[3] = &unk_1E81B6D60;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsUsingBlock:v2];
}

- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4
{
  v5 = a3;
  if ([v5 hasTimeZoneName])
  {
    v6 = objc_alloc(MEMORY[0x1E695DFE8]);
    v7 = [v5 timeZoneName];
    v8 = [v6 initWithName:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [HKCodableSampleDataSourceQueryData alloc];
  v10 = [v5 queryDataObject];
  v11 = [(HKCodableSampleDataSourceQueryData *)v9 initWithData:v10];

  v12 = [(HKCodableSampleDataSourceQueryData *)v11 samples];
  v13 = [v12 hk_map:&__block_literal_global_320];
  v14 = [v13 copy];

  v15 = MEMORY[0x1E695DF00];
  [v5 startDate];
  v16 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
  v17 = MEMORY[0x1E695DF00];
  [v5 endDate];
  v18 = [v17 dateWithTimeIntervalSinceReferenceDate:?];
  v19 = [(HKHorizontalSingleLineDataSource *)self _chartPointsWithSamples:v14 blockStart:v16 blockEnd:v18 sourceTimeZone:v8];

  return v19;
}

void __72__HKHorizontalSingleLineDataSource_queriesForRequest_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) sampleType];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "Encountered error querying for %{public}@: %{public}@", v5, 0x16u);
}

void __72__HKHorizontalSingleLineDataSource_queriesForRequest_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) sampleType];
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(&dword_1C3942000, a3, OS_LOG_TYPE_DEBUG, "Encountered error querying for %{public}@: %{public}@", v5, 0x16u);
}

void __102__HKHorizontalSingleLineDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = HKStringForChartDataSourceQueryRequestAudience([*(a1 + 32) audience]);
  v7 = [*(*(a1 + 40) + 56) identifier];
  v8 = [a2 localizedDescription];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "[RemoteCharting]_%@_%@: unable to fetch results from query with error: %@", &v9, 0x20u);
}

@end