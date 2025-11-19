@interface HUEditUserViewController
- (BOOL)moduleController:(id)a3 shouldDisableItem:(id)a4;
- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUEditUserViewController)initWithItem:(id)a3 home:(id)a4 pinCodeManager:(id)a5;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_lazyAboutResidentDeviceFooterView;
- (id)childViewControllersToPreload;
- (id)itemModuleControllers;
- (id)moduleController:(id)a3 requestPresentViewController:(id)a4 animated:(BOOL)a5 withCompletion:(id)a6;
- (id)presentDefaultAccountViewController;
- (id)presentPinDetailsViewController;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)user;
- (void)_handleUpdatedItem:(id)a3 atIndexPath:(id)a4;
- (void)_removeUser;
- (void)didSelectDefaultAccounts:(id)a3;
- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6;
- (void)doneButtonTapped:(id)a3;
- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5;
- (void)learnMoreLinkTapped:(id)a3;
- (void)mediaServiceSettingsItemModuleController:(id)a3 didSelectMediaService:(id)a4;
- (void)moduleController:(id)a3 preflightCheckToAllowSwitchingForSettingItem:(id)a4 changingToOn:(BOOL)a5 withCompletion:(id)a6;
- (void)moduleController:(id)a3 presentGroup:(id)a4;
- (void)moduleController:(id)a3 settingUpdatedForItem:(id)a4;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUEditUserViewController

- (HUEditUserViewController)initWithItem:(id)a3 home:(id)a4 pinCodeManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [HUEditUserItemManager alloc];
  v13 = [v9 copy];
  v14 = [(HUEditUserItemManager *)v12 initWithHome:v10 userItem:v13 delegate:self];

  v27.receiver = self;
  v27.super_class = HUEditUserViewController;
  v15 = [(HUUserTableViewController *)&v27 initWithUserItemManager:v14 home:v10];
  if (v15)
  {
    v16 = [v9 copy];
    userItem = v15->_userItem;
    v15->_userItem = v16;

    objc_storeStrong(&v15->_pinCodeManager, a5);
    objc_storeStrong(&v15->_editUserItemManager, v14);
    [(HFItemManager *)v15->_editUserItemManager setDelegate:v15];
    v18 = [HUPendingAccessoriesGridViewController alloc];
    v19 = [v9 user];
    v20 = [(HUPendingAccessoriesGridViewController *)v18 initWithUser:v19 home:v10];
    pendingAccessoriesViewController = v15->_pendingAccessoriesViewController;
    v15->_pendingAccessoriesViewController = v20;

    v22 = [(HFUserItem *)v15->_userItem home];
    LODWORD(v19) = [v22 isMultiUserEnabled];

    if (v19)
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
  v3 = [(HUEditUserViewController *)self navigationController];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    v5 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
    v6 = [v4 initWithTitle:v5 style:2 target:self action:sel_doneButtonTapped_];
    v7 = [(HUEditUserViewController *)self navigationItem];
    [v7 setRightBarButtonItem:v6];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = HUEditUserViewController;
  [(HUItemTableViewController *)&v7 viewWillAppear:a3];
  v4 = [(HUEditUserViewController *)self navigationController];
  v5 = [v4 delegate];

  if (!v5)
  {
    v6 = [(HUEditUserViewController *)self navigationController];
    [v6 setDelegate:self];
  }
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  if (a4 == self)
  {
    v6 = [(HUEditUserViewController *)self tableView];
    [v6 reloadData];
  }
}

