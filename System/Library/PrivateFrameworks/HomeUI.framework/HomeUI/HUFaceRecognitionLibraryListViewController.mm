@interface HUFaceRecognitionLibraryListViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUFaceRecognitionLibraryListViewController)initWithHome:(id)a3;
- (HUFaceRecognitionLibraryListViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (id)presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent:(id)a3 animated:(BOOL)a4;
- (id)presentFaceRecognitionPersonSettingsForPerson:(id)a3 personManager:(id)a4 animated:(BOOL)a5;
- (id)trailingSwipeActionsForItem:(id)a3;
- (void)dealloc;
- (void)dismissTextViewController;
- (void)personEditorViewController:(id)a3 didUpdateItem:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUFaceRecognitionLibraryListViewController

- (HUFaceRecognitionLibraryListViewController)initWithHome:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HUFaceRecognitionLibraryListItemManager alloc] initWithHome:v4 delegate:0];
  v21.receiver = self;
  v21.super_class = HUFaceRecognitionLibraryListViewController;
  v6 = [(HUItemTableViewController *)&v21 initWithItemManager:v5 tableViewStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listItemManager, v5);
    v8 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionViewControllerTitle", @"HUFaceRecognitionViewControllerTitle", 1);
    [(HUFaceRecognitionLibraryListViewController *)v7 setTitle:v8];

    v9 = [MEMORY[0x277D146E8] sharedDispatcher];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v4 hf_allCameraProfiles];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v17 + 1) + 8 * v14) clipManager];
          [v9 addObservationForCameraClipManager:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }
  }

  return v7;
}

- (HUFaceRecognitionLibraryListViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionLibraryListViewController.m" lineNumber:58 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionLibraryListViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HUFaceRecognitionLibraryListViewController;
  [(HUItemTableViewController *)&v8 viewDidAppear:a3];
  v4 = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
  v5 = [v4 firstFastUpdateFuture];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HUFaceRecognitionLibraryListViewController_viewDidAppear___block_invoke;
  v7[3] = &unk_277DBBEB0;
  v7[4] = self;
  v6 = [v5 addCompletionBlock:v7];
}

void __60__HUFaceRecognitionLibraryListViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) listItemManager];
  [v1 setRecentsLimit:-1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUFaceRecognitionLibraryListViewController;
  [(HUItemTableViewController *)&v5 viewWillDisappear:a3];
  v4 = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
  [v4 sendAnalyticsEvent];
}

- (id)presentFaceRecognitionPersonSettingsForPerson:(id)a3 personManager:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HUItemTableViewController *)self hu_preloadContent];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __115__HUFaceRecognitionLibraryListViewController_presentFaceRecognitionPersonSettingsForPerson_personManager_animated___block_invoke;
  v15[3] = &unk_277DB9190;
  v18 = a5;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = [v10 flatMap:v15];

  return v13;
}

id __115__HUFaceRecognitionLibraryListViewController_presentFaceRecognitionPersonSettingsForPerson_personManager_animated___block_invoke(uint64_t a1)
{
  v2 = [HUFaceRecognitionKnownToHomeViewController alloc];
  v3 = [*(a1 + 32) itemManager];
  v4 = [v3 home];
  v5 = [(HUFaceRecognitionKnownToHomeViewController *)v2 initWithHome:v4];

  v6 = [*(a1 + 32) navigationController];
  v7 = [v6 hu_pushPreloadableViewController:v5 animated:*(a1 + 56)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __115__HUFaceRecognitionLibraryListViewController_presentFaceRecognitionPersonSettingsForPerson_personManager_animated___block_invoke_2;
  v11[3] = &unk_277DBE0F0;
  v12 = v5;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v8 = v5;
  v9 = [v7 flatMap:v11];

  return v9;
}

- (id)presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent:(id)a3 animated:(BOOL)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 faceClassification];
    if (v7)
    {
      objc_opt_class();
      v8 = v6;
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      v11 = objc_alloc(MEMORY[0x277D14680]);
      v12 = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
      v13 = [v12 home];
      v14 = [v11 initWithSignificantEvent:v10 home:v13];

      v15 = [[HUFaceRecognitionPersonEditorViewController alloc] initWithPersonLikeItem:v14];
      [(HUFaceRecognitionPersonEditorViewController *)v15 setDelegate:self];
      v16 = [(HUItemTableViewController *)self itemManager];
      v17 = [v16 home];
      [v17 personManager];
      v18 = v30 = v7;
      v19 = [v18 UUID];

      v20 = [(HUFaceRecognitionLibraryListViewController *)self navigationController];
      v21 = [v20 hu_pushPreloadableViewController:v15 animated:1];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __116__HUFaceRecognitionLibraryListViewController_presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent_animated___block_invoke;
      v31[3] = &unk_277DC44E8;
      v32 = v19;
      v33 = v10;
      v34 = v15;
      v35 = v8;
      v22 = v15;
      v23 = v10;
      v24 = v19;
      v25 = [v21 flatMap:v31];

      v7 = v30;
    }

    else
    {
      v27 = HFLogForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v6;
        _os_log_error_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_ERROR, "No face classification for event %@; add person settings not supported", buf, 0xCu);
      }

      v28 = MEMORY[0x277D2C900];
      v14 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
      v25 = [v28 futureWithError:v14];
    }
  }

  else
  {
    v26 = HFLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "No event provided; add person settings not supported", buf, 2u);
    }

    v25 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v25;
}

