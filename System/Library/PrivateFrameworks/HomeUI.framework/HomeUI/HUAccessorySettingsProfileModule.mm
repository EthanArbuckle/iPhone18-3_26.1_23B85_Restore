@interface HUAccessorySettingsProfileModule
- (HUAccessorySettingsProfileModule)initWithItemUpdater:(id)updater settingGroupItem:(id)item;
- (HUAccessorySettingsProfileModuleDelegate)delegate;
- (id)_actuallyRemoveProfileItem:(id)item;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
- (id)promptForRemoveProfileItem:(id)item;
- (void)managedConfigurationAdapterSettingsWereUpdated:(id)updated;
@end

@implementation HUAccessorySettingsProfileModule

- (HUAccessorySettingsProfileModule)initWithItemUpdater:(id)updater settingGroupItem:(id)item
{
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = HUAccessorySettingsProfileModule;
  v8 = [(HFItemModule *)&v20 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_settingGroupItem, item);
    homeKitSettingsVendor = [itemCopy homeKitSettingsVendor];
    hf_settingsAdapterManager = [homeKitSettingsVendor hf_settingsAdapterManager];
    v12 = [hf_settingsAdapterManager adapterForIdentifier:*MEMORY[0x277D13328]];
    adapter = v9->_adapter;
    v9->_adapter = v12;

    v14 = [HUAccessorySettingsProfileItemProvider alloc];
    v15 = v9->_adapter;
    settingGroup = [itemCopy settingGroup];
    v17 = [(HUAccessorySettingsProfileItemProvider *)v14 initWithAdapter:v15 settingGroup:settingGroup];
    profileItemProvider = v9->_profileItemProvider;
    v9->_profileItemProvider = v17;

    [(HFAccessorySettingManagedConfigurationAdapter *)v9->_adapter addProfileObserver:v9];
  }

  return v9;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  profileItemProvider = [(HUAccessorySettingsProfileModule *)self profileItemProvider];
  v4 = [v2 setWithObject:profileItemProvider];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v27[2] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if ([itemsCopy count])
  {
    allObjects = [itemsCopy allObjects];
    v5 = [allObjects sortedArrayUsingComparator:&__block_literal_global_124];

    v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"!!!ProfileZone!!!!"];
    v7 = _HULocalizedStringWithDefaultValue(@"HUMobileDeviceManagement", @"HUMobileDeviceManagement", 1);
    [v6 setHeaderTitle:v7];

    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"ManagedZone"];
    v9 = _HULocalizedStringWithDefaultValue(@"HUConfigurationProfile", @"HUConfigurationProfile", 1);
    [v8 setHeaderTitle:v9];

    v10 = objc_opt_class();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __68__HUAccessorySettingsProfileModule_buildSectionsWithDisplayedItems___block_invoke_3;
    v24[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
    v24[4] = v10;
    v11 = [v5 na_filter:v24];
    [v8 setItems:v11];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__HUAccessorySettingsProfileModule_buildSectionsWithDisplayedItems___block_invoke_4;
    v23[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
    v23[4] = v10;
    v12 = [v5 na_filter:v23];
    [v6 setItems:v12];

    items = [v6 items];
    v14 = [items count];

    items2 = [v8 items];
    v16 = [items2 count];
    v17 = v16;
    if (v14)
    {
      if (v16)
      {
        v27[0] = v6;
        v27[1] = v8;
        v18 = MEMORY[0x277CBEA60];
        v19 = v27;
        v20 = 2;
      }

      else
      {
        v26 = v6;
        v18 = MEMORY[0x277CBEA60];
        v19 = &v26;
        v20 = 1;
      }

      v21 = [v18 arrayWithObjects:v19 count:v20];
    }

    else
    {

      if (v17)
      {
        v25 = v8;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      }

      else
      {
        v21 = MEMORY[0x277CBEBF8];
      }
    }
  }

  else
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  return v21;
}

uint64_t __68__HUAccessorySettingsProfileModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = *MEMORY[0x277D13F60];
  v7 = [v5 objectForKey:*MEMORY[0x277D13F60]];

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
    v13 = [v10 compare:{v11, v17, 3221225472, __68__HUAccessorySettingsProfileModule_buildSectionsWithDisplayedItems___block_invoke_2, &unk_277DB78F8, v10}];
    v15 = v19;
  }

  return v13;
}

uint64_t __68__HUAccessorySettingsProfileModule_buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 profile];
  if (v5)
  {
    v6 = [v4 profile];
    v7 = [v6 isManagedByProfileService];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __68__HUAccessorySettingsProfileModule_buildSectionsWithDisplayedItems___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 profile];
  if (v5)
  {
    v6 = [v4 profile];
    v7 = [v6 isManagedByProfileService] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)promptForRemoveProfileItem:(id)item
{
  itemCopy = item;
  delegate = [(HUAccessorySettingsProfileModule *)self delegate];

  if (!delegate)
  {
    NSLog(&cfstr_NoDelegateSome.isa);
  }

  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsProfileModule.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"profileItem"}];
  }

  objc_initWeak(&location, self);
  delegate2 = [(HUAccessorySettingsProfileModule *)self delegate];
  v8 = [delegate2 settingsProfileModule:self wantsProfileItemDeleted:itemCopy];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__HUAccessorySettingsProfileModule_promptForRemoveProfileItem___block_invoke;
  v13[3] = &unk_277DBC1A0;
  objc_copyWeak(&v15, &location);
  v9 = itemCopy;
  v14 = v9;
  v10 = [v8 addCompletionBlock:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

void __63__HUAccessorySettingsProfileModule_promptForRemoveProfileItem___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v7)
  {
    if (([v7 na_isCancelledError] & 1) == 0)
    {
      v5 = [MEMORY[0x277D14640] sharedHandler];
      [v5 handleError:v7];
    }
  }

  else
  {
    v6 = [WeakRetained _actuallyRemoveProfileItem:*(a1 + 32)];
  }
}

- (id)_actuallyRemoveProfileItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsProfileModule.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"profileItem"}];
  }

  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D14788];
  itemProviders = [(HUAccessorySettingsProfileModule *)self itemProviders];
  v8 = [v6 requestToReloadItemProviders:itemProviders senderSelector:a2];

  adapter = [(HUAccessorySettingsProfileModule *)self adapter];
  profile = [itemCopy profile];
  v11 = [adapter removeProfileFromHomeKit:profile];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HUAccessorySettingsProfileModule__actuallyRemoveProfileItem___block_invoke;
  v16[3] = &unk_277DBC1A0;
  objc_copyWeak(&v18, &location);
  v12 = v8;
  v17 = v12;
  v13 = [v11 addCompletionBlock:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v13;
}

void __63__HUAccessorySettingsProfileModule__actuallyRemoveProfileItem___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v7)
  {
    v5 = [MEMORY[0x277D14640] sharedHandler];
    [v5 handleError:v7];
  }

  else
  {
    v5 = [WeakRetained itemUpdater];
    v6 = [v5 performItemUpdateRequest:*(a1 + 32)];
  }
}

- (void)managedConfigurationAdapterSettingsWereUpdated:(id)updated
{
  v5 = MEMORY[0x277D14788];
  itemProviders = [(HUAccessorySettingsProfileModule *)self itemProviders];
  v9 = [v5 requestToReloadItemProviders:itemProviders senderSelector:a2];

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v8 = [itemUpdater performItemUpdateRequest:v9];
}

- (HUAccessorySettingsProfileModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end