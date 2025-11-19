@interface HUHomeHubAccessoryListItemManager
- (HUHomeHubAccessoryListItemManager)initWithAccessories:(id)a3 delegate:(id)a4;
- (HUHomeHubAccessoryListItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_itemForAccessory:(id)a3;
@end

@implementation HUHomeHubAccessoryListItemManager

- (HUHomeHubAccessoryListItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithAccessories_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUHomeHubAccessoryListItemManager.m" lineNumber:25 description:{@"%s is unavailable; use %@ instead", "-[HUHomeHubAccessoryListItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUHomeHubAccessoryListItemManager)initWithAccessories:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUHomeHubAccessoryListItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:a4 sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accessories, a3);
  }

  return v9;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HUHomeHubAccessoryListItemManager *)self accessories];
    *buf = 136315394;
    v14 = "[HUHomeHubAccessoryListItemManager _buildItemProvidersForHome:]";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s accessories: %@.", buf, 0x16u);
  }

  v6 = [(HUHomeHubAccessoryListItemManager *)self accessories];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HUHomeHubAccessoryListItemManager__buildItemProvidersForHome___block_invoke;
  v11[3] = &unk_277DC00A8;
  v11[4] = self;
  v7 = [v6 na_map:v11];

  v8 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v7];
  v12 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];

  return v9;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(HUHomeHubAccessoryListItemManager *)self accessories];
  v7 = [v6 na_map:&__block_literal_global_167];

  v8 = [v7 allObjects];
  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_15_2];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__HUHomeHubAccessoryListItemManager__buildSectionsWithDisplayedItems___block_invoke_3;
  v16[3] = &unk_277DBFE78;
  v17 = v7;
  v18 = v4;
  v10 = v5;
  v19 = v10;
  v11 = v4;
  v12 = v7;
  [v9 na_each:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

uint64_t __70__HUHomeHubAccessoryListItemManager__buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 name];
  v7 = [v4 name];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [v5 uniqueIdentifier];

    [v4 uniqueIdentifier];
  }

  else
  {
    v9 = [v5 name];

    [v4 name];
  }
  v10 = ;
  v11 = [v9 compare:v10];

  return v11;
}

void __70__HUHomeHubAccessoryListItemManager__buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x277D14850]);
  v6 = [v3 uniqueIdentifier];
  v7 = [v6 UUIDString];
  v8 = [v5 initWithIdentifier:v7];

  if ([*(a1 + 32) count] <= 1)
  {
    [v8 setHeaderTitle:0];
  }

  else
  {
    v9 = [v3 hf_displayName];
    [v8 setHeaderTitle:v9];
  }

  v10 = *(a1 + 40);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __70__HUHomeHubAccessoryListItemManager__buildSectionsWithDisplayedItems___block_invoke_4;
  v17 = &unk_277DBC410;
  v18 = v3;
  v19 = v4;
  v11 = v4;
  v12 = v3;
  [v10 na_each:&v14];
  v13 = [v11 sortedArrayUsingComparator:{&__block_literal_global_20_3, v14, v15, v16, v17}];
  [v8 setItems:v13];
  [*(a1 + 48) addObject:v8];
}

void __70__HUHomeHubAccessoryListItemManager__buildSectionsWithDisplayedItems___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13FC0]];
  v5 = [*(a1 + 32) uniqueIdentifier];

  if (v4 == v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

uint64_t __70__HUHomeHubAccessoryListItemManager__buildSectionsWithDisplayedItems___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = *MEMORY[0x277D13F60];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v8 = [v4 latestResults];

  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = [v7 compare:v9];

  return v10;
}

- (id)_itemForAccessory:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 hf_displayName];
  [v4 na_safeSetObject:v5 forKey:*MEMORY[0x277D13F60]];

  v6 = [v3 home];
  v7 = [v6 uniqueIdentifier];
  [v4 na_safeSetObject:v7 forKey:*MEMORY[0x277D13FC0]];

  v8 = MEMORY[0x277D14810];
  v9 = [v3 mediaProfile];
  LODWORD(v8) = [v8 isHomePodMini:v9];

  if (v8)
  {
    v10 = MEMORY[0x277D755B8];
    v11 = *MEMORY[0x277D141E8];
LABEL_5:
    v15 = [v10 systemImageNamed:v11];
    v16 = [MEMORY[0x277D75348] hu_keyColor];
    v17 = [v15 imageWithTintColor:v16];
    [v4 na_safeSetObject:v17 forKey:*MEMORY[0x277D13E98]];

    goto LABEL_7;
  }

  v12 = MEMORY[0x277D14810];
  v13 = [v3 mediaProfile];
  LODWORD(v12) = [v12 isHomePodOriginal:v13];

  v14 = MEMORY[0x277D755B8];
  if (v12)
  {
    v11 = *MEMORY[0x277D141F0];
    v10 = MEMORY[0x277D755B8];
    goto LABEL_5;
  }

  v15 = [v3 device];
  v16 = [v14 hu_symbolFromProductPlatform:v15];
  [v4 na_safeSetObject:v16 forKey:*MEMORY[0x277D13E98]];
LABEL_7:

  v18 = objc_alloc(MEMORY[0x277D14B38]);
  v19 = [v4 copy];
  v20 = [v18 initWithResults:v19];

  return v20;
}

@end