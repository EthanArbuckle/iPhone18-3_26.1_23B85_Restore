@interface HKMHMostPrevalentDomainsQuery
+ (void)configureClientInterface:(id)interface;
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (HKMHMostPrevalentDomainsQuery)initWithDayIndexRange:(id)range gregorianCalendar:(id)calendar predicate:(id)predicate resultsHandler:(id)handler;
- (void)client_deliverMostPrevalentDomains:(id)domains queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKMHMostPrevalentDomainsQuery

- (HKMHMostPrevalentDomainsQuery)initWithDayIndexRange:(id)range gregorianCalendar:(id)calendar predicate:(id)predicate resultsHandler:(id)handler
{
  var1 = range.var1;
  var0 = range.var0;
  calendarCopy = calendar;
  handlerCopy = handler;
  v14 = MEMORY[0x277CCDA38];
  predicateCopy = predicate;
  stateOfMindType = [v14 stateOfMindType];
  v21.receiver = self;
  v21.super_class = HKMHMostPrevalentDomainsQuery;
  v17 = [(HKQuery *)&v21 _initWithObjectType:stateOfMindType predicate:predicateCopy];

  if (v17)
  {
    v17->_dayIndexRange.start = var0;
    v17->_dayIndexRange.duration = var1;
    objc_storeStrong(&v17->_gregorianCalendar, calendar);
    v18 = [handlerCopy copy];
    resultsHandler = v17->_resultsHandler;
    v17->_resultsHandler = v18;
  }

  return v17;
}

- (void)client_deliverMostPrevalentDomains:(id)domains queryUUID:(id)d
{
  domainsCopy = domains;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HKMHMostPrevalentDomainsQuery_client_deliverMostPrevalentDomains_queryUUID___block_invoke;
  block[3] = &unk_2798A98E0;
  block[4] = self;
  v12 = dCopy;
  v13 = domainsCopy;
  v9 = domainsCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __78__HKMHMostPrevalentDomainsQuery_client_deliverMostPrevalentDomains_queryUUID___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    *buf = 138543362;
    v15 = objc_opt_class();
    v5 = v15;
    _os_log_impl(&dword_25895E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received MostPrevalentDomains", buf, 0xCu);
  }

  v6 = MEMORY[0x259C8F310](*(*(a1 + 32) + 152));
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__HKMHMostPrevalentDomainsQuery_client_deliverMostPrevalentDomains_queryUUID___block_invoke_292;
    v11[3] = &unk_2798A98B8;
    v11[4] = v8;
    v13 = v6;
    v12 = *(a1 + 48);
    [v8 queue_dispatchToClientForUUID:v9 shouldDeactivate:1 block:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __78__HKMHMostPrevalentDomainsQuery_client_deliverMostPrevalentDomains_queryUUID___block_invoke_292(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v9 = 138543362;
    v10 = objc_opt_class();
    v5 = v10;
    _os_log_impl(&dword_25895E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Delivering MostPrevalentDomains", &v9, 0xCu);
  }

  v6 = a1[5];
  result = (*(a1[6] + 16))(a1[6], a1[4]);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKMHMostPrevalentDomainsQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setDayIndexRange:{self->_dayIndexRange.start, self->_dayIndexRange.duration, v5.receiver, v5.super_class}];
  [configurationCopy setGregorianCalendar:self->_gregorianCalendar];
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKMHMostPrevalentDomainsQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverMostPrevalentDomains_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x259C8F310](self->_resultsHandler);
  clientQueue = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HKMHMostPrevalentDomainsQuery_queue_deliverError___block_invoke;
  block[3] = &unk_2798A98B8;
  v10 = errorCopy;
  v11 = v5;
  block[4] = self;
  v7 = errorCopy;
  v8 = v5;
  dispatch_async(clientQueue, block);
}

uint64_t __52__HKMHMostPrevalentDomainsQuery_queue_deliverError___block_invoke(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v9 = 138543362;
    v10 = objc_opt_class();
    v5 = v10;
    _os_log_impl(&dword_25895E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Throwing error", &v9, 0xCu);
  }

  v6 = a1[5];
  result = (*(a1[6] + 16))(a1[6], a1[4]);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = HKMHMostPrevalentDomainsQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_resultsHandler)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCE1C8] format:{@"%@ resultsHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKMHMostPrevalentDomainsQuery;
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

@end