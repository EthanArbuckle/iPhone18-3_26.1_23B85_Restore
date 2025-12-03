@interface HKRemoteCardioFitnessDataSource
- (HKRemoteCardioFitnessDataSource)initWithUnitController:(id)controller displayType:(id)type healthStore:(id)store;
- (id)_cardioFitnessUserInfoCreationBlockWithAge:(int64_t)age biologicalSex:(int64_t)sex;
- (id)_userInfoBlockWithUnitController:(id)controller displayType:(id)type;
- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source;
- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler;
@end

@implementation HKRemoteCardioFitnessDataSource

- (HKRemoteCardioFitnessDataSource)initWithUnitController:(id)controller displayType:(id)type healthStore:(id)store
{
  controllerCopy = controller;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = HKRemoteCardioFitnessDataSource;
  v10 = [(HKQuantityTypeDataSource *)&v14 initWithUnitController:controllerCopy options:2 displayType:typeCopy healthStore:store];
  v11 = v10;
  if (v10)
  {
    v12 = [(HKRemoteCardioFitnessDataSource *)v10 _userInfoBlockWithUnitController:controllerCopy displayType:typeCopy];
    [(HKQuantityTypeDataSource *)v11 setUserInfoCreationBlock:v12];
  }

  return v11;
}

- (id)_userInfoBlockWithUnitController:(id)controller displayType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__HKRemoteCardioFitnessDataSource__userInfoBlockWithUnitController_displayType___block_invoke;
  v11[3] = &unk_1E81B6288;
  v12 = controllerCopy;
  v13 = typeCopy;
  v7 = typeCopy;
  v8 = controllerCopy;
  v9 = _Block_copy(v11);

  return v9;
}

HKInteractiveChartSinglePointData *__80__HKRemoteCardioFitnessDataSource__userInfoBlockWithUnitController_displayType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) unitForDisplayType:*(a1 + 40)];
  v5 = [v3 averageQuantity];
  [v5 doubleValueForUnit:v4];
  v7 = v6;

  v8 = [v3 recordCount];
  v9 = objc_alloc_init(HKInteractiveChartSinglePointData);
  [(HKInteractiveChartSinglePointData *)v9 setValue:v7];
  [(HKInteractiveChartSinglePointData *)v9 setUnit:v4];
  v10 = [v3 minQuantity];
  if (v10)
  {
    v11 = v10;
    v12 = [v3 maxQuantity];

    if (v12)
    {
      [(HKInteractiveChartSinglePointData *)v9 setRepresentsRange:1];
      v13 = [v3 minQuantity];
      [v13 doubleValueForUnit:v4];
      [(HKInteractiveChartSinglePointData *)v9 setMinValue:?];

      v14 = [v3 maxQuantity];
      [v14 doubleValueForUnit:v4];
      [(HKInteractiveChartSinglePointData *)v9 setMaxValue:?];

      v8 = [v3 recordCount];
    }
  }

  [(HKInteractiveChartSinglePointData *)v9 setRecordCount:v8];
  v15 = [v3 statisticsInterval];
  [(HKInteractiveChartSinglePointData *)v9 setStatisticsInterval:v15];

  return v9;
}

- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler
{
  requestCopy = request;
  storeCopy = store;
  handlerCopy = handler;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __101__HKRemoteCardioFitnessDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke;
  v24[3] = &unk_1E81B6B68;
  v25 = requestCopy;
  v28 = handlerCopy;
  v11 = storeCopy;
  v26 = v11;
  selfCopy = self;
  v12 = handlerCopy;
  v13 = requestCopy;
  v14 = [(HKQuantityTypeDataSource *)self queriesForRequest:v13 completionHandler:v24];
  firstObject = [v14 firstObject];
  [v11 executeQuery:firstObject];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __101__HKRemoteCardioFitnessDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_303;
  v21[3] = &unk_1E81B5AD0;
  v22 = v11;
  v23 = v14;
  v16 = v14;
  v17 = v11;
  v18 = _Block_copy(v21);
  v19 = _Block_copy(v18);

  return v19;
}

void __101__HKRemoteCardioFitnessDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
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
          v12 = *MEMORY[0x1E696BDF0];
          v13 = [v7 localizedDescription];
          *buf = 138412802;
          v30 = v11;
          v31 = 2112;
          v32 = v12;
          v33 = 2112;
          v34 = v13;
          _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_INFO, "[RemoteCharting]_%@_%@: query returned successfully with error: %@", buf, 0x20u);
        }
      }
    }

    v14 = [v5 hk_map:&__block_literal_global_15];
    v15 = objc_alloc_init(HKCodableChartQuantityDataSourceQueryData);
    v16 = objc_alloc_init(HKCodableStatisticsCollection);
    [(HKCodableChartQuantityDataSourceQueryData *)v15 setStatisticsCollection:v16];

    v17 = [v14 mutableCopy];
    v18 = [(HKCodableChartQuantityDataSourceQueryData *)v15 statisticsCollection];
    [v18 setStatistics:v17];

    v19 = objc_alloc(MEMORY[0x1E696C160]);
    v20 = [v19 initWithFeatureIdentifier:*MEMORY[0x1E696B888] healthStore:*(a1 + 40)];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __101__HKRemoteCardioFitnessDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2;
    v23[3] = &unk_1E81B6B40;
    v24 = *(a1 + 40);
    v25 = v15;
    v26 = *(a1 + 48);
    v27 = *(a1 + 32);
    v28 = *(a1 + 56);
    v21 = v15;
    [v20 isCurrentOnboardingVersionCompletedWithCompletion:v23];
  }

  else
  {
    _HKInitializeLogging();
    v22 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __101__HKRemoteCardioFitnessDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(a1, v7, v22);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __101__HKRemoteCardioFitnessDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 BOOLValue];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __101__HKRemoteCardioFitnessDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2_cold_1(v6, v8);
    }

    v7 = 0;
  }

  v9 = objc_alloc_init(HKCodableChartCardioFitnessQueryData);
  v10 = MEMORY[0x1E696BF78];
  v11 = [MEMORY[0x1E695DF00] now];
  v12 = [v10 cardioFitnessPropertiesForDate:v11 healthStore:*(a1 + 32)];

  if (v7 && v12)
  {
    [(HKCodableChartCardioFitnessQueryData *)v9 setCardioFitnessLevelEnabled:1];
    -[HKCodableChartCardioFitnessQueryData setBiologicalSex:](v9, "setBiologicalSex:", [v12 biologicalSex]);
    v13 = [v12 age];
  }

  else
  {
    [(HKCodableChartCardioFitnessQueryData *)v9 setCardioFitnessLevelEnabled:0];
    [(HKCodableChartCardioFitnessQueryData *)v9 setBiologicalSex:0];
    v13 = 0;
  }

  [(HKCodableChartCardioFitnessQueryData *)v9 setAge:v13];
  [(HKCodableChartCardioFitnessQueryData *)v9 setQuantityData:*(a1 + 40)];
  v14 = *(a1 + 48);
  v15 = [*(a1 + 56) startDate];
  v16 = [*(a1 + 56) endDate];
  v17 = [*(a1 + 56) statisticsInterval];
  v18 = [(HKCodableChartCardioFitnessQueryData *)v9 data];
  v19 = [v14 codableQueryDataWithType:12 startDate:v15 endDate:v16 statisticsInterval:v17 queryDataObject:v18];

  (*(*(a1 + 64) + 16))();
}

void __101__HKRemoteCardioFitnessDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_303(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) firstObject];
  [v1 stopQuery:v2];
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

  v9 = [HKCodableChartCardioFitnessQueryData alloc];
  queryDataObject = [dataCopy queryDataObject];
  v11 = [(HKCodableChartCardioFitnessQueryData *)v9 initWithData:queryDataObject];

  if ([(HKCodableChartCardioFitnessQueryData *)v11 cardioFitnessLevelEnabled])
  {
    v12 = [(HKRemoteCardioFitnessDataSource *)self _cardioFitnessUserInfoCreationBlockWithAge:[(HKCodableChartCardioFitnessQueryData *)v11 age] biologicalSex:[(HKCodableChartCardioFitnessQueryData *)v11 biologicalSex]];
    [(HKQuantityTypeDataSource *)self setUserInfoCreationBlock:v12];
  }

  v13 = objc_alloc_init(HKGraphSeriesDataBlock);
  quantityData = [(HKCodableChartCardioFitnessQueryData *)v11 quantityData];
  statisticsCollection = [quantityData statisticsCollection];
  statistics = [statisticsCollection statistics];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __83__HKRemoteCardioFitnessDataSource_chartPointsFromQueryData_dataIsFromRemoteSource___block_invoke;
  v20[3] = &unk_1E81B6B90;
  v21 = v8;
  v17 = v8;
  v18 = [statistics hk_map:v20];
  [(HKGraphSeriesDataBlock *)v13 setChartPoints:v18];

  return v13;
}

- (id)_cardioFitnessUserInfoCreationBlockWithAge:(int64_t)age biologicalSex:(int64_t)sex
{
  v6 = [MEMORY[0x1E696C510] unitFromString:@"ml/kg*min"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__HKRemoteCardioFitnessDataSource__cardioFitnessUserInfoCreationBlockWithAge_biologicalSex___block_invoke;
  aBlock[3] = &unk_1E81B6BB8;
  v11 = v6;
  sexCopy = sex;
  ageCopy = age;
  v7 = v6;
  v8 = _Block_copy(aBlock);

  return v8;
}

HKInteractiveChartCardioFitnessData *__92__HKRemoteCardioFitnessDataSource__cardioFitnessUserInfoCreationBlockWithAge_biologicalSex___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(HKInteractiveChartCardioFitnessData);
  v5 = [v3 averageQuantity];
  [v5 doubleValueForUnit:a1[4]];
  v7 = v6;

  [(HKInteractiveChartSinglePointData *)v4 setValue:v7];
  [(HKInteractiveChartSinglePointData *)v4 setUnit:a1[4]];
  v8 = [v3 minQuantity];
  if (v8)
  {
    v9 = v8;
    v10 = [v3 maxQuantity];

    if (v10)
    {
      [(HKInteractiveChartSinglePointData *)v4 setRepresentsRange:1];
      v11 = [v3 minQuantity];
      [v11 doubleValueForUnit:a1[4]];
      [(HKInteractiveChartSinglePointData *)v4 setMinValue:?];

      v12 = [v3 maxQuantity];
      [v12 doubleValueForUnit:a1[4]];
      [(HKInteractiveChartSinglePointData *)v4 setMaxValue:?];
    }
  }

  -[HKInteractiveChartSinglePointData setRecordCount:](v4, "setRecordCount:", [v3 recordCount]);
  v13 = [v3 statisticsInterval];
  [(HKInteractiveChartSinglePointData *)v4 setStatisticsInterval:v13];

  v14 = [HKCardioFitnessUtilities cardioFitnessLevelForVO2Max:a1[5] biologicalSex:a1[6] age:v7];
  [(HKInteractiveChartCardioFitnessData *)v4 setBiologicalSex:a1[5]];
  [(HKInteractiveChartCardioFitnessData *)v4 setAge:a1[6]];
  [(HKInteractiveChartCardioFitnessData *)v4 setClassification:v14];
  -[HKInteractiveChartCardioFitnessData setSampleCount:](v4, "setSampleCount:", [v3 recordCount]);

  return v4;
}

void __101__HKRemoteCardioFitnessDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = HKStringForChartDataSourceQueryRequestAudience([*(a1 + 32) audience]);
  v6 = *MEMORY[0x1E696BDF0];
  v7 = [a2 localizedDescription];
  v8 = 138412802;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "[RemoteCharting]_%@_%@: unable to fetch results from query with error: %@", &v8, 0x20u);
}

void __101__HKRemoteCardioFitnessDataSource_generateSharableQueryDataForRequest_healthStore_completionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Error determining onboarding status for Cardio Fitness: %@", &v2, 0xCu);
}

@end