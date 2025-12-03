@interface HUEditUserViewController
- (BOOL)moduleController:(id)controller shouldDisableItem:(id)item;
- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUEditUserViewController)initWithItem:(id)item home:(id)home pinCodeManager:(id)manager;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_lazyAboutResidentDeviceFooterView;
- (id)childViewControllersToPreload;
- (id)itemModuleControllers;
- (id)moduleController:(id)controller requestPresentViewController:(id)viewController animated:(BOOL)animated withCompletion:(id)completion;
- (id)presentDefaultAccountViewController;
- (id)presentPinDetailsViewController;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)user;
- (void)_handleUpdatedItem:(id)item atIndexPath:(id)path;
- (void)_removeUser;
- (void)didSelectDefaultAccounts:(id)accounts;
- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems;
- (void)doneButtonTapped:(id)tapped;
- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path;
- (void)learnMoreLinkTapped:(id)tapped;
- (void)mediaServiceSettingsItemModuleController:(id)controller didSelectMediaService:(id)service;
- (void)moduleController:(id)controller preflightCheckToAllowSwitchingForSettingItem:(id)item changingToOn:(BOOL)on withCompletion:(id)completion;
- (void)moduleController:(id)controller presentGroup:(id)group;
- (void)moduleController:(id)controller settingUpdatedForItem:(id)item;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUEditUserViewController

- (HUEditUserViewController)initWithItem:(id)item home:(id)home pinCodeManager:(id)manager
{
  itemCopy = item;
  homeCopy = home;
  managerCopy = manager;
  v12 = [HUEditUserItemManager alloc];
  v13 = [itemCopy copy];
  v14 = [(HUEditUserItemManager *)v12 initWithHome:homeCopy userItem:v13 delegate:self];

  v27.receiver = self;
  v27.super_class = HUEditUserViewController;
  v15 = [(HUUserTableViewController *)&v27 initWithUserItemManager:v14 home:homeCopy];
  if (v15)
  {
    v16 = [itemCopy copy];
    userItem = v15->_userItem;
    v15->_userItem = v16;

    objc_storeStrong(&v15->_pinCodeManager, manager);
    objc_storeStrong(&v15->_editUserItemManager, v14);
    [(HFItemManager *)v15->_editUserItemManager setDelegate:v15];
    v18 = [HUPendingAccessoriesGridViewController alloc];
    user = [itemCopy user];
    v20 = [(HUPendingAccessoriesGridViewController *)v18 initWithUser:user home:homeCopy];
    pendingAccessoriesViewController = v15->_pendingAccessoriesViewController;
    v15->_pendingAccessoriesViewController = v20;

    home = [(HFUserItem *)v15->_userItem home];
    LODWORD(user) = [home isMultiUserEnabled];

    if (user)
    {
      objc_initWeak(&location, v15);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __61__HUEditUserViewController_initWithItem_home_pinCodeManager___block_invoke;
      v24[3] = &unk_277DBDA68;
      objc_copyWeak(v25, &location);
      v25[1] = a2;
      [HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguagesWithCompletion:v24];
      objc_destroyWeak(v25);
      objc_destroyWeak(&location);
    }
  }

  return v15;
}

