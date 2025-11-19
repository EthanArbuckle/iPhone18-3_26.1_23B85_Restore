@interface HUEditLocationViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (BOOL)updateBuilderName:(id)a3;
- (BOOL)updateBuilderNotes:(id)a3;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUEditLocationItemManager)homeItemManager;
- (HUEditLocationViewController)initWithHomeBuilder:(id)a3 presentationDelegate:(id)a4 addLocationDelegate:(id)a5 context:(unint64_t)a6;
- (HUEditLocationViewControllerAddLocationDelegate)addLocationDelegate;
- (HUEditableTextCell)nameCell;
- (HUEditableTextViewCell)detailNotesCell;
- (HUPresentationDelegate)presentationDelegate;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)currentTextForTextField:(id)a3 item:(id)a4;
- (id)presentBridgeSettings:(BOOL)a3;
- (id)presentDefaultMediaServiceSettings:(id)a3;
- (id)presentNetworkSettings:(BOOL)a3;
- (id)presentNotificationSettingsForTopic:(id)a3 animated:(BOOL)a4;
- (id)presentPersonalRequestsSettings:(id)a3;
- (id)presentRestrictedGuestLockSettings;
- (id)presentSoftwareUpdate:(BOOL)a3;
- (id)presentUserLockSettings:(id)a3;
- (id)presentUserViewController:(id)a3;
- (id)showNotificationSettingsForHomeKitObject:(id)a3 animated:(BOOL)a4;
- (unint64_t)automaticDisablingReasonsForItem:(id)a3;
- (void)_updateSoftwareUpdateDynamicFooterView;
- (void)activityLogCoordinator:(id)a3 didDetermineEventsExist:(BOOL)a4;
- (void)addButtonPressed:(id)a3;
- (void)didUpdateSiriTriggerPhraseSetting;
- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6;
- (void)dismissAndCommitChanges;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5;
- (void)prefetchActivityLogCoordinator:(id)a3 targetKind:(unint64_t)a4 home:(id)a5;
- (void)prefetchActivityLogEventsIfNecessary;
- (void)scrollToNotificationTopicsAnimated:(BOOL)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5;
- (void)textFieldDidEndEditing:(id)a3 item:(id)a4;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAndCommitHomeName;
- (void)updateAndCommitNotes;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)updateWallpaper:(id)a3 image:(id)a4;
- (void)viewDidLoad;
- (void)wallpaperEditing:(id)a3 didFinishWithWallpaper:(id)a4 image:(id)a5;
- (void)wallpaperPicker:(id)a3 didReceiveDroppedImage:(id)a4;
- (void)wallpaperPicker:(id)a3 didSelectWallpaper:(id)a4 withImage:(id)a5;
- (void)wallpaperPickerDidFinish:(id)a3 wallpaper:(id)a4 image:(id)a5;
- (void)wallpaperPickerRequestOpenWallpaperEditor:(id)a3;
- (void)wallpaperThumbnailCell:(id)a3 didReceiveDroppedImage:(id)a4;
@end

@implementation HUEditLocationViewController

- (HUEditLocationViewController)initWithHomeBuilder:(id)a3 presentationDelegate:(id)a4 addLocationDelegate:(id)a5 context:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [[HUEditLocationItemManager alloc] initWithHomeBuilder:v11 delegate:self context:a6];
  v22.receiver = self;
  v22.super_class = HUEditLocationViewController;
  v15 = [(HUItemTableViewController *)&v22 initWithItemManager:v14 tableViewStyle:1];
  if (v15)
  {
    v16 = [v11 name];
    editedName = v15->_editedName;
    v15->_editedName = v16;

    v18 = [v11 userNotes];
    editedNotes = v15->_editedNotes;
    v15->_editedNotes = v18;

    objc_storeWeak(&v15->_homeItemManager, v14);
    objc_storeStrong(&v15->_homeBuilder, a3);
    objc_storeWeak(&v15->_presentationDelegate, v12);
    objc_storeWeak(&v15->_addLocationDelegate, v13);
    v15->_context = a6;
    v20 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v20 addHomeManagerObserver:v15];
  }

  return v15;
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = HUEditLocationViewController;
  [(HUItemTableViewController *)&v30 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:self action:sel_dismissAndCommitChanges];
  v4 = [(HUEditLocationViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [(HUEditLocationViewController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];
  [v6 setAccessibilityIdentifier:@"Home.HomeSettings.Done"];

  v7 = [(HUEditLocationViewController *)self homeItemManager];
  v8 = [v7 home];
  v9 = [v8 hf_displayName];
  [(HUEditLocationViewController *)self setTitle:v9];

  if (+[HUWallpaperPickerInlineViewController useWallpaperPickerCell])
  {
    v10 = objc_alloc_init(HUWallpaperPickerInlineViewController);
    wallpaperPickerViewController = self->_wallpaperPickerViewController;
    self->_wallpaperPickerViewController = v10;
  }

  v12 = [(HUEditLocationViewController *)self addLocationDelegate];
  if (v12)
  {
    v13 = v12;
    v14 = [(HUEditLocationViewController *)self context];

    if (v14 != 1)
    {
      if ([MEMORY[0x277D14CE8] isRunningInStoreDemoMode])
      {
        v15 = [(HUEditLocationViewController *)self navigationItem];
        [v15 setHidesBackButton:1];
      }

      else
      {
        if ([MEMORY[0x277D14CE8] isAMac])
        {
          goto LABEL_10;
        }

        v16 = objc_alloc(MEMORY[0x277D751E0]);
        v17 = _HULocalizedStringWithDefaultValue(@"HUEditLocationAddButtonTitle", @"HUEditLocationAddButtonTitle", 1);
        v18 = [v16 initWithTitle:v17 style:0 target:self action:sel_addButtonPressed_];
        v19 = [(HUEditLocationViewController *)self navigationItem];
        [v19 setLeftBarButtonItem:v18];

        v15 = [(HUEditLocationViewController *)self navigationItem];
        v20 = [v15 leftBarButtonItem];
        [v20 setAccessibilityIdentifier:@"Home.HomeSettings.AddHome"];
      }
    }
  }

LABEL_10:
  v21 = [MEMORY[0x277D146E8] sharedDispatcher];
  v22 = [v21 homeManager];
  v23 = [v22 hasOptedToHH2];

  if (v23)
  {
    v24 = [(HUEditLocationViewController *)self homeBuilder];
    v25 = [v24 home];
    [v25 startHomeDataSyncWithCompletionHandler:&__block_literal_global_129];
  }

  v26 = [MEMORY[0x277D14820] sharedManager];
  v27 = [(HUEditLocationViewController *)self homeBuilder];
  v28 = [v27 home];
  v29 = [v26 fetchMediaServicesForHome:v28];

  [(HUEditLocationViewController *)self prefetchActivityLogEventsIfNecessary];
}

void __43__HUEditLocationViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_ERROR, "Failed to initiate home data sync with error: %@", &v4, 0xCu);
    }
  }
}

- (void)scrollToNotificationTopicsAnimated:(BOOL)a3
{
  v5 = [(HUEditLocationViewController *)self homeItemManager];
  v6 = [v5 firstFastUpdateFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HUEditLocationViewController_scrollToNotificationTopicsAnimated___block_invoke;
  v8[3] = &unk_277DBE028;
  v8[4] = self;
  v9 = a3;
  v7 = [v6 addSuccessBlock:v8];
}

void __67__HUEditLocationViewController_scrollToNotificationTopicsAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homeItemManager];
  v3 = +[HUUserNotificationTopicListModule sectionID];
  v4 = [v2 sectionIndexForDisplayedSectionIdentifier:v3];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [*(a1 + 32) homeItemManager];
    v6 = [v5 displayedItemsInSection:v4];
    v8 = [v6 firstObject];

    v7 = v8;
    if (v8)
    {
      [*(a1 + 32) scrollToItem:v8 animated:*(a1 + 40)];
      v7 = v8;
    }
  }
}

- (id)presentNotificationSettingsForTopic:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self hu_preloadContent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HUEditLocationViewController_presentNotificationSettingsForTopic_animated___block_invoke;
  v11[3] = &unk_277DB7830;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [v7 flatMap:v11];

  return v9;
}

id __77__HUEditLocationViewController_presentNotificationSettingsForTopic_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationTopicModuleController];
  v3 = [v2 presentNotificationSettingsForTopic:*(a1 + 40) animated:*(a1 + 48)];

  return v3;
}

- (id)showNotificationSettingsForHomeKitObject:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self hu_preloadContent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__HUEditLocationViewController_showNotificationSettingsForHomeKitObject_animated___block_invoke;
  v11[3] = &unk_277DB7830;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [v7 flatMap:v11];

  return v9;
}

id __82__HUEditLocationViewController_showNotificationSettingsForHomeKitObject_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationTopicModuleController];
  v3 = [v2 showNotificationSettingsForHomeKitObject:*(a1 + 40) animated:*(a1 + 48)];

  return v3;
}

- (id)presentNetworkSettings:(BOOL)a3
{
  v5 = [(HUItemTableViewController *)self hu_preloadContent];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HUEditLocationViewController_presentNetworkSettings___block_invoke;
  v8[3] = &unk_277DBE050;
  v8[4] = self;
  v9 = a3;
  v6 = [v5 flatMap:v8];

  return v6;
}

id __55__HUEditLocationViewController_presentNetworkSettings___block_invoke(uint64_t a1)
{
  v2 = [HUNetworkRouterSettingsViewController alloc];
  v3 = [*(a1 + 32) homeBuilder];
  v4 = [v3 home];
  v5 = [(HUNetworkRouterSettingsViewController *)v2 initWithHome:v4];

  v6 = [*(a1 + 32) navigationController];
  v7 = [v6 hu_pushPreloadableViewController:v5 animated:*(a1 + 40)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HUEditLocationViewController_presentNetworkSettings___block_invoke_2;
  v11[3] = &unk_277DBAFF8;
  v12 = v5;
  v8 = v5;
  v9 = [v7 flatMap:v11];

  return v9;
}

- (id)presentBridgeSettings:(BOOL)a3
{
  v5 = [(HUItemTableViewController *)self hu_preloadContent];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HUEditLocationViewController_presentBridgeSettings___block_invoke;
  v8[3] = &unk_277DBE050;
  v8[4] = self;
  v9 = a3;
  v6 = [v5 flatMap:v8];

  return v6;
}

id __54__HUEditLocationViewController_presentBridgeSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homeBuilder];
  v3 = [v2 home];
  v4 = [_TtC6HomeUI24HomeHubsAndBridgesHelper createHomeHubsAndBridgesListViewHostingControllerWithHome:v3];

  v5 = [*(a1 + 32) navigationController];
  v6 = [v5 hu_pushPreloadableViewController:v4 animated:*(a1 + 40)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HUEditLocationViewController_presentBridgeSettings___block_invoke_2;
  v10[3] = &unk_277DBAFF8;
  v11 = v4;
  v7 = v4;
  v8 = [v6 flatMap:v10];

  return v8;
}

- (id)presentSoftwareUpdate:(BOOL)a3
{
  v5 = [(HUItemTableViewController *)self hu_preloadContent];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HUEditLocationViewController_presentSoftwareUpdate___block_invoke;
  v8[3] = &unk_277DBE050;
  v8[4] = self;
  v9 = a3;
  v6 = [v5 flatMap:v8];

  return v6;
}

