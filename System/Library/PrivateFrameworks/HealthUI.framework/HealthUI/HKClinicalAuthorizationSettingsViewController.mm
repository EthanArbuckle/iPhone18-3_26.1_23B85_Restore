@interface HKClinicalAuthorizationSettingsViewController
- (BOOL)_cellAtIndexPathIsViewAppPrivacyPolicyCell:(id)a3;
- (BOOL)_isShowingShareAuthorizationModeSection;
- (BOOL)_shouldDisplayAppInformationSection;
- (BOOL)_shouldDisplayShareAuthorizationModeSection;
- (BOOL)_shouldDisplayShareDataTypes;
- (BOOL)_shouldHighlightAppInformationCellAtIndexPath:(id)a3;
- (BOOL)_shouldHighlightViewAppPrivacyPolicyCellAtIndexPath:(id)a3;
- (BOOL)_shouldPresentStopSharingDialogueBeforeDisallowing;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (HKClinicalAuthorizationSettingsViewController)init;
- (HKClinicalAuthorizationSettingsViewController)initWithContext:(id)a3 style:(int64_t)a4;
- (HKClinicalAuthorizationSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HKClinicalAuthorizationSettingsViewController)initWithStyle:(int64_t)a3;
- (HKHealthPrivacyServicePromptControllerDelegate)delegate;
- (NSString)readUsageDescription;
- (id)_appInformationCellForIndexPath:(id)a3;
- (id)_calculateSections;
- (id)_createAppInformationSectionCells;
- (id)_doNotAllowButtonTitle;
- (id)_formatStringForShareAuthorizationModeFooterWithMode:(int64_t)a3;
- (id)_indexPathForShareAuthorizationMode:(int64_t)a3;
- (id)_indexPathForViewAppPrivacyPolicyCell;
- (id)_messageForStopSharingConfirmation;
- (id)_shareAuthorizationModeCellForIndexPath:(id)a3;
- (id)_shareDataTypeCellForIndexPath:(id)a3;
- (id)_shareUsageDescriptionCellForIndexPath:(id)a3;
- (id)_titleForAppInformationFooter;
- (id)_titleForShareAuthorizationModeFooter;
- (id)_titleForShareDataTypesFooter;
- (id)_typeForIndexPath:(id)a3;
- (id)_viewAppPrivacyPolicyCellForIndexPath:(id)a3;
- (id)_visibleShareAuthorizationModeCellForMode:(int64_t)a3;
- (id)authorizationController;
- (id)footerStringforDate:(id)a3 mode:(int64_t)a4 source:(id)a5;
- (id)source;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)_sectionForTableViewSection:(int64_t)a3;
- (int64_t)_shareAuthorizationModeForIndexPath:(id)a3;
- (int64_t)_tableViewSectionForSection:(int64_t)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_allowButtonPressed:(id)a3;
- (void)_cancelButtonPressed:(id)a3;
- (void)_configureInitialAuthorizationSettingsForPrompting;
- (void)_configureNavigationItemWithSource:(id)a3;
- (void)_configureTableView;
- (void)_didCompleteSwitchCellValueChangeAsFirstEnabledType:(BOOL)a3;
- (void)_didReloadAuthorizationSettings;
- (void)_displayGuestModeAlertWithCompletion:(id)a3;
- (void)_doNotAllowButtonPressed:(id)a3;
- (void)_fetchPrivacyPolicyURLForSource:(id)a3;
- (void)_finishWithError:(id)a3;
- (void)_hideShareAuthorizationModeSectionIfNeeded;
- (void)_messageForStopSharingConfirmation;
- (void)_presentConfirmationForStopSharingIfNeededFromSender:(id)a3 withAcceptHandler:(id)a4;
- (void)_presentViewAppPrivacyPolicyURLErrorAlert;
- (void)_reloadSections;
- (void)_reloadViewAppPrivacyPolicyCell;
- (void)_setUpFooterView;
- (void)_shareAuthorizationModeCellPressed:(id)a3;
- (void)_showShareAuthorizationModeSectionIfNeeded;
- (void)_updateAllowButtonEnabledStateAnimated:(BOOL)a3;
- (void)_updateFooterButtonsTitles;
- (void)_updateForCurrentContentSizeCategory;
- (void)_updateShareAuthorizationModeSectionFooter;
- (void)_updateShareAuthorizationModeSectionVisibilityIfNeeded;
- (void)_verifySections:(id)a3 isEqualToSections:(id)a4 afterInsertingSection:(id)a5;
- (void)_viewAppPrivacyPolicyCellPressed:(id)a3;
- (void)_workAroundTableHeaderPaddingIssue;
- (void)dealloc;
- (void)reloadAuthorizationSettings;
- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

