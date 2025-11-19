@interface HKClinicalAuthorizationNewRecordsViewController
- (BOOL)_indexPathIsValidRow:(id)a3;
- (HKClinicalAuthorizationNewRecordsViewController)init;
- (HKClinicalAuthorizationNewRecordsViewController)initWithContext:(id)a3;
- (HKClinicalAuthorizationNewRecordsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HKHealthPrivacyServicePromptControllerDelegate)delegate;
- (id)_indexPathForShareAuthorizationMode:(int64_t)a3;
- (id)_shareAuthorizationModeCellForIndexPath:(id)a3;
- (id)_titleForShareAuthorizationModeFooter;
- (id)_visibleShareAuthorizationModeCellForMode:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int64_t)_shareAuthorizationModeForIndexPath:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_cancelButtonPressed:(id)a3;
- (void)_configureNavigationItem;
- (void)_configureTableView;
- (void)_doneButtonPressed:(id)a3;
- (void)_finishWithError:(id)a3;
- (void)_setUpFooterView;
- (void)_shareAuthorizationModeCellPressed:(id)a3;
- (void)_updateDownloadingStatusIndicator;
- (void)_updateForCurrentContentSizeCategory;
- (void)_updateShareAuthorizationModeSectionFooter;
- (void)ingestionStatusDidChangeTo:(unint64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HKClinicalAuthorizationNewRecordsViewController

- (HKClinicalAuthorizationNewRecordsViewController)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalAuthorizationNewRecordsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HKClinicalAuthorizationNewRecordsViewController)initWithContext:(id)a3
{
  v5 = a3;
  v6 = HKHealthRecordsAPILocalizedString(@"NEW_RECORDS_MAIN_TITLE");
  v7 = [(HKClinicalAuthorizationNewRecordsViewController *)self context];
  v8 = [v7 source];
  v9 = HKHealthRecordsAPILocalizedStringWithSource(@"APP_ACCESS_REQUEST_NEW_RECORDS", v8);

  v10 = +[HKClinicalAuthorizationFlowManager tableViewHeaderIcon];
  v18.receiver = self;
  v18.super_class = HKClinicalAuthorizationNewRecordsViewController;
  v11 = [(OBTableWelcomeController *)&v18 initWithTitle:v6 detailText:v9 icon:v10 adoptTableViewScrollView:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_context, a3);
    v13 = [HKClinicalAuthorizationDisplayController alloc];
    v14 = [v5 authorizationController];
    v15 = [(HKClinicalAuthorizationDisplayController *)v13 initWithAuthorizationController:v14];
    displayController = v12->_displayController;
    v12->_displayController = v15;

    [(HKClinicalAuthorizationNewRecordsViewController *)v12 setAuthorizationMode:1];
    [(HKClinicalAuthorizationNewRecordsViewController *)v12 setShouldMoveHeaderViewTitleToNavigationTitleWhenScrolledOffScreen:0];
  }

  return v12;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HKClinicalAuthorizationNewRecordsViewController;
  [(OBTableWelcomeController *)&v4 viewDidLoad];
  [(HKClinicalAuthorizationNewRecordsViewController *)self _configureTableView];
  [(HKClinicalAuthorizationNewRecordsViewController *)self _configureNavigationItem];
  [(HKClinicalAuthorizationNewRecordsViewController *)self _setUpFooterView];
  [(HKClinicalAuthorizationNewRecordsViewController *)self setModalInPresentation:1];
  v3 = [(HKClinicalAuthorizationSequenceContext *)self->_context authFlowManager];
  [v3 registerIngestionStatusObserver:self];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HKClinicalAuthorizationNewRecordsViewController;
  [(OBBaseWelcomeController *)&v5 viewDidAppear:a3];
  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 flashScrollIndicators];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HKClinicalAuthorizationNewRecordsViewController;
  [(OBBaseWelcomeController *)&v4 viewWillDisappear:a3];
  self->_isWaitingForDoneAction = 0;
  [(HKClinicalAuthorizationNewRecordsViewController *)self _updateDownloadingStatusIndicator];
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

  v7 = [(HKClinicalAuthorizationNewRecordsViewController *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 6)
  {
    v9 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v10 = [(HKClinicalAuthorizationNewRecordsViewController *)self view];
    [v10 setBackgroundColor:v9];

    v11 = [(HKClinicalAuthorizationNewRecordsViewController *)self view];
    v12 = [v11 backgroundColor];
    v13 = [(OBTableWelcomeController *)self tableView];
    [v13 setBackgroundColor:v12];
  }

  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 registerClass:objc_opt_class() forCellReuseIdentifier:@"AuthorizationModeCellReuseIdentifier"];
}

