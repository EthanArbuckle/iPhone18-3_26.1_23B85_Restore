@interface HKMedicationClusterQuery
+ (void)configureClientInterface:(id)interface;
- (HKMedicationClusterQuery)initWithMachineReadableCode:(id)code codeAttributeType:(int64_t)type resultsHandler:(id)handler;
- (HKMedicationClusterQuery)initWithScanResult:(id)result limit:(int64_t)limit resultsHandler:(id)handler;
- (HKMedicationClusterQuery)initWithTextSearchTokens:(id)tokens limit:(int64_t)limit resultsHandler:(id)handler;
- (id)initForCHRImportWithExistingMedications:(id)medications sinceDate:(id)date limit:(int64_t)limit resultsHandler:(id)handler;
- (void)client_deliverResults:(id)results queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
@end

@implementation HKMedicationClusterQuery

- (HKMedicationClusterQuery)initWithScanResult:(id)result limit:(int64_t)limit resultsHandler:(id)handler
{
  resultCopy = result;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = HKMedicationClusterQuery;
  v11 = [(HKQuery *)&v16 _initWithObjectType:0 predicate:0];
  v12 = v11;
  if (v11)
  {
    v11->_queryType = 1;
    objc_storeStrong(&v11->_scanResult, result);
    v12->_limit = limit;
    v13 = [handlerCopy copy];
    resultsHandler = v12->_resultsHandler;
    v12->_resultsHandler = v13;
  }

  return v12;
}

- (HKMedicationClusterQuery)initWithMachineReadableCode:(id)code codeAttributeType:(int64_t)type resultsHandler:(id)handler
{
  codeCopy = code;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = HKMedicationClusterQuery;
  v11 = [(HKQuery *)&v16 _initWithObjectType:0 predicate:0];
  v12 = v11;
  if (v11)
  {
    v11->_queryType = 2;
    objc_storeStrong(&v11->_machineReadableCode, code);
    v12->_codeAttributeType = type;
    v13 = [handlerCopy copy];
    resultsHandler = v12->_resultsHandler;
    v12->_resultsHandler = v13;
  }

  return v12;
}

- (HKMedicationClusterQuery)initWithTextSearchTokens:(id)tokens limit:(int64_t)limit resultsHandler:(id)handler
{
  tokensCopy = tokens;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = HKMedicationClusterQuery;
  v11 = [(HKQuery *)&v16 _initWithObjectType:0 predicate:0];
  v12 = v11;
  if (v11)
  {
    v11->_queryType = 3;
    objc_storeStrong(&v11->_textSearchTokens, tokens);
    v12->_limit = limit;
    v13 = [handlerCopy copy];
    resultsHandler = v12->_resultsHandler;
    v12->_resultsHandler = v13;
  }

  return v12;
}

- (id)initForCHRImportWithExistingMedications:(id)medications sinceDate:(id)date limit:(int64_t)limit resultsHandler:(id)handler
{
  medicationsCopy = medications;
  dateCopy = date;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = HKMedicationClusterQuery;
  v14 = [(HKQuery *)&v19 _initWithObjectType:0 predicate:0];
  v15 = v14;
  if (v14)
  {
    v14[19] = 4;
    objc_storeStrong(v14 + 25, medications);
    objc_storeStrong(v15 + 26, date);
    v15[20] = limit;
    v16 = [handlerCopy copy];
    v17 = v15[27];
    v15[27] = v16;
  }

  return v15;
}

- (void)client_deliverResults:(id)results queryUUID:(id)d
{
  resultsCopy = results;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HKMedicationClusterQuery_client_deliverResults_queryUUID___block_invoke;
  block[3] = &unk_2796CAB78;
  block[4] = self;
  v12 = dCopy;
  v13 = resultsCopy;
  v9 = resultsCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __60__HKMedicationClusterQuery_client_deliverResults_queryUUID___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x2530840C0](*(*(a1 + 32) + 216));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__HKMedicationClusterQuery_client_deliverResults_queryUUID___block_invoke_2;
    v8[3] = &unk_2796CAB50;
    v6 = v2;
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:1 block:v8];
  }
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x2530840C0](self->_resultsHandler);
  clientQueue = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HKMedicationClusterQuery_queue_deliverError___block_invoke;
  block[3] = &unk_2796CAB50;
  v10 = errorCopy;
  v11 = v5;
  block[4] = self;
  v7 = errorCopy;
  v8 = v5;
  dispatch_async(clientQueue, block);
}

- (void)queue_populateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6.receiver = self;
  v6.super_class = HKMedicationClusterQuery;
  [(HKQuery *)&v6 queue_populateConfiguration:configurationCopy];
  [configurationCopy setQueryType:self->_queryType];
  [configurationCopy setLimit:self->_limit];
  queryType = self->_queryType;
  if (queryType > 2)
  {
    if (queryType == 3)
    {
      [configurationCopy setTextSearchTokens:self->_textSearchTokens];
    }

    else if (queryType == 4)
    {
      [configurationCopy setExistingMedications:self->_existingMedications];
      [configurationCopy setSinceDate:self->_sinceDate];
    }
  }

  else if (queryType == 1)
  {
    [configurationCopy setScanResult:self->_scanResult];
  }

  else if (queryType == 2)
  {
    [configurationCopy setMachineReadableCode:self->_machineReadableCode];
    [configurationCopy setCodeAttributeType:self->_codeAttributeType];
  }
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKMedicationClusterQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverResults_queryUUID_ argumentIndex:0 ofReply:0];
}

@end