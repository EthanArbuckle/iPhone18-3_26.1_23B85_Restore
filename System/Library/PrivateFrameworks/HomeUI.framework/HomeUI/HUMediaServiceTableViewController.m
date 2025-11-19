@interface HUMediaServiceTableViewController
- (BOOL)moduleController:(id)a3 shouldDisableItem:(id)a4;
- (BOOL)shouldHideFooterBelowSection:(int64_t)a3;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3;
- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUMediaServiceTableViewController)initWithItem:(id)a3 mediaServiceItem:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)itemModuleControllers;
- (id)moduleController:(id)a3 requestPresentViewController:(id)a4 animated:(BOOL)a5 withCompletion:(id)a6;
- (void)_removeService;
- (void)moduleController:(id)a3 preflightCheckToAllowSwitchingForSettingItem:(id)a4 changingToOn:(BOOL)a5 withCompletion:(id)a6;
- (void)moduleController:(id)a3 presentGroup:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidLoad;
@end

@implementation HUMediaServiceTableViewController

- (HUMediaServiceTableViewController)initWithItem:(id)a3 mediaServiceItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [HUMediaServiceItemManager alloc];
  v9 = [v6 home];
  v10 = [v7 copy];
  v11 = [(HUMediaServiceItemManager *)v8 initWithHome:v9 mediaServiceItem:v10 delegate:self];

  v18.receiver = self;
  v18.super_class = HUMediaServiceTableViewController;
  v12 = [(HUItemTableViewController *)&v18 initWithItemManager:v11 tableViewStyle:1];
  if (v12)
  {
    v13 = [v6 copy];
    userItem = v12->_userItem;
    v12->_userItem = v13;

    v15 = [v7 copy];
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
  v3 = [(HUMediaServiceTableViewController *)self mediaServiceItem];
  v4 = [v3 latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  [(HUMediaServiceTableViewController *)self setTitle:v5];
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  v9 = [v8 mediaServiceItem];
  v10 = [v6 isEqual:v9];

  if (v10 || (-[HUMediaServiceTableViewController mediaServiceItemManager](self, "mediaServiceItemManager"), v11 = objc_claimAutoreleasedReturnValue(), [v11 updateListeningHistoryItem], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v6, "isEqual:", v12), v12, v11, v13) || (-[HUMediaServiceTableViewController mediaServiceItemManager](self, "mediaServiceItemManager"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "updateListeningHistoryFooterItem"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v6, "isEqual:", v15), v15, v14, v16) || (-[HUMediaServiceTableViewController mediaServiceItemManager](self, "mediaServiceItemManager"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "removeItem"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v6, "isEqual:", v18), v18, v17, v19) || (-[HUMediaServiceTableViewController mediaServiceItemManager](self, "mediaServiceItemManager"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "reconnectItem"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v6, "isEqual:", v21), v21, v20, v22) || (-[HUMediaServiceTableViewController mediaServiceItemManager](self, "mediaServiceItemManager"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "reconnectTitleItem"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v6, "isEqual:", v24), v24, v23, v25))
  {
    v26 = objc_opt_class();
  }

  else
  {
    v29.receiver = self;
    v29.super_class = HUMediaServiceTableViewController;
    v26 = [(HUItemTableViewController *)&v29 cellClassForItem:v6 indexPath:v7];
  }

  v27 = v26;

  return v27;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v31.receiver = self;
  v31.super_class = HUMediaServiceTableViewController;
  [(HUItemTableViewController *)&v31 setupCell:v8 forItem:v9 indexPath:a5];
  v10 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  v11 = [v10 updateListeningHistoryItem];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    v13 = v8;
    [v13 setDelegate:self];
    [v13 setSelectionStyle:0];
  }

  v14 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  v15 = [v14 removeItem];
  v16 = [v9 isEqual:v15];

  if (v16)
  {
    v17 = v8;
    [v17 setDestructive:1];
    [v17 setUseFullWidthSeparator:0];
  }

  v18 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  v19 = [v18 reconnectItem];
  v20 = [v9 isEqual:v19];

  if (v20)
  {
    v21 = v8;
    [v21 setTitleColorFollowsTintColor:1];
    [v21 setHideIcon:1];
  }

  v22 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  v23 = [v22 reconnectTitleItem];
  v24 = [v9 isEqual:v23];

  if (v24)
  {
    v25 = v8;
    v26 = [v9 latestResults];
    v27 = [v26 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v28 = [v25 textLabel];
    [v28 setText:v27];

    v29 = [v25 textLabel];
    [v29 setNumberOfLines:0];

    v30 = [MEMORY[0x277D75348] clearColor];
    [v25 setBackgroundColor:v30];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v26.receiver = self;
  v26.super_class = HUMediaServiceTableViewController;
  [(HUItemTableViewController *)&v26 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  v13 = [v12 updateListeningHistoryItem];
  v14 = [v11 isEqual:v13];

  if (v14)
  {
    v15 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
    v16 = [v15 mediaServiceItem];

    v17 = [v16 mediaService];
    v18 = [v17 updateListeningHistoryEnabled];

    [v10 setOn:v18 animated:1];
  }

  v19 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  v20 = [v19 removeItem];
  v21 = [v11 isEqual:v20];

  if (v21)
  {
    v22 = v10;
    v23 = [v11 latestResults];
    v24 = [v23 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v25 = [v22 textLabel];

    [v25 setText:v24];
  }
}

- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

  v14.receiver = self;
  v14.super_class = HUMediaServiceTableViewController;
  LOBYTE(v8) = [(HUItemTableViewController *)&v14 shouldHideSeparatorsForCell:v7 indexPath:v6];

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
    v12 = [v11 updateListeningHistoryItem];
    v10 = [v9 isEqual:v12];
  }

  return v10;
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3
{
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 displayedSectionIdentifierForSectionIndex:a3];
  v6 = [v5 isEqualToString:@"HUMediaServiceUpdateListeningHistoryFooterSectionIdentifier"];

  return v6;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 displayedSectionIdentifierForSectionIndex:a4];

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

- (BOOL)shouldHideFooterBelowSection:(int64_t)a3
{
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 displayedSectionIdentifierForSectionIndex:a3];

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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v46.receiver = self;
  v46.super_class = HUMediaServiceTableViewController;
  v7 = a3;
  [(HUItemTableViewController *)&v46 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

  [v7 deselectRowAtIndexPath:v6 animated:1];
  v10 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  v11 = [v10 removeItem];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    v13 = [(HUMediaServiceTableViewController *)self mediaServiceItem];
    v43 = [v13 home];

    v14 = [(HUMediaServiceTableViewController *)self mediaServiceItem];
    v15 = [v14 mediaService];
    v16 = [v15 serviceName];

    v23 = HULocalizedStringWithFormat(@"HUMediaServiceRemoveServiceAlertTitle", @"%@", v17, v18, v19, v20, v21, v22, v16);
    v42 = [v43 name];
    v44 = HULocalizedStringWithFormat(@"HUMediaServiceRemoveServiceAlertConfirmationMessage", @"%@%@", v24, v25, v26, v27, v28, v29, v16);

    v30 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
    v31 = _HULocalizedStringWithDefaultValue(@"HURemoveTitle", @"HURemoveTitle", 1);
    v32 = [(UITableViewController *)self hu_actionSheetWithTitle:v23 message:v44 indexPath:v6];
    v33 = [MEMORY[0x277D750F8] actionWithTitle:v30 style:1 handler:0];
    [v32 addAction:v33];

    v34 = v43;
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

  v36 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  v37 = [v36 reconnectItem];
  v38 = [v9 isEqual:v37];

  if (v38)
  {
    v39 = [(HUMediaServiceTableViewController *)self mediaServiceItem];
    v40 = [v39 mediaService];
    v34 = [v40 bundleIdentifier];

    v16 = [MEMORY[0x277CBEBC0] hf_appStoreURLForBundleIdentifier:v34];
    v23 = [MEMORY[0x277D148E8] sharedInstance];
    v41 = [v23 openURL:v16];
    goto LABEL_5;
  }

LABEL_6:
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a4;
  v10.receiver = self;
  v10.super_class = HUMediaServiceTableViewController;
  [(HUItemTableViewController *)&v10 tableView:a3 willDisplayCell:v8 forRowAtIndexPath:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x277D75348] clearColor];
    [v8 setBackgroundColor:v9];
  }
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  v4 = [(HUMediaServiceTableViewController *)self userSettingsItemModuleController];
  if (!v4)
  {
    v5 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
    v6 = [v5 userSettingsItemModule];

    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = [HUAccessorySettingsItemModuleController alloc];
    v4 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
    v8 = [v4 userSettingsItemModule];
    v9 = [(HUAccessorySettingsItemModuleController *)v7 initWithModule:v8 delegate:self];
    [(HUMediaServiceTableViewController *)self setUserSettingsItemModuleController:v9];
  }

