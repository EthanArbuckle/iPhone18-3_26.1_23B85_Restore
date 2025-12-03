@interface HKQuantityDistributionDataSource
+ (id)bucketSizeForBloodGlucoseWithUnit:(id)unit;
+ (id)bucketSizeForDisplayType:(id)type preferredUnit:(id)unit;
+ (id)bucketSizeForQuantityType:(id)type preferredUnit:(id)unit;
- (HKQuantityDistributionDataSource)initWithQuantityType:(id)type unitController:(id)controller healthStore:(id)store contextStyle:(int64_t)style predicate:(id)predicate options:(unint64_t)options baseDisplayType:(id)displayType specificStartDate:(id)self0 specificEndDate:(id)self1 userInfoCreationBlock:(id)self2;
- (id)_bucketDateForHistogramData:(id)data;
- (id)_dataBlockFromHistograms:(id)histograms;
- (id)_quickDate:(id)date;
- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source;
- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler;
- (id)queriesForRequest:(id)request completionHandler:(id)handler;
- (id)queryDescription;
@end

@implementation HKQuantityDistributionDataSource

- (HKQuantityDistributionDataSource)initWithQuantityType:(id)type unitController:(id)controller healthStore:(id)store contextStyle:(int64_t)style predicate:(id)predicate options:(unint64_t)options baseDisplayType:(id)displayType specificStartDate:(id)self0 specificEndDate:(id)self1 userInfoCreationBlock:(id)self2
{
  typeCopy = type;
  controllerCopy = controller;
  predicateCopy = predicate;
  displayTypeCopy = displayType;
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  v36.receiver = self;
  v36.super_class = HKQuantityDistributionDataSource;
  v20 = [(HKHealthQueryChartCacheDataSource *)&v36 initWithDisplayType:displayTypeCopy healthStore:store];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_quantityType, type);
    objc_storeStrong(&v21->_unitController, controller);
    v22 = [controllerCopy unitForDisplayType:displayTypeCopy];
    v23 = [HKQuantityDistributionDataSource bucketSizeForQuantityType:typeCopy preferredUnit:v22];
    [v23 doubleValue];
    v21->_bucketSize = v24;

    v21->_bucketAnchor = 0.0;
    v21->_contextStyle = style;
    objc_storeStrong(&v21->_predicate, predicate);
    v21->_options = options;
    objc_storeStrong(&v21->_specificStartDate, date);
    objc_storeStrong(&v21->_specificEndDate, endDate);
    preferredUnit = v21->_preferredUnit;
    v21->_preferredUnit = v22;
    v26 = v22;

    v27 = _Block_copy(blockCopy);
    userInfoCreationBlock = v21->_userInfoCreationBlock;
    v21->_userInfoCreationBlock = v27;
  }

  return v21;
}

+ (id)bucketSizeForQuantityType:(id)type preferredUnit:(id)unit
{
  typeCopy = type;
  unitCopy = unit;
  if ([typeCopy code] == 15)
  {
    [self bucketSizeForBloodGlucoseWithUnit:unitCopy];
  }

  else
  {
    HKQuantityDistributionBucketSizeForQuantityType(typeCopy);
  }
  v8 = ;

  return v8;
}

+ (id)bucketSizeForDisplayType:(id)type preferredUnit:(id)unit
{
  unitCopy = unit;
  objectType = [type objectType];
  v8 = [self bucketSizeForQuantityType:objectType preferredUnit:unitCopy];

  return v8;
}

+ (id)bucketSizeForBloodGlucoseWithUnit:(id)unit
{
  unitCopy = unit;
  _milligramsPerDeciliterUnit = [MEMORY[0x1E696C510] _milligramsPerDeciliterUnit];
  v7 = [unitCopy isEqual:_milligramsPerDeciliterUnit];

  v8 = 4.0;
  if ((v7 & 1) == 0)
  {
    _millimolesBloodGlucosePerLiterUnit = [MEMORY[0x1E696C510] _millimolesBloodGlucosePerLiterUnit];
    v10 = [unitCopy isEqual:_millimolesBloodGlucosePerLiterUnit];

    if (v10)
    {
      v8 = 0.2;
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      unitString = [unitCopy unitString];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HKQuantityDistributionDataSource.m" lineNumber:113 description:{@"Unsupported glucose unit: %@", unitString}];

      _HKInitializeLogging();
      v13 = *MEMORY[0x1E696B988];
      if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
      {
        [(HKQuantityDistributionDataSource *)v13 bucketSizeForBloodGlucoseWithUnit:unitCopy];
      }
    }
  }

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v8];

  return v14;
}

