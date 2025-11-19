@interface DSSharingPermissionsDetailController
+ (id)detailControllerWithPeople:(id)a3 startingViewController:(id)a4 delegate:(id)a5;
+ (id)detailControllerWithSharingTypes:(id)a3 startingViewController:(id)a4 delegate:(id)a5;
+ (void)initialize;
- (DSSharingPermissionsDetailDelegate)delegate;
- (id)alertTextForSources:(id)a3;
- (id)personForIndexPath:(id)a3;
- (id)sourceNameForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateButton;
- (void)checkDisplayNames;
- (void)next;
- (void)reloadTableViewData;
- (void)sharingStoppedForPerson:(id)a3 sourceNames:(id)a4 error:(id)a5;
- (void)sharingStoppedForType:(id)a3 people:(id)a4 error:(id)a5;
- (void)stopAllSharing;
- (void)stopSelectedSharing;
- (void)stopSharingSources:(id)a3 people:(id)a4 alertLabel:(id)a5 alertDetail:(id)a6 completion:(id)a7;
- (void)viewDidLoad;
@end

@implementation DSSharingPermissionsDetailController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    DSLogSharingPermissionsDetail = os_log_create("com.apple.DigitalSeparation", "DSSharingByPersonDetail");

    MEMORY[0x2821F96F8]();
  }
}

+ (id)detailControllerWithPeople:(id)a3 startingViewController:(id)a4 delegate:(id)a5
{
  v7 = a3;
  v23 = a5;
  v8 = a4;
  v9 = [v7 firstObject];
  if ([v7 count] < 2)
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v10 = [v7 subarrayWithRange:{1, objc_msgSend(v7, "count") - 1}];
  }

  v11 = DSUILocStringForKey(@"REVIEW_SHARING_WITH_FORMAT");
  v12 = MEMORY[0x277CCACA8];
  v13 = [v9 displayName];
  v14 = [v12 stringWithFormat:v11, v13];

  v15 = DSUILocStringForKey(@"SHARING_PERMISSION_DETAIL_TEXT_FORMAT");
  v16 = MEMORY[0x277CCACA8];
  v17 = [v9 displayName];
  v18 = [v16 stringWithFormat:v15, v17];

  v19 = [DSSharingPermissionsDetailController alloc];
  v20 = [v9 iconForDetail];
  v21 = [(DSTableWelcomeController *)v19 initWithTitle:v14 detailText:v18 icon:v20 adoptTableViewScrollView:1 shouldShowSearchBar:0];

  [(DSSharingPermissionsDetailController *)v21 setSharingPerson:v9];
  [(DSSharingPermissionsDetailController *)v21 setRemainingPeople:v10];
  [(DSSharingPermissionsDetailController *)v21 setStartingViewController:v8];

  [(DSSharingPermissionsDetailController *)v21 setDelegate:v23];

  return v21;
}

+ (id)detailControllerWithSharingTypes:(id)a3 startingViewController:(id)a4 delegate:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v7 firstObject];
  if ([v7 count] < 2)
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v11 = [v7 subarrayWithRange:{1, objc_msgSend(v7, "count") - 1}];
  }

  v12 = MEMORY[0x277D054C0];
  v13 = [v10 source];
  v14 = [v13 name];
  v15 = [v12 sourceDescriptorForSource:v14];

  v16 = [v15 localizedStopByTypeSubtitleForSharingType:v10];
  v17 = [DSSharingPermissionsDetailController alloc];
  v18 = [v10 displayName];
  v19 = [(DSTableWelcomeController *)v17 initWithTitle:v18 detailText:v16 icon:0 adoptTableViewScrollView:1 shouldShowSearchBar:0];

  v20 = [v10 iconForDetail];
  [(DSTableWelcomeController *)v19 addBorderedIcon:v20];

  [(DSSharingPermissionsDetailController *)v19 setSharingType:v10];
  [(DSSharingPermissionsDetailController *)v19 setRemainingSharingTypes:v11];
  [(DSSharingPermissionsDetailController *)v19 setStartingViewController:v9];

  [(DSSharingPermissionsDetailController *)v19 setDelegate:v8];

  return v19;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = DSSharingPermissionsDetailController;
  [(DSTableWelcomeController *)&v7 viewDidLoad];
  [(DSSharingPermissionsDetailController *)self checkDisplayNames];
  [(DSSharingPermissionsDetailController *)self reloadTableViewData];
  v3 = DSUILocStringForKey(@"SKIP");
  v4 = [DSUIUtilities setUpBoldButtonForController:self title:v3 target:self selector:sel_next];
  [(DSTableWelcomeController *)self setBoldButton:v4];

  v5 = DSUILocStringForKey(@"STOP_ALL_SHARING");
  v6 = [DSUIUtilities setUpLinkButtonForController:self title:v5 target:self selector:sel_stopAllSharing];
  [(DSTableWelcomeController *)self setLinkButton:v6];
}

