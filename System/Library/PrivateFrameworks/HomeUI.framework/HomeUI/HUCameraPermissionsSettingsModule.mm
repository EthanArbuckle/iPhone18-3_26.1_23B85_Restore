@interface HUCameraPermissionsSettingsModule
- (BOOL)isItemHeader:(id)header;
- (HUCameraPermissionsSettingsModule)initWithItemUpdater:(id)updater;
- (HUCameraPermissionsSettingsModule)initWithItemUpdater:(id)updater home:(id)home displayStyle:(unint64_t)style;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)didSelectItem:(id)item;
- (unint64_t)accessModeSettingForUser:(id)user;
- (void)_buildItemProviders;
@end

@implementation HUCameraPermissionsSettingsModule

- (HUCameraPermissionsSettingsModule)initWithItemUpdater:(id)updater home:(id)home displayStyle:(unint64_t)style
{
  updaterCopy = updater;
  homeCopy = home;
  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUCameraPermissionsSettingsModule.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  v16.receiver = self;
  v16.super_class = HUCameraPermissionsSettingsModule;
  v11 = [(HFItemModule *)&v16 initWithItemUpdater:updaterCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_home, home);
    userSectionModules = v12->_userSectionModules;
    v12->_userSectionModules = MEMORY[0x277CBEBF8];

    v12->_displayStyle = style;
    [(HUCameraPermissionsSettingsModule *)v12 _buildItemProviders];
  }

  return v12;
}

- (HUCameraPermissionsSettingsModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_displayStyle_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCameraPermissionsSettingsModule.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HUCameraPermissionsSettingsModule initWithItemUpdater:]", v6}];

  return 0;
}

- (BOOL)isItemHeader:(id)header
{
  headerCopy = header;
  headerItemProvider = [(HUCameraPermissionsSettingsModule *)self headerItemProvider];
  items = [headerItemProvider items];
  v7 = [items containsObject:headerCopy];

  return v7;
}

- (unint64_t)accessModeSettingForUser:(id)user
{
  userCopy = user;
  home = [(HUCameraPermissionsSettingsModule *)self home];
  v6 = [home homeAccessControlForUser:userCopy];

  camerasAccessLevel = [v6 camerasAccessLevel];
  return camerasAccessLevel;
}

- (void)_buildItemProviders
{
  v4 = objc_alloc(MEMORY[0x277D14B40]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __56__HUCameraPermissionsSettingsModule__buildItemProviders__block_invoke;
  v26[3] = &unk_277DB7D38;
  v26[4] = self;
  v5 = __56__HUCameraPermissionsSettingsModule__buildItemProviders__block_invoke(v26);
  v6 = [v4 initWithItems:v5];
  [(HUCameraPermissionsSettingsModule *)self setHeaderItemProvider:v6];

  home = [(HUCameraPermissionsSettingsModule *)self home];
  hf_allNonOwnerUsers = [home hf_allNonOwnerUsers];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __56__HUCameraPermissionsSettingsModule__buildItemProviders__block_invoke_2;
  v24[3] = &unk_277DB7D60;
  v25 = home;
  v9 = home;
  v10 = [hf_allNonOwnerUsers na_filter:v24];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __56__HUCameraPermissionsSettingsModule__buildItemProviders__block_invoke_3;
  v23[3] = &unk_277DB7D88;
  v23[4] = self;
  v11 = [v10 na_map:v23];
  [(HUCameraPermissionsSettingsModule *)self setUserSectionModules:v11];

  v12 = MEMORY[0x277CBEB98];
  expandableModules = [(HUCameraPermissionsSettingsModule *)self expandableModules];
  v14 = [v12 setWithArray:expandableModules];
  v15 = [v14 na_flatMap:&__block_literal_global_11];
  headerItemProvider = [(HUCameraPermissionsSettingsModule *)self headerItemProvider];
  v17 = [v15 setByAddingObject:headerItemProvider];
  [(HUCameraPermissionsSettingsModule *)self setItemProviders:v17];

  v18 = MEMORY[0x277D14788];
  itemProviders = [(HUCameraPermissionsSettingsModule *)self itemProviders];
  v20 = [v18 requestToReloadItemProviders:itemProviders senderSelector:a2];

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v22 = [itemUpdater performItemUpdateRequest:v20];
}

id __56__HUCameraPermissionsSettingsModule__buildItemProviders__block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = _HULocalizedStringWithDefaultValue(@"HUCameraPermissionsSettingsHeader_Title", @"HUCameraPermissionsSettingsHeader_Title", 1);
  v3 = _HULocalizedStringWithDefaultValue(@"HUCameraPermissionsSettingsHeader_Body", @"HUCameraPermissionsSettingsHeader_Body", 1);
  v4 = HUCameraBuildHeaderAttributedString(2, v2, v3);
  v5 = objc_alloc(MEMORY[0x277D14B38]);
  v6 = *MEMORY[0x277D13E20];
  v15[0] = v4;
  v7 = *MEMORY[0x277D13FB8];
  v14[0] = v6;
  v14[1] = v7;
  v8 = [*(a1 + 32) displayStyle];
  v9 = MEMORY[0x277CBEC38];
  if (v8 == 2)
  {
    v9 = MEMORY[0x277CBEC28];
  }

  v15[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [v5 initWithResults:v10];

  v12 = [MEMORY[0x277CBEB98] setWithObject:v11];

  return v12;
}

HUCameraUserPermissionsSettingsModule *__56__HUCameraPermissionsSettingsModule__buildItemProviders__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HUCameraUserPermissionsSettingsModule alloc];
  v5 = [*(a1 + 32) itemUpdater];
  v6 = [*(a1 + 32) home];
  v7 = [(HUCameraUserPermissionsSettingsModule *)v4 initWithItemUpdater:v5 user:v3 home:v6];

  return v7;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v28 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"PermissionsOptionsHeader"];
  headerItemProvider = [(HUCameraPermissionsSettingsModule *)self headerItemProvider];
  items = [headerItemProvider items];
  allObjects = [items allObjects];
  [v5 setItems:allObjects];

  v9 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  expandableModules = [(HUCameraPermissionsSettingsModule *)self expandableModules];
  v11 = [expandableModules countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(expandableModules);
        }

        v15 = [*(*(&v22 + 1) + 8 * i) buildSectionsWithDisplayedItems:itemsCopy];
        v16 = [v15 na_flatMap:&__block_literal_global_35_0];
        [v9 addObjectsFromArray:v16];
      }

      v12 = [expandableModules countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v12);
  }

  v17 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"PermissionsOptions"];
  [v17 setItems:v9];
  v18 = MEMORY[0x277D14778];
  v26[0] = v5;
  v26[1] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v20 = [v18 filterSections:v19 toDisplayedItems:itemsCopy];

  return v20;
}

- (id)didSelectItem:(id)item
{
  itemCopy = item;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  expandableModules = [(HUCameraPermissionsSettingsModule *)self expandableModules];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HUCameraPermissionsSettingsModule_didSelectItem___block_invoke;
  v9[3] = &unk_277DB7DF0;
  v11 = &v12;
  v6 = itemCopy;
  v10 = v6;
  [expandableModules na_each:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __51__HUCameraPermissionsSettingsModule_didSelectItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v9 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v9;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 didSelectItem:*(a1 + 32)];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

@end