- (id)_quickDate:(id)date
{
  v3 = MEMORY[0x1E696AB78];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"MM/dd/YYYY-HH:mm:ss"];
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  [v5 setTimeZone:localTimeZone];

  v7 = [v5 stringFromDate:dateCopy];

  return v7;
}

- (id)queryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  quantityType = [(HKQuantityDistributionDataSource *)self quantityType];
  hk_localizedName = [quantityType hk_localizedName];
  v5 = [v2 stringWithFormat:@"HKQuantityDistribution(%@)", hk_localizedName];

  return v5;
}

- (id)queriesForRequest:(id)request completionHandler:(id)handler
{
  v41[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  specificStartDate = self->_specificStartDate;
  if (specificStartDate)
  {
    startDate = specificStartDate;
  }

  else
  {
    startDate = [requestCopy startDate];
  }

  v38 = startDate;
  specificEndDate = self->_specificEndDate;
  if (specificEndDate)
  {
    endDate = specificEndDate;
  }

  else
  {
    endDate = [requestCopy endDate];
  }

  v37 = endDate;
  displayType = [(HKHealthQueryChartCacheDataSource *)self displayType];
  presentation = [displayType presentation];
  [presentation adjustedDoubleForClientDouble:self->_bucketSize];
  v14 = v13;

  displayType2 = [(HKHealthQueryChartCacheDataSource *)self displayType];
  presentation2 = [displayType2 presentation];
  [presentation2 adjustedDoubleForClientDouble:self->_bucketAnchor];
  v18 = v17;

  unitController = [(HKQuantityDistributionDataSource *)self unitController];
  displayType3 = [(HKHealthQueryChartCacheDataSource *)self displayType];
  v34 = [unitController unitForDisplayType:displayType3];

  v21 = [MEMORY[0x1E696C348] quantityWithUnit:v34 doubleValue:v14];
  v22 = [MEMORY[0x1E696C348] quantityWithUnit:v34 doubleValue:v18];
  v23 = objc_alloc(MEMORY[0x1E696C658]);
  quantityType = [(HKQuantityDistributionDataSource *)self quantityType];
  contextStyle = self->_contextStyle;
  predicate = self->_predicate;
  startDate2 = [requestCopy startDate];
  [requestCopy statisticsInterval];
  v28 = v33 = requestCopy;
  options = self->_options;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __72__HKQuantityDistributionDataSource_queriesForRequest_completionHandler___block_invoke;
  v39[3] = &unk_1E81B7040;
  v40 = handlerCopy;
  v36 = handlerCopy;
  v30 = [v23 initWithQuantityType:quantityType startDate:v38 endDate:v37 contextStyle:contextStyle predicate:predicate anchorDate:startDate2 intervalComponents:v28 histogramAnchor:v22 histogramBucketSize:v21 options:options completionHandler:v39];

  [v30 setDebugIdentifier:@"charting (distribution)"];
  v41[0] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];

  return v31;
}

- (id)_dataBlockFromHistograms:(id)histograms
{
  v28 = *MEMORY[0x1E69E9840];
  histogramsCopy = histograms;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  unitController = [(HKQuantityDistributionDataSource *)self unitController];
  displayType = [(HKHealthQueryChartCacheDataSource *)self displayType];
  v8 = [unitController unitForDisplayType:displayType];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = histogramsCopy;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [HKQuantityDistributionChartPoint alloc];
        v15 = [(HKQuantityDistributionDataSource *)self _bucketDateForHistogramData:v13];
        bucketSize = self->_bucketSize;
        displayType2 = [(HKHealthQueryChartCacheDataSource *)self displayType];
        v18 = [(HKQuantityDistributionChartPoint *)v14 initWithHistogramData:v13 bucketDate:v15 bucketIncrement:v8 unit:displayType2 displayType:bucketSize];

        v19 = (*(self->_userInfoCreationBlock + 2))();
        [(HKQuantityDistributionChartPoint *)v18 setUserInfo:v19];

        [v5 addObject:v18];
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v20 setChartPoints:v5];

  return v20;
}

