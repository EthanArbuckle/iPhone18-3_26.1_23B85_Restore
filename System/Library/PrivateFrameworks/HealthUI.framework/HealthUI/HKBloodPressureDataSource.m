@interface HKBloodPressureDataSource
- (id)_chartPointsWithSystolicResults:(id)a3 diastolicResults:(id)a4 blockStart:(id)a5 blockEnd:(id)a6 sourceTimeZone:(id)a7;
- (id)_earliestDateForSystolicResults:(id)a3 diastolicResults:(id)a4;
- (id)_latestDateForSystolicResults:(id)a3 diastolicResults:(id)a4;
- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4;
- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5;
- (id)queriesForRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation HKBloodPressureDataSource

- (id)queriesForRequest:(id)a3 completionHandler:(id)a4
{
  v60[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v35 = a4;
  v37 = [MEMORY[0x1E696C378] predicateForSamplesWithCorrelationedSample];
  v7 = MEMORY[0x1E696C378];
  v8 = [v6 startDate];
  v9 = [v6 endDate];
  v36 = [v7 predicateForSamplesWithStartDate:v8 endDate:v9 options:0];

  v10 = MEMORY[0x1E696AB28];
  v60[0] = v36;
  v60[1] = v37;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  v13 = objc_alloc(MEMORY[0x1E696C4D8]);
  v14 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BC90]];
  v15 = [(HKBloodPressureDataSource *)self queryStatisticsOption];
  v16 = [v6 startDate];
  v17 = [v6 statisticsInterval];
  v18 = [v13 initWithQuantityType:v14 quantitySamplePredicate:v12 options:v15 anchorDate:v16 intervalComponents:v17];

  v19 = objc_alloc(MEMORY[0x1E696C4D8]);
  v20 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BC88]];
  v21 = [(HKBloodPressureDataSource *)self queryStatisticsOption];
  v22 = [v6 startDate];
  v23 = [v6 statisticsInterval];
  v24 = [v19 initWithQuantityType:v20 quantitySamplePredicate:v12 options:v21 anchorDate:v22 intervalComponents:v23];

  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy__9;
  v57[4] = __Block_byref_object_dispose__9;
  v58 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__9;
  v55[4] = __Block_byref_object_dispose__9;
  v56 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = __Block_byref_object_copy__9;
  v53[4] = __Block_byref_object_dispose__9;
  v54 = 0;
  v25 = HKCreateSerialDispatchQueue();
  v26 = MEMORY[0x1E696C670];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __65__HKBloodPressureDataSource_queriesForRequest_completionHandler___block_invoke;
  v48[3] = &unk_1E81B8738;
  v50 = v57;
  v51 = v55;
  v27 = v35;
  v49 = v27;
  v52 = v53;
  v28 = [v26 counterWithTargetCount:2 queue:v25 completion:v48];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __65__HKBloodPressureDataSource_queriesForRequest_completionHandler___block_invoke_2;
  v43[3] = &unk_1E81B8788;
  v29 = v25;
  v44 = v29;
  v46 = v57;
  v47 = v53;
  v30 = v28;
  v45 = v30;
  [v18 setInitialResultsHandler:v43];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __65__HKBloodPressureDataSource_queriesForRequest_completionHandler___block_invoke_4;
  v38[3] = &unk_1E81B8788;
  v31 = v29;
  v39 = v31;
  v41 = v55;
  v42 = v53;
  v32 = v30;
  v40 = v32;
  [v24 setInitialResultsHandler:v38];
  [v18 setDebugIdentifier:@"charting (bp systolic)"];
  [v24 setDebugIdentifier:@"charting (bp diastolic)"];
  v59[0] = v18;
  v59[1] = v24;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(v55, 8);

  _Block_object_dispose(v57, 8);

  return v33;
}

