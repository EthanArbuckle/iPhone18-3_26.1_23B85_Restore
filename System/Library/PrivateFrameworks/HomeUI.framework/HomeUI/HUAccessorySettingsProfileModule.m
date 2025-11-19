@interface HUAccessorySettingsProfileModule
- (HUAccessorySettingsProfileModule)initWithItemUpdater:(id)a3 settingGroupItem:(id)a4;
- (HUAccessorySettingsProfileModuleDelegate)delegate;
- (id)_actuallyRemoveProfileItem:(id)a3;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
- (id)promptForRemoveProfileItem:(id)a3;
- (void)managedConfigurationAdapterSettingsWereUpdated:(id)a3;
@end

@implementation HUAccessorySettingsProfileModule

- (HUAccessorySettingsProfileModule)initWithItemUpdater:(id)a3 settingGroupItem:(id)a4
{
  v7 = a4;
  v20.receiver = self;
  v20.super_class = HUAccessorySettingsProfileModule;
  v8 = [(HFItemModule *)&v20 initWithItemUpdater:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_settingGroupItem, a4);
    v10 = [v7 homeKitSettingsVendor];
    v11 = [v10 hf_settingsAdapterManager];
    v12 = [v11 adapterForIdentifier:*MEMORY[0x277D13328]];
    adapter = v9->_adapter;
    v9->_adapter = v12;

    v14 = [HUAccessorySettingsProfileItemProvider alloc];
    v15 = v9->_adapter;
    v16 = [v7 settingGroup];
    v17 = [(HUAccessorySettingsProfileItemProvider *)v14 initWithAdapter:v15 settingGroup:v16];
    profileItemProvider = v9->_profileItemProvider;
    v9->_profileItemProvider = v17;

    [(HFAccessorySettingManagedConfigurationAdapter *)v9->_adapter addProfileObserver:v9];
  }

  return v9;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUAccessorySettingsProfileModule *)self profileItemProvider];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 allObjects];
    v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_124];

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

    v13 = [v6 items];
    v14 = [v13 count];

    v15 = [v8 items];
    v16 = [v15 count];
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

- (id)promptForRemoveProfileItem:(id)a3
{
  v5 = a3;
  v6 = [(HUAccessorySettingsProfileModule *)self delegate];

  if (!v6)
  {
    NSLog(&cfstr_NoDelegateSome.isa);
  }

  if (!v5)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsProfileModule.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"profileItem"}];
  }

  objc_initWeak(&location, self);
  v7 = [(HUAccessorySettingsProfileModule *)self delegate];
  v8 = [v7 settingsProfileModule:self wantsProfileItemDeleted:v5];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__HUAccessorySettingsProfileModule_promptForRemoveProfileItem___block_invoke;
  v13[3] = &unk_277DBC1A0;
  objc_copyWeak(&v15, &location);
  v9 = v5;
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

- (id)_actuallyRemoveProfileItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsProfileModule.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"profileItem"}];
  }

  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D14788];
  v7 = [(HUAccessorySettingsProfileModule *)self itemProviders];
  v8 = [v6 requestToReloadItemProviders:v7 senderSelector:a2];

  v9 = [(HUAccessorySettingsProfileModule *)self adapter];
  v10 = [v5 profile];
  v11 = [v9 removeProfileFromHomeKit:v10];
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

- (void)managedConfigurationAdapterSettingsWereUpdated:(id)a3
{
  v5 = MEMORY[0x277D14788];
  v6 = [(HUAccessorySettingsProfileModule *)self itemProviders];
  v9 = [v5 requestToReloadItemProviders:v6 senderSelector:a2];

  v7 = [(HFItemModule *)self itemUpdater];
  v8 = [v7 performItemUpdateRequest:v9];
}

- (HUAccessorySettingsProfileModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end