- (void)reloadTableViewData
{
  v3 = [(DSSharingPermissionsDetailController *)self sharingPerson];
  v4 = [v3 sortedSourceNames];
  [(DSSharingPermissionsDetailController *)self setSortedSourceNames:v4];

  v5 = [(DSSharingPermissionsDetailController *)self sharingType];
  v6 = [v5 sortedPeople];
  [(DSSharingPermissionsDetailController *)self setSortedPeople:v6];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 reloadData];

  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 layoutIfNeeded];
}

- (void)checkDisplayNames
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(DSSharingPermissionsDetailController *)self sharingType];

  if (v3)
  {
    v4 = MEMORY[0x277D054C0];
    v5 = [(DSSharingPermissionsDetailController *)self sharingType];
    v6 = [v5 source];
    v7 = [v6 name];
    v8 = [v4 sourceDescriptorForSource:v7];

    v9 = [(DSSharingPermissionsDetailController *)self sharingType];
    v10 = [v9 sortedPeople];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [v8 localizedResourceNamesForPerson:{*(*(&v19 + 1) + 8 * v15), v19}];
          v17 = [v16 length];

          if (!v17)
          {

            goto LABEL_12;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    [(DSSharingPermissionsDetailController *)self setHasDisplayNames:1];
LABEL_12:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSSharingPermissionsDetailController *)self sharingPerson];

  if (!v6)
  {
    v7 = [(DSSharingPermissionsDetailController *)self personForIndexPath:v5];

    if (v7)
    {
      if ([(DSSharingPermissionsDetailController *)self hasDisplayNames])
      {
        v15 = MEMORY[0x277D054C0];
        v16 = [(DSSharingPermissionsDetailController *)self sharingType];
        v17 = [v16 source];
        v18 = [v17 name];
        v19 = [v15 sourceDescriptorForSource:v18];

        v8 = [v19 localizedResourceNamesForPerson:v7];
      }

      else
      {
        v8 = &stru_285BA4988;
      }

      v10 = [(OBTableWelcomeController *)self tableView];
      v11 = [v7 displayName];
      v12 = [v7 iconForTable];
      v14 = [DSIconTableViewCell iconTableViewCellFromTableView:v10 withText:v11 detail:v8 icon:v12];
      goto LABEL_12;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_14;
  }

  v7 = [(DSSharingPermissionsDetailController *)self sourceNameForIndexPath:v5];

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [MEMORY[0x277D054C0] sourceDescriptorForSource:v7];
  v9 = [(DSSharingPermissionsDetailController *)self sharingPerson];
  v10 = [(__CFString *)v8 localizedStopByPerson:v9];

  if (v10)
  {
    v11 = [(OBTableWelcomeController *)self tableView];
    v12 = [(__CFString *)v8 localizedName];
    v13 = [(__CFString *)v8 iconForTable];
    v14 = [DSIconTableViewCell iconTableViewCellFromTableView:v11 withText:v12 detail:v10 icon:v13];

LABEL_12:
    goto LABEL_13;
  }

  v14 = 0;
LABEL_13:

  [v14 setAccessoryType:0];
LABEL_14:

  return v14;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(DSSharingPermissionsDetailController *)self sharingPerson:a3];

  if (v5)
  {
    [(DSSharingPermissionsDetailController *)self sortedSourceNames];
  }

  else
  {
    [(DSSharingPermissionsDetailController *)self sortedPeople];
  }
  v6 = ;
  v7 = [v6 count];

  if (v7 < 0)
  {
    v8 = DSLogSharingPermissionsDetail;
    if (os_log_type_enabled(DSLogSharingPermissionsDetail, OS_LOG_TYPE_FAULT))
    {
      [DSSharingPermissionsDetailController tableView:v8 numberOfRowsInSection:?];
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)sourceNameForIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 row] < 0 || (v5 = objc_msgSend(v4, "row"), -[DSSharingPermissionsDetailController sortedSourceNames](self, "sortedSourceNames"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 >= v7))
  {
    v11 = DSLogSharingPermissionsDetail;
    if (os_log_type_enabled(DSLogSharingPermissionsDetail, OS_LOG_TYPE_FAULT))
    {
      [(DSSharingPermissionsDetailController *)v4 sourceNameForIndexPath:v11];
    }

    v10 = 0;
  }

  else
  {
    v8 = [v4 row];
    v9 = [(DSSharingPermissionsDetailController *)self sortedSourceNames];
    v10 = [v9 objectAtIndexedSubscript:v8];
  }

  return v10;
}