void __65__HKBloodPressureDataSource_queriesForRequest_completionHandler___block_invoke(void *a1)
{
  v4 = objc_alloc_init(HKCodableChartBloodPressureDataSourceQueryData);
  v2 = [*(*(a1[5] + 8) + 40) codableCollection];
  [(HKCodableChartBloodPressureDataSourceQueryData *)v4 setSystolicStatisticsCollection:v2];

  v3 = [*(*(a1[6] + 8) + 40) codableCollection];
  [(HKCodableChartBloodPressureDataSourceQueryData *)v4 setDiastolicStatisticsCollection:v3];

  (*(a1[4] + 16))();
}

void __65__HKBloodPressureDataSource_queriesForRequest_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__HKBloodPressureDataSource_queriesForRequest_completionHandler___block_invoke_3;
  block[3] = &unk_1E81B8760;
  v17 = *(a1 + 56);
  v14 = v6;
  v15 = v7;
  v12 = *(a1 + 40);
  v9 = v12;
  v16 = v12;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

uint64_t __65__HKBloodPressureDataSource_queriesForRequest_completionHandler___block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  v2 = *(*(a1 + 64) + 8);
  v5 = *(v2 + 40);
  v3 = (v2 + 40);
  v4 = v5;
  if (!v5)
  {
    v4 = *(a1 + 40);
  }

  objc_storeStrong(v3, v4);
  v6 = *(a1 + 48);

  return [v6 decrementCounter];
}

void __65__HKBloodPressureDataSource_queriesForRequest_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__HKBloodPressureDataSource_queriesForRequest_completionHandler___block_invoke_5;
  block[3] = &unk_1E81B8760;
  v17 = *(a1 + 56);
  v14 = v6;
  v15 = v7;
  v12 = *(a1 + 40);
  v9 = v12;
  v16 = v12;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

uint64_t __65__HKBloodPressureDataSource_queriesForRequest_completionHandler___block_invoke_5(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  v2 = *(*(a1 + 64) + 8);
  v5 = *(v2 + 40);
  v3 = (v2 + 40);
  v4 = v5;
  if (!v5)
  {
    v4 = *(a1 + 40);
  }

  objc_storeStrong(v3, v4);
  v6 = *(a1 + 48);

  return [v6 decrementCounter];
}

- (id)_chartPointsWithSystolicResults:(id)a3 diastolicResults:(id)a4 blockStart:(id)a5 blockEnd:(id)a6 sourceTimeZone:(id)a7
{
  v66 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__HKBloodPressureDataSource__chartPointsWithSystolicResults_diastolicResults_blockStart_blockEnd_sourceTimeZone___block_invoke;
  aBlock[3] = &unk_1E81B8800;
  v18 = v14;
  v62 = v18;
  v19 = v15;
  v63 = v19;
  v20 = v17;
  v64 = v20;
  v51 = _Block_copy(aBlock);
  v52 = v20;
  if (v18 && v19)
  {
    v21 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BC90]];
    v22 = v51[2](v51, v21, v12);
    [v12 enumerateStatisticsFromDate:v18 toDate:v19 withBlock:v22];

    v23 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BC88]];
    v24 = v51[2](v51, v23, v13);
    [v13 enumerateStatisticsFromDate:v18 toDate:v19 withBlock:v24];

    v20 = v52;
  }

  v48 = v18;
  v49 = v13;
  v50 = v12;
  v56 = [(HKHealthQueryChartCacheDataSource *)self displayType];
  v25 = [MEMORY[0x1E696C510] unitFromString:@"mmHg"];
  v55 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = [v20 allValues];
  v26 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v26)
  {
    v27 = v26;
    v54 = *v58;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v58 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v57 + 1) + 8 * i);
        v30 = objc_alloc_init(HKBloodPressureChartPoint);
        v31 = [v29 systolic];

        if (v31)
        {
          v32 = [HKHealthChartPoint alloc];
          v33 = [v29 systolic];
          v34 = [(HKHealthChartPoint *)v32 initWithStatistics:v33 options:[(HKBloodPressureDataSource *)self queryStatisticsOption] unit:v25 displayType:v56 sourceTimeZone:v16];

          v35 = [(HKHealthChartPoint *)v34 xValueAsGenericType];
          [(HKBloodPressureChartPoint *)v30 setSystolicChartPoint:v34];
        }

        else
        {
          v35 = 0;
        }

        v36 = [v29 diastolic];

        if (v36)
        {
          v37 = [HKHealthChartPoint alloc];
          v38 = [v29 diastolic];
          v39 = [(HKHealthChartPoint *)v37 initWithStatistics:v38 options:[(HKBloodPressureDataSource *)self queryStatisticsOption] unit:v25 displayType:v56 sourceTimeZone:v16];

          if (!v35)
          {
            v35 = [(HKHealthChartPoint *)v39 xValueAsGenericType];
          }

          [(HKBloodPressureChartPoint *)v30 setDiastolicChartPoint:v39];
        }

        v40 = [v35 hk_dateFromSourceTimeZone:v16];
        [(HKBloodPressureChartPoint *)v30 setDate:v40];

        userInfoCreationBlock = self->_userInfoCreationBlock;
        if (userInfoCreationBlock)
        {
          v42 = [v29 systolic];
          v43 = [v29 diastolic];
          v44 = userInfoCreationBlock[2](userInfoCreationBlock, v42, v43);
          [(HKBloodPressureChartPoint *)v30 setUserInfo:v44];
        }

        [v55 addObject:v30];
      }

      v27 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v27);
  }

  [v55 sortUsingComparator:&__block_literal_global_42];
  v45 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v45 setChartPoints:v55];

  return v45;
}

