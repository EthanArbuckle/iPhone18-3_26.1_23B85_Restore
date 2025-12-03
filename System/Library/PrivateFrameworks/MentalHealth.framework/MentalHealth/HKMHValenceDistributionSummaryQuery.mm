@interface HKMHValenceDistributionSummaryQuery
+ (void)configureClientInterface:(id)interface;
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (HKMHValenceDistributionSummaryQuery)initWithDayIndexRange:(id)range gregorianCalendar:(id)calendar predicate:(id)predicate options:(unint64_t)options ascending:(BOOL)ascending limit:(int64_t)limit resultsHandler:(id)handler;
- (void)client_deliverValenceDistributionSummaries:(id)summaries clearPending:(BOOL)pending isFinalBatch:(BOOL)batch queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKMHValenceDistributionSummaryQuery

- (HKMHValenceDistributionSummaryQuery)initWithDayIndexRange:(id)range gregorianCalendar:(id)calendar predicate:(id)predicate options:(unint64_t)options ascending:(BOOL)ascending limit:(int64_t)limit resultsHandler:(id)handler
{
  var1 = range.var1;
  var0 = range.var0;
  calendarCopy = calendar;
  handlerCopy = handler;
  v17 = MEMORY[0x277CCDA38];
  predicateCopy = predicate;
  stateOfMindType = [v17 stateOfMindType];
  v26.receiver = self;
  v26.super_class = HKMHValenceDistributionSummaryQuery;
  v20 = [(HKQuery *)&v26 _initWithObjectType:stateOfMindType predicate:predicateCopy];

  if (v20)
  {
    v20->_dayIndexRange.start = var0;
    v20->_dayIndexRange.duration = var1;
    v21 = [calendarCopy copy];
    gregorianCalendar = v20->_gregorianCalendar;
    v20->_gregorianCalendar = v21;

    v20->_options = options;
    v20->_ascending = ascending;
    v20->_limit = limit;
    v23 = [handlerCopy copy];
    resultsHandler = v20->_resultsHandler;
    v20->_resultsHandler = v23;
  }

  return v20;
}

- (void)client_deliverValenceDistributionSummaries:(id)summaries clearPending:(BOOL)pending isFinalBatch:(BOOL)batch queryUUID:(id)d
{
  summariesCopy = summaries;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __118__HKMHValenceDistributionSummaryQuery_client_deliverValenceDistributionSummaries_clearPending_isFinalBatch_queryUUID___block_invoke;
  v15[3] = &unk_2798A9980;
  v15[4] = self;
  v16 = summariesCopy;
  pendingCopy = pending;
  batchCopy = batch;
  v17 = dCopy;
  v13 = dCopy;
  v14 = summariesCopy;
  dispatch_async(queue, v15);
}

void __118__HKMHValenceDistributionSummaryQuery_client_deliverValenceDistributionSummaries_clearPending_isFinalBatch_queryUUID___block_invoke(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEBUG))
  {
    __118__HKMHValenceDistributionSummaryQuery_client_deliverValenceDistributionSummaries_clearPending_isFinalBatch_queryUUID___block_invoke_cold_1(a1, v2);
  }

  v3 = *(*(a1 + 32) + 160);
  if (v3 && *(a1 + 56) != 1)
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

  if (*(a1 + 57) == 1)
  {
    v7 = *(*(a1 + 32) + 160);
    v8 = *(a1 + 32);
    v9 = *(v8 + 160);
    *(v8 + 160) = 0;

    v10 = MEMORY[0x259C8F310](*(*(a1 + 32) + 152));
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __118__HKMHValenceDistributionSummaryQuery_client_deliverValenceDistributionSummaries_clearPending_isFinalBatch_queryUUID___block_invoke_293;
      v13[3] = &unk_2798A9958;
      v13[4] = v11;
      v14 = v7;
      v15 = v10;
      [v11 queue_dispatchToClientForUUID:v12 shouldDeactivate:1 block:v13];
    }
  }
}

uint64_t __118__HKMHValenceDistributionSummaryQuery_client_deliverValenceDistributionSummaries_clearPending_isFinalBatch_queryUUID___block_invoke_293(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
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
    v16 = 138543874;
    v17 = v5;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_25895E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Delivering %@ summaries: %@", &v16, 0x20u);
  }

  v12 = a1[5];
  v13 = a1[4];
  result = (*(a1[6] + 16))();
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKMHValenceDistributionSummaryQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setDayIndexRange:{self->_dayIndexRange.start, self->_dayIndexRange.duration, v5.receiver, v5.super_class}];
  [configurationCopy setGregorianCalendar:self->_gregorianCalendar];
  [configurationCopy setOptions:self->_options];
  [configurationCopy setAscending:self->_ascending];
  [configurationCopy setLimit:self->_limit];
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKMHValenceDistributionSummaryQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverValenceDistributionSummaries_clearPending_isFinalBatch_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x259C8F310](self->_resultsHandler);
  clientQueue = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HKMHValenceDistributionSummaryQuery_queue_deliverError___block_invoke;
  block[3] = &unk_2798A9958;
  block[4] = self;
  v10 = errorCopy;
  v11 = v5;
  v7 = v5;
  v8 = errorCopy;
  dispatch_async(clientQueue, block);
}

uint64_t __58__HKMHValenceDistributionSummaryQuery_queue_deliverError___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = a1[5];
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    v7 = v5;
    _os_log_impl(&dword_25895E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Throwing error: %{public}@", &v10, 0x16u);
  }

  result = (*(a1[6] + 16))(a1[6], a1[4], 0, a1[5]);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = HKMHValenceDistributionSummaryQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_resultsHandler)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCE1C8] format:{@"%@ resultsHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKMHValenceDistributionSummaryQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
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

void __118__HKMHValenceDistributionSummaryQuery_client_deliverValenceDistributionSummaries_clearPending_isFinalBatch_queryUUID___block_invoke_cold_1(uint64_t a1, void *a2)
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
  v11 = [v9 numberWithInteger:{objc_msgSend(v10, "dayIndexRange")}];
  v12 = MEMORY[0x277CCABB0];
  v13 = [*(a1 + 40) lastObject];
  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "dayIndexRange")}];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 57)];
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
  _os_log_debug_impl(&dword_25895E000, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] Received batch of %@ summaries (%@ - %@), clear pending: %@, is final: %@", buf, 0x3Eu);

  v17 = *MEMORY[0x277D85DE8];
}

@end