@interface HUPrimaryUserSettingsItemModule
- (HUPrimaryUserSettingsItemModule)initWithItemUpdater:(id)updater home:(id)home mediaProfileContainer:(id)container;
- (id)_updatePrimaryUserSelectionType:(unint64_t)type user:(id)user;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
- (void)_buildItemProviders;
@end

@implementation HUPrimaryUserSettingsItemModule

- (HUPrimaryUserSettingsItemModule)initWithItemUpdater:(id)updater home:(id)home mediaProfileContainer:(id)container
{
  updaterCopy = updater;
  homeCopy = home;
  containerCopy = container;
  v12 = containerCopy;
  if (homeCopy)
  {
    if (containerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUPrimaryUserSettingsItemModule.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUPrimaryUserSettingsItemModule.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = HUPrimaryUserSettingsItemModule;
  v13 = [(HFItemModule *)&v18 initWithItemUpdater:updaterCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_home, home);
    objc_storeStrong(&v14->_mediaProfileContainer, container);
    [(HUPrimaryUserSettingsItemModule *)v14 _buildItemProviders];
  }

  return v14;
}

- (id)itemProviders
{
  v3 = MEMORY[0x277CBEB98];
  primaryUserItemProvider = [(HUPrimaryUserSettingsItemModule *)self primaryUserItemProvider];
  staticItemProvider = [(HUPrimaryUserSettingsItemModule *)self staticItemProvider];
  v6 = [v3 setWithObjects:{primaryUserItemProvider, staticItemProvider, 0}];

  return v6;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  v5 = objc_opt_new();
  mediaProfileContainer = [(HUPrimaryUserSettingsItemModule *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  hf_isSiriEndpoint = [hf_backingAccessory hf_isSiriEndpoint];

  v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUPrimaryUserSettingsHeaderSectionIdentifier"];
  if (hf_isSiriEndpoint)
  {
    v9 = @"HUPrimaryUserSettingsHeaderSection_SiriEndpoint_Footer";
  }

  else
  {
    v9 = @"HUPrimaryUserSettingsHeaderSection_Footer";
  }

  v10 = _HULocalizedStringWithDefaultValue(v9, v9, 1);
  [v8 setFooterTitle:v10];

  v23 = v8;
  v24 = v5;
  [v5 addObject:v8];
  v11 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUPrimaryUserSettingsUserSectionIdentifier"];
  v12 = objc_opt_new();
  primaryUserItemProvider = [(HUPrimaryUserSettingsItemModule *)self primaryUserItemProvider];
  items = [primaryUserItemProvider items];
  allObjects = [items allObjects];
  _userItemComparator = [objc_opt_class() _userItemComparator];
  v17 = [allObjects sortedArrayUsingComparator:_userItemComparator];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __67__HUPrimaryUserSettingsItemModule_buildSectionsWithDisplayedItems___block_invoke;
  v25[3] = &unk_277DB85D8;
  v26 = itemsCopy;
  v18 = itemsCopy;
  v19 = [v17 na_filter:v25];
  [v12 na_safeAddObjectsFromArray:v19];

  if ((hf_isSiriEndpoint & 1) == 0)
  {
    homePodAccountSelectionItem = [(HUPrimaryUserSettingsItemModule *)self homePodAccountSelectionItem];
    [v12 na_safeAddObject:homePodAccountSelectionItem];
  }

  [v11 setItems:v12];
  [v24 addObject:v11];

  return v24;
}

uint64_t __54__HUPrimaryUserSettingsItemModule__userItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 latestResults];
  v7 = *MEMORY[0x277D14120];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D14120]];

  v9 = [v5 latestResults];
  v10 = [v9 objectForKeyedSubscript:v7];

  if ([v8 type] || !objc_msgSend(v10, "type"))
  {
    if ([v8 type] && !objc_msgSend(v10, "type"))
    {
      v12 = 1;
    }

    else
    {
      v11 = [MEMORY[0x277D14778] defaultItemComparator];
      v12 = (v11)[2](v11, v4, v5);
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (void)_buildItemProviders
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [HUPrimaryUserItemProvider alloc];
  home = [(HUPrimaryUserSettingsItemModule *)self home];
  mediaProfileContainer = [(HUPrimaryUserSettingsItemModule *)self mediaProfileContainer];
  v6 = [(HUPrimaryUserItemProvider *)v3 initWithHome:home mediaProfileContainer:mediaProfileContainer];
  [(HUPrimaryUserSettingsItemModule *)self setPrimaryUserItemProvider:v6];

  v7 = [HUPrimaryUserHomePodAccountItem alloc];
  home2 = [(HUPrimaryUserSettingsItemModule *)self home];
  hf_characteristicValueManager = [home2 hf_characteristicValueManager];
  mediaProfileContainer2 = [(HUPrimaryUserSettingsItemModule *)self mediaProfileContainer];
  v11 = [(HUPrimaryUserHomePodAccountItem *)v7 initWithValueSource:hf_characteristicValueManager mediaProfileContainer:mediaProfileContainer2];
  [(HUPrimaryUserSettingsItemModule *)self setHomePodAccountSelectionItem:v11];

  v12 = objc_alloc(MEMORY[0x277CBEB58]);
  homePodAccountSelectionItem = [(HUPrimaryUserSettingsItemModule *)self homePodAccountSelectionItem];
  v17[0] = homePodAccountSelectionItem;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v15 = [v12 initWithArray:v14];

  v16 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v15];
  [(HUPrimaryUserSettingsItemModule *)self setStaticItemProvider:v16];
}