void __61__HUEditUserViewController_initWithItem_home_pinCodeManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(*(a1 + 40));
    v14 = 138412802;
    v15 = v9;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@ fetchSupportedVoiceRecognitionLanguagesWithCompletion returned (%@) %@", &v14, 0x20u);
  }

  if (!v6)
  {
    v10 = [WeakRetained editUserItemManager];
    [v10 setSupportedMULanguageCodes:v5];

    v11 = [WeakRetained editUserItemManager];
    v12 = [v11 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 40)];

    v13 = [WeakRetained tableView];
    [v13 reloadData];
  }
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HUEditUserViewController;
  [(HUItemTableViewController *)&v8 viewDidLoad];
  navigationController = [(HUEditUserViewController *)self navigationController];

  if (navigationController)
  {
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    v5 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
    v6 = [v4 initWithTitle:v5 style:2 target:self action:sel_doneButtonTapped_];
    navigationItem = [(HUEditUserViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v6];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = HUEditUserViewController;
  [(HUItemTableViewController *)&v7 viewWillAppear:appear];
  navigationController = [(HUEditUserViewController *)self navigationController];
  delegate = [navigationController delegate];

  if (!delegate)
  {
    navigationController2 = [(HUEditUserViewController *)self navigationController];
    [navigationController2 setDelegate:self];
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  if (viewController == self)
  {
    tableView = [(HUEditUserViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)doneButtonTapped:(id)tapped
{
  v15 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    userItem = [(HUEditUserViewController *)self userItem];
    user = [userItem user];
    hf_prettyDescription = [user hf_prettyDescription];
    v9 = 136315650;
    v10 = "[HUEditUserViewController doneButtonTapped:]";
    v11 = 2112;
    v12 = tappedCopy;
    v13 = 2112;
    v14 = hf_prettyDescription;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'done' button %@. user = %@", &v9, 0x20u);
  }

  [(HUEditUserViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)user
{
  editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
  userBeingEdited = [editUserItemManager userBeingEdited];

  return userBeingEdited;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
  allowEditingItem = [editUserItemManager allowEditingItem];
  v10 = [itemCopy isEqual:allowEditingItem];

  if (v10)
  {
    goto LABEL_15;
  }

  editUserItemManager2 = [(HUEditUserViewController *)self editUserItemManager];
  localAccessItem = [editUserItemManager2 localAccessItem];
  v13 = [itemCopy isEqual:localAccessItem];

  if (v13)
  {
    goto LABEL_15;
  }

  editUserItemManager3 = [(HUEditUserViewController *)self editUserItemManager];
  personalRequestsFooterItem = [editUserItemManager3 personalRequestsFooterItem];
  v16 = [itemCopy isEqual:personalRequestsFooterItem];

  if (v16)
  {
    goto LABEL_15;
  }

  editUserItemManager4 = [(HUEditUserViewController *)self editUserItemManager];
  pendingAccessoriesItem = [editUserItemManager4 pendingAccessoriesItem];
  v19 = [itemCopy isEqual:pendingAccessoriesItem];

  if (v19)
  {
    goto LABEL_15;
  }

  editUserItemManager5 = [(HUEditUserViewController *)self editUserItemManager];
  camerasItem = [editUserItemManager5 camerasItem];
  if ([itemCopy isEqual:camerasItem])
  {
LABEL_14:

LABEL_15:
    v30 = objc_opt_class();
    goto LABEL_16;
  }

  editUserItemManager6 = [(HUEditUserViewController *)self editUserItemManager];
  locksItem = [editUserItemManager6 locksItem];
  if ([itemCopy isEqual:locksItem])
  {
LABEL_13:

    goto LABEL_14;
  }

  editUserItemManager7 = [(HUEditUserViewController *)self editUserItemManager];
  personalRequestsItem = [editUserItemManager7 personalRequestsItem];
  if ([itemCopy isEqual:personalRequestsItem])
  {
LABEL_12:

    goto LABEL_13;
  }

  v46 = editUserItemManager7;
  editUserItemManager8 = [(HUEditUserViewController *)self editUserItemManager];
  tvViewingProfilesItem = [editUserItemManager8 tvViewingProfilesItem];
  if ([itemCopy isEqual:tvViewingProfilesItem])
  {
LABEL_11:

    editUserItemManager7 = v46;
    goto LABEL_12;
  }

  v44 = tvViewingProfilesItem;
  v45 = editUserItemManager8;
  editUserItemManager9 = [(HUEditUserViewController *)self editUserItemManager];
  remoteAccessItem = [editUserItemManager9 remoteAccessItem];
  if ([itemCopy isEqual:remoteAccessItem])
  {

    tvViewingProfilesItem = v44;
    editUserItemManager8 = v45;
    goto LABEL_11;
  }

  v41 = remoteAccessItem;
  v42 = editUserItemManager9;
  editUserItemManager10 = [(HUEditUserViewController *)self editUserItemManager];
  updateListeningHistoryItem = [editUserItemManager10 updateListeningHistoryItem];
  if ([itemCopy isEqual:?])
  {
    v43 = 1;
  }

  else
  {
    editUserItemManager11 = [(HUEditUserViewController *)self editUserItemManager];
    allowedAccessoryCategoryItemProvider = [editUserItemManager11 allowedAccessoryCategoryItemProvider];
    items = [allowedAccessoryCategoryItemProvider items];
    v43 = [items containsObject:itemCopy];
  }

  if (v43)
  {
    goto LABEL_15;
  }

  editUserItemManager12 = [(HUEditUserViewController *)self editUserItemManager];
  homeScheduleItem = [editUserItemManager12 homeScheduleItem];
  v37 = [itemCopy isEqual:homeScheduleItem];

  if (v37)
  {
    goto LABEL_15;
  }

  v47.receiver = self;
  v47.super_class = HUEditUserViewController;
  v30 = [(HUUserTableViewController *)&v47 cellClassForItem:itemCopy indexPath:pathCopy];
LABEL_16:
  v31 = v30;

  return v31;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  v61.receiver = self;
  v61.super_class = HUEditUserViewController;
  [(HUUserTableViewController *)&v61 setupCell:cellCopy forItem:itemCopy indexPath:path];
  editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
  allowEditingItem = [editUserItemManager allowEditingItem];
  v12 = [itemCopy isEqual:allowEditingItem];

  if (!v12)
  {
    editUserItemManager2 = [(HUEditUserViewController *)self editUserItemManager];
    pendingAccessoriesItem = [editUserItemManager2 pendingAccessoriesItem];
    v16 = [itemCopy isEqual:pendingAccessoriesItem];

    if (v16)
    {
      v17 = MEMORY[0x277D75348];
      v18 = cellCopy;
      clearColor = [v17 clearColor];
      [v18 setBackgroundColor:clearColor];

      clearColor2 = [MEMORY[0x277D75348] clearColor];
      contentView = [v18 contentView];
      [contentView setBackgroundColor:clearColor2];

      pendingAccessoriesViewController = [(HUEditUserViewController *)self pendingAccessoriesViewController];
      [v18 setViewController:pendingAccessoriesViewController];
LABEL_5:

      goto LABEL_13;
    }

    editUserItemManager3 = [(HUEditUserViewController *)self editUserItemManager];
    camerasItem = [editUserItemManager3 camerasItem];
    if ([itemCopy isEqual:camerasItem])
    {

LABEL_9:
      objc_opt_class();
      v27 = cellCopy;
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      pendingAccessoriesViewController = v28;

      [pendingAccessoriesViewController setIconDisplayStyle:1];
      v29 = +[HUIconCellContentMetrics compactMetrics];
      [pendingAccessoriesViewController setContentMetrics:v29];

      [pendingAccessoriesViewController setDisableContinuousIconAnimation:1];
      [pendingAccessoriesViewController setAccessoryType:1];
      goto LABEL_13;
    }

    editUserItemManager4 = [(HUEditUserViewController *)self editUserItemManager];
    locksItem = [editUserItemManager4 locksItem];
    v26 = [itemCopy isEqual:locksItem];

    if (v26)
    {
      goto LABEL_9;
    }

    editUserItemManager5 = [(HUEditUserViewController *)self editUserItemManager];
    personalRequestsItem = [editUserItemManager5 personalRequestsItem];
    if (([itemCopy isEqual:personalRequestsItem] & 1) == 0)
    {
      editUserItemManager6 = [(HUEditUserViewController *)self editUserItemManager];
      tvViewingProfilesItem = [editUserItemManager6 tvViewingProfilesItem];
      if (([itemCopy isEqual:tvViewingProfilesItem] & 1) == 0)
      {
        editUserItemManager7 = [(HUEditUserViewController *)self editUserItemManager];
        remoteAccessItem = [editUserItemManager7 remoteAccessItem];
        if (([itemCopy isEqual:remoteAccessItem] & 1) == 0)
        {
          editUserItemManager8 = [(HUEditUserViewController *)self editUserItemManager];
          updateListeningHistoryItem = [editUserItemManager8 updateListeningHistoryItem];
          if (([itemCopy isEqual:?] & 1) == 0)
          {
            editUserItemManager9 = [(HUEditUserViewController *)self editUserItemManager];
            allowedAccessoryCategoryItemProvider = [editUserItemManager9 allowedAccessoryCategoryItemProvider];
            [allowedAccessoryCategoryItemProvider items];
            v44 = v58 = editUserItemManager8;
            v59 = [v44 containsObject:itemCopy];

            if ((v59 & 1) == 0)
            {
              editUserItemManager10 = [(HUEditUserViewController *)self editUserItemManager];
              homeScheduleItem = [editUserItemManager10 homeScheduleItem];
              v47 = [itemCopy isEqual:homeScheduleItem];

              if (!v47)
              {
                goto LABEL_14;
              }

              objc_opt_class();
              v48 = cellCopy;
              if (objc_opt_isKindOfClass())
              {
                v49 = v48;
              }

              else
              {
                v49 = 0;
              }

              v50 = v49;

              [v50 setIconDisplayStyle:1];
              [v50 setDisableContinuousIconAnimation:1];
              HUDefaultSizeForIconSize();
              v52 = v51;
              v54 = v53;
              contentMetrics = [v50 contentMetrics];
              [contentMetrics setIconSize:{v52, v54}];

              [v50 setAccessoryType:0];
              [v50 setValueColorFollowsTintColor:1];
              pendingAccessoriesViewController = [itemCopy latestResults];
              v18 = [pendingAccessoriesViewController objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
              [v50 setAccessibilityIdentifier:v18];

              goto LABEL_5;
            }

LABEL_23:
            objc_opt_class();
            v37 = cellCopy;
            if (objc_opt_isKindOfClass())
            {
              v38 = v37;
            }

            else
            {
              v38 = 0;
            }

            pendingAccessoriesViewController = v38;

            [pendingAccessoriesViewController setAccessoryView:0];
            [pendingAccessoriesViewController setHideIcon:1];
            [pendingAccessoriesViewController setAccessoryType:1];
            editUserItemManager11 = [(HUEditUserViewController *)self editUserItemManager];
            allowedAccessoryCategoryItemProvider2 = [editUserItemManager11 allowedAccessoryCategoryItemProvider];
            items = [allowedAccessoryCategoryItemProvider2 items];
            v42 = [items containsObject:itemCopy];

            if (v42)
            {
              [pendingAccessoriesViewController setHideIcon:0];
              v43 = +[HUIconCellContentMetrics compactMetrics];
              [pendingAccessoriesViewController setContentMetrics:v43];
            }

            goto LABEL_13;
          }
        }
      }
    }

    goto LABEL_23;
  }

  pendingAccessoriesViewController = cellCopy;
  [pendingAccessoriesViewController setDelegate:self];
  [pendingAccessoriesViewController setSelectionStyle:0];
LABEL_13:

LABEL_14:
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v28.receiver = self;
  v28.super_class = HUEditUserViewController;
  [(HUItemTableViewController *)&v28 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
  personalRequestsFooterItem = [editUserItemManager personalRequestsFooterItem];
  v14 = [itemCopy isEqual:personalRequestsFooterItem];

  if (v14)
  {
    v15 = cellCopy;
    headerFooterView = [v15 headerFooterView];
    [headerFooterView setType:1];

    latestResults = [itemCopy latestResults];
    v18 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    headerFooterView2 = [v15 headerFooterView];
    [headerFooterView2 setMessage:v18];

    headerFooterView3 = [v15 headerFooterView];
    messageTextView = [headerFooterView3 messageTextView];
    [messageTextView setDelegate:self];

    latestResults2 = [itemCopy latestResults];
    latestResults3 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    headerFooterView4 = [v15 headerFooterView];

    [headerFooterView4 setAccessibilityIdentifier:latestResults3];
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v25 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    latestResults2 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:itemCopy];
    [v27 setContentConfiguration:latestResults2];
    latestResults3 = [itemCopy latestResults];
    headerFooterView4 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v27 setAccessibilityIdentifier:headerFooterView4];

    goto LABEL_8;
  }

LABEL_9:
}

- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  v16.receiver = self;
  v16.super_class = HUEditUserViewController;
  LOBYTE(itemManager) = [(HUItemTableViewController *)&v16 shouldHideSeparatorsForCell:cellCopy indexPath:pathCopy];

  if (itemManager)
  {
    v10 = 1;
  }

  else
  {
    editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
    allowEditingItem = [editUserItemManager allowEditingItem];
    if ([v9 isEqual:allowEditingItem])
    {
      v10 = 1;
    }

    else
    {
      editUserItemManager2 = [(HUEditUserViewController *)self editUserItemManager];
      pendingAccessoriesItem = [editUserItemManager2 pendingAccessoriesItem];
      v10 = [v9 isEqual:pendingAccessoriesItem];
    }
  }

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v165 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v158.receiver = self;
  v158.super_class = HUEditUserViewController;
  viewCopy = view;
  [(HUItemTableViewController *)&v158 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  v152 = pathCopy;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    userItem = [(HUEditUserViewController *)self userItem];
    user = [userItem user];
    hf_prettyDescription = [user hf_prettyDescription];
    *buf = 136315650;
    selfCopy2 = "[HUEditUserViewController tableView:didSelectRowAtIndexPath:]";
    v161 = 2112;
    v162 = v9;
    v163 = 2112;
    v164 = hf_prettyDescription;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%@' for user = %@", buf, 0x20u);
  }

  editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
  removeItem = [editUserItemManager removeItem];
  v16 = [v9 isEqual:removeItem];

  if (v16)
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    home = [itemManager2 home];

    if (([home hf_currentUserIsAdministrator] & 1) != 0 || objc_msgSend(home, "hf_currentUserIsOwner"))
    {
      editUserItemManager2 = [(HUEditUserViewController *)self editUserItemManager];
      userBeingEdited = [editUserItemManager2 userBeingEdited];
      name = [userBeingEdited name];
      v28 = HULocalizedStringWithFormat(@"HUUsersRemovePersonAlertTitle", @"%@", v22, v23, v24, v25, v26, v27, name);

      editUserItemManager3 = [(HUEditUserViewController *)self editUserItemManager];
      userBeingEdited2 = [editUserItemManager3 userBeingEdited];
      name2 = [userBeingEdited2 name];
      name3 = [home name];
      v38 = HULocalizedStringWithFormat(@"HUUsersRemovePersonConfirmationMessage", @"%@%@", v32, v33, v34, v35, v36, v37, name2);

      v39 = @"HURemoveTitle";
    }

    else
    {
      name4 = [home name];
      v28 = HULocalizedStringWithFormat(@"HUEditLocationLeaveHomeAlertTitle", @"%@", v41, v42, v43, v44, v45, v46, name4);

      editUserItemManager3 = [home name];
      v38 = HULocalizedStringWithFormat(@"HUEditLocationLeaveHomeConfirmationMessage", @"%@", v47, v48, v49, v50, v51, v52, editUserItemManager3);
      v39 = @"HUDeleteTitle";
    }

    v149 = v28;

    v53 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
    v54 = _HULocalizedStringWithDefaultValue(v39, v39, 1);
    v55 = [(UITableViewController *)self hu_actionSheetWithTitle:v28 message:v38 indexPath:v152];
    v56 = MEMORY[0x277D750F8];
    v156[0] = MEMORY[0x277D85DD0];
    v156[1] = 3221225472;
    v156[2] = __62__HUEditUserViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v156[3] = &unk_277DB7600;
    v157 = v53;
    v57 = v53;
    v58 = [v56 actionWithTitle:v57 style:1 handler:v156];
    [v55 addAction:v58];

    v59 = MEMORY[0x277D750F8];
    v153[0] = MEMORY[0x277D85DD0];
    v153[1] = 3221225472;
    v153[2] = __62__HUEditUserViewController_tableView_didSelectRowAtIndexPath___block_invoke_60;
    v153[3] = &unk_277DBBD90;
    v154 = v54;
    selfCopy = self;
    v60 = v54;
    v61 = [v59 actionWithTitle:v60 style:2 handler:v153];
    [v55 addAction:v61];

    [(HUEditUserViewController *)self presentViewController:v55 animated:1 completion:0];
  }

  editUserItemManager4 = [(HUEditUserViewController *)self editUserItemManager];
  homeScheduleItem = [editUserItemManager4 homeScheduleItem];
  v64 = [v9 isEqual:homeScheduleItem];

  if (v64)
  {
    v65 = [HURestrictedGuestScheduleViewController alloc];
    itemManager3 = [(HUItemTableViewController *)self itemManager];
    home2 = [itemManager3 home];
    userItem2 = [(HUEditUserViewController *)self userItem];
    user2 = [userItem2 user];
    v70 = [(HURestrictedGuestScheduleViewController *)v65 initWithHome:home2 user:user2];

    v71 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v70];
    [v71 setModalPresentationStyle:2];
    v72 = [(UIViewController *)self hu_presentPreloadableViewController:v71 animated:1];
  }

  editUserItemManager5 = [(HUEditUserViewController *)self editUserItemManager];
  allowedAccessoryCategoryItemProvider = [editUserItemManager5 allowedAccessoryCategoryItemProvider];
  items = [allowedAccessoryCategoryItemProvider items];
  v76 = [items containsObject:v9];

  if (v76)
  {
    objc_opt_class();
    v77 = v9;
    if (objc_opt_isKindOfClass())
    {
      v78 = v77;
    }

    else
    {
      v78 = 0;
    }

    v79 = v78;

    objc_opt_class();
    sourceItem = [v79 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v81 = sourceItem;
    }

    else
    {
      v81 = 0;
    }

    v82 = v81;

    categoryType = [v82 categoryType];
    v84 = [categoryType isEqualToString:*MEMORY[0x277CCE890]];

    editUserItemManager6 = [(HUEditUserViewController *)self editUserItemManager];
    home3 = [editUserItemManager6 home];
    hf_canAddAccessCode = [home3 hf_canAddAccessCode];

    if (v84 && hf_canAddAccessCode)
    {
      presentPinDetailsViewController = [(HUEditUserViewController *)self presentPinDetailsViewController];
    }

    else
    {
      v150 = v79;
      v89 = [HUUserAccessoryAccessViewController alloc];
      editUserItemManager7 = [(HUEditUserViewController *)self editUserItemManager];
      home4 = [editUserItemManager7 home];
      editUserItemManager8 = [(HUEditUserViewController *)self editUserItemManager];
      userBeingEdited3 = [editUserItemManager8 userBeingEdited];
      categoryType2 = [v82 categoryType];
      v95 = [(HUUserAccessoryAccessViewController *)v89 initWithHome:home4 user:userBeingEdited3 accessoryCategoryType:categoryType2];

      navigationController = [(HUEditUserViewController *)self navigationController];
      v97 = [navigationController hu_pushPreloadableViewController:v95 animated:1];

      v98 = HFLogForCategory();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        v99 = NSStringFromSelector(a2);
        *buf = 138412802;
        selfCopy2 = self;
        v161 = 2112;
        v162 = v99;
        v163 = 2112;
        v164 = v82;
        _os_log_impl(&dword_20CEB6000, v98, OS_LOG_TYPE_DEFAULT, "%@: %@ Checking for allowed accessory category item: categoryItem=%@.", buf, 0x20u);
      }

      v79 = v150;
    }
  }

  editUserItemManager9 = [(HUEditUserViewController *)self editUserItemManager];
  remoteAccessItem = [editUserItemManager9 remoteAccessItem];
  v102 = [v9 isEqual:remoteAccessItem];

  if (v102)
  {
    v103 = [HURemoteAccessTableViewController alloc];
    userItem3 = [(HUEditUserViewController *)self userItem];
    itemManager4 = [(HUItemTableViewController *)self itemManager];
    home5 = [itemManager4 home];
    v107 = [(HURemoteAccessTableViewController *)v103 initWithItem:userItem3 home:home5];

    navigationController2 = [(HUEditUserViewController *)self navigationController];
    v109 = [navigationController2 hu_pushPreloadableViewController:v107 animated:1];
  }

  editUserItemManager10 = [(HUEditUserViewController *)self editUserItemManager];
  camerasItem = [editUserItemManager10 camerasItem];
  v112 = [v9 isEqual:camerasItem];

  if (v112)
  {
    v113 = [HUUserCamerasAccessLevelViewController alloc];
    userItem4 = [(HUEditUserViewController *)self userItem];
    itemManager5 = [(HUItemTableViewController *)self itemManager];
    home6 = [itemManager5 home];
    v117 = [(HUUserCamerasAccessLevelViewController *)v113 initWithUserItem:userItem4 home:home6];

    navigationController3 = [(HUEditUserViewController *)self navigationController];
    v119 = [navigationController3 hu_pushPreloadableViewController:v117 animated:1];
  }

  editUserItemManager11 = [(HUEditUserViewController *)self editUserItemManager];
  locksItem = [editUserItemManager11 locksItem];
  v122 = [v9 isEqual:locksItem];

  if (v122)
  {
    presentPinDetailsViewController2 = [(HUEditUserViewController *)self presentPinDetailsViewController];
  }

  editUserItemManager12 = [(HUEditUserViewController *)self editUserItemManager];
  personalRequestsItem = [editUserItemManager12 personalRequestsItem];
  v126 = [v9 isEqual:personalRequestsItem];

  if (v126)
  {
    v127 = [HUPersonalRequestsEditorTableViewController alloc];
    userItem5 = [(HUEditUserViewController *)self userItem];
    v129 = [(HUPersonalRequestsEditorTableViewController *)v127 initWithUserItem:userItem5 onlyShowDeviceSwitches:0];

    navigationController4 = [(HUEditUserViewController *)self navigationController];
    v131 = [navigationController4 hu_pushPreloadableViewController:v129 animated:1];
  }

  editUserItemManager13 = [(HUEditUserViewController *)self editUserItemManager];
  tvViewingProfilesItem = [editUserItemManager13 tvViewingProfilesItem];
  v134 = [v9 isEqual:tvViewingProfilesItem];

  if (v134)
  {
    v135 = [HUTVViewingProfilesEditorTableViewController alloc];
    userItem6 = [(HUEditUserViewController *)self userItem];
    v137 = [(HUTVViewingProfilesEditorTableViewController *)v135 initWithUserItem:userItem6];

    navigationController5 = [(HUEditUserViewController *)self navigationController];
    v139 = [navigationController5 hu_pushPreloadableViewController:v137 animated:1];
  }

  editUserItemManager14 = [(HUEditUserViewController *)self editUserItemManager];
  updateListeningHistoryItem = [editUserItemManager14 updateListeningHistoryItem];
  v142 = [v9 isEqual:updateListeningHistoryItem];

  if (v142)
  {
    v143 = [HUUpdateListeningHistorySettingsViewController alloc];
    userItem7 = [(HUEditUserViewController *)self userItem];
    v145 = [(HUUpdateListeningHistorySettingsViewController *)v143 initWithUserItem:userItem7];

    navigationController6 = [(HUEditUserViewController *)self navigationController];
    v147 = [navigationController6 hu_pushPreloadableViewController:v145 animated:1];
  }
}

void __62__HUEditUserViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[HUEditUserViewController tableView:didSelectRowAtIndexPath:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) User tapped cancel butotn '%@' from the alert popup", &v4, 0x16u);
  }
}

