@interface HKClinicalAuthorizationYouShouldKnowViewController
- (BOOL)_indexPathIsValidRow:(id)a3;
- (HKClinicalAuthorizationYouShouldKnowViewController)init;
- (HKClinicalAuthorizationYouShouldKnowViewController)initWithContext:(id)a3 viewController:(id)a4;
- (HKClinicalAuthorizationYouShouldKnowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HKHealthPrivacyServicePromptControllerDelegate)delegate;
- (id)_cellForDetailsAtIndexPath:(id)a3;
- (id)_cellForViewHealthRecordsAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_rowFromIndexPath:(id)a3;
- (void)_cancelButtonPressed:(id)a3;
- (void)_configureHeaderViewWithSource:(id)a3;
- (void)_configureNavigationItem;
- (void)_configureTableView;
- (void)_finishWithError:(id)a3;
- (void)_nextButtonPressed:(id)a3;
- (void)_setUpFooterView;
- (void)_updateForCurrentContentSizeCategory;
- (void)_viewHealthRecordsCellTapped:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HKClinicalAuthorizationYouShouldKnowViewController

- (HKClinicalAuthorizationYouShouldKnowViewController)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalAuthorizationYouShouldKnowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HKClinicalAuthorizationYouShouldKnowViewController)initWithContext:(id)a3 viewController:(id)a4
{
  v6 = a3;
  v20 = a4;
  v7 = HKHealthRecordsAPILocalizedString(@"YOU_SHOULD_KNOW_VIEW_MAIN_TITLE");
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = HKHealthRecordsAPILocalizedString(@"YOU_SHOULD_KNOW_PRIVACY_DETAILS_%@_%@_TITLE");
  v10 = [v6 source];
  v11 = [v10 name];
  v12 = [v6 source];
  v13 = [v12 name];
  v14 = [v8 initWithFormat:v9, v11, v13];

  v15 = +[HKClinicalAuthorizationFlowManager tableViewHeaderIcon];
  v21.receiver = self;
  v21.super_class = HKClinicalAuthorizationYouShouldKnowViewController;
  v16 = [(OBTableWelcomeController *)&v21 initWithTitle:v7 detailText:v14 icon:v15 adoptTableViewScrollView:1];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_context, a3);
    objc_storeStrong(&v17->_nextViewController, a4);
    [(HKClinicalAuthorizationYouShouldKnowViewController *)v17 setShouldMoveHeaderViewTitleToNavigationTitleWhenScrolledOffScreen:0];
  }

  return v17;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HKClinicalAuthorizationYouShouldKnowViewController;
  [(OBTableWelcomeController *)&v3 viewDidLoad];
  [(HKClinicalAuthorizationYouShouldKnowViewController *)self _configureTableView];
  [(HKClinicalAuthorizationYouShouldKnowViewController *)self _configureNavigationItem];
  [(HKClinicalAuthorizationYouShouldKnowViewController *)self _setUpFooterView];
  [(HKClinicalAuthorizationYouShouldKnowViewController *)self setModalInPresentation:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HKClinicalAuthorizationYouShouldKnowViewController;
  [(OBBaseWelcomeController *)&v5 viewDidAppear:a3];
  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 flashScrollIndicators];
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

  v7 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 6)
  {
    v9 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v10 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self view];
    [v10 setBackgroundColor:v9];

    v11 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self view];
    v12 = [v11 backgroundColor];
    v13 = [(OBTableWelcomeController *)self tableView];
    [v13 setBackgroundColor:v12];
  }

  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 registerClass:objc_opt_class() forCellReuseIdentifier:@"_DetailsCellReuseIdentifier"];

  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 registerClass:objc_opt_class() forCellReuseIdentifier:@"_ViewHealthRecordsCellReuseIdentifier"];
}

- (void)_configureNavigationItem
{
  v6 = [(OBBaseWelcomeController *)self navigationItem];
  [v6 setLargeTitleDisplayMode:2];
  v3 = HKHealthRecordsAPILocalizedString(@"IN_APP_SEQUENCE_TITLE_INTRO");
  [v6 setTitle:v3];

  v4 = HKHealthRecordsAPILocalizedString(@"IN_APP_SEQUENCE_TITLE_ACCESSIBILITY_%@");
  [v6 setAccessibilityLabel:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonPressed_];
  [v6 setRightBarButtonItem:v5];
}

- (void)_configureHeaderViewWithSource:(id)a3
{
  v5 = [a3 name];

  if (!v5)
  {
    [(HKClinicalAuthorizationYouShouldKnowViewController *)a2 _configureHeaderViewWithSource:?];
  }

  v7 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self headerTitle];
  v6 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self headerView];
  [v6 setTitle:v7];
}