- (id)personForIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 row] < 0 || (v5 = objc_msgSend(v4, "row"), -[DSSharingPermissionsDetailController sortedPeople](self, "sortedPeople"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 >= v7))
  {
    v11 = DSLogSharingPermissionsDetail;
    if (os_log_type_enabled(DSLogSharingPermissionsDetail, OS_LOG_TYPE_FAULT))
    {
      [(DSSharingPermissionsDetailController *)v4 personForIndexPath:v11];
    }

    v10 = 0;
  }

  else
  {
    v8 = [v4 row];
    v9 = [(DSSharingPermissionsDetailController *)self sortedPeople];
    v10 = [v9 objectAtIndexedSubscript:v8];
  }

  return v10;
}

- (void)stopAllSharing
{
  v42[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = [(DSSharingPermissionsDetailController *)self sortedSourceNames];
  v32 = [v3 copy];

  v4 = [(DSSharingPermissionsDetailController *)self sharingPerson];

  if (v4)
  {
    v5 = [(DSSharingPermissionsDetailController *)self sharingPerson];
    v6 = [v5 displayName];

    v7 = [(DSSharingPermissionsDetailController *)self sharingPerson];
    v8 = [v7 termsOfAddress];

    v9 = DSUILocStringForKey(@"STOP_ALL_SHARING_BY_PEOPLE_ALERT_LABEL");
    v10 = objc_alloc(MEMORY[0x277CCA898]);
    v11 = DSUILocAttributedStringForKey(@"STOP_ALL_SHARING_BY_PEOPLE_ALERT_DETAIL");
    v12 = *MEMORY[0x277CCA290];
    v41 = *MEMORY[0x277CCA290];
    v40 = v8;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    v42[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v15 = [v10 initWithFormat:v11 options:0 locale:0 context:v14, v6, v6, v6];

    v16 = [v15 string];
    if ([v32 containsObject:*MEMORY[0x277D05450]])
    {
      v17 = objc_alloc(MEMORY[0x277CCA898]);
      v18 = DSUILocAttributedStringForKey(@"FIND_MY_NOTIFICATION_WARNING_SPECIFIC");
      v37 = v8;
      v38 = v12;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      v39 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v21 = [v17 initWithFormat:v18 options:0 locale:0 context:v20, v6];

      v36[0] = v16;
      v22 = [v21 string];
      v36[1] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
      v24 = [v23 componentsJoinedByString:@" "];

      v16 = v24;
    }
  }

  else
  {
    v25 = MEMORY[0x277D054C0];
    v26 = [(DSSharingPermissionsDetailController *)self sharingType];
    v27 = [v26 source];
    v28 = [v27 name];
    v6 = [v25 sourceDescriptorForSource:v28];

    v9 = [v6 localizedStopAllAlertLabel];
    if (![v6 supportsResourceTypes])
    {
      v16 = [v6 localizedStopAllAlertDetail];
      goto LABEL_7;
    }

    v8 = [(DSSharingPermissionsDetailController *)self sharingType];
    v15 = [v8 allPeople];
    v16 = [v6 localizedStopAllAlertDetailForPeople:v15];
  }

LABEL_7:
  v29 = [(DSSharingPermissionsDetailController *)self sortedPeople];
  v30 = [v29 copy];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __54__DSSharingPermissionsDetailController_stopAllSharing__block_invoke;
  v33[3] = &unk_278F75230;
  objc_copyWeak(&v34, &location);
  [(DSSharingPermissionsDetailController *)self stopSharingSources:v32 people:v30 alertLabel:v9 alertDetail:v16 completion:v33];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
  v31 = *MEMORY[0x277D85DE8];
}

void __54__DSSharingPermissionsDetailController_stopAllSharing__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadTableViewData];
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
    v10 = [(DSSharingPermissionsDetailController *)self sharingPerson];
    v11 = [v10 displayName];
    v12 = [(DSSharingPermissionsDetailController *)self sharingPerson];
    v13 = [v12 displayName];
    v14 = [v9 stringWithFormat:v8, v11, v13];

    goto LABEL_11;
  }

  if ([v4 containsObject:v7])
  {
    v15 = MEMORY[0x277D054C0];
    v16 = v7;
  }

  else
  {
    v17 = [v4 containsObject:v5];
    v18 = MEMORY[0x277D054C0];
    if (!v17)
    {
      v19 = [v4 firstObject];
      v8 = [v18 sourceDescriptorForSource:v19];

      goto LABEL_10;
    }

    v15 = MEMORY[0x277D054C0];
    v16 = v5;
  }

  v8 = [v15 sourceDescriptorForSource:v16];
