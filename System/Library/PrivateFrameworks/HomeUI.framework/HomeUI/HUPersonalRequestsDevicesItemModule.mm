@interface HUPersonalRequestsDevicesItemModule
- (BOOL)_showPersonalRequestsItems;
- (BOOL)_voiceRecognitionLanguage:(id)language matchesMultiUserCapableAccessory:(id)accessory;
- (BOOL)isCurrentIOSDeviceOnSameVoiceRecognitionLanguageAsPersonalRequestsDeviceForItem:(id)item;
- (BOOL)isItemPersonalRequestsDevice:(id)device;
- (BOOL)isItemPersonalRequestsToggle:(id)toggle;
- (BOOL)recognitionLanguageIsSupportedVRLanguageForCurrentDevice;
- (BOOL)recognitionLanguageIsSupportedVRLanguageForItem:(id)item;
- (HMAssistantAccessControl)accessControl;
- (HUPersonalRequestsDevicesItemModule)initWithItemUpdater:(id)updater userItem:(id)item home:(id)home onlyShowDeviceSwitches:(BOOL)switches;
- (HUPersonalRequestsDevicesItemModule)initWithItemUpdater:(id)updater userItem:(id)item home:(id)home settingsController:(id)controller onlyShowDeviceSwitches:(BOOL)switches;
- (NAFuture)activeLocationDeviceFuture;
- (NSArray)personalRequestsDevices;
- (id)_attributedFooterTitle;
- (id)_commitUpdateToAccessControl:(id)control;
- (id)_createPersonalRequestProviderForMediaAccessories;
- (id)_createPersonalRequestProviderForOtherAccessories;
- (id)_transformItemForSourceItem:(id)item;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)recognitionLanguageForItem:(id)item;
- (id)updateLocationDeviceToThisDevice;
- (void)_createItemProviders;
- (void)locationDeviceManager:(id)manager didUpdateActiveLocationDevice:(id)device;
- (void)registerForExternalUpdates;
- (void)setPersonalRequestsDevices:(id)devices;
- (void)siriLanguageOptionsManager:(id)manager availableLanguageOptionsDidChange:(id)change;
- (void)siriLanguageOptionsManager:(id)manager selectedLanguageOptionDidChange:(id)change;
- (void)toggleAllPersonalRequestsDevices;
- (void)turnOnAllPersonalRequestsDevices;
- (void)turnOnPersonalRequestsForAllVoiceRecognitionCapablePersonalRequestsDevices;
- (void)unregisterForExternalUpdates;
@end

@implementation HUPersonalRequestsDevicesItemModule

- (HUPersonalRequestsDevicesItemModule)initWithItemUpdater:(id)updater userItem:(id)item home:(id)home onlyShowDeviceSwitches:(BOOL)switches
{
  updaterCopy = updater;
  itemCopy = item;
  homeCopy = home;
  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUPersonalRequestsDevicesItemModule.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v20.receiver = self;
  v20.super_class = HUPersonalRequestsDevicesItemModule;
  v14 = [(HFItemModule *)&v20 initWithItemUpdater:updaterCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_home, home);
    objc_storeStrong(&v15->_sourceItem, item);
    v15->_onlyShowDeviceSwitches = switches;
    if (![(HUPersonalRequestsDevicesItemModule *)v15 onlyShowDeviceSwitches])
    {
      v16 = +[HULocationDeviceManager sharedInstance];
      locationDeviceManager = v15->_locationDeviceManager;
      v15->_locationDeviceManager = v16;
    }

    [(HUPersonalRequestsDevicesItemModule *)v15 _createItemProviders];
  }

  return v15;
}

- (HUPersonalRequestsDevicesItemModule)initWithItemUpdater:(id)updater userItem:(id)item home:(id)home settingsController:(id)controller onlyShowDeviceSwitches:(BOOL)switches
{
  updaterCopy = updater;
  itemCopy = item;
  homeCopy = home;
  controllerCopy = controller;
  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUPersonalRequestsDevicesItemModule.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v31.receiver = self;
  v31.super_class = HUPersonalRequestsDevicesItemModule;
  v17 = [(HFItemModule *)&v31 initWithItemUpdater:updaterCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_home, home);
    objc_storeStrong(&v18->_sourceItem, item);
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    mediaProfileToLanguageOptionsManagerMap = v18->_mediaProfileToLanguageOptionsManagerMap;
    v18->_mediaProfileToLanguageOptionsManagerMap = strongToStrongObjectsMapTable;

    home = [(HUPersonalRequestsDevicesItemModule *)v18 home];
    hf_personalRequestAccessories = [home hf_personalRequestAccessories];

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __115__HUPersonalRequestsDevicesItemModule_initWithItemUpdater_userItem_home_settingsController_onlyShowDeviceSwitches___block_invoke;
    v28[3] = &unk_277DB9CA8;
    v23 = v18;
    v29 = v23;
    v30 = a2;
    [hf_personalRequestAccessories na_each:v28];
    v23->_onlyShowDeviceSwitches = switches;
    if (![(HUPersonalRequestsDevicesItemModule *)v23 onlyShowDeviceSwitches])
    {
      v24 = +[HULocationDeviceManager sharedInstance];
      locationDeviceManager = v23->_locationDeviceManager;
      v23->_locationDeviceManager = v24;
    }

    [(HUPersonalRequestsDevicesItemModule *)v23 _createItemProviders];
  }

  return v18;
}

