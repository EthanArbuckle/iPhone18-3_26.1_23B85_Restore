@interface HUCameraUserPermissionsSettingsModule
- (HUCameraUserPermissionsSettingsModule)initWithItemUpdater:(id)a3;
- (HUCameraUserPermissionsSettingsModule)initWithItemUpdater:(id)a3 user:(id)a4 home:(id)a5;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)didSelectItem:(id)a3;
- (id)itemProviders;
- (id)updateUserAccessLevelSetting:(unint64_t)a3;
- (unint64_t)userAccessLevelSetting;
- (void)_buildItemProvider;
- (void)_dispatchUpdateForHome:(id)a3 user:(id)a4;
@end

@implementation HUCameraUserPermissionsSettingsModule

- (HUCameraUserPermissionsSettingsModule)initWithItemUpdater:(id)a3 user:(id)a4 home:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v10 || !v11)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HUCameraUserPermissionsSettingsModule.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"user != nil && home != nil"}];
  }

  v17.receiver = self;
  v17.super_class = HUCameraUserPermissionsSettingsModule;
  v13 = [(HFItemModule *)&v17 initWithItemUpdater:v9];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_user, a4);
    objc_storeStrong(&v14->_home, a5);
    [(HUCameraUserPermissionsSettingsModule *)v14 _buildItemProvider];
  }

  return v14;
}

- (HUCameraUserPermissionsSettingsModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_user_home_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUCameraUserPermissionsSettingsModule.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HUCameraUserPermissionsSettingsModule initWithItemUpdater:]", v6}];

  return 0;
}

- (unint64_t)userAccessLevelSetting
{
  v3 = [(HUCameraUserPermissionsSettingsModule *)self home];
  v4 = [(HUCameraUserPermissionsSettingsModule *)self user];
  v5 = [v3 homeAccessControlForUser:v4];
  v6 = [v5 camerasAccessLevel];

  return v6;
}

- (id)updateUserAccessLevelSetting:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D2C900];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HUCameraUserPermissionsSettingsModule_updateUserAccessLevelSetting___block_invoke;
  v11[3] = &unk_277DC1CB0;
  v11[4] = self;
  v12[1] = a3;
  objc_copyWeak(v12, &location);
  v7 = [v6 futureWithBlock:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HUCameraUserPermissionsSettingsModule_updateUserAccessLevelSetting___block_invoke_3;
  v10[3] = &unk_277DBB420;
  v10[4] = self;
  v10[5] = a2;
  v8 = [v7 addCompletionBlock:v10];

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);

  return v8;
}

void __70__HUCameraUserPermissionsSettingsModule_updateUserAccessLevelSetting___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [*(a1 + 32) user];
  v6 = [v4 homeAccessControlForUser:v5];
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HUCameraUserPermissionsSettingsModule_updateUserAccessLevelSetting___block_invoke_2;
  v9[3] = &unk_277DC2170;
  v8 = v3;
  v10 = v8;
  objc_copyWeak(&v11, (a1 + 40));
  [v6 updateCamerasAccessLevel:v7 completionHandler:v9];

  objc_destroyWeak(&v11);
}

void __70__HUCameraUserPermissionsSettingsModule_updateUserAccessLevelSetting___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) finishWithNoResult];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained home];
  v3 = [WeakRetained user];
  [WeakRetained _dispatchUpdateForHome:v2 user:v3];
}

void __70__HUCameraUserPermissionsSettingsModule_updateUserAccessLevelSetting___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) itemUpdater];
  v2 = MEMORY[0x277D14788];
  v3 = [*(a1 + 32) itemProviders];
  v4 = [v2 requestToReloadItemProviders:v3 senderSelector:*(a1 + 40)];
  v5 = [v6 performItemUpdateRequest:v4];
}

- (void)_dispatchUpdateForHome:(id)a3 user:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D146E8] sharedDispatcher];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HUCameraUserPermissionsSettingsModule__dispatchUpdateForHome_user___block_invoke;
  v10[3] = &unk_277DB9920;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 dispatchHomeObserverMessage:v10 sender:0];
}