LABEL_10:
  v10 = [(DSSharingPermissionsDetailController *)self sharingPerson];
  v14 = [v8 localizedAlertTextForPerson:v10];
LABEL_11:

  return v14;
}

- (void)stopSelectedSharing
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 indexPathsForSelectedRows];

  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [(DSSharingPermissionsDetailController *)self sharingPerson];

  if (v7)
  {
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [(DSSharingPermissionsDetailController *)self sourceNameForIndexPath:*(*(&v32 + 1) + 8 * i)];
          if (v12)
          {
            [v5 addObject:v12];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v9);
    }

    v13 = [(DSSharingPermissionsDetailController *)self alertTextForSources:v5];
    v14 = DSUILocStringForKey(@"STOP_SHARING_MULTIPLE_BY_PERSON_ALERT_LABEL");
  }

  else
  {
    v30 = 0uLL;
    v31 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v15 = v4;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v16)
    {
      v17 = *v29;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [(DSSharingPermissionsDetailController *)self personForIndexPath:*(*(&v28 + 1) + 8 * j)];
          if (v19)
          {
            [v6 addObject:v19];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v16);
    }

    v20 = [(DSSharingPermissionsDetailController *)self sharingType];
    v21 = [v20 source];
    v22 = [v21 name];

    v23 = [MEMORY[0x277D054C0] sourceDescriptorForSource:v22];
    v13 = [v23 localizedAlertDetailForSelectedPeople:v6];
    v14 = [v23 localizedAlertButtonLabel];
  }

  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __59__DSSharingPermissionsDetailController_stopSelectedSharing__block_invoke;
  v25[3] = &unk_278F75230;
  objc_copyWeak(&v26, &location);
  [(DSSharingPermissionsDetailController *)self stopSharingSources:v5 people:v6 alertLabel:v14 alertDetail:v13 completion:v25];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  v24 = *MEMORY[0x277D85DE8];
}