void __115__HUPersonalRequestsDevicesItemModule_initWithItemUpdater_userItem_home_settingsController_onlyShowDeviceSwitches___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 hf_isSiriEndpoint] & 1) != 0 || (objc_msgSend(MEMORY[0x277D146E8], "sharedDispatcher"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "homeManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasOptedToHH2"), v5, v4, v6))
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = NSStringFromSelector(*(a1 + 40));
      v14 = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Creating Siri language options manager for accessory: %@", &v14, 0x20u);
    }

    v10 = [v3 mediaProfile];
    v11 = [v10 hf_siriLanguageOptionsManager];

    v12 = [*(a1 + 32) mediaProfileToLanguageOptionsManagerMap];
    v13 = [v3 mediaProfile];
    [v12 setObject:v11 forKey:v13];
  }
}

- (void)registerForExternalUpdates
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(HUPersonalRequestsDevicesItemModule *)self onlyShowDeviceSwitches])
  {
    locationDeviceManager = [(HUPersonalRequestsDevicesItemModule *)self locationDeviceManager];
    [locationDeviceManager addObserver:self];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  mediaProfileToLanguageOptionsManagerMap = [(HUPersonalRequestsDevicesItemModule *)self mediaProfileToLanguageOptionsManagerMap];
  objectEnumerator = [mediaProfileToLanguageOptionsManagerMap objectEnumerator];

  v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v10 + 1) + 8 * v9++) addObserver:self];
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)unregisterForExternalUpdates
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(HUPersonalRequestsDevicesItemModule *)self onlyShowDeviceSwitches])
  {
    locationDeviceManager = [(HUPersonalRequestsDevicesItemModule *)self locationDeviceManager];
    [locationDeviceManager removeObserver:self];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  mediaProfileToLanguageOptionsManagerMap = [(HUPersonalRequestsDevicesItemModule *)self mediaProfileToLanguageOptionsManagerMap];
  objectEnumerator = [mediaProfileToLanguageOptionsManagerMap objectEnumerator];

  v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v10 + 1) + 8 * v9++) removeObserver:self];
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (HMAssistantAccessControl)accessControl
{
  sourceItem = [(HUPersonalRequestsDevicesItemModule *)self sourceItem];
  user = [sourceItem user];
  home = [(HUPersonalRequestsDevicesItemModule *)self home];
  v6 = [user assistantAccessControlForHome:home];

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
    _createPersonalRequestProviderForMediaAccessories = [(HUPersonalRequestsDevicesItemModule *)self _createPersonalRequestProviderForMediaAccessories];
    [(HUPersonalRequestsDevicesItemModule *)self setPersonalRequestsMediaAccessoriesProvider:_createPersonalRequestProviderForMediaAccessories];

    _createPersonalRequestProviderForOtherAccessories = [(HUPersonalRequestsDevicesItemModule *)self _createPersonalRequestProviderForOtherAccessories];
    [(HUPersonalRequestsDevicesItemModule *)self setPersonalRequestsOtherAccessoriesProvider:_createPersonalRequestProviderForOtherAccessories];

    if ([(HUPersonalRequestsDevicesItemModule *)self onlyShowDeviceSwitches])
    {
      v5 = MEMORY[0x277CBEB98];
      personalRequestsMediaAccessoriesProvider = [(HUPersonalRequestsDevicesItemModule *)self personalRequestsMediaAccessoriesProvider];
      personalRequestsOtherAccessoriesProvider = [(HUPersonalRequestsDevicesItemModule *)self personalRequestsOtherAccessoriesProvider];
      v8 = [v5 setWithObjects:{personalRequestsMediaAccessoriesProvider, personalRequestsOtherAccessoriesProvider, 0}];
      itemProviders = self->_itemProviders;
      self->_itemProviders = v8;
    }

    else
    {
      personalRequestsMediaAccessoriesProvider = [MEMORY[0x277CBEB58] set];
      v10 = objc_alloc(MEMORY[0x277D14B38]);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __59__HUPersonalRequestsDevicesItemModule__createItemProviders__block_invoke;
      v20[3] = &unk_277DB7448;
      objc_copyWeak(&v21, &location);
      v11 = [v10 initWithResultsBlock:v20];
      personalRequestsToggleItem = self->_personalRequestsToggleItem;
      self->_personalRequestsToggleItem = v11;

      personalRequestsToggleItem = [(HUPersonalRequestsDevicesItemModule *)self personalRequestsToggleItem];
      [personalRequestsMediaAccessoriesProvider addObject:personalRequestsToggleItem];

      v14 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:personalRequestsMediaAccessoriesProvider];
      v15 = MEMORY[0x277CBEB98];
      personalRequestsMediaAccessoriesProvider2 = [(HUPersonalRequestsDevicesItemModule *)self personalRequestsMediaAccessoriesProvider];
      personalRequestsOtherAccessoriesProvider2 = [(HUPersonalRequestsDevicesItemModule *)self personalRequestsOtherAccessoriesProvider];
      v18 = [v15 setWithObjects:{personalRequestsMediaAccessoriesProvider2, personalRequestsOtherAccessoriesProvider2, v14, 0}];
      v19 = self->_itemProviders;
      self->_itemProviders = v18;

      objc_destroyWeak(&v21);
    }

    objc_destroyWeak(&location);
  }
}

id __59__HUPersonalRequestsDevicesItemModule__createItemProviders__block_invoke(uint64_t a1)
{
  v14[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained personalRequestsDevices];
  [v2 count];

  v3 = MEMORY[0x277D2C900];
  v13[0] = *MEMORY[0x277D13F60];
  v4 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalContent", @"HUUsersPersonalContent", 1);
  v14[0] = v4;
  v13[1] = *MEMORY[0x277D14068];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  v14[1] = v5;
  v13[2] = *MEMORY[0x277D13DA8];
  v6 = MEMORY[0x277CBEB98];
  v7 = [WeakRetained sourceItem];
  v8 = [v7 user];
  v9 = [v6 na_setWithSafeObject:v8];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v11 = [v3 futureWithResult:v10];

  return v11;
}

