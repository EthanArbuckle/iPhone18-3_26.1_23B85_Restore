@interface HKMCAnalysisQuery
- (HKMCAnalysisQuery)initWithForceAnalysis:(BOOL)a3 updateHandler:(id)a4;
- (void)client_deliverAnalysis:(id)a3 queryUUID:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKMCAnalysisQuery

- (HKMCAnalysisQuery)initWithForceAnalysis:(BOOL)a3 updateHandler:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HKMCAnalysisQuery;
  v7 = [(HKQuery *)&v12 _initWithObjectType:0 predicate:0];
  v8 = v7;
  if (v7)
  {
    v7->_forceAnalysis = a3;
    v9 = [v6 copy];
    updateHandler = v8->_updateHandler;
    v8->_updateHandler = v9;
  }

  return v8;
}

- (void)client_deliverAnalysis:(id)a3 queryUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HKMCAnalysisQuery_client_deliverAnalysis_queryUUID___block_invoke;
  block[3] = &unk_2796D4E80;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __54__HKMCAnalysisQuery_client_deliverAnalysis_queryUUID___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x253087260](*(*(a1 + 32) + 152));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54__HKMCAnalysisQuery_client_deliverAnalysis_queryUUID___block_invoke_2;
    v5[3] = &unk_2796D4E58;
    v5[4] = v3;
    v6 = *(a1 + 48);
    v7 = v2;
    [v3 queue_dispatchToClientForUUID:v4 shouldDeactivate:0 block:v5];
  }
}

uint64_t __54__HKMCAnalysisQuery_client_deliverAnalysis_queryUUID___block_invoke_2(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = a1[5];
    v7 = v5;
    v8 = HKSensitiveLogItem();
    v13 = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Delivering updated analysis: %@", &v13, 0x16u);
  }

  v9 = a1[5];
  v10 = a1[4];
  result = (*(a1[6] + 16))();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)queue_populateConfiguration:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HKMCAnalysisQuery;
  v4 = a3;
  [(HKQuery *)&v12 queue_populateConfiguration:v4];
  [v4 setForceAnalysis:{self->_forceAnalysis, v12.receiver, v12.super_class}];

  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(HKQuery *)self debugIdentifier];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_forceAnalysis];
    *buf = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_2518FC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Configured with forced analysis: %{public}@", buf, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
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
    block[2] = __40__HKMCAnalysisQuery_queue_deliverError___block_invoke;
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
  v3.super_class = HKMCAnalysisQuery;
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