void __59__DSSharingPermissionsDetailController_stopSelectedSharing__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [WeakRetained tableView];
  v3 = [v2 indexPathsForSelectedRows];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [WeakRetained tableView];
        [v9 deselectRowAtIndexPath:v8 animated:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [WeakRetained _updateButton];
  [WeakRetained reloadTableViewData];
  [WeakRetained next];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sharingStoppedForPerson:(id)a3 sourceNames:(id)a4 error:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DSSharingPermissionsDetailController *)self delegate];
  v12 = v11;
  if (v10)
  {
    v13 = DSLogSharingPermissionsDetail;
    if (os_log_type_enabled(DSLogSharingPermissionsDetail, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v26 = v8;
      v27 = 2114;
      v28 = v9;
      v29 = 2114;
      v30 = v10;
      _os_log_error_impl(&dword_248C7E000, v13, OS_LOG_TYPE_ERROR, "Failed to stop sharing %{public}@ from %{public}@ because %{public}@", buf, 0x20u);
    }

    [v12 stopSharingFailedWithError:v10];
  }

  else
  {
    [v11 sharingStoppedForPerson:v8 sourceNames:v9];
    v14 = [(DSSharingPermissionsDetailController *)self sortedSourceNames];
    v15 = [v14 count];
    v16 = [v9 count];

    if (v15 == v16)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = DSUILocStringForKey(@"NO_SHARING_INFORMATION_PERSON");
      v19 = [v8 displayName];
      v20 = [v17 localizedStringWithFormat:v18, v19];

      v21 = [MEMORY[0x277D755B8] systemImageNamed:@"person.fill"];
      [(DSTableWelcomeController *)self showNoSharingViewWithText:v20 image:v21];

      [(DSTableWelcomeController *)self setIsModelEmpty:1];
      v22 = [(DSSharingPermissionsDetailController *)self buttonTray];
      v23 = [(DSTableWelcomeController *)self linkButton];
      [v22 removeButton:v23];

      [(DSSharingPermissionsDetailController *)self _updateButton];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)sharingStoppedForType:(id)a3 people:(id)a4 error:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DSSharingPermissionsDetailController *)self delegate];
  v12 = v11;
  if (v10)
  {
    v13 = DSLogSharingPermissionsDetail;
    if (os_log_type_enabled(DSLogSharingPermissionsDetail, OS_LOG_TYPE_ERROR))
    {
      v25 = v13;
      v26 = [v8 displayName];
      *buf = 138543874;
      v28 = v26;
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = v10;
      _os_log_error_impl(&dword_248C7E000, v25, OS_LOG_TYPE_ERROR, "Failed to stop sharing %{public}@ with %{public}@ because %{public}@", buf, 0x20u);
    }

    [v12 stopSharingFailedWithError:v10];
  }

  else
  {
    [v11 sharingStoppedForType:v8 people:v9];
    v14 = [(DSSharingPermissionsDetailController *)self sortedPeople];
    v15 = [v14 count];
    v16 = [v9 count];

    if (v15 == v16)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = DSUILocStringForKey(@"NO_SHARING_INFORMATION_TYPE");
      v19 = [v8 displayName];
      v20 = [v17 localizedStringWithFormat:v18, v19];

      v21 = [MEMORY[0x277D755B8] systemImageNamed:@"person.3.fill"];
      [(DSTableWelcomeController *)self showNoSharingViewWithText:v20 image:v21];

      [(DSTableWelcomeController *)self setIsModelEmpty:1];
      v22 = [(DSSharingPermissionsDetailController *)self buttonTray];
      v23 = [(DSTableWelcomeController *)self linkButton];
      [v22 removeButton:v23];

      [(DSSharingPermissionsDetailController *)self _updateButton];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingSources:(id)a3 people:(id)a4 alertLabel:(id)a5 alertDetail:(id)a6 completion:(id)a7
{
  v30 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a6;
  v31 = a5;
  v15 = [(DSSharingPermissionsDetailController *)self sharingPerson];
  v16 = [(DSSharingPermissionsDetailController *)self sharingType];
  v17 = [(DSSharingPermissionsDetailController *)self delegate];
  v18 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v14 preferredStyle:0];

  v19 = MEMORY[0x277D750F8];
  v20 = DSUILocStringForKey(@"CANCEL");
  v29 = [v19 actionWithTitle:v20 style:1 handler:&__block_literal_global_1];

  v21 = MEMORY[0x277D750F8];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_2;
  v32[3] = &unk_278F75280;
  v32[4] = self;
  v33 = v15;
  v37 = v12;
  v38 = v13;
  v34 = v30;
  v35 = v17;
  v36 = v16;
  v22 = v12;
  v23 = v16;
  v24 = v17;
  v25 = v13;
  v26 = v30;
  v27 = v15;
  v28 = [v21 actionWithTitle:v31 style:2 handler:v32];

  [v18 addAction:v28];
  [v18 addAction:v29];
  [(DSSharingPermissionsDetailController *)self presentViewController:v18 animated:1 completion:0];
}