id __54__HUEditLocationViewController_presentSoftwareUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homeBuilder];
  v3 = [v2 home];
  v4 = [v3 hf_shouldShowSoftwareUpdateSettings];

  if (v4)
  {
    v5 = [HUSoftwareUpdateStandaloneViewController alloc];
    v6 = [*(a1 + 32) homeBuilder];
    v7 = [v6 home];
    v8 = [(HUSoftwareUpdateStandaloneViewController *)v5 initWithHome:v7];

    v9 = [*(a1 + 32) navigationController];
    v10 = [v9 hu_pushPreloadableViewController:v8 animated:*(a1 + 40)];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__HUEditLocationViewController_presentSoftwareUpdate___block_invoke_2;
    v15[3] = &unk_277DBAFF8;
    v16 = v8;
    v11 = v8;
    v12 = [v10 flatMap:v15];
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    v9 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v12 = [v13 futureWithError:v9];
  }

  return v12;
}

- (id)presentPersonalRequestsSettings:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self hu_preloadContent];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HUEditLocationViewController_presentPersonalRequestsSettings___block_invoke;
  v9[3] = &unk_277DBE0A0;
  v10 = v4;
  v11 = self;
  v6 = v4;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __64__HUEditLocationViewController_presentPersonalRequestsSettings___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D14C98]);
  v3 = *(a1 + 32);
  v4 = [v3 currentUser];
  v5 = [v2 initWithHome:v3 user:v4 nameStyle:0];

  v6 = [HUEditUserViewController alloc];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) homeItemManager];
  v9 = [v8 pinCodeManager];
  v10 = [(HUEditUserViewController *)v6 initWithItem:v5 home:v7 pinCodeManager:v9];

  v11 = [*(a1 + 40) navigationController];
  v12 = [v11 hu_pushPreloadableViewController:v10 animated:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__HUEditLocationViewController_presentPersonalRequestsSettings___block_invoke_2;
  v17[3] = &unk_277DBE078;
  v13 = *(a1 + 40);
  v18 = v5;
  v19 = v13;
  v14 = v5;
  v15 = [v12 flatMap:v17];

  return v15;
}

id __64__HUEditLocationViewController_presentPersonalRequestsSettings___block_invoke_2(uint64_t a1)
{
  v2 = [[HUPersonalRequestsEditorTableViewController alloc] initWithUserItem:*(a1 + 32) onlyShowDeviceSwitches:0];
  v3 = [*(a1 + 40) navigationController];
  v4 = [v3 hu_pushPreloadableViewController:v2 animated:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HUEditLocationViewController_presentPersonalRequestsSettings___block_invoke_3;
  v8[3] = &unk_277DBAFF8;
  v9 = v2;
  v5 = v2;
  v6 = [v4 flatMap:v8];

  return v6;
}

- (id)presentUserViewController:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self hu_preloadContent];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HUEditLocationViewController_presentUserViewController___block_invoke;
  v9[3] = &unk_277DBE0A0;
  v10 = v4;
  v11 = self;
  v6 = v4;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __58__HUEditLocationViewController_presentUserViewController___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v3 = [v2 allHomesFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HUEditLocationViewController_presentUserViewController___block_invoke_2;
  v8[3] = &unk_277DBB198;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = [v3 flatMap:v8];

  return v6;
}

id __58__HUEditLocationViewController_presentUserViewController___block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = a2;
  v27 = [v3 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v27)
  {
    v4 = *v35;
    v29 = v3;
    v26 = *v35;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v35 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v34 + 1) + 8 * i);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v28 = v6;
        v7 = [v6 hf_allUsersIncludingCurrentUser];
        v8 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v31;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v31 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v30 + 1) + 8 * j);
              v13 = [v12 uniqueIdentifier];
              v14 = [*(a1 + 32) uniqueIdentifier];
              v15 = [v13 hmf_isEqualToUUID:v14];

              if (v15)
              {
                v19 = [objc_alloc(MEMORY[0x277D14C98]) initWithHome:v28 user:v12 nameStyle:0];
                v20 = [HUEditUserViewController alloc];
                v21 = [*(a1 + 40) homeItemManager];
                v22 = [v21 pinCodeManager];
                v23 = [(HUEditUserViewController *)v20 initWithItem:v19 home:v28 pinCodeManager:v22];

                v24 = [*(a1 + 40) navigationController];
                v18 = [v24 hu_pushPreloadableViewController:v23 animated:0];

                v3 = v29;
                v17 = v29;
                goto LABEL_18;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v4 = v26;
        v3 = v29;
      }

      v27 = [v29 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v27);
  }

  v16 = MEMORY[0x277D2C900];
  v17 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
  v18 = [v16 futureWithError:v17];
LABEL_18:

  return v18;
}

- (id)presentRestrictedGuestLockSettings
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v28 = self;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@ Presenting lock category settings for restricted guest.", buf, 0x16u);
  }

  v6 = [(HUEditLocationViewController *)self homeItemManager];
  v7 = [v6 home];

  v8 = [v7 currentUser];
  v9 = objc_alloc(MEMORY[0x277D14C98]);
  v10 = [v7 currentUser];
  v11 = [v9 initWithHome:v7 user:v10 nameStyle:0];

  v12 = [(HUEditLocationViewController *)self homeItemManager];
  v13 = [v12 pinCodeManager];

  objc_initWeak(buf, self);
  v14 = [v13 userPinCodes];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__HUEditLocationViewController_presentRestrictedGuestLockSettings__block_invoke;
  v21[3] = &unk_277DBE0C8;
  objc_copyWeak(v26, buf);
  v15 = v8;
  v22 = v15;
  v26[1] = a2;
  v16 = v7;
  v23 = v16;
  v17 = v13;
  v24 = v17;
  v18 = v11;
  v25 = v18;
  v19 = [v14 addSuccessBlock:v21];

  objc_destroyWeak(v26);
  objc_destroyWeak(buf);

  return v14;
}

void __66__HUEditLocationViewController_presentRestrictedGuestLockSettings__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__HUEditLocationViewController_presentRestrictedGuestLockSettings__block_invoke_2;
  v13[3] = &unk_277DBC528;
  v14 = *(a1 + 32);
  v5 = [v3 na_firstObjectPassingTest:v13];

  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(*(a1 + 72));
      *buf = 138412546;
      v16 = WeakRetained;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Found matching PIN code for user.", buf, 0x16u);
    }

    v8 = [objc_alloc(MEMORY[0x277D14920]) initWithPinCode:v5 inHome:*(a1 + 40) onAccessory:0];
    v9 = [[HUPinCodeDetailsViewController alloc] initWithItem:v8 pinCodeManager:*(a1 + 48) home:*(a1 + 40)];
  }

  else
  {
    v9 = [[HUPinCodeDetailsViewController alloc] initWithItem:*(a1 + 56) pinCodeManager:*(a1 + 48) home:*(a1 + 40)];
  }

  v10 = _HULocalizedStringWithDefaultValue(@"HUUsersLocksTitle", @"HUUsersLocksTitle", 1);
  [(HUPinCodeDetailsViewController *)v9 setTitle:v10];

  v11 = [WeakRetained navigationController];
  v12 = [v11 hu_pushPreloadableViewController:v9 animated:1];
}

uint64_t __66__HUEditLocationViewController_presentRestrictedGuestLockSettings__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 userLabel];
  v4 = [v3 user];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (id)presentUserLockSettings:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self hu_preloadContent];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HUEditLocationViewController_presentUserLockSettings___block_invoke;
  v9[3] = &unk_277DBE0A0;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __56__HUEditLocationViewController_presentUserLockSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homeItemManager];
  v3 = [v2 pinCodeManager];

  v4 = objc_alloc(MEMORY[0x277D14C98]);
  v5 = *(a1 + 40);
  v6 = [v5 currentUser];
  v7 = [v4 initWithHome:v5 user:v6 nameStyle:0];

  v8 = [[HUEditUserViewController alloc] initWithItem:v7 home:*(a1 + 40) pinCodeManager:v3];
  v9 = [v3 refreshDataStore];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__HUEditLocationViewController_presentUserLockSettings___block_invoke_2;
  v15[3] = &unk_277DBE0F0;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v16 = v10;
  v17 = v11;
  v18 = v8;
  v12 = v8;
  v13 = [v9 flatMap:v15];

  return v13;
}

id __56__HUEditLocationViewController_presentUserLockSettings___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentUser];
  LODWORD(v2) = [v2 hf_userIsRestrictedGuest:v3];

  v4 = *(a1 + 40);
  if (v2)
  {
    v5 = [v4 presentRestrictedGuestLockSettings];
  }

  else
  {
    v6 = [v4 navigationController];
    v7 = [v6 hu_pushPreloadableViewController:*(a1 + 48) animated:0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__HUEditLocationViewController_presentUserLockSettings___block_invoke_3;
    v9[3] = &unk_277DBA338;
    v10 = *(a1 + 48);
    v5 = [v7 addSuccessBlock:v9];
  }

  return v5;
}

- (id)presentDefaultMediaServiceSettings:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self hu_preloadContent];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HUEditLocationViewController_presentDefaultMediaServiceSettings___block_invoke;
  v9[3] = &unk_277DBE0A0;
  v10 = v4;
  v11 = self;
  v6 = v4;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __67__HUEditLocationViewController_presentDefaultMediaServiceSettings___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D14C98]);
  v3 = *(a1 + 32);
  v4 = [v3 currentUser];
  v5 = [v2 initWithHome:v3 user:v4 nameStyle:0];

  v6 = [HUEditUserViewController alloc];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) homeItemManager];
  v9 = [v8 pinCodeManager];
  v10 = [(HUEditUserViewController *)v6 initWithItem:v5 home:v7 pinCodeManager:v9];

  v11 = [*(a1 + 40) navigationController];
  v12 = [v11 hu_pushPreloadableViewController:v10 animated:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__HUEditLocationViewController_presentDefaultMediaServiceSettings___block_invoke_2;
  v16[3] = &unk_277DBA338;
  v17 = v10;
  v13 = v10;
  v14 = [v12 addSuccessBlock:v16];

  return v14;
}

- (void)addButtonPressed:(id)a3
{
  v4 = [(HUEditLocationViewController *)self addLocationDelegate];
  [v4 editLocationViewControllerWouldPresentAddController:self];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(HUEditLocationViewController *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    v8 = [(HUEditLocationViewController *)self tableView];
    [v8 reloadData];
  }
}

- (void)updateAndCommitHomeName
{
  v3 = [(HUEditLocationViewController *)self editedName];
  v4 = [(HUEditLocationViewController *)self updateBuilderName:v3];

  if (v4)
  {
    v5 = [(HUEditLocationViewController *)self homeBuilder];
    v6 = [v5 commitItem];

    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__HUEditLocationViewController_updateAndCommitHomeName__block_invoke;
    v8[3] = &unk_277DB94D0;
    objc_copyWeak(&v9, &location);
    v7 = [v6 addFailureBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __55__HUEditLocationViewController_updateAndCommitHomeName__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "HUEditLocationViewController: Failed to update home name from settings", buf, 2u);
  }

  v6 = [MEMORY[0x277D14640] sharedHandler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HUEditLocationViewController_updateAndCommitHomeName__block_invoke_119;
  v7[3] = &unk_277DB8488;
  v7[4] = WeakRetained;
  [v6 handleError:v3 retryBlock:v7 cancelBlock:0];
}

- (void)updateAndCommitNotes
{
  v3 = [(HUEditLocationViewController *)self editedNotes];
  v4 = [(HUEditLocationViewController *)self updateBuilderNotes:v3];

  if (v4)
  {
    v5 = [(HUEditLocationViewController *)self homeBuilder];
    v7 = [v5 commitItem];

    v6 = [v7 addFailureBlock:&__block_literal_global_122_0];
  }
}

void __52__HUEditLocationViewController_updateAndCommitNotes__block_invoke()
{
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_ERROR, "HUEditLocationViewController: Failed to update notes from settings", v1, 2u);
  }
}

