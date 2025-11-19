@interface HFAccessoryControlItemProvider
- (HFAccessoryControlItemProvider)initWithAccessoryItem:(id)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFAccessoryControlItemProvider

- (HFAccessoryControlItemProvider)initWithAccessoryItem:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HFAccessoryControlItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessoryItem, a3);
    v8 = [MEMORY[0x277CBEB98] set];
    previousControlItems = v7->_previousControlItems;
    v7->_previousControlItems = v8;
  }

  return v7;
}

- (id)reloadItems
{
  v3 = [(HFAccessoryControlItemProvider *)self valueSource];
  v4 = [HFStaticReadPolicy policyWithDecision:0];
  [v3 beginTransactionWithReason:@"HFAccessoryControlItemProviderDisableReads" readPolicy:v4 logger:0];

  objc_initWeak(&location, self);
  v5 = [(HFAccessoryControlItemProvider *)self accessoryItem];
  v6 = [v5 updateWithOptions:MEMORY[0x277CBEC10]];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __45__HFAccessoryControlItemProvider_reloadItems__block_invoke;
  v13 = &unk_277DF5A08;
  objc_copyWeak(&v14, &location);
  v7 = [v6 flatMap:&v10];

  v8 = [(HFAccessoryControlItemProvider *)self valueSource:v10];
  [v8 commitTransactionWithReason:@"HFAccessoryControlItemProviderDisableReads"];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v7;
}

id __45__HFAccessoryControlItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 results];

  v6 = [v5 objectForKeyedSubscript:@"collatedChildItems"];

  v7 = [v6 na_filter:&__block_literal_global_224];
  v8 = [WeakRetained previousControlItems];
  v9 = [v8 na_setByDiffingWithSet:v7];

  v10 = [WeakRetained previousControlItems];
  v11 = [HFSetDiff diffFromSet:v10 toSet:v9];

  v12 = [HFItemProviderReloadResults alloc];
  v13 = [v11 additions];
  v14 = [v11 deletions];
  v15 = [v11 updates];
  v16 = [(HFItemProviderReloadResults *)v12 initWithAddedItems:v13 removedItems:v14 existingItems:v15];

  [WeakRetained setPreviousControlItems:v9];
  v17 = [MEMORY[0x277D2C900] futureWithResult:v16];

  return v17;
}

uint64_t __45__HFAccessoryControlItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFAccessoryControlItemProvider;
  v2 = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"service";
  v8[1] = @"accessory";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end