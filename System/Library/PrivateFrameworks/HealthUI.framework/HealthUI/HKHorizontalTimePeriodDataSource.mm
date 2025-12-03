@interface HKHorizontalTimePeriodDataSource
- (id)_chartPointsWithDateIntervalsByValue:(id)value sourceTimeZone:(id)zone;
- (id)_codableQueryDataWithSamples:(id)samples;
- (id)_dateIntervalsByValueWithCodableQueryData:(id)data;
- (id)_organizeSamplesByValueAndDateInterval:(id)interval;
- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source;
- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler;
- (id)queriesForRequest:(id)request completionHandler:(id)handler;
- (id)queryDescription;
@end

@implementation HKHorizontalTimePeriodDataSource

- (id)queryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  displayType = [(HKHealthQueryChartCacheDataSource *)self displayType];
  localization = [displayType localization];
  displayName = [localization displayName];
  v6 = [v2 stringWithFormat:@"HKHorizontalTimePeriod(%@)", displayName];

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

  v11 = [v7 predicateForSamplesWithStartDate:startDate endDate:endDate options:1];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E696BE38] ascending:1];
  v13 = objc_alloc(MEMORY[0x1E696C3C8]);
  sampleType = self->_sampleType;
  v23[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__HKHorizontalTimePeriodDataSource_queriesForRequest_completionHandler___block_invoke;
  v20[3] = &unk_1E81B6D10;
  v20[4] = self;
  v21 = handlerCopy;
  v16 = handlerCopy;
  v17 = [v13 initWithSampleType:sampleType predicate:v11 limit:0 sortDescriptors:v15 resultsHandler:v20];

  [v17 setDebugIdentifier:@"charting (horizontal time period)"];
  v22 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];

  return v18;
}

void __72__HKHorizontalTimePeriodDataSource_queriesForRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
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

  v15 = [*(a1 + 32) _codableQueryDataWithSamples:v8];
  (*(*(a1 + 40) + 16))();
}

- (id)_chartPointsWithDateIntervalsByValue:(id)value sourceTimeZone:(id)zone
{
  v53 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  zoneCopy = zone;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  userInfoCreationBlock = [(HKHorizontalTimePeriodDataSource *)self userInfoCreationBlock];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__HKHorizontalTimePeriodDataSource__chartPointsWithDateIntervalsByValue_sourceTimeZone___block_invoke;
  aBlock[3] = &unk_1E81BAEB8;
  v10 = zoneCopy;
  v49 = v10;
  v11 = userInfoCreationBlock;
  v50 = v11;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  valueOrder = self->_valueOrder;
  if (valueOrder)
  {
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v44 = 0u;
    v15 = valueOrder;
    v33 = [(NSArray *)v15 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v33)
    {
      obj = v15;
      v29 = v11;
      v16 = 0;
      v31 = *v45;
      v32 = valueCopy;
      do
      {
        v17 = 0;
        do
        {
          if (*v45 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v34 = v17;
          v18 = *(*(&v44 + 1) + 8 * v17);
          v19 = [valueCopy objectForKeyedSubscript:v18];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v35 = v19;
          v20 = [v19 countByEnumeratingWithState:&v40 objects:v51 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v41;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v41 != v22)
                {
                  objc_enumerationMutation(v35);
                }

                v24 = *(*(&v40 + 1) + 8 * i);
                v25 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
                v26 = (v13)[2](v13, v24, v25, [v18 integerValue]);

                [v8 addObject:v26];
              }

              v21 = [v35 countByEnumeratingWithState:&v40 objects:v51 count:16];
            }

            while (v21);
          }

          ++v16;

          v17 = v34 + 1;
          valueCopy = v32;
        }

        while (v34 + 1 != v33);
        v33 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v33);
      v11 = v29;
      v15 = obj;
    }
  }

  else
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __88__HKHorizontalTimePeriodDataSource__chartPointsWithDateIntervalsByValue_sourceTimeZone___block_invoke_308;
    v36[3] = &unk_1E81BAEE0;
    v39 = v12;
    v37 = &unk_1F4384600;
    v38 = v8;
    [valueCopy enumerateKeysAndObjectsUsingBlock:v36];

    v15 = v39;
  }

  v27 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v27 setChartPoints:v8];

  return v27;
}

HKHorizontalTimePeriodChartPoint *__88__HKHorizontalTimePeriodDataSource__chartPointsWithDateIntervalsByValue_sourceTimeZone___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  v9 = objc_alloc_init(HKHorizontalTimePeriodChartPoint);
  v10 = [v8 startDate];
  v11 = [v10 hk_dateFromSourceTimeZone:*(a1 + 32)];

  v12 = [v8 endDate];

  v13 = [v12 hk_dateFromSourceTimeZone:*(a1 + 32)];

  [(HKHorizontalTimePeriodChartPoint *)v9 setXStart:v11];
  [(HKHorizontalTimePeriodChartPoint *)v9 setXEnd:v13];
  [(HKHorizontalTimePeriodChartPoint *)v9 setYValue:v7];

  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = (*(v14 + 16))(v14, a4, v11, v13);
    [(HKHorizontalTimePeriodChartPoint *)v9 setUserInfo:v15];
  }

  return v9;
}

