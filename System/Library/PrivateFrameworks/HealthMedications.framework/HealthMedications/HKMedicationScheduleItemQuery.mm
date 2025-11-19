@interface HKMedicationScheduleItemQuery
+ (void)configureClientInterface:(id)a3;
- (HKMedicationScheduleItemQuery)initWithFromDate:(id)a3 toDate:(id)a4 identifier:(id)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7;
- (void)client_deliverScheduleItems:(id)a3 queryUUID:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKMedicationScheduleItemQuery

- (HKMedicationScheduleItemQuery)initWithFromDate:(id)a3 toDate:(id)a4 identifier:(id)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = HKMedicationScheduleItemQuery;
  v17 = [(HKQuery *)&v29 _initWithObjectType:0 predicate:0];
  if (v17)
  {
    v18 = [v12 copy];
    fromDate = v17->_fromDate;
    v17->_fromDate = v18;

    v20 = [v13 copy];
    toDate = v17->_toDate;
    v17->_toDate = v20;

    v22 = [v14 copy];
    identifier = v17->_identifier;
    v17->_identifier = v22;

    v24 = [v15 copy];
    sortDescriptors = v17->_sortDescriptors;
    v17->_sortDescriptors = v24;

    v26 = [v16 copy];
    resultsHandler = v17->_resultsHandler;
    v17->_resultsHandler = v26;
  }

  return v17;
}

- (void)client_deliverScheduleItems:(id)a3 queryUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HKMedicationScheduleItemQuery_client_deliverScheduleItems_queryUUID___block_invoke;
  block[3] = &unk_2796CAB78;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
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

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMedicationScheduleItemQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setFromDate:{self->_fromDate, v5.receiver, v5.super_class}];
  [v4 setToDate:self->_toDate];
  [v4 setIdentifier:self->_identifier];
  [v4 setSortDescriptors:self->_sortDescriptors];
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKMedicationScheduleItemQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverScheduleItems_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x2530840C0](self->_resultsHandler);
  v6 = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HKMedicationScheduleItemQuery_queue_deliverError___block_invoke;
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
  v3.super_class = HKMedicationScheduleItemQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_resultsHandler)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCE1C8] format:{@"%@ resultsHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMedicationScheduleItemQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

@end