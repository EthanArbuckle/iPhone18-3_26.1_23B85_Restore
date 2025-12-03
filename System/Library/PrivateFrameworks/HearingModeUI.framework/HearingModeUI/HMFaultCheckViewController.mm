@interface HMFaultCheckViewController
- (FaultCheckDelegate)faultCheckDelegate;
- (HMFaultCheckViewController)initWithDeviceAddress:(id)address;
- (HMFaultCheckViewController)initWithDeviceAddress:(id)address withResult:(unint64_t)result;
- (void)retrieveFaultCheckResult;
- (void)setStatus:(unint64_t)status;
- (void)triggerManualFaultCheck;
- (void)updateButtonTray;
- (void)updateContentView;
- (void)updateHeaderView;
- (void)viewDidLoad;
@end

@implementation HMFaultCheckViewController

- (HMFaultCheckViewController)initWithDeviceAddress:(id)address
{
  addressCopy = address;
  v18.receiver = self;
  v18.super_class = HMFaultCheckViewController;
  v6 = [(HMFaultCheckViewController *)&v18 initWithTitle:@"AirPods Check" detailText:0 icon:0 contentLayout:1];
  if (v6)
  {
    NSLog(&cfstr_FaultCheckInit.isa, addressCopy);
    objc_storeStrong(&v6->_addressOrUUID, address);
    address = [(BluetoothDevice *)v6->_device address];
    v8 = [address stringByReplacingOccurrencesOfString:@":" withString:@"-"];

    mEMORY[0x277D0FC08] = [MEMORY[0x277D0FC08] shared];
    connectedHeadphones = [mEMORY[0x277D0FC08] connectedHeadphones];
    v11 = [connectedHeadphones objectForKeyedSubscript:v8];
    headphoneDevice = v6->_headphoneDevice;
    v6->_headphoneDevice = v11;

    v13 = [HearingAidUtils getBluetoothDeviceFromAddressOrUUID:v6->_addressOrUUID];
    device = v6->_device;
    v6->_device = v13;

    v15 = objc_alloc_init(_TtC13HearingModeUI19HMFaultCheckService);
    faultCheckService = v6->_faultCheckService;
    v6->_faultCheckService = v15;

    v6->_result = 2;
  }

  return v6;
}

- (HMFaultCheckViewController)initWithDeviceAddress:(id)address withResult:(unint64_t)result
{
  if (result)
  {
    v5 = "Unknown";
  }

  else
  {
    v5 = "Failed";
  }

  addressCopy = address;
  NSLog(&cfstr_FaultCheckInit_0.isa, addressCopy, v5);
  v7 = [(HMFaultCheckViewController *)self initWithDeviceAddress:addressCopy];

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HMFaultCheckViewController;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  [(HMFaultCheckViewController *)self retrieveFaultCheckResult];
  [(HMFaultCheckViewController *)self updateHeaderView];
  [(HMFaultCheckViewController *)self updateContentView];
  [(HMFaultCheckViewController *)self updateButtonTray];
}

- (void)retrieveFaultCheckResult
{
  sleep(2u);
  faultCheckResult = [(HMFaultCheckService *)self->_faultCheckService faultCheckResult];
  self->_result = faultCheckResult;
  v4 = "Unknown";
  if (faultCheckResult == 1)
  {
    v4 = "Failed";
  }

  if (!faultCheckResult)
  {
    v4 = "Passed";
  }

  NSLog(&cfstr_FaultCheckResu.isa, v4);
  if (self->_result == 2)
  {

    [(HMFaultCheckViewController *)self triggerManualFaultCheck];
  }
}

- (void)triggerManualFaultCheck
{
  NSLog(&cfstr_FaultCheckTrig.isa, a2);
  v3 = objc_alloc_init(MEMORY[0x277D12B98]);
  hearingModeClient = self->_hearingModeClient;
  self->_hearingModeClient = v3;

  objc_initWeak(&location, self);
  v5 = self->_hearingModeClient;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HMFaultCheckViewController_triggerManualFaultCheck__block_invoke;
  v6[3] = &unk_2796F3F40;
  objc_copyWeak(&v7, &location);
  [(HMServiceClient *)v5 activateWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __53__HMFaultCheckViewController_triggerManualFaultCheck__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    NSLog(&cfstr_FaultCheckFail.isa, v3);
    [WeakRetained[156] invalidate];
    v5 = WeakRetained[156];
    WeakRetained[156] = 0;
  }

  else
  {
    NSLog(&cfstr_FaultCheckOkTo.isa);
    v6 = WeakRetained[156];
    v7 = WeakRetained[153];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__HMFaultCheckViewController_triggerManualFaultCheck__block_invoke_2;
    v8[3] = &unk_2796F3D60;
    v8[4] = WeakRetained;
    [v6 triggerOnDemandDiagnosticCheckForDeviceIdentifier:v7 completion:v8];
  }
}

uint64_t __53__HMFaultCheckViewController_triggerManualFaultCheck__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = "Failed";
  if (!a2)
  {
    v3 = "Succeeded";
  }

  NSLog(&cfstr_FaultCheckTrig_0.isa, v3);
  v4 = *(*(a1 + 32) + 1248);

  return [v4 invalidate];
}