uint64_t __62__HUEditUserViewController_tableView_didSelectRowAtIndexPath___block_invoke_60(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[HUEditUserViewController tableView:didSelectRowAtIndexPath:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) User tapped commit button '%@' from the alert popup", &v5, 0x16u);
  }

  return [*(a1 + 40) _removeUser];
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
  v8 = [editUserItemManager reuseIdentifierForFooterViewInSection:section];

  if ([v8 isEqualToString:@"HUAboutResidentDeviceFooterViewReuseIdentifier"])
  {
    _lazyAboutResidentDeviceFooterView = [(HUEditUserViewController *)self _lazyAboutResidentDeviceFooterView];
  }

  else
  {
    if ([v8 isEqualToString:*MEMORY[0x277D13988]])
    {
      v18.receiver = self;
      v18.super_class = HUEditUserViewController;
      v10 = [(HUItemTableViewController *)&v18 tableView:viewCopy viewForFooterInSection:section];
      objc_opt_class();
      v11 = v10;
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      messageTextView = [v13 messageTextView];
      textDragInteraction = [messageTextView textDragInteraction];
      [textDragInteraction setEnabled:1];

      goto LABEL_10;
    }

    v17.receiver = self;
    v17.super_class = HUEditUserViewController;
    _lazyAboutResidentDeviceFooterView = [(HUItemTableViewController *)&v17 tableView:viewCopy viewForFooterInSection:section];
  }

  v11 = _lazyAboutResidentDeviceFooterView;
