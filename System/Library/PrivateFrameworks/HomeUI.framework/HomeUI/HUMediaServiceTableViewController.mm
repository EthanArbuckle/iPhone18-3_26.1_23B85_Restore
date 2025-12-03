@interface HUMediaServiceTableViewController
- (BOOL)moduleController:(id)controller shouldDisableItem:(id)item;
- (BOOL)shouldHideFooterBelowSection:(int64_t)section;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)section;
- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUMediaServiceTableViewController)initWithItem:(id)item mediaServiceItem:(id)serviceItem;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)itemModuleControllers;
- (id)moduleController:(id)controller requestPresentViewController:(id)viewController animated:(BOOL)animated withCompletion:(id)completion;
- (void)_removeService;
- (void)moduleController:(id)controller preflightCheckToAllowSwitchingForSettingItem:(id)item changingToOn:(BOOL)on withCompletion:(id)completion;
- (void)moduleController:(id)controller presentGroup:(id)group;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HUMediaServiceTableViewController

- (HUMediaServiceTableViewController)initWithItem:(id)item mediaServiceItem:(id)serviceItem
{
  itemCopy = item;
  serviceItemCopy = serviceItem;
  v8 = [HUMediaServiceItemManager alloc];
  home = [itemCopy home];
  v10 = [serviceItemCopy copy];
  v11 = [(HUMediaServiceItemManager *)v8 initWithHome:home mediaServiceItem:v10 delegate:self];

  v18.receiver = self;
  v18.super_class = HUMediaServiceTableViewController;
  v12 = [(HUItemTableViewController *)&v18 initWithItemManager:v11 tableViewStyle:1];
  if (v12)
  {
    v13 = [itemCopy copy];
    userItem = v12->_userItem;
    v12->_userItem = v13;

    v15 = [serviceItemCopy copy];
    mediaServiceItem = v12->_mediaServiceItem;
    v12->_mediaServiceItem = v15;

    objc_storeStrong(&v12->_mediaServiceItemManager, v11);
  }

  return v12;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HUMediaServiceTableViewController;
  [(HUItemTableViewController *)&v6 viewDidLoad];
  mediaServiceItem = [(HUMediaServiceTableViewController *)self mediaServiceItem];
  latestResults = [mediaServiceItem latestResults];
  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  [(HUMediaServiceTableViewController *)self setTitle:v5];
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  mediaServiceItemManager = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  mediaServiceItem = [mediaServiceItemManager mediaServiceItem];
  v10 = [itemCopy isEqual:mediaServiceItem];

  if (v10 || (-[HUMediaServiceTableViewController mediaServiceItemManager](self, "mediaServiceItemManager"), v11 = objc_claimAutoreleasedReturnValue(), [v11 updateListeningHistoryItem], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(itemCopy, "isEqual:", v12), v12, v11, v13) || (-[HUMediaServiceTableViewController mediaServiceItemManager](self, "mediaServiceItemManager"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "updateListeningHistoryFooterItem"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(itemCopy, "isEqual:", v15), v15, v14, v16) || (-[HUMediaServiceTableViewController mediaServiceItemManager](self, "mediaServiceItemManager"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "removeItem"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(itemCopy, "isEqual:", v18), v18, v17, v19) || (-[HUMediaServiceTableViewController mediaServiceItemManager](self, "mediaServiceItemManager"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "reconnectItem"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(itemCopy, "isEqual:", v21), v21, v20, v22) || (-[HUMediaServiceTableViewController mediaServiceItemManager](self, "mediaServiceItemManager"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "reconnectTitleItem"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(itemCopy, "isEqual:", v24), v24, v23, v25))
  {
    v26 = objc_opt_class();
  }

  else
  {
    v29.receiver = self;
    v29.super_class = HUMediaServiceTableViewController;
    v26 = [(HUItemTableViewController *)&v29 cellClassForItem:itemCopy indexPath:pathCopy];
  }

  v27 = v26;

  return v27;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  v31.receiver = self;
  v31.super_class = HUMediaServiceTableViewController;
  [(HUItemTableViewController *)&v31 setupCell:cellCopy forItem:itemCopy indexPath:path];
  mediaServiceItemManager = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  updateListeningHistoryItem = [mediaServiceItemManager updateListeningHistoryItem];
  v12 = [itemCopy isEqual:updateListeningHistoryItem];

  if (v12)
  {
    v13 = cellCopy;
    [v13 setDelegate:self];
    [v13 setSelectionStyle:0];
  }

  mediaServiceItemManager2 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  removeItem = [mediaServiceItemManager2 removeItem];
  v16 = [itemCopy isEqual:removeItem];

  if (v16)
  {
    v17 = cellCopy;
    [v17 setDestructive:1];
    [v17 setUseFullWidthSeparator:0];
  }

  mediaServiceItemManager3 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  reconnectItem = [mediaServiceItemManager3 reconnectItem];
  v20 = [itemCopy isEqual:reconnectItem];

  if (v20)
  {
    v21 = cellCopy;
    [v21 setTitleColorFollowsTintColor:1];
    [v21 setHideIcon:1];
  }

  mediaServiceItemManager4 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  reconnectTitleItem = [mediaServiceItemManager4 reconnectTitleItem];
  v24 = [itemCopy isEqual:reconnectTitleItem];

  if (v24)
  {
    v25 = cellCopy;
    latestResults = [itemCopy latestResults];
    v27 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    textLabel = [v25 textLabel];
    [textLabel setText:v27];

    textLabel2 = [v25 textLabel];
    [textLabel2 setNumberOfLines:0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [v25 setBackgroundColor:clearColor];
  }
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v26.receiver = self;
  v26.super_class = HUMediaServiceTableViewController;
  [(HUItemTableViewController *)&v26 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  mediaServiceItemManager = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  updateListeningHistoryItem = [mediaServiceItemManager updateListeningHistoryItem];
  v14 = [itemCopy isEqual:updateListeningHistoryItem];

  if (v14)
  {
    mediaServiceItemManager2 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
    mediaServiceItem = [mediaServiceItemManager2 mediaServiceItem];

    mediaService = [mediaServiceItem mediaService];
    updateListeningHistoryEnabled = [mediaService updateListeningHistoryEnabled];

    [cellCopy setOn:updateListeningHistoryEnabled animated:1];
  }

  mediaServiceItemManager3 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  removeItem = [mediaServiceItemManager3 removeItem];
  v21 = [itemCopy isEqual:removeItem];

  if (v21)
  {
    v22 = cellCopy;
    latestResults = [itemCopy latestResults];
    v24 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    textLabel = [v22 textLabel];

    [textLabel setText:v24];
  }
}

- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  v14.receiver = self;
  v14.super_class = HUMediaServiceTableViewController;
  LOBYTE(itemManager) = [(HUItemTableViewController *)&v14 shouldHideSeparatorsForCell:cellCopy indexPath:pathCopy];

  if (itemManager)
  {
    v10 = 1;
  }

  else
  {
    mediaServiceItemManager = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
    updateListeningHistoryItem = [mediaServiceItemManager updateListeningHistoryItem];
    v10 = [v9 isEqual:updateListeningHistoryItem];
  }

  return v10;
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v5 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  v6 = [v5 isEqualToString:@"HUMediaServiceUpdateListeningHistoryFooterSectionIdentifier"];

  return v6;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v6 = [itemManager displayedSectionIdentifierForSectionIndex:section];

  v7 = 0.01;
  if (([v6 isEqualToString:@"HUMediaServiceUpdateListeningHistorySectionIdentifier"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"HUMediaServiceReconnectServiceTitleSectionIdentifier") & 1) == 0)
  {
    if ([v6 isEqualToString:@"HUMediaServiceAccountInfoSectionIdentifier"])
    {
      v7 = 10.0;
    }

    else
    {
      v7 = *MEMORY[0x277D76F30];
    }
  }

  return v7;
}

- (BOOL)shouldHideFooterBelowSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v5 = [itemManager displayedSectionIdentifierForSectionIndex:section];

  if ([v5 isEqualToString:@"HUMediaServiceUpdateListeningHistorySectionIdentifier"])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isEqualToString:@"HUMediaServiceUpdateListeningHistoryFooterSectionIdentifier"];
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v46.receiver = self;
  v46.super_class = HUMediaServiceTableViewController;
  viewCopy = view;
  [(HUItemTableViewController *)&v46 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  mediaServiceItemManager = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  removeItem = [mediaServiceItemManager removeItem];
  v12 = [v9 isEqual:removeItem];

  if (v12)
  {
    mediaServiceItem = [(HUMediaServiceTableViewController *)self mediaServiceItem];
    home = [mediaServiceItem home];

    mediaServiceItem2 = [(HUMediaServiceTableViewController *)self mediaServiceItem];
    mediaService = [mediaServiceItem2 mediaService];
    serviceName = [mediaService serviceName];

    mEMORY[0x277D148E8] = HULocalizedStringWithFormat(@"HUMediaServiceRemoveServiceAlertTitle", @"%@", v17, v18, v19, v20, v21, v22, serviceName);
    name = [home name];
    v44 = HULocalizedStringWithFormat(@"HUMediaServiceRemoveServiceAlertConfirmationMessage", @"%@%@", v24, v25, v26, v27, v28, v29, serviceName);

    v30 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
    v31 = _HULocalizedStringWithDefaultValue(@"HURemoveTitle", @"HURemoveTitle", 1);
    v32 = [(UITableViewController *)self hu_actionSheetWithTitle:mEMORY[0x277D148E8] message:v44 indexPath:pathCopy];
    v33 = [MEMORY[0x277D750F8] actionWithTitle:v30 style:1 handler:0];
    [v32 addAction:v33];

    bundleIdentifier = home;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __71__HUMediaServiceTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v45[3] = &unk_277DB7600;
    v45[4] = self;
    v35 = [MEMORY[0x277D750F8] actionWithTitle:v31 style:2 handler:v45];
    [v32 addAction:v35];

    [(HUMediaServiceTableViewController *)self presentViewController:v32 animated:1 completion:0];
LABEL_5:

    goto LABEL_6;
  }

  mediaServiceItemManager2 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  reconnectItem = [mediaServiceItemManager2 reconnectItem];
  v38 = [v9 isEqual:reconnectItem];

  if (v38)
  {
    mediaServiceItem3 = [(HUMediaServiceTableViewController *)self mediaServiceItem];
    mediaService2 = [mediaServiceItem3 mediaService];
    bundleIdentifier = [mediaService2 bundleIdentifier];

    serviceName = [MEMORY[0x277CBEBC0] hf_appStoreURLForBundleIdentifier:bundleIdentifier];
    mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
    v41 = [mEMORY[0x277D148E8] openURL:serviceName];
    goto LABEL_5;
  }

LABEL_6:
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v10.receiver = self;
  v10.super_class = HUMediaServiceTableViewController;
  [(HUItemTableViewController *)&v10 tableView:view willDisplayCell:cellCopy forRowAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [cellCopy setBackgroundColor:clearColor];
  }
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  userSettingsItemModuleController = [(HUMediaServiceTableViewController *)self userSettingsItemModuleController];
  if (!userSettingsItemModuleController)
  {
    mediaServiceItemManager = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
    userSettingsItemModule = [mediaServiceItemManager userSettingsItemModule];

    if (!userSettingsItemModule)
    {
      goto LABEL_5;
    }

    v7 = [HUAccessorySettingsItemModuleController alloc];
    userSettingsItemModuleController = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
    userSettingsItemModule2 = [userSettingsItemModuleController userSettingsItemModule];
    v9 = [(HUAccessorySettingsItemModuleController *)v7 initWithModule:userSettingsItemModule2 delegate:self];
    [(HUMediaServiceTableViewController *)self setUserSettingsItemModuleController:v9];
  }

LABEL_5:
  userSettingsItemModuleController2 = [(HUMediaServiceTableViewController *)self userSettingsItemModuleController];
  [v3 na_safeAddObject:userSettingsItemModuleController2];

  return v3;
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  tableView = [(HUMediaServiceTableViewController *)self tableView];
  v8 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager displayedItemAtIndexPath:v8];

  mediaServiceItemManager = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  updateListeningHistoryItem = [mediaServiceItemManager updateListeningHistoryItem];
  v13 = [v10 isEqual:updateListeningHistoryItem];

  if (v13)
  {
    mediaServiceItemManager2 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
    mediaServiceItem = [mediaServiceItemManager2 mediaServiceItem];

    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCABB0] numberWithBool:onCopy];
    [v16 na_safeSetObject:v17 forKey:&unk_282492648];

    mEMORY[0x277D14820] = [MEMORY[0x277D14820] sharedManager];
    mediaService = [mediaServiceItem mediaService];
    home = [mediaServiceItem home];
    v21 = [mEMORY[0x277D14820] updateProperty:mediaService forHome:home withOptions:v16];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__HUMediaServiceTableViewController_switchCell_didTurnOn___block_invoke;
    v23[3] = &unk_277DBC098;
    v24 = cellCopy;
    v25 = onCopy;
    v22 = [v21 addFailureBlock:v23];
  }
}

void __58__HUMediaServiceTableViewController_switchCell_didTurnOn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HUMediaServiceTableViewController_switchCell_didTurnOn___block_invoke_2;
  block[3] = &unk_277DC2F28;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __58__HUMediaServiceTableViewController_switchCell_didTurnOn___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277D14640] sharedHandler];
    [v2 handleError:*(a1 + 32)];
  }

  v3 = *(a1 + 40);
  v4 = (*(a1 + 48) & 1) == 0;

  return [v3 setOn:v4 animated:1];
}

