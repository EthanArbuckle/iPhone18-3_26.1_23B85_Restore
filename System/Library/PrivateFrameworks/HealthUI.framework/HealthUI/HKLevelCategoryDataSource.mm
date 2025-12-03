@interface HKLevelCategoryDataSource
- (id)_chartPointsWithSamples:(id)samples sourceTimeZone:(id)zone;
- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source;
- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler;
- (id)queriesForRequest:(id)request completionHandler:(id)handler;
- (id)queryDescription;
@end

@implementation HKLevelCategoryDataSource

- (id)queryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  displayType = [(HKHealthQueryChartCacheDataSource *)self displayType];
  localization = [displayType localization];
  displayName = [localization displayName];
  v6 = [v2 stringWithFormat:@"HKLevelCategory(%@)", displayName];

  return v6;
}

- (id)queriesForRequest:(id)request completionHandler:(id)handler
{
  v23[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = MEMORY[0x1E696C378];
  requestCopy = request;
  startDate = [requestCopy startDate];
  endDate = [requestCopy endDate];

  v11 = [v7 predicateForSamplesWithStartDate:startDate endDate:endDate options:0];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E696BE38] ascending:1];
  v13 = objc_alloc(MEMORY[0x1E696C3C8]);
  sampleType = self->_sampleType;
  v23[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __65__HKLevelCategoryDataSource_queriesForRequest_completionHandler___block_invoke;
  v20[3] = &unk_1E81B6D10;
  v20[4] = self;
  v21 = handlerCopy;
  v16 = handlerCopy;
  v17 = [v13 initWithSampleType:sampleType predicate:v11 limit:0 sortDescriptors:v15 resultsHandler:v20];

  [v17 setDebugIdentifier:@"charting (level category)"];
  v22 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];

  return v18;
}

void __65__HKLevelCategoryDataSource_queriesForRequest_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_alloc_init(HKCodableSampleDataSourceQueryData);
    v9 = [v6 hk_map:&__block_literal_global_79];
    v10 = [v9 mutableCopy];
    [(HKCodableSampleDataSourceQueryData *)v8 setSamples:v10];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x1E696B988];
    if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
    {
      __65__HKLevelCategoryDataSource_queriesForRequest_completionHandler___block_invoke_cold_1(a1, v11, v7);
    }
  }
}

id __65__HKLevelCategoryDataSource_queriesForRequest_completionHandler___block_invoke_300(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 metadata];
  v4 = [v3 hk_filter:&__block_literal_global_304_0];
  [v2 _setMetadata:v4];

  v5 = [v2 codableSampleChartData];

  return v5;
}

