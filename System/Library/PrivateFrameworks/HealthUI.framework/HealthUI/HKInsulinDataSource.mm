@interface HKInsulinDataSource
- (id)_chartPointsWithBasalInsulinValues:(id)values withTotalInsulinValues:(id)insulinValues filterInterval:(id)interval sourceTimeZone:(id)zone;
- (id)_dailyAverageInsulinValuesFromStatistics:(id)statistics queryStartDate:(id)date statisticsInterval:(id)interval;
- (id)_insulinDataSourceQueryDataFromBasalStatisticsCollection:(id)collection totalStatisticsCollection:(id)statisticsCollection queryStartDate:(id)date statisticsInterval:(id)interval;
- (id)_insulinValuesFromStatistics:(id)statistics;
- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source;
- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler;
- (id)queriesForRequest:(id)request completionHandler:(id)handler;
@end

@implementation HKInsulinDataSource

- (id)queriesForRequest:(id)request completionHandler:(id)handler
{
  v60[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v7 = MEMORY[0x1E696C660];
  statisticsInterval = [requestCopy statisticsInterval];
  displayType = [(HKHealthQueryChartCacheDataSource *)self displayType];
  sampleType = [displayType sampleType];
  LOBYTE(v7) = [v7 shouldUseDailyAverageWithDateComponents:statisticsInterval sampleType:sampleType];

  if (v7)
  {
    [MEMORY[0x1E695DF10] hk_oneDay];
  }

  else
  {
    [requestCopy statisticsInterval];
  }
  v38 = ;
  v11 = MEMORY[0x1E696C378];
  startDate = [requestCopy startDate];
  endDate = [requestCopy endDate];
  v14 = [v11 predicateForSamplesWithStartDate:startDate endDate:endDate options:0];

  v15 = [MEMORY[0x1E696C378] predicateForObjectsWithMetadataKey:*MEMORY[0x1E696BB08] allowedValues:&unk_1F4381918];
  v60[0] = v15;
  v60[1] = v14;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];

  v36 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v37];
  v16 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BD48]];
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy__17;
  v57[4] = __Block_byref_object_dispose__17;
  v58 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__17;
  v55[4] = __Block_byref_object_dispose__17;
  v56 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = __Block_byref_object_copy__17;
  v53[4] = __Block_byref_object_dispose__17;
  v54 = 0;
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = objc_alloc(MEMORY[0x1E696C4D8]);
  startDate2 = [requestCopy startDate];
  v20 = [v18 initWithQuantityType:v16 quantitySamplePredicate:v36 options:16 anchorDate:startDate2 intervalComponents:v38];

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __59__HKInsulinDataSource_queriesForRequest_completionHandler___block_invoke;
  v49[3] = &unk_1E81B9E10;
  v51 = v57;
  v52 = v53;
  v21 = v17;
  v50 = v21;
  [v20 setInitialResultsHandler:v49];
  displayType2 = [(HKHealthQueryChartCacheDataSource *)self displayType];
  behavior = [displayType2 behavior];
  [v20 setMergeStrategy:{objc_msgSend(behavior, "statisticsMergeStrategy")}];

  [v20 setDebugIdentifier:@"charting (insulin basal)"];
  dispatch_group_enter(v21);
  v24 = objc_alloc(MEMORY[0x1E696C4D8]);
  startDate3 = [requestCopy startDate];
  v26 = [v24 initWithQuantityType:v16 quantitySamplePredicate:v14 options:16 anchorDate:startDate3 intervalComponents:v38];

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __59__HKInsulinDataSource_queriesForRequest_completionHandler___block_invoke_2;
  v45[3] = &unk_1E81B9E10;
  v47 = v55;
  v48 = v53;
  v27 = v21;
  v46 = v27;
  [v26 setInitialResultsHandler:v45];
  displayType3 = [(HKHealthQueryChartCacheDataSource *)self displayType];
  behavior2 = [displayType3 behavior];
  [v26 setMergeStrategy:{objc_msgSend(behavior2, "statisticsMergeStrategy")}];

  [v26 setDebugIdentifier:@"charting (insulin total)"];
  v30 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__HKInsulinDataSource_queriesForRequest_completionHandler___block_invoke_3;
  block[3] = &unk_1E81B9E38;
  v43 = v55;
  v42 = v57;
  block[4] = self;
  v31 = requestCopy;
  v40 = v31;
  v32 = handlerCopy;
  v41 = v32;
  v44 = v53;
  dispatch_group_notify(v27, v30, block);
  v59[0] = v20;
  v59[1] = v26;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(v55, 8);

  _Block_object_dispose(v57, 8);

  return v33;
}

