@interface HKClinicalAuthorizationYouShouldKnowViewController
- (BOOL)_indexPathIsValidRow:(id)row;
- (HKClinicalAuthorizationYouShouldKnowViewController)init;
- (HKClinicalAuthorizationYouShouldKnowViewController)initWithContext:(id)context viewController:(id)controller;
- (HKClinicalAuthorizationYouShouldKnowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HKHealthPrivacyServicePromptControllerDelegate)delegate;
- (id)_cellForDetailsAtIndexPath:(id)path;
- (id)_cellForViewHealthRecordsAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_rowFromIndexPath:(id)path;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_configureHeaderViewWithSource:(id)source;
- (void)_configureNavigationItem;
- (void)_configureTableView;
- (void)_finishWithError:(id)error;
- (void)_nextButtonPressed:(id)pressed;
- (void)_setUpFooterView;
- (void)_updateForCurrentContentSizeCategory;
- (void)_viewHealthRecordsCellTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
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

- (HKClinicalAuthorizationYouShouldKnowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HKClinicalAuthorizationYouShouldKnowViewController)initWithContext:(id)context viewController:(id)controller
{
  contextCopy = context;
  controllerCopy = controller;
  v7 = HKHealthRecordsAPILocalizedString(@"YOU_SHOULD_KNOW_VIEW_MAIN_TITLE");
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = HKHealthRecordsAPILocalizedString(@"YOU_SHOULD_KNOW_PRIVACY_DETAILS_%@_%@_TITLE");
  source = [contextCopy source];
  name = [source name];
  source2 = [contextCopy source];
  name2 = [source2 name];
  v14 = [v8 initWithFormat:v9, name, name2];

  v15 = +[HKClinicalAuthorizationFlowManager tableViewHeaderIcon];
  v21.receiver = self;
  v21.super_class = HKClinicalAuthorizationYouShouldKnowViewController;
  v16 = [(OBTableWelcomeController *)&v21 initWithTitle:v7 detailText:v14 icon:v15 adoptTableViewScrollView:1];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_context, context);
    objc_storeStrong(&v17->_nextViewController, controller);
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

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HKClinicalAuthorizationYouShouldKnowViewController;
  [(OBBaseWelcomeController *)&v5 viewDidAppear:appear];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView flashScrollIndicators];
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

  traitCollection = [(HKClinicalAuthorizationYouShouldKnowViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    view = [(HKClinicalAuthorizationYouShouldKnowViewController *)self view];
    [view setBackgroundColor:systemBackgroundColor];

    view2 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self view];
    backgroundColor = [view2 backgroundColor];
    tableView3 = [(OBTableWelcomeController *)self tableView];
    [tableView3 setBackgroundColor:backgroundColor];
  }

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"_DetailsCellReuseIdentifier"];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"_ViewHealthRecordsCellReuseIdentifier"];
}

- (void)_configureNavigationItem
{
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];
  v3 = HKHealthRecordsAPILocalizedString(@"IN_APP_SEQUENCE_TITLE_INTRO");
  [navigationItem setTitle:v3];

  v4 = HKHealthRecordsAPILocalizedString(@"IN_APP_SEQUENCE_TITLE_ACCESSIBILITY_%@");
  [navigationItem setAccessibilityLabel:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonPressed_];
  [navigationItem setRightBarButtonItem:v5];
}

- (void)_configureHeaderViewWithSource:(id)source
{
  name = [source name];

  if (!name)
  {
    [(HKClinicalAuthorizationYouShouldKnowViewController *)a2 _configureHeaderViewWithSource:?];
  }

  headerTitle = [(HKClinicalAuthorizationYouShouldKnowViewController *)self headerTitle];
  headerView = [(HKClinicalAuthorizationYouShouldKnowViewController *)self headerView];
  [headerView setTitle:headerTitle];
}

