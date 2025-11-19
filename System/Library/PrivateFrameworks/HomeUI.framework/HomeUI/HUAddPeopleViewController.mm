@interface HUAddPeopleViewController
+ (void)presentAddPersonOrAlertForHH2Upgrade:(id)a3 withHome:(id)a4 viewContext:(unint64_t)a5 delegate:(id)a6 presentationDelegate:(id)a7;
- (BOOL)adaptiveTemperatureEnabledForHome:(id)a3;
- (HUAddPeopleViewController)initWithCoder:(id)a3;
- (HUAddPeopleViewController)initWithHome:(id)a3 viewContext:(unint64_t)a4;
- (HUAddPeopleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HUAddPeopleViewControllerDelegate)delegate;
- (HUPresentationDelegate)presentationDelegate;
- (MFContactsSearchManager)searchManager;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)IDSDestinationForRecipient:(id)a3;
- (id)_getIDSServiceName;
- (id)_sanitizedIDSCopyIDForPhoneNumber:(id)a3;
- (id)composeRecipientForAddress:(id)a3;
- (id)recipientsWithStatusPassingTest:(id)a3;
- (id)requiredKeyDescriptors;
- (id)rightBarButtonTitle;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tintColorForRecipient:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6;
- (void)cancelButtonPressed:(id)a3;
- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 didChangeSize:(CGSize)a4;
- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4;
- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 textDidChange:(id)a4;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)a3;
- (void)composeRecipientViewRequestAddRecipient:(id)a3;
- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4;
- (void)contactController:(id)a3 didFinishDownloadingFamilyMemberAvatar:(id)a4;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)dealloc;
- (void)finishedSearchingForAutocompleteResults;
- (void)handleStatusQueryResults:(id)a3;
- (void)lookupIDSDestinations:(id)a3;
- (void)lookupVisibleRecipients;
- (void)scheduleDelayedLookupVisibleRecipients;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)sendButtonPressed:(id)a3;
- (void)sendInvites;
- (void)setState:(unint64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)updateStateDependentUI;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUAddPeopleViewController

- (BOOL)adaptiveTemperatureEnabledForHome:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = _sSo25HUAddPeopleViewControllerC6HomeUIE26adaptiveTemperatureEnabled3forSbSo6HMHomeCSg_tF_0(v3);

  return v3 & 1;
}

- (HUAddPeopleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUAddPeopleViewController.m" lineNumber:105 description:{@"%s is unavailable; use %@ instead", "-[HUAddPeopleViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HUAddPeopleViewController)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithHome_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUAddPeopleViewController.m" lineNumber:110 description:{@"%s is unavailable; use %@ instead", "-[HUAddPeopleViewController initWithCoder:]", v6}];

  return 0;
}

- (HUAddPeopleViewController)initWithHome:(id)a3 viewContext:(unint64_t)a4
{
  v7 = a3;
  v20.receiver = self;
  v20.super_class = HUAddPeopleViewController;
  v8 = [(HUAddPeopleViewController *)&v20 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a3);
    v9->_viewContext = a4;
    v10 = objc_alloc(MEMORY[0x277D145A8]);
    v11 = [(HUAddPeopleViewController *)v9 requiredKeyDescriptors];
    v12 = [v10 initWithKeyDescriptors:v11];
    contactsController = v9->_contactsController;
    v9->_contactsController = v12;

    [(HFContactController *)v9->_contactsController setDelegate:v9];
    familyMembersNotInHome = v9->_familyMembersNotInHome;
    v9->_familyMembersNotInHome = MEMORY[0x277CBEBF8];

    v9->_adaptiveTemperatureEnabled = [(HUAddPeopleViewController *)v9 adaptiveTemperatureEnabledForHome:v7];
    objc_initWeak(&location, v9);
    v15 = v9->_contactsController;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__HUAddPeopleViewController_initWithHome_viewContext___block_invoke;
    v17[3] = &unk_277DB88D8;
    objc_copyWeak(&v18, &location);
    [(HFContactController *)v15 fetchFamilyMembersWithCompletion:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __54__HUAddPeopleViewController_initWithHome_viewContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained home];
  v6 = [v5 users];

  v7 = [WeakRetained home];
  v8 = [v7 outgoingInvitations];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__HUAddPeopleViewController_initWithHome_viewContext___block_invoke_2;
  v16[3] = &unk_277DBD108;
  v9 = WeakRetained;
  v17 = v9;
  v10 = v6;
  v18 = v10;
  v11 = v8;
  v19 = v11;
  v12 = [v3 na_filter:v16];

  [v9 setFamilyMembersNotInHome:v12];
  if ([v9 isViewLoaded])
  {
    v13 = [v9 familyMembersNotInHome];
    if (![v13 count])
    {
LABEL_5:

      goto LABEL_6;
    }

    v14 = [v9 showingAutoCompleteResults];

    if ((v14 & 1) == 0)
    {
      v13 = [v9 tableView];
      v15 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
      [v13 insertSections:v15 withRowAnimation:3];

      goto LABEL_5;
    }
  }

LABEL_6:
}

uint64_t __54__HUAddPeopleViewController_initWithHome_viewContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 appleID];
  v5 = [*(a1 + 32) home];
  v6 = [v5 currentUser];
  v7 = [v6 userID];
  v8 = [v4 isEqual:v7];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = *(a1 + 40);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__HUAddPeopleViewController_initWithHome_viewContext___block_invoke_3;
    v16[3] = &unk_277DB7D60;
    v11 = v3;
    v17 = v11;
    if ([v10 na_any:v16])
    {
      v9 = 0;
    }

    else
    {
      v12 = *(a1 + 48);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __54__HUAddPeopleViewController_initWithHome_viewContext___block_invoke_4;
      v14[3] = &unk_277DBD0E0;
      v15 = v11;
      v9 = [v12 na_any:v14] ^ 1;
    }
  }

  return v9;
}

uint64_t __54__HUAddPeopleViewController_initWithHome_viewContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 appleID];
  v5 = [v3 userID];

  v6 = [v4 isEqual:v5];
  return v6;
}

uint64_t __54__HUAddPeopleViewController_initWithHome_viewContext___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 appleID];
  v5 = [v3 invitee];

  v6 = [v5 userID];
  v7 = [v4 isEqual:v6];

  return v7;
}

+ (void)presentAddPersonOrAlertForHH2Upgrade:(id)a3 withHome:(id)a4 viewContext:(unint64_t)a5 delegate:(id)a6 presentationDelegate:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a6;
  v15 = [[HUAddPeopleViewController alloc] initWithHome:v12 viewContext:a5];
  [(HUAddPeopleViewController *)v15 setDelegate:v14];

  [(HUAddPeopleViewController *)v15 setPresentationDelegate:v13];
  v16 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v15];
  [v16 setModalPresentationStyle:2];
  v17 = v16;
  v18 = v17;
  if ([v12 hf_canUpdateToHH2])
  {
    v19 = [v12 hf_residentDevicesAddedToHome];
    v20 = [v19 count];

    v18 = v17;
    if (v20)
    {
      v21 = MEMORY[0x277D75110];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __117__HUAddPeopleViewController_presentAddPersonOrAlertForHH2Upgrade_withHome_viewContext_delegate_presentationDelegate___block_invoke;
      v25[3] = &unk_277DBD130;
      v26 = v12;
      v27 = v11;
      v28 = v17;
      v18 = [v21 hu_alertControllerForAddingPersonWithCompletionHandler:v25];
    }
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __117__HUAddPeopleViewController_presentAddPersonOrAlertForHH2Upgrade_withHome_viewContext_delegate_presentationDelegate___block_invoke_152;
  v23[3] = &unk_277DB8488;
  v24 = v18;
  v22 = v18;
  [v11 presentViewController:v22 animated:1 completion:v23];
}

void __117__HUAddPeopleViewController_presentAddPersonOrAlertForHH2Upgrade_withHome_viewContext_delegate_presentationDelegate___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [*(a1 + 32) uniqueIdentifier];
    v10 = [v3 stringWithFormat:@"com.apple.HOME-PRIVATE://homepodSoftwareUpdate?homeId=%@", v4];

    v5 = [MEMORY[0x277D148E8] sharedInstance];
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v10];
    v7 = [v5 openURL:v6];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);

    [v8 presentViewController:v9 animated:1 completion:&__block_literal_global_113];
  }
}

