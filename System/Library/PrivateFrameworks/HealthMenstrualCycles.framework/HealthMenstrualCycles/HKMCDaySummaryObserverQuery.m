@interface HKMCDaySummaryObserverQuery
- (HKMCDaySummaryObserverQuery)initWithUpdateHandler:(id)a3;
- (void)client_deliverUpdateWithQueryUUID:(id)a3;
- (void)queue_deliverError:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKMCDaySummaryObserverQuery

- (HKMCDaySummaryObserverQuery)initWithUpdateHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKMCDaySummaryObserverQuery;
  v5 = [(HKQuery *)&v9 _initWithObjectType:0 predicate:0];
  if (v5)
  {
    v6 = [v4 copy];
    updateHandler = v5->_updateHandler;
    v5->_updateHandler = v6;
  }

  return v5;
}

- (void)client_deliverUpdateWithQueryUUID:(id)a3
{
  v4 = a3;
  v5 = [(HKQuery *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HKMCDaySummaryObserverQuery_client_deliverUpdateWithQueryUUID___block_invoke;
  v7[3] = &unk_2796D4BD0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__HKMCDaySummaryObserverQuery_client_deliverUpdateWithQueryUUID___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x253087260](*(*(a1 + 32) + 152));
  v3 = v2;
  if (v2)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__HKMCDaySummaryObserverQuery_client_deliverUpdateWithQueryUUID___block_invoke_2;
    v6[3] = &unk_2796D4BA8;
    v6[4] = v5;
    v7 = v2;
    [v5 queue_dispatchToClientForUUID:v4 shouldDeactivate:0 block:v6];
  }
}

uint64_t __65__HKMCDaySummaryObserverQuery_client_deliverUpdateWithQueryUUID___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v8 = 138543362;
    v9 = objc_opt_class();
    v5 = v9;
    _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Delivering update", &v8, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32));
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x253087260](self->_updateHandler);
  if (v5)
  {
    v6 = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HKMCDaySummaryObserverQuery_queue_deliverError___block_invoke;
    block[3] = &unk_2796D4BF8;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = HKMCDaySummaryObserverQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_updateHandler)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCE1C8] format:{@"%@ updateHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)a3
{
  updateHandler = self->_updateHandler;
  self->_updateHandler = 0;
  MEMORY[0x2821F96F8]();
}

@end