- (void)moduleController:(id)controller presentGroup:(id)group
{
  groupCopy = group;
  latestResults = [groupCopy latestResults];
  v6 = *MEMORY[0x277D13EA8];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  if (!v7)
  {

    goto LABEL_5;
  }

  v8 = v7;
  latestResults2 = [groupCopy latestResults];
  v10 = [latestResults2 objectForKeyedSubscript:v6];
  bOOLValue = [v10 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
LABEL_5:
    v12 = [HUAccessorySettingsDetailsViewControllerFactory viewControllerForGroup:groupCopy];
    navigationController = [(HUMediaServiceTableViewController *)self navigationController];
    v14 = [navigationController hu_pushPreloadableViewController:v12 animated:1];
  }
}

- (id)moduleController:(id)controller requestPresentViewController:(id)viewController animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  v9 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __107__HUMediaServiceTableViewController_moduleController_requestPresentViewController_animated_withCompletion___block_invoke;
  v12[3] = &unk_277DB8488;
  v10 = v9;
  v13 = v10;
  [(HUMediaServiceTableViewController *)self presentViewController:viewControllerCopy animated:animatedCopy completion:v12];

  return v10;
}

- (void)moduleController:(id)controller preflightCheckToAllowSwitchingForSettingItem:(id)item changingToOn:(BOOL)on withCompletion:(id)completion
{
  onCopy = on;
  location[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  itemCopy = item;
  completionCopy = completion;
  if (!itemCopy)
  {
    v13 = NSStringFromSelector(a2);
    NSLog(&cfstr_CalledWithNoSe.isa, v13);
  }

  settingKeyPath = [itemCopy settingKeyPath];
  v15 = [settingKeyPath isEqualToString:*MEMORY[0x277D13990]];

  if (v15)
  {
    v16 = !onCopy;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    mediaServiceItemManager = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
    userSettingsItemModule = [mediaServiceItemManager userSettingsItemModule];
    accessorySettingsItemProvider = [userSettingsItemModule accessorySettingsItemProvider];
    homeKitSettingsVendor = [accessorySettingsItemProvider homeKitSettingsVendor];
    settings = [homeKitSettingsVendor settings];

    v36 = [settings hf_accessorySettingAtKeyPath:*MEMORY[0x277D139B8]];
    value = [v36 value];
    bOOLValue = [value BOOLValue];

    v24 = HFLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(location[0]) = 67109120;
      HIDWORD(location[0]) = bOOLValue;
      _os_log_debug_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEBUG, "isVoiceIDSetup = %{BOOL}d", location, 8u);
    }

    if ((bOOLValue & 1) == 0)
    {
      v25 = MEMORY[0x277D75110];
      v26 = _HULocalizedStringWithDefaultValue(@"HUPlaybackInfluencesActivation_Alert_Title", @"HUPlaybackInfluencesActivation_Alert_Title", 1);
      v27 = _HULocalizedStringWithDefaultValue(@"HUPlaybackInfluencesActivation_Alert_Description", @"HUPlaybackInfluencesActivation_Alert_Description", 1);
      v28 = [v25 alertControllerWithTitle:v26 message:v27 preferredStyle:1];

      v29 = MEMORY[0x277D750F8];
      v30 = _HULocalizedStringWithDefaultValue(@"HUPlaybackInfluencesActivation_Alert_Action_NotNow", @"HUPlaybackInfluencesActivation_Alert_Action_NotNow", 1);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __127__HUMediaServiceTableViewController_moduleController_preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke;
      v41[3] = &unk_277DBDB08;
      v42 = settings;
      selfCopy = self;
      v45 = a2;
      v31 = completionCopy;
      v44 = v31;
      v32 = [v29 actionWithTitle:v30 style:1 handler:v41];

      objc_initWeak(location, self);
      v33 = MEMORY[0x277D750F8];
      v34 = _HULocalizedStringWithDefaultValue(@"HUPlaybackInfluencesActivation_Alert_Action_IdentifyVoice", @"HUPlaybackInfluencesActivation_Alert_Action_IdentifyVoice", 1);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __127__HUMediaServiceTableViewController_moduleController_preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke_71;
      v38[3] = &unk_277DBDB30;
      objc_copyWeak(&v40, location);
      v39 = v31;
      v35 = [v33 actionWithTitle:v34 style:0 handler:v38];

      [v28 addAction:v32];
      [v28 addAction:v35];
      [(HUMediaServiceTableViewController *)self presentViewController:v28 animated:1 completion:0];

      objc_destroyWeak(&v40);
      objc_destroyWeak(location);
    }
  }

  (*(completionCopy + 2))(completionCopy, 0);
}

