@interface HUHomeKitAccessorySettingsDetailsViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HUHomeKitAccessorySettingsDetailsViewController)initWithCollapsedAccessorySettingItemModule:(id)module;
- (id)buildItemModuleControllerForModule:(id)module;
- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings;
@end

@implementation HUHomeKitAccessorySettingsDetailsViewController

- (HUHomeKitAccessorySettingsDetailsViewController)initWithCollapsedAccessorySettingItemModule:(id)module
{
  moduleCopy = module;
  if (!moduleCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUHomeKitAccessorySettingsDetailsViewController.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"itemModule != nil"}];
  }

  v6 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self];
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  accessorySettingsDataSource = [mEMORY[0x277D146E8] accessorySettingsDataSource];
  [accessorySettingsDataSource addObserver:self];

  objc_opt_class();
  v9 = moduleCopy;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __95__HUHomeKitAccessorySettingsDetailsViewController_initWithCollapsedAccessorySettingItemModule___block_invoke;
  v25[3] = &unk_277DB7478;
  v12 = v11;
  v26 = v12;
  [v6 setHomeCreator:v25];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __95__HUHomeKitAccessorySettingsDetailsViewController_initWithCollapsedAccessorySettingItemModule___block_invoke_2;
  v23[3] = &unk_277DC0718;
  v13 = v12;
  v24 = v13;
  [v6 setItemModuleCreator:v23];
  v22.receiver = self;
  v22.super_class = HUHomeKitAccessorySettingsDetailsViewController;
  v14 = [(HUItemTableViewController *)&v22 initWithItemManager:v6 tableViewStyle:1];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_collapsedModule, v10);
    mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
    accessorySettingsDataSource2 = [mEMORY[0x277D146E8]2 accessorySettingsDataSource];
    settingGroupKeyPath = [v13 settingGroupKeyPath];
    v19 = [accessorySettingsDataSource2 hf_localizedTitleForKeyPath:settingGroupKeyPath];
    [(HUHomeKitAccessorySettingsDetailsViewController *)v15 setTitle:v19];
  }

  return v15;
}

id __95__HUHomeKitAccessorySettingsDetailsViewController_initWithCollapsedAccessorySettingItemModule___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) home];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

id __95__HUHomeKitAccessorySettingsDetailsViewController_initWithCollapsedAccessorySettingItemModule___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_new();
  v8 = [HUHomeKitAccessorySettingsItemModule alloc];
  v9 = [*(a1 + 32) settingsController];
  v10 = [*(a1 + 32) sourceItem];
  v11 = [*(a1 + 32) settingGroupKeyPath];
  v12 = [(HUHomeKitAccessorySettingsItemModule *)v8 initWithSettingsController:v9 itemUpdater:v5 home:v6 sourceItem:v10 settingGroupKeyPath:v11 isCollapsed:0];

  [v7 addObject:v12];

  return v7;
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, moduleCopy);
  }

  v5 = [[HUHomeKitAccessorySettingsItemModuleController alloc] initWithModule:moduleCopy delegate:0];
  [(HUHomeKitAccessorySettingsDetailsViewController *)self setModuleController:v5];

  moduleController = [(HUHomeKitAccessorySettingsDetailsViewController *)self moduleController];

  return moduleController;
}

- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings
{
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  settingsCopy = settings;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412802;
    v31 = v10;
    v32 = 2112;
    v33 = identifierCopy;
    v34 = 2112;
    v35 = settingsCopy;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@ didRecieveSettingsUpdatesForAccessoryWithIdentifier = [%@] settings = [%@]. Now reloading all Items.", buf, 0x20u);
  }

  v24 = identifierCopy;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  itemManager = [(HUItemTableViewController *)self itemManager];
  itemModules = [itemManager itemModules];

  v13 = [itemModules countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(itemModules);
        }

        v17 = *(*(&v25 + 1) + 8 * v16);
        objc_opt_class();
        v18 = v17;
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        if (v20)
        {
          accessorySettingsItemProvider = [v20 accessorySettingsItemProvider];
          [accessorySettingsItemProvider updateSettings:settingsCopy];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [itemModules countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  v23 = [itemManager2 reloadAndUpdateAllItemsFromSenderSelector:a2];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    selfCopy = self;
    v18 = 2112;
    v19 = lCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v16, 0x16u);
  }

  navigationController = [(HUHomeKitAccessorySettingsDetailsViewController *)self navigationController];
  v10 = navigationController;
  if (navigationController)
  {
    selfCopy2 = navigationController;
  }

  else
  {
    selfCopy2 = self;
  }

  v12 = selfCopy2;

  v13 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376B0]];
  splashController = [v13 splashController];
  [splashController setDisplayDeviceType:6];

  [v13 setPresentingViewController:v12];
  [v13 present];

  return 0;
}

@end