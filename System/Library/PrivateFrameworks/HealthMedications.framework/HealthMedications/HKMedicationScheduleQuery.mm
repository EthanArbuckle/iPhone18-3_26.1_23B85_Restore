@interface HKMedicationScheduleQuery
+ (void)configureClientInterface:(id)interface;
- (HKMedicationScheduleQuery)initWithPredicate:(id)predicate limit:(unint64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler;
- (void)client_deliverSchedules:(id)schedules queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKMedicationScheduleQuery

- (HKMedicationScheduleQuery)initWithPredicate:(id)predicate limit:(unint64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler
{
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = HKMedicationScheduleQuery;
  v11 = [(HKQuery *)&v18 _initWithObjectType:0 predicate:0];
  v12 = v11;
  if (v11)
  {
    v11->_limit = limit;
    v13 = [descriptorsCopy copy];
    sortDescriptors = v12->_sortDescriptors;
    v12->_sortDescriptors = v13;

    v15 = [handlerCopy copy];
    resultsHandler = v12->_resultsHandler;
    v12->_resultsHandler = v15;
  }

  return v12;
}

- (void)client_deliverSchedules:(id)schedules queryUUID:(id)d
{
  schedulesCopy = schedules;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HKMedicationScheduleQuery_client_deliverSchedules_queryUUID___block_invoke;
  block[3] = &unk_2796CAB78;
  block[4] = self;
  v12 = dCopy;
  v13 = schedulesCopy;
  v9 = schedulesCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __63__HKMedicationScheduleQuery_client_deliverSchedules_queryUUID___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x2530840C0](*(*(a1 + 32) + 152));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__HKMedicationScheduleQuery_client_deliverSchedules_queryUUID___block_invoke_2;
    v8[3] = &unk_2796CAB50;
    v6 = v2;
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:1 block:v8];
  }
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKMedicationScheduleQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setLimit:{self->_limit, v5.receiver, v5.super_class}];
  [configurationCopy setSortDescriptors:self->_sortDescriptors];
}

+ (void)configureClientInterface:(id)interface
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___HKMedicationScheduleQuery;
  interfaceCopy = interface;
  objc_msgSendSuper2(&v7, sel_configureClientInterface_, interfaceCopy);
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0, v7.receiver, v7.super_class}];
  [interfaceCopy setClasses:v6 forSelector:sel_client_deliverSchedules_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x2530840C0](self->_resultsHandler);
  clientQueue = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HKMedicationScheduleQuery_queue_deliverError___block_invoke;
  block[3] = &unk_2796CAB50;
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
  v3.super_class = HKMedicationScheduleQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_resultsHandler)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCE1C8] format:{@"%@ resultsHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKMedicationScheduleQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

@end