@interface HKClinicalAuthorizationSettingsViewController
- (BOOL)_cellAtIndexPathIsViewAppPrivacyPolicyCell:(id)cell;
- (BOOL)_isShowingShareAuthorizationModeSection;
- (BOOL)_shouldDisplayAppInformationSection;
- (BOOL)_shouldDisplayShareAuthorizationModeSection;
- (BOOL)_shouldDisplayShareDataTypes;
- (BOOL)_shouldHighlightAppInformationCellAtIndexPath:(id)path;
- (BOOL)_shouldHighlightViewAppPrivacyPolicyCellAtIndexPath:(id)path;
- (BOOL)_shouldPresentStopSharingDialogueBeforeDisallowing;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (HKClinicalAuthorizationSettingsViewController)init;
- (HKClinicalAuthorizationSettingsViewController)initWithContext:(id)context style:(int64_t)style;
- (HKClinicalAuthorizationSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HKClinicalAuthorizationSettingsViewController)initWithStyle:(int64_t)style;
- (HKHealthPrivacyServicePromptControllerDelegate)delegate;
- (NSString)readUsageDescription;
- (id)_appInformationCellForIndexPath:(id)path;
- (id)_calculateSections;
- (id)_createAppInformationSectionCells;
- (id)_doNotAllowButtonTitle;
- (id)_formatStringForShareAuthorizationModeFooterWithMode:(int64_t)mode;
- (id)_indexPathForShareAuthorizationMode:(int64_t)mode;
- (id)_indexPathForViewAppPrivacyPolicyCell;
- (id)_messageForStopSharingConfirmation;
- (id)_shareAuthorizationModeCellForIndexPath:(id)path;
- (id)_shareDataTypeCellForIndexPath:(id)path;
- (id)_shareUsageDescriptionCellForIndexPath:(id)path;
- (id)_titleForAppInformationFooter;
- (id)_titleForShareAuthorizationModeFooter;
- (id)_titleForShareDataTypesFooter;
- (id)_typeForIndexPath:(id)path;
- (id)_viewAppPrivacyPolicyCellForIndexPath:(id)path;
- (id)_visibleShareAuthorizationModeCellForMode:(int64_t)mode;
- (id)authorizationController;
- (id)footerStringforDate:(id)date mode:(int64_t)mode source:(id)source;
- (id)source;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)_sectionForTableViewSection:(int64_t)section;
- (int64_t)_shareAuthorizationModeForIndexPath:(id)path;
- (int64_t)_tableViewSectionForSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_allowButtonPressed:(id)pressed;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_configureInitialAuthorizationSettingsForPrompting;
- (void)_configureNavigationItemWithSource:(id)source;
- (void)_configureTableView;
- (void)_didCompleteSwitchCellValueChangeAsFirstEnabledType:(BOOL)type;
- (void)_didReloadAuthorizationSettings;
- (void)_displayGuestModeAlertWithCompletion:(id)completion;
- (void)_doNotAllowButtonPressed:(id)pressed;
- (void)_fetchPrivacyPolicyURLForSource:(id)source;
- (void)_finishWithError:(id)error;
- (void)_hideShareAuthorizationModeSectionIfNeeded;
- (void)_messageForStopSharingConfirmation;
- (void)_presentConfirmationForStopSharingIfNeededFromSender:(id)sender withAcceptHandler:(id)handler;
- (void)_presentViewAppPrivacyPolicyURLErrorAlert;
- (void)_reloadSections;
- (void)_reloadViewAppPrivacyPolicyCell;
- (void)_setUpFooterView;
- (void)_shareAuthorizationModeCellPressed:(id)pressed;
- (void)_showShareAuthorizationModeSectionIfNeeded;
- (void)_updateAllowButtonEnabledStateAnimated:(BOOL)animated;
- (void)_updateFooterButtonsTitles;
- (void)_updateForCurrentContentSizeCategory;
- (void)_updateShareAuthorizationModeSectionFooter;
- (void)_updateShareAuthorizationModeSectionVisibilityIfNeeded;
- (void)_verifySections:(id)sections isEqualToSections:(id)toSections afterInsertingSection:(id)section;
- (void)_viewAppPrivacyPolicyCellPressed:(id)pressed;
- (void)_workAroundTableHeaderPaddingIssue;
- (void)dealloc;
- (void)reloadAuthorizationSettings;
- (void)switchCellValueChanged:(id)changed value:(BOOL)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HKClinicalAuthorizationSettingsViewController

- (HKClinicalAuthorizationSettingsViewController)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalAuthorizationSettingsViewController)initWithStyle:(int64_t)style
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (HKClinicalAuthorizationSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HKClinicalAuthorizationSettingsViewController)initWithContext:(id)context style:(int64_t)style
{
  contextCopy = context;
  if (style >= 2)
  {
    [HKClinicalAuthorizationSettingsViewController initWithContext:style:];
  }

  else if (style == 1)
  {
    v8 = HKHealthRecordsAPILocalizedString(@"CATEGORY_SELECTION_MAIN_TITLE");
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    source = [contextCopy source];
    v11 = HKHealthRecordsAPILocalizedStringWithSource(@"APP_%@_ACCESS_REQUEST_AUTH", source);
    source2 = [contextCopy source];
    name = [source2 name];
    v14 = [v9 initWithFormat:v11, name];

    v15 = +[HKClinicalAuthorizationFlowManager tableViewHeaderIcon];
    v23.receiver = self;
    v23.super_class = HKClinicalAuthorizationSettingsViewController;
    v16 = [(OBTableWelcomeController *)&v23 initWithTitle:v8 detailText:v14 icon:v15 adoptTableViewScrollView:1];

    if (!v16)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v22.receiver = self;
  v22.super_class = HKClinicalAuthorizationSettingsViewController;
  v16 = [(OBTableWelcomeController *)&v22 initWithTitle:&stru_1F42FFBE0 detailText:0 icon:0 adoptTableViewScrollView:1];
  if (v16)
  {
LABEL_7:
    objc_storeStrong(&v16->_context, context);
    v16->_style = style;
    [(HKClinicalAuthorizationSettingsViewController *)v16 setShouldMoveHeaderViewTitleToNavigationTitleWhenScrolledOffScreen:0];
    v17 = [HKClinicalAuthorizationDisplayController alloc];
    authorizationController = [contextCopy authorizationController];
    v19 = [(HKClinicalAuthorizationDisplayController *)v17 initWithAuthorizationController:authorizationController];
    displayController = v16->_displayController;
    v16->_displayController = v19;
  }

LABEL_8:

  return v16;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HKClinicalAuthorizationSettingsViewController;
  [(OBTableWelcomeController *)&v4 viewDidLoad];
  source = [(HKClinicalAuthorizationSettingsViewController *)self source];
  [(HKClinicalAuthorizationSettingsViewController *)self _configureTableView];
  [(HKClinicalAuthorizationSettingsViewController *)self _configureNavigationItemWithSource:source];
  [(HKClinicalAuthorizationSettingsViewController *)self _setUpFooterView];
  if ([(HKClinicalAuthorizationSettingsViewController *)self isPrompting])
  {
    [(HKClinicalAuthorizationSettingsViewController *)self _configureInitialAuthorizationSettingsForPrompting];
  }

  [(HKClinicalAuthorizationSettingsViewController *)self _fetchPrivacyPolicyURLForSource:source];
  [(HKClinicalAuthorizationSettingsViewController *)self setModalInPresentation:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HKClinicalAuthorizationSettingsViewController;
  [(OBTableWelcomeController *)&v5 viewWillAppear:appear];
  [(HKClinicalAuthorizationSettingsViewController *)self reloadAuthorizationSettings];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__HKClinicalAuthorizationSettingsViewController_viewWillAppear___block_invoke;
  block[3] = &unk_1E81B55A8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HKClinicalAuthorizationSettingsViewController;
  [(OBBaseWelcomeController *)&v5 viewDidAppear:appear];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView flashScrollIndicators];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HKClinicalAuthorizationSettingsViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
  if ([(HKClinicalAuthorizationSettingsViewController *)self isPrompting])
  {
    [(HKClinicalAuthorizationSettingsViewController *)self _workAroundTableHeaderPaddingIssue];
  }

  else
  {
    tableView = [(OBTableWelcomeController *)self tableView];
    [tableView setTableHeaderView:0];
  }
}

- (void)dealloc
{
  lookUpAppPrivacyPolicyURLOperation = [(HKClinicalAuthorizationSettingsViewController *)self lookUpAppPrivacyPolicyURLOperation];
  [lookUpAppPrivacyPolicyURLOperation cancel];

  v4.receiver = self;
  v4.super_class = HKClinicalAuthorizationSettingsViewController;
  [(HKClinicalAuthorizationSettingsViewController *)&v4 dealloc];
}

- (void)_reloadSections
{
  _createAppInformationSectionCells = [(HKClinicalAuthorizationSettingsViewController *)self _createAppInformationSectionCells];
  [(HKClinicalAuthorizationSettingsViewController *)self setAppInformationSectionCells:_createAppInformationSectionCells];

  _calculateSections = [(HKClinicalAuthorizationSettingsViewController *)self _calculateSections];
  [(HKClinicalAuthorizationSettingsViewController *)self setSections:_calculateSections];
}

- (void)reloadAuthorizationSettings
{
  if (-[HKClinicalAuthorizationSettingsViewController shouldCommitUpdatesImmediately](self, "shouldCommitUpdatesImmediately") || (-[HKClinicalAuthorizationSettingsViewController authorizationController](self, "authorizationController"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 needsInitialLoad], v3, v4))
  {
    objc_initWeak(&location, self);
    authorizationController = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__HKClinicalAuthorizationSettingsViewController_reloadAuthorizationSettings__block_invoke;
    v6[3] = &unk_1E81B5738;
    objc_copyWeak(&v7, &location);
    [authorizationController reloadWithCompletion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {

    [(HKClinicalAuthorizationSettingsViewController *)self _didReloadAuthorizationSettings];
  }
}

void __76__HKClinicalAuthorizationSettingsViewController_reloadAuthorizationSettings__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReloadAuthorizationSettings];
}

- (void)_didReloadAuthorizationSettings
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  authorizationController = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  -[HKClinicalAuthorizationSettingsViewController setAuthorizationMode:](self, "setAuthorizationMode:", [authorizationController authorizationModeForSource]);

  [(HKClinicalAuthorizationSettingsViewController *)self _reloadSections];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];

  [(HKClinicalAuthorizationSettingsViewController *)self _updateFooterButtonsTitles];

  [(HKClinicalAuthorizationSettingsViewController *)self _updateAllowButtonEnabledStateAnimated:0];
}