void __117__HUAddPeopleViewController_presentAddPersonOrAlertForHH2Upgrade_withHome_viewContext_delegate_presentationDelegate___block_invoke_2()
{
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "[HUAddPeopleViewController-presentAddPersonOrAlertForHH2Upgrade] popup alert displayed because user is owner and HH2 is available with 1 or more resident devices in the home | presenting nav controller", v1, 2u);
  }
}

void __117__HUAddPeopleViewController_presentAddPersonOrAlertForHH2Upgrade_withHome_viewContext_delegate_presentationDelegate___block_invoke_152(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "[HUAddPeopleViewController-presentAddPersonOrAlertForHH2Upgrade] popup alert displayed because user is owner and HH2 is available with 1 or more resident devices in the home | presentedViewController = %@", &v4, 0xCu);
  }
}

- (void)dealloc
{
  [(NSTimer *)self->_statusQueryDebounceTimer invalidate];
  [(IDSBatchIDQueryController *)self->_statusQueryController invalidate];
  v3.receiver = self;
  v3.super_class = HUAddPeopleViewController;
  [(HUAddPeopleViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v55[3] = *MEMORY[0x277D85DE8];
  v54.receiver = self;
  v54.super_class = HUAddPeopleViewController;
  [(HUAddPeopleViewController *)&v54 viewDidLoad];
  v3 = _HULocalizedStringWithDefaultValue(@"HUPeopleAddPeople", @"HUPeopleAddPeople", 1);
  [(HUAddPeopleViewController *)self setTitle:v3];

  v4 = objc_alloc_init(MEMORY[0x277CD6860]);
  [(HUAddPeopleViewController *)self setComposeView:v4];

  v5 = [MEMORY[0x277D75348] labelColor];
  v6 = [(HUAddPeopleViewController *)self composeView];
  [v6 setTypingTextColor:v5];

  v7 = _HULocalizedStringWithDefaultValue(@"HUPeopleRecipientToLabel", @"HUPeopleRecipientToLabel", 1);
  v8 = [(HUAddPeopleViewController *)self composeView];
  [v8 setLabel:v7];

  v9 = [MEMORY[0x277D75348] systemBackgroundColor];
  v10 = [(HUAddPeopleViewController *)self composeView];
  [v10 setBackgroundColor:v9];

  v11 = [(HUAddPeopleViewController *)self composeView];
  [v11 setSeparatorHidden:1];

  v12 = [(HUAddPeopleViewController *)self composeView];
  [v12 setDelegate:self];

  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v13 = [(HUAddPeopleViewController *)self composeView];
    [v13 setShowsAddButtonWhenExpanded:0];
  }

  v14 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(HUAddPeopleViewController *)self setSeparatorView:v14];

  v15 = [MEMORY[0x277D75348] systemLightGrayColor];
  v16 = [(HUAddPeopleViewController *)self separatorView];
  [v16 setBackgroundColor:v15];

  v17 = objc_alloc(MEMORY[0x277D75B40]);
  v18 = [v17 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(HUAddPeopleViewController *)self setTableView:v18];

  v19 = [(HUAddPeopleViewController *)self tableView];
  [v19 setEstimatedRowHeight:55.0];

  v20 = [(HUAddPeopleViewController *)self tableView];
  [v20 setSectionHeaderTopPadding:0.0];

  v21 = [(HUAddPeopleViewController *)self tableView];
  [v21 setDelegate:self];

  v22 = [(HUAddPeopleViewController *)self tableView];
  [v22 setDataSource:self];

  v23 = [(HUAddPeopleViewController *)self view];
  v24 = [(HUAddPeopleViewController *)self composeView];
  v55[0] = v24;
  v25 = [(HUAddPeopleViewController *)self separatorView];
  v55[1] = v25;
  v26 = [(HUAddPeopleViewController *)self tableView];
  v55[2] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
  [v23 naui_addAutoLayoutSubviews:v27];

  v28 = [MEMORY[0x277D75348] systemBackgroundColor];
  v29 = [(HUAddPeopleViewController *)self view];
  [v29 setBackgroundColor:v28];

  v30 = [(HUAddPeopleViewController *)self navigationController];
  v31 = [v30 viewControllers];
  v32 = [v31 objectAtIndexedSubscript:0];
  LODWORD(v26) = [v32 isEqual:self];

  if (v26)
  {
    v33 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed_];
    v34 = [(HUAddPeopleViewController *)self navigationItem];
    [v34 setLeftBarButtonItem:v33];

    v35 = [(HUAddPeopleViewController *)self navigationItem];
    v36 = [v35 leftBarButtonItem];
    [v36 setAccessibilityIdentifier:@"Home.Users.AddPeople.NavigationBar.CancelButton"];
  }

  else
  {
    v35 = [(HUAddPeopleViewController *)self navigationItem];
    [v35 setLeftBarButtonItem:0];
  }

  v37 = objc_alloc(MEMORY[0x277D751E0]);
  v38 = [(HUAddPeopleViewController *)self rightBarButtonTitle];
  v39 = [v37 initWithTitle:v38 style:2 target:self action:sel_sendButtonPressed_];
  v40 = [(HUAddPeopleViewController *)self navigationItem];
  [v40 setRightBarButtonItem:v39];

  v41 = [(HUAddPeopleViewController *)self navigationItem];
  v42 = [v41 rightBarButtonItem];
  [v42 setAccessibilityIdentifier:@"Home.Users.AddPeople.NavigationBar.NextDoneButton"];

  v43 = [(HUAddPeopleViewController *)self tableView];
  v44 = objc_opt_class();
  v45 = +[HUAddPeopleTableHeaderFooterView identifier];
  [v43 registerClass:v44 forHeaderFooterViewReuseIdentifier:v45];

  v46 = [(HUAddPeopleViewController *)self tableView];
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = NSStringFromClass(v48);
  [v46 registerClass:v47 forCellReuseIdentifier:v49];

  v50 = [(HUAddPeopleViewController *)self tableView];
  v51 = objc_opt_class();
  v52 = [MEMORY[0x277CD68B0] identifier];
  [v50 registerClass:v51 forCellReuseIdentifier:v52];

  [(HUAddPeopleViewController *)self updateStateDependentUI];
  v53 = [(HUAddPeopleViewController *)self view];
  [v53 setNeedsUpdateConstraints];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[HUAddPeopleViewController viewDidAppear:]";
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s)", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = HUAddPeopleViewController;
  [(HUAddPeopleViewController *)&v9 viewDidAppear:v3];
  v6 = [(HUAddPeopleViewController *)self composeView];
  [v6 becomeFirstResponder];

  v7 = [(HUAddPeopleViewController *)self view];
  v8 = [v7 tintColor];
  [(HUAddPeopleViewController *)self setEffectiveTintColor:v8];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[HUAddPeopleViewController viewWillDisappear:]";
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s)", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = HUAddPeopleViewController;
  [(HUAddPeopleViewController *)&v8 viewWillDisappear:v3];
  v6 = [(HUAddPeopleViewController *)self composeView];
  v7 = [v6 textView];
  [v7 resignFirstResponder];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(HUAddPeopleViewController *)self composeView];
  v5 = [v4 textView];
  [v5 resignFirstResponder];

  v6 = [(HUAddPeopleViewController *)self statusQueryDebounceTimer];
  [v6 invalidate];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(HUAddPeopleViewController *)self scheduleDelayedLookupVisibleRecipients];
  }
}

