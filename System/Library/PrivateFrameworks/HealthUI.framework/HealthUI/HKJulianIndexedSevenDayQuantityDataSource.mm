@interface HKJulianIndexedSevenDayQuantityDataSource
- (HKJulianIndexedSevenDayQuantityDataSource)initWithDisplayType:(id)type healthStore:(id)store quantityType:(id)quantityType unitController:(id)controller intervalUserInfoCreationBlock:(id)block;
- (HKJulianIndexedSevenDayQuantityDataSource)initWithDisplayType:(id)type healthStore:(id)store quantityType:(id)quantityType unitController:(id)controller singlePointUserInfoCreationBlock:(id)block;
- (id)_createIntervalChartPointFromDateInterval:(id)interval timeZoneName:(id)name yValue:(id)value metadata:(id)metadata;
- (id)_createSinglePointChartPointFromDateInterval:(id)interval statisticsInterval:(id)statisticsInterval timeZoneName:(id)name yValue:(id)value metadata:(id)metadata;
- (id)_intervalChartPointsWithSamples:(id)samples;
- (id)_singlePointChartPointsWithSamples:(id)samples statisticsInterval:(id)interval;
- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source;
- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler;
- (id)queriesForRequest:(id)request completionHandler:(id)handler;
- (id)queryDescription;
@end

@implementation HKJulianIndexedSevenDayQuantityDataSource

- (HKJulianIndexedSevenDayQuantityDataSource)initWithDisplayType:(id)type healthStore:(id)store quantityType:(id)quantityType unitController:(id)controller intervalUserInfoCreationBlock:(id)block
{
  quantityTypeCopy = quantityType;
  controllerCopy = controller;
  blockCopy = block;
  v24.receiver = self;
  v24.super_class = HKJulianIndexedSevenDayQuantityDataSource;
  v16 = [(HKHealthQueryChartCacheDataSource *)&v24 initWithDisplayType:type healthStore:store];
  v17 = v16;
  if (v16)
  {
    v16->_dataSourceType = 1;
    objc_storeStrong(&v16->_unitController, controller);
    objc_storeStrong(&v17->_quantityType, quantityType);
    v18 = _Block_copy(blockCopy);
    intervalUserInfoCreationBlock = v17->_intervalUserInfoCreationBlock;
    v17->_intervalUserInfoCreationBlock = v18;

    singlePointUserInfoCreationBlock = v17->_singlePointUserInfoCreationBlock;
    v17->_singlePointUserInfoCreationBlock = 0;

    v21 = objc_alloc_init(MEMORY[0x1E696BF70]);
    calendarCache = v17->_calendarCache;
    v17->_calendarCache = v21;
  }

  return v17;
}

- (HKJulianIndexedSevenDayQuantityDataSource)initWithDisplayType:(id)type healthStore:(id)store quantityType:(id)quantityType unitController:(id)controller singlePointUserInfoCreationBlock:(id)block
{
  quantityTypeCopy = quantityType;
  controllerCopy = controller;
  blockCopy = block;
  v24.receiver = self;
  v24.super_class = HKJulianIndexedSevenDayQuantityDataSource;
  v16 = [(HKHealthQueryChartCacheDataSource *)&v24 initWithDisplayType:type healthStore:store];
  v17 = v16;
  if (v16)
  {
    v16->_dataSourceType = 0;
    objc_storeStrong(&v16->_unitController, controller);
    objc_storeStrong(&v17->_quantityType, quantityType);
    intervalUserInfoCreationBlock = v17->_intervalUserInfoCreationBlock;
    v17->_intervalUserInfoCreationBlock = 0;

    v19 = _Block_copy(blockCopy);
    singlePointUserInfoCreationBlock = v17->_singlePointUserInfoCreationBlock;
    v17->_singlePointUserInfoCreationBlock = v19;

    v21 = objc_alloc_init(MEMORY[0x1E696BF70]);
    calendarCache = v17->_calendarCache;
    v17->_calendarCache = v21;
  }

  return v17;
}

