@interface HUSoftwareUpdateRecentUpdatesItemManager
- (HUSoftwareUpdateRecentUpdatesItemManager)initWithDelegate:(id)a3 home:(id)a4;
- (HUSoftwareUpdateRecentUpdatesItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_homeFuture;
- (id)_itemsToHideInSet:(id)a3;
@end

@implementation HUSoftwareUpdateRecentUpdatesItemManager

- (HUSoftwareUpdateRecentUpdatesItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_home_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateRecentUpdatesItemManager.m" lineNumber:25 description:{@"%s is unavailable; use %@ instead", "-[HUSoftwareUpdateRecentUpdatesItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUSoftwareUpdateRecentUpdatesItemManager)initWithDelegate:(id)a3 home:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUSoftwareUpdateRecentUpdatesItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:a3 sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_overrideHome, a4);
  }

  return v9;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HUSoftwareUpdateRecentUpdatesItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (id)_buildItemModulesForHome:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HUSoftwareUpdateItemModule alloc] initWithItemUpdater:self home:v4 sourceItem:0];

  [(HUSoftwareUpdateRecentUpdatesItemManager *)self setSoftwareUpdateModule:v5];
  v6 = [(HUSoftwareUpdateRecentUpdatesItemManager *)self softwareUpdateModule];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v7;
}

- (id)_itemsToHideInSet:(id)a3
{
  v10.receiver = self;
  v10.super_class = HUSoftwareUpdateRecentUpdatesItemManager;
  v3 = a3;
  v4 = [(HFItemManager *)&v10 _itemsToHideInSet:v3];
  v5 = [v4 mutableCopy];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HUSoftwareUpdateRecentUpdatesItemManager__itemsToHideInSet___block_invoke;
  v8[3] = &unk_277DBAF68;
  v6 = v5;
  v9 = v6;
  [v3 na_each:v8];

  return v6;
}

void __62__HUSoftwareUpdateRecentUpdatesItemManager__itemsToHideInSet___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v6 latestResults];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D14100]];
    v5 = [v4 BOOLValue];

    if ((v5 & 1) == 0)
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

@end