- (void)_configureNavigationItemWithSource:(id)source
{
  sourceCopy = source;
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];
  if ([(HKClinicalAuthorizationSettingsViewController *)self isPrompting])
  {
    v5 = HKHealthRecordsAPILocalizedString(@"IN_APP_SEQUENCE_TITLE_CATEGORIES");
    [navigationItem setTitle:v5];

    v6 = HKHealthRecordsAPILocalizedString(@"IN_APP_SEQUENCE_TITLE_ACCESSIBILITY_%@");
    [navigationItem setAccessibilityLabel:v6];

    name = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonPressed_];
    [navigationItem setRightBarButtonItem:name];
  }

  else
  {
    [navigationItem setBackBarButtonItem:0];
    [navigationItem setRightBarButtonItem:0];
    name = [sourceCopy name];
    [navigationItem setTitle:name];
  }
}

- (void)_configureInitialAuthorizationSettingsForPrompting
{
  OUTLINED_FUNCTION_1_1();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"self.isPrompting" object:? file:? lineNumber:? description:?];
}

- (void)_updateFooterButtonsTitles
{
  _doNotAllowButtonTitle = [(HKClinicalAuthorizationSettingsViewController *)self _doNotAllowButtonTitle];
  [(OBLinkTrayButton *)self->_doNotAllowButton setTitle:_doNotAllowButtonTitle forState:0];
}

- (void)_updateAllowButtonEnabledStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  authorizationController = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  anyTypeEnabled = [authorizationController anyTypeEnabled];

  LODWORD(authorizationController) = [(OBBoldTrayButton *)self->_allowButton isEnabled];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__HKClinicalAuthorizationSettingsViewController__updateAllowButtonEnabledStateAnimated___block_invoke;
  v11[3] = &unk_1E81B8570;
  v11[4] = self;
  v12 = anyTypeEnabled;
  v7 = _Block_copy(v11);
  v8 = v7;
  if (anyTypeEnabled == authorizationController || !animatedCopy)
  {
    (*(v7 + 2))(v7);
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:0 curve:v7 animations:0.15];
    [v10 startAnimation];
  }
}

- (void)_configureTableView
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDelegate:self];

  traitCollection = [(HKClinicalAuthorizationSettingsViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    if ([(HKClinicalAuthorizationSettingsViewController *)self isPrompting])
    {
      [MEMORY[0x1E69DC888] systemBackgroundColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    }
    v9 = ;
    view = [(HKClinicalAuthorizationSettingsViewController *)self view];
    [view setBackgroundColor:v9];

    view2 = [(HKClinicalAuthorizationSettingsViewController *)self view];
    backgroundColor = [view2 backgroundColor];
    tableView3 = [(OBTableWelcomeController *)self tableView];
    [tableView3 setBackgroundColor:backgroundColor];
  }

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"AuthorizationModeCellReuseIdentifier"];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"AuthorizationSettingsCellReuseIdentifier"];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:@"ShareUsageDescriptionCellReuseIdentifier"];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 registerClass:objc_opt_class() forCellReuseIdentifier:@"ViewAppPrivacyPolicyCellReuseIdentifier"];
}

