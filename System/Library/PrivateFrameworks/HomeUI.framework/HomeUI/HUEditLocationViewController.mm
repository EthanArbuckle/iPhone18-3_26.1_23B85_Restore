@interface HUEditLocationViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (BOOL)updateBuilderName:(id)name;
- (BOOL)updateBuilderNotes:(id)notes;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUEditLocationItemManager)homeItemManager;
- (HUEditLocationViewController)initWithHomeBuilder:(id)builder presentationDelegate:(id)delegate addLocationDelegate:(id)locationDelegate context:(unint64_t)context;
- (HUEditLocationViewControllerAddLocationDelegate)addLocationDelegate;
- (HUEditableTextCell)nameCell;
- (HUEditableTextViewCell)detailNotesCell;
- (HUPresentationDelegate)presentationDelegate;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)currentTextForTextField:(id)field item:(id)item;
- (id)presentBridgeSettings:(BOOL)settings;
- (id)presentDefaultMediaServiceSettings:(id)settings;
- (id)presentNetworkSettings:(BOOL)settings;
- (id)presentNotificationSettingsForTopic:(id)topic animated:(BOOL)animated;
- (id)presentPersonalRequestsSettings:(id)settings;
- (id)presentRestrictedGuestLockSettings;
- (id)presentSoftwareUpdate:(BOOL)update;
- (id)presentUserLockSettings:(id)settings;
- (id)presentUserViewController:(id)controller;
- (id)showNotificationSettingsForHomeKitObject:(id)object animated:(BOOL)animated;
- (unint64_t)automaticDisablingReasonsForItem:(id)item;
- (void)_updateSoftwareUpdateDynamicFooterView;
- (void)activityLogCoordinator:(id)coordinator didDetermineEventsExist:(BOOL)exist;
- (void)addButtonPressed:(id)pressed;
- (void)didUpdateSiriTriggerPhraseSetting;
- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems;
- (void)dismissAndCommitChanges;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path;
- (void)prefetchActivityLogCoordinator:(id)coordinator targetKind:(unint64_t)kind home:(id)home;
- (void)prefetchActivityLogEventsIfNecessary;
- (void)scrollToNotificationTopicsAnimated:(BOOL)animated;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textDidChange:(id)change forTextField:(id)field item:(id)item;
- (void)textFieldDidEndEditing:(id)editing item:(id)item;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAndCommitHomeName;
- (void)updateAndCommitNotes;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)updateWallpaper:(id)wallpaper image:(id)image;
- (void)viewDidLoad;
- (void)wallpaperEditing:(id)editing didFinishWithWallpaper:(id)wallpaper image:(id)image;
- (void)wallpaperPicker:(id)picker didReceiveDroppedImage:(id)image;
- (void)wallpaperPicker:(id)picker didSelectWallpaper:(id)wallpaper withImage:(id)image;
- (void)wallpaperPickerDidFinish:(id)finish wallpaper:(id)wallpaper image:(id)image;
- (void)wallpaperPickerRequestOpenWallpaperEditor:(id)editor;
- (void)wallpaperThumbnailCell:(id)cell didReceiveDroppedImage:(id)image;
@end

@implementation HUEditLocationViewController

