@interface HUAccessorySettingsItemModule
- (BOOL)checkSoftwareVersionForAccessories:(id)accessories neededSoftwareVersion:(id)version;
- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)updater home:(id)home sourceItem:(id)item usageOptions:(id)options;
- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)updater homeKitSettingsVendor:(id)vendor usageOptions:(id)options;
- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)updater mediaAccessoryItem:(id)item;
- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)updater settingGroupItem:(id)item usageOptions:(id)options;
- (id)_itemSectionForGroup:(id)group entity:(id)entity settingItems:(id)items groupItems:(id)groupItems;
- (id)_itemSectionWithEntity:(id)entity items:(id)items;
- (id)_itemSectionsForGroupKeyPaths:(id)paths;
- (id)_itemSectionsForParentGroupWithItems;
- (id)_itemSectionsForShowInSeperateSectionItems:(id)items;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)getAllHomePodFromItem:(id)item;
- (id)itemProviders;
- (id)updateItem:(id)item withValue:(id)value;
- (void)_registerForAccessorySettingsUpdates;
- (void)_resetIfNeeded;
- (void)_unregisterForAccessorySettingsUpdates;
- (void)updateItems:(id)items;
- (void)updateItems:(id)items matchingDependency:(id)dependency;
- (void)updateItemsForKeyPath:(id)path;
@end

@implementation HUAccessorySettingsItemModule

- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)updater mediaAccessoryItem:(id)item
{
  itemCopy = item;
  updaterCopy = updater;
  accessories = [itemCopy accessories];
  anyObject = [accessories anyObject];
  home = [anyObject home];
  v11 = [(HUAccessorySettingsItemModule *)self initWithItemUpdater:updaterCopy home:home sourceItem:itemCopy usageOptions:0];

  return v11;
}

- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)updater home:(id)home sourceItem:(id)item usageOptions:(id)options
{
  updaterCopy = updater;
  homeCopy = home;
  itemCopy = item;
  optionsCopy = options;
  latestResults = [itemCopy latestResults];
  homeKitSettingsVendor = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FC8]];
  v17 = &unk_282575DB0;
  if ([homeKitSettingsVendor conformsToProtocol:v17])
  {
    v18 = homeKitSettingsVendor;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (!v19)
  {
    v20 = itemCopy;
    v21 = [v20 conformsToProtocol:&unk_28251B378] ? v20 : 0;
    v22 = v21;

    homeKitSettingsVendor = [v22 homeKitSettingsVendor];

    if (!homeKitSettingsVendor)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsItemModule.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"homeKitSettingsVendor"}];

      homeKitSettingsVendor = 0;
    }
  }

  v34.receiver = self;
  v34.super_class = HUAccessorySettingsItemModule;
  v23 = [(HUServiceDetailsItemModule *)&v34 initWithItemUpdater:updaterCopy home:homeCopy sourceItem:itemCopy];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_homeKitSettingsVendor, homeKitSettingsVendor);
    settings = [homeKitSettingsVendor settings];
    settings = v24->_settings;
    v24->_settings = settings;

    settings2 = [homeKitSettingsVendor settings];
    hf_codex = [settings2 hf_codex];
    codex = v24->_codex;
    v24->_codex = hf_codex;

    v30 = [objc_alloc(MEMORY[0x277D14360]) initWithHomeKitSettingsVendor:homeKitSettingsVendor settingGroup:0 usageOptions:optionsCopy];
    accessorySettingsItemProvider = v24->_accessorySettingsItemProvider;
    v24->_accessorySettingsItemProvider = v30;
  }

  return v24;
}

- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)updater homeKitSettingsVendor:(id)vendor usageOptions:(id)options
{
  v8 = MEMORY[0x277D14340];
  optionsCopy = options;
  vendorCopy = vendor;
  updaterCopy = updater;
  v12 = [[v8 alloc] initWithHomeKitSettingsVendor:vendorCopy usageOptions:optionsCopy];

  v13 = [(HUAccessorySettingsItemModule *)self initWithItemUpdater:updaterCopy settingGroupItem:v12 usageOptions:optionsCopy];
  return v13;
}

- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)updater settingGroupItem:(id)item usageOptions:(id)options
{
  itemCopy = item;
  optionsCopy = options;
  updaterCopy = updater;
  homeKitSettingsVendor = [itemCopy homeKitSettingsVendor];
  hf_home = [homeKitSettingsVendor hf_home];
  v13 = [(HUAccessorySettingsItemModule *)self initWithItemUpdater:updaterCopy home:hf_home sourceItem:itemCopy usageOptions:optionsCopy];

  if (v13)
  {
    entity = [itemCopy entity];
    parentEntity = v13->_parentEntity;
    v13->_parentEntity = entity;

    settingGroup = [itemCopy settingGroup];
    parentSettingGroup = v13->_parentSettingGroup;
    v13->_parentSettingGroup = settingGroup;

    settingGroup2 = [itemCopy settingGroup];
    [(HFAccessorySettingsItemProvider *)v13->_accessorySettingsItemProvider setSettingGroup:settingGroup2];
  }

  return v13;
}

- (id)itemProviders
{
  itemProviders = self->_itemProviders;
  if (itemProviders)
  {
    v3 = itemProviders;
  }

  else
  {
    v5 = objc_opt_new();
    accessorySettingsItemProvider = [(HUAccessorySettingsItemModule *)self accessorySettingsItemProvider];
    [(NSSet *)v5 na_safeAddObject:accessorySettingsItemProvider];

    v7 = self->_itemProviders;
    self->_itemProviders = v5;
    v8 = v5;

    v3 = self->_itemProviders;
  }

  return v3;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  [(HUAccessorySettingsItemModule *)self _resetIfNeeded];
  settings = [(HUAccessorySettingsItemModule *)self settings];
  if (!settings)
  {
    goto LABEL_15;
  }

  v6 = settings;
  parentSettingGroup = [(HUAccessorySettingsItemModule *)self parentSettingGroup];
  if (!parentSettingGroup)
  {

    goto LABEL_15;
  }

  v8 = parentSettingGroup;
  codex = [(HUAccessorySettingsItemModule *)self codex];

  if (!codex)
  {
LABEL_15:
    v29 = MEMORY[0x277CBEBF8];
    goto LABEL_16;
  }

  accessorySettingsItemProvider = [(HUAccessorySettingsItemModule *)self accessorySettingsItemProvider];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __65__HUAccessorySettingsItemModule_buildSectionsWithDisplayedItems___block_invoke;
  v49[3] = &unk_277DB85D8;
  v11 = accessorySettingsItemProvider;
  v50 = v11;
  v12 = [itemsCopy na_filter:v49];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __65__HUAccessorySettingsItemModule_buildSectionsWithDisplayedItems___block_invoke_2;
  v48[3] = &unk_277DB85D8;
  v48[4] = self;
  v13 = [v12 na_filter:v48];
  [(HUAccessorySettingsItemModule *)self setSettingItemsToBeDisplayed:v13];

  v46 = v12;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __65__HUAccessorySettingsItemModule_buildSectionsWithDisplayedItems___block_invoke_3;
  v47[3] = &unk_277DB85D8;
  v47[4] = self;
  v14 = [v12 na_filter:v47];
  [(HUAccessorySettingsItemModule *)self setGroupItemsToBeDisplayed:v14];

  v15 = objc_opt_new();
  accessorySettingsItemProvider2 = [(HUAccessorySettingsItemModule *)self accessorySettingsItemProvider];
  settingGroup = [accessorySettingsItemProvider2 settingGroup];
  keyPath = [settingGroup keyPath];

  v19 = MEMORY[0x277CBEB40];
  codex2 = [(HUAccessorySettingsItemModule *)self codex];
  v45 = keyPath;
  v21 = [codex2 hf_nodeWithKeyPath:keyPath];
  hf_sortedAccessorySettingsChildren = [v21 hf_sortedAccessorySettingsChildren];
  v23 = [hf_sortedAccessorySettingsChildren na_filter:&__block_literal_global_209];
  v24 = [v23 na_map:&__block_literal_global_111_4];
  v25 = [v19 orderedSetWithArray:v24];

  _itemSectionsForParentGroupWithItems = [(HUAccessorySettingsItemModule *)self _itemSectionsForParentGroupWithItems];
  [v15 addObjectsFromArray:_itemSectionsForParentGroupWithItems];

  parentEntity = [(HUAccessorySettingsItemModule *)self parentEntity];
  LODWORD(v24) = [parentEntity wantsSeparateSectionPerGroup];

  if (v24)
  {
    v28 = [(HUAccessorySettingsItemModule *)self _itemSectionsForGroupKeyPaths:v25];
    [v15 addObjectsFromArray:v28];
  }

  v29 = [v15 sortedArrayUsingComparator:&__block_literal_global_114_2];
  parentEntity2 = [(HUAccessorySettingsItemModule *)self parentEntity];
  adapterIdentifier = [parentEntity2 adapterIdentifier];

  if (adapterIdentifier)
  {
    v42 = v25;
    v43 = v15;
    v44 = v11;
    homeKitSettingsVendor = [(HUAccessorySettingsItemModule *)self homeKitSettingsVendor];
    hf_settingsAdapterManager = [homeKitSettingsVendor hf_settingsAdapterManager];
    parentEntity3 = [(HUAccessorySettingsItemModule *)self parentEntity];
    adapterIdentifier2 = [parentEntity3 adapterIdentifier];
    v36 = [hf_settingsAdapterManager adapterForIdentifier:adapterIdentifier2];
    if ([v36 conformsToProtocol:&unk_2825BDAE0])
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    if (objc_opt_respondsToSelector())
    {
      parentEntity4 = [(HUAccessorySettingsItemModule *)self parentEntity];
      v40 = [v38 customizeSections:v29 forEntity:parentEntity4];

      v29 = v40;
    }

    v11 = v44;
    v25 = v42;

    v15 = v43;
  }

LABEL_16:

  return v29;
}

uint64_t __65__HUAccessorySettingsItemModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 items];
  v5 = [v4 containsObject:v3];

  return v5;
}

uint64_t __65__HUAccessorySettingsItemModule_buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 entity];
  v8 = [v7 isSoftwareVersionNeeded];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v6 homeKitSettingsVendor];
    v11 = [v9 getAllHomePodFromItem:v10];

    v12 = *(a1 + 32);
    v16 = *MEMORY[0x277D0F730];
    v17 = *(MEMORY[0x277D0F730] + 16);
    v13 = [MEMORY[0x277D0F8F8] versionFromOperatingSystemVersion:&v16];
    v14 = [v12 checkSoftwareVersionForAccessories:v11 neededSoftwareVersion:v13];
  }

  else
  {
    v14 = v6 != 0;
  }

  return v14;
}

uint64_t __65__HUAccessorySettingsItemModule_buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 entity];
  v8 = [v7 isSoftwareVersionNeeded];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v6 homeKitSettingsVendor];
    v11 = [v9 getAllHomePodFromItem:v10];

    v12 = *(a1 + 32);
    v16 = *MEMORY[0x277D0F730];
    v17 = *(MEMORY[0x277D0F730] + 16);
    v13 = [MEMORY[0x277D0F8F8] versionFromOperatingSystemVersion:&v16];
    v14 = [v12 checkSoftwareVersionForAccessories:v11 neededSoftwareVersion:v13];
  }

  else
  {
    v14 = v6 != 0;
  }

  return v14;
}

BOOL __65__HUAccessorySettingsItemModule_buildSectionsWithDisplayedItems___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 representedObject];
  v3 = [v2 interfaceModality] == 0;

  return v3;
}

id __65__HUAccessorySettingsItemModule_buildSectionsWithDisplayedItems___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 representedObject];
  v3 = [v2 keyPath];

  return v3;
}

uint64_t __65__HUAccessorySettingsItemModule_buildSectionsWithDisplayedItems___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HUAccessorySettingsItemModuleSortKey"];
  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:@"HUAccessorySettingsItemModuleSortKey"];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)updateItems:(id)items
{
  v6 = [MEMORY[0x277D14788] requestToUpdateItems:items senderSelector:a2];
  itemUpdater = [(HFItemModule *)self itemUpdater];
  v5 = [itemUpdater performItemUpdateRequest:v6];
}

- (void)updateItems:(id)items matchingDependency:(id)dependency
{
  dependencyCopy = dependency;
  v7 = [MEMORY[0x277CBEB58] setWithSet:items];
  itemProviders = [(HUAccessorySettingsItemModule *)self itemProviders];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __64__HUAccessorySettingsItemModule_updateItems_matchingDependency___block_invoke;
  v14 = &unk_277DC1718;
  v15 = dependencyCopy;
  v16 = v7;
  v9 = v7;
  v10 = dependencyCopy;
  [itemProviders na_each:&v11];

  [(HUAccessorySettingsItemModule *)self updateItems:v9, v11, v12, v13, v14];
}