- (void)updateHeaderView
{
  v18 = [[_TtC13HearingModeUI32AnyHearingFeatureContentProvider alloc] initWithDevice:self->_headphoneDevice];
  if ([(AnyHearingFeatureContentProvider *)v18 featureFlag])
  {
    deviceMarketingName = [(AnyHearingFeatureContentProvider *)v18 deviceMarketingName];
  }

  else
  {
    deviceMarketingName = @"AirPods Pro";
  }

  result = self->_result;
  switch(result)
  {
    case 2:
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [v12 localizedStringForKey:@"Your %@ Need to Run a Self Check" value:&stru_286444CA0 table:0];

      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v13 localizedStringForKey:@"Before taking a hearing test value:your %@ need to make sure everything is working properly. Please put them back in your case and try again later.\n\nLearn more…" table:{&stru_286444CA0, 0}];

      v11 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v8, deviceMarketingName];
      goto LABEL_11;
    case 1:
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [v10 localizedStringForKey:@"%@ Cannot be Used to Test Your Hearing" value:&stru_286444CA0 table:0];

      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = v7;
      v9 = @"There is an issue that could affect your test results.\n\nLearn more…";
      goto LABEL_9;
    case 0:
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [v5 localizedStringForKey:@"Your %@ is Good To Go" value:&stru_286444CA0 table:0];

      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = v7;
      v9 = &stru_286444CA0;
LABEL_9:
      v11 = [v7 localizedStringForKey:v9 value:&stru_286444CA0 table:0];
LABEL_11:
      v14 = v11;

      goto LABEL_13;
  }

  v6 = 0;
  v14 = 0;
LABEL_13:
  headerView = [(HMFaultCheckViewController *)self headerView];
  v16 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, deviceMarketingName];
  [headerView setTitle:v16];

  headerView2 = [(HMFaultCheckViewController *)self headerView];
  [headerView2 setDetailText:v14];
}

- (void)updateContentView
{
  v35[3] = *MEMORY[0x277D85DE8];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  contentView = [(HMFaultCheckViewController *)self contentView];
  [contentView setBackgroundColor:systemBackgroundColor];

  result = self->_result;
  v6 = @"FaultCheckFailed";
  if (result == 2)
  {
    v6 = @"FaultCheckUnknown";
  }

  if (result)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_286444CA0;
  }

  v8 = MEMORY[0x277D755B8];
  v9 = MEMORY[0x277CCA8D8];
  v10 = v7;
  v11 = [v9 bundleForClass:objc_opt_class()];
  v12 = [v8 imageNamed:v10 inBundle:v11 withConfiguration:0];

  v13 = [[_TtC13HearingModeUI32AnyHearingFeatureContentProvider alloc] initWithDevice:self->_headphoneDevice];
  v14 = v13;
  if (self->_result)
  {
    [(AnyHearingFeatureContentProvider *)v13 faultcheckFailedImage];
  }

  else
  {
    [(AnyHearingFeatureContentProvider *)v13 faultcheckUnknownImage];
  }
  v15 = ;
  v30 = v15;
  if ([(AnyHearingFeatureContentProvider *)v14 featureFlag])
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  v34 = v16;

  v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v34];
  [v17 setContentMode:1];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(HMFaultCheckViewController *)self contentView];
  [contentView2 addSubview:v17];

  v29 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v17 centerXAnchor];
  contentView3 = [(HMFaultCheckViewController *)self contentView];
  centerXAnchor2 = [contentView3 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v35[0] = v20;
  topAnchor = [v17 topAnchor];
  contentView4 = [(HMFaultCheckViewController *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  [topAnchor constraintEqualToAnchor:topAnchor2];
  v24 = v31 = v14;
  v35[1] = v24;
  heightAnchor = [v17 heightAnchor];
  v26 = [heightAnchor constraintEqualToConstant:300.0];
  v35[2] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
  [v29 activateConstraints:v27];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)updateButtonTray
{
  boldButton = [MEMORY[0x277D37618] boldButton];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Done" value:&stru_286444CA0 table:0];

  [boldButton setTitle:v4 forState:0];
  [boldButton addTarget:self action:sel_buttonTapped forControlEvents:64];
  buttonTray = [(HMFaultCheckViewController *)self buttonTray];
  [buttonTray addButton:boldButton];
}

- (void)setStatus:(unint64_t)status
{
  if (status == 1)
  {
    v5 = "Passed";
    goto LABEL_10;
  }

  if (!status)
  {
    v5 = "Failed";
LABEL_10:
    NSLog(&cfstr_FaultCheckSetS.isa, a2, v5);
    faultCheckDelegate = [(HMFaultCheckViewController *)self faultCheckDelegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = status == 1;
      faultCheckDelegate2 = [(HMFaultCheckViewController *)self faultCheckDelegate];
      [faultCheckDelegate2 faultCheckCompleted:self status:v12];
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v6 = "Interrupted";
  if (status == 2)
  {
    v6 = "Cancelled";
  }

  NSLog(&cfstr_FaultCheckSetS.isa, a2, v6);
  if (status == 2)
  {
    faultCheckDelegate3 = [(HMFaultCheckViewController *)self faultCheckDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      faultCheckDelegate2 = [(HMFaultCheckViewController *)self faultCheckDelegate];
      [faultCheckDelegate2 faultCheckCancelled:self];
LABEL_12:
      v13 = @"Fault Check: Delegate Tiggered";
LABEL_14:

      NSLog(&v13->isa);
      return;
    }

LABEL_13:
    faultCheckDelegate2 = [(HMFaultCheckViewController *)self navigationController];
    v14 = [faultCheckDelegate2 popViewControllerAnimated:1];
    v13 = @"Fault Check: Delegate Missing, Self Dismissed";
    goto LABEL_14;
  }
}

- (FaultCheckDelegate)faultCheckDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_faultCheckDelegate);

  return WeakRetained;
}

@end