- (BOOL)_showPersonalRequestsItems
{
  home = [(HUPersonalRequestsDevicesItemModule *)self home];
  currentUser = [home currentUser];
  sourceItem = [(HUPersonalRequestsDevicesItemModule *)self sourceItem];
  user = [sourceItem user];
  if ([currentUser isEqual:user])
  {
    accessControl = [(HUPersonalRequestsDevicesItemModule *)self accessControl];
    v8 = accessControl != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count] && -[HUPersonalRequestsDevicesItemModule _showPersonalRequestsItems](self, "_showPersonalRequestsItems"))
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = MEMORY[0x277CBEB18];
    personalRequestsMediaAccessoriesProvider = [(HUPersonalRequestsDevicesItemModule *)self personalRequestsMediaAccessoriesProvider];
    items = [personalRequestsMediaAccessoriesProvider items];
    allObjects = [items allObjects];
    v10 = [v6 arrayWithArray:allObjects];

    personalRequestsOtherAccessoriesProvider = [(HUPersonalRequestsDevicesItemModule *)self personalRequestsOtherAccessoriesProvider];
    items2 = [personalRequestsOtherAccessoriesProvider items];
    allObjects2 = [items2 allObjects];
    [v10 addObjectsFromArray:allObjects2];

    v14 = [v10 sortedArrayUsingComparator:&__block_literal_global_44];
    v15 = [MEMORY[0x277CBEB98] setWithArray:v14];
    v16 = [itemsCopy na_setByIntersectingWithSet:v15];

    v17 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HOMEPOD_PERSONAL_REQUESTS_DEVICES"];
    v18 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalContentHomePodsSectionTitle", @"HUUsersPersonalContentHomePodsSectionTitle", 1);
    [v17 setHeaderTitle:v18];

    allObjects3 = [v16 allObjects];
    v20 = [MEMORY[0x277D14CE8] comparatorWithSortedObjects:v14];
    v21 = [allObjects3 sortedArrayUsingComparator:v20];
    [v17 setItems:v21];

    if (![(HUPersonalRequestsDevicesItemModule *)self onlyShowDeviceSwitches])
    {
      _attributedFooterTitle = [(HUPersonalRequestsDevicesItemModule *)self _attributedFooterTitle];
      [v17 setAttributedFooterTitle:_attributedFooterTitle];
    }

    [v5 addObject:v17];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

uint64_t __71__HUPersonalRequestsDevicesItemModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)isItemPersonalRequestsToggle:(id)toggle
{
  toggleCopy = toggle;
  personalRequestsToggleItem = [(HUPersonalRequestsDevicesItemModule *)self personalRequestsToggleItem];
  v6 = [toggleCopy isEqual:personalRequestsToggleItem];

  return v6;
}

- (BOOL)isItemPersonalRequestsDevice:(id)device
{
  deviceCopy = device;
  personalRequestsMediaAccessoriesProvider = [(HUPersonalRequestsDevicesItemModule *)self personalRequestsMediaAccessoriesProvider];
  items = [personalRequestsMediaAccessoriesProvider items];
  if ([items containsObject:deviceCopy])
  {
    v7 = 1;
  }

  else
  {
    personalRequestsOtherAccessoriesProvider = [(HUPersonalRequestsDevicesItemModule *)self personalRequestsOtherAccessoriesProvider];
    items2 = [personalRequestsOtherAccessoriesProvider items];
    v7 = [items2 containsObject:deviceCopy];
  }

  return v7;
}

- (NSArray)personalRequestsDevices
{
  accessControl = [(HUPersonalRequestsDevicesItemModule *)self accessControl];
  accessories = [accessControl accessories];

  return accessories;
}

- (void)toggleAllPersonalRequestsDevices
{
  v10 = *MEMORY[0x277D85DE8];
  personalRequestsDevices = [(HUPersonalRequestsDevicesItemModule *)self personalRequestsDevices];
  v5 = [personalRequestsDevices count];

  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@ Setting Personal Request devices to empty array.", &v8, 0xCu);
    }

    [(HUPersonalRequestsDevicesItemModule *)self setPersonalRequestsDevices:MEMORY[0x277CBEBF8]];
  }

  else
  {

    [(HUPersonalRequestsDevicesItemModule *)self turnOnAllPersonalRequestsDevices];
  }
}

- (void)turnOnAllPersonalRequestsDevices
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    home = [(HUPersonalRequestsDevicesItemModule *)self home];
    hf_personalRequestAccessories = [home hf_personalRequestAccessories];
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = hf_personalRequestAccessories;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@ Setting Personal Request devices to %@", &v10, 0x16u);
  }

  home2 = [(HUPersonalRequestsDevicesItemModule *)self home];
  hf_personalRequestAccessories2 = [home2 hf_personalRequestAccessories];
  [(HUPersonalRequestsDevicesItemModule *)self setPersonalRequestsDevices:hf_personalRequestAccessories2];
}