LABEL_10:

  return v11;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
  v8 = [editUserItemManager reuseIdentifierForFooterViewInSection:section];

  if ([v8 isEqualToString:@"HUAboutResidentDeviceFooterViewReuseIdentifier"])
  {
    _lazyAboutResidentDeviceFooterView = [(HUEditUserViewController *)self _lazyAboutResidentDeviceFooterView];
    [_lazyAboutResidentDeviceFooterView bounds];
    v11 = v10;
  }

  else if ([v8 isEqualToString:*MEMORY[0x277D13988]])
  {
    v11 = *MEMORY[0x277D76F30];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HUEditUserViewController;
    [(HUItemTableViewController *)&v14 tableView:viewCopy heightForFooterInSection:section];
    v11 = v12;
  }

  return v11;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
  v8 = [editUserItemManager displayedSectionIdentifierForSectionIndex:section];

  if ([v8 isEqualToString:@"HUMediaServiceSettingsItemModule_PrimaryServiceSectionIdentifier"])
  {
    v9 = 0.01;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HUEditUserViewController;
    [(HUItemTableViewController *)&v12 tableView:viewCopy heightForHeaderInSection:section];
    v9 = v10;
  }

  return v9;
}

- (id)childViewControllersToPreload
{
  v5[1] = *MEMORY[0x277D85DE8];
  pendingAccessoriesViewController = [(HUEditUserViewController *)self pendingAccessoriesViewController];
  v5[0] = pendingAccessoriesViewController;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)learnMoreLinkTapped:(id)tapped
{
  v5 = [[HUAboutResidentDeviceViewController alloc] initWithStyle:1];
  [(HUAboutResidentDeviceViewController *)v5 setDelegate:self];
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  [v4 setModalPresentationStyle:2];
  [(HUEditUserViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  v48 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  tableView = [(HUEditUserViewController *)self tableView];
  v8 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager displayedItemAtIndexPath:v8];

  editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
  userBeingEdited = [editUserItemManager userBeingEdited];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  home = [itemManager2 home];
  v15 = [home homeAccessControlForUser:userBeingEdited];

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [userBeingEdited hf_prettyDescription];
    *buf = 136315906;
    v41 = "[HUEditUserViewController switchCell:didTurnOn:]";
    v42 = 2112;
    v43 = v10;
    v44 = 2112;
    v45 = hf_prettyDescription;
    v46 = 1024;
    v47 = onCopy;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "(%s) User tapped switch of %@ for %@ to be %{BOOL}d", buf, 0x26u);
  }

  editUserItemManager2 = [(HUEditUserViewController *)self editUserItemManager];
  allowEditingItem = [editUserItemManager2 allowEditingItem];
  v20 = [v10 isEqual:allowEditingItem];

  if (v20)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__HUEditUserViewController_switchCell_didTurnOn___block_invoke;
    aBlock[3] = &unk_277DBAE20;
    v38 = v15;
    v39 = onCopy;
    v21 = _Block_copy(aBlock);
  }

  else
  {
    v21 = 0;
  }

  v22 = MEMORY[0x277D2C900];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __49__HUEditUserViewController_switchCell_didTurnOn___block_invoke_2;
  v35[3] = &unk_277DBDA90;
  v23 = v21;
  v36 = v23;
  v24 = [v22 futureWithErrorOnlyHandlerAdapterBlock:v35];
  objc_initWeak(buf, self);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __49__HUEditUserViewController_switchCell_didTurnOn___block_invoke_3;
  v32[3] = &unk_277DB9D90;
  objc_copyWeak(&v34, buf);
  v25 = userBeingEdited;
  v33 = v25;
  v26 = [v24 addSuccessBlock:v32];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __49__HUEditUserViewController_switchCell_didTurnOn___block_invoke_5;
  v29[3] = &unk_277DBC098;
  v27 = cellCopy;
  v30 = v27;
  v31 = onCopy;
  v28 = [v24 addFailureBlock:v29];

  objc_destroyWeak(&v34);
  objc_destroyWeak(buf);
}

