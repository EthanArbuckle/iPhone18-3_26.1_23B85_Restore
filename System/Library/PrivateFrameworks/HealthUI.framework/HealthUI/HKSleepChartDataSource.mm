@interface HKSleepChartDataSource
- (HKSleepChartDataSource)initWithHealthStore:(id)store representativeDisplayType:(id)type queryOptions:(unint64_t)options cacheIdentifier:(id)identifier queryIdentifier:(id)queryIdentifier calendar:(id)calendar;
- (id)_mappingFunctionForComparisonChartWithContext:(id)context;
- (id)_mappingFunctionForConsistencyChartWithContext:(id)context;
- (id)_mappingFunctionForDurationChartWithContext:(id)context;
- (id)_mappingFunctionForStagesChartWithContext:(id)context;
- (id)_mappingFunctionForStagesDurationChartWithContext:(id)context;
- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source;
- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler;
- (id)mappingFunctionForContext:(id)context;
- (id)queriesForRequest:(id)request completionHandler:(id)handler;
- (id)queriesForRequest:(id)request useCollectionQueryForSixMonth:(BOOL)month completionHandler:(id)handler;
@end

@implementation HKSleepChartDataSource

- (HKSleepChartDataSource)initWithHealthStore:(id)store representativeDisplayType:(id)type queryOptions:(unint64_t)options cacheIdentifier:(id)identifier queryIdentifier:(id)queryIdentifier calendar:(id)calendar
{
  identifierCopy = identifier;
  queryIdentifierCopy = queryIdentifier;
  calendarCopy = calendar;
  v21.receiver = self;
  v21.super_class = HKSleepChartDataSource;
  v18 = [(HKHealthQueryChartCacheDataSource *)&v21 initWithDisplayType:type healthStore:store];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_calendar, calendar);
    v19->_queryOptions = options;
    objc_storeStrong(&v19->_cacheIdentifier, identifier);
    objc_storeStrong(&v19->_queryIdentifier, queryIdentifier);
  }

  return v19;
}

- (id)queriesForRequest:(id)request completionHandler:(id)handler
{
  v6 = MEMORY[0x1E696C608];
  handlerCopy = handler;
  requestCopy = request;
  sharedBehavior = [v6 sharedBehavior];
  features = [sharedBehavior features];
  v11 = -[HKSleepChartDataSource queriesForRequest:useCollectionQueryForSixMonth:completionHandler:](self, "queriesForRequest:useCollectionQueryForSixMonth:completionHandler:", requestCopy, [features newSleep6MonthView], handlerCopy);

  return v11;
}