- (BOOL)_voiceRecognitionLanguage:(id)language matchesMultiUserCapableAccessory:(id)accessory
{
  v28 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  mediaProfile = [accessory mediaProfile];
  accessory = [mediaProfile accessory];
  supportsMultiUser = [accessory supportsMultiUser];

  if (supportsMultiUser)
  {
    v11 = [MEMORY[0x277D14810] siriLanguageOptionFor:mediaProfile];
    v12 = v11;
    if (v11)
    {
      recognitionLanguage = [v11 recognitionLanguage];
      v14 = [recognitionLanguage isEqualToString:languageCopy];
      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = NSStringFromSelector(a2);
        v20 = 138413314;
        selfCopy3 = self;
        v22 = 2112;
        v23 = v16;
        v24 = 1024;
        *v25 = v14;
        *&v25[4] = 2112;
        *&v25[6] = recognitionLanguage;
        v26 = 2112;
        v27 = mediaProfile;
        _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@ Supported voice recognition language matches Siri language?: %{BOOL}d: %@, on %@", &v20, 0x30u);
      }
    }

    else
    {
      recognitionLanguage = HFLogForCategory();
      if (os_log_type_enabled(recognitionLanguage, OS_LOG_TYPE_DEFAULT))
      {
        v18 = NSStringFromSelector(a2);
        v20 = 138412802;
        selfCopy3 = self;
        v22 = 2112;
        v23 = v18;
        v24 = 2112;
        *v25 = mediaProfile;
        _os_log_impl(&dword_20CEB6000, recognitionLanguage, OS_LOG_TYPE_DEFAULT, "%@:%@ HomePod does not have Siri Language: %@", &v20, 0x20u);
      }

      LOBYTE(v14) = 0;
    }
  }

  else
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      v20 = 138412802;
      selfCopy3 = self;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      *v25 = mediaProfile;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@ Accessory does not support multi user features (voice recognition): %@", &v20, 0x20u);
    }

    LOBYTE(v14) = 0;
  }

  return v14;
}

- (void)turnOnPersonalRequestsForAllVoiceRecognitionCapablePersonalRequestsDevices
{
  v26 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  home = [(HUPersonalRequestsDevicesItemModule *)self home];
  hf_personalRequestAccessories = [home hf_personalRequestAccessories];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __113__HUPersonalRequestsDevicesItemModule_turnOnPersonalRequestsForAllVoiceRecognitionCapablePersonalRequestsDevices__block_invoke;
  v15 = &unk_277DB9588;
  selfCopy = self;
  v8 = languageCode;
  v17 = v8;
  v9 = [hf_personalRequestAccessories na_filter:&v12];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 138413058;
    selfCopy2 = self;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ turning on Personal Requests for all HomePods on %@ & that support voice recognition: %@", buf, 0x2Au);
  }

  [(HUPersonalRequestsDevicesItemModule *)self setPersonalRequestsDevices:v9, v12, v13, v14, v15, selfCopy];
}

uint64_t __113__HUPersonalRequestsDevicesItemModule_turnOnPersonalRequestsForAllVoiceRecognitionCapablePersonalRequestsDevices__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mediaProfile];
  if ([v4 isContainedWithinItemGroup])
  {
    v5 = [*(a1 + 32) home];
    v6 = [v5 hf_mediaSystemForAccessory:v3];

    v4 = v6;
  }

  v7 = [v4 accessories];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __113__HUPersonalRequestsDevicesItemModule_turnOnPersonalRequestsForAllVoiceRecognitionCapablePersonalRequestsDevices__block_invoke_2;
  v11[3] = &unk_277DB9588;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v8;
  v9 = [v7 na_all:v11];

  return v9;
}

- (void)setPersonalRequestsDevices:(id)devices
{
  devicesCopy = devices;
  accessControl = [(HUPersonalRequestsDevicesItemModule *)self accessControl];
  v7 = [accessControl mutableCopy];

  if (v7)
  {
    [v7 setAccessories:devicesCopy];
    [v7 setAllowUnauthenticatedRequests:1];
    objc_initWeak(&location, self);
    v8 = [(HUPersonalRequestsDevicesItemModule *)self _commitUpdateToAccessControl:v7];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__HUPersonalRequestsDevicesItemModule_setPersonalRequestsDevices___block_invoke;
    v10[3] = &unk_277DB9CF0;
    objc_copyWeak(v11, &location);
    v11[1] = a2;
    v9 = [v8 addCompletionBlock:v10];

    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }
}

void __66__HUPersonalRequestsDevicesItemModule_setPersonalRequestsDevices___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained itemUpdater];
  v3 = MEMORY[0x277D14788];
  v4 = MEMORY[0x277CBEB98];
  v5 = [WeakRetained personalRequestsMediaAccessoriesProvider];
  v6 = [WeakRetained personalRequestsOtherAccessoriesProvider];
  v7 = [v4 setWithObjects:{v5, v6, 0}];
  v8 = [v3 requestToReloadItemProviders:v7 senderSelector:*(a1 + 40)];
  v9 = [v2 performItemUpdateRequest:v8];
}

- (NAFuture)activeLocationDeviceFuture
{
  if ([(HUPersonalRequestsDevicesItemModule *)self onlyShowDeviceSwitches])
  {
    activeLocationDeviceFuture = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  else
  {
    locationDeviceManager = [(HUPersonalRequestsDevicesItemModule *)self locationDeviceManager];
    activeLocationDeviceFuture = [locationDeviceManager activeLocationDeviceFuture];
  }

  return activeLocationDeviceFuture;
}

- (id)updateLocationDeviceToThisDevice
{
  if ([(HUPersonalRequestsDevicesItemModule *)self onlyShowDeviceSwitches])
  {
    NSLog(&cfstr_WeShouldNeverC.isa);
  }

  if ([(HUPersonalRequestsDevicesItemModule *)self onlyShowDeviceSwitches])
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Updating location device to this device...", buf, 2u);
    }

    objc_initWeak(buf, self);
    locationDeviceManager = [(HUPersonalRequestsDevicesItemModule *)self locationDeviceManager];
    updateActiveLocationDeviceToThisDevice = [locationDeviceManager updateActiveLocationDeviceToThisDevice];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __71__HUPersonalRequestsDevicesItemModule_updateLocationDeviceToThisDevice__block_invoke;
    v15 = &unk_277DB9D18;
    objc_copyWeak(v16, buf);
    v16[1] = a2;
    v8 = [updateActiveLocationDeviceToThisDevice addSuccessBlock:&v12];
    v9 = [v8 addFailureBlock:{&__block_literal_global_47, v12, v13, v14, v15}];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    futureWithNoResult = [v9 reschedule:mainThreadScheduler];

    objc_destroyWeak(v16);
    objc_destroyWeak(buf);
  }

  return futureWithNoResult;
}