- (void)doneButtonTapped:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HUEditUserViewController *)self userItem];
    v7 = [v6 user];
    v8 = [v7 hf_prettyDescription];
    v9 = 136315650;
    v10 = "[HUEditUserViewController doneButtonTapped:]";
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'done' button %@. user = %@", &v9, 0x20u);
  }

  [(HUEditUserViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)user
{
  v2 = [(HUEditUserViewController *)self editUserItemManager];
  v3 = [v2 userBeingEdited];

  return v3;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUEditUserViewController *)self editUserItemManager];
  v9 = [v8 allowEditingItem];
  v10 = [v6 isEqual:v9];

  if (v10)
  {
    goto LABEL_15;
  }

  v11 = [(HUEditUserViewController *)self editUserItemManager];
  v12 = [v11 localAccessItem];
  v13 = [v6 isEqual:v12];

  if (v13)
  {
    goto LABEL_15;
  }

  v14 = [(HUEditUserViewController *)self editUserItemManager];
  v15 = [v14 personalRequestsFooterItem];
  v16 = [v6 isEqual:v15];

  if (v16)
  {
    goto LABEL_15;
  }

  v17 = [(HUEditUserViewController *)self editUserItemManager];
  v18 = [v17 pendingAccessoriesItem];
  v19 = [v6 isEqual:v18];

  if (v19)
  {
    goto LABEL_15;
  }

  v20 = [(HUEditUserViewController *)self editUserItemManager];
  v21 = [v20 camerasItem];
  if ([v6 isEqual:v21])
  {
LABEL_14:

LABEL_15:
    v30 = objc_opt_class();
    goto LABEL_16;
  }

  v22 = [(HUEditUserViewController *)self editUserItemManager];
  v23 = [v22 locksItem];
  if ([v6 isEqual:v23])
  {
LABEL_13:

    goto LABEL_14;
  }

  v24 = [(HUEditUserViewController *)self editUserItemManager];
  v25 = [v24 personalRequestsItem];
  if ([v6 isEqual:v25])
  {
LABEL_12:

    goto LABEL_13;
  }

  v46 = v24;
  v26 = [(HUEditUserViewController *)self editUserItemManager];
  v27 = [v26 tvViewingProfilesItem];
  if ([v6 isEqual:v27])
  {
LABEL_11:

    v24 = v46;
    goto LABEL_12;
  }

  v44 = v27;
  v45 = v26;
  v28 = [(HUEditUserViewController *)self editUserItemManager];
  v29 = [v28 remoteAccessItem];
  if ([v6 isEqual:v29])
  {

    v27 = v44;
    v26 = v45;
    goto LABEL_11;
  }

  v41 = v29;
  v42 = v28;
  v40 = [(HUEditUserViewController *)self editUserItemManager];
  v33 = [v40 updateListeningHistoryItem];
  if ([v6 isEqual:?])
  {
    v43 = 1;
  }

  else
  {
    v39 = [(HUEditUserViewController *)self editUserItemManager];
    v38 = [v39 allowedAccessoryCategoryItemProvider];
    v34 = [v38 items];
    v43 = [v34 containsObject:v6];
  }

  if (v43)
  {
    goto LABEL_15;
  }

  v35 = [(HUEditUserViewController *)self editUserItemManager];
  v36 = [v35 homeScheduleItem];
  v37 = [v6 isEqual:v36];

  if (v37)
  {
    goto LABEL_15;
  }

  v47.receiver = self;
  v47.super_class = HUEditUserViewController;
  v30 = [(HUUserTableViewController *)&v47 cellClassForItem:v6 indexPath:v7];
LABEL_16:
  v31 = v30;

  return v31;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v61.receiver = self;
  v61.super_class = HUEditUserViewController;
  [(HUUserTableViewController *)&v61 setupCell:v8 forItem:v9 indexPath:a5];
  v10 = [(HUEditUserViewController *)self editUserItemManager];
  v11 = [v10 allowEditingItem];
  v12 = [v9 isEqual:v11];

  if (!v12)
  {
    v14 = [(HUEditUserViewController *)self editUserItemManager];
    v15 = [v14 pendingAccessoriesItem];
    v16 = [v9 isEqual:v15];

    if (v16)
    {
      v17 = MEMORY[0x277D75348];
      v18 = v8;
      v19 = [v17 clearColor];
      [v18 setBackgroundColor:v19];

      v20 = [MEMORY[0x277D75348] clearColor];
      v21 = [v18 contentView];
      [v21 setBackgroundColor:v20];

      v13 = [(HUEditUserViewController *)self pendingAccessoriesViewController];
      [v18 setViewController:v13];
LABEL_5:

      goto LABEL_13;
    }

    v22 = [(HUEditUserViewController *)self editUserItemManager];
    v23 = [v22 camerasItem];
    if ([v9 isEqual:v23])
    {

LABEL_9:
      objc_opt_class();
      v27 = v8;
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v13 = v28;

      [v13 setIconDisplayStyle:1];
      v29 = +[HUIconCellContentMetrics compactMetrics];
      [v13 setContentMetrics:v29];

      [v13 setDisableContinuousIconAnimation:1];
      [v13 setAccessoryType:1];
      goto LABEL_13;
    }

    v24 = [(HUEditUserViewController *)self editUserItemManager];
    v25 = [v24 locksItem];
    v26 = [v9 isEqual:v25];

    if (v26)
    {
      goto LABEL_9;
    }

    v30 = [(HUEditUserViewController *)self editUserItemManager];
    v31 = [v30 personalRequestsItem];
    if (([v9 isEqual:v31] & 1) == 0)
    {
      v32 = [(HUEditUserViewController *)self editUserItemManager];
      v33 = [v32 tvViewingProfilesItem];
      if (([v9 isEqual:v33] & 1) == 0)
      {
        v34 = [(HUEditUserViewController *)self editUserItemManager];
        v35 = [v34 remoteAccessItem];
        if (([v9 isEqual:v35] & 1) == 0)
        {
          v36 = [(HUEditUserViewController *)self editUserItemManager];
          v60 = [v36 updateListeningHistoryItem];
          if (([v9 isEqual:?] & 1) == 0)
          {
            v57 = [(HUEditUserViewController *)self editUserItemManager];
            v56 = [v57 allowedAccessoryCategoryItemProvider];
            [v56 items];
            v44 = v58 = v36;
            v59 = [v44 containsObject:v9];

            if ((v59 & 1) == 0)
            {
              v45 = [(HUEditUserViewController *)self editUserItemManager];
              v46 = [v45 homeScheduleItem];
              v47 = [v9 isEqual:v46];

              if (!v47)
              {
                goto LABEL_14;
              }

              objc_opt_class();
              v48 = v8;
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
              v55 = [v50 contentMetrics];
              [v55 setIconSize:{v52, v54}];

              [v50 setAccessoryType:0];
              [v50 setValueColorFollowsTintColor:1];
              v13 = [v9 latestResults];
              v18 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
              [v50 setAccessibilityIdentifier:v18];

              goto LABEL_5;
            }

LABEL_23:
            objc_opt_class();
            v37 = v8;
            if (objc_opt_isKindOfClass())
            {
              v38 = v37;
            }

            else
            {
              v38 = 0;
            }

            v13 = v38;

            [v13 setAccessoryView:0];
            [v13 setHideIcon:1];
            [v13 setAccessoryType:1];
            v39 = [(HUEditUserViewController *)self editUserItemManager];
            v40 = [v39 allowedAccessoryCategoryItemProvider];
            v41 = [v40 items];
            v42 = [v41 containsObject:v9];

            if (v42)
            {
              [v13 setHideIcon:0];
              v43 = +[HUIconCellContentMetrics compactMetrics];
              [v13 setContentMetrics:v43];
            }

            goto LABEL_13;
          }
        }
      }
    }

    goto LABEL_23;
  }

  v13 = v8;
  [v13 setDelegate:self];
  [v13 setSelectionStyle:0];
