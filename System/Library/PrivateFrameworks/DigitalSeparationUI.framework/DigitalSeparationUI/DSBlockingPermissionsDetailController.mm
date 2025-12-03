@interface DSBlockingPermissionsDetailController
- (DSBlockingPermissionsDetailController)initWithPeople:(id)people permissions:(id)permissions;
- (DSBlockingPermissionsDetailDelegate)permissionsDelegate;
- (DSNavigationDelegate)delegate;
- (id)alertTextForSources:(id)sources;
- (id)sourceNameForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_presentAlertForError:(id)error;
- (void)_setUpLinkButton;
- (void)_stopFindMyPushNextPane;
- (void)_updateButtons;
- (void)next;
- (void)presentFetchError:(id)error;
- (void)reloadTableViewData;
- (void)sharingStoppedForSourceNames:(id)names error:(id)error;
- (void)stopAllSharing;
- (void)stopSelectedSharing;
- (void)stopSharingSources:(id)sources alertLabel:(id)label alertDetail:(id)detail completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation DSBlockingPermissionsDetailController

- (DSBlockingPermissionsDetailController)initWithPeople:(id)people permissions:(id)permissions
{
  peopleCopy = people;
  permissionsCopy = permissions;
  firstObject = [peopleCopy firstObject];
  if ([peopleCopy count] < 2)
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v9 = [peopleCopy subarrayWithRange:{1, objc_msgSend(peopleCopy, "count") - 1}];
  }

  v10 = DSUILocStringForKey(@"SHARING_PERMISSION_TITLE_TEXT_FORMAT_SCWB");
  v11 = MEMORY[0x277CCACA8];
  displayName = [firstObject displayName];
  v13 = [v11 stringWithFormat:v10, displayName];

  v14 = DSUILocStringForKey(@"SHARING_PERMISSION_DETAIL_TEXT_SCWB");
  iconForDetail = [firstObject iconForDetail];
  v20.receiver = self;
  v20.super_class = DSBlockingPermissionsDetailController;
  v16 = [(DSTableWelcomeController *)&v20 initWithTitle:v13 detailText:v14 icon:iconForDetail adoptTableViewScrollView:1 shouldShowSearchBar:0];

  if (v16)
  {
    v17 = os_log_create("com.apple.DigitalSeparation", "DSBlockingPermissionsDetailController");
    v18 = DSLog_17;
    DSLog_17 = v17;

    [(DSBlockingPermissionsDetailController *)v16 setPerson:firstObject];
    [(DSBlockingPermissionsDetailController *)v16 setRemainingSharingPeople:v9];
    [(DSBlockingPermissionsDetailController *)v16 setPermissions:permissionsCopy];
  }

  return v16;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = DSBlockingPermissionsDetailController;
  [(DSTableWelcomeController *)&v14 viewDidLoad];
  [(DSBlockingPermissionsDetailController *)self reloadTableViewData];
  tableView = [(OBTableWelcomeController *)self tableView];
  v4 = [tableView numberOfRowsInSection:0];

  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:0];
      tableView2 = [(OBTableWelcomeController *)self tableView];
      [tableView2 selectRowAtIndexPath:v6 animated:0 scrollPosition:0];
    }
  }

  sortedSourceNames = [(DSBlockingPermissionsDetailController *)self sortedSourceNames];
  if ([sortedSourceNames count] == 1)
  {
    v9 = @"SCWB_STOP_SINGLE";
  }

  else
  {
    v9 = @"SCWB_STOP_ALL";
  }

  v10 = DSUILocStringForKey(v9);

  v11 = [DSUIUtilities setUpBoldButtonForController:self title:v10 target:self selector:sel_stopAllSharing];
  [(DSTableWelcomeController *)self setBoldButton:v11];

  boldButton = [(DSTableWelcomeController *)self boldButton];
  grayColor = [MEMORY[0x277D75348] grayColor];
  [boldButton setTitleColor:grayColor forState:2];

  [(DSBlockingPermissionsDetailController *)self _setUpLinkButton];
}

