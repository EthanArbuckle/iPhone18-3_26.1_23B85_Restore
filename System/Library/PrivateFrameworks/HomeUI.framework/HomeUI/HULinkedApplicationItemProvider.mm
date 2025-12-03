@interface HULinkedApplicationItemProvider
- (HULinkedApplicationItemProvider)init;
- (HULinkedApplicationItemProvider)initWithHome:(id)home;
- (id)_generateItemsFromSoftwareLookupResult:(id)result;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HULinkedApplicationItemProvider

- (HULinkedApplicationItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HULinkedApplicationItemProvider.m" lineNumber:32 description:{@"%s is unavailable; use %@ instead", "-[HULinkedApplicationItemProvider init]", v5}];

  return 0;
}

- (HULinkedApplicationItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HULinkedApplicationItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = objc_alloc_init(MEMORY[0x277CBEB98]);
    linkedApplicationItems = v7->_linkedApplicationItems;
    v7->_linkedApplicationItems = v8;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HULinkedApplicationItemProvider *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HULinkedApplicationItemProvider;
  invalidationReasons = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:*MEMORY[0x277D13B28]];

  return v3;
}

- (id)reloadItems
{
  v3 = MEMORY[0x277CBEB98];
  home = [(HULinkedApplicationItemProvider *)self home];
  accessories = [home accessories];
  v6 = [v3 setWithArray:accessories];

  filter = [(HULinkedApplicationItemProvider *)self filter];

  if (filter)
  {
    filter2 = [(HULinkedApplicationItemProvider *)self filter];
    v9 = [v6 na_filter:filter2];

    v6 = v9;
  }

  v10 = [HUSoftwareLibraryLookupResult resultForAccessories:v6];
  objc_initWeak(&location, self);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __46__HULinkedApplicationItemProvider_reloadItems__block_invoke;
  v17 = &unk_277DBEA68;
  objc_copyWeak(&v18, &location);
  v11 = [v10 flatMap:&v14];
  v12 = [v11 recover:{&__block_literal_global_139, v14, v15, v16, v17}];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v12;
}

id __46__HULinkedApplicationItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _generateItemsFromSoftwareLookupResult:v3];

  v6 = [WeakRetained linkedApplicationItems];
  v7 = [v6 na_setByDiffingWithSet:v5];

  v8 = MEMORY[0x277D14AE8];
  v9 = [WeakRetained linkedApplicationItems];
  v10 = [v8 diffFromSet:v9 toSet:v7];

  [WeakRetained setLinkedApplicationItems:v7];
  v11 = objc_alloc(MEMORY[0x277D14768]);
  v12 = [v10 additions];
  v13 = [v10 deletions];
  v14 = [v10 updates];
  v15 = [v11 initWithAddedItems:v12 removedItems:v13 existingItems:v14];

  v16 = [MEMORY[0x277D2C900] futureWithResult:v15];

  return v16;
}

id __46__HULinkedApplicationItemProvider_reloadItems__block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x277D14768]);
  v1 = [MEMORY[0x277CBEB98] set];
  v2 = [MEMORY[0x277CBEB98] set];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [v0 initWithAddedItems:v1 removedItems:v2 existingItems:v3];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v5;
}

- (id)_generateItemsFromSoftwareLookupResult:(id)result
{
  resultCopy = result;
  v4 = objc_opt_new();
  matchedLibraryItems = [resultCopy matchedLibraryItems];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__HULinkedApplicationItemProvider__generateItemsFromSoftwareLookupResult___block_invoke;
  v17[3] = &unk_277DBEA90;
  v6 = resultCopy;
  v18 = v6;
  v7 = v4;
  v19 = v7;
  [matchedLibraryItems na_each:v17];

  matchedStoreItems = [v6 matchedStoreItems];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__HULinkedApplicationItemProvider__generateItemsFromSoftwareLookupResult___block_invoke_2;
  v14[3] = &unk_277DBEAB8;
  v15 = v6;
  v9 = v7;
  v16 = v9;
  v10 = v6;
  [matchedStoreItems na_each:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __74__HULinkedApplicationItemProvider__generateItemsFromSoftwareLookupResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 accessoriesByBundleIDs];
  v6 = [v4 bundleIdentifier];
  v9 = [v5 objectForKeyedSubscript:v6];

  v7 = *(a1 + 40);
  v8 = [[HULinkedApplicationLibraryItem alloc] initWithApplicationProxy:v4 associatedAccessories:v9];

  [v7 addObject:v8];
}

void __74__HULinkedApplicationItemProvider__generateItemsFromSoftwareLookupResult___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 accessoriesByStoreIDs];
  v6 = [v4 iTunesStoreIdentifier];
  v7 = [v6 stringValue];
  v10 = [v5 objectForKeyedSubscript:v7];

  v8 = *(a1 + 40);
  v9 = [[HULinkedApplicationStoreItem alloc] initWithStoreItem:v4 associatedAccessories:v10];

  [v8 addObject:v9];
}

@end