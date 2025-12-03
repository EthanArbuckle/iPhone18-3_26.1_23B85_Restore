@interface HUAddPeopleViewController
+ (void)presentAddPersonOrAlertForHH2Upgrade:(id)upgrade withHome:(id)home viewContext:(unint64_t)context delegate:(id)delegate presentationDelegate:(id)presentationDelegate;
- (BOOL)adaptiveTemperatureEnabledForHome:(id)home;
- (HUAddPeopleViewController)initWithCoder:(id)coder;
- (HUAddPeopleViewController)initWithHome:(id)home viewContext:(unint64_t)context;
- (HUAddPeopleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HUAddPeopleViewControllerDelegate)delegate;
- (HUPresentationDelegate)presentationDelegate;
- (MFContactsSearchManager)searchManager;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)IDSDestinationForRecipient:(id)recipient;
- (id)_getIDSServiceName;
- (id)_sanitizedIDSCopyIDForPhoneNumber:(id)number;
- (id)composeRecipientForAddress:(id)address;
- (id)recipientsWithStatusPassingTest:(id)test;
- (id)requiredKeyDescriptors;
- (id)rightBarButtonTitle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tintColorForRecipient:(id)recipient;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error;
- (void)cancelButtonPressed:(id)pressed;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d;
- (void)contactController:(id)controller didFinishDownloadingFamilyMemberAvatar:(id)avatar;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)contactPickerDidCancel:(id)cancel;
- (void)dealloc;
- (void)finishedSearchingForAutocompleteResults;
- (void)handleStatusQueryResults:(id)results;
- (void)lookupIDSDestinations:(id)destinations;
- (void)lookupVisibleRecipients;
- (void)scheduleDelayedLookupVisibleRecipients;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)sendButtonPressed:(id)pressed;
- (void)sendInvites;
- (void)setState:(unint64_t)state;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)updateStateDependentUI;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUAddPeopleViewController

- (BOOL)adaptiveTemperatureEnabledForHome:(id)home
{
  homeCopy = home;
  homeCopy2 = home;
  selfCopy = self;
  LOBYTE(homeCopy) = _sSo25HUAddPeopleViewControllerC6HomeUIE26adaptiveTemperatureEnabled3forSbSo6HMHomeCSg_tF_0(homeCopy);

  return homeCopy & 1;
}

- (HUAddPeopleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAddPeopleViewController.m" lineNumber:105 description:{@"%s is unavailable; use %@ instead", "-[HUAddPeopleViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HUAddPeopleViewController)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAddPeopleViewController.m" lineNumber:110 description:{@"%s is unavailable; use %@ instead", "-[HUAddPeopleViewController initWithCoder:]", v6}];

  return 0;
}