- (HKClinicalAuthorizationSettingsViewController)initWithStyle:(int64_t)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (HKClinicalAuthorizationSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HKClinicalAuthorizationSettingsViewController)initWithContext:(id)a3 style:(int64_t)a4
{
  v7 = a3;
  if (a4 >= 2)
  {
    [HKClinicalAuthorizationSettingsViewController initWithContext:style:];
  }

  else if (a4 == 1)
  {
    v8 = HKHealthRecordsAPILocalizedString(@"CATEGORY_SELECTION_MAIN_TITLE");
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = [v7 source];
    v11 = HKHealthRecordsAPILocalizedStringWithSource(@"APP_%@_ACCESS_REQUEST_AUTH", v10);
    v12 = [v7 source];
    v13 = [v12 name];
    v14 = [v9 initWithFormat:v11, v13];

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
    objc_storeStrong(&v16->_context, a3);
    v16->_style = a4;
    [(HKClinicalAuthorizationSettingsViewController *)v16 setShouldMoveHeaderViewTitleToNavigationTitleWhenScrolledOffScreen:0];
    v17 = [HKClinicalAuthorizationDisplayController alloc];
    v18 = [v7 authorizationController];
    v19 = [(HKClinicalAuthorizationDisplayController *)v17 initWithAuthorizationController:v18];
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
  v3 = [(HKClinicalAuthorizationSettingsViewController *)self source];
  [(HKClinicalAuthorizationSettingsViewController *)self _configureTableView];
  [(HKClinicalAuthorizationSettingsViewController *)self _configureNavigationItemWithSource:v3];
  [(HKClinicalAuthorizationSettingsViewController *)self _setUpFooterView];
  if ([(HKClinicalAuthorizationSettingsViewController *)self isPrompting])
  {
    [(HKClinicalAuthorizationSettingsViewController *)self _configureInitialAuthorizationSettingsForPrompting];
  }

  [(HKClinicalAuthorizationSettingsViewController *)self _fetchPrivacyPolicyURLForSource:v3];
  [(HKClinicalAuthorizationSettingsViewController *)self setModalInPresentation:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HKClinicalAuthorizationSettingsViewController;
  [(OBTableWelcomeController *)&v5 viewWillAppear:a3];
  [(HKClinicalAuthorizationSettingsViewController *)self reloadAuthorizationSettings];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__HKClinicalAuthorizationSettingsViewController_viewWillAppear___block_invoke;
  block[3] = &unk_1E81B55A8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HKClinicalAuthorizationSettingsViewController;
  [(OBBaseWelcomeController *)&v5 viewDidAppear:a3];
  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 flashScrollIndicators];
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
    v3 = [(OBTableWelcomeController *)self tableView];
    [v3 setTableHeaderView:0];
  }
}

- (void)dealloc
{
  v3 = [(HKClinicalAuthorizationSettingsViewController *)self lookUpAppPrivacyPolicyURLOperation];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = HKClinicalAuthorizationSettingsViewController;
  [(HKClinicalAuthorizationSettingsViewController *)&v4 dealloc];
}

- (void)_reloadSections
{
  v3 = [(HKClinicalAuthorizationSettingsViewController *)self _createAppInformationSectionCells];
  [(HKClinicalAuthorizationSettingsViewController *)self setAppInformationSectionCells:v3];

  v4 = [(HKClinicalAuthorizationSettingsViewController *)self _calculateSections];
  [(HKClinicalAuthorizationSettingsViewController *)self setSections:v4];
}

- (void)reloadAuthorizationSettings
{
  if (-[HKClinicalAuthorizationSettingsViewController shouldCommitUpdatesImmediately](self, "shouldCommitUpdatesImmediately") || (-[HKClinicalAuthorizationSettingsViewController authorizationController](self, "authorizationController"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 needsInitialLoad], v3, v4))
  {
    objc_initWeak(&location, self);
    v5 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__HKClinicalAuthorizationSettingsViewController_reloadAuthorizationSettings__block_invoke;
    v6[3] = &unk_1E81B5738;
    objc_copyWeak(&v7, &location);
    [v5 reloadWithCompletion:v6];

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
  v3 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  -[HKClinicalAuthorizationSettingsViewController setAuthorizationMode:](self, "setAuthorizationMode:", [v3 authorizationModeForSource]);

  [(HKClinicalAuthorizationSettingsViewController *)self _reloadSections];
  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 reloadData];

  [(HKClinicalAuthorizationSettingsViewController *)self _updateFooterButtonsTitles];

  [(HKClinicalAuthorizationSettingsViewController *)self _updateAllowButtonEnabledStateAnimated:0];
}

- (void)_configureNavigationItemWithSource:(id)a3
{
  v8 = a3;
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setLargeTitleDisplayMode:2];
  if ([(HKClinicalAuthorizationSettingsViewController *)self isPrompting])
  {
    v5 = HKHealthRecordsAPILocalizedString(@"IN_APP_SEQUENCE_TITLE_CATEGORIES");
    [v4 setTitle:v5];

    v6 = HKHealthRecordsAPILocalizedString(@"IN_APP_SEQUENCE_TITLE_ACCESSIBILITY_%@");
    [v4 setAccessibilityLabel:v6];

    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonPressed_];
    [v4 setRightBarButtonItem:v7];
  }

  else
  {
    [v4 setBackBarButtonItem:0];
    [v4 setRightBarButtonItem:0];
    v7 = [v8 name];
    [v4 setTitle:v7];
  }
}

- (void)_configureInitialAuthorizationSettingsForPrompting
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"self.isPrompting" object:? file:? lineNumber:? description:?];
}

- (void)_updateFooterButtonsTitles
{
  v3 = [(HKClinicalAuthorizationSettingsViewController *)self _doNotAllowButtonTitle];
  [(OBLinkTrayButton *)self->_doNotAllowButton setTitle:v3 forState:0];
}

- (void)_updateAllowButtonEnabledStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  v6 = [v5 anyTypeEnabled];

  LODWORD(v5) = [(OBBoldTrayButton *)self->_allowButton isEnabled];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__HKClinicalAuthorizationSettingsViewController__updateAllowButtonEnabledStateAnimated___block_invoke;
  v11[3] = &unk_1E81B8570;
  v11[4] = self;
  v12 = v6;
  v7 = _Block_copy(v11);
  v8 = v7;
  if (v6 == v5 || !v3)
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

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 setDataSource:self];

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 setDelegate:self];

  v7 = [(HKClinicalAuthorizationSettingsViewController *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 6)
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
    v10 = [(HKClinicalAuthorizationSettingsViewController *)self view];
    [v10 setBackgroundColor:v9];

    v11 = [(HKClinicalAuthorizationSettingsViewController *)self view];
    v12 = [v11 backgroundColor];
    v13 = [(OBTableWelcomeController *)self tableView];
    [v13 setBackgroundColor:v12];
  }

  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 registerClass:objc_opt_class() forCellReuseIdentifier:@"AuthorizationModeCellReuseIdentifier"];

  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 registerClass:objc_opt_class() forCellReuseIdentifier:@"AuthorizationSettingsCellReuseIdentifier"];

  v16 = [(OBTableWelcomeController *)self tableView];
  [v16 registerClass:objc_opt_class() forCellReuseIdentifier:@"ShareUsageDescriptionCellReuseIdentifier"];

  v17 = [(OBTableWelcomeController *)self tableView];
  [v17 registerClass:objc_opt_class() forCellReuseIdentifier:@"ViewAppPrivacyPolicyCellReuseIdentifier"];
}