void __64__HUAccessorySettingsItemModule_updateItems_matchingDependency___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HUAccessorySettingsItemModule_updateItems_matchingDependency___block_invoke_2;
  v4[3] = &unk_277DBC410;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 na_each:v4];
}

void __64__HUAccessorySettingsItemModule_updateItems_matchingDependency___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 latestResults];
  v4 = [v3 objectForKey:*MEMORY[0x277D14098]];
  v5 = [v4 containsObject:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (void)updateItemsForKeyPath:(id)path
{
  pathCopy = path;
  v5 = objc_opt_new();
  itemProviders = [(HUAccessorySettingsItemModule *)self itemProviders];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__HUAccessorySettingsItemModule_updateItemsForKeyPath___block_invoke;
  v12 = &unk_277DC1718;
  v13 = pathCopy;
  v14 = v5;
  v7 = v5;
  v8 = pathCopy;
  [itemProviders na_each:&v9];

  [(HUAccessorySettingsItemModule *)self updateItems:v7, v9, v10, v11, v12];
}

void __55__HUAccessorySettingsItemModule_updateItemsForKeyPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__HUAccessorySettingsItemModule_updateItemsForKeyPath___block_invoke_2;
  v4[3] = &unk_277DBC410;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 na_each:v4];
}

void __55__HUAccessorySettingsItemModule_updateItemsForKeyPath___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 latestResults];
  v4 = [v3 objectForKey:*MEMORY[0x277D13350]];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (id)updateItem:(id)item withValue:(id)value
{
  v34 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  valueCopy = value;
  latestResults = [itemCopy latestResults];
  v8 = [latestResults objectForKey:*MEMORY[0x277D13370]];

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v29 = itemCopy;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = valueCopy;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to update item '%@' (Setting: %@) to value: %@", buf, 0x20u);
  }

  if (itemCopy && v8)
  {
    v10 = [itemCopy updateValue:valueCopy];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __54__HUAccessorySettingsItemModule_updateItem_withValue___block_invoke;
    v24[3] = &unk_277DBE710;
    v11 = itemCopy;
    v25 = v11;
    v12 = v8;
    v26 = v12;
    v13 = valueCopy;
    v27 = v13;
    v14 = [v10 addFailureBlock:v24];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__HUAccessorySettingsItemModule_updateItem_withValue___block_invoke_136;
    v20[3] = &unk_277DC1740;
    v21 = v11;
    v22 = v12;
    v23 = v13;
    v15 = [v14 addSuccessBlock:v20];

    v16 = v25;
  }

  else
  {
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v29 = itemCopy;
      v30 = 2112;
      v31 = valueCopy;
      _os_log_error_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_ERROR, "Failed to update setting; no item or setting for item: %@ / value: %@", buf, 0x16u);
    }

    v18 = MEMORY[0x277D2C900];
    v16 = [MEMORY[0x277CCA9B8] hf_errorWithCode:7];
    v15 = [v18 futureWithError:v16];
  }

  return v15;
}

void __54__HUAccessorySettingsItemModule_updateItem_withValue___block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    *buf = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Failed to update item '%@' (Setting: %@) to value: %@", buf, 0x20u);
  }

  v8 = [MEMORY[0x277D14640] sharedHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"updateItem:%@ withValue:%@", a1[4], a1[6]];
  [v8 logError:v3 operationDescription:v9];
}

void __54__HUAccessorySettingsItemModule_updateItem_withValue___block_invoke_136(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = 138412802;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "Updated item '%@' (Setting: %@) to value: %@", &v6, 0x20u);
  }
}

- (void)_registerForAccessorySettingsUpdates
{
  settings = [(HUAccessorySettingsItemModule *)self settings];
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  if (settings)
  {
    [mEMORY[0x277D146E8] addHomeKitSettingsObserver:self];
  }

  else
  {
    [mEMORY[0x277D146E8] addMediaObjectObserver:self];
  }
}

- (void)_unregisterForAccessorySettingsUpdates
{
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  [mEMORY[0x277D146E8] removeHomeKitSettingsObserver:self];

  mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
  [mEMORY[0x277D146E8]2 removeMediaObjectObserver:self];
}

