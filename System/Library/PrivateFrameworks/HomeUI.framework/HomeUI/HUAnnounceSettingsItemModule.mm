@interface HUAnnounceSettingsItemModule
- (HUAnnounceSettingsItemModule)initWithItemUpdater:(id)updater;
- (HUAnnounceSettingsItemModule)initWithItemUpdater:(id)updater home:(id)home settingsContext:(unint64_t)context;
- (id)_updateNotificationSettings:(id)settings;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)enableAnnounceSetting:(BOOL)setting forItem:(id)item;
- (id)enablePermissionSetting:(BOOL)setting forItem:(id)item;
- (id)itemProviders;
- (id)updateNotificationSettings:(id)settings;
- (void)_buildItemProviders;
- (void)mediaProfileContainer:(id)container didUpdateSettingKeypath:(id)keypath value:(id)value;
@end

@implementation HUAnnounceSettingsItemModule

- (HUAnnounceSettingsItemModule)initWithItemUpdater:(id)updater home:(id)home settingsContext:(unint64_t)context
{
  updaterCopy = updater;
  homeCopy = home;
  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAnnounceSettingsItemModule.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  v15.receiver = self;
  v15.super_class = HUAnnounceSettingsItemModule;
  v11 = [(HFItemModule *)&v15 initWithItemUpdater:updaterCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_home, home);
    v12->_settingsContext = context;
    [(HUAnnounceSettingsItemModule *)v12 _buildItemProviders];
  }

  return v12;
}

- (HUAnnounceSettingsItemModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAnnounceSettingsItemModule.m" lineNumber:51 description:{@"%s is unavailable; use %@ instead", "-[HUAnnounceSettingsItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (id)itemProviders
{
  v3 = MEMORY[0x277CBEB98];
  notificationSettingsItemProvider = [(HUAnnounceSettingsItemModule *)self notificationSettingsItemProvider];
  announceDeviceItemProvider = [(HUAnnounceSettingsItemModule *)self announceDeviceItemProvider];
  announceOtherDeviceItemProvider = [(HUAnnounceSettingsItemModule *)self announceOtherDeviceItemProvider];
  userItemProvider = [(HUAnnounceSettingsItemModule *)self userItemProvider];
  v8 = [v3 setWithObjects:{notificationSettingsItemProvider, announceDeviceItemProvider, announceOtherDeviceItemProvider, userItemProvider, 0}];

  return v8;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v89 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_opt_new();
  if ([(HUAnnounceSettingsItemModule *)self settingsContext]!= 3)
  {
    home = [(HUAnnounceSettingsItemModule *)self home];
    hf_shouldShowAnnounceFeatureForThisHome = [home hf_shouldShowAnnounceFeatureForThisHome];

    if (hf_shouldShowAnnounceFeatureForThisHome)
    {
      v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUAnnounceSettingsNotificationSettingsItemSectionIdentifier"];
      if ([(HUAnnounceSettingsItemModule *)self settingsContext]!= 2)
      {
        v9 = _HULocalizedStringWithDefaultValue(@"HUAnnounceSettingsNotificationsSection_Header", @"HUAnnounceSettingsNotificationsSection_Header", 1);
        [v8 setHeaderTitle:v9];
      }

      notificationSettingsItemProvider = [(HUAnnounceSettingsItemModule *)self notificationSettingsItemProvider];
      items = [notificationSettingsItemProvider items];
      allObjects = [items allObjects];
      v13 = [allObjects sortedArrayUsingComparator:&__block_literal_global_184];

      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __64__HUAnnounceSettingsItemModule_buildSectionsWithDisplayedItems___block_invoke_3;
      v86[3] = &unk_277DB85D8;
      v87 = itemsCopy;
      v14 = [v13 na_filter:v86];
      [v8 setItems:v14];

      [v5 addObject:v8];
      [v8 setFooterTitle:0];
      items2 = [v8 items];
      v16 = [items2 count];

      if (v16 == 1)
      {
        objc_opt_class();
        items3 = [v8 items];
        firstObject = [items3 firstObject];
        if (objc_opt_isKindOfClass())
        {
          v19 = firstObject;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        if (v20 && [v20 notificationMode] == 1)
        {
          v21 = _HULocalizedStringWithDefaultValue(@"HUAnnounceSettingsNotificationsSection_Footer", @"HUAnnounceSettingsNotificationsSection_Footer", 1);
          [v8 setFooterTitle:v21];
        }
      }
    }
  }

  if ([(HUAnnounceSettingsItemModule *)self settingsContext])
  {
    if ([(HUAnnounceSettingsItemModule *)self settingsContext]!= 2)
    {
      home2 = [(HUAnnounceSettingsItemModule *)self home];
      hf_shouldShowAnnounceFeatureForThisHome2 = [home2 hf_shouldShowAnnounceFeatureForThisHome];

      if (hf_shouldShowAnnounceFeatureForThisHome2)
      {
        v24 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUAnnounceSettingsUserItemSectionIdentifier"];
        if ([(HUAnnounceSettingsItemModule *)self settingsContext]!= 3)
        {
          v25 = _HULocalizedStringWithDefaultValue(@"HUAnnounceSettingsUserSection_Header", @"HUAnnounceSettingsUserSection_Header", 1);
          [v24 setHeaderTitle:v25];

          v26 = _HULocalizedStringWithDefaultValue(@"HUAnnounceSettingsUserSection_Footer", @"HUAnnounceSettingsUserSection_Footer", 1);
          [v24 setFooterTitle:v26];
        }

        userItemProvider = [(HUAnnounceSettingsItemModule *)self userItemProvider];
        items4 = [userItemProvider items];
        allObjects2 = [items4 allObjects];
        _userItemComparator = [objc_opt_class() _userItemComparator];
        v31 = [allObjects2 sortedArrayUsingComparator:_userItemComparator];
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = __64__HUAnnounceSettingsItemModule_buildSectionsWithDisplayedItems___block_invoke_4;
        v84[3] = &unk_277DB85D8;
        v85 = itemsCopy;
        [v31 na_filter:v84];
        v33 = v32 = itemsCopy;
        [v24 setItems:v33];

        itemsCopy = v32;
        [v5 addObject:v24];
      }
    }
  }

  if ([(HUAnnounceSettingsItemModule *)self settingsContext]!= 2 && [(HUAnnounceSettingsItemModule *)self settingsContext]!= 3)
  {
    v34 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUAnnounceSettingsAnnounceDeviceItemSectionIdentifier"];
    v35 = objc_opt_new();
    announceDeviceItemProvider = [(HUAnnounceSettingsItemModule *)self announceDeviceItemProvider];
    items5 = [announceDeviceItemProvider items];
    allObjects3 = [items5 allObjects];
    [v35 na_safeAddObjectsFromArray:allObjects3];

    announceOtherDeviceItemProvider = [(HUAnnounceSettingsItemModule *)self announceOtherDeviceItemProvider];
    items6 = [announceOtherDeviceItemProvider items];
    allObjects4 = [items6 allObjects];
    [v35 na_safeAddObjectsFromArray:allObjects4];

    v42 = _HULocalizedStringWithDefaultValue(@"HUAnnounceSettingsHomePodSection_Header", @"HUAnnounceSettingsHomePodSection_Header", 1);
    [v34 setHeaderTitle:v42];

    v43 = _HULocalizedStringWithDefaultValue(@"HUAnnounceSettingsHomePodSection_Footer", @"HUAnnounceSettingsHomePodSection_Footer", 1);
    [v34 setFooterTitle:v43];

    announceOtherDeviceItemProvider2 = [(HUAnnounceSettingsItemModule *)self announceOtherDeviceItemProvider];
    items7 = [announceOtherDeviceItemProvider2 items];
    v46 = [items7 count];

    if (v46)
    {
      v47 = _HULocalizedStringWithDefaultValue(@"HUAnnounceSettingsAccessoriesSection_Header", @"HUAnnounceSettingsAccessoriesSection_Header", 1);
      [v34 setHeaderTitle:v47];

      items8 = _HULocalizedStringWithDefaultValue(@"HUAnnounceSettingsAccessoriesSection_Footer", @"HUAnnounceSettingsAccessoriesSection_Footer", 1);
      [v34 setFooterTitle:items8];
    }

    else
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      announceDeviceItemProvider2 = [(HUAnnounceSettingsItemModule *)self announceDeviceItemProvider];
      items8 = [announceDeviceItemProvider2 items];

      v50 = [items8 countByEnumeratingWithState:&v80 objects:v88 count:16];
      if (v50)
      {
        v51 = v50;
        v74 = v35;
        v75 = v34;
        v76 = itemsCopy;
        v77 = v5;
        v52 = *v81;
        while (2)
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v81 != v52)
            {
              objc_enumerationMutation(items8);
            }

            v54 = *(*(&v80 + 1) + 8 * i);
            objc_opt_class();
            v55 = v54;
            if (objc_opt_isKindOfClass())
            {
              v56 = v55;
            }

            else
            {
              v56 = 0;
            }

            v57 = v56;

            objc_opt_class();
            sourceItem = [v57 sourceItem];
            if (objc_opt_isKindOfClass())
            {
              v59 = sourceItem;
            }

            else
            {
              v59 = 0;
            }

            v60 = v59;

            objc_opt_class();
            sourceItem2 = [v57 sourceItem];
            if (objc_opt_isKindOfClass())
            {
              v62 = sourceItem2;
            }

            else
            {
              v62 = 0;
            }

            v63 = v62;

            if (v60)
            {
              v64 = v60;
            }

            else
            {
              v64 = v63;
            }

            accessories = [v64 accessories];
            anyObject = [accessories anyObject];

            if ([anyObject hf_isSiriEndpoint])
            {
              v67 = _HULocalizedStringWithDefaultValue(@"HUAnnounceSettingsAccessoriesSection_Header", @"HUAnnounceSettingsAccessoriesSection_Header", 1);
              v34 = v75;
              [v75 setHeaderTitle:v67];

              v68 = _HULocalizedStringWithDefaultValue(@"HUAnnounceSettingsAccessoriesSection_Footer", @"HUAnnounceSettingsAccessoriesSection_Footer", 1);
              [v75 setFooterTitle:v68];

              itemsCopy = v76;
              v5 = v77;
              goto LABEL_46;
            }
          }

          v51 = [items8 countByEnumeratingWithState:&v80 objects:v88 count:16];
          if (v51)
          {
            continue;
          }

          break;
        }

        itemsCopy = v76;
        v5 = v77;
        v34 = v75;
LABEL_46:
        v35 = v74;
      }
    }

    v69 = [v35 copy];
    _announceDeviceItemComparator = [objc_opt_class() _announceDeviceItemComparator];
    v71 = [v69 sortedArrayUsingComparator:_announceDeviceItemComparator];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __64__HUAnnounceSettingsItemModule_buildSectionsWithDisplayedItems___block_invoke_5;
    v78[3] = &unk_277DB85D8;
    v79 = itemsCopy;
    v72 = [v71 na_filter:v78];
    [v34 setItems:v72];

    [v5 addObject:v34];
  }

  return v5;
}