- (void)_workAroundTableHeaderPaddingIssue
{
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 tableHeaderView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v14 = [(OBTableWelcomeController *)self tableView];
  v13 = [v14 tableHeaderView];
  [v13 setFrame:{v6, v8, v10, v12 + -30.0}];
}

- (void)_setUpFooterView
{
  if (self->_style)
  {
    v3 = [MEMORY[0x1E69B7D00] boldButton];
    allowButton = self->_allowButton;
    self->_allowButton = v3;

    v5 = self->_allowButton;
    v6 = [MEMORY[0x1E69DC888] systemBlueColor];
    [(OBBoldTrayButton *)v5 setTintColor:v6];

    v7 = self->_allowButton;
    v8 = HKHealthRecordsAPILocalizedString(@"SHARE_BUTTON_TITLE");
    [(OBBoldTrayButton *)v7 setTitle:v8 forState:0];

    [(OBBoldTrayButton *)self->_allowButton addTarget:self action:sel__allowButtonPressed_ forControlEvents:64];
    v9 = [(HKClinicalAuthorizationSettingsViewController *)self buttonTray];
    [v9 addButton:self->_allowButton];

    v10 = [MEMORY[0x1E69B7D38] linkButton];
    doNotAllowButton = self->_doNotAllowButton;
    self->_doNotAllowButton = v10;

    v12 = self->_doNotAllowButton;
    v13 = HKHealthRecordsAPILocalizedString(@"DO_NOT_ALLOW_BUTTON_TITLE_UNDETERMINED");
    [(OBLinkTrayButton *)v12 setTitle:v13 forState:0];

    [(OBLinkTrayButton *)self->_doNotAllowButton addTarget:self action:sel__doNotAllowButtonPressed_ forControlEvents:64];
    v14 = [(HKClinicalAuthorizationSettingsViewController *)self buttonTray];
    [v14 addButton:self->_doNotAllowButton];
  }
}