void __71__HUPersonalRequestsDevicesItemModule_updateLocationDeviceToThisDevice__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Successfully updated location device to this device", v9, 2u);
  }

  v4 = [WeakRetained itemUpdater];
  v5 = MEMORY[0x277D14788];
  v6 = [WeakRetained allItems];
  v7 = [v5 requestToUpdateItems:v6 senderSelector:*(a1 + 40)];
  v8 = [v4 performItemUpdateRequest:v7];
}

void __71__HUPersonalRequestsDevicesItemModule_updateLocationDeviceToThisDevice__block_invoke_44(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_ERROR, "Failed to update active location device: %@", &v4, 0xCu);
  }
}

- (BOOL)isCurrentIOSDeviceOnSameVoiceRecognitionLanguageAsPersonalRequestsDeviceForItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(HUPersonalRequestsDevicesItemModule *)self recognitionLanguageForItem:item];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  v8 = [v5 isEqualToString:languageCode];
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v12 = 138413314;
    selfCopy = self;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = languageCode;
    v18 = 2112;
    v19 = v5;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ Siri language on this device (%@) matches Siri Language on Accessory (%@)?: %{BOOL}d", &v12, 0x30u);
  }

  return v8;
}

- (id)recognitionLanguageForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v4 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  objc_opt_class();
  if (v6)
  {
    objc_opt_class();
    v7 = v4;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    sourceItem = [v9 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v11 = sourceItem;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    anyObject = objc_opt_class();
    objc_opt_class();
    v14 = v7;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    accessories = v15;

    sourceItem2 = [accessories sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v18 = sourceItem2;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
  }

  else
  {
    v20 = v4;
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v12 = v21;

    anyObject = objc_opt_class();
    accessories = v20;
    if (objc_opt_isKindOfClass())
    {
      v22 = accessories;
    }

    else
    {
      v22 = 0;
    }

    v19 = v22;
  }

  if (v12)
  {
    [v12 mediaProfileContainer];
  }

  else
  {
    accessories = [v19 accessories];
    anyObject = [accessories anyObject];
    [anyObject mediaProfile];
  }
  v23 = ;
  v24 = v23;
  if ([v24 conformsToProtocol:&unk_2825BCB38])
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  if (!v12)
  {

    v23 = accessories;
  }

  v27 = [MEMORY[0x277D14810] siriLanguageOptionFor:v26];

  recognitionLanguage = [v27 recognitionLanguage];

  return recognitionLanguage;
}

- (BOOL)recognitionLanguageIsSupportedVRLanguageForItem:(id)item
{
  v18 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  supportedMULanguageCodes = [(HUPersonalRequestsDevicesItemModule *)self supportedMULanguageCodes];
  v7 = [(HUPersonalRequestsDevicesItemModule *)self recognitionLanguageForItem:itemCopy];

  v8 = [supportedMULanguageCodes containsObject:v7];
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v12 = 138412802;
    selfCopy = self;
    v14 = 2112;
    v15 = v10;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ Accessory language is a supported voice recognition language?: %{BOOL}d", &v12, 0x1Cu);
  }

  return v8;
}

- (BOOL)recognitionLanguageIsSupportedVRLanguageForCurrentDevice
{
  supportedMULanguageCodes = [(HUPersonalRequestsDevicesItemModule *)self supportedMULanguageCodes];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];
  v5 = [supportedMULanguageCodes containsObject:languageCode];

  return v5;
}

- (id)_commitUpdateToAccessControl:(id)control
{
  controlCopy = control;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D2C900];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__HUPersonalRequestsDevicesItemModule__commitUpdateToAccessControl___block_invoke;
  v15[3] = &unk_277DB9D40;
  objc_copyWeak(&v17, &location);
  v6 = controlCopy;
  v16 = v6;
  v7 = [v5 futureWithErrorOnlyHandlerAdapterBlock:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HUPersonalRequestsDevicesItemModule__commitUpdateToAccessControl___block_invoke_303;
  v12[3] = &unk_277DB9D90;
  objc_copyWeak(&v14, &location);
  v8 = v6;
  v13 = v8;
  v9 = [v7 addSuccessBlock:v12];
  v10 = [v7 addFailureBlock:&__block_literal_global_308_0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v7;
}

void __68__HUPersonalRequestsDevicesItemModule__commitUpdateToAccessControl___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Committing update to assistant access control: %@", &v11, 0xCu);
  }

  v7 = [WeakRetained sourceItem];
  v8 = [v7 user];
  v9 = *(a1 + 32);
  v10 = [WeakRetained home];
  [v8 updateAssistantAccessControl:v9 forHome:v10 completionHandler:v3];
}

void __68__HUPersonalRequestsDevicesItemModule__commitUpdateToAccessControl___block_invoke_303(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D146E8] sharedDispatcher];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__HUPersonalRequestsDevicesItemModule__commitUpdateToAccessControl___block_invoke_2;
  v5[3] = &unk_277DB9D68;
  objc_copyWeak(&v7, (a1 + 40));
  v6 = *(a1 + 32);
  [v4 dispatchUserObserverMessage:v5 sender:0];

  objc_destroyWeak(&v7);
}