LABEL_13:

LABEL_14:
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v28.receiver = self;
  v28.super_class = HUEditUserViewController;
  [(HUItemTableViewController *)&v28 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = [(HUEditUserViewController *)self editUserItemManager];
  v13 = [v12 personalRequestsFooterItem];
  v14 = [v11 isEqual:v13];

  if (v14)
  {
    v15 = v10;
    v16 = [v15 headerFooterView];
    [v16 setType:1];

    v17 = [v11 latestResults];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v19 = [v15 headerFooterView];
    [v19 setMessage:v18];

    v20 = [v15 headerFooterView];
    v21 = [v20 messageTextView];
    [v21 setDelegate:self];

    v22 = [v11 latestResults];
    v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    v24 = [v15 headerFooterView];

    [v24 setAccessibilityIdentifier:v23];
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v25 = v10;
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    v22 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:v11];
    [v27 setContentConfiguration:v22];
    v23 = [v11 latestResults];
    v24 = [v23 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v27 setAccessibilityIdentifier:v24];

    goto LABEL_8;
  }

LABEL_9:
}

- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

  v16.receiver = self;
  v16.super_class = HUEditUserViewController;
  LOBYTE(v8) = [(HUItemTableViewController *)&v16 shouldHideSeparatorsForCell:v7 indexPath:v6];

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(HUEditUserViewController *)self editUserItemManager];
    v12 = [v11 allowEditingItem];
    if ([v9 isEqual:v12])
    {
      v10 = 1;
    }

    else
    {
      v13 = [(HUEditUserViewController *)self editUserItemManager];
      v14 = [v13 pendingAccessoriesItem];
      v10 = [v9 isEqual:v14];
    }
  }

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v165 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v158.receiver = self;
  v158.super_class = HUEditUserViewController;
  v7 = a3;
  [(HUItemTableViewController *)&v158 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

  v152 = v6;
  [v7 deselectRowAtIndexPath:v6 animated:1];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(HUEditUserViewController *)self userItem];
    v12 = [v11 user];
    v13 = [v12 hf_prettyDescription];
    *buf = 136315650;
    v160 = "[HUEditUserViewController tableView:didSelectRowAtIndexPath:]";
    v161 = 2112;
    v162 = v9;
    v163 = 2112;
    v164 = v13;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%@' for user = %@", buf, 0x20u);
  }

  v14 = [(HUEditUserViewController *)self editUserItemManager];
  v15 = [v14 removeItem];
  v16 = [v9 isEqual:v15];

  if (v16)
  {
    v17 = [(HUItemTableViewController *)self itemManager];
    v18 = [v17 home];

    if (([v18 hf_currentUserIsAdministrator] & 1) != 0 || objc_msgSend(v18, "hf_currentUserIsOwner"))
    {
      v19 = [(HUEditUserViewController *)self editUserItemManager];
      v20 = [v19 userBeingEdited];
      v21 = [v20 name];
      v28 = HULocalizedStringWithFormat(@"HUUsersRemovePersonAlertTitle", @"%@", v22, v23, v24, v25, v26, v27, v21);

      v29 = [(HUEditUserViewController *)self editUserItemManager];
      v30 = [v29 userBeingEdited];
      v31 = [v30 name];
      v148 = [v18 name];
      v38 = HULocalizedStringWithFormat(@"HUUsersRemovePersonConfirmationMessage", @"%@%@", v32, v33, v34, v35, v36, v37, v31);

      v39 = @"HURemoveTitle";
    }

    else
    {
      v40 = [v18 name];
      v28 = HULocalizedStringWithFormat(@"HUEditLocationLeaveHomeAlertTitle", @"%@", v41, v42, v43, v44, v45, v46, v40);

      v29 = [v18 name];
      v38 = HULocalizedStringWithFormat(@"HUEditLocationLeaveHomeConfirmationMessage", @"%@", v47, v48, v49, v50, v51, v52, v29);
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
    v155 = self;
    v60 = v54;
    v61 = [v59 actionWithTitle:v60 style:2 handler:v153];
    [v55 addAction:v61];

    [(HUEditUserViewController *)self presentViewController:v55 animated:1 completion:0];
  }

  v62 = [(HUEditUserViewController *)self editUserItemManager];
  v63 = [v62 homeScheduleItem];
  v64 = [v9 isEqual:v63];

  if (v64)
  {
    v65 = [HURestrictedGuestScheduleViewController alloc];
    v66 = [(HUItemTableViewController *)self itemManager];
    v67 = [v66 home];
    v68 = [(HUEditUserViewController *)self userItem];
    v69 = [v68 user];
    v70 = [(HURestrictedGuestScheduleViewController *)v65 initWithHome:v67 user:v69];

    v71 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v70];
    [v71 setModalPresentationStyle:2];
    v72 = [(UIViewController *)self hu_presentPreloadableViewController:v71 animated:1];
  }

  v73 = [(HUEditUserViewController *)self editUserItemManager];
  v74 = [v73 allowedAccessoryCategoryItemProvider];
  v75 = [v74 items];
  v76 = [v75 containsObject:v9];

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
    v80 = [v79 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v81 = v80;
    }

    else
    {
      v81 = 0;
    }

    v82 = v81;

    v83 = [v82 categoryType];
    v84 = [v83 isEqualToString:*MEMORY[0x277CCE890]];

    v85 = [(HUEditUserViewController *)self editUserItemManager];
    v86 = [v85 home];
    v87 = [v86 hf_canAddAccessCode];

    if (v84 && v87)
    {
      v88 = [(HUEditUserViewController *)self presentPinDetailsViewController];
    }

    else
    {
      v150 = v79;
      v89 = [HUUserAccessoryAccessViewController alloc];
      v90 = [(HUEditUserViewController *)self editUserItemManager];
      v91 = [v90 home];
      v92 = [(HUEditUserViewController *)self editUserItemManager];
      v93 = [v92 userBeingEdited];
      v94 = [v82 categoryType];
      v95 = [(HUUserAccessoryAccessViewController *)v89 initWithHome:v91 user:v93 accessoryCategoryType:v94];

      v96 = [(HUEditUserViewController *)self navigationController];
      v97 = [v96 hu_pushPreloadableViewController:v95 animated:1];

      v98 = HFLogForCategory();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        v99 = NSStringFromSelector(a2);
        *buf = 138412802;
        v160 = self;
        v161 = 2112;
        v162 = v99;
        v163 = 2112;
        v164 = v82;
        _os_log_impl(&dword_20CEB6000, v98, OS_LOG_TYPE_DEFAULT, "%@: %@ Checking for allowed accessory category item: categoryItem=%@.", buf, 0x20u);
      }

      v79 = v150;
    }
  }

  v100 = [(HUEditUserViewController *)self editUserItemManager];
  v101 = [v100 remoteAccessItem];
  v102 = [v9 isEqual:v101];

  if (v102)
  {
    v103 = [HURemoteAccessTableViewController alloc];
    v104 = [(HUEditUserViewController *)self userItem];
    v105 = [(HUItemTableViewController *)self itemManager];
    v106 = [v105 home];
    v107 = [(HURemoteAccessTableViewController *)v103 initWithItem:v104 home:v106];

    v108 = [(HUEditUserViewController *)self navigationController];
    v109 = [v108 hu_pushPreloadableViewController:v107 animated:1];
  }

  v110 = [(HUEditUserViewController *)self editUserItemManager];
  v111 = [v110 camerasItem];
  v112 = [v9 isEqual:v111];

  if (v112)
  {
    v113 = [HUUserCamerasAccessLevelViewController alloc];
    v114 = [(HUEditUserViewController *)self userItem];
    v115 = [(HUItemTableViewController *)self itemManager];
    v116 = [v115 home];
    v117 = [(HUUserCamerasAccessLevelViewController *)v113 initWithUserItem:v114 home:v116];

    v118 = [(HUEditUserViewController *)self navigationController];
    v119 = [v118 hu_pushPreloadableViewController:v117 animated:1];
  }

  v120 = [(HUEditUserViewController *)self editUserItemManager];
  v121 = [v120 locksItem];
  v122 = [v9 isEqual:v121];

  if (v122)
  {
    v123 = [(HUEditUserViewController *)self presentPinDetailsViewController];
  }

  v124 = [(HUEditUserViewController *)self editUserItemManager];
  v125 = [v124 personalRequestsItem];
  v126 = [v9 isEqual:v125];

  if (v126)
  {
    v127 = [HUPersonalRequestsEditorTableViewController alloc];
    v128 = [(HUEditUserViewController *)self userItem];
    v129 = [(HUPersonalRequestsEditorTableViewController *)v127 initWithUserItem:v128 onlyShowDeviceSwitches:0];

    v130 = [(HUEditUserViewController *)self navigationController];
    v131 = [v130 hu_pushPreloadableViewController:v129 animated:1];
  }

  v132 = [(HUEditUserViewController *)self editUserItemManager];
  v133 = [v132 tvViewingProfilesItem];
  v134 = [v9 isEqual:v133];

  if (v134)
  {
    v135 = [HUTVViewingProfilesEditorTableViewController alloc];
    v136 = [(HUEditUserViewController *)self userItem];
    v137 = [(HUTVViewingProfilesEditorTableViewController *)v135 initWithUserItem:v136];

    v138 = [(HUEditUserViewController *)self navigationController];
    v139 = [v138 hu_pushPreloadableViewController:v137 animated:1];
  }

  v140 = [(HUEditUserViewController *)self editUserItemManager];
  v141 = [v140 updateListeningHistoryItem];
  v142 = [v9 isEqual:v141];

  if (v142)
  {
    v143 = [HUUpdateListeningHistorySettingsViewController alloc];
    v144 = [(HUEditUserViewController *)self userItem];
    v145 = [(HUUpdateListeningHistorySettingsViewController *)v143 initWithUserItem:v144];

    v146 = [(HUEditUserViewController *)self navigationController];
    v147 = [v146 hu_pushPreloadableViewController:v145 animated:1];
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

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUEditUserViewController *)self editUserItemManager];
  v8 = [v7 reuseIdentifierForFooterViewInSection:a4];

  if ([v8 isEqualToString:@"HUAboutResidentDeviceFooterViewReuseIdentifier"])
  {
    v9 = [(HUEditUserViewController *)self _lazyAboutResidentDeviceFooterView];
  }

  else
  {
    if ([v8 isEqualToString:*MEMORY[0x277D13988]])
    {
      v18.receiver = self;
      v18.super_class = HUEditUserViewController;
      v10 = [(HUItemTableViewController *)&v18 tableView:v6 viewForFooterInSection:a4];
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

      v14 = [v13 messageTextView];
      v15 = [v14 textDragInteraction];
      [v15 setEnabled:1];

      goto LABEL_10;
    }

    v17.receiver = self;
    v17.super_class = HUEditUserViewController;
    v9 = [(HUItemTableViewController *)&v17 tableView:v6 viewForFooterInSection:a4];
  }

  v11 = v9;
