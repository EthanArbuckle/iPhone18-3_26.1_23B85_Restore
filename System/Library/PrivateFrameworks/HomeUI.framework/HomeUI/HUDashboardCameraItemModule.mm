@interface HUDashboardCameraItemModule
- (HMHome)home;
- (HMRoom)room;
- (HUDashboardCameraItemModule)initWithContext:(id)context itemUpdater:(id)updater;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUDashboardCameraItemModule

- (HUDashboardCameraItemModule)initWithContext:(id)context itemUpdater:(id)updater
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = HUDashboardCameraItemModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, context);
  }

  return v9;
}

- (id)buildItemProviders
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = objc_alloc(MEMORY[0x277D144A8]);
  context = [(HUDashboardCameraItemModule *)self context];
  home = [context home];
  v7 = [v4 initWithHome:home];
  [(HUDashboardCameraItemModule *)self setCameraItemProvider:v7];

  context2 = [(HUDashboardCameraItemModule *)self context];
  room = [context2 room];
  cameraItemProvider = [(HUDashboardCameraItemModule *)self cameraItemProvider];
  [cameraItemProvider setRoom:room];

  objc_initWeak(&location, self);
  v14 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v15, &location);
  v11 = [(HUDashboardCameraItemModule *)self cameraItemProvider:v14];
  [v11 setFilter:&v14];

  cameraItemProvider2 = [(HUDashboardCameraItemModule *)self cameraItemProvider];
  [v3 na_safeAddObject:cameraItemProvider2];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v3;
}

uint64_t __49__HUDashboardCameraItemModule_buildItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained context];
  v6 = [v5 shouldHideHomeKitObject:v3];

  return v6 ^ 1u;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  itemsCopy = items;
  v6 = [[v4 alloc] initWithIdentifier:@"camerasSection"];
  cameraItemProvider = [(HUDashboardCameraItemModule *)self cameraItemProvider];
  items = [cameraItemProvider items];
  allObjects = [items allObjects];
  _itemComparator = [(HFItemModule *)self _itemComparator];
  v11 = [allObjects sortedArrayUsingComparator:_itemComparator];

  v12 = _HULocalizedStringWithDefaultValue(@"HUDashboardCamerasSectionTitle", @"HUDashboardCamerasSectionTitle", 1);
  [v6 setHeaderTitle:v12];

  [v6 setItems:v11];
  v13 = MEMORY[0x277D14778];
  v17[0] = v6;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v15 = [v13 filterSections:v14 toDisplayedItems:itemsCopy];

  return v15;
}

- (HMHome)home
{
  context = [(HUDashboardCameraItemModule *)self context];
  home = [context home];

  return home;
}

- (HMRoom)room
{
  context = [(HUDashboardCameraItemModule *)self context];
  room = [context room];

  return room;
}

@end