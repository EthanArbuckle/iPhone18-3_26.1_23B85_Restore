@interface HKTimePeriodSeriesDataSource
- (id)_calculateTotalDurationFromSamples:(id)a3 startDate:(id)a4 endDate:(id)a5 interval:(id)a6 intervalOut:(id *)a7 intervalCountsOut:(id *)a8;
- (id)_chartPointsWithStatisticsInterval:(id)a3 dateIntervalsToTotals:(id)a4 intervalCounts:(id)a5 sourceTimeZone:(id)a6;
- (id)_codableDataWithSamples:(id)a3 blockStart:(id)a4 blockEnd:(id)a5 intervalComponents:(id)a6;
- (id)_codableTimePeriodDataWithDictionary:(id)a3;
- (id)_startOfDayTransform;
- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4;
- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5;
- (id)queriesForRequest:(id)a3 completionHandler:(id)a4;
- (id)queryDescription;
@end

@implementation HKTimePeriodSeriesDataSource

- (id)_startOfDayTransform
{
  v2 = [(HKHealthQueryChartCacheDataSource *)self displayType];
  v3 = [v2 hk_startOfDayTransform];

  return v3;
}

- (id)queryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HKTimePeriodSeriesDataSource *)self sampleType];
  v4 = [v3 hk_localizedName];
  v5 = [v2 stringWithFormat:@"HKTimePeriodSeries(%@)", v4];

  return v5;
}

- (id)queriesForRequest:(id)a3 completionHandler:(id)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 startDate];
  v9 = [v6 endDate];
  v10 = [(HKTimePeriodSeriesDataSource *)self _startOfDayTransform];
  if (v10)
  {
    v11 = [MEMORY[0x1E695DEE8] currentCalendar];
    [v6 startDate];
    v13 = v12 = v7;
    v14 = (v10)[2](v10, v11, v13);

    v15 = [v6 endDate];
    v16 = (v10)[2](v10, v11, v15);

    v9 = v16;
    v7 = v12;
    v8 = v14;
  }

  v28 = v9;
  v27 = [MEMORY[0x1E696C378] predicateForSamplesWithStartDate:v8 endDate:v9 options:0];
  v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E696BE38] ascending:1];
  v18 = objc_alloc(MEMORY[0x1E696C3C8]);
  v19 = [(HKTimePeriodSeriesDataSource *)self sampleType];
  v20 = HKUIPredicateMatchingPredicates(v27, self->_queryPredicate);
  v33[0] = v17;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __68__HKTimePeriodSeriesDataSource_queriesForRequest_completionHandler___block_invoke;
  v29[3] = &unk_1E81B5A88;
  v29[4] = self;
  v30 = v6;
  v31 = v7;
  v22 = v7;
  v23 = v6;
  v24 = [v18 initWithSampleType:v19 predicate:v20 limit:0 sortDescriptors:v21 resultsHandler:v29];

  [v24 setDebugIdentifier:@"charting (time period)"];
  v32 = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];

  return v25;
}

void __68__HKTimePeriodSeriesDataSource_queriesForRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
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

  v15 = *(a1 + 32);
  v16 = [*(a1 + 40) startDate];
  v17 = [*(a1 + 40) endDate];
  v18 = [*(a1 + 40) statisticsInterval];
  v19 = [v15 _codableDataWithSamples:v8 blockStart:v16 blockEnd:v17 intervalComponents:v18];

  (*(*(a1 + 48) + 16))();
}

- (id)_chartPointsWithStatisticsInterval:(id)a3 dateIntervalsToTotals:(id)a4 intervalCounts:(id)a5 sourceTimeZone:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x1E695DF70];
  v14 = a4;
  v15 = objc_alloc_init(v13);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __119__HKTimePeriodSeriesDataSource__chartPointsWithStatisticsInterval_dateIntervalsToTotals_intervalCounts_sourceTimeZone___block_invoke;
  v22[3] = &unk_1E81B8680;
  v23 = v12;
  v24 = self;
  v25 = v11;
  v26 = v10;
  v27 = v15;
  v16 = v15;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  [v14 enumerateKeysAndObjectsUsingBlock:v22];

  [v16 sortUsingComparator:&__block_literal_global_40];
  v20 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v20 setChartPoints:v16];

  return v20;
}

