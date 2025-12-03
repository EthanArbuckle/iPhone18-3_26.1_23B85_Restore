@interface HKMedicationScheduleItemQuery
+ (void)configureClientInterface:(id)interface;
- (HKMedicationScheduleItemQuery)initWithFromDate:(id)date toDate:(id)toDate identifier:(id)identifier sortDescriptors:(id)descriptors resultsHandler:(id)handler;
- (void)client_deliverScheduleItems:(id)items queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKMedicationScheduleItemQuery

- (HKMedicationScheduleItemQuery)initWithFromDate:(id)date toDate:(id)toDate identifier:(id)identifier sortDescriptors:(id)descriptors resultsHandler:(id)handler
{
  dateCopy = date;
  toDateCopy = toDate;
  identifierCopy = identifier;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  v29.receiver = self;
  v29.super_class = HKMedicationScheduleItemQuery;
  v17 = [(HKQuery *)&v29 _initWithObjectType:0 predicate:0];
  if (v17)
  {
    v18 = [dateCopy copy];
    fromDate = v17->_fromDate;
    v17->_fromDate = v18;

    v20 = [toDateCopy copy];
    toDate = v17->_toDate;
    v17->_toDate = v20;

    v22 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v22;

    v24 = [descriptorsCopy copy];
    sortDescriptors = v17->_sortDescriptors;
    v17->_sortDescriptors = v24;

    v26 = [handlerCopy copy];
    resultsHandler = v17->_resultsHandler;
    v17->_resultsHandler = v26;
  }

  return v17;
}

- (void)client_deliverScheduleItems:(id)items queryUUID:(id)d
{
  itemsCopy = items;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HKMedicationScheduleItemQuery_client_deliverScheduleItems_queryUUID___block_invoke;
  block[3] = &unk_2796CAB78;
  block[4] = self;
  v12 = dCopy;
  v13 = itemsCopy;
  v9 = itemsCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __71__HKMedicationScheduleItemQuery_client_deliverScheduleItems_queryUUID___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x2530840C0](*(*(a1 + 32) + 152));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__HKMedicationScheduleItemQuery_client_deliverScheduleItems_queryUUID___block_invoke_2;
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
  v5.super_class = HKMedicationScheduleItemQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setFromDate:{self->_fromDate, v5.receiver, v5.super_class}];
  [configurationCopy setToDate:self->_toDate];
  [configurationCopy setIdentifier:self->_identifier];
  [configurationCopy setSortDescriptors:self->_sortDescriptors];
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKMedicationScheduleItemQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverScheduleItems_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x2530840C0](self->_resultsHandler);
  clientQueue = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HKMedicationScheduleItemQuery_queue_deliverError___block_invoke;
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
  v3.super_class = HKMedicationScheduleItemQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_resultsHandler)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCE1C8] format:{@"%@ resultsHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKMedicationScheduleItemQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

@end