void __127__HUMediaServiceTableViewController_moduleController_preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(location[0]) = 0;
    _os_log_debug_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEBUG, "User tapped Not Now Action", location, 2u);
  }

  v5 = [*(a1 + 32) hf_accessorySettingAtKeyPath:*MEMORY[0x277D13990]];
  objc_initWeak(location, *(a1 + 40));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __127__HUMediaServiceTableViewController_moduleController_preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke_65;
  v7[3] = &unk_277DBDAE0;
  v6 = v5;
  v8 = v6;
  objc_copyWeak(v9, location);
  v9[1] = *(a1 + 56);
  [v6 updateValue:MEMORY[0x277CBEC28] completionHandler:v7];
  (*(*(a1 + 48) + 16))();
  objc_destroyWeak(v9);

  objc_destroyWeak(location);
}

void __127__HUMediaServiceTableViewController_moduleController_preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke_65(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained mediaServiceItemManager];
    v7 = [v6 sectionIndexForDisplayedSectionIdentifier:*MEMORY[0x277D13988]];

    v8 = [WeakRetained itemManager];
    v9 = [v8 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 48)];

    v10 = [WeakRetained itemManager];
    LODWORD(v8) = [v10 diffableDataSourceDisabled];

    if (v8)
    {
      v11 = [WeakRetained tableView];
      v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:v7];
      [v11 reloadSections:v12 withRowAnimation:5];
    }

    else
    {
      v13 = [WeakRetained itemManager];
      v11 = [v13 itemSectionForSectionIndex:v7];

      if (!v11)
      {
LABEL_9:

        goto LABEL_10;
      }

      v12 = [WeakRetained itemManager];
      v15 = v11;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
      [v12 reloadUIRepresentationForSections:v14 withAnimation:0];
    }

    goto LABEL_9;
  }

  WeakRetained = HFLogForCategory();
  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v17 = v3;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_20CEB6000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Error [%@] setting value for setting [%@] to NO", buf, 0x16u);
  }

