@interface HKTinkerSharingOptInController
- (HKTinkerSharingOptInController)initWithStyle:(int64_t)a3 delegate:(id)a4;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)tapToRadarMetadata;
- (id)termsOfAddress;
- (id)titleString;
- (void)_configureLayoutStyle;
- (void)_presentNetworkAccessConfirmationWithHelper:(id)a3;
- (void)applyConfirmedOptin:(BOOL)a3;
- (void)suggestedButtonPressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation HKTinkerSharingOptInController

- (HKTinkerSharingOptInController)initWithStyle:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HKTinkerSharingOptInController;
  v7 = [(BPSWelcomeOptinViewController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_layoutStyle = a3;
    objc_storeWeak(&v7->_delegate, v6);
    [(HKTinkerSharingOptInController *)v8 _configureLayoutStyle];
  }

  return v8;
}

- (void)_configureLayoutStyle
{
  layoutStyle = self->_layoutStyle;
  if (layoutStyle == 1)
  {
    v3 = 10;
  }

  else
  {
    v3 = 2 * (layoutStyle == 2);
  }

  [(BPSWelcomeOptinViewController *)self setStyle:v3];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HKTinkerSharingOptInController;
  [(BPSWelcomeOptinViewController *)&v5 viewDidLoad];
  if (self->_layoutStyle == 2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_userDidRequestCancel];
    v4 = [(OBBaseWelcomeController *)self navigationItem];
    [v4 setLeftBarButtonItem:v3];
  }
}

- (id)titleString
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"HEALTH_TINKER_TITLE_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained tinkerMember];
  v8 = [v7 firstName];
  v9 = [v3 stringWithFormat:v5, v8];

  return v9;
}

- (id)detailString
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"HEALTH_TINKER_DETAIL_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained tinkerMember];
  v8 = [v7 firstName];
  v9 = [v3 stringWithFormat:v5, v8];

  return v9;
}

- (id)termsOfAddress
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E695C1C0];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained tinkerMember];
  v6 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v7 = [v5 contactWithKeys:v3 contactStore:v6];

  if (v7)
  {
    v8 = [v7 termsOfAddress];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (void)suggestedButtonPressed:(id)a3
{
  v4 = objc_alloc_init(HKTinkerSharingHelper);
  if ([(HKTinkerSharingHelper *)v4 isChinaSKUDevice]&& ![(HKTinkerSharingHelper *)v4 networkAccessEnabledForHealth])
  {
    [(HKTinkerSharingOptInController *)self _presentNetworkAccessConfirmationWithHelper:v4];
  }

  else
  {
    [(HKTinkerSharingOptInController *)self applyConfirmedOptin:1];
  }
}

- (void)applyConfirmedOptin:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v4 = *MEMORY[0x1E696B9A0];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v12 = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1C3942000, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ User opted-in", &v12, 0xCu);
  }

  if (self->_layoutStyle == 2)
  {
    v7 = [HKTinkerSharingGizmoPermissionController alloc];
    layoutStyle = self->_layoutStyle;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = [(HKTinkerSharingGizmoPermissionController *)v7 initWithStyle:layoutStyle delegate:WeakRetained];

    v11 = [(HKTinkerSharingOptInController *)self navigationController];
    [v11 pushViewController:v10 animated:1];
  }
}

- (id)suggestedButtonTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"HEALTH_TINKER_REQUEST_SHARING" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"HEALTH_TINKER_SKIP_SHARING" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];

  return v3;
}

- (id)tapToRadarMetadata
{
  v2 = [objc_alloc(MEMORY[0x1E698F578]) initWithComponent:2];

  return v2;
}

- (void)_presentNetworkAccessConfirmationWithHelper:(id)a3
{
  v35[1] = *MEMORY[0x1E69E9840];
  v27 = a3;
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v28 = [v4 localizedStringForKey:@"ENABLE_NETWORK_ACCESS_FOR_HEALTH_APP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];

  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v26 = [v5 localizedAttributedStringForKey:@"ENABLE_NETWORK_ACCESS_FOR_USER_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];

  v6 = objc_alloc(MEMORY[0x1E696AAB0]);
  v34 = *MEMORY[0x1E696A498];
  v7 = [(HKTinkerSharingOptInController *)self termsOfAddress];
  v33 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v35[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [WeakRetained tinkerMember];
  v12 = [v11 firstName];
  v25 = [v6 initWithFormat:v26 options:0 locale:0 context:v9, v12];

  v24 = [v25 string];
  v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v28 message:v24 preferredStyle:1];
  v14 = MEMORY[0x1E69DC648];
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:@"DONT_ENABLE_NETWORK_ACCESS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __78__HKTinkerSharingOptInController__presentNetworkAccessConfirmationWithHelper___block_invoke;
  v32[3] = &unk_1E81B6048;
  v32[4] = self;
  v17 = [v14 actionWithTitle:v16 style:1 handler:v32];
  [v13 addAction:v17];

  v18 = MEMORY[0x1E69DC648];
  v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v20 = [v19 localizedStringForKey:@"ENABLE_NETWORK_ACCESS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __78__HKTinkerSharingOptInController__presentNetworkAccessConfirmationWithHelper___block_invoke_2;
  v29[3] = &unk_1E81B6F00;
  v30 = v27;
  v31 = self;
  v21 = v27;
  v22 = [v18 actionWithTitle:v20 style:0 handler:v29];
  [v13 addAction:v22];

  v23 = [(HKTinkerSharingOptInController *)self navigationController];
  [v23 presentViewController:v13 animated:1 completion:0];
}

uint64_t __78__HKTinkerSharingOptInController__presentNetworkAccessConfirmationWithHelper___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNetworkAccessEnabledForHealth:1];
  v2 = *(a1 + 40);

  return [v2 applyConfirmedOptin:1];
}

@end