void __59__HKInsulinDataSource_queriesForRequest_completionHandler___block_invoke(uint64_t a1, int a2, id obj, void *a4)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v7 = obj;
  v8 = a4;
  v13 = v8;
  v9 = *(*(a1 + 48) + 8);
  v12 = *(v9 + 40);
  v10 = (v9 + 40);
  v11 = v12;
  if (v12)
  {
    v8 = v11;
  }

  objc_storeStrong(v10, v8);
  dispatch_group_leave(*(a1 + 32));
}

void __59__HKInsulinDataSource_queriesForRequest_completionHandler___block_invoke_2(uint64_t a1, int a2, id obj, void *a4)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v7 = obj;
  v8 = a4;
  v13 = v8;
  v9 = *(*(a1 + 48) + 8);
  v12 = *(v9 + 40);
  v10 = (v9 + 40);
  v11 = v12;
  if (v12)
  {
    v8 = v11;
  }

  objc_storeStrong(v10, v8);
  dispatch_group_leave(*(a1 + 32));
}

void __59__HKInsulinDataSource_queriesForRequest_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 40);
  if (v2 && (v3 = *(*(*(a1 + 64) + 8) + 40)) != 0)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) startDate];
    v6 = [*(a1 + 40) statisticsInterval];
    v8 = [v4 _insulinDataSourceQueryDataFromBasalStatisticsCollection:v2 totalStatisticsCollection:v3 queryStartDate:v5 statisticsInterval:v6];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

- (id)_insulinDataSourceQueryDataFromBasalStatisticsCollection:(id)collection totalStatisticsCollection:(id)statisticsCollection queryStartDate:(id)date statisticsInterval:(id)interval
{
  dateCopy = date;
  intervalCopy = interval;
  v12 = MEMORY[0x1E696C660];
  statisticsCollectionCopy = statisticsCollection;
  collectionCopy = collection;
  displayType = [(HKHealthQueryChartCacheDataSource *)self displayType];
  sampleType = [displayType sampleType];
  LODWORD(v12) = [v12 shouldUseDailyAverageWithDateComponents:intervalCopy sampleType:sampleType];

  v17 = objc_alloc_init(HKCodableChartInsulinDataSourceQueryData);
  statistics = [collectionCopy statistics];

  if (v12)
  {
    v19 = [(HKInsulinDataSource *)self _dailyAverageInsulinValuesFromStatistics:statistics queryStartDate:dateCopy statisticsInterval:intervalCopy];
    [(HKCodableChartInsulinDataSourceQueryData *)v17 setBasalInsulinValues:v19];

    statistics2 = [statisticsCollectionCopy statistics];

    [(HKInsulinDataSource *)self _dailyAverageInsulinValuesFromStatistics:statistics2 queryStartDate:dateCopy statisticsInterval:intervalCopy];
  }

  else
  {
    v21 = [(HKInsulinDataSource *)self _insulinValuesFromStatistics:statistics];
    [(HKCodableChartInsulinDataSourceQueryData *)v17 setBasalInsulinValues:v21];

    statistics2 = [statisticsCollectionCopy statistics];

    [(HKInsulinDataSource *)self _insulinValuesFromStatistics:statistics2];
  }
  v22 = ;
  [(HKCodableChartInsulinDataSourceQueryData *)v17 setTotalInsulinValues:v22];

  return v17;
}

