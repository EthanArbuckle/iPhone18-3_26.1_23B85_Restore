@interface HUPersonalRequestsEditorTableViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUPersonalRequestsEditorTableViewController)initWithAccessoryGroupItem:(id)a3;
- (HUPersonalRequestsEditorTableViewController)initWithAccessorySettingItem:(id)a3 module:(id)a4;
- (HUPersonalRequestsEditorTableViewController)initWithUserItem:(id)a3 sourceMediaProfileContainer:(id)a4 onlyShowDeviceSwitches:(BOOL)a5;
- (id)itemModuleControllers;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
@end

@implementation HUPersonalRequestsEditorTableViewController

- (HUPersonalRequestsEditorTableViewController)initWithUserItem:(id)a3 sourceMediaProfileContainer:(id)a4 onlyShowDeviceSwitches:(BOOL)a5
{
  v5 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[HUPersonalRequestsEditorItemManager alloc] initWithDelegate:self userItem:v10 onlyShowDeviceSwitches:v5];

  v12 = [(HUPersonalRequestsEditorItemManager *)v11 prDevicesModule];
  [v12 setSourceMediaProfileContainer:v9];

  v24.receiver = self;
  v24.super_class = HUPersonalRequestsEditorTableViewController;
  v13 = [(HUItemTableViewController *)&v24 initWithItemManager:v11 tableViewStyle:1];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_prEditorItemManager, v11);
    v15 = [HUPersonalRequestsDevicesModuleController alloc];
    v16 = [(HUPersonalRequestsEditorItemManager *)v11 prDevicesModule];
    v17 = [(HUPersonalRequestsDevicesModuleController *)v15 initWithModule:v16 host:v14];
    prDevicesModuleController = v14->_prDevicesModuleController;
    v14->_prDevicesModuleController = v17;

    v14->_onlyShowDeviceSwitches = v5;
    v19 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalContent", @"HUUsersPersonalContent", 1);
    [(HUPersonalRequestsEditorTableViewController *)v14 setTitle:v19];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __115__HUPersonalRequestsEditorTableViewController_initWithUserItem_sourceMediaProfileContainer_onlyShowDeviceSwitches___block_invoke;
    v21[3] = &unk_277DBC578;
    v23 = a2;
    v22 = v14;
    [HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguagesWithCompletion:v21];
  }

  return v14;
}

void __115__HUPersonalRequestsEditorTableViewController_initWithUserItem_sourceMediaProfileContainer_onlyShowDeviceSwitches___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = NSStringFromSelector(*(a1 + 40));
    v14 = 138412802;
    v15 = v13;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_debug_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEBUG, "%@ fetchSupportedVoiceRecognitionLanguagesWithCompletion returned (%@) %@", &v14, 0x20u);
  }

  if (!v6)
  {
    v8 = [*(a1 + 32) prEditorItemManager];
    v9 = [v8 prDevicesModule];
    [v9 setSupportedMULanguageCodes:v5];

    v10 = [*(a1 + 32) prEditorItemManager];
    v11 = [v10 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 40)];

    v12 = [*(a1 + 32) tableView];
    [v12 reloadData];
  }
}

- (HUPersonalRequestsEditorTableViewController)initWithAccessorySettingItem:(id)a3 module:(id)a4
{
  v7 = a4;
  v8 = MEMORY[0x277D14C98];
  v9 = a3;
  v10 = [v8 alloc];
  v11 = [v7 home];
  v12 = [v7 home];
  v13 = [v12 currentUser];
  v14 = [v10 initWithHome:v11 user:v13 nameStyle:1];

  v15 = [v7 sourceItem];
  v16 = [v15 accessories];
  v17 = [v16 anyObject];

  v18 = [v17 mediaProfile];
  v19 = &unk_2825BCB38;
  v20 = v18;
  v21 = v20;
  if (v20)
  {
    if ([v20 conformsToProtocol:v19])
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v21;
    if (v22)
    {
      goto LABEL_8;
    }

    v36 = [MEMORY[0x277CCA890] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v25 = NSStringFromProtocol(v19);
    [v36 handleFailureInFunction:v24 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v25}];
  }

  v23 = 0;
LABEL_8:

  v26 = [[HUPersonalRequestsEditorItemManager alloc] initWithDelegate:self userItem:v14 accessorySettingItem:v9 module:v7 onlyShowDeviceSwitches:0];
  v27 = [(HUPersonalRequestsEditorItemManager *)v26 prDevicesModule];
  [v27 setSourceMediaProfileContainer:v23];

  v40.receiver = self;
  v40.super_class = HUPersonalRequestsEditorTableViewController;
  v28 = [(HUItemTableViewController *)&v40 initWithItemManager:v26 tableViewStyle:1];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_prEditorItemManager, v26);
    v30 = [HUPersonalRequestsDevicesModuleController alloc];
    v31 = [(HUPersonalRequestsEditorItemManager *)v26 prDevicesModule];
    v32 = [(HUPersonalRequestsDevicesModuleController *)v30 initWithModule:v31 host:v29];
    prDevicesModuleController = v29->_prDevicesModuleController;
    v29->_prDevicesModuleController = v32;

    v29->_onlyShowDeviceSwitches = 0;
    v34 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalContent", @"HUUsersPersonalContent", 1);
    [(HUPersonalRequestsEditorTableViewController *)v29 setTitle:v34];

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __83__HUPersonalRequestsEditorTableViewController_initWithAccessorySettingItem_module___block_invoke;
    v37[3] = &unk_277DBC578;
    v39 = a2;
    v38 = v29;
    [HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguagesWithCompletion:v37];
  }

  return v29;
}

