@interface HKMedicationClusterQuery
+ (void)configureClientInterface:(id)a3;
- (HKMedicationClusterQuery)initWithMachineReadableCode:(id)a3 codeAttributeType:(int64_t)a4 resultsHandler:(id)a5;
- (HKMedicationClusterQuery)initWithScanResult:(id)a3 limit:(int64_t)a4 resultsHandler:(id)a5;
- (HKMedicationClusterQuery)initWithTextSearchTokens:(id)a3 limit:(int64_t)a4 resultsHandler:(id)a5;
- (id)initForCHRImportWithExistingMedications:(id)a3 sinceDate:(id)a4 limit:(int64_t)a5 resultsHandler:(id)a6;
- (void)client_deliverResults:(id)a3 queryUUID:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
@end

@implementation HKMedicationClusterQuery

- (HKMedicationClusterQuery)initWithScanResult:(id)a3 limit:(int64_t)a4 resultsHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HKMedicationClusterQuery;
  v11 = [(HKQuery *)&v16 _initWithObjectType:0 predicate:0];
  v12 = v11;
  if (v11)
  {
    v11->_queryType = 1;
    objc_storeStrong(&v11->_scanResult, a3);
    v12->_limit = a4;
    v13 = [v10 copy];
    resultsHandler = v12->_resultsHandler;
    v12->_resultsHandler = v13;
  }

  return v12;
}

- (HKMedicationClusterQuery)initWithMachineReadableCode:(id)a3 codeAttributeType:(int64_t)a4 resultsHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HKMedicationClusterQuery;
  v11 = [(HKQuery *)&v16 _initWithObjectType:0 predicate:0];
  v12 = v11;
  if (v11)
  {
    v11->_queryType = 2;
    objc_storeStrong(&v11->_machineReadableCode, a3);
    v12->_codeAttributeType = a4;
    v13 = [v10 copy];
    resultsHandler = v12->_resultsHandler;
    v12->_resultsHandler = v13;
  }

  return v12;
}

- (HKMedicationClusterQuery)initWithTextSearchTokens:(id)a3 limit:(int64_t)a4 resultsHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HKMedicationClusterQuery;
  v11 = [(HKQuery *)&v16 _initWithObjectType:0 predicate:0];
  v12 = v11;
  if (v11)
  {
    v11->_queryType = 3;
    objc_storeStrong(&v11->_textSearchTokens, a3);
    v12->_limit = a4;
    v13 = [v10 copy];
    resultsHandler = v12->_resultsHandler;
    v12->_resultsHandler = v13;
  }

  return v12;
}

- (id)initForCHRImportWithExistingMedications:(id)a3 sinceDate:(id)a4 limit:(int64_t)a5 resultsHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = HKMedicationClusterQuery;
  v14 = [(HKQuery *)&v19 _initWithObjectType:0 predicate:0];
  v15 = v14;
  if (v14)
  {
    v14[19] = 4;
    objc_storeStrong(v14 + 25, a3);
    objc_storeStrong(v15 + 26, a4);
    v15[20] = a5;
    v16 = [v13 copy];
    v17 = v15[27];
    v15[27] = v16;
  }

  return v15;
}

- (void)client_deliverResults:(id)a3 queryUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HKMedicationClusterQuery_client_deliverResults_queryUUID___block_invoke;
  block[3] = &unk_2796CAB78;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
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

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x2530840C0](self->_resultsHandler);
  v6 = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HKMedicationClusterQuery_queue_deliverError___block_invoke;
  block[3] = &unk_2796CAB50;
  v10 = v4;
  v11 = v5;
  block[4] = self;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)queue_populateConfiguration:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = HKMedicationClusterQuery;
  [(HKQuery *)&v6 queue_populateConfiguration:v4];
  [v4 setQueryType:self->_queryType];
  [v4 setLimit:self->_limit];
  queryType = self->_queryType;
  if (queryType > 2)
  {
    if (queryType == 3)
    {
      [v4 setTextSearchTokens:self->_textSearchTokens];
    }

    else if (queryType == 4)
    {
      [v4 setExistingMedications:self->_existingMedications];
      [v4 setSinceDate:self->_sinceDate];
    }
  }

  else if (queryType == 1)
  {
    [v4 setScanResult:self->_scanResult];
  }

  else if (queryType == 2)
  {
    [v4 setMachineReadableCode:self->_machineReadableCode];
    [v4 setCodeAttributeType:self->_codeAttributeType];
  }
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKMedicationClusterQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverResults_queryUUID_ argumentIndex:0 ofReply:0];
}

@end