- (HUEditLocationViewController)initWithHomeBuilder:(id)builder presentationDelegate:(id)delegate addLocationDelegate:(id)locationDelegate context:(unint64_t)context
{
  builderCopy = builder;
  delegateCopy = delegate;
  locationDelegateCopy = locationDelegate;
  v14 = [[HUEditLocationItemManager alloc] initWithHomeBuilder:builderCopy delegate:self context:context];
  v22.receiver = self;
  v22.super_class = HUEditLocationViewController;
  v15 = [(HUItemTableViewController *)&v22 initWithItemManager:v14 tableViewStyle:1];
  if (v15)
  {
    name = [builderCopy name];
    editedName = v15->_editedName;
    v15->_editedName = name;

    userNotes = [builderCopy userNotes];
    editedNotes = v15->_editedNotes;
    v15->_editedNotes = userNotes;

    objc_storeWeak(&v15->_homeItemManager, v14);
    objc_storeStrong(&v15->_homeBuilder, builder);
    objc_storeWeak(&v15->_presentationDelegate, delegateCopy);
    objc_storeWeak(&v15->_addLocationDelegate, locationDelegateCopy);
    v15->_context = context;
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8] addHomeManagerObserver:v15];
  }

  return v15;
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = HUEditLocationViewController;
  [(HUItemTableViewController *)&v30 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:self action:sel_dismissAndCommitChanges];
  navigationItem = [(HUEditLocationViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  navigationItem2 = [(HUEditLocationViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setAccessibilityIdentifier:@"Home.HomeSettings.Done"];

  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  home = [homeItemManager home];
  hf_displayName = [home hf_displayName];
  [(HUEditLocationViewController *)self setTitle:hf_displayName];

  if (+[HUWallpaperPickerInlineViewController useWallpaperPickerCell])
  {
    v10 = objc_alloc_init(HUWallpaperPickerInlineViewController);
    wallpaperPickerViewController = self->_wallpaperPickerViewController;
    self->_wallpaperPickerViewController = v10;
  }

  addLocationDelegate = [(HUEditLocationViewController *)self addLocationDelegate];
  if (addLocationDelegate)
  {
    v13 = addLocationDelegate;
    context = [(HUEditLocationViewController *)self context];

    if (context != 1)
    {
      if ([MEMORY[0x277D14CE8] isRunningInStoreDemoMode])
      {
        navigationItem3 = [(HUEditLocationViewController *)self navigationItem];
        [navigationItem3 setHidesBackButton:1];
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
        navigationItem4 = [(HUEditLocationViewController *)self navigationItem];
        [navigationItem4 setLeftBarButtonItem:v18];

        navigationItem3 = [(HUEditLocationViewController *)self navigationItem];
        leftBarButtonItem = [navigationItem3 leftBarButtonItem];
        [leftBarButtonItem setAccessibilityIdentifier:@"Home.HomeSettings.AddHome"];
      }
    }
  }

LABEL_10:
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  if (hasOptedToHH2)
  {
    homeBuilder = [(HUEditLocationViewController *)self homeBuilder];
    home2 = [homeBuilder home];
    [home2 startHomeDataSyncWithCompletionHandler:&__block_literal_global_129];
  }

  mEMORY[0x277D14820] = [MEMORY[0x277D14820] sharedManager];
  homeBuilder2 = [(HUEditLocationViewController *)self homeBuilder];
  home3 = [homeBuilder2 home];
  v29 = [mEMORY[0x277D14820] fetchMediaServicesForHome:home3];

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

- (void)scrollToNotificationTopicsAnimated:(BOOL)animated
{
  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  firstFastUpdateFuture = [homeItemManager firstFastUpdateFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HUEditLocationViewController_scrollToNotificationTopicsAnimated___block_invoke;
  v8[3] = &unk_277DBE028;
  v8[4] = self;
  animatedCopy = animated;
  v7 = [firstFastUpdateFuture addSuccessBlock:v8];
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

- (id)presentNotificationSettingsForTopic:(id)topic animated:(BOOL)animated
{
  topicCopy = topic;
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HUEditLocationViewController_presentNotificationSettingsForTopic_animated___block_invoke;
  v11[3] = &unk_277DB7830;
  v11[4] = self;
  v12 = topicCopy;
  animatedCopy = animated;
  v8 = topicCopy;
  v9 = [hu_preloadContent flatMap:v11];

  return v9;
}

id __77__HUEditLocationViewController_presentNotificationSettingsForTopic_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationTopicModuleController];
  v3 = [v2 presentNotificationSettingsForTopic:*(a1 + 40) animated:*(a1 + 48)];

  return v3;
}

- (id)showNotificationSettingsForHomeKitObject:(id)object animated:(BOOL)animated
{
  objectCopy = object;
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__HUEditLocationViewController_showNotificationSettingsForHomeKitObject_animated___block_invoke;
  v11[3] = &unk_277DB7830;
  v11[4] = self;
  v12 = objectCopy;
  animatedCopy = animated;
  v8 = objectCopy;
  v9 = [hu_preloadContent flatMap:v11];

  return v9;
}

id __82__HUEditLocationViewController_showNotificationSettingsForHomeKitObject_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationTopicModuleController];
  v3 = [v2 showNotificationSettingsForHomeKitObject:*(a1 + 40) animated:*(a1 + 48)];

  return v3;
}

- (id)presentNetworkSettings:(BOOL)settings
{
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HUEditLocationViewController_presentNetworkSettings___block_invoke;
  v8[3] = &unk_277DBE050;
  v8[4] = self;
  settingsCopy = settings;
  v6 = [hu_preloadContent flatMap:v8];

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

- (id)presentBridgeSettings:(BOOL)settings
{
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HUEditLocationViewController_presentBridgeSettings___block_invoke;
  v8[3] = &unk_277DBE050;
  v8[4] = self;
  settingsCopy = settings;
  v6 = [hu_preloadContent flatMap:v8];

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

- (id)presentSoftwareUpdate:(BOOL)update
{
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HUEditLocationViewController_presentSoftwareUpdate___block_invoke;
  v8[3] = &unk_277DBE050;
  v8[4] = self;
  updateCopy = update;
  v6 = [hu_preloadContent flatMap:v8];

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

- (id)presentPersonalRequestsSettings:(id)settings
{
  settingsCopy = settings;
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HUEditLocationViewController_presentPersonalRequestsSettings___block_invoke;
  v9[3] = &unk_277DBE0A0;
  v10 = settingsCopy;
  selfCopy = self;
  v6 = settingsCopy;
  v7 = [hu_preloadContent flatMap:v9];

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

- (id)presentUserViewController:(id)controller
{
  controllerCopy = controller;
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HUEditLocationViewController_presentUserViewController___block_invoke;
  v9[3] = &unk_277DBE0A0;
  v10 = controllerCopy;
  selfCopy = self;
  v6 = controllerCopy;
  v7 = [hu_preloadContent flatMap:v9];

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
    selfCopy = self;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@ Presenting lock category settings for restricted guest.", buf, 0x16u);
  }

  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  home = [homeItemManager home];

  currentUser = [home currentUser];
  v9 = objc_alloc(MEMORY[0x277D14C98]);
  currentUser2 = [home currentUser];
  v11 = [v9 initWithHome:home user:currentUser2 nameStyle:0];

  homeItemManager2 = [(HUEditLocationViewController *)self homeItemManager];
  pinCodeManager = [homeItemManager2 pinCodeManager];

  objc_initWeak(buf, self);
  userPinCodes = [pinCodeManager userPinCodes];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__HUEditLocationViewController_presentRestrictedGuestLockSettings__block_invoke;
  v21[3] = &unk_277DBE0C8;
  objc_copyWeak(v26, buf);
  v15 = currentUser;
  v22 = v15;
  v26[1] = a2;
  v16 = home;
  v23 = v16;
  v17 = pinCodeManager;
  v24 = v17;
  v18 = v11;
  v25 = v18;
  v19 = [userPinCodes addSuccessBlock:v21];

  objc_destroyWeak(v26);
  objc_destroyWeak(buf);

  return userPinCodes;
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

- (id)presentUserLockSettings:(id)settings
{
  settingsCopy = settings;
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HUEditLocationViewController_presentUserLockSettings___block_invoke;
  v9[3] = &unk_277DBE0A0;
  v9[4] = self;
  v10 = settingsCopy;
  v6 = settingsCopy;
  v7 = [hu_preloadContent flatMap:v9];

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

- (id)presentDefaultMediaServiceSettings:(id)settings
{
  settingsCopy = settings;
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HUEditLocationViewController_presentDefaultMediaServiceSettings___block_invoke;
  v9[3] = &unk_277DBE0A0;
  v10 = settingsCopy;
  selfCopy = self;
  v6 = settingsCopy;
  v7 = [hu_preloadContent flatMap:v9];

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

- (void)addButtonPressed:(id)pressed
{
  addLocationDelegate = [(HUEditLocationViewController *)self addLocationDelegate];
  [addLocationDelegate editLocationViewControllerWouldPresentAddController:self];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(HUEditLocationViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    tableView = [(HUEditLocationViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)updateAndCommitHomeName
{
  editedName = [(HUEditLocationViewController *)self editedName];
  v4 = [(HUEditLocationViewController *)self updateBuilderName:editedName];

  if (v4)
  {
    homeBuilder = [(HUEditLocationViewController *)self homeBuilder];
    commitItem = [homeBuilder commitItem];

    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__HUEditLocationViewController_updateAndCommitHomeName__block_invoke;
    v8[3] = &unk_277DB94D0;
    objc_copyWeak(&v9, &location);
    v7 = [commitItem addFailureBlock:v8];
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
  editedNotes = [(HUEditLocationViewController *)self editedNotes];
  v4 = [(HUEditLocationViewController *)self updateBuilderNotes:editedNotes];

  if (v4)
  {
    homeBuilder = [(HUEditLocationViewController *)self homeBuilder];
    commitItem = [homeBuilder commitItem];

    v6 = [commitItem addFailureBlock:&__block_literal_global_122_0];
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

- (BOOL)updateBuilderNotes:(id)notes
{
  notesCopy = notes;
  homeBuilder = [(HUEditLocationViewController *)self homeBuilder];
  userNotes = [homeBuilder userNotes];
  v7 = [notesCopy isEqualToString:userNotes];

  if ((v7 & 1) == 0)
  {
    editedNotes = [(HUEditLocationViewController *)self editedNotes];
    homeBuilder2 = [(HUEditLocationViewController *)self homeBuilder];
    [homeBuilder2 setUserNotes:editedNotes];
  }

  return v7 ^ 1;
}

- (BOOL)updateBuilderName:(id)name
{
  v4 = [MEMORY[0x277D14CE8] sanitizeUserEnteredHomeKitName:name];
  if (![v4 length])
  {
    homeBuilder = [(HUEditLocationViewController *)self homeBuilder];
    name = [homeBuilder name];

    v4 = name;
  }

  homeBuilder2 = [(HUEditLocationViewController *)self homeBuilder];
  name2 = [homeBuilder2 name];
  v9 = [v4 isEqualToString:name2];

  if ((v9 & 1) == 0)
  {
    nameCell = [(HUEditLocationViewController *)self nameCell];
    textField = [nameCell textField];
    [textField setText:v4];

    [(HUEditLocationViewController *)self setTitle:v4];
    homeBuilder3 = [(HUEditLocationViewController *)self homeBuilder];
    [homeBuilder3 setName:v4];
  }

  return v9 ^ 1;
}

- (void)dismissAndCommitChanges
{
  nameCell = [(HUEditLocationViewController *)self nameCell];
  textField = [nameCell textField];
  isEditing = [textField isEditing];

  if (isEditing)
  {
    nameCell2 = [(HUEditLocationViewController *)self nameCell];
    [nameCell2 endEditing:1];
LABEL_5:

    return;
  }

  detailNotesCell = [(HUEditLocationViewController *)self detailNotesCell];
  isTextViewFirstResponder = [detailNotesCell isTextViewFirstResponder];

  if (isTextViewFirstResponder)
  {
    nameCell2 = [(HUEditLocationViewController *)self detailNotesCell];
    [nameCell2 resignTextViewAsFirstResponder];
    goto LABEL_5;
  }

  editedName = [(HUEditLocationViewController *)self editedName];
  v9 = [(HUEditLocationViewController *)self updateBuilderName:editedName];

  editedNotes = [(HUEditLocationViewController *)self editedNotes];
  v11 = [(HUEditLocationViewController *)self updateBuilderNotes:editedNotes];

  if ((v9 & 1) != 0 || v11)
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "HUEditLocationViewController: Uncommitted changes detected on dismissal, comitting changes", buf, 2u);
    }

    homeBuilder = [(HUEditLocationViewController *)self homeBuilder];
    commitItem = [homeBuilder commitItem];

    v15 = [commitItem addFailureBlock:&__block_literal_global_124_1];
  }

  presentationDelegate = [(HUEditLocationViewController *)self presentationDelegate];
  v17 = [presentationDelegate finishPresentation:self animated:1];
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

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  notificationSettingsModule = [homeItemManager notificationSettingsModule];

  if (notificationSettingsModule == moduleCopy)
  {
    v12 = [(HUItemModuleController *)[HUUserNotificationTopicListModuleController alloc] initWithModule:moduleCopy];
    [(HUEditLocationViewController *)self setNotificationTopicModuleController:v12];

    homeItemManager2 = [(HUEditLocationViewController *)self homeItemManager];
    pinCodeManager = [homeItemManager2 pinCodeManager];
    notificationTopicModuleController = [(HUEditLocationViewController *)self notificationTopicModuleController];
    [notificationTopicModuleController setPinCodeManager:pinCodeManager];

    notificationTopicModuleController2 = [(HUEditLocationViewController *)self notificationTopicModuleController];
  }

  else
  {
    homeItemManager3 = [(HUEditLocationViewController *)self homeItemManager];
    connectedServicesItemModule = [homeItemManager3 connectedServicesItemModule];

    if (connectedServicesItemModule != moduleCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HUEditLocationViewController.m" lineNumber:510 description:{@"Unknown module %@", moduleCopy}];

      v11 = 0;
      goto LABEL_7;
    }

    v17 = [(HUItemModuleController *)[HUMatterConnectedServicesItemModuleController alloc] initWithModule:moduleCopy];
    [(HUEditLocationViewController *)self setConnectedServicesItemModuleController:v17];

    notificationTopicModuleController2 = [(HUEditLocationViewController *)self connectedServicesItemModuleController];
  }

  v11 = notificationTopicModuleController2;
LABEL_7:

  return v11;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  nameItem = [homeItemManager nameItem];
  v9 = [itemCopy isEqual:nameItem];

  if (v9)
  {
    goto LABEL_7;
  }

  homeItemManager2 = [(HUEditLocationViewController *)self homeItemManager];
  inviteUsersItem = [homeItemManager2 inviteUsersItem];
  v12 = [itemCopy isEqual:inviteUsersItem];

  if (v12)
  {
    goto LABEL_7;
  }

  homeItemManager3 = [(HUEditLocationViewController *)self homeItemManager];
  chooseWallpaperItem = [homeItemManager3 chooseWallpaperItem];
  if ([itemCopy isEqual:chooseWallpaperItem])
  {
    goto LABEL_5;
  }

  homeItemManager4 = [(HUEditLocationViewController *)self homeItemManager];
  allowedAccessoryCategoryItemProvider = [homeItemManager4 allowedAccessoryCategoryItemProvider];
  items = [allowedAccessoryCategoryItemProvider items];
  v18 = [items containsObject:itemCopy];

  if (v18)
  {
    goto LABEL_7;
  }

  homeItemManager5 = [(HUEditLocationViewController *)self homeItemManager];
  homeScheduleItem = [homeItemManager5 homeScheduleItem];
  v23 = [itemCopy isEqual:homeScheduleItem];

  if (v23)
  {
    goto LABEL_7;
  }

  homeItemManager6 = [(HUEditLocationViewController *)self homeItemManager];
  wallpaperThumbnailItem = [homeItemManager6 wallpaperThumbnailItem];
  v26 = [itemCopy isEqual:wallpaperThumbnailItem];

  if (v26)
  {
    goto LABEL_7;
  }

  homeItemManager7 = [(HUEditLocationViewController *)self homeItemManager];
  wallpaperPickerItem = [homeItemManager7 wallpaperPickerItem];
  v29 = [itemCopy isEqual:wallpaperPickerItem];

  if (v29)
  {
    goto LABEL_7;
  }

  homeItemManager8 = [(HUEditLocationViewController *)self homeItemManager];
  detailNotesItem = [homeItemManager8 detailNotesItem];
  v32 = [itemCopy isEqual:detailNotesItem];

  if (v32)
  {
    goto LABEL_7;
  }

  homeItemManager9 = [(HUEditLocationViewController *)self homeItemManager];
  softwareUpdateItem = [homeItemManager9 softwareUpdateItem];
  v35 = [itemCopy isEqual:softwareUpdateItem];

  if (v35)
  {
    goto LABEL_7;
  }

  homeItemManager10 = [(HUEditLocationViewController *)self homeItemManager];
  showPredictedScenes = [homeItemManager10 showPredictedScenes];
  v38 = [itemCopy isEqual:showPredictedScenes];

  if (v38)
  {
    goto LABEL_7;
  }

  homeItemManager3 = [(HUEditLocationViewController *)self homeItemManager];
  chooseWallpaperItem = [homeItemManager3 cameraItem];
  if ([itemCopy isEqual:chooseWallpaperItem])
  {
LABEL_5:

LABEL_7:
    v19 = objc_opt_class();
    goto LABEL_8;
  }

  homeItemManager11 = [(HUEditLocationViewController *)self homeItemManager];
  removeItem = [homeItemManager11 removeItem];
  v41 = [itemCopy isEqual:removeItem];

  if (v41)
  {
    goto LABEL_7;
  }

  homeItemManager12 = [(HUEditLocationViewController *)self homeItemManager];
  soundCheckItem = [homeItemManager12 soundCheckItem];
  v44 = [itemCopy isEqual:soundCheckItem];

  if (v44)
  {
    goto LABEL_7;
  }

  homeItemManager13 = [(HUEditLocationViewController *)self homeItemManager];
  userItemProvider = [homeItemManager13 userItemProvider];
  items2 = [userItemProvider items];
  if ([items2 containsObject:itemCopy])
  {

    goto LABEL_7;
  }

  homeItemManager14 = [(HUEditLocationViewController *)self homeItemManager];
  inviteItemProvider = [homeItemManager14 inviteItemProvider];
  items3 = [inviteItemProvider items];
  v51 = [items3 containsObject:itemCopy];

  if (v51)
  {
    goto LABEL_7;
  }

  homeItemManager15 = [(HUEditLocationViewController *)self homeItemManager];
  guestsItem = [homeItemManager15 guestsItem];
  v54 = [itemCopy isEqual:guestsItem];

  if (v54)
  {
    goto LABEL_7;
  }

  homeItemManager16 = [(HUEditLocationViewController *)self homeItemManager];
  locationServicesSettingItem = [homeItemManager16 locationServicesSettingItem];
  v57 = [itemCopy isEqual:locationServicesSettingItem];

  if (v57)
  {
    goto LABEL_7;
  }

  homeItemManager17 = [(HUEditLocationViewController *)self homeItemManager];
  siriTriggerPhraseSettingItem = [homeItemManager17 siriTriggerPhraseSettingItem];
  v60 = [itemCopy isEqual:siriTriggerPhraseSettingItem];

  if (v60)
  {
    goto LABEL_7;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUEditLocationViewController.m" lineNumber:583 description:{@"Couldn't find a cell class for item: %@", itemCopy}];

  v19 = 0;
LABEL_8:

  return v19;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  objc_opt_class();
  v147 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v11 = v147;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  chooseWallpaperItem = [homeItemManager chooseWallpaperItem];
  if ([itemCopy isEqual:chooseWallpaperItem])
  {

LABEL_7:
    detailNotesCell3 = v147;
    [detailNotesCell3 setAccessoryView:0];
    [detailNotesCell3 setAccessoryType:1];
    [detailNotesCell3 setHideIcon:1];
    homeItemManager2 = [(HUEditLocationViewController *)self homeItemManager];
    allowedAccessoryCategoryItemProvider = [homeItemManager2 allowedAccessoryCategoryItemProvider];
    items = [allowedAccessoryCategoryItemProvider items];
    v23 = [items containsObject:itemCopy];

    v24 = v12;
    if (!v23)
    {
LABEL_10:

      goto LABEL_11;
    }

    [detailNotesCell3 setHideIcon:0];
    homeBuilder = +[HUIconCellContentMetrics compactMetrics];
    [detailNotesCell3 setContentMetrics:homeBuilder];
LABEL_9:

    goto LABEL_10;
  }

  homeItemManager3 = [(HUEditLocationViewController *)self homeItemManager];
  allowedAccessoryCategoryItemProvider2 = [homeItemManager3 allowedAccessoryCategoryItemProvider];
  [allowedAccessoryCategoryItemProvider2 items];
  v17 = v146 = pathCopy;
  v18 = [v17 containsObject:itemCopy];

  pathCopy = v146;
  if (v18)
  {
    goto LABEL_7;
  }

  homeItemManager4 = [(HUEditLocationViewController *)self homeItemManager];
  homeScheduleItem = [homeItemManager4 homeScheduleItem];
  v28 = [itemCopy isEqual:homeScheduleItem];

  if (v28)
  {
    wallpaperPickerViewController4 = v147;
    [wallpaperPickerViewController4 setIconDisplayStyle:1];
    [wallpaperPickerViewController4 setDisableContinuousIconAnimation:1];
    HUDefaultSizeForIconSize();
    v31 = v30;
    v33 = v32;
    contentMetrics = [wallpaperPickerViewController4 contentMetrics];
    [contentMetrics setIconSize:{v31, v33}];

    [wallpaperPickerViewController4 setAccessoryView:0];
    [wallpaperPickerViewController4 setAccessoryType:1];
    latestResults = [itemCopy latestResults];
    v36 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [wallpaperPickerViewController4 setAccessibilityIdentifier:v36];
LABEL_16:

LABEL_17:
    v24 = v12;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    homeItemManager5 = [(HUEditLocationViewController *)self homeItemManager];
    nameItem = [homeItemManager5 nameItem];
    v39 = [itemCopy isEqual:nameItem];

    v24 = v12;
    if (!v39)
    {
      goto LABEL_11;
    }

    [(HUEditLocationViewController *)self setNameCell:v147];
    nameCell = [(HUEditLocationViewController *)self nameCell];
    [nameCell setAccessibilityIdentifier:@"Home.HomeSettings.HomeName"];
    goto LABEL_21;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  homeItemManager6 = [(HUEditLocationViewController *)self homeItemManager];
  v43 = homeItemManager6;
  if (isKindOfClass)
  {
    detailNotesItem = [homeItemManager6 detailNotesItem];
    v45 = [itemCopy isEqual:detailNotesItem];

    v24 = v12;
    if (v45)
    {
      [(HUEditLocationViewController *)self setDetailNotesCell:v147];
      detailNotesCell = [(HUEditLocationViewController *)self detailNotesCell];
      [detailNotesCell setTextViewDelegate:self];

      latestResults2 = [itemCopy latestResults];
      v48 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      detailNotesCell2 = [(HUEditLocationViewController *)self detailNotesCell];
      [detailNotesCell2 setAccessibilityIdentifier:v48];

      detailNotesCell3 = [(HUEditLocationViewController *)self detailNotesCell];
      homeBuilder = [(HUEditLocationViewController *)self homeBuilder];
      home = [homeBuilder home];
      [detailNotesCell3 setEditEnabled:{objc_msgSend(home, "hf_currentUserIsAdministrator")}];

      goto LABEL_9;
    }
  }

  else
  {
    siriTriggerPhraseSettingItem = [homeItemManager6 siriTriggerPhraseSettingItem];
    v52 = [itemCopy isEqual:siriTriggerPhraseSettingItem];

    if (v52)
    {
      v53 = v147;
      itemManager = [(HUItemTableViewController *)self itemManager];
      v55 = [itemManager titleForSection:{objc_msgSend(v146, "section")}];

      [v53 setAccessoryType:1];
      [v53 setHideIcon:1];
      v56 = +[HUIconCellContentMetrics compactMetrics];
      [v53 setContentMetrics:v56];

      goto LABEL_17;
    }

    homeItemManager7 = [(HUEditLocationViewController *)self homeItemManager];
    softwareUpdateItem = [homeItemManager7 softwareUpdateItem];
    v59 = [itemCopy isEqual:softwareUpdateItem];

    if (v59)
    {
      wallpaperPickerViewController4 = v147;
      [wallpaperPickerViewController4 setAccessoryType:1];
      v60 = +[HUIconCellContentMetrics compactMetrics];
      [wallpaperPickerViewController4 setContentMetrics:v60];

      latestResults = [itemCopy latestResults];
      v36 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];
      [wallpaperPickerViewController4 setHideIcon:v36 == 0];
      goto LABEL_16;
    }

    homeItemManager8 = [(HUEditLocationViewController *)self homeItemManager];
    wallpaperThumbnailItem = [homeItemManager8 wallpaperThumbnailItem];
    v63 = [itemCopy isEqual:wallpaperThumbnailItem];

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
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
          [currentHandler handleFailureInFunction:v69 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v64, objc_opt_class()}];

          v67 = 0;
        }
      }

      else
      {
        v67 = 0;
        v24 = v12;
      }

      latestResults3 = [itemCopy latestResults];
      v99 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v67 setAccessibilityIdentifier:v99];

      [v67 setDelegate:self];
      goto LABEL_11;
    }

    homeItemManager9 = [(HUEditLocationViewController *)self homeItemManager];
    wallpaperPickerItem = [homeItemManager9 wallpaperPickerItem];
    v72 = [itemCopy isEqual:wallpaperPickerItem];

    if (v72)
    {
      v73 = v147;
      wallpaperPickerViewController = [(HUEditLocationViewController *)self wallpaperPickerViewController];
      [v73 setViewController:wallpaperPickerViewController];

      wallpaperPickerViewController2 = [(HUEditLocationViewController *)self wallpaperPickerViewController];
      [wallpaperPickerViewController2 setDelegate:self];

      mEMORY[0x277D14D18] = [MEMORY[0x277D14D18] sharedInstance];
      v77 = [mEMORY[0x277D14D18] allNamedWallpapersForWallpaperCollectionType:0];
      wallpaperPickerViewController3 = [(HUEditLocationViewController *)self wallpaperPickerViewController];
      [wallpaperPickerViewController3 setNamedWallpapers:v77];

      latestResults = [MEMORY[0x277D14D18] sharedInstance];
      v36 = [latestResults allNamedWallpaperThumbnailsForWallpaperCollectionType:0];
      wallpaperPickerViewController4 = [(HUEditLocationViewController *)self wallpaperPickerViewController];
      [wallpaperPickerViewController4 setNamedWallpaperThumbnails:v36];
      goto LABEL_16;
    }

    homeItemManager10 = [(HUEditLocationViewController *)self homeItemManager];
    inviteUsersItem = [homeItemManager10 inviteUsersItem];
    v81 = [itemCopy isEqual:inviteUsersItem];

    if (v81)
    {
      detailNotesCell3 = [v147 defaultContentConfiguration];
      latestResults4 = [itemCopy latestResults];
      v83 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [detailNotesCell3 setText:v83];

      v84 = MEMORY[0x277D755B8];
      homeItemManager11 = [(HUEditLocationViewController *)self homeItemManager];
      inviteUsersItem2 = [homeItemManager11 inviteUsersItem];
      latestResults5 = [inviteUsersItem2 latestResults];
      v88 = [latestResults5 objectForKeyedSubscript:*MEMORY[0x277D13EA0]];
      v89 = [v84 systemImageNamed:v88];
      [detailNotesCell3 setImage:v89];

      latestResults6 = [itemCopy latestResults];
      v91 = [latestResults6 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v147 setAccessibilityIdentifier:v91];

      latestResults7 = [itemCopy latestResults];
      v93 = [latestResults7 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
      LODWORD(inviteUsersItem2) = [v93 BOOLValue];

      if (inviteUsersItem2)
      {
        systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
        textProperties = [detailNotesCell3 textProperties];
        [textProperties setColor:systemGrayColor];

        systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
        imageProperties = [detailNotesCell3 imageProperties];
        [imageProperties setTintColor:systemGrayColor2];
      }

      else
      {
        hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
        textProperties2 = [detailNotesCell3 textProperties];
        [textProperties2 setColor:hf_keyColor];

        systemGrayColor2 = [detailNotesCell3 imageProperties];
        [systemGrayColor2 setTintColor:0];
      }

      pathCopy = v146;
      v24 = v12;

      v104 = *MEMORY[0x277D76C88];
      imageProperties2 = [detailNotesCell3 imageProperties];
      [imageProperties2 setReservedLayoutSize:{37.0, v104}];

      [v147 setContentConfiguration:detailNotesCell3];
      goto LABEL_10;
    }

    homeItemManager12 = [(HUEditLocationViewController *)self homeItemManager];
    cameraItem = [homeItemManager12 cameraItem];
    if ([itemCopy isEqual:cameraItem])
    {
    }

    else
    {
      homeItemManager13 = [(HUEditLocationViewController *)self homeItemManager];
      removeItem = [homeItemManager13 removeItem];
      v108 = [itemCopy isEqual:removeItem];

      if (!v108)
      {
        homeItemManager14 = [(HUEditLocationViewController *)self homeItemManager];
        soundCheckItem = [homeItemManager14 soundCheckItem];
        v122 = [itemCopy isEqual:soundCheckItem];

        if (v122)
        {
          pathCopy = v146;
          if (!v12)
          {
            currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
            v144 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HUEditLocationViewController setupCell:forItem:indexPath:]"];
            v145 = objc_opt_class();
            [currentHandler2 handleFailureInFunction:v144 file:@"HUEditLocationViewController.m" lineNumber:694 description:{@"Expected class of %@ but was %@", v145, objc_opt_class()}];
          }

          [v12 setDelegate:self];
          goto LABEL_17;
        }

        homeItemManager15 = [(HUEditLocationViewController *)self homeItemManager];
        userItemProvider = [homeItemManager15 userItemProvider];
        items2 = [userItemProvider items];
        if ([items2 containsObject:itemCopy])
        {
        }

        else
        {
          homeItemManager16 = [(HUEditLocationViewController *)self homeItemManager];
          inviteItemProvider = [homeItemManager16 inviteItemProvider];
          items3 = [inviteItemProvider items];
          v129 = [items3 containsObject:itemCopy];

          if (!v129)
          {
            pathCopy = v146;
            v24 = v12;
            if (v12)
            {
              item = [v12 item];
              homeItemManager17 = [(HUEditLocationViewController *)self homeItemManager];
              showPredictedScenes = [homeItemManager17 showPredictedScenes];
              v140 = [item isEqual:showPredictedScenes];

              if (v140)
              {
                latestResults8 = [itemCopy latestResults];
                v142 = [latestResults8 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
                [v12 setAccessibilityIdentifier:v142];
              }

              v24 = v12;
              [v12 setDelegate:self];
              pathCopy = v146;
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
        latestResults9 = [itemCopy latestResults];
        v134 = [latestResults9 objectForKeyedSubscript:*MEMORY[0x277D14120]];

        if (v134)
        {
          [v132 setUserHandle:v134];
          latestResults10 = [itemCopy latestResults];
          v136 = [latestResults10 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
          [v132 setAccessibilityIdentifier:v136];
        }

        pathCopy = v146;
        goto LABEL_17;
      }
    }

    imageView = [v147 imageView];
    [imageView setImage:0];

    [v147 setIndentationLevel:0];
    homeItemManager18 = [(HUEditLocationViewController *)self homeItemManager];
    cameraItem2 = [homeItemManager18 cameraItem];
    v112 = [itemCopy isEqual:cameraItem2];

    if (v112)
    {
      latestResults11 = [itemCopy latestResults];
      v114 = [latestResults11 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v147 setAccessibilityIdentifier:v114];
    }

    detailNotesCell3 = [(HUEditLocationViewController *)self homeItemManager];
    removeItem2 = [detailNotesCell3 removeItem];
    pathCopy = v146;
    v24 = v12;
    if (([itemCopy isEqual:removeItem2] & 1) == 0)
    {

      goto LABEL_10;
    }

    homeItemManager19 = [(HUEditLocationViewController *)self homeItemManager];
    home2 = [homeItemManager19 home];
    hf_currentUserIsOwner = [home2 hf_currentUserIsOwner];

    if (hf_currentUserIsOwner)
    {
      nameCell = [itemCopy latestResults];
      v119 = [nameCell objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v147 setAccessibilityIdentifier:v119];

LABEL_21:
    }
  }

LABEL_11:
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  wallpaperThumbnailItem = [homeItemManager wallpaperThumbnailItem];
  v15 = [itemCopy isEqual:wallpaperThumbnailItem];

  if (v15)
  {
    v16 = cellCopy;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v19 = v18;
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 bounds];
    v22 = v19 / v21;

    [v16 setImageSize:round(v22 * 244.0)];
    homeBuilder = [(HUEditLocationViewController *)self homeBuilder];
    wallpaperBuilder = [homeBuilder wallpaperBuilder];
    wallpaperEditCollectionFuture = [wallpaperBuilder wallpaperEditCollectionFuture];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __70__HUEditLocationViewController_updateCell_forItem_indexPath_animated___block_invoke;
    v82[3] = &unk_277DBE118;
    v83 = v16;
    homeBuilder2 = v16;
    v27 = [wallpaperEditCollectionFuture addSuccessBlock:v82];
  }

  else
  {
    homeItemManager2 = [(HUEditLocationViewController *)self homeItemManager];
    wallpaperPickerItem = [homeItemManager2 wallpaperPickerItem];
    v30 = [itemCopy isEqual:wallpaperPickerItem];

    if (v30)
    {
      wallpaperPickerViewController = [(HUEditLocationViewController *)self wallpaperPickerViewController];
      tableView = [(HUEditLocationViewController *)self tableView];
      [tableView frame];
      [wallpaperPickerViewController setImageSizeToFitWidth:3 forNumberOfWallpapers:v33];

      homeBuilder2 = [(HUEditLocationViewController *)self homeBuilder];
      wallpaperBuilder2 = [homeBuilder2 wallpaperBuilder];
      wallpaperEditCollectionFuture2 = [wallpaperBuilder2 wallpaperEditCollectionFuture];
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __70__HUEditLocationViewController_updateCell_forItem_indexPath_animated___block_invoke_2;
      v80[3] = &unk_277DBE140;
      v80[4] = self;
      v81 = animatedCopy;
      v36 = [wallpaperEditCollectionFuture2 addSuccessBlock:v80];
    }

    else
    {
      homeItemManager3 = [(HUEditLocationViewController *)self homeItemManager];
      detailNotesItem = [homeItemManager3 detailNotesItem];
      v39 = [itemCopy isEqual:detailNotesItem];

      if (v39)
      {
        v40 = cellCopy;
        editedNotes = [(HUEditLocationViewController *)self editedNotes];
        [v40 setText:editedNotes];

        homeBuilder3 = [(HUEditLocationViewController *)self homeBuilder];
        home = [homeBuilder3 home];
        [v40 setEditEnabled:{objc_msgSend(home, "hf_currentUserIsAdministrator")}];

        latestResults = [itemCopy latestResults];
        v45 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F70]];
        [v40 setPlaceholderText:v45];

        goto LABEL_7;
      }

      homeItemManager4 = [(HUEditLocationViewController *)self homeItemManager];
      removeItem = [homeItemManager4 removeItem];
      v48 = [itemCopy isEqual:removeItem];

      if (v48)
      {
        [cellCopy setDestructive:1];
        goto LABEL_7;
      }

      homeItemManager5 = [(HUEditLocationViewController *)self homeItemManager];
      soundCheckItem = [homeItemManager5 soundCheckItem];
      v51 = [itemCopy isEqual:soundCheckItem];

      if (v51)
      {
        homeBuilder2 = cellCopy;
        latestResults2 = [itemCopy latestResults];
        v53 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D14068]];
        v54 = [v53 integerValue] == 2;

        [homeBuilder2 setOn:v54 animated:1];
        goto LABEL_6;
      }

      homeItemManager6 = [(HUEditLocationViewController *)self homeItemManager];
      guestsItem = [homeItemManager6 guestsItem];
      v57 = [itemCopy isEqual:guestsItem];

      if (v57)
      {
        homeBuilder2 = [MEMORY[0x277D756E0] cellConfiguration];
        latestResults3 = [itemCopy latestResults];
        v59 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
        [homeBuilder2 setText:v59];

        latestResults4 = [itemCopy latestResults];
        v61 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
        [homeBuilder2 setSecondaryText:v61];

        secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
        secondaryTextProperties = [homeBuilder2 secondaryTextProperties];
        [secondaryTextProperties setColor:secondaryLabelColor];

        latestResults5 = [itemCopy latestResults];
        v65 = [latestResults5 objectForKeyedSubscript:*MEMORY[0x277D13E98]];
        [homeBuilder2 setImage:v65];

        systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
        imageProperties = [homeBuilder2 imageProperties];
        [imageProperties setTintColor:systemGrayColor];

        v68 = *MEMORY[0x277D76C88];
        imageProperties2 = [homeBuilder2 imageProperties];
        [imageProperties2 setReservedLayoutSize:{37.0, v68}];

        [cellCopy setContentConfiguration:homeBuilder2];
        latestResults6 = [itemCopy latestResults];
        v71 = [latestResults6 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
        [cellCopy setAccessibilityIdentifier:v71];

        [cellCopy setAccessoryType:1];
        goto LABEL_6;
      }

      homeItemManager7 = [(HUEditLocationViewController *)self homeItemManager];
      locationServicesSettingItem = [homeItemManager7 locationServicesSettingItem];
      v74 = [itemCopy isEqual:locationServicesSettingItem];

      if (!v74)
      {
        goto LABEL_7;
      }

      objc_opt_class();
      v75 = cellCopy;
      if (objc_opt_isKindOfClass())
      {
        v76 = v75;
      }

      else
      {
        v76 = 0;
      }

      homeBuilder2 = v76;

      homeItemManager8 = [(HUEditLocationViewController *)self homeItemManager];
      home2 = [homeItemManager8 home];
      [homeBuilder2 setOn:{objc_msgSend(home2, "isLocationServicesEnabled")}];

      wallpaperBuilder2 = [(HUEditLocationViewController *)self homeItemManager];
      wallpaperEditCollectionFuture2 = [wallpaperBuilder2 home];
      [homeBuilder2 setDisabled:{objc_msgSend(wallpaperEditCollectionFuture2, "hf_currentUserIsAdministrator") ^ 1}];
    }
  }

LABEL_6:

LABEL_7:
  v79.receiver = self;
  v79.super_class = HUEditLocationViewController;
  [(HUItemTableViewController *)&v79 updateCell:cellCopy forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
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

- (unint64_t)automaticDisablingReasonsForItem:(id)item
{
  v29[6] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  cameraItem = [homeItemManager cameraItem];
  v29[0] = cameraItem;
  homeItemManager2 = [(HUEditLocationViewController *)self homeItemManager];
  chooseWallpaperItem = [homeItemManager2 chooseWallpaperItem];
  v29[1] = chooseWallpaperItem;
  homeItemManager3 = [(HUEditLocationViewController *)self homeItemManager];
  wallpaperThumbnailItem = [homeItemManager3 wallpaperThumbnailItem];
  v29[2] = wallpaperThumbnailItem;
  homeItemManager4 = [(HUEditLocationViewController *)self homeItemManager];
  homeScheduleItem = [homeItemManager4 homeScheduleItem];
  v29[3] = homeScheduleItem;
  homeItemManager5 = [(HUEditLocationViewController *)self homeItemManager];
  softwareUpdateItem = [homeItemManager5 softwareUpdateItem];
  v29[4] = softwareUpdateItem;
  homeItemManager6 = [(HUEditLocationViewController *)self homeItemManager];
  removeItem = [homeItemManager6 removeItem];
  v29[5] = removeItem;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:6];

  homeItemManager7 = [(HUEditLocationViewController *)self homeItemManager];
  allowedAccessoryCategoryItemProvider = [homeItemManager7 allowedAccessoryCategoryItemProvider];
  items = [allowedAccessoryCategoryItemProvider items];
  allObjects = [items allObjects];
  v17 = [v12 arrayByAddingObjectsFromArray:allObjects];

  if ([v17 containsObject:itemCopy])
  {
    v18 = 1;
  }

  else
  {
    notificationTopicModuleController = [(HUEditLocationViewController *)self notificationTopicModuleController];
    module = [notificationTopicModuleController module];
    allItems = [module allItems];
    v22 = [allItems containsObject:itemCopy];

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

- (id)currentTextForTextField:(id)field item:(id)item
{
  fieldCopy = field;
  itemCopy = item;
  nameCell = [(HUEditLocationViewController *)self nameCell];
  textField = [nameCell textField];

  if (textField == fieldCopy)
  {
    editedName = [(HUEditLocationViewController *)self editedName];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HUEditLocationViewController;
    editedName = [(HUItemTableViewController *)&v13 currentTextForTextField:fieldCopy item:itemCopy];
  }

  v11 = editedName;

  return v11;
}

- (void)textDidChange:(id)change forTextField:(id)field item:(id)item
{
  changeCopy = change;
  v12.receiver = self;
  v12.super_class = HUEditLocationViewController;
  fieldCopy = field;
  [(HUItemTableViewController *)&v12 textDidChange:changeCopy forTextField:fieldCopy item:item];
  v10 = [(HUEditLocationViewController *)self nameCell:v12.receiver];
  textField = [v10 textField];

  if (textField == fieldCopy)
  {
    [(HUEditLocationViewController *)self setEditedName:changeCopy];
  }
}

- (void)textFieldDidEndEditing:(id)editing item:(id)item
{
  v9.receiver = self;
  v9.super_class = HUEditLocationViewController;
  editingCopy = editing;
  [(HUItemTableViewController *)&v9 textFieldDidEndEditing:editingCopy item:item];
  v7 = [(HUEditLocationViewController *)self nameCell:v9.receiver];
  textField = [v7 textField];

  if (textField == editingCopy)
  {
    [(HUEditLocationViewController *)self updateAndCommitHomeName];
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  v9 = [homeItemManager displayedItemAtIndexPath:pathCopy];

  v10 = [(HUItemTableViewController *)self moduleControllerForItem:v9];

  if (v10)
  {
    v47.receiver = self;
    v47.super_class = HUEditLocationViewController;
    v11 = [(HUItemTableViewController *)&v47 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
    goto LABEL_12;
  }

  homeItemManager2 = [(HUEditLocationViewController *)self homeItemManager];
  inviteUsersItem = [homeItemManager2 inviteUsersItem];
  if ([v9 isEqual:inviteUsersItem])
  {

LABEL_6:
    latestResults = [v9 latestResults];
    v18 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    bOOLValue = [v18 BOOLValue];

    v11 = bOOLValue ^ 1;
    goto LABEL_12;
  }

  homeItemManager3 = [(HUEditLocationViewController *)self homeItemManager];
  cameraItem = [homeItemManager3 cameraItem];
  v16 = [v9 isEqual:cameraItem];

  if (v16)
  {
    goto LABEL_6;
  }

  homeItemManager4 = [(HUEditLocationViewController *)self homeItemManager];
  userItemProvider = [homeItemManager4 userItemProvider];
  items = [userItemProvider items];
  if ([items containsObject:v9])
  {
    goto LABEL_10;
  }

  homeItemManager5 = [(HUEditLocationViewController *)self homeItemManager];
  inviteItemProvider = [homeItemManager5 inviteItemProvider];
  items2 = [inviteItemProvider items];
  if ([items2 containsObject:v9])
  {

LABEL_10:
LABEL_11:
    v11 = 1;
    goto LABEL_12;
  }

  homeItemManager6 = [(HUEditLocationViewController *)self homeItemManager];
  [homeItemManager6 allowedAccessoryCategoryItemProvider];
  v27 = v43 = homeItemManager5;
  [v27 items];
  v28 = v41 = inviteItemProvider;
  v45 = [v28 containsObject:v9];

  if (v45)
  {
    goto LABEL_11;
  }

  homeItemManager7 = [(HUEditLocationViewController *)self homeItemManager];
  chooseWallpaperItem = [homeItemManager7 chooseWallpaperItem];
  if ([v9 isEqual:chooseWallpaperItem])
  {
    v11 = 1;
  }

  else
  {
    homeItemManager8 = [(HUEditLocationViewController *)self homeItemManager];
    wallpaperThumbnailItem = [homeItemManager8 wallpaperThumbnailItem];
    if ([v9 isEqual:wallpaperThumbnailItem])
    {
      v11 = 1;
    }

    else
    {
      homeItemManager9 = [(HUEditLocationViewController *)self homeItemManager];
      removeItem = [homeItemManager9 removeItem];
      if ([v9 isEqual:removeItem])
      {
        v11 = 1;
      }

      else
      {
        homeItemManager10 = [(HUEditLocationViewController *)self homeItemManager];
        homeScheduleItem = [homeItemManager10 homeScheduleItem];
        if ([v9 isEqual:?])
        {
          v11 = 1;
        }

        else
        {
          homeItemManager11 = [(HUEditLocationViewController *)self homeItemManager];
          softwareUpdateItem = [homeItemManager11 softwareUpdateItem];
          if ([v9 isEqual:?])
          {
            v11 = 1;
          }

          else
          {
            homeItemManager12 = [(HUEditLocationViewController *)self homeItemManager];
            siriTriggerPhraseSettingItem = [homeItemManager12 siriTriggerPhraseSettingItem];
            if ([v9 isEqual:?])
            {
              v11 = 1;
            }

            else
            {
              homeItemManager13 = [(HUEditLocationViewController *)self homeItemManager];
              guestsItem = [homeItemManager13 guestsItem];
              v11 = [v9 isEqual:guestsItem];
            }
          }
        }
      }
    }
  }

LABEL_12:
  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v179 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v172.receiver = self;
  v172.super_class = HUEditLocationViewController;
  [(HUItemTableViewController *)&v172 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  v10 = [homeItemManager displayedItemAtIndexPath:pathCopy];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = pathCopy;
    v175 = 2112;
    v176 = v10;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "[HUEditLocationViewController-tableView:didSelectRowAtIndexPath]  indexPath=%@  | item=%@.", buf, 0x16u);
  }

  v12 = [(HUItemTableViewController *)self moduleControllerForItem:v10];

  if (!v12)
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    homeItemManager2 = [(HUEditLocationViewController *)self homeItemManager];
    cameraItem = [homeItemManager2 cameraItem];
    v15 = [v10 isEqual:cameraItem];

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
      homeItemManager3 = [(HUEditLocationViewController *)self homeItemManager];
      homeScheduleItem = [homeItemManager3 homeScheduleItem];
      v19 = [v10 isEqual:homeScheduleItem];

      if (v19)
      {
        v20 = objc_alloc(MEMORY[0x277D180D8]);
        homeItemManager4 = [(HUEditLocationViewController *)self homeItemManager];
        home = [homeItemManager4 home];
        uniqueIdentifier = [home uniqueIdentifier];
        hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
        tertiarySystemBackgroundColor = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
        v26 = [v20 initWithHomeID:uniqueIdentifier tintColor:hf_keyColor listRowBackgroundColor:tertiarySystemBackgroundColor];

        navigationController = [(HUEditLocationViewController *)self navigationController];
        v28 = [navigationController hu_pushPreloadableViewController:v26 animated:1];
      }

      else
      {
        homeItemManager5 = [(HUEditLocationViewController *)self homeItemManager];
        allowedAccessoryCategoryItemProvider = [homeItemManager5 allowedAccessoryCategoryItemProvider];
        items = [allowedAccessoryCategoryItemProvider items];
        v32 = [items containsObject:v10];

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

          categoryType = [v162 categoryType];
          v36 = [categoryType isEqualToString:*MEMORY[0x277CCE890]];

          homeItemManager6 = [(HUEditLocationViewController *)self homeItemManager];
          home2 = [homeItemManager6 home];
          hf_canAddAccessCode = [home2 hf_canAddAccessCode];

          if ((v36 & hf_canAddAccessCode) == 1)
          {
            presentRestrictedGuestLockSettings = [(HUEditLocationViewController *)self presentRestrictedGuestLockSettings];
          }

          else
          {
            v157 = [HUUserAccessoryAccessViewController alloc];
            homeItemManager7 = [(HUEditLocationViewController *)self homeItemManager];
            home3 = [homeItemManager7 home];
            homeItemManager8 = [(HUEditLocationViewController *)self homeItemManager];
            home4 = [homeItemManager8 home];
            currentUser = [home4 currentUser];
            categoryType2 = [v162 categoryType];
            v158 = [(HUUserAccessoryAccessViewController *)v157 initWithHome:home3 user:currentUser accessoryCategoryType:categoryType2];

            navigationController2 = [(HUEditLocationViewController *)self navigationController];
            v58 = [navigationController2 hu_pushPreloadableViewController:v158 animated:1];

            v59 = HFLogForCategory();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v60 = NSStringFromSelector(a2);
              *buf = 138412802;
              selfCopy = self;
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
          homeItemManager9 = [(HUEditLocationViewController *)self homeItemManager];
          chooseWallpaperItem = [homeItemManager9 chooseWallpaperItem];
          v43 = [v10 isEqual:chooseWallpaperItem];

          if (v43)
          {
            navigationController3 = [(HUEditLocationViewController *)self navigationController];
            v45 = _HULocalizedStringWithDefaultValue(@"HUEditLocationNamedWallpaperSectionTitle", @"HUEditLocationNamedWallpaperSectionTitle", 1);
            [HUWallpaperPickerViewController presentSecurePickerFromNavigationController:navigationController3 collectionType:0 withTitle:v45 delegate:self];
          }

          else
          {
            homeItemManager10 = [(HUEditLocationViewController *)self homeItemManager];
            wallpaperThumbnailItem = [homeItemManager10 wallpaperThumbnailItem];
            v48 = [v10 isEqual:wallpaperThumbnailItem];

            if (v48)
            {
              homeBuilder = [(HUEditLocationViewController *)self homeBuilder];
              wallpaperBuilder = [homeBuilder wallpaperBuilder];
              wallpaperEditCollectionFuture = [wallpaperBuilder wallpaperEditCollectionFuture];
              v171[0] = MEMORY[0x277D85DD0];
              v171[1] = 3221225472;
              v171[2] = __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke;
              v171[3] = &unk_277DBE118;
              v171[4] = self;
              v52 = [wallpaperEditCollectionFuture addSuccessBlock:v171];
            }

            else
            {
              homeItemManager11 = [(HUEditLocationViewController *)self homeItemManager];
              removeItem = [homeItemManager11 removeItem];
              v63 = [v10 isEqual:removeItem];

              homeItemManager12 = [(HUEditLocationViewController *)self homeItemManager];
              v65 = homeItemManager12;
              if (v63)
              {
                home5 = [homeItemManager12 home];
                hf_currentUserIsOwner = [home5 hf_currentUserIsOwner];

                if (hf_currentUserIsOwner)
                {
                  v68 = @"HUEditLocationRemoveHomeAlertTitle";
                }

                else
                {
                  v68 = @"HUEditLocationLeaveHomeAlertTitle";
                }

                homeBuilder2 = [(HUEditLocationViewController *)self homeBuilder];
                name = [homeBuilder2 name];
                v163 = HULocalizedStringWithFormat(v68, @"%@", v71, v72, v73, v74, v75, v76, name);

                if (hf_currentUserIsOwner)
                {
                  v77 = @"HUEditLocationRemoveHomeConfirmationMessage";
                }

                else
                {
                  v77 = @"HUEditLocationLeaveHomeConfirmationMessage";
                }

                v161 = _HULocalizedStringWithDefaultValue(v77, v77, 1);
                v78 = [(UITableViewController *)self hu_actionSheetWithTitle:v163 message:v161 indexPath:pathCopy];
                v79 = MEMORY[0x277D750F8];
                v80 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
                v81 = [v79 actionWithTitle:v80 style:1 handler:0];
                [v78 addAction:v81];

                v82 = @"HUEditLocationLeaveHomeDeleteButtonTitle";
                if (hf_currentUserIsOwner)
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
                v170 = hf_currentUserIsOwner ^ 1;
                v168 = v83;
                selfCopy2 = self;
                v86 = v83;
                v87 = [v84 actionWithTitle:v85 style:2 handler:v167];
                [v78 addAction:v87];

                [(HUEditLocationViewController *)self presentViewController:v78 animated:1 completion:0];
              }

              else
              {
                inviteUsersItem = [homeItemManager12 inviteUsersItem];
                v89 = [v10 isEqual:inviteUsersItem];

                if (v89)
                {
                  objc_initWeak(buf, self);
                  v90 = MEMORY[0x277D75110];
                  homeItemManager13 = [(HUEditLocationViewController *)self homeItemManager];
                  home6 = [homeItemManager13 home];
                  v165[0] = MEMORY[0x277D85DD0];
                  v165[1] = 3221225472;
                  v165[2] = __66__HUEditLocationViewController_tableView_didSelectRowAtIndexPath___block_invoke_4;
                  v165[3] = &unk_277DB8770;
                  objc_copyWeak(&v166, buf);
                  v93 = [v90 hu_alertControllerForHH2RequiredToAddPeopleForHome:home6 updateNowHandler:v165];

                  if (v93)
                  {
                    [(HUEditLocationViewController *)self presentViewController:v93 animated:1 completion:&__block_literal_global_222];
                  }

                  else
                  {
                    homeItemManager14 = [(HUEditLocationViewController *)self homeItemManager];
                    home7 = [homeItemManager14 home];
                    if ([home7 hasOnboardedForAccessCode])
                    {
                      homeItemManager15 = [(HUEditLocationViewController *)self homeItemManager];
                      home8 = [homeItemManager15 home];
                      accessories = [home8 accessories];
                      v164 = [accessories na_any:&__block_literal_global_226_0];
                    }

                    else
                    {
                      v164 = 0;
                    }

                    v126 = [HUAddPersonRoleViewController alloc];
                    homeItemManager16 = [(HUEditLocationViewController *)self homeItemManager];
                    home9 = [homeItemManager16 home];
                    v129 = [(HUAddPersonRoleViewController *)v126 initWithHome:home9];

                    if (v164)
                    {
                      homeItemManager17 = [(HUEditLocationViewController *)self homeItemManager];
                      pinCodeManager = [homeItemManager17 pinCodeManager];
                      [(HUAddPersonRoleViewController *)v129 setPinCodeManager:pinCodeManager];
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
                  homeItemManager18 = [(HUEditLocationViewController *)self homeItemManager];
                  siriTriggerPhraseSettingItem = [homeItemManager18 siriTriggerPhraseSettingItem];
                  v96 = [v10 isEqual:siriTriggerPhraseSettingItem];

                  if (v96)
                  {
                    v97 = [HUSiriTriggerPhraseSettingDetailsViewController alloc];
                    homeItemManager19 = [(HUEditLocationViewController *)self homeItemManager];
                    home10 = [homeItemManager19 home];
                    v100 = [(HUSiriTriggerPhraseSettingDetailsViewController *)v97 initWithHome:home10 delegate:self];

                    navigationController4 = [(HUEditLocationViewController *)self navigationController];
                    v102 = [navigationController4 hu_pushPreloadableViewController:v100 animated:1];
                  }

                  else
                  {
                    homeItemManager20 = [(HUEditLocationViewController *)self homeItemManager];
                    softwareUpdateItem = [homeItemManager20 softwareUpdateItem];
                    v105 = [v10 isEqual:softwareUpdateItem];

                    if (v105)
                    {
                      v106 = [HUSoftwareUpdateStandaloneViewController alloc];
                      homeItemManager21 = [(HUEditLocationViewController *)self homeItemManager];
                      home11 = [homeItemManager21 home];
                      v109 = [(HUSoftwareUpdateStandaloneViewController *)v106 initWithHome:home11];

                      navigationController5 = [(HUEditLocationViewController *)self navigationController];
                      v111 = [navigationController5 hu_pushPreloadableViewController:v109 animated:1];
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
                        homeBuilder3 = [(HUEditLocationViewController *)self homeBuilder];
                        home12 = [homeBuilder3 home];
                        v123 = [(HUEditOutgoingInvitationViewController *)v120 initWithItem:v119 home:home12];

                        navigationController6 = [(HUEditLocationViewController *)self navigationController];
                        v125 = [navigationController6 hu_pushPreloadableViewController:v123 animated:1];
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

                          user = [(HUEditLocationViewController *)v135 user];
                          userID = [user userID];
                          v138 = userID == 0;

                          if (v138)
                          {
                            v139 = HFLogForCategory();
                            if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138412290;
                              selfCopy = v135;
                              _os_log_error_impl(&dword_20CEB6000, v139, OS_LOG_TYPE_ERROR, "User ID on item %@ is nil", buf, 0xCu);
                            }
                          }

                          v140 = [HUEditUserViewController alloc];
                          homeBuilder4 = [(HUEditLocationViewController *)self homeBuilder];
                          home13 = [homeBuilder4 home];
                          homeItemManager22 = [(HUEditLocationViewController *)self homeItemManager];
                          pinCodeManager2 = [homeItemManager22 pinCodeManager];
                          v145 = [(HUEditUserViewController *)v140 initWithItem:v135 home:home13 pinCodeManager:pinCodeManager2];

                          navigationController7 = [(HUEditLocationViewController *)self navigationController];
                          v147 = [navigationController7 hu_pushPreloadableViewController:v145 animated:1];
                        }

                        else
                        {
                          homeItemManager23 = [(HUEditLocationViewController *)self homeItemManager];
                          guestsItem = [homeItemManager23 guestsItem];
                          v150 = [v10 isEqual:guestsItem];

                          if (v150)
                          {
                            v151 = [HUGuestsPinCodesViewController alloc];
                            homeItemManager24 = [(HUEditLocationViewController *)self homeItemManager];
                            pinCodeManager3 = [homeItemManager24 pinCodeManager];
                            v154 = [(HUGuestsPinCodesViewController *)v151 initWithPinCodeManager:pinCodeManager3 settingsContext:0];

                            navigationController8 = [(HUEditLocationViewController *)self navigationController];
                            v156 = [navigationController8 hu_pushPreloadableViewController:v154 animated:1];
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

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  detailNotesCell = [(HUEditLocationViewController *)self detailNotesCell];
  v6 = [changeCopy isDescendantOfView:detailNotesCell];

  if (v6)
  {
    detailNotesCell2 = [(HUEditLocationViewController *)self detailNotesCell];
    text = [detailNotesCell2 text];
    [(HUEditLocationViewController *)self setEditedNotes:text];
  }
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  detailNotesCell = [(HUEditLocationViewController *)self detailNotesCell];
  v6 = [editingCopy isDescendantOfView:detailNotesCell];

  if (v6)
  {

    [(HUEditLocationViewController *)self updateAndCommitNotes];
  }
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    selfCopy = self;
    v21 = 2112;
    v22 = lCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v19, 0x16u);
  }

  locationPrivacyURL = [MEMORY[0x277D14C80] locationPrivacyURL];
  v10 = [lCopy isEqual:locationPrivacyURL];

  if (v10)
  {
    navigationController = [(HUEditLocationViewController *)self navigationController];
    v12 = navigationController;
    if (navigationController)
    {
      selfCopy2 = navigationController;
    }

    else
    {
      selfCopy2 = self;
    }

    v14 = selfCopy2;

    mEMORY[0x277D148E8] = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376E0]];
    splashController = [mEMORY[0x277D148E8] splashController];
    [splashController setDisplayDeviceType:6];

    [mEMORY[0x277D148E8] setPresentingViewController:v14];
    [mEMORY[0x277D148E8] present];
  }

  else
  {
    mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
    v17 = [mEMORY[0x277D148E8] openURL:lCopy];
  }

  return 0;
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  textCopy = text;
  text = [view text];
  v10 = [text stringByReplacingCharactersInRange:location withString:{length, textCopy}];

  LOBYTE(location) = [v10 length] < 0x1F5;
  return location;
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  v56 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"OFF";
    if (onCopy)
    {
      v8 = @"ON";
    }

    *buf = 138412290;
    selfCopy2 = v8;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "User Tapped switch to turn %@.", buf, 0xCu);
  }

  tableView = [(HUEditLocationViewController *)self tableView];
  v10 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v12 = [itemManager displayedItemAtIndexPath:v10];

  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  locationServicesSettingItem = [homeItemManager locationServicesSettingItem];
  v15 = [v12 isEqual:locationServicesSettingItem];

  if (v15)
  {
    homeItemManager2 = [(HUEditLocationViewController *)self homeItemManager];
    v17 = [homeItemManager2 updateLocationServicesEnabled:onCopy];

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __53__HUEditLocationViewController_switchCell_didTurnOn___block_invoke;
    v46[3] = &unk_277DBA3A8;
    v49 = onCopy;
    v47 = cellCopy;
    selfCopy = self;
    v18 = [v17 addCompletionBlock:v46];
  }

  homeItemManager3 = [(HUEditLocationViewController *)self homeItemManager];
  soundCheckItem = [homeItemManager3 soundCheckItem];
  v21 = [v12 isEqual:soundCheckItem];

  if (v21)
  {
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (onCopy)
      {
        v23 = @"ON";
      }

      else
      {
        v23 = @"OFF";
      }

      itemManager2 = [(HUItemTableViewController *)self itemManager];
      home = [itemManager2 home];
      *buf = 138412802;
      selfCopy2 = self;
      v52 = 2112;
      v53 = v23;
      v54 = 2112;
      v55 = home;
      _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@: Updating sound check setting to %@ for home: %@", buf, 0x20u);
    }

    itemManager3 = [(HUItemTableViewController *)self itemManager];
    home2 = [itemManager3 home];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __53__HUEditLocationViewController_switchCell_didTurnOn___block_invoke_244;
    v42[3] = &unk_277DBC4D8;
    v45 = onCopy;
    v43 = cellCopy;
    selfCopy3 = self;
    [home2 updateSoundCheckEnabled:onCopy completion:v42];
  }

  homeItemManager4 = [(HUEditLocationViewController *)self homeItemManager];
  showPredictedScenes = [homeItemManager4 showPredictedScenes];
  v30 = [v12 isEqual:showPredictedScenes];

  if (v30)
  {
    itemManager4 = [(HUItemTableViewController *)self itemManager];
    home3 = [itemManager4 home];
    v33 = [home3 hf_setShowPredictedScenesOnDashboard:onCopy];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __53__HUEditLocationViewController_switchCell_didTurnOn___block_invoke_245;
    v40[3] = &__block_descriptor_33_e20_v24__0_8__NSError_16l;
    v41 = onCopy;
    v34 = [v33 addCompletionBlock:v40];
  }

  latestResults = [v12 latestResults];
  v36 = *MEMORY[0x277D13F68];
  v37 = [latestResults objectForKey:*MEMORY[0x277D13F68]];

  if (v37)
  {
    latestResults2 = [v12 latestResults];
    v39 = [latestResults2 objectForKeyedSubscript:v36];
  }

  else
  {
    v39 = 0;
  }

  [MEMORY[0x277D143D8] sendSwitchCellToggleEventForItem:v12 isOn:onCopy title:v39 fromSourceViewController:self];
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

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  infoCopy = info;
  [(HUEditLocationViewController *)self dismissViewControllerAnimated:1 completion:0];
  v6 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D76A80]];

  UIImageWriteToSavedPhotosAlbum(v6, 0, 0, 0);
  v7 = objc_alloc(MEMORY[0x277D14D10]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v10 = [v7 initWithType:1 assetIdentifier:uUIDString cropInfo:0];

  mEMORY[0x277D14D18] = [MEMORY[0x277D14D18] sharedInstance];
  v13 = [mEMORY[0x277D14D18] processOriginalImageFromWallpaper:v10 originalImage:v6];

  v12 = [[HUWallpaperEditingViewController alloc] initWithWallpaper:v10 image:v13 delegate:self];
  [(HUWallpaperEditingViewController *)v12 setModalPresentationStyle:0];
  [(HUEditLocationViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)wallpaperPickerDidFinish:(id)finish wallpaper:(id)wallpaper image:(id)image
{
  [(HUEditLocationViewController *)self updateWallpaper:wallpaper image:image];
  navigationController = [(HUEditLocationViewController *)self navigationController];
  v6 = [navigationController popToViewController:self animated:1];
}

- (void)wallpaperThumbnailCell:(id)cell didReceiveDroppedImage:(id)image
{
  v5 = MEMORY[0x277D14D10];
  v6 = MEMORY[0x277CCAD78];
  imageCopy = image;
  uUID = [v6 UUID];
  uUIDString = [uUID UUIDString];
  v9 = [v5 customWallpaperWithAssetIdentifier:uUIDString];
  [(HUEditLocationViewController *)self updateWallpaper:v9 image:imageCopy];
}

- (void)wallpaperPicker:(id)picker didReceiveDroppedImage:(id)image
{
  v6 = MEMORY[0x277D14D10];
  v7 = MEMORY[0x277CCAD78];
  imageCopy = image;
  pickerCopy = picker;
  uUID = [v7 UUID];
  uUIDString = [uUID UUIDString];
  v27 = [v6 customWallpaperWithAssetIdentifier:uUIDString];

  [pickerCopy setOriginalCustomImage:imageCopy];
  homeBuilder = [(HUEditLocationViewController *)self homeBuilder];
  wallpaperBuilder = [homeBuilder wallpaperBuilder];
  [wallpaperBuilder setWallpaper:v27 image:imageCopy];

  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  homeItemManager2 = [(HUEditLocationViewController *)self homeItemManager];
  wallpaperPickerItem = [homeItemManager2 wallpaperPickerItem];
  v17 = [homeItemManager indexPathForItem:wallpaperPickerItem];

  tableView = [(HUEditLocationViewController *)self tableView];
  v19 = [tableView cellForRowAtIndexPath:v17];
  homeItemManager3 = [(HUEditLocationViewController *)self homeItemManager];
  wallpaperPickerItem2 = [homeItemManager3 wallpaperPickerItem];
  [(HUEditLocationViewController *)self updateCell:v19 forItem:wallpaperPickerItem2 indexPath:v17 animated:1];

  homeBuilder2 = [(HUEditLocationViewController *)self homeBuilder];
  home = [homeBuilder2 home];

  if (home)
  {
    homeBuilder3 = [(HUEditLocationViewController *)self homeBuilder];
    wallpaperBuilder2 = [homeBuilder3 wallpaperBuilder];
    commitWallpaper = [wallpaperBuilder2 commitWallpaper];
  }
}

- (void)wallpaperPicker:(id)picker didSelectWallpaper:(id)wallpaper withImage:(id)image
{
  imageCopy = image;
  wallpaperCopy = wallpaper;
  homeBuilder = [(HUEditLocationViewController *)self homeBuilder];
  wallpaperBuilder = [homeBuilder wallpaperBuilder];
  [wallpaperBuilder setWallpaper:wallpaperCopy image:imageCopy];

  homeBuilder2 = [(HUEditLocationViewController *)self homeBuilder];
  home = [homeBuilder2 home];

  if (home)
  {
    homeBuilder3 = [(HUEditLocationViewController *)self homeBuilder];
    wallpaperBuilder2 = [homeBuilder3 wallpaperBuilder];
    commitWallpaper = [wallpaperBuilder2 commitWallpaper];
  }
}

- (void)wallpaperPickerRequestOpenWallpaperEditor:(id)editor
{
  homeBuilder = [(HUEditLocationViewController *)self homeBuilder];
  wallpaperBuilder = [homeBuilder wallpaperBuilder];
  wallpaperEditCollectionFuture = [wallpaperBuilder wallpaperEditCollectionFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HUEditLocationViewController_wallpaperPickerRequestOpenWallpaperEditor___block_invoke;
  v8[3] = &unk_277DBE118;
  v8[4] = self;
  v7 = [wallpaperEditCollectionFuture addSuccessBlock:v8];
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

- (void)wallpaperEditing:(id)editing didFinishWithWallpaper:(id)wallpaper image:(id)image
{
  [(HUEditLocationViewController *)self updateWallpaper:wallpaper image:image];

  [(HUEditLocationViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  uniqueIdentifier = [home uniqueIdentifier];
  homeBuilder = [(HUEditLocationViewController *)self homeBuilder];
  home = [homeBuilder home];
  uniqueIdentifier2 = [home uniqueIdentifier];
  v9 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v9)
  {
    presentationDelegate = [(HUEditLocationViewController *)self presentationDelegate];
    v10 = [presentationDelegate finishPresentation:self animated:1];
  }
}

- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems
{
  addItemsCopy = addItems;
  v17.receiver = self;
  v17.super_class = HUEditLocationViewController;
  itemsCopy = items;
  [(HUItemTableViewController *)&v17 diffableDataItemManager:manager didUpdateItems:itemsCopy addItems:addItemsCopy removeItems:removeItems];
  v12 = [(HUEditLocationViewController *)self homeItemManager:v17.receiver];
  softwareUpdateItem = [v12 softwareUpdateItem];
  LODWORD(manager) = [itemsCopy containsObject:softwareUpdateItem];

  if (manager)
  {

LABEL_4:
    [(HUEditLocationViewController *)self _updateSoftwareUpdateDynamicFooterView];
    goto LABEL_5;
  }

  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  softwareUpdateItem2 = [homeItemManager softwareUpdateItem];
  v16 = [addItemsCopy containsObject:softwareUpdateItem2];

  if (v16)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = HUEditLocationViewController;
  itemCopy = item;
  [(HUItemTableViewController *)&v12 itemManager:manager didUpdateResultsForItem:itemCopy atIndexPath:path];
  v9 = [(HUEditLocationViewController *)self homeItemManager:v12.receiver];
  softwareUpdateItem = [v9 softwareUpdateItem];
  v11 = [itemCopy isEqual:softwareUpdateItem];

  if (v11)
  {
    [(HUEditLocationViewController *)self _updateSoftwareUpdateDynamicFooterView];
  }
}

- (void)_updateSoftwareUpdateDynamicFooterView
{
  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  v4 = [homeItemManager sectionIndexForDisplayedSectionIdentifier:@"HUEditLocationSoftwareUpdateSectionIdentifier"];

  tableView = [(HUEditLocationViewController *)self tableView];
  v6 = [tableView footerViewForSection:v4];

  homeItemManager2 = [(HUEditLocationViewController *)self homeItemManager];
  v8 = [homeItemManager2 footerTitleForSection:v4];

  textLabel = [v6 textLabel];

  if (textLabel)
  {
    tableView2 = [(HUEditLocationViewController *)self tableView];
    [tableView2 beginUpdates];

    textLabel2 = [v6 textLabel];
    [textLabel2 setText:v8];

    [v6 setNeedsLayout];
    tableView3 = [(HUEditLocationViewController *)self tableView];
    [tableView3 endUpdates];
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
  itemManager = [(HUItemTableViewController *)self itemManager];
  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  siriTriggerPhraseSettingItem = [homeItemManager siriTriggerPhraseSettingItem];
  v7[0] = siriTriggerPhraseSettingItem;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [itemManager reloadUIRepresentationForItems:v6 withAnimation:1];
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

- (void)activityLogCoordinator:(id)coordinator didDetermineEventsExist:(BOOL)exist
{
  if (exist)
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

- (void)updateWallpaper:(id)wallpaper image:(id)image
{
  v26[1] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  wallpaperCopy = wallpaper;
  homeBuilder = [(HUEditLocationViewController *)self homeBuilder];
  wallpaperBuilder = [homeBuilder wallpaperBuilder];
  [wallpaperBuilder setWallpaper:wallpaperCopy image:imageCopy];

  homeBuilder2 = [(HUEditLocationViewController *)self homeBuilder];
  home = [homeBuilder2 home];

  if (home)
  {
    homeBuilder3 = [(HUEditLocationViewController *)self homeBuilder];
    wallpaperBuilder2 = [homeBuilder3 wallpaperBuilder];
    commitWallpaper = [wallpaperBuilder2 commitWallpaper];
  }

  v15 = +[HUWallpaperPickerInlineViewController useWallpaperPickerCell];
  homeItemManager = [(HUEditLocationViewController *)self homeItemManager];
  v17 = homeItemManager;
  if (v15)
  {
    [homeItemManager wallpaperPickerItem];
  }

  else
  {
    [homeItemManager wallpaperThumbnailItem];
  }
  v18 = ;

  itemManager = [(HUItemTableViewController *)self itemManager];
  diffableDataSourceDisabled = [itemManager diffableDataSourceDisabled];

  if (diffableDataSourceDisabled)
  {
    tableView = [(HUEditLocationViewController *)self tableView];
    homeItemManager2 = [(HUEditLocationViewController *)self homeItemManager];
    v23 = [homeItemManager2 indexPathForItem:v18];
    v26[0] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [tableView reloadRowsAtIndexPaths:v24 withRowAnimation:5];
  }

  else
  {
    tableView = [(HUItemTableViewController *)self itemManager];
    v25 = v18;
    homeItemManager2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    [tableView reloadUIRepresentationForItems:homeItemManager2 withAnimation:0];
  }
}

- (void)prefetchActivityLogEventsIfNecessary
{
  homeBuilder = [(HUEditLocationViewController *)self homeBuilder];
  home = [homeBuilder home];

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  v5 = [mEMORY[0x277D146E8] securityActivityLogCoordinatorForHome:home];
  [(HUEditLocationViewController *)self prefetchActivityLogCoordinator:v5 targetKind:0 home:home];

  if (_os_feature_enabled_impl())
  {
    mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
    v7 = [mEMORY[0x277D146E8]2 climateActivityLogCoordinatorForHome:home];
    [(HUEditLocationViewController *)self prefetchActivityLogCoordinator:v7 targetKind:1 home:home];
  }
}

- (void)prefetchActivityLogCoordinator:(id)coordinator targetKind:(unint64_t)kind home:(id)home
{
  coordinatorCopy = coordinator;
  homeCopy = home;
  residentDevices = [homeCopy residentDevices];
  v10 = [residentDevices na_any:&__block_literal_global_265];

  if ([homeCopy isEventLogEnabled] && (objc_msgSend(coordinatorCopy, "eventsExist") & 1) == 0)
  {
    hf_hasActivityLogPrerequisites = [homeCopy hf_hasActivityLogPrerequisites];
    if ((hf_hasActivityLogPrerequisites & v10) == 1)
    {
      if ([homeCopy hf_hasEnabledResident] && (objc_msgSend(homeCopy, "hf_hasCompatibleActivityLogAccessoriesForTargetKind:", kind) & 1) != 0)
      {
        goto LABEL_9;
      }
    }

    else if (!hf_hasActivityLogPrerequisites)
    {
      goto LABEL_9;
    }

    [coordinatorCopy setDelegate:self];
    [coordinatorCopy checkIfEventsExist];
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