- (id)queriesForRequest:(id)request useCollectionQueryForSixMonth:(BOOL)month completionHandler:(id)handler
{
  monthCopy = month;
  v77 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  date = [MEMORY[0x1E695DF00] date];
  startDate = [requestCopy startDate];
  v12 = [startDate hk_isAfterDate:date];

  if (v12)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x1E696B998];
    if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = objc_opt_class();
      v16 = date;
      v17 = v15;
      queryIdentifier = [(HKSleepChartDataSource *)self queryIdentifier];
      startDate2 = [requestCopy startDate];
      *buf = 138543874;
      v66 = v15;
      v67 = 2114;
      v68 = queryIdentifier;
      v69 = 2114;
      v70 = startDate2;
      _os_log_impl(&dword_1C3942000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@.%{public}@] start date in the future %{public}@", buf, 0x20u);

      date = v16;
    }

    v20 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v56 = monthCopy;
    startDate3 = [requestCopy startDate];
    calendar = [(HKSleepChartDataSource *)self calendar];
    v23 = [startDate3 hk_morningIndexWithCalendar:calendar];

    endDate = [requestCopy endDate];
    calendar2 = [(HKSleepChartDataSource *)self calendar];
    v26 = [endDate hk_morningIndexWithCalendar:calendar2];

    v57 = v26 - v23;
    statisticsInterval = [requestCopy statisticsInterval];
    weekOfYear = [statisticsInterval weekOfYear];

    _HKInitializeLogging();
    v29 = *MEMORY[0x1E696B998];
    if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEFAULT))
    {
      v53 = v26 - 1;
      v30 = v29;
      v31 = objc_opt_class();
      v54 = v31;
      queryIdentifier2 = [(HKSleepChartDataSource *)self queryIdentifier];
      [requestCopy startDate];
      v55 = date;
      v34 = v33 = handlerCopy;
      endDate2 = [requestCopy endDate];
      *buf = 138544642;
      v66 = v31;
      v67 = 2114;
      v68 = queryIdentifier2;
      v69 = 2048;
      v70 = v23;
      v71 = 2048;
      v72 = v53;
      v73 = 2114;
      v74 = v34;
      v75 = 2114;
      v76 = endDate2;
      _os_log_impl(&dword_1C3942000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@.%{public}@] creating query for day indices: %ld-%ld dates: %{public}@-%{public}@", buf, 0x3Eu);

      handlerCopy = v33;
      date = v55;
    }

    if (!v56 || weekOfYear == 0x7FFFFFFFFFFFFFFFLL)
    {
      queryOptions = [(HKSleepChartDataSource *)self queryOptions];
      statisticsInterval2 = [requestCopy statisticsInterval];
      month = [statisticsInterval2 month];

      v43 = queryOptions | 8;
      if (weekOfYear == 0x7FFFFFFFFFFFFFFFLL)
      {
        v43 = queryOptions;
      }

      if (month == 0x7FFFFFFFFFFFFFFFLL)
      {
        v44 = v43;
      }

      else
      {
        v44 = queryOptions | 0x10;
      }

      v45 = objc_alloc(MEMORY[0x1E696C470]);
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __92__HKSleepChartDataSource_queriesForRequest_useCollectionQueryForSixMonth_completionHandler___block_invoke_300;
      v58[3] = &unk_1E81B7880;
      v58[4] = self;
      v59 = date;
      v60 = handlerCopy;
      v46 = [v45 initWithMorningIndexRange:v23 ascending:v57 limit:1 options:0 resultsHandler:{v44, v58}];
      v47 = objc_alloc(MEMORY[0x1E696C460]);
      queryIdentifier3 = [(HKSleepChartDataSource *)self queryIdentifier];
      v49 = [v47 initWithIdentifier:queryIdentifier3 mode:1];
      [v46 setCacheSettings:v49];

      queryIdentifier4 = [(HKSleepChartDataSource *)self queryIdentifier];
      [v46 setDebugIdentifier:queryIdentifier4];

      calendar3 = [(HKSleepChartDataSource *)self calendar];
      [v46 setCalendarOverrides:calendar3];

      v63 = v46;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];

      v39 = v59;
    }

    else
    {
      v36 = objc_alloc(MEMORY[0x1E696C468]);
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __92__HKSleepChartDataSource_queriesForRequest_useCollectionQueryForSixMonth_completionHandler___block_invoke;
      v61[3] = &unk_1E81B7838;
      v61[4] = self;
      v62 = handlerCopy;
      v37 = [v36 initWithMorningIndexRange:v23 resultsHandler:{v57, v61}];
      query = [v37 query];
      v64 = query;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];

      v39 = v62;
    }
  }

  return v20;
}

