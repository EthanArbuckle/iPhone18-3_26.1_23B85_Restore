@interface HUFaceRecognitionLibraryListViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUFaceRecognitionLibraryListViewController)initWithHome:(id)home;
- (HUFaceRecognitionLibraryListViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (id)presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent:(id)event animated:(BOOL)animated;
- (id)presentFaceRecognitionPersonSettingsForPerson:(id)person personManager:(id)manager animated:(BOOL)animated;
- (id)trailingSwipeActionsForItem:(id)item;
- (void)dealloc;
- (void)dismissTextViewController;
- (void)personEditorViewController:(id)controller didUpdateItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUFaceRecognitionLibraryListViewController

- (HUFaceRecognitionLibraryListViewController)initWithHome:(id)home
{
  v23 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = [[HUFaceRecognitionLibraryListItemManager alloc] initWithHome:homeCopy delegate:0];
  v21.receiver = self;
  v21.super_class = HUFaceRecognitionLibraryListViewController;
  v6 = [(HUItemTableViewController *)&v21 initWithItemManager:v5 tableViewStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listItemManager, v5);
    v8 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionViewControllerTitle", @"HUFaceRecognitionViewControllerTitle", 1);
    [(HUFaceRecognitionLibraryListViewController *)v7 setTitle:v8];

    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    hf_allCameraProfiles = [homeCopy hf_allCameraProfiles];
    v11 = [hf_allCameraProfiles countByEnumeratingWithState:&v17 objects:v22 count:16];
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
            objc_enumerationMutation(hf_allCameraProfiles);
          }

          clipManager = [*(*(&v17 + 1) + 8 * v14) clipManager];
          [mEMORY[0x277D146E8] addObservationForCameraClipManager:clipManager];

          ++v14;
        }

        while (v12 != v14);
        v12 = [hf_allCameraProfiles countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }
  }

  return v7;
}

- (HUFaceRecognitionLibraryListViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionLibraryListViewController.m" lineNumber:58 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionLibraryListViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = HUFaceRecognitionLibraryListViewController;
  [(HUItemTableViewController *)&v8 viewDidAppear:appear];
  listItemManager = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
  firstFastUpdateFuture = [listItemManager firstFastUpdateFuture];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HUFaceRecognitionLibraryListViewController_viewDidAppear___block_invoke;
  v7[3] = &unk_277DBBEB0;
  v7[4] = self;
  v6 = [firstFastUpdateFuture addCompletionBlock:v7];
}

void __60__HUFaceRecognitionLibraryListViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) listItemManager];
  [v1 setRecentsLimit:-1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HUFaceRecognitionLibraryListViewController;
  [(HUItemTableViewController *)&v5 viewWillDisappear:disappear];
  listItemManager = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
  [listItemManager sendAnalyticsEvent];
}

