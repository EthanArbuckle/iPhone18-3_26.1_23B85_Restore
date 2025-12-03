@interface HKHandwashingEventDataSource
- (HKHandwashingEventDataSource)initWithDisplayType:(id)type healthStore:(id)store;
- (double)durationForObject:(id)object;
- (id)_averageDurationChartModelForObjects:(id)objects startDate:(id)date endDate:(id)endDate;
- (id)_dailyAverageChartModelForObjects:(id)objects startDate:(id)date endDate:(id)endDate;
- (id)chartModelsForSamples:(id)samples startDate:(id)date endDate:(id)endDate statisticsInterval:(id)interval;
- (id)chartPointsForSamples:(id)samples startDate:(id)date endDate:(id)endDate statisticsInterval:(id)interval;
- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source;
- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler;
- (id)queriesForRequest:(id)request completionHandler:(id)handler;
@end

@implementation HKHandwashingEventDataSource

- (HKHandwashingEventDataSource)initWithDisplayType:(id)type healthStore:(id)store
{
  v7.receiver = self;
  v7.super_class = HKHandwashingEventDataSource;
  v4 = [(HKHealthQueryChartCacheDataSource *)&v7 initWithDisplayType:type healthStore:store];
  v5 = v4;
  if (v4)
  {
    [(HKHandwashingEventDataSource *)v4 setUserInfoCreationBlock:&__block_literal_global_65];
  }

  return v5;
}

HKInteractiveChartHandwashingEventData *__64__HKHandwashingEventDataSource_initWithDisplayType_healthStore___block_invoke(double a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v9 = [[HKInteractiveChartHandwashingEventData alloc] initWithTimePeriod:a3 meetsGoal:a1];
  [(HKInteractiveChartTimePeriodData *)v9 setStatisticsInterval:v8];

  [(HKInteractiveChartTimePeriodData *)v9 setRecordCount:a5];

  return v9;
}

- (double)durationForObject:(id)object
{
  objectCopy = object;
  endDate = [objectCopy endDate];
  [endDate timeIntervalSinceReferenceDate];
  v6 = v5;
  startDate = [objectCopy startDate];

  [startDate timeIntervalSinceReferenceDate];
  v9 = v6 - v8;

  return v9;
}

- (id)queriesForRequest:(id)request completionHandler:(id)handler
{
  v24[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = MEMORY[0x1E696C378];
  requestCopy = request;
  startDate = [requestCopy startDate];
  endDate = [requestCopy endDate];

  v10 = [v6 predicateForSamplesWithStartDate:startDate endDate:endDate options:0];

  v11 = [MEMORY[0x1E696BF90] categoryTypeForIdentifier:*MEMORY[0x1E696B5C8]];
  v12 = objc_alloc(MEMORY[0x1E696C3C8]);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __68__HKHandwashingEventDataSource_queriesForRequest_completionHandler___block_invoke;
  v21 = &unk_1E81B6D10;
  v22 = v11;
  v23 = handlerCopy;
  v13 = handlerCopy;
  v14 = v11;
  v15 = [v12 initWithSampleType:v14 predicate:v10 limit:0 sortDescriptors:0 resultsHandler:&v18];
  [v15 setDebugIdentifier:{@"charting (handwashing)", v18, v19, v20, v21}];
  v24[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];

  return v16;
}

void __68__HKHandwashingEventDataSource_queriesForRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
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
        __68__HKHandwashingEventDataSource_queriesForRequest_completionHandler___block_invoke_cold_1();
      }

      goto LABEL_8;
    }

    v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

    if (v14)
    {
      v13 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __68__HKHandwashingEventDataSource_queriesForRequest_completionHandler___block_invoke_cold_2();
      }

