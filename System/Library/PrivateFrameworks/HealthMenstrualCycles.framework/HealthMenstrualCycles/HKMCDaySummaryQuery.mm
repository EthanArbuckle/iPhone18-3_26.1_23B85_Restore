@interface HKMCDaySummaryQuery
+ (void)configureClientInterface:(id)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (HKMCDaySummaryQuery)initWithDayIndexRange:(id)a3 ascending:(BOOL)a4 limit:(int64_t)a5 resultsHandler:(id)a6;
- (void)client_deliverDaySummaries:(id)a3 clearPending:(BOOL)a4 isFinalBatch:(BOOL)a5 daySummaryAnchor:(id)a6 queryUUID:(id)a7;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKMCDaySummaryQuery

- (HKMCDaySummaryQuery)initWithDayIndexRange:(id)a3 ascending:(BOOL)a4 limit:(int64_t)a5 resultsHandler:(id)a6
{
  var1 = a3.var1;
  var0 = a3.var0;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = HKMCDaySummaryQuery;
  v12 = [(HKQuery *)&v17 _initWithObjectType:0 predicate:0];
  v13 = v12;
  if (v12)
  {
    v12->_dayIndexRange.start = var0;
    v12->_dayIndexRange.duration = var1;
    v12->_ascending = a4;
    v12->_limit = a5;
    v14 = [v11 copy];
    resultsHandler = v13->_resultsHandler;
    v13->_resultsHandler = v14;
  }

  return v13;
}

- (void)client_deliverDaySummaries:(id)a3 clearPending:(BOOL)a4 isFinalBatch:(BOOL)a5 daySummaryAnchor:(id)a6 queryUUID:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__HKMCDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_daySummaryAnchor_queryUUID___block_invoke;
  block[3] = &unk_2796D5370;
  block[4] = self;
  v20 = v12;
  v23 = a4;
  v24 = a5;
  v21 = v14;
  v22 = v13;
  v16 = v13;
  v17 = v14;
  v18 = v12;
  dispatch_async(v15, block);
}

void __103__HKMCDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_daySummaryAnchor_queryUUID___block_invoke(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEBUG))
  {
    __103__HKMCDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_daySummaryAnchor_queryUUID___block_invoke_cold_1(a1, v2);
  }

  v3 = *(*(a1 + 32) + 160);
  if (v3 && *(a1 + 64) != 1)
  {
    [v3 addObjectsFromArray:*(a1 + 40)];
  }

  else
  {
    v4 = [*(a1 + 40) mutableCopy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 160);
    *(v5 + 160) = v4;
  }

  if (*(a1 + 65) == 1)
  {
    v7 = *(*(a1 + 32) + 160);
    v8 = *(a1 + 32);
    v9 = *(v8 + 160);
    *(v8 + 160) = 0;

    v10 = MEMORY[0x253087260](*(*(a1 + 32) + 152));
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __103__HKMCDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_daySummaryAnchor_queryUUID___block_invoke_292;
      v13[3] = &unk_2796D5348;
      v13[4] = v11;
      v14 = v7;
      v16 = v10;
      v15 = *(a1 + 56);
      [v11 queue_dispatchToClientForUUID:v12 shouldDeactivate:1 block:v13];
    }
  }
}

uint64_t __103__HKMCDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_daySummaryAnchor_queryUUID___block_invoke_292(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = MEMORY[0x277CCABB0];
    v7 = a1[5];
    v8 = v5;
    v9 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
    v10 = a1[5];
    v11 = HKSensitiveLogItem();
    v17 = 138543874;
    v18 = v5;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Delivering %@ summaries: %@", &v17, 0x20u);
  }

  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  result = (*(a1[7] + 16))();
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMCDaySummaryQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setDayIndexRange:{self->_dayIndexRange.start, self->_dayIndexRange.duration, v5.receiver, v5.super_class}];
  [v4 setAscending:self->_ascending];
  [v4 setLimit:self->_limit];
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKMCDaySummaryQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverDaySummaries_clearPending_isFinalBatch_daySummaryAnchor_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x253087260](self->_resultsHandler);
  v6 = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HKMCDaySummaryQuery_queue_deliverError___block_invoke;
  block[3] = &unk_2796D4BF8;
  v10 = v4;
  v11 = v5;
  block[4] = self;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = HKMCDaySummaryQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_resultsHandler)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCE1C8] format:{@"%@ resultsHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMCDaySummaryQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange
{
  p_dayIndexRange = &self->_dayIndexRange;
  start = self->_dayIndexRange.start;
  duration = p_dayIndexRange->duration;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

void __103__HKMCDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_daySummaryAnchor_queryUUID___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = MEMORY[0x277CCABB0];
  v7 = *(a1 + 40);
  v18 = v5;
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 40) firstObject];
  v11 = [v9 numberWithInteger:{objc_msgSend(v10, "dayIndex")}];
  v12 = MEMORY[0x277CCABB0];
  v13 = [*(a1 + 40) lastObject];
  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "dayIndex")}];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 65)];
  *buf = 138544642;
  v20 = v5;
  v21 = 2112;
  v22 = v8;
  v23 = 2112;
  v24 = v11;
  v25 = 2112;
  v26 = v14;
  v27 = 2112;
  v28 = v15;
  v29 = 2112;
  v30 = v16;
  _os_log_debug_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] Received batch of %@ summaries (%@ - %@), clear pending: %@, is final: %@", buf, 0x3Eu);

  v17 = *MEMORY[0x277D85DE8];
}

@end