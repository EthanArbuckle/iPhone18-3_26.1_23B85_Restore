@interface HKMedicationScheduleQuery
+ (void)configureClientInterface:(id)a3;
- (HKMedicationScheduleQuery)initWithPredicate:(id)a3 limit:(unint64_t)a4 sortDescriptors:(id)a5 resultsHandler:(id)a6;
- (void)client_deliverSchedules:(id)a3 queryUUID:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKMedicationScheduleQuery

- (HKMedicationScheduleQuery)initWithPredicate:(id)a3 limit:(unint64_t)a4 sortDescriptors:(id)a5 resultsHandler:(id)a6
{
  v9 = a5;
  v10 = a6;
  v18.receiver = self;
  v18.super_class = HKMedicationScheduleQuery;
  v11 = [(HKQuery *)&v18 _initWithObjectType:0 predicate:0];
  v12 = v11;
  if (v11)
  {
    v11->_limit = a4;
    v13 = [v9 copy];
    sortDescriptors = v12->_sortDescriptors;
    v12->_sortDescriptors = v13;

    v15 = [v10 copy];
    resultsHandler = v12->_resultsHandler;
    v12->_resultsHandler = v15;
  }

  return v12;
}

- (void)client_deliverSchedules:(id)a3 queryUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HKMedicationScheduleQuery_client_deliverSchedules_queryUUID___block_invoke;
  block[3] = &unk_2796CAB78;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
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

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMedicationScheduleQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setLimit:{self->_limit, v5.receiver, v5.super_class}];
  [v4 setSortDescriptors:self->_sortDescriptors];
}

+ (void)configureClientInterface:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___HKMedicationScheduleQuery;
  v3 = a3;
  objc_msgSendSuper2(&v7, sel_configureClientInterface_, v3);
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0, v7.receiver, v7.super_class}];
  [v3 setClasses:v6 forSelector:sel_client_deliverSchedules_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x2530840C0](self->_resultsHandler);
  v6 = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HKMedicationScheduleQuery_queue_deliverError___block_invoke;
  block[3] = &unk_2796CAB50;
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
  v3.super_class = HKMedicationScheduleQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_resultsHandler)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCE1C8] format:{@"%@ resultsHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMedicationScheduleQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

@end