void __68__HUPersonalRequestsDevicesItemModule__commitUpdateToAccessControl___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained home];
    v5 = [v4 currentUser];
    v6 = *(a1 + 32);
    v7 = [WeakRetained home];
    [v8 user:v5 didUpdateAssistantAccessControl:v6 forHome:v7];
  }
}

void __68__HUPersonalRequestsDevicesItemModule__commitUpdateToAccessControl___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

- (id)_createPersonalRequestProviderForMediaAccessories
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D147F0]);
  home = [(HUPersonalRequestsDevicesItemModule *)self home];
  v5 = [v3 initWithHome:home];

  [v5 setFilter:&__block_literal_global_313];
  v6 = objc_alloc(MEMORY[0x277D14C38]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__HUPersonalRequestsDevicesItemModule__createPersonalRequestProviderForMediaAccessories__block_invoke_3;
  v9[3] = &unk_277DB9DD8;
  objc_copyWeak(&v10, &location);
  v7 = [v6 initWithSourceProvider:v5 transformationBlock:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

uint64_t __88__HUPersonalRequestsDevicesItemModule__createPersonalRequestProviderForMediaAccessories__block_invoke(uint64_t a1, void *a2)
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
    v7 = [v6 na_all:&__block_literal_global_315];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x277CD1820] isAccessorySupported:v2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

id __88__HUPersonalRequestsDevicesItemModule__createPersonalRequestProviderForMediaAccessories__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _transformItemForSourceItem:v3];

  return v5;
}

- (id)_createPersonalRequestProviderForOtherAccessories
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D142F0]);
  home = [(HUPersonalRequestsDevicesItemModule *)self home];
  v5 = [v3 initWithHome:home];

  [v5 setFilter:&__block_literal_global_322];
  v6 = objc_alloc(MEMORY[0x277D14C38]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__HUPersonalRequestsDevicesItemModule__createPersonalRequestProviderForOtherAccessories__block_invoke_2;
  v9[3] = &unk_277DB9E00;
  objc_copyWeak(&v10, &location);
  v7 = [v6 initWithSourceProvider:v5 transformationBlock:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

void *__88__HUPersonalRequestsDevicesItemModule__createPersonalRequestProviderForOtherAccessories__block_invoke(uint64_t a1, void *a2)
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
      v6 = [MEMORY[0x277CD1820] isAccessorySupported:v5];
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

id __88__HUPersonalRequestsDevicesItemModule__createPersonalRequestProviderForOtherAccessories__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _transformItemForSourceItem:v3];

  return v5;
}

