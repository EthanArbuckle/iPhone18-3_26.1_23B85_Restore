@interface HUNetworkRouterManualReconfigurationItemManager
- (BOOL)isItemNetworkConfigurationItem:(id)a3;
- (HUNetworkRouterManualReconfigurationItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUNetworkRouterManualReconfigurationItemManager)initWithHome:(id)a3 delegate:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
- (id)networkConfigurationItemForProfile:(id)a3;
@end

@implementation HUNetworkRouterManualReconfigurationItemManager

- (HUNetworkRouterManualReconfigurationItemManager)initWithHome:(id)a3 delegate:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HUNetworkRouterManualReconfigurationItemManager.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v14.receiver = self;
  v14.super_class = HUNetworkRouterManualReconfigurationItemManager;
  v10 = [(HFItemManager *)&v14 initWithDelegate:v9 sourceItem:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_overrideHome, a3);
  }

  return v11;
}

- (HUNetworkRouterManualReconfigurationItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUNetworkRouterManualReconfigurationItemManager.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkRouterManualReconfigurationItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (BOOL)isItemNetworkConfigurationItem:(id)a3
{
  v4 = a3;
  v5 = [(HUNetworkRouterManualReconfigurationItemManager *)self networkConfigurationItemProvider];
  v6 = [v5 items];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (id)networkConfigurationItemForProfile:(id)a3
{
  v4 = a3;
  v5 = [(HUNetworkRouterManualReconfigurationItemManager *)self networkConfigurationItemProvider];
  v6 = [v5 items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__HUNetworkRouterManualReconfigurationItemManager_networkConfigurationItemForProfile___block_invoke;
  v10[3] = &unk_277DB85D8;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

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

- (id)_buildItemProvidersForHome:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D148A0];
  v5 = a3;
  v6 = [[v4 alloc] initWithHome:v5];

  [(HUNetworkRouterManualReconfigurationItemManager *)self setNetworkConfigurationItemProvider:v6];
  v7 = [(HUNetworkRouterManualReconfigurationItemManager *)self networkConfigurationItemProvider];
  v8 = [v7 filterOptions];
  [v8 setByFilter:&__block_literal_global_300];

  v9 = [(HUNetworkRouterManualReconfigurationItemManager *)self networkConfigurationItemProvider];
  v12[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  return v10;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUNetworkRouterManualReconfigurationSectionIdentifier"];
  v7 = [(HUNetworkRouterManualReconfigurationItemManager *)self networkConfigurationItemProvider];
  v8 = [v7 items];
  v9 = [v8 allObjects];
  v10 = [MEMORY[0x277D14898] defaultItemComparator];
  v11 = [v9 sortedArrayUsingComparator:v10];
  [v6 setItems:v11 filteringToDisplayedItems:v4];

  [v5 addObject:v6];
  v12 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v4];

  return v12;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HUNetworkRouterManualReconfigurationItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

@end