id __116__HUFaceRecognitionLibraryListViewController_presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) faceClassification];
  v4 = [v3 personManagerUUID];
  LODWORD(v2) = [v2 isEqual:v4];

  if (v2)
  {
    [*(a1 + 48) presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent:*(a1 + 56) animated:1];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v5 = ;

  return v5;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = [a4 section];
  v8 = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
  v9 = [v8 knownToHomeItem];
  v10 = [v6 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [(HUItemTableViewController *)self itemManager];
    v12 = [v11 sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionLibrariesSection"];

    if (v7 != v12)
    {
      v13 = [(HUItemTableViewController *)self itemManager];
      v14 = [v13 sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionSettingSwitchSection"];

      if (v7 != v14)
      {
        v15 = [(HUItemTableViewController *)self itemManager];
        [v15 sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionRecentVisitorsSectionIdentifier"];
      }
    }
  }

  v16 = objc_opt_class();

  return v16;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = v9;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    [v8 setDelegate:self];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v57.receiver = self;
  v57.super_class = HUFaceRecognitionLibraryListViewController;
  [(HUItemTableViewController *)&v57 updateCell:v10 forItem:v11 indexPath:v12 animated:v6];
  v13 = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
  v14 = [v13 knownToHomeItem];
  v15 = [v11 isEqual:v14];

  if (v15)
  {
    objc_opt_class();
    v16 = v10;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    [v18 setHideIcon:1];
    v19 = [v11 latestResults];
    v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D13EC0]];
    v21 = [v20 BOOLValue];

    [v16 setAccessoryType:v21 ^ 1u];
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = 3;
    }

    [v16 setSelectionStyle:v22];
LABEL_29:

    goto LABEL_30;
  }

  v23 = [(HUItemTableViewController *)self itemManager];
  v24 = [v23 sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionLibrariesSection"];
  v25 = [v12 section];

  if (v24 == v25)
  {
    objc_opt_class();
    v26 = v11;
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v18 = v27;

    v28 = [(HUItemTableViewController *)self itemManager];
    v29 = [v28 home];
    v30 = [v29 currentUser];
    v31 = [v18 user];
    v32 = [v30 isEqual:v31];

    [v10 setAccessoryType:v32];
    [v10 setUserInteractionEnabled:v32];
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

    v35 = v34;

    if (v35)
    {
      [v35 setHideIcon:1];
    }

    goto LABEL_29;
  }

  v36 = [(HUItemTableViewController *)self itemManager];
  v37 = [v36 sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionRecentVisitorsSectionIdentifier"];
  v38 = [v12 section];

  if (v37 == v38)
  {
    objc_opt_class();
    v39 = v10;
    if (objc_opt_isKindOfClass())
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v18 = v40;

    [v18 setAvatarSize:44.0];
    v41 = [MEMORY[0x277D756E0] cellConfiguration];
    v42 = [v11 latestResults];
    v43 = [v42 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    if (v43)
    {
      [v41 setText:v43];
    }

    else
    {
      v44 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPersonNameCellUnknownPerson", @"HUFaceRecognitionPersonNameCellUnknownPerson", 1);
      [v41 setText:v44];
    }

    v45 = [v11 latestResults];
    v46 = [v45 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    [v41 setSecondaryText:v46];

    v47 = [MEMORY[0x277D75348] secondaryLabelColor];
    v48 = [v41 secondaryTextProperties];
    [v48 setColor:v47];

    v49 = [v11 latestResults];
    v50 = *MEMORY[0x277D13CF0];
    v51 = [v49 objectForKeyedSubscript:*MEMORY[0x277D13CF0]];

    if (v51)
    {
      v52 = [v11 latestResults];
      v53 = [v52 objectForKeyedSubscript:v50];
      [v41 setImage:v53];

      v54 = [v41 imageProperties];
      [v54 setCornerRadius:22.0];

      v55 = [v41 imageProperties];
      [v55 setMaximumSize:{44.0, 44.0}];

      v56 = [v41 imageProperties];
      [v56 setReservedLayoutSize:{44.0, 44.0}];
    }

    [v39 setContentConfiguration:v41];
    [v39 setAccessoryType:1];

    goto LABEL_29;
  }

LABEL_30:
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v40.receiver = self;
  v40.super_class = HUFaceRecognitionLibraryListViewController;
  [(HUItemTableViewController *)&v40 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 displayedItemAtIndexPath:v6];

  v9 = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
  v10 = [v9 knownToHomeItem];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    v12 = [v8 latestResults];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13EC0]];
    v14 = [v13 BOOLValue];

    if ((v14 & 1) == 0)
    {
      v15 = [HUFaceRecognitionKnownToHomeViewController alloc];
      v16 = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
      v17 = [v16 home];
      v18 = [(HUFaceRecognitionKnownToHomeViewController *)v15 initWithHome:v17];

LABEL_15:
      v30 = [(HUFaceRecognitionLibraryListViewController *)self navigationController];
      v39 = [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)v30 hu_pushPreloadableViewController:v18 animated:1];
      goto LABEL_16;
    }
  }

  else
  {
    v19 = [v6 section];
    v20 = [(HUItemTableViewController *)self itemManager];
    v21 = [v20 sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionLibrariesSection"];

    if (v19 == v21)
    {
      objc_opt_class();
      v22 = [(HUItemTableViewController *)self itemManager];
      v23 = [v22 displayedItemAtIndexPath:v6];
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v18 = v24;

      v25 = [(HUFaceRecognitionPersonEditorViewController *)v18 user];
      v26 = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
      v27 = [v26 home];
      v28 = [v27 currentUser];
      v29 = [v25 isEqual:v28];

      if (!v29)
      {
        goto LABEL_17;
      }

      v30 = [[HUFaceRecognitionUserPhotosLibrarySettingsViewController alloc] initWithUserPhotosLibraryItem:v18];
      v31 = [(HUFaceRecognitionLibraryListViewController *)self navigationController];
      v32 = [v31 hu_pushPreloadableViewController:v30 animated:1];

LABEL_16:
LABEL_17:

      goto LABEL_18;
    }

    v33 = [v6 section];
    v34 = [(HUItemTableViewController *)self itemManager];
    v35 = [v34 sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionRecentVisitorsSectionIdentifier"];

    if (v33 == v35)
    {
      v36 = v8;
      if ([v36 conformsToProtocol:&unk_2825BD540])
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;

      v18 = [[HUFaceRecognitionPersonEditorViewController alloc] initWithPersonLikeItem:v38];
      [(HUFaceRecognitionPersonEditorViewController *)v18 setDelegate:self];
      goto LABEL_15;
    }
  }

LABEL_18:
}

- (id)trailingSwipeActionsForItem:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v48 = self;
    v49 = 2112;
    v50 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: User swiped for trailing actions on item: %@", buf, 0x16u);
  }

  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 indexPathForItem:v4];

  v8 = [v7 section];
  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionRecentVisitorsSectionIdentifier"];

  if (v8 == v10)
  {
    objc_opt_class();
    v11 = v4;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [v11 latestResults];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

    v16 = [v13 cameraProfile];
    v17 = [v16 clipManager];

    if ([v15 length])
    {
      v24 = HULocalizedStringWithFormat(@"HUFaceRecognitionModuleDisassociatePersonSwipeActionFormat", @"%@", v18, v19, v20, v21, v22, v23, v15);
      v25 = MEMORY[0x277D753C0];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __74__HUFaceRecognitionLibraryListViewController_trailingSwipeActionsForItem___block_invoke;
      v41[3] = &unk_277DC4560;
      v42 = v13;
      v43 = v17;
      v44 = self;
      v26 = [v25 contextualActionWithStyle:1 title:v24 handler:v41];
      v46 = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];

      v28 = v42;
    }

    else
    {
      v30 = [v11 latestResults];
      v24 = [v30 objectForKeyedSubscript:*MEMORY[0x277D14060]];

      v31 = [v11 latestResults];
      v28 = [v31 objectForKeyedSubscript:*MEMORY[0x277D13CE8]];

      if (v24 || [v28 count])
      {
        v35 = MEMORY[0x277D753C0];
        v32 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionModuleHideEventSwipeActionFormat", @"HUFaceRecognitionModuleHideEventSwipeActionFormat", 1);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __74__HUFaceRecognitionLibraryListViewController_trailingSwipeActionsForItem___block_invoke_114;
        v36[3] = &unk_277DC45B0;
        v37 = v13;
        v38 = self;
        v39 = v11;
        v40 = v17;
        v33 = [v35 contextualActionWithStyle:1 title:v32 handler:v36];

        v45 = v33;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      }

      else
      {
        v24 = 0;
        v27 = MEMORY[0x277CBEBF8];
      }
    }

    v29 = [MEMORY[0x277D75AD8] configurationWithActions:v27];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