- (id)_transformItemForSourceItem:(id)item
{
  itemCopy = item;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D14C30]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HUPersonalRequestsDevicesItemModule__transformItemForSourceItem___block_invoke;
  v9[3] = &unk_277DB9E28;
  objc_copyWeak(&v11, &location);
  v6 = itemCopy;
  v10 = v6;
  v7 = [v5 initWithSourceItem:v6 transformationBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

id __67__HUPersonalRequestsDevicesItemModule__transformItemForSourceItem___block_invoke(uint64_t a1, void *a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [*(a1 + 32) accessories];
  v78 = [v5 anyObject];

  v6 = [v3 mutableCopy];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v7;

  v9 = [WeakRetained accessControl];
  v10 = [v9 accessories];

  objc_opt_class();
  v11 = *(a1 + 32);
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  objc_opt_class();
  v14 = *(a1 + 32);
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v77 = v16;
  if (v13)
  {
    v17 = [v13 accessories];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __67__HUPersonalRequestsDevicesItemModule__transformItemForSourceItem___block_invoke_2;
    v81[3] = &unk_277DB8EC0;
    v82 = v10;
    v18 = [v17 na_any:v81];

    if ((v18 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!v16)
    {
      goto LABEL_19;
    }

    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __67__HUPersonalRequestsDevicesItemModule__transformItemForSourceItem___block_invoke_4;
    v79[3] = &unk_277DB8EC0;
    v80 = v16;
    v19 = [v10 na_any:v79];

    if (!v19)
    {
      goto LABEL_19;
    }
  }

  v20 = [WeakRetained accessControl];
  v21 = [v20 allowUnauthenticatedRequests];

  if ((v21 & 1) == 0)
  {
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v84 = v78;
      _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "Forcing PR OFF for %@ because the user previously had allowUnauthenticatedRequests set to NO", buf, 0xCu);
    }
  }

LABEL_19:
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  v74 = *MEMORY[0x277D14068];
  [v8 setObject:v23 forKeyedSubscript:?];

  [v8 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v24 = [WeakRetained sourceMediaProfileContainer];
  if (v24 && (v25 = v24, [WeakRetained sourceMediaProfileContainer], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "hf_backingAccessory"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "uniqueIdentifier"), v28 = WeakRetained, v29 = a1, v30 = v8, v31 = v13, v32 = v10, v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v78, "uniqueIdentifier"), v34 = objc_claimAutoreleasedReturnValue(), v75 = objc_msgSend(v33, "isEqual:", v34), v34, v33, v10 = v32, v13 = v31, v8 = v30, a1 = v29, WeakRetained = v28, v27, v26, v25, v75))
  {
    v35 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalRequestsSelectedHomePodDescriptionText", @"HUUsersPersonalRequestsSelectedHomePodDescriptionText", 1);
    v36 = [v28 sourceMediaProfileContainer];
    v37 = [v36 hf_backingAccessory];
    v38 = [v37 hf_siriEndpointProfile];

    if (v38)
    {
      v39 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalRequestsSelectedSiriEndpointDescriptionText", @"HUUsersPersonalRequestsSelectedSiriEndpointDescriptionText", 1);

      v35 = v39;
    }

    v40 = *MEMORY[0x277D13E20];
    [v8 na_safeSetObject:v35 forKey:*MEMORY[0x277D13E20]];
  }

  else
  {
    v40 = *MEMORY[0x277D13E20];
    [v8 setObject:0 forKeyedSubscript:*MEMORY[0x277D13E20]];
  }

  v41 = [WeakRetained supportedMULanguageCodes];
  if (v41 && (v42 = v41, [WeakRetained home], v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "isMultiUserEnabled"), v43, v42, v44))
  {
    v76 = v10;
    v45 = [WeakRetained recognitionLanguageIsSupportedVRLanguageForItem:*(a1 + 32)];
    v46 = [WeakRetained isCurrentIOSDeviceOnSameVoiceRecognitionLanguageAsPersonalRequestsDeviceForItem:*(a1 + 32)];
    v47 = HFLogForCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = *(a1 + 32);
      v72 = [WeakRetained home];
      v49 = [v72 isMultiUserEnabled];
      v50 = [v78 supportsMultiUser];
      [WeakRetained home];
      v51 = v73 = v13;
      v52 = [v51 hf_currentUserIsOwner];
      *buf = 138413570;
      v84 = v48;
      v85 = 1024;
      v86 = v46;
      v87 = 1024;
      v88 = v45;
      v89 = 1024;
      v90 = v49;
      v91 = 1024;
      v92 = v50;
      v93 = 1024;
      v94 = v52;
      _os_log_impl(&dword_20CEB6000, v47, OS_LOG_TYPE_DEFAULT, "Calculating switch attributes for item %@: \n\t\t.... item is on phone's language?: %{BOOL}d (& is VR language)?: %{BOOL}d, home has enabled multi-user?: %{BOOL}d, item supports multi-user?: %{BOOL}d, current user is the owner?: %{BOOL}d", buf, 0x2Au);

      v13 = v73;
    }

    if ([v78 supportsMultiUser])
    {
      v53 = v45 & v46;
    }

    else
    {
      v53 = [v13 supportsMultiUser] & v45 & v46;
    }

    v10 = v76;
    if ((v53 & 1) == 0)
    {
      v60 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalRequestsVoiceRecognitionNotAvailableDescription", @"HUUsersPersonalRequestsVoiceRecognitionNotAvailableDescription", 1);
      [v8 setObject:v60 forKeyedSubscript:v40];

      v61 = [WeakRetained home];
      v62 = [v61 hf_currentUserIsOwner];

      if ((v62 & 1) == 0)
      {
        [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13EA8]];
        v63 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
        [v8 setObject:v63 forKeyedSubscript:v74];
      }
    }
  }

  else
  {
    v54 = [WeakRetained home];
    v55 = [v54 isMultiUserEnabled];

    if (v55)
    {
      v56 = HFLogForCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_20CEB6000, v56, OS_LOG_TYPE_DEFAULT, "Supported voice recognition languages have not populated yet. Disabling personal requests switches for non-owners. This should get fixed during an upcoming reload...", buf, 2u);
      }

      v57 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalRequestsVoiceRecognitionNotAvailableDescription", @"HUUsersPersonalRequestsVoiceRecognitionNotAvailableDescription", 1);
      [v8 setObject:v57 forKeyedSubscript:v40];
    }

    v58 = [WeakRetained home];
    v59 = [v58 hf_currentUserIsOwner];

    if ((v59 & 1) == 0)
    {
      [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    }
  }

  v64 = *MEMORY[0x277D13DA8];
  v65 = [v8 objectForKeyedSubscript:*MEMORY[0x277D13DA8]];
  v66 = v65;
  if (v65)
  {
    v67 = [v65 mutableCopy];
  }

  else
  {
    v68 = [MEMORY[0x277CBEB98] set];
    v67 = [v68 mutableCopy];
  }

  v69 = [WeakRetained sourceItem];
  v70 = [v69 user];
  [v67 addObject:v70];

  [v8 setObject:v67 forKeyedSubscript:v64];

  return v8;
}

uint64_t __67__HUPersonalRequestsDevicesItemModule__transformItemForSourceItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HUPersonalRequestsDevicesItemModule__transformItemForSourceItem___block_invoke_3;
  v8[3] = &unk_277DB8EC0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __67__HUPersonalRequestsDevicesItemModule__transformItemForSourceItem___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __67__HUPersonalRequestsDevicesItemModule__transformItemForSourceItem___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) accessory];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 isEqual:v5];

  return v6;
}

