@interface HKHRAFibBurdenHistogramQuery
- (HKHRAFibBurdenHistogramQuery)initWithResultsHandler:(id)handler;
- (void)client_deliverHistogramResult:(id)result queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKHRAFibBurdenHistogramQuery

- (HKHRAFibBurdenHistogramQuery)initWithResultsHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC950]];
  v10.receiver = self;
  v10.super_class = HKHRAFibBurdenHistogramQuery;
  v6 = [(HKQuery *)&v10 _initWithObjectType:v5 predicate:0];

  if (v6)
  {
    v7 = MEMORY[0x22AAC4F80](handlerCopy);
    resultsHandler = v6->_resultsHandler;
    v6->_resultsHandler = v7;
  }

  return v6;
}

- (void)client_deliverHistogramResult:(id)result queryUUID:(id)d
{
  resultCopy = result;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HKHRAFibBurdenHistogramQuery_client_deliverHistogramResult_queryUUID___block_invoke;
  block[3] = &unk_27860AA48;
  block[4] = self;
  v12 = dCopy;
  v13 = resultCopy;
  v9 = resultCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __72__HKHRAFibBurdenHistogramQuery_client_deliverHistogramResult_queryUUID___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x22AAC4F80](*(*(a1 + 32) + 152));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __72__HKHRAFibBurdenHistogramQuery_client_deliverHistogramResult_queryUUID___block_invoke_2;
    v5[3] = &unk_27860AA20;
    v5[4] = v3;
    v6 = *(a1 + 48);
    v7 = v2;
    [v3 queue_dispatchToClientForUUID:v4 shouldDeactivate:1 block:v5];
  }
}

uint64_t __72__HKHRAFibBurdenHistogramQuery_client_deliverHistogramResult_queryUUID___block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = HKSensitiveLogItem();
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_228942000, v2, OS_LOG_TYPE_DEFAULT, "[%@] Delivering histogram result: %@", &v10, 0x16u);
  }

  v6 = a1[5];
  v7 = a1[4];
  result = (*(a1[6] + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x22AAC4F80](self->_resultsHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__HKHRAFibBurdenHistogramQuery_queue_deliverError___block_invoke;
    block[3] = &unk_27860AA70;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = HKHRAFibBurdenHistogramQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_resultsHandler)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCE1C8] format:{@"%@ resultsHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
  MEMORY[0x2821F96F8]();
}

@end