void __74__HUFaceRecognitionLibraryListViewController_trailingSwipeActionsForItem___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) event];
    *buf = 138412290;
    v19 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Marking event %@ as a misclassification", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) event];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__HUFaceRecognitionLibraryListViewController_trailingSwipeActionsForItem___block_invoke_101;
  v13[3] = &unk_277DC4538;
  v14 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v15 = v10;
  v16 = v11;
  v17 = v5;
  v12 = v5;
  [v8 handleFaceMisclassificationForSignificantEvent:v9 completion:v13];
}

void __74__HUFaceRecognitionLibraryListViewController_trailingSwipeActionsForItem___block_invoke_101(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) event];
      *buf = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v3;
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Failed to handle misclassification for significant event %@ (error: %@)", buf, 0x16u);
    }

    v5 = [MEMORY[0x277D14640] sharedHandler];
    [v5 handleError:v3];
  }

  else
  {
    v6 = [MEMORY[0x277D146E8] sharedDispatcher];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __74__HUFaceRecognitionLibraryListViewController_trailingSwipeActionsForItem___block_invoke_103;
    v14 = &unk_277DC4510;
    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    [v6 dispatchCameraObserverMessage:&v11 sender:0];

    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) event];
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Successfully marked event %@ misclassified", buf, 0xCu);
    }

    v5 = v15;
  }

  (*(*(a1 + 56) + 16))();
  v9 = [*(a1 + 48) listItemManager];
  [v9 sendAnalyticsEvent];
}