LABEL_8:
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)chartPointsForSamples:(id)samples startDate:(id)date endDate:(id)endDate statisticsInterval:(id)interval
{
  intervalCopy = interval;
  endDateCopy = endDate;
  dateCopy = date;
  v13 = [(HKHandwashingEventDataSource *)self chartModelsForSamples:samples startDate:dateCopy endDate:endDateCopy statisticsInterval:intervalCopy];
  data = [v13 data];
  v15 = [(HKHealthQueryChartCacheDataSource *)self codableQueryDataWithType:5 startDate:dateCopy endDate:endDateCopy statisticsInterval:intervalCopy queryDataObject:data];

  v16 = [(HKHandwashingEventDataSource *)self chartPointsFromQueryData:v15 dataIsFromRemoteSource:0];
  chartPoints = [v16 chartPoints];

  return chartPoints;
}

- (id)chartModelsForSamples:(id)samples startDate:(id)date endDate:(id)endDate statisticsInterval:(id)interval
{
  intervalCopy = interval;
  dateCopy = date;
  samplesCopy = samples;
  if ([intervalCopy day] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(intervalCopy, "hour") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v22;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v13 = __91__HKHandwashingEventDataSource_chartModelsForSamples_startDate_endDate_statisticsInterval___block_invoke;
  }

  else
  {
    v12 = v21;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v13 = __91__HKHandwashingEventDataSource_chartModelsForSamples_startDate_endDate_statisticsInterval___block_invoke_2;
  }

  v12[2] = v13;
  v12[3] = &unk_1E81B9BF0;
  v12[4] = self;
  v14 = _Block_copy(v12);
  v15 = MEMORY[0x1E696C660];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v17 = [v15 arrayByCoalescingObjects:samplesCopy startDate:dateCopy intervalComponents:intervalCopy calendar:currentCalendar combiningBlock:v14];

  v18 = objc_alloc_init(HKCodableChartHandwashingEventDataSourceData);
  v19 = [v17 mutableCopy];
  [(HKCodableChartHandwashingEventDataSourceData *)v18 setEvents:v19];

  return v18;
}