- (void)updateViewConstraints
{
  v3 = [(HUAddPeopleViewController *)self constraints];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(HUAddPeopleViewController *)self composeView];
    v6 = [v5 leadingAnchor];
    v7 = [(HUAddPeopleViewController *)self view];
    v8 = [v7 leadingAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];
    [v4 addObject:v9];

    v10 = [(HUAddPeopleViewController *)self composeView];
    v11 = [v10 trailingAnchor];
    v12 = [(HUAddPeopleViewController *)self view];
    v13 = [v12 trailingAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    [v4 addObject:v14];

    v15 = [(HUAddPeopleViewController *)self separatorView];
    v16 = [v15 leadingAnchor];
    v17 = [(HUAddPeopleViewController *)self view];
    v18 = [v17 leadingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    [v4 addObject:v19];

    v20 = [(HUAddPeopleViewController *)self separatorView];
    v21 = [v20 trailingAnchor];
    v22 = [(HUAddPeopleViewController *)self view];
    v23 = [v22 trailingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    [v4 addObject:v24];

    v25 = [(HUAddPeopleViewController *)self tableView];
    v26 = [v25 leadingAnchor];
    v27 = [(HUAddPeopleViewController *)self view];
    v28 = [v27 leadingAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    [v4 addObject:v29];

    v30 = [(HUAddPeopleViewController *)self tableView];
    v31 = [v30 trailingAnchor];
    v32 = [(HUAddPeopleViewController *)self view];
    v33 = [v32 trailingAnchor];
    v34 = [v31 constraintEqualToAnchor:v33];
    [v4 addObject:v34];

    v35 = [(HUAddPeopleViewController *)self composeView];
    v36 = [v35 topAnchor];
    v37 = [(HUAddPeopleViewController *)self view];
    v38 = [v37 safeAreaLayoutGuide];
    v39 = [v38 topAnchor];
    v40 = [v36 constraintEqualToAnchor:v39];
    [v4 addObject:v40];

    v41 = [(HUAddPeopleViewController *)self composeView];
    v42 = [v41 bottomAnchor];
    v43 = [(HUAddPeopleViewController *)self separatorView];
    v44 = [v43 topAnchor];
    v45 = [v42 constraintEqualToAnchor:v44];
    [v4 addObject:v45];

    v46 = [(HUAddPeopleViewController *)self composeView];
    v47 = [v46 heightAnchor];
    [MEMORY[0x277CD6860] preferredHeight];
    v48 = [v47 constraintEqualToConstant:?];
    [(HUAddPeopleViewController *)self setComposeViewBottomConstraint:v48];

    v49 = [(HUAddPeopleViewController *)self composeViewBottomConstraint];
    [v4 addObject:v49];

    v50 = [(HUAddPeopleViewController *)self separatorView];
    v51 = [v50 bottomAnchor];
    v52 = [(HUAddPeopleViewController *)self tableView];
    v53 = [v52 topAnchor];
    v54 = [v51 constraintEqualToAnchor:v53];
    [v4 addObject:v54];

    v55 = [(HUAddPeopleViewController *)self separatorView];
    v56 = [v55 heightAnchor];
    v57 = [MEMORY[0x277D759A0] mainScreen];
    [v57 scale];
    v59 = [v56 constraintEqualToConstant:1.0 / v58];
    [v4 addObject:v59];

    v60 = [(HUAddPeopleViewController *)self tableView];
    v61 = [v60 bottomAnchor];
    v62 = [(HUAddPeopleViewController *)self view];
    v63 = [v62 bottomAnchor];
    v64 = [v61 constraintEqualToAnchor:v63];
    [v4 addObject:v64];

    [(HUAddPeopleViewController *)self setConstraints:v4];
    v65 = MEMORY[0x277CCAAD0];
    v66 = [(HUAddPeopleViewController *)self constraints];
    [v65 activateConstraints:v66];
  }

  v67.receiver = self;
  v67.super_class = HUAddPeopleViewController;
  [(HUAddPeopleViewController *)&v67 updateViewConstraints];
}

- (void)cancelButtonPressed:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[HUAddPeopleViewController cancelButtonPressed:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) User selected 'cancel' button %@", &v10, 0x16u);
  }

  v6 = [(HUAddPeopleViewController *)self presentationDelegate];
  v7 = [v6 finishPresentation:self animated:1];

  v8 = [(HUAddPeopleViewController *)self delegate];

  if (v8)
  {
    v9 = [(HUAddPeopleViewController *)self delegate];
    [v9 addPeopleViewControllerDidCancel:self];
  }
}

- (void)sendButtonPressed:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[HUAddPeopleViewController sendButtonPressed:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) User selected 'send' button %@", &v7, 0x16u);
  }

  if ([(HUAddPeopleViewController *)self state])
  {
    NSLog(&cfstr_SendButtonNotD.isa);
  }

  [(HUAddPeopleViewController *)self setUnatomizedAddress:0];
  v6 = [(HUAddPeopleViewController *)self composeView];
  [v6 finishEnteringRecipient];

  [(HUAddPeopleViewController *)self sendInvites];
}

- (void)setState:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_state != a3)
  {
    self->_state = a3;
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"invited";
      if (a3 == 1)
      {
        v6 = @"send requested";
      }

      if (!a3)
      {
        v6 = @"composing";
      }

      v7 = 136315394;
      v8 = "[HUAddPeopleViewController setState:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) State is now %@", &v7, 0x16u);
    }

    [(HUAddPeopleViewController *)self updateStateDependentUI];
  }
}

- (MFContactsSearchManager)searchManager
{
  if (!self->_searchManager && ![(HUAddPeopleViewController *)self addressBookAccessDenied])
  {
    if (([MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] - 1) <= 1)
    {
      [(HUAddPeopleViewController *)self setAddressBookAccessDenied:1];
    }

    if ([(HUAddPeopleViewController *)self addressBookAccessDenied])
    {
      v3 = 0;
      goto LABEL_9;
    }

    v4 = [objc_alloc(MEMORY[0x277CD6868]) initWithAutocompleteSearchType:0];
    searchManager = self->_searchManager;
    self->_searchManager = v4;
  }

  v3 = self->_searchManager;
LABEL_9:

  return v3;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if ([(HUAddPeopleViewController *)self showingAutoCompleteResults])
  {
    return 1;
  }

  v5 = [(HUAddPeopleViewController *)self familyMembersNotInHome];
  v4 = [v5 count] != 0;

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(HUAddPeopleViewController *)self showingAutoCompleteResults:a3])
  {
    [(HUAddPeopleViewController *)self autoCompleteResults];
  }

  else
  {
    [(HUAddPeopleViewController *)self familyMembersNotInHome];
  }
  v5 = ;
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(HUAddPeopleViewController *)self showingAutoCompleteResults])
  {
    v8 = [MEMORY[0x277CD68B0] identifier];
    v9 = [v7 dequeueReusableCellWithIdentifier:v8];

    v10 = [(HUAddPeopleViewController *)self autoCompleteResults];
    v11 = [v6 row];

    v12 = [v10 objectAtIndexedSubscript:v11];
    [v9 setRecipient:v12];

    [v9 setShouldDimIrrelevantInformation:0];
    v13 = [v9 recipient];
    v14 = [(HUAddPeopleViewController *)self tintColorForRecipient:v13];
    [v9 setTintColor:v14 animated:0];

    v15 = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:v15];
  }

  else
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v9 = [v7 dequeueReusableCellWithIdentifier:v17];

    v18 = [(HUAddPeopleViewController *)self familyMembersNotInHome];
    v19 = [v6 row];

    v20 = [v18 objectAtIndexedSubscript:v19];

    v21 = [(HUAddPeopleViewController *)self contactsController];
    v22 = [v20 dsid];
    v23 = [v21 contactForFamilyMemberWithDsid:v22];

    v24 = MEMORY[0x277CCACA8];
    v25 = [v20 firstName];
    v26 = [v20 lastName];
    v15 = [v24 hf_formattedPersonNameForFirstName:v25 lastName:v26];

    v27 = [v20 appleID];
    LODWORD(v26) = [v27 hf_isEmail];

    if (v26)
    {
      v28 = [v20 appleID];
    }

    else
    {
      v28 = 0;
    }

    [v9 setTitleText:v15];
    [v9 setDescriptionText:v28];
    [v9 setContact:v23];
    v29 = [v23 imageData];

    if (v29)
    {
      v30 = MEMORY[0x277D755B8];
      v31 = [v23 imageData];
      v32 = [v30 imageWithData:v31];
      [v9 setPhoto:v32];
    }
  }

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  if (![(HUAddPeopleViewController *)self showingAutoCompleteResults:a3])
  {
    return *MEMORY[0x277D76F30];
  }

  v4 = MEMORY[0x277CD68B0];

  [v4 height];
  return result;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if ([(HUAddPeopleViewController *)self showingAutoCompleteResults:a3])
  {
    return 0.0;
  }

  +[HUAddPeopleTableHeaderFooterView preferredHeight];
  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v43[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  if (![(HUAddPeopleViewController *)self showingAutoCompleteResults])
  {
    v20 = [(HUAddPeopleViewController *)self familyMembersNotInHome];
    v21 = [v6 row];

    v22 = [v20 objectAtIndexedSubscript:v21];

    v23 = [(HUAddPeopleViewController *)self contactsController];
    v24 = [v22 dsid];
    v25 = [v23 contactForFamilyMemberWithDsid:v24];

    v26 = [v25 emailAddresses];
    v27 = [v26 count];

    if (v27)
    {
      v28 = [v25 emailAddresses];
      v29 = [v28 firstObject];
      v30 = [v29 value];
      v31 = 0;
    }

    else
    {
      v28 = [v25 phoneNumbers];
      v29 = [v28 firstObject];
      v32 = [v29 value];
      v30 = [v32 stringValue];

      v31 = 1;
    }

    v9 = [objc_alloc(MEMORY[0x277CD6858]) initWithContact:v25 address:v30 kind:v31];
    goto LABEL_10;
  }

  v7 = [(HUAddPeopleViewController *)self autoCompleteResults];
  v8 = [v6 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  v10 = [(HUAddPeopleViewController *)self contactsController];
  v11 = [(HUAddPeopleViewController *)self IDSDestinationForRecipient:v9];
  v12 = [v10 statusForDestination:v11];

  if (v12 != 4)
  {
LABEL_10:
    v33 = [(HUAddPeopleViewController *)self composeView];
    [v33 addRecipient:v9];

    v34 = [(HUAddPeopleViewController *)self composeView];
    [v34 clearText];

    goto LABEL_13;
  }

  v13 = *MEMORY[0x277D13860];
  v42 = *MEMORY[0x277D13860];
  v14 = [v9 address];
  v43[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];

  if (self->_adaptiveTemperatureEnabled && (-[HUAddPeopleViewController contactsController](self, "contactsController"), v16 = objc_claimAutoreleasedReturnValue(), -[HUAddPeopleViewController IDSDestinationForRecipient:](self, "IDSDestinationForRecipient:", v9), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v16 hasAdaptiveTemperatureIDSCapabilityForDestination:v17], v17, v16, (v18 & 1) == 0))
  {
    v40 = v13;
    v35 = [v9 contact];
    v36 = [v35 givenName];
    v41 = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];

    v19 = 105;
    v15 = v37;
  }

  else
  {
    v19 = 40;
  }

  v38 = [MEMORY[0x277CCA9B8] hf_errorWithCode:v19];
  v39 = [MEMORY[0x277D14640] sharedHandler];
  [v39 handleError:v38 operationType:*MEMORY[0x277D13BF0] options:v15 retryBlock:0 cancelBlock:0];