- (void)_setUpFooterView
{
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  nextButton = self->_nextButton;
  self->_nextButton = boldButton;

  v5 = self->_nextButton;
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [(OBBoldTrayButton *)v5 setTintColor:systemBlueColor];

  v7 = self->_nextButton;
  v8 = HKHealthRecordsAPILocalizedString(@"YOU_SHOULD_KNOW_CONTINUE_BUTTON_TITLE");
  [(OBBoldTrayButton *)v7 setTitle:v8 forState:0];

  [(OBBoldTrayButton *)self->_nextButton addTarget:self action:sel__nextButtonPressed_ forControlEvents:64];
  buttonTray = [(HKClinicalAuthorizationYouShouldKnowViewController *)self buttonTray];
  [buttonTray addButton:self->_nextButton];
}

- (BOOL)_indexPathIsValidRow:(id)row
{
  rowCopy = row;
  if ([rowCopy section])
  {
    v4 = 0;
  }

  else
  {
    v4 = [rowCopy row] < 2;
  }

  return v4;
}

- (int64_t)_rowFromIndexPath:(id)path
{
  pathCopy = path;
  if (![(HKClinicalAuthorizationYouShouldKnowViewController *)self _indexPathIsValidRow:pathCopy])
  {
    [(HKClinicalAuthorizationYouShouldKnowViewController *)a2 _rowFromIndexPath:?];
  }

  v6 = [pathCopy row];

  return v6;
}

- (id)_cellForDetailsAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(OBTableWelcomeController *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"_DetailsCellReuseIdentifier" forIndexPath:pathCopy];

  context = [(HKClinicalAuthorizationYouShouldKnowViewController *)self context];
  source = [context source];
  [v6 setSource:source];

  return v6;
}

- (id)_cellForViewHealthRecordsAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(OBTableWelcomeController *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"_ViewHealthRecordsCellReuseIdentifier" forIndexPath:pathCopy];

  v7 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4380FB8);
  [v6 setAccessibilityIdentifier:v7];

  textLabel = [v6 textLabel];
  v9 = HKHealthRecordsAPILocalizedString(@"YOU_SHOULD_KNOW_VIEW_HEALTH_RECORDS_BUTTON_TITLE");
  [textLabel setText:v9];

  hk_appKeyColor = [MEMORY[0x1E69DC888] hk_appKeyColor];
  [textLabel setTextColor:hk_appKeyColor];

  return v6;
}

- (void)_cancelButtonPressed:(id)pressed
{
  v4 = [MEMORY[0x1E696ABC0] hk_error:7 description:@"The user canceled authorization."];
  [(HKClinicalAuthorizationYouShouldKnowViewController *)self _finishWithError:v4];
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
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

  delegate = [(HKClinicalAuthorizationYouShouldKnowViewController *)self delegate];
  [delegate promptControllerDidFinish:self error:errorCopy];
}

- (void)_nextButtonPressed:(id)pressed
{
  navigationController = [(HKClinicalAuthorizationYouShouldKnowViewController *)self navigationController];
  [navigationController pushViewController:self->_nextViewController animated:1];
}

- (void)_viewHealthRecordsCellTapped:(id)tapped
{
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  _hk_urlForViewHealthRecords = [MEMORY[0x1E695DFF8] _hk_urlForViewHealthRecords];
  [defaultWorkspace openURL:_hk_urlForViewHealthRecords withOptions:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self _rowFromIndexPath:pathCopy];
  if (v7 == 1)
  {
    v8 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self _cellForViewHealthRecordsAtIndexPath:pathCopy];
  }

  else
  {
    if (v7)
    {
      goto LABEL_6;
    }

    v8 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self _cellForDetailsAtIndexPath:pathCopy];
  }

  v9 = v8;
  v4 = [v8 hkui_configuredForCHR3rdPartyAPIFlowWhilePrompting:1];

LABEL_6:

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(HKClinicalAuthorizationYouShouldKnowViewController *)self _rowFromIndexPath:pathCopy];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  if (v7 == 1)
  {
    [(HKClinicalAuthorizationYouShouldKnowViewController *)self _viewHealthRecordsCellTapped:v8];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:v7 == 1];
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
  v10.super_class = HKClinicalAuthorizationYouShouldKnowViewController;
  [(HKClinicalAuthorizationYouShouldKnowViewController *)&v10 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKClinicalAuthorizationYouShouldKnowViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

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