- (id)_insulinValuesFromStatistics:(id)statistics
{
  v22 = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = statisticsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_alloc_init(HKCodableChartInsulinValue);
        startDate = [v10 startDate];
        [startDate timeIntervalSinceReferenceDate];
        [(HKCodableChartInsulinValue *)v11 setStartDate:?];

        endDate = [v10 endDate];
        [endDate timeIntervalSinceReferenceDate];
        [(HKCodableChartInsulinValue *)v11 setEndDate:?];

        sumQuantity = [v10 sumQuantity];
        codableRepresentation = [sumQuantity codableRepresentation];
        [(HKCodableChartInsulinValue *)v11 setInsulinQuantity:codableRepresentation];

        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_dailyAverageInsulinValuesFromStatistics:(id)statistics queryStartDate:(id)date statisticsInterval:(id)interval
{
  v8 = MEMORY[0x1E696C510];
  intervalCopy = interval;
  dateCopy = date;
  statisticsCopy = statistics;
  internationalUnit = [v8 internationalUnit];
  calendarOverride = [(HKHealthQueryChartCacheDataSource *)self calendarOverride];
  v14 = calendarOverride;
  if (calendarOverride)
  {
    currentCalendar = calendarOverride;
  }

  else
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v16 = currentCalendar;

  v17 = MEMORY[0x1E696C660];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __98__HKInsulinDataSource__dailyAverageInsulinValuesFromStatistics_queryStartDate_statisticsInterval___block_invoke;
  v22[3] = &unk_1E81B9C18;
  v23 = internationalUnit;
  v18 = internationalUnit;
  v19 = [v17 arrayByCoalescingObjects:statisticsCopy startDate:dateCopy intervalComponents:intervalCopy calendar:v16 combiningBlock:v22];

  v20 = [MEMORY[0x1E695DF70] arrayWithArray:v19];

  return v20;
}

HKCodableChartInsulinValue *__98__HKInsulinDataSource__dailyAverageInsulinValuesFromStatistics_queryStartDate_statisticsInterval___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = *v24;
  v13 = 0.0;
  v14 = 0.0;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v24 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v16 = [*(*(&v23 + 1) + 8 * i) sumQuantity];
      v17 = v16;
      if (v16)
      {
        [v16 doubleValueForUnit:*(a1 + 32)];
        v14 = v14 + v18;
        v13 = v13 + 1.0;
      }
    }

    v11 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v11);
  if (v13 > 0.0)
  {
    v19 = [MEMORY[0x1E696C348] quantityWithUnit:*(a1 + 32) doubleValue:v14 / v13];
    v20 = objc_alloc_init(HKCodableChartInsulinValue);
    [v8 timeIntervalSinceReferenceDate];
    [(HKCodableChartInsulinValue *)v20 setStartDate:?];
    [v9 timeIntervalSinceReferenceDate];
    [(HKCodableChartInsulinValue *)v20 setEndDate:?];
    v21 = [v19 codableRepresentation];
    [(HKCodableChartInsulinValue *)v20 setInsulinQuantity:v21];
  }

  else
  {
LABEL_12:
    v20 = 0;
  }

  return v20;
}

- (id)_chartPointsWithBasalInsulinValues:(id)values withTotalInsulinValues:(id)insulinValues filterInterval:(id)interval sourceTimeZone:(id)zone
{
  valuesCopy = values;
  insulinValuesCopy = insulinValues;
  intervalCopy = interval;
  zoneCopy = zone;
  array = [MEMORY[0x1E695DF70] array];
  internationalUnit = [MEMORY[0x1E696C510] internationalUnit];
  v12 = [valuesCopy count];
  v13 = [insulinValuesCopy count];
  v14 = v12 != 0;
  v15 = v13 != 0;
  if (v12 | v13)
  {
    v16 = 0;
    v17 = 0;
    v56 = insulinValuesCopy;
    v57 = valuesCopy;
    v55 = intervalCopy;
    do
    {
      if (v14)
      {
        v18 = MEMORY[0x1E695DF00];
        v19 = [valuesCopy objectAtIndexedSubscript:v16];
        [v19 startDate];
        v20 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v20 = 0;
      }

      v61 = v20;
      if (v15)
      {
        v21 = MEMORY[0x1E695DF00];
        v22 = [insulinValuesCopy objectAtIndexedSubscript:v17];
        [v22 startDate];
        v23 = [v21 dateWithTimeIntervalSinceReferenceDate:?];

        v60 = v23;
        if (!v14 || [v20 compare:v23] == 1)
        {
          v24 = [insulinValuesCopy objectAtIndexedSubscript:v17];
          v25 = MEMORY[0x1E696C348];
          insulinQuantity = [v24 insulinQuantity];
          v27 = [v25 createWithCodableQuantity:insulinQuantity];

          v28 = MEMORY[0x1E696AD98];
          [v27 doubleValueForUnit:internationalUnit];
          v29 = [v28 numberWithDouble:?];
          v30 = v17;
          v31 = 0;
          v62 = v30 + 1;
          goto LABEL_12;
        }

        v62 = v17;
      }

      else
      {
        v62 = v17;
        v60 = 0;
      }

      v24 = [valuesCopy objectAtIndexedSubscript:v16];
      v32 = MEMORY[0x1E696C348];
      insulinQuantity2 = [v24 insulinQuantity];
      v27 = [v32 createWithCodableQuantity:insulinQuantity2];

      v34 = MEMORY[0x1E696AD98];
      [v27 doubleValueForUnit:internationalUnit];
      v31 = [v34 numberWithDouble:?];
      v29 = 0;
      ++v16;
LABEL_12:

      v35 = MEMORY[0x1E695DF00];
      [v24 startDate];
      v36 = [v35 dateWithTimeIntervalSinceReferenceDate:?];
      v37 = MEMORY[0x1E695DF00];
      [v24 endDate];
      v38 = [v37 dateWithTimeIntervalSinceReferenceDate:?];
      if ([intervalCopy containsDate:v36] && objc_msgSend(intervalCopy, "containsDate:", v38))
      {
        lastObject = [array lastObject];
        v40 = lastObject;
        if (!lastObject || ([lastObject startDate], v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "compare:", v36), v41, v42 == -1))
        {
          v43 = [HKInsulinChartPoint alloc];
          v44 = [v36 hk_dateFromSourceTimeZone:zoneCopy];
          v45 = [v38 hk_dateFromSourceTimeZone:zoneCopy];
          v46 = [(HKInsulinChartPoint *)v43 initWithStartDate:v44 endDate:v45];

          [array addObject:v46];
          v40 = v46;
        }

        if (v31)
        {
          [v40 setBasalSum:v31];
        }

        else
        {
          [v40 setTotalSum:v29];
        }

        insulinValuesCopy = v56;
        valuesCopy = v57;
        intervalCopy = v55;
      }

      v47 = [valuesCopy count];
      v48 = [insulinValuesCopy count];
      v17 = v62;
      v15 = v62 < v48;
      v14 = v16 < v47;
    }

    while (v16 < v47 || v62 < v48);
  }

  userInfoCreationBlock = [(HKInsulinDataSource *)self userInfoCreationBlock];
  v50 = userInfoCreationBlock;
  if (userInfoCreationBlock)
  {
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __111__HKInsulinDataSource__chartPointsWithBasalInsulinValues_withTotalInsulinValues_filterInterval_sourceTimeZone___block_invoke;
    v63[3] = &unk_1E81B9E60;
    v64 = userInfoCreationBlock;
    [array enumerateObjectsUsingBlock:v63];
  }

  v51 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v51 setChartPoints:array];

  return v51;
}