void __119__HKTimePeriodSeriesDataSource__chartPointsWithStatisticsInterval_dateIntervalsToTotals_intervalCounts_sourceTimeZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = objc_alloc_init(_HKTimePeriodChartPoint);
  v7 = [v15 startDate];
  v8 = [v7 hk_dateFromSourceTimeZone:*(a1 + 32)];

  v9 = [v15 endDate];
  v10 = [v9 hk_dateFromSourceTimeZone:*(a1 + 32)];

  v11 = HKUIMidDate(v8, v10);
  [(_HKTimePeriodChartPoint *)v6 setXValue:v11];
  [(_HKTimePeriodChartPoint *)v6 setYValue:v5];
  v12 = *(*(a1 + 40) + 72);
  if (v12)
  {
    v13 = [*(a1 + 48) objectForKeyedSubscript:v15];
    v14 = (*(v12 + 16))(v12, v5, [v13 integerValue], *(a1 + 56));
    [(_HKTimePeriodChartPoint *)v6 setUserInfo:v14];
  }

  [*(a1 + 64) addObject:v6];
}

uint64_t __119__HKTimePeriodSeriesDataSource__chartPointsWithStatisticsInterval_dateIntervalsToTotals_intervalCounts_sourceTimeZone___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 xValue];
  v6 = [v4 xValue];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_calculateTotalDurationFromSamples:(id)a3 startDate:(id)a4 endDate:(id)a5 interval:(id)a6 intervalOut:(id *)a7 intervalCountsOut:(id *)a8
{
  v13 = a6;
  v14 = MEMORY[0x1E696C660];
  v15 = a5;
  v16 = a4;
  v17 = [v14 coalesceTimePeriodsFromSamples:a3 strictStartDate:v16 strictEndDate:v15];
  v18 = MEMORY[0x1E696C660];
  v19 = [(HKHealthQueryChartCacheDataSource *)self displayType];
  v20 = [v19 sampleType];
  LODWORD(v18) = [v18 shouldUseDailyAverageWithDateComponents:v13 sampleType:v20];

  if (v18)
  {
    v21 = [MEMORY[0x1E695DF10] hk_oneDay];
  }

  else
  {
    v21 = v13;
  }

  v22 = v21;
  v23 = MEMORY[0x1E696C660];
  v24 = [(HKTimePeriodSeriesDataSource *)self _startOfDayTransform];
  v25 = [v23 calculateTotalDurationsWithTimePeriods:v17 startDate:v16 endDate:v15 intervalComponents:v22 startOfDayTransform:v24];

  if (a7)
  {
    v26 = v22;
    *a7 = v22;
  }

  v27 = [MEMORY[0x1E696C660] coalesceTotalDurations:v25 startDate:v16 intervalComponents:v13 intervalRecordCountsOut:a8];

  return v27;
}

- (id)_codableDataWithSamples:(id)a3 blockStart:(id)a4 blockEnd:(id)a5 intervalComponents:(id)a6
{
  v17 = 0;
  v18 = 0;
  v7 = [(HKTimePeriodSeriesDataSource *)self _calculateTotalDurationFromSamples:a3 startDate:a4 endDate:a5 interval:a6 intervalOut:&v18 intervalCountsOut:&v17];
  v8 = v18;
  v9 = v17;
  v10 = objc_alloc_init(HKCodableChartTimePeriodSeriesDataSourceData);
  v11 = [v8 hkui_codableDateComponents];
  [(HKCodableChartTimePeriodSeriesDataSourceData *)v10 setStatisticsInterval:v11];

  v12 = [(HKTimePeriodSeriesDataSource *)self _codableTimePeriodDataWithDictionary:v7];
  v13 = [v12 mutableCopy];
  [(HKCodableChartTimePeriodSeriesDataSourceData *)v10 setDateIntervalsToTotals:v13];

  v14 = [(HKTimePeriodSeriesDataSource *)self _codableTimePeriodDataWithDictionary:v9];

  v15 = [v14 mutableCopy];
  [(HKCodableChartTimePeriodSeriesDataSourceData *)v10 setIntervalCounts:v15];

  return v10;
}

