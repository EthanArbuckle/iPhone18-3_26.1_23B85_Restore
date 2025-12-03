@interface HUNetworkRouterManualReconfigurationItemManager
- (BOOL)isItemNetworkConfigurationItem:(id)item;
- (HUNetworkRouterManualReconfigurationItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUNetworkRouterManualReconfigurationItemManager)initWithHome:(id)home delegate:(id)delegate;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
- (id)networkConfigurationItemForProfile:(id)profile;
@end

@implementation HUNetworkRouterManualReconfigurationItemManager

- (HUNetworkRouterManualReconfigurationItemManager)initWithHome:(id)home delegate:(id)delegate
{
  homeCopy = home;
  delegateCopy = delegate;
  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkRouterManualReconfigurationItemManager.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v14.receiver = self;
  v14.super_class = HUNetworkRouterManualReconfigurationItemManager;
  v10 = [(HFItemManager *)&v14 initWithDelegate:delegateCopy sourceItem:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_overrideHome, home);
  }

  return v11;
}

- (HUNetworkRouterManualReconfigurationItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkRouterManualReconfigurationItemManager.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkRouterManualReconfigurationItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (BOOL)isItemNetworkConfigurationItem:(id)item
{
  itemCopy = item;
  networkConfigurationItemProvider = [(HUNetworkRouterManualReconfigurationItemManager *)self networkConfigurationItemProvider];
  items = [networkConfigurationItemProvider items];
  v7 = [items containsObject:itemCopy];

  return v7;
}

- (id)networkConfigurationItemForProfile:(id)profile
{
  profileCopy = profile;
  networkConfigurationItemProvider = [(HUNetworkRouterManualReconfigurationItemManager *)self networkConfigurationItemProvider];
  items = [networkConfigurationItemProvider items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__HUNetworkRouterManualReconfigurationItemManager_networkConfigurationItemForProfile___block_invoke;
  v10[3] = &unk_277DB85D8;
  v11 = profileCopy;
  v7 = profileCopy;
  v8 = [items na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __86__HUNetworkRouterManualReconfigurationItemManager_networkConfigurationItemForProfile___block_invoke(uint64_t a1, void *a2)
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
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D148A0];
  homeCopy = home;
  v6 = [[v4 alloc] initWithHome:homeCopy];

  [(HUNetworkRouterManualReconfigurationItemManager *)self setNetworkConfigurationItemProvider:v6];
  networkConfigurationItemProvider = [(HUNetworkRouterManualReconfigurationItemManager *)self networkConfigurationItemProvider];
  filterOptions = [networkConfigurationItemProvider filterOptions];
  [filterOptions setByFilter:&__block_literal_global_300];

  networkConfigurationItemProvider2 = [(HUNetworkRouterManualReconfigurationItemManager *)self networkConfigurationItemProvider];
  v12[0] = networkConfigurationItemProvider2;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  return v10;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUNetworkRouterManualReconfigurationSectionIdentifier"];
  networkConfigurationItemProvider = [(HUNetworkRouterManualReconfigurationItemManager *)self networkConfigurationItemProvider];
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
  overrideHome = [(HUNetworkRouterManualReconfigurationItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:overrideHome];

  return v4;
}

@end