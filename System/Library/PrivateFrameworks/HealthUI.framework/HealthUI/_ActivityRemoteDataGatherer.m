@interface _ActivityRemoteDataGatherer
- (_ActivityRemoteDataGatherer)initWithActivitySummaryDataProvider:(id)a3 monthDateInterval:(id)a4 sixMonthDateInterval:(id)a5 completion:(id)a6;
- (id)_chartDataSourceQueryDataFromSummaries:(id)a3;
- (id)_dateRangeFromInterval:(id)a3;
- (void)dealloc;
- (void)gatherData;
@end

@implementation _ActivityRemoteDataGatherer

- (_ActivityRemoteDataGatherer)initWithActivitySummaryDataProvider:(id)a3 monthDateInterval:(id)a4 sixMonthDateInterval:(id)a5 completion:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = _ActivityRemoteDataGatherer;
  v15 = [(_ActivityRemoteDataGatherer *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_monthDateInterval, a4);
    objc_storeStrong(&v16->_sixMonthDateInterval, a5);
    v17 = [v14 copy];
    completion = v16->_completion;
    v16->_completion = v17;

    objc_storeStrong(&v16->_activitySummaryProvider, a3);
    [(HKActivitySummaryDataProvider *)v16->_activitySummaryProvider addObserver:v16];
    monthActivitySummaries = v16->_monthActivitySummaries;
    v16->_monthActivitySummaries = 0;

    sixMonthActivitySummaries = v16->_sixMonthActivitySummaries;
    v16->_sixMonthActivitySummaries = 0;
  }

  _HKInitializeLogging();
  v21 = HKLogWellnessDashboard();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);

  if (v22)
  {
    v23 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v27 = v16;
      _os_log_impl(&dword_1C3942000, v23, OS_LOG_TYPE_INFO, "[_ActivityRemoteDataGatherer:%p] init", buf, 0xCu);
    }
  }

  return v16;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogWellnessDashboard();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);

  if (v4)
  {
    v5 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v8 = self;
      _os_log_impl(&dword_1C3942000, v5, OS_LOG_TYPE_INFO, "[_ActivityRemoteDataGatherer:%p] dealloc", buf, 0xCu);
    }
  }

  [(HKActivitySummaryDataProvider *)self->_activitySummaryProvider removeObserver:self];
  v6.receiver = self;
  v6.super_class = _ActivityRemoteDataGatherer;
  [(_ActivityRemoteDataGatherer *)&v6 dealloc];
}

- (void)gatherData
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKInteractiveChartActivityController.m" lineNumber:2657 description:@"Gathering remote data must be done from the main thread due to restrictions imposed by HKActivitySummaryDataProvider"];
}

- (id)_dateRangeFromInterval:(id)a3
{
  v3 = a3;
  v4 = [v3 startDate];
  v5 = [v3 endDate];

  v6 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v5];

  return v6;
}

- (id)_chartDataSourceQueryDataFromSummaries:(id)a3
{
  v3 = [HKInteractiveChartActivityController _codableActivitySummaryDataFromSummaries:a3];
  v4 = objc_alloc_init(HKCodableChartDataSourceQueryData);
  v5 = [v3 data];
  [(HKCodableChartDataSourceQueryData *)v4 setQueryDataObject:v5];

  [(HKCodableChartDataSourceQueryData *)v4 setType:10];
  v6 = [MEMORY[0x1E695DFE8] localTimeZone];
  v7 = [v6 name];
  [(HKCodableChartDataSourceQueryData *)v4 setTimeZoneName:v7];

  v8 = [MEMORY[0x1E695DF58] currentLocale];
  v9 = [v8 objectForKey:*MEMORY[0x1E695D958]];

  if (v9)
  {
    -[HKCodableChartDataSourceQueryData setFirstWeekday:](v4, "setFirstWeekday:", [v9 firstWeekday]);
  }

  return v4;
}

@end