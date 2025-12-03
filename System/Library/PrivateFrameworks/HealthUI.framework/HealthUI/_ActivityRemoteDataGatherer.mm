@interface _ActivityRemoteDataGatherer
- (_ActivityRemoteDataGatherer)initWithActivitySummaryDataProvider:(id)provider monthDateInterval:(id)interval sixMonthDateInterval:(id)dateInterval completion:(id)completion;
- (id)_chartDataSourceQueryDataFromSummaries:(id)summaries;
- (id)_dateRangeFromInterval:(id)interval;
- (void)dealloc;
- (void)gatherData;
@end

@implementation _ActivityRemoteDataGatherer

- (_ActivityRemoteDataGatherer)initWithActivitySummaryDataProvider:(id)provider monthDateInterval:(id)interval sixMonthDateInterval:(id)dateInterval completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  intervalCopy = interval;
  dateIntervalCopy = dateInterval;
  completionCopy = completion;
  v25.receiver = self;
  v25.super_class = _ActivityRemoteDataGatherer;
  v15 = [(_ActivityRemoteDataGatherer *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_monthDateInterval, interval);
    objc_storeStrong(&v16->_sixMonthDateInterval, dateInterval);
    v17 = [completionCopy copy];
    completion = v16->_completion;
    v16->_completion = v17;

    objc_storeStrong(&v16->_activitySummaryProvider, provider);
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
      selfCopy = self;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HKInteractiveChartActivityController.m" lineNumber:2657 description:@"Gathering remote data must be done from the main thread due to restrictions imposed by HKActivitySummaryDataProvider"];
}

- (id)_dateRangeFromInterval:(id)interval
{
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];

  v6 = [HKValueRange valueRangeWithMinValue:startDate maxValue:endDate];

  return v6;
}

- (id)_chartDataSourceQueryDataFromSummaries:(id)summaries
{
  v3 = [HKInteractiveChartActivityController _codableActivitySummaryDataFromSummaries:summaries];
  v4 = objc_alloc_init(HKCodableChartDataSourceQueryData);
  data = [v3 data];
  [(HKCodableChartDataSourceQueryData *)v4 setQueryDataObject:data];

  [(HKCodableChartDataSourceQueryData *)v4 setType:10];
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  name = [localTimeZone name];
  [(HKCodableChartDataSourceQueryData *)v4 setTimeZoneName:name];

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v9 = [currentLocale objectForKey:*MEMORY[0x1E695D958]];

  if (v9)
  {
    -[HKCodableChartDataSourceQueryData setFirstWeekday:](v4, "setFirstWeekday:", [v9 firstWeekday]);
  }

  return v4;
}

@end