LABEL_10:

  return v11;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUEditUserViewController *)self editUserItemManager];
  v8 = [v7 reuseIdentifierForFooterViewInSection:a4];

  if ([v8 isEqualToString:@"HUAboutResidentDeviceFooterViewReuseIdentifier"])
  {
    v9 = [(HUEditUserViewController *)self _lazyAboutResidentDeviceFooterView];
    [v9 bounds];
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
    [(HUItemTableViewController *)&v14 tableView:v6 heightForFooterInSection:a4];
    v11 = v12;
  }

  return v11;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUEditUserViewController *)self editUserItemManager];
  v8 = [v7 displayedSectionIdentifierForSectionIndex:a4];

  if ([v8 isEqualToString:@"HUMediaServiceSettingsItemModule_PrimaryServiceSectionIdentifier"])
  {
    v9 = 0.01;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HUEditUserViewController;
    [(HUItemTableViewController *)&v12 tableView:v6 heightForHeaderInSection:a4];
    v9 = v10;
  }

  return v9;
}

- (id)childViewControllersToPreload
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [(HUEditUserViewController *)self pendingAccessoriesViewController];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)learnMoreLinkTapped:(id)a3
{
  v5 = [[HUAboutResidentDeviceViewController alloc] initWithStyle:1];
  [(HUAboutResidentDeviceViewController *)v5 setDelegate:self];
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  [v4 setModalPresentationStyle:2];
  [(HUEditUserViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HUEditUserViewController *)self tableView];
  v8 = [v7 indexPathForCell:v6];

  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 displayedItemAtIndexPath:v8];

  v11 = [(HUEditUserViewController *)self editUserItemManager];
  v12 = [v11 userBeingEdited];

  v13 = [(HUItemTableViewController *)self itemManager];
  v14 = [v13 home];
  v15 = [v14 homeAccessControlForUser:v12];

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v12 hf_prettyDescription];
    *buf = 136315906;
    v41 = "[HUEditUserViewController switchCell:didTurnOn:]";
    v42 = 2112;
    v43 = v10;
    v44 = 2112;
    v45 = v17;
    v46 = 1024;
    v47 = v4;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "(%s) User tapped switch of %@ for %@ to be %{BOOL}d", buf, 0x26u);
  }

  v18 = [(HUEditUserViewController *)self editUserItemManager];
  v19 = [v18 allowEditingItem];
  v20 = [v10 isEqual:v19];

  if (v20)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__HUEditUserViewController_switchCell_didTurnOn___block_invoke;
    aBlock[3] = &unk_277DBAE20;
    v38 = v15;
    v39 = v4;
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
  v25 = v12;
  v33 = v25;
  v26 = [v24 addSuccessBlock:v32];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __49__HUEditUserViewController_switchCell_didTurnOn___block_invoke_5;
  v29[3] = &unk_277DBC098;
  v27 = v6;
  v30 = v27;
  v31 = v4;
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
  v4 = [(HUEditUserViewController *)self userSettingsItemModuleController];
  if (!v4)
  {
    v5 = [(HUEditUserViewController *)self editUserItemManager];
    v6 = [v5 userSettingsItemModule];

    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = [HUAccessorySettingsItemModuleController alloc];
    v4 = [(HUEditUserViewController *)self editUserItemManager];
    v8 = [v4 userSettingsItemModule];
    v9 = [(HUAccessorySettingsItemModuleController *)v7 initWithModule:v8 delegate:self];
    [(HUEditUserViewController *)self setUserSettingsItemModuleController:v9];
  }

