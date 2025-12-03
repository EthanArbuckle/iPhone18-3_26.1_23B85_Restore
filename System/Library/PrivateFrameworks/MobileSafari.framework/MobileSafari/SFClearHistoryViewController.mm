@interface SFClearHistoryViewController
- (SFClearHistoryViewController)initWithTabGroupManager:(id)manager activeProfileIdentifier:(id)identifier;
- (SFClearHistoryViewControllerDelegate)delegate;
- (id)_cellForActionItemIdentifier:(id)identifier indexPath:(id)path;
- (id)_cellForAdditionalOptionsItemIdentifier:(id)identifier indexPath:(id)path;
- (id)_cellForIdentifier:(id)identifier indexPath:(id)path;
- (id)_cellForProfileItemIdentifier:(id)identifier indexPath:(id)path;
- (id)_cellForTimeFrameItemIdentifier:(id)identifier indexPath:(id)path;
- (id)_profileIdentifiersToBeClearedWithCurrentSelection;
- (id)dataSource:(id)source footerTextForSection:(int64_t)section;
- (id)dataSource:(id)source headerTextForSection:(int64_t)section;
- (void)_reloadDataAnimatingDifferences:(BOOL)differences;
- (void)_updateCachedTabCountForCurrentSelection;
- (void)submitButtonTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SFClearHistoryViewController

- (SFClearHistoryViewController)initWithTabGroupManager:(id)manager activeProfileIdentifier:(id)identifier
{
  managerCopy = manager;
  identifierCopy = identifier;
  v50.receiver = self;
  v50.super_class = SFClearHistoryViewController;
  v8 = [(SFClearHistoryViewController *)&v50 initWithStyle:2];
  if (v8)
  {
    v9 = _WBSLocalizedString();
    navigationItem = [(SFClearHistoryViewController *)v8 navigationItem];
    [navigationItem setTitle:v9];

    objc_initWeak(&location, v8);
    v11 = objc_alloc(MEMORY[0x1E69DC708]);
    v12 = MEMORY[0x1E69DC628];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __80__SFClearHistoryViewController_initWithTabGroupManager_activeProfileIdentifier___block_invoke;
    v47[3] = &unk_1E721C458;
    objc_copyWeak(&v48, &location);
    v13 = [v12 actionWithHandler:v47];
    v14 = [v11 initWithBarButtonSystemItem:24 primaryAction:v13];
    navigationItem2 = [(SFClearHistoryViewController *)v8 navigationItem];
    [navigationItem2 setRightBarButtonItem:v14];

    profiles = [managerCopy profiles];
    v17 = [profiles copy];
    profiles = v8->_profiles;
    v8->_profiles = v17;

    objc_storeStrong(&v8->_activeProfileIdentifier, identifier);
    if ([managerCopy hasMultipleProfiles])
    {
      v19 = [(NSArray *)v8->_profiles count]+ 1;
    }

    else
    {
      v19 = 0;
    }

    v8->_numberOfProfileRows = v19;
    tabCollection = [managerCopy tabCollection];
    allNamedTabGroupsUnsorted = [tabCollection allNamedTabGroupsUnsorted];
    v41 = identifierCopy;
    v8->_areTabGroupsInUse = [allNamedTabGroupsUnsorted count] != 0;

    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v23 = [safari_browserDefaults stringForKey:@"ClearHistoryLastSelectedTimeFrame"];

    v24 = [SFClearHistoryUtilities clearHistoryTimeFrameItemTypeFromString:v23];
    v25 = [MEMORY[0x1E696AC88] indexPathForRow:v24 inSection:0];
    currentlySelectedTimeframeIndex = v8->_currentlySelectedTimeframeIndex;
    v8->_currentlySelectedTimeframeIndex = v25;

    if (v8->_numberOfProfileRows)
    {
      if (v8->_activeProfileIdentifier && ([MEMORY[0x1E695E000] safari_browserDefaults], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "BOOLForKey:", @"ClearHistoryLastSelectedAllProfiles"), v27, (v28 & 1) == 0))
      {
        v30 = v8->_profiles;
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __80__SFClearHistoryViewController_initWithTabGroupManager_activeProfileIdentifier___block_invoke_2;
        v45[3] = &unk_1E721EB48;
        v46 = v8;
        v31 = [(NSArray *)v30 indexOfObjectPassingTest:v45];
        if (v31 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = 0;
        }

        else
        {
          v29 = v31 + 1;
        }
      }

      else
      {
        v29 = 0;
      }

      v32 = [MEMORY[0x1E696AC88] indexPathForRow:v29 inSection:{1, identifierCopy}];
      currentlySelectedProfileIndex = v8->_currentlySelectedProfileIndex;
      v8->_currentlySelectedProfileIndex = v32;
    }

    safari_browserDefaults2 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v8->_closeAllTabsToggleEnabled = [safari_browserDefaults2 BOOLForKey:@"ClearHistoryLastEnabledCloseAllTabs"];

    v35 = [SFTableViewDiffableDataSource alloc];
    tableView = [(SFClearHistoryViewController *)v8 tableView];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __80__SFClearHistoryViewController_initWithTabGroupManager_activeProfileIdentifier___block_invoke_3;
    v43[3] = &unk_1E721EB70;
    objc_copyWeak(&v44, &location);
    v37 = [(UITableViewDiffableDataSource *)v35 initWithTableView:tableView cellProvider:v43];
    dataSource = v8->_dataSource;
    v8->_dataSource = v37;

    [(SFTableViewDiffableDataSource *)v8->_dataSource setDelegate:v8];
    identifierCopy = v42;
    v39 = v8;
    objc_destroyWeak(&v44);

    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __80__SFClearHistoryViewController_initWithTabGroupManager_activeProfileIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

uint64_t __80__SFClearHistoryViewController_initWithTabGroupManager_activeProfileIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1096);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