- (id)_typeForIndexPath:(id)a3
{
  v4 = a3;
  if (-[HKClinicalAuthorizationSettingsViewController _sectionForTableViewSection:](self, "_sectionForTableViewSection:", [v4 section]) == 1)
  {
    v5 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
    v6 = [v5 orderedTypesForReading];
    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_sectionForTableViewSection:(int64_t)a3
{
  v4 = [(HKClinicalAuthorizationSettingsViewController *)self sections];
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = [v5 integerValue];

  return v6;
}

- (int64_t)_tableViewSectionForSection:(int64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = [(HKClinicalAuthorizationSettingsViewController *)self sections];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__HKClinicalAuthorizationSettingsViewController__tableViewSectionForSection___block_invoke;
  v7[3] = &unk_1E81B8E68;
  v7[4] = &v8;
  v7[5] = a3;
  [v4 enumerateObjectsUsingBlock:v7];

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
  v4 = [(HKClinicalAuthorizationSettingsViewController *)self readUsageDescription];
  v5 = [v4 length];

  if (v5)
  {
    [v3 addObject:&unk_1F4383C70];
  }

  v6 = [(HKClinicalAuthorizationSettingsViewController *)self lookUpAppPrivacyPolicyURLOperation];
  if (v6)
  {
    v7 = v6;
    v8 = [(HKClinicalAuthorizationSettingsViewController *)self source];

    if (v8)
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
  v2 = [(HKClinicalAuthorizationSettingsViewController *)self appInformationSectionCells];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)_shouldDisplayShareDataTypes
{
  v2 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  v3 = [v2 orderedTypesForReading];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)_shouldDisplayShareAuthorizationModeSection
{
  if ([(HKClinicalAuthorizationSettingsViewController *)self isPrompting]|| ![(HKClinicalAuthorizationSettingsViewController *)self _shouldDisplayShareDataTypes])
  {
    return 0;
  }

  v3 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  v4 = [v3 anyTypeEnabled];

  return v4;
}

- (void)_allowButtonPressed:(id)a3
{
  if (![(HKClinicalAuthorizationSettingsViewController *)self isPrompting])
  {
    [HKClinicalAuthorizationSettingsViewController _allowButtonPressed:];
  }

  v4 = [HKClinicalAuthorizationNewRecordsViewController alloc];
  v5 = [(HKClinicalAuthorizationSettingsViewController *)self context];
  v8 = [(HKClinicalAuthorizationNewRecordsViewController *)v4 initWithContext:v5];

  v6 = [(HKClinicalAuthorizationSettingsViewController *)self delegate];
  [(HKClinicalAuthorizationNewRecordsViewController *)v8 setDelegate:v6];

  v7 = [(HKClinicalAuthorizationSettingsViewController *)self navigationController];
  [v7 pushViewController:v8 animated:1];
}

- (void)_shareAuthorizationModeCellPressed:(id)a3
{
  v4 = a3;
  v5 = [(OBTableWelcomeController *)self tableView];
  v6 = [v5 indexPathForCell:v4];

  v7 = [(HKClinicalAuthorizationSettingsViewController *)self _shareAuthorizationModeForIndexPath:v6];
  if (v7 != [(HKClinicalAuthorizationSettingsViewController *)self authorizationMode])
  {
    v8 = [(HKClinicalAuthorizationSettingsViewController *)self _visibleShareAuthorizationModeCellForMode:[(HKClinicalAuthorizationSettingsViewController *)self authorizationMode]];
    [(HKClinicalAuthorizationSettingsViewController *)self setAuthorizationMode:v7];
    [v8 setAccessoryType:0];
    [v4 setAccessoryType:3];
    if ([(HKClinicalAuthorizationSettingsViewController *)self shouldCommitUpdatesImmediately])
    {
      objc_initWeak(&location, self);
      v9 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
      v10 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationMode];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __84__HKClinicalAuthorizationSettingsViewController__shareAuthorizationModeCellPressed___block_invoke;
      v11[3] = &unk_1E81B8298;
      objc_copyWeak(&v12, &location);
      [v9 commitAllTypesAndUpdateAuthorizationAnchorWithMode:v10 completion:v11];

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

- (void)_doNotAllowButtonPressed:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__HKClinicalAuthorizationSettingsViewController__doNotAllowButtonPressed___block_invoke;
  v3[3] = &unk_1E81B55A8;
  v3[4] = self;
  [(HKClinicalAuthorizationSettingsViewController *)self _presentConfirmationForStopSharingIfNeededFromSender:a3 withAcceptHandler:v3];
}

void __74__HKClinicalAuthorizationSettingsViewController__doNotAllowButtonPressed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authorizationController];
  [v2 disableAllTypes];
  [v2 commitAllTypesAndUpdateAuthorizationAnchorWithMode:1 completion:0];
  [*(a1 + 32) _finishWithError:0];
}

- (void)_viewAppPrivacyPolicyCellPressed:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKClinicalAuthorizationSettingsViewController *)self lookUpAppPrivacyPolicyURLOperation];
  v6 = [v5 privacyPolicyURL];

  if (v6 && ([v6 hk_isValidSafariViewControllerURL] & 1) != 0)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = HKSensitiveLogItem();
      v12 = 138543618;
      v13 = self;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_1C3942000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ opening privacy policy URL %{public}@ in Safari view", &v12, 0x16u);
    }

    v10 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:v6];
    v11 = [v10 popoverPresentationController];
    [v11 setSourceView:v4];

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
  v4 = [(HKClinicalAuthorizationSettingsViewController *)self context];
  v5 = [v4 source];
  v6 = HKHealthRecordsAPILocalizedStringWithSource(@"VIEW_APP_PRIVACY_POLICY_URL_ERROR_TRY_LATER", v5);
  v12 = [v3 alertControllerWithTitle:0 message:v6 preferredStyle:1];

  v7 = MEMORY[0x1E69DC648];
  v8 = [(HKClinicalAuthorizationSettingsViewController *)self context];
  v9 = [v8 source];
  v10 = HKHealthRecordsAPILocalizedStringWithSource(@"VIEW_APP_PRIVACY_POLICY_URL_ERROR_OK_BUTTON", v9);
  v11 = [v7 actionWithTitle:v10 style:0 handler:0];

  [v12 addAction:v11];
  [(HKClinicalAuthorizationSettingsViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_cancelButtonPressed:(id)a3
{
  v4 = [MEMORY[0x1E696ABC0] hk_error:7 description:@"The user canceled authorization."];
  [(HKClinicalAuthorizationSettingsViewController *)self _finishWithError:v4];
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
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

    v8 = [(HKClinicalAuthorizationSettingsViewController *)self delegate];
    [v8 promptControllerDidFinish:self error:v4];
  }
}

- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(OBTableWelcomeController *)self tableView];
  v8 = [v7 indexPathForCell:v6];

  v9 = [(HKClinicalAuthorizationSettingsViewController *)self _typeForIndexPath:v8];
  if (!v9)
  {
    [HKClinicalAuthorizationSettingsViewController switchCellValueChanged:value:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  v11 = [v10 anyTypeEnabled] ^ 1;

LABEL_6:
  objc_initWeak(&location, self);
  v12 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  v13 = [(HKClinicalAuthorizationSettingsViewController *)self shouldCommitUpdatesImmediately];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__HKClinicalAuthorizationSettingsViewController_switchCellValueChanged_value___block_invoke;
  v14[3] = &unk_1E81B8418;
  objc_copyWeak(&v15, &location);
  v16 = v11;
  [v12 setEnabled:v4 forType:v9 commit:v13 completion:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __78__HKClinicalAuthorizationSettingsViewController_switchCellValueChanged_value___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didCompleteSwitchCellValueChangeAsFirstEnabledType:*(a1 + 40)];
}

- (void)_didCompleteSwitchCellValueChangeAsFirstEnabledType:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __101__HKClinicalAuthorizationSettingsViewController__didCompleteSwitchCellValueChangeAsFirstEnabledType___block_invoke;
  v11 = &unk_1E81B8298;
  objc_copyWeak(&v12, &location);
  v5 = _Block_copy(&v8);
  if ([(HKClinicalAuthorizationSettingsViewController *)self shouldCommitUpdatesImmediately:v8]&& v3)
  {
    v6 = [(HKClinicalAuthorizationSettingsViewController *)self _defaultShareAuthorizationMode];
    [(HKClinicalAuthorizationSettingsViewController *)self setAuthorizationMode:v6];
    v7 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
    [v7 commitAllTypesAndUpdateAuthorizationAnchorWithMode:v6 completion:v5];
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
  v2 = [(HKClinicalAuthorizationSettingsViewController *)self sections];
  v3 = [v2 containsObject:&unk_1F4383CA0];

  return v3;
}

- (void)_showShareAuthorizationModeSectionIfNeeded
{
  if (![(HKClinicalAuthorizationSettingsViewController *)self _isShowingShareAuthorizationModeSection]&& [(HKClinicalAuthorizationSettingsViewController *)self _shouldDisplayShareAuthorizationModeSection])
  {
    v7 = [(HKClinicalAuthorizationSettingsViewController *)self sections];
    [(HKClinicalAuthorizationSettingsViewController *)self _reloadSections];
    v3 = [(HKClinicalAuthorizationSettingsViewController *)self sections];
    [(HKClinicalAuthorizationSettingsViewController *)self _verifySections:v7 isEqualToSections:v3 afterInsertingSection:&unk_1F4383CA0];
    v4 = [v3 indexOfObject:&unk_1F4383CA0];
    v5 = [(OBTableWelcomeController *)self tableView];
    v6 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v4];
    [v5 insertSections:v6 withRowAnimation:0];
  }
}