- (BOOL)updateBuilderNotes:(id)a3
{
  v4 = a3;
  v5 = [(HUEditLocationViewController *)self homeBuilder];
  v6 = [v5 userNotes];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [(HUEditLocationViewController *)self editedNotes];
    v9 = [(HUEditLocationViewController *)self homeBuilder];
    [v9 setUserNotes:v8];
  }

  return v7 ^ 1;
}

- (BOOL)updateBuilderName:(id)a3
{
  v4 = [MEMORY[0x277D14CE8] sanitizeUserEnteredHomeKitName:a3];
  if (![v4 length])
  {
    v5 = [(HUEditLocationViewController *)self homeBuilder];
    v6 = [v5 name];

    v4 = v6;
  }

  v7 = [(HUEditLocationViewController *)self homeBuilder];
  v8 = [v7 name];
  v9 = [v4 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [(HUEditLocationViewController *)self nameCell];
    v11 = [v10 textField];
    [v11 setText:v4];

    [(HUEditLocationViewController *)self setTitle:v4];
    v12 = [(HUEditLocationViewController *)self homeBuilder];
    [v12 setName:v4];
  }

  return v9 ^ 1;
}

- (void)dismissAndCommitChanges
{
  v3 = [(HUEditLocationViewController *)self nameCell];
  v4 = [v3 textField];
  v5 = [v4 isEditing];

  if (v5)
  {
    v18 = [(HUEditLocationViewController *)self nameCell];
    [v18 endEditing:1];
LABEL_5:

    return;
  }

  v6 = [(HUEditLocationViewController *)self detailNotesCell];
  v7 = [v6 isTextViewFirstResponder];

  if (v7)
  {
    v18 = [(HUEditLocationViewController *)self detailNotesCell];
    [v18 resignTextViewAsFirstResponder];
    goto LABEL_5;
  }

  v8 = [(HUEditLocationViewController *)self editedName];
  v9 = [(HUEditLocationViewController *)self updateBuilderName:v8];

  v10 = [(HUEditLocationViewController *)self editedNotes];
  v11 = [(HUEditLocationViewController *)self updateBuilderNotes:v10];

  if ((v9 & 1) != 0 || v11)
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "HUEditLocationViewController: Uncommitted changes detected on dismissal, comitting changes", buf, 2u);
    }

    v13 = [(HUEditLocationViewController *)self homeBuilder];
    v14 = [v13 commitItem];

    v15 = [v14 addFailureBlock:&__block_literal_global_124_1];
  }

  v16 = [(HUEditLocationViewController *)self presentationDelegate];
  v17 = [v16 finishPresentation:self animated:1];
}

void __55__HUEditLocationViewController_dismissAndCommitChanges__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = [v2 localizedDescription];
    v6 = 138412290;
    v7 = v5;
    _os_log_error_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_ERROR, "HUEditLocationViewController: Failed to update home name and/or notes on dismissal of settings %@", &v6, 0xCu);
  }

  v4 = [MEMORY[0x277D14640] sharedHandler];
  [v4 handleError:v2 retryBlock:0 cancelBlock:0];
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v5 = a3;
  v6 = [(HUEditLocationViewController *)self homeItemManager];
  v7 = [v6 notificationSettingsModule];

  if (v7 == v5)
  {
    v12 = [(HUItemModuleController *)[HUUserNotificationTopicListModuleController alloc] initWithModule:v5];
    [(HUEditLocationViewController *)self setNotificationTopicModuleController:v12];

    v13 = [(HUEditLocationViewController *)self homeItemManager];
    v14 = [v13 pinCodeManager];
    v15 = [(HUEditLocationViewController *)self notificationTopicModuleController];
    [v15 setPinCodeManager:v14];

    v16 = [(HUEditLocationViewController *)self notificationTopicModuleController];
  }

  else
  {
    v8 = [(HUEditLocationViewController *)self homeItemManager];
    v9 = [v8 connectedServicesItemModule];

    if (v9 != v5)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"HUEditLocationViewController.m" lineNumber:510 description:{@"Unknown module %@", v5}];

      v11 = 0;
      goto LABEL_7;
    }

    v17 = [(HUItemModuleController *)[HUMatterConnectedServicesItemModuleController alloc] initWithModule:v5];
    [(HUEditLocationViewController *)self setConnectedServicesItemModuleController:v17];

    v16 = [(HUEditLocationViewController *)self connectedServicesItemModuleController];
  }

  v11 = v16;
LABEL_7:

  return v11;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = [(HUEditLocationViewController *)self homeItemManager];
  v8 = [v7 nameItem];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    goto LABEL_7;
  }

  v10 = [(HUEditLocationViewController *)self homeItemManager];
  v11 = [v10 inviteUsersItem];
  v12 = [v6 isEqual:v11];

  if (v12)
  {
    goto LABEL_7;
  }

  v13 = [(HUEditLocationViewController *)self homeItemManager];
  v14 = [v13 chooseWallpaperItem];
  if ([v6 isEqual:v14])
  {
    goto LABEL_5;
  }

  v15 = [(HUEditLocationViewController *)self homeItemManager];
  v16 = [v15 allowedAccessoryCategoryItemProvider];
  v17 = [v16 items];
  v18 = [v17 containsObject:v6];

  if (v18)
  {
    goto LABEL_7;
  }

  v21 = [(HUEditLocationViewController *)self homeItemManager];
  v22 = [v21 homeScheduleItem];
  v23 = [v6 isEqual:v22];

  if (v23)
  {
    goto LABEL_7;
  }

  v24 = [(HUEditLocationViewController *)self homeItemManager];
  v25 = [v24 wallpaperThumbnailItem];
  v26 = [v6 isEqual:v25];

  if (v26)
  {
    goto LABEL_7;
  }

  v27 = [(HUEditLocationViewController *)self homeItemManager];
  v28 = [v27 wallpaperPickerItem];
  v29 = [v6 isEqual:v28];

  if (v29)
  {
    goto LABEL_7;
  }

  v30 = [(HUEditLocationViewController *)self homeItemManager];
  v31 = [v30 detailNotesItem];
  v32 = [v6 isEqual:v31];

  if (v32)
  {
    goto LABEL_7;
  }

  v33 = [(HUEditLocationViewController *)self homeItemManager];
  v34 = [v33 softwareUpdateItem];
  v35 = [v6 isEqual:v34];

  if (v35)
  {
    goto LABEL_7;
  }

  v36 = [(HUEditLocationViewController *)self homeItemManager];
  v37 = [v36 showPredictedScenes];
  v38 = [v6 isEqual:v37];

  if (v38)
  {
    goto LABEL_7;
  }

  v13 = [(HUEditLocationViewController *)self homeItemManager];
  v14 = [v13 cameraItem];
  if ([v6 isEqual:v14])
  {
LABEL_5:

LABEL_7:
    v19 = objc_opt_class();
    goto LABEL_8;
  }

  v39 = [(HUEditLocationViewController *)self homeItemManager];
  v40 = [v39 removeItem];
  v41 = [v6 isEqual:v40];

  if (v41)
  {
    goto LABEL_7;
  }

  v42 = [(HUEditLocationViewController *)self homeItemManager];
  v43 = [v42 soundCheckItem];
  v44 = [v6 isEqual:v43];

  if (v44)
  {
    goto LABEL_7;
  }

  v45 = [(HUEditLocationViewController *)self homeItemManager];
  v46 = [v45 userItemProvider];
  v47 = [v46 items];
  if ([v47 containsObject:v6])
  {

    goto LABEL_7;
  }

  v48 = [(HUEditLocationViewController *)self homeItemManager];
  v49 = [v48 inviteItemProvider];
  v50 = [v49 items];
  v51 = [v50 containsObject:v6];

  if (v51)
  {
    goto LABEL_7;
  }

  v52 = [(HUEditLocationViewController *)self homeItemManager];
  v53 = [v52 guestsItem];
  v54 = [v6 isEqual:v53];

  if (v54)
  {
    goto LABEL_7;
  }

  v55 = [(HUEditLocationViewController *)self homeItemManager];
  v56 = [v55 locationServicesSettingItem];
  v57 = [v6 isEqual:v56];

  if (v57)
  {
    goto LABEL_7;
  }

  v58 = [(HUEditLocationViewController *)self homeItemManager];
  v59 = [v58 siriTriggerPhraseSettingItem];
  v60 = [v6 isEqual:v59];

  if (v60)
  {
    goto LABEL_7;
  }

  v61 = [MEMORY[0x277CCA890] currentHandler];
  [v61 handleFailureInMethod:a2 object:self file:@"HUEditLocationViewController.m" lineNumber:583 description:{@"Couldn't find a cell class for item: %@", v6}];

  v19 = 0;
