@interface HUCameraUserPermissionsSettingsModule
- (HUCameraUserPermissionsSettingsModule)initWithItemUpdater:(id)updater;
- (HUCameraUserPermissionsSettingsModule)initWithItemUpdater:(id)updater user:(id)user home:(id)home;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)didSelectItem:(id)item;
- (id)itemProviders;
- (id)updateUserAccessLevelSetting:(unint64_t)setting;
- (unint64_t)userAccessLevelSetting;
- (void)_buildItemProvider;
- (void)_dispatchUpdateForHome:(id)home user:(id)user;
@end

@implementation HUCameraUserPermissionsSettingsModule

- (HUCameraUserPermissionsSettingsModule)initWithItemUpdater:(id)updater user:(id)user home:(id)home
{
  updaterCopy = updater;
  userCopy = user;
  homeCopy = home;
  v12 = homeCopy;
  if (!userCopy || !homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUCameraUserPermissionsSettingsModule.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"user != nil && home != nil"}];
  }

  v17.receiver = self;
  v17.super_class = HUCameraUserPermissionsSettingsModule;
  v13 = [(HFItemModule *)&v17 initWithItemUpdater:updaterCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_user, user);
    objc_storeStrong(&v14->_home, home);
    [(HUCameraUserPermissionsSettingsModule *)v14 _buildItemProvider];
  }

  return v14;
}

- (HUCameraUserPermissionsSettingsModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_user_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCameraUserPermissionsSettingsModule.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HUCameraUserPermissionsSettingsModule initWithItemUpdater:]", v6}];

  return 0;
}

- (unint64_t)userAccessLevelSetting
{
  home = [(HUCameraUserPermissionsSettingsModule *)self home];
  user = [(HUCameraUserPermissionsSettingsModule *)self user];
  v5 = [home homeAccessControlForUser:user];
  camerasAccessLevel = [v5 camerasAccessLevel];

  return camerasAccessLevel;
}

- (id)updateUserAccessLevelSetting:(unint64_t)setting
{
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D2C900];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HUCameraUserPermissionsSettingsModule_updateUserAccessLevelSetting___block_invoke;
  v11[3] = &unk_277DC1CB0;
  v11[4] = self;
  v12[1] = setting;
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

- (void)_dispatchUpdateForHome:(id)home user:(id)user
{
  homeCopy = home;
  userCopy = user;
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HUCameraUserPermissionsSettingsModule__dispatchUpdateForHome_user___block_invoke;
  v10[3] = &unk_277DB9920;
  v11 = homeCopy;
  v12 = userCopy;
  v8 = userCopy;
  v9 = homeCopy;
  [mEMORY[0x277D146E8] dispatchHomeObserverMessage:v10 sender:0];
}

- (id)didSelectItem:(id)item
{
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v6 = [latestResults objectForKeyedSubscript:@"HUCameraSettingResultKey"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  accessLevelSettingItemProvider = [(HUCameraUserPermissionsSettingsModule *)self accessLevelSettingItemProvider];
  items = [accessLevelSettingItemProvider items];
  v10 = [items containsObject:itemCopy];

  if (v10)
  {
    [(HUCameraUserPermissionsSettingsModule *)self updateUserAccessLevelSetting:unsignedIntegerValue];
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
  itemProvider = [(HUCameraUserPermissionsSettingsModule *)self itemProvider];
  v4 = [v2 setWithObject:itemProvider];

  return v4;
}

- (void)_buildItemProvider
{
  v3 = objc_alloc(MEMORY[0x277D14C90]);
  home = [(HUCameraUserPermissionsSettingsModule *)self home];
  user = [(HUCameraUserPermissionsSettingsModule *)self user];
  v6 = [v3 initWithHome:home user:user nameStyle:2];
  showOptionsItem = self->_showOptionsItem;
  self->_showOptionsItem = v6;

  v8 = [HUCameraAccessLevelOptionItemProvider alloc];
  user2 = [(HUCameraUserPermissionsSettingsModule *)self user];
  home2 = [(HUCameraUserPermissionsSettingsModule *)self home];
  v11 = [(HUCameraAccessLevelOptionItemProvider *)v8 initWithUser:user2 home:home2];
  [(HUCameraUserPermissionsSettingsModule *)self setAccessLevelSettingItemProvider:v11];

  accessLevelSettingItemProvider = [(HUCameraUserPermissionsSettingsModule *)self accessLevelSettingItemProvider];
  reloadItems = [accessLevelSettingItemProvider reloadItems];

  accessLevelSettingItemProvider2 = [(HUCameraUserPermissionsSettingsModule *)self accessLevelSettingItemProvider];
  items = [accessLevelSettingItemProvider2 items];
  allObjects = [items allObjects];
  [(HUCameraUserPermissionsSettingsModule *)self setOptionItems:allObjects];

  v17 = MEMORY[0x277CBEB98];
  optionItems = [(HUCameraUserPermissionsSettingsModule *)self optionItems];
  v19 = [v17 setWithArray:optionItems];
  showOptionsItem = [(HUCameraUserPermissionsSettingsModule *)self showOptionsItem];
  v22 = [v19 setByAddingObject:showOptionsItem];

  v21 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v22];
  [(HUCameraUserPermissionsSettingsModule *)self setItemProvider:v21];
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v20[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_alloc(MEMORY[0x277D14850]);
  user = [(HUCameraUserPermissionsSettingsModule *)self user];
  userID = [user userID];
  v8 = [v5 initWithIdentifier:userID];

  v9 = MEMORY[0x277CBEB18];
  showOptionsItem = [(HUCameraUserPermissionsSettingsModule *)self showOptionsItem];
  v11 = [v9 arrayWithObject:showOptionsItem];

  if ([(HUExpandableItemModule *)self showOptions])
  {
    optionItems = [(HUCameraUserPermissionsSettingsModule *)self optionItems];
    v13 = [optionItems sortedArrayUsingComparator:&__block_literal_global_228];

    [v11 addObjectsFromArray:v13];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__HUCameraUserPermissionsSettingsModule_buildSectionsWithDisplayedItems___block_invoke_3;
  v18[3] = &unk_277DB85D8;
  v19 = itemsCopy;
  v14 = itemsCopy;
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