LABEL_10:
}

void __127__HUMediaServiceTableViewController_moduleController_preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke_71(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEBUG, "User tapped Identify Voice Action", v9, 2u);
  }

  v4 = *(a1 + 32);
  v5 = [WeakRetained mediaServiceItem];
  v6 = [v5 home];
  v10 = @"OnboardingDisplayOption_OnboardingFromUserInput";
  v11[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [HUHomeFeatureOnboardingUtilities home:v6 onboardIdentifyVoiceFromPresentingViewController:WeakRetained usageOptions:v7];
  (*(v4 + 16))(v4, v8);
}

- (BOOL)moduleController:(id)controller shouldDisableItem:(id)item
{
  v5 = MEMORY[0x277D14CE8];
  itemCopy = item;
  isAMac = [v5 isAMac];
  settingKeyPath = [itemCopy settingKeyPath];

  v9 = [settingKeyPath isEqualToString:*MEMORY[0x277D13990]];
  if (!isAMac)
  {
    if (v9)
    {
      userItem = [(HUMediaServiceTableViewController *)self userItem];
      user = [userItem user];
      userItem2 = [(HUMediaServiceTableViewController *)self userItem];
      home = [userItem2 home];
      currentUser = [home currentUser];
      v10 = [user isEqual:currentUser] ^ 1;

      return v10;
    }

LABEL_6:
    LOBYTE(v10) = 0;
    return v10;
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  LOBYTE(v10) = 1;
  return v10;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    selfCopy = self;
    v23 = 2112;
    v24 = lCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v21, 0x16u);
  }

  absoluteString = [lCopy absoluteString];
  musicPrivacyURL = [MEMORY[0x277D14C80] musicPrivacyURL];
  absoluteString2 = [musicPrivacyURL absoluteString];
  v12 = [absoluteString isEqualToString:absoluteString2];

  if (v12)
  {
    navigationController = [(HUMediaServiceTableViewController *)self navigationController];
    v14 = navigationController;
    if (navigationController)
    {
      selfCopy2 = navigationController;
    }

    else
    {
      selfCopy2 = self;
    }

    v16 = selfCopy2;

    mEMORY[0x277D148E8] = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376B0]];
    splashController = [mEMORY[0x277D148E8] splashController];
    [splashController setDisplayDeviceType:6];

    [mEMORY[0x277D148E8] setPresentingViewController:v16];
    [mEMORY[0x277D148E8] present];
  }

  else
  {
    mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
    v19 = [mEMORY[0x277D148E8] openURL:lCopy];
  }

  return 0;
}

