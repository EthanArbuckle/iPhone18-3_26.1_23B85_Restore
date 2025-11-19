@interface HKHealthSyncDisplayController
- (HKHealthPrivacyHostRemoteViewController)objectPickerDelegate;
- (HKHealthPrivacyServicePromptControllerDelegate)delegate;
- (HKHealthSyncDisplayController)init;
- (HKHealthSyncDisplayController)initWithHealthStore:(id)a3 source:(id)a4;
- (id)_explanationTextForSource:(id)a3;
- (id)_headerTitleForSource:(id)a3;
- (void)_cancelButtonPressed:(id)a3;
- (void)_finishWithError:(id)a3;
- (void)_nextButtonPressed:(id)a3;
- (void)_setHeaderIcon;
- (void)_setUpFooterView;
- (void)_viewHealthRecordsCellTapped:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HKHealthSyncDisplayController

- (HKHealthSyncDisplayController)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKHealthSyncDisplayController)initWithHealthStore:(id)a3 source:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HKHealthSyncDisplayController *)self _headerTitleForSource:v8];
  v10 = [(HKHealthSyncDisplayController *)self _explanationTextForSource:v8];
  v16.receiver = self;
  v16.super_class = HKHealthSyncDisplayController;
  v11 = [(OBTableWelcomeController *)&v16 initWithTitle:v9 detailText:v10 icon:0 adoptTableViewScrollView:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_healthStore, a3);
    objc_storeStrong(&v12->_source, a4);
    v13 = [objc_alloc(MEMORY[0x1E696BFE0]) initWithHealthStore:v12->_healthStore];
    cloudSyncControl = v12->_cloudSyncControl;
    v12->_cloudSyncControl = v13;
  }

  return v12;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = HKHealthSyncDisplayController;
  [(OBTableWelcomeController *)&v3 viewWillAppear:a3];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HKHealthSyncDisplayController;
  [(OBTableWelcomeController *)&v7 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(HKHealthSyncDisplayController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(HKHealthSyncDisplayController *)self navigationController];
  [v5 setModalInPresentation:1];

  v6 = [(HKHealthSyncDisplayController *)self headerView];
  [v6 setAllowFullWidthIcon:1];

  [(HKHealthSyncDisplayController *)self _setHeaderIcon];
  [(HKHealthSyncDisplayController *)self _setUpFooterView];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = HKHealthSyncDisplayController;
  [(OBBaseWelcomeController *)&v3 viewDidAppear:a3];
}

- (void)_setUpFooterView
{
  v10 = [MEMORY[0x1E69B7D00] boldButton];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"HEALTHKIT_AUTHORIZATION_SYNC_ENABLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v10 setTitle:v4 forState:0];

  [v10 addTarget:self action:sel__nextButtonPressed_ forControlEvents:64];
  v5 = [(HKHealthSyncDisplayController *)self buttonTray];
  [v5 addButton:v10];

  v6 = [MEMORY[0x1E69B7D38] linkButton];
  [v6 addTarget:self action:sel__cancelButtonPressed_ forControlEvents:64];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"HEALTHKIT_AUTHORIZATION_SYNC_DISABLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v6 setTitle:v8 forState:0];

  v9 = [(HKHealthSyncDisplayController *)self buttonTray];
  [v9 addButton:v6];
}

- (id)_explanationTextForSource:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"HEALTHKIT_AUTHORIZATION_SYNC_DETAIL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [v4 name];

  v9 = [v7 stringWithFormat:v6, v8];

  return v9;
}

- (void)_setHeaderIcon
{
  v44[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:38.0];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.icloud"];
  v42 = v3;
  v5 = [v4 imageByApplyingSymbolConfiguration:v3];

  v6 = objc_alloc(MEMORY[0x1E69DD250]);
  v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v41 = v5;
  v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = v8;
  [v7 addSubview:v8];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setContentMode:1];
  v9 = [v7 layer];
  [v9 setCornerRadius:40.0];

  v10 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v11 = [v10 userInterfaceStyle];

  if (v11 == 2)
  {
    [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGray6Color];
  }
  v12 = ;
  [v7 setBackgroundColor:v12];

  v13 = [(HKHealthSyncDisplayController *)self headerView];
  v14 = [v13 customIconContainerView];
  [v14 addSubview:v7];

  v33 = MEMORY[0x1E696ACD8];
  v38 = [v7 centerXAnchor];
  v39 = [(HKHealthSyncDisplayController *)self headerView];
  v37 = [v39 customIconContainerView];
  v36 = [v37 centerXAnchor];
  v35 = [v38 constraintEqualToAnchor:v36];
  v44[0] = v35;
  v32 = [v7 centerYAnchor];
  v34 = [(HKHealthSyncDisplayController *)self headerView];
  v15 = [v34 customIconContainerView];
  v16 = [v15 centerYAnchor];
  v17 = [v32 constraintEqualToAnchor:v16];
  v44[1] = v17;
  v18 = [v7 heightAnchor];
  v19 = [v18 constraintEqualToConstant:80.0];
  v44[2] = v19;
  v20 = [v7 widthAnchor];
  v21 = [v7 heightAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v44[3] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
  [v33 activateConstraints:v23];

  v24 = MEMORY[0x1E696ACD8];
  v25 = [v40 centerXAnchor];
  v26 = [v7 centerXAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v43[0] = v27;
  v28 = [v40 centerYAnchor];
  v29 = [v7 centerYAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v43[1] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  [v24 activateConstraints:v31];
}

- (id)_headerTitleForSource:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"HEALTHKIT_AUTHORIZATION_SYNC_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [v4 name];

  v9 = [v7 stringWithFormat:v6, v8];

  return v9;
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

  v8 = [(HKHealthSyncDisplayController *)self delegate];

  if (v8)
  {
    v9 = [(HKHealthSyncDisplayController *)self delegate];
    [v9 promptControllerDidFinish:self error:v4];
  }

  else
  {
    v9 = [(HKHealthSyncDisplayController *)self objectPickerDelegate];
    [v9 didFinishWithError:v4];
  }
}

- (void)_nextButtonPressed:(id)a3
{
  v4 = [MEMORY[0x1E69A2D68] internalAppleAccountSettingsURLString];
  v5 = [v4 stringByAppendingString:@"/ICLOUD_SERVICE/com.apple.Dataclass.Health"];

  v6 = [MEMORY[0x1E6963608] defaultWorkspace];
  v7 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  [v6 openSensitiveURL:v7 withOptions:0];

  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v8 hk_setHasCompletedThirdPartyAuthSyncWithBooleanValue:1];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HKHealthSyncDisplayController__nextButtonPressed___block_invoke;
  block[3] = &unk_1E81B55A8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_cancelButtonPressed:(id)a3
{
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 hk_setHasCompletedThirdPartyAuthSyncWithBooleanValue:1];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HKHealthSyncDisplayController__cancelButtonPressed___block_invoke;
  block[3] = &unk_1E81B55A8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_viewHealthRecordsCellTapped:(id)a3
{
  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = [MEMORY[0x1E695DFF8] _hk_urlForViewHealthRecords];
  [v4 openURL:v3 withOptions:0];
}

- (HKHealthPrivacyServicePromptControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HKHealthPrivacyHostRemoteViewController)objectPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_objectPickerDelegate);

  return WeakRetained;
}

@end