void __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_2(id *a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] buttonTray];
  [v2 showButtonsBusy];

  if (a1[5])
  {
    v3 = [a1[6] count];
    v4 = [a1[5] sortedSourceNames];
    v5 = [v4 count];

    v6 = a1[5];
    if (v3 == v5)
    {
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_3;
      v52[3] = &unk_278F75258;
      v7 = a1[5];
      v52[4] = a1[4];
      v53 = v7;
      v54 = a1[6];
      v55 = a1[10];
      [v6 stopAllSharingOnQueue:MEMORY[0x277D85CD0] completion:v52];

      v8 = v53;
    }

    else
    {
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_4;
      v48[3] = &unk_278F75258;
      v25 = a1[5];
      v26 = a1[6];
      v48[4] = a1[4];
      v49 = v25;
      v50 = a1[6];
      v51 = a1[10];
      [v6 stopSharingSourceNames:v26 queue:MEMORY[0x277D85CD0] completion:v48];

      v8 = v49;
    }
  }

  else
  {
    v9 = [a1[7] permissions];
    v10 = [v9 allPublicSharingTypes];
    v11 = v10;
    v12 = MEMORY[0x277CBEBF8];
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v45;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v44 + 1) + 8 * v18) source];
          v20 = [v19 name];
          v21 = [a1[8] source];
          v22 = [v21 name];
          v23 = [v20 isEqualToString:v22];

          if (v23)
          {
            v24 = 1;
            goto LABEL_18;
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v44 objects:v56 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v24 = 0;
LABEL_18:

    v27 = [a1[9] count];
    v28 = [a1[8] sortedPeople];
    v29 = [v28 count];

    v30 = a1[8];
    if ((v24 & 1) != 0 || v27 != v29)
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_6;
      v36[3] = &unk_278F75258;
      v36[4] = a1[4];
      v31 = &v37;
      v34 = a1[9];
      v37 = a1[8];
      v32 = &v38;
      v38 = a1[9];
      v33 = &v39;
      v39 = a1[10];
      [v30 stopSharingPeople:v34 queue:MEMORY[0x277D85CD0] completion:v36];
    }

    else
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_5;
      v40[3] = &unk_278F75258;
      v40[4] = a1[4];
      v31 = &v41;
      v41 = a1[8];
      v32 = &v42;
      v42 = a1[9];
      v33 = &v43;
      v43 = a1[10];
      [v30 stopAllSharingOnQueue:MEMORY[0x277D85CD0] completion:v40];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) sharingStoppedForPerson:*(a1 + 40) sourceNames:*(a1 + 48) error:a2];
  v3 = [*(a1 + 32) buttonTray];
  [v3 showButtonsAvailable];

  v4 = *(*(a1 + 56) + 16);

  return v4();
}