- (HUAddPeopleViewController)initWithHome:(id)home viewContext:(unint64_t)context
{
  homeCopy = home;
  v20.receiver = self;
  v20.super_class = HUAddPeopleViewController;
  v8 = [(HUAddPeopleViewController *)&v20 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    v9->_viewContext = context;
    v10 = objc_alloc(MEMORY[0x277D145A8]);
    requiredKeyDescriptors = [(HUAddPeopleViewController *)v9 requiredKeyDescriptors];
    v12 = [v10 initWithKeyDescriptors:requiredKeyDescriptors];
    contactsController = v9->_contactsController;
    v9->_contactsController = v12;

    [(HFContactController *)v9->_contactsController setDelegate:v9];
    familyMembersNotInHome = v9->_familyMembersNotInHome;
    v9->_familyMembersNotInHome = MEMORY[0x277CBEBF8];

    v9->_adaptiveTemperatureEnabled = [(HUAddPeopleViewController *)v9 adaptiveTemperatureEnabledForHome:homeCopy];
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

+ (void)presentAddPersonOrAlertForHH2Upgrade:(id)upgrade withHome:(id)home viewContext:(unint64_t)context delegate:(id)delegate presentationDelegate:(id)presentationDelegate
{
  upgradeCopy = upgrade;
  homeCopy = home;
  presentationDelegateCopy = presentationDelegate;
  delegateCopy = delegate;
  v15 = [[HUAddPeopleViewController alloc] initWithHome:homeCopy viewContext:context];
  [(HUAddPeopleViewController *)v15 setDelegate:delegateCopy];

  [(HUAddPeopleViewController *)v15 setPresentationDelegate:presentationDelegateCopy];
  v16 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v15];
  [v16 setModalPresentationStyle:2];
  v17 = v16;
  v18 = v17;
  if ([homeCopy hf_canUpdateToHH2])
  {
    hf_residentDevicesAddedToHome = [homeCopy hf_residentDevicesAddedToHome];
    v20 = [hf_residentDevicesAddedToHome count];

    v18 = v17;
    if (v20)
    {
      v21 = MEMORY[0x277D75110];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __117__HUAddPeopleViewController_presentAddPersonOrAlertForHH2Upgrade_withHome_viewContext_delegate_presentationDelegate___block_invoke;
      v25[3] = &unk_277DBD130;
      v26 = homeCopy;
      v27 = upgradeCopy;
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
  [upgradeCopy presentViewController:v22 animated:1 completion:v23];
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

  labelColor = [MEMORY[0x277D75348] labelColor];
  composeView = [(HUAddPeopleViewController *)self composeView];
  [composeView setTypingTextColor:labelColor];

  v7 = _HULocalizedStringWithDefaultValue(@"HUPeopleRecipientToLabel", @"HUPeopleRecipientToLabel", 1);
  composeView2 = [(HUAddPeopleViewController *)self composeView];
  [composeView2 setLabel:v7];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  composeView3 = [(HUAddPeopleViewController *)self composeView];
  [composeView3 setBackgroundColor:systemBackgroundColor];

  composeView4 = [(HUAddPeopleViewController *)self composeView];
  [composeView4 setSeparatorHidden:1];

  composeView5 = [(HUAddPeopleViewController *)self composeView];
  [composeView5 setDelegate:self];

  if ([MEMORY[0x277D14CE8] isAMac])
  {
    composeView6 = [(HUAddPeopleViewController *)self composeView];
    [composeView6 setShowsAddButtonWhenExpanded:0];
  }

  v14 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(HUAddPeopleViewController *)self setSeparatorView:v14];

  systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
  separatorView = [(HUAddPeopleViewController *)self separatorView];
  [separatorView setBackgroundColor:systemLightGrayColor];

  v17 = objc_alloc(MEMORY[0x277D75B40]);
  v18 = [v17 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(HUAddPeopleViewController *)self setTableView:v18];

  tableView = [(HUAddPeopleViewController *)self tableView];
  [tableView setEstimatedRowHeight:55.0];

  tableView2 = [(HUAddPeopleViewController *)self tableView];
  [tableView2 setSectionHeaderTopPadding:0.0];

  tableView3 = [(HUAddPeopleViewController *)self tableView];
  [tableView3 setDelegate:self];

  tableView4 = [(HUAddPeopleViewController *)self tableView];
  [tableView4 setDataSource:self];

  view = [(HUAddPeopleViewController *)self view];
  composeView7 = [(HUAddPeopleViewController *)self composeView];
  v55[0] = composeView7;
  separatorView2 = [(HUAddPeopleViewController *)self separatorView];
  v55[1] = separatorView2;
  tableView5 = [(HUAddPeopleViewController *)self tableView];
  v55[2] = tableView5;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
  [view naui_addAutoLayoutSubviews:v27];

  systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
  view2 = [(HUAddPeopleViewController *)self view];
  [view2 setBackgroundColor:systemBackgroundColor2];

  navigationController = [(HUAddPeopleViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v32 = [viewControllers objectAtIndexedSubscript:0];
  LODWORD(tableView5) = [v32 isEqual:self];

  if (tableView5)
  {
    v33 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed_];
    navigationItem = [(HUAddPeopleViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v33];

    navigationItem2 = [(HUAddPeopleViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem2 leftBarButtonItem];
    [leftBarButtonItem setAccessibilityIdentifier:@"Home.Users.AddPeople.NavigationBar.CancelButton"];
  }

  else
  {
    navigationItem2 = [(HUAddPeopleViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:0];
  }

  v37 = objc_alloc(MEMORY[0x277D751E0]);
  rightBarButtonTitle = [(HUAddPeopleViewController *)self rightBarButtonTitle];
  v39 = [v37 initWithTitle:rightBarButtonTitle style:2 target:self action:sel_sendButtonPressed_];
  navigationItem3 = [(HUAddPeopleViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:v39];

  navigationItem4 = [(HUAddPeopleViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem4 rightBarButtonItem];
  [rightBarButtonItem setAccessibilityIdentifier:@"Home.Users.AddPeople.NavigationBar.NextDoneButton"];

  tableView6 = [(HUAddPeopleViewController *)self tableView];
  v44 = objc_opt_class();
  v45 = +[HUAddPeopleTableHeaderFooterView identifier];
  [tableView6 registerClass:v44 forHeaderFooterViewReuseIdentifier:v45];

  tableView7 = [(HUAddPeopleViewController *)self tableView];
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = NSStringFromClass(v48);
  [tableView7 registerClass:v47 forCellReuseIdentifier:v49];

  tableView8 = [(HUAddPeopleViewController *)self tableView];
  v51 = objc_opt_class();
  identifier = [MEMORY[0x277CD68B0] identifier];
  [tableView8 registerClass:v51 forCellReuseIdentifier:identifier];

  [(HUAddPeopleViewController *)self updateStateDependentUI];
  view3 = [(HUAddPeopleViewController *)self view];
  [view3 setNeedsUpdateConstraints];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
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
  [(HUAddPeopleViewController *)&v9 viewDidAppear:appearCopy];
  composeView = [(HUAddPeopleViewController *)self composeView];
  [composeView becomeFirstResponder];

  view = [(HUAddPeopleViewController *)self view];
  tintColor = [view tintColor];
  [(HUAddPeopleViewController *)self setEffectiveTintColor:tintColor];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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
  [(HUAddPeopleViewController *)&v8 viewWillDisappear:disappearCopy];
  composeView = [(HUAddPeopleViewController *)self composeView];
  textView = [composeView textView];
  [textView resignFirstResponder];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  composeView = [(HUAddPeopleViewController *)self composeView];
  textView = [composeView textView];
  [textView resignFirstResponder];

  statusQueryDebounceTimer = [(HUAddPeopleViewController *)self statusQueryDebounceTimer];
  [statusQueryDebounceTimer invalidate];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(HUAddPeopleViewController *)self scheduleDelayedLookupVisibleRecipients];
  }
}

- (void)updateViewConstraints
{
  constraints = [(HUAddPeopleViewController *)self constraints];

  if (!constraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    composeView = [(HUAddPeopleViewController *)self composeView];
    leadingAnchor = [composeView leadingAnchor];
    view = [(HUAddPeopleViewController *)self view];
    leadingAnchor2 = [view leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v9];

    composeView2 = [(HUAddPeopleViewController *)self composeView];
    trailingAnchor = [composeView2 trailingAnchor];
    view2 = [(HUAddPeopleViewController *)self view];
    trailingAnchor2 = [view2 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v14];

    separatorView = [(HUAddPeopleViewController *)self separatorView];
    leadingAnchor3 = [separatorView leadingAnchor];
    view3 = [(HUAddPeopleViewController *)self view];
    leadingAnchor4 = [view3 leadingAnchor];
    v19 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [array addObject:v19];

    separatorView2 = [(HUAddPeopleViewController *)self separatorView];
    trailingAnchor3 = [separatorView2 trailingAnchor];
    view4 = [(HUAddPeopleViewController *)self view];
    trailingAnchor4 = [view4 trailingAnchor];
    v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [array addObject:v24];

    tableView = [(HUAddPeopleViewController *)self tableView];
    leadingAnchor5 = [tableView leadingAnchor];
    view5 = [(HUAddPeopleViewController *)self view];
    leadingAnchor6 = [view5 leadingAnchor];
    v29 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [array addObject:v29];

    tableView2 = [(HUAddPeopleViewController *)self tableView];
    trailingAnchor5 = [tableView2 trailingAnchor];
    view6 = [(HUAddPeopleViewController *)self view];
    trailingAnchor6 = [view6 trailingAnchor];
    v34 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [array addObject:v34];

    composeView3 = [(HUAddPeopleViewController *)self composeView];
    topAnchor = [composeView3 topAnchor];
    view7 = [(HUAddPeopleViewController *)self view];
    safeAreaLayoutGuide = [view7 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v40 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v40];

    composeView4 = [(HUAddPeopleViewController *)self composeView];
    bottomAnchor = [composeView4 bottomAnchor];
    separatorView3 = [(HUAddPeopleViewController *)self separatorView];
    topAnchor3 = [separatorView3 topAnchor];
    v45 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
    [array addObject:v45];

    composeView5 = [(HUAddPeopleViewController *)self composeView];
    heightAnchor = [composeView5 heightAnchor];
    [MEMORY[0x277CD6860] preferredHeight];
    v48 = [heightAnchor constraintEqualToConstant:?];
    [(HUAddPeopleViewController *)self setComposeViewBottomConstraint:v48];

    composeViewBottomConstraint = [(HUAddPeopleViewController *)self composeViewBottomConstraint];
    [array addObject:composeViewBottomConstraint];

    separatorView4 = [(HUAddPeopleViewController *)self separatorView];
    bottomAnchor2 = [separatorView4 bottomAnchor];
    tableView3 = [(HUAddPeopleViewController *)self tableView];
    topAnchor4 = [tableView3 topAnchor];
    v54 = [bottomAnchor2 constraintEqualToAnchor:topAnchor4];
    [array addObject:v54];

    separatorView5 = [(HUAddPeopleViewController *)self separatorView];
    heightAnchor2 = [separatorView5 heightAnchor];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v59 = [heightAnchor2 constraintEqualToConstant:1.0 / v58];
    [array addObject:v59];

    tableView4 = [(HUAddPeopleViewController *)self tableView];
    bottomAnchor3 = [tableView4 bottomAnchor];
    view8 = [(HUAddPeopleViewController *)self view];
    bottomAnchor4 = [view8 bottomAnchor];
    v64 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [array addObject:v64];

    [(HUAddPeopleViewController *)self setConstraints:array];
    v65 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUAddPeopleViewController *)self constraints];
    [v65 activateConstraints:constraints2];
  }

  v67.receiver = self;
  v67.super_class = HUAddPeopleViewController;
  [(HUAddPeopleViewController *)&v67 updateViewConstraints];
}

- (void)cancelButtonPressed:(id)pressed
{
  v14 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[HUAddPeopleViewController cancelButtonPressed:]";
    v12 = 2112;
    v13 = pressedCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) User selected 'cancel' button %@", &v10, 0x16u);
  }

  presentationDelegate = [(HUAddPeopleViewController *)self presentationDelegate];
  v7 = [presentationDelegate finishPresentation:self animated:1];

  delegate = [(HUAddPeopleViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(HUAddPeopleViewController *)self delegate];
    [delegate2 addPeopleViewControllerDidCancel:self];
  }
}

- (void)sendButtonPressed:(id)pressed
{
  v11 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[HUAddPeopleViewController sendButtonPressed:]";
    v9 = 2112;
    v10 = pressedCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) User selected 'send' button %@", &v7, 0x16u);
  }

  if ([(HUAddPeopleViewController *)self state])
  {
    NSLog(&cfstr_SendButtonNotD.isa);
  }

  [(HUAddPeopleViewController *)self setUnatomizedAddress:0];
  composeView = [(HUAddPeopleViewController *)self composeView];
  [composeView finishEnteringRecipient];

  [(HUAddPeopleViewController *)self sendInvites];
}