id __113__HKBloodPressureDataSource__chartPointsWithSystolicResults_diastolicResults_blockStart_blockEnd_sourceTimeZone___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__HKBloodPressureDataSource__chartPointsWithSystolicResults_diastolicResults_blockStart_blockEnd_sourceTimeZone___block_invoke_2;
  aBlock[3] = &unk_1E81B87D8;
  v12 = a1[4];
  v13 = a1[5];
  v14 = v6;
  v15 = a1[6];
  v16 = v5;
  v7 = v5;
  v8 = v6;
  v9 = _Block_copy(aBlock);

  return v9;
}

void __113__HKBloodPressureDataSource__chartPointsWithSystolicResults_diastolicResults_blockStart_blockEnd_sourceTimeZone___block_invoke_2(id *a1)
{
  [a1[4] timeIntervalSinceReferenceDate];
  v3 = v2;
  [a1[5] timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = [a1[6] statistics];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __113__HKBloodPressureDataSource__chartPointsWithSystolicResults_diastolicResults_blockStart_blockEnd_sourceTimeZone___block_invoke_3;
  v7[3] = &unk_1E81B87B0;
  v10 = v3;
  v11 = v5;
  v8 = a1[7];
  v9 = a1[8];
  [v6 enumerateObjectsUsingBlock:v7];
}

void __113__HKBloodPressureDataSource__chartPointsWithSystolicResults_diastolicResults_blockStart_blockEnd_sourceTimeZone___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 startDate];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = *(a1 + 48);

  v7 = [v15 endDate];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = *(a1 + 56);

  v11 = v15;
  if (v5 >= v6 && v9 <= v10)
  {
    v13 = [v15 startDate];
    v14 = [*(a1 + 32) objectForKeyedSubscript:v13];
    if (!v14)
    {
      v14 = objc_alloc_init(_HKBloodPressureWrapper);
      [*(a1 + 32) setObject:v14 forKeyedSubscript:v13];
    }

    if ([*(a1 + 40) code] == 16)
    {
      [(_HKBloodPressureWrapper *)v14 setSystolic:v15];
    }

    else
    {
      [(_HKBloodPressureWrapper *)v14 setDiastolic:v15];
    }

    v11 = v15;
  }
}