void __74__HUFaceRecognitionLibraryListViewController_trailingSwipeActionsForItem___block_invoke_103(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) event];
    v6 = [v3 setWithObject:v5];
    [v7 clipManager:v4 didUpdateSignificantEvents:v6];
  }
}

void __74__HUFaceRecognitionLibraryListViewController_trailingSwipeActionsForItem___block_invoke_114(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [a1[4] event];
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Hiding event %@", buf, 0xCu);
  }

  v8 = [a1[5] listItemManager];
  v9 = [v8 home];
  v10 = [v9 personManager];

  v11 = [a1[4] person];

  v12 = [a1[6] latestResults];
  v13 = v12;
  if (v11)
  {
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277D14060]];
    [v10 hf_removePersonWithUUID:v14];
  }

  else
  {
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13CE8]];
    [v10 hf_removeFaceCropsWithUUIDs:v14];
  }
  v15 = ;

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__HUFaceRecognitionLibraryListViewController_trailingSwipeActionsForItem___block_invoke_115;
  v20[3] = &unk_277DC4588;
  v21 = a1[4];
  v16 = a1[7];
  v17 = a1[5];
  v22 = v16;
  v23 = v17;
  v24 = v5;
  v18 = v5;
  v19 = [v15 addCompletionBlock:v20];
}

void __74__HUFaceRecognitionLibraryListViewController_trailingSwipeActionsForItem___block_invoke_115(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) event];
      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v4;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Failed to handle removal/hiding for event %@ (error: %@)", buf, 0x16u);
    }

    v6 = [MEMORY[0x277D14640] sharedHandler];
    [v6 handleError:v4];
  }

  else
  {
    v7 = [MEMORY[0x277D146E8] sharedDispatcher];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__HUFaceRecognitionLibraryListViewController_trailingSwipeActionsForItem___block_invoke_116;
    v12[3] = &unk_277DC4510;
    v13 = *(a1 + 40);
    v14 = *(a1 + 32);
    [v7 dispatchCameraObserverMessage:v12 sender:0];

    v6 = v13;
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v4 != 0, v8, v9);
  v10 = [*(a1 + 48) listItemManager];
  [v10 sendAnalyticsEvent];
}