LABEL_5:
  v10 = [(HUEditUserViewController *)self userSettingsItemModuleController];
  [v3 na_safeAddObject:v10];

  v11 = [(HUEditUserViewController *)self mediaServiceSettingsItemModuleController];
  if (!v11)
  {
    v12 = [(HUEditUserViewController *)self editUserItemManager];
    v13 = [v12 mediaServiceItemModule];

    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = [HUMediaServiceSettingsItemModuleController alloc];
    v15 = [(HUEditUserViewController *)self editUserItemManager];
    v16 = [v15 mediaServiceItemModule];
    v17 = [(HUItemModuleController *)v14 initWithModule:v16];
    [(HUEditUserViewController *)self setMediaServiceSettingsItemModuleController:v17];

    v11 = [(HUEditUserViewController *)self mediaServiceSettingsItemModuleController];
    [v11 setDelegate:self];
  }

LABEL_9:
  v18 = [(HUEditUserViewController *)self mediaServiceSettingsItemModuleController];
  [v3 na_safeAddObject:v18];

  return v3;
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
    v13 = [(HUEditUserViewController *)self navigationController];
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
  v12[2] = __98__HUEditUserViewController_moduleController_requestPresentViewController_animated_withCompletion___block_invoke;
  v12[3] = &unk_277DB8488;
  v10 = v9;
  v13 = v10;
  [(HUEditUserViewController *)self presentViewController:v8 animated:v6 completion:v12];

  return v10;
}

