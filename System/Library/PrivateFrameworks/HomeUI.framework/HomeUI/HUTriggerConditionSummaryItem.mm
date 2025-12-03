@interface HUTriggerConditionSummaryItem
- (HUTriggerConditionSummaryItem)initWithConditions:(id)conditions home:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUTriggerConditionSummaryItem

- (HUTriggerConditionSummaryItem)initWithConditions:(id)conditions home:(id)home
{
  conditionsCopy = conditions;
  homeCopy = home;
  v12.receiver = self;
  v12.super_class = HUTriggerConditionSummaryItem;
  v9 = [(HUTriggerConditionSummaryItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conditions, conditions);
    objc_storeStrong(&v10->_home, home);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_alloc(MEMORY[0x277D145A0]);
  v6 = MEMORY[0x277CBEB98];
  conditions = [(HUTriggerConditionSummaryItem *)self conditions];
  v8 = [v6 setWithArray:conditions];
  home = [(HUTriggerConditionSummaryItem *)self home];
  v10 = [v5 initWithConditions:v8 home:home];

  reloadItems = [v10 reloadItems];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__HUTriggerConditionSummaryItem__subclass_updateWithOptions___block_invoke;
  v15[3] = &unk_277DC3678;
  v15[4] = self;
  v16 = optionsCopy;
  v12 = optionsCopy;
  v13 = [reloadItems flatMap:v15];

  return v13;
}

id __61__HUTriggerConditionSummaryItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 allItems];
  v4 = [v3 allObjects];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__HUTriggerConditionSummaryItem__subclass_updateWithOptions___block_invoke_2;
  v17[3] = &unk_277DC3608;
  v17[4] = *(a1 + 32);
  v5 = [v4 sortedArrayUsingComparator:v17];

  v6 = [*(a1 + 40) objectForKeyedSubscript:@"triggerConditionSummaryStyle"];
  v7 = v6;
  if (!v6)
  {
    v6 = &unk_282492420;
  }

  v8 = [v6 unsignedIntegerValue];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__HUTriggerConditionSummaryItem__subclass_updateWithOptions___block_invoke_5;
  v14[3] = &unk_277DC3630;
  v15 = v5;
  v16 = v8;
  v9 = v5;
  v10 = [v9 na_map:v14];
  v11 = [MEMORY[0x277D2C900] combineAllFutures:v10];
  v12 = [v11 flatMap:&__block_literal_global_252];

  return v12;
}

uint64_t __61__HUTriggerConditionSummaryItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D14CE8];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 conditions];
  v9 = [v4 comparatorWithSortedObjects:v8];
  v10 = [v7 condition];

  v11 = [v6 condition];

  v12 = (v9)[2](v9, v10, v11);
  return v12;
}

id __61__HUTriggerConditionSummaryItem__subclass_updateWithOptions___block_invoke_5(uint64_t a1, void *a2)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 firstObject];

  if (v5 == v4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 5;
  }

  v7 = *MEMORY[0x277D13B98];
  v15[0] = &unk_282492438;
  v8 = *MEMORY[0x277D13BA0];
  v14[0] = v7;
  v14[1] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v15[1] = v9;
  v14[2] = *MEMORY[0x277D13BA8];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v15[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v12 = [v4 updateWithOptions:v11];

  return v12;
}

id __61__HUTriggerConditionSummaryItem__subclass_updateWithOptions___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  if ([v2 count])
  {
    v4 = [v2 na_map:&__block_literal_global_19_1];
    if (_MergedGlobals_2_1 != -1)
    {
      dispatch_once(&_MergedGlobals_2_1, &__block_literal_global_25_4);
    }

    v5 = qword_27C838060;
    v6 = [v5 stringForObjectValue:v4];
    [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13F60]];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v7 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v7;
}

void __61__HUTriggerConditionSummaryItem__subclass_updateWithOptions___block_invoke_4()
{
  v0 = objc_alloc_init(MEMORY[0x277D14798]);
  v1 = qword_27C838060;
  qword_27C838060 = v0;
}

@end