- (void)_workAroundTableHeaderPaddingIssue
{
  tableView = [(OBTableWelcomeController *)self tableView];
  tableHeaderView = [tableView tableHeaderView];
  [tableHeaderView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  tableView2 = [(OBTableWelcomeController *)self tableView];
  tableHeaderView2 = [tableView2 tableHeaderView];
  [tableHeaderView2 setFrame:{v6, v8, v10, v12 + -30.0}];
}

- (void)_setUpFooterView
{
  if (self->_style)
  {
    boldButton = [MEMORY[0x1E69B7D00] boldButton];
    allowButton = self->_allowButton;
    self->_allowButton = boldButton;

    v5 = self->_allowButton;
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [(OBBoldTrayButton *)v5 setTintColor:systemBlueColor];

    v7 = self->_allowButton;
    v8 = HKHealthRecordsAPILocalizedString(@"SHARE_BUTTON_TITLE");
    [(OBBoldTrayButton *)v7 setTitle:v8 forState:0];

    [(OBBoldTrayButton *)self->_allowButton addTarget:self action:sel__allowButtonPressed_ forControlEvents:64];
    buttonTray = [(HKClinicalAuthorizationSettingsViewController *)self buttonTray];
    [buttonTray addButton:self->_allowButton];

    linkButton = [MEMORY[0x1E69B7D38] linkButton];
    doNotAllowButton = self->_doNotAllowButton;
    self->_doNotAllowButton = linkButton;

    v12 = self->_doNotAllowButton;
    v13 = HKHealthRecordsAPILocalizedString(@"DO_NOT_ALLOW_BUTTON_TITLE_UNDETERMINED");
    [(OBLinkTrayButton *)v12 setTitle:v13 forState:0];

    [(OBLinkTrayButton *)self->_doNotAllowButton addTarget:self action:sel__doNotAllowButtonPressed_ forControlEvents:64];
    buttonTray2 = [(HKClinicalAuthorizationSettingsViewController *)self buttonTray];
    [buttonTray2 addButton:self->_doNotAllowButton];
  }
}

- (id)_typeForIndexPath:(id)path
{
  pathCopy = path;
  if (-[HKClinicalAuthorizationSettingsViewController _sectionForTableViewSection:](self, "_sectionForTableViewSection:", [pathCopy section]) == 1)
  {
    authorizationController = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
    orderedTypesForReading = [authorizationController orderedTypesForReading];
    v7 = [orderedTypesForReading objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_sectionForTableViewSection:(int64_t)section
{
  sections = [(HKClinicalAuthorizationSettingsViewController *)self sections];
  v5 = [sections objectAtIndexedSubscript:section];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (int64_t)_tableViewSectionForSection:(int64_t)section
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  sections = [(HKClinicalAuthorizationSettingsViewController *)self sections];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__HKClinicalAuthorizationSettingsViewController__tableViewSectionForSection___block_invoke;
  v7[3] = &unk_1E81B8E68;
  v7[4] = &v8;
  v7[5] = section;
  [sections enumerateObjectsUsingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __77__HKClinicalAuthorizationSettingsViewController__tableViewSectionForSection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 integerValue];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (id)_createAppInformationSectionCells
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  readUsageDescription = [(HKClinicalAuthorizationSettingsViewController *)self readUsageDescription];
  v5 = [readUsageDescription length];

  if (v5)
  {
    [v3 addObject:&unk_1F4383C70];
  }

  lookUpAppPrivacyPolicyURLOperation = [(HKClinicalAuthorizationSettingsViewController *)self lookUpAppPrivacyPolicyURLOperation];
  if (lookUpAppPrivacyPolicyURLOperation)
  {
    v7 = lookUpAppPrivacyPolicyURLOperation;
    source = [(HKClinicalAuthorizationSettingsViewController *)self source];

    if (source)
    {
      [v3 addObject:&unk_1F4383C88];
    }
  }

  return v3;
}

- (id)_calculateSections
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(HKClinicalAuthorizationSettingsViewController *)self _shouldDisplayAppInformationSection])
  {
    [v3 addObject:&unk_1F4383C70];
  }

  if ([(HKClinicalAuthorizationSettingsViewController *)self _shouldDisplayShareDataTypes])
  {
    [v3 addObject:&unk_1F4383C88];
  }

  if ([(HKClinicalAuthorizationSettingsViewController *)self _shouldDisplayShareAuthorizationModeSection])
  {
    [v3 addObject:&unk_1F4383CA0];
  }

  return v3;
}

- (BOOL)_shouldDisplayAppInformationSection
{
  appInformationSectionCells = [(HKClinicalAuthorizationSettingsViewController *)self appInformationSectionCells];
  v3 = [appInformationSectionCells count] != 0;

  return v3;
}

- (BOOL)_shouldDisplayShareDataTypes
{
  authorizationController = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  orderedTypesForReading = [authorizationController orderedTypesForReading];
  v4 = [orderedTypesForReading count] != 0;

  return v4;
}

- (BOOL)_shouldDisplayShareAuthorizationModeSection
{
  if ([(HKClinicalAuthorizationSettingsViewController *)self isPrompting]|| ![(HKClinicalAuthorizationSettingsViewController *)self _shouldDisplayShareDataTypes])
  {
    return 0;
  }

  authorizationController = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  anyTypeEnabled = [authorizationController anyTypeEnabled];

  return anyTypeEnabled;
}

- (void)_allowButtonPressed:(id)pressed
{
  if (![(HKClinicalAuthorizationSettingsViewController *)self isPrompting])
  {
    [HKClinicalAuthorizationSettingsViewController _allowButtonPressed:];
  }

  v4 = [HKClinicalAuthorizationNewRecordsViewController alloc];
  context = [(HKClinicalAuthorizationSettingsViewController *)self context];
  v8 = [(HKClinicalAuthorizationNewRecordsViewController *)v4 initWithContext:context];

  delegate = [(HKClinicalAuthorizationSettingsViewController *)self delegate];
  [(HKClinicalAuthorizationNewRecordsViewController *)v8 setDelegate:delegate];

  navigationController = [(HKClinicalAuthorizationSettingsViewController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];
}

- (void)_shareAuthorizationModeCellPressed:(id)pressed
{
  pressedCopy = pressed;
  tableView = [(OBTableWelcomeController *)self tableView];
  v6 = [tableView indexPathForCell:pressedCopy];

  v7 = [(HKClinicalAuthorizationSettingsViewController *)self _shareAuthorizationModeForIndexPath:v6];
  if (v7 != [(HKClinicalAuthorizationSettingsViewController *)self authorizationMode])
  {
    v8 = [(HKClinicalAuthorizationSettingsViewController *)self _visibleShareAuthorizationModeCellForMode:[(HKClinicalAuthorizationSettingsViewController *)self authorizationMode]];
    [(HKClinicalAuthorizationSettingsViewController *)self setAuthorizationMode:v7];
    [v8 setAccessoryType:0];
    [pressedCopy setAccessoryType:3];
    if ([(HKClinicalAuthorizationSettingsViewController *)self shouldCommitUpdatesImmediately])
    {
      objc_initWeak(&location, self);
      authorizationController = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
      authorizationMode = [(HKClinicalAuthorizationSettingsViewController *)self authorizationMode];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __84__HKClinicalAuthorizationSettingsViewController__shareAuthorizationModeCellPressed___block_invoke;
      v11[3] = &unk_1E81B8298;
      objc_copyWeak(&v12, &location);
      [authorizationController commitAllTypesAndUpdateAuthorizationAnchorWithMode:authorizationMode completion:v11];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      [(HKClinicalAuthorizationSettingsViewController *)self _updateShareAuthorizationModeSectionFooter];
    }
  }
}

void __84__HKClinicalAuthorizationSettingsViewController__shareAuthorizationModeCellPressed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateShareAuthorizationModeSectionFooter];
}

- (void)_doNotAllowButtonPressed:(id)pressed
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__HKClinicalAuthorizationSettingsViewController__doNotAllowButtonPressed___block_invoke;
  v3[3] = &unk_1E81B55A8;
  v3[4] = self;
  [(HKClinicalAuthorizationSettingsViewController *)self _presentConfirmationForStopSharingIfNeededFromSender:pressed withAcceptHandler:v3];
}

void __74__HKClinicalAuthorizationSettingsViewController__doNotAllowButtonPressed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authorizationController];
  [v2 disableAllTypes];
  [v2 commitAllTypesAndUpdateAuthorizationAnchorWithMode:1 completion:0];
  [*(a1 + 32) _finishWithError:0];
}