void __49__HUEditUserViewController_switchCell_didTurnOn___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D146E8] sharedDispatcher];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HUEditUserViewController_switchCell_didTurnOn___block_invoke_4;
  v5[3] = &unk_277DBDAB8;
  objc_copyWeak(&v7, (a1 + 40));
  v6 = *(a1 + 32);
  [v4 dispatchHomeObserverMessage:v5 sender:0];

  objc_destroyWeak(&v7);
}

void __49__HUEditUserViewController_switchCell_didTurnOn___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained itemManager];
    v5 = [v4 home];
    [v6 home:v5 didUpdateAccessControlForUser:*(a1 + 32)];
  }
}

uint64_t __49__HUEditUserViewController_switchCell_didTurnOn___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D14640];
  v4 = a2;
  v5 = [v3 sharedHandler];
  [v5 handleError:v4 operationType:*MEMORY[0x277D13C70] options:0 retryBlock:0 cancelBlock:0];

  v6 = *(a1 + 32);
  v7 = (*(a1 + 40) & 1) == 0;

  return [v6 setOn:v7 animated:1];
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  userSettingsItemModuleController = [(HUEditUserViewController *)self userSettingsItemModuleController];
  if (!userSettingsItemModuleController)
  {
    editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
    userSettingsItemModule = [editUserItemManager userSettingsItemModule];

    if (!userSettingsItemModule)
    {
      goto LABEL_5;
    }

    v7 = [HUAccessorySettingsItemModuleController alloc];
    userSettingsItemModuleController = [(HUEditUserViewController *)self editUserItemManager];
    userSettingsItemModule2 = [userSettingsItemModuleController userSettingsItemModule];
    v9 = [(HUAccessorySettingsItemModuleController *)v7 initWithModule:userSettingsItemModule2 delegate:self];
    [(HUEditUserViewController *)self setUserSettingsItemModuleController:v9];
  }

LABEL_5:
  userSettingsItemModuleController2 = [(HUEditUserViewController *)self userSettingsItemModuleController];
  [v3 na_safeAddObject:userSettingsItemModuleController2];

  mediaServiceSettingsItemModuleController = [(HUEditUserViewController *)self mediaServiceSettingsItemModuleController];
  if (!mediaServiceSettingsItemModuleController)
  {
    editUserItemManager2 = [(HUEditUserViewController *)self editUserItemManager];
    mediaServiceItemModule = [editUserItemManager2 mediaServiceItemModule];

    if (!mediaServiceItemModule)
    {
      goto LABEL_9;
    }

    v14 = [HUMediaServiceSettingsItemModuleController alloc];
    editUserItemManager3 = [(HUEditUserViewController *)self editUserItemManager];
    mediaServiceItemModule2 = [editUserItemManager3 mediaServiceItemModule];
    v17 = [(HUItemModuleController *)v14 initWithModule:mediaServiceItemModule2];
    [(HUEditUserViewController *)self setMediaServiceSettingsItemModuleController:v17];

    mediaServiceSettingsItemModuleController = [(HUEditUserViewController *)self mediaServiceSettingsItemModuleController];
    [mediaServiceSettingsItemModuleController setDelegate:self];
  }

LABEL_9:
  mediaServiceSettingsItemModuleController2 = [(HUEditUserViewController *)self mediaServiceSettingsItemModuleController];
  [v3 na_safeAddObject:mediaServiceSettingsItemModuleController2];

  return v3;
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
    navigationController = [(HUEditUserViewController *)self navigationController];
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
  v12[2] = __98__HUEditUserViewController_moduleController_requestPresentViewController_animated_withCompletion___block_invoke;
  v12[3] = &unk_277DB8488;
  v10 = v9;
  v13 = v10;
  [(HUEditUserViewController *)self presentViewController:viewControllerCopy animated:animatedCopy completion:v12];

  return v10;
}