- (id)queryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  displayType = [(HKHealthQueryChartCacheDataSource *)self displayType];
  localization = [displayType localization];
  displayName = [localization displayName];
  v6 = [v2 stringWithFormat:@"HKJulianIndexedSevenDayQuantity(%@)", displayName];

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
  quantityType = [(HKJulianIndexedSevenDayQuantityDataSource *)self quantityType];
  v23[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __81__HKJulianIndexedSevenDayQuantityDataSource_queriesForRequest_completionHandler___block_invoke;
  v20[3] = &unk_1E81B6D10;
  v20[4] = self;
  v21 = handlerCopy;
  v16 = handlerCopy;
  v17 = [v13 initWithSampleType:quantityType predicate:v11 limit:0 sortDescriptors:v15 resultsHandler:v20];

  [v17 setDebugIdentifier:@"charting (7-day julian)"];
  [v17 setIncludeAutomaticTimeZones:1];
  v22 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];

  return v18;
}

void __81__HKJulianIndexedSevenDayQuantityDataSource_queriesForRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
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
        __81__HKJulianIndexedSevenDayQuantityDataSource_queriesForRequest_completionHandler___block_invoke_cold_1(a1);
      }

      goto LABEL_8;
    }

    v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

    if (v14)
    {
      v13 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __81__HKJulianIndexedSevenDayQuantityDataSource_queriesForRequest_completionHandler___block_invoke_cold_2(a1, v10, v13);
      }

LABEL_8:
    }
  }

  v15 = objc_alloc_init(HKCodableSampleDataSourceQueryData);
  v16 = [v8 hk_map:&__block_literal_global_72];
  v17 = [v16 mutableCopy];
  [(HKCodableSampleDataSourceQueryData *)v15 setSamples:v17];

  (*(*(a1 + 40) + 16))();
}

- (id)_createSinglePointChartPointFromDateInterval:(id)interval statisticsInterval:(id)statisticsInterval timeZoneName:(id)name yValue:(id)value metadata:(id)metadata
{
  intervalCopy = interval;
  statisticsIntervalCopy = statisticsInterval;
  nameCopy = name;
  valueCopy = value;
  metadataCopy = metadata;
  calendarCache = [(HKJulianIndexedSevenDayQuantityDataSource *)self calendarCache];
  v16 = calendarCache;
  if (nameCopy)
  {
    v17 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:nameCopy];
    currentCalendar = [v16 calendarForTimeZone:v17];
  }

  else
  {
    currentCalendar = [calendarCache currentCalendar];
  }

  calendarCache2 = [(HKJulianIndexedSevenDayQuantityDataSource *)self calendarCache];
  currentCalendar2 = [calendarCache2 currentCalendar];

  v21 = objc_alloc(MEMORY[0x1E696AB80]);
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v24 = [v21 initWithStartDate:startDate endDate:endDate];

  v44 = v24;
  v45 = currentCalendar2;
  v46 = currentCalendar;
  v25 = [MEMORY[0x1E696AB80] hk_julianDayDateIntervalFromOpenUpperBoundDateInterval:v24 sourceCalendar:currentCalendar localCalendar:currentCalendar2];
  v26 = v25;
  if (v25)
  {
    v41 = nameCopy;
    v43 = intervalCopy;
    startDate2 = [v25 startDate];
    endDate2 = [v26 endDate];
    v29 = objc_alloc_init(HKQuantityTypeDataSourceValue);
    [(HKQuantityTypeDataSourceValue *)v29 setStartDate:startDate2];
    [(HKQuantityTypeDataSourceValue *)v29 setEndDate:endDate2];
    quantityType = [(HKJulianIndexedSevenDayQuantityDataSource *)self quantityType];
    [(HKQuantityTypeDataSourceValue *)v29 setQuantityType:quantityType];

    [(HKQuantityTypeDataSourceValue *)v29 setAverageQuantity:valueCopy];
    [(HKQuantityTypeDataSourceValue *)v29 setRecordCount:1];
    v42 = statisticsIntervalCopy;
    [(HKQuantityTypeDataSourceValue *)v29 setStatisticsInterval:statisticsIntervalCopy];
    singlePointUserInfoCreationBlock = [(HKJulianIndexedSevenDayQuantityDataSource *)self singlePointUserInfoCreationBlock];
    displayType = [(HKHealthQueryChartCacheDataSource *)self displayType];
    unitController = [(HKJulianIndexedSevenDayQuantityDataSource *)self unitController];
    v34 = [unitController unitForDisplayType:displayType];

    v35 = [HKHealthChartPoint alloc];
    displayType2 = [(HKHealthQueryChartCacheDataSource *)self displayType];
    v37 = [(HKHealthChartPoint *)v35 initWithDataSourceValue:v29 options:2 unit:v34 displayType:displayType2];

    if (singlePointUserInfoCreationBlock)
    {
      v38 = (singlePointUserInfoCreationBlock)[2](singlePointUserInfoCreationBlock, v29, metadataCopy);
      [(HKHealthChartPoint *)v37 setUserInfo:v38];
    }

    statisticsIntervalCopy = v42;
    intervalCopy = v43;
    nameCopy = v41;
  }

  else
  {
    _HKInitializeLogging();
    v39 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      [HKJulianIndexedSevenDayQuantityDataSource _createSinglePointChartPointFromDateInterval:v39 statisticsInterval:? timeZoneName:? yValue:? metadata:?];
    }

    v37 = 0;
  }

  return v37;
}