LABEL_5:
  v10 = [(HUMediaServiceTableViewController *)self userSettingsItemModuleController];
  [v3 na_safeAddObject:v10];

  return v3;
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUMediaServiceTableViewController *)self tableView];
  v8 = [v7 indexPathForCell:v6];

  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 displayedItemAtIndexPath:v8];

  v11 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  v12 = [v11 updateListeningHistoryItem];
  v13 = [v10 isEqual:v12];

  if (v13)
  {
    v14 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
    v15 = [v14 mediaServiceItem];

    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    [v16 na_safeSetObject:v17 forKey:&unk_282492648];

    v18 = [MEMORY[0x277D14820] sharedManager];
    v19 = [v15 mediaService];
    v20 = [v15 home];
    v21 = [v18 updateProperty:v19 forHome:v20 withOptions:v16];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__HUMediaServiceTableViewController_switchCell_didTurnOn___block_invoke;
    v23[3] = &unk_277DBC098;
    v24 = v6;
    v25 = v4;
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

- (void)moduleController:(id)a3 presentGroup:(id)a4
{
  v15 = a4;
  v5 = [v15 latestResults];
  v6 = *MEMORY[0x277D13EA8];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  if (!v7)
  {

    goto LABEL_5;
  }

  v8 = v7;
  v9 = [v15 latestResults];
  v10 = [v9 objectForKeyedSubscript:v6];
  v11 = [v10 BOOLValue];

  if ((v11 & 1) == 0)
  {
LABEL_5:
    v12 = [HUAccessorySettingsDetailsViewControllerFactory viewControllerForGroup:v15];
    v13 = [(HUMediaServiceTableViewController *)self navigationController];
    v14 = [v13 hu_pushPreloadableViewController:v12 animated:1];
  }
}

- (id)moduleController:(id)a3 requestPresentViewController:(id)a4 animated:(BOOL)a5 withCompletion:(id)a6
{
  v6 = a5;
  v8 = a4;
  v9 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __107__HUMediaServiceTableViewController_moduleController_requestPresentViewController_animated_withCompletion___block_invoke;
  v12[3] = &unk_277DB8488;
  v10 = v9;
  v13 = v10;
  [(HUMediaServiceTableViewController *)self presentViewController:v8 animated:v6 completion:v12];

  return v10;
}

- (void)moduleController:(id)a3 preflightCheckToAllowSwitchingForSettingItem:(id)a4 changingToOn:(BOOL)a5 withCompletion:(id)a6
{
  v7 = a5;
  location[2] = *MEMORY[0x277D85DE8];
  v37 = a3;
  v11 = a4;
  v12 = a6;
  if (!v11)
  {
    v13 = NSStringFromSelector(a2);
    NSLog(&cfstr_CalledWithNoSe.isa, v13);
  }

  v14 = [v11 settingKeyPath];
  v15 = [v14 isEqualToString:*MEMORY[0x277D13990]];

  if (v15)
  {
    v16 = !v7;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
    v18 = [v17 userSettingsItemModule];
    v19 = [v18 accessorySettingsItemProvider];
    v20 = [v19 homeKitSettingsVendor];
    v21 = [v20 settings];

    v36 = [v21 hf_accessorySettingAtKeyPath:*MEMORY[0x277D139B8]];
    v22 = [v36 value];
    v23 = [v22 BOOLValue];

    v24 = HFLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(location[0]) = 67109120;
      HIDWORD(location[0]) = v23;
      _os_log_debug_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEBUG, "isVoiceIDSetup = %{BOOL}d", location, 8u);
    }

    if ((v23 & 1) == 0)
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
      v42 = v21;
      v43 = self;
      v45 = a2;
      v31 = v12;
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

  (*(v12 + 2))(v12, 0);
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

- (BOOL)moduleController:(id)a3 shouldDisableItem:(id)a4
{
  v5 = MEMORY[0x277D14CE8];
  v6 = a4;
  v7 = [v5 isAMac];
  v8 = [v6 settingKeyPath];

  v9 = [v8 isEqualToString:*MEMORY[0x277D13990]];
  if (!v7)
  {
    if (v9)
    {
      v11 = [(HUMediaServiceTableViewController *)self userItem];
      v12 = [v11 user];
      v13 = [(HUMediaServiceTableViewController *)self userItem];
      v14 = [v13 home];
      v15 = [v14 currentUser];
      v10 = [v12 isEqual:v15] ^ 1;

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

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v21, 0x16u);
  }

  v9 = [v7 absoluteString];
  v10 = [MEMORY[0x277D14C80] musicPrivacyURL];
  v11 = [v10 absoluteString];
  v12 = [v9 isEqualToString:v11];

  if (v12)
  {
    v13 = [(HUMediaServiceTableViewController *)self navigationController];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = self;
    }

    v16 = v15;

    v17 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376B0]];
    v18 = [v17 splashController];
    [v18 setDisplayDeviceType:6];

    [v17 setPresentingViewController:v16];
    [v17 present];
  }

  else
  {
    v17 = [MEMORY[0x277D148E8] sharedInstance];
    v19 = [v17 openURL:v7];
  }

  return 0;
}

- (void)_removeService
{
  v3 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  v4 = [(HUMediaServiceTableViewController *)self mediaServiceItemManager];
  v5 = [v4 removeItem];
  v6 = [v3 indexPathForItem:v5];

  v7 = [(HUMediaServiceTableViewController *)self tableView];
  v8 = [v7 cellForRowAtIndexPath:v6];

  v9 = [MEMORY[0x277D14820] sharedManager];
  v10 = [(HUMediaServiceTableViewController *)self mediaServiceItem];
  v11 = [v10 mediaService];
  v12 = [(HUMediaServiceTableViewController *)self mediaServiceItem];
  v13 = [v12 home];
  v14 = [v9 removeMediaService:v11 forHome:v13];

  [v8 setShowSpinner:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__HUMediaServiceTableViewController__removeService__block_invoke;
  v17[3] = &unk_277DB7158;
  v18 = v8;
  v19 = self;
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