- (void)moduleController:(id)controller preflightCheckToAllowSwitchingForSettingItem:(id)item changingToOn:(BOOL)on withCompletion:(id)completion
{
  onCopy = on;
  v56[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  itemCopy = item;
  completionCopy = completion;
  if (!itemCopy)
  {
    v13 = NSStringFromSelector(a2);
    NSLog(&cfstr_CalledWithNoSe.isa, v13);
  }

  settingKeyPath = [itemCopy settingKeyPath];
  v15 = *MEMORY[0x277D139B8];
  v16 = [settingKeyPath isEqualToString:*MEMORY[0x277D139B8]];

  if (v16)
  {
    v17 = !onCopy;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    itemManager = [(HUItemTableViewController *)self itemManager];
    home = [itemManager home];
    v55 = @"OnboardingDisplayOption_OnboardingFromUserInput";
    v56[0] = MEMORY[0x277CBEC38];
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    v40 = [HUHomeFeatureOnboardingUtilities home:home onboardIdentifyVoiceFromPresentingViewController:self usageOptions:v39];
    completionCopy[2](completionCopy, v40);
    goto LABEL_16;
  }

  settingKeyPath2 = [itemCopy settingKeyPath];
  v19 = [settingKeyPath2 isEqualToString:*MEMORY[0x277D13990]];

  if (v19)
  {
    v20 = !onCopy;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
    userSettingsItemModule = [editUserItemManager userSettingsItemModule];
    accessorySettingsItemProvider = [userSettingsItemModule accessorySettingsItemProvider];
    homeKitSettingsVendor = [accessorySettingsItemProvider homeKitSettingsVendor];
    itemManager = [homeKitSettingsVendor settings];

    home = [itemManager hf_accessorySettingAtKeyPath:v15];
    value = [home value];
    bOOLValue = [value BOOLValue];

    v27 = HFLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v52 = "[HUEditUserViewController moduleController:preflightCheckToAllowSwitchingForSettingItem:changingToOn:withCompletion:]";
      v53 = 1024;
      v54 = bOOLValue;
      _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "(%s) isVoiceIDSetup = %{BOOL}d", buf, 0x12u);
    }

    if (bOOLValue)
    {
      goto LABEL_17;
    }

    v28 = MEMORY[0x277D75110];
    v29 = _HULocalizedStringWithDefaultValue(@"HUPlaybackInfluencesActivation_Alert_Title", @"HUPlaybackInfluencesActivation_Alert_Title", 1);
    v30 = _HULocalizedStringWithDefaultValue(@"HUPlaybackInfluencesActivation_Alert_Description", @"HUPlaybackInfluencesActivation_Alert_Description", 1);
    v39 = [v28 alertControllerWithTitle:v29 message:v30 preferredStyle:1];

    v31 = MEMORY[0x277D750F8];
    v32 = _HULocalizedStringWithDefaultValue(@"HUPlaybackInfluencesActivation_Alert_Action_NotNow", @"HUPlaybackInfluencesActivation_Alert_Action_NotNow", 1);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __118__HUEditUserViewController_moduleController_preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke;
    v46[3] = &unk_277DBDB08;
    itemManager = itemManager;
    v47 = itemManager;
    selfCopy = self;
    v50 = a2;
    v33 = completionCopy;
    v49 = v33;
    v41 = [v31 actionWithTitle:v32 style:1 handler:v46];

    objc_initWeak(buf, self);
    v34 = MEMORY[0x277D750F8];
    v35 = _HULocalizedStringWithDefaultValue(@"HUPlaybackInfluencesActivation_Alert_Action_IdentifyVoice", @"HUPlaybackInfluencesActivation_Alert_Action_IdentifyVoice", 1);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __118__HUEditUserViewController_moduleController_preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke_112;
    v43[3] = &unk_277DBDB30;
    objc_copyWeak(&v45, buf);
    v44 = v33;
    v36 = [v34 actionWithTitle:v35 style:0 handler:v43];

    [v39 addAction:v41];
    [v39 addAction:v36];
    [(HUEditUserViewController *)self presentViewController:v39 animated:1 completion:0];

    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);

    v40 = v47;
LABEL_16:

LABEL_17:
  }

  completionCopy[2](completionCopy, 0);
}

void __118__HUEditUserViewController_moduleController_preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[HUEditUserViewController moduleController:preflightCheckToAllowSwitchingForSettingItem:changingToOn:withCompletion:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped Not Now Action", buf, 0xCu);
  }

  v5 = [*(a1 + 32) hf_accessorySettingAtKeyPath:*MEMORY[0x277D13990]];
  objc_initWeak(buf, *(a1 + 40));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __118__HUEditUserViewController_moduleController_preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke_107;
  v7[3] = &unk_277DBDAE0;
  v6 = v5;
  v8 = v6;
  objc_copyWeak(v9, buf);
  v9[1] = *(a1 + 56);
  [v6 updateValue:MEMORY[0x277CBEC28] completionHandler:v7];
  (*(*(a1 + 48) + 16))();
  objc_destroyWeak(v9);

  objc_destroyWeak(buf);
}

void __118__HUEditUserViewController_moduleController_preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke_107(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained editUserItemManager];
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
    *buf = 136315650;
    v17 = "[HUEditUserViewController moduleController:preflightCheckToAllowSwitchingForSettingItem:changingToOn:withCompletion:]_block_invoke";
    v18 = 2112;
    v19 = v3;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_20CEB6000, WeakRetained, OS_LOG_TYPE_DEFAULT, "(%s) Error [%@] setting value for setting [%@] to NO", buf, 0x20u);
  }

LABEL_10:
}

void __118__HUEditUserViewController_moduleController_preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke_112(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[HUEditUserViewController moduleController:preflightCheckToAllowSwitchingForSettingItem:changingToOn:withCompletion:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) User tapped Identify Voice Action", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v5 = [WeakRetained itemManager];
  v6 = [v5 home];
  v9 = @"OnboardingDisplayOption_OnboardingFromUserInput";
  v10 = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [HUHomeFeatureOnboardingUtilities home:v6 onboardIdentifyVoiceFromPresentingViewController:WeakRetained usageOptions:v7];
  (*(v4 + 16))(v4, v8);
}