uint64_t __64__HUAnnounceSettingsItemModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v13 = [v10 compare:{v11, v17, 3221225472, __64__HUAnnounceSettingsItemModule_buildSectionsWithDisplayedItems___block_invoke_2, &unk_277DB78F8, v10}];
    v15 = v19;
  }

  return v13;
}

- (id)updateNotificationSettings:(id)settings
{
  settingsCopy = settings;
  objc_opt_class();
  v5 = settingsCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && (-[HUAnnounceSettingsItemModule notificationSettingsItemProvider](self, "notificationSettingsItemProvider"), v8 = objc_claimAutoreleasedReturnValue(), [v8 items], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", v5), v9, v8, v10))
  {
    v11 = [objc_alloc(MEMORY[0x277CD1810]) initWithDeviceNotificationMode:{objc_msgSend(v7, "notificationMode")}];
    futureWithNoResult = [(HUAnnounceSettingsItemModule *)self _updateNotificationSettings:v11];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

- (id)enablePermissionSetting:(BOOL)setting forItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v7 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9 && (-[HUAnnounceSettingsItemModule userItemProvider](self, "userItemProvider"), v10 = objc_claimAutoreleasedReturnValue(), [v10 items], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", v7), v11, v10, v12))
  {
    v13 = MEMORY[0x277D2C900];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__HUAnnounceSettingsItemModule_enablePermissionSetting_forItem___block_invoke;
    v16[3] = &unk_277DB89C0;
    settingCopy = setting;
    v17 = v9;
    selfCopy = self;
    futureWithNoResult = [v13 futureWithBlock:v16];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

void __64__HUAnnounceSettingsItemModule_enablePermissionSetting_forItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) setEnableAnnounce:*(a1 + 48)];
  objc_initWeak(&location, *(a1 + 40));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HUAnnounceSettingsItemModule_enablePermissionSetting_forItem___block_invoke_2;
  v7[3] = &unk_277DC0018;
  objc_copyWeak(&v10, &location);
  v5 = v3;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = [v4 addCompletionBlock:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __64__HUAnnounceSettingsItemModule_enablePermissionSetting_forItem___block_invoke_2(id *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v6)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Failed to update enable announce setting : %@", buf, 0xCu);
    }

    [a1[4] finishWithError:v6];
  }

  else
  {
    v9 = [MEMORY[0x277D146E8] sharedDispatcher];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __64__HUAnnounceSettingsItemModule_enablePermissionSetting_forItem___block_invoke_59;
    v13 = &unk_277DB9920;
    v14 = WeakRetained;
    v15 = a1[5];
    [v9 dispatchHomeObserverMessage:&v10 sender:0];

    [a1[4] finishWithResult:v5 error:{0, v10, v11, v12, v13, v14}];
  }
}

void __64__HUAnnounceSettingsItemModule_enablePermissionSetting_forItem___block_invoke_59(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [*(a1 + 40) user];
    [v5 home:v3 didUpdateAccessControlForUser:v4];
  }
}