void __83__HUPersonalRequestsEditorTableViewController_initWithAccessorySettingItem_module___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = NSStringFromSelector(*(a1 + 40));
    v14 = 138412802;
    v15 = v13;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_debug_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEBUG, "%@ fetchSupportedVoiceRecognitionLanguagesWithCompletion returned (%@) %@", &v14, 0x20u);
  }

  if (!v6)
  {
    v8 = [*(a1 + 32) prEditorItemManager];
    v9 = [v8 prDevicesModule];
    [v9 setSupportedMULanguageCodes:v5];

    v10 = [*(a1 + 32) prEditorItemManager];
    v11 = [v10 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 40)];

    v12 = [*(a1 + 32) tableView];
    [v12 reloadData];
  }
}

- (id)itemModuleControllers
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUPersonalRequestsEditorTableViewController *)self prDevicesModuleController];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HUPersonalRequestsEditorTableViewController *)self prEditorItemManager];
  v7 = [v6 activityNotificationsItem];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    v9 = objc_opt_class();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = HUPersonalRequestsEditorTableViewController;
  v9 = a4;
  [(HUItemTableViewController *)&v16 setupCell:v8 forItem:v9 indexPath:a5];
  v10 = [(HUPersonalRequestsEditorTableViewController *)self prEditorItemManager:v16.receiver];
  v11 = [v10 activityNotificationsItem];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    objc_opt_class();
    v13 = v8;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    [v15 setDelegate:self];
  }
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v12, 0x16u);
  }

  v9 = [MEMORY[0x277D148E8] sharedInstance];
  v10 = [v9 openURL:v7];

  return 0;
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[HUPersonalRequestsEditorTableViewController switchCell:didTurnOn:]";
    v11 = 2112;
    v12 = v6;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(%s) User tapped switch cell: %@ to turn %{BOOL}d", &v9, 0x1Cu);
  }

  v8 = [(HUPersonalRequestsEditorTableViewController *)self prEditorItemManager];
  [v8 setActivityNotificationsEnabled:v4];
}

- (HUPersonalRequestsEditorTableViewController)initWithAccessoryGroupItem:(id)a3
{
  v4 = a3;
  v5 = [v4 homeKitSettingsVendor];
  v6 = [v5 hf_home];

  v7 = objc_alloc(MEMORY[0x277D14C98]);
  v8 = [v6 currentUser];
  v9 = [v7 initWithHome:v6 user:v8 nameStyle:1];

  v10 = [v4 homeKitSettingsVendor];

  v11 = [v10 homeKitObject];
  v12 = &unk_2825BCB38;
  v13 = v11;
  v14 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  if ([v13 conformsToProtocol:v12])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14;
  if (!v15)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v19 = NSStringFromProtocol(v12);
    [v17 handleFailureInFunction:v18 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v19}];

LABEL_7:
    v16 = 0;
  }

  if (!v16)
  {
    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_ERROR, "[HUPersonalRequestsEditorTableViewController initWithAccessoryGroupItem:] called without a HFMediaProfileContainer", buf, 2u);
    }
  }

  v21 = [(HUPersonalRequestsEditorTableViewController *)self initWithUserItem:v9 sourceMediaProfileContainer:v16 onlyShowDeviceSwitches:0];

  return v21;
}

@end