- (void)moduleController:(id)a3 preflightCheckToAllowSwitchingForSettingItem:(id)a4 changingToOn:(BOOL)a5 withCompletion:(id)a6
{
  v7 = a5;
  v56[1] = *MEMORY[0x277D85DE8];
  v42 = a3;
  v11 = a4;
  v12 = a6;
  if (!v11)
  {
    v13 = NSStringFromSelector(a2);
    NSLog(&cfstr_CalledWithNoSe.isa, v13);
  }

  v14 = [v11 settingKeyPath];
  v15 = *MEMORY[0x277D139B8];
  v16 = [v14 isEqualToString:*MEMORY[0x277D139B8]];

  if (v16)
  {
    v17 = !v7;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v37 = [(HUItemTableViewController *)self itemManager];
    v38 = [v37 home];
    v55 = @"OnboardingDisplayOption_OnboardingFromUserInput";
    v56[0] = MEMORY[0x277CBEC38];
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    v40 = [HUHomeFeatureOnboardingUtilities home:v38 onboardIdentifyVoiceFromPresentingViewController:self usageOptions:v39];
    v12[2](v12, v40);
    goto LABEL_16;
  }

  v18 = [v11 settingKeyPath];
  v19 = [v18 isEqualToString:*MEMORY[0x277D13990]];

  if (v19)
  {
    v20 = !v7;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v21 = [(HUEditUserViewController *)self editUserItemManager];
    v22 = [v21 userSettingsItemModule];
    v23 = [v22 accessorySettingsItemProvider];
    v24 = [v23 homeKitSettingsVendor];
    v37 = [v24 settings];

    v38 = [v37 hf_accessorySettingAtKeyPath:v15];
    v25 = [v38 value];
    v26 = [v25 BOOLValue];

    v27 = HFLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v52 = "[HUEditUserViewController moduleController:preflightCheckToAllowSwitchingForSettingItem:changingToOn:withCompletion:]";
      v53 = 1024;
      v54 = v26;
      _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "(%s) isVoiceIDSetup = %{BOOL}d", buf, 0x12u);
    }

    if (v26)
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
    v37 = v37;
    v47 = v37;
    v48 = self;
    v50 = a2;
    v33 = v12;
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

  v12[2](v12, 0);
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