- (void)setState:(unint64_t)state
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_state != state)
  {
    self->_state = state;
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"invited";
      if (state == 1)
      {
        v6 = @"send requested";
      }

      if (!state)
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

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(HUAddPeopleViewController *)self showingAutoCompleteResults])
  {
    return 1;
  }

  familyMembersNotInHome = [(HUAddPeopleViewController *)self familyMembersNotInHome];
  v4 = [familyMembersNotInHome count] != 0;

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(HUAddPeopleViewController *)self showingAutoCompleteResults:view])
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([(HUAddPeopleViewController *)self showingAutoCompleteResults])
  {
    identifier = [MEMORY[0x277CD68B0] identifier];
    v9 = [viewCopy dequeueReusableCellWithIdentifier:identifier];

    autoCompleteResults = [(HUAddPeopleViewController *)self autoCompleteResults];
    v11 = [pathCopy row];

    v12 = [autoCompleteResults objectAtIndexedSubscript:v11];
    [v9 setRecipient:v12];

    [v9 setShouldDimIrrelevantInformation:0];
    recipient = [v9 recipient];
    v14 = [(HUAddPeopleViewController *)self tintColorForRecipient:recipient];
    [v9 setTintColor:v14 animated:0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:clearColor];
  }

  else
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v9 = [viewCopy dequeueReusableCellWithIdentifier:v17];

    familyMembersNotInHome = [(HUAddPeopleViewController *)self familyMembersNotInHome];
    v19 = [pathCopy row];

    v20 = [familyMembersNotInHome objectAtIndexedSubscript:v19];

    contactsController = [(HUAddPeopleViewController *)self contactsController];
    dsid = [v20 dsid];
    v23 = [contactsController contactForFamilyMemberWithDsid:dsid];

    v24 = MEMORY[0x277CCACA8];
    firstName = [v20 firstName];
    lastName = [v20 lastName];
    clearColor = [v24 hf_formattedPersonNameForFirstName:firstName lastName:lastName];

    appleID = [v20 appleID];
    LODWORD(lastName) = [appleID hf_isEmail];

    if (lastName)
    {
      appleID2 = [v20 appleID];
    }

    else
    {
      appleID2 = 0;
    }

    [v9 setTitleText:clearColor];
    [v9 setDescriptionText:appleID2];
    [v9 setContact:v23];
    imageData = [v23 imageData];

    if (imageData)
    {
      v30 = MEMORY[0x277D755B8];
      imageData2 = [v23 imageData];
      v32 = [v30 imageWithData:imageData2];
      [v9 setPhoto:v32];
    }
  }

  return v9;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  if (![(HUAddPeopleViewController *)self showingAutoCompleteResults:view])
  {
    return *MEMORY[0x277D76F30];
  }

  v4 = MEMORY[0x277CD68B0];

  [v4 height];
  return result;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if ([(HUAddPeopleViewController *)self showingAutoCompleteResults:view])
  {
    return 0.0;
  }

  +[HUAddPeopleTableHeaderFooterView preferredHeight];
  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v43[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  if (![(HUAddPeopleViewController *)self showingAutoCompleteResults])
  {
    familyMembersNotInHome = [(HUAddPeopleViewController *)self familyMembersNotInHome];
    v21 = [pathCopy row];

    v22 = [familyMembersNotInHome objectAtIndexedSubscript:v21];

    contactsController = [(HUAddPeopleViewController *)self contactsController];
    dsid = [v22 dsid];
    v25 = [contactsController contactForFamilyMemberWithDsid:dsid];

    emailAddresses = [v25 emailAddresses];
    v27 = [emailAddresses count];

    if (v27)
    {
      emailAddresses2 = [v25 emailAddresses];
      firstObject = [emailAddresses2 firstObject];
      value = [firstObject value];
      v31 = 0;
    }

    else
    {
      emailAddresses2 = [v25 phoneNumbers];
      firstObject = [emailAddresses2 firstObject];
      value2 = [firstObject value];
      value = [value2 stringValue];

      v31 = 1;
    }

    v9 = [objc_alloc(MEMORY[0x277CD6858]) initWithContact:v25 address:value kind:v31];
    goto LABEL_10;
  }

  autoCompleteResults = [(HUAddPeopleViewController *)self autoCompleteResults];
  v8 = [pathCopy row];

  v9 = [autoCompleteResults objectAtIndexedSubscript:v8];

  contactsController2 = [(HUAddPeopleViewController *)self contactsController];
  v11 = [(HUAddPeopleViewController *)self IDSDestinationForRecipient:v9];
  v12 = [contactsController2 statusForDestination:v11];

  if (v12 != 4)
  {
LABEL_10:
    composeView = [(HUAddPeopleViewController *)self composeView];
    [composeView addRecipient:v9];

    composeView2 = [(HUAddPeopleViewController *)self composeView];
    [composeView2 clearText];

    goto LABEL_13;
  }

  v13 = *MEMORY[0x277D13860];
  v42 = *MEMORY[0x277D13860];
  address = [v9 address];
  v43[0] = address;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];

  if (self->_adaptiveTemperatureEnabled && (-[HUAddPeopleViewController contactsController](self, "contactsController"), v16 = objc_claimAutoreleasedReturnValue(), -[HUAddPeopleViewController IDSDestinationForRecipient:](self, "IDSDestinationForRecipient:", v9), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v16 hasAdaptiveTemperatureIDSCapabilityForDestination:v17], v17, v16, (v18 & 1) == 0))
  {
    v40 = v13;
    contact = [v9 contact];
    givenName = [contact givenName];
    v41 = givenName;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];

    v19 = 105;
    v15 = v37;
  }

  else
  {
    v19 = 40;
  }

  v38 = [MEMORY[0x277CCA9B8] hf_errorWithCode:v19];
  mEMORY[0x277D14640] = [MEMORY[0x277D14640] sharedHandler];
  [mEMORY[0x277D14640] handleError:v38 operationType:*MEMORY[0x277D13BF0] options:v15 retryBlock:0 cancelBlock:0];