- (id)_updatePrimaryUserSelectionType:(unint64_t)type user:(id)user
{
  v34 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v6 = objc_opt_new();
  v7 = MEMORY[0x277CBEB58];
  mediaProfileContainer = [(HUPrimaryUserSettingsItemModule *)self mediaProfileContainer];
  accessories = [mediaProfileContainer accessories];
  v10 = [v7 setWithSet:accessories];

  if (!v10)
  {
    mediaProfileContainer2 = [(HUPrimaryUserSettingsItemModule *)self mediaProfileContainer];
    hf_backingAccessory = [mediaProfileContainer2 hf_backingAccessory];
    [0 na_safeAddObject:hf_backingAccessory];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        if ([v18 supportsPreferredMediaUser])
        {
          v19 = MEMORY[0x277D2C900];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __72__HUPrimaryUserSettingsItemModule__updatePrimaryUserSelectionType_user___block_invoke;
          v25[3] = &unk_277DBF398;
          v25[4] = self;
          v25[5] = v18;
          v27 = a2;
          typeCopy = type;
          v26 = userCopy;
          v20 = [v19 futureWithBlock:v25];
          [v6 addObject:v20];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  v21 = [MEMORY[0x277D2C900] combineAllFutures:v6];

  return v21;
}

void __72__HUPrimaryUserSettingsItemModule__updatePrimaryUserSelectionType_user___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D14788];
  v5 = [*(a1 + 32) itemProviders];
  v6 = [v4 requestToReloadItemProviders:v5 senderSelector:*(a1 + 56)];

  objc_initWeak(&location, *(a1 + 32));
  v7 = *(a1 + 64);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__HUPrimaryUserSettingsItemModule__updatePrimaryUserSelectionType_user___block_invoke_2;
  v12[3] = &unk_277DBF370;
  v12[4] = v8;
  v10 = v3;
  v13 = v10;
  objc_copyWeak(&v15, &location);
  v11 = v6;
  v14 = v11;
  [v8 updatePreferredMediaUserSelectionType:v7 user:v9 completionHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __72__HUPrimaryUserSettingsItemModule__updatePrimaryUserSelectionType_user___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Failed to update primary user for accessory %@ with error %@", &v11, 0x16u);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated primary user setting for accessory %@", &v11, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v8 = [WeakRetained itemUpdater];
    v9 = [v8 performItemUpdateRequest:*(a1 + 48)];

    [*(a1 + 40) finishWithNoResult];
  }
}

@end