void __74__HUFaceRecognitionLibraryListViewController_trailingSwipeActionsForItem___block_invoke_116(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) event];
    v6 = [v3 setWithObject:v5];
    [v7 clipManager:v4 didUpdateSignificantEvents:v6];
  }
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__HUFaceRecognitionLibraryListViewController_switchCell_didTurnOn___block_invoke;
  aBlock[3] = &unk_277DC45D8;
  objc_copyWeak(v50, location);
  v50[1] = a2;
  v8 = v7;
  v49 = v8;
  v9 = _Block_copy(aBlock);
  if (v4)
  {
    v10 = [(HUItemTableViewController *)self itemManager];
    v11 = [v10 home];
    v12 = [v11 hf_allCameraProfilesWithSmartMotionRecordingEnabled];
    v13 = [v12 count];

    if (v13)
    {
      v9[2](v9, 1);
      goto LABEL_9;
    }

    v25 = HFLogForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "No camera profiles meet requirements to enable face recognition.", buf, 2u);
    }

    v26 = MEMORY[0x277D75110];
    v27 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionItemModuleControllerEnableRequirementAlertTitle", @"HUFaceRecognitionItemModuleControllerEnableRequirementAlertTitle", 1);
    v28 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionItemModuleControllerEnableRequirementAlertDescription", @"HUFaceRecognitionItemModuleControllerEnableRequirementAlertDescription", 1);
    v17 = [v26 alertControllerWithTitle:v27 message:v28 preferredStyle:1];

    v29 = MEMORY[0x277D750F8];
    v30 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionItemModuleControllerEnableRequirementAlertActionDismiss", @"HUFaceRecognitionItemModuleControllerEnableRequirementAlertActionDismiss", 1);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __67__HUFaceRecognitionLibraryListViewController_switchCell_didTurnOn___block_invoke_132;
    v45[3] = &unk_277DBBA20;
    v46 = v9;
    v31 = [v29 actionWithTitle:v30 style:0 handler:v45];
    [v17 addAction:v31];

    [(HUFaceRecognitionLibraryListViewController *)self presentViewController:v17 animated:1 completion:0];
    v24 = &v46;
  }

  else
  {
    v14 = MEMORY[0x277D75110];
    v15 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionItemModuleControllerConfirmationAlertTitle", @"HUFaceRecognitionItemModuleControllerConfirmationAlertTitle", 1);
    v16 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionItemModuleControllerConfirmationAlertDescription", @"HUFaceRecognitionItemModuleControllerConfirmationAlertDescription", 1);
    v17 = [v14 alertControllerWithTitle:v15 message:v16 preferredStyle:1];

    v18 = MEMORY[0x277D750F8];
    v19 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionItemModuleControllerConfirmationAlertActionDisable", @"HUFaceRecognitionItemModuleControllerConfirmationAlertActionDisable", 1);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __67__HUFaceRecognitionLibraryListViewController_switchCell_didTurnOn___block_invoke_2_143;
    v43[3] = &unk_277DBBA20;
    v44 = v9;
    v20 = [v18 actionWithTitle:v19 style:2 handler:v43];
    [v17 addAction:v20];

    v21 = MEMORY[0x277D750F8];
    v22 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionItemModuleControllerConfirmationAlertActionCancel", @"HUFaceRecognitionItemModuleControllerConfirmationAlertActionCancel", 1);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __67__HUFaceRecognitionLibraryListViewController_switchCell_didTurnOn___block_invoke_3_147;
    v41[3] = &unk_277DB7600;
    v42 = v8;
    v23 = [v21 actionWithTitle:v22 style:1 handler:v41];
    [v17 addAction:v23];

    [(HUFaceRecognitionLibraryListViewController *)self presentViewController:v17 animated:1 completion:0];
    v24 = &v44;
  }

LABEL_9:
  v32 = [(HUFaceRecognitionLibraryListViewController *)self tableView];
  v33 = [v32 indexPathForCell:v8];

  v34 = [(HUItemTableViewController *)self itemManager];
  v35 = [v34 displayedItemAtIndexPath:v33];

  v36 = [v35 latestResults];
  v37 = *MEMORY[0x277D13F68];
  v38 = [v36 objectForKey:*MEMORY[0x277D13F68]];

  if (v38)
  {
    v39 = [v35 latestResults];
    v40 = [v39 objectForKeyedSubscript:v37];
  }

  else
  {
    v40 = 0;
  }

  [MEMORY[0x277D143D8] sendSwitchCellToggleEventForItem:v35 isOn:v4 title:v40 fromSourceViewController:self];

  objc_destroyWeak(v50);
  objc_destroyWeak(location);
}