- (id)_itemSectionWithEntity:(id)entity items:(id)items
{
  v43[1] = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  itemsCopy = items;
  if (!itemsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsItemModule.m" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"items"}];
  }

  keyPath = [entityCopy keyPath];
  v10 = keyPath;
  if (keyPath)
  {
    uUIDString = keyPath;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
  }

  v13 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:uUIDString];
  [v13 setItems:itemsCopy];
  headerTitleFormatter = [entityCopy headerTitleFormatter];

  if (headerTitleFormatter)
  {
    headerTitleFormatter2 = [entityCopy headerTitleFormatter];
    homeKitSettingsVendor = [(HUAccessorySettingsItemModule *)self homeKitSettingsVendor];
    localizedHeader2 = [headerTitleFormatter2 attributedStringForObjectValue:homeKitSettingsVendor withDefaultAttributes:0];

    if (localizedHeader2)
    {
      [v13 setAttributedHeaderTitle:localizedHeader2];
    }

    else
    {
      headerTitleFormatter3 = [entityCopy headerTitleFormatter];
      homeKitSettingsVendor2 = [(HUAccessorySettingsItemModule *)self homeKitSettingsVendor];
      v21 = [headerTitleFormatter3 stringForObjectValue:homeKitSettingsVendor2];
      [v13 setHeaderTitle:v21];

      localizedHeader2 = 0;
    }
  }

  else
  {
    localizedHeader = [entityCopy localizedHeader];

    if (!localizedHeader)
    {
      goto LABEL_13;
    }

    localizedHeader2 = [entityCopy localizedHeader];
    [v13 setHeaderTitle:localizedHeader2];
  }

LABEL_13:
  footerTitleFormatter = [entityCopy footerTitleFormatter];

  if (footerTitleFormatter)
  {
    footerTitleFormatter2 = [entityCopy footerTitleFormatter];
    homeKitSettingsVendor3 = [(HUAccessorySettingsItemModule *)self homeKitSettingsVendor];
    localizedFooter2 = [footerTitleFormatter2 attributedStringForObjectValue:homeKitSettingsVendor3 withDefaultAttributes:0];

    if (localizedFooter2)
    {
      [v13 setAttributedFooterTitle:localizedFooter2];
    }

    else
    {
      footerTitleFormatter3 = [entityCopy footerTitleFormatter];
      homeKitSettingsVendor4 = [(HUAccessorySettingsItemModule *)self homeKitSettingsVendor];
      v29 = [footerTitleFormatter3 stringForObjectValue:homeKitSettingsVendor4];
      [v13 setFooterTitle:v29];

      localizedFooter2 = 0;
    }
  }

  else
  {
    localizedFooter = [entityCopy localizedFooter];

    if (!localizedFooter)
    {
      goto LABEL_20;
    }

    localizedFooter2 = [entityCopy localizedFooter];
    [v13 setFooterTitle:localizedFooter2];
  }

LABEL_20:
  if (!entityCopy)
  {
    sortKey = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", 0x7FFFFFFFFFFFFFFFLL, @"HUAccessorySettingsItemModuleSortKey"];
    v41 = sortKey;
    0x7FFFFFFFFFFFFFFFLL = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    [v13 setUserInfo:0x7FFFFFFFFFFFFFFFLL];
LABEL_26:

    goto LABEL_27;
  }

  v42 = @"HUAccessorySettingsItemModuleSortKey";
  sortKey = [entityCopy sortKey];
  0x7FFFFFFFFFFFFFFFLL = sortKey;
  if (!sortKey)
  {
    0x7FFFFFFFFFFFFFFFLL = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 0x7FFFFFFFFFFFFFFFLL];
  }

  v43[0] = 0x7FFFFFFFFFFFFFFFLL;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  [v13 setUserInfo:v32];

  if (!sortKey)
  {
    goto LABEL_26;
  }

LABEL_27:

  adapterIdentifier = [entityCopy adapterIdentifier];

  if (adapterIdentifier)
  {
    homeKitSettingsVendor5 = [(HUAccessorySettingsItemModule *)self homeKitSettingsVendor];
    hf_settingsAdapterManager = [homeKitSettingsVendor5 hf_settingsAdapterManager];
    adapterIdentifier2 = [entityCopy adapterIdentifier];
    v37 = [hf_settingsAdapterManager adapterForIdentifier:adapterIdentifier2];

    if (objc_opt_respondsToSelector())
    {
      [v37 configureSection:v13 forEntity:entityCopy];
    }
  }

  return v13;
}