id __80__SFClearHistoryViewController_initWithTabGroupManager_activeProfileIdentifier___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained _cellForIdentifier:v6 indexPath:v7];

  return v9;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SFClearHistoryViewController;
  [(SFClearHistoryViewController *)&v4 viewDidLoad];
  tableView = [(SFClearHistoryViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"toggleCell"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"actionCell"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SFClearHistoryViewController;
  [(SFClearHistoryViewController *)&v4 viewWillAppear:appear];
  [(SFClearHistoryViewController *)self _reloadDataAnimatingDifferences:0];
}

- (void)_reloadDataAnimatingDifferences:(BOOL)differences
{
  differencesCopy = differences;
  v31 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [v5 appendSectionsWithIdentifiers:&unk_1EFF745B0];
  [v5 appendItemsWithIdentifiers:&unk_1EFF745C8];
  if (self->_numberOfProfileRows)
  {
    [v5 appendSectionsWithIdentifiers:&unk_1EFF745E0];
    [v5 appendItemsWithIdentifiers:&unk_1EFF745F8];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = self->_profiles;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        v10 = 0;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          identifier = [*(*(&v24 + 1) + 8 * v10) identifier];
          v29 = identifier;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
          [v5 appendItemsWithIdentifiers:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v8);
    }
  }

  [v5 appendSectionsWithIdentifiers:&unk_1EFF74610];
  [v5 appendItemsWithIdentifiers:&unk_1EFF74628];
  [v5 appendSectionsWithIdentifiers:&unk_1EFF74640];
  [v5 appendItemsWithIdentifiers:&unk_1EFF74658];
  [(UITableViewDiffableDataSource *)self->_dataSource applySnapshot:v5 animatingDifferences:differencesCopy];
  [(SFClearHistoryViewController *)self _updateCachedTabCountForCurrentSelection];
  tableView = [(SFClearHistoryViewController *)self tableView];
  [tableView reloadData];

  tableView2 = [(SFClearHistoryViewController *)self tableView];
  [tableView2 layoutIfNeeded];

  navigationController = [(SFClearHistoryViewController *)self navigationController];
  sheetPresentationController = [navigationController sheetPresentationController];

  [sheetPresentationController invalidateDetents];
  v17 = objc_alloc_init(MEMORY[0x1E69DD028]);
  defaultContentConfiguration = [v17 defaultContentConfiguration];
  [v17 setContentConfiguration:defaultContentConfiguration];

  [v17 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __64__SFClearHistoryViewController__reloadDataAnimatingDifferences___block_invoke;
  v23[3] = &unk_1E721EB98;
  v23[4] = self;
  v23[5] = v19;
  v20 = [MEMORY[0x1E69DCF58] customDetentWithIdentifier:0 resolver:v23];
  v28[0] = v20;
  largeDetent = [MEMORY[0x1E69DCF58] largeDetent];
  v28[1] = largeDetent;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  [sheetPresentationController setDetents:v22];
}

double __64__SFClearHistoryViewController__reloadDataAnimatingDifferences___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) tableView];
  [v4 contentSize];
  v6 = v5 + *(a1 + 40);
  [v3 maximumDetentValue];
  if (v6 >= v7)
  {
    [v3 maximumDetentValue];
    v10 = v11;
  }

  else
  {
    v8 = [*(a1 + 32) tableView];
    [v8 contentSize];
    v10 = v9 + *(a1 + 40);
  }

  return v10;
}

