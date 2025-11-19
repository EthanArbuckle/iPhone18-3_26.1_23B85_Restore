@interface HFDemoModeAccessoryItemProvider
- (HFDemoModeAccessoryItemProvider)init;
- (HFDemoModeAccessoryItemProvider)initWithHome:(id)a3;
- (NSSet)demoItems;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFDemoModeAccessoryItemProvider

- (HFDemoModeAccessoryItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFDemoModeAccessoryItemProvider;
  v6 = [(HFItemProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
  }

  return v7;
}

- (HFDemoModeAccessoryItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFDemoModeAccessoryItemProvider.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HFDemoModeAccessoryItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFDemoModeAccessoryItemProvider *)self home];
  v6 = [v4 initWithHome:v5];

  return v6;
}

- (id)reloadItems
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HFDemoModeAccessoryItemProvider *)self demoItems];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __46__HFDemoModeAccessoryItemProvider_reloadItems__block_invoke;
  v26[3] = &unk_277DF9D90;
  v27 = v3;
  v6 = v4;
  v28 = v6;
  v7 = v3;
  [v5 enumerateObjectsUsingBlock:v26];

  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [(HFDemoModeAccessoryItemProvider *)self filter];
  v10 = [v7 na_filter:v9];

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __46__HFDemoModeAccessoryItemProvider_reloadItems__block_invoke_2;
  v23 = &unk_277DF9DB8;
  v24 = v6;
  v25 = v8;
  v11 = v8;
  v12 = v6;
  [v10 enumerateObjectsUsingBlock:&v20];
  v13 = [HFItemProviderReloadResults alloc];
  v14 = [MEMORY[0x277CBEB98] set];
  v15 = [(HFItemProviderReloadResults *)v13 initWithAddedItems:v11 removedItems:v14 existingItems:v11];

  v16 = [MEMORY[0x277CBEB98] setWithSet:v11];
  demoItems = self->_demoItems;
  self->_demoItems = v16;

  v18 = [MEMORY[0x277D2C900] futureWithResult:v15];

  return v18;
}

void __46__HFDemoModeAccessoryItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 accessory];
  [v3 addObject:v5];

  v6 = *(a1 + 40);
  v8 = [v4 accessory];
  v7 = [v8 uniqueIdentifier];
  [v6 setObject:v4 forKey:v7];
}

void __46__HFDemoModeAccessoryItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 uniqueIdentifier];
  v6 = [v3 objectForKeyedSubscript:v4];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
    v5 = v6;
  }
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFDemoModeAccessoryItemProvider;
  v2 = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"accessory";
  v8[1] = @"service";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSSet)demoItems
{
  v3 = +[HFUtilities isPressDemoModeEnabled];
  demoItems = self->_demoItems;
  if (!v3)
  {
    self->_demoItems = 0;

    v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
    goto LABEL_5;
  }

  if (demoItems)
  {
    v5 = demoItems;
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  v8 = [MEMORY[0x277CBEB58] set];
  v9 = +[HFDemoModeAccessoryManager sharedManager];
  v10 = [v9 accessories];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__HFDemoModeAccessoryItemProvider_demoItems__block_invoke;
  v14[3] = &unk_277DF9DE0;
  v15 = v8;
  v11 = v8;
  [v10 enumerateObjectsUsingBlock:v14];
  v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:v11];
  v13 = self->_demoItems;
  self->_demoItems = v12;

  v6 = self->_demoItems;
LABEL_6:

  return v6;
}

void __44__HFDemoModeAccessoryItemProvider_demoItems__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [HFDemoModeAccessoryItem accessoryItemForAccessory:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

@end