LABEL_8:

  return v19;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  v147 = v8;
  if (objc_opt_isKindOfClass())
  {
    v11 = v147;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [(HUEditLocationViewController *)self homeItemManager];
  v14 = [v13 chooseWallpaperItem];
  if ([v9 isEqual:v14])
  {

LABEL_7:
    v19 = v147;
    [v19 setAccessoryView:0];
    [v19 setAccessoryType:1];
    [v19 setHideIcon:1];
    v20 = [(HUEditLocationViewController *)self homeItemManager];
    v21 = [v20 allowedAccessoryCategoryItemProvider];
    v22 = [v21 items];
    v23 = [v22 containsObject:v9];

    v24 = v12;
    if (!v23)
    {
LABEL_10:

      goto LABEL_11;
    }

    [v19 setHideIcon:0];
    v25 = +[HUIconCellContentMetrics compactMetrics];
    [v19 setContentMetrics:v25];
LABEL_9:

    goto LABEL_10;
  }

  v15 = [(HUEditLocationViewController *)self homeItemManager];
  v16 = [v15 allowedAccessoryCategoryItemProvider];
  [v16 items];
  v17 = v146 = v10;
  v18 = [v17 containsObject:v9];

  v10 = v146;
  if (v18)
  {
    goto LABEL_7;
  }

  v26 = [(HUEditLocationViewController *)self homeItemManager];
  v27 = [v26 homeScheduleItem];
  v28 = [v9 isEqual:v27];

  if (v28)
  {
    v29 = v147;
    [v29 setIconDisplayStyle:1];
    [v29 setDisableContinuousIconAnimation:1];
    HUDefaultSizeForIconSize();
    v31 = v30;
    v33 = v32;
    v34 = [v29 contentMetrics];
    [v34 setIconSize:{v31, v33}];

    [v29 setAccessoryView:0];
    [v29 setAccessoryType:1];
    v35 = [v9 latestResults];
    v36 = [v35 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v29 setAccessibilityIdentifier:v36];
LABEL_16:

LABEL_17:
    v24 = v12;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = [(HUEditLocationViewController *)self homeItemManager];
    v38 = [v37 nameItem];
    v39 = [v9 isEqual:v38];

    v24 = v12;
    if (!v39)
    {
      goto LABEL_11;
    }

    [(HUEditLocationViewController *)self setNameCell:v147];
    v40 = [(HUEditLocationViewController *)self nameCell];
    [v40 setAccessibilityIdentifier:@"Home.HomeSettings.HomeName"];
    goto LABEL_21;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v42 = [(HUEditLocationViewController *)self homeItemManager];
  v43 = v42;
  if (isKindOfClass)
  {
    v44 = [v42 detailNotesItem];
    v45 = [v9 isEqual:v44];

    v24 = v12;
    if (v45)
    {
      [(HUEditLocationViewController *)self setDetailNotesCell:v147];
      v46 = [(HUEditLocationViewController *)self detailNotesCell];
      [v46 setTextViewDelegate:self];

      v47 = [v9 latestResults];
      v48 = [v47 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      v49 = [(HUEditLocationViewController *)self detailNotesCell];
      [v49 setAccessibilityIdentifier:v48];

      v19 = [(HUEditLocationViewController *)self detailNotesCell];
      v25 = [(HUEditLocationViewController *)self homeBuilder];
      v50 = [v25 home];
      [v19 setEditEnabled:{objc_msgSend(v50, "hf_currentUserIsAdministrator")}];

      goto LABEL_9;
    }
  }

  else
  {
    v51 = [v42 siriTriggerPhraseSettingItem];
    v52 = [v9 isEqual:v51];

    if (v52)
    {
      v53 = v147;
      v54 = [(HUItemTableViewController *)self itemManager];
      v55 = [v54 titleForSection:{objc_msgSend(v146, "section")}];

      [v53 setAccessoryType:1];
      [v53 setHideIcon:1];
      v56 = +[HUIconCellContentMetrics compactMetrics];
      [v53 setContentMetrics:v56];

      goto LABEL_17;
    }

    v57 = [(HUEditLocationViewController *)self homeItemManager];
    v58 = [v57 softwareUpdateItem];
    v59 = [v9 isEqual:v58];

    if (v59)
    {
      v29 = v147;
      [v29 setAccessoryType:1];
      v60 = +[HUIconCellContentMetrics compactMetrics];
      [v29 setContentMetrics:v60];

      v35 = [v9 latestResults];
      v36 = [v35 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
      [v29 setHideIcon:v36 == 0];
      goto LABEL_16;
    }

    v61 = [(HUEditLocationViewController *)self homeItemManager];
    v62 = [v61 wallpaperThumbnailItem];
    v63 = [v9 isEqual:v62];

    if (v63)
    {
      v64 = objc_opt_class();
      v65 = v147;
      if (v65)
      {
        if (objc_opt_isKindOfClass())
        {
          v66 = v65;
        }

        else
        {
          v66 = 0;
        }

        v67 = v65;
        v24 = v12;
        if (!v66)
        {
          v68 = [MEMORY[0x277CCA890] currentHandler];
          v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
          [v68 handleFailureInFunction:v69 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v64, objc_opt_class()}];

          v67 = 0;
        }
      }

      else
      {
        v67 = 0;
        v24 = v12;
      }

      v98 = [v9 latestResults];
      v99 = [v98 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v67 setAccessibilityIdentifier:v99];

      [v67 setDelegate:self];
      goto LABEL_11;
    }

    v70 = [(HUEditLocationViewController *)self homeItemManager];
    v71 = [v70 wallpaperPickerItem];
    v72 = [v9 isEqual:v71];

    if (v72)
    {
      v73 = v147;
      v74 = [(HUEditLocationViewController *)self wallpaperPickerViewController];
      [v73 setViewController:v74];

      v75 = [(HUEditLocationViewController *)self wallpaperPickerViewController];
      [v75 setDelegate:self];

      v76 = [MEMORY[0x277D14D18] sharedInstance];
      v77 = [v76 allNamedWallpapersForWallpaperCollectionType:0];
      v78 = [(HUEditLocationViewController *)self wallpaperPickerViewController];
      [v78 setNamedWallpapers:v77];

      v35 = [MEMORY[0x277D14D18] sharedInstance];
      v36 = [v35 allNamedWallpaperThumbnailsForWallpaperCollectionType:0];
      v29 = [(HUEditLocationViewController *)self wallpaperPickerViewController];
      [v29 setNamedWallpaperThumbnails:v36];
      goto LABEL_16;
    }

    v79 = [(HUEditLocationViewController *)self homeItemManager];
    v80 = [v79 inviteUsersItem];
    v81 = [v9 isEqual:v80];

    if (v81)
    {
      v19 = [v147 defaultContentConfiguration];
      v82 = [v9 latestResults];
      v83 = [v82 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [v19 setText:v83];

      v84 = MEMORY[0x277D755B8];
      v85 = [(HUEditLocationViewController *)self homeItemManager];
      v86 = [v85 inviteUsersItem];
      v87 = [v86 latestResults];
      v88 = [v87 objectForKeyedSubscript:*MEMORY[0x277D13EA0]];
      v89 = [v84 systemImageNamed:v88];
      [v19 setImage:v89];

      v90 = [v9 latestResults];
      v91 = [v90 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v147 setAccessibilityIdentifier:v91];

      v92 = [v9 latestResults];
      v93 = [v92 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
      LODWORD(v86) = [v93 BOOLValue];

      if (v86)
      {
        v94 = [MEMORY[0x277D75348] systemGrayColor];
        v95 = [v19 textProperties];
        [v95 setColor:v94];

        v96 = [MEMORY[0x277D75348] systemGrayColor];
        v97 = [v19 imageProperties];
        [v97 setTintColor:v96];
      }

      else
      {
        v102 = [MEMORY[0x277D75348] hf_keyColor];
        v103 = [v19 textProperties];
        [v103 setColor:v102];

        v96 = [v19 imageProperties];
        [v96 setTintColor:0];
      }

      v10 = v146;
      v24 = v12;

      v104 = *MEMORY[0x277D76C88];
      v105 = [v19 imageProperties];
      [v105 setReservedLayoutSize:{37.0, v104}];

      [v147 setContentConfiguration:v19];
      goto LABEL_10;
    }

    v100 = [(HUEditLocationViewController *)self homeItemManager];
    v101 = [v100 cameraItem];
    if ([v9 isEqual:v101])
    {
    }

    else
    {
      v106 = [(HUEditLocationViewController *)self homeItemManager];
      v107 = [v106 removeItem];
      v108 = [v9 isEqual:v107];

      if (!v108)
      {
        v120 = [(HUEditLocationViewController *)self homeItemManager];
        v121 = [v120 soundCheckItem];
        v122 = [v9 isEqual:v121];

        if (v122)
        {
          v10 = v146;
          if (!v12)
          {
            v143 = [MEMORY[0x277CCA890] currentHandler];
            v144 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HUEditLocationViewController setupCell:forItem:indexPath:]"];
            v145 = objc_opt_class();
            [v143 handleFailureInFunction:v144 file:@"HUEditLocationViewController.m" lineNumber:694 description:{@"Expected class of %@ but was %@", v145, objc_opt_class()}];
          }

          [v12 setDelegate:self];
          goto LABEL_17;
        }

        v123 = [(HUEditLocationViewController *)self homeItemManager];
        v124 = [v123 userItemProvider];
        v125 = [v124 items];
        if ([v125 containsObject:v9])
        {
        }

        else
        {
          v126 = [(HUEditLocationViewController *)self homeItemManager];
          v127 = [v126 inviteItemProvider];
          v128 = [v127 items];
          v129 = [v128 containsObject:v9];

          if (!v129)
          {
            v10 = v146;
            v24 = v12;
            if (v12)
            {
              v137 = [v12 item];
              v138 = [(HUEditLocationViewController *)self homeItemManager];
              v139 = [v138 showPredictedScenes];
              v140 = [v137 isEqual:v139];

              if (v140)
              {
                v141 = [v9 latestResults];
                v142 = [v141 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
                [v12 setAccessibilityIdentifier:v142];
              }

              v24 = v12;
              [v12 setDelegate:self];
              v10 = v146;
            }

            goto LABEL_11;
          }
        }

        [v147 setAccessoryType:1];
        objc_opt_class();
        v130 = v147;
        if (objc_opt_isKindOfClass())
        {
          v131 = v130;
        }

        else
        {
          v131 = 0;
        }

        v132 = v131;

        [v132 setShowAccessLevelDescription:1];
        v133 = [v9 latestResults];
        v134 = [v133 objectForKeyedSubscript:*MEMORY[0x277D14120]];

        if (v134)
        {
          [v132 setUserHandle:v134];
          v135 = [v9 latestResults];
          v136 = [v135 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
          [v132 setAccessibilityIdentifier:v136];
        }

        v10 = v146;
        goto LABEL_17;
      }
    }

    v109 = [v147 imageView];
    [v109 setImage:0];

    [v147 setIndentationLevel:0];
    v110 = [(HUEditLocationViewController *)self homeItemManager];
    v111 = [v110 cameraItem];
    v112 = [v9 isEqual:v111];

    if (v112)
    {
      v113 = [v9 latestResults];
      v114 = [v113 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v147 setAccessibilityIdentifier:v114];
    }

    v19 = [(HUEditLocationViewController *)self homeItemManager];
    v115 = [v19 removeItem];
    v10 = v146;
    v24 = v12;
    if (([v9 isEqual:v115] & 1) == 0)
    {

      goto LABEL_10;
    }

    v116 = [(HUEditLocationViewController *)self homeItemManager];
    v117 = [v116 home];
    v118 = [v117 hf_currentUserIsOwner];

    if (v118)
    {
      v40 = [v9 latestResults];
      v119 = [v40 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v147 setAccessibilityIdentifier:v119];

LABEL_21:
    }
  }

LABEL_11:
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HUEditLocationViewController *)self homeItemManager];
  v14 = [v13 wallpaperThumbnailItem];
  v15 = [v11 isEqual:v14];

  if (v15)
  {
    v16 = v10;
    v17 = [MEMORY[0x277D759A0] mainScreen];
    [v17 bounds];
    v19 = v18;
    v20 = [MEMORY[0x277D759A0] mainScreen];
    [v20 bounds];
    v22 = v19 / v21;

    [v16 setImageSize:round(v22 * 244.0)];
    v23 = [(HUEditLocationViewController *)self homeBuilder];
    v24 = [v23 wallpaperBuilder];
    v25 = [v24 wallpaperEditCollectionFuture];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __70__HUEditLocationViewController_updateCell_forItem_indexPath_animated___block_invoke;
    v82[3] = &unk_277DBE118;
    v83 = v16;
    v26 = v16;
    v27 = [v25 addSuccessBlock:v82];
  }

  else
  {
    v28 = [(HUEditLocationViewController *)self homeItemManager];
    v29 = [v28 wallpaperPickerItem];
    v30 = [v11 isEqual:v29];

    if (v30)
    {
      v31 = [(HUEditLocationViewController *)self wallpaperPickerViewController];
      v32 = [(HUEditLocationViewController *)self tableView];
      [v32 frame];
      [v31 setImageSizeToFitWidth:3 forNumberOfWallpapers:v33];

      v26 = [(HUEditLocationViewController *)self homeBuilder];
      v34 = [v26 wallpaperBuilder];
      v35 = [v34 wallpaperEditCollectionFuture];
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __70__HUEditLocationViewController_updateCell_forItem_indexPath_animated___block_invoke_2;
      v80[3] = &unk_277DBE140;
      v80[4] = self;
      v81 = v6;
      v36 = [v35 addSuccessBlock:v80];
    }

    else
    {
      v37 = [(HUEditLocationViewController *)self homeItemManager];
      v38 = [v37 detailNotesItem];
      v39 = [v11 isEqual:v38];

      if (v39)
      {
        v40 = v10;
        v41 = [(HUEditLocationViewController *)self editedNotes];
        [v40 setText:v41];

        v42 = [(HUEditLocationViewController *)self homeBuilder];
        v43 = [v42 home];
        [v40 setEditEnabled:{objc_msgSend(v43, "hf_currentUserIsAdministrator")}];

        v44 = [v11 latestResults];
        v45 = [v44 objectForKeyedSubscript:*MEMORY[0x277D13F70]];
        [v40 setPlaceholderText:v45];

        goto LABEL_7;
      }

      v46 = [(HUEditLocationViewController *)self homeItemManager];
      v47 = [v46 removeItem];
      v48 = [v11 isEqual:v47];

      if (v48)
      {
        [v10 setDestructive:1];
        goto LABEL_7;
      }

      v49 = [(HUEditLocationViewController *)self homeItemManager];
      v50 = [v49 soundCheckItem];
      v51 = [v11 isEqual:v50];

      if (v51)
      {
        v26 = v10;
        v52 = [v11 latestResults];
        v53 = [v52 objectForKeyedSubscript:*MEMORY[0x277D14068]];
        v54 = [v53 integerValue] == 2;

        [v26 setOn:v54 animated:1];
        goto LABEL_6;
      }

      v55 = [(HUEditLocationViewController *)self homeItemManager];
      v56 = [v55 guestsItem];
      v57 = [v11 isEqual:v56];

      if (v57)
      {
        v26 = [MEMORY[0x277D756E0] cellConfiguration];
        v58 = [v11 latestResults];
        v59 = [v58 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
        [v26 setText:v59];

        v60 = [v11 latestResults];
        v61 = [v60 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
        [v26 setSecondaryText:v61];

        v62 = [MEMORY[0x277D75348] secondaryLabelColor];
        v63 = [v26 secondaryTextProperties];
        [v63 setColor:v62];

        v64 = [v11 latestResults];
        v65 = [v64 objectForKeyedSubscript:*MEMORY[0x277D13E98]];
        [v26 setImage:v65];

        v66 = [MEMORY[0x277D75348] systemGrayColor];
        v67 = [v26 imageProperties];
        [v67 setTintColor:v66];

        v68 = *MEMORY[0x277D76C88];
        v69 = [v26 imageProperties];
        [v69 setReservedLayoutSize:{37.0, v68}];

        [v10 setContentConfiguration:v26];
        v70 = [v11 latestResults];
        v71 = [v70 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
        [v10 setAccessibilityIdentifier:v71];

        [v10 setAccessoryType:1];
        goto LABEL_6;
      }

      v72 = [(HUEditLocationViewController *)self homeItemManager];
      v73 = [v72 locationServicesSettingItem];
      v74 = [v11 isEqual:v73];

      if (!v74)
      {
        goto LABEL_7;
      }

      objc_opt_class();
      v75 = v10;
      if (objc_opt_isKindOfClass())
      {
        v76 = v75;
      }

      else
      {
        v76 = 0;
      }

      v26 = v76;

      v77 = [(HUEditLocationViewController *)self homeItemManager];
      v78 = [v77 home];
      [v26 setOn:{objc_msgSend(v78, "isLocationServicesEnabled")}];

      v34 = [(HUEditLocationViewController *)self homeItemManager];
      v35 = [v34 home];
      [v26 setDisabled:{objc_msgSend(v35, "hf_currentUserIsAdministrator") ^ 1}];
    }
  }

LABEL_6:

LABEL_7:
  v79.receiver = self;
  v79.super_class = HUEditLocationViewController;
  [(HUItemTableViewController *)&v79 updateCell:v10 forItem:v11 indexPath:v12 animated:v6];
}

void __70__HUEditLocationViewController_updateCell_forItem_indexPath_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 processedImage];
  [*(a1 + 32) setImage:v5];
  v4 = [v3 wallpaper];

  LODWORD(v3) = [v4 type] != 2;
  [*(a1 + 32) setContentMode:2 * v3];
}

void __70__HUEditLocationViewController_updateCell_forItem_indexPath_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 wallpaper];
  if ([v3 type] == 1)
  {
  }

  else
  {
    v4 = [v11 wallpaper];
    v5 = [v4 type];

    if (v5 != 6)
    {
      goto LABEL_5;
    }
  }

  v6 = [v11 processedImage];
  v7 = [*(a1 + 32) wallpaperPickerViewController];
  v8 = [v11 wallpaper];
  [v7 setCustomWallpaper:v8 image:v6];

LABEL_5:
  v9 = [*(a1 + 32) wallpaperPickerViewController];
  v10 = [v11 wallpaper];
  [v9 setSelectedWallpaper:v10 animated:*(a1 + 40)];
}

- (unint64_t)automaticDisablingReasonsForItem:(id)a3
{
  v29[6] = *MEMORY[0x277D85DE8];
  v28 = a3;
  v27 = [(HUEditLocationViewController *)self homeItemManager];
  v26 = [v27 cameraItem];
  v29[0] = v26;
  v25 = [(HUEditLocationViewController *)self homeItemManager];
  v24 = [v25 chooseWallpaperItem];
  v29[1] = v24;
  v4 = [(HUEditLocationViewController *)self homeItemManager];
  v5 = [v4 wallpaperThumbnailItem];
  v29[2] = v5;
  v6 = [(HUEditLocationViewController *)self homeItemManager];
  v7 = [v6 homeScheduleItem];
  v29[3] = v7;
  v8 = [(HUEditLocationViewController *)self homeItemManager];
  v9 = [v8 softwareUpdateItem];
  v29[4] = v9;
  v10 = [(HUEditLocationViewController *)self homeItemManager];
  v11 = [v10 removeItem];
  v29[5] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:6];

  v13 = [(HUEditLocationViewController *)self homeItemManager];
  v14 = [v13 allowedAccessoryCategoryItemProvider];
  v15 = [v14 items];
  v16 = [v15 allObjects];
  v17 = [v12 arrayByAddingObjectsFromArray:v16];

  if ([v17 containsObject:v28])
  {
    v18 = 1;
  }

  else
  {
    v19 = [(HUEditLocationViewController *)self notificationTopicModuleController];
    v20 = [v19 module];
    v21 = [v20 allItems];
    v22 = [v21 containsObject:v28];

    if (v22)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }
  }

  return v18;
}

