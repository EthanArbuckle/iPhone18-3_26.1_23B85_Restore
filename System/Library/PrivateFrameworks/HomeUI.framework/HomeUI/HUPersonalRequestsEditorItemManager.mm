@interface HUPersonalRequestsEditorItemManager
- (BOOL)_arePersonalRequestsEnabled;
- (BOOL)personalRequestsAuthenticationRequired;
- (HMAssistantAccessControl)accessControl;
- (HMUser)user;
- (HUPersonalRequestsEditorItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUPersonalRequestsEditorItemManager)initWithDelegate:(id)delegate userItem:(id)item accessorySettingItem:(id)settingItem module:(id)module onlyShowDeviceSwitches:(BOOL)switches;
- (HUPersonalRequestsEditorItemManager)initWithDelegate:(id)delegate userItem:(id)item onlyShowDeviceSwitches:(BOOL)switches;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_commitUpdateToAccessControl:(id)control;
- (void)_updateRequiredAuthSectionFooterForSection:(id)section;
- (void)setActivityNotificationsEnabled:(BOOL)enabled;
@end

@implementation HUPersonalRequestsEditorItemManager

- (HUPersonalRequestsEditorItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPersonalRequestsEditorItemManager.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HUPersonalRequestsEditorItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUPersonalRequestsEditorItemManager)initWithDelegate:(id)delegate userItem:(id)item onlyShowDeviceSwitches:(BOOL)switches
{
  switchesCopy = switches;
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = HUPersonalRequestsEditorItemManager;
  v9 = [(HFItemManager *)&v20 initWithDelegate:delegate sourceItem:itemCopy];
  if (v9)
  {
    home = [itemCopy home];
    homeForUser = v9->_homeForUser;
    v9->_homeForUser = home;

    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    homeManager = [mEMORY[0x277D146E8] homeManager];
    hf_accessorySettingsController = [homeManager hf_accessorySettingsController];

    v15 = [[HUPersonalRequestsDevicesItemModule alloc] initWithItemUpdater:v9 userItem:itemCopy home:v9->_homeForUser settingsController:hf_accessorySettingsController onlyShowDeviceSwitches:switchesCopy];
    prDevicesModule = v9->_prDevicesModule;
    v9->_prDevicesModule = v15;

    v17 = +[HULocationDeviceManager sharedInstance];
    locationDeviceManager = v9->_locationDeviceManager;
    v9->_locationDeviceManager = v17;

    v9->_onlyShowDeviceSwitches = switchesCopy;
  }

  return v9;
}

- (HUPersonalRequestsEditorItemManager)initWithDelegate:(id)delegate userItem:(id)item accessorySettingItem:(id)settingItem module:(id)module onlyShowDeviceSwitches:(BOOL)switches
{
  switchesCopy = switches;
  itemCopy = item;
  moduleCopy = module;
  v22.receiver = self;
  v22.super_class = HUPersonalRequestsEditorItemManager;
  v13 = [(HFItemManager *)&v22 initWithDelegate:delegate sourceItem:itemCopy];
  if (v13)
  {
    home = [itemCopy home];
    homeForUser = v13->_homeForUser;
    v13->_homeForUser = home;

    v16 = [HUPersonalRequestsDevicesItemModule alloc];
    v17 = v13->_homeForUser;
    settingsController = [moduleCopy settingsController];
    v19 = [(HUPersonalRequestsDevicesItemModule *)v16 initWithItemUpdater:v13 userItem:itemCopy home:v17 settingsController:settingsController onlyShowDeviceSwitches:switchesCopy];
    prDevicesModule = v13->_prDevicesModule;
    v13->_prDevicesModule = v19;

    v13->_onlyShowDeviceSwitches = switchesCopy;
  }

  return v13;
}

- (HMUser)user
{
  sourceItem = [(HFItemManager *)self sourceItem];
  user = [sourceItem user];

  return user;
}

- (HMAssistantAccessControl)accessControl
{
  sourceItem = [(HFItemManager *)self sourceItem];
  user = [sourceItem user];
  homeForUser = [(HUPersonalRequestsEditorItemManager *)self homeForUser];
  v6 = [user assistantAccessControlForHome:homeForUser];

  return v6;
}

