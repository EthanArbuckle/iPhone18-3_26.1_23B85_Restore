@interface HKChartQueryDataGenerationOperation
- (HKChartQueryDataGenerationOperation)initWithHealthStore:(id)a3 dataSource:(id)a4 startDate:(id)a5 endDate:(id)a6 statisticsInterval:(id)a7 operationDescription:(id)a8 completion:(id)a9;
- (void)completedWithResults:(id)a3 error:(id)a4;
- (void)startOperationWithCompletion:(id)a3;
- (void)stopOperation;
@end

@implementation HKChartQueryDataGenerationOperation

- (HKChartQueryDataGenerationOperation)initWithHealthStore:(id)a3 dataSource:(id)a4 startDate:(id)a5 endDate:(id)a6 statisticsInterval:(id)a7 operationDescription:(id)a8 completion:(id)a9
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v27.receiver = self;
  v27.super_class = HKChartQueryDataGenerationOperation;
  v19 = [(HKFetchOperation *)&v27 initWithOperationDescription:a8];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_healthStore, a3);
    objc_storeStrong(&v20->_dataSource, a4);
    objc_storeStrong(&v20->_startDate, a5);
    objc_storeStrong(&v20->_endDate, a6);
    objc_storeStrong(&v20->_statisticsInterval, a7);
    v21 = _Block_copy(v18);
    clientCompletion = v20->_clientCompletion;
    v20->_clientCompletion = v21;
  }

  return v20;
}

- (void)startOperationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _Block_copy(v4);
  fetchOperationManager = self->_fetchOperationManager;
  self->_fetchOperationManager = v5;

  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_dataSource);
  v7 = [[HKHealthQueryChartCacheQueryRequest alloc] initWithStartDate:self->_startDate endDate:self->_endDate statisticsInterval:self->_statisticsInterval];
  dataSource = self->_dataSource;
  healthStore = self->_healthStore;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__HKChartQueryDataGenerationOperation_startOperationWithCompletion___block_invoke;
  v12[3] = &unk_1E81B88E0;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  v10 = [(HKHealthQueryChartCacheDataSource *)dataSource generateSharableQueryDataForRequest:v7 healthStore:healthStore completionHandler:v12];
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = v10;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __68__HKChartQueryDataGenerationOperation_startOperationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__HKChartQueryDataGenerationOperation_startOperationWithCompletion___block_invoke_2;
  v9[3] = &unk_1E81B88B8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v7 = v5;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = v6;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
}

void __68__HKChartQueryDataGenerationOperation_startOperationWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 32))
  {
    v2 = objc_loadWeakRetained((a1 + 56));
    v3 = [v2 chartPointsFromQueryData:*(a1 + 32) dataIsFromRemoteSource:0];
    [WeakRetained completedWithResults:v3 error:*(a1 + 40)];
  }

  else
  {
    [WeakRetained completedWithResults:0 error:*(a1 + 40)];
  }
}

- (void)stopOperation
{
  cancelHandler = self->_cancelHandler;
  if (cancelHandler)
  {
    cancelHandler[2](cancelHandler, a2);
    v4 = self->_cancelHandler;
    self->_cancelHandler = 0;
  }

  clientCompletion = self->_clientCompletion;
  self->_clientCompletion = 0;

  fetchOperationManager = self->_fetchOperationManager;
  self->_fetchOperationManager = 0;
}

- (void)completedWithResults:(id)a3 error:(id)a4
{
  v12 = a3;
  v6 = a4;
  clientCompletion = self->_clientCompletion;
  if (clientCompletion)
  {
    clientCompletion[2](clientCompletion, self, v12, v6);
    v8 = self->_clientCompletion;
    self->_clientCompletion = 0;
  }

  fetchOperationManager = self->_fetchOperationManager;
  if (fetchOperationManager)
  {
    fetchOperationManager[2](fetchOperationManager, v6 == 0, v6);
    v10 = self->_fetchOperationManager;
    self->_fetchOperationManager = 0;
  }

  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = 0;
}

@end