- (id)currentTextForTextField:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUEditLocationViewController *)self nameCell];
  v9 = [v8 textField];

  if (v9 == v6)
  {
    v10 = [(HUEditLocationViewController *)self editedName];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HUEditLocationViewController;
    v10 = [(HUItemTableViewController *)&v13 currentTextForTextField:v6 item:v7];
  }

  v11 = v10;

  return v11;
}

- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = HUEditLocationViewController;
  v9 = a4;
  [(HUItemTableViewController *)&v12 textDidChange:v8 forTextField:v9 item:a5];
  v10 = [(HUEditLocationViewController *)self nameCell:v12.receiver];
  v11 = [v10 textField];

  if (v11 == v9)
  {
    [(HUEditLocationViewController *)self setEditedName:v8];
  }
}

- (void)textFieldDidEndEditing:(id)a3 item:(id)a4
{
  v9.receiver = self;
  v9.super_class = HUEditLocationViewController;
  v6 = a3;
  [(HUItemTableViewController *)&v9 textFieldDidEndEditing:v6 item:a4];
  v7 = [(HUEditLocationViewController *)self nameCell:v9.receiver];
  v8 = [v7 textField];

  if (v8 == v6)
  {
    [(HUEditLocationViewController *)self updateAndCommitHomeName];
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUEditLocationViewController *)self homeItemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  v10 = [(HUItemTableViewController *)self moduleControllerForItem:v9];

  if (v10)
  {
    v47.receiver = self;
    v47.super_class = HUEditLocationViewController;
    v11 = [(HUItemTableViewController *)&v47 tableView:v6 shouldHighlightRowAtIndexPath:v7];
    goto LABEL_12;
  }

  v12 = [(HUEditLocationViewController *)self homeItemManager];
  v13 = [v12 inviteUsersItem];
  if ([v9 isEqual:v13])
  {

LABEL_6:
    v17 = [v9 latestResults];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    v19 = [v18 BOOLValue];

    v11 = v19 ^ 1;
    goto LABEL_12;
  }

  v14 = [(HUEditLocationViewController *)self homeItemManager];
  v15 = [v14 cameraItem];
  v16 = [v9 isEqual:v15];

  if (v16)
  {
    goto LABEL_6;
  }

  v20 = [(HUEditLocationViewController *)self homeItemManager];
  v21 = [v20 userItemProvider];
  v22 = [v21 items];
  if ([v22 containsObject:v9])
  {
    goto LABEL_10;
  }

  v23 = [(HUEditLocationViewController *)self homeItemManager];
  v24 = [v23 inviteItemProvider];
  v25 = [v24 items];
  if ([v25 containsObject:v9])
  {

LABEL_10:
LABEL_11:
    v11 = 1;
    goto LABEL_12;
  }

  v39 = [(HUEditLocationViewController *)self homeItemManager];
  [v39 allowedAccessoryCategoryItemProvider];
  v27 = v43 = v23;
  [v27 items];
  v28 = v41 = v24;
  v45 = [v28 containsObject:v9];

  if (v45)
  {
    goto LABEL_11;
  }

  v29 = [(HUEditLocationViewController *)self homeItemManager];
  v30 = [v29 chooseWallpaperItem];
  if ([v9 isEqual:v30])
  {
    v11 = 1;
  }

  else
  {
    v31 = [(HUEditLocationViewController *)self homeItemManager];
    v32 = [v31 wallpaperThumbnailItem];
    if ([v9 isEqual:v32])
    {
      v11 = 1;
    }

    else
    {
      v33 = [(HUEditLocationViewController *)self homeItemManager];
      v34 = [v33 removeItem];
      if ([v9 isEqual:v34])
      {
        v11 = 1;
      }

      else
      {
        v46 = [(HUEditLocationViewController *)self homeItemManager];
        v44 = [v46 homeScheduleItem];
        if ([v9 isEqual:?])
        {
          v11 = 1;
        }

        else
        {
          v42 = [(HUEditLocationViewController *)self homeItemManager];
          v40 = [v42 softwareUpdateItem];
          if ([v9 isEqual:?])
          {
            v11 = 1;
          }

          else
          {
            v38 = [(HUEditLocationViewController *)self homeItemManager];
            v37 = [v38 siriTriggerPhraseSettingItem];
            if ([v9 isEqual:?])
            {
              v11 = 1;
            }

            else
            {
              v36 = [(HUEditLocationViewController *)self homeItemManager];
              v35 = [v36 guestsItem];
              v11 = [v9 isEqual:v35];
            }
          }
        }
      }
    }
  }

LABEL_12:
  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v179 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v172.receiver = self;
  v172.super_class = HUEditLocationViewController;
  [(HUItemTableViewController *)&v172 tableView:v7 didSelectRowAtIndexPath:v8];
  v9 = [(HUEditLocationViewController *)self homeItemManager];
  v10 = [v9 displayedItemAtIndexPath:v8];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v174 = v8;
    v175 = 2112;
    v176 = v10;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "[HUEditLocationViewController-tableView:didSelectRowAtIndexPath]  indexPath=%@  | item=%@.", buf, 0x16u);
  }

  v12 = [(HUItemTableViewController *)self moduleControllerForItem:v10];

  if (!v12)
  {
    [v7 deselectRowAtIndexPath:v8 animated:1];
    v13 = [(HUEditLocationViewController *)self homeItemManager];
    v14 = [v13 cameraItem];
    v15 = [v10 isEqual:v14];

    if (v15)
    {
      v16 = objc_alloc_init(MEMORY[0x277D755C8]);
      [v16 setDelegate:self];
      [v16 setSourceType:1];
      [v16 setModalPresentationStyle:0];
      [(HUEditLocationViewController *)self presentViewController:v16 animated:1 completion:0];
    }

    else
    {
      v17 = [(HUEditLocationViewController *)self homeItemManager];
      v18 = [v17 homeScheduleItem];
      v19 = [v10 isEqual:v18];

      if (v19)
      {
        v20 = objc_alloc(MEMORY[0x277D180D8]);
        v21 = [(HUEditLocationViewController *)self homeItemManager];
        v22 = [v21 home];
        v23 = [v22 uniqueIdentifier];
        v24 = [MEMORY[0x277D75348] hf_keyColor];
        v25 = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
        v26 = [v20 initWithHomeID:v23 tintColor:v24 listRowBackgroundColor:v25];

        v27 = [(HUEditLocationViewController *)self navigationController];
        v28 = [v27 hu_pushPreloadableViewController:v26 animated:1];
      }

      else
      {
        v29 = [(HUEditLocationViewController *)self homeItemManager];
        v30 = [v29 allowedAccessoryCategoryItemProvider];
        v31 = [v30 items];
        v32 = [v31 containsObject:v10];

        if (v32)
        {
          objc_opt_class();
          v33 = v10;
          if (objc_opt_isKindOfClass())
          {
            v34 = v33;
          }

          else
          {
            v34 = 0;
          }

          v162 = v34;

          v35 = [v162 categoryType];
          v36 = [v35 isEqualToString:*MEMORY[0x277CCE890]];

          v37 = [(HUEditLocationViewController *)self homeItemManager];
          v38 = [v37 home];
          v39 = [v38 hf_canAddAccessCode];

          if ((v36 & v39) == 1)
          {
            v40 = [(HUEditLocationViewController *)self presentRestrictedGuestLockSettings];
          }

          else
          {
            v157 = [HUUserAccessoryAccessViewController alloc];
            v160 = [(HUEditLocationViewController *)self homeItemManager];
            v159 = [v160 home];
            v53 = [(HUEditLocationViewController *)self homeItemManager];
            v54 = [v53 home];
            v55 = [v54 currentUser];
            v56 = [v162 categoryType];
            v158 = [(HUUserAccessoryAccessViewController *)v157 initWithHome:v159 user:v55 accessoryCategoryType:v56];

            v57 = [(HUEditLocationViewController *)self navigationController];
            v58 = [v57 hu_pushPreloadableViewController:v158 animated:1];

            v59 = HFLogForCategory();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v60 = NSStringFromSelector(a2);
              *buf = 138412802;
              v174 = self;
              v175 = 2112;
              v176 = v60;
              v177 = 2112;
              v178 = v162;
              _os_log_impl(&dword_20CEB6000, v59, OS_LOG_TYPE_DEFAULT, "%@: %@ Checking for allowed accessory category item: categoryItem=%@.", buf, 0x20u);
            }
          }
        }

        else
        {
          v41 = [(HUEditLocationViewController *)self homeItemManager];
          v42 = [v41 chooseWallpaperItem];
          v43 = [v10 isEqual:v42];

          if (v43)
          {
            v44 = [(HUEditLocationViewController *)self navigationController];
            v45 = _HULocalizedStringWithDefaultValue(@"HUEditLocationNamedWallpaperSectionTitle", @"HUEditLocationNamedWallpaperSectionTitle", 1);
            [HUWallpaperPickerViewController presentSecurePickerFromNavigationController:v44 collectionType:0 withTitle:v45 delegate:self];
          }

          else
          {
            v46 = [(HUEditLocationViewController *)self homeItemManager];
            v47 = [v46 wallpaperThumbnailItem];
            v48 = [v10 isEqual:v47];

            if (v48)
            {
              v49 = [(HUEditLocationViewController *)self homeBuilder];
              v50 = [v49 wallpaperBuilder];
              v51 = [v50 wallpaperEditCollectionFuture];
              v171[0] = MEMORY[0x277D85DD0];
              v171[1] = 3221225472;
              v171[2] = __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke;
              v171[3] = &unk_277DBE118;
              v171[4] = self;
              v52 = [v51 addSuccessBlock:v171];
            }

            else
            {
              v61 = [(HUEditLocationViewController *)self homeItemManager];
              v62 = [v61 removeItem];
              v63 = [v10 isEqual:v62];

              v64 = [(HUEditLocationViewController *)self homeItemManager];
              v65 = v64;
              if (v63)
              {
                v66 = [v64 home];
                v67 = [v66 hf_currentUserIsOwner];

                if (v67)
                {
                  v68 = @"HUEditLocationRemoveHomeAlertTitle";
                }

                else
                {
                  v68 = @"HUEditLocationLeaveHomeAlertTitle";
                }

                v69 = [(HUEditLocationViewController *)self homeBuilder];
                v70 = [v69 name];
                v163 = HULocalizedStringWithFormat(v68, @"%@", v71, v72, v73, v74, v75, v76, v70);

                if (v67)
                {
                  v77 = @"HUEditLocationRemoveHomeConfirmationMessage";
                }

                else
                {
                  v77 = @"HUEditLocationLeaveHomeConfirmationMessage";
                }

                v161 = _HULocalizedStringWithDefaultValue(v77, v77, 1);
                v78 = [(UITableViewController *)self hu_actionSheetWithTitle:v163 message:v161 indexPath:v8];
                v79 = MEMORY[0x277D750F8];
                v80 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
                v81 = [v79 actionWithTitle:v80 style:1 handler:0];
                [v78 addAction:v81];

                v82 = @"HUEditLocationLeaveHomeDeleteButtonTitle";
                if (v67)
                {
                  v82 = @"HURemoveTitle";
                }

                v83 = v82;
                v84 = MEMORY[0x277D750F8];
                v85 = _HULocalizedStringWithDefaultValue(v83, v83, 1);
                v167[0] = MEMORY[0x277D85DD0];
                v167[1] = 3221225472;
                v167[2] = __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
                v167[3] = &unk_277DBE190;
                v170 = v67 ^ 1;
                v168 = v83;
                v169 = self;
                v86 = v83;
                v87 = [v84 actionWithTitle:v85 style:2 handler:v167];
                [v78 addAction:v87];

                [(HUEditLocationViewController *)self presentViewController:v78 animated:1 completion:0];
              }

              else
              {
                v88 = [v64 inviteUsersItem];
                v89 = [v10 isEqual:v88];

                if (v89)
                {
                  objc_initWeak(buf, self);
                  v90 = MEMORY[0x277D75110];
                  v91 = [(HUEditLocationViewController *)self homeItemManager];
                  v92 = [v91 home];
                  v165[0] = MEMORY[0x277D85DD0];
                  v165[1] = 3221225472;
                  v165[2] = __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke_4;
                  v165[3] = &unk_277DB8770;
                  objc_copyWeak(&v166, buf);
                  v93 = [v90 hu_alertControllerForHH2RequiredToAddPeopleForHome:v92 updateNowHandler:v165];

                  if (v93)
                  {
                    [(HUEditLocationViewController *)self presentViewController:v93 animated:1 completion:&__block_literal_global_222];
                  }

                  else
                  {
                    v112 = [(HUEditLocationViewController *)self homeItemManager];
                    v113 = [v112 home];
                    if ([v113 hasOnboardedForAccessCode])
                    {
                      v114 = [(HUEditLocationViewController *)self homeItemManager];
                      v115 = [v114 home];
                      v116 = [v115 accessories];
                      v164 = [v116 na_any:&__block_literal_global_226_0];
                    }

                    else
                    {
                      v164 = 0;
                    }

                    v126 = [HUAddPersonRoleViewController alloc];
                    v127 = [(HUEditLocationViewController *)self homeItemManager];
                    v128 = [v127 home];
                    v129 = [(HUAddPersonRoleViewController *)v126 initWithHome:v128];

                    if (v164)
                    {
                      v130 = [(HUEditLocationViewController *)self homeItemManager];
                      v131 = [v130 pinCodeManager];
                      [(HUAddPersonRoleViewController *)v129 setPinCodeManager:v131];
                    }

                    [(HUAddPersonRoleViewController *)v129 setPresentationDelegate:self];
                    v132 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v129];
                    [v132 setModalPresentationStyle:2];
                    [(HUEditLocationViewController *)self presentViewController:v132 animated:1 completion:&__block_literal_global_231];
                  }

                  objc_destroyWeak(&v166);
                  objc_destroyWeak(buf);
                }

                else
                {
                  v94 = [(HUEditLocationViewController *)self homeItemManager];
                  v95 = [v94 siriTriggerPhraseSettingItem];
                  v96 = [v10 isEqual:v95];

                  if (v96)
                  {
                    v97 = [HUSiriTriggerPhraseSettingDetailsViewController alloc];
                    v98 = [(HUEditLocationViewController *)self homeItemManager];
                    v99 = [v98 home];
                    v100 = [(HUSiriTriggerPhraseSettingDetailsViewController *)v97 initWithHome:v99 delegate:self];

                    v101 = [(HUEditLocationViewController *)self navigationController];
                    v102 = [v101 hu_pushPreloadableViewController:v100 animated:1];
                  }

                  else
                  {
                    v103 = [(HUEditLocationViewController *)self homeItemManager];
                    v104 = [v103 softwareUpdateItem];
                    v105 = [v10 isEqual:v104];

                    if (v105)
                    {
                      v106 = [HUSoftwareUpdateStandaloneViewController alloc];
                      v107 = [(HUEditLocationViewController *)self homeItemManager];
                      v108 = [v107 home];
                      v109 = [(HUSoftwareUpdateStandaloneViewController *)v106 initWithHome:v108];

                      v110 = [(HUEditLocationViewController *)self navigationController];
                      v111 = [v110 hu_pushPreloadableViewController:v109 animated:1];
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        objc_opt_class();
                        v117 = v10;
                        if (objc_opt_isKindOfClass())
                        {
                          v118 = v117;
                        }

                        else
                        {
                          v118 = 0;
                        }

                        v119 = v118;

                        v120 = [HUEditOutgoingInvitationViewController alloc];
                        v121 = [(HUEditLocationViewController *)self homeBuilder];
                        v122 = [v121 home];
                        v123 = [(HUEditOutgoingInvitationViewController *)v120 initWithItem:v119 home:v122];

                        v124 = [(HUEditLocationViewController *)self navigationController];
                        v125 = [v124 hu_pushPreloadableViewController:v123 animated:1];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          objc_opt_class();
                          v133 = v10;
                          if (objc_opt_isKindOfClass())
                          {
                            v134 = v133;
                          }

                          else
                          {
                            v134 = 0;
                          }

                          v135 = v134;

                          v136 = [(HUEditLocationViewController *)v135 user];
                          v137 = [v136 userID];
                          v138 = v137 == 0;

                          if (v138)
                          {
                            v139 = HFLogForCategory();
                            if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138412290;
                              v174 = v135;
                              _os_log_error_impl(&dword_20CEB6000, v139, OS_LOG_TYPE_ERROR, "User ID on item %@ is nil", buf, 0xCu);
                            }
                          }

                          v140 = [HUEditUserViewController alloc];
                          v141 = [(HUEditLocationViewController *)self homeBuilder];
                          v142 = [v141 home];
                          v143 = [(HUEditLocationViewController *)self homeItemManager];
                          v144 = [v143 pinCodeManager];
                          v145 = [(HUEditUserViewController *)v140 initWithItem:v135 home:v142 pinCodeManager:v144];

                          v146 = [(HUEditLocationViewController *)self navigationController];
                          v147 = [v146 hu_pushPreloadableViewController:v145 animated:1];
                        }

                        else
                        {
                          v148 = [(HUEditLocationViewController *)self homeItemManager];
                          v149 = [v148 guestsItem];
                          v150 = [v10 isEqual:v149];

                          if (v150)
                          {
                            v151 = [HUGuestsPinCodesViewController alloc];
                            v152 = [(HUEditLocationViewController *)self homeItemManager];
                            v153 = [v152 pinCodeManager];
                            v154 = [(HUGuestsPinCodesViewController *)v151 initWithPinCodeManager:v153 settingsContext:0];

                            v155 = [(HUEditLocationViewController *)self navigationController];
                            v156 = [v155 hu_pushPreloadableViewController:v154 animated:1];
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 originalImage];
  v4 = [HUWallpaperEditingViewController alloc];
  v5 = [v3 wallpaper];

  v6 = [(HUWallpaperEditingViewController *)v4 initWithWallpaper:v5 image:v7 delegate:*(a1 + 32)];
  [(HUWallpaperEditingViewController *)v6 setModalPresentationStyle:0];
  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

void __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 136315394;
    v34 = "[HUEditLocationViewController tableView:didSelectRowAtIndexPath:]_block_invoke_2";
    v35 = 2112;
    v36 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%@' from the alert popup", buf, 0x16u);
  }

  v6 = [MEMORY[0x277CBEB18] array];
  if (*(a1 + 48) == 1)
  {
    v7 = [*(a1 + 40) homeItemManager];
    v8 = [v7 pinCodeManager];

    v9 = [*(a1 + 40) homeItemManager];
    v10 = [v9 home];
    v11 = [v10 currentUser];

    v12 = [v8 deleteUserPinCodeWithUser:v11];
    v13 = [v12 recoverIgnoringError];

    [v6 addObject:v13];
  }

  v14 = [MEMORY[0x277D146E8] sharedDispatcher];
  v15 = [v14 homeManager];

  v16 = [*(a1 + 40) homeBuilder];
  v17 = [v16 home];

  v18 = MEMORY[0x277D2C900];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke_209;
  v30[3] = &unk_277DB8200;
  v19 = v15;
  v31 = v19;
  v20 = v17;
  v32 = v20;
  v21 = [v18 lazyFutureWithBlock:v30];
  [v6 addObject:v21];
  objc_initWeak(buf, *(a1 + 40));
  v22 = [MEMORY[0x277D2C900] chainFutures:v6];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_211;
  v26[3] = &unk_277DBE168;
  objc_copyWeak(&v29, buf);
  v23 = v19;
  v27 = v23;
  v24 = v20;
  v28 = v24;
  v25 = [v22 addSuccessBlock:v26];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
}

void __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke_209(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 errorOnlyCompletionHandlerAdapter];
  [v2 removeHome:v3 completionHandler:v4];
}

void __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_211(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
  v9 = &unk_277DBDB80;
  v10 = a1[4];
  v11 = a1[5];
  [v3 dispatchHomeManagerObserverMessage:&v6 sender:0];

  v4 = [WeakRetained presentationDelegate];
  v5 = [v4 finishPresentation:WeakRetained animated:1];
}

void __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentationDelegate];
  v2 = [v1 finishPresentation:WeakRetained animated:1];
  v3 = [v2 addSuccessBlock:&__block_literal_global_217];
}

void __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke_5()
{
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "[HUEditLocationViewController-didSelectRowAtIndexPath:] Dismissed this view controller. Opening HH2 onboarding URL.", v4, 2u);
  }

  v1 = [MEMORY[0x277D148E8] sharedInstance];
  v2 = [MEMORY[0x277D14C80] homeHub2OnboardingURL];
  v3 = [v1 openURL:v2];
}

