@interface HUPersonalRequestsEditorTableViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUPersonalRequestsEditorTableViewController)initWithAccessoryGroupItem:(id)item;
- (HUPersonalRequestsEditorTableViewController)initWithAccessorySettingItem:(id)item module:(id)module;
- (HUPersonalRequestsEditorTableViewController)initWithUserItem:(id)item sourceMediaProfileContainer:(id)container onlyShowDeviceSwitches:(BOOL)switches;
- (id)itemModuleControllers;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
@end

@implementation HUPersonalRequestsEditorTableViewController

- (HUPersonalRequestsEditorTableViewController)initWithUserItem:(id)item sourceMediaProfileContainer:(id)container onlyShowDeviceSwitches:(BOOL)switches
{
  switchesCopy = switches;
  containerCopy = container;
  itemCopy = item;
  v11 = [[HUPersonalRequestsEditorItemManager alloc] initWithDelegate:self userItem:itemCopy onlyShowDeviceSwitches:switchesCopy];

  prDevicesModule = [(HUPersonalRequestsEditorItemManager *)v11 prDevicesModule];
  [prDevicesModule setSourceMediaProfileContainer:containerCopy];

  v24.receiver = self;
  v24.super_class = HUPersonalRequestsEditorTableViewController;
  v13 = [(HUItemTableViewController *)&v24 initWithItemManager:v11 tableViewStyle:1];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_prEditorItemManager, v11);
    v15 = [HUPersonalRequestsDevicesModuleController alloc];
    prDevicesModule2 = [(HUPersonalRequestsEditorItemManager *)v11 prDevicesModule];
    v17 = [(HUPersonalRequestsDevicesModuleController *)v15 initWithModule:prDevicesModule2 host:v14];
    prDevicesModuleController = v14->_prDevicesModuleController;
    v14->_prDevicesModuleController = v17;

    v14->_onlyShowDeviceSwitches = switchesCopy;
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

- (HUPersonalRequestsEditorTableViewController)initWithAccessorySettingItem:(id)item module:(id)module
{
  moduleCopy = module;
  v8 = MEMORY[0x277D14C98];
  itemCopy = item;
  v10 = [v8 alloc];
  home = [moduleCopy home];
  home2 = [moduleCopy home];
  currentUser = [home2 currentUser];
  v14 = [v10 initWithHome:home user:currentUser nameStyle:1];

  sourceItem = [moduleCopy sourceItem];
  accessories = [sourceItem accessories];
  anyObject = [accessories anyObject];

  mediaProfile = [anyObject mediaProfile];
  v19 = &unk_2825BCB38;
  v20 = mediaProfile;
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

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v25 = NSStringFromProtocol(v19);
    [currentHandler handleFailureInFunction:v24 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v25}];
  }

  v23 = 0;
LABEL_8:

  v26 = [[HUPersonalRequestsEditorItemManager alloc] initWithDelegate:self userItem:v14 accessorySettingItem:itemCopy module:moduleCopy onlyShowDeviceSwitches:0];
  prDevicesModule = [(HUPersonalRequestsEditorItemManager *)v26 prDevicesModule];
  [prDevicesModule setSourceMediaProfileContainer:v23];

  v40.receiver = self;
  v40.super_class = HUPersonalRequestsEditorTableViewController;
  v28 = [(HUItemTableViewController *)&v40 initWithItemManager:v26 tableViewStyle:1];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_prEditorItemManager, v26);
    v30 = [HUPersonalRequestsDevicesModuleController alloc];
    prDevicesModule2 = [(HUPersonalRequestsEditorItemManager *)v26 prDevicesModule];
    v32 = [(HUPersonalRequestsDevicesModuleController *)v30 initWithModule:prDevicesModule2 host:v29];
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
  prDevicesModuleController = [(HUPersonalRequestsEditorTableViewController *)self prDevicesModuleController];
  v4 = [v2 setWithObject:prDevicesModuleController];

  return v4;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  prEditorItemManager = [(HUPersonalRequestsEditorTableViewController *)self prEditorItemManager];
  activityNotificationsItem = [prEditorItemManager activityNotificationsItem];
  v8 = [itemCopy isEqual:activityNotificationsItem];

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

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  v16.receiver = self;
  v16.super_class = HUPersonalRequestsEditorTableViewController;
  itemCopy = item;
  [(HUItemTableViewController *)&v16 setupCell:cellCopy forItem:itemCopy indexPath:path];
  v10 = [(HUPersonalRequestsEditorTableViewController *)self prEditorItemManager:v16.receiver];
  activityNotificationsItem = [v10 activityNotificationsItem];
  v12 = [itemCopy isEqual:activityNotificationsItem];

  if (v12)
  {
    objc_opt_class();
    v13 = cellCopy;
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

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = lCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v12, 0x16u);
  }

  mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
  v10 = [mEMORY[0x277D148E8] openURL:lCopy];

  return 0;
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  v15 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[HUPersonalRequestsEditorTableViewController switchCell:didTurnOn:]";
    v11 = 2112;
    v12 = cellCopy;
    v13 = 1024;
    v14 = onCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(%s) User tapped switch cell: %@ to turn %{BOOL}d", &v9, 0x1Cu);
  }

  prEditorItemManager = [(HUPersonalRequestsEditorTableViewController *)self prEditorItemManager];
  [prEditorItemManager setActivityNotificationsEnabled:onCopy];
}

- (HUPersonalRequestsEditorTableViewController)initWithAccessoryGroupItem:(id)item
{
  itemCopy = item;
  homeKitSettingsVendor = [itemCopy homeKitSettingsVendor];
  hf_home = [homeKitSettingsVendor hf_home];

  v7 = objc_alloc(MEMORY[0x277D14C98]);
  currentUser = [hf_home currentUser];
  v9 = [v7 initWithHome:hf_home user:currentUser nameStyle:1];

  homeKitSettingsVendor2 = [itemCopy homeKitSettingsVendor];

  homeKitObject = [homeKitSettingsVendor2 homeKitObject];
  v12 = &unk_2825BCB38;
  v13 = homeKitObject;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v19 = NSStringFromProtocol(v12);
    [currentHandler handleFailureInFunction:v18 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v19}];

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