- (id)_cellForIdentifier:(id)identifier indexPath:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  v8 = -[UITableViewDiffableDataSource sectionIdentifierForIndex:](self->_dataSource, "sectionIdentifierForIndex:", [pathCopy section]);
  integerValue = [v8 integerValue];

  if (integerValue > 1)
  {
    if (integerValue == 2)
    {
      v10 = [(SFClearHistoryViewController *)self _cellForAdditionalOptionsItemIdentifier:identifierCopy indexPath:pathCopy];
      goto LABEL_11;
    }

    if (integerValue == 3)
    {
      v10 = [(SFClearHistoryViewController *)self _cellForActionItemIdentifier:identifierCopy indexPath:pathCopy];
      goto LABEL_11;
    }

LABEL_8:
    tableView = [(SFClearHistoryViewController *)self tableView];
    v12 = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:pathCopy];

    goto LABEL_12;
  }

  if (!integerValue)
  {
    v10 = [(SFClearHistoryViewController *)self _cellForTimeFrameItemIdentifier:identifierCopy indexPath:pathCopy];
    goto LABEL_11;
  }

  if (integerValue != 1)
  {
    goto LABEL_8;
  }

  v10 = [(SFClearHistoryViewController *)self _cellForProfileItemIdentifier:identifierCopy indexPath:pathCopy];
LABEL_11:
  v12 = v10;
LABEL_12:

  return v12;
}

- (id)_cellForTimeFrameItemIdentifier:(id)identifier indexPath:(id)path
{
  pathCopy = path;
  identifierCopy = identifier;
  tableView = [(SFClearHistoryViewController *)self tableView];
  v9 = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:pathCopy];

  integerValue = [identifierCopy integerValue];
  if (integerValue > 1)
  {
    if (integerValue != 2 && integerValue != 3)
    {
      goto LABEL_7;
    }
  }

  else if (integerValue > 1)
  {
    goto LABEL_7;
  }

  v11 = _WBSLocalizedString();
  textLabel = [v9 textLabel];
  [textLabel setText:v11];

LABEL_7:
  if ([pathCopy isEqual:self->_currentlySelectedTimeframeIndex])
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v9 setAccessoryType:v13];

  return v9;
}

- (id)_cellForProfileItemIdentifier:(id)identifier indexPath:(id)path
{
  pathCopy = path;
  identifierCopy = identifier;
  tableView = [(SFClearHistoryViewController *)self tableView];
  v9 = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:pathCopy];

  if ([pathCopy isEqual:self->_currentlySelectedProfileIndex])
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  [v9 setAccessoryType:v10];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = -[NSArray objectAtIndexedSubscript:](self->_profiles, "objectAtIndexedSubscript:", [pathCopy row] - 1);
    title = [v12 title];
    textLabel = [v9 textLabel];
    [textLabel setText:title];
  }

  else
  {
    v12 = _WBSLocalizedString();
    title = [v9 textLabel];
    [title setText:v12];
  }

  return v9;
}

