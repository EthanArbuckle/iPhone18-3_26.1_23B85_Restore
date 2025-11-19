@interface HUNetworkConfigurationItemListModule
- (BOOL)isItemNetworkConfigurationGroupItem:(id)a3;
- (HUNetworkConfigurationItemListModule)initWithItemUpdater:(id)a3;
- (HUNetworkConfigurationItemListModule)initWithItemUpdater:(id)a3 home:(id)a4;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
- (id)networkConfigurationGroupItemForProfile:(id)a3;
@end

@implementation HUNetworkConfigurationItemListModule

- (HUNetworkConfigurationItemListModule)initWithItemUpdater:(id)a3 home:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HUNetworkConfigurationItemListModule;
  v8 = [(HFItemModule *)&v13 initWithItemUpdater:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
    v10 = [objc_alloc(MEMORY[0x277D14890]) initWithHome:v7];
    networkConfigurationGroupItemProvider = v9->_networkConfigurationGroupItemProvider;
    v9->_networkConfigurationGroupItemProvider = v10;
  }

  return v9;
}

- (HUNetworkConfigurationItemListModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationItemListModule.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkConfigurationItemListModule initWithItemUpdater:]", v6}];

  return 0;
}

- (BOOL)isItemNetworkConfigurationGroupItem:(id)a3
{
  v4 = a3;
  v5 = [(HUNetworkConfigurationItemListModule *)self networkConfigurationGroupItemProvider];
  v6 = [v5 items];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (id)networkConfigurationGroupItemForProfile:(id)a3
{
  v4 = a3;
  v5 = [(HUNetworkConfigurationItemListModule *)self networkConfigurationGroupItemProvider];
  v6 = [v5 items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__HUNetworkConfigurationItemListModule_networkConfigurationGroupItemForProfile___block_invoke;
  v10[3] = &unk_277DB85D8;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __80__HUNetworkConfigurationItemListModule_networkConfigurationGroupItemForProfile___block_invoke(uint64_t a1, void *a2)
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

  v7 = [v6 profiles];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__HUNetworkConfigurationItemListModule_networkConfigurationGroupItemForProfile___block_invoke_2;
  v10[3] = &unk_277DBCC10;
  v11 = *(a1 + 32);
  v8 = [v7 na_any:v10];

  return v8;
}

uint64_t __80__HUNetworkConfigurationItemListModule_networkConfigurationGroupItemForProfile___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uniqueIdentifier];
  v5 = [v3 uniqueIdentifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUNetworkConfigurationItemListModule *)self networkConfigurationGroupItemProvider];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUNetworkConfigurationItemListModuleSectionIdentifier"];
  v6 = _HULocalizedStringWithDefaultValue(@"HUNetworkConfigurationItemListModuleSectionTitle", @"HUNetworkConfigurationItemListModuleSectionTitle", 1);
  [v5 setHeaderTitle:v6];

  v7 = [(HUNetworkConfigurationItemListModule *)self networkConfigurationGroupItemProvider];
  v8 = [v7 items];

  v9 = [(HUNetworkConfigurationItemListModule *)self home];
  v10 = [v9 hf_isNetworkProtectionEnabled];

  if (v10)
  {
    v11 = [v8 allObjects];
    v12 = [MEMORY[0x277D14778] defaultItemComparator];
    v13 = [v11 sortedArrayUsingComparator:v12];
    [v5 setItems:v13];
  }

  objc_initWeak(&location, self);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __72__HUNetworkConfigurationItemListModule_buildSectionsWithDisplayedItems___block_invoke;
  v22 = &unk_277DC3E38;
  objc_copyWeak(&v23, &location);
  if ([v8 na_any:&v19])
  {
    v14 = _HULocalizedStringWithDefaultValue(@"HUNetworkConfigurationItemListModuleSectionFooterIncompatibleVersion", @"HUNetworkConfigurationItemListModuleSectionFooterIncompatibleVersion", 1);
    [v5 setFooterTitle:{v14, v19, v20, v21, v22}];
  }

  v15 = MEMORY[0x277D14778];
  v25[0] = v5;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:{1, v19, v20, v21, v22}];
  v17 = [v15 filterSections:v16 toDisplayedItems:v4];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v17;
}

unint64_t __72__HUNetworkConfigurationItemListModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D14038]];
  if ([v6 BOOLValue])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v3 latestResults];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D14050]];
    if ([v9 BOOLValue])
    {
      v10 = [WeakRetained home];
      v7 = ([v10 networkRouterSupportDisableReason] >> 4) & 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end