LABEL_13:
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v14 = a4;
  v7 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:*MEMORY[0x277D743F8]];
  v8 = [v14 textLabel];
  [v8 setFont:v7];

  v9 = [(HUAddPeopleViewController *)self familyMembersNotInHome];
  v10 = [v9 count];
  if (a5 || !v10)
  {
    v11 = @"HUPeopleTableSectionContacts";
  }

  else
  {
    v11 = @"HUPeopleTableSectionFamily";
  }

  v12 = _HULocalizedStringWithDefaultValue(v11, v11, 1);
  v13 = [v14 textLabel];
  [v13 setText:v12];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(HUAddPeopleViewController *)self tableView:v6 numberOfRowsInSection:a4])
  {
    v7 = +[HUAddPeopleTableHeaderFooterView identifier];
    v8 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v7];

    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    v10 = [v8 textLabel];
    [v10 setFont:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)composeRecipientView:(id)a3 textDidChange:(id)a4
{
  v15 = a4;
  v5 = [(HUAddPeopleViewController *)self statusQueryDebounceTimer];
  [v5 invalidate];

  if ([v15 length])
  {
    v6 = [MEMORY[0x277CBEB18] array];
    [(HUAddPeopleViewController *)self setAdditionalAutoCompleteResults:v6];

    v7 = [(HUAddPeopleViewController *)self lastSearchID];

    if (v7)
    {
      v8 = [(HUAddPeopleViewController *)self searchManager];
      v9 = [(HUAddPeopleViewController *)self lastSearchID];
      [v8 cancelTaskWithID:v9];
    }

    v10 = [(HUAddPeopleViewController *)self searchManager];
    v11 = [v10 searchForText:v15 withAutocompleteFetchContext:0 consumer:self];
    [(HUAddPeopleViewController *)self setLastSearchID:v11];
  }

  else
  {
    v12 = [(HUAddPeopleViewController *)self lastSearchID];

    if (v12)
    {
      v13 = [(HUAddPeopleViewController *)self searchManager];
      v14 = [(HUAddPeopleViewController *)self lastSearchID];
      [v13 cancelTaskWithID:v14];
    }

    [(HUAddPeopleViewController *)self setShowingAutoCompleteResults:0];
    v10 = [(HUAddPeopleViewController *)self tableView];
    [v10 reloadData];
  }

  [(HUAddPeopleViewController *)self updateStateDependentUI];
}

- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4
{
  v5 = a4;
  [(HUAddPeopleViewController *)self updateStateDependentUI];
  v6 = [(HUAddPeopleViewController *)self tintColorForRecipient:v5];
  v7 = [(HUAddPeopleViewController *)self composeView];
  v8 = [v7 atomViewForRecipient:v5];

  [v8 setTintColor:v6];
  v9 = [(HUAddPeopleViewController *)self statusQueryDebounceTimer];
  [v9 invalidate];

  [(HUAddPeopleViewController *)self lookupVisibleRecipients];
}

- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4
{
  [a3 removeRecipient:a4];

  [(HUAddPeopleViewController *)self updateStateDependentUI];
}

- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CCA900];
  v8 = a4;
  v9 = [v7 whitespaceCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];

  if (![v10 length])
  {
    goto LABEL_4;
  }

  v11 = [(HUAddPeopleViewController *)self composeRecipientForAddress:v10];
  if (v11)
  {
    v12 = v11;
    v13 = [(HUAddPeopleViewController *)self composeView];
    [v13 addRecipient:v12];

LABEL_4:
    [(HUAddPeopleViewController *)self setUnatomizedAddress:0];
    [v6 clearText];
    goto LABEL_8;
  }

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "Found unatomized address %@", &v15, 0xCu);
  }

  [(HUAddPeopleViewController *)self setUnatomizedAddress:v10];
LABEL_8:
}

- (void)composeRecipientView:(id)a3 didChangeSize:(CGSize)a4
{
  height = a4.height;
  v5 = [(HUAddPeopleViewController *)self composeViewBottomConstraint:a3];
  [v5 setConstant:height];
}