- (void)_hideShareAuthorizationModeSectionIfNeeded
{
  if ([(HKClinicalAuthorizationSettingsViewController *)self _isShowingShareAuthorizationModeSection]&& ![(HKClinicalAuthorizationSettingsViewController *)self _shouldDisplayShareAuthorizationModeSection])
  {
    v7 = [(HKClinicalAuthorizationSettingsViewController *)self sections];
    [(HKClinicalAuthorizationSettingsViewController *)self _reloadSections];
    v3 = [(HKClinicalAuthorizationSettingsViewController *)self sections];
    [(HKClinicalAuthorizationSettingsViewController *)self _verifySections:v3 isEqualToSections:v7 afterInsertingSection:&unk_1F4383CA0];
    v4 = [v7 indexOfObject:&unk_1F4383CA0];
    v5 = [(OBTableWelcomeController *)self tableView];
    v6 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v4];
    [v5 deleteSections:v6 withRowAnimation:0];
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
    v3 = [(OBTableWelcomeController *)self tableView];
    [v3 reloadData];
  }
}

- (void)_verifySections:(id)a3 isEqualToSections:(id)a4 afterInsertingSection:(id)a5
{
  v16 = a3;
  v9 = a4;
  v10 = a5;
  if ([v16 containsObject:v10])
  {
    [HKClinicalAuthorizationSettingsViewController _verifySections:isEqualToSections:afterInsertingSection:];
  }

  if (([v9 containsObject:v10] & 1) == 0)
  {
    [HKClinicalAuthorizationSettingsViewController _verifySections:isEqualToSections:afterInsertingSection:];
  }

  if (([v16 hk_allElementsUnique] & 1) == 0)
  {
    [HKClinicalAuthorizationSettingsViewController _verifySections:isEqualToSections:afterInsertingSection:];
  }

  if (([v9 hk_allElementsUnique] & 1) == 0)
  {
    [HKClinicalAuthorizationSettingsViewController _verifySections:isEqualToSections:afterInsertingSection:];
  }

  v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v16];
  v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v9];
  v13 = [v11 setByAddingObject:v10];
  v14 = [v13 isEqualToSet:v12];

  if ((v14 & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HKClinicalAuthorizationSettingsViewController.m" lineNumber:673 description:{@"Mismatch between pre-insert sections %@ and post-insert sections %@ when inserting %@", v16, v9, v10}];
  }
}

