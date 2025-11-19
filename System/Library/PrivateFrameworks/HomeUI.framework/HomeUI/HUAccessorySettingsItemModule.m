@interface HUAccessorySettingsItemModule
- (BOOL)checkSoftwareVersionForAccessories:(id)a3 neededSoftwareVersion:(id)a4;
- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)a3 home:(id)a4 sourceItem:(id)a5 usageOptions:(id)a6;
- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)a3 homeKitSettingsVendor:(id)a4 usageOptions:(id)a5;
- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)a3 mediaAccessoryItem:(id)a4;
- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)a3 settingGroupItem:(id)a4 usageOptions:(id)a5;
- (id)_itemSectionForGroup:(id)a3 entity:(id)a4 settingItems:(id)a5 groupItems:(id)a6;
- (id)_itemSectionWithEntity:(id)a3 items:(id)a4;
- (id)_itemSectionsForGroupKeyPaths:(id)a3;
- (id)_itemSectionsForParentGroupWithItems;
- (id)_itemSectionsForShowInSeperateSectionItems:(id)a3;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)getAllHomePodFromItem:(id)a3;
- (id)itemProviders;
- (id)updateItem:(id)a3 withValue:(id)a4;
- (void)_registerForAccessorySettingsUpdates;
- (void)_resetIfNeeded;
- (void)_unregisterForAccessorySettingsUpdates;
- (void)updateItems:(id)a3;
- (void)updateItems:(id)a3 matchingDependency:(id)a4;
- (void)updateItemsForKeyPath:(id)a3;
@end

@implementation HUAccessorySettingsItemModule

- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)a3 mediaAccessoryItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 accessories];
  v9 = [v8 anyObject];
  v10 = [v9 home];
  v11 = [(HUAccessorySettingsItemModule *)self initWithItemUpdater:v7 home:v10 sourceItem:v6 usageOptions:0];

  return v11;
}

- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)a3 home:(id)a4 sourceItem:(id)a5 usageOptions:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 latestResults];
  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D13FC8]];
  v17 = &unk_282575DB0;
  if ([v16 conformsToProtocol:v17])
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (!v19)
  {
    v20 = v13;
    v21 = [v20 conformsToProtocol:&unk_28251B378] ? v20 : 0;
    v22 = v21;

    v16 = [v22 homeKitSettingsVendor];

    if (!v16)
    {
      v33 = [MEMORY[0x277CCA890] currentHandler];
      [v33 handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsItemModule.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"homeKitSettingsVendor"}];

      v16 = 0;
    }
  }

  v34.receiver = self;
  v34.super_class = HUAccessorySettingsItemModule;
  v23 = [(HUServiceDetailsItemModule *)&v34 initWithItemUpdater:v11 home:v12 sourceItem:v13];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_homeKitSettingsVendor, v16);
    v25 = [v16 settings];
    settings = v24->_settings;
    v24->_settings = v25;

    v27 = [v16 settings];
    v28 = [v27 hf_codex];
    codex = v24->_codex;
    v24->_codex = v28;

    v30 = [objc_alloc(MEMORY[0x277D14360]) initWithHomeKitSettingsVendor:v16 settingGroup:0 usageOptions:v14];
    accessorySettingsItemProvider = v24->_accessorySettingsItemProvider;
    v24->_accessorySettingsItemProvider = v30;
  }

  return v24;
}

- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)a3 homeKitSettingsVendor:(id)a4 usageOptions:(id)a5
{
  v8 = MEMORY[0x277D14340];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithHomeKitSettingsVendor:v10 usageOptions:v9];

  v13 = [(HUAccessorySettingsItemModule *)self initWithItemUpdater:v11 settingGroupItem:v12 usageOptions:v9];
  return v13;
}