LABEL_13:
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  headerViewCopy = headerView;
  v7 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:*MEMORY[0x277D743F8]];
  textLabel = [headerViewCopy textLabel];
  [textLabel setFont:v7];

  familyMembersNotInHome = [(HUAddPeopleViewController *)self familyMembersNotInHome];
  v10 = [familyMembersNotInHome count];
  if (section || !v10)
  {
    v11 = @"HUPeopleTableSectionContacts";
  }

  else
  {
    v11 = @"HUPeopleTableSectionFamily";
  }

  v12 = _HULocalizedStringWithDefaultValue(v11, v11, 1);
  textLabel2 = [headerViewCopy textLabel];
  [textLabel2 setText:v12];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(HUAddPeopleViewController *)self tableView:viewCopy numberOfRowsInSection:section])
  {
    v7 = +[HUAddPeopleTableHeaderFooterView identifier];
    v8 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v7];

    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    textLabel = [v8 textLabel];
    [textLabel setFont:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  changeCopy = change;
  statusQueryDebounceTimer = [(HUAddPeopleViewController *)self statusQueryDebounceTimer];
  [statusQueryDebounceTimer invalidate];

  if ([changeCopy length])
  {
    array = [MEMORY[0x277CBEB18] array];
    [(HUAddPeopleViewController *)self setAdditionalAutoCompleteResults:array];

    lastSearchID = [(HUAddPeopleViewController *)self lastSearchID];

    if (lastSearchID)
    {
      searchManager = [(HUAddPeopleViewController *)self searchManager];
      lastSearchID2 = [(HUAddPeopleViewController *)self lastSearchID];
      [searchManager cancelTaskWithID:lastSearchID2];
    }

    searchManager2 = [(HUAddPeopleViewController *)self searchManager];
    v11 = [searchManager2 searchForText:changeCopy withAutocompleteFetchContext:0 consumer:self];
    [(HUAddPeopleViewController *)self setLastSearchID:v11];
  }

  else
  {
    lastSearchID3 = [(HUAddPeopleViewController *)self lastSearchID];

    if (lastSearchID3)
    {
      searchManager3 = [(HUAddPeopleViewController *)self searchManager];
      lastSearchID4 = [(HUAddPeopleViewController *)self lastSearchID];
      [searchManager3 cancelTaskWithID:lastSearchID4];
    }

    [(HUAddPeopleViewController *)self setShowingAutoCompleteResults:0];
    searchManager2 = [(HUAddPeopleViewController *)self tableView];
    [searchManager2 reloadData];
  }

  [(HUAddPeopleViewController *)self updateStateDependentUI];
}

- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient
{
  recipientCopy = recipient;
  [(HUAddPeopleViewController *)self updateStateDependentUI];
  v6 = [(HUAddPeopleViewController *)self tintColorForRecipient:recipientCopy];
  composeView = [(HUAddPeopleViewController *)self composeView];
  v8 = [composeView atomViewForRecipient:recipientCopy];

  [v8 setTintColor:v6];
  statusQueryDebounceTimer = [(HUAddPeopleViewController *)self statusQueryDebounceTimer];
  [statusQueryDebounceTimer invalidate];

  [(HUAddPeopleViewController *)self lookupVisibleRecipients];
}

- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient
{
  [view removeRecipient:recipient];

  [(HUAddPeopleViewController *)self updateStateDependentUI];
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  v17 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v7 = MEMORY[0x277CCA900];
  addressCopy = address;
  whitespaceCharacterSet = [v7 whitespaceCharacterSet];
  v10 = [addressCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  if (![v10 length])
  {
    goto LABEL_4;
  }

  v11 = [(HUAddPeopleViewController *)self composeRecipientForAddress:v10];
  if (v11)
  {
    v12 = v11;
    composeView = [(HUAddPeopleViewController *)self composeView];
    [composeView addRecipient:v12];

LABEL_4:
    [(HUAddPeopleViewController *)self setUnatomizedAddress:0];
    [viewCopy clearText];
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

- (void)composeRecipientView:(id)view didChangeSize:(CGSize)size
{
  height = size.height;
  v5 = [(HUAddPeopleViewController *)self composeViewBottomConstraint:view];
  [v5 setConstant:height];
}

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
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
  navigationController = [(HUAddPeopleViewController *)self navigationController];
  [navigationController presentViewController:v4 animated:1 completion:0];
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient
{
  navigationController = [(HUAddPeopleViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)contactController:(id)controller didFinishDownloadingFamilyMemberAvatar:(id)avatar
{
  avatarCopy = avatar;
  if (![(HUAddPeopleViewController *)self showingAutoCompleteResults])
  {
    familyMembersNotInHome = [(HUAddPeopleViewController *)self familyMembersNotInHome];
    v6 = [familyMembersNotInHome indexOfObject:avatarCopy];

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      tableView = [(HUAddPeopleViewController *)self tableView];
      v8 = [MEMORY[0x277CCAA70] indexPathForRow:v6 inSection:0];
      v9 = [tableView cellForRowAtIndexPath:v8];

      contactsController = [(HUAddPeopleViewController *)self contactsController];
      dsid = [avatarCopy dsid];
      v12 = [contactsController contactForFamilyMemberWithDsid:dsid];

      v13 = MEMORY[0x277D755B8];
      imageData = [v12 imageData];
      v15 = [v13 imageWithData:imageData];
      [v9 setPhoto:v15];
    }
  }
}

- (void)contactPickerDidCancel:(id)cancel
{
  composeView = [(HUAddPeopleViewController *)self composeView];
  [(HUAddPeopleViewController *)self composeRecipientViewDidFinishPickingRecipient:composeView];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  v21 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  emailAddresses = [contactCopy emailAddresses];
  v7 = [emailAddresses count];

  if (v7)
  {
    emailAddresses2 = [contactCopy emailAddresses];
    firstObject = [emailAddresses2 firstObject];
    value = [firstObject value];
    v11 = 0;
  }

  else
  {
    emailAddresses2 = [contactCopy phoneNumbers];
    firstObject = [emailAddresses2 firstObject];
    value2 = [firstObject value];
    value = [value2 stringValue];

    v11 = 1;
  }

  v13 = [objc_alloc(MEMORY[0x277CD6858]) initWithContact:contactCopy address:value kind:v11];
  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v13;
    v19 = 2112;
    v20 = contactCopy;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "Adding new recipient %@ from contact %@", &v17, 0x16u);
  }

  composeView = [(HUAddPeopleViewController *)self composeView];
  [composeView addRecipient:v13];

  composeView2 = [(HUAddPeopleViewController *)self composeView];
  [(HUAddPeopleViewController *)self composeRecipientViewDidFinishPickingRecipient:composeView2];
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  v24 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  contact = [propertyCopy contact];
  v7 = [propertyCopy key];
  v8 = [v7 isEqualToString:*MEMORY[0x277CBCFC0]];

  if (v8)
  {
    emailAddresses = [contact emailAddresses];
    firstObject = [emailAddresses firstObject];
    value = [firstObject value];
    v12 = 0;
LABEL_5:

    goto LABEL_7;
  }

  v13 = [propertyCopy key];
  v14 = [v13 isEqualToString:*MEMORY[0x277CBD098]];

  if (v14)
  {
    emailAddresses = [contact phoneNumbers];
    firstObject = [emailAddresses firstObject];
    value2 = [firstObject value];
    value = [value2 stringValue];

    v12 = 1;
    goto LABEL_5;
  }

  value = 0;
  v12 = 5;
LABEL_7:
  v16 = [objc_alloc(MEMORY[0x277CD6858]) initWithContact:contact address:value kind:v12];
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = v16;
    v22 = 2112;
    v23 = contact;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Adding new recipient %@ from contact %@", &v20, 0x16u);
  }

  composeView = [(HUAddPeopleViewController *)self composeView];
  [composeView addRecipient:v16];

  composeView2 = [(HUAddPeopleViewController *)self composeView];
  [(HUAddPeopleViewController *)self composeRecipientViewDidFinishPickingRecipient:composeView2];
}

- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d
{
  resultsCopy = results;
  dCopy = d;
  lastSearchID = [(HUAddPeopleViewController *)self lastSearchID];
  v9 = [dCopy isEqualToNumber:lastSearchID];

  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__HUAddPeopleViewController_consumeAutocompleteSearchResults_taskID___block_invoke;
    v12[3] = &unk_277DBD158;
    v12[4] = self;
    v10 = [resultsCopy na_filter:v12];
    additionalAutoCompleteResults = [(HUAddPeopleViewController *)self additionalAutoCompleteResults];
    [additionalAutoCompleteResults addObjectsFromArray:v10];

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
    additionalAutoCompleteResults = [(HUAddPeopleViewController *)self additionalAutoCompleteResults];
    v6 = [additionalAutoCompleteResults copy];
    [(HUAddPeopleViewController *)self setAutoCompleteResults:v6];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  [(HUAddPeopleViewController *)self setShowingAutoCompleteResults:v7];
  tableView = [(HUAddPeopleViewController *)self tableView];
  [tableView reloadData];

  [(HUAddPeopleViewController *)self scheduleDelayedLookupVisibleRecipients];
}

- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy2 = self;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = statusCopy;
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
      selfCopy2 = self;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@: %@ Checking IDS capabilities...", buf, 0x16u);
    }

    mEMORY[0x277D18728] = [MEMORY[0x277D18728] sharedInstance];
    allKeys = [statusCopy allKeys];
    _getIDSServiceName = [(HUAddPeopleViewController *)self _getIDSServiceName];
    refreshIDInfo = [MEMORY[0x277D189C8] refreshIDInfo];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __92__HUAddPeopleViewController_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke;
    v18[3] = &unk_277DBD1C8;
    v18[4] = self;
    v20 = a2;
    v19 = statusCopy;
    v21 = adaptiveTemperatureEnabled;
    [mEMORY[0x277D18728] idInfoForDestinations:allKeys service:_getIDSServiceName infoTypes:1 options:refreshIDInfo listenerID:@"HomeUI" queue:MEMORY[0x277D85CD0] completionBlock:v18];
  }

  else
  {
    [(HUAddPeopleViewController *)self handleStatusQueryResults:statusCopy];
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

- (void)handleStatusQueryResults:(id)results
{
  v40 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy = self;
    v36 = 2112;
    v37 = v7;
    v38 = 2112;
    v39 = resultsCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Will handle status query results for destinations: %@", buf, 0x20u);
  }

  contactsController = [(HUAddPeopleViewController *)self contactsController];
  v27 = resultsCopy;
  [contactsController entriesUpdated:resultsCopy];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  composeView = [(HUAddPeopleViewController *)self composeView];
  recipients = [composeView recipients];

  v11 = [recipients countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(recipients);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [(HUAddPeopleViewController *)self IDSDestinationForRecipient:v15];
        contactsController2 = [(HUAddPeopleViewController *)self contactsController];
        v18 = [contactsController2 statusForDestination:v16];

        v19 = HFLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [MEMORY[0x277D145A8] stringForRecipientStatus:v18];
          *buf = 138412546;
          selfCopy = v16;
          v36 = 2112;
          v37 = v20;
          _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "Status of destination %@ is %@", buf, 0x16u);
        }

        v21 = [(HUAddPeopleViewController *)self tintColorForRecipient:v15];
        composeView2 = [(HUAddPeopleViewController *)self composeView];
        v23 = [composeView2 atomViewForRecipient:v15];
        [v23 setTintColor:v21];
      }

      v12 = [recipients countByEnumeratingWithState:&v29 objects:v33 count:16];
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

    tableView = [(HUAddPeopleViewController *)self tableView];
    indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __54__HUAddPeopleViewController_handleStatusQueryResults___block_invoke;
    v28[3] = &unk_277DBD1F0;
    v28[4] = self;
    [indexPathsForVisibleRows enumerateObjectsUsingBlock:v28];
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