- (id)presentFaceRecognitionPersonSettingsForPerson:(id)person personManager:(id)manager animated:(BOOL)animated
{
  personCopy = person;
  managerCopy = manager;
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __115__HUFaceRecognitionLibraryListViewController_presentFaceRecognitionPersonSettingsForPerson_personManager_animated___block_invoke;
  v15[3] = &unk_277DB9190;
  animatedCopy = animated;
  v15[4] = self;
  v16 = personCopy;
  v17 = managerCopy;
  v11 = managerCopy;
  v12 = personCopy;
  v13 = [hu_preloadContent flatMap:v15];

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

- (id)presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent:(id)event animated:(BOOL)animated
{
  v38 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v6 = eventCopy;
  if (eventCopy)
  {
    faceClassification = [eventCopy faceClassification];
    if (faceClassification)
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
      listItemManager = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
      home = [listItemManager home];
      v14 = [v11 initWithSignificantEvent:v10 home:home];

      v15 = [[HUFaceRecognitionPersonEditorViewController alloc] initWithPersonLikeItem:v14];
      [(HUFaceRecognitionPersonEditorViewController *)v15 setDelegate:self];
      itemManager = [(HUItemTableViewController *)self itemManager];
      home2 = [itemManager home];
      [home2 personManager];
      v18 = v30 = faceClassification;
      uUID = [v18 UUID];

      navigationController = [(HUFaceRecognitionLibraryListViewController *)self navigationController];
      v21 = [navigationController hu_pushPreloadableViewController:v15 animated:1];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __116__HUFaceRecognitionLibraryListViewController_presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent_animated___block_invoke;
      v31[3] = &unk_277DC44E8;
      v32 = uUID;
      v33 = v10;
      v34 = v15;
      v35 = v8;
      v22 = v15;
      v23 = v10;
      v24 = uUID;
      futureWithNoResult = [v21 flatMap:v31];

      faceClassification = v30;
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
      futureWithNoResult = [v28 futureWithError:v14];
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

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
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

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  section = [path section];
  listItemManager = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
  knownToHomeItem = [listItemManager knownToHomeItem];
  v10 = [itemCopy isEqual:knownToHomeItem];

  if ((v10 & 1) == 0)
  {
    itemManager = [(HUItemTableViewController *)self itemManager];
    v12 = [itemManager sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionLibrariesSection"];

    if (section != v12)
    {
      itemManager2 = [(HUItemTableViewController *)self itemManager];
      v14 = [itemManager2 sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionSettingSwitchSection"];

      if (section != v14)
      {
        itemManager3 = [(HUItemTableViewController *)self itemManager];
        [itemManager3 sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionRecentVisitorsSectionIdentifier"];
      }
    }
  }

  v16 = objc_opt_class();

  return v16;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = cellCopy;
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

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  v57.receiver = self;
  v57.super_class = HUFaceRecognitionLibraryListViewController;
  [(HUItemTableViewController *)&v57 updateCell:cellCopy forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
  listItemManager = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
  knownToHomeItem = [listItemManager knownToHomeItem];
  v15 = [itemCopy isEqual:knownToHomeItem];

  if (v15)
  {
    objc_opt_class();
    v16 = cellCopy;
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
    latestResults = [itemCopy latestResults];
    v20 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EC0]];
    bOOLValue = [v20 BOOLValue];

    [v16 setAccessoryType:bOOLValue ^ 1u];
    if (bOOLValue)
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

  itemManager = [(HUItemTableViewController *)self itemManager];
  v24 = [itemManager sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionLibrariesSection"];
  section = [pathCopy section];

  if (v24 == section)
  {
    objc_opt_class();
    v26 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v18 = v27;

    itemManager2 = [(HUItemTableViewController *)self itemManager];
    home = [itemManager2 home];
    currentUser = [home currentUser];
    user = [v18 user];
    v32 = [currentUser isEqual:user];

    [cellCopy setAccessoryType:v32];
    [cellCopy setUserInteractionEnabled:v32];
    objc_opt_class();
    v33 = cellCopy;
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

  itemManager3 = [(HUItemTableViewController *)self itemManager];
  v37 = [itemManager3 sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionRecentVisitorsSectionIdentifier"];
  section2 = [pathCopy section];

  if (v37 == section2)
  {
    objc_opt_class();
    v39 = cellCopy;
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
    cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
    latestResults2 = [itemCopy latestResults];
    v43 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    if (v43)
    {
      [cellConfiguration setText:v43];
    }

    else
    {
      v44 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPersonNameCellUnknownPerson", @"HUFaceRecognitionPersonNameCellUnknownPerson", 1);
      [cellConfiguration setText:v44];
    }

    latestResults3 = [itemCopy latestResults];
    v46 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    [cellConfiguration setSecondaryText:v46];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    secondaryTextProperties = [cellConfiguration secondaryTextProperties];
    [secondaryTextProperties setColor:secondaryLabelColor];

    latestResults4 = [itemCopy latestResults];
    v50 = *MEMORY[0x277D13CF0];
    v51 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D13CF0]];

    if (v51)
    {
      latestResults5 = [itemCopy latestResults];
      v53 = [latestResults5 objectForKeyedSubscript:v50];
      [cellConfiguration setImage:v53];

      imageProperties = [cellConfiguration imageProperties];
      [imageProperties setCornerRadius:22.0];

      imageProperties2 = [cellConfiguration imageProperties];
      [imageProperties2 setMaximumSize:{44.0, 44.0}];

      imageProperties3 = [cellConfiguration imageProperties];
      [imageProperties3 setReservedLayoutSize:{44.0, 44.0}];
    }

    [v39 setContentConfiguration:cellConfiguration];
    [v39 setAccessoryType:1];

    goto LABEL_29;
  }

LABEL_30:
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v40.receiver = self;
  v40.super_class = HUFaceRecognitionLibraryListViewController;
  [(HUItemTableViewController *)&v40 tableView:view didSelectRowAtIndexPath:pathCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager displayedItemAtIndexPath:pathCopy];

  listItemManager = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
  knownToHomeItem = [listItemManager knownToHomeItem];
  v11 = [v8 isEqual:knownToHomeItem];

  if (v11)
  {
    latestResults = [v8 latestResults];
    v13 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EC0]];
    bOOLValue = [v13 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v15 = [HUFaceRecognitionKnownToHomeViewController alloc];
      listItemManager2 = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
      home = [listItemManager2 home];
      v18 = [(HUFaceRecognitionKnownToHomeViewController *)v15 initWithHome:home];

LABEL_15:
      navigationController = [(HUFaceRecognitionLibraryListViewController *)self navigationController];
      v39 = [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)navigationController hu_pushPreloadableViewController:v18 animated:1];
      goto LABEL_16;
    }
  }

  else
  {
    section = [pathCopy section];
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    v21 = [itemManager2 sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionLibrariesSection"];

    if (section == v21)
    {
      objc_opt_class();
      itemManager3 = [(HUItemTableViewController *)self itemManager];
      v23 = [itemManager3 displayedItemAtIndexPath:pathCopy];
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v18 = v24;

      user = [(HUFaceRecognitionPersonEditorViewController *)v18 user];
      listItemManager3 = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
      home2 = [listItemManager3 home];
      currentUser = [home2 currentUser];
      v29 = [user isEqual:currentUser];

      if (!v29)
      {
        goto LABEL_17;
      }

      navigationController = [[HUFaceRecognitionUserPhotosLibrarySettingsViewController alloc] initWithUserPhotosLibraryItem:v18];
      navigationController2 = [(HUFaceRecognitionLibraryListViewController *)self navigationController];
      v32 = [navigationController2 hu_pushPreloadableViewController:navigationController animated:1];

LABEL_16:
LABEL_17:

      goto LABEL_18;
    }

    section2 = [pathCopy section];
    itemManager4 = [(HUItemTableViewController *)self itemManager];
    v35 = [itemManager4 sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionRecentVisitorsSectionIdentifier"];

    if (section2 == v35)
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

- (id)trailingSwipeActionsForItem:(id)item
{
  v51 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v49 = 2112;
    v50 = itemCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: User swiped for trailing actions on item: %@", buf, 0x16u);
  }

  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager indexPathForItem:itemCopy];

  section = [v7 section];
  itemManager2 = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager2 sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionRecentVisitorsSectionIdentifier"];

  if (section == v10)
  {
    objc_opt_class();
    v11 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    latestResults = [v11 latestResults];
    v15 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];

    cameraProfile = [v13 cameraProfile];
    clipManager = [cameraProfile clipManager];

    if ([v15 length])
    {
      v24 = HULocalizedStringWithFormat(@"HUFaceRecognitionModuleDisassociatePersonSwipeActionFormat", @"%@", v18, v19, v20, v21, v22, v23, v15);
      v25 = MEMORY[0x277D753C0];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __74__HUFaceRecognitionLibraryListViewController_trailingSwipeActionsForItem___block_invoke;
      v41[3] = &unk_277DC4560;
      v42 = v13;
      v43 = clipManager;
      selfCopy2 = self;
      v26 = [v25 contextualActionWithStyle:1 title:v24 handler:v41];
      v46 = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];

      v28 = v42;
    }

    else
    {
      latestResults2 = [v11 latestResults];
      v24 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D14060]];

      latestResults3 = [v11 latestResults];
      v28 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13CE8]];

      if (v24 || [v28 count])
      {
        v35 = MEMORY[0x277D753C0];
        v32 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionModuleHideEventSwipeActionFormat", @"HUFaceRecognitionModuleHideEventSwipeActionFormat", 1);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __74__HUFaceRecognitionLibraryListViewController_trailingSwipeActionsForItem___block_invoke_114;
        v36[3] = &unk_277DC45B0;
        v37 = v13;
        selfCopy3 = self;
        v39 = v11;
        v40 = clipManager;
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

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__HUFaceRecognitionLibraryListViewController_switchCell_didTurnOn___block_invoke;
  aBlock[3] = &unk_277DC45D8;
  objc_copyWeak(v50, location);
  v50[1] = a2;
  v8 = cellCopy;
  v49 = v8;
  v9 = _Block_copy(aBlock);
  if (onCopy)
  {
    itemManager = [(HUItemTableViewController *)self itemManager];
    home = [itemManager home];
    hf_allCameraProfilesWithSmartMotionRecordingEnabled = [home hf_allCameraProfilesWithSmartMotionRecordingEnabled];
    v13 = [hf_allCameraProfilesWithSmartMotionRecordingEnabled count];

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
  tableView = [(HUFaceRecognitionLibraryListViewController *)self tableView];
  v33 = [tableView indexPathForCell:v8];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  v35 = [itemManager2 displayedItemAtIndexPath:v33];

  latestResults = [v35 latestResults];
  v37 = *MEMORY[0x277D13F68];
  v38 = [latestResults objectForKey:*MEMORY[0x277D13F68]];

  if (v38)
  {
    latestResults2 = [v35 latestResults];
    v40 = [latestResults2 objectForKeyedSubscript:v37];
  }

  else
  {
    v40 = 0;
  }

  [MEMORY[0x277D143D8] sendSwitchCellToggleEventForItem:v35 isOn:onCopy title:v40 fromSourceViewController:self];

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

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v30 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412546;
    selfCopy = self;
    v28 = 2112;
    v29 = lCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v26, 0x16u);
  }

  hf_faceRecognitionPrivacyURL = [MEMORY[0x277CBEBC0] hf_faceRecognitionPrivacyURL];
  v10 = [lCopy isEqual:hf_faceRecognitionPrivacyURL];

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

    boldButton = [MEMORY[0x277D37618] boldButton];
    v22 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
    [boldButton setTitle:v22 forState:0];

    [boldButton addTarget:self action:sel_dismissTextViewController forControlEvents:64];
    buttonTray = [v13 buttonTray];
    [buttonTray addButton:boldButton];

    navigationController = [(HUFaceRecognitionLibraryListViewController *)self navigationController];
    [navigationController presentViewController:v13 animated:1 completion:0];
  }

  return 0;
}