- (id)_singlePointChartPointsWithSamples:(id)samples statisticsInterval:(id)interval
{
  intervalCopy = interval;
  v7 = MEMORY[0x1E695DF70];
  samplesCopy = samples;
  v9 = objc_alloc_init(v7);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__HKJulianIndexedSevenDayQuantityDataSource__singlePointChartPointsWithSamples_statisticsInterval___block_invoke;
  v14[3] = &unk_1E81BA468;
  v14[4] = self;
  v15 = intervalCopy;
  v16 = v9;
  v10 = v9;
  v11 = intervalCopy;
  [samplesCopy enumerateObjectsUsingBlock:v14];

  v12 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v12 setChartPoints:v10];

  return v12;
}

void __99__HKJulianIndexedSevenDayQuantityDataSource__singlePointChartPointsWithSamples_statisticsInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_alloc(MEMORY[0x1E696AB80]);
    v6 = [v4 startDate];
    v7 = [v4 endDate];
    v8 = [v5 initWithStartDate:v6 endDate:v7];

    v9 = [v4 _timeZoneName];
    v10 = [v9 hk_copyNonEmptyString];

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = [v4 quantity];
      v14 = [v4 metadata];
      v15 = [v11 _createSinglePointChartPointFromDateInterval:v8 statisticsInterval:v12 timeZoneName:v10 yValue:v13 metadata:v14];

      if (v15)
      {
        [*(a1 + 48) addObject:v15];
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        __99__HKJulianIndexedSevenDayQuantityDataSource__singlePointChartPointsWithSamples_statisticsInterval___block_invoke_cold_2(v4);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v4 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __99__HKJulianIndexedSevenDayQuantityDataSource__singlePointChartPointsWithSamples_statisticsInterval___block_invoke_cold_1(a1);
    }
  }
}