- (void)_removeService
{
  mediaServiceItemManager = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  mediaServiceItemManager2 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  removeItem = [mediaServiceItemManager2 removeItem];
  v6 = [mediaServiceItemManager indexPathForItem:removeItem];

  tableView = [(HUMediaServiceTableViewController *)self tableView];
  v8 = [tableView cellForRowAtIndexPath:v6];

  mEMORY[0x277D14820] = [MEMORY[0x277D14820] sharedManager];
  mediaServiceItem = [(HUMediaServiceTableViewController *)self mediaServiceItem];
  mediaService = [mediaServiceItem mediaService];
  mediaServiceItem2 = [(HUMediaServiceTableViewController *)self mediaServiceItem];
  home = [mediaServiceItem2 home];
  v14 = [mEMORY[0x277D14820] removeMediaService:mediaService forHome:home];

  [v8 setShowSpinner:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__HUMediaServiceTableViewController__removeService__block_invoke;
  v17[3] = &unk_277DB7158;
  v18 = v8;
  selfCopy = self;
  v15 = v8;
  v16 = [v14 addCompletionBlock:v17];
}

void __51__HUMediaServiceTableViewController__removeService__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HUMediaServiceTableViewController__removeService__block_invoke_2;
  block[3] = &unk_277DB8810;
  v9 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__HUMediaServiceTableViewController__removeService__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setShowSpinner:0];
    v3 = [MEMORY[0x277D14640] sharedHandler];
    [v3 handleError:*(a1 + 32)];
  }

  else
  {
    v3 = [*(a1 + 48) navigationController];
    v2 = [v3 popViewControllerAnimated:1];
  }
}

@end