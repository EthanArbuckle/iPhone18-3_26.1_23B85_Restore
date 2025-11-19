@interface HUTVViewingProfilesDevicesItemModule
- (BOOL)isTVViewingProfileDevice:(id)a3;
- (HMMediaContentProfileAccessControl)accessControl;
- (HUTVViewingProfilesDevicesItemModule)initWithItemUpdater:(id)a3 userItem:(id)a4;
- (NSArray)viewingProfilesDevices;
- (id)_commitUpdateToAccessControl:(id)a3;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (void)_createItemProviders;
- (void)setViewingProfilesDevices:(id)a3;
- (void)turnOnTVViewingProfilesForAllDevices;
@end

@implementation HUTVViewingProfilesDevicesItemModule

- (HUTVViewingProfilesDevicesItemModule)initWithItemUpdater:(id)a3 userItem:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HUTVViewingProfilesDevicesItemModule;
  v8 = [(HFItemModule *)&v14 initWithItemUpdater:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sourceItem, a4);
    v10 = [(HUTVViewingProfilesDevicesItemModule *)v9 sourceItem];
    v11 = [v10 home];
    home = v9->_home;
    v9->_home = v11;

    [(HUTVViewingProfilesDevicesItemModule *)v9 _createItemProviders];
  }

  return v9;
}

- (BOOL)isTVViewingProfileDevice:(id)a3
{
  v4 = a3;
  v5 = [(HUTVViewingProfilesDevicesItemModule *)self viewingProfileItemProvider];
  v6 = [v5 items];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (HMMediaContentProfileAccessControl)accessControl
{
  v3 = [(HUTVViewingProfilesDevicesItemModule *)self sourceItem];
  v4 = [v3 user];
  v5 = [(HUTVViewingProfilesDevicesItemModule *)self home];
  v6 = [v4 mediaContentProfileAccessControlForHome:v5];

  return v6;
}

- (void)_createItemProviders
{
  if (self->_itemProviders)
  {
    NSLog(&cfstr_Createitemprov.isa, a2);
  }

  else
  {
    objc_initWeak(&location, self);
    v3 = objc_alloc(MEMORY[0x277D147F0]);
    v4 = [(HUTVViewingProfilesDevicesItemModule *)self home];
    v5 = [v3 initWithHome:v4];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__HUTVViewingProfilesDevicesItemModule__createItemProviders__block_invoke;
    v14[3] = &unk_277DB83E8;
    v14[4] = self;
    [v5 setFilter:v14];
    v6 = objc_alloc(MEMORY[0x277D14C38]);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__HUTVViewingProfilesDevicesItemModule__createItemProviders__block_invoke_5;
    v12[3] = &unk_277DB9DD8;
    objc_copyWeak(&v13, &location);
    v7 = [v6 initWithSourceProvider:v5 transformationBlock:v12];
    [(HUTVViewingProfilesDevicesItemModule *)self setViewingProfileItemProvider:v7];

    v8 = MEMORY[0x277CBEB98];
    v9 = [(HUTVViewingProfilesDevicesItemModule *)self viewingProfileItemProvider];
    v10 = [v8 setWithObject:v9];
    itemProviders = self->_itemProviders;
    self->_itemProviders = v10;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

uint64_t __60__HUTVViewingProfilesDevicesItemModule__createItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@ homeKitObject: %@", &v12, 0x16u);
  }

  objc_opt_class();
  v6 = v3;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 accessory];

  if ([v9 hf_isAppleTV])
  {
    v10 = [MEMORY[0x277CD1B78] isAccessorySupported:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __60__HUTVViewingProfilesDevicesItemModule__createItemProviders__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14C30]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HUTVViewingProfilesDevicesItemModule__createItemProviders__block_invoke_2;
  v8[3] = &unk_277DB9E28;
  objc_copyWeak(&v10, (a1 + 32));
  v5 = v3;
  v9 = v5;
  v6 = [v4 initWithSourceItem:v5 transformationBlock:v8];

  objc_destroyWeak(&v10);

  return v6;
}

id __60__HUTVViewingProfilesDevicesItemModule__createItemProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 mutableCopy];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
  }

  v7 = v6;

  v8 = [WeakRetained accessControl];
  v9 = [v8 accessories];

  v10 = [*(a1 + 32) accessories];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__HUTVViewingProfilesDevicesItemModule__createItemProviders__block_invoke_3;
  v21[3] = &unk_277DB8EC0;
  v11 = v9;
  v22 = v11;
  [v10 na_any:v21];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  [v7 setObject:v12 forKeyedSubscript:*MEMORY[0x277D14068]];

  [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v13 = *MEMORY[0x277D13DA8];
  v14 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13DA8]];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 mutableCopy];
  }

  else
  {
    v17 = [MEMORY[0x277CBEB98] set];
    v16 = [v17 mutableCopy];
  }

  v18 = [WeakRetained sourceItem];
  v19 = [v18 user];
  [v16 addObject:v19];

  [v7 setObject:v16 forKeyedSubscript:v13];

  return v7;
}

