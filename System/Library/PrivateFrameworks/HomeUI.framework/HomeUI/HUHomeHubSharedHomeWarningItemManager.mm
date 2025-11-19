@interface HUHomeHubSharedHomeWarningItemManager
- (HUHomeHubSharedHomeWarningItemManager)initWithDelegate:(id)a3 homes:(id)a4;
- (HUHomeHubSharedHomeWarningItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)itemForHome:(id)a3;
@end

@implementation HUHomeHubSharedHomeWarningItemManager

- (HUHomeHubSharedHomeWarningItemManager)initWithDelegate:(id)a3 homes:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUHomeHubSharedHomeWarningItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:a3 sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_homes, a4);
  }

  return v9;
}

- (HUHomeHubSharedHomeWarningItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_homes_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUHomeHubSharedHomeWarningItemManager.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HUHomeHubSharedHomeWarningItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HUHomeHubSharedHomeWarningItemManager *)self homes];
    *buf = 136315394;
    v14 = "[HUHomeHubSharedHomeWarningItemManager _buildItemProvidersForHome:]";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s fetched homes: %@.", buf, 0x16u);
  }

  v6 = [(HUHomeHubSharedHomeWarningItemManager *)self homes];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HUHomeHubSharedHomeWarningItemManager__buildItemProvidersForHome___block_invoke;
  v11[3] = &unk_277DC3338;
  v11[4] = self;
  v7 = [v6 na_map:v11];

  v8 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v7];
  v12 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];

  return v9;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"homesSectionIdentifier"];
  v8 = [(HFItemManager *)self allItems];
  v9 = [v8 allObjects];
  v10 = [MEMORY[0x277D14778] defaultItemComparator];
  v11 = [v9 sortedArrayUsingComparator:v10];
  [v7 setItems:v11];

  [v6 addObject:v7];
  v12 = [MEMORY[0x277D14778] filterSections:v6 toDisplayedItems:v5];

  return v12;
}

- (id)itemForHome:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    v5 = [v3 name];
    v6 = [v3 owner];
    v7 = [v6 name];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "[HUHomeHubSharedHomeWarningItemManager itemForHome:]";
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%s fetched home: %@.", &v17, 0x16u);
    }

    [v4 na_safeSetObject:v5 forKey:*MEMORY[0x277D13F60]];
    [v4 na_safeSetObject:v7 forKey:*MEMORY[0x277D13E30]];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "length") == 0}];
    [v4 na_safeSetObject:v9 forKey:*MEMORY[0x277D13FB8]];

    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"homekit"];
    v11 = [MEMORY[0x277D75348] hu_keyColor];
    v12 = [v10 imageWithTintColor:v11];

    [v4 na_safeSetObject:v12 forKey:*MEMORY[0x277D13E98]];
  }

  v13 = objc_alloc(MEMORY[0x277D14B38]);
  v14 = [v4 copy];
  v15 = [v13 initWithResults:v14];

  return v15;
}

@end