uint64_t __113__HKBloodPressureDataSource__chartPointsWithSystolicResults_diastolicResults_blockStart_blockEnd_sourceTimeZone___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

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
  v25[2] = __95__HKBloodPressureDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke;
  v25[3] = &unk_1E81B8848;
  v27 = self;
  v28 = v10;
  v26 = v8;
  v11 = v10;
  v12 = v8;
  v13 = [(HKBloodPressureDataSource *)self queriesForRequest:v12 completionHandler:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __95__HKBloodPressureDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_340;
  v23[3] = &unk_1E81B6D60;
  v14 = v9;
  v24 = v14;
  [v13 enumerateObjectsUsingBlock:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __95__HKBloodPressureDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2;
  v20[3] = &unk_1E81B5AD0;
  v21 = v13;
  v22 = v14;
  v15 = v14;
  v16 = v13;
  v17 = _Block_copy(v20);
  v18 = _Block_copy(v17);

  return v18;
}

void __95__HKBloodPressureDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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
          v12 = *MEMORY[0x1E696B730];
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
    v19 = [v14 codableQueryDataWithType:3 startDate:v15 endDate:v16 statisticsInterval:v17 queryDataObject:v18];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __95__HKBloodPressureDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(a1, v7, v20);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __95__HKBloodPressureDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __95__HKBloodPressureDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_3;
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

  v9 = [HKCodableChartBloodPressureDataSourceQueryData alloc];
  v10 = [v5 queryDataObject];
  v11 = [(HKCodableChartBloodPressureDataSourceQueryData *)v9 initWithData:v10];

  v12 = MEMORY[0x1E696C4C8];
  v13 = [(HKCodableChartBloodPressureDataSourceQueryData *)v11 systolicStatisticsCollection];
  v14 = [v12 statisticsCollectionWithCodableCollection:v13];

  v15 = MEMORY[0x1E696C4C8];
  v16 = [(HKCodableChartBloodPressureDataSourceQueryData *)v11 diastolicStatisticsCollection];
  v17 = [v15 statisticsCollectionWithCodableCollection:v16];

  v18 = [(HKBloodPressureDataSource *)self _earliestDateForSystolicResults:v14 diastolicResults:v17];
  v19 = [(HKBloodPressureDataSource *)self _latestDateForSystolicResults:v14 diastolicResults:v17];
  v20 = [(HKBloodPressureDataSource *)self _chartPointsWithSystolicResults:v14 diastolicResults:v17 blockStart:v18 blockEnd:v19 sourceTimeZone:v8];

  return v20;
}

- (id)_earliestDateForSystolicResults:(id)a3 diastolicResults:(id)a4
{
  v5 = a4;
  v6 = [a3 statistics];
  v7 = [v6 firstObject];
  v8 = [v7 startDate];

  v9 = [v5 statistics];

  v10 = [v9 firstObject];
  v11 = [v10 startDate];

  if (v8)
  {
    v12 = v8;
    if (v11)
    {
      if ([v8 hk_isBeforeDate:v11])
      {
        v12 = v8;
      }

      else
      {
        v12 = v11;
      }
    }

    v13 = v12;

    v11 = v13;
  }

  return v11;
}

- (id)_latestDateForSystolicResults:(id)a3 diastolicResults:(id)a4
{
  v5 = a4;
  v6 = [a3 statistics];
  v7 = [v6 lastObject];
  v8 = [v7 endDate];

  v9 = [v5 statistics];

  v10 = [v9 lastObject];
  v11 = [v10 endDate];

  if (v8)
  {
    v12 = v8;
    if (v11)
    {
      if ([v8 hk_isBeforeDate:v11])
      {
        v12 = v11;
      }

      else
      {
        v12 = v8;
      }
    }

    v13 = v12;

    v11 = v13;
  }

  return v11;
}

void __95__HKBloodPressureDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = HKStringForChartDataSourceQueryRequestAudience([*(a1 + 32) audience]);
  v6 = *MEMORY[0x1E696B730];
  v7 = [a2 localizedDescription];
  v8 = 138412802;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "[RemoteCharting]_%@_%@: unable to fetch results from query with error: %@", &v8, 0x20u);
}

@end