- (void)composeRecipientViewRequestAddRecipient:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBDC18]);
  v5 = _HULocalizedStringWithDefaultValue(@"HUPeopleAddPeoplePickerPrompt", @"HUPeopleAddPeoplePickerPrompt", 1);
  [v4 setPrompt:v5];

  [v4 setDelegate:self];
  [v4 setAllowsCancel:1];
  [v4 setAllowsEditing:0];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"emailAddresses.@count > 0"];
  [v4 setPredicateForEnablingContact:v6];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"emailAddresses.@count == 1"];
  [v4 setPredicateForSelectionOfContact:v7];

  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"property == 'emailAddresses'"];
  [v4 setPredicateForSelectionOfProperty:v8];

  v9 = *MEMORY[0x277CBD098];
  v12[0] = *MEMORY[0x277CBCFC0];
  v12[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  [v4 setDisplayedPropertyKeys:v10];

  [v4 setModalPresentationStyle:2];
  v11 = [(HUAddPeopleViewController *)self navigationController];
  [v11 presentViewController:v4 animated:1 completion:0];
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)a3
{
  v3 = [(HUAddPeopleViewController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)contactController:(id)a3 didFinishDownloadingFamilyMemberAvatar:(id)a4
{
  v16 = a4;
  if (![(HUAddPeopleViewController *)self showingAutoCompleteResults])
  {
    v5 = [(HUAddPeopleViewController *)self familyMembersNotInHome];
    v6 = [v5 indexOfObject:v16];

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(HUAddPeopleViewController *)self tableView];
      v8 = [MEMORY[0x277CCAA70] indexPathForRow:v6 inSection:0];
      v9 = [v7 cellForRowAtIndexPath:v8];

      v10 = [(HUAddPeopleViewController *)self contactsController];
      v11 = [v16 dsid];
      v12 = [v10 contactForFamilyMemberWithDsid:v11];

      v13 = MEMORY[0x277D755B8];
      v14 = [v12 imageData];
      v15 = [v13 imageWithData:v14];
      [v9 setPhoto:v15];
    }
  }
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = [(HUAddPeopleViewController *)self composeView];
  [(HUAddPeopleViewController *)self composeRecipientViewDidFinishPickingRecipient:v4];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 emailAddresses];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v5 emailAddresses];
    v9 = [v8 firstObject];
    v10 = [v9 value];
    v11 = 0;
  }

  else
  {
    v8 = [v5 phoneNumbers];
    v9 = [v8 firstObject];
    v12 = [v9 value];
    v10 = [v12 stringValue];

    v11 = 1;
  }

  v13 = [objc_alloc(MEMORY[0x277CD6858]) initWithContact:v5 address:v10 kind:v11];
  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v13;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "Adding new recipient %@ from contact %@", &v17, 0x16u);
  }

  v15 = [(HUAddPeopleViewController *)self composeView];
  [v15 addRecipient:v13];

  v16 = [(HUAddPeopleViewController *)self composeView];
  [(HUAddPeopleViewController *)self composeRecipientViewDidFinishPickingRecipient:v16];
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 contact];
  v7 = [v5 key];
  v8 = [v7 isEqualToString:*MEMORY[0x277CBCFC0]];

  if (v8)
  {
    v9 = [v6 emailAddresses];
    v10 = [v9 firstObject];
    v11 = [v10 value];
    v12 = 0;
LABEL_5:

    goto LABEL_7;
  }

  v13 = [v5 key];
  v14 = [v13 isEqualToString:*MEMORY[0x277CBD098]];

  if (v14)
  {
    v9 = [v6 phoneNumbers];
    v10 = [v9 firstObject];
    v15 = [v10 value];
    v11 = [v15 stringValue];

    v12 = 1;
    goto LABEL_5;
  }

  v11 = 0;
  v12 = 5;
LABEL_7:
  v16 = [objc_alloc(MEMORY[0x277CD6858]) initWithContact:v6 address:v11 kind:v12];
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = v16;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Adding new recipient %@ from contact %@", &v20, 0x16u);
  }

  v18 = [(HUAddPeopleViewController *)self composeView];
  [v18 addRecipient:v16];

  v19 = [(HUAddPeopleViewController *)self composeView];
  [(HUAddPeopleViewController *)self composeRecipientViewDidFinishPickingRecipient:v19];
}

- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUAddPeopleViewController *)self lastSearchID];
  v9 = [v7 isEqualToNumber:v8];

  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__HUAddPeopleViewController_consumeAutocompleteSearchResults_taskID___block_invoke;
    v12[3] = &unk_277DBD158;
    v12[4] = self;
    v10 = [v6 na_filter:v12];
    v11 = [(HUAddPeopleViewController *)self additionalAutoCompleteResults];
    [v11 addObjectsFromArray:v10];

    [(HUAddPeopleViewController *)self setShowingAutoCompleteResults:1];
  }
}

uint64_t __69__HUAddPeopleViewController_consumeAutocompleteSearchResults_taskID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isGroup])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 address];
    v6 = [*(a1 + 32) home];
    v7 = [v6 currentUser];
    v8 = [v7 userID];
    v4 = [v5 isEqualToString:v8] ^ 1;
  }

  return v4;
}

- (void)finishedSearchingForAutocompleteResults
{
  if (-[HUAddPeopleViewController showingAutoCompleteResults](self, "showingAutoCompleteResults") && (-[HUAddPeopleViewController additionalAutoCompleteResults](self, "additionalAutoCompleteResults"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    v5 = [(HUAddPeopleViewController *)self additionalAutoCompleteResults];
    v6 = [v5 copy];
    [(HUAddPeopleViewController *)self setAutoCompleteResults:v6];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  [(HUAddPeopleViewController *)self setShowingAutoCompleteResults:v7];
  v8 = [(HUAddPeopleViewController *)self tableView];
  [v8 reloadData];

  [(HUAddPeopleViewController *)self scheduleDelayedLookupVisibleRecipients];
}

- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412802;
    v23 = self;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: %@ Received IDS update for destinations: %@", buf, 0x20u);
  }

  adaptiveTemperatureEnabled = self->_adaptiveTemperatureEnabled;
  if ([(HUAddPeopleViewController *)self _shouldCheckIDSCapabilities]|| adaptiveTemperatureEnabled)
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412546;
      v23 = self;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@: %@ Checking IDS capabilities...", buf, 0x16u);
    }

    v14 = [MEMORY[0x277D18728] sharedInstance];
    v15 = [v8 allKeys];
    v16 = [(HUAddPeopleViewController *)self _getIDSServiceName];
    v17 = [MEMORY[0x277D189C8] refreshIDInfo];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __92__HUAddPeopleViewController_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke;
    v18[3] = &unk_277DBD1C8;
    v18[4] = self;
    v20 = a2;
    v19 = v8;
    v21 = adaptiveTemperatureEnabled;
    [v14 idInfoForDestinations:v15 service:v16 infoTypes:1 options:v17 listenerID:@"HomeUI" queue:MEMORY[0x277D85CD0] completionBlock:v18];
  }

  else
  {
    [(HUAddPeopleViewController *)self handleStatusQueryResults:v8];
  }
}

void __92__HUAddPeopleViewController_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Failed to get updated IDS status due to error: %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412802;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      v41 = v5;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: %@ Received IDS fetch result for current remote devices: %@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v41 = __Block_byref_object_copy__13;
    v42 = __Block_byref_object_dispose__13;
    v43 = [*(a1 + 40) mutableCopy];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__13;
    v32 = __Block_byref_object_dispose__13;
    v33 = objc_opt_new();
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__13;
    v26 = __Block_byref_object_dispose__13;
    v27 = objc_opt_new();
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v12 = [v5 na_reduceWithInitialValue:v11 reducer:&__block_literal_global_244];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __92__HUAddPeopleViewController_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke_2;
    v20[3] = &unk_277DBD1A0;
    v20[4] = *(a1 + 32);
    v20[5] = &v28;
    v13 = *(a1 + 48);
    v21 = *(a1 + 56);
    v20[6] = buf;
    v20[7] = &v22;
    v20[8] = v13;
    [v12 enumerateKeysAndObjectsUsingBlock:v20];
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = NSStringFromSelector(*(a1 + 48));
      v17 = *(*&buf[8] + 40);
      *v34 = 138412802;
      v35 = v15;
      v36 = 2112;
      v37 = v16;
      v38 = 2112;
      v39 = v17;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@: %@ Finished IDS capability checks. Updated destinations to status mapping : %@", v34, 0x20u);
    }

    v18 = [*(a1 + 32) contactsController];
    [v18 restrictedGuestIDSCapabilityUpdated:v29[5]];

    v19 = [*(a1 + 32) contactsController];
    [v19 adaptiveTemperatureIDSCapabilityUpdated:v23[5]];

    [*(a1 + 32) handleStatusQueryResults:*(*&buf[8] + 40)];
    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(buf, 8);
  }
}

id __92__HUAddPeopleViewController_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke_241(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = [a3 endpoints];
  [v6 setObject:v8 forKeyedSubscript:v7];

  return v6;
}