- (id)enableAnnounceSetting:(BOOL)setting forItem:(id)item
{
  sourceItem = [item sourceItem];
  v6 = &unk_28251AE08;
  if ([sourceItem conformsToProtocol:v6])
  {
    v7 = sourceItem;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = MEMORY[0x277D2C900];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__HUAnnounceSettingsItemModule_enableAnnounceSetting_forItem___block_invoke;
    v12[3] = &unk_277DBB320;
    v13 = v8;
    settingCopy = setting;
    futureWithNoResult = [v9 futureWithBlock:v12];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

void __62__HUAnnounceSettingsItemModule_enableAnnounceSetting_forItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) setEnableAnnounce:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HUAnnounceSettingsItemModule_enableAnnounceSetting_forItem___block_invoke_2;
  v7[3] = &unk_277DB7530;
  v8 = v3;
  v5 = v3;
  v6 = [v4 addCompletionBlock:v7];
}

void __62__HUAnnounceSettingsItemModule_enableAnnounceSetting_forItem___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "Failed to update enable announce setting : %@", &v8, 0xCu);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  [*(a1 + 32) finishWithResult:v5 error:v6];
}

uint64_t __61__HUAnnounceSettingsItemModule__announceDeviceItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D14778];
  v5 = a3;
  v6 = a2;
  v7 = [v4 defaultItemComparator];
  v8 = (v7)[2](v7, v6, v5);

  return v8;
}