- (void)_configureNavigationItem
{
  v6 = [(OBBaseWelcomeController *)self navigationItem];
  [v6 setLargeTitleDisplayMode:2];
  v3 = HKHealthRecordsAPILocalizedString(@"IN_APP_SEQUENCE_TITLE_NEW_RECORDS");
  [v6 setTitle:v3];

  v4 = HKHealthRecordsAPILocalizedString(@"IN_APP_SEQUENCE_TITLE_ACCESSIBILITY_%@");
  [v6 setAccessibilityLabel:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonPressed_];
  [v6 setRightBarButtonItem:v5];
}

- (void)_setUpFooterView
{
  v3 = [MEMORY[0x1E69B7D00] boldButton];
  doneButton = self->_doneButton;
  self->_doneButton = v3;

  v5 = self->_doneButton;
  v6 = HKHealthRecordsAPILocalizedString(@"NEW_RECORDS_DONE_BUTTON_TITLE");
  [(OBBoldTrayButton *)v5 setTitle:v6 forState:0];

  [(OBBoldTrayButton *)self->_doneButton addTarget:self action:sel__doneButtonPressed_ forControlEvents:64];
  v7 = [(HKClinicalAuthorizationNewRecordsViewController *)self buttonTray];
  [v7 addButton:self->_doneButton];
}

- (BOOL)_indexPathIsValidRow:(id)a3
{
  v3 = a3;
  if ([v3 section])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 row] < 2;
  }

  return v4;
}

- (int64_t)_shareAuthorizationModeForIndexPath:(id)a3
{
  v5 = a3;
  if (![(HKClinicalAuthorizationNewRecordsViewController *)self _indexPathIsValidRow:v5])
  {
    [HKClinicalAuthorizationNewRecordsViewController _shareAuthorizationModeForIndexPath:];
  }

  v6 = [v5 row];
  v7 = v6;
  if (v6 >= 2)
  {
    [HKClinicalAuthorizationNewRecordsViewController _shareAuthorizationModeForIndexPath:];
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
    [v8 handleFailureInMethod:a2 object:self file:@"HKClinicalAuthorizationNewRecordsViewController.m" lineNumber:153 description:{@"Invalid row: %ld", v7}];
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (id)_indexPathForShareAuthorizationMode:(int64_t)a3
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 == 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return [MEMORY[0x1E696AC88] indexPathForRow:v4 inSection:0];
}

- (id)_visibleShareAuthorizationModeCellForMode:(int64_t)a3
{
  v4 = [(HKClinicalAuthorizationNewRecordsViewController *)self _indexPathForShareAuthorizationMode:a3];
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

- (id)_shareAuthorizationModeCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(HKClinicalAuthorizationNewRecordsViewController *)self _shareAuthorizationModeForIndexPath:v4];
  v6 = [(OBTableWelcomeController *)self tableView];
  v7 = [v6 dequeueReusableCellWithIdentifier:@"AuthorizationModeCellReuseIdentifier" forIndexPath:v4];

  if (!v5)
  {
    v8 = &unk_1F43811E0;
    v9 = @"CONTINUOUS_AUTHORIZATION";
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v8 = &unk_1F43811F8;
    v9 = @"ONE_TIME_AUTHORIZATION";
LABEL_5:
    v10 = HKHealthRecordsAPILocalizedString(v9);
    v11 = HKUIJoinStringsForAutomationIdentifier(v8);
    [v7 setAccessibilityIdentifier:v11];

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  if ([(HKClinicalAuthorizationNewRecordsViewController *)self authorizationMode]== v5)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v7 setAccessoryType:v12];
  v13 = [v7 textLabel];
  [v13 setText:v10];

  return v7;
}