- (BOOL)_arePersonalRequestsEnabled
{
  homeForUser = [(HUPersonalRequestsEditorItemManager *)self homeForUser];
  hf_currentUserIsOwner = [homeForUser hf_currentUserIsOwner];

  accessControl = [(HUPersonalRequestsEditorItemManager *)self accessControl];
  prDevicesModule = [(HUPersonalRequestsEditorItemManager *)self prDevicesModule];
  supportedMULanguageCodes = [prDevicesModule supportedMULanguageCodes];
  LOBYTE(hf_currentUserIsOwner) = [accessControl hf_effectivelyEnabledForSupportedVoiceRecognitionLanguages:supportedMULanguageCodes currentUserIsOwner:hf_currentUserIsOwner];

  return hf_currentUserIsOwner;
}

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  if ([(HUPersonalRequestsEditorItemManager *)self onlyShowDeviceSwitches])
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    objc_initWeak(&location, self);
    staticItemProvider = [(HUPersonalRequestsEditorItemManager *)self staticItemProvider];

    if (!staticItemProvider)
    {
      v7 = objc_opt_new();
      v8 = objc_alloc(MEMORY[0x277D14B38]);
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __66__HUPersonalRequestsEditorItemManager__buildItemProvidersForHome___block_invoke;
      v20 = &unk_277DB7448;
      objc_copyWeak(&v21, &location);
      v9 = [v8 initWithResultsBlock:&v17];
      activityNotificationsItem = self->_activityNotificationsItem;
      self->_activityNotificationsItem = v9;

      v11 = [(HUPersonalRequestsEditorItemManager *)self activityNotificationsItem:v17];
      [v7 addObject:v11];

      v12 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v7];
      staticItemProvider = self->_staticItemProvider;
      self->_staticItemProvider = v12;

      objc_destroyWeak(&v21);
    }

    v14 = MEMORY[0x277CBEA60];
    staticItemProvider2 = [(HUPersonalRequestsEditorItemManager *)self staticItemProvider];
    v5 = [v14 arrayWithObject:staticItemProvider2];

    objc_destroyWeak(&location);
  }

  return v5;
}

id __66__HUPersonalRequestsEditorItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalRequestsActivityNotificationsTitle", @"HUUsersPersonalRequestsActivityNotificationsTitle", 1);
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v4 = MEMORY[0x277CBEB98];
  v5 = [WeakRetained user];
  v6 = [v4 setWithObjects:{v5, 0}];
  [v2 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(WeakRetained, "_arePersonalRequestsEnabled") ^ 1}];
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v8 = [WeakRetained accessControl];
  if ([v8 areActivityNotificationsEnabledForPersonalRequests])
  {
    v9 = &unk_282491A90;
  }

  else
  {
    v9 = &unk_282491AA8;
  }

  [v2 setObject:v9 forKeyedSubscript:*MEMORY[0x277D14068]];

  [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v10 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v10;
}

- (id)_buildItemModulesForHome:(id)home
{
  v3 = MEMORY[0x277CBEA60];
  prDevicesModule = [(HUPersonalRequestsEditorItemManager *)self prDevicesModule];
  v5 = [v3 arrayWithObject:prDevicesModule];

  return v5;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v16[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    prDevicesModule = [(HUPersonalRequestsEditorItemManager *)self prDevicesModule];
    v7 = [prDevicesModule buildSectionsWithDisplayedItems:itemsCopy];
    [v5 addObjectsFromArray:v7];

    if (![(HUPersonalRequestsEditorItemManager *)self onlyShowDeviceSwitches])
    {
      v8 = MEMORY[0x277CBEB98];
      activityNotificationsItem = [(HUPersonalRequestsEditorItemManager *)self activityNotificationsItem];
      v16[0] = activityNotificationsItem;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      v11 = [v8 setWithArray:v10];
      v12 = [itemsCopy na_setByIntersectingWithSet:v11];

      if ([v12 count])
      {
        v13 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"kHUEditUserPersonalRequestsRequireAuthSection"];
        allObjects = [v12 allObjects];
        [v13 setItems:allObjects];

        [(HUPersonalRequestsEditorItemManager *)self _updateRequiredAuthSectionFooterForSection:v13];
        [v5 addObject:v13];
      }
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (BOOL)personalRequestsAuthenticationRequired
{
  accessControl = [(HUPersonalRequestsEditorItemManager *)self accessControl];
  allowUnauthenticatedRequests = [accessControl allowUnauthenticatedRequests];

  return allowUnauthenticatedRequests ^ 1;
}

- (void)setActivityNotificationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v15 = *MEMORY[0x277D85DE8];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (enabledCopy)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Setting activityNotificationsEnabled to: %@", buf, 0xCu);
  }

  accessControl = [(HUPersonalRequestsEditorItemManager *)self accessControl];
  v9 = [accessControl mutableCopy];

  [v9 setActivityNotificationsEnabledForPersonalRequests:enabledCopy];
  v10 = [(HUPersonalRequestsEditorItemManager *)self _commitUpdateToAccessControl:v9];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__HUPersonalRequestsEditorItemManager_setActivityNotificationsEnabled___block_invoke;
  v12[3] = &unk_277DBB420;
  v12[4] = self;
  v12[5] = a2;
  v11 = [v10 addCompletionBlock:v12];
}