- (void)moduleController:(id)controller settingUpdatedForItem:(id)item
{
  v23[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  itemCopy = item;
  v9 = itemCopy;
  if (itemCopy)
  {
    settingKeyPath = [itemCopy settingKeyPath];
    v11 = [settingKeyPath isEqualToString:*MEMORY[0x277D139B8]];

    if (v11)
    {
      editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
      v13 = [editUserItemManager sectionIndexForDisplayedSectionIdentifier:*MEMORY[0x277D139E8]];

      itemManager = [(HUItemTableViewController *)self itemManager];
      v15 = [itemManager reloadAndUpdateAllItemsFromSenderSelector:a2];

      itemManager2 = [(HUItemTableViewController *)self itemManager];
      LODWORD(itemManager) = [itemManager2 diffableDataSourceDisabled];

      if (itemManager)
      {
        tableView = [(HUEditUserViewController *)self tableView];
        v18 = [MEMORY[0x277CCAA78] indexSetWithIndex:v13];
        [tableView reloadSections:v18 withRowAnimation:5];
      }

      else
      {
        itemManager3 = [(HUItemTableViewController *)self itemManager];
        v20 = [itemManager3 itemSectionForSectionIndex:v13];

        if (v20)
        {
          itemManager4 = [(HUItemTableViewController *)self itemManager];
          v23[0] = v20;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
          [itemManager4 reloadUIRepresentationForSections:v22 withAnimation:0];
        }
      }
    }
  }
}

- (BOOL)moduleController:(id)controller shouldDisableItem:(id)item
{
  v28 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  isAMac = [MEMORY[0x277D14CE8] isAMac];
  settingKeyPath = [itemCopy settingKeyPath];
  v8 = [settingKeyPath isEqualToString:*MEMORY[0x277D13990]];

  if (!isAMac)
  {
    if (v8)
    {
      userItem = [(HUEditUserViewController *)self userItem];
      user = [userItem user];
      editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
      home = [editUserItemManager home];
      currentUser = [home currentUser];
      v9 = [user isEqual:currentUser] ^ 1;

      goto LABEL_6;
    }

LABEL_15:
    LOBYTE(v9) = 0;
    goto LABEL_16;
  }

  if ((v8 & 1) == 0)
  {
    settingKeyPath2 = [itemCopy settingKeyPath];
    v16 = [settingKeyPath2 isEqualToString:*MEMORY[0x277D139B8]];

    if (v16)
    {
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        editUserItemManager2 = [(HUEditUserViewController *)self editUserItemManager];
        home2 = [editUserItemManager2 home];
        v24 = 136315394;
        v25 = "[HUEditUserViewController moduleController:shouldDisableItem:]";
        v26 = 1024;
        hf_hasRMVCapableAppleTV = [home2 hf_hasRMVCapableAppleTV];
        _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "(%s) hasRMVCapableAppleTV = %{BOOL}d", &v24, 0x12u);
      }

      v20 = HFLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        editUserItemManager3 = [(HUEditUserViewController *)self editUserItemManager];
        isUserBeingEditedTheDeviceUser = [editUserItemManager3 isUserBeingEditedTheDeviceUser];
        v24 = 136315394;
        v25 = "[HUEditUserViewController moduleController:shouldDisableItem:]";
        v26 = 1024;
        hf_hasRMVCapableAppleTV = isUserBeingEditedTheDeviceUser;
        _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "(%s) isUserBeingEditedTheDeviceUser = %{BOOL}d", &v24, 0x12u);
      }

      userItem = [(HUEditUserViewController *)self editUserItemManager];
      user = [userItem home];
      if (![user hf_hasRMVCapableAppleTV])
      {
        LOBYTE(v9) = 1;
        goto LABEL_7;
      }

      editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
      v9 = [editUserItemManager isUserBeingEditedTheDeviceUser] ^ 1;
LABEL_6:

LABEL_7:
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  LOBYTE(v9) = 1;
LABEL_16:

  return v9;
}

- (void)mediaServiceSettingsItemModuleController:(id)controller didSelectMediaService:(id)service
{
  serviceCopy = service;
  v6 = [HUMediaServiceTableViewController alloc];
  userItem = [(HUEditUserViewController *)self userItem];
  v10 = [(HUMediaServiceTableViewController *)v6 initWithItem:userItem mediaServiceItem:serviceCopy];

  navigationController = [(HUEditUserViewController *)self navigationController];
  v9 = [navigationController hu_pushPreloadableViewController:v10 animated:1];
}

- (void)didSelectDefaultAccounts:(id)accounts
{
  v4 = [HUMediaServiceDefaultAccountsTableViewController alloc];
  editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
  mediaServiceItemModule = [editUserItemManager mediaServiceItemModule];
  defaultAccountsItem = [mediaServiceItemModule defaultAccountsItem];
  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];
  v12 = [(HUMediaServiceDefaultAccountsTableViewController *)v4 initWithItem:defaultAccountsItem home:home];

  navigationController = [(HUEditUserViewController *)self navigationController];
  v11 = [navigationController hu_pushPreloadableViewController:v12 animated:1];
}

- (void)_removeUser
{
  editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
  userBeingEdited = [editUserItemManager userBeingEdited];

  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];

  if ([home hf_currentUserIsAdministrator])
  {
    hf_currentUserIsOwner = 1;
  }

  else
  {
    hf_currentUserIsOwner = [home hf_currentUserIsOwner];
  }

  array = [MEMORY[0x277CBEB18] array];
  pinCodeManager = [(HUEditUserViewController *)self pinCodeManager];
  v10 = [pinCodeManager deleteUserPinCodeWithUser:userBeingEdited];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__HUEditUserViewController__removeUser__block_invoke;
  v33[3] = &unk_277DBDB58;
  v11 = userBeingEdited;
  v34 = v11;
  v12 = home;
  v35 = v12;
  v13 = [v10 recover:v33];
  [array na_safeAddObject:v13];

  v14 = MEMORY[0x277D2C900];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __39__HUEditUserViewController__removeUser__block_invoke_119;
  v29[3] = &unk_277DB89C0;
  v32 = hf_currentUserIsOwner;
  v15 = v12;
  v30 = v15;
  v16 = v11;
  v31 = v16;
  v17 = [v14 lazyFutureWithBlock:v29];
  [array addObject:v17];

  v18 = [MEMORY[0x277D2C900] chainFutures:array];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __39__HUEditUserViewController__removeUser__block_invoke_2;
  v25 = &unk_277DBDBD0;
  v28 = hf_currentUserIsOwner;
  v26 = v15;
  v27 = v16;
  v19 = v16;
  v20 = v15;
  v21 = [v18 addSuccessBlock:&v22];
  [(HUUserTableViewController *)self performRemovalAction:v18, v22, v23, v24, v25];
}

id __39__HUEditUserViewController__removeUser__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v17 = [*(a1 + 32) hf_prettyDescription];
    *buf = 136315650;
    v21 = "[HUEditUserViewController _removeUser]_block_invoke";
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "(%s) Failed to remove user PIN Code before removing user (%@): %@", buf, 0x20u);
  }

  v5 = [*(a1 + 40) currentUser];
  v6 = [v5 uniqueIdentifier];
  v7 = [*(a1 + 32) uniqueIdentifier];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D13C88];
    v11 = [*(a1 + 32) name];
    v19 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [v9 hf_errorWithCode:78 operation:v10 options:v12];

    v14 = [MEMORY[0x277D14640] sharedHandler];
    [v14 handleError:v13];
  }

  v15 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v15;
}

void __39__HUEditUserViewController__removeUser__block_invoke_119(uint64_t a1, void *a2)
{
  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = a2;
    v11 = [v5 errorOnlyCompletionHandlerAdapter];

    [v4 removeUserWithoutConfirmation:v3 completionHandler:v11];
  }

  else
  {
    v6 = MEMORY[0x277D146E8];
    v7 = a2;
    v8 = [v6 sharedDispatcher];
    v11 = [v8 homeManager];

    v9 = *(a1 + 32);
    v10 = [v7 errorOnlyCompletionHandlerAdapter];

    [v11 removeHome:v9 completionHandler:v10];
  }
}

void __39__HUEditUserViewController__removeUser__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__HUEditUserViewController__removeUser__block_invoke_3;
  v3[3] = &unk_277DBDBA8;
  v6 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 dispatchHomeObserverMessage:v3 sender:0];
}

void __39__HUEditUserViewController__removeUser__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      [v3 home:*(a1 + 32) didRemoveUser:*(a1 + 40)];
    }
  }

  else
  {
    v4 = [MEMORY[0x277D146E8] sharedDispatcher];
    v5 = [v4 homeManager];

    v6 = [MEMORY[0x277D146E8] sharedDispatcher];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__HUEditUserViewController__removeUser__block_invoke_4;
    v8[3] = &unk_277DBDB80;
    v9 = v5;
    v10 = *(a1 + 32);
    v7 = v5;
    [v6 dispatchHomeManagerObserverMessage:v8 sender:0];
  }
}

