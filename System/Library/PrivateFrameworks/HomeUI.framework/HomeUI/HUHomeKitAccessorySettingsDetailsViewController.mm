@interface HUHomeKitAccessorySettingsDetailsViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HUHomeKitAccessorySettingsDetailsViewController)initWithCollapsedAccessorySettingItemModule:(id)a3;
- (id)buildItemModuleControllerForModule:(id)a3;
- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a3 settings:(id)a4;
@end

@implementation HUHomeKitAccessorySettingsDetailsViewController

- (HUHomeKitAccessorySettingsDetailsViewController)initWithCollapsedAccessorySettingItemModule:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"HUHomeKitAccessorySettingsDetailsViewController.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"itemModule != nil"}];
  }

  v6 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self];
  v7 = [MEMORY[0x277D146E8] sharedDispatcher];
  v8 = [v7 accessorySettingsDataSource];
  [v8 addObserver:self];

  objc_opt_class();
  v9 = v5;
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
    v16 = [MEMORY[0x277D146E8] sharedDispatcher];
    v17 = [v16 accessorySettingsDataSource];
    v18 = [v13 settingGroupKeyPath];
    v19 = [v17 hf_localizedTitleForKeyPath:v18];
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

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, v4);
  }

  v5 = [[HUHomeKitAccessorySettingsItemModuleController alloc] initWithModule:v4 delegate:0];
  [(HUHomeKitAccessorySettingsDetailsViewController *)self setModuleController:v5];

  v6 = [(HUHomeKitAccessorySettingsDetailsViewController *)self moduleController];

  return v6;
}

- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a3 settings:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412802;
    v31 = v10;
    v32 = 2112;
    v33 = v7;
    v34 = 2112;
    v35 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@ didRecieveSettingsUpdatesForAccessoryWithIdentifier = [%@] settings = [%@]. Now reloading all Items.", buf, 0x20u);
  }

  v24 = v7;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [(HUItemTableViewController *)self itemManager];
  v12 = [v11 itemModules];

  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v12);
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
          v21 = [v20 accessorySettingsItemProvider];
          [v21 updateSettings:v8];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  v22 = [(HUItemTableViewController *)self itemManager];
  v23 = [v22 reloadAndUpdateAllItemsFromSenderSelector:a2];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v16, 0x16u);
  }

  v9 = [(HUHomeKitAccessorySettingsDetailsViewController *)self navigationController];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = self;
  }

  v12 = v11;

  v13 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376B0]];
  v14 = [v13 splashController];
  [v14 setDisplayDeviceType:6];

  [v13 setPresentingViewController:v12];
  [v13 present];

  return 0;
}

@end