void __92__HUAddPeopleViewController_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) _shouldCheckRestrictedGuestIDSCapability])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v7 forKeyedSubscript:v5];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      v12 = *MEMORY[0x277D188F8];
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [*(*(&v37 + 1) + 8 * v13) capabilities];
          v15 = [v14 valueForCapability:v12];

          if (v15 == 1)
          {
            v19 = [MEMORY[0x277CCABB0] numberWithBool:1];
            [*(*(*(a1 + 40) + 8) + 40) setObject:v19 forKeyedSubscript:v5];

            goto LABEL_14;
          }

          ++v13;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v37 objects:v48 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v43 = v17;
      v44 = 2112;
      v45 = v18;
      v46 = 2112;
      v47 = v5;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@: %@ RG IDS capability check not passed. Updating status to INVALID for destination : %@", buf, 0x20u);
    }

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
    [*(*(*(a1 + 48) + 8) + 40) setObject:v8 forKeyedSubscript:v5];
LABEL_14:
  }

  if (*(a1 + 72) == 1)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [*(*(*(a1 + 56) + 8) + 40) setObject:v20 forKeyedSubscript:v5];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = v6;
    v22 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v34;
      v25 = *MEMORY[0x277D18860];
      while (2)
      {
        v26 = 0;
        do
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v27 = [*(*(&v33 + 1) + 8 * v26) capabilities];
          v28 = [v27 valueForCapability:v25];

          if (v28 == 1)
          {
            v32 = [MEMORY[0x277CCABB0] numberWithBool:1];
            [*(*(*(a1 + 56) + 8) + 40) setObject:v32 forKeyedSubscript:v5];

            goto LABEL_28;
          }

          ++v26;
        }

        while (v23 != v26);
        v23 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v29 = HFLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 32);
      v31 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v43 = v30;
      v44 = 2112;
      v45 = v31;
      v46 = 2112;
      v47 = v5;
      _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, "%@: %@ Adaptive Temperature IDS capability check not passed. Updating status to INVALID for destination : %@", buf, 0x20u);
    }

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
    [*(*(*(a1 + 48) + 8) + 40) setObject:v21 forKeyedSubscript:v5];
LABEL_28:
  }
}

- (void)handleStatusQueryResults:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412802;
    v35 = self;
    v36 = 2112;
    v37 = v7;
    v38 = 2112;
    v39 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Will handle status query results for destinations: %@", buf, 0x20u);
  }

  v8 = [(HUAddPeopleViewController *)self contactsController];
  v27 = v5;
  [v8 entriesUpdated:v5];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [(HUAddPeopleViewController *)self composeView];
  v10 = [v9 recipients];

  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [(HUAddPeopleViewController *)self IDSDestinationForRecipient:v15];
        v17 = [(HUAddPeopleViewController *)self contactsController];
        v18 = [v17 statusForDestination:v16];

        v19 = HFLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [MEMORY[0x277D145A8] stringForRecipientStatus:v18];
          *buf = 138412546;
          v35 = v16;
          v36 = 2112;
          v37 = v20;
          _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "Status of destination %@ is %@", buf, 0x16u);
        }

        v21 = [(HUAddPeopleViewController *)self tintColorForRecipient:v15];
        v22 = [(HUAddPeopleViewController *)self composeView];
        v23 = [v22 atomViewForRecipient:v15];
        [v23 setTintColor:v21];
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  if ([(HUAddPeopleViewController *)self showingAutoCompleteResults])
  {
    v24 = HFLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "Updating search results...", buf, 2u);
    }

    v25 = [(HUAddPeopleViewController *)self tableView];
    v26 = [v25 indexPathsForVisibleRows];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __54__HUAddPeopleViewController_handleStatusQueryResults___block_invoke;
    v28[3] = &unk_277DBD1F0;
    v28[4] = self;
    [v26 enumerateObjectsUsingBlock:v28];
  }

  if ([(HUAddPeopleViewController *)self state]== 1)
  {
    [(HUAddPeopleViewController *)self sendInvites];
  }
}

void __54__HUAddPeopleViewController_handleStatusQueryResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 tableView];
  v10 = [v5 cellForRowAtIndexPath:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v10 recipient];

    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = [v10 recipient];
      v9 = [v7 tintColorForRecipient:v8];
      [v10 setTintColor:v9 animated:1];
    }
  }
}

- (id)tintColorForRecipient:(id)a3
{
  v4 = a3;
  v5 = [(HUAddPeopleViewController *)self contactsController];
  v6 = [(HUAddPeopleViewController *)self IDSDestinationForRecipient:v4];

  v7 = [v5 statusForDestination:v6];
  if (v7 == 3)
  {
    [(HUAddPeopleViewController *)self effectiveTintColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v8 = ;

  return v8;
}

- (void)updateStateDependentUI
{
  v3 = [(HUAddPeopleViewController *)self state];
  v4 = [(HUAddPeopleViewController *)self spinner];
  v5 = v4;
  if (!v3)
  {

    if (v5)
    {
      v18 = [(HUAddPeopleViewController *)self spinner];
      [v18 stopAnimating];

      [(HUAddPeopleViewController *)self setSpinner:0];
      v19 = objc_alloc(MEMORY[0x277D751E0]);
      v20 = [(HUAddPeopleViewController *)self rightBarButtonTitle];
      v21 = [v19 initWithTitle:v20 style:2 target:self action:sel_sendButtonPressed_];
      v22 = [(HUAddPeopleViewController *)self navigationItem];
      [v22 setRightBarButtonItem:v21];
    }

    v23 = [(HUAddPeopleViewController *)self composeView];
    v24 = [v23 textView];
    v25 = [v24 text];
    v26 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v27 = [v25 stringByRemovingCharactersFromSet:v26];
    v28 = [v27 length] != 0;
    v29 = [(HUAddPeopleViewController *)self navigationItem];
    v30 = [v29 rightBarButtonItem];
    [v30 setEnabled:v28];

    v31 = [(HUAddPeopleViewController *)self navigationItem];
    v32 = [v31 leftBarButtonItem];
    [v32 setEnabled:1];

    v33 = [(HUAddPeopleViewController *)self tableView];
    [v33 setAllowsSelection:1];

    v34 = [(HUAddPeopleViewController *)self composeView];
    v35 = [v34 addButton];
    [v35 setEnabled:1];

    v36 = [(HUAddPeopleViewController *)self composeView];
    [v36 setUserInteractionEnabled:1];
    goto LABEL_9;
  }

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [(HUAddPeopleViewController *)self setSpinner:v6];

    v7 = objc_alloc(MEMORY[0x277D751E0]);
    v8 = [(HUAddPeopleViewController *)self spinner];
    v9 = [v7 initWithCustomView:v8];
    v10 = [(HUAddPeopleViewController *)self navigationItem];
    [v10 setRightBarButtonItem:v9];

    v11 = [(HUAddPeopleViewController *)self spinner];
    [v11 startAnimating];
  }

  v12 = [(HUAddPeopleViewController *)self tableView];
  [v12 setAllowsSelection:0];

  v13 = [(HUAddPeopleViewController *)self composeView];
  v14 = [v13 addButton];
  [v14 setEnabled:0];

  v15 = [(HUAddPeopleViewController *)self composeView];
  [v15 setUserInteractionEnabled:0];

  v16 = [(HUAddPeopleViewController *)self composeView];
  [v16 resignFirstResponder];

  if ([(HUAddPeopleViewController *)self state]>= 2)
  {
    v36 = [(HUAddPeopleViewController *)self navigationItem];
    v17 = [v36 leftBarButtonItem];
    [v17 setEnabled:0];

LABEL_9:
  }
}

- (id)rightBarButtonTitle
{
  if ([(HUAddPeopleViewController *)self viewContext])
  {
    v2 = @"HUAddRestrictedGuest_NextButton";
  }

  else
  {
    v2 = @"HUPeopleSendInvite";
  }

  v3 = _HULocalizedStringWithDefaultValue(v2, v2, 1);

  return v3;
}

- (id)requiredKeyDescriptors
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDBE8] descriptorForRequiredKeysWithThreeDTouchEnabled:1];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (id)IDSDestinationForRecipient:(id)a3
{
  v4 = a3;
  v5 = [v4 uncommentedAddress];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 address];
  }

  v8 = v7;

  v9 = IMStripFormattingFromAddress();
  if ([v4 kind] == 1)
  {
    v10 = [(HUAddPeopleViewController *)self _sanitizedIDSCopyIDForPhoneNumber:v9];
  }

  else
  {
    if ([v4 kind])
    {
      goto LABEL_9;
    }

    v10 = MEMORY[0x20F31EA80](v9);
  }

  v11 = v10;

  v9 = v11;