- (void)moduleController:(id)a3 settingUpdatedForItem:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 settingKeyPath];
    v11 = [v10 isEqualToString:*MEMORY[0x277D139B8]];

    if (v11)
    {
      v12 = [(HUEditUserViewController *)self editUserItemManager];
      v13 = [v12 sectionIndexForDisplayedSectionIdentifier:*MEMORY[0x277D139E8]];

      v14 = [(HUItemTableViewController *)self itemManager];
      v15 = [v14 reloadAndUpdateAllItemsFromSenderSelector:a2];

      v16 = [(HUItemTableViewController *)self itemManager];
      LODWORD(v14) = [v16 diffableDataSourceDisabled];

      if (v14)
      {
        v17 = [(HUEditUserViewController *)self tableView];
        v18 = [MEMORY[0x277CCAA78] indexSetWithIndex:v13];
        [v17 reloadSections:v18 withRowAnimation:5];
      }

      else
      {
        v19 = [(HUItemTableViewController *)self itemManager];
        v20 = [v19 itemSectionForSectionIndex:v13];

        if (v20)
        {
          v21 = [(HUItemTableViewController *)self itemManager];
          v23[0] = v20;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
          [v21 reloadUIRepresentationForSections:v22 withAnimation:0];
        }
      }
    }
  }
}

- (BOOL)moduleController:(id)a3 shouldDisableItem:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277D14CE8] isAMac];
  v7 = [v5 settingKeyPath];
  v8 = [v7 isEqualToString:*MEMORY[0x277D13990]];

  if (!v6)
  {
    if (v8)
    {
      v10 = [(HUEditUserViewController *)self userItem];
      v11 = [v10 user];
      v12 = [(HUEditUserViewController *)self editUserItemManager];
      v13 = [v12 home];
      v14 = [v13 currentUser];
      v9 = [v11 isEqual:v14] ^ 1;

      goto LABEL_6;
    }

LABEL_15:
    LOBYTE(v9) = 0;
    goto LABEL_16;
  }

  if ((v8 & 1) == 0)
  {
    v15 = [v5 settingKeyPath];
    v16 = [v15 isEqualToString:*MEMORY[0x277D139B8]];

    if (v16)
    {
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(HUEditUserViewController *)self editUserItemManager];
        v19 = [v18 home];
        v24 = 136315394;
        v25 = "[HUEditUserViewController moduleController:shouldDisableItem:]";
        v26 = 1024;
        v27 = [v19 hf_hasRMVCapableAppleTV];
        _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "(%s) hasRMVCapableAppleTV = %{BOOL}d", &v24, 0x12u);
      }

      v20 = HFLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(HUEditUserViewController *)self editUserItemManager];
        v22 = [v21 isUserBeingEditedTheDeviceUser];
        v24 = 136315394;
        v25 = "[HUEditUserViewController moduleController:shouldDisableItem:]";
        v26 = 1024;
        v27 = v22;
        _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "(%s) isUserBeingEditedTheDeviceUser = %{BOOL}d", &v24, 0x12u);
      }

      v10 = [(HUEditUserViewController *)self editUserItemManager];
      v11 = [v10 home];
      if (![v11 hf_hasRMVCapableAppleTV])
      {
        LOBYTE(v9) = 1;
        goto LABEL_7;
      }

      v12 = [(HUEditUserViewController *)self editUserItemManager];
      v9 = [v12 isUserBeingEditedTheDeviceUser] ^ 1;
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

- (void)mediaServiceSettingsItemModuleController:(id)a3 didSelectMediaService:(id)a4
{
  v5 = a4;
  v6 = [HUMediaServiceTableViewController alloc];
  v7 = [(HUEditUserViewController *)self userItem];
  v10 = [(HUMediaServiceTableViewController *)v6 initWithItem:v7 mediaServiceItem:v5];

  v8 = [(HUEditUserViewController *)self navigationController];
  v9 = [v8 hu_pushPreloadableViewController:v10 animated:1];
}

- (void)didSelectDefaultAccounts:(id)a3
{
  v4 = [HUMediaServiceDefaultAccountsTableViewController alloc];
  v5 = [(HUEditUserViewController *)self editUserItemManager];
  v6 = [v5 mediaServiceItemModule];
  v7 = [v6 defaultAccountsItem];
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 home];
  v12 = [(HUMediaServiceDefaultAccountsTableViewController *)v4 initWithItem:v7 home:v9];

  v10 = [(HUEditUserViewController *)self navigationController];
  v11 = [v10 hu_pushPreloadableViewController:v12 animated:1];
}