- (id)_bucketDateForHistogramData:(id)data
{
  v4 = MEMORY[0x1E696AB80];
  dataCopy = data;
  v6 = [v4 alloc];
  startDate = [dataCopy startDate];
  endDate = [dataCopy endDate];

  v9 = [v6 initWithStartDate:startDate endDate:endDate];
  if ([(HKHealthQueryChartCacheDataSource *)self queryAlignment]== 1)
  {
    [v9 duration];
    v11 = v10;
    hk_oneDay = [MEMORY[0x1E695DF10] hk_oneDay];
    [hk_oneDay hk_approximateDuration];
    v14 = v13;

    if (v11 >= v14)
    {
      hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
      v16 = [v9 hk_dateIntervalUnshiftedFromQueryAlignment:1 calendar:hk_gregorianCalendar];

      v9 = v16;
    }
  }

  startDate2 = [v9 startDate];
  endDate2 = [v9 endDate];
  v19 = HKUIMidDate(startDate2, endDate2);

  return v19;
}

- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler
{
  requestCopy = request;
  storeCopy = store;
  handlerCopy = handler;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __102__HKQuantityDistributionDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke;
  v25[3] = &unk_1E81B7088;
  v26 = requestCopy;
  selfCopy = self;
  v28 = handlerCopy;
  v11 = handlerCopy;
  v12 = requestCopy;
  v13 = [(HKQuantityDistributionDataSource *)self queriesForRequest:v12 completionHandler:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __102__HKQuantityDistributionDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2;
  v23[3] = &unk_1E81B6D60;
  v14 = storeCopy;
  v24 = v14;
  [v13 enumerateObjectsUsingBlock:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __102__HKQuantityDistributionDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_3;
  v20[3] = &unk_1E81B5AD0;
  v21 = v13;
  v22 = v14;
  v15 = v14;
  v16 = v13;
  v17 = _Block_copy(v20);
  v18 = _Block_copy(v17);

  return v18;
}

void __102__HKQuantityDistributionDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
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
          v24 = 138412802;
          v25 = v11;
          v26 = 2112;
          v27 = v12;
          v28 = 2112;
          v29 = v13;
          _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_INFO, "[RemoteCharting]_%@_%@: query returned successfully with error: %@", &v24, 0x20u);
        }
      }
    }

    v14 = [v5 hk_map:&__block_literal_global_332_1];
    v15 = objc_alloc_init(HKCodableChartQuantityDistributionDataSourceQueryData);
    v16 = [v14 mutableCopy];
    [(HKCodableChartQuantityDistributionDataSourceQueryData *)v15 setQuantityDistributionDatas:v16];

    v17 = *(a1 + 40);
    v18 = [*(a1 + 32) startDate];
    v19 = [*(a1 + 32) endDate];
    v20 = [*(a1 + 32) statisticsInterval];
    v21 = [(HKCodableChartQuantityDistributionDataSourceQueryData *)v15 data];
    v22 = [v17 codableQueryDataWithType:1 startDate:v18 endDate:v19 statisticsInterval:v20 queryDataObject:v21];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v23 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __102__HKQuantityDistributionDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(a1, v7, v23);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __102__HKQuantityDistributionDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __102__HKQuantityDistributionDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_4;
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

  v9 = self->_preferredUnit;
  v10 = [HKCodableChartQuantityDistributionDataSourceQueryData alloc];
  queryDataObject = [dataCopy queryDataObject];
  v12 = [(HKCodableChartQuantityDistributionDataSourceQueryData *)v10 initWithData:queryDataObject];
  quantityDistributionDatas = [(HKCodableChartQuantityDistributionDataSourceQueryData *)v12 quantityDistributionDatas];

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __84__HKQuantityDistributionDataSource_chartPointsFromQueryData_dataIsFromRemoteSource___block_invoke;
  v22 = &unk_1E81B70B0;
  v23 = v8;
  v24 = v9;
  v14 = v9;
  v15 = v8;
  v16 = [quantityDistributionDatas hk_map:&v19];
  v17 = [(HKQuantityDistributionDataSource *)self _dataBlockFromHistograms:v16, v19, v20, v21, v22];

  return v17;
}

+ (void)bucketSizeForBloodGlucoseWithUnit:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 unitString];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C3942000, v3, OS_LOG_TYPE_ERROR, "Unsupported glucose unit: %{public}@", &v5, 0xCu);
}

void __102__HKQuantityDistributionDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
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