void __92__HKSleepChartDataSource_queriesForRequest_useCollectionQueryForSixMonth_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 count];
  v11 = MEMORY[0x1E696B998];
  if (!v10)
  {
    _HKInitializeLogging();
    v12 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = v14;
      v17 = [v15 queryIdentifier];
      v18 = [v7 description];
      v26 = 138543874;
      v27 = v14;
      v28 = 2114;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_1C3942000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@.%{public}@]] No sleep day summary collections returned from query: %@", &v26, 0x20u);
    }
  }

  if (v9)
  {
    _HKInitializeLogging();
    v19 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      v21 = objc_opt_class();
      v22 = *(a1 + 32);
      v23 = v21;
      v24 = [v22 queryIdentifier];
      v25 = [v7 description];
      v26 = 138544130;
      v27 = v21;
      v28 = 2114;
      v29 = v24;
      v30 = 2112;
      v31 = v25;
      v32 = 2112;
      v33 = v9;
      _os_log_error_impl(&dword_1C3942000, v20, OS_LOG_TYPE_ERROR, "[%{public}@.%{public}@]] Error from sleep day summary collection query: %@, error: %@", &v26, 0x2Au);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __92__HKSleepChartDataSource_queriesForRequest_useCollectionQueryForSixMonth_completionHandler___block_invoke_300(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x1E696B998];
    if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_ERROR))
    {
      __92__HKSleepChartDataSource_queriesForRequest_useCollectionQueryForSixMonth_completionHandler___block_invoke_300_cold_1(a1, v10);
    }
  }

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) calendar];
  v13 = [v11 hk_morningIndexWithCalendar:v12];

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __92__HKSleepChartDataSource_queriesForRequest_useCollectionQueryForSixMonth_completionHandler___block_invoke_301;
  v32[3] = &__block_descriptor_40_e27_B16__0__HKSleepDaySummary_8l;
  v32[4] = v13;
  v14 = [v8 hk_firstObjectPassingTest:v32];
  v15 = v14;
  if (v14)
  {
    [v14 sleepDuration];
    if (v16 <= 0.0)
    {
      [v15 inBedDuration];
      v25 = v24;
      _HKInitializeLogging();
      v26 = *MEMORY[0x1E696B998];
      v27 = os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEFAULT);
      if (v25 <= 0.0)
      {
        if (v27)
        {
          v18 = v26;
          v30 = objc_opt_class();
          v31 = *(a1 + 32);
          v21 = v30;
          v22 = [v31 queryIdentifier];
          *buf = 138543874;
          v34 = v30;
          v35 = 2114;
          v36 = v22;
          v37 = 2048;
          v38 = v13;
          v23 = "[%{public}@.%{public}@]] chart has no data today %ld";
          goto LABEL_13;
        }
      }

      else if (v27)
      {
        v18 = v26;
        v28 = objc_opt_class();
        v29 = *(a1 + 32);
        v21 = v28;
        v22 = [v29 queryIdentifier];
        *buf = 138543874;
        v34 = v28;
        v35 = 2114;
        v36 = v22;
        v37 = 2048;
        v38 = v13;
        v23 = "[%{public}@.%{public}@] chart has in bed today %ld";
        goto LABEL_13;
      }
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x1E696B998];
      if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = objc_opt_class();
        v20 = *(a1 + 32);
        v21 = v19;
        v22 = [v20 queryIdentifier];
        *buf = 138543874;
        v34 = v19;
        v35 = 2114;
        v36 = v22;
        v37 = 2048;
        v38 = v13;
        v23 = "[%{public}@.%{public}@]] chart has sleep data today %ld";
LABEL_13:
        _os_log_impl(&dword_1C3942000, v18, OS_LOG_TYPE_DEFAULT, v23, buf, 0x20u);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (id)mappingFunctionForContext:(id)context
{
  contextCopy = context;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_17;
  }

  chartType = [contextCopy chartType];
  v6 = 0;
  if (chartType <= 2)
  {
    if (chartType)
    {
      if (chartType == 1)
      {
        goto LABEL_14;
      }

      if (chartType != 2)
      {
        goto LABEL_17;
      }
    }

    v7 = [(HKSleepChartDataSource *)self _mappingFunctionForDurationChartWithContext:contextCopy];
    goto LABEL_16;
  }

  if (chartType <= 4)
  {
    if (chartType != 3)
    {
      v7 = [(HKSleepChartDataSource *)self _mappingFunctionForStagesChartWithContext:contextCopy];
      goto LABEL_16;
    }

LABEL_14:
    v7 = [(HKSleepChartDataSource *)self _mappingFunctionForConsistencyChartWithContext:contextCopy];
    goto LABEL_16;
  }

  if (chartType == 5)
  {
    v7 = [(HKSleepChartDataSource *)self _mappingFunctionForStagesDurationChartWithContext:contextCopy];
  }

  else
  {
    if (chartType != 6)
    {
      goto LABEL_17;
    }

    v7 = [(HKSleepChartDataSource *)self _mappingFunctionForComparisonChartWithContext:contextCopy];
  }

