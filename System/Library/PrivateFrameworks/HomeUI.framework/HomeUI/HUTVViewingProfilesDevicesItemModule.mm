@interface HUTVViewingProfilesDevicesItemModule
- (BOOL)isTVViewingProfileDevice:(id)device;
- (HMMediaContentProfileAccessControl)accessControl;
- (HUTVViewingProfilesDevicesItemModule)initWithItemUpdater:(id)updater userItem:(id)item;
- (NSArray)viewingProfilesDevices;
- (id)_commitUpdateToAccessControl:(id)control;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (void)_createItemProviders;
- (void)setViewingProfilesDevices:(id)devices;
- (void)turnOnTVViewingProfilesForAllDevices;
@end

@implementation HUTVViewingProfilesDevicesItemModule

- (HUTVViewingProfilesDevicesItemModule)initWithItemUpdater:(id)updater userItem:(id)item
{
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = HUTVViewingProfilesDevicesItemModule;
  v8 = [(HFItemModule *)&v14 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sourceItem, item);
    sourceItem = [(HUTVViewingProfilesDevicesItemModule *)v9 sourceItem];
    home = [sourceItem home];
    home = v9->_home;
    v9->_home = home;

    [(HUTVViewingProfilesDevicesItemModule *)v9 _createItemProviders];
  }

  return v9;
}

- (BOOL)isTVViewingProfileDevice:(id)device
{
  deviceCopy = device;
  viewingProfileItemProvider = [(HUTVViewingProfilesDevicesItemModule *)self viewingProfileItemProvider];
  items = [viewingProfileItemProvider items];
  v7 = [items containsObject:deviceCopy];

  return v7;
}

- (HMMediaContentProfileAccessControl)accessControl
{
  sourceItem = [(HUTVViewingProfilesDevicesItemModule *)self sourceItem];
  user = [sourceItem user];
  home = [(HUTVViewingProfilesDevicesItemModule *)self home];
  v6 = [user mediaContentProfileAccessControlForHome:home];

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
    home = [(HUTVViewingProfilesDevicesItemModule *)self home];
    v5 = [v3 initWithHome:home];

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
    viewingProfileItemProvider = [(HUTVViewingProfilesDevicesItemModule *)self viewingProfileItemProvider];
    v10 = [v8 setWithObject:viewingProfileItemProvider];
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

- (id)buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    viewingProfileItemProvider = [(HUTVViewingProfilesDevicesItemModule *)self viewingProfileItemProvider];
    items = [viewingProfileItemProvider items];
    v8 = [items count];

    if (!v8)
    {
      NSLog(&cfstr_Buildsectionsw.isa);
    }

    viewingProfileItemProvider2 = [(HUTVViewingProfilesDevicesItemModule *)self viewingProfileItemProvider];
    items2 = [viewingProfileItemProvider2 items];
    allObjects = [items2 allObjects];
    v12 = [allObjects sortedArrayUsingComparator:&__block_literal_global_66];

    v13 = [MEMORY[0x277CBEB98] setWithArray:v12];
    v14 = [itemsCopy na_setByIntersectingWithSet:v13];

    v15 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"TV_VIEWING_PROFILES_DEVICES"];
    v16 = _HULocalizedStringWithDefaultValue(@"HUUsersTVViewingProfilesDevicesSectionTitle", @"HUUsersTVViewingProfilesDevicesSectionTitle", 1);
    [v15 setHeaderTitle:v16];

    v17 = HULocalizedModelString(@"HUUsersTVViewingProfilesDevicesFooterTitle");
    [v15 setFooterTitle:v17];

    allObjects2 = [v14 allObjects];
    v19 = [MEMORY[0x277D14CE8] comparatorWithSortedObjects:v12];
    v20 = [allObjects2 sortedArrayUsingComparator:v19];
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
  accessControl = [(HUTVViewingProfilesDevicesItemModule *)self accessControl];
  accessories = [accessControl accessories];

  return accessories;
}

- (void)setViewingProfilesDevices:(id)devices
{
  devicesCopy = devices;
  accessControl = [(HUTVViewingProfilesDevicesItemModule *)self accessControl];
  v7 = [accessControl mutableCopy];

  if (v7)
  {
    [v7 setAccessories:devicesCopy];
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
  home = [(HUTVViewingProfilesDevicesItemModule *)self home];
  hf_tvViewingProfilesAccessories = [home hf_tvViewingProfilesAccessories];
  [(HUTVViewingProfilesDevicesItemModule *)self setViewingProfilesDevices:hf_tvViewingProfilesAccessories];
}

- (id)_commitUpdateToAccessControl:(id)control
{
  controlCopy = control;
  v5 = MEMORY[0x277D2C900];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__HUTVViewingProfilesDevicesItemModule__commitUpdateToAccessControl___block_invoke;
  v18[3] = &unk_277DBB448;
  v6 = controlCopy;
  v19 = v6;
  selfCopy = self;
  v7 = [v5 futureWithErrorOnlyHandlerAdapterBlock:v18];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __69__HUTVViewingProfilesDevicesItemModule__commitUpdateToAccessControl___block_invoke_33;
  v15 = &unk_277DB7E68;
  selfCopy2 = self;
  v17 = v6;
  v8 = v6;
  v9 = [v7 addSuccessBlock:&v12];
  v10 = [v7 addFailureBlock:{&__block_literal_global_41_1, v12, v13, v14, v15, selfCopy2}];

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