- (id)_averageDurationChartModelForObjects:(id)objects startDate:(id)date endDate:(id)endDate
{
  v30 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  dateCopy = date;
  endDateCopy = endDate;
  if ([objectsCopy count])
  {
    v11 = objc_alloc_init(HKCodableHandwashingEvent);
    HKEncodeValueForDate(dateCopy);
    [(HKCodableHandwashingEvent *)v11 setStartDate:?];
    HKEncodeValueForDate(endDateCopy);
    [(HKCodableHandwashingEvent *)v11 setEndDate:?];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = objectsCopy;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      v16 = 0.0;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(HKHandwashingEventDataSource *)self durationForObject:*(*(&v25 + 1) + 8 * i), v25];
          v16 = v16 + v18;
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = 0.0;
    }

    v19 = v16 / [v12 count];
    v20 = MEMORY[0x1E696C348];
    secondUnit = [MEMORY[0x1E696C510] secondUnit];
    v22 = [v20 quantityWithUnit:secondUnit doubleValue:v19];
    codableRepresentation = [v22 codableRepresentation];
    [(HKCodableHandwashingEvent *)v11 setAverageDuration:codableRepresentation];

    [(HKCodableHandwashingEvent *)v11 setMeetsGoal:[(HKHandwashingEventDataSource *)self doesDurationMeetGoal:v19]];
    -[HKCodableHandwashingEvent setCount:](v11, "setCount:", [v12 count]);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_dailyAverageChartModelForObjects:(id)objects startDate:(id)date endDate:(id)endDate
{
  v45 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  dateCopy = date;
  endDateCopy = endDate;
  if ([objectsCopy count])
  {
    v11 = [MEMORY[0x1E695DF10] hk_dateComponentsForCalendarUnit:16];
    v12 = MEMORY[0x1E696C660];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __84__HKHandwashingEventDataSource__dailyAverageChartModelForObjects_startDate_endDate___block_invoke;
    v43[3] = &unk_1E81B9C18;
    v43[4] = self;
    v14 = [v12 arrayByCoalescingObjects:objectsCopy startDate:dateCopy intervalComponents:v11 calendar:currentCalendar combiningBlock:v43];

    if ([v14 count])
    {
      v15 = objc_alloc_init(HKCodableHandwashingEvent);
      HKEncodeValueForDate(dateCopy);
      [(HKCodableHandwashingEvent *)v15 setStartDate:?];
      HKEncodeValueForDate(endDateCopy);
      [(HKCodableHandwashingEvent *)v15 setEndDate:?];
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = v14;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v17)
      {
        v18 = v17;
        selfCopy = self;
        v36 = v11;
        v37 = endDateCopy;
        v19 = 0;
        v20 = *v40;
        v21 = 0.0;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v40 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v23 = *(*(&v39 + 1) + 8 * i);
            averageDuration = [v23 averageDuration];
            [averageDuration value];
            v21 = v21 + v25;

            v19 += [v23 count];
          }

          v18 = [v16 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v18);
        v26 = v21;
        v27 = v19;
        v11 = v36;
        endDateCopy = v37;
        self = selfCopy;
      }

      else
      {
        v26 = 0.0;
        v27 = 0.0;
      }

      v28 = v26 / [v16 count];
      v29 = MEMORY[0x1E696C348];
      secondUnit = [MEMORY[0x1E696C510] secondUnit];
      v31 = v28;
      v32 = [v29 quantityWithUnit:secondUnit doubleValue:v31];
      codableRepresentation = [v32 codableRepresentation];
      [(HKCodableHandwashingEvent *)v15 setAverageDuration:codableRepresentation];

      [(HKCodableHandwashingEvent *)v15 setMeetsGoal:[(HKHandwashingEventDataSource *)self doesDurationMeetGoal:v31]];
      -[HKCodableHandwashingEvent setCount:](v15, "setCount:", [objectsCopy count]);
      -[HKCodableHandwashingEvent setAverageDailyCount:](v15, "setAverageDailyCount:", (v27 / [v16 count]));
      v14 = v38;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler
{
  requestCopy = request;
  storeCopy = store;
  handlerCopy = handler;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __98__HKHandwashingEventDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke;
  v25[3] = &unk_1E81B78D0;
  selfCopy = self;
  v28 = handlerCopy;
  v26 = requestCopy;
  v11 = handlerCopy;
  v12 = requestCopy;
  v13 = [(HKHandwashingEventDataSource *)self queriesForRequest:v12 completionHandler:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __98__HKHandwashingEventDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_416;
  v23[3] = &unk_1E81B6D60;
  v14 = storeCopy;
  v24 = v14;
  [v13 enumerateObjectsUsingBlock:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __98__HKHandwashingEventDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2;
  v20[3] = &unk_1E81B5AD0;
  v21 = v13;
  v22 = v14;
  v15 = v14;
  v16 = v13;
  v17 = _Block_copy(v20);
  v18 = _Block_copy(v17);

  return v18;
}

void __98__HKHandwashingEventDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
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
          v12 = *MEMORY[0x1E696B5C8];
          v13 = [v7 localizedDescription];
          v26 = 138412802;
          v27 = v11;
          v28 = 2112;
          v29 = v12;
          v30 = 2112;
          v31 = v13;
          _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_INFO, "[RemoteCharting]_%@_%@: query returned successfully with error: %@", &v26, 0x20u);
        }
      }
    }

    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) startDate];
    v16 = [*(a1 + 32) endDate];
    v17 = [*(a1 + 32) statisticsInterval];
    v18 = [v14 chartModelsForSamples:v5 startDate:v15 endDate:v16 statisticsInterval:v17];

    v19 = *(a1 + 40);
    v20 = [*(a1 + 32) startDate];
    v21 = [*(a1 + 32) endDate];
    v22 = [*(a1 + 32) statisticsInterval];
    v23 = [v18 data];
    v24 = [v19 codableQueryDataWithType:5 startDate:v20 endDate:v21 statisticsInterval:v22 queryDataObject:v23];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v25 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __98__HKHandwashingEventDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(a1, v7, v25);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __98__HKHandwashingEventDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __98__HKHandwashingEventDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_3;
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

  v9 = objc_alloc_init(HKGraphSeriesDataBlock);
  v10 = [HKCodableChartHandwashingEventDataSourceData alloc];
  queryDataObject = [dataCopy queryDataObject];
  v12 = [(HKCodableChartHandwashingEventDataSourceData *)v10 initWithData:queryDataObject];

  events = [(HKCodableChartHandwashingEventDataSourceData *)v12 events];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __80__HKHandwashingEventDataSource_chartPointsFromQueryData_dataIsFromRemoteSource___block_invoke;
  v22 = &unk_1E81B9C40;
  v14 = v8;
  v23 = v14;
  selfCopy = self;
  v15 = [events hk_map:&v19];
  [(HKGraphSeriesDataBlock *)v9 setChartPoints:v15, v19, v20, v21, v22];

  chartPoints = [(HKGraphSeriesDataBlock *)v9 chartPoints];

  if (!chartPoints)
  {
    array = [MEMORY[0x1E695DEC8] array];
    [(HKGraphSeriesDataBlock *)v9 setChartPoints:array];
  }

  return v9;
}

