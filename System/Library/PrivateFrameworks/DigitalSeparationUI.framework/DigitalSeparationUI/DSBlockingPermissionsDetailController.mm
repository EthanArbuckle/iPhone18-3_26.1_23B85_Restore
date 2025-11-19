@interface DSBlockingPermissionsDetailController
- (DSBlockingPermissionsDetailController)initWithPeople:(id)a3 permissions:(id)a4;
- (DSBlockingPermissionsDetailDelegate)permissionsDelegate;
- (DSNavigationDelegate)delegate;
- (id)alertTextForSources:(id)a3;
- (id)sourceNameForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_presentAlertForError:(id)a3;
- (void)_setUpLinkButton;
- (void)_stopFindMyPushNextPane;
- (void)_updateButtons;
- (void)next;
- (void)presentFetchError:(id)a3;
- (void)reloadTableViewData;
- (void)sharingStoppedForSourceNames:(id)a3 error:(id)a4;
- (void)stopAllSharing;
- (void)stopSelectedSharing;
- (void)stopSharingSources:(id)a3 alertLabel:(id)a4 alertDetail:(id)a5 completion:(id)a6;
- (void)viewDidLoad;
@end

@implementation DSBlockingPermissionsDetailController

- (DSBlockingPermissionsDetailController)initWithPeople:(id)a3 permissions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 firstObject];
  if ([v6 count] < 2)
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v9 = [v6 subarrayWithRange:{1, objc_msgSend(v6, "count") - 1}];
  }

  v10 = DSUILocStringForKey(@"SHARING_PERMISSION_TITLE_TEXT_FORMAT_SCWB");
  v11 = MEMORY[0x277CCACA8];
  v12 = [v8 displayName];
  v13 = [v11 stringWithFormat:v10, v12];

  v14 = DSUILocStringForKey(@"SHARING_PERMISSION_DETAIL_TEXT_SCWB");
  v15 = [v8 iconForDetail];
  v20.receiver = self;
  v20.super_class = DSBlockingPermissionsDetailController;
  v16 = [(DSTableWelcomeController *)&v20 initWithTitle:v13 detailText:v14 icon:v15 adoptTableViewScrollView:1 shouldShowSearchBar:0];

  if (v16)
  {
    v17 = os_log_create("com.apple.DigitalSeparation", "DSBlockingPermissionsDetailController");
    v18 = DSLog_17;
    DSLog_17 = v17;

    [(DSBlockingPermissionsDetailController *)v16 setPerson:v8];
    [(DSBlockingPermissionsDetailController *)v16 setRemainingSharingPeople:v9];
    [(DSBlockingPermissionsDetailController *)v16 setPermissions:v7];
  }

  return v16;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = DSBlockingPermissionsDetailController;
  [(DSTableWelcomeController *)&v14 viewDidLoad];
  [(DSBlockingPermissionsDetailController *)self reloadTableViewData];
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 numberOfRowsInSection:0];

  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:0];
      v7 = [(OBTableWelcomeController *)self tableView];
      [v7 selectRowAtIndexPath:v6 animated:0 scrollPosition:0];
    }
  }

  v8 = [(DSBlockingPermissionsDetailController *)self sortedSourceNames];
  if ([v8 count] == 1)
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

  v12 = [(DSTableWelcomeController *)self boldButton];
  v13 = [MEMORY[0x277D75348] grayColor];
  [v12 setTitleColor:v13 forState:2];

  [(DSBlockingPermissionsDetailController *)self _setUpLinkButton];
}

- (void)presentFetchError:(id)a3
{
  v6 = a3;
  v4 = [(DSBlockingPermissionsDetailController *)self navigationController];
  v5 = [v4 visibleViewController];

  if (v5 == self)
  {
    [(DSBlockingPermissionsDetailController *)self _presentAlertForError:v6];
  }

  else
  {
    [(DSBlockingPermissionsDetailController *)self setCachedFetchError:v6];
  }
}