void __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke_220()
{
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "[HUEditLocationViewController-didSelectRowAtIndexPath:] presented alert about hh2 update requirement.", v1, 2u);
  }
}

void __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_229()
{
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_ERROR, "[HUEditLocationViewController-didSelectRowAtIndexPath:] presented nav with HUAddPersonRoleViewController.", v1, 2u);
  }
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = [(HUEditLocationViewController *)self detailNotesCell];
  v6 = [v4 isDescendantOfView:v5];

  if (v6)
  {
    v8 = [(HUEditLocationViewController *)self detailNotesCell];
    v7 = [v8 text];
    [(HUEditLocationViewController *)self setEditedNotes:v7];
  }
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = [(HUEditLocationViewController *)self detailNotesCell];
  v6 = [v4 isDescendantOfView:v5];

  if (v6)
  {

    [(HUEditLocationViewController *)self updateAndCommitNotes];
  }
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = self;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v19, 0x16u);
  }

  v9 = [MEMORY[0x277D14C80] locationPrivacyURL];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = [(HUEditLocationViewController *)self navigationController];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = self;
    }

    v14 = v13;

    v15 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376E0]];
    v16 = [v15 splashController];
    [v16 setDisplayDeviceType:6];

    [v15 setPresentingViewController:v14];
    [v15 present];
  }

  else
  {
    v15 = [MEMORY[0x277D148E8] sharedInstance];
    v17 = [v15 openURL:v7];
  }

  return 0;
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a5;
  v9 = [a3 text];
  v10 = [v9 stringByReplacingCharactersInRange:location withString:{length, v8}];

  LOBYTE(location) = [v10 length] < 0x1F5;
  return location;
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"OFF";
    if (v4)
    {
      v8 = @"ON";
    }

    *buf = 138412290;
    v51 = v8;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "User Tapped switch to turn %@.", buf, 0xCu);
  }

  v9 = [(HUEditLocationViewController *)self tableView];
  v10 = [v9 indexPathForCell:v6];

  v11 = [(HUItemTableViewController *)self itemManager];
  v12 = [v11 displayedItemAtIndexPath:v10];

  v13 = [(HUEditLocationViewController *)self homeItemManager];
  v14 = [v13 locationServicesSettingItem];
  v15 = [v12 isEqual:v14];

  if (v15)
  {
    v16 = [(HUEditLocationViewController *)self homeItemManager];
    v17 = [v16 updateLocationServicesEnabled:v4];

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __53__HUEditLocationViewController_switchCell_didTurnOn___block_invoke;
    v46[3] = &unk_277DBA3A8;
    v49 = v4;
    v47 = v6;
    v48 = self;
    v18 = [v17 addCompletionBlock:v46];
  }

  v19 = [(HUEditLocationViewController *)self homeItemManager];
  v20 = [v19 soundCheckItem];
  v21 = [v12 isEqual:v20];

  if (v21)
  {
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        v23 = @"ON";
      }

      else
      {
        v23 = @"OFF";
      }

      v24 = [(HUItemTableViewController *)self itemManager];
      v25 = [v24 home];
      *buf = 138412802;
      v51 = self;
      v52 = 2112;
      v53 = v23;
      v54 = 2112;
      v55 = v25;
      _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@: Updating sound check setting to %@ for home: %@", buf, 0x20u);
    }

    v26 = [(HUItemTableViewController *)self itemManager];
    v27 = [v26 home];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __53__HUEditLocationViewController_switchCell_didTurnOn___block_invoke_244;
    v42[3] = &unk_277DBC4D8;
    v45 = v4;
    v43 = v6;
    v44 = self;
    [v27 updateSoundCheckEnabled:v4 completion:v42];
  }

  v28 = [(HUEditLocationViewController *)self homeItemManager];
  v29 = [v28 showPredictedScenes];
  v30 = [v12 isEqual:v29];

  if (v30)
  {
    v31 = [(HUItemTableViewController *)self itemManager];
    v32 = [v31 home];
    v33 = [v32 hf_setShowPredictedScenesOnDashboard:v4];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __53__HUEditLocationViewController_switchCell_didTurnOn___block_invoke_245;
    v40[3] = &__block_descriptor_33_e20_v24__0_8__NSError_16l;
    v41 = v4;
    v34 = [v33 addCompletionBlock:v40];
  }

  v35 = [v12 latestResults];
  v36 = *MEMORY[0x277D13F68];
  v37 = [v35 objectForKey:*MEMORY[0x277D13F68]];

  if (v37)
  {
    v38 = [v12 latestResults];
    v39 = [v38 objectForKeyedSubscript:v36];
  }

  else
  {
    v39 = 0;
  }

  [MEMORY[0x277D143D8] sendSwitchCellToggleEventForItem:v12 isOn:v4 title:v39 fromSourceViewController:self];
}

