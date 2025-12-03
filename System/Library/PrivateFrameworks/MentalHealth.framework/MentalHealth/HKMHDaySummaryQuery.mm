@interface HKMHDaySummaryQuery
+ (void)configureClientInterface:(id)interface;
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (HKMHDaySummaryQuery)initWithDayIndexRange:(id)range gregorianCalendar:(id)calendar ascending:(BOOL)ascending limit:(int64_t)limit resultsHandler:(id)handler;
- (void)client_deliverDaySummaries:(id)summaries clearPending:(BOOL)pending isFinalBatch:(BOOL)batch queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKMHDaySummaryQuery

- (HKMHDaySummaryQuery)initWithDayIndexRange:(id)range gregorianCalendar:(id)calendar ascending:(BOOL)ascending limit:(int64_t)limit resultsHandler:(id)handler
{
  var1 = range.var1;
  var0 = range.var0;
  calendarCopy = calendar;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = HKMHDaySummaryQuery;
  v16 = [(HKQuery *)&v21 _initWithObjectType:0 predicate:0];
  v17 = v16;
  if (v16)
  {
    v16->_dayIndexRange.start = var0;
    v16->_dayIndexRange.duration = var1;
    objc_storeStrong(&v16->_gregorianCalendar, calendar);
    v17->_ascending = ascending;
    v17->_limit = limit;
    v18 = [handlerCopy copy];
    resultsHandler = v17->_resultsHandler;
    v17->_resultsHandler = v18;
  }

  return v17;
}

- (void)client_deliverDaySummaries:(id)summaries clearPending:(BOOL)pending isFinalBatch:(BOOL)batch queryUUID:(id)d
{
  summariesCopy = summaries;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__HKMHDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke;
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

void __86__HKMHDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEBUG))
  {
    __86__HKMHDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_cold_1(a1, v2);
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
      v13[2] = __86__HKMHDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_292;
      v13[3] = &unk_2798A9958;
      v13[4] = v11;
      v14 = v7;
      v15 = v10;
      [v11 queue_dispatchToClientForUUID:v12 shouldDeactivate:1 block:v13];
    }
  }
}

uint64_t __86__HKMHDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_292(void *a1)
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
  v5.super_class = HKMHDaySummaryQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setDayIndexRange:{self->_dayIndexRange.start, self->_dayIndexRange.duration, v5.receiver, v5.super_class}];
  [configurationCopy setGregorianCalendar:self->_gregorianCalendar];
  [configurationCopy setAscending:self->_ascending];
  [configurationCopy setLimit:self->_limit];
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKMHDaySummaryQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x259C8F310](self->_resultsHandler);
  clientQueue = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HKMHDaySummaryQuery_queue_deliverError___block_invoke;
  block[3] = &unk_2798A99A8;
  v10 = errorCopy;
  v11 = v5;
  block[4] = self;
  v7 = errorCopy;
  v8 = v5;
  dispatch_async(clientQueue, block);
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = HKMHDaySummaryQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_resultsHandler)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCE1C8] format:{@"%@ resultsHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKMHDaySummaryQuery;
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

void __86__HKMHDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_cold_1(uint64_t a1, void *a2)
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