LABEL_9:

  return v9;
}

- (id)_sanitizedIDSCopyIDForPhoneNumber:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 containsString:@"+"])
  {
    v4 = IDSCopyIDForPhoneNumber();
  }

  else
  {
    v5 = [MEMORY[0x277CBEAF8] currentLocale];
    v6 = [v5 regionCode];

    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Phone number %@ does not include country code, looking at current locale to add one: %@", &v9, 0x16u);
    }

    v4 = MEMORY[0x20F31EAA0](v3, v6, 0);
  }

  return v4;
}

- (id)composeRecipientForAddress:(id)a3
{
  v4 = a3;
  v5 = [(HUAddPeopleViewController *)self requiredKeyDescriptors];
  if (![v4 hf_isPhoneNumber])
  {
    if (![v4 hf_isEmail])
    {
      goto LABEL_7;
    }

    v6 = [MEMORY[0x277D145A8] contactForEmailAddress:v4 keyDescriptors:v5];
    v7 = 0;
    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_6:
    v8 = [objc_alloc(MEMORY[0x277CD6858]) initWithContact:v6 address:v4 kind:v7];

    goto LABEL_8;
  }

  v6 = [MEMORY[0x277D145A8] contactForPhoneNumber:v4 keyDescriptors:v5];
  v7 = 1;
  if (v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  v8 = 0;
LABEL_8:

  return v8;
}

- (void)scheduleDelayedLookupVisibleRecipients
{
  v3 = [(HUAddPeopleViewController *)self statusQueryDebounceTimer];
  [v3 invalidate];

  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_lookupVisibleRecipients selector:0 userInfo:0 repeats:0.5];
  [(HUAddPeopleViewController *)self setStatusQueryDebounceTimer:v4];
}

- (void)lookupVisibleRecipients
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [(HUAddPeopleViewController *)self composeView];
  v5 = [v4 recipients];

  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(HUAddPeopleViewController *)self IDSDestinationForRecipient:*(*(&v30 + 1) + 8 * v9)];
        if (v10)
        {
          v11 = [(HUAddPeopleViewController *)self contactsController];
          v12 = [v11 statusForDestination:v10];

          if (!v12)
          {
            [v3 na_safeAddObject:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  if ([(HUAddPeopleViewController *)self showingAutoCompleteResults])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = [(HUAddPeopleViewController *)self tableView];
    v14 = [v13 indexPathsForVisibleRows];

    v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        v18 = 0;
        do
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * v18);
          v20 = [(HUAddPeopleViewController *)self autoCompleteResults];
          v21 = [v20 objectAtIndexedSubscript:{objc_msgSend(v19, "row")}];

          v22 = [(HUAddPeopleViewController *)self IDSDestinationForRecipient:v21];
          if (v22)
          {
            v23 = [(HUAddPeopleViewController *)self contactsController];
            v24 = [v23 statusForDestination:v22];

            if (!v24)
            {
              [v3 na_safeAddObject:v22];
            }
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v16);
    }
  }

  if ([v3 count])
  {
    v25 = [v3 allObjects];
    [(HUAddPeopleViewController *)self lookupIDSDestinations:v25];
  }
}

- (void)lookupIDSDestinations:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUAddPeopleViewController *)self statusQueryController];

  if (v5)
  {
    v6 = [(HUAddPeopleViewController *)self statusQueryController];
    [v6 invalidate];
  }

  v7 = [(HUAddPeopleViewController *)self contactsController];
  [v7 markDestinationsPending:v4];

  v8 = [(HUAddPeopleViewController *)self _getIDSServiceName];
  v9 = [(HUAddPeopleViewController *)self contactsController];
  v10 = [v9 pendingDestinations];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Performing IDS lookup with service name %@ for destination(s): %@. allPendingDestinations = %@", &v15, 0x20u);
  }

  v12 = objc_alloc(MEMORY[0x277D186D8]);
  v13 = [v12 initWithService:v8 delegate:self queue:MEMORY[0x277D85CD0]];
  [(HUAddPeopleViewController *)self setStatusQueryController:v13];

  v14 = [(HUAddPeopleViewController *)self statusQueryController];
  [v14 setDestinations:v10];
}

- (id)recipientsWithStatusPassingTest:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(HUAddPeopleViewController *)self composeView];
  v6 = [v5 recipients];

  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(HUAddPeopleViewController *)self contactsController];
        v13 = [(HUAddPeopleViewController *)self IDSDestinationForRecipient:v11];
        v14 = [v12 statusForDestination:v13];

        if (v4[2](v4, v14))
        {
          [v18 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  if ([v18 count])
  {
    v15 = v18;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

- (void)sendInvites
{
  v70 = *MEMORY[0x277D85DE8];
  [(HUAddPeopleViewController *)self setState:1];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HUAddPeopleViewController *)self composeView];
    v5 = [v4 recipients];
    *buf = 138412290;
    v69 = v5;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to send invitation(s) to recipients: %@", buf, 0xCu);
  }

  v6 = [(HUAddPeopleViewController *)self recipientsWithStatusPassingTest:&__block_literal_global_269_0];
  v7 = [(HUAddPeopleViewController *)self composeView];
  v8 = [v7 recipients];
  v9 = [v8 count] == 0;

  if (v9)
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "Failing send due to invalid recipients. ComposeView's recipients count is 0", buf, 2u);
    }

    v13 = [MEMORY[0x277CCA9B8] hf_errorWithCode:40];
    v14 = [MEMORY[0x277D14640] sharedHandler];
    [v14 handleError:v13 operationType:*MEMORY[0x277D13BF8] options:0 retryBlock:0 cancelBlock:0];

    [(HUAddPeopleViewController *)self setState:0];
  }

  else if ([v6 count])
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v69 = v6;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "Failing send due to invalid recipient(s): %@", buf, 0xCu);
    }

    if (-[HUAddPeopleViewController _shouldCheckRestrictedGuestIDSCapability](self, "_shouldCheckRestrictedGuestIDSCapability") && (v61[0] = MEMORY[0x277D85DD0], v61[1] = 3221225472, v61[2] = __40__HUAddPeopleViewController_sendInvites__block_invoke_270, v61[3] = &unk_277DBD158, v61[4] = self, ([v6 na_any:v61] & 1) != 0))
    {
      v11 = 84;
    }

    else if (self->_adaptiveTemperatureEnabled)
    {
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __40__HUAddPeopleViewController_sendInvites__block_invoke_2;
      v60[3] = &unk_277DBD158;
      v60[4] = self;
      if ([v6 na_any:v60])
      {
        v11 = 105;
      }

      else
      {
        v11 = 40;
      }
    }

    else
    {
      v11 = 40;
    }

    v13 = [MEMORY[0x277CCA9B8] hf_errorWithCode:v11];
    v20 = *MEMORY[0x277D13860];
    v66 = *MEMORY[0x277D13860];
    v21 = [v6 firstObject];
    v22 = [v21 address];
    v67 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];

    if (v11 == 105)
    {
      v64 = v20;
      v24 = [v6 firstObject];
      v25 = [v24 contact];
      v26 = [v25 givenName];
      v65 = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];

      v23 = v27;
    }

    v28 = [MEMORY[0x277D14640] sharedHandler];
    [v28 handleError:v13 operationType:*MEMORY[0x277D13BF0] options:v23 retryBlock:0 cancelBlock:0];

    [(HUAddPeopleViewController *)self setState:0];
  }

  else
  {
    v15 = [(HUAddPeopleViewController *)self unatomizedAddress];

    if (v15)
    {
      v16 = HFLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v46 = [(HUAddPeopleViewController *)self unatomizedAddress];
        *buf = 138412290;
        v69 = v46;
        _os_log_error_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_ERROR, "Failing send due to invalid unatomized address: %@", buf, 0xCu);
      }

      v13 = [MEMORY[0x277CCA9B8] hf_errorWithCode:40];
      v17 = [MEMORY[0x277D14640] sharedHandler];
      v62 = *MEMORY[0x277D13860];
      v18 = [(HUAddPeopleViewController *)self unatomizedAddress];
      v63 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      [v17 handleError:v13 operationType:*MEMORY[0x277D13BF0] options:v19 retryBlock:0 cancelBlock:0];

      [(HUAddPeopleViewController *)self setState:0];
    }

    else
    {
      v13 = [(HUAddPeopleViewController *)self recipientsWithStatusPassingTest:&__block_literal_global_273];
      if ([v13 count])
      {
        v29 = HFLogForCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v69 = v13;
          _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, "Delaying send due to pending lookups: %@", buf, 0xCu);
        }
      }

      else
      {
        [(HUAddPeopleViewController *)self setState:2];
        v30 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
        v31 = [(HUAddPeopleViewController *)self composeView];
        v32 = [v31 recipients];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __40__HUAddPeopleViewController_sendInvites__block_invoke_274;
        v58[3] = &unk_277DBD238;
        v29 = v30;
        v59 = v29;
        v33 = [v32 na_map:v58];

        if ([(HUAddPeopleViewController *)self viewContext]== 1)
        {
          v34 = [(HUAddPeopleViewController *)self delegate];
          v35 = objc_opt_respondsToSelector();

          if (v35)
          {
            v36 = [(HUAddPeopleViewController *)self delegate];
            [v36 didSelectPeopleForInvite:self inviteeAddresses:v33];
          }

          [(HUAddPeopleViewController *)self setRequiresPresentingViewControllerDismissal:0];
          v37 = [(HUAddPeopleViewController *)self presentationDelegate];
          v38 = [v37 finishPresentation:self animated:1];
        }

        else
        {
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __40__HUAddPeopleViewController_sendInvites__block_invoke_2_278;
          v57[3] = &unk_277DBC630;
          v57[4] = self;
          v39 = [v33 na_map:v57];
          v40 = [MEMORY[0x277D2C900] combineAllFutures:v39];
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __40__HUAddPeopleViewController_sendInvites__block_invoke_287;
          v54[3] = &unk_277DBB198;
          v41 = v33;
          v55 = v41;
          v56 = self;
          v42 = [v40 flatMap:v54];

          objc_initWeak(buf, self);
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v52[2] = __40__HUAddPeopleViewController_sendInvites__block_invoke_2_296;
          v52[3] = &unk_277DBD288;
          objc_copyWeak(&v53, buf);
          v43 = [v42 addCompletionBlock:v52];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __40__HUAddPeopleViewController_sendInvites__block_invoke_3;
          v49[3] = &unk_277DB7E90;
          v50 = v41;
          v51 = self;
          v44 = [v42 addFailureBlock:v49];
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __40__HUAddPeopleViewController_sendInvites__block_invoke_4;
          v47[3] = &unk_277DB88D8;
          objc_copyWeak(&v48, buf);
          v45 = [v42 addSuccessBlock:v47];
          objc_destroyWeak(&v48);

          objc_destroyWeak(&v53);
          objc_destroyWeak(buf);
        }
      }
    }
  }
}

