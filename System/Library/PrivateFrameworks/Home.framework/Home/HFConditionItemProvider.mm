@interface HFConditionItemProvider
- (HFConditionItemProvider)init;
- (HFConditionItemProvider)initWithConditions:(id)conditions home:(id)home;
- (id)reloadItems;
@end

@implementation HFConditionItemProvider

- (HFConditionItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithConditions_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFConditionItemProvider.m" lineNumber:26 description:{@"%s is unavailable; use %@ instead", "-[HFConditionItemProvider init]", v5}];

  return 0;
}

- (HFConditionItemProvider)initWithConditions:(id)conditions home:(id)home
{
  conditionsCopy = conditions;
  homeCopy = home;
  v14.receiver = self;
  v14.super_class = HFConditionItemProvider;
  v9 = [(HFItemProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conditions, conditions);
    objc_storeStrong(&v10->_home, home);
    v11 = [MEMORY[0x277CBEB58] set];
    conditionItems = v10->_conditionItems;
    v10->_conditionItems = v11;
  }

  return v10;
}

- (id)reloadItems
{
  home = [(HFConditionItemProvider *)self home];
  objc_initWeak(&location, self);
  conditions = [(HFConditionItemProvider *)self conditions];
  allObjects = [conditions allObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__HFConditionItemProvider_reloadItems__block_invoke_3;
  v12[3] = &unk_277E00FC8;
  v6 = home;
  v13 = v6;
  v7 = [(HFItemProvider *)self reloadItemsWithObjects:allObjects keyAdaptor:&__block_literal_global_214 itemAdaptor:&__block_literal_global_10_11 filter:0 itemMap:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__HFConditionItemProvider_reloadItems__block_invoke_4;
  v10[3] = &unk_277DF30B8;
  objc_copyWeak(&v11, &location);
  v8 = [v7 flatMap:v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);

  return v8;
}

id __38__HFConditionItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 condition];
  v3 = [v2 predicate];

  return v3;
}

HFPresenceConditionItem *__38__HFConditionItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = HFTimeConditionItem;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = HFCharacteristicConditionItem;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [[HFPresenceConditionItem alloc] initWithCondition:v3 home:*(a1 + 32)];
        goto LABEL_9;
      }

      v4 = HFUnknownConditionItem;
    }
  }

  v5 = [[v4 alloc] initWithCondition:v3];
LABEL_9:
  v6 = v5;

  return v6;
}

id __38__HFConditionItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained conditionItems];
  v6 = [v3 removedItems];
  [v5 minusSet:v6];

  v7 = [WeakRetained conditionItems];
  v8 = [v3 addedItems];
  [v7 unionSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

@end