- (id)_cellForAdditionalOptionsItemIdentifier:(id)identifier indexPath:(id)path
{
  pathCopy = path;
  if ([identifier integerValue] == 5)
  {
    tableView = [(SFClearHistoryViewController *)self tableView];
    v8 = [tableView dequeueReusableCellWithIdentifier:@"toggleCell" forIndexPath:pathCopy];

    v9 = _WBSLocalizedString();
    textLabel = [v8 textLabel];
    [textLabel setText:v9];

    [v8 setSelectionStyle:0];
    v11 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [v11 setOn:self->_closeAllTabsToggleEnabled];
    [v11 setEnabled:self->_cachedTabCount != 0];
    [v11 setAccessibilityIdentifier:@"CloseAllTabsSwitch"];
    [v11 addTarget:self action:sel_toggleSwitchChanged_ forControlEvents:4096];
    [v8 setAccessoryView:v11];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_cellForActionItemIdentifier:(id)identifier indexPath:(id)path
{
  v26[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([identifier integerValue] == 6)
  {
    tableView = [(SFClearHistoryViewController *)self tableView];
    v8 = [tableView dequeueReusableCellWithIdentifier:@"actionCell" forIndexPath:pathCopy];

    borderedProminentButtonConfiguration = [MEMORY[0x1E69DC740] borderedProminentButtonConfiguration];
    [borderedProminentButtonConfiguration contentInsets];
    [borderedProminentButtonConfiguration setContentInsets:v10 + 8.0];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [borderedProminentButtonConfiguration setBaseForegroundColor:whiteColor];

    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    [borderedProminentButtonConfiguration setBaseBackgroundColor:systemRedColor];

    v13 = objc_alloc(MEMORY[0x1E696AAB0]);
    v14 = _WBSLocalizedString();
    v25 = *MEMORY[0x1E69DB648];
    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    v26[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v17 = [v13 initWithString:v14 attributes:v16];
    [borderedProminentButtonConfiguration setAttributedTitle:v17];

    v18 = [MEMORY[0x1E69DC738] buttonWithConfiguration:borderedProminentButtonConfiguration primaryAction:0];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v18 setAccessibilityIdentifier:@"ClearHistoryButton"];
    [v18 addTarget:self action:sel_submitButtonTapped_ forControlEvents:64];
    contentView = [v8 contentView];
    [contentView addSubview:v18];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v8 setBackgroundColor:clearColor];

    v21 = MEMORY[0x1E696ACD8];
    contentView2 = [v8 contentView];
    v23 = [v21 safari_constraintsMatchingFrameOfView:v18 withFrameOfView:contentView2];
    [v21 activateConstraints:v23];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_profileIdentifiersToBeClearedWithCurrentSelection
{
  v3 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:self->_currentlySelectedProfileIndex];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [(NSArray *)self->_profiles objectAtIndexedSubscript:[(NSIndexPath *)self->_currentlySelectedProfileIndex row]- 1];
      v5 = MEMORY[0x1E695DFD8];
      identifier = [v4 identifier];
      v7 = [v5 setWithObject:identifier];

      goto LABEL_10;
    }

    if ([v3 integerValue] == 4)
    {
      [(NSArray *)self->_profiles safari_setByApplyingBlock:&__block_literal_global_54];
    }

    else
    {
      [MEMORY[0x1E695DFD8] set];
    }
    v8 = ;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69C8B58]];
  }

  v7 = v8;
LABEL_10:

  return v7;
}

- (void)_updateCachedTabCountForCurrentSelection
{
  delegate = [(SFClearHistoryViewController *)self delegate];
  _profileIdentifiersToBeClearedWithCurrentSelection = [(SFClearHistoryViewController *)self _profileIdentifiersToBeClearedWithCurrentSelection];
  self->_cachedTabCount = [delegate clearHistoryViewController:self numberOfTabsToBeClosedForProfilesWithIdentifiers:_profileIdentifiersToBeClearedWithCurrentSelection];
}

- (void)submitButtonTapped:(id)tapped
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF00] now];
  v5 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:self->_currentlySelectedTimeframeIndex];
  integerValue = [v5 integerValue];
  v7 = [SFClearHistoryUtilities clearHistoryTimeFrameStringFromItemType:integerValue];
  v8 = 0x1E695E000uLL;
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults setObject:v7 forKey:@"ClearHistoryLastSelectedTimeFrame"];

  v10 = 0;
  v33 = v4;
  if (integerValue <= 2)
  {
    if (integerValue)
    {
      if (integerValue == 1)
      {
        v12 = MEMORY[0x1E695DF00];
        v13 = 0;
      }

      else
      {
        if (integerValue != 2)
        {
          goto LABEL_14;
        }

        v12 = MEMORY[0x1E695DF00];
        v13 = 1;
      }

      distantPast = [v12 safari_dateOfMidnightNumberOfDaysAgo:v13];
    }

    else
    {
      distantPast = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-3600.0];
    }
  }

  else if ((integerValue - 4) >= 3)
  {
    if (integerValue != 3)
    {
      goto LABEL_14;
    }

    distantPast = [MEMORY[0x1E695DF00] distantPast];
  }

  else
  {
    distantPast = v4;
  }

  v10 = distantPast;