- (void)_viewAppPrivacyPolicyCellPressed:(id)pressed
{
  v16 = *MEMORY[0x1E69E9840];
  pressedCopy = pressed;
  lookUpAppPrivacyPolicyURLOperation = [(HKClinicalAuthorizationSettingsViewController *)self lookUpAppPrivacyPolicyURLOperation];
  privacyPolicyURL = [lookUpAppPrivacyPolicyURLOperation privacyPolicyURL];

  if (privacyPolicyURL && ([privacyPolicyURL hk_isValidSafariViewControllerURL] & 1) != 0)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = HKSensitiveLogItem();
      v12 = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_1C3942000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ opening privacy policy URL %{public}@ in Safari view", &v12, 0x16u);
    }

    v10 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:privacyPolicyURL];
    popoverPresentationController = [v10 popoverPresentationController];
    [popoverPresentationController setSourceView:pressedCopy];

    [v10 setDismissButtonStyle:0];
    [(UIViewController *)self hk_presentModalCardViewController:v10 fullScreen:1 animated:1 completion:0];
  }

  else
  {
    [(HKClinicalAuthorizationSettingsViewController *)self _presentViewAppPrivacyPolicyURLErrorAlert];
  }
}

- (void)_presentViewAppPrivacyPolicyURLErrorAlert
{
  v3 = MEMORY[0x1E69DC650];
  context = [(HKClinicalAuthorizationSettingsViewController *)self context];
  source = [context source];
  v6 = HKHealthRecordsAPILocalizedStringWithSource(@"VIEW_APP_PRIVACY_POLICY_URL_ERROR_TRY_LATER", source);
  v12 = [v3 alertControllerWithTitle:0 message:v6 preferredStyle:1];

  v7 = MEMORY[0x1E69DC648];
  context2 = [(HKClinicalAuthorizationSettingsViewController *)self context];
  source2 = [context2 source];
  v10 = HKHealthRecordsAPILocalizedStringWithSource(@"VIEW_APP_PRIVACY_POLICY_URL_ERROR_OK_BUTTON", source2);
  v11 = [v7 actionWithTitle:v10 style:0 handler:0];

  [v12 addAction:v11];
  [(HKClinicalAuthorizationSettingsViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_cancelButtonPressed:(id)pressed
{
  v4 = [MEMORY[0x1E696ABC0] hk_error:7 description:@"The user canceled authorization."];
  [(HKClinicalAuthorizationSettingsViewController *)self _finishWithError:v4];
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  if ([(HKClinicalAuthorizationSettingsViewController *)self isPrompting])
  {
    _HKInitializeLogging();
    v5 = HKLogAuthorization();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v7 = HKLogAuthorization();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(HKClinicalAuthorizationYouShouldKnowViewController *)self _finishWithError:v7];
      }
    }

    delegate = [(HKClinicalAuthorizationSettingsViewController *)self delegate];
    [delegate promptControllerDidFinish:self error:errorCopy];
  }
}

- (void)switchCellValueChanged:(id)changed value:(BOOL)value
{
  valueCopy = value;
  changedCopy = changed;
  tableView = [(OBTableWelcomeController *)self tableView];
  v8 = [tableView indexPathForCell:changedCopy];

  v9 = [(HKClinicalAuthorizationSettingsViewController *)self _typeForIndexPath:v8];
  if (!v9)
  {
    [HKClinicalAuthorizationSettingsViewController switchCellValueChanged:value:];
    if (valueCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  if (!valueCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  authorizationController = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  v11 = [authorizationController anyTypeEnabled] ^ 1;

LABEL_6:
  objc_initWeak(&location, self);
  authorizationController2 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  shouldCommitUpdatesImmediately = [(HKClinicalAuthorizationSettingsViewController *)self shouldCommitUpdatesImmediately];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__HKClinicalAuthorizationSettingsViewController_switchCellValueChanged_value___block_invoke;
  v14[3] = &unk_1E81B8418;
  objc_copyWeak(&v15, &location);
  v16 = v11;
  [authorizationController2 setEnabled:valueCopy forType:v9 commit:shouldCommitUpdatesImmediately completion:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __78__HKClinicalAuthorizationSettingsViewController_switchCellValueChanged_value___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didCompleteSwitchCellValueChangeAsFirstEnabledType:*(a1 + 40)];
}

- (void)_didCompleteSwitchCellValueChangeAsFirstEnabledType:(BOOL)type
{
  typeCopy = type;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __101__HKClinicalAuthorizationSettingsViewController__didCompleteSwitchCellValueChangeAsFirstEnabledType___block_invoke;
  v11 = &unk_1E81B8298;
  objc_copyWeak(&v12, &location);
  v5 = _Block_copy(&v8);
  if ([(HKClinicalAuthorizationSettingsViewController *)self shouldCommitUpdatesImmediately:v8]&& typeCopy)
  {
    _defaultShareAuthorizationMode = [(HKClinicalAuthorizationSettingsViewController *)self _defaultShareAuthorizationMode];
    [(HKClinicalAuthorizationSettingsViewController *)self setAuthorizationMode:_defaultShareAuthorizationMode];
    authorizationController = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
    [authorizationController commitAllTypesAndUpdateAuthorizationAnchorWithMode:_defaultShareAuthorizationMode completion:v5];
  }

  else
  {
    v5[2](v5, 1, 0);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __101__HKClinicalAuthorizationSettingsViewController__didCompleteSwitchCellValueChangeAsFirstEnabledType___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  objc_copyWeak(&to, (a1 + 32));
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __101__HKClinicalAuthorizationSettingsViewController__didCompleteSwitchCellValueChangeAsFirstEnabledType___block_invoke_cold_1(&to, v5, v6);
    }
  }

  v7 = objc_loadWeakRetained(&to);
  [v7 _updateAllowButtonEnabledStateAnimated:1];

  v8 = objc_loadWeakRetained(&to);
  [v8 _updateShareAuthorizationModeSectionVisibilityIfNeeded];

  objc_destroyWeak(&to);
}

- (BOOL)_isShowingShareAuthorizationModeSection
{
  sections = [(HKClinicalAuthorizationSettingsViewController *)self sections];
  v3 = [sections containsObject:&unk_1F4383CA0];

  return v3;
}

- (void)_showShareAuthorizationModeSectionIfNeeded
{
  if (![(HKClinicalAuthorizationSettingsViewController *)self _isShowingShareAuthorizationModeSection]&& [(HKClinicalAuthorizationSettingsViewController *)self _shouldDisplayShareAuthorizationModeSection])
  {
    sections = [(HKClinicalAuthorizationSettingsViewController *)self sections];
    [(HKClinicalAuthorizationSettingsViewController *)self _reloadSections];
    sections2 = [(HKClinicalAuthorizationSettingsViewController *)self sections];
    [(HKClinicalAuthorizationSettingsViewController *)self _verifySections:sections isEqualToSections:sections2 afterInsertingSection:&unk_1F4383CA0];
    v4 = [sections2 indexOfObject:&unk_1F4383CA0];
    tableView = [(OBTableWelcomeController *)self tableView];
    v6 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v4];
    [tableView insertSections:v6 withRowAnimation:0];
  }
}

- (void)_hideShareAuthorizationModeSectionIfNeeded
{
  if ([(HKClinicalAuthorizationSettingsViewController *)self _isShowingShareAuthorizationModeSection]&& ![(HKClinicalAuthorizationSettingsViewController *)self _shouldDisplayShareAuthorizationModeSection])
  {
    sections = [(HKClinicalAuthorizationSettingsViewController *)self sections];
    [(HKClinicalAuthorizationSettingsViewController *)self _reloadSections];
    sections2 = [(HKClinicalAuthorizationSettingsViewController *)self sections];
    [(HKClinicalAuthorizationSettingsViewController *)self _verifySections:sections2 isEqualToSections:sections afterInsertingSection:&unk_1F4383CA0];
    v4 = [sections indexOfObject:&unk_1F4383CA0];
    tableView = [(OBTableWelcomeController *)self tableView];
    v6 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v4];
    [tableView deleteSections:v6 withRowAnimation:0];
  }
}

