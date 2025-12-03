@interface HUHomeHubSharedHomeWarningItemManager
- (HUHomeHubSharedHomeWarningItemManager)initWithDelegate:(id)delegate homes:(id)homes;
- (HUHomeHubSharedHomeWarningItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)itemForHome:(id)home;
@end

@implementation HUHomeHubSharedHomeWarningItemManager

- (HUHomeHubSharedHomeWarningItemManager)initWithDelegate:(id)delegate homes:(id)homes
{
  homesCopy = homes;
  v11.receiver = self;
  v11.super_class = HUHomeHubSharedHomeWarningItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:delegate sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_homes, homes);
  }

  return v9;
}

- (HUHomeHubSharedHomeWarningItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_homes_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUHomeHubSharedHomeWarningItemManager.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HUHomeHubSharedHomeWarningItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    homes = [(HUHomeHubSharedHomeWarningItemManager *)self homes];
    *buf = 136315394;
    v14 = "[HUHomeHubSharedHomeWarningItemManager _buildItemProvidersForHome:]";
    v15 = 2112;
    v16 = homes;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s fetched homes: %@.", buf, 0x16u);
  }

  homes2 = [(HUHomeHubSharedHomeWarningItemManager *)self homes];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HUHomeHubSharedHomeWarningItemManager__buildItemProvidersForHome___block_invoke;
  v11[3] = &unk_277DC3338;
  v11[4] = self;
  v7 = [homes2 na_map:v11];

  v8 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v7];
  v12 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];

  return v9;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v4 = MEMORY[0x277CBEB18];
  itemsCopy = items;
  array = [v4 array];
  v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"homesSectionIdentifier"];
  allItems = [(HFItemManager *)self allItems];
  allObjects = [allItems allObjects];
  defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
  v11 = [allObjects sortedArrayUsingComparator:defaultItemComparator];
  [v7 setItems:v11];

  [array addObject:v7];
  v12 = [MEMORY[0x277D14778] filterSections:array toDisplayedItems:itemsCopy];

  return v12;
}

- (id)itemForHome:(id)home
{
  v21 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v4 = objc_opt_new();
  if (homeCopy)
  {
    name = [homeCopy name];
    owner = [homeCopy owner];
    name2 = [owner name];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "[HUHomeHubSharedHomeWarningItemManager itemForHome:]";
      v19 = 2112;
      v20 = name;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%s fetched home: %@.", &v17, 0x16u);
    }

    [v4 na_safeSetObject:name forKey:*MEMORY[0x277D13F60]];
    [v4 na_safeSetObject:name2 forKey:*MEMORY[0x277D13E30]];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(name, "length") == 0}];
    [v4 na_safeSetObject:v9 forKey:*MEMORY[0x277D13FB8]];

    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"homekit"];
    hu_keyColor = [MEMORY[0x277D75348] hu_keyColor];
    v12 = [v10 imageWithTintColor:hu_keyColor];

    [v4 na_safeSetObject:v12 forKey:*MEMORY[0x277D13E98]];
  }

  v13 = objc_alloc(MEMORY[0x277D14B38]);
  v14 = [v4 copy];
  v15 = [v13 initWithResults:v14];

  return v15;
}

@end