- (void)_removeUser
{
  v3 = [(HUEditUserViewController *)self editUserItemManager];
  v4 = [v3 userBeingEdited];

  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 home];

  if ([v6 hf_currentUserIsAdministrator])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 hf_currentUserIsOwner];
  }

  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [(HUEditUserViewController *)self pinCodeManager];
  v10 = [v9 deleteUserPinCodeWithUser:v4];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__HUEditUserViewController__removeUser__block_invoke;
  v33[3] = &unk_277DBDB58;
  v11 = v4;
  v34 = v11;
  v12 = v6;
  v35 = v12;
  v13 = [v10 recover:v33];
  [v8 na_safeAddObject:v13];

  v14 = MEMORY[0x277D2C900];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __39__HUEditUserViewController__removeUser__block_invoke_119;
  v29[3] = &unk_277DB89C0;
  v32 = v7;
  v15 = v12;
  v30 = v15;
  v16 = v11;
  v31 = v16;
  v17 = [v14 lazyFutureWithBlock:v29];
  [v8 addObject:v17];

  v18 = [MEMORY[0x277D2C900] chainFutures:v8];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __39__HUEditUserViewController__removeUser__block_invoke_2;
  v25 = &unk_277DBDBD0;
  v28 = v7;
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
  v3 = [(HUEditUserViewController *)self aboutResidentDeviceFooterView];

  if (!v3)
  {
    v4 = [[HUAboutResidentDeviceFooterView alloc] initWithReuseIdentifier:@"HUAboutResidentDeviceFooterViewReuseIdentifier"];
    [(HUEditUserViewController *)self setAboutResidentDeviceFooterView:v4];

    v5 = [(HUEditUserViewController *)self aboutResidentDeviceFooterView];
    [v5 setDelegate:self];

    v6 = [(HUEditUserViewController *)self tableView];
    [v6 bounds];
    v9 = HUViewSizeSubclassForViewSize(v7, v8);

    v28[0] = &unk_282491778;
    v28[1] = &unk_282491790;
    v29[0] = &unk_282493410;
    v29[1] = &unk_282493420;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v11 = HUConstantFloatForViewSizeSubclass(v9, v10);

    v12 = [(HUEditUserViewController *)self aboutResidentDeviceFooterView];
    [v12 setMessageInsets:{0.0, v11, 0.0, v11}];

    v13 = [(HUEditUserViewController *)self aboutResidentDeviceFooterView];
    [v13 frame];
    v15 = v14;
    v17 = v16;

    v18 = [(HUEditUserViewController *)self aboutResidentDeviceFooterView];
    v19 = [(HUEditUserViewController *)self tableView];
    [v19 bounds];
    [v18 sizeThatFits:{v20, 10000.0}];
    v22 = v21;
    v24 = v23;

    v25 = [(HUEditUserViewController *)self aboutResidentDeviceFooterView];
    [v25 setFrame:{v15, v17, v22, v24}];
  }

  v26 = [(HUEditUserViewController *)self aboutResidentDeviceFooterView];

  return v26;
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
    v13 = [(HUEditUserViewController *)self navigationController];
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

- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5
{
  v10.receiver = self;
  v10.super_class = HUEditUserViewController;
  v8 = a5;
  v9 = a4;
  [(HUItemTableViewController *)&v10 itemManager:a3 didUpdateResultsForItem:v9 atIndexPath:v8];
  [(HUEditUserViewController *)self _handleUpdatedItem:v9 atIndexPath:v8, v10.receiver, v10.super_class];
}

- (void)_handleUpdatedItem:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v21 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v21;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 settingKeyPath];
  v11 = [v10 isEqualToString:*MEMORY[0x277D139B8]];

  if (v11)
  {
    v12 = [v21 latestResults];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13370]];

    v14 = [v13 value];
    v15 = [v14 BOOLValue];

    v16 = [v9 value];
    v17 = [v16 BOOLValue];

    if (v15 == v17)
    {
      v18 = [(HUEditUserViewController *)self tableView];
      v19 = [v18 cellForRowAtIndexPath:v7];

      v20 = [v9 value];
      [v19 setOn:objc_msgSend(v20 animated:{"BOOLValue"), 1}];
    }
  }
}

- (id)presentPinDetailsViewController
{
  v3 = [(HUEditUserViewController *)self editUserItemManager];
  v4 = [v3 sourceItem];

  v5 = [(HUEditUserViewController *)self editUserItemManager];
  v6 = [v5 home];

  objc_initWeak(&location, self);
  v7 = [(HUEditUserViewController *)self editUserItemManager];
  v8 = [v7 userBeingEdited];

  v9 = [(HUEditUserViewController *)self pinCodeManager];
  v10 = [v9 userPinCodes];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__HUEditUserViewController_presentPinDetailsViewController__block_invoke;
  v16[3] = &unk_277DBC550;
  objc_copyWeak(&v20, &location);
  v11 = v8;
  v17 = v11;
  v12 = v6;
  v18 = v12;
  v13 = v4;
  v19 = v13;
  v14 = [v10 addSuccessBlock:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v10;
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

- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HUEditUserViewController;
  [(HUItemTableViewController *)&v17 diffableDataItemManager:v10 didUpdateItems:v11 addItems:v12 removeItems:v13];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__HUEditUserViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke;
  v14[3] = &unk_277DBBF90;
  objc_copyWeak(&v15, &location);
  [v11 na_each:v14];
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
  v4 = [(HUEditUserViewController *)self editUserItemManager];
  v5 = [v4 mediaServiceItemModule];
  v6 = [v5 defaultAccountsItem];
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 home];
  v9 = [(HUMediaServiceDefaultAccountsTableViewController *)v3 initWithItem:v6 home:v8];

  v10 = [(HUEditUserViewController *)self navigationController];
  v11 = [v10 hu_pushPreloadableViewController:v9 animated:1];

  return v11;
}

@end