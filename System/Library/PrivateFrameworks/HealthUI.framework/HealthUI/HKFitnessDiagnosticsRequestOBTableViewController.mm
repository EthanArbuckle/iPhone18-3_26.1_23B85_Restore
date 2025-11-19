@interface HKFitnessDiagnosticsRequestOBTableViewController
+ (BOOL)needsRequestedPermission;
- (BOOL)_indexPathIsValidRow:(id)a3;
- (HKFitnessDiagnosticsRequestOBTableViewController)initWithTitle:(id)a3;
- (id)_cellForFitnessDiagnosticsDetailsAtIndexPath:(id)a3;
- (id)_cellForViewImproveHealthExamplesAtIndexPath:(id)a3;
- (id)buttonText;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_rowFromIndexPath:(id)a3;
- (void)_configureTableView;
- (void)_disableDataCollection;
- (void)_enableDataCollection;
- (void)_setUpFooterView;
- (void)_showDataCollectionAdditionalInfo;
- (void)_updateForCurrentContentSizeCategory;
- (void)setButtonText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HKFitnessDiagnosticsRequestOBTableViewController

- (HKFitnessDiagnosticsRequestOBTableViewController)initWithTitle:(id)a3
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"DATA_COLLECTION_MESSAGE_VISION_OS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v10.receiver = self;
  v10.super_class = HKFitnessDiagnosticsRequestOBTableViewController;
  v8 = [(OBTableWelcomeController *)&v10 initWithTitle:v5 detailText:v7 icon:0 adoptTableViewScrollView:1];

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
  v5 = [(HKFitnessDiagnosticsRequestOBTableViewController *)self view];
  [v5 setAccessibilityIdentifier:v4];

  [(HKFitnessDiagnosticsRequestOBTableViewController *)self _configureTableView];
  v6 = MEMORY[0x1E69B7D10];
  v7 = [(HKFitnessDiagnosticsRequestOBTableViewController *)self improveHealthPrivacyIdentifier];
  v8 = [v6 bundleWithIdentifier:v7];

  v9 = [MEMORY[0x1E69B7D20] accessoryButton];
  v10 = [MEMORY[0x1E69DC888] linkColor];
  [v9 setTitleColor:v10 forState:0];

  v11 = [v8 privacyFlow];
  v12 = [v11 localizedButtonTitle];
  [v9 setTitle:v12 forState:0];

  [v9 addTarget:self action:sel__showDataCollectionAdditionalInfo forControlEvents:64];
  v13 = [(HKFitnessDiagnosticsRequestOBTableViewController *)self headerView];
  [v13 addAccessoryButton:v9];

  [(HKFitnessDiagnosticsRequestOBTableViewController *)self _setUpFooterView];
  [(HKFitnessDiagnosticsRequestOBTableViewController *)self setModalInPresentation:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HKFitnessDiagnosticsRequestOBTableViewController;
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

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setDirectionalLayoutMargins:{0.0, 30.0, 0.0, 50.0}];

  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"_FitnessDiagnosticsDetailsCellReuseIdentifier"];

  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 registerClass:objc_opt_class() forCellReuseIdentifier:@"_ViewFitnessDiagnosticsCellReuseIdentifier"];
}