HKHandwashingEventChartPoint *__80__HKHandwashingEventDataSource_chartPointsFromQueryData_dataIsFromRemoteSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 startDate];
  v4 = HKDecodeDateForValue();
  v5 = [v4 hk_dateFromSourceTimeZone:*(a1 + 32)];

  [v3 endDate];
  v6 = HKDecodeDateForValue();
  v7 = [v6 hk_dateFromSourceTimeZone:*(a1 + 32)];

  v8 = [[HKHandwashingEventChartPoint alloc] initWithStartDate:v5 endDate:v7];
  v9 = MEMORY[0x1E696AD98];
  v10 = [v3 averageDuration];
  [v10 value];
  v11 = [v9 numberWithDouble:?];
  [(HKHandwashingEventChartPoint *)v8 setAverageDuration:v11];

  -[HKHandwashingEventChartPoint setMeetsGoal:](v8, "setMeetsGoal:", [v3 meetsGoal]);
  if ([v3 hasAverageDailyCount])
  {
    v12 = [MEMORY[0x1E695DF10] hk_dateComponentsForCalendarUnit:16];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v3 hasAverageDailyCount];
  v14 = MEMORY[0x1E696AD98];
  if (v13)
  {
    v15 = [v3 averageDailyCount];
  }

  else
  {
    v15 = [v3 count];
  }

  v16 = [v14 numberWithLongLong:v15];
  v17 = [*(a1 + 40) userInfoCreationBlock];
  v18 = [v3 averageDuration];
  [v18 value];
  v20 = (v17)[2](v17, [v3 meetsGoal], v12, objc_msgSend(v16, "intValue"), v19);
  [(HKHandwashingEventChartPoint *)v8 setUserInfo:v20];

  return v8;
}

void __68__HKHandwashingEventDataSource_queriesForRequest_completionHandler___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_11();
  _os_log_error_impl(&dword_1C3942000, v0, OS_LOG_TYPE_ERROR, "Encountered error querying for %{public}@: %{public}@", v1, 0x16u);
}

void __68__HKHandwashingEventDataSource_queriesForRequest_completionHandler___block_invoke_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(&dword_1C3942000, v0, OS_LOG_TYPE_DEBUG, "Encountered error querying for %{public}@: %{public}@", v1, 0x16u);
}

void __98__HKHandwashingEventDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = HKStringForChartDataSourceQueryRequestAudience([*(a1 + 32) audience]);
  v6 = *MEMORY[0x1E696B5C8];
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