- (void)presentFetchError:(id)error
{
  errorCopy = error;
  navigationController = [(DSBlockingPermissionsDetailController *)self navigationController];
  visibleViewController = [navigationController visibleViewController];

  if (visibleViewController == self)
  {
    [(DSBlockingPermissionsDetailController *)self _presentAlertForError:errorCopy];
  }

  else
  {
    [(DSBlockingPermissionsDetailController *)self setCachedFetchError:errorCopy];
  }
}

- (void)_presentAlertForError:(id)error
{
  v7 = [MEMORY[0x277D75110] ds_alertControllerWithFetchSharingError:error];
  v4 = MEMORY[0x277D750F8];
  v5 = DSUILocStringForKey(@"OK");
  v6 = [v4 actionWithTitle:v5 style:0 handler:&__block_literal_global_21];
  [v7 addAction:v6];

  [(DSBlockingPermissionsDetailController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)reloadTableViewData
{
  person = [(DSBlockingPermissionsDetailController *)self person];
  sortedSourceNames = [person sortedSourceNames];
  [(DSBlockingPermissionsDetailController *)self setSortedSourceNames:sortedSourceNames];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 layoutIfNeeded];

  [(DSBlockingPermissionsDetailController *)self _updateButtons];
}

- (void)next
{
  permissionsDelegate = [(DSBlockingPermissionsDetailController *)self permissionsDelegate];
  if (permissionsDelegate)
  {
    remainingSharingPeople = [(DSBlockingPermissionsDetailController *)self remainingSharingPeople];
    v4 = [remainingSharingPeople count];

    if (v4)
    {
      v5 = [DSBlockingPermissionsDetailController alloc];
      remainingSharingPeople2 = [(DSBlockingPermissionsDetailController *)self remainingSharingPeople];
      permissions = [(DSBlockingPermissionsDetailController *)self permissions];
      v8 = [(DSBlockingPermissionsDetailController *)v5 initWithPeople:remainingSharingPeople2 permissions:permissions];

      [(DSBlockingPermissionsDetailController *)v8 setPermissionsDelegate:permissionsDelegate];
      navigationController = [(DSBlockingPermissionsDetailController *)self navigationController];
      [navigationController pushViewController:v8 animated:1];
    }

    else
    {
      [permissionsDelegate reviewSelectedSharingFlowCompleted];
    }
  }

  else
  {
    [(DSBlockingPermissionsDetailController *)self postAnalytics];
    presentingViewController = [(DSBlockingPermissionsDetailController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

id __54__DSBlockingPermissionsDetailController_postAnalytics__block_invoke(uint64_t a1)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"entrypoint";
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];
  v14[0] = v3;
  v14[1] = MEMORY[0x277CBEC38];
  v13[1] = @"presentedViewController";
  v13[2] = @"numSourcesStoppedSharing";
  v4 = MEMORY[0x277CCABB0];
  v5 = [*(a1 + 32) unsharedSources];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  v14[2] = v6;
  v13[3] = @"fetchErrorCode";
  v7 = MEMORY[0x277CCABB0];
  v8 = [*(a1 + 32) cachedFetchError];
  v9 = [v7 numberWithInteger:{objc_msgSend(v8, "code")}];
  v14[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)stopSelectedSharing
{
  v22 = *MEMORY[0x277D85DE8];
  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = indexPathsForSelectedRows;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [(DSBlockingPermissionsDetailController *)self sourceNameForIndexPath:*(*(&v17 + 1) + 8 * v9)];
        if (v10)
        {
          [array addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v11 = [(DSBlockingPermissionsDetailController *)self alertTextForSources:array];
  v12 = DSUILocStringForKey(@"STOP_SHARING_MULTIPLE_BY_PERSON_ALERT_LABEL");
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__DSBlockingPermissionsDetailController_stopSelectedSharing__block_invoke;
  v14[3] = &unk_278F75230;
  objc_copyWeak(&v15, &location);
  [(DSBlockingPermissionsDetailController *)self stopSharingSources:array alertLabel:v12 alertDetail:v11 completion:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
}

void __60__DSBlockingPermissionsDetailController_stopSelectedSharing__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [WeakRetained tableView];
  v3 = [v2 indexPathsForSelectedRows];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [WeakRetained tableView];
        [v9 deselectRowAtIndexPath:v8 animated:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [WeakRetained _updateButtons];
  [WeakRetained reloadTableViewData];
  v10 = [WeakRetained sortedSourceNames];

  if (!v10)
  {
    [WeakRetained next];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopAllSharing
{
  v39[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  sortedSourceNames = [(DSBlockingPermissionsDetailController *)self sortedSourceNames];
  v29 = [sortedSourceNames copy];

  person = [(DSBlockingPermissionsDetailController *)self person];
  displayName = [person displayName];

  person2 = [(DSBlockingPermissionsDetailController *)self person];
  contact = [person2 contact];
  termsOfAddress = [contact termsOfAddress];
  if (termsOfAddress)
  {
    person3 = [(DSBlockingPermissionsDetailController *)self person];
    contact2 = [person3 contact];
    termsOfAddress2 = [contact2 termsOfAddress];
  }

  else
  {
    termsOfAddress2 = MEMORY[0x277CBEBF8];
  }

  v28 = DSUILocStringForKey(@"STOP_ALL_SHARING_BY_PEOPLE_ALERT_LABEL");
  v12 = objc_alloc(MEMORY[0x277CCA898]);
  v13 = DSUILocAttributedStringForKey(@"STOP_ALL_SHARING_BY_PEOPLE_ALERT_DETAIL");
  v14 = *MEMORY[0x277CCA290];
  v37 = termsOfAddress2;
  v38 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v39[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v17 = [v12 initWithFormat:v13 options:0 locale:0 context:v16, displayName, displayName, displayName];

  string = [v17 string];
  if ([v29 containsObject:*MEMORY[0x277D05450]])
  {
    v19 = objc_alloc(MEMORY[0x277CCA898]);
    v20 = DSUILocAttributedStringForKey(@"FIND_MY_NOTIFICATION_WARNING_SPECIFIC");
    v34 = termsOfAddress2;
    v35 = v14;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    v36 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v23 = [v19 initWithFormat:v20 options:0 locale:0 context:v22, displayName];

    v33[0] = string;
    string2 = [v23 string];
    v33[1] = string2;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    v26 = [v25 componentsJoinedByString:@" "];

    string = v26;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __55__DSBlockingPermissionsDetailController_stopAllSharing__block_invoke;
  v30[3] = &unk_278F75230;
  objc_copyWeak(&v31, &location);
  [(DSBlockingPermissionsDetailController *)self stopSharingSources:v29 alertLabel:v28 alertDetail:string completion:v30];
  objc_destroyWeak(&v31);

  objc_destroyWeak(&location);
  v27 = *MEMORY[0x277D85DE8];
}

void __55__DSBlockingPermissionsDetailController_stopAllSharing__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadTableViewData];
  [WeakRetained next];
}

- (void)stopSharingSources:(id)sources alertLabel:(id)label alertDetail:(id)detail completion:(id)completion
{
  sourcesCopy = sources;
  completionCopy = completion;
  detailCopy = detail;
  labelCopy = label;
  person = [(DSBlockingPermissionsDetailController *)self person];
  v15 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:detailCopy preferredStyle:0];

  v16 = MEMORY[0x277D750F8];
  v17 = DSUILocStringForKey(@"CANCEL");
  v18 = [v16 actionWithTitle:v17 style:1 handler:&__block_literal_global_373];

  v19 = MEMORY[0x277D750F8];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __94__DSBlockingPermissionsDetailController_stopSharingSources_alertLabel_alertDetail_completion___block_invoke_2;
  v27 = &unk_278F75F78;
  selfCopy = self;
  v29 = sourcesCopy;
  v30 = person;
  v31 = completionCopy;
  v20 = completionCopy;
  v21 = person;
  v22 = sourcesCopy;
  v23 = [v19 actionWithTitle:labelCopy style:2 handler:&v24];

  [v15 addAction:{v23, v24, v25, v26, v27, selfCopy}];
  [v15 addAction:v18];
  [(DSBlockingPermissionsDetailController *)self presentViewController:v15 animated:1 completion:0];
}

void __94__DSBlockingPermissionsDetailController_stopSharingSources_alertLabel_alertDetail_completion___block_invoke_2(id *a1)
{
  v2 = [a1[4] buttonTray];
  [v2 showButtonsBusy];

  v3 = [a1[5] count];
  v4 = [a1[6] sourceNames];
  v5 = [v4 count];

  v6 = [a1[4] permissions];
  if (v3 == v5)
  {
    v7 = a1[5];
    v8 = a1[6];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __94__DSBlockingPermissionsDetailController_stopSharingSources_alertLabel_alertDetail_completion___block_invoke_3;
    v17[3] = &unk_278F75F50;
    v17[4] = a1[4];
    v9 = &v18;
    v18 = v7;
    v10 = &v19;
    v19 = a1[7];
    [v6 stopAllSharingWithPerson:v8 completion:v17];
  }

  else
  {
    v11 = a1[5];
    v12 = a1[6];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __94__DSBlockingPermissionsDetailController_stopSharingSources_alertLabel_alertDetail_completion___block_invoke_5;
    v14[3] = &unk_278F75F50;
    v14[4] = a1[4];
    v9 = &v15;
    v13 = v11;
    v15 = v13;
    v10 = &v16;
    v16 = a1[7];
    [v6 stopSharingSources:v13 withPerson:v12 completion:v14];
  }
}

void __94__DSBlockingPermissionsDetailController_stopSharingSources_alertLabel_alertDetail_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__DSBlockingPermissionsDetailController_stopSharingSources_alertLabel_alertDetail_completion___block_invoke_4;
  v6[3] = &unk_278F75F28;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __94__DSBlockingPermissionsDetailController_stopSharingSources_alertLabel_alertDetail_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) sharingStoppedForSourceNames:*(a1 + 40) error:*(a1 + 48)];
  v2 = [*(a1 + 32) buttonTray];
  [v2 showButtonsAvailable];

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

void __94__DSBlockingPermissionsDetailController_stopSharingSources_alertLabel_alertDetail_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__DSBlockingPermissionsDetailController_stopSharingSources_alertLabel_alertDetail_completion___block_invoke_6;
  v6[3] = &unk_278F75F28;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __94__DSBlockingPermissionsDetailController_stopSharingSources_alertLabel_alertDetail_completion___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) sharingStoppedForSourceNames:*(a1 + 40) error:*(a1 + 48)];
  v2 = [*(a1 + 32) buttonTray];
  [v2 showButtonsAvailable];

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

- (void)sharingStoppedForSourceNames:(id)names error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = DSLog_17;
    if (os_log_type_enabled(DSLog_17, OS_LOG_TYPE_ERROR))
    {
      v13 = v8;
      person = [(DSBlockingPermissionsDetailController *)self person];
      v15 = 138543874;
      v16 = person;
      v17 = 2114;
      v18 = namesCopy;
      v19 = 2114;
      v20 = errorCopy;
      _os_log_error_impl(&dword_248C7E000, v13, OS_LOG_TYPE_ERROR, "Failed to stop sharing %{public}@ from %{public}@ because %{public}@", &v15, 0x20u);
    }

    permissionsDelegate = [MEMORY[0x277D75110] ds_alertControllerWithStopSharingError:errorCopy];
    [(DSTableWelcomeController *)self presentErrorAlertController:permissionsDelegate];
  }

  else
  {
    person2 = [(DSBlockingPermissionsDetailController *)self person];
    [person2 removeSources:namesCopy];

    permissionsDelegate = [(DSBlockingPermissionsDetailController *)self permissionsDelegate];
    if (permissionsDelegate)
    {
      person3 = [(DSBlockingPermissionsDetailController *)self person];
      [permissionsDelegate sharingStoppedForPerson:person3 sourceNames:namesCopy];
    }

    else
    {
      person3 = [(DSBlockingPermissionsDetailController *)self unsharedSources];
      [person3 addObjectsFromArray:namesCopy];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateButtons
{
  boldButton = [(DSTableWelcomeController *)self boldButton];
  [boldButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  v6 = [indexPathsForSelectedRows count];

  sortedSourceNames = [(DSBlockingPermissionsDetailController *)self sortedSourceNames];
  v8 = [sortedSourceNames count];

  if (v6 == v8)
  {
    if (v6 == 1)
    {
      v9 = @"SCWB_STOP_SINGLE";
    }

    else
    {
      v9 = @"SCWB_STOP_ALL";
    }

    boldButton5 = DSUILocStringForKey(v9);
    boldButton2 = [(DSTableWelcomeController *)self boldButton];
    [boldButton2 setTitle:boldButton5 forState:0];

    boldButton3 = [(DSTableWelcomeController *)self boldButton];
    [boldButton3 addTarget:self action:sel_stopAllSharing forControlEvents:64];
  }

  else
  {
    boldButton4 = [(DSTableWelcomeController *)self boldButton];
    v14 = DSUILocStringForKey(@"SCWB_STOP_SELECTED");
    [boldButton4 setTitle:v14 forState:0];

    boldButton5 = [(DSTableWelcomeController *)self boldButton];
    [boldButton5 addTarget:self action:sel_stopSelectedSharing forControlEvents:64];
  }

  boldButton6 = [(DSTableWelcomeController *)self boldButton];
  [boldButton6 setEnabled:v6 != 0];

  person = [(DSBlockingPermissionsDetailController *)self person];
  sourceNames = [person sourceNames];
  v18 = [sourceNames containsObject:*MEMORY[0x277D05450]];

  if ((v18 & 1) == 0)
  {
    remainingSharingPeople = [(DSBlockingPermissionsDetailController *)self remainingSharingPeople];
    v20 = [remainingSharingPeople count];

    linkButton = [(DSTableWelcomeController *)self linkButton];
    if (v20)
    {
      v21 = @"SKIP";
    }

    else
    {
      v21 = @"SCWB_SKIP";
    }

    v22 = DSUILocStringForKey(v21);
    [linkButton setTitle:v22 forState:0];
  }
}

- (void)_setUpLinkButton
{
  remainingSharingPeople = [(DSBlockingPermissionsDetailController *)self remainingSharingPeople];
  v4 = [remainingSharingPeople count];

  v5 = &selRef_next;
  if (v4)
  {
    v6 = @"SKIP";
  }

  else
  {
    person = [(DSBlockingPermissionsDetailController *)self person];
    sourceNames = [person sourceNames];
    v9 = [sourceNames containsObject:*MEMORY[0x277D05450]];

    if (v9)
    {
      v6 = @"SCWB_SKIP_HAS_LOCATION";
    }

    else
    {
      v6 = @"SCWB_SKIP";
    }

    if (v9)
    {
      v5 = &selRef__stopFindMyPushNextPane;
    }
  }

  v11 = DSUILocStringForKey(v6);
  v10 = [DSUIUtilities setUpLinkButtonForController:self title:v11 target:self selector:*v5];
  [(DSTableWelcomeController *)self setLinkButton:v10];
}

- (void)_stopFindMyPushNextPane
{
  v12[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v12[0] = *MEMORY[0x277D05450];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  permissions = [(DSBlockingPermissionsDetailController *)self permissions];
  person = [(DSBlockingPermissionsDetailController *)self person];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__DSBlockingPermissionsDetailController__stopFindMyPushNextPane__block_invoke;
  v8[3] = &unk_278F75FA0;
  objc_copyWeak(&v10, &location);
  v6 = v3;
  v9 = v6;
  [permissions stopSharingSources:v6 withPerson:person completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  v7 = *MEMORY[0x277D85DE8];
}

void __64__DSBlockingPermissionsDetailController__stopFindMyPushNextPane__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DSLog_17;
    if (os_log_type_enabled(DSLog_17, OS_LOG_TYPE_ERROR))
    {
      __64__DSBlockingPermissionsDetailController__stopFindMyPushNextPane__block_invoke_cold_1(v3, v4);
    }
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__DSBlockingPermissionsDetailController__stopFindMyPushNextPane__block_invoke_393;
  v5[3] = &unk_278F752A8;
  objc_copyWeak(&v7, (a1 + 40));
  v6 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __64__DSBlockingPermissionsDetailController__stopFindMyPushNextPane__block_invoke_393(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained sharingStoppedForSourceNames:*(a1 + 32) error:0];
  [WeakRetained next];
}

- (id)alertTextForSources:(id)sources
{
  sourcesCopy = sources;
  v5 = *MEMORY[0x277D05458];
  v6 = [sourcesCopy containsObject:*MEMORY[0x277D05458]];
  v7 = *MEMORY[0x277D05450];
  if (v6 && [sourcesCopy containsObject:*MEMORY[0x277D05450]])
  {
    v8 = DSUILocStringForKey(@"HEALTH_AND_FIND_MY_COMBO_STOP_BY_PERSON_ALERT");
    v9 = MEMORY[0x277CCACA8];
    person = [(DSBlockingPermissionsDetailController *)self person];
    displayName = [person displayName];
    person2 = [(DSBlockingPermissionsDetailController *)self person];
    displayName2 = [person2 displayName];
    v14 = [v9 stringWithFormat:v8, displayName, displayName2];
  }

  else
  {
    if ([sourcesCopy containsObject:v7])
    {
      firstObject = v7;
    }

    else if ([sourcesCopy containsObject:v5])
    {
      firstObject = v5;
    }

    else
    {
      firstObject = [sourcesCopy firstObject];
    }

    v8 = firstObject;
    person = [(DSBlockingPermissionsDetailController *)self person];
    v14 = [person alertTextForSource:v8];
  }

  return v14;
}

- (id)sourceNameForIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row] < 0 || (v5 = objc_msgSend(pathCopy, "row"), -[DSBlockingPermissionsDetailController sortedSourceNames](self, "sortedSourceNames"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 >= v7))
  {
    v11 = DSLog_17;
    if (os_log_type_enabled(DSLog_17, OS_LOG_TYPE_FAULT))
    {
      [(DSSharingPermissionsDetailController *)pathCopy sourceNameForIndexPath:v11];
    }

    v10 = 0;
  }

  else
  {
    v8 = [pathCopy row];
    sortedSourceNames = [(DSBlockingPermissionsDetailController *)self sortedSourceNames];
    v10 = [sortedSourceNames objectAtIndexedSubscript:v8];
  }

  return v10;
}

- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(DSBlockingPermissionsDetailController *)self sourceNameForIndexPath:pathCopy];
  if ([v6 isEqualToString:*MEMORY[0x277D05450]])
  {
    v7 = 0;
  }

  else
  {
    v7 = pathCopy;
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = [(DSBlockingPermissionsDetailController *)self sourceNameForIndexPath:path];
  if (v5)
  {
    v6 = [MEMORY[0x277D054C0] sourceDescriptorForSource:v5];
    person = [(DSBlockingPermissionsDetailController *)self person];
    v8 = [person detailTextForSource:v5];

    if (v8)
    {
      v9 = [v5 isEqualToString:*MEMORY[0x277D05450]];
      tableView = [(OBTableWelcomeController *)self tableView];
      localizedName = [v6 localizedName];
      iconForTable = [v6 iconForTable];
      if (v9)
      {
        [DSIconTableViewCell disabledIconTableViewCellFromTableView:tableView withText:localizedName detail:v8 icon:iconForTable];
      }

      else
      {
        [DSIconTableViewCell iconTableViewCellFromTableView:tableView withText:localizedName detail:v8 icon:iconForTable];
      }
      v14 = ;
    }

    else
    {
      v14 = 0;
    }

    [v14 setAccessoryType:0];
    v13 = v14;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(DSBlockingPermissionsDetailController *)self sortedSourceNames:view];
  v5 = [v4 count];

  if (v5 < 0)
  {
    v6 = DSLog_17;
    if (os_log_type_enabled(DSLog_17, OS_LOG_TYPE_FAULT))
    {
      [DSSharingPermissionsDetailController tableView:v6 numberOfRowsInSection:?];
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DSBlockingPermissionsDetailDelegate)permissionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_permissionsDelegate);

  return WeakRetained;
}

void __64__DSBlockingPermissionsDetailController__stopFindMyPushNextPane__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "stopFindMyPushNextPane: error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end