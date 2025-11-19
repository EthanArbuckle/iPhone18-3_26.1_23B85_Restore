@interface HUDashboardCameraItemModule
- (HMHome)home;
- (HMRoom)room;
- (HUDashboardCameraItemModule)initWithContext:(id)a3 itemUpdater:(id)a4;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUDashboardCameraItemModule

- (HUDashboardCameraItemModule)initWithContext:(id)a3 itemUpdater:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUDashboardCameraItemModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, a3);
  }

  return v9;
}

- (id)buildItemProviders
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = objc_alloc(MEMORY[0x277D144A8]);
  v5 = [(HUDashboardCameraItemModule *)self context];
  v6 = [v5 home];
  v7 = [v4 initWithHome:v6];
  [(HUDashboardCameraItemModule *)self setCameraItemProvider:v7];

  v8 = [(HUDashboardCameraItemModule *)self context];
  v9 = [v8 room];
  v10 = [(HUDashboardCameraItemModule *)self cameraItemProvider];
  [v10 setRoom:v9];

  objc_initWeak(&location, self);
  v14 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v15, &location);
  v11 = [(HUDashboardCameraItemModule *)self cameraItemProvider:v14];
  [v11 setFilter:&v14];

  v12 = [(HUDashboardCameraItemModule *)self cameraItemProvider];
  [v3 na_safeAddObject:v12];

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

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentifier:@"camerasSection"];
  v7 = [(HUDashboardCameraItemModule *)self cameraItemProvider];
  v8 = [v7 items];
  v9 = [v8 allObjects];
  v10 = [(HFItemModule *)self _itemComparator];
  v11 = [v9 sortedArrayUsingComparator:v10];

  v12 = _HULocalizedStringWithDefaultValue(@"HUDashboardCamerasSectionTitle", @"HUDashboardCamerasSectionTitle", 1);
  [v6 setHeaderTitle:v12];

  [v6 setItems:v11];
  v13 = MEMORY[0x277D14778];
  v17[0] = v6;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v15 = [v13 filterSections:v14 toDisplayedItems:v5];

  return v15;
}

- (HMHome)home
{
  v2 = [(HUDashboardCameraItemModule *)self context];
  v3 = [v2 home];

  return v3;
}

- (HMRoom)room
{
  v2 = [(HUDashboardCameraItemModule *)self context];
  v3 = [v2 room];

  return v3;
}

@end