uint64_t __51__HUAnnounceSettingsItemModule__userItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
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
  v3 = [HUAnnounceNotificationSettingsItemProvider alloc];
  home = [(HUAnnounceSettingsItemModule *)self home];
  v5 = [(HUAnnounceNotificationSettingsItemProvider *)v3 initWithHome:home];
  [(HUAnnounceSettingsItemModule *)self setNotificationSettingsItemProvider:v5];

  v6 = objc_alloc(MEMORY[0x277D147F0]);
  home2 = [(HUAnnounceSettingsItemModule *)self home];
  v8 = [v6 initWithHome:home2];

  [v8 setFilter:&__block_literal_global_130_0];
  v9 = objc_alloc(MEMORY[0x277D14C38]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __51__HUAnnounceSettingsItemModule__buildItemProviders__block_invoke_3;
  v24[3] = &unk_277DC01A0;
  v24[4] = self;
  v10 = [v9 initWithSourceProvider:v8 transformationBlock:v24];
  [(HUAnnounceSettingsItemModule *)self setAnnounceDeviceItemProvider:v10];

  v11 = objc_alloc(MEMORY[0x277D142F0]);
  home3 = [(HUAnnounceSettingsItemModule *)self home];
  v13 = [v11 initWithHome:home3];

  [v13 setFilter:&__block_literal_global_350];
  v14 = objc_alloc(MEMORY[0x277D14C38]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __51__HUAnnounceSettingsItemModule__buildItemProviders__block_invoke_6;
  v23[3] = &unk_277DC0A98;
  v23[4] = self;
  v15 = [v14 initWithSourceProvider:v13 transformationBlock:v23];
  [(HUAnnounceSettingsItemModule *)self setAnnounceOtherDeviceItemProvider:v15];

  v16 = objc_alloc(MEMORY[0x277D14CA0]);
  home4 = [(HUAnnounceSettingsItemModule *)self home];
  v18 = [v16 initWithHome:home4];
  [(HUAnnounceSettingsItemModule *)self setUserItemProvider:v18];

  userItemProvider = [(HUAnnounceSettingsItemModule *)self userItemProvider];
  [userItemProvider setIncludeCurrentUser:1];

  home5 = [(HUAnnounceSettingsItemModule *)self home];
  hf_currentUserIsAdministrator = [home5 hf_currentUserIsAdministrator];
  userItemProvider2 = [(HUAnnounceSettingsItemModule *)self userItemProvider];
  [userItemProvider2 setIncludeOtherUsers:hf_currentUserIsAdministrator];
}

uint64_t __51__HUAnnounceSettingsItemModule__buildItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_2825BCB38])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 accessories];
    v7 = [v6 na_all:&__block_literal_global_341];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v2 supportsAnnounce];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

uint64_t __51__HUAnnounceSettingsItemModule__buildItemProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isMediaAccessory])
  {
    v3 = [v2 supportsAnnounce];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __51__HUAnnounceSettingsItemModule__buildItemProviders__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14C30]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HUAnnounceSettingsItemModule__buildItemProviders__block_invoke_4;
  v9[3] = &unk_277DBDC00;
  v5 = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [v4 initWithSourceItem:v6 transformationBlock:v9];

  return v7;
}

id __51__HUAnnounceSettingsItemModule__buildItemProviders__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;

  v7 = *(a1 + 32);
  v8 = &unk_28251AE08;
  if ([v7 conformsToProtocol:v8])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if ([v10 isSiriEndpointAccessory])
  {
    v11 = [v10 commonSettingsManager];

    if (v11)
    {
      v12 = [v10 commonSettingsManager];
      [v12 addObserver:*(a1 + 40)];
    }
  }

  v13 = MEMORY[0x277CCABB0];
  [v10 isAnnounceEnabled];
  v14 = [v13 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v6 setObject:v14 forKeyedSubscript:*MEMORY[0x277D14068]];

  return v6;
}

