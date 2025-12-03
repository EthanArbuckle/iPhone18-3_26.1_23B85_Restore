@interface HKChartQueryDataGenerationOperation
- (HKChartQueryDataGenerationOperation)initWithHealthStore:(id)store dataSource:(id)source startDate:(id)date endDate:(id)endDate statisticsInterval:(id)interval operationDescription:(id)description completion:(id)completion;
- (void)completedWithResults:(id)results error:(id)error;
- (void)startOperationWithCompletion:(id)completion;
- (void)stopOperation;
@end

@implementation HKChartQueryDataGenerationOperation

- (HKChartQueryDataGenerationOperation)initWithHealthStore:(id)store dataSource:(id)source startDate:(id)date endDate:(id)endDate statisticsInterval:(id)interval operationDescription:(id)description completion:(id)completion
{
  storeCopy = store;
  sourceCopy = source;
  dateCopy = date;
  endDateCopy = endDate;
  intervalCopy = interval;
  completionCopy = completion;
  v27.receiver = self;
  v27.super_class = HKChartQueryDataGenerationOperation;
  v19 = [(HKFetchOperation *)&v27 initWithOperationDescription:description];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_healthStore, store);
    objc_storeStrong(&v20->_dataSource, source);
    objc_storeStrong(&v20->_startDate, date);
    objc_storeStrong(&v20->_endDate, endDate);
    objc_storeStrong(&v20->_statisticsInterval, interval);
    v21 = _Block_copy(completionCopy);
    clientCompletion = v20->_clientCompletion;
    v20->_clientCompletion = v21;
  }

  return v20;
}

- (void)startOperationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _Block_copy(completionCopy);
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

- (void)completedWithResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  clientCompletion = self->_clientCompletion;
  if (clientCompletion)
  {
    clientCompletion[2](clientCompletion, self, resultsCopy, errorCopy);
    v8 = self->_clientCompletion;
    self->_clientCompletion = 0;
  }

  fetchOperationManager = self->_fetchOperationManager;
  if (fetchOperationManager)
  {
    fetchOperationManager[2](fetchOperationManager, errorCopy == 0, errorCopy);
    v10 = self->_fetchOperationManager;
    self->_fetchOperationManager = 0;
  }

  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = 0;
}

@end