- (void)_updateShareAuthorizationModeSectionVisibilityIfNeeded
{
  [(HKClinicalAuthorizationSettingsViewController *)self _showShareAuthorizationModeSectionIfNeeded];

  [(HKClinicalAuthorizationSettingsViewController *)self _hideShareAuthorizationModeSectionIfNeeded];
}

- (void)_updateShareAuthorizationModeSectionFooter
{
  if ([(HKClinicalAuthorizationSettingsViewController *)self _tableViewSectionForSection:2]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = [(OBTableWelcomeController *)self tableView];
    [tableView reloadData];
  }
}

- (void)_verifySections:(id)sections isEqualToSections:(id)toSections afterInsertingSection:(id)section
{
  sectionsCopy = sections;
  toSectionsCopy = toSections;
  sectionCopy = section;
  if ([sectionsCopy containsObject:sectionCopy])
  {
    [HKClinicalAuthorizationSettingsViewController _verifySections:isEqualToSections:afterInsertingSection:];
  }

  if (([toSectionsCopy containsObject:sectionCopy] & 1) == 0)
  {
    [HKClinicalAuthorizationSettingsViewController _verifySections:isEqualToSections:afterInsertingSection:];
  }

  if (([sectionsCopy hk_allElementsUnique] & 1) == 0)
  {
    [HKClinicalAuthorizationSettingsViewController _verifySections:isEqualToSections:afterInsertingSection:];
  }

  if (([toSectionsCopy hk_allElementsUnique] & 1) == 0)
  {
    [HKClinicalAuthorizationSettingsViewController _verifySections:isEqualToSections:afterInsertingSection:];
  }

  v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:sectionsCopy];
  v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:toSectionsCopy];
  v13 = [v11 setByAddingObject:sectionCopy];
  v14 = [v13 isEqualToSet:v12];

  if ((v14 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKClinicalAuthorizationSettingsViewController.m" lineNumber:673 description:{@"Mismatch between pre-insert sections %@ and post-insert sections %@ when inserting %@", sectionsCopy, toSectionsCopy, sectionCopy}];
  }
}