void __53__HUEditLocationViewController_switchCell_didTurnOn___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [*(a1 + 32) setOn:(*(a1 + 48) & 1) == 0];
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 48))
      {
        v5 = @"ON";
      }

      else
      {
        v5 = @"OFF";
      }

      v6 = [*(a1 + 40) homeItemManager];
      v7 = [v6 home];
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v7;
      v8 = "Location Services Failed to turn %@ for Home %@.";
LABEL_12:
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, v8, &v10, 0x16u);
    }
  }

  else
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 48))
      {
        v9 = @"ON";
      }

      else
      {
        v9 = @"OFF";
      }

      v6 = [*(a1 + 40) homeItemManager];
      v7 = [v6 home];
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v7;
      v8 = "Location Services Successfully turned %@ for Home %@.";
      goto LABEL_12;
    }
  }
}

void __53__HUEditLocationViewController_switchCell_didTurnOn___block_invoke_244(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Failed to update sound check setting with error: %@", &v10, 0xCu);
    }

    [*(a1 + 32) setOn:(*(a1 + 48) & 1) == 0 animated:1];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) itemManager];
      v7 = [v6 home];
      v8 = [v7 soundCheckEnabled];
      v9 = @"OFF";
      if (v8)
      {
        v9 = @"ON";
      }

      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated sound check setting to %@", &v10, 0xCu);
    }
  }
}