void __88__HKHorizontalTimePeriodDataSource__chartPointsWithDateIntervalsByValue_sourceTimeZone___block_invoke_308(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = (*(*(a1 + 48) + 16))(*(a1 + 48), *(*(&v12 + 1) + 8 * v10), *(a1 + 32), [v5 integerValue]);
        [*(a1 + 40) addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)_organizeSamplesByValueAndDateInterval:(id)interval
{
  v23 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = intervalCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "hk_integerValue")}];
        v12 = [v4 objectForKeyedSubscript:v11];
        if (!v12)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v4 setObject:v12 forKeyedSubscript:v11];
        }

        [v12 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__HKHorizontalTimePeriodDataSource__organizeSamplesByValueAndDateInterval___block_invoke;
  v16[3] = &unk_1E81BAF08;
  v14 = v13;
  v17 = v14;
  [v4 enumerateKeysAndObjectsUsingBlock:v16];

  return v14;
}

void __75__HKHorizontalTimePeriodDataSource__organizeSamplesByValueAndDateInterval___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696C660];
  v6 = a2;
  v7 = [v5 coalesceTimePeriodsFromSamples:a3 strictStartDate:0 strictEndDate:0];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)_dateIntervalsByValueWithCodableQueryData:(id)data
{
  v32 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = dataCopy;
  obj = [dataCopy dateIntervalsByValues];
  v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v20 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "value")}];
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        dateIntervals = [v7 dateIntervals];
        v11 = [dateIntervals countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(dateIntervals);
              }

              v15 = [MEMORY[0x1E696AB80] hk_dateIntervalWithCodableDateInterval:*(*(&v22 + 1) + 8 * j) sourceTimeZone:0];
              [v9 addObject:v15];
            }

            v12 = [dateIntervals countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v12);
        }

        v16 = [v9 copy];
        [v21 setObject:v16 forKeyedSubscript:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  return v21;
}

- (id)_codableQueryDataWithSamples:(id)samples
{
  v3 = [(HKHorizontalTimePeriodDataSource *)self _organizeSamplesByValueAndDateInterval:samples];
  v4 = objc_alloc_init(HKCodableChartHorizontalTimePeriodDataSourceData);
  allKeys = [v3 allKeys];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__HKHorizontalTimePeriodDataSource__codableQueryDataWithSamples___block_invoke;
  v10[3] = &unk_1E81BAF50;
  v11 = v3;
  v6 = v3;
  v7 = [allKeys hk_map:v10];
  v8 = [v7 mutableCopy];
  [(HKCodableChartHorizontalTimePeriodDataSourceData *)v4 setDateIntervalsByValues:v8];

  return v4;
}

HKCodableHorizontalTimePeriodData *__65__HKHorizontalTimePeriodDataSource__codableQueryDataWithSamples___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(HKCodableHorizontalTimePeriodData);
  -[HKCodableHorizontalTimePeriodData setValue:](v4, "setValue:", [v3 integerValue]);
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];

  v6 = [v5 hk_map:&__block_literal_global_76];
  v7 = [v6 mutableCopy];
  [(HKCodableHorizontalTimePeriodData *)v4 setDateIntervals:v7];

  return v4;
}

HKCodableDateInterval *__65__HKHorizontalTimePeriodDataSource__codableQueryDataWithSamples___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(HKCodableDateInterval);
  v4 = [v2 startDate];
  HKEncodeValueForDate(v4);
  [(HKCodableDateInterval *)v3 setStartDate:?];

  v5 = [v2 endDate];

  HKEncodeValueForDate(v5);
  [(HKCodableDateInterval *)v3 setEndDate:?];

  return v3;
}

- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler
{
  requestCopy = request;
  storeCopy = store;
  handlerCopy = handler;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __102__HKHorizontalTimePeriodDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke;
  v25[3] = &unk_1E81BAF78;
  v26 = requestCopy;
  selfCopy = self;
  v28 = handlerCopy;
  v11 = handlerCopy;
  v12 = requestCopy;
  v13 = [(HKHorizontalTimePeriodDataSource *)self queriesForRequest:v12 completionHandler:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __102__HKHorizontalTimePeriodDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_320;
  v23[3] = &unk_1E81B6D60;
  v14 = storeCopy;
  v24 = v14;
  [v13 enumerateObjectsUsingBlock:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __102__HKHorizontalTimePeriodDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2;
  v20[3] = &unk_1E81B5AD0;
  v21 = v13;
  v22 = v14;
  v15 = v14;
  v16 = v13;
  v17 = _Block_copy(v20);
  v18 = _Block_copy(v17);

  return v18;
}

void __102__HKHorizontalTimePeriodDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v19 = [v14 codableQueryDataWithType:6 startDate:v15 endDate:v16 statisticsInterval:v17 queryDataObject:v18];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __102__HKHorizontalTimePeriodDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(a1, v7, v20);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __102__HKHorizontalTimePeriodDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __102__HKHorizontalTimePeriodDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_3;
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

  v9 = [HKCodableChartHorizontalTimePeriodDataSourceData alloc];
  queryDataObject = [dataCopy queryDataObject];
  v11 = [(HKCodableChartHorizontalTimePeriodDataSourceData *)v9 initWithData:queryDataObject];

  v12 = [(HKHorizontalTimePeriodDataSource *)self _dateIntervalsByValueWithCodableQueryData:v11];
  v13 = [(HKHorizontalTimePeriodDataSource *)self _chartPointsWithDateIntervalsByValue:v12 sourceTimeZone:v8];

  return v13;
}

void __102__HKHorizontalTimePeriodDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
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