- (void)_setUpFooterView
{
  v3 = [MEMORY[0x1E69B7D00] boldButton];
  nextButton = self->_nextButton;
  self->_nextButton = v3;

  v5 = self->_nextButton;
  v6 = [MEMORY[0x1E69DC888] systemBlueColor];
  [(OBBoldTrayButton *)v5 setTintColor:v6];

  v7 = self->_nextButton;
  v8 = HKHealthRecordsAPILocalizedString(@"YOU_SHOULD_KNOW_CONTINUE_BUTTON_TITLE");
  [(OBBoldTrayButton *)v7 setTitle:v8 forState:0];

  [(OBBoldTrayButton *)self->_nextButton addTarget:self action:sel__nextButtonPressed_ forControlEvents:64];
  v9 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self buttonTray];
  [v9 addButton:self->_nextButton];
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

- (int64_t)_rowFromIndexPath:(id)a3
{
  v5 = a3;
  if (![(HKClinicalAuthorizationYouShouldKnowViewController *)self _indexPathIsValidRow:v5])
  {
    [(HKClinicalAuthorizationYouShouldKnowViewController *)a2 _rowFromIndexPath:?];
  }

  v6 = [v5 row];

  return v6;
}

- (id)_cellForDetailsAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(OBTableWelcomeController *)self tableView];
  v6 = [v5 dequeueReusableCellWithIdentifier:@"_DetailsCellReuseIdentifier" forIndexPath:v4];

  v7 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self context];
  v8 = [v7 source];
  [v6 setSource:v8];

  return v6;
}

- (id)_cellForViewHealthRecordsAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(OBTableWelcomeController *)self tableView];
  v6 = [v5 dequeueReusableCellWithIdentifier:@"_ViewHealthRecordsCellReuseIdentifier" forIndexPath:v4];

  v7 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4380FB8);
  [v6 setAccessibilityIdentifier:v7];

  v8 = [v6 textLabel];
  v9 = HKHealthRecordsAPILocalizedString(@"YOU_SHOULD_KNOW_VIEW_HEALTH_RECORDS_BUTTON_TITLE");
  [v8 setText:v9];

  v10 = [MEMORY[0x1E69DC888] hk_appKeyColor];
  [v8 setTextColor:v10];

  return v6;
}

- (void)_cancelButtonPressed:(id)a3
{
  v4 = [MEMORY[0x1E696ABC0] hk_error:7 description:@"The user canceled authorization."];
  [(HKClinicalAuthorizationYouShouldKnowViewController *)self _finishWithError:v4];
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

  v8 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self delegate];
  [v8 promptControllerDidFinish:self error:v4];
}

- (void)_nextButtonPressed:(id)a3
{
  v4 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self navigationController];
  [v4 pushViewController:self->_nextViewController animated:1];
}

- (void)_viewHealthRecordsCellTapped:(id)a3
{
  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = [MEMORY[0x1E695DFF8] _hk_urlForViewHealthRecords];
  [v4 openURL:v3 withOptions:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self _rowFromIndexPath:v6];
  if (v7 == 1)
  {
    v8 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self _cellForViewHealthRecordsAtIndexPath:v6];
  }

  else
  {
    if (v7)
    {
      goto LABEL_6;
    }

    v8 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self _cellForDetailsAtIndexPath:v6];
  }

  v9 = v8;
  v4 = [v8 hkui_configuredForCHR3rdPartyAPIFlowWhilePrompting:1];

LABEL_6:

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self _rowFromIndexPath:v6];
  v8 = [v9 cellForRowAtIndexPath:v6];
  if (v7 == 1)
  {
    [(HKClinicalAuthorizationYouShouldKnowViewController *)self _viewHealthRecordsCellTapped:v8];
  }

  [v9 deselectRowAtIndexPath:v6 animated:v7 == 1];
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
  v10.super_class = HKClinicalAuthorizationYouShouldKnowViewController;
  [(HKClinicalAuthorizationYouShouldKnowViewController *)&v10 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79__HKClinicalAuthorizationYouShouldKnowViewController_traitCollectionDidChange___block_invoke;
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

- (void)_configureHeaderViewWithSource:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKClinicalAuthorizationYouShouldKnowViewController.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"source.name != nil"}];
}

- (void)_rowFromIndexPath:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKClinicalAuthorizationYouShouldKnowViewController.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"[self _indexPathIsValidRow:indexPath]"}];
}

- (void)_finishWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_debug_impl(&dword_1C3942000, a2, OS_LOG_TYPE_DEBUG, "%@: dismissing", &v4, 0xCu);
}

@end