LABEL_14:
  v14 = *MEMORY[0x1E69C8B58];
  v15 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:self->_currentlySelectedProfileIndex];
  if (!v15)
  {
    v31 = v7;
    v32 = v5;
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v7;
    v32 = v5;
    v16 = [(NSArray *)self->_profiles objectAtIndexedSubscript:[(NSIndexPath *)self->_currentlySelectedProfileIndex row]- 1];
    identifier = [v16 identifier];

    v14 = identifier;
    v8 = 0x1E695E000;
LABEL_18:
    safari_browserDefaults2 = [*v8 safari_browserDefaults];
    v19 = [MEMORY[0x1E696AD98] numberWithBool:0];
    [safari_browserDefaults2 setObject:v19 forKey:@"ClearHistoryLastSelectedAllProfiles"];

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"profile: %@", v15];
    v21 = 0;
    goto LABEL_19;
  }

  if ([v15 integerValue] != 4)
  {
    goto LABEL_28;
  }

  v31 = v7;
  v32 = v5;
  v28 = [(NSArray *)self->_profiles count]> 1;
  safari_browserDefaults3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:v28];
  [safari_browserDefaults3 setObject:v30 forKey:@"ClearHistoryLastSelectedAllProfiles"];

  v21 = 1;
  v20 = @"All profiles";
LABEL_19:
  v22 = WBS_LOG_CHANNEL_PREFIXProfiles();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    if (self->_closeAllTabsToggleEnabled)
    {
      v23 = MEMORY[0x1E695E118];
    }

    else
    {
      v23 = MEMORY[0x1E695E110];
    }

    *buf = 138412546;
    v35 = v20;
    v36 = 2112;
    v37 = v23;
    _os_log_impl(&dword_18B7AC000, v22, OS_LOG_TYPE_INFO, "Clearing history for %@; closeAllTabs: %@", buf, 0x16u);
  }

  v24 = self->_closeAllTabsToggleEnabled && self->_cachedTabCount != 0;
  safari_browserDefaults4 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_closeAllTabsToggleEnabled];
  [safari_browserDefaults4 setObject:v26 forKey:@"ClearHistoryLastEnabledCloseAllTabs"];

  delegate = [(SFClearHistoryViewController *)self delegate];
  v4 = v33;
  [delegate clearHistoryViewController:self clearHistoryVisitsAddedAfterDate:v10 beforeDate:v33 profileIdentifier:v14 clearAllProfiles:v21 closeAllTabs:v24];

  [(SFClearHistoryViewController *)self dismissViewControllerAnimated:1 completion:0];
  v7 = v31;
  v5 = v32;
LABEL_28:
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
  v8 = -[UITableViewDiffableDataSource sectionIdentifierForIndex:](self->_dataSource, "sectionIdentifierForIndex:", [pathCopy section]);
  integerValue = [v8 integerValue];
  if (integerValue == 1)
  {
    v10 = [viewCopy cellForRowAtIndexPath:self->_currentlySelectedProfileIndex];
    [v10 setAccessoryType:0];
    [v7 setAccessoryType:3];
    objc_storeStrong(&self->_currentlySelectedProfileIndex, path);
    [(SFClearHistoryViewController *)self _updateCachedTabCountForCurrentSelection];
    currentlySelectedTimeframeIndex = [(SFClearHistoryViewController *)self tableView];
    [currentlySelectedTimeframeIndex reloadData];
  }

  else
  {
    if (integerValue)
    {
      goto LABEL_6;
    }

    v10 = [viewCopy cellForRowAtIndexPath:self->_currentlySelectedTimeframeIndex];
    [v10 setAccessoryType:0];
    [v7 setAccessoryType:3];
    v11 = pathCopy;
    currentlySelectedTimeframeIndex = self->_currentlySelectedTimeframeIndex;
    self->_currentlySelectedTimeframeIndex = v11;
  }

LABEL_6:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)dataSource:(id)source headerTextForSection:(int64_t)section
{
  v4 = [source sectionIdentifierForIndex:section];
  if ([v4 integerValue] > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = _WBSLocalizedString();
  }

  return v5;
}

- (id)dataSource:(id)source footerTextForSection:(int64_t)section
{
  v5 = [source sectionIdentifierForIndex:section];
  if ([v5 integerValue] != 2)
  {
    v8 = 0;
    goto LABEL_10;
  }

  cachedTabCount = self->_cachedTabCount;
  if (self->_areTabGroupsInUse)
  {
    if (cachedTabCount)
    {
      v7 = MEMORY[0x1E696AEC0];
LABEL_8:
      v9 = _WBSLocalizedString();
      v8 = [v7 localizedStringWithFormat:v9, self->_cachedTabCount];

      goto LABEL_10;
    }
  }

  else if (cachedTabCount)
  {
    v7 = MEMORY[0x1E696AEC0];
    goto LABEL_8;
  }

  v8 = _WBSLocalizedString();
LABEL_10:

  return v8;
}

- (SFClearHistoryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end