void __67__HUFaceRecognitionLibraryListViewController_switchCell_didTurnOn___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained itemManager];
  v6 = [v5 home];
  v7 = [v6 hf_setFaceRecognitionEnabled:a2];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__HUFaceRecognitionLibraryListViewController_switchCell_didTurnOn___block_invoke_2;
  v14[3] = &unk_277DB71D0;
  v8 = *(a1 + 48);
  v14[4] = WeakRetained;
  v14[5] = v8;
  v9 = [v7 addSuccessBlock:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__HUFaceRecognitionLibraryListViewController_switchCell_didTurnOn___block_invoke_3;
  v11[3] = &unk_277DBC098;
  v13 = a2;
  v12 = *(a1 + 32);
  v10 = [v9 addFailureBlock:v11];
}

void __67__HUFaceRecognitionLibraryListViewController_switchCell_didTurnOn___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) listItemManager];
  v2 = [v3 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 40)];
}

void __67__HUFaceRecognitionLibraryListViewController_switchCell_didTurnOn___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    v6[0] = 67109378;
    v6[1] = v5;
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Error setting face recognition to %d: %@", v6, 0x12u);
  }

  [*(a1 + 32) setOn:(*(a1 + 40) & 1) == 0 animated:1];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412546;
    v27 = self;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v26, 0x16u);
  }

  v9 = [MEMORY[0x277CBEBC0] hf_faceRecognitionPrivacyURL];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D37688]);
    v12 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionLearnMoreTitle", @"HUFaceRecognitionLearnMoreTitle", 1);
    v13 = [v11 initWithTitle:v12 detailText:0 symbolName:0 contentLayout:2];

    v14 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionLearnMoreUseSectionTitle", @"HUFaceRecognitionLearnMoreUseSectionTitle", 1);
    v15 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionLearnMoreUseSectionBody", @"HUFaceRecognitionLearnMoreUseSectionBody", 1);
    [v13 addSectionWithHeader:v14 content:v15];

    v16 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionLearnMorePhotoSectionTitle", @"HUFaceRecognitionLearnMorePhotoSectionTitle", 1);
    v17 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionLearnMorePhotoSectionBody", @"HUFaceRecognitionLearnMorePhotoSectionBody", 1);
    [v13 addSectionWithHeader:v16 content:v17];

    v18 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionLearnMoreVisibilitySectionBody", @"HUFaceRecognitionLearnMoreVisibilitySectionBody", 1);
    [v13 addSectionWithHeader:0 content:v18];

    v19 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionLearnMoreAnalysisSectionTitle", @"HUFaceRecognitionLearnMoreAnalysisSectionTitle", 1);
    v20 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionLearnMoreAnalysisSectionBody", @"HUFaceRecognitionLearnMoreAnalysisSectionBody", 1);
    [v13 addSectionWithHeader:v19 content:v20];

    v21 = [MEMORY[0x277D37618] boldButton];
    v22 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
    [v21 setTitle:v22 forState:0];

    [v21 addTarget:self action:sel_dismissTextViewController forControlEvents:64];
    v23 = [v13 buttonTray];
    [v23 addButton:v21];

    v24 = [(HUFaceRecognitionLibraryListViewController *)self navigationController];
    [v24 presentViewController:v13 animated:1 completion:0];
  }

  return 0;
}

- (void)dismissTextViewController
{
  v2 = [(HUFaceRecognitionLibraryListViewController *)self navigationController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)personEditorViewController:(id)a3 didUpdateItem:(id)a4
{
  v14 = a4;
  if ([v14 conformsToProtocol:&unk_2824C0788])
  {
    v6 = v14;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 homeKitObject];

  v9 = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
  v10 = [v9 matchingItemForHomeKitObject:v8];

  if (v10)
  {
    v11 = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
    v12 = [MEMORY[0x277CBEB98] setWithObject:v10];
    v13 = [v11 updateResultsForItems:v12 senderSelector:a2];
  }
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
  v4 = [v3 home];

  v5 = [MEMORY[0x277D146E8] sharedDispatcher];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 hf_allCameraProfiles];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) clipManager];
        [v5 removeObservationForCameraClipManager:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12.receiver = self;
  v12.super_class = HUFaceRecognitionLibraryListViewController;
  [(HUFaceRecognitionLibraryListViewController *)&v12 dealloc];
}

@end