void __53__HUEditLocationViewController_switchCell_didTurnOn___block_invoke_245(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7[0] = 67109634;
    v7[1] = v6;
    v8 = 1024;
    v9 = v4 == 0;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Updating showPredictedScenesOnDashboard to (%{BOOL}d) succeeded: %{BOOL}d  %@", v7, 0x18u);
  }
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  v5 = a4;
  [(HUEditLocationViewController *)self dismissViewControllerAnimated:1 completion:0];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D76A80]];

  UIImageWriteToSavedPhotosAlbum(v6, 0, 0, 0);
  v7 = objc_alloc(MEMORY[0x277D14D10]);
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];
  v10 = [v7 initWithType:1 assetIdentifier:v9 cropInfo:0];

  v11 = [MEMORY[0x277D14D18] sharedInstance];
  v13 = [v11 processOriginalImageFromWallpaper:v10 originalImage:v6];

  v12 = [[HUWallpaperEditingViewController alloc] initWithWallpaper:v10 image:v13 delegate:self];
  [(HUWallpaperEditingViewController *)v12 setModalPresentationStyle:0];
  [(HUEditLocationViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)wallpaperPickerDidFinish:(id)a3 wallpaper:(id)a4 image:(id)a5
{
  [(HUEditLocationViewController *)self updateWallpaper:a4 image:a5];
  v7 = [(HUEditLocationViewController *)self navigationController];
  v6 = [v7 popToViewController:self animated:1];
}

- (void)wallpaperThumbnailCell:(id)a3 didReceiveDroppedImage:(id)a4
{
  v5 = MEMORY[0x277D14D10];
  v6 = MEMORY[0x277CCAD78];
  v7 = a4;
  v10 = [v6 UUID];
  v8 = [v10 UUIDString];
  v9 = [v5 customWallpaperWithAssetIdentifier:v8];
  [(HUEditLocationViewController *)self updateWallpaper:v9 image:v7];
}

- (void)wallpaperPicker:(id)a3 didReceiveDroppedImage:(id)a4
{
  v6 = MEMORY[0x277D14D10];
  v7 = MEMORY[0x277CCAD78];
  v8 = a4;
  v9 = a3;
  v10 = [v7 UUID];
  v11 = [v10 UUIDString];
  v27 = [v6 customWallpaperWithAssetIdentifier:v11];

  [v9 setOriginalCustomImage:v8];
  v12 = [(HUEditLocationViewController *)self homeBuilder];
  v13 = [v12 wallpaperBuilder];
  [v13 setWallpaper:v27 image:v8];

  v14 = [(HUEditLocationViewController *)self homeItemManager];
  v15 = [(HUEditLocationViewController *)self homeItemManager];
  v16 = [v15 wallpaperPickerItem];
  v17 = [v14 indexPathForItem:v16];

  v18 = [(HUEditLocationViewController *)self tableView];
  v19 = [v18 cellForRowAtIndexPath:v17];
  v20 = [(HUEditLocationViewController *)self homeItemManager];
  v21 = [v20 wallpaperPickerItem];
  [(HUEditLocationViewController *)self updateCell:v19 forItem:v21 indexPath:v17 animated:1];

  v22 = [(HUEditLocationViewController *)self homeBuilder];
  v23 = [v22 home];

  if (v23)
  {
    v24 = [(HUEditLocationViewController *)self homeBuilder];
    v25 = [v24 wallpaperBuilder];
    v26 = [v25 commitWallpaper];
  }
}

- (void)wallpaperPicker:(id)a3 didSelectWallpaper:(id)a4 withImage:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HUEditLocationViewController *)self homeBuilder];
  v10 = [v9 wallpaperBuilder];
  [v10 setWallpaper:v8 image:v7];

  v11 = [(HUEditLocationViewController *)self homeBuilder];
  v12 = [v11 home];

  if (v12)
  {
    v15 = [(HUEditLocationViewController *)self homeBuilder];
    v13 = [v15 wallpaperBuilder];
    v14 = [v13 commitWallpaper];
  }
}

- (void)wallpaperPickerRequestOpenWallpaperEditor:(id)a3
{
  v4 = [(HUEditLocationViewController *)self homeBuilder];
  v5 = [v4 wallpaperBuilder];
  v6 = [v5 wallpaperEditCollectionFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HUEditLocationViewController_wallpaperPickerRequestOpenWallpaperEditor___block_invoke;
  v8[3] = &unk_277DBE118;
  v8[4] = self;
  v7 = [v6 addSuccessBlock:v8];
}

void __74__HUEditLocationViewController_wallpaperPickerRequestOpenWallpaperEditor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 originalImage];
  v4 = [HUWallpaperEditingViewController alloc];
  v5 = [v3 wallpaper];

  v6 = [(HUWallpaperEditingViewController *)v4 initWithWallpaper:v5 image:v7 delegate:*(a1 + 32)];
  [(HUWallpaperEditingViewController *)v6 setModalPresentationStyle:0];
  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

- (void)wallpaperEditing:(id)a3 didFinishWithWallpaper:(id)a4 image:(id)a5
{
  [(HUEditLocationViewController *)self updateWallpaper:a4 image:a5];

  [(HUEditLocationViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v5 = [a4 uniqueIdentifier];
  v6 = [(HUEditLocationViewController *)self homeBuilder];
  v7 = [v6 home];
  v8 = [v7 uniqueIdentifier];
  v9 = [v5 isEqual:v8];

  if (v9)
  {
    v11 = [(HUEditLocationViewController *)self presentationDelegate];
    v10 = [v11 finishPresentation:self animated:1];
  }
}

- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6
{
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HUEditLocationViewController;
  v11 = a4;
  [(HUItemTableViewController *)&v17 diffableDataItemManager:a3 didUpdateItems:v11 addItems:v10 removeItems:a6];
  v12 = [(HUEditLocationViewController *)self homeItemManager:v17.receiver];
  v13 = [v12 softwareUpdateItem];
  LODWORD(a3) = [v11 containsObject:v13];

  if (a3)
  {

LABEL_4:
    [(HUEditLocationViewController *)self _updateSoftwareUpdateDynamicFooterView];
    goto LABEL_5;
  }

  v14 = [(HUEditLocationViewController *)self homeItemManager];
  v15 = [v14 softwareUpdateItem];
  v16 = [v10 containsObject:v15];

  if (v16)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5
{
  v12.receiver = self;
  v12.super_class = HUEditLocationViewController;
  v8 = a4;
  [(HUItemTableViewController *)&v12 itemManager:a3 didUpdateResultsForItem:v8 atIndexPath:a5];
  v9 = [(HUEditLocationViewController *)self homeItemManager:v12.receiver];
  v10 = [v9 softwareUpdateItem];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    [(HUEditLocationViewController *)self _updateSoftwareUpdateDynamicFooterView];
  }
}

- (void)_updateSoftwareUpdateDynamicFooterView
{
  v3 = [(HUEditLocationViewController *)self homeItemManager];
  v4 = [v3 sectionIndexForDisplayedSectionIdentifier:@"HUEditLocationSoftwareUpdateSectionIdentifier"];

  v5 = [(HUEditLocationViewController *)self tableView];
  v6 = [v5 footerViewForSection:v4];

  v7 = [(HUEditLocationViewController *)self homeItemManager];
  v8 = [v7 footerTitleForSection:v4];

  v9 = [v6 textLabel];

  if (v9)
  {
    v10 = [(HUEditLocationViewController *)self tableView];
    [v10 beginUpdates];

    v11 = [v6 textLabel];
    [v11 setText:v8];

    [v6 setNeedsLayout];
    v12 = [(HUEditLocationViewController *)self tableView];
    [v12 endUpdates];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__HUEditLocationViewController__updateSoftwareUpdateDynamicFooterView__block_invoke;
    v13[3] = &unk_277DBE1F8;
    v14 = v8;
    [v6 _setContentViewConfigurationProvider:v13];
  }
}

id __70__HUEditLocationViewController__updateSoftwareUpdateDynamicFooterView__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75E08] defaultGroupedFooterConfiguration];
  v3 = *(a1 + 32);
  v4 = [v2 textLabel];
  [v4 setText:v3];

  return v2;
}

- (void)didUpdateSiriTriggerPhraseSetting
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(HUItemTableViewController *)self itemManager];
  v4 = [(HUEditLocationViewController *)self homeItemManager];
  v5 = [v4 siriTriggerPhraseSettingItem];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 reloadUIRepresentationForItems:v6 withAnimation:1];
}

void __62__HUEditLocationViewController_reloadActivityLogItemProviders__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homeItemManager];
  v3 = [v2 notificationSettingsModule];
  v4 = [v3 itemProviders];
  v5 = [v4 na_firstObjectPassingTest:&__block_literal_global_259];
  v6 = [v5 reloadItems];

  v8 = [*(a1 + 32) homeItemManager];
  v7 = [v8 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 40)];
}

uint64_t __62__HUEditLocationViewController_reloadActivityLogItemProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)activityLogCoordinator:(id)a3 didDetermineEventsExist:(BOOL)a4
{
  if (a4)
  {
    if (self)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __62__HUEditLocationViewController_reloadActivityLogItemProviders__block_invoke;
      v4[3] = &unk_277DB7BA8;
      v4[4] = self;
      v4[5] = sel_reloadActivityLogItemProviders;
      dispatch_async(MEMORY[0x277D85CD0], v4);
    }
  }
}

- (void)updateWallpaper:(id)a3 image:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(HUEditLocationViewController *)self homeBuilder];
  v9 = [v8 wallpaperBuilder];
  [v9 setWallpaper:v7 image:v6];

  v10 = [(HUEditLocationViewController *)self homeBuilder];
  v11 = [v10 home];

  if (v11)
  {
    v12 = [(HUEditLocationViewController *)self homeBuilder];
    v13 = [v12 wallpaperBuilder];
    v14 = [v13 commitWallpaper];
  }

  v15 = +[HUWallpaperPickerInlineViewController useWallpaperPickerCell];
  v16 = [(HUEditLocationViewController *)self homeItemManager];
  v17 = v16;
  if (v15)
  {
    [v16 wallpaperPickerItem];
  }

  else
  {
    [v16 wallpaperThumbnailItem];
  }
  v18 = ;

  v19 = [(HUItemTableViewController *)self itemManager];
  v20 = [v19 diffableDataSourceDisabled];

  if (v20)
  {
    v21 = [(HUEditLocationViewController *)self tableView];
    v22 = [(HUEditLocationViewController *)self homeItemManager];
    v23 = [v22 indexPathForItem:v18];
    v26[0] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [v21 reloadRowsAtIndexPaths:v24 withRowAnimation:5];
  }

  else
  {
    v21 = [(HUItemTableViewController *)self itemManager];
    v25 = v18;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    [v21 reloadUIRepresentationForItems:v22 withAnimation:0];
  }
}

- (void)prefetchActivityLogEventsIfNecessary
{
  v3 = [(HUEditLocationViewController *)self homeBuilder];
  v8 = [v3 home];

  v4 = [MEMORY[0x277D146E8] sharedDispatcher];
  v5 = [v4 securityActivityLogCoordinatorForHome:v8];
  [(HUEditLocationViewController *)self prefetchActivityLogCoordinator:v5 targetKind:0 home:v8];

  if (_os_feature_enabled_impl())
  {
    v6 = [MEMORY[0x277D146E8] sharedDispatcher];
    v7 = [v6 climateActivityLogCoordinatorForHome:v8];
    [(HUEditLocationViewController *)self prefetchActivityLogCoordinator:v7 targetKind:1 home:v8];
  }
}

- (void)prefetchActivityLogCoordinator:(id)a3 targetKind:(unint64_t)a4 home:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [v8 residentDevices];
  v10 = [v9 na_any:&__block_literal_global_265];

  if ([v8 isEventLogEnabled] && (objc_msgSend(v12, "eventsExist") & 1) == 0)
  {
    v11 = [v8 hf_hasActivityLogPrerequisites];
    if ((v11 & v10) == 1)
    {
      if ([v8 hf_hasEnabledResident] && (objc_msgSend(v8, "hf_hasCompatibleActivityLogAccessoriesForTargetKind:", a4) & 1) != 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v11)
    {
      goto LABEL_9;
    }

    [v12 setDelegate:self];
    [v12 checkIfEventsExist];
  }

LABEL_9:
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (HUEditLocationViewControllerAddLocationDelegate)addLocationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_addLocationDelegate);

  return WeakRetained;
}

- (HUEditLocationItemManager)homeItemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeItemManager);

  return WeakRetained;
}

- (HUEditableTextCell)nameCell
{
  WeakRetained = objc_loadWeakRetained(&self->_nameCell);

  return WeakRetained;
}

- (HUEditableTextViewCell)detailNotesCell
{
  WeakRetained = objc_loadWeakRetained(&self->_detailNotesCell);

  return WeakRetained;
}

@end