uint64_t __40__HUAddPeopleViewController_sendInvites__block_invoke_270(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 contactsController];
  v6 = [*(a1 + 32) IDSDestinationForRecipient:v4];

  LODWORD(v4) = [v5 hasRestrictedGuestIDSCapabilityForDestination:v6];
  return v4 ^ 1;
}

uint64_t __40__HUAddPeopleViewController_sendInvites__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 contactsController];
  v6 = [*(a1 + 32) IDSDestinationForRecipient:v4];

  LODWORD(v4) = [v5 hasAdaptiveTemperatureIDSCapabilityForDestination:v6];
  return v4 ^ 1;
}

id __40__HUAddPeopleViewController_sendInvites__block_invoke_274(uint64_t a1, void *a2)
{
  v3 = [a2 address];
  v4 = [*(a1 + 32) invertedSet];
  v5 = [v3 stringByRemovingCharactersFromSet:v4];

  return v5;
}

id __40__HUAddPeopleViewController_sendInvites__block_invoke_2_278(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [v4 outgoingInvitations];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v30 = v3;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_INFO, "Attempting to remove existing invitations that match address %@. Invitations: %@", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 invitee];
        v14 = [v13 userID];
        v15 = [v3 isEqualToString:v14];

        if (v15)
        {
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __40__HUAddPeopleViewController_sendInvites__block_invoke_280;
          v23[3] = &unk_277DB7508;
          v23[4] = v12;
          v17 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v23];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __40__HUAddPeopleViewController_sendInvites__block_invoke_2_282;
          v22[3] = &unk_277DB8C00;
          v22[4] = v12;
          v18 = [v17 addFailureBlock:v22];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __40__HUAddPeopleViewController_sendInvites__block_invoke_284;
          v20[3] = &unk_277DBA338;
          v21 = v3;
          v16 = [v18 addSuccessBlock:v20];

          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

void __40__HUAddPeopleViewController_sendInvites__block_invoke_2_282(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Removing existing invitation failed: %@ invitation: %@", &v6, 0x16u);
  }
}

void __40__HUAddPeopleViewController_sendInvites__block_invoke_284(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_INFO, "Successfully removed existing invitation for %@", &v4, 0xCu);
  }
}

id __40__HUAddPeopleViewController_sendInvites__block_invoke_287(uint64_t a1)
{
  v2 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HUAddPeopleViewController_sendInvites__block_invoke_2_288;
  v7[3] = &unk_277DBD260;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v5 = [v2 futureWithCompletionHandlerAdapterBlock:v7];

  return v5;
}

void __40__HUAddPeopleViewController_sendInvites__block_invoke_2_288(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Sending invitation(s) to address(es): %@", &v8, 0xCu);
  }

  v6 = [*(a1 + 32) na_map:&__block_literal_global_292_0];
  v7 = [*(a1 + 40) home];
  [v7 inviteUsersWithInviteInformation:v6 completionHandler:v3];
}

id __40__HUAddPeopleViewController_sendInvites__block_invoke_289(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1EF8];
  v3 = a2;
  v4 = [[v2 alloc] initWithUser:v3 administrator:0 remoteAccess:1];

  return v4;
}

void __40__HUAddPeopleViewController_sendInvites__block_invoke_2_296(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setState:0];
}

void __40__HUAddPeopleViewController_sendInvites__block_invoke_3(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) count];
  v5 = MEMORY[0x277D13BF0];
  if (v4 != 1)
  {
    v5 = MEMORY[0x277D13BF8];
  }

  v6 = *v5;
  v7 = *MEMORY[0x277D13860];
  v19 = *MEMORY[0x277D13860];
  v8 = [*(a1 + 32) firstObject];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  if ([v3 code] == 2821)
  {
    v10 = [*(a1 + 40) composeView];
    v11 = [v10 recipients];
    v12 = [v11 firstObject];

    if (v12)
    {
      v17 = v7;
      v13 = [v12 contact];
      v14 = [v13 givenName];
      v18 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

      v9 = v15;
    }
  }

  v16 = [MEMORY[0x277D14640] sharedHandler];
  [v16 handleError:v3 operationType:v6 options:v9 retryBlock:0 cancelBlock:0];
}

void __40__HUAddPeopleViewController_sendInvites__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 count])
  {
    v5 = [MEMORY[0x277D146E8] sharedDispatcher];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __40__HUAddPeopleViewController_sendInvites__block_invoke_5;
    v15 = &unk_277DB9920;
    v16 = WeakRetained;
    v6 = v3;
    v17 = v6;
    [v5 dispatchHomeObserverMessage:&v12 sender:0];

    v7 = [WeakRetained delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [WeakRetained delegate];
      [v9 addPeopleViewController:WeakRetained didSendInvitations:v6];
    }
  }

  [WeakRetained setRequiresPresentingViewControllerDismissal:1];
  v10 = [WeakRetained presentationDelegate];
  v11 = [v10 finishPresentation:WeakRetained animated:1];
}

void __40__HUAddPeopleViewController_sendInvites__block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didUpdateStateForOutgoingInvitations:*(a1 + 40)];
  }
}

- (id)_getIDSServiceName
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v3 = [v2 homeManager];
  v4 = [v3 hasOptedToHH2];

  if (v4)
  {
    return @"com.apple.private.alloy.home.invite";
  }

  else
  {
    return @"com.apple.private.alloy.willow";
  }
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presentationDelegate);

  return WeakRetained;
}

- (HUAddPeopleViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end