- (BOOL)_shouldHighlightAppInformationCellAtIndexPath:(id)path
{
  pathCopy = path;
  if (!-[HKClinicalAuthorizationSettingsViewController _tableViewSection:isEqualToSection:](self, "_tableViewSection:isEqualToSection:", [pathCopy section], 0))
  {
    [HKClinicalAuthorizationSettingsViewController _shouldHighlightAppInformationCellAtIndexPath:];
  }

  if ([(HKClinicalAuthorizationSettingsViewController *)self _cellAtIndexPathIsViewAppPrivacyPolicyCell:pathCopy])
  {
    v5 = [(HKClinicalAuthorizationSettingsViewController *)self _shouldHighlightViewAppPrivacyPolicyCellAtIndexPath:pathCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_appInformationCellForIndexPath:(id)path
{
  pathCopy = path;
  if (!-[HKClinicalAuthorizationSettingsViewController _tableViewSection:isEqualToSection:](self, "_tableViewSection:isEqualToSection:", [pathCopy section], 0))
  {
    [HKClinicalAuthorizationSettingsViewController _appInformationCellForIndexPath:];
  }

  v5 = [pathCopy row];
  appInformationSectionCells = [(HKClinicalAuthorizationSettingsViewController *)self appInformationSectionCells];
  if (v5 >= [appInformationSectionCells count])
  {
    [HKClinicalAuthorizationSettingsViewController _appInformationCellForIndexPath:];
  }

  v7 = [appInformationSectionCells objectAtIndexedSubscript:v5];
  integerValue = [v7 integerValue];

  if (integerValue == 1)
  {
    v9 = [(HKClinicalAuthorizationSettingsViewController *)self _viewAppPrivacyPolicyCellForIndexPath:pathCopy];
  }

  else
  {
    if (integerValue)
    {
      goto LABEL_10;
    }

    v9 = [(HKClinicalAuthorizationSettingsViewController *)self _shareUsageDescriptionCellForIndexPath:pathCopy];
  }

  v7 = v9;
LABEL_10:

  return v7;
}

- (id)_shareUsageDescriptionCellForIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(OBTableWelcomeController *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"ShareUsageDescriptionCellReuseIdentifier" forIndexPath:pathCopy];

  v7 = HKUIJoinStringsForAutomationIdentifier(&unk_1F43813C0);
  [v6 setAccessibilityIdentifier:v7];

  textLabel = [v6 textLabel];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [textLabel setFont:v9];

  [textLabel setNumberOfLines:0];
  readUsageDescription = [(HKClinicalAuthorizationSettingsViewController *)self readUsageDescription];
  [textLabel setText:readUsageDescription];

  return v6;
}

- (id)_indexPathForViewAppPrivacyPolicyCell
{
  v3 = [(HKClinicalAuthorizationSettingsViewController *)self _tableViewSectionForSection:0];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL || (v4 = v3, -[HKClinicalAuthorizationSettingsViewController appInformationSectionCells](self, "appInformationSectionCells"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 indexOfObject:&unk_1F4383C88], v5, v6 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForRow:v6 inSection:v4];
  }

  return v7;
}

- (BOOL)_cellAtIndexPathIsViewAppPrivacyPolicyCell:(id)cell
{
  cellCopy = cell;
  _indexPathForViewAppPrivacyPolicyCell = [(HKClinicalAuthorizationSettingsViewController *)self _indexPathForViewAppPrivacyPolicyCell];
  v6 = [cellCopy isEqual:_indexPathForViewAppPrivacyPolicyCell];

  return v6;
}

- (BOOL)_shouldHighlightViewAppPrivacyPolicyCellAtIndexPath:(id)path
{
  if (![(HKClinicalAuthorizationSettingsViewController *)self _cellAtIndexPathIsViewAppPrivacyPolicyCell:path])
  {
    [HKClinicalAuthorizationSettingsViewController _shouldHighlightViewAppPrivacyPolicyCellAtIndexPath:];
  }

  return 1;
}

- (id)_viewAppPrivacyPolicyCellForIndexPath:(id)path
{
  pathCopy = path;
  source = [(HKClinicalAuthorizationSettingsViewController *)self source];
  lookUpAppPrivacyPolicyURLOperation = [(HKClinicalAuthorizationSettingsViewController *)self lookUpAppPrivacyPolicyURLOperation];
  v7 = lookUpAppPrivacyPolicyURLOperation;
  if (source)
  {
    if (lookUpAppPrivacyPolicyURLOperation)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKClinicalAuthorizationSettingsViewController _viewAppPrivacyPolicyCellForIndexPath:];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  [HKClinicalAuthorizationSettingsViewController _viewAppPrivacyPolicyCellForIndexPath:];
LABEL_3:
  tableView = [(OBTableWelcomeController *)self tableView];
  v9 = [tableView dequeueReusableCellWithIdentifier:@"ViewAppPrivacyPolicyCellReuseIdentifier" forIndexPath:pathCopy];

  v10 = HKUIJoinStringsForAutomationIdentifier(&unk_1F43813D8);
  [v9 setAccessibilityIdentifier:v10];

  textLabel = [v9 textLabel];
  [textLabel setNumberOfLines:0];
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = HKHealthRecordsAPILocalizedStringWithSource(@"VIEW_APP_%@_PRIVACY_POLICY_BUTTON_TITLE", source);
  name = [source name];
  v15 = [v12 initWithFormat:v13, name];
  [textLabel setText:v15];

  hk_appKeyColor = [MEMORY[0x1E69DC888] hk_appKeyColor];
  [textLabel setTextColor:hk_appKeyColor];

  return v9;
}

- (id)_shareDataTypeCellForIndexPath:(id)path
{
  pathCopy = path;
  if (!-[HKClinicalAuthorizationSettingsViewController _tableViewSection:isEqualToSection:](self, "_tableViewSection:isEqualToSection:", [pathCopy section], 1))
  {
    [HKClinicalAuthorizationSettingsViewController _shareDataTypeCellForIndexPath:];
  }

  tableView = [(OBTableWelcomeController *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"AuthorizationSettingsCellReuseIdentifier" forIndexPath:pathCopy];

  [v6 setAdjustsFontSizeToFitWidth:1];
  [v6 setCentersIcon:1];
  [v6 setDelegate:self];
  v7 = [(HKClinicalAuthorizationSettingsViewController *)self _typeForIndexPath:pathCopy];

  if (!v7)
  {
    [HKClinicalAuthorizationSettingsViewController _shareDataTypeCellForIndexPath:];
  }

  authorizationController = [(HKClinicalAuthorizationSequenceContext *)self->_context authorizationController];
  healthStore = [authorizationController healthStore];
  v10 = [HKDisplayTypeController sharedInstanceForHealthStore:healthStore];
  v11 = [v10 displayTypeForObjectTypeUnifyingBloodPressureTypes:v7];

  localization = [v11 localization];
  displayName = [localization displayName];
  [v6 setDisplayText:displayName];

  listIcon = [v11 listIcon];
  v15 = [listIcon imageByPreparingThumbnailOfSize:{29.0, 29.0}];
  [v6 setIconImage:v15];

  displayCategory = [v11 displayCategory];
  color = [displayCategory color];
  imageView = [v6 imageView];
  [imageView setTintColor:color];

  authorizationController2 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  [v6 setOn:{objc_msgSend(authorizationController2, "isTypeEnabled:", v7)}];

  [v6 setSeparatorInset:{0.0, 59.0, 0.0, 0.0}];

  return v6;
}

- (int64_t)_shareAuthorizationModeForIndexPath:(id)path
{
  pathCopy = path;
  if (!-[HKClinicalAuthorizationSettingsViewController _tableViewSection:isEqualToSection:](self, "_tableViewSection:isEqualToSection:", [pathCopy section], 2))
  {
    [HKClinicalAuthorizationSettingsViewController _shareAuthorizationModeForIndexPath:];
  }

  v6 = [pathCopy row];
  v7 = v6;
  if (v6 >= 2)
  {
    [HKClinicalAuthorizationSettingsViewController _shareAuthorizationModeForIndexPath:];
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_9:
    v9 = 1;
    goto LABEL_10;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v7 != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKClinicalAuthorizationSettingsViewController.m" lineNumber:822 description:{@"Invalid row: %ld", v7}];
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (id)_indexPathForShareAuthorizationMode:(int64_t)mode
{
  v4 = [(HKClinicalAuthorizationSettingsViewController *)self _tableViewSectionForSection:2];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    if (mode == 1)
    {
      v5 = 0;
    }

    if (mode)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    v6 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:v4];
  }

  return v6;
}

- (id)_shareAuthorizationModeCellForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(HKClinicalAuthorizationSettingsViewController *)self _shareAuthorizationModeForIndexPath:pathCopy];
  tableView = [(OBTableWelcomeController *)self tableView];
  v7 = [tableView dequeueReusableCellWithIdentifier:@"AuthorizationModeCellReuseIdentifier" forIndexPath:pathCopy];

  if (!v5)
  {
    v8 = @"CONTINUOUS_AUTHORIZATION";
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v8 = @"ONE_TIME_AUTHORIZATION";
LABEL_5:
    v9 = HKHealthRecordsAPILocalizedString(v8);
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  if ([(HKClinicalAuthorizationSettingsViewController *)self authorizationMode]== v5)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  [v7 setAccessoryType:v10];
  textLabel = [v7 textLabel];
  [textLabel setText:v9];

  return v7;
}

- (id)_visibleShareAuthorizationModeCellForMode:(int64_t)mode
{
  v4 = [(HKClinicalAuthorizationSettingsViewController *)self _indexPathForShareAuthorizationMode:mode];
  if (v4)
  {
    tableView = [(OBTableWelcomeController *)self tableView];
    v6 = [tableView cellForRowAtIndexPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_titleForAppInformationFooter
{
  context = [(HKClinicalAuthorizationSettingsViewController *)self context];
  source = [context source];
  v4 = HKHealthRecordsAPILocalizedStringWithSource(@"VIEW_APP_PRIVACY_POLICY_FOOTER", source);

  return v4;
}

- (id)_titleForShareDataTypesFooter
{
  if ([(HKClinicalAuthorizationSettingsViewController *)self isPrompting])
  {
    displayController = [(HKClinicalAuthorizationSettingsViewController *)self displayController];
    currentTimeDisplayStringForReadAuthorizationFooter = [displayController currentTimeDisplayStringForReadAuthorizationFooter];

    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    context = [(HKClinicalAuthorizationSettingsViewController *)self context];
    source = [context source];
    source3 = HKHealthRecordsAPILocalizedStringWithSource(@"SHARE_DATA_WITH_APP_%@_DATE_%@_PROMPT_EXPLANATION", source);
    source2 = [(HKClinicalAuthorizationSettingsViewController *)self source];
    name = [source2 name];
    v11 = [v5 initWithFormat:source3, name, currentTimeDisplayStringForReadAuthorizationFooter];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    currentTimeDisplayStringForReadAuthorizationFooter = [(HKClinicalAuthorizationSettingsViewController *)self context];
    context = [currentTimeDisplayStringForReadAuthorizationFooter source];
    source = HKHealthRecordsAPILocalizedStringWithSource(@"SHARE_DATA_WITH_APP_%@_INFORMER", context);
    source3 = [(HKClinicalAuthorizationSettingsViewController *)self source];
    source2 = [source3 name];
    v11 = [v12 initWithFormat:source, source2];
  }

  return v11;
}

- (id)_formatStringForShareAuthorizationModeFooterWithMode:(int64_t)mode
{
  if (mode)
  {
    if (mode != 1)
    {
      goto LABEL_6;
    }

    v4 = @"DETERMINED_RECORDS_ONE_TIME_AUTHORIZATION_APP_%1$@_DATE_%2$@_CONFIRMATION";
  }

  else
  {
    v4 = @"DETERMINED_RECORDS_CONTINUOUS_AUTHORIZATION_APP_%1$@_DATE_%2$@_CONFIRMATION";
  }

  context = [(HKClinicalAuthorizationSettingsViewController *)self context];
  source = [context source];
  v3 = HKHealthRecordsAPILocalizedStringWithSource(v4, source);

LABEL_6:

  return v3;
}

- (id)footerStringforDate:(id)date mode:(int64_t)mode source:(id)source
{
  dateCopy = date;
  sourceCopy = source;
  if (mode)
  {
    if (mode != 1)
    {
      goto LABEL_6;
    }

    v11 = @"DETERMINED_RECORDS_ONE_TIME_AUTHORIZATION_APP_%1$@_DATE_%2$@_CONFIRMATION";
  }

  else
  {
    v11 = @"DETERMINED_RECORDS_CONTINUOUS_AUTHORIZATION_APP_%1$@_DATE_%2$@_CONFIRMATION";
  }

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  context = [(HKClinicalAuthorizationSettingsViewController *)self context];
  source = [context source];
  v15 = HKHealthRecordsAPILocalizedStringWithSource(v11, source);
  name = [sourceCopy name];
  dateCopy = [v12 initWithFormat:v15, name, dateCopy];

LABEL_6:

  return dateCopy;
}

- (id)_titleForShareAuthorizationModeFooter
{
  authorizationMode = [(HKClinicalAuthorizationSettingsViewController *)self authorizationMode];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__HKClinicalAuthorizationSettingsViewController__titleForShareAuthorizationModeFooter__block_invoke;
  aBlock[3] = &unk_1E81B7338;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  isPrompting = [(HKClinicalAuthorizationSettingsViewController *)self isPrompting];
  displayController = [(HKClinicalAuthorizationSettingsViewController *)self displayController];
  v7 = displayController;
  if (isPrompting)
  {
    [displayController currentTimeTitleForReadAuthorizationModeFooterWithSelectedMode:authorizationMode formatBlock:v4];
  }

  else
  {
    [displayController committedTitleForReadAuthorizationModeFooterWithSelectedMode:authorizationMode formatBlock:v4];
  }
  v8 = ;

  return v8;
}

- (void)_displayGuestModeAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = MEMORY[0x1E69DC650];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"GUEST_MODE_CHANGE_AUTHORIZATION_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"GUEST_MODE_CHANGE_AUTHORIZATION_DESCRIPTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = MEMORY[0x1E69DC648];
  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v11 localizedStringForKey:@"SHARE_ALERT_OK" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__HKClinicalAuthorizationSettingsViewController__displayGuestModeAlertWithCompletion___block_invoke;
  v16[3] = &unk_1E81B8440;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = [v10 actionWithTitle:v12 style:0 handler:v16];

  [v9 addAction:v14];
  [(HKClinicalAuthorizationSettingsViewController *)self presentViewController:v9 animated:1 completion:0];
}

uint64_t __86__HKClinicalAuthorizationSettingsViewController__displayGuestModeAlertWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_doNotAllowButtonTitle
{
  if ([(HKClinicalAuthorizationSettingsViewController *)self _shouldPresentStopSharingDialogueBeforeDisallowing])
  {
    v2 = @"DO_NOT_ALLOW_BUTTON_TITLE_DETERMINED";
  }

  else
  {
    v2 = @"DO_NOT_ALLOW_BUTTON_TITLE_UNDETERMINED";
  }

  v3 = HKHealthRecordsAPILocalizedString(v2);

  return v3;
}

- (BOOL)_shouldPresentStopSharingDialogueBeforeDisallowing
{
  authorizationController = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  anyDeterminedTypeAllowsReading = [authorizationController anyDeterminedTypeAllowsReading];

  return anyDeterminedTypeAllowsReading;
}

- (void)_presentConfirmationForStopSharingIfNeededFromSender:(id)sender withAcceptHandler:(id)handler
{
  senderCopy = sender;
  handlerCopy = handler;
  if ([(HKClinicalAuthorizationSettingsViewController *)self _shouldPresentStopSharingDialogueBeforeDisallowing])
  {
    v8 = MEMORY[0x1E69DC650];
    _messageForStopSharingConfirmation = [(HKClinicalAuthorizationSettingsViewController *)self _messageForStopSharingConfirmation];
    v10 = [v8 alertControllerWithTitle:0 message:_messageForStopSharingConfirmation preferredStyle:0];

    hk_appKeyColor = [MEMORY[0x1E69DC888] hk_appKeyColor];
    view = [v10 view];
    [view setTintColor:hk_appKeyColor];

    v13 = MEMORY[0x1E69DC648];
    v14 = HKHealthRecordsAPILocalizedString(@"DO_NOT_ALLOW_BUTTON_TITLE_DETERMINED");
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __120__HKClinicalAuthorizationSettingsViewController__presentConfirmationForStopSharingIfNeededFromSender_withAcceptHandler___block_invoke;
    v20[3] = &unk_1E81B8440;
    v21 = handlerCopy;
    v15 = [v13 actionWithTitle:v14 style:2 handler:v20];

    v16 = MEMORY[0x1E69DC648];
    v17 = HKHealthRecordsAPILocalizedString(@"DO_NOT_ALLOW_BUTTON_TITLE_CANCEL");
    v18 = [v16 actionWithTitle:v17 style:1 handler:0];

    [v10 addAction:v15];
    [v10 addAction:v18];
    popoverPresentationController = [v10 popoverPresentationController];
    [popoverPresentationController setSourceItem:senderCopy];

    [(HKClinicalAuthorizationSettingsViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (id)_messageForStopSharingConfirmation
{
  source = [(HKClinicalAuthorizationSettingsViewController *)self source];
  if (!source)
  {
    [HKClinicalAuthorizationSettingsViewController _messageForStopSharingConfirmation];
  }

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  context = [(HKClinicalAuthorizationSettingsViewController *)self context];
  source2 = [context source];
  v7 = HKHealthRecordsAPILocalizedStringWithSource(@"DO_NOT_ALLOW_DETERMINED_APP_%@_CONFIRMATION", source2);
  name = [source name];
  v9 = [v4 initWithFormat:v7, name];

  return v9;
}

- (void)_fetchPrivacyPolicyURLForSource:(id)source
{
  v15 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if ([(HKLookUpAppPrivacyPolicyURLOperation *)sourceCopy _isApplication])
  {
    lookUpAppPrivacyPolicyURLOperation = [(HKClinicalAuthorizationSettingsViewController *)self lookUpAppPrivacyPolicyURLOperation];
    [lookUpAppPrivacyPolicyURLOperation cancel];

    v6 = [HKLookUpAppPrivacyPolicyURLOperation alloc];
    bundleIdentifier = [(HKLookUpAppPrivacyPolicyURLOperation *)sourceCopy bundleIdentifier];
    v8 = [(HKLookUpAppPrivacyPolicyURLOperation *)v6 initWithBundleIdentifier:bundleIdentifier];

    [(HKClinicalAuthorizationSettingsViewController *)self setLookUpAppPrivacyPolicyURLOperation:v8];
    [(HKClinicalAuthorizationSettingsViewController *)self _reloadViewAppPrivacyPolicyCell];
    _HKInitializeLogging();
    v9 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      selfCopy2 = self;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_1C3942000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ starting operation %{public}@", &v11, 0x16u);
    }

    [(HKLookUpAppPrivacyPolicyURLOperation *)v8 start];
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      selfCopy2 = self;
      v13 = 2114;
      v14 = sourceCopy;
      _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ source %{public}@ is not an app, not fetching privacy policy", &v11, 0x16u);
    }
  }
}

- (void)_reloadViewAppPrivacyPolicyCell
{
  v6[1] = *MEMORY[0x1E69E9840];
  _indexPathForViewAppPrivacyPolicyCell = [(HKClinicalAuthorizationSettingsViewController *)self _indexPathForViewAppPrivacyPolicyCell];
  if (_indexPathForViewAppPrivacyPolicyCell)
  {
    tableView = [(OBTableWelcomeController *)self tableView];
    v6[0] = _indexPathForViewAppPrivacyPolicyCell;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [tableView reloadRowsAtIndexPaths:v5 withRowAnimation:5];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[HKClinicalAuthorizationSettingsViewController _sectionForTableViewSection:](self, "_sectionForTableViewSection:", [pathCopy section]);
  if (v6 == 2)
  {
    v7 = [(HKClinicalAuthorizationSettingsViewController *)self _shareAuthorizationModeCellForIndexPath:pathCopy];
  }

  else if (v6 == 1)
  {
    v7 = [(HKClinicalAuthorizationSettingsViewController *)self _shareDataTypeCellForIndexPath:pathCopy];
  }

  else
  {
    if (v6)
    {
      HKErrorTableViewCell(@"HKClinicalAuthorizationSettingsViewController");
    }

    else
    {
      [(HKClinicalAuthorizationSettingsViewController *)self _appInformationCellForIndexPath:pathCopy];
    }
    v7 = ;
  }

  v8 = v7;
  v9 = [v7 hkui_configuredForCHR3rdPartyAPIFlowWhilePrompting:{-[HKClinicalAuthorizationSettingsViewController isPrompting](self, "isPrompting")}];

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(HKClinicalAuthorizationSettingsViewController *)self _sectionForTableViewSection:section];
  if (v5 == 1)
  {
    authorizationController = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
    orderedTypesForReading = [authorizationController orderedTypesForReading];
    v7 = [orderedTypesForReading count];
  }

  else
  {
    if (v5)
    {
      return 2;
    }

    authorizationController = [(HKClinicalAuthorizationSettingsViewController *)self appInformationSectionCells];
    v7 = [authorizationController count];
  }

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(HKClinicalAuthorizationSettingsViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v5 = [(HKClinicalAuthorizationSettingsViewController *)self _sectionForTableViewSection:section];
  source = [(HKClinicalAuthorizationSettingsViewController *)self source];
  name = [source name];

  if (v5 == 2)
  {
    source = HKHealthRecordsAPILocalizedString(@"AUTHORIZATION_MODE_TITLE");
  }

  else
  {
    if (v5 == 1)
    {
      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      context = [(HKClinicalAuthorizationSettingsViewController *)self context];
      source2 = [context source];
      v11 = HKHealthRecordsAPILocalizedStringWithSource(@"SHARE_DATA_WITH_APP_%@_TITLE", source2);
      source = [v10 initWithFormat:v11, name];
    }

    else
    {
      if (v5)
      {
        goto LABEL_8;
      }

      context = [(HKClinicalAuthorizationSettingsViewController *)self context];
      source2 = [context source];
      source = HKHealthRecordsAPILocalizedStringWithSource(@"APP_INFORMATION_TITLE", source2);
    }
  }

LABEL_8:

  return source;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  _titleForShareAuthorizationModeFooter = [(HKClinicalAuthorizationSettingsViewController *)self _sectionForTableViewSection:section];
  if (_titleForShareAuthorizationModeFooter == 2)
  {
    _titleForShareAuthorizationModeFooter = [(HKClinicalAuthorizationSettingsViewController *)self _titleForShareAuthorizationModeFooter];
  }

  else if (_titleForShareAuthorizationModeFooter == 1)
  {
    _titleForShareAuthorizationModeFooter = [(HKClinicalAuthorizationSettingsViewController *)self _titleForShareDataTypesFooter];
  }

  else if (!_titleForShareAuthorizationModeFooter)
  {
    _titleForShareAuthorizationModeFooter = [(HKClinicalAuthorizationSettingsViewController *)self _titleForAppInformationFooter];
  }

  return _titleForShareAuthorizationModeFooter;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[HKClinicalAuthorizationSettingsViewController _sectionForTableViewSection:](self, "_sectionForTableViewSection:", [pathCopy section]);
  if (v6 == 1)
  {
    v7 = 0;
  }

  else if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(HKClinicalAuthorizationSettingsViewController *)self _shouldHighlightAppInformationCellAtIndexPath:pathCopy];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = -[HKClinicalAuthorizationSettingsViewController _sectionForTableViewSection:](self, "_sectionForTableViewSection:", [pathCopy section]);
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  if (v7 == 2)
  {
    [(HKClinicalAuthorizationSettingsViewController *)self _shareAuthorizationModeCellPressed:v8];
  }

  else
  {
    if (v7 || ![(HKClinicalAuthorizationSettingsViewController *)self _cellAtIndexPathIsViewAppPrivacyPolicyCell:pathCopy])
    {
      v9 = 0;
      goto LABEL_8;
    }

    [(HKClinicalAuthorizationSettingsViewController *)self _viewAppPrivacyPolicyCellPressed:v8];
  }

  v9 = 1;
LABEL_8:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:v9];
}

- (void)_updateForCurrentContentSizeCategory
{
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = HKClinicalAuthorizationSettingsViewController;
  [(HKClinicalAuthorizationSettingsViewController *)&v10 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKClinicalAuthorizationSettingsViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__HKClinicalAuthorizationSettingsViewController_traitCollectionDidChange___block_invoke;
      block[3] = &unk_1E81B55A8;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (id)source
{
  context = [(HKClinicalAuthorizationSettingsViewController *)self context];
  source = [context source];

  return source;
}

- (id)authorizationController
{
  context = [(HKClinicalAuthorizationSettingsViewController *)self context];
  authorizationController = [context authorizationController];

  return authorizationController;
}

- (NSString)readUsageDescription
{
  context = [(HKClinicalAuthorizationSettingsViewController *)self context];
  readUsageDescription = [context readUsageDescription];

  return readUsageDescription;
}

- (HKHealthPrivacyServicePromptControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithContext:style:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"style == HKAuthorizationSettingsStyleDefault || style == HKAuthorizationSettingsStyleViewServicePrompt" object:? file:? lineNumber:? description:?];
}

- (void)_allowButtonPressed:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"self.isPrompting" object:? file:? lineNumber:? description:?];
}

- (void)switchCellValueChanged:value:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __101__HKClinicalAuthorizationSettingsViewController__didCompleteSwitchCellValueChangeAsFirstEnabledType___block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1);
  v6 = 138543618;
  v7 = WeakRetained;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "%{public}@ failed to toggle value: %{public}@", &v6, 0x16u);
}