uint64_t __60__HUTVViewingProfilesDevicesItemModule__createItemProviders__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HUTVViewingProfilesDevicesItemModule__createItemProviders__block_invoke_4;
  v8[3] = &unk_277DB8EC0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __60__HUTVViewingProfilesDevicesItemModule__createItemProviders__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [(HUTVViewingProfilesDevicesItemModule *)self viewingProfileItemProvider];
    v7 = [v6 items];
    v8 = [v7 count];

    if (!v8)
    {
      NSLog(&cfstr_Buildsectionsw.isa);
    }

    v9 = [(HUTVViewingProfilesDevicesItemModule *)self viewingProfileItemProvider];
    v10 = [v9 items];
    v11 = [v10 allObjects];
    v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_66];

    v13 = [MEMORY[0x277CBEB98] setWithArray:v12];
    v14 = [v4 na_setByIntersectingWithSet:v13];

    v15 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"TV_VIEWING_PROFILES_DEVICES"];
    v16 = _HULocalizedStringWithDefaultValue(@"HUUsersTVViewingProfilesDevicesSectionTitle", @"HUUsersTVViewingProfilesDevicesSectionTitle", 1);
    [v15 setHeaderTitle:v16];

    v17 = HULocalizedModelString(@"HUUsersTVViewingProfilesDevicesFooterTitle");
    [v15 setFooterTitle:v17];

    v18 = [v14 allObjects];
    v19 = [MEMORY[0x277D14CE8] comparatorWithSortedObjects:v12];
    v20 = [v18 sortedArrayUsingComparator:v19];
    [v15 setItems:v20];

    [v5 addObject:v15];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

uint64_t __72__HUTVViewingProfilesDevicesItemModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = *MEMORY[0x277D13F60];
  v7 = [v5 objectForKey:*MEMORY[0x277D13F60]];
  v8 = [v4 latestResults];

  v9 = [v8 objectForKey:v6];
  v10 = [v7 localizedStandardCompare:v9];

  return v10;
}

- (NSArray)viewingProfilesDevices
{
  v2 = [(HUTVViewingProfilesDevicesItemModule *)self accessControl];
  v3 = [v2 accessories];

  return v3;
}

- (void)setViewingProfilesDevices:(id)a3
{
  v5 = a3;
  v6 = [(HUTVViewingProfilesDevicesItemModule *)self accessControl];
  v7 = [v6 mutableCopy];

  if (v7)
  {
    [v7 setAccessories:v5];
    v8 = [(HUTVViewingProfilesDevicesItemModule *)self _commitUpdateToAccessControl:v7];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__HUTVViewingProfilesDevicesItemModule_setViewingProfilesDevices___block_invoke;
    v12[3] = &unk_277DBB420;
    v12[4] = self;
    v12[5] = a2;
    v9 = [v8 addCompletionBlock:v12];
  }

  else
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Can't update to viewing profile access control because it is nil - presumably becuase we are waiting for it to sync.", v11, 2u);
    }
  }
}

void __66__HUTVViewingProfilesDevicesItemModule_setViewingProfilesDevices___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) itemUpdater];
  v2 = MEMORY[0x277D14788];
  v3 = MEMORY[0x277CBEB98];
  v4 = [*(a1 + 32) viewingProfileItemProvider];
  v5 = [v3 setWithObject:v4];
  v6 = [v2 requestToReloadItemProviders:v5 senderSelector:*(a1 + 40)];
  v7 = [v8 performItemUpdateRequest:v6];
}

- (void)turnOnTVViewingProfilesForAllDevices
{
  v4 = [(HUTVViewingProfilesDevicesItemModule *)self home];
  v3 = [v4 hf_tvViewingProfilesAccessories];
  [(HUTVViewingProfilesDevicesItemModule *)self setViewingProfilesDevices:v3];
}

- (id)_commitUpdateToAccessControl:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__HUTVViewingProfilesDevicesItemModule__commitUpdateToAccessControl___block_invoke;
  v18[3] = &unk_277DBB448;
  v6 = v4;
  v19 = v6;
  v20 = self;
  v7 = [v5 futureWithErrorOnlyHandlerAdapterBlock:v18];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __69__HUTVViewingProfilesDevicesItemModule__commitUpdateToAccessControl___block_invoke_33;
  v15 = &unk_277DB7E68;
  v16 = self;
  v17 = v6;
  v8 = v6;
  v9 = [v7 addSuccessBlock:&v12];
  v10 = [v7 addFailureBlock:{&__block_literal_global_41_1, v12, v13, v14, v15, v16}];

  return v7;
}

void __69__HUTVViewingProfilesDevicesItemModule__commitUpdateToAccessControl___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Committing update to viewing profile access control: %@", &v10, 0xCu);
  }

  v6 = [*(a1 + 40) sourceItem];
  v7 = [v6 user];
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) home];
  [v7 updateMediaContentProfileAccessControl:v8 forHome:v9 completionHandler:v3];
}

void __69__HUTVViewingProfilesDevicesItemModule__commitUpdateToAccessControl___block_invoke_33(uint64_t a1)
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__HUTVViewingProfilesDevicesItemModule__commitUpdateToAccessControl___block_invoke_2;
  v4[3] = &unk_277DBB470;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 dispatchUserObserverMessage:v4 sender:0];
}

void __69__HUTVViewingProfilesDevicesItemModule__commitUpdateToAccessControl___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [v3 currentUser];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) home];
    [v7 user:v4 didUpdateMediaContentProfileAccessControl:v5 forHome:v6];
  }
}

void __69__HUTVViewingProfilesDevicesItemModule__commitUpdateToAccessControl___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

@end