- (BOOL)_shouldHighlightAppInformationCellAtIndexPath:(id)a3
{
  v4 = a3;
  if (!-[HKClinicalAuthorizationSettingsViewController _tableViewSection:isEqualToSection:](self, "_tableViewSection:isEqualToSection:", [v4 section], 0))
  {
    [HKClinicalAuthorizationSettingsViewController _shouldHighlightAppInformationCellAtIndexPath:];
  }

  if ([(HKClinicalAuthorizationSettingsViewController *)self _cellAtIndexPathIsViewAppPrivacyPolicyCell:v4])
  {
    v5 = [(HKClinicalAuthorizationSettingsViewController *)self _shouldHighlightViewAppPrivacyPolicyCellAtIndexPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_appInformationCellForIndexPath:(id)a3
{
  v4 = a3;
  if (!-[HKClinicalAuthorizationSettingsViewController _tableViewSection:isEqualToSection:](self, "_tableViewSection:isEqualToSection:", [v4 section], 0))
  {
    [HKClinicalAuthorizationSettingsViewController _appInformationCellForIndexPath:];
  }

  v5 = [v4 row];
  v6 = [(HKClinicalAuthorizationSettingsViewController *)self appInformationSectionCells];
  if (v5 >= [v6 count])
  {
    [HKClinicalAuthorizationSettingsViewController _appInformationCellForIndexPath:];
  }

  v7 = [v6 objectAtIndexedSubscript:v5];
  v8 = [v7 integerValue];

  if (v8 == 1)
  {
    v9 = [(HKClinicalAuthorizationSettingsViewController *)self _viewAppPrivacyPolicyCellForIndexPath:v4];
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = [(HKClinicalAuthorizationSettingsViewController *)self _shareUsageDescriptionCellForIndexPath:v4];
  }

  v7 = v9;
LABEL_10:

  return v7;
}

- (id)_shareUsageDescriptionCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(OBTableWelcomeController *)self tableView];
  v6 = [v5 dequeueReusableCellWithIdentifier:@"ShareUsageDescriptionCellReuseIdentifier" forIndexPath:v4];

  v7 = HKUIJoinStringsForAutomationIdentifier(&unk_1F43813C0);
  [v6 setAccessibilityIdentifier:v7];

  v8 = [v6 textLabel];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v8 setFont:v9];

  [v8 setNumberOfLines:0];
  v10 = [(HKClinicalAuthorizationSettingsViewController *)self readUsageDescription];
  [v8 setText:v10];

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

- (BOOL)_cellAtIndexPathIsViewAppPrivacyPolicyCell:(id)a3
{
  v4 = a3;
  v5 = [(HKClinicalAuthorizationSettingsViewController *)self _indexPathForViewAppPrivacyPolicyCell];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (BOOL)_shouldHighlightViewAppPrivacyPolicyCellAtIndexPath:(id)a3
{
  if (![(HKClinicalAuthorizationSettingsViewController *)self _cellAtIndexPathIsViewAppPrivacyPolicyCell:a3])
  {
    [HKClinicalAuthorizationSettingsViewController _shouldHighlightViewAppPrivacyPolicyCellAtIndexPath:];
  }

  return 1;
}

- (id)_viewAppPrivacyPolicyCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(HKClinicalAuthorizationSettingsViewController *)self source];
  v6 = [(HKClinicalAuthorizationSettingsViewController *)self lookUpAppPrivacyPolicyURLOperation];
  v7 = v6;
  if (v5)
  {
    if (v6)
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
  v8 = [(OBTableWelcomeController *)self tableView];
  v9 = [v8 dequeueReusableCellWithIdentifier:@"ViewAppPrivacyPolicyCellReuseIdentifier" forIndexPath:v4];

  v10 = HKUIJoinStringsForAutomationIdentifier(&unk_1F43813D8);
  [v9 setAccessibilityIdentifier:v10];

  v11 = [v9 textLabel];
  [v11 setNumberOfLines:0];
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = HKHealthRecordsAPILocalizedStringWithSource(@"VIEW_APP_%@_PRIVACY_POLICY_BUTTON_TITLE", v5);
  v14 = [v5 name];
  v15 = [v12 initWithFormat:v13, v14];
  [v11 setText:v15];

  v16 = [MEMORY[0x1E69DC888] hk_appKeyColor];
  [v11 setTextColor:v16];

  return v9;
}

- (id)_shareDataTypeCellForIndexPath:(id)a3
{
  v4 = a3;
  if (!-[HKClinicalAuthorizationSettingsViewController _tableViewSection:isEqualToSection:](self, "_tableViewSection:isEqualToSection:", [v4 section], 1))
  {
    [HKClinicalAuthorizationSettingsViewController _shareDataTypeCellForIndexPath:];
  }

  v5 = [(OBTableWelcomeController *)self tableView];
  v6 = [v5 dequeueReusableCellWithIdentifier:@"AuthorizationSettingsCellReuseIdentifier" forIndexPath:v4];

  [v6 setAdjustsFontSizeToFitWidth:1];
  [v6 setCentersIcon:1];
  [v6 setDelegate:self];
  v7 = [(HKClinicalAuthorizationSettingsViewController *)self _typeForIndexPath:v4];

  if (!v7)
  {
    [HKClinicalAuthorizationSettingsViewController _shareDataTypeCellForIndexPath:];
  }

  v8 = [(HKClinicalAuthorizationSequenceContext *)self->_context authorizationController];
  v9 = [v8 healthStore];
  v10 = [HKDisplayTypeController sharedInstanceForHealthStore:v9];
  v11 = [v10 displayTypeForObjectTypeUnifyingBloodPressureTypes:v7];

  v12 = [v11 localization];
  v13 = [v12 displayName];
  [v6 setDisplayText:v13];

  v14 = [v11 listIcon];
  v15 = [v14 imageByPreparingThumbnailOfSize:{29.0, 29.0}];
  [v6 setIconImage:v15];

  v16 = [v11 displayCategory];
  v17 = [v16 color];
  v18 = [v6 imageView];
  [v18 setTintColor:v17];

  v19 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  [v6 setOn:{objc_msgSend(v19, "isTypeEnabled:", v7)}];

  [v6 setSeparatorInset:{0.0, 59.0, 0.0, 0.0}];

  return v6;
}

- (int64_t)_shareAuthorizationModeForIndexPath:(id)a3
{
  v5 = a3;
  if (!-[HKClinicalAuthorizationSettingsViewController _tableViewSection:isEqualToSection:](self, "_tableViewSection:isEqualToSection:", [v5 section], 2))
  {
    [HKClinicalAuthorizationSettingsViewController _shareAuthorizationModeForIndexPath:];
  }

  v6 = [v5 row];
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
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HKClinicalAuthorizationSettingsViewController.m" lineNumber:822 description:{@"Invalid row: %ld", v7}];
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (id)_indexPathForShareAuthorizationMode:(int64_t)a3
{
  v4 = [(HKClinicalAuthorizationSettingsViewController *)self _tableViewSectionForSection:2];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    if (a3 == 1)
    {
      v5 = 0;
    }

    if (a3)
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

- (id)_shareAuthorizationModeCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(HKClinicalAuthorizationSettingsViewController *)self _shareAuthorizationModeForIndexPath:v4];
  v6 = [(OBTableWelcomeController *)self tableView];
  v7 = [v6 dequeueReusableCellWithIdentifier:@"AuthorizationModeCellReuseIdentifier" forIndexPath:v4];

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
  v11 = [v7 textLabel];
  [v11 setText:v9];

  return v7;
}

- (id)_visibleShareAuthorizationModeCellForMode:(int64_t)a3
{
  v4 = [(HKClinicalAuthorizationSettingsViewController *)self _indexPathForShareAuthorizationMode:a3];
  if (v4)
  {
    v5 = [(OBTableWelcomeController *)self tableView];
    v6 = [v5 cellForRowAtIndexPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_titleForAppInformationFooter
{
  v2 = [(HKClinicalAuthorizationSettingsViewController *)self context];
  v3 = [v2 source];
  v4 = HKHealthRecordsAPILocalizedStringWithSource(@"VIEW_APP_PRIVACY_POLICY_FOOTER", v3);

  return v4;
}

- (id)_titleForShareDataTypesFooter
{
  if ([(HKClinicalAuthorizationSettingsViewController *)self isPrompting])
  {
    v3 = [(HKClinicalAuthorizationSettingsViewController *)self displayController];
    v4 = [v3 currentTimeDisplayStringForReadAuthorizationFooter];

    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [(HKClinicalAuthorizationSettingsViewController *)self context];
    v7 = [v6 source];
    v8 = HKHealthRecordsAPILocalizedStringWithSource(@"SHARE_DATA_WITH_APP_%@_DATE_%@_PROMPT_EXPLANATION", v7);
    v9 = [(HKClinicalAuthorizationSettingsViewController *)self source];
    v10 = [v9 name];
    v11 = [v5 initWithFormat:v8, v10, v4];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = [(HKClinicalAuthorizationSettingsViewController *)self context];
    v6 = [v4 source];
    v7 = HKHealthRecordsAPILocalizedStringWithSource(@"SHARE_DATA_WITH_APP_%@_INFORMER", v6);
    v8 = [(HKClinicalAuthorizationSettingsViewController *)self source];
    v9 = [v8 name];
    v11 = [v12 initWithFormat:v7, v9];
  }

  return v11;
}

- (id)_formatStringForShareAuthorizationModeFooterWithMode:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = @"DETERMINED_RECORDS_ONE_TIME_AUTHORIZATION_APP_%1$@_DATE_%2$@_CONFIRMATION";
  }

  else
  {
    v4 = @"DETERMINED_RECORDS_CONTINUOUS_AUTHORIZATION_APP_%1$@_DATE_%2$@_CONFIRMATION";
  }

  v5 = [(HKClinicalAuthorizationSettingsViewController *)self context];
  v6 = [v5 source];
  v3 = HKHealthRecordsAPILocalizedStringWithSource(v4, v6);

LABEL_6:

  return v3;
}

- (id)footerStringforDate:(id)a3 mode:(int64_t)a4 source:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (a4)
  {
    if (a4 != 1)
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
  v13 = [(HKClinicalAuthorizationSettingsViewController *)self context];
  v14 = [v13 source];
  v15 = HKHealthRecordsAPILocalizedStringWithSource(v11, v14);
  v16 = [v10 name];
  v5 = [v12 initWithFormat:v15, v16, v9];

LABEL_6:

  return v5;
}

- (id)_titleForShareAuthorizationModeFooter
{
  v3 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationMode];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__HKClinicalAuthorizationSettingsViewController__titleForShareAuthorizationModeFooter__block_invoke;
  aBlock[3] = &unk_1E81B7338;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = [(HKClinicalAuthorizationSettingsViewController *)self isPrompting];
  v6 = [(HKClinicalAuthorizationSettingsViewController *)self displayController];
  v7 = v6;
  if (v5)
  {
    [v6 currentTimeTitleForReadAuthorizationModeFooterWithSelectedMode:v3 formatBlock:v4];
  }

  else
  {
    [v6 committedTitleForReadAuthorizationModeFooterWithSelectedMode:v3 formatBlock:v4];
  }
  v8 = ;

  return v8;
}

- (void)_displayGuestModeAlertWithCompletion:(id)a3
{
  v3 = a3;
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
  v17 = v3;
  v13 = v3;
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
  v2 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
  v3 = [v2 anyDeterminedTypeAllowsReading];

  return v3;
}

- (void)_presentConfirmationForStopSharingIfNeededFromSender:(id)a3 withAcceptHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HKClinicalAuthorizationSettingsViewController *)self _shouldPresentStopSharingDialogueBeforeDisallowing])
  {
    v8 = MEMORY[0x1E69DC650];
    v9 = [(HKClinicalAuthorizationSettingsViewController *)self _messageForStopSharingConfirmation];
    v10 = [v8 alertControllerWithTitle:0 message:v9 preferredStyle:0];

    v11 = [MEMORY[0x1E69DC888] hk_appKeyColor];
    v12 = [v10 view];
    [v12 setTintColor:v11];

    v13 = MEMORY[0x1E69DC648];
    v14 = HKHealthRecordsAPILocalizedString(@"DO_NOT_ALLOW_BUTTON_TITLE_DETERMINED");
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __120__HKClinicalAuthorizationSettingsViewController__presentConfirmationForStopSharingIfNeededFromSender_withAcceptHandler___block_invoke;
    v20[3] = &unk_1E81B8440;
    v21 = v7;
    v15 = [v13 actionWithTitle:v14 style:2 handler:v20];

    v16 = MEMORY[0x1E69DC648];
    v17 = HKHealthRecordsAPILocalizedString(@"DO_NOT_ALLOW_BUTTON_TITLE_CANCEL");
    v18 = [v16 actionWithTitle:v17 style:1 handler:0];

    [v10 addAction:v15];
    [v10 addAction:v18];
    v19 = [v10 popoverPresentationController];
    [v19 setSourceItem:v6];

    [(HKClinicalAuthorizationSettingsViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v7[2](v7);
  }
}

- (id)_messageForStopSharingConfirmation
{
  v3 = [(HKClinicalAuthorizationSettingsViewController *)self source];
  if (!v3)
  {
    [HKClinicalAuthorizationSettingsViewController _messageForStopSharingConfirmation];
  }

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [(HKClinicalAuthorizationSettingsViewController *)self context];
  v6 = [v5 source];
  v7 = HKHealthRecordsAPILocalizedStringWithSource(@"DO_NOT_ALLOW_DETERMINED_APP_%@_CONFIRMATION", v6);
  v8 = [v3 name];
  v9 = [v4 initWithFormat:v7, v8];

  return v9;
}

- (void)_fetchPrivacyPolicyURLForSource:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(HKLookUpAppPrivacyPolicyURLOperation *)v4 _isApplication])
  {
    v5 = [(HKClinicalAuthorizationSettingsViewController *)self lookUpAppPrivacyPolicyURLOperation];
    [v5 cancel];

    v6 = [HKLookUpAppPrivacyPolicyURLOperation alloc];
    v7 = [(HKLookUpAppPrivacyPolicyURLOperation *)v4 bundleIdentifier];
    v8 = [(HKLookUpAppPrivacyPolicyURLOperation *)v6 initWithBundleIdentifier:v7];

    [(HKClinicalAuthorizationSettingsViewController *)self setLookUpAppPrivacyPolicyURLOperation:v8];
    [(HKClinicalAuthorizationSettingsViewController *)self _reloadViewAppPrivacyPolicyCell];
    _HKInitializeLogging();
    v9 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = self;
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
      v12 = self;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ source %{public}@ is not an app, not fetching privacy policy", &v11, 0x16u);
    }
  }
}