- (id)_createIntervalChartPointFromDateInterval:(id)interval timeZoneName:(id)name yValue:(id)value metadata:(id)metadata
{
  intervalCopy = interval;
  nameCopy = name;
  valueCopy = value;
  metadataCopy = metadata;
  calendarCache = [(HKJulianIndexedSevenDayQuantityDataSource *)self calendarCache];
  v14 = calendarCache;
  if (nameCopy)
  {
    v15 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:nameCopy];
    currentCalendar = [v14 calendarForTimeZone:v15];
  }

  else
  {
    currentCalendar = [calendarCache currentCalendar];
  }

  calendarCache2 = [(HKJulianIndexedSevenDayQuantityDataSource *)self calendarCache];
  currentCalendar2 = [calendarCache2 currentCalendar];

  v19 = objc_alloc(MEMORY[0x1E696AB80]);
  startDate = [intervalCopy startDate];
  v40 = intervalCopy;
  endDate = [intervalCopy endDate];
  v22 = [v19 initWithStartDate:startDate endDate:endDate];

  v39 = currentCalendar;
  v23 = [MEMORY[0x1E696AB80] hk_julianDayDateIntervalFromOpenUpperBoundDateInterval:v22 sourceCalendar:currentCalendar localCalendar:currentCalendar2];
  v24 = v23;
  if (v23)
  {
    v38 = nameCopy;
    startDate2 = [v23 startDate];
    endDate2 = [v24 endDate];
    unitController = [(HKJulianIndexedSevenDayQuantityDataSource *)self unitController];
    displayType = [(HKHealthQueryChartCacheDataSource *)self displayType];
    v29 = [unitController unitForDisplayType:displayType];

    v30 = [HKJulianIndexedSevenDayQuantityChartPoint alloc];
    displayType2 = [(HKHealthQueryChartCacheDataSource *)self displayType];
    v32 = [(HKJulianIndexedSevenDayQuantityChartPoint *)v30 initWithStartDate:startDate2 endDate:endDate2 displayType:displayType2 unit:v29 quantity:valueCopy];

    intervalUserInfoCreationBlock = [(HKJulianIndexedSevenDayQuantityDataSource *)self intervalUserInfoCreationBlock];
    v34 = intervalUserInfoCreationBlock;
    if (intervalUserInfoCreationBlock)
    {
      v35 = (*(intervalUserInfoCreationBlock + 16))(intervalUserInfoCreationBlock, valueCopy, metadataCopy, startDate2, endDate2);
      [(HKJulianIndexedSevenDayQuantityChartPoint *)v32 setUserInfo:v35];
    }

    nameCopy = v38;
  }

  else
  {
    _HKInitializeLogging();
    v36 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      [HKJulianIndexedSevenDayQuantityDataSource _createSinglePointChartPointFromDateInterval:v36 statisticsInterval:? timeZoneName:? yValue:? metadata:?];
    }

    v32 = 0;
  }

  return v32;
}

- (id)_intervalChartPointsWithSamples:(id)samples
{
  v4 = MEMORY[0x1E695DF70];
  samplesCopy = samples;
  v6 = objc_alloc_init(v4);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __77__HKJulianIndexedSevenDayQuantityDataSource__intervalChartPointsWithSamples___block_invoke;
  v13 = &unk_1E81BA490;
  selfCopy = self;
  v15 = v6;
  v7 = v6;
  [samplesCopy enumerateObjectsUsingBlock:&v10];

  v8 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v8 setChartPoints:v7, v10, v11, v12, v13, selfCopy];

  return v8;
}

void __77__HKJulianIndexedSevenDayQuantityDataSource__intervalChartPointsWithSamples___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_alloc(MEMORY[0x1E696AB80]);
    v6 = [v4 startDate];
    v7 = [v4 endDate];
    v8 = [v5 initWithStartDate:v6 endDate:v7];

    v9 = [v4 _timeZoneName];
    v10 = [v9 hk_copyNonEmptyString];

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = [v4 quantity];
      v13 = [v4 metadata];
      v14 = [v11 _createIntervalChartPointFromDateInterval:v8 timeZoneName:v10 yValue:v12 metadata:v13];

      if (v14)
      {
        [*(a1 + 40) addObject:v14];
      }
    }

    else
    {
      _HKInitializeLogging();
      v15 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        __99__HKJulianIndexedSevenDayQuantityDataSource__singlePointChartPointsWithSamples_statisticsInterval___block_invoke_cold_2(v4);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v4 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __99__HKJulianIndexedSevenDayQuantityDataSource__singlePointChartPointsWithSamples_statisticsInterval___block_invoke_cold_1(a1);
    }
  }
}

- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler
{
  requestCopy = request;
  storeCopy = store;
  handlerCopy = handler;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __111__HKJulianIndexedSevenDayQuantityDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke;
  v25[3] = &unk_1E81B6D38;
  v26 = requestCopy;
  selfCopy = self;
  v28 = handlerCopy;
  v11 = handlerCopy;
  v12 = requestCopy;
  v13 = [(HKJulianIndexedSevenDayQuantityDataSource *)self queriesForRequest:v12 completionHandler:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __111__HKJulianIndexedSevenDayQuantityDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_317;
  v23[3] = &unk_1E81B6D60;
  v14 = storeCopy;
  v24 = v14;
  [v13 enumerateObjectsUsingBlock:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __111__HKJulianIndexedSevenDayQuantityDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2;
  v20[3] = &unk_1E81B5AD0;
  v21 = v13;
  v22 = v14;
  v15 = v14;
  v16 = v13;
  v17 = _Block_copy(v20);
  v18 = _Block_copy(v17);

  return v18;
}

void __111__HKJulianIndexedSevenDayQuantityDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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
      __111__HKJulianIndexedSevenDayQuantityDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(a1, v7);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __111__HKJulianIndexedSevenDayQuantityDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __111__HKJulianIndexedSevenDayQuantityDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_3;
  v2[3] = &unk_1E81B6D60;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsUsingBlock:v2];
}

- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source
{
  dataCopy = data;
  v6 = [HKCodableSampleDataSourceQueryData alloc];
  queryDataObject = [dataCopy queryDataObject];
  v8 = [(HKCodableSampleDataSourceQueryData *)v6 initWithData:queryDataObject];

  samples = [(HKCodableSampleDataSourceQueryData *)v8 samples];
  v10 = [samples hk_map:&__block_literal_global_322];
  v11 = [v10 copy];

  v12 = MEMORY[0x1E695DF10];
  statisticsInterval = [dataCopy statisticsInterval];

  v14 = [v12 hkui_dateComponentsWithCodableDateComponents:statisticsInterval];

  dataSourceType = [(HKJulianIndexedSevenDayQuantityDataSource *)self dataSourceType];
  if (dataSourceType)
  {
    if (dataSourceType != 1)
    {
      goto LABEL_6;
    }

    v16 = [(HKJulianIndexedSevenDayQuantityDataSource *)self _intervalChartPointsWithSamples:v11];
  }

  else
  {
    v16 = [(HKJulianIndexedSevenDayQuantityDataSource *)self _singlePointChartPointsWithSamples:v11 statisticsInterval:v14];
  }

  v12 = v16;
LABEL_6:

  return v12;
}

void __81__HKJulianIndexedSevenDayQuantityDataSource_queriesForRequest_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_2(a1) quantityType];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __81__HKJulianIndexedSevenDayQuantityDataSource_queriesForRequest_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = [OUTLINED_FUNCTION_3_2(a1) quantityType];
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(&dword_1C3942000, a3, OS_LOG_TYPE_DEBUG, "Encountered error querying for %{public}@: %{public}@", v5, 0x16u);
}

void __99__HKJulianIndexedSevenDayQuantityDataSource__singlePointChartPointsWithSamples_statisticsInterval___block_invoke_cold_1(uint64_t a1)
{
  v6 = [OUTLINED_FUNCTION_3_2(a1) quantityType];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __99__HKJulianIndexedSevenDayQuantityDataSource__singlePointChartPointsWithSamples_statisticsInterval___block_invoke_cold_2(void *a1)
{
  v2 = [a1 UUID];
  v3 = [a1 quantityType];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_1(&dword_1C3942000, v5, v6, "TimeZone is missing for sample (uuid: %{public}@) in weekly report data source for quantity type %{public}@", v7, v8, v9, v10, v11);
}

void __111__HKJulianIndexedSevenDayQuantityDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = HKStringForChartDataSourceQueryRequestAudience([*(a1 + 32) audience]);
  v5 = [*(*(a1 + 40) + 56) identifier];
  v11 = [a2 localizedDescription];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

@end