LABEL_16:
  v6 = v7;
LABEL_17:

  return v6;
}

- (id)_mappingFunctionForDurationChartWithContext:(id)context
{
  contextCopy = context;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__HKSleepChartDataSource__mappingFunctionForDurationChartWithContext___block_invoke;
  aBlock[3] = &unk_1E81B78A8;
  v8 = contextCopy;
  v4 = contextCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

HKGraphSeriesDataBlock *__70__HKSleepChartDataSource__mappingFunctionForDurationChartWithContext___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = _ChartPointInformationProvidersForMappingData(a2);
    v4 = objc_alloc_init(HKGraphSeriesDataBlock);
    v5 = [HKSleepDurationChartPoint chartPointsForInformationProviders:v3 context:*(a1 + 32)];
    [(HKGraphSeriesDataBlock *)v4 setChartPoints:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_mappingFunctionForComparisonChartWithContext:(id)context
{
  contextCopy = context;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__HKSleepChartDataSource__mappingFunctionForComparisonChartWithContext___block_invoke;
  aBlock[3] = &unk_1E81B78A8;
  v8 = contextCopy;
  v4 = contextCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

HKGraphSeriesDataBlock *__72__HKSleepChartDataSource__mappingFunctionForComparisonChartWithContext___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = _ChartPointInformationProvidersForMappingData(a2);
    v4 = objc_alloc_init(HKGraphSeriesDataBlock);
    v5 = [*(a1 + 32) timeScope];
    v6 = off_1E81B2E38;
    if (v5 != 6)
    {
      v6 = off_1E81B2E58;
    }

    v7 = [(__objc2_class *)*v6 chartPointsForInformationProviders:v3 context:*(a1 + 32)];
    [(HKGraphSeriesDataBlock *)v4 setChartPoints:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_mappingFunctionForConsistencyChartWithContext:(id)context
{
  contextCopy = context;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__HKSleepChartDataSource__mappingFunctionForConsistencyChartWithContext___block_invoke;
  aBlock[3] = &unk_1E81B78A8;
  v8 = contextCopy;
  v4 = contextCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

HKGraphSeriesDataBlock *__73__HKSleepChartDataSource__mappingFunctionForConsistencyChartWithContext___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = _ChartPointInformationProvidersForMappingData(a2);
    v4 = objc_alloc_init(HKGraphSeriesDataBlock);
    v5 = [HKSleepPeriodChartPoint chartPointsForInformationProviders:v3 context:*(a1 + 32)];
    [(HKGraphSeriesDataBlock *)v4 setChartPoints:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_mappingFunctionForStagesChartWithContext:(id)context
{
  contextCopy = context;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__HKSleepChartDataSource__mappingFunctionForStagesChartWithContext___block_invoke;
  aBlock[3] = &unk_1E81B78A8;
  v8 = contextCopy;
  v4 = contextCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

HKGraphSeriesDataBlock *__68__HKSleepChartDataSource__mappingFunctionForStagesChartWithContext___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = _ChartPointInformationProvidersForMappingData(a2);
    v4 = objc_alloc_init(HKGraphSeriesDataBlock);
    v5 = [*(a1 + 32) timeScope];
    v6 = off_1E81B2E80;
    if (v5 != 6)
    {
      v6 = off_1E81B2E78;
    }

    v7 = [(__objc2_class *)*v6 chartPointsForInformationProviders:v3 context:*(a1 + 32)];
    [(HKGraphSeriesDataBlock *)v4 setChartPoints:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_mappingFunctionForStagesDurationChartWithContext:(id)context
{
  contextCopy = context;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__HKSleepChartDataSource__mappingFunctionForStagesDurationChartWithContext___block_invoke;
  aBlock[3] = &unk_1E81B78A8;
  v8 = contextCopy;
  v4 = contextCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

HKGraphSeriesDataBlock *__76__HKSleepChartDataSource__mappingFunctionForStagesDurationChartWithContext___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = _ChartPointInformationProvidersForMappingData(a2);
    v4 = objc_alloc_init(HKGraphSeriesDataBlock);
    v5 = [HKSleepStageDurationChartPoint chartPointsForInformationProviders:v3 context:*(a1 + 32)];
    [(HKGraphSeriesDataBlock *)v4 setChartPoints:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  storeCopy = store;
  handlerCopy = handler;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __92__HKSleepChartDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke;
  v30[3] = &unk_1E81B78D0;
  v11 = requestCopy;
  v31 = v11;
  v12 = handlerCopy;
  selfCopy = self;
  v33 = v12;
  v13 = [(HKSleepChartDataSource *)self queriesForRequest:v11 useCollectionQueryForSixMonth:0 completionHandler:v30];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [storeCopy executeQuery:*(*(&v26 + 1) + 8 * i)];
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __92__HKSleepChartDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_315;
  v23[3] = &unk_1E81B5AD0;
  v24 = v13;
  v25 = storeCopy;
  v18 = storeCopy;
  v19 = v13;
  v20 = _Block_copy(v23);
  v21 = _Block_copy(v20);

  return v21;
}

void __92__HKSleepChartDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
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
          v12 = *MEMORY[0x1E696B698];
          v13 = [v7 localizedDescription];
          v22 = 138412802;
          v23 = v11;
          v24 = 2112;
          v25 = v12;
          v26 = 2112;
          v27 = v13;
          _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_INFO, "[RemoteCharting]_%@_%@: query returned successfully with error: %@", &v22, 0x20u);
        }
      }
    }

    v14 = [HKCodableSleepSummaryCollection sleepSummaryCollectionFromDaySummaries:v5];
    v15 = *(a1 + 40);
    v16 = [*(a1 + 32) startDate];
    v17 = [*(a1 + 32) endDate];
    v18 = [*(a1 + 32) statisticsInterval];
    v19 = [v14 data];
    v20 = [v15 codableQueryDataWithType:9 startDate:v16 endDate:v17 statisticsInterval:v18 queryDataObject:v19];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v21 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __92__HKSleepChartDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(a1, v7);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __92__HKSleepChartDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_315(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) stopQuery:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source
{
  dataCopy = data;
  if ([dataCopy hasTimeZoneName])
  {
    v5 = objc_alloc(MEMORY[0x1E695DFE8]);
    timeZoneName = [dataCopy timeZoneName];
    v7 = [v5 initWithName:timeZoneName];
  }

  else
  {
    v7 = 0;
  }

  v8 = [HKCodableSleepSummaryCollection alloc];
  queryDataObject = [dataCopy queryDataObject];
  v10 = [(HKCodableSleepSummaryCollection *)v8 initWithData:queryDataObject];

  v11 = objc_alloc_init(HKGraphSeriesDataBlock);
  v12 = [(HKCodableSleepSummaryCollection *)v10 daySummariesWithSourceTimeZone:v7];
  [(HKGraphSeriesDataBlock *)v11 setChartPoints:v12];

  return v11;
}

void __92__HKSleepChartDataSource_queriesForRequest_useCollectionQueryForSixMonth_completionHandler___block_invoke_300_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  v6 = v4;
  v13 = [v5 queryIdentifier];
  OUTLINED_FUNCTION_1_0(&dword_1C3942000, v7, v8, "[%{public}@.%{public}@]: error fetching summaries %{public}@", v9, v10, v11, v12, 2u);
}

void __92__HKSleepChartDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = HKStringForChartDataSourceQueryRequestAudience([*(a1 + 32) audience]);
  v10 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_0(&dword_1C3942000, v4, v5, "[RemoteCharting]_%@_%@: no results were returned from query with error: %@", v6, v7, v8, v9, 2u);
}

@end