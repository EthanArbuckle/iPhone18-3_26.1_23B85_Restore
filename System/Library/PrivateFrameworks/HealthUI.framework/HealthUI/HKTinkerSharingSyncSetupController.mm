@interface HKTinkerSharingSyncSetupController
- (HKTinkerSharingSyncSetupController)initWithStyle:(int64_t)style delegate:(id)delegate;
- (id)_tinkerUserDateOfBirthComponents;
- (id)detailString;
- (id)tapToRadarMetadata;
- (id)titleString;
- (void)setupDidFailWithError:(id)error;
- (void)setupDidSucceed;
- (void)setupSharing;
- (void)viewDidLoad;
@end

@implementation HKTinkerSharingSyncSetupController

- (HKTinkerSharingSyncSetupController)initWithStyle:(int64_t)style delegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = HKTinkerSharingSyncSetupController;
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
  v7.super_class = HKTinkerSharingSyncSetupController;
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

    [(HKTinkerSharingSyncSetupController *)self setupSharing];
    [(HKTinkerSharingSyncSetupController *)self setModalInPresentation:1];
  }
}

- (void)setupSharing
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v5 = objc_opt_class();
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(a3);
  tinkerMember = [WeakRetained tinkerMember];
  v9 = objc_loadWeakRetained(a3);
  guardianMember = [v9 guardianMember];
  v11 = 138543874;
  v12 = v5;
  v13 = 2112;
  v14 = tinkerMember;
  v15 = 2112;
  v16 = guardianMember;
  _os_log_error_impl(&dword_1C3942000, selfCopy, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Family member not found for this pairing, bailing. tinkerMember: %@, guardianMember: %@ (#t0)", &v11, 0x20u);
}

void __50__HKTinkerSharingSyncSetupController_setupSharing__block_invoke(void *a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x1E696B9A0];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543618;
    v20 = objc_opt_class();
    v21 = 2112;
    v22 = v5;
    v8 = v20;
    _os_log_impl(&dword_1C3942000, v7, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Done with Tinker Health Sync Setup, got Error: %@", buf, 0x16u);
  }

  if (a1[6] == 2 && a2 != 0)
  {
    v10 = a1[5];
    WeakRetained = objc_loadWeakRetained((a1[4] + 1320));
    v12 = [WeakRetained tinkerDevice];
    v13 = [v12 pairingID];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__HKTinkerSharingSyncSetupController_setupSharing__block_invoke_320;
    v18[3] = &unk_1E81B59C0;
    v18[4] = a1[4];
    [v10 performEndToEndCloudSyncWithNRDeviceUUID:v13 syncParticipantFirst:0 completion:v18];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__HKTinkerSharingSyncSetupController_setupSharing__block_invoke_328;
  v15[3] = &unk_1E81B5CA0;
  v17 = a2;
  v15[4] = a1[4];
  v16 = v5;
  v14 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

void __50__HKTinkerSharingSyncSetupController_setupSharing__block_invoke_320(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B9A0];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = @"NO";
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    if (a2)
    {
      v8 = @"YES";
    }

    v13 = v8;
    v14 = 2114;
    v15 = v4;
    v9 = v7;
    _os_log_impl(&dword_1C3942000, v6, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Done with Tinker end to end Cloud Sync, success: %{public}@, error: %{public}@", &v10, 0x20u);
  }
}

uint64_t __50__HKTinkerSharingSyncSetupController_setupSharing__block_invoke_328(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    return [v3 setupDidSucceed];
  }

  else
  {
    return [v3 setupDidFailWithError:*(a1 + 40)];
  }
}

- (void)setupDidSucceed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sharingSetupDidSucceed];
}

- (void)setupDidFailWithError:(id)error
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
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"TINKER_HEALTH_SYNC_SETUP_HOLD_DESCRIPTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
  v5 = [v2 stringWithFormat:v4];

  return v5;
}

- (id)_tinkerUserDateOfBirthComponents
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  tinkerMember = [WeakRetained tinkerMember];
  dictionary = [tinkerMember dictionary];
  v5 = [dictionary objectForKey:@"member-date-of-birth"];

  if (v5)
  {
    [v5 doubleValue];
    v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v6 / 1000.0];
    hk_gregorianCalendarWithUTCTimeZone = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithUTCTimeZone];
    v9 = [hk_gregorianCalendarWithUTCTimeZone hk_dateOfBirthDateComponentsWithDate:v7];
    v10 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    [v9 setCalendar:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tapToRadarMetadata
{
  v2 = [objc_alloc(MEMORY[0x1E698F578]) initWithComponent:2];

  return v2;
}

@end