- (id)_codableTimePeriodDataWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 allKeys];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__HKTimePeriodSeriesDataSource__codableTimePeriodDataWithDictionary___block_invoke;
  v9[3] = &unk_1E81B86C8;
  v10 = v4;
  v11 = self;
  v6 = v4;
  v7 = [v5 hk_map:v9];

  return v7;
}

HKCodableTimePeriodData *__69__HKTimePeriodSeriesDataSource__codableTimePeriodDataWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(HKCodableTimePeriodData);
  v5 = objc_alloc_init(HKCodableDateInterval);
  [(HKCodableTimePeriodData *)v4 setDateInterval:v5];

  v6 = [v3 startDate];
  v7 = HKEncodeValueForDate();
  v8 = [(HKCodableTimePeriodData *)v4 dateInterval];
  [v8 setStartDate:v7];

  v9 = [v3 endDate];
  v10 = HKEncodeValueForDate();
  v11 = [(HKCodableTimePeriodData *)v4 dateInterval];
  [v11 setEndDate:v10];

  v12 = [*(a1 + 32) objectForKeyedSubscript:v3];

  v13 = [*(a1 + 40) displayType];
  v14 = [v13 roundingMode];

  if (v14 == 1)
  {
    v15 = [v12 integerValue];
  }

  else
  {
    [v12 doubleValue];
    v15 = llround(v16);
  }

  [(HKCodableTimePeriodData *)v4 setTotal:v15];

  return v4;
}

- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __98__HKTimePeriodSeriesDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke;
  v25[3] = &unk_1E81B86F0;
  v26 = v8;
  v27 = self;
  v28 = v10;
  v11 = v10;
  v12 = v8;
  v13 = [(HKTimePeriodSeriesDataSource *)self queriesForRequest:v12 completionHandler:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __98__HKTimePeriodSeriesDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_316;
  v23[3] = &unk_1E81B6D60;
  v14 = v9;
  v24 = v14;
  [v13 enumerateObjectsUsingBlock:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __98__HKTimePeriodSeriesDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2;
  v20[3] = &unk_1E81B5AD0;
  v21 = v13;
  v22 = v14;
  v15 = v14;
  v16 = v13;
  v17 = _Block_copy(v20);
  v18 = _Block_copy(v17);

  return v18;
}

void __98__HKTimePeriodSeriesDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v19 = [v14 codableQueryDataWithType:7 startDate:v15 endDate:v16 statisticsInterval:v17 queryDataObject:v18];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __98__HKTimePeriodSeriesDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(a1, v7, v20);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __98__HKTimePeriodSeriesDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __98__HKTimePeriodSeriesDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_3;
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

  v9 = [HKCodableChartTimePeriodSeriesDataSourceData alloc];
  v10 = [v5 queryDataObject];
  v11 = [(HKCodableChartTimePeriodSeriesDataSourceData *)v9 initWithData:v10];

  v12 = MEMORY[0x1E695DF10];
  v13 = [(HKCodableChartTimePeriodSeriesDataSourceData *)v11 statisticsInterval];
  v14 = [v12 hkui_dateComponentsWithCodableDateComponents:v13];

  v15 = [(HKCodableChartTimePeriodSeriesDataSourceData *)v11 dateIntervalsToTotals];
  v16 = [HKCodableTimePeriodData timePeriodDataWithCodableData:v15];

  v17 = [(HKCodableChartTimePeriodSeriesDataSourceData *)v11 intervalCounts];
  v18 = [HKCodableTimePeriodData timePeriodDataWithCodableData:v17];

  v19 = [(HKTimePeriodSeriesDataSource *)self _chartPointsWithStatisticsInterval:v14 dateIntervalsToTotals:v16 intervalCounts:v18 sourceTimeZone:v8];

  return v19;
}

void __98__HKTimePeriodSeriesDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
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