- (void)_verifySections:isEqualToSections:afterInsertingSection:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_verifySections:isEqualToSections:afterInsertingSection:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_verifySections:isEqualToSections:afterInsertingSection:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_verifySections:isEqualToSections:afterInsertingSection:.cold.4()
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_shouldHighlightAppInformationCellAtIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"[self _tableViewSection:indexPath.section isEqualToSection:_SectionAppInformation]" object:? file:? lineNumber:? description:?];
}

- (void)_appInformationCellForIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"[self _tableViewSection:indexPath.section isEqualToSection:_SectionAppInformation]" object:? file:? lineNumber:? description:?];
}

- (void)_appInformationCellForIndexPath:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"row < appInformationSectionCells.count" object:? file:? lineNumber:? description:?];
}

- (void)_shouldHighlightViewAppPrivacyPolicyCellAtIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"[self _cellAtIndexPathIsViewAppPrivacyPolicyCell:indexPath]" object:? file:? lineNumber:? description:?];
}

- (void)_viewAppPrivacyPolicyCellForIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"source != nil" object:? file:? lineNumber:? description:?];
}

- (void)_viewAppPrivacyPolicyCellForIndexPath:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"operation != nil" object:? file:? lineNumber:? description:?];
}

- (void)_shareDataTypeCellForIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"[self _tableViewSection:indexPath.section isEqualToSection:_SectionShareDataTypes]" object:? file:? lineNumber:? description:?];
}

- (void)_shareDataTypeCellForIndexPath:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_shareAuthorizationModeForIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"[self _tableViewSection:indexPath.section isEqualToSection:_SectionShareAuthorizationMode]" object:? file:? lineNumber:? description:?];
}

- (void)_shareAuthorizationModeForIndexPath:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"row < _AuthorizationModeCount" object:? file:? lineNumber:? description:?];
}

- (void)_messageForStopSharingConfirmation
{
  OUTLINED_FUNCTION_1_1();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"source != nil" object:? file:? lineNumber:? description:?];
}

@end