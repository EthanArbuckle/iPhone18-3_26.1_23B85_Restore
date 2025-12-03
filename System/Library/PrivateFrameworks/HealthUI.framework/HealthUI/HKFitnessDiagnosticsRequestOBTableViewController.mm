@interface HKFitnessDiagnosticsRequestOBTableViewController
+ (BOOL)needsRequestedPermission;
- (BOOL)_indexPathIsValidRow:(id)row;
- (HKFitnessDiagnosticsRequestOBTableViewController)initWithTitle:(id)title;
- (id)_cellForFitnessDiagnosticsDetailsAtIndexPath:(id)path;
- (id)_cellForViewImproveHealthExamplesAtIndexPath:(id)path;
- (id)buttonText;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_rowFromIndexPath:(id)path;
- (void)_configureTableView;
- (void)_disableDataCollection;
- (void)_enableDataCollection;
- (void)_setUpFooterView;
- (void)_showDataCollectionAdditionalInfo;
- (void)_updateForCurrentContentSizeCategory;
- (void)setButtonText:(id)text;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HKFitnessDiagnosticsRequestOBTableViewController

- (HKFitnessDiagnosticsRequestOBTableViewController)initWithTitle:(id)title
{
  v4 = MEMORY[0x1E696AAE8];
  titleCopy = title;
  v6 = [v4 bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"DATA_COLLECTION_MESSAGE_VISION_OS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v10.receiver = self;
  v10.super_class = HKFitnessDiagnosticsRequestOBTableViewController;
  v8 = [(OBTableWelcomeController *)&v10 initWithTitle:titleCopy detailText:v7 icon:0 adoptTableViewScrollView:1];

  return v8;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = HKFitnessDiagnosticsRequestOBTableViewController;
  [(OBTableWelcomeController *)&v14 viewDidLoad];
  baseAutomationIdentifier = self->_baseAutomationIdentifier;
  self->_baseAutomationIdentifier = @"UIA.Health.Onboarding.ImproveHealthAndActivity";

  v4 = self->_baseAutomationIdentifier;
  view = [(HKFitnessDiagnosticsRequestOBTableViewController *)self view];
  [view setAccessibilityIdentifier:v4];

  [(HKFitnessDiagnosticsRequestOBTableViewController *)self _configureTableView];
  v6 = MEMORY[0x1E69B7D10];
  improveHealthPrivacyIdentifier = [(HKFitnessDiagnosticsRequestOBTableViewController *)self improveHealthPrivacyIdentifier];
  v8 = [v6 bundleWithIdentifier:improveHealthPrivacyIdentifier];

  accessoryButton = [MEMORY[0x1E69B7D20] accessoryButton];
  linkColor = [MEMORY[0x1E69DC888] linkColor];
  [accessoryButton setTitleColor:linkColor forState:0];

  privacyFlow = [v8 privacyFlow];
  localizedButtonTitle = [privacyFlow localizedButtonTitle];
  [accessoryButton setTitle:localizedButtonTitle forState:0];

  [accessoryButton addTarget:self action:sel__showDataCollectionAdditionalInfo forControlEvents:64];
  headerView = [(HKFitnessDiagnosticsRequestOBTableViewController *)self headerView];
  [headerView addAccessoryButton:accessoryButton];

  [(HKFitnessDiagnosticsRequestOBTableViewController *)self _setUpFooterView];
  [(HKFitnessDiagnosticsRequestOBTableViewController *)self setModalInPresentation:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HKFitnessDiagnosticsRequestOBTableViewController;
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

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setDirectionalLayoutMargins:{0.0, 30.0, 0.0, 50.0}];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"_FitnessDiagnosticsDetailsCellReuseIdentifier"];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"_ViewFitnessDiagnosticsCellReuseIdentifier"];
}

