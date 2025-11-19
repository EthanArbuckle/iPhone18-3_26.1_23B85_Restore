@interface HFScheduleTypeItemProvider
- (HFScheduleTypeItemProvider)init;
- (HFScheduleTypeItemProvider)initWithScheduleBuilder:(id)a3;
- (id)reloadItems;
- (void)updateSelectedType:(unint64_t)a3;
@end

@implementation HFScheduleTypeItemProvider

- (HFScheduleTypeItemProvider)initWithScheduleBuilder:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HFScheduleTypeItemProvider;
  v6 = [(HFItemProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduleBuilder, a3);
    v8 = objc_opt_new();
    items = v7->_items;
    v7->_items = v8;

    v10 = [(HFScheduleTypeItemProvider *)v7 scheduleBuilder];
    v7->_selectedType = [v10 estimatedScheduleType];
  }

  return v7;
}

- (HFScheduleTypeItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithUser_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFScheduleTypeItemProvider.m" lineNumber:81 description:{@"%s is unavailable; use %@ instead", "-[HFScheduleTypeItemProvider init]", v5}];

  return 0;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  v3 = [(HFScheduleTypeItemProvider *)self scheduleTypes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__HFScheduleTypeItemProvider_reloadItems__block_invoke_3;
  v9[3] = &unk_277E017D0;
  objc_copyWeak(&v10, &location);
  v4 = [(HFItemProvider *)self reloadItemsWithObjects:v3 keyAdaptor:&__block_literal_global_222 itemAdaptor:&__block_literal_global_51_3 filter:0 itemMap:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HFScheduleTypeItemProvider_reloadItems__block_invoke_5;
  v7[3] = &unk_277DF30B8;
  objc_copyWeak(&v8, &location);
  v5 = [v4 flatMap:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v5;
}

uint64_t __41__HFScheduleTypeItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 type];

  return [v2 numberWithUnsignedInteger:v3];
}

HFScheduleTypeItem *__41__HFScheduleTypeItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained items];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__HFScheduleTypeItemProvider_reloadItems__block_invoke_4;
  v12[3] = &unk_277DF4B70;
  v6 = v3;
  v13 = v6;
  v7 = [v5 na_firstObjectPassingTest:v12];

  if (!v7)
  {
    v8 = [HFScheduleTypeItem alloc];
    v9 = [v6 unsignedIntegerValue];
    v10 = [WeakRetained scheduleBuilder];
    v7 = [(HFScheduleTypeItem *)v8 initWithScheduleType:v9 scheduleBuilder:v10];
  }

  return v7;
}

BOOL __41__HFScheduleTypeItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 type];
    v8 = v7 == [*(a1 + 32) unsignedIntegerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __41__HFScheduleTypeItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained items];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained items];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (void)updateSelectedType:(unint64_t)a3
{
  [(HFScheduleTypeItemProvider *)self setSelectedType:?];
  v5 = [(HFScheduleTypeItemProvider *)self items];
  v6 = [v5 allObjects];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HFScheduleTypeItemProvider_updateSelectedType___block_invoke;
  v7[3] = &__block_descriptor_40_e16_v16__0__HFItem_8l;
  v7[4] = a3;
  [v6 na_each:v7];
}

void __49__HFScheduleTypeItemProvider_updateSelectedType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v6 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setSelected:{objc_msgSend(v5, "type") == *(a1 + 32)}];
}

@end