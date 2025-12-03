@interface HFAccessoryCategoryItemProvider
- (HFAccessoryCategoryItemProvider)initWithHome:(id)home;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFAccessoryCategoryItemProvider

- (HFAccessoryCategoryItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HFAccessoryCategoryItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = [MEMORY[0x277CBEB58] set];
    categoryItems = v7->_categoryItems;
    v7->_categoryItems = v8;
  }

  return v7;
}

- (id)reloadItems
{
  hf_standardAccessoryCategoryTypes = [MEMORY[0x277CD1680] hf_standardAccessoryCategoryTypes];
  objc_initWeak(&location, self);
  allObjects = [hf_standardAccessoryCategoryTypes allObjects];
  filter = [(HFAccessoryCategoryItemProvider *)self filter];
  v6 = [(HFItemProvider *)self reloadItemsWithObjects:allObjects keyAdaptor:&__block_literal_global_61 itemAdaptor:&__block_literal_global_4_1 filter:filter itemMap:&__block_literal_global_7_1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__HFAccessoryCategoryItemProvider_reloadItems__block_invoke_4;
  v9[3] = &unk_277DF30B8;
  objc_copyWeak(&v10, &location);
  v7 = [v6 flatMap:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

HFAccessoryCategoryItem *__46__HFAccessoryCategoryItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HFAccessoryCategoryItem alloc] initWithCategoryType:v2];

  return v3;
}

id __46__HFAccessoryCategoryItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained categoryItems];
  v6 = [v3 removedItems];
  [v5 minusSet:v6];

  v7 = [WeakRetained categoryItems];
  v8 = [v3 addedItems];
  [v7 unionSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFAccessoryCategoryItemProvider;
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"home";
  v8[1] = @"accessory";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = [invalidationReasons setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end