void *__51__HUAnnounceSettingsItemModule__buildItemProviders__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v5 hf_siriEndpointProfile];
  if (v6)
  {
    v7 = [v5 hf_primaryService];

    if (v7)
    {
      v6 = [v5 supportsAnnounce];
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

id __51__HUAnnounceSettingsItemModule__buildItemProviders__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14C30]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HUAnnounceSettingsItemModule__buildItemProviders__block_invoke_7;
  v9[3] = &unk_277DBDC00;
  v5 = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [v4 initWithSourceItem:v6 transformationBlock:v9];

  return v7;
}

id __51__HUAnnounceSettingsItemModule__buildItemProviders__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;

  v7 = *(a1 + 32);
  v8 = &unk_28251AE08;
  if ([v7 conformsToProtocol:v8])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if ([v10 isSiriEndpointAccessory])
  {
    v11 = [v10 commonSettingsManager];

    if (v11)
    {
      v12 = [v10 commonSettingsManager];
      [v12 addObserver:*(a1 + 40)];
    }
  }

  v13 = MEMORY[0x277CCABB0];
  [v10 isAnnounceEnabled];
  v14 = [v13 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v6 setObject:v14 forKeyedSubscript:*MEMORY[0x277D14068]];

  return v6;
}

- (id)_updateNotificationSettings:(id)settings
{
  settingsCopy = settings;
  deviceNotificationMode = [settingsCopy deviceNotificationMode];
  home = [(HUAnnounceSettingsItemModule *)self home];
  currentUser = [home currentUser];
  announceUserSettings = [currentUser announceUserSettings];
  deviceNotificationMode2 = [announceUserSettings deviceNotificationMode];

  v11 = MEMORY[0x277D2C900];
  if (deviceNotificationMode == deviceNotificationMode2)
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__HUAnnounceSettingsItemModule__updateNotificationSettings___block_invoke;
    v16[3] = &unk_277DB8200;
    v16[4] = self;
    v17 = settingsCopy;
    v13 = [v11 futureWithBlock:v16];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__HUAnnounceSettingsItemModule__updateNotificationSettings___block_invoke_354;
    v15[3] = &unk_277DBB420;
    v15[4] = self;
    v15[5] = a2;
    futureWithNoResult = [v13 addCompletionBlock:v15];
  }

  return futureWithNoResult;
}

void __60__HUAnnounceSettingsItemModule__updateNotificationSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [v4 currentUser];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) home];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HUAnnounceSettingsItemModule__updateNotificationSettings___block_invoke_2;
  v9[3] = &unk_277DB7E90;
  v10 = v3;
  v11 = *(a1 + 40);
  v8 = v3;
  [v5 updateAnnounceUserSettings:v6 forHome:v7 completionHandler:v9];
}

void __60__HUAnnounceSettingsItemModule__updateNotificationSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Error setting announce notification setting: %@", &v7, 0xCu);
    }

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "deviceNotificationMode")}];
    [v5 finishWithResult:v6 error:0];
  }
}

void __60__HUAnnounceSettingsItemModule__updateNotificationSettings___block_invoke_354(uint64_t a1)
{
  v6 = [*(a1 + 32) itemUpdater];
  v2 = MEMORY[0x277D14788];
  v3 = [*(a1 + 32) itemProviders];
  v4 = [v2 requestToReloadItemProviders:v3 senderSelector:*(a1 + 40)];
  v5 = [v6 performItemUpdateRequest:v4];
}

- (void)mediaProfileContainer:(id)container didUpdateSettingKeypath:(id)keypath value:(id)value
{
  v20 = *MEMORY[0x277D85DE8];
  keypathCopy = keypath;
  valueCopy = value;
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = keypathCopy;
    v18 = 2112;
    v19 = valueCopy;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Received update for setting keypath %@ value = %@", &v16, 0x16u);
  }

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v12 = MEMORY[0x277D14788];
  itemProviders = [(HUAnnounceSettingsItemModule *)self itemProviders];
  v14 = [v12 requestToReloadItemProviders:itemProviders senderSelector:a2];
  v15 = [itemUpdater performItemUpdateRequest:v14];
}

@end