- (void)_presentAlertForError:(id)a3
{
  v7 = [MEMORY[0x277D75110] ds_alertControllerWithFetchSharingError:a3];
  v4 = MEMORY[0x277D750F8];
  v5 = DSUILocStringForKey(@"OK");
  v6 = [v4 actionWithTitle:v5 style:0 handler:&__block_literal_global_21];
  [v7 addAction:v6];

  [(DSBlockingPermissionsDetailController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)reloadTableViewData
{
  v3 = [(DSBlockingPermissionsDetailController *)self person];
  v4 = [v3 sortedSourceNames];
  [(DSBlockingPermissionsDetailController *)self setSortedSourceNames:v4];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 reloadData];

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 layoutIfNeeded];

  [(DSBlockingPermissionsDetailController *)self _updateButtons];
}

- (void)next
{
  v11 = [(DSBlockingPermissionsDetailController *)self permissionsDelegate];
  if (v11)
  {
    v3 = [(DSBlockingPermissionsDetailController *)self remainingSharingPeople];
    v4 = [v3 count];

    if (v4)
    {
      v5 = [DSBlockingPermissionsDetailController alloc];
      v6 = [(DSBlockingPermissionsDetailController *)self remainingSharingPeople];
      v7 = [(DSBlockingPermissionsDetailController *)self permissions];
      v8 = [(DSBlockingPermissionsDetailController *)v5 initWithPeople:v6 permissions:v7];

      [(DSBlockingPermissionsDetailController *)v8 setPermissionsDelegate:v11];
      v9 = [(DSBlockingPermissionsDetailController *)self navigationController];
      [v9 pushViewController:v8 animated:1];
    }

    else
    {
      [v11 reviewSelectedSharingFlowCompleted];
    }
  }

  else
  {
    [(DSBlockingPermissionsDetailController *)self postAnalytics];
    v10 = [(DSBlockingPermissionsDetailController *)self presentingViewController];
    [v10 dismissViewControllerAnimated:1 completion:0];
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
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 indexPathsForSelectedRows];

  v5 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v11 = [(DSBlockingPermissionsDetailController *)self alertTextForSources:v5];
  v12 = DSUILocStringForKey(@"STOP_SHARING_MULTIPLE_BY_PERSON_ALERT_LABEL");
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__DSBlockingPermissionsDetailController_stopSelectedSharing__block_invoke;
  v14[3] = &unk_278F75230;
  objc_copyWeak(&v15, &location);
  [(DSBlockingPermissionsDetailController *)self stopSharingSources:v5 alertLabel:v12 alertDetail:v11 completion:v14];
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
  v3 = [(DSBlockingPermissionsDetailController *)self sortedSourceNames];
  v29 = [v3 copy];

  v4 = [(DSBlockingPermissionsDetailController *)self person];
  v5 = [v4 displayName];

  v6 = [(DSBlockingPermissionsDetailController *)self person];
  v7 = [v6 contact];
  v8 = [v7 termsOfAddress];
  if (v8)
  {
    v9 = [(DSBlockingPermissionsDetailController *)self person];
    v10 = [v9 contact];
    v11 = [v10 termsOfAddress];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v28 = DSUILocStringForKey(@"STOP_ALL_SHARING_BY_PEOPLE_ALERT_LABEL");
  v12 = objc_alloc(MEMORY[0x277CCA898]);
  v13 = DSUILocAttributedStringForKey(@"STOP_ALL_SHARING_BY_PEOPLE_ALERT_DETAIL");
  v14 = *MEMORY[0x277CCA290];
  v37 = v11;
  v38 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v39[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v17 = [v12 initWithFormat:v13 options:0 locale:0 context:v16, v5, v5, v5];

  v18 = [v17 string];
  if ([v29 containsObject:*MEMORY[0x277D05450]])
  {
    v19 = objc_alloc(MEMORY[0x277CCA898]);
    v20 = DSUILocAttributedStringForKey(@"FIND_MY_NOTIFICATION_WARNING_SPECIFIC");
    v34 = v11;
    v35 = v14;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    v36 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v23 = [v19 initWithFormat:v20 options:0 locale:0 context:v22, v5];

    v33[0] = v18;
    v24 = [v23 string];
    v33[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    v26 = [v25 componentsJoinedByString:@" "];

    v18 = v26;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __55__DSBlockingPermissionsDetailController_stopAllSharing__block_invoke;
  v30[3] = &unk_278F75230;
  objc_copyWeak(&v31, &location);
  [(DSBlockingPermissionsDetailController *)self stopSharingSources:v29 alertLabel:v28 alertDetail:v18 completion:v30];
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

- (void)stopSharingSources:(id)a3 alertLabel:(id)a4 alertDetail:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [(DSBlockingPermissionsDetailController *)self person];
  v15 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v12 preferredStyle:0];

  v16 = MEMORY[0x277D750F8];
  v17 = DSUILocStringForKey(@"CANCEL");
  v18 = [v16 actionWithTitle:v17 style:1 handler:&__block_literal_global_373];

  v19 = MEMORY[0x277D750F8];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __94__DSBlockingPermissionsDetailController_stopSharingSources_alertLabel_alertDetail_completion___block_invoke_2;
  v27 = &unk_278F75F78;
  v28 = self;
  v29 = v10;
  v30 = v14;
  v31 = v11;
  v20 = v11;
  v21 = v14;
  v22 = v10;
  v23 = [v19 actionWithTitle:v13 style:2 handler:&v24];

  [v15 addAction:{v23, v24, v25, v26, v27, v28}];
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

- (void)sharingStoppedForSourceNames:(id)a3 error:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = DSLog_17;
    if (os_log_type_enabled(DSLog_17, OS_LOG_TYPE_ERROR))
    {
      v13 = v8;
      v14 = [(DSBlockingPermissionsDetailController *)self person];
      v15 = 138543874;
      v16 = v14;
      v17 = 2114;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      _os_log_error_impl(&dword_248C7E000, v13, OS_LOG_TYPE_ERROR, "Failed to stop sharing %{public}@ from %{public}@ because %{public}@", &v15, 0x20u);
    }

    v9 = [MEMORY[0x277D75110] ds_alertControllerWithStopSharingError:v7];
    [(DSTableWelcomeController *)self presentErrorAlertController:v9];
  }

  else
  {
    v10 = [(DSBlockingPermissionsDetailController *)self person];
    [v10 removeSources:v6];

    v9 = [(DSBlockingPermissionsDetailController *)self permissionsDelegate];
    if (v9)
    {
      v11 = [(DSBlockingPermissionsDetailController *)self person];
      [v9 sharingStoppedForPerson:v11 sourceNames:v6];
    }

    else
    {
      v11 = [(DSBlockingPermissionsDetailController *)self unsharedSources];
      [v11 addObjectsFromArray:v6];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateButtons
{
  v3 = [(DSTableWelcomeController *)self boldButton];
  [v3 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  v4 = [(OBTableWelcomeController *)self tableView];
  v5 = [v4 indexPathsForSelectedRows];
  v6 = [v5 count];

  v7 = [(DSBlockingPermissionsDetailController *)self sortedSourceNames];
  v8 = [v7 count];

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

    v10 = DSUILocStringForKey(v9);
    v11 = [(DSTableWelcomeController *)self boldButton];
    [v11 setTitle:v10 forState:0];

    v12 = [(DSTableWelcomeController *)self boldButton];
    [v12 addTarget:self action:sel_stopAllSharing forControlEvents:64];
  }

  else
  {
    v13 = [(DSTableWelcomeController *)self boldButton];
    v14 = DSUILocStringForKey(@"SCWB_STOP_SELECTED");
    [v13 setTitle:v14 forState:0];

    v10 = [(DSTableWelcomeController *)self boldButton];
    [v10 addTarget:self action:sel_stopSelectedSharing forControlEvents:64];
  }

  v15 = [(DSTableWelcomeController *)self boldButton];
  [v15 setEnabled:v6 != 0];

  v16 = [(DSBlockingPermissionsDetailController *)self person];
  v17 = [v16 sourceNames];
  v18 = [v17 containsObject:*MEMORY[0x277D05450]];

  if ((v18 & 1) == 0)
  {
    v19 = [(DSBlockingPermissionsDetailController *)self remainingSharingPeople];
    v20 = [v19 count];

    v23 = [(DSTableWelcomeController *)self linkButton];
    if (v20)
    {
      v21 = @"SKIP";
    }

    else
    {
      v21 = @"SCWB_SKIP";
    }

    v22 = DSUILocStringForKey(v21);
    [v23 setTitle:v22 forState:0];
  }
}

- (void)_setUpLinkButton
{
  v3 = [(DSBlockingPermissionsDetailController *)self remainingSharingPeople];
  v4 = [v3 count];

  v5 = &selRef_next;
  if (v4)
  {
    v6 = @"SKIP";
  }

  else
  {
    v7 = [(DSBlockingPermissionsDetailController *)self person];
    v8 = [v7 sourceNames];
    v9 = [v8 containsObject:*MEMORY[0x277D05450]];

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
  v4 = [(DSBlockingPermissionsDetailController *)self permissions];
  v5 = [(DSBlockingPermissionsDetailController *)self person];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__DSBlockingPermissionsDetailController__stopFindMyPushNextPane__block_invoke;
  v8[3] = &unk_278F75FA0;
  objc_copyWeak(&v10, &location);
  v6 = v3;
  v9 = v6;
  [v4 stopSharingSources:v6 withPerson:v5 completion:v8];

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

- (id)alertTextForSources:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277D05458];
  v6 = [v4 containsObject:*MEMORY[0x277D05458]];
  v7 = *MEMORY[0x277D05450];
  if (v6 && [v4 containsObject:*MEMORY[0x277D05450]])
  {
    v8 = DSUILocStringForKey(@"HEALTH_AND_FIND_MY_COMBO_STOP_BY_PERSON_ALERT");
    v9 = MEMORY[0x277CCACA8];
    v10 = [(DSBlockingPermissionsDetailController *)self person];
    v11 = [v10 displayName];
    v12 = [(DSBlockingPermissionsDetailController *)self person];
    v13 = [v12 displayName];
    v14 = [v9 stringWithFormat:v8, v11, v13];
  }

  else
  {
    if ([v4 containsObject:v7])
    {
      v15 = v7;
    }

    else if ([v4 containsObject:v5])
    {
      v15 = v5;
    }

    else
    {
      v15 = [v4 firstObject];
    }

    v8 = v15;
    v10 = [(DSBlockingPermissionsDetailController *)self person];
    v14 = [v10 alertTextForSource:v8];
  }

  return v14;
}

- (id)sourceNameForIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 row] < 0 || (v5 = objc_msgSend(v4, "row"), -[DSBlockingPermissionsDetailController sortedSourceNames](self, "sortedSourceNames"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 >= v7))
  {
    v11 = DSLog_17;
    if (os_log_type_enabled(DSLog_17, OS_LOG_TYPE_FAULT))
    {
      [(DSSharingPermissionsDetailController *)v4 sourceNameForIndexPath:v11];
    }

    v10 = 0;
  }

  else
  {
    v8 = [v4 row];
    v9 = [(DSBlockingPermissionsDetailController *)self sortedSourceNames];
    v10 = [v9 objectAtIndexedSubscript:v8];
  }

  return v10;
}

- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSBlockingPermissionsDetailController *)self sourceNameForIndexPath:v5];
  if ([v6 isEqualToString:*MEMORY[0x277D05450]])
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = [(DSBlockingPermissionsDetailController *)self sourceNameForIndexPath:a4];
  if (v5)
  {
    v6 = [MEMORY[0x277D054C0] sourceDescriptorForSource:v5];
    v7 = [(DSBlockingPermissionsDetailController *)self person];
    v8 = [v7 detailTextForSource:v5];

    if (v8)
    {
      v9 = [v5 isEqualToString:*MEMORY[0x277D05450]];
      v10 = [(OBTableWelcomeController *)self tableView];
      v11 = [v6 localizedName];
      v12 = [v6 iconForTable];
      if (v9)
      {
        [DSIconTableViewCell disabledIconTableViewCellFromTableView:v10 withText:v11 detail:v8 icon:v12];
      }

      else
      {
        [DSIconTableViewCell iconTableViewCellFromTableView:v10 withText:v11 detail:v8 icon:v12];
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(DSBlockingPermissionsDetailController *)self sortedSourceNames:a3];
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