- (void)_setUpFooterView
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69B7D00] boldButton];
  [v3 addTarget:self action:sel__enableDataCollection forControlEvents:64];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"DATA_COLLECTION_ENABLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v3 setTitle:v5 forState:0];

  v20[0] = self->_baseAutomationIdentifier;
  v20[1] = @"EnableButton";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v7 = HKUIJoinStringsForAutomationIdentifier(v6);
  [v3 setAccessibilityIdentifier:v7];

  v8 = [(HKFitnessDiagnosticsRequestOBTableViewController *)self buttonTray];
  [v8 addButton:v3];

  v9 = [MEMORY[0x1E69B7D38] linkButton];
  [v9 addTarget:self action:sel__disableDataCollection forControlEvents:64];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"DATA_COLLECTION_DISABLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v9 setTitle:v11 forState:0];

  v19[0] = self->_baseAutomationIdentifier;
  v19[1] = @"DisableButton";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v13 = HKUIJoinStringsForAutomationIdentifier(v12);
  [v9 setAccessibilityIdentifier:v13];

  v14 = [v9 titleLabel];
  [v14 setAdjustsFontSizeToFitWidth:1];

  v15 = [v3 configuration];
  v16 = [v15 baseBackgroundColor];
  v17 = [v9 configuration];
  [v17 setBaseBackgroundColor:v16];

  v18 = [(HKFitnessDiagnosticsRequestOBTableViewController *)self buttonTray];
  [v18 addButton:v9];
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
    v4 = [v3 row] < 1;
  }

  return v4;
}

- (int64_t)_rowFromIndexPath:(id)a3
{
  v5 = a3;
  if (![(HKFitnessDiagnosticsRequestOBTableViewController *)self _indexPathIsValidRow:v5])
  {
    [(HKFitnessDiagnosticsRequestOBTableViewController *)a2 _rowFromIndexPath:?];
  }

  v6 = [v5 row];

  return v6;
}

- (id)_cellForFitnessDiagnosticsDetailsAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(OBTableWelcomeController *)self tableView];
  v6 = [v5 dequeueReusableCellWithIdentifier:@"_FitnessDiagnosticsDetailsCellReuseIdentifier" forIndexPath:v4];

  return v6;
}

- (id)_cellForViewImproveHealthExamplesAtIndexPath:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(OBTableWelcomeController *)self tableView];
  v6 = [v5 dequeueReusableCellWithIdentifier:@"_ViewFitnessDiagnosticsCellReuseIdentifier" forIndexPath:v4];

  v13[0] = self->_baseAutomationIdentifier;
  v13[1] = @"Cell";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v8 = HKUIJoinStringsForAutomationIdentifier(v7);
  [v6 setAccessibilityIdentifier:v8];

  v9 = [v6 textLabel];
  v10 = [(HKFitnessDiagnosticsRequestOBTableViewController *)self buttonTitle];
  [v9 setText:v10];

  v11 = [MEMORY[0x1E69DC888] hk_appKeyColor];
  [v9 setTextColor:v11];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(HKFitnessDiagnosticsRequestOBTableViewController *)self _rowFromIndexPath:v6];
  if (v7 == 1)
  {
    v8 = [(HKFitnessDiagnosticsRequestOBTableViewController *)self _cellForViewImproveHealthExamplesAtIndexPath:v6];
  }

  else
  {
    if (v7)
    {
      goto LABEL_6;
    }

    v8 = [(HKFitnessDiagnosticsRequestOBTableViewController *)self _cellForFitnessDiagnosticsDetailsAtIndexPath:v6];
  }

  v4 = v8;
LABEL_6:

  return v4;
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
  v10.super_class = HKFitnessDiagnosticsRequestOBTableViewController;
  [(HKFitnessDiagnosticsRequestOBTableViewController *)&v10 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKFitnessDiagnosticsRequestOBTableViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

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

- (void)setButtonText:(id)a3
{
  v4 = [a3 copy];
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
    v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v5 = [v4 hasHealthDataSubmissionAllowedBeenSet] ^ 1;
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
    v7 = self;
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
    v7 = self;
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
    v8 = self;
    _os_log_impl(&dword_1C3942000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Presenting Privacy view controller", &v7, 0xCu);
  }

  v4 = MEMORY[0x1E69B7D58];
  v5 = [(HKFitnessDiagnosticsRequestOBTableViewController *)self improveHealthPrivacyIdentifier];
  v6 = [v4 presenterForPrivacySplashWithIdentifier:v5];

  [v6 setPresentingViewController:self];
  [v6 present];
}

- (void)_rowFromIndexPath:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKFitnessDiagnosticsRequestOBTableViewController.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"[self _indexPathIsValidRow:indexPath]"}];
}

@end