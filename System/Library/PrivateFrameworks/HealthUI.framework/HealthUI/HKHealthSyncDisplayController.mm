@interface HKHealthSyncDisplayController
- (HKHealthPrivacyHostRemoteViewController)objectPickerDelegate;
- (HKHealthPrivacyServicePromptControllerDelegate)delegate;
- (HKHealthSyncDisplayController)init;
- (HKHealthSyncDisplayController)initWithHealthStore:(id)store source:(id)source;
- (id)_explanationTextForSource:(id)source;
- (id)_headerTitleForSource:(id)source;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_finishWithError:(id)error;
- (void)_nextButtonPressed:(id)pressed;
- (void)_setHeaderIcon;
- (void)_setUpFooterView;
- (void)_viewHealthRecordsCellTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

- (HKHealthSyncDisplayController)initWithHealthStore:(id)store source:(id)source
{
  storeCopy = store;
  sourceCopy = source;
  v9 = [(HKHealthSyncDisplayController *)self _headerTitleForSource:sourceCopy];
  v10 = [(HKHealthSyncDisplayController *)self _explanationTextForSource:sourceCopy];
  v16.receiver = self;
  v16.super_class = HKHealthSyncDisplayController;
  v11 = [(OBTableWelcomeController *)&v16 initWithTitle:v9 detailText:v10 icon:0 adoptTableViewScrollView:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_healthStore, store);
    objc_storeStrong(&v12->_source, source);
    v13 = [objc_alloc(MEMORY[0x1E696BFE0]) initWithHealthStore:v12->_healthStore];
    cloudSyncControl = v12->_cloudSyncControl;
    v12->_cloudSyncControl = v13;
  }

  return v12;
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = HKHealthSyncDisplayController;
  [(OBTableWelcomeController *)&v3 viewWillAppear:appear];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HKHealthSyncDisplayController;
  [(OBTableWelcomeController *)&v7 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(HKHealthSyncDisplayController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  navigationController = [(HKHealthSyncDisplayController *)self navigationController];
  [navigationController setModalInPresentation:1];

  headerView = [(HKHealthSyncDisplayController *)self headerView];
  [headerView setAllowFullWidthIcon:1];

  [(HKHealthSyncDisplayController *)self _setHeaderIcon];
  [(HKHealthSyncDisplayController *)self _setUpFooterView];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = HKHealthSyncDisplayController;
  [(OBBaseWelcomeController *)&v3 viewDidAppear:appear];
}

- (void)_setUpFooterView
{
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"HEALTHKIT_AUTHORIZATION_SYNC_ENABLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [boldButton setTitle:v4 forState:0];

  [boldButton addTarget:self action:sel__nextButtonPressed_ forControlEvents:64];
  buttonTray = [(HKHealthSyncDisplayController *)self buttonTray];
  [buttonTray addButton:boldButton];

  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  [linkButton addTarget:self action:sel__cancelButtonPressed_ forControlEvents:64];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"HEALTHKIT_AUTHORIZATION_SYNC_DISABLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [linkButton setTitle:v8 forState:0];

  buttonTray2 = [(HKHealthSyncDisplayController *)self buttonTray];
  [buttonTray2 addButton:linkButton];
}

- (id)_explanationTextForSource:(id)source
{
  v3 = MEMORY[0x1E696AAE8];
  sourceCopy = source;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"HEALTHKIT_AUTHORIZATION_SYNC_DETAIL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v7 = MEMORY[0x1E696AEC0];
  name = [sourceCopy name];

  v9 = [v7 stringWithFormat:v6, name];

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
  layer = [v7 layer];
  [layer setCornerRadius:40.0];

  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  userInterfaceStyle = [currentTraitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGray6Color];
  }
  v12 = ;
  [v7 setBackgroundColor:v12];

  headerView = [(HKHealthSyncDisplayController *)self headerView];
  customIconContainerView = [headerView customIconContainerView];
  [customIconContainerView addSubview:v7];

  v33 = MEMORY[0x1E696ACD8];
  centerXAnchor = [v7 centerXAnchor];
  headerView2 = [(HKHealthSyncDisplayController *)self headerView];
  customIconContainerView2 = [headerView2 customIconContainerView];
  centerXAnchor2 = [customIconContainerView2 centerXAnchor];
  v35 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v44[0] = v35;
  centerYAnchor = [v7 centerYAnchor];
  headerView3 = [(HKHealthSyncDisplayController *)self headerView];
  customIconContainerView3 = [headerView3 customIconContainerView];
  centerYAnchor2 = [customIconContainerView3 centerYAnchor];
  v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v44[1] = v17;
  heightAnchor = [v7 heightAnchor];
  v19 = [heightAnchor constraintEqualToConstant:80.0];
  v44[2] = v19;
  widthAnchor = [v7 widthAnchor];
  heightAnchor2 = [v7 heightAnchor];
  v22 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
  v44[3] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
  [v33 activateConstraints:v23];

  v24 = MEMORY[0x1E696ACD8];
  centerXAnchor3 = [v40 centerXAnchor];
  centerXAnchor4 = [v7 centerXAnchor];
  v27 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v43[0] = v27;
  centerYAnchor3 = [v40 centerYAnchor];
  centerYAnchor4 = [v7 centerYAnchor];
  v30 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v43[1] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  [v24 activateConstraints:v31];
}

- (id)_headerTitleForSource:(id)source
{
  v3 = MEMORY[0x1E696AAE8];
  sourceCopy = source;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"HEALTHKIT_AUTHORIZATION_SYNC_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v7 = MEMORY[0x1E696AEC0];
  name = [sourceCopy name];

  v9 = [v7 stringWithFormat:v6, name];

  return v9;
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

  delegate = [(HKHealthSyncDisplayController *)self delegate];

  if (delegate)
  {
    delegate2 = [(HKHealthSyncDisplayController *)self delegate];
    [delegate2 promptControllerDidFinish:self error:errorCopy];
  }

  else
  {
    delegate2 = [(HKHealthSyncDisplayController *)self objectPickerDelegate];
    [delegate2 didFinishWithError:errorCopy];
  }
}

- (void)_nextButtonPressed:(id)pressed
{
  internalAppleAccountSettingsURLString = [MEMORY[0x1E69A2D68] internalAppleAccountSettingsURLString];
  v5 = [internalAppleAccountSettingsURLString stringByAppendingString:@"/ICLOUD_SERVICE/com.apple.Dataclass.Health"];

  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v7 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  [defaultWorkspace openSensitiveURL:v7 withOptions:0];

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults hk_setHasCompletedThirdPartyAuthSyncWithBooleanValue:1];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HKHealthSyncDisplayController__nextButtonPressed___block_invoke;
  block[3] = &unk_1E81B55A8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_cancelButtonPressed:(id)pressed
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults hk_setHasCompletedThirdPartyAuthSyncWithBooleanValue:1];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HKHealthSyncDisplayController__cancelButtonPressed___block_invoke;
  block[3] = &unk_1E81B55A8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_viewHealthRecordsCellTapped:(id)tapped
{
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  _hk_urlForViewHealthRecords = [MEMORY[0x1E695DFF8] _hk_urlForViewHealthRecords];
  [defaultWorkspace openURL:_hk_urlForViewHealthRecords withOptions:0];
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