void __111__HKInsulinDataSource__chartPointsWithBasalInsulinValues_withTotalInsulinValues_filterInterval_sourceTimeZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v3 basalSum];
  v4 = [v3 totalSum];
  v5 = (*(v2 + 16))(v2, v6, v4);
  [v3 setUserInfo:v5];
}

- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler
{
  requestCopy = request;
  storeCopy = store;
  handlerCopy = handler;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __89__HKInsulinDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke;
  v25[3] = &unk_1E81B9E88;
  selfCopy = self;
  v28 = handlerCopy;
  v26 = requestCopy;
  v11 = handlerCopy;
  v12 = requestCopy;
  v13 = [(HKInsulinDataSource *)self queriesForRequest:v12 completionHandler:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __89__HKInsulinDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_415;
  v23[3] = &unk_1E81B6D60;
  v14 = storeCopy;
  v24 = v14;
  [v13 enumerateObjectsUsingBlock:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __89__HKInsulinDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2;
  v20[3] = &unk_1E81B5AD0;
  v21 = v13;
  v22 = v14;
  v15 = v14;
  v16 = v13;
  v17 = _Block_copy(v20);
  v18 = _Block_copy(v17);

  return v18;
}

void __89__HKInsulinDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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
          v12 = *MEMORY[0x1E696BD48];
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
    v19 = [v14 codableQueryDataWithType:4 startDate:v15 endDate:v16 statisticsInterval:v17 queryDataObject:v18];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __89__HKInsulinDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(a1, v7, v20);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __89__HKInsulinDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __89__HKInsulinDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_3;
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

  v9 = [HKCodableChartInsulinDataSourceQueryData alloc];
  queryDataObject = [dataCopy queryDataObject];
  v11 = [(HKCodableChartInsulinDataSourceQueryData *)v9 initWithData:queryDataObject];

  v12 = MEMORY[0x1E695DF00];
  [dataCopy startDate];
  v13 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
  v14 = MEMORY[0x1E695DF00];
  [dataCopy endDate];
  v15 = [v14 dateWithTimeIntervalSinceReferenceDate:?];
  v16 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v13 endDate:v15];
  basalInsulinValues = [(HKCodableChartInsulinDataSourceQueryData *)v11 basalInsulinValues];
  totalInsulinValues = [(HKCodableChartInsulinDataSourceQueryData *)v11 totalInsulinValues];
  v19 = [(HKInsulinDataSource *)self _chartPointsWithBasalInsulinValues:basalInsulinValues withTotalInsulinValues:totalInsulinValues filterInterval:v16 sourceTimeZone:v8];

  return v19;
}

void __89__HKInsulinDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = HKStringForChartDataSourceQueryRequestAudience([*(a1 + 32) audience]);
  v6 = *MEMORY[0x1E696BD48];
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