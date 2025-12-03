@interface HUNetworkConfigurationMismatchItemManager
- (BOOL)isItemNetworkConfigurationItem:(id)item;
- (HUNetworkConfigurationMismatchItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUNetworkConfigurationMismatchItemManager)initWithProfiles:(id)profiles delegate:(id)delegate;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
- (id)networkConfigurationItemForProfile:(id)profile;
@end

@implementation HUNetworkConfigurationMismatchItemManager

- (HUNetworkConfigurationMismatchItemManager)initWithProfiles:(id)profiles delegate:(id)delegate
{
  profilesCopy = profiles;
  delegateCopy = delegate;
  if (![profilesCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationMismatchItemManager.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"profiles.count"}];
  }

  v17.receiver = self;
  v17.super_class = HUNetworkConfigurationMismatchItemManager;
  v10 = [(HFItemManager *)&v17 initWithDelegate:delegateCopy sourceItem:0];
  if (v10)
  {
    anyObject = [profilesCopy anyObject];
    accessory = [anyObject accessory];
    home = [accessory home];
    overrideHome = v10->_overrideHome;
    v10->_overrideHome = home;

    objc_storeStrong(&v10->_profiles, profiles);
  }

  return v10;
}

- (HUNetworkConfigurationMismatchItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithProfiles_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationMismatchItemManager.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkConfigurationMismatchItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (BOOL)isItemNetworkConfigurationItem:(id)item
{
  itemCopy = item;
  networkConfigurationItemProvider = [(HUNetworkConfigurationMismatchItemManager *)self networkConfigurationItemProvider];
  items = [networkConfigurationItemProvider items];
  v7 = [items containsObject:itemCopy];

  return v7;
}

- (id)networkConfigurationItemForProfile:(id)profile
{
  profileCopy = profile;
  networkConfigurationItemProvider = [(HUNetworkConfigurationMismatchItemManager *)self networkConfigurationItemProvider];
  items = [networkConfigurationItemProvider items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__HUNetworkConfigurationMismatchItemManager_networkConfigurationItemForProfile___block_invoke;
  v10[3] = &unk_277DB85D8;
  v11 = profileCopy;
  v7 = profileCopy;
  v8 = [items na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __80__HUNetworkConfigurationMismatchItemManager_networkConfigurationItemForProfile___block_invoke(uint64_t a1, void *a2)
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

  v7 = [*(a1 + 32) uniqueIdentifier];
  v8 = [v6 profile];
  v9 = [v8 uniqueIdentifier];
  v10 = [v7 isEqual:v9];

  return v10;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v14[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = [objc_alloc(MEMORY[0x277D148A0]) initWithHome:homeCopy];
  [(HUNetworkConfigurationMismatchItemManager *)self setNetworkConfigurationItemProvider:v5];

  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v12, &location);
  v6 = [(HUNetworkConfigurationMismatchItemManager *)self networkConfigurationItemProvider:v11];
  filterOptions = [v6 filterOptions];
  [filterOptions setByFilter:&v11];

  networkConfigurationItemProvider = [(HUNetworkConfigurationMismatchItemManager *)self networkConfigurationItemProvider];
  v14[0] = networkConfigurationItemProvider;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v9;
}

uint64_t __72__HUNetworkConfigurationMismatchItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained profiles];
  if ([v5 containsObject:v3])
  {
    v6 = [v3 hf_hasProtectionModeMismatch];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUNetworkRouterMismatchSectionIdentifier"];
  networkConfigurationItemProvider = [(HUNetworkConfigurationMismatchItemManager *)self networkConfigurationItemProvider];
  items = [networkConfigurationItemProvider items];
  allObjects = [items allObjects];
  defaultItemComparator = [MEMORY[0x277D14898] defaultItemComparator];
  v11 = [allObjects sortedArrayUsingComparator:defaultItemComparator];
  [v6 setItems:v11 filteringToDisplayedItems:itemsCopy];

  [v5 addObject:v6];
  v12 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:itemsCopy];

  return v12;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  overrideHome = [(HUNetworkConfigurationMismatchItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:overrideHome];

  return v4;
}

@end