- (id)_itemSectionsForParentGroupWithItems
{
  selfCopy = self;
  v44 = *MEMORY[0x277D85DE8];
  settingItemsToBeDisplayed = [(HUAccessorySettingsItemModule *)self settingItemsToBeDisplayed];
  groupItemsToBeDisplayed = [(HUAccessorySettingsItemModule *)selfCopy groupItemsToBeDisplayed];
  v27 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  parentSettingGroup = [(HUAccessorySettingsItemModule *)selfCopy parentSettingGroup];
  settings = [parentSettingGroup settings];

  obj = settings;
  v5 = [settings countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __69__HUAccessorySettingsItemModule__itemSectionsForParentGroupWithItems__block_invoke;
        v34[3] = &unk_277DB85D8;
        v34[4] = v9;
        v10 = [settingItemsToBeDisplayed na_firstObjectPassingTest:v34];
        if (v10)
        {
          v11 = selfCopy;
          codex = [(HUAccessorySettingsItemModule *)selfCopy codex];
          keyPath = [v9 keyPath];
          v14 = [codex hf_nodeWithKeyPath:keyPath];

          if (v14)
          {
            [v27 addObject:v10];
          }

          else
          {
            v15 = HFLogForCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              keyPath2 = [v9 keyPath];
              *buf = 138412546;
              v40 = v10;
              v41 = 2112;
              v42 = keyPath2;
              _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Dropping item (%@) with setting not in allowlist: %@", buf, 0x16u);
            }
          }

          selfCopy = v11;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v6);
  }

  parentEntity = [(HUAccessorySettingsItemModule *)selfCopy parentEntity];
  wantsSeparateSectionPerGroup = [parentEntity wantsSeparateSectionPerGroup];

  if (wantsSeparateSectionPerGroup)
  {
    v19 = objc_opt_new();
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __69__HUAccessorySettingsItemModule__itemSectionsForParentGroupWithItems__block_invoke_3;
    v30[3] = &unk_277DC17B0;
    v20 = v31;
    v21 = v19;
    v31[0] = v21;
    v31[1] = selfCopy;
    v22 = v27;
    [v27 enumerateObjectsUsingBlock:v30];
    v23 = groupItemsToBeDisplayed;
  }

  else
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __69__HUAccessorySettingsItemModule__itemSectionsForParentGroupWithItems__block_invoke_152;
    v32[3] = &unk_277DC1768;
    v20 = &v33;
    v22 = v27;
    v24 = v27;
    v33 = v24;
    v23 = groupItemsToBeDisplayed;
    [groupItemsToBeDisplayed na_each:v32];
    [v24 sortUsingComparator:&__block_literal_global_156_1];
    v21 = [(HUAccessorySettingsItemModule *)selfCopy _itemSectionsForShowInSeperateSectionItems:v24];
  }

  return v21;
}

uint64_t __69__HUAccessorySettingsItemModule__itemSectionsForParentGroupWithItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKey:*MEMORY[0x277D13350]];
  v5 = [*(a1 + 32) keyPath];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

void __69__HUAccessorySettingsItemModule__itemSectionsForParentGroupWithItems__block_invoke_152(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 entity];
  v4 = [v3 alwaysShowGroup];

  if (v4)
  {
    [*(a1 + 32) addObject:v5];
  }
}

uint64_t __69__HUAccessorySettingsItemModule__itemSectionsForParentGroupWithItems__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 entity];
  v6 = [v5 sortKey];
  v7 = [v4 entity];

  v8 = [v7 sortKey];
  v9 = [v6 compare:v8];

  return v9;
}

void __69__HUAccessorySettingsItemModule__itemSectionsForParentGroupWithItems__block_invoke_3(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v4 entity];
  v8[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v7 = [v3 _itemSectionWithEntity:v5 items:v6];
  [v2 na_safeAddObject:v7];
}