- (void)dismissTextViewController
{
  navigationController = [(HUFaceRecognitionLibraryListViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)personEditorViewController:(id)controller didUpdateItem:(id)item
{
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_2824C0788])
  {
    v6 = itemCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  homeKitObject = [v7 homeKitObject];

  listItemManager = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
  v10 = [listItemManager matchingItemForHomeKitObject:homeKitObject];

  if (v10)
  {
    listItemManager2 = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
    v12 = [MEMORY[0x277CBEB98] setWithObject:v10];
    v13 = [listItemManager2 updateResultsForItems:v12 senderSelector:a2];
  }
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  listItemManager = [(HUFaceRecognitionLibraryListViewController *)self listItemManager];
  home = [listItemManager home];

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  hf_allCameraProfiles = [home hf_allCameraProfiles];
  v7 = [hf_allCameraProfiles countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(hf_allCameraProfiles);
        }

        clipManager = [*(*(&v13 + 1) + 8 * v10) clipManager];
        [mEMORY[0x277D146E8] removeObservationForCameraClipManager:clipManager];

        ++v10;
      }

      while (v8 != v10);
      v8 = [hf_allCameraProfiles countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12.receiver = self;
  v12.super_class = HUFaceRecognitionLibraryListViewController;
  [(HUFaceRecognitionLibraryListViewController *)&v12 dealloc];
}

@end