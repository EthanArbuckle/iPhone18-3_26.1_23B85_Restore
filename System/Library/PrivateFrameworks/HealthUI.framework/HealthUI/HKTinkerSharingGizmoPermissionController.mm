@interface HKTinkerSharingGizmoPermissionController
- (HKTinkerSharingGizmoPermissionController)initWithStyle:(int64_t)style delegate:(id)delegate;
- (id)_localizedFullNameForFirstName:(id)name lastName:(id)lastName;
- (id)detailString;
- (id)tapToRadarMetadata;
- (id)titleString;
- (void)optInDidFailWithError:(id)error;
- (void)optInDidSucceed;
- (void)sendOptInRequest;
- (void)viewDidLoad;
@end

@implementation HKTinkerSharingGizmoPermissionController

- (HKTinkerSharingGizmoPermissionController)initWithStyle:(int64_t)style delegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = HKTinkerSharingGizmoPermissionController;
  v7 = [(BPSWelcomeOptinViewController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_layoutStyle = style;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    [(BPSWelcomeOptinViewController *)v8 setStyle:2];
  }

  return v8;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HKTinkerSharingGizmoPermissionController;
  [(BPSWelcomeOptinViewController *)&v7 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [v3 setHidesWhenStopped:1];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v3];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];

  [v3 startAnimating];
  if (self->_layoutStyle == 2)
  {
    navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem2 setHidesBackButton:1];

    [(HKTinkerSharingGizmoPermissionController *)self setModalInPresentation:1];
    [(HKTinkerSharingGizmoPermissionController *)self sendOptInRequest];
  }
}

- (void)sendOptInRequest
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x1E696C3E0]) initWithHealthStore:v3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  tinkerMember = [WeakRetained tinkerMember];
  if (tinkerMember)
  {
    v7 = tinkerMember;
    v8 = objc_loadWeakRetained(&self->_delegate);
    guardianMember = [v8 guardianMember];

    if (guardianMember)
    {
      v25 = v4;
      _HKInitializeLogging();
      v10 = *MEMORY[0x1E696B9A0];
      if (os_log_type_enabled(*MEMORY[0x1E696B9A0], OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = objc_loadWeakRetained(&self->_delegate);
        tinkerMember2 = [v12 tinkerMember];
        *buf = 138543362;
        v28 = tinkerMember2;
        _os_log_impl(&dword_1C3942000, v11, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Setting up Tinker sharing opt-in request for %{public}@ (#t0)", buf, 0xCu);
      }

      v14 = objc_loadWeakRetained(&self->_delegate);
      guardianMember2 = [v14 guardianMember];
      firstName = [guardianMember2 firstName];
      v17 = objc_loadWeakRetained(&self->_delegate);
      guardianMember3 = [v17 guardianMember];
      lastName = [guardianMember3 lastName];
      v20 = [(HKTinkerSharingGizmoPermissionController *)self _localizedFullNameForFirstName:firstName lastName:lastName];

      v21 = objc_loadWeakRetained(&self->_delegate);
      tinkerDevice = [v21 tinkerDevice];
      pairingID = [tinkerDevice pairingID];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __60__HKTinkerSharingGizmoPermissionController_sendOptInRequest__block_invoke;
      v26[3] = &unk_1E81B59C0;
      v26[4] = self;
      v4 = v25;
      [v25 requestTinkerSharingOptInWithGuardianDisplayName:v20 NRDeviceUUID:pairingID completion:v26];

      goto LABEL_10;
    }
  }

  else
  {
  }

  _HKInitializeLogging();
  v24 = *MEMORY[0x1E696B9A0];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A0], OS_LOG_TYPE_ERROR))
  {
    [(HKTinkerSharingGizmoPermissionController *)v24 sendOptInRequest];
  }

  v20 = [MEMORY[0x1E696ABC0] hk_error:100 format:@"Family member not found for this pairing"];
  [(HKTinkerSharingGizmoPermissionController *)self optInDidFailWithError:v20];
LABEL_10:
}

void __60__HKTinkerSharingGizmoPermissionController_sendOptInRequest__block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x1E696B9A0];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_1C3942000, v6, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Done with Tinker Opt In request, got Error: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__HKTinkerSharingGizmoPermissionController_sendOptInRequest__block_invoke_319;
  block[3] = &unk_1E81B5CA0;
  v10 = a2;
  block[4] = *(a1 + 32);
  v9 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __60__HKTinkerSharingGizmoPermissionController_sendOptInRequest__block_invoke_319(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    return [v3 optInDidSucceed];
  }

  else
  {
    return [v3 optInDidFailWithError:*(a1 + 40)];
  }
}

- (void)optInDidSucceed
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B9A0];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A0], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1C3942000, v3, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Tinker user opt-in request accepted, will begin sharing setup", v9, 2u);
  }

  v4 = [HKTinkerSharingSyncSetupController alloc];
  layoutStyle = self->_layoutStyle;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [(HKTinkerSharingSyncSetupController *)v4 initWithStyle:layoutStyle delegate:WeakRetained];

  navigationController = [(HKTinkerSharingGizmoPermissionController *)self navigationController];
  [navigationController pushViewController:v7 animated:1];
}

- (void)optInDidFailWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sharingSetupDidFailWithError:errorCopy];
}

- (id)titleString
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"HEALTH_TINKER_TITLE_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  tinkerMember = [WeakRetained tinkerMember];
  firstName = [tinkerMember firstName];
  v9 = [v3 stringWithFormat:v5, firstName];

  return v9;
}

- (id)detailString
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  tinkerMember = [WeakRetained tinkerMember];
  firstName = [tinkerMember firstName];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"HEALTH_TINKER_WAIT_FOR_RESPONSE_%@_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
  v8 = [v5 stringWithFormat:v7, firstName, firstName];

  return v8;
}

- (id)tapToRadarMetadata
{
  v2 = [objc_alloc(MEMORY[0x1E698F578]) initWithComponent:2];

  return v2;
}

- (id)_localizedFullNameForFirstName:(id)name lastName:(id)lastName
{
  v5 = MEMORY[0x1E696ADF0];
  lastNameCopy = lastName;
  nameCopy = name;
  v8 = objc_alloc_init(v5);
  [v8 setGivenName:nameCopy];

  [v8 setFamilyName:lastNameCopy];
  v9 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v8 style:2 options:0];

  return v9;
}

@end