- (HUAccessorySettingsItemModule)initWithItemUpdater:(id)a3 settingGroupItem:(id)a4 usageOptions:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 homeKitSettingsVendor];
  v12 = [v11 hf_home];
  v13 = [(HUAccessorySettingsItemModule *)self initWithItemUpdater:v10 home:v12 sourceItem:v8 usageOptions:v9];

  if (v13)
  {
    v14 = [v8 entity];
    parentEntity = v13->_parentEntity;
    v13->_parentEntity = v14;

    v16 = [v8 settingGroup];
    parentSettingGroup = v13->_parentSettingGroup;
    v13->_parentSettingGroup = v16;

    v18 = [v8 settingGroup];
    [(HFAccessorySettingsItemProvider *)v13->_accessorySettingsItemProvider setSettingGroup:v18];
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
    v6 = [(HUAccessorySettingsItemModule *)self accessorySettingsItemProvider];
    [(NSSet *)v5 na_safeAddObject:v6];

    v7 = self->_itemProviders;
    self->_itemProviders = v5;
    v8 = v5;

    v3 = self->_itemProviders;
  }

  return v3;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  [(HUAccessorySettingsItemModule *)self _resetIfNeeded];
  v5 = [(HUAccessorySettingsItemModule *)self settings];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [(HUAccessorySettingsItemModule *)self parentSettingGroup];
  if (!v7)
  {

    goto LABEL_15;
  }

  v8 = v7;
  v9 = [(HUAccessorySettingsItemModule *)self codex];

  if (!v9)
  {
LABEL_15:
    v29 = MEMORY[0x277CBEBF8];
    goto LABEL_16;
  }

  v10 = [(HUAccessorySettingsItemModule *)self accessorySettingsItemProvider];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __65__HUAccessorySettingsItemModule_buildSectionsWithDisplayedItems___block_invoke;
  v49[3] = &unk_277DB85D8;
  v11 = v10;
  v50 = v11;
  v12 = [v4 na_filter:v49];
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
  v16 = [(HUAccessorySettingsItemModule *)self accessorySettingsItemProvider];
  v17 = [v16 settingGroup];
  v18 = [v17 keyPath];

  v19 = MEMORY[0x277CBEB40];
  v20 = [(HUAccessorySettingsItemModule *)self codex];
  v45 = v18;
  v21 = [v20 hf_nodeWithKeyPath:v18];
  v22 = [v21 hf_sortedAccessorySettingsChildren];
  v23 = [v22 na_filter:&__block_literal_global_209];
  v24 = [v23 na_map:&__block_literal_global_111_4];
  v25 = [v19 orderedSetWithArray:v24];

  v26 = [(HUAccessorySettingsItemModule *)self _itemSectionsForParentGroupWithItems];
  [v15 addObjectsFromArray:v26];

  v27 = [(HUAccessorySettingsItemModule *)self parentEntity];
  LODWORD(v24) = [v27 wantsSeparateSectionPerGroup];

  if (v24)
  {
    v28 = [(HUAccessorySettingsItemModule *)self _itemSectionsForGroupKeyPaths:v25];
    [v15 addObjectsFromArray:v28];
  }

  v29 = [v15 sortedArrayUsingComparator:&__block_literal_global_114_2];
  v30 = [(HUAccessorySettingsItemModule *)self parentEntity];
  v31 = [v30 adapterIdentifier];

  if (v31)
  {
    v42 = v25;
    v43 = v15;
    v44 = v11;
    v32 = [(HUAccessorySettingsItemModule *)self homeKitSettingsVendor];
    v33 = [v32 hf_settingsAdapterManager];
    v34 = [(HUAccessorySettingsItemModule *)self parentEntity];
    v35 = [v34 adapterIdentifier];
    v36 = [v33 adapterForIdentifier:v35];
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
      v39 = [(HUAccessorySettingsItemModule *)self parentEntity];
      v40 = [v38 customizeSections:v29 forEntity:v39];

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

- (void)updateItems:(id)a3
{
  v6 = [MEMORY[0x277D14788] requestToUpdateItems:a3 senderSelector:a2];
  v4 = [(HFItemModule *)self itemUpdater];
  v5 = [v4 performItemUpdateRequest:v6];
}

- (void)updateItems:(id)a3 matchingDependency:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] setWithSet:a3];
  v8 = [(HUAccessorySettingsItemModule *)self itemProviders];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __64__HUAccessorySettingsItemModule_updateItems_matchingDependency___block_invoke;
  v14 = &unk_277DC1718;
  v15 = v6;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  [v8 na_each:&v11];

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