- (id)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:@"HUCameraSettingResultKey"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [(HUCameraUserPermissionsSettingsModule *)self accessLevelSettingItemProvider];
  v9 = [v8 items];
  v10 = [v9 containsObject:v4];

  if (v10)
  {
    [(HUCameraUserPermissionsSettingsModule *)self updateUserAccessLevelSetting:v7];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v11 = ;

  return v11;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUCameraUserPermissionsSettingsModule *)self itemProvider];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (void)_buildItemProvider
{
  v3 = objc_alloc(MEMORY[0x277D14C90]);
  v4 = [(HUCameraUserPermissionsSettingsModule *)self home];
  v5 = [(HUCameraUserPermissionsSettingsModule *)self user];
  v6 = [v3 initWithHome:v4 user:v5 nameStyle:2];
  showOptionsItem = self->_showOptionsItem;
  self->_showOptionsItem = v6;

  v8 = [HUCameraAccessLevelOptionItemProvider alloc];
  v9 = [(HUCameraUserPermissionsSettingsModule *)self user];
  v10 = [(HUCameraUserPermissionsSettingsModule *)self home];
  v11 = [(HUCameraAccessLevelOptionItemProvider *)v8 initWithUser:v9 home:v10];
  [(HUCameraUserPermissionsSettingsModule *)self setAccessLevelSettingItemProvider:v11];

  v12 = [(HUCameraUserPermissionsSettingsModule *)self accessLevelSettingItemProvider];
  v13 = [v12 reloadItems];

  v14 = [(HUCameraUserPermissionsSettingsModule *)self accessLevelSettingItemProvider];
  v15 = [v14 items];
  v16 = [v15 allObjects];
  [(HUCameraUserPermissionsSettingsModule *)self setOptionItems:v16];

  v17 = MEMORY[0x277CBEB98];
  v18 = [(HUCameraUserPermissionsSettingsModule *)self optionItems];
  v19 = [v17 setWithArray:v18];
  v20 = [(HUCameraUserPermissionsSettingsModule *)self showOptionsItem];
  v22 = [v19 setByAddingObject:v20];

  v21 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v22];
  [(HUCameraUserPermissionsSettingsModule *)self setItemProvider:v21];
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D14850]);
  v6 = [(HUCameraUserPermissionsSettingsModule *)self user];
  v7 = [v6 userID];
  v8 = [v5 initWithIdentifier:v7];

  v9 = MEMORY[0x277CBEB18];
  v10 = [(HUCameraUserPermissionsSettingsModule *)self showOptionsItem];
  v11 = [v9 arrayWithObject:v10];

  if ([(HUExpandableItemModule *)self showOptions])
  {
    v12 = [(HUCameraUserPermissionsSettingsModule *)self optionItems];
    v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_228];

    [v11 addObjectsFromArray:v13];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__HUCameraUserPermissionsSettingsModule_buildSectionsWithDisplayedItems___block_invoke_3;
  v18[3] = &unk_277DB85D8;
  v19 = v4;
  v14 = v4;
  v15 = [v11 na_filter:v18];
  [v8 setItems:v15];

  v20[0] = v8;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  return v16;
}

uint64_t __73__HUCameraUserPermissionsSettingsModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = *MEMORY[0x277D13FF0];
  v7 = [v5 objectForKey:*MEMORY[0x277D13FF0]];

  v8 = [v4 latestResults];

  v9 = [v8 objectForKey:v6];

  v17 = MEMORY[0x277D85DD0];
  v10 = v7;
  v18 = v10;
  v11 = v9;
  v12 = v11;
  v19 = v11;
  if (v10)
  {
    v13 = -1;
  }

  else
  {
    v13 = v11 != 0;
  }

  if (v10)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = v11;
  }

  else
  {
    v13 = [v10 compare:{v11, v17, 3221225472, __73__HUCameraUserPermissionsSettingsModule_buildSectionsWithDisplayedItems___block_invoke_2, &unk_277DB78F8, v10}];
    v15 = v19;
  }

  return v13;
}

@end