- (void)_setUpFooterView
{
  v20[2] = *MEMORY[0x1E69E9840];
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  [boldButton addTarget:self action:sel__enableDataCollection forControlEvents:64];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"DATA_COLLECTION_ENABLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [boldButton setTitle:v5 forState:0];

  v20[0] = self->_baseAutomationIdentifier;
  v20[1] = @"EnableButton";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v7 = HKUIJoinStringsForAutomationIdentifier(v6);
  [boldButton setAccessibilityIdentifier:v7];

  buttonTray = [(HKFitnessDiagnosticsRequestOBTableViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  [linkButton addTarget:self action:sel__disableDataCollection forControlEvents:64];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"DATA_COLLECTION_DISABLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [linkButton setTitle:v11 forState:0];

  v19[0] = self->_baseAutomationIdentifier;
  v19[1] = @"DisableButton";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v13 = HKUIJoinStringsForAutomationIdentifier(v12);
  [linkButton setAccessibilityIdentifier:v13];

  titleLabel = [linkButton titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];

  configuration = [boldButton configuration];
  baseBackgroundColor = [configuration baseBackgroundColor];
  configuration2 = [linkButton configuration];
  [configuration2 setBaseBackgroundColor:baseBackgroundColor];

  buttonTray2 = [(HKFitnessDiagnosticsRequestOBTableViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];
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
    v4 = [rowCopy row] < 1;
  }

  return v4;
}

- (int64_t)_rowFromIndexPath:(id)path
{
  pathCopy = path;
  if (![(HKFitnessDiagnosticsRequestOBTableViewController *)self _indexPathIsValidRow:pathCopy])
  {
    [(HKFitnessDiagnosticsRequestOBTableViewController *)a2 _rowFromIndexPath:?];
  }

  v6 = [pathCopy row];

  return v6;
}

- (id)_cellForFitnessDiagnosticsDetailsAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(OBTableWelcomeController *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"_FitnessDiagnosticsDetailsCellReuseIdentifier" forIndexPath:pathCopy];

  return v6;
}

- (id)_cellForViewImproveHealthExamplesAtIndexPath:(id)path
{
  v13[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  tableView = [(OBTableWelcomeController *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"_ViewFitnessDiagnosticsCellReuseIdentifier" forIndexPath:pathCopy];

  v13[0] = self->_baseAutomationIdentifier;
  v13[1] = @"Cell";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v8 = HKUIJoinStringsForAutomationIdentifier(v7);
  [v6 setAccessibilityIdentifier:v8];

  textLabel = [v6 textLabel];
  buttonTitle = [(HKFitnessDiagnosticsRequestOBTableViewController *)self buttonTitle];
  [textLabel setText:buttonTitle];

  hk_appKeyColor = [MEMORY[0x1E69DC888] hk_appKeyColor];
  [textLabel setTextColor:hk_appKeyColor];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(HKFitnessDiagnosticsRequestOBTableViewController *)self _rowFromIndexPath:pathCopy];
  if (v7 == 1)
  {
    v8 = [(HKFitnessDiagnosticsRequestOBTableViewController *)self _cellForViewImproveHealthExamplesAtIndexPath:pathCopy];
  }

  else
  {
    if (v7)
    {
      goto LABEL_6;
    }

    v8 = [(HKFitnessDiagnosticsRequestOBTableViewController *)self _cellForFitnessDiagnosticsDetailsAtIndexPath:pathCopy];
  }

  v4 = v8;
LABEL_6:

  return v4;
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
  v10.super_class = HKFitnessDiagnosticsRequestOBTableViewController;
  [(HKFitnessDiagnosticsRequestOBTableViewController *)&v10 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKFitnessDiagnosticsRequestOBTableViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __77__HKFitnessDiagnosticsRequestOBTableViewController_traitCollectionDidChange___block_invoke;
      block[3] = &unk_1E81B55A8;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (id)buttonText
{
  v2 = [(NSString *)self->_buttonTitle copy];

  return v2;
}

- (void)setButtonText:(id)text
{
  v4 = [text copy];
  buttonTitle = self->_buttonTitle;
  self->_buttonTitle = v4;

  MEMORY[0x1EEE66BB8](v4, buttonTitle);
}

+ (BOOL)needsRequestedPermission
{
  if (([MEMORY[0x1E696C608] isRunningStoreDemoMode] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69ADFB8], "sharedConnection"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isDiagnosticSubmissionAllowed"), v2, !v3))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    v5 = [mEMORY[0x1E69ADFB8] hasHealthDataSubmissionAllowedBeenSet] ^ 1;
  }

  return v5;
}

- (void)_enableDataCollection
{
  v8 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1C3942000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enabled Data Collection", buf, 0xCu);
  }

  v4 = *MEMORY[0x1E69A2D58];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__HKFitnessDiagnosticsRequestOBTableViewController__enableDataCollection__block_invoke;
  v5[3] = &unk_1E81B59C0;
  v5[4] = self;
  [MEMORY[0x1E69A2D70] setUserDidAccept:1 currentAgreement:v4 completion:v5];
}

void __73__HKFitnessDiagnosticsRequestOBTableViewController__enableDataCollection__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__HKFitnessDiagnosticsRequestOBTableViewController__enableDataCollection__block_invoke_2;
  block[3] = &unk_1E81B55A8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __73__HKFitnessDiagnosticsRequestOBTableViewController__enableDataCollection__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__HKFitnessDiagnosticsRequestOBTableViewController__enableDataCollection__block_invoke_3;
  v3[3] = &unk_1E81B55A8;
  v3[4] = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

void __73__HKFitnessDiagnosticsRequestOBTableViewController__enableDataCollection__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v3 = [*(a1 + 32) completion];
    v3[2](v3, 1);
  }
}

- (void)_disableDataCollection
{
  v8 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1C3942000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Disabled Data Collection", buf, 0xCu);
  }

  v4 = *MEMORY[0x1E69A2D58];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__HKFitnessDiagnosticsRequestOBTableViewController__disableDataCollection__block_invoke;
  v5[3] = &unk_1E81B59C0;
  v5[4] = self;
  [MEMORY[0x1E69A2D70] setUserDidAccept:0 currentAgreement:v4 completion:v5];
}

void __74__HKFitnessDiagnosticsRequestOBTableViewController__disableDataCollection__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__HKFitnessDiagnosticsRequestOBTableViewController__disableDataCollection__block_invoke_2;
  block[3] = &unk_1E81B55A8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __74__HKFitnessDiagnosticsRequestOBTableViewController__disableDataCollection__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__HKFitnessDiagnosticsRequestOBTableViewController__disableDataCollection__block_invoke_3;
  v3[3] = &unk_1E81B55A8;
  v3[4] = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

void __74__HKFitnessDiagnosticsRequestOBTableViewController__disableDataCollection__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v3 = [*(a1 + 32) completion];
    v3[2](v3, 0);
  }
}

- (void)_showDataCollectionAdditionalInfo
{
  v9 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1C3942000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Presenting Privacy view controller", &v7, 0xCu);
  }

  v4 = MEMORY[0x1E69B7D58];
  improveHealthPrivacyIdentifier = [(HKFitnessDiagnosticsRequestOBTableViewController *)self improveHealthPrivacyIdentifier];
  v6 = [v4 presenterForPrivacySplashWithIdentifier:improveHealthPrivacyIdentifier];

  [v6 setPresentingViewController:self];
  [v6 present];
}

- (void)_rowFromIndexPath:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKFitnessDiagnosticsRequestOBTableViewController.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"[self _indexPathIsValidRow:indexPath]"}];
}

@end