- (id)_attributedFooterTitle
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  home = [(HUPersonalRequestsDevicesItemModule *)self home];
  hf_siriEndPointAccessories = [home hf_siriEndPointAccessories];
  v5 = [hf_siriEndPointAccessories count] != 0;

  locationDeviceManager = [(HUPersonalRequestsDevicesItemModule *)self locationDeviceManager];
  activeLocationDeviceFuture = [locationDeviceManager activeLocationDeviceFuture];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HUPersonalRequestsDevicesItemModule__attributedFooterTitle__block_invoke;
  v11[3] = &unk_277DB9E50;
  v12 = v5;
  v11[4] = &v13;
  v8 = [activeLocationDeviceFuture addCompletionBlock:v11];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __61__HUPersonalRequestsDevicesItemModule__attributedFooterTitle__block_invoke(uint64_t a1, void *a2)
{
  v38 = a2;
  v4 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalRequestsEnabledSettingsLinkTitle", @"HUUsersPersonalRequestsEnabledSettingsLinkTitle", 1);
  if ([v38 isCurrentDevice])
  {
    v11 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalContentEnabledThisDeviceFooterItem", @"HUUsersPersonalContentEnabledThisDeviceFooterItem", 1);
    if (*(a1 + 40) != 1)
    {
      goto LABEL_9;
    }

    v12 = @"HUUsersPersonalContentEnabledThisDeviceFooterItem_Accessories";
    goto LABEL_4;
  }

  if (v38)
  {
    v14 = [v38 name];
    v11 = HULocalizedStringWithFormat(@"HUUsersPersonalContentEnabledOtherDeviceFooterItem", @"%@", v15, v16, v17, v18, v19, v20, v14);

    if (*(a1 + 40) != 1)
    {
      goto LABEL_9;
    }

    v2 = [v38 name];
    v13 = HULocalizedStringWithFormat(@"HUUsersPersonalContentEnabledOtherDeviceFooterItem_Accessories", @"%@", v21, v22, v23, v24, v25, v26, v2);

    v11 = v2;
    goto LABEL_8;
  }

  if (![MEMORY[0x277D14CE8] isAMac])
  {
    goto LABEL_14;
  }

  v11 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalContentEnabledOtherUnknownDeviceFooterItem", @"HUUsersPersonalContentEnabledOtherUnknownDeviceFooterItem", 1);
  if (*(a1 + 40) == 1)
  {
    v12 = @"HUUsersPersonalContentEnabledOtherUnknownDeviceFooterItem_Accessories";
LABEL_4:
    v13 = _HULocalizedStringWithDefaultValue(v12, v12, 1);
LABEL_8:

    v11 = v13;
  }

LABEL_9:
  if (v11)
  {
    v2 = HULocalizedStringWithFormat(@"HUUsersPersonalContentEnabledSettingsDescription", @"%@", v5, v6, v7, v8, v9, v10, v4);
    v33 = HULocalizedStringWithFormat(@"HUUsersPersonalRequestsEnabledFormat", @"%@%@", v27, v28, v29, v30, v31, v32, v11);

    goto LABEL_15;
  }

LABEL_14:
  v33 = HULocalizedStringWithFormat(@"HUUsersPersonalContentEnabledNoFMFDeviceSettingsDescription", @"%@", v5, v6, v7, v8, v9, v10, v4);
LABEL_15:
  v34 = [MEMORY[0x277D14CE8] isAMac];
  v35 = v34;
  v36 = MEMORY[0x277CCA898];
  if (v34)
  {
    v37 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v33 attributes:0];
  }

  else
  {
    v2 = [MEMORY[0x277CBEBC0] hf_locationDeviceSettingsURL];
    v37 = [v36 hf_attributedLinkStringForString:v33 linkString:v4 linkURL:v2];
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v37);
  if ((v35 & 1) == 0)
  {

    v37 = v2;
  }
}

- (void)locationDeviceManager:(id)manager didUpdateActiveLocationDevice:(id)device
{
  if ([(HUPersonalRequestsDevicesItemModule *)self onlyShowDeviceSwitches:manager])
  {
    NSLog(&cfstr_WeShouldNeverC_0.isa);
  }

  if (![(HUPersonalRequestsDevicesItemModule *)self onlyShowDeviceSwitches])
  {
    itemUpdater = [(HFItemModule *)self itemUpdater];
    v6 = MEMORY[0x277D14788];
    allItems = [(HFItemModule *)self allItems];
    v8 = [v6 requestToUpdateItems:allItems senderSelector:a2];
    v9 = [itemUpdater performItemUpdateRequest:v8];
  }
}

- (void)siriLanguageOptionsManager:(id)manager availableLanguageOptionsDidChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v15 = 138412802;
    selfCopy = self;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = changeCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Update items with available language options: %@", &v15, 0x20u);
  }

  v9 = [MEMORY[0x277CBEB58] set];
  personalRequestsMediaAccessoriesProvider = [(HUPersonalRequestsDevicesItemModule *)self personalRequestsMediaAccessoriesProvider];
  [v9 na_safeAddObject:personalRequestsMediaAccessoriesProvider];

  personalRequestsOtherAccessoriesProvider = [(HUPersonalRequestsDevicesItemModule *)self personalRequestsOtherAccessoriesProvider];
  [v9 na_safeAddObject:personalRequestsOtherAccessoriesProvider];

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v13 = [MEMORY[0x277D14788] requestToReloadItemProviders:v9 senderSelector:a2];
  v14 = [itemUpdater performItemUpdateRequest:v13];
}

- (void)siriLanguageOptionsManager:(id)manager selectedLanguageOptionDidChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v15 = 138412802;
    selfCopy = self;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = changeCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Update items with selected language option: %@", &v15, 0x20u);
  }

  v9 = [MEMORY[0x277CBEB58] set];
  personalRequestsMediaAccessoriesProvider = [(HUPersonalRequestsDevicesItemModule *)self personalRequestsMediaAccessoriesProvider];
  [v9 na_safeAddObject:personalRequestsMediaAccessoriesProvider];

  personalRequestsOtherAccessoriesProvider = [(HUPersonalRequestsDevicesItemModule *)self personalRequestsOtherAccessoriesProvider];
  [v9 na_safeAddObject:personalRequestsOtherAccessoriesProvider];

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v13 = [MEMORY[0x277D14788] requestToReloadItemProviders:v9 senderSelector:a2];
  v14 = [itemUpdater performItemUpdateRequest:v13];
}

@end