- (void)_reloadViewAppPrivacyPolicyCell
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [(HKClinicalAuthorizationSettingsViewController *)self _indexPathForViewAppPrivacyPolicyCell];
  if (v3)
  {
    v4 = [(OBTableWelcomeController *)self tableView];
    v6[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [v4 reloadRowsAtIndexPaths:v5 withRowAnimation:5];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[HKClinicalAuthorizationSettingsViewController _sectionForTableViewSection:](self, "_sectionForTableViewSection:", [v5 section]);
  if (v6 == 2)
  {
    v7 = [(HKClinicalAuthorizationSettingsViewController *)self _shareAuthorizationModeCellForIndexPath:v5];
  }

  else if (v6 == 1)
  {
    v7 = [(HKClinicalAuthorizationSettingsViewController *)self _shareDataTypeCellForIndexPath:v5];
  }

  else
  {
    if (v6)
    {
      HKErrorTableViewCell(@"HKClinicalAuthorizationSettingsViewController");
    }

    else
    {
      [(HKClinicalAuthorizationSettingsViewController *)self _appInformationCellForIndexPath:v5];
    }
    v7 = ;
  }

  v8 = v7;
  v9 = [v7 hkui_configuredForCHR3rdPartyAPIFlowWhilePrompting:{-[HKClinicalAuthorizationSettingsViewController isPrompting](self, "isPrompting")}];

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(HKClinicalAuthorizationSettingsViewController *)self _sectionForTableViewSection:a4];
  if (v5 == 1)
  {
    v6 = [(HKClinicalAuthorizationSettingsViewController *)self authorizationController];
    v8 = [v6 orderedTypesForReading];
    v7 = [v8 count];
  }

  else
  {
    if (v5)
    {
      return 2;
    }

    v6 = [(HKClinicalAuthorizationSettingsViewController *)self appInformationSectionCells];
    v7 = [v6 count];
  }

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(HKClinicalAuthorizationSettingsViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(HKClinicalAuthorizationSettingsViewController *)self _sectionForTableViewSection:a4];
  v6 = [(HKClinicalAuthorizationSettingsViewController *)self source];
  v7 = [v6 name];

  if (v5 == 2)
  {
    v6 = HKHealthRecordsAPILocalizedString(@"AUTHORIZATION_MODE_TITLE");
  }

  else
  {
    if (v5 == 1)
    {
      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = [(HKClinicalAuthorizationSettingsViewController *)self context];
      v9 = [v8 source];
      v11 = HKHealthRecordsAPILocalizedStringWithSource(@"SHARE_DATA_WITH_APP_%@_TITLE", v9);
      v6 = [v10 initWithFormat:v11, v7];
    }

    else
    {
      if (v5)
      {
        goto LABEL_8;
      }

      v8 = [(HKClinicalAuthorizationSettingsViewController *)self context];
      v9 = [v8 source];
      v6 = HKHealthRecordsAPILocalizedStringWithSource(@"APP_INFORMATION_TITLE", v9);
    }
  }

LABEL_8:

  return v6;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(HKClinicalAuthorizationSettingsViewController *)self _sectionForTableViewSection:a4];
  if (v5 == 2)
  {
    v5 = [(HKClinicalAuthorizationSettingsViewController *)self _titleForShareAuthorizationModeFooter];
  }

  else if (v5 == 1)
  {
    v5 = [(HKClinicalAuthorizationSettingsViewController *)self _titleForShareDataTypesFooter];
  }

  else if (!v5)
  {
    v5 = [(HKClinicalAuthorizationSettingsViewController *)self _titleForAppInformationFooter];
  }

  return v5;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[HKClinicalAuthorizationSettingsViewController _sectionForTableViewSection:](self, "_sectionForTableViewSection:", [v5 section]);
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
    v7 = [(HKClinicalAuthorizationSettingsViewController *)self _shouldHighlightAppInformationCellAtIndexPath:v5];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = -[HKClinicalAuthorizationSettingsViewController _sectionForTableViewSection:](self, "_sectionForTableViewSection:", [v6 section]);
  v8 = [v10 cellForRowAtIndexPath:v6];
  if (v7 == 2)
  {
    [(HKClinicalAuthorizationSettingsViewController *)self _shareAuthorizationModeCellPressed:v8];
  }

  else
  {
    if (v7 || ![(HKClinicalAuthorizationSettingsViewController *)self _cellAtIndexPathIsViewAppPrivacyPolicyCell:v6])
    {
      v9 = 0;
      goto LABEL_8;
    }

    [(HKClinicalAuthorizationSettingsViewController *)self _viewAppPrivacyPolicyCellPressed:v8];
  }

  v9 = 1;
LABEL_8:
  [v10 deselectRowAtIndexPath:v6 animated:v9];
}

- (void)_updateForCurrentContentSizeCategory
{
  v2 = [(OBTableWelcomeController *)self tableView];
  [v2 reloadData];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKClinicalAuthorizationSettingsViewController;
  [(HKClinicalAuthorizationSettingsViewController *)&v10 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKClinicalAuthorizationSettingsViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

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
  v2 = [(HKClinicalAuthorizationSettingsViewController *)self context];
  v3 = [v2 source];

  return v3;
}

- (id)authorizationController
{
  v2 = [(HKClinicalAuthorizationSettingsViewController *)self context];
  v3 = [v2 authorizationController];

  return v3;
}

- (NSString)readUsageDescription
{
  v2 = [(HKClinicalAuthorizationSettingsViewController *)self context];
  v3 = [v2 readUsageDescription];

  return v3;
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
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"source != nil" object:? file:? lineNumber:? description:?];
}

@end