- (id)_titleForShareAuthorizationModeFooter
{
  v3 = [(HKClinicalAuthorizationNewRecordsViewController *)self authorizationMode];
  v4 = [(HKClinicalAuthorizationNewRecordsViewController *)self displayController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__HKClinicalAuthorizationNewRecordsViewController__titleForShareAuthorizationModeFooter__block_invoke;
  v7[3] = &unk_1E81B7338;
  v7[4] = self;
  v5 = [v4 currentTimeTitleForReadAuthorizationModeFooterWithSelectedMode:v3 formatBlock:v7];

  return v5;
}

id __88__HKClinicalAuthorizationNewRecordsViewController__titleForShareAuthorizationModeFooter__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v10 = @"NEW_RECORDS_ONE_TIME_AUTHORIZATION_APP_%1$@_DATE_%2$@_CONFIRMATION";
  }

  else
  {
    v10 = @"NEW_RECORDS_CONTINUOUS_AUTHORIZATION_APP_%1$@_DATE_%2$@_CONFIRMATION";
  }

  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [*(a1 + 32) context];
  v13 = [v12 source];
  v14 = HKHealthRecordsAPILocalizedStringWithSource(v10, v13);
  v15 = [v9 name];
  v4 = [v11 initWithFormat:v14, v15, v8];

LABEL_6:

  return v4;
}

- (void)_updateShareAuthorizationModeSectionFooter
{
  v2 = [(OBTableWelcomeController *)self tableView];
  [v2 reloadData];
}

- (void)_doneButtonPressed:(id)a3
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_isCurrentlyIngesting)
  {
    self->_isWaitingForDoneAction = 1;

    [(HKClinicalAuthorizationNewRecordsViewController *)self _updateDownloadingStatusIndicator];
  }

  else
  {
    v4 = [(HKClinicalAuthorizationNewRecordsViewController *)self context];
    v5 = [v4 authorizationController];
    v6 = [(HKClinicalAuthorizationNewRecordsViewController *)self authorizationMode];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__HKClinicalAuthorizationNewRecordsViewController__doneButtonPressed___block_invoke;
    v7[3] = &unk_1E81B59C0;
    v7[4] = self;
    [v5 commitAllTypesAndUpdateAuthorizationAnchorWithMode:v6 completion:v7];
  }
}

- (void)_cancelButtonPressed:(id)a3
{
  v4 = [MEMORY[0x1E696ABC0] hk_error:7 description:@"The user canceled authorization."];
  [(HKClinicalAuthorizationNewRecordsViewController *)self _finishWithError:v4];
}

- (void)_updateDownloadingStatusIndicator
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  doneButton = self->_doneButton;
  if (self->_isCurrentlyIngesting)
  {

    [(OBBoldTrayButton *)doneButton showsBusyIndicator];
  }

  else
  {

    [(OBBoldTrayButton *)doneButton hidesBusyIndicator];
  }
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
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

  v8 = [(HKClinicalAuthorizationNewRecordsViewController *)self delegate];
  [v8 promptControllerDidFinish:self error:v4];
}