- (id)_itemSectionsForShowInSeperateSectionItems:(id)items
{
  v30 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_opt_new();
  v5 = [itemsCopy mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        entity = [v11 entity];
        showInSeperateSection = [entity showInSeperateSection];

        if (showInSeperateSection)
        {
          entity2 = [v11 entity];
          v28 = v11;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
          v16 = [(HUAccessorySettingsItemModule *)self _itemSectionWithEntity:entity2 items:v15];
          [v4 na_safeAddObject:v16];

          [v5 removeObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v17 = v5;
  firstObject = [v5 firstObject];
  entity3 = [firstObject entity];
  array = [v5 array];
  v21 = [(HUAccessorySettingsItemModule *)self _itemSectionWithEntity:entity3 items:array];
  [v4 na_safeAddObject:v21];

  return v4;
}

- (id)_itemSectionsForGroupKeyPaths:(id)paths
{
  v27 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v19 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = pathsCopy;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        codex = [(HUAccessorySettingsItemModule *)self codex];
        v11 = [codex hf_nodeWithKeyPath:v9];
        representedObject = [v11 representedObject];

        if (representedObject)
        {
          groupItemsToBeDisplayed = [(HUAccessorySettingsItemModule *)self groupItemsToBeDisplayed];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __63__HUAccessorySettingsItemModule__itemSectionsForGroupKeyPaths___block_invoke;
          v21[3] = &unk_277DC17D8;
          v21[4] = v9;
          v14 = [groupItemsToBeDisplayed na_firstObjectPassingTest:v21];

          if (v14)
          {
            settingItemsToBeDisplayed = [(HUAccessorySettingsItemModule *)self settingItemsToBeDisplayed];
            groupItemsToBeDisplayed2 = [(HUAccessorySettingsItemModule *)self groupItemsToBeDisplayed];
            v17 = [(HUAccessorySettingsItemModule *)self _itemSectionForGroup:v14 entity:representedObject settingItems:settingItemsToBeDisplayed groupItems:groupItemsToBeDisplayed2];

            [v19 na_safeAddObject:v17];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  return v19;
}

uint64_t __63__HUAccessorySettingsItemModule__itemSectionsForGroupKeyPaths___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 settingKeyPath];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_itemSectionForGroup:(id)group entity:(id)entity settingItems:(id)items groupItems:(id)groupItems
{
  groupCopy = group;
  entityCopy = entity;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __85__HUAccessorySettingsItemModule__itemSectionForGroup_entity_settingItems_groupItems___block_invoke;
  v35[3] = &unk_277DC1800;
  v11 = groupCopy;
  v36 = v11;
  v12 = entityCopy;
  v37 = v12;
  itemsCopy = items;
  v14 = [groupItems na_filter:v35];
  settingGroup = [v11 settingGroup];
  settings = [settingGroup settings];

  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __85__HUAccessorySettingsItemModule__itemSectionForGroup_entity_settingItems_groupItems___block_invoke_2;
  v33 = &unk_277DC1850;
  v17 = settings;
  v34 = v17;
  v18 = [itemsCopy na_filter:&v30];

  v19 = v14;
  if (v14)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CBEB98] set];
    if (v18)
    {
LABEL_3:
      v20 = [v19 setByAddingObjectsFromSet:{v18, self, v30, v31, v32, v33}];
      if (v14)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v26 = [MEMORY[0x277CBEB98] set];
  v20 = [v19 setByAddingObjectsFromSet:v26];

  if (!v14)
  {
LABEL_4:
  }

LABEL_5:
  v21 = [v20 na_filter:&__block_literal_global_165];
  v22 = [v20 na_setByRemovingObjectsFromSet:v21];
  allObjects = [v22 allObjects];
  v24 = [allObjects sortedArrayUsingComparator:&__block_literal_global_167];

  if ([v24 count])
  {
    v25 = [v29 _itemSectionWithEntity:v12 items:v24];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

uint64_t __85__HUAccessorySettingsItemModule__itemSectionForGroup_entity_settingItems_groupItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) settingGroup];
  v5 = [v4 groups];
  v6 = [v3 settingGroup];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v3 entity];
    v10 = [v9 alwaysShowGroup];

    if (v10)
    {
      v11 = [v3 entity];
      v12 = [v11 keyPath];
      v13 = [*(a1 + 40) keyPath];
      v8 = [v12 hasPrefix:v13];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

uint64_t __85__HUAccessorySettingsItemModule__itemSectionForGroup_entity_settingItems_groupItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKey:*MEMORY[0x277D13370]];

  v5 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__HUAccessorySettingsItemModule__itemSectionForGroup_entity_settingItems_groupItems___block_invoke_3;
  v9[3] = &unk_277DC1828;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_any:v9];

  return v7;
}

uint64_t __85__HUAccessorySettingsItemModule__itemSectionForGroup_entity_settingItems_groupItems___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 keyPath];
  v4 = [*(a1 + 32) keyPath];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

BOOL __85__HUAccessorySettingsItemModule__itemSectionForGroup_entity_settingItems_groupItems___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKey:*MEMORY[0x277D13388]];
  v4 = v3 == 0;

  return v4;
}