void __71__HUPersonalRequestsEditorItemManager_setActivityNotificationsEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D14788];
  v4 = MEMORY[0x277CBEB98];
  v8 = [v2 activityNotificationsItem];
  v5 = [v4 setWithObjects:{v8, 0}];
  v6 = [v3 requestToUpdateItems:v5 senderSelector:*(a1 + 40)];
  v7 = [v2 performItemUpdateRequest:v6];
}

- (id)_commitUpdateToAccessControl:(id)control
{
  controlCopy = control;
  v5 = MEMORY[0x277D2C900];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__HUPersonalRequestsEditorItemManager__commitUpdateToAccessControl___block_invoke;
  v18[3] = &unk_277DBB448;
  v6 = controlCopy;
  v19 = v6;
  selfCopy = self;
  v7 = [v5 futureWithErrorOnlyHandlerAdapterBlock:v18];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __68__HUPersonalRequestsEditorItemManager__commitUpdateToAccessControl___block_invoke_38;
  v15 = &unk_277DB7E68;
  selfCopy2 = self;
  v17 = v6;
  v8 = v6;
  v9 = [v7 addSuccessBlock:&v12];
  v10 = [v7 addFailureBlock:{&__block_literal_global_168, v12, v13, v14, v15, selfCopy2}];

  return v7;
}

void __68__HUPersonalRequestsEditorItemManager__commitUpdateToAccessControl___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Committing update to assistant access control: %@", &v9, 0xCu);
  }

  v6 = [*(a1 + 40) user];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) home];
  [v6 updateAssistantAccessControl:v7 forHome:v8 completionHandler:v3];
}

void __68__HUPersonalRequestsEditorItemManager__commitUpdateToAccessControl___block_invoke_38(uint64_t a1)
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__HUPersonalRequestsEditorItemManager__commitUpdateToAccessControl___block_invoke_2;
  v4[3] = &unk_277DBB470;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 dispatchUserObserverMessage:v4 sender:0];
}

void __68__HUPersonalRequestsEditorItemManager__commitUpdateToAccessControl___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [v3 currentUser];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) home];
    [v7 user:v4 didUpdateAssistantAccessControl:v5 forHome:v6];
  }
}

void __68__HUPersonalRequestsEditorItemManager__commitUpdateToAccessControl___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

- (void)_updateRequiredAuthSectionFooterForSection:(id)section
{
  sectionCopy = section;
  locationDeviceManager = [(HUPersonalRequestsEditorItemManager *)self locationDeviceManager];
  activeLocationDeviceFuture = [locationDeviceManager activeLocationDeviceFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__HUPersonalRequestsEditorItemManager__updateRequiredAuthSectionFooterForSection___block_invoke;
  v9[3] = &unk_277DBE2B0;
  v10 = sectionCopy;
  v7 = sectionCopy;
  v8 = [activeLocationDeviceFuture addCompletionBlock:v9];
}

void __82__HUPersonalRequestsEditorItemManager__updateRequiredAuthSectionFooterForSection___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10 = [a2 name];
    v9 = HULocalizedStringWithFormat(@"HUUsersPersonalContentActivityNotificationsFooterItem", @"%@", v3, v4, v5, v6, v7, v8, v10);
    [*(a1 + 32) setFooterTitle:v9];
  }
}

@end