- (void)_shareAuthorizationModeCellPressed:(id)a3
{
  v8 = a3;
  v4 = [(OBTableWelcomeController *)self tableView];
  v5 = [v4 indexPathForCell:v8];

  v6 = [(HKClinicalAuthorizationNewRecordsViewController *)self _shareAuthorizationModeForIndexPath:v5];
  if (v6 != [(HKClinicalAuthorizationNewRecordsViewController *)self authorizationMode])
  {
    v7 = [(HKClinicalAuthorizationNewRecordsViewController *)self _visibleShareAuthorizationModeCellForMode:[(HKClinicalAuthorizationNewRecordsViewController *)self authorizationMode]];
    [(HKClinicalAuthorizationNewRecordsViewController *)self setAuthorizationMode:v6];
    [v7 setAccessoryType:0];
    [v8 setAccessoryType:3];
    [(HKClinicalAuthorizationNewRecordsViewController *)self _updateShareAuthorizationModeSectionFooter];
  }
}

- (void)ingestionStatusDidChangeTo:(unint64_t)a3
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  self->_isCurrentlyIngesting = a3 == 2;
  if (a3 != 2 && self->_isWaitingForDoneAction)
  {
    self->_isWaitingForDoneAction = 0;
    [(HKClinicalAuthorizationNewRecordsViewController *)self _updateDownloadingStatusIndicator];

    [(HKClinicalAuthorizationNewRecordsViewController *)self _doneButtonPressed:0];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    [HKClinicalAuthorizationNewRecordsViewController tableView:numberOfRowsInSection:];
  }

  return 2;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (![(HKClinicalAuthorizationNewRecordsViewController *)self _indexPathIsValidRow:v5])
  {
    [HKClinicalAuthorizationNewRecordsViewController tableView:cellForRowAtIndexPath:];
  }

  if ([v5 section])
  {
    [HKClinicalAuthorizationNewRecordsViewController tableView:cellForRowAtIndexPath:];
  }

  v6 = [(HKClinicalAuthorizationNewRecordsViewController *)self _shareAuthorizationModeCellForIndexPath:v5];
  v7 = [v6 hkui_configuredForCHR3rdPartyAPIFlowWhilePrompting:1];

  return v7;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4)
  {
    [HKClinicalAuthorizationNewRecordsViewController tableView:titleForFooterInSection:];
  }

  return [(HKClinicalAuthorizationNewRecordsViewController *)self _titleForShareAuthorizationModeFooter];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 section])
  {
    [HKClinicalAuthorizationNewRecordsViewController tableView:didSelectRowAtIndexPath:];
  }

  v8 = [v7 cellForRowAtIndexPath:v6];
  [(HKClinicalAuthorizationNewRecordsViewController *)self _shareAuthorizationModeCellPressed:v8];
  [v7 deselectRowAtIndexPath:v6 animated:1];
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
  v10.super_class = HKClinicalAuthorizationNewRecordsViewController;
  [(HKClinicalAuthorizationNewRecordsViewController *)&v10 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKClinicalAuthorizationNewRecordsViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__HKClinicalAuthorizationNewRecordsViewController_traitCollectionDidChange___block_invoke;
      block[3] = &unk_1E81B55A8;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (HKHealthPrivacyServicePromptControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_shareAuthorizationModeForIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"[self _indexPathIsValidRow:indexPath]" object:? file:? lineNumber:? description:?];
}

- (void)_shareAuthorizationModeForIndexPath:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"row < _AuthorizationModeCount" object:? file:? lineNumber:? description:?];
}

- (void)tableView:numberOfRowsInSection:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"section == 0" object:? file:? lineNumber:? description:?];
}

- (void)tableView:cellForRowAtIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"[self _indexPathIsValidRow:indexPath]" object:? file:? lineNumber:? description:?];
}

- (void)tableView:cellForRowAtIndexPath:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"indexPath.section == 0" object:? file:? lineNumber:? description:?];
}

- (void)tableView:titleForFooterInSection:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"section == 0" object:? file:? lineNumber:? description:?];
}

- (void)tableView:didSelectRowAtIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"indexPath.section == 0" object:? file:? lineNumber:? description:?];
}

@end