- (id)_lazyAboutResidentDeviceFooterView
{
  v29[2] = *MEMORY[0x277D85DE8];
  aboutResidentDeviceFooterView = [(HUEditUserViewController *)self aboutResidentDeviceFooterView];

  if (!aboutResidentDeviceFooterView)
  {
    v4 = [[HUAboutResidentDeviceFooterView alloc] initWithReuseIdentifier:@"HUAboutResidentDeviceFooterViewReuseIdentifier"];
    [(HUEditUserViewController *)self setAboutResidentDeviceFooterView:v4];

    aboutResidentDeviceFooterView2 = [(HUEditUserViewController *)self aboutResidentDeviceFooterView];
    [aboutResidentDeviceFooterView2 setDelegate:self];

    tableView = [(HUEditUserViewController *)self tableView];
    [tableView bounds];
    v9 = HUViewSizeSubclassForViewSize(v7, v8);

    v28[0] = &unk_282491778;
    v28[1] = &unk_282491790;
    v29[0] = &unk_282493410;
    v29[1] = &unk_282493420;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v11 = HUConstantFloatForViewSizeSubclass(v9, v10);

    aboutResidentDeviceFooterView3 = [(HUEditUserViewController *)self aboutResidentDeviceFooterView];
    [aboutResidentDeviceFooterView3 setMessageInsets:{0.0, v11, 0.0, v11}];

    aboutResidentDeviceFooterView4 = [(HUEditUserViewController *)self aboutResidentDeviceFooterView];
    [aboutResidentDeviceFooterView4 frame];
    v15 = v14;
    v17 = v16;

    aboutResidentDeviceFooterView5 = [(HUEditUserViewController *)self aboutResidentDeviceFooterView];
    tableView2 = [(HUEditUserViewController *)self tableView];
    [tableView2 bounds];
    [aboutResidentDeviceFooterView5 sizeThatFits:{v20, 10000.0}];
    v22 = v21;
    v24 = v23;

    aboutResidentDeviceFooterView6 = [(HUEditUserViewController *)self aboutResidentDeviceFooterView];
    [aboutResidentDeviceFooterView6 setFrame:{v15, v17, v22, v24}];
  }

  aboutResidentDeviceFooterView7 = [(HUEditUserViewController *)self aboutResidentDeviceFooterView];

  return aboutResidentDeviceFooterView7;
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
    navigationController = [(HUEditUserViewController *)self navigationController];
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

- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = HUEditUserViewController;
  pathCopy = path;
  itemCopy = item;
  [(HUItemTableViewController *)&v10 itemManager:manager didUpdateResultsForItem:itemCopy atIndexPath:pathCopy];
  [(HUEditUserViewController *)self _handleUpdatedItem:itemCopy atIndexPath:pathCopy, v10.receiver, v10.super_class];
}

- (void)_handleUpdatedItem:(id)item atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  objc_opt_class();
  v21 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v21;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  settingKeyPath = [v9 settingKeyPath];
  v11 = [settingKeyPath isEqualToString:*MEMORY[0x277D139B8]];

  if (v11)
  {
    latestResults = [v21 latestResults];
    v13 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13370]];

    value = [v13 value];
    bOOLValue = [value BOOLValue];

    value2 = [v9 value];
    bOOLValue2 = [value2 BOOLValue];

    if (bOOLValue == bOOLValue2)
    {
      tableView = [(HUEditUserViewController *)self tableView];
      v19 = [tableView cellForRowAtIndexPath:pathCopy];

      value3 = [v9 value];
      [v19 setOn:objc_msgSend(value3 animated:{"BOOLValue"), 1}];
    }
  }
}

- (id)presentPinDetailsViewController
{
  editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
  sourceItem = [editUserItemManager sourceItem];

  editUserItemManager2 = [(HUEditUserViewController *)self editUserItemManager];
  home = [editUserItemManager2 home];

  objc_initWeak(&location, self);
  editUserItemManager3 = [(HUEditUserViewController *)self editUserItemManager];
  userBeingEdited = [editUserItemManager3 userBeingEdited];

  pinCodeManager = [(HUEditUserViewController *)self pinCodeManager];
  userPinCodes = [pinCodeManager userPinCodes];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__HUEditUserViewController_presentPinDetailsViewController__block_invoke;
  v16[3] = &unk_277DBC550;
  objc_copyWeak(&v20, &location);
  v11 = userBeingEdited;
  v17 = v11;
  v12 = home;
  v18 = v12;
  v13 = sourceItem;
  v19 = v13;
  v14 = [userPinCodes addSuccessBlock:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return userPinCodes;
}

void __59__HUEditUserViewController_presentPinDetailsViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__HUEditUserViewController_presentPinDetailsViewController__block_invoke_2;
  v15[3] = &unk_277DBC528;
  v16 = *(a1 + 32);
  v5 = [v3 na_firstObjectPassingTest:v15];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D14920]) initWithPinCode:v5 inHome:*(a1 + 40) onAccessory:0];
    v7 = [HUPinCodeDetailsViewController alloc];
    v8 = [WeakRetained pinCodeManager];
    v9 = [(HUPinCodeDetailsViewController *)v7 initWithItem:v6 pinCodeManager:v8 home:*(a1 + 40)];
  }

  else
  {
    v10 = [HUPinCodeDetailsViewController alloc];
    v11 = *(a1 + 48);
    v6 = [WeakRetained pinCodeManager];
    v9 = [(HUPinCodeDetailsViewController *)v10 initWithItem:v11 pinCodeManager:v6 home:*(a1 + 40)];
  }

  v12 = _HULocalizedStringWithDefaultValue(@"HUUsersLocksTitle", @"HUUsersLocksTitle", 1);
  [(HUPinCodeDetailsViewController *)v9 setTitle:v12];

  v13 = [WeakRetained navigationController];
  v14 = [v13 hu_pushPreloadableViewController:v9 animated:1];
}

uint64_t __59__HUEditUserViewController_presentPinDetailsViewController__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 userLabel];
  v4 = [v3 user];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems
{
  managerCopy = manager;
  itemsCopy = items;
  addItemsCopy = addItems;
  removeItemsCopy = removeItems;
  v17.receiver = self;
  v17.super_class = HUEditUserViewController;
  [(HUItemTableViewController *)&v17 diffableDataItemManager:managerCopy didUpdateItems:itemsCopy addItems:addItemsCopy removeItems:removeItemsCopy];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__HUEditUserViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke;
  v14[3] = &unk_277DBBF90;
  objc_copyWeak(&v15, &location);
  [itemsCopy na_each:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __88__HUEditUserViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained itemManager];
  v5 = [v4 indexPathForItem:v3];

  [WeakRetained _handleUpdatedItem:v3 atIndexPath:v5];
}

- (id)presentDefaultAccountViewController
{
  v3 = [HUMediaServiceDefaultAccountsTableViewController alloc];
  editUserItemManager = [(HUEditUserViewController *)self editUserItemManager];
  mediaServiceItemModule = [editUserItemManager mediaServiceItemModule];
  defaultAccountsItem = [mediaServiceItemModule defaultAccountsItem];
  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];
  v9 = [(HUMediaServiceDefaultAccountsTableViewController *)v3 initWithItem:defaultAccountsItem home:home];

  navigationController = [(HUEditUserViewController *)self navigationController];
  v11 = [navigationController hu_pushPreloadableViewController:v9 animated:1];

  return v11;
}

@end