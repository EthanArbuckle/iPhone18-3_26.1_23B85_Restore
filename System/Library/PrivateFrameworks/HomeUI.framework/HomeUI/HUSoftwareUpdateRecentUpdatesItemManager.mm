@interface HUSoftwareUpdateRecentUpdatesItemManager
- (HUSoftwareUpdateRecentUpdatesItemManager)initWithDelegate:(id)delegate home:(id)home;
- (HUSoftwareUpdateRecentUpdatesItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemModulesForHome:(id)home;
- (id)_homeFuture;
- (id)_itemsToHideInSet:(id)set;
@end

@implementation HUSoftwareUpdateRecentUpdatesItemManager

- (HUSoftwareUpdateRecentUpdatesItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateRecentUpdatesItemManager.m" lineNumber:25 description:{@"%s is unavailable; use %@ instead", "-[HUSoftwareUpdateRecentUpdatesItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUSoftwareUpdateRecentUpdatesItemManager)initWithDelegate:(id)delegate home:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HUSoftwareUpdateRecentUpdatesItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:delegate sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_overrideHome, home);
  }

  return v9;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  overrideHome = [(HUSoftwareUpdateRecentUpdatesItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:overrideHome];

  return v4;
}

- (id)_buildItemModulesForHome:(id)home
{
  v9[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = [[HUSoftwareUpdateItemModule alloc] initWithItemUpdater:self home:homeCopy sourceItem:0];

  [(HUSoftwareUpdateRecentUpdatesItemManager *)self setSoftwareUpdateModule:v5];
  softwareUpdateModule = [(HUSoftwareUpdateRecentUpdatesItemManager *)self softwareUpdateModule];
  v9[0] = softwareUpdateModule;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v7;
}

- (id)_itemsToHideInSet:(id)set
{
  v10.receiver = self;
  v10.super_class = HUSoftwareUpdateRecentUpdatesItemManager;
  setCopy = set;
  v4 = [(HFItemManager *)&v10 _itemsToHideInSet:setCopy];
  v5 = [v4 mutableCopy];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HUSoftwareUpdateRecentUpdatesItemManager__itemsToHideInSet___block_invoke;
  v8[3] = &unk_277DBAF68;
  v6 = v5;
  v9 = v6;
  [setCopy na_each:v8];

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