- (id)tintColorForRecipient:(id)recipient
{
  recipientCopy = recipient;
  contactsController = [(HUAddPeopleViewController *)self contactsController];
  v6 = [(HUAddPeopleViewController *)self IDSDestinationForRecipient:recipientCopy];

  v7 = [contactsController statusForDestination:v6];
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
  state = [(HUAddPeopleViewController *)self state];
  spinner = [(HUAddPeopleViewController *)self spinner];
  v5 = spinner;
  if (!state)
  {

    if (v5)
    {
      spinner2 = [(HUAddPeopleViewController *)self spinner];
      [spinner2 stopAnimating];

      [(HUAddPeopleViewController *)self setSpinner:0];
      v19 = objc_alloc(MEMORY[0x277D751E0]);
      rightBarButtonTitle = [(HUAddPeopleViewController *)self rightBarButtonTitle];
      v21 = [v19 initWithTitle:rightBarButtonTitle style:2 target:self action:sel_sendButtonPressed_];
      navigationItem = [(HUAddPeopleViewController *)self navigationItem];
      [navigationItem setRightBarButtonItem:v21];
    }

    composeView = [(HUAddPeopleViewController *)self composeView];
    textView = [composeView textView];
    text = [textView text];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v27 = [text stringByRemovingCharactersFromSet:whitespaceCharacterSet];
    v28 = [v27 length] != 0;
    navigationItem2 = [(HUAddPeopleViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem2 rightBarButtonItem];
    [rightBarButtonItem setEnabled:v28];

    navigationItem3 = [(HUAddPeopleViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem3 leftBarButtonItem];
    [leftBarButtonItem setEnabled:1];

    tableView = [(HUAddPeopleViewController *)self tableView];
    [tableView setAllowsSelection:1];

    composeView2 = [(HUAddPeopleViewController *)self composeView];
    addButton = [composeView2 addButton];
    [addButton setEnabled:1];

    composeView3 = [(HUAddPeopleViewController *)self composeView];
    [composeView3 setUserInteractionEnabled:1];
    goto LABEL_9;
  }

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [(HUAddPeopleViewController *)self setSpinner:v6];

    v7 = objc_alloc(MEMORY[0x277D751E0]);
    spinner3 = [(HUAddPeopleViewController *)self spinner];
    v9 = [v7 initWithCustomView:spinner3];
    navigationItem4 = [(HUAddPeopleViewController *)self navigationItem];
    [navigationItem4 setRightBarButtonItem:v9];

    spinner4 = [(HUAddPeopleViewController *)self spinner];
    [spinner4 startAnimating];
  }

  tableView2 = [(HUAddPeopleViewController *)self tableView];
  [tableView2 setAllowsSelection:0];

  composeView4 = [(HUAddPeopleViewController *)self composeView];
  addButton2 = [composeView4 addButton];
  [addButton2 setEnabled:0];

  composeView5 = [(HUAddPeopleViewController *)self composeView];
  [composeView5 setUserInteractionEnabled:0];

  composeView6 = [(HUAddPeopleViewController *)self composeView];
  [composeView6 resignFirstResponder];

  if ([(HUAddPeopleViewController *)self state]>= 2)
  {
    composeView3 = [(HUAddPeopleViewController *)self navigationItem];
    leftBarButtonItem2 = [composeView3 leftBarButtonItem];
    [leftBarButtonItem2 setEnabled:0];

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

- (id)IDSDestinationForRecipient:(id)recipient
{
  recipientCopy = recipient;
  uncommentedAddress = [recipientCopy uncommentedAddress];
  v6 = uncommentedAddress;
  if (uncommentedAddress)
  {
    address = uncommentedAddress;
  }

  else
  {
    address = [recipientCopy address];
  }

  v8 = address;

  v9 = IMStripFormattingFromAddress();
  if ([recipientCopy kind] == 1)
  {
    v10 = [(HUAddPeopleViewController *)self _sanitizedIDSCopyIDForPhoneNumber:v9];
  }

  else
  {
    if ([recipientCopy kind])
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

- (id)_sanitizedIDSCopyIDForPhoneNumber:(id)number
{
  v13 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  if ([numberCopy containsString:@"+"])
  {
    v4 = IDSCopyIDForPhoneNumber();
  }

  else
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    regionCode = [currentLocale regionCode];

    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = numberCopy;
      v11 = 2112;
      v12 = regionCode;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Phone number %@ does not include country code, looking at current locale to add one: %@", &v9, 0x16u);
    }

    v4 = MEMORY[0x20F31EAA0](numberCopy, regionCode, 0);
  }

  return v4;
}

- (id)composeRecipientForAddress:(id)address
{
  addressCopy = address;
  requiredKeyDescriptors = [(HUAddPeopleViewController *)self requiredKeyDescriptors];
  if (![addressCopy hf_isPhoneNumber])
  {
    if (![addressCopy hf_isEmail])
    {
      goto LABEL_7;
    }

    v6 = [MEMORY[0x277D145A8] contactForEmailAddress:addressCopy keyDescriptors:requiredKeyDescriptors];
    v7 = 0;
    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_6:
    v8 = [objc_alloc(MEMORY[0x277CD6858]) initWithContact:v6 address:addressCopy kind:v7];

    goto LABEL_8;
  }

  v6 = [MEMORY[0x277D145A8] contactForPhoneNumber:addressCopy keyDescriptors:requiredKeyDescriptors];
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
  statusQueryDebounceTimer = [(HUAddPeopleViewController *)self statusQueryDebounceTimer];
  [statusQueryDebounceTimer invalidate];

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
  composeView = [(HUAddPeopleViewController *)self composeView];
  recipients = [composeView recipients];

  v6 = [recipients countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          objc_enumerationMutation(recipients);
        }

        v10 = [(HUAddPeopleViewController *)self IDSDestinationForRecipient:*(*(&v30 + 1) + 8 * v9)];
        if (v10)
        {
          contactsController = [(HUAddPeopleViewController *)self contactsController];
          v12 = [contactsController statusForDestination:v10];

          if (!v12)
          {
            [v3 na_safeAddObject:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [recipients countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  if ([(HUAddPeopleViewController *)self showingAutoCompleteResults])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    tableView = [(HUAddPeopleViewController *)self tableView];
    indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

    v15 = [indexPathsForVisibleRows countByEnumeratingWithState:&v26 objects:v34 count:16];
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
            objc_enumerationMutation(indexPathsForVisibleRows);
          }

          v19 = *(*(&v26 + 1) + 8 * v18);
          autoCompleteResults = [(HUAddPeopleViewController *)self autoCompleteResults];
          v21 = [autoCompleteResults objectAtIndexedSubscript:{objc_msgSend(v19, "row")}];

          v22 = [(HUAddPeopleViewController *)self IDSDestinationForRecipient:v21];
          if (v22)
          {
            contactsController2 = [(HUAddPeopleViewController *)self contactsController];
            v24 = [contactsController2 statusForDestination:v22];

            if (!v24)
            {
              [v3 na_safeAddObject:v22];
            }
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [indexPathsForVisibleRows countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v16);
    }
  }

  if ([v3 count])
  {
    allObjects = [v3 allObjects];
    [(HUAddPeopleViewController *)self lookupIDSDestinations:allObjects];
  }
}

- (void)lookupIDSDestinations:(id)destinations
{
  v21 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  statusQueryController = [(HUAddPeopleViewController *)self statusQueryController];

  if (statusQueryController)
  {
    statusQueryController2 = [(HUAddPeopleViewController *)self statusQueryController];
    [statusQueryController2 invalidate];
  }

  contactsController = [(HUAddPeopleViewController *)self contactsController];
  [contactsController markDestinationsPending:destinationsCopy];

  _getIDSServiceName = [(HUAddPeopleViewController *)self _getIDSServiceName];
  contactsController2 = [(HUAddPeopleViewController *)self contactsController];
  pendingDestinations = [contactsController2 pendingDestinations];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = _getIDSServiceName;
    v17 = 2112;
    v18 = destinationsCopy;
    v19 = 2112;
    v20 = pendingDestinations;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Performing IDS lookup with service name %@ for destination(s): %@. allPendingDestinations = %@", &v15, 0x20u);
  }

  v12 = objc_alloc(MEMORY[0x277D186D8]);
  v13 = [v12 initWithService:_getIDSServiceName delegate:self queue:MEMORY[0x277D85CD0]];
  [(HUAddPeopleViewController *)self setStatusQueryController:v13];

  statusQueryController3 = [(HUAddPeopleViewController *)self statusQueryController];
  [statusQueryController3 setDestinations:pendingDestinations];
}

- (id)recipientsWithStatusPassingTest:(id)test
{
  v24 = *MEMORY[0x277D85DE8];
  testCopy = test;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  composeView = [(HUAddPeopleViewController *)self composeView];
  recipients = [composeView recipients];

  v7 = [recipients countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(recipients);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        contactsController = [(HUAddPeopleViewController *)self contactsController];
        v13 = [(HUAddPeopleViewController *)self IDSDestinationForRecipient:v11];
        v14 = [contactsController statusForDestination:v13];

        if (testCopy[2](testCopy, v14))
        {
          [array addObject:v11];
        }
      }

      v8 = [recipients countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  if ([array count])
  {
    v15 = array;
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
    composeView = [(HUAddPeopleViewController *)self composeView];
    recipients = [composeView recipients];
    *buf = 138412290;
    v69 = recipients;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to send invitation(s) to recipients: %@", buf, 0xCu);
  }

  v6 = [(HUAddPeopleViewController *)self recipientsWithStatusPassingTest:&__block_literal_global_269_0];
  composeView2 = [(HUAddPeopleViewController *)self composeView];
  recipients2 = [composeView2 recipients];
  v9 = [recipients2 count] == 0;

  if (v9)
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "Failing send due to invalid recipients. ComposeView's recipients count is 0", buf, 2u);
    }

    v13 = [MEMORY[0x277CCA9B8] hf_errorWithCode:40];
    mEMORY[0x277D14640] = [MEMORY[0x277D14640] sharedHandler];
    [mEMORY[0x277D14640] handleError:v13 operationType:*MEMORY[0x277D13BF8] options:0 retryBlock:0 cancelBlock:0];

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
    firstObject = [v6 firstObject];
    address = [firstObject address];
    v67 = address;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];

    if (v11 == 105)
    {
      v64 = v20;
      firstObject2 = [v6 firstObject];
      contact = [firstObject2 contact];
      givenName = [contact givenName];
      v65 = givenName;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];

      v23 = v27;
    }

    mEMORY[0x277D14640]2 = [MEMORY[0x277D14640] sharedHandler];
    [mEMORY[0x277D14640]2 handleError:v13 operationType:*MEMORY[0x277D13BF0] options:v23 retryBlock:0 cancelBlock:0];

    [(HUAddPeopleViewController *)self setState:0];
  }

  else
  {
    unatomizedAddress = [(HUAddPeopleViewController *)self unatomizedAddress];

    if (unatomizedAddress)
    {
      v16 = HFLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        unatomizedAddress2 = [(HUAddPeopleViewController *)self unatomizedAddress];
        *buf = 138412290;
        v69 = unatomizedAddress2;
        _os_log_error_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_ERROR, "Failing send due to invalid unatomized address: %@", buf, 0xCu);
      }

      v13 = [MEMORY[0x277CCA9B8] hf_errorWithCode:40];
      mEMORY[0x277D14640]3 = [MEMORY[0x277D14640] sharedHandler];
      v62 = *MEMORY[0x277D13860];
      unatomizedAddress3 = [(HUAddPeopleViewController *)self unatomizedAddress];
      v63 = unatomizedAddress3;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      [mEMORY[0x277D14640]3 handleError:v13 operationType:*MEMORY[0x277D13BF0] options:v19 retryBlock:0 cancelBlock:0];

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
        uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
        composeView3 = [(HUAddPeopleViewController *)self composeView];
        recipients3 = [composeView3 recipients];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __40__HUAddPeopleViewController_sendInvites__block_invoke_274;
        v58[3] = &unk_277DBD238;
        v29 = uRLQueryAllowedCharacterSet;
        v59 = v29;
        v33 = [recipients3 na_map:v58];

        if ([(HUAddPeopleViewController *)self viewContext]== 1)
        {
          delegate = [(HUAddPeopleViewController *)self delegate];
          v35 = objc_opt_respondsToSelector();

          if (v35)
          {
            delegate2 = [(HUAddPeopleViewController *)self delegate];
            [delegate2 didSelectPeopleForInvite:self inviteeAddresses:v33];
          }

          [(HUAddPeopleViewController *)self setRequiresPresentingViewControllerDismissal:0];
          presentationDelegate = [(HUAddPeopleViewController *)self presentationDelegate];
          v38 = [presentationDelegate finishPresentation:self animated:1];
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
          selfCopy = self;
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
          selfCopy2 = self;
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
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  if (hasOptedToHH2)
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