uint64_t __85__HUAccessorySettingsItemModule__itemSectionForGroup_entity_settingItems_groupItems___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = *MEMORY[0x277D13388];
  v7 = [v5 objectForKey:*MEMORY[0x277D13388]];

  v8 = [v4 latestResults];

  v9 = [v8 objectForKey:v6];

  v10 = [v7 sortKey];
  v11 = [v9 sortKey];
  v12 = [v10 compare:v11];

  return v12;
}

- (void)_resetIfNeeded
{
  settings = [(HUAccessorySettingsItemModule *)self settings];
  v4 = settings == 0;

  if (!settings)
  {
    homeKitSettingsVendor = [(HUAccessorySettingsItemModule *)self homeKitSettingsVendor];
    settings2 = [homeKitSettingsVendor settings];
    settings = self->_settings;
    self->_settings = settings2;
  }

  parentSettingGroup = [(HUAccessorySettingsItemModule *)self parentSettingGroup];
  if (parentSettingGroup)
  {
    accessorySettingsItemProvider = parentSettingGroup;
  }

  else
  {
    rootGroup = [(HMSettings *)self->_settings rootGroup];

    if (!rootGroup)
    {
      goto LABEL_8;
    }

    rootGroup2 = [(HMSettings *)self->_settings rootGroup];
    parentSettingGroup = self->_parentSettingGroup;
    self->_parentSettingGroup = rootGroup2;

    v13 = self->_parentSettingGroup;
    accessorySettingsItemProvider = [(HUAccessorySettingsItemModule *)self accessorySettingsItemProvider];
    [accessorySettingsItemProvider setSettingGroup:v13];
    v4 = 1;
  }

LABEL_8:
  codex = [(HUAccessorySettingsItemModule *)self codex];

  if (!codex)
  {
    settings3 = [(HUAccessorySettingsItemModule *)self settings];
    hf_codex = [settings3 hf_codex];
    codex = self->_codex;
    self->_codex = hf_codex;

    v4 = 1;
  }

  parentEntity = [(HUAccessorySettingsItemModule *)self parentEntity];
  if (parentEntity || (-[HUAccessorySettingsItemModule parentSettingGroup](self, "parentSettingGroup"), parentEntity = objc_claimAutoreleasedReturnValue(), [parentEntity keyPath], (v19 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_12;
  }

  v20 = v19;
  codex2 = [(HUAccessorySettingsItemModule *)self codex];

  if (!codex2)
  {
LABEL_12:
    if (!v4)
    {
      return;
    }

    goto LABEL_17;
  }

  codex3 = [(HUAccessorySettingsItemModule *)self codex];
  parentSettingGroup2 = [(HUAccessorySettingsItemModule *)self parentSettingGroup];
  keyPath = [parentSettingGroup2 keyPath];
  v25 = [codex3 hf_nodeWithKeyPath:keyPath];
  representedObject = [v25 representedObject];
  parentEntity = self->_parentEntity;
  self->_parentEntity = representedObject;

LABEL_17:
  [(HUAccessorySettingsItemModule *)self _unregisterForAccessorySettingsUpdates];

  [(HUAccessorySettingsItemModule *)self _registerForAccessorySettingsUpdates];
}

- (id)getAllHomePodFromItem:(id)item
{
  v14[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    accessory = [v7 accessory];
    v14[0] = accessory;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    v10 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v7 = v11;

    accessory = [v7 components];
    v9 = [accessory na_map:&__block_literal_global_172];
  }

  v12 = v9;

  v4 = v12;
LABEL_12:

  return v4;
}

id __55__HUAccessorySettingsItemModule_getAllHomePodFromItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mediaProfile];
  v3 = [v2 accessory];

  return v3;
}

- (BOOL)checkSoftwareVersionForAccessories:(id)accessories neededSoftwareVersion:(id)version
{
  versionCopy = version;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__HUAccessorySettingsItemModule_checkSoftwareVersionForAccessories_neededSoftwareVersion___block_invoke;
  v8[3] = &unk_277DB8EC0;
  v9 = versionCopy;
  v6 = versionCopy;
  LOBYTE(accessories) = [accessories na_any:v8];

  return accessories;
}

uint64_t __90__HUAccessorySettingsItemModule_checkSoftwareVersionForAccessories_neededSoftwareVersion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 softwareVersion];
  v4 = [v3 isAtLeastVersion:*(a1 + 32)];

  return v4;
}

@end