- (void)updateItemsForKeyPath:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HUAccessorySettingsItemModule *)self itemProviders];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__HUAccessorySettingsItemModule_updateItemsForKeyPath___block_invoke;
  v12 = &unk_277DC1718;
  v13 = v4;
  v14 = v5;
  v7 = v5;
  v8 = v4;
  [v6 na_each:&v9];

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

- (id)updateItem:(id)a3 withValue:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 latestResults];
  v8 = [v7 objectForKey:*MEMORY[0x277D13370]];

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v29 = v5;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to update item '%@' (Setting: %@) to value: %@", buf, 0x20u);
  }

  if (v5 && v8)
  {
    v10 = [v5 updateValue:v6];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __54__HUAccessorySettingsItemModule_updateItem_withValue___block_invoke;
    v24[3] = &unk_277DBE710;
    v11 = v5;
    v25 = v11;
    v12 = v8;
    v26 = v12;
    v13 = v6;
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
      v29 = v5;
      v30 = 2112;
      v31 = v6;
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
  v4 = [(HUAccessorySettingsItemModule *)self settings];
  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  if (v4)
  {
    [v3 addHomeKitSettingsObserver:self];
  }

  else
  {
    [v3 addMediaObjectObserver:self];
  }
}

- (void)_unregisterForAccessorySettingsUpdates
{
  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  [v3 removeHomeKitSettingsObserver:self];

  v4 = [MEMORY[0x277D146E8] sharedDispatcher];
  [v4 removeMediaObjectObserver:self];
}

- (id)_itemSectionWithEntity:(id)a3 items:(id)a4
{
  v43[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v39 = [MEMORY[0x277CCA890] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsItemModule.m" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"items"}];
  }

  v9 = [v7 keyPath];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v12 UUIDString];
  }

  v13 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:v11];
  [v13 setItems:v8];
  v14 = [v7 headerTitleFormatter];

  if (v14)
  {
    v15 = [v7 headerTitleFormatter];
    v16 = [(HUAccessorySettingsItemModule *)self homeKitSettingsVendor];
    v17 = [v15 attributedStringForObjectValue:v16 withDefaultAttributes:0];

    if (v17)
    {
      [v13 setAttributedHeaderTitle:v17];
    }

    else
    {
      v19 = [v7 headerTitleFormatter];
      v20 = [(HUAccessorySettingsItemModule *)self homeKitSettingsVendor];
      v21 = [v19 stringForObjectValue:v20];
      [v13 setHeaderTitle:v21];

      v17 = 0;
    }
  }

  else
  {
    v18 = [v7 localizedHeader];

    if (!v18)
    {
      goto LABEL_13;
    }

    v17 = [v7 localizedHeader];
    [v13 setHeaderTitle:v17];
  }

LABEL_13:
  v22 = [v7 footerTitleFormatter];

  if (v22)
  {
    v23 = [v7 footerTitleFormatter];
    v24 = [(HUAccessorySettingsItemModule *)self homeKitSettingsVendor];
    v25 = [v23 attributedStringForObjectValue:v24 withDefaultAttributes:0];

    if (v25)
    {
      [v13 setAttributedFooterTitle:v25];
    }

    else
    {
      v27 = [v7 footerTitleFormatter];
      v28 = [(HUAccessorySettingsItemModule *)self homeKitSettingsVendor];
      v29 = [v27 stringForObjectValue:v28];
      [v13 setFooterTitle:v29];

      v25 = 0;
    }
  }

  else
  {
    v26 = [v7 localizedFooter];

    if (!v26)
    {
      goto LABEL_20;
    }

    v25 = [v7 localizedFooter];
    [v13 setFooterTitle:v25];
  }

LABEL_20:
  if (!v7)
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", 0x7FFFFFFFFFFFFFFFLL, @"HUAccessorySettingsItemModuleSortKey"];
    v41 = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    [v13 setUserInfo:v31];
LABEL_26:

    goto LABEL_27;
  }

  v42 = @"HUAccessorySettingsItemModuleSortKey";
  v30 = [v7 sortKey];
  v31 = v30;
  if (!v30)
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 0x7FFFFFFFFFFFFFFFLL];
  }

  v43[0] = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  [v13 setUserInfo:v32];

  if (!v30)
  {
    goto LABEL_26;
  }