- (id)_chartPointsWithSamples:(id)samples sourceTimeZone:(id)zone
{
  v45 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  zoneCopy = zone;
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = samplesCopy;
  v8 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v38 = *v41;
    v37 = *MEMORY[0x1E696BB28];
    v10 = 0x1E696A000uLL;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = objc_alloc_init(HKLevelCategoryChartPoint);
        hk_integerValue = [v12 hk_integerValue];
        startDate = [v12 startDate];
        v16 = [startDate hk_dateFromSourceTimeZone:zoneCopy];
        [(HKLevelCategoryChartPoint *)v13 setStartDate:v16];

        endDate = [v12 endDate];
        v18 = [endDate hk_dateFromSourceTimeZone:zoneCopy];
        [(HKLevelCategoryChartPoint *)v13 setEndDate:v18];

        valueOrder = [(HKLevelCategoryDataSource *)self valueOrder];

        v20 = *(v10 + 3480);
        if (valueOrder)
        {
          valueOrder2 = [(HKLevelCategoryDataSource *)self valueOrder];
          v22 = [*(v10 + 3480) numberWithInteger:hk_integerValue];
          v23 = [v20 numberWithUnsignedInteger:{objc_msgSend(valueOrder2, "indexOfObject:", v22)}];
          [(HKLevelCategoryChartPoint *)v13 setYValue:v23];
        }

        else
        {
          valueOrder2 = [*(v10 + 3480) numberWithInteger:hk_integerValue];
          [(HKLevelCategoryChartPoint *)v13 setYValue:valueOrder2];
        }

        [(HKLevelCategoryChartPoint *)v13 setPointStyle:0];
        pointStyleBlock = [(HKLevelCategoryDataSource *)self pointStyleBlock];

        if (pointStyleBlock)
        {
          pointStyleBlock2 = [(HKLevelCategoryDataSource *)self pointStyleBlock];
          [(HKLevelCategoryChartPoint *)v13 setPointStyle:(pointStyleBlock2)[2](pointStyleBlock2, v12)];
        }

        metadata = [v12 metadata];
        v27 = [metadata valueForKey:v37];
        bOOLValue = [v27 BOOLValue];

        v29 = bOOLValue;
        userInfoCreationBlock = [(HKLevelCategoryDataSource *)self userInfoCreationBlock];
        startDate2 = [v12 startDate];
        endDate2 = [v12 endDate];
        v33 = (userInfoCreationBlock)[2](userInfoCreationBlock, hk_integerValue, startDate2, endDate2, v29);
        [(HKLevelCategoryChartPoint *)v13 setUserInfo:v33];

        [v39 addObject:v13];
        v10 = 0x1E696A000;
      }

      v9 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v9);
  }

  v34 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v34 setChartPoints:v39];

  return v34;
}

- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler
{
  requestCopy = request;
  storeCopy = store;
  handlerCopy = handler;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __95__HKLevelCategoryDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke;
  v25[3] = &unk_1E81B6D38;
  v26 = requestCopy;
  selfCopy = self;
  v28 = handlerCopy;
  v11 = handlerCopy;
  v12 = requestCopy;
  v13 = [(HKLevelCategoryDataSource *)self queriesForRequest:v12 completionHandler:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __95__HKLevelCategoryDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_314;
  v23[3] = &unk_1E81B6D60;
  v14 = storeCopy;
  v24 = v14;
  [v13 enumerateObjectsUsingBlock:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __95__HKLevelCategoryDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2;
  v20[3] = &unk_1E81B5AD0;
  v21 = v13;
  v22 = v14;
  v15 = v14;
  v16 = v13;
  v17 = _Block_copy(v20);
  v18 = _Block_copy(v17);

  return v18;
}

void __95__HKLevelCategoryDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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
      __95__HKLevelCategoryDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(a1, v7, v20);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __95__HKLevelCategoryDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __95__HKLevelCategoryDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_3;
  v2[3] = &unk_1E81B6D60;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsUsingBlock:v2];
}

- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source
{
  dataCopy = data;
  if ([dataCopy hasTimeZoneName])
  {
    v6 = objc_alloc(MEMORY[0x1E695DFE8]);
    timeZoneName = [dataCopy timeZoneName];
    v8 = [v6 initWithName:timeZoneName];
  }

  else
  {
    v8 = 0;
  }

  v9 = [HKCodableSampleDataSourceQueryData alloc];
  queryDataObject = [dataCopy queryDataObject];
  v11 = [(HKCodableSampleDataSourceQueryData *)v9 initWithData:queryDataObject];

  samples = [(HKCodableSampleDataSourceQueryData *)v11 samples];
  v13 = [samples hk_map:&__block_literal_global_320_0];
  v14 = [v13 copy];

  v15 = [(HKLevelCategoryDataSource *)self _chartPointsWithSamples:v14 sourceTimeZone:v8];

  return v15;
}

void __65__HKLevelCategoryDataSource_queriesForRequest_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 sampleType];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&dword_1C3942000, v5, OS_LOG_TYPE_ERROR, "Query failed for %@: %@", &v7, 0x16u);
}

void __95__HKLevelCategoryDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
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