uint64_t __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) sharingStoppedForPerson:*(a1 + 40) sourceNames:*(a1 + 48) error:a2];
  v3 = [*(a1 + 32) buttonTray];
  [v3 showButtonsAvailable];

  v4 = *(*(a1 + 56) + 16);

  return v4();
}

uint64_t __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) sharingStoppedForType:*(a1 + 40) people:*(a1 + 48) error:a2];
  v3 = [*(a1 + 32) buttonTray];
  [v3 showButtonsAvailable];

  v4 = *(*(a1 + 56) + 16);

  return v4();
}

uint64_t __100__DSSharingPermissionsDetailController_stopSharingSources_people_alertLabel_alertDetail_completion___block_invoke_6(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) sharingStoppedForType:*(a1 + 40) people:*(a1 + 48) error:a2];
  v3 = [*(a1 + 32) buttonTray];
  [v3 showButtonsAvailable];

  v4 = *(*(a1 + 56) + 16);

  return v4();
}

- (void)next
{
  v12 = [(DSSharingPermissionsDetailController *)self delegate];
  v3 = [(DSSharingPermissionsDetailController *)self remainingPeople];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(DSSharingPermissionsDetailController *)self remainingPeople];
    v6 = [(DSSharingPermissionsDetailController *)self startingViewController];
    v7 = [DSSharingPermissionsDetailController detailControllerWithPeople:v5 startingViewController:v6 delegate:v12];
  }

  else
  {
    v8 = [(DSSharingPermissionsDetailController *)self remainingSharingTypes];
    v9 = [v8 count];

    if (!v9)
    {
      goto LABEL_7;
    }

    v5 = [(DSSharingPermissionsDetailController *)self remainingSharingTypes];
    v6 = [(DSSharingPermissionsDetailController *)self startingViewController];
    v7 = [DSSharingPermissionsDetailController detailControllerWithSharingTypes:v5 startingViewController:v6 delegate:v12];
  }

  v10 = v7;

  if (v10)
  {
    v11 = [(DSSharingPermissionsDetailController *)self navigationController];
    [v11 pushViewController:v10 animated:1];

    goto LABEL_8;
  }

LABEL_7:
  [v12 reviewSelectedSharingFlowCompleted];
LABEL_8:
}

- (void)_updateButton
{
  v3 = [(DSTableWelcomeController *)self boldButton];
  [v3 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  v4 = [(OBTableWelcomeController *)self tableView];
  v5 = [v4 indexPathsForSelectedRows];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(DSTableWelcomeController *)self boldButton];
    v8 = DSUILocStringForKey(@"STOP_SHARING");
    [v7 setTitle:v8 forState:0];

    v12 = [(DSTableWelcomeController *)self boldButton];
    [v12 addTarget:self action:sel_stopSelectedSharing forControlEvents:64];
  }

  else
  {
    if ([(DSTableWelcomeController *)self isModelEmpty])
    {
      v9 = @"CONTINUE";
    }

    else
    {
      v9 = @"SKIP";
    }

    v12 = DSUILocStringForKey(v9);
    v10 = [(DSTableWelcomeController *)self boldButton];
    [v10 setTitle:v12 forState:0];

    v11 = [(DSTableWelcomeController *)self boldButton];
    [v11 addTarget:self action:sel_next forControlEvents:64];
  }
}

- (DSSharingPermissionsDetailDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sourceNameForIndexPath:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_248C7E000, a2, OS_LOG_TYPE_FAULT, "Failed to find a source for index path %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)personForIndexPath:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_248C7E000, a2, OS_LOG_TYPE_FAULT, "Failed to find a person for index path %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end