LABEL_27:

  v33 = [v7 adapterIdentifier];

  if (v33)
  {
    v34 = [(HUAccessorySettingsItemModule *)self homeKitSettingsVendor];
    v35 = [v34 hf_settingsAdapterManager];
    v36 = [v7 adapterIdentifier];
    v37 = [v35 adapterForIdentifier:v36];

    if (objc_opt_respondsToSelector())
    {
      [v37 configureSection:v13 forEntity:v7];
    }
  }

  return v13;
}

- (id)_itemSectionsForParentGroupWithItems
{
  v2 = self;
  v44 = *MEMORY[0x277D85DE8];
  v29 = [(HUAccessorySettingsItemModule *)self settingItemsToBeDisplayed];
  v26 = [(HUAccessorySettingsItemModule *)v2 groupItemsToBeDisplayed];
  v27 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = [(HUAccessorySettingsItemModule *)v2 parentSettingGroup];
  v4 = [v3 settings];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
        v10 = [v29 na_firstObjectPassingTest:v34];
        if (v10)
        {
          v11 = v2;
          v12 = [(HUAccessorySettingsItemModule *)v2 codex];
          v13 = [v9 keyPath];
          v14 = [v12 hf_nodeWithKeyPath:v13];

          if (v14)
          {
            [v27 addObject:v10];
          }

          else
          {
            v15 = HFLogForCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v9 keyPath];
              *buf = 138412546;
              v40 = v10;
              v41 = 2112;
              v42 = v16;
              _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Dropping item (%@) with setting not in allowlist: %@", buf, 0x16u);
            }
          }

          v2 = v11;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v6);
  }

  v17 = [(HUAccessorySettingsItemModule *)v2 parentEntity];
  v18 = [v17 wantsSeparateSectionPerGroup];

  if (v18)
  {
    v19 = objc_opt_new();
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __69__HUAccessorySettingsItemModule__itemSectionsForParentGroupWithItems__block_invoke_3;
    v30[3] = &unk_277DC17B0;
    v20 = v31;
    v21 = v19;
    v31[0] = v21;
    v31[1] = v2;
    v22 = v27;
    [v27 enumerateObjectsUsingBlock:v30];
    v23 = v26;
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
    v23 = v26;
    [v26 na_each:v32];
    [v24 sortUsingComparator:&__block_literal_global_156_1];
    v21 = [(HUAccessorySettingsItemModule *)v2 _itemSectionsForShowInSeperateSectionItems:v24];
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

- (id)_itemSectionsForShowInSeperateSectionItems:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v3;
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
        v12 = [v11 entity];
        v13 = [v12 showInSeperateSection];

        if (v13)
        {
          v14 = [v11 entity];
          v28 = v11;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
          v16 = [(HUAccessorySettingsItemModule *)self _itemSectionWithEntity:v14 items:v15];
          [v4 na_safeAddObject:v16];

          [v5 removeObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v17 = v5;
  v18 = [v5 firstObject];
  v19 = [v18 entity];
  v20 = [v5 array];
  v21 = [(HUAccessorySettingsItemModule *)self _itemSectionWithEntity:v19 items:v20];
  [v4 na_safeAddObject:v21];

  return v4;
}

- (id)_itemSectionsForGroupKeyPaths:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
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
        v10 = [(HUAccessorySettingsItemModule *)self codex];
        v11 = [v10 hf_nodeWithKeyPath:v9];
        v12 = [v11 representedObject];

        if (v12)
        {
          v13 = [(HUAccessorySettingsItemModule *)self groupItemsToBeDisplayed];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __63__HUAccessorySettingsItemModule__itemSectionsForGroupKeyPaths___block_invoke;
          v21[3] = &unk_277DC17D8;
          v21[4] = v9;
          v14 = [v13 na_firstObjectPassingTest:v21];

          if (v14)
          {
            v15 = [(HUAccessorySettingsItemModule *)self settingItemsToBeDisplayed];
            v16 = [(HUAccessorySettingsItemModule *)self groupItemsToBeDisplayed];
            v17 = [(HUAccessorySettingsItemModule *)self _itemSectionForGroup:v14 entity:v12 settingItems:v15 groupItems:v16];

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

- (id)_itemSectionForGroup:(id)a3 entity:(id)a4 settingItems:(id)a5 groupItems:(id)a6
{
  v9 = a3;
  v10 = a4;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __85__HUAccessorySettingsItemModule__itemSectionForGroup_entity_settingItems_groupItems___block_invoke;
  v35[3] = &unk_277DC1800;
  v11 = v9;
  v36 = v11;
  v12 = v10;
  v37 = v12;
  v13 = a5;
  v14 = [a6 na_filter:v35];
  v15 = [v11 settingGroup];
  v16 = [v15 settings];

  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __85__HUAccessorySettingsItemModule__itemSectionForGroup_entity_settingItems_groupItems___block_invoke_2;
  v33 = &unk_277DC1850;
  v17 = v16;
  v34 = v17;
  v18 = [v13 na_filter:&v30];

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
  v23 = [v22 allObjects];
  v24 = [v23 sortedArrayUsingComparator:&__block_literal_global_167];

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
  v3 = [(HUAccessorySettingsItemModule *)self settings];
  v4 = v3 == 0;

  if (!v3)
  {
    v5 = [(HUAccessorySettingsItemModule *)self homeKitSettingsVendor];
    v6 = [v5 settings];
    settings = self->_settings;
    self->_settings = v6;
  }

  v8 = [(HUAccessorySettingsItemModule *)self parentSettingGroup];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [(HMSettings *)self->_settings rootGroup];

    if (!v10)
    {
      goto LABEL_8;
    }

    v11 = [(HMSettings *)self->_settings rootGroup];
    parentSettingGroup = self->_parentSettingGroup;
    self->_parentSettingGroup = v11;

    v13 = self->_parentSettingGroup;
    v9 = [(HUAccessorySettingsItemModule *)self accessorySettingsItemProvider];
    [v9 setSettingGroup:v13];
    v4 = 1;
  }

LABEL_8:
  v14 = [(HUAccessorySettingsItemModule *)self codex];

  if (!v14)
  {
    v15 = [(HUAccessorySettingsItemModule *)self settings];
    v16 = [v15 hf_codex];
    codex = self->_codex;
    self->_codex = v16;

    v4 = 1;
  }

  v18 = [(HUAccessorySettingsItemModule *)self parentEntity];
  if (v18 || (-[HUAccessorySettingsItemModule parentSettingGroup](self, "parentSettingGroup"), v18 = objc_claimAutoreleasedReturnValue(), [v18 keyPath], (v19 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_12;
  }

  v20 = v19;
  v21 = [(HUAccessorySettingsItemModule *)self codex];

  if (!v21)
  {
LABEL_12:
    if (!v4)
    {
      return;
    }

    goto LABEL_17;
  }

  v22 = [(HUAccessorySettingsItemModule *)self codex];
  v23 = [(HUAccessorySettingsItemModule *)self parentSettingGroup];
  v24 = [v23 keyPath];
  v25 = [v22 hf_nodeWithKeyPath:v24];
  v26 = [v25 representedObject];
  parentEntity = self->_parentEntity;
  self->_parentEntity = v26;

LABEL_17:
  [(HUAccessorySettingsItemModule *)self _unregisterForAccessorySettingsUpdates];

  [(HUAccessorySettingsItemModule *)self _registerForAccessorySettingsUpdates];
}

- (id)getAllHomePodFromItem:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = v3;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v7 accessory];
    v14[0] = v8;
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
    v10 = v3;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v7 = v11;

    v8 = [v7 components];
    v9 = [v8 na_map:&__block_literal_global_172];
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

- (BOOL)checkSoftwareVersionForAccessories:(id)a3 neededSoftwareVersion:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__HUAccessorySettingsItemModule_checkSoftwareVersionForAccessories_neededSoftwareVersion___block_invoke;
  v8[3] = &unk_277DB8EC0;
  v9 = v5;
  v6 = v5;
  LOBYTE(a3) = [a3 na_any:v8];

  return a3;
}

uint64_t __90__HUAccessorySettingsItemModule_checkSoftwareVersionForAccessories_neededSoftwareVersion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 softwareVersion];
  v4 = [v3 isAtLeastVersion:*(a1 + 32)];

  return v4;
}

@end