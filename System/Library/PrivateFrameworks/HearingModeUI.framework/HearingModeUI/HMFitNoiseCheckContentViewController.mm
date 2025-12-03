@interface HMFitNoiseCheckContentViewController
+ (id)fitNoiseCheckTopTestingView;
- (BOOL)_forceNoiseCheckNudging;
- (BOOL)audioRouteActive;
- (BOOL)budsInEar;
- (BOOL)callActive;
- (BOOL)isDebugModeEnabled;
- (BOOL)isForcedIgnoreFitCheckResultFromBuds;
- (BOOL)ringtoneActive;
- (FitNoiseCheckDelegate)fitNoiseCheckDelegate;
- (HMFitNoiseCheckContentViewController)initWithDeviceAddress:(id)address;
- (float)getTargetVolume;
- (id)getResultString:(unint64_t)string;
- (id)getStepString:(unint64_t)string;
- (unint64_t)categorizeFitCheckResultBud:(float)bud;
- (unint64_t)categorizeFitCheckResultWithLeftBud:(float)bud rightBud:(float)rightBud;
- (void)analyzeResult;
- (void)audioRouteChangedHandler:(id)handler;
- (void)callCancelledHandler;
- (void)callCompletionHandlerWithStaus:(unint64_t)staus;
- (void)clearDebugView;
- (void)deviceDisconnectionHandler:(id)handler;
- (void)fitCheckStopped;
- (void)generateFitCheckResult;
- (void)generateNoiseCheckResult:(int64_t)result;
- (void)inEarStatusChangedHandler:(id)handler;
- (void)interruptionHandler:(id)handler;
- (void)mainButtonTapped;
- (void)moveToStep:(unint64_t)step;
- (void)resetVolume;
- (void)sealValueChangedHandler:(id)handler;
- (void)setupButtonTray;
- (void)setupConstraints;
- (void)setupContentView;
- (void)setupDebugView;
- (void)setupNotifications;
- (void)setupPlayer;
- (void)showAirpodsFitSuggestionsControllerWithHeadphoneDevice:(id)device;
- (void)showDebugResult;
- (void)showImproveDisclosure;
- (void)startFitCheck;
- (void)startNoiseCheck;
- (void)startNoiseCheckNudging;
- (void)startPreCheck;
- (void)startVolumeObserver;
- (void)stopFitNoiseCheck;
- (void)stopNoiseCheck;
- (void)stopVolumeObserver;
- (void)udpateFitCheckThresholds;
- (void)updateFitCheckResult:(id)result;
- (void)updateForcedCheckResult;
- (void)updateHeaderButton:(id)button;
- (void)updateUIForFitCheckReady;
- (void)updateUIForFitCheckRetry;
- (void)updateUIForFitCheckTutorial;
- (void)updateUIForNoiseCheckNudgingStart;
- (void)updateUIForNoiseCheckNudgingStop;
- (void)updateUIForOngoingFitCheck;
- (void)updateUIForOngoingNoiseCheck;
- (void)updateUIForResultFail;
- (void)updateUIForResultPass;
- (void)updateVolume;
- (void)viewDidLoad;
@end

@implementation HMFitNoiseCheckContentViewController

- (HMFitNoiseCheckContentViewController)initWithDeviceAddress:(id)address
{
  addressCopy = address;
  address = [(BluetoothDevice *)self->_device address];
  v6 = [address stringByReplacingOccurrencesOfString:@":" withString:@"-"];

  v49 = [HearingAidUtils getBluetoothDeviceFromAddressOrUUID:addressCopy];
  mEMORY[0x277D0FC08] = [MEMORY[0x277D0FC08] shared];
  connectedHeadphones = [mEMORY[0x277D0FC08] connectedHeadphones];
  v47 = v6;
  firstObject = [connectedHeadphones objectForKeyedSubscript:v6];

  if (!firstObject)
  {
    mEMORY[0x277D0FC08]2 = [MEMORY[0x277D0FC08] shared];
    connectedHeadphones2 = [mEMORY[0x277D0FC08]2 connectedHeadphones];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __62__HMFitNoiseCheckContentViewController_initWithDeviceAddress___block_invoke;
    v53[3] = &unk_2796F3CE8;
    v54 = addressCopy;
    v12 = [connectedHeadphones2 bs_filter:v53];
    allValues = [v12 allValues];
    firstObject = [allValues firstObject];
  }

  v14 = [[_TtC13HearingModeUI32AnyHearingFeatureContentProvider alloc] initWithDevice:firstObject];
  if ([(AnyHearingFeatureContentProvider *)v14 featureFlag])
  {
    deviceMarketingName = [(AnyHearingFeatureContentProvider *)v14 deviceMarketingName];
  }

  else
  {
    deviceMarketingName = @"AirPods Pro";
  }

  v16 = v49;
  v48 = addressCopy;
  if ([(AnyHearingFeatureContentProvider *)v14 featureFlag])
  {
    devicePlatformName = [(AnyHearingFeatureContentProvider *)v14 devicePlatformName];
  }

  else
  {
    devicePlatformName = @"AirPods";
  }

  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"Checking fit and noise." value:&stru_286444CA0 table:0];

  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"Do not remove %@." value:&stru_286444CA0 table:0];

  v22 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v21, devicePlatformName];

  v52.receiver = self;
  v52.super_class = HMFitNoiseCheckContentViewController;
  v46 = v19;
  v23 = [(HMFitNoiseCheckContentViewController *)&v52 initWithTitle:v19 detailText:v22 icon:0 contentLayout:1];
  v24 = v23;
  v25 = deviceMarketingName;
  if (v23)
  {
    objc_storeStrong(&v23->_addressOrUUID, address);
    objc_storeStrong(&v24->_device, v49);
    objc_storeStrong(&v24->_headphoneDevice, firstObject);
    objc_storeStrong(&v24->_marketingName, deviceMarketingName);
    objc_storeStrong(&v24->_platformName, devicePlatformName);
    v24->_currentStep = 0;
    v24->_fitCheckResultOverall = 0;
    v24->_fitCheckResultLeft = 0;
    v24->_fitCheckResultRight = 0;
    v24->_noiseCheckResult = 0;
    v24->_fitNoiseCheckResult = 0;
    [(HMFitNoiseCheckContentViewController *)v24 udpateFitCheckThresholds];
    v24->_fitCheckTimerOngoing = 0;
    systemVolumeObserver = v24->_systemVolumeObserver;
    v24->_systemVolumeObserver = 0;

    v27 = objc_alloc_init(_TtC13HearingModeUI19HMNoiseCheckService);
    noiseCheckService = v24->_noiseCheckService;
    v24->_noiseCheckService = v27;

    v24->_fitNoiseCheckOngoing = 0;
    v29 = [[_TtC13HearingModeUI22HMFitNoiseCheckTopView alloc] initWithService:v24->_noiseCheckService hpDevice:firstObject];
    fitNoiseCheckTopView = v24->_fitNoiseCheckTopView;
    v24->_fitNoiseCheckTopView = v29;

    v31 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__HMFitNoiseCheckContentViewController_initWithDeviceAddress___block_invoke_2;
    block[3] = &unk_2796F3DD8;
    v32 = v24;
    v51 = v32;
    dispatch_async(v31, block);

    [(HMFitNoiseCheckContentViewController *)v32 setupNotifications];
    v32->_debugMode = [(HMFitNoiseCheckContentViewController *)v32 isDebugModeEnabled];
    v32->_fitCheckFailureCount = 0;
    v33 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v32 action:sel_cancelFitNoiseCheck];
    cancelButton = v32->_cancelButton;
    v32->_cancelButton = v33;

    v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
    detailDictionary = v32->_detailDictionary;
    v32->_detailDictionary = v35;

    accessoryButton = [MEMORY[0x277D37638] accessoryButton];
    headerAccessorybutton = v32->_headerAccessorybutton;
    v32->_headerAccessorybutton = accessoryButton;

    [(OBHeaderAccessoryButton *)v32->_headerAccessorybutton addTarget:v32 action:sel_showImproveDisclosure forControlEvents:64];
    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v40 = [v39 localizedStringForKey:&stru_286444CA0 value:&stru_286444CA0 table:0];
    [(HMFitNoiseCheckContentViewController *)v32 updateHeaderButton:v40];

    headerView = [(HMFitNoiseCheckContentViewController *)v32 headerView];
    v16 = v49;
    [headerView addAccessoryButton:v32->_headerAccessorybutton];

    v42 = objc_alloc_init(MEMORY[0x277CBAF70]);
    callObserver = v32->_callObserver;
    v32->_callObserver = v42;
  }

  return v24;
}

uint64_t __62__HMFitNoiseCheckContentViewController_initWithDeviceAddress___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 cbDevice];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HMFitNoiseCheckContentViewController;
  [(HMHearingTitle2BaseWelcomeController *)&v5 viewDidLoad];
  [(HMFitNoiseCheckContentViewController *)self setupContentView];
  [(HMFitNoiseCheckContentViewController *)self setupConstraints];
  [(HMFitNoiseCheckContentViewController *)self setupButtonTray];
  [(HMFitNoiseCheckContentViewController *)self setupDebugView];
  [(HMFitNoiseCheckContentViewController *)self moveToStep:0];
  cancelButton = self->_cancelButton;
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:cancelButton];
}

- (void)setupNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_audioRouteChangedHandler_ name:*MEMORY[0x277CB8210] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_sealValueChangedHandler_ name:*MEMORY[0x277CF3158] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_inEarStatusChangedHandler_ name:*MEMORY[0x277CF3150] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_deviceDisconnectionHandler_ name:*MEMORY[0x277CF31A0] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel_interruptionHandler_ name:*MEMORY[0x277D76660] object:0];

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = *MEMORY[0x277CB8068];
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [defaultCenter6 addObserver:self selector:sel_interruptionHandler_ name:v8 object:mEMORY[0x277CB83F8]];
}

- (void)setupPlayer
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"E+D-US_ML" ofType:@"wav"];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  v19 = 0;
  [mEMORY[0x277CB83F8] setActive:1 error:&v19];
  v7 = v19;

  if (v7)
  {
    NSLog(&cfstr_FitNoiseCheckS.isa, v7);
  }

  else
  {
    mEMORY[0x277CB83F8]2 = [MEMORY[0x277CB83F8] sharedInstance];
    v9 = *MEMORY[0x277CB8030];
    v18 = 0;
    [mEMORY[0x277CB83F8]2 setCategory:v9 error:&v18];
    v7 = v18;

    if (v7)
    {
      NSLog(&cfstr_FitNoiseCheckS_0.isa, v7);
    }

    else
    {
      mEMORY[0x277CB83F8]3 = [MEMORY[0x277CB83F8] sharedInstance];
      v11 = *MEMORY[0x277CB80C0];
      v17 = 0;
      [mEMORY[0x277CB83F8]3 setMode:v11 error:&v17];
      v12 = v17;

      if (v12)
      {
        NSLog(&cfstr_FitNoiseCheckS_1.isa, v12);
      }

      v16 = v12;
      v13 = [objc_alloc(MEMORY[0x277CB83D0]) initWithContentsOfURL:v5 error:&v16];
      v7 = v16;

      player = self->_player;
      self->_player = v13;

      [(AVAudioPlayer *)self->_player setNumberOfLoops:0];
      [(AVAudioPlayer *)self->_player prepareToPlay];
      NSLog(&cfstr_FitNoiseCheckS_2.isa, v15);
    }
  }
}

- (void)setupContentView
{
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  contentView = [(HMFitNoiseCheckContentViewController *)self contentView];
  [contentView setBackgroundColor:systemBackgroundColor];

  contentView2 = [(HMFitNoiseCheckContentViewController *)self contentView];
  [contentView2 addSubview:self->_fitNoiseCheckTopView];
}

- (void)setupConstraints
{
  v26[5] = *MEMORY[0x277D85DE8];
  v17 = MEMORY[0x277CCAAD0];
  heightAnchor = [(HMFitNoiseCheckTopView *)self->_fitNoiseCheckTopView heightAnchor];
  contentView = [(HMFitNoiseCheckContentViewController *)self contentView];
  heightAnchor2 = [contentView heightAnchor];
  v22 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
  v26[0] = v22;
  leadingAnchor = [(HMFitNoiseCheckTopView *)self->_fitNoiseCheckTopView leadingAnchor];
  contentView2 = [(HMFitNoiseCheckContentViewController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[1] = v18;
  trailingAnchor = [(HMFitNoiseCheckTopView *)self->_fitNoiseCheckTopView trailingAnchor];
  contentView3 = [(HMFitNoiseCheckContentViewController *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[2] = v13;
  centerXAnchor = [(HMFitNoiseCheckTopView *)self->_fitNoiseCheckTopView centerXAnchor];
  contentView4 = [(HMFitNoiseCheckContentViewController *)self contentView];
  centerXAnchor2 = [contentView4 centerXAnchor];
  v5 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v26[3] = v5;
  centerYAnchor = [(HMFitNoiseCheckTopView *)self->_fitNoiseCheckTopView centerYAnchor];
  contentView5 = [(HMFitNoiseCheckContentViewController *)self contentView];
  centerYAnchor2 = [contentView5 centerYAnchor];
  v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v26[4] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:5];
  [v17 activateConstraints:v10];

  [(HMFitNoiseCheckTopView *)self->_fitNoiseCheckTopView layoutIfNeeded];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setupButtonTray
{
  boldButton = [MEMORY[0x277D37618] boldButton];
  mainButton = self->_mainButton;
  self->_mainButton = boldButton;

  v5 = self->_mainButton;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Start" value:&stru_286444CA0 table:0];
  [(OBTrayButton *)v5 setTitle:v7 forState:0];

  [(OBTrayButton *)self->_mainButton addTarget:self action:sel_mainButtonTapped forControlEvents:64];
  buttonTray = [(HMFitNoiseCheckContentViewController *)self buttonTray];
  [buttonTray addButton:self->_mainButton];
}

- (void)mainButtonTapped
{
  v3 = [(HMFitNoiseCheckContentViewController *)self getStepString:self->_currentStep];
  NSLog(&cfstr_FitNoiseCheckM.isa, v3);

  currentStep = self->_currentStep;
  if (currentStep > 8)
  {
    if ((currentStep - 11) < 2)
    {

      [(HMFitNoiseCheckContentViewController *)self callCancelledHandler];
    }

    else
    {
      if (currentStep == 9)
      {
        selfCopy2 = self;
        v6 = 1;
      }

      else
      {
        if (currentStep != 10)
        {
          return;
        }

        selfCopy2 = self;
        v6 = 0;
      }

      [(HMFitNoiseCheckContentViewController *)selfCopy2 callCompletionHandlerWithStaus:v6];
    }
  }

  else
  {
    if ((currentStep - 5) < 2)
    {
LABEL_5:

      [(HMFitNoiseCheckContentViewController *)self moveToStep:1];
      return;
    }

    if (currentStep)
    {
      if (currentStep != 8)
      {
        return;
      }

      goto LABEL_5;
    }

    [(HMFitNoiseCheckContentViewController *)self updateForcedCheckResult];
  }
}

- (void)moveToStep:(unint64_t)step
{
  v5 = [(HMFitNoiseCheckContentViewController *)self getStepString:self->_currentStep];
  v6 = [(HMFitNoiseCheckContentViewController *)self getStepString:step];
  NSLog(&cfstr_FitNoiseCheckM_0.isa, v5, v6);

  self->_currentStep = step;
  if (step <= 4)
  {
    if (step <= 1)
    {
      if (step)
      {
        if (step == 1)
        {
          [(HMFitNoiseCheckContentViewController *)self updateUIForOngoingFitCheck];

          [(HMFitNoiseCheckContentViewController *)self startPreCheck];
        }
      }

      else
      {

        [(HMFitNoiseCheckContentViewController *)self updateUIForFitCheckReady];
      }
    }

    else if (step == 2)
    {
      [(HMFitNoiseCheckContentViewController *)self updateUIForOngoingFitCheck];

      [(HMFitNoiseCheckContentViewController *)self startFitCheck];
    }

    else if (step == 3)
    {
      [(HMFitNoiseCheckContentViewController *)self updateUIForOngoingNoiseCheck];

      [(HMFitNoiseCheckContentViewController *)self startNoiseCheck];
    }

    else
    {

      [(HMFitNoiseCheckContentViewController *)self analyzeResult];
    }
  }

  else if (step > 7)
  {
    switch(step)
    {
      case 8uLL:

        [(HMFitNoiseCheckContentViewController *)self updateUIForNoiseCheckNudgingStop];
        break;
      case 9uLL:

        [(HMFitNoiseCheckContentViewController *)self updateUIForResultPass];
        break;
      case 0xAuLL:

        [(HMFitNoiseCheckContentViewController *)self updateUIForResultFail];
        break;
    }
  }

  else if (step == 5)
  {

    [(HMFitNoiseCheckContentViewController *)self updateUIForFitCheckRetry];
  }

  else if (step == 6)
  {

    [(HMFitNoiseCheckContentViewController *)self updateUIForFitCheckTutorial];
  }

  else
  {
    [(HMFitNoiseCheckContentViewController *)self updateUIForNoiseCheckNudgingStart];

    [(HMFitNoiseCheckContentViewController *)self startNoiseCheckNudging];
  }
}

- (void)updateUIForFitCheckReady
{
  NSLog(&cfstr_FitNoiseCheckU.isa, a2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMFitNoiseCheckContentViewController_updateUIForFitCheckReady__block_invoke;
  block[3] = &unk_2796F3DD8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__HMFitNoiseCheckContentViewController_updateUIForFitCheckReady__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1408) transitionToCheckReady];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"%@ will check the fit in each ear and measure background noise." value:&stru_286444CA0 table:0];

  v16 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, *(*(a1 + 32) + 1432)];

  v5 = [*(a1 + 32) headerView];
  [v5 setTitle:v16];

  v6 = [*(a1 + 32) headerView];
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Music will play during the check. This is not the hearing test." value:&stru_286444CA0 table:0];
  [v6 setDetailText:v9];

  [*(*(a1 + 32) + 1256) hidesBusyIndicator];
  [*(*(a1 + 32) + 1256) setEnabled:1];
  [*(*(a1 + 32) + 1416) setAlpha:0.0];
  v10 = *(*(a1 + 32) + 1256);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Start the Check" value:&stru_286444CA0 table:0];
  [v10 setTitle:v12 forState:0];

  [*(a1 + 32) clearDebugView];
  v13 = [*(a1 + 32) view];
  v14 = [v13 window];
  v15 = [v14 windowScene];
  [v15 _setSystemVolumeHUDEnabled:0];
}

- (void)updateUIForOngoingFitCheck
{
  NSLog(&cfstr_FitNoiseCheckU.isa, a2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMFitNoiseCheckContentViewController_updateUIForOngoingFitCheck__block_invoke;
  block[3] = &unk_2796F3DD8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__HMFitNoiseCheckContentViewController_updateUIForOngoingFitCheck__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) headerView];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Checking fit and noise." value:&stru_286444CA0 table:0];
  [v2 setTitle:v5];

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Do not remove %@." value:&stru_286444CA0 table:0];

  v10 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v8, *(*(a1 + 32) + 1432)];

  v9 = [*(a1 + 32) headerView];
  [v9 setDetailText:v10];

  [*(*(a1 + 32) + 1256) showsBusyIndicator];
  [*(*(a1 + 32) + 1416) setAlpha:0.0];
}

- (void)updateUIForOngoingNoiseCheck
{
  NSLog(&cfstr_FitNoiseCheckU_0.isa, a2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMFitNoiseCheckContentViewController_updateUIForOngoingNoiseCheck__block_invoke;
  block[3] = &unk_2796F3DD8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __68__HMFitNoiseCheckContentViewController_updateUIForOngoingNoiseCheck__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) headerView];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Checking fit and noise." value:&stru_286444CA0 table:0];
  [v5 setTitle:v4];
}

- (void)updateUIForFitCheckRetry
{
  NSLog(&cfstr_FitNoiseCheckU_1.isa, a2);
  v3 = [_TtC13HearingModeUI22HMFitNoiseCheckTopView budStatusWithLeftBudGood:self->_fitCheckResultLeft == 1 rightBudGood:self->_fitCheckResultRight == 1];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HMFitNoiseCheckContentViewController_updateUIForFitCheckRetry__block_invoke;
  v4[3] = &unk_2796F3E28;
  v4[4] = self;
  v4[5] = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __64__HMFitNoiseCheckContentViewController_updateUIForFitCheckRetry__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 1408);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__HMFitNoiseCheckContentViewController_updateUIForFitCheckRetry__block_invoke_2;
  v16[3] = &unk_2796F3E00;
  v16[4] = v3;
  [v4 transitionToFitCheckResultWithBudState:v2 actionStringBlock:v16];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"You can improve fit by adjusting the position of your %@ or changing the ear tip size." value:&stru_286444CA0 table:0];

  v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v7, *(*(a1 + 32) + 1432)];

  v9 = [*(a1 + 32) headerView];
  [v9 setDetailText:v8];

  [*(*(a1 + 32) + 1256) hidesBusyIndicator];
  [*(*(a1 + 32) + 1256) setEnabled:1];
  v10 = *(*(a1 + 32) + 1256);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Check Fit and Noise Again" value:&stru_286444CA0 table:0];
  [v10 setTitle:v12 forState:0];

  v13 = *(a1 + 32);
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"How to Change Ear Tips" value:&stru_286444CA0 table:0];
  [v13 updateHeaderButton:v15];
}

void __64__HMFitNoiseCheckContentViewController_updateUIForFitCheckRetry__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 headerView];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:v4 value:&stru_286444CA0 table:0];

  [v8 setTitle:v7];
}

- (void)updateUIForFitCheckTutorial
{
  NSLog(&cfstr_FitNoiseCheckU_2.isa, a2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMFitNoiseCheckContentViewController_updateUIForFitCheckTutorial__block_invoke;
  block[3] = &unk_2796F3DD8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__HMFitNoiseCheckContentViewController_updateUIForFitCheckTutorial__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1408) transitionToFitNudging];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Change Your %@’s Ear Tips" value:&stru_286444CA0 table:0];

  v15 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, *(*(a1 + 32) + 1432)];

  v5 = [*(a1 + 32) headerView];
  [v5 setTitle:v15];

  v6 = [*(a1 + 32) headerView];
  v7 = MEMORY[0x277CCACA8];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Many people can improve the fit of their %@ by trying a larger ear tip." value:&stru_286444CA0 table:0];
  v11 = [v7 localizedStringWithFormat:v10, *(*(a1 + 32) + 1440)];
  [v6 setDetailText:v11];

  [*(*(a1 + 32) + 1256) hidesBusyIndicator];
  [*(*(a1 + 32) + 1256) setEnabled:1];
  v12 = *(*(a1 + 32) + 1256);
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"Check Fit and Noise Again" value:&stru_286444CA0 table:0];
  [v12 setTitle:v14 forState:0];
}

- (void)updateUIForNoiseCheckNudgingStart
{
  NSLog(&cfstr_FitNoiseCheckU_3.isa, a2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMFitNoiseCheckContentViewController_updateUIForNoiseCheckNudgingStart__block_invoke;
  block[3] = &unk_2796F3DD8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __73__HMFitNoiseCheckContentViewController_updateUIForNoiseCheckNudgingStart__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1408) transitionToNoiseNudging];
  v2 = [*(a1 + 32) headerView];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Find a quiet place and check again." value:&stru_286444CA0 table:0];
  [v2 setTitle:v5];

  v6 = [*(a1 + 32) headerView];
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Too much background noise can cause inaccurate test results in your test. The hearing test will be paused if it gets too loud." value:&stru_286444CA0 table:0];
  [v6 setDetailText:v9];

  [*(*(a1 + 32) + 1256) setEnabled:0];
  v10 = *(*(a1 + 32) + 1256);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Check Fit and Noise Again" value:&stru_286444CA0 table:0];
  [v10 setTitle:v12 forState:0];

  v13 = *(a1 + 32);
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v15 localizedStringForKey:@"Suggestions to Reduce Noise" value:&stru_286444CA0 table:0];
  [v13 updateHeaderButton:v14];
}

- (void)updateUIForNoiseCheckNudgingStop
{
  NSLog(&cfstr_FitNoiseCheckU_3.isa, a2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMFitNoiseCheckContentViewController_updateUIForNoiseCheckNudgingStop__block_invoke;
  block[3] = &unk_2796F3DD8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__HMFitNoiseCheckContentViewController_updateUIForNoiseCheckNudgingStop__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) headerView];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Find a quiet place and check again." value:&stru_286444CA0 table:0];
  [v2 setTitle:v5];

  v6 = [*(a1 + 32) headerView];
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Too much background noise can cause inaccurate test results in your test. The hearing test will be paused if it gets too loud." value:&stru_286444CA0 table:0];
  [v6 setDetailText:v9];

  [*(*(a1 + 32) + 1256) hidesBusyIndicator];
  [*(*(a1 + 32) + 1256) setEnabled:1];
  v10 = *(*(a1 + 32) + 1256);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Check Fit and Noise Again" value:&stru_286444CA0 table:0];
  [v10 setTitle:v12 forState:0];

  v13 = *(a1 + 32);
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v15 localizedStringForKey:@"Suggestions to Reduce Noise" value:&stru_286444CA0 table:0];
  [v13 updateHeaderButton:v14];
}

- (void)updateUIForResultPass
{
  NSLog(&cfstr_FitNoiseCheckU_4.isa, a2);
  v3 = [_TtC13HearingModeUI22HMFitNoiseCheckTopView budStatusWithLeftBudGood:1 rightBudGood:1];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__HMFitNoiseCheckContentViewController_updateUIForResultPass__block_invoke;
  v4[3] = &unk_2796F3E28;
  v4[4] = self;
  v4[5] = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __61__HMFitNoiseCheckContentViewController_updateUIForResultPass__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 1408);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HMFitNoiseCheckContentViewController_updateUIForResultPass__block_invoke_2;
  v13[3] = &unk_2796F3E00;
  v13[4] = v3;
  [v4 transitionToFitCheckResultWithBudState:v2 actionStringBlock:v13];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Don’t remove or adjust your %@ until you finish the hearing test." value:&stru_286444CA0 table:0];

  v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v7, *(*(a1 + 32) + 1432)];

  v9 = [*(a1 + 32) headerView];
  [v9 setDetailText:v8];

  [*(*(a1 + 32) + 1256) hidesBusyIndicator];
  [*(*(a1 + 32) + 1256) setEnabled:1];
  v10 = *(*(a1 + 32) + 1256);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Next" value:&stru_286444CA0 table:0];
  [v10 setTitle:v12 forState:0];
}

void __61__HMFitNoiseCheckContentViewController_updateUIForResultPass__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 headerView];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:v4 value:&stru_286444CA0 table:0];

  [v8 setTitle:v7];
}

- (void)updateUIForResultFail
{
  NSLog(&cfstr_FitNoiseCheckU_5.isa, a2);
  v3 = [_TtC13HearingModeUI22HMFitNoiseCheckTopView budStatusWithLeftBudGood:self->_fitCheckResultLeft == 1 rightBudGood:self->_fitCheckResultRight == 1];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__HMFitNoiseCheckContentViewController_updateUIForResultFail__block_invoke;
  v4[3] = &unk_2796F3E28;
  v4[4] = self;
  v4[5] = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __61__HMFitNoiseCheckContentViewController_updateUIForResultFail__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 1408);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__HMFitNoiseCheckContentViewController_updateUIForResultFail__block_invoke_2;
  v12[3] = &unk_2796F3E00;
  v12[4] = v3;
  [v4 transitionToFitCheckResultWithBudState:v2 actionStringBlock:v12];
  v5 = [*(a1 + 32) headerView];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"You may be able to make further adjustments to get a better fit." value:&stru_286444CA0 table:0];
  [v5 setDetailText:v8];

  [*(*(a1 + 32) + 1256) hidesBusyIndicator];
  [*(*(a1 + 32) + 1256) setEnabled:1];
  [*(*(a1 + 32) + 1416) setAlpha:1.0];
  v9 = *(*(a1 + 32) + 1256);
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"Check Fit and Noise Again" value:&stru_286444CA0 table:0];
  [v9 setTitle:v11 forState:0];
}

void __61__HMFitNoiseCheckContentViewController_updateUIForResultFail__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 headerView];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:v4 value:&stru_286444CA0 table:0];

  [v8 setTitle:v7];
}

- (BOOL)budsInEar
{
  v7 = 0x300000003;
  [(BluetoothDevice *)self->_device inEarStatusPrimary:&v7 + 4 secondary:&v7];
  v2 = v7 == 0;
  v3 = "YES";
  if (v7)
  {
    v3 = "No";
  }

  if (HIDWORD(v7))
  {
    v4 = "No";
  }

  else
  {
    v4 = "Yes";
  }

  if (v7)
  {
    v5 = "No";
  }

  else
  {
    v5 = "Yes";
  }

  NSLog(&cfstr_FitNoiseCheckI_0.isa, v3, v4, v5);
  return v2;
}

- (BOOL)callActive
{
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  v3 = [mEMORY[0x277D26E58] attributeForKey:*MEMORY[0x277D26B48]];

  bOOLValue = [v3 BOOLValue];
  v5 = "No";
  if (bOOLValue)
  {
    v5 = "Yes";
  }

  NSLog(&cfstr_FitNoiseCheckC_0.isa, v5);

  return bOOLValue;
}

- (BOOL)ringtoneActive
{
  v17 = *MEMORY[0x277D85DE8];
  calls = [(CXCallObserver *)self->_callObserver calls];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [calls countByEnumeratingWithState:&v12 objects:v16 count:16];
  v4 = "No";
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(calls);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 hasConnected] & 1) == 0 && (objc_msgSend(v9, "hasEnded") & 1) == 0 && (objc_msgSend(v9, "isOnHold") & 1) == 0)
        {
          v6 |= [v9 isOutgoing] ^ 1;
        }
      }

      v5 = [calls countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
    if (v6)
    {
      v4 = "Yes";
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  NSLog(&cfstr_FitNoiseCheckR.isa, v4);

  v10 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (BOOL)audioRouteActive
{
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  currentRoute = [mEMORY[0x277CB83F8] currentRoute];
  outputs = [currentRoute outputs];
  NSLog(&cfstr_CurrentAudioRo.isa, outputs);

  address = [(BluetoothDevice *)self->_device address];
  NSLog(&cfstr_CurrentAudioRo_0.isa, address);

  mEMORY[0x277CB83F8]2 = [MEMORY[0x277CB83F8] sharedInstance];
  currentRoute2 = [mEMORY[0x277CB83F8]2 currentRoute];
  outputs2 = [currentRoute2 outputs];

  if ([outputs2 count] == 1)
  {
    mEMORY[0x277CB83F8]3 = [MEMORY[0x277CB83F8] sharedInstance];
    currentRoute3 = [mEMORY[0x277CB83F8]3 currentRoute];
    outputs3 = [currentRoute3 outputs];
    firstObject = [outputs3 firstObject];
    v14 = [firstObject UID];

    address2 = [(BluetoothDevice *)self->_device address];
    v16 = [v14 containsString:address2];

    if (v16)
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    address3 = [(BluetoothDevice *)self->_device address];
    NSLog(&cfstr_CurrentAudioRo_2.isa, v17, v14, address3);
  }

  else
  {
    NSLog(&cfstr_CurrentAudioRo_1.isa, [outputs2 count]);
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (void)startPreCheck
{
  if (![(HMFitNoiseCheckContentViewController *)self budsInEar])
  {
    NSLog(&cfstr_FitNoiseCheckP_0.isa);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HMFitNoiseCheckContentViewController_startPreCheck__block_invoke;
    block[3] = &unk_2796F3DD8;
    block[4] = self;
    v3 = MEMORY[0x277D85CD0];
    v4 = block;
    goto LABEL_6;
  }

  if ([(HMFitNoiseCheckContentViewController *)self callActive]|| [(HMFitNoiseCheckContentViewController *)self ringtoneActive])
  {
    NSLog(&cfstr_FitNoiseCheckP_1.isa);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__HMFitNoiseCheckContentViewController_startPreCheck__block_invoke_3;
    v6[3] = &unk_2796F3DD8;
    v6[4] = self;
    v3 = MEMORY[0x277D85CD0];
    v4 = v6;
LABEL_6:
    dispatch_async(v3, v4);
    return;
  }

  if (![(HMFitNoiseCheckContentViewController *)self audioRouteActive])
  {
    NSLog(&cfstr_CurrentAudioRo_3.isa);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__HMFitNoiseCheckContentViewController_startPreCheck__block_invoke_5;
    v5[3] = &unk_2796F3DD8;
    v5[4] = self;
    v3 = MEMORY[0x277D85CD0];
    v4 = v5;
    goto LABEL_6;
  }

  [(HMFitNoiseCheckContentViewController *)self moveToStep:2];
}

void __53__HMFitNoiseCheckContentViewController_startPreCheck__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75110];
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"Place %@ In Both Ears" value:&stru_286444CA0 table:0];
  v7 = [v3 localizedStringWithFormat:v6, *(*(a1 + 32) + 1440)];
  v8 = [v2 alertControllerWithTitle:v7 message:&stru_286444CA0 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_286444CA0 table:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__HMFitNoiseCheckContentViewController_startPreCheck__block_invoke_2;
  v14[3] = &unk_2796F3E50;
  v14[4] = *(a1 + 32);
  v13 = [v9 actionWithTitle:v12 style:0 handler:v14];
  [v8 addAction:v13];

  [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
}

void __53__HMFitNoiseCheckContentViewController_startPreCheck__block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D75110];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"End Call To Continue Test" value:&stru_286444CA0 table:0];
  v6 = [v2 alertControllerWithTitle:v5 message:&stru_286444CA0 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_286444CA0 table:0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__HMFitNoiseCheckContentViewController_startPreCheck__block_invoke_4;
  v12[3] = &unk_2796F3E50;
  v12[4] = *(a1 + 32);
  v11 = [v7 actionWithTitle:v10 style:0 handler:v12];
  [v6 addAction:v11];

  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

void __53__HMFitNoiseCheckContentViewController_startPreCheck__block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x277D75110];
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"Switch Audio Output to %@ to Continue" value:&stru_286444CA0 table:0];
  v7 = [v3 localizedStringWithFormat:v6, *(*(a1 + 32) + 1440)];
  v8 = [v2 alertControllerWithTitle:v7 message:&stru_286444CA0 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_286444CA0 table:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__HMFitNoiseCheckContentViewController_startPreCheck__block_invoke_6;
  v14[3] = &unk_2796F3E50;
  v14[4] = *(a1 + 32);
  v13 = [v9 actionWithTitle:v12 style:0 handler:v14];
  [v8 addAction:v13];

  [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
}

- (void)startFitCheck
{
  NSLog(&cfstr_FitNoiseCheckS_3.isa, a2);
  self->_fitNoiseCheckOngoing = 1;
  fitCheckResultDict = self->_fitCheckResultDict;
  self->_fitCheckResultDict = 0;

  self->_fitCheckResultOverall = 0;
  self->_fitCheckResultLeft = 0;
  self->_fitCheckResultRight = 0;
  [(BluetoothDevice *)self->_device SendSetupCommand:1];
  ++self->_fitCheckTimerOngoing;
  v4 = dispatch_time(0, 7000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMFitNoiseCheckContentViewController_startFitCheck__block_invoke;
  block[3] = &unk_2796F3DD8;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
  [(HMFitNoiseCheckTopView *)self->_fitNoiseCheckTopView transitionToFitCheck];
  [(HMFitNoiseCheckContentViewController *)self clearDebugView];
  [(HMFitNoiseCheckContentViewController *)self updateVolume];
  [(HMFitNoiseCheckContentViewController *)self startVolumeObserver];
  v5 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HMFitNoiseCheckContentViewController_startFitCheck__block_invoke_2;
  v6[3] = &unk_2796F3DD8;
  v6[4] = self;
  dispatch_async(v5, v6);

  self->_fitCheckOngoing = 1;
}

void __53__HMFitNoiseCheckContentViewController_startFitCheck__block_invoke(uint64_t a1)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 1288))
  {
    v3 = "YES";
  }

  else
  {
    v3 = "NO";
  }

  NSLog(&cfstr_FitNoiseCheckF.isa, v3, *(v2 + 1348));
  --*(*(a1 + 32) + 1348);
  v4 = *(a1 + 32);
  if (*(v4 + 1288) == 1 && !*(v4 + 1348))
  {
    NSLog(&cfstr_FitNoiseCheckF_0.isa);
    v15[0] = @"sealLeft";
    *&v5 = *(*(a1 + 32) + 1340) + -1.0;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    v16[0] = v6;
    v15[1] = @"sealRight";
    *&v7 = *(*(a1 + 32) + 1340) + -1.0;
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    v16[1] = v8;
    v15[2] = @"confidenceLeft";
    *&v9 = *(*(a1 + 32) + 1344) + -1.0;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    v16[2] = v10;
    v15[3] = @"confidenceRight";
    *&v11 = *(*(a1 + 32) + 1344) + -1.0;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    v16[3] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

    [*(a1 + 32) updateFitCheckResult:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void *__53__HMFitNoiseCheckContentViewController_startFitCheck__block_invoke_2(uint64_t a1, double a2)
{
  result = *(*(a1 + 32) + 1280);
  if (result)
  {
    LODWORD(a2) = 1.0;
    [result setVolume:a2];
    [*(*(a1 + 32) + 1280) setCurrentTime:0.0];
    v4 = *(*(a1 + 32) + 1280);

    return [v4 play];
  }

  return result;
}

- (void)fitCheckStopped
{
  NSLog(&cfstr_FitNoiseCheckF_1.isa, a2);
  if (self->_fitCheckOngoing)
  {
    NSLog(&cfstr_FitNoiseCheckS_4.isa);
    [(BluetoothDevice *)self->_device SendSetupCommand:3];
  }

  self->_fitCheckOngoing = 0;
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMFitNoiseCheckContentViewController_fitCheckStopped__block_invoke;
  block[3] = &unk_2796F3DD8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __55__HMFitNoiseCheckContentViewController_fitCheckStopped__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1280) setVolume:0.0 fadeDuration:1.0];
  v2 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMFitNoiseCheckContentViewController_fitCheckStopped__block_invoke_2;
  block[3] = &unk_2796F3DD8;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

uint64_t __55__HMFitNoiseCheckContentViewController_fitCheckStopped__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) stopVolumeObserver];
  v2 = *(a1 + 32);

  return [v2 resetVolume];
}

- (unint64_t)categorizeFitCheckResultBud:(float)bud
{
  if (self->_fitCheckSealThresholdBad > bud)
  {
    return 3;
  }

  if (self->_fitCheckSealThresholdGood < bud)
  {
    return 1;
  }

  return 2;
}

- (unint64_t)categorizeFitCheckResultWithLeftBud:(float)bud rightBud:(float)rightBud
{
  v4 = rightBud == 1.0 && bud == 1.0;
  v5 = 1;
  if (!v4)
  {
    v5 = 2;
  }

  if (rightBud == 3.0 || bud == 3.0)
  {
    return 3;
  }

  else
  {
    return v5;
  }
}

- (void)udpateFitCheckThresholds
{
  CFPreferencesAppSynchronize(@"com.apple.ConnectedAudio");
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ForcedFitCheckSealThresholdGood", @"com.apple.ConnectedAudio", &keyExistsAndHasValidFormat);
  v4 = keyExistsAndHasValidFormat == 0;
  if (!keyExistsAndHasValidFormat)
  {
    AppIntegerValue = 6.0;
  }

  self->_fitCheckSealThresholdGood = AppIntegerValue;
  if (v4)
  {
    v5 = "Default";
  }

  else
  {
    v5 = "Forced";
  }

  NSLog(&cfstr_FitNoiseCheckS_5.isa, v5, AppIntegerValue);
  v6 = CFPreferencesGetAppIntegerValue(@"ForcedFitCheckSealThresholdBad", @"com.apple.ConnectedAudio", &keyExistsAndHasValidFormat);
  v7 = keyExistsAndHasValidFormat == 0;
  if (!keyExistsAndHasValidFormat)
  {
    v6 = -9.0;
  }

  self->_fitCheckSealThresholdBad = v6;
  if (v7)
  {
    v8 = "Default";
  }

  else
  {
    v8 = "Forced";
  }

  NSLog(&cfstr_FitNoiseCheckS_6.isa, v8, v6);
  v9 = CFPreferencesGetAppIntegerValue(@"ForcedFitCheckConfidenceThreshold", @"com.apple.ConnectedAudio", &keyExistsAndHasValidFormat);
  v10 = keyExistsAndHasValidFormat == 0;
  if (!keyExistsAndHasValidFormat)
  {
    v9 = -3.0;
  }

  self->_fitCheckConfidenceThreshold = v9;
  if (v10)
  {
    v11 = "Default";
  }

  else
  {
    v11 = "Forced";
  }

  NSLog(&cfstr_FitNoiseCheckS_7.isa, v11, v9);
}

- (void)updateFitCheckResult:(id)result
{
  objc_storeStrong(&self->_fitCheckResultDict, result);
  [(HMFitNoiseCheckContentViewController *)self fitCheckStopped];
  [(HMFitNoiseCheckContentViewController *)self generateFitCheckResult];

  [(HMFitNoiseCheckContentViewController *)self moveToStep:3];
}

- (void)generateFitCheckResult
{
  v3 = [(NSDictionary *)self->_fitCheckResultDict objectForKeyedSubscript:@"sealLeft"];
  [v3 floatValue];
  v5 = v4;

  v6 = [(NSDictionary *)self->_fitCheckResultDict objectForKeyedSubscript:@"sealRight"];
  [v6 floatValue];
  v8 = v7;

  v9 = [(NSDictionary *)self->_fitCheckResultDict objectForKeyedSubscript:@"confidenceLeft"];
  [v9 floatValue];
  v11 = v10;

  v12 = [(NSDictionary *)self->_fitCheckResultDict objectForKeyedSubscript:@"confidenceRight"];
  [v12 floatValue];
  v14 = v13;

  [(HMFitNoiseCheckContentViewController *)self resetDetailDictionary];
  *&v15 = v5;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  [(NSMutableDictionary *)self->_detailDictionary setObject:v16 forKeyedSubscript:@"sealLeft"];

  *&v17 = v8;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  [(NSMutableDictionary *)self->_detailDictionary setObject:v18 forKeyedSubscript:@"sealRight"];

  *&v19 = v11;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  [(NSMutableDictionary *)self->_detailDictionary setObject:v20 forKeyedSubscript:@"confidenceLeft"];

  *&v21 = v14;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  [(NSMutableDictionary *)self->_detailDictionary setObject:v22 forKeyedSubscript:@"confidenceRight"];

  NSLog(&cfstr_FitNoiseCheckF_2.isa, v5);
  NSLog(&cfstr_FitNoiseCheckF_3.isa, v8);
  NSLog(&cfstr_FitNoiseCheckF_4.isa, v11);
  NSLog(&cfstr_FitNoiseCheckF_5.isa, v14);
  *&v23 = self->_fitCheckConfidenceThreshold;
  if (v11 < *&v23 || v14 < *&v23)
  {
    self->_fitCheckResultOverall = 3;
    v29 = [(HMFitNoiseCheckContentViewController *)self getResultString:3];
    NSLog(&cfstr_FitNoiseCheckF_6.isa, v29);
  }

  else
  {
    *&v23 = v5;
    self->_fitCheckResultLeft = [(HMFitNoiseCheckContentViewController *)self categorizeFitCheckResultBud:v23];
    *&v24 = v8;
    v25 = [(HMFitNoiseCheckContentViewController *)self categorizeFitCheckResultBud:v24];
    self->_fitCheckResultRight = v25;
    *&v26 = self->_fitCheckResultLeft;
    *&v27 = v25;
    v28 = [(HMFitNoiseCheckContentViewController *)self categorizeFitCheckResultWithLeftBud:v26 rightBud:v27];
    self->_fitCheckResultOverall = v28;
    v29 = [(HMFitNoiseCheckContentViewController *)self getResultString:v28];
    v30 = [(HMFitNoiseCheckContentViewController *)self getResultString:self->_fitCheckResultLeft];
    v31 = [(HMFitNoiseCheckContentViewController *)self getResultString:self->_fitCheckResultRight];
    NSLog(&cfstr_FitNoiseCheckF_7.isa, v29, v30, v31);
  }

  v32 = [(HMFitNoiseCheckContentViewController *)self getResultString:self->_fitCheckResultOverall];
  [(NSMutableDictionary *)self->_detailDictionary setObject:v32 forKeyedSubscript:@"fitCheckResult"];

  fitCheckFailureCount = self->_fitCheckFailureCount;
  if (self->_fitCheckResultOverall != 1)
  {
    ++fitCheckFailureCount;
  }

  self->_fitCheckFailureCount = fitCheckFailureCount;
}

- (void)startVolumeObserver
{
  v18[1] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  v4 = MEMORY[0x277D26DE8];
  v18[0] = *MEMORY[0x277D26DE8];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v6 = *MEMORY[0x277D26DD0];
  v17 = 0;
  [mEMORY[0x277D26E58] setAttribute:v5 forKey:v6 error:&v17];
  v7 = v17;

  if (v7)
  {
    localizedDescription = [v7 localizedDescription];
    NSLog(&cfstr_FitNoiseCheckC_1.isa, localizedDescription);
  }

  else
  {
    NSLog(&cfstr_FitNoiseCheckS_8.isa);
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = *v4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__HMFitNoiseCheckContentViewController_startVolumeObserver__block_invoke;
    v14[3] = &unk_2796F3E78;
    objc_copyWeak(&v15, &location);
    v11 = [defaultCenter addObserverForName:v10 object:0 queue:0 usingBlock:v14];
    systemVolumeObserver = self->_systemVolumeObserver;
    self->_systemVolumeObserver = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __59__HMFitNoiseCheckContentViewController_startVolumeObserver__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained getTargetVolume];
  v6 = v5;

  v7 = [v3 userInfo];

  v12 = [v7 objectForKey:*MEMORY[0x277D26B40]];

  [v12 floatValue];
  if (v8 != v6)
  {
    v9 = [MEMORY[0x277D26E58] sharedAVSystemController];
    *&v10 = v6;
    [v9 setActiveCategoryVolumeTo:v10];

    [v12 floatValue];
    NSLog(&cfstr_FitNoiseCheckV_0.isa, v11, v6);
  }
}

- (void)stopVolumeObserver
{
  NSLog(&cfstr_FitNoiseCheckS_9.isa, a2);
  if (self->_systemVolumeObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_systemVolumeObserver];

    systemVolumeObserver = self->_systemVolumeObserver;
    self->_systemVolumeObserver = 0;
  }
}

- (void)startNoiseCheck
{
  NSLog(&cfstr_FitNoiseCheckS_10.isa, a2);
  self->_noiseCheckOngoing = 1;
  noiseCheckService = self->_noiseCheckService;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__HMFitNoiseCheckContentViewController_startNoiseCheck__block_invoke;
  v4[3] = &unk_2796F3EA0;
  v4[4] = self;
  [(HMNoiseCheckService *)noiseCheckService runNoiseCheckWithCompletionHandler:v4];
}

void __55__HMFitNoiseCheckContentViewController_startNoiseCheck__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (*(v4 + 1377))
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  if (*(v4 + 1376))
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  NSLog(&cfstr_FitNoiseCheckN.isa, v5, v6);
  v7 = *(a1 + 32);
  if (*(v7 + 1377) == 1 && *(v7 + 1376) == 1)
  {
    *(v7 + 1376) = 0;
    [*(a1 + 32) generateNoiseCheckResult:a2];
    v8 = *(a1 + 32);

    [v8 moveToStep:4];
  }
}

- (void)startNoiseCheckNudging
{
  NSLog(&cfstr_FitNoiseCheckS_11.isa, a2);
  if (!self->_fitNoiseCheckOngoing)
  {
    self->_fitNoiseCheckOngoing = 1;
    noiseCheckService = self->_noiseCheckService;
    fitNoiseCheckTopView = self->_fitNoiseCheckTopView;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __62__HMFitNoiseCheckContentViewController_startNoiseCheckNudging__block_invoke;
    v5[3] = &unk_2796F3C58;
    v5[4] = self;
    [(HMNoiseCheckService *)noiseCheckService runNoiseCheckNudgingWithTopView:fitNoiseCheckTopView passAction:v5];
  }
}

void __62__HMFitNoiseCheckContentViewController_startNoiseCheckNudging__block_invoke(uint64_t a1, int a2)
{
  if (*(*(a1 + 32) + 1377))
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  NSLog(&cfstr_FitNoiseCheckN_0.isa, v4);
  if (*(*(a1 + 32) + 1377) == 1)
  {
    if (a2)
    {
      NSLog(&cfstr_FitNoiseCheckN_1.isa);
      v5 = *(a1 + 32);

      [v5 moveToStep:8];
    }

    else
    {
      NSLog(&cfstr_FitNoiseCheckN_2.isa);
      v6 = *(a1 + 32);

      [v6 updateUIForNoiseCheckNudgingStart];
    }
  }
}

- (void)stopNoiseCheck
{
  NSLog(&cfstr_FitNoiseCheckS_12.isa, a2);
  self->_noiseCheckOngoing = 0;
  noiseCheckService = self->_noiseCheckService;

  [(HMNoiseCheckService *)noiseCheckService stopNoiseCheck];
}

- (void)generateNoiseCheckResult:(int64_t)result
{
  if (result <= 1)
  {
    if (result)
    {
      if (result != 1)
      {
        goto LABEL_12;
      }

LABEL_8:
      self->_noiseCheckResult = result;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (result == 2)
  {
    goto LABEL_8;
  }

  if (result == 3)
  {
LABEL_7:
    result = 3;
    goto LABEL_8;
  }

LABEL_12:
  noiseCheckResult = self->_noiseCheckResult;
LABEL_9:
  v5 = [(HMFitNoiseCheckContentViewController *)self getResultString:?];
  [(NSMutableDictionary *)self->_detailDictionary setObject:v5 forKeyedSubscript:@"noiseCheckResult"];
}

- (void)stopFitNoiseCheck
{
  NSLog(&cfstr_FitNoiseCheckS_13.isa, a2);
  self->_fitNoiseCheckOngoing = 0;
  [(HMFitNoiseCheckContentViewController *)self fitCheckStopped];
  [(HMFitNoiseCheckContentViewController *)self stopNoiseCheck];

  [(HMFitNoiseCheckContentViewController *)self moveToStep:0];
}

- (void)analyzeResult
{
  if ([(HMFitNoiseCheckContentViewController *)self _forceNoiseCheckNudging])
  {
    goto LABEL_2;
  }

  self->_fitNoiseCheckOngoing = 0;
  [(HMFitNoiseCheckContentViewController *)self showDebugResult];
  v5 = [(HMFitNoiseCheckContentViewController *)self getResultString:self->_fitCheckResultOverall];
  v6 = [(HMFitNoiseCheckContentViewController *)self getResultString:self->_noiseCheckResult];
  NSLog(&cfstr_FitNoiseCheckA.isa, v5, v6, self->_fitCheckFailureCount);

  if (self->_fitCheckResultOverall == 3)
  {
    selfCopy3 = self;
    v4 = 5;
  }

  else
  {
    if (self->_noiseCheckResult == 3)
    {
LABEL_2:
      selfCopy3 = self;
      v4 = 7;
      goto LABEL_7;
    }

    selfCopy3 = self;
    v4 = 9;
  }

LABEL_7:

  [(HMFitNoiseCheckContentViewController *)selfCopy3 moveToStep:v4];
}

- (void)updateVolume
{
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  v4 = [mEMORY[0x277D26E58] getVolume:&self->_volumeBeforeFitCheck forCategory:@"Audio/Video"];

  if (v4)
  {
    NSLog(&cfstr_FitNoiseCheckU_6.isa, self->_volumeBeforeFitCheck);
    [(HMFitNoiseCheckContentViewController *)self getTargetVolume];
    v6 = v5;
    mEMORY[0x277D26E58]2 = [MEMORY[0x277D26E58] sharedAVSystemController];
    *&v8 = v6;
    v9 = [mEMORY[0x277D26E58]2 setVolumeTo:@"Audio/Video" forCategory:v8];

    if (v9)
    {
      NSLog(&cfstr_FitNoiseCheckU_7.isa, v6);
      self->_volumeChanged = 1;
    }

    else
    {
      NSLog(&cfstr_FitNoiseCheckU_8.isa, v6);
    }
  }

  else
  {
    NSLog(&cfstr_FitNoiseCheckU_9.isa);
  }
}

- (float)getTargetVolume
{
  CFPreferencesAppSynchronize(@"com.apple.ConnectedAudio");
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ForcedFitCheckTargetVolume", @"com.apple.ConnectedAudio", &keyExistsAndHasValidFormat);
  v3 = 0.5;
  if (keyExistsAndHasValidFormat && (AppIntegerValue - 1) <= 0x63)
  {
    v3 = AppIntegerValue / 100.0;
    NSLog(&cfstr_FitNoiseCheckF_8.isa, v3);
  }

  return v3;
}

- (void)resetVolume
{
  if (self->_volumeChanged)
  {
    NSLog(&cfstr_FitNoiseCheckR_0.isa, a2, self->_volumeBeforeFitCheck);
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    *&v4 = self->_volumeBeforeFitCheck;
    [mEMORY[0x277D26E58] setVolumeTo:@"Audio/Video" forCategory:v4];

    self->_volumeChanged = 0;
  }
}

- (void)callCompletionHandlerWithStaus:(unint64_t)staus
{
  fitNoiseCheckDelegate = [(HMFitNoiseCheckContentViewController *)self fitNoiseCheckDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = "Failed";
    if (staus == 1)
    {
      v7 = "Passed";
    }

    NSLog(&cfstr_FitNoiseCheckC_2.isa, v7);
    fitNoiseCheckDelegate2 = [(HMFitNoiseCheckContentViewController *)self fitNoiseCheckDelegate];
    [fitNoiseCheckDelegate2 fitNoiseCheckCompleted:self status:staus details:self->_detailDictionary];
  }

  else
  {
    fitNoiseCheckDelegate3 = [(HMFitNoiseCheckContentViewController *)self fitNoiseCheckDelegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      NSLog(&cfstr_FitNoiseCheckC_3.isa);
      return;
    }

    v10 = "Failed";
    if (staus == 1)
    {
      v10 = "Passed";
    }

    NSLog(&cfstr_FitNoiseCheckC_2.isa, v10);
    fitNoiseCheckDelegate2 = [(HMFitNoiseCheckContentViewController *)self fitNoiseCheckDelegate];
    [fitNoiseCheckDelegate2 fitNoiseCheckCompleted:self status:staus];
  }
}

- (void)callCancelledHandler
{
  fitNoiseCheckDelegate = [(HMFitNoiseCheckContentViewController *)self fitNoiseCheckDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    NSLog(&cfstr_FitNoiseCheckC_4.isa);
    fitNoiseCheckDelegate2 = [(HMFitNoiseCheckContentViewController *)self fitNoiseCheckDelegate];
    [fitNoiseCheckDelegate2 fitNoiseCheckCancelled:self];
  }

  else
  {
    NSLog(&cfstr_FitNoiseCheckC_5.isa);
  }
}

- (void)sealValueChangedHandler:(id)handler
{
  handlerCopy = handler;
  NSLog(&cfstr_FitNoiseCheckS_14.isa);
  if (self->_fitCheckOngoing)
  {
    if ([(HMFitNoiseCheckContentViewController *)self isForcedIgnoreFitCheckResultFromBuds])
    {
      NSLog(&cfstr_FitNoiseCheckF_9.isa);
    }

    else
    {
      object = [handlerCopy object];
      [(HMFitNoiseCheckContentViewController *)self updateFitCheckResult:object];
    }
  }

  else
  {
    NSLog(&cfstr_FitNoiseCheckD.isa);
  }
}

- (void)audioRouteChangedHandler:(id)handler
{
  NSLog(&cfstr_CurrentAudioRo_4.isa, a2, handler);
  if (self->_fitNoiseCheckOngoing)
  {
    if (![(HMFitNoiseCheckContentViewController *)self audioRouteActive])
    {
      NSLog(&cfstr_CurrentAudioRo_6.isa);
      [(HMFitNoiseCheckContentViewController *)self stopFitNoiseCheck];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__HMFitNoiseCheckContentViewController_audioRouteChangedHandler___block_invoke;
      block[3] = &unk_2796F3DD8;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    NSLog(&cfstr_CurrentAudioRo_5.isa);
  }
}

void __65__HMFitNoiseCheckContentViewController_audioRouteChangedHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75110];
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"Switch Audio Output to %@ to Continue" value:&stru_286444CA0 table:0];
  v7 = [v3 localizedStringWithFormat:v6, *(*(a1 + 32) + 1440)];
  v8 = [v2 alertControllerWithTitle:v7 message:&stru_286444CA0 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_286444CA0 table:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HMFitNoiseCheckContentViewController_audioRouteChangedHandler___block_invoke_2;
  v14[3] = &unk_2796F3E50;
  v14[4] = *(a1 + 32);
  v13 = [v9 actionWithTitle:v12 style:0 handler:v14];
  [v8 addAction:v13];

  [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
}

- (void)inEarStatusChangedHandler:(id)handler
{
  object = [handler object];
  v5 = [object objectForKeyedSubscript:@"primaryInEarStatus"];
  v6 = [object objectForKeyedSubscript:@"secondaryInEarStatus"];
  v7 = [object objectForKeyedSubscript:@"device"];
  address = [v7 address];
  address2 = [(BluetoothDevice *)self->_device address];

  if (address == address2)
  {
    bOOLValue = [v5 BOOLValue];
    v11 = (bOOLValue | [v6 BOOLValue]) ^ 1;
    NSLog(&cfstr_FitNoiseCheckP_2.isa, v5, v6, v11 & 1);
    if ((v11 & 1) == 0)
    {
      NSLog(&cfstr_FitNoiseCheckB.isa);
      [(HMFitNoiseCheckContentViewController *)self stopFitNoiseCheck];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__HMFitNoiseCheckContentViewController_inEarStatusChangedHandler___block_invoke;
      block[3] = &unk_2796F3DD8;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __66__HMFitNoiseCheckContentViewController_inEarStatusChangedHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75110];
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"Place %@ In Both Ears" value:&stru_286444CA0 table:0];
  v7 = [v3 localizedStringWithFormat:v6, *(*(a1 + 32) + 1440)];
  v8 = [v2 alertControllerWithTitle:v7 message:&stru_286444CA0 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_286444CA0 table:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HMFitNoiseCheckContentViewController_inEarStatusChangedHandler___block_invoke_2;
  v14[3] = &unk_2796F3E50;
  v14[4] = *(a1 + 32);
  v13 = [v9 actionWithTitle:v12 style:0 handler:v14];
  [v8 addAction:v13];

  [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
}

- (void)deviceDisconnectionHandler:(id)handler
{
  NSLog(&cfstr_FitNoiseCheckH.isa, a2, handler);
  [(HMFitNoiseCheckContentViewController *)self stopFitNoiseCheck];

  [(HMFitNoiseCheckContentViewController *)self callCompletionHandlerWithStaus:0];
}

- (void)interruptionHandler:(id)handler
{
  object = [handler object];
  NSLog(&cfstr_FitNoiseCheckH_0.isa, object);
  [(HMFitNoiseCheckContentViewController *)self stopFitNoiseCheck];
}

- (id)getStepString:(unint64_t)string
{
  if (string - 1 > 0xB)
  {
    return @"Ready";
  }

  else
  {
    return off_2796F3EC0[string - 1];
  }
}

- (id)getResultString:(unint64_t)string
{
  if (string - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2796F3F20[string - 1];
  }
}

- (BOOL)isDebugModeEnabled
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.ConnectedAudio");
  if (CFPreferencesGetAppBooleanValue(@"FitNoiseCheckDebugMode", @"com.apple.ConnectedAudio", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (void)setupDebugView
{
  v26[4] = *MEMORY[0x277D85DE8];
  if (self->_debugMode)
  {
    NSLog(&cfstr_FitNoiseCheckS_15.isa, a2);
    v3 = objc_alloc(MEMORY[0x277D756B8]);
    v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    resultDetailLabel = self->_resultDetailLabel;
    self->_resultDetailLabel = v4;

    [(UILabel *)self->_resultDetailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_resultDetailLabel setText:&stru_286444CA0];
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    [(UILabel *)self->_resultDetailLabel setTextColor:systemBlackColor];

    [(UILabel *)self->_resultDetailLabel setTextAlignment:1];
    [(UILabel *)self->_resultDetailLabel setNumberOfLines:0];
    [(UILabel *)self->_resultDetailLabel setLineBreakMode:0];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)self->_resultDetailLabel setFont:v7];

    [(UILabel *)self->_resultDetailLabel setAlpha:1.0];
    headerView = [(HMFitNoiseCheckContentViewController *)self headerView];
    [headerView addSubview:self->_resultDetailLabel];

    v20 = MEMORY[0x277CCAAD0];
    heightAnchor = [(UILabel *)self->_resultDetailLabel heightAnchor];
    v24 = [heightAnchor constraintEqualToConstant:150.0];
    v26[0] = v24;
    leadingAnchor = [(UILabel *)self->_resultDetailLabel leadingAnchor];
    contentView = [(HMFitNoiseCheckContentViewController *)self contentView];
    leadingAnchor2 = [contentView leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[1] = v9;
    trailingAnchor = [(UILabel *)self->_resultDetailLabel trailingAnchor];
    contentView2 = [(HMFitNoiseCheckContentViewController *)self contentView];
    trailingAnchor2 = [contentView2 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[2] = v13;
    topAnchor = [(UILabel *)self->_resultDetailLabel topAnchor];
    headerView2 = [(HMFitNoiseCheckContentViewController *)self headerView];
    bottomAnchor = [headerView2 bottomAnchor];
    v17 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v26[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
    [v20 activateConstraints:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)showDebugResult
{
  if (self->_debugMode)
  {
    block[7] = v2;
    block[8] = v3;
    NSLog(&cfstr_FitNoiseCheckS_16.isa, a2);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__HMFitNoiseCheckContentViewController_showDebugResult__block_invoke;
    block[3] = &unk_2796F3DD8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __55__HMFitNoiseCheckContentViewController_showDebugResult__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75348] systemBlueColor];
  [*(*(a1 + 32) + 1400) setTextColor:v2];

  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v24 = v4[318];
  [v4 getTargetVolume];
  v6 = v5;
  v25 = [*(*(a1 + 32) + 1296) objectForKeyedSubscript:@"sealLeft"];
  [v25 floatValue];
  v8 = v7;
  v9 = [*(*(a1 + 32) + 1296) objectForKeyedSubscript:@"confidenceLeft"];
  [v9 floatValue];
  v11 = v10;
  v12 = [*(*(a1 + 32) + 1296) objectForKeyedSubscript:@"sealRight"];
  [v12 floatValue];
  v14 = v13;
  v15 = [*(*(a1 + 32) + 1296) objectForKeyedSubscript:@"confidenceRight"];
  [v15 floatValue];
  v17 = v16;
  v18 = *(a1 + 32);
  v19 = *(v18 + 1336);
  v20 = *(v18 + 1340);
  v21 = *(v18 + 1344);
  v22 = [v18 getResultString:*(v18 + 1368)];
  v23 = [v3 stringWithFormat:@"Fit Check:\nVolume Initial : %.2f Target: %.2f\nLeft Seal : %.2f  Confidence : %.2f\nRight Seal : %.2f  Confidence : %.2f\nThreshold Good: %.1f  Bad: %.1f  Conf: %.1f\nNoise Check: \n%@", *&v24, *&v6, *&v8, *&v11, *&v14, *&v17, *&v19, *&v20, *&v21, v22];
  [*(*(a1 + 32) + 1400) setText:v23];
}

- (void)clearDebugView
{
  if (self->_debugMode)
  {
    NSLog(&cfstr_FitNoiseCheckC_6.isa, a2);
    resultDetailLabel = self->_resultDetailLabel;

    [(UILabel *)resultDetailLabel setText:&stru_286444CA0];
  }
}

- (BOOL)_forceNoiseCheckNudging
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.ConnectedAudio");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ForceNoiseCheckNudging", @"com.apple.ConnectedAudio", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)updateForcedCheckResult
{
  CFPreferencesAppSynchronize(@"com.apple.ConnectedAudio");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ForcedFitNoiseCheckPass", @"com.apple.ConnectedAudio", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = "Pass";
    if (AppBooleanValue)
    {
      v5 = 9;
    }

    else
    {
      v4 = "Fail";
      v5 = 10;
    }

    NSLog(&cfstr_FitNoiseCheckF_10.isa, v4);
  }

  else
  {
    NSLog(&cfstr_FitNoiseCheckN_3.isa);
    v5 = 1;
  }

  [(HMFitNoiseCheckContentViewController *)self moveToStep:v5];
}

- (BOOL)isForcedIgnoreFitCheckResultFromBuds
{
  CFPreferencesAppSynchronize(@"com.apple.ConnectedAudio");
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"ForcedIgnoreFitCheckResultFromBuds", @"com.apple.ConnectedAudio", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (void)showImproveDisclosure
{
  currentStep = self->_currentStep;
  if (currentStep - 7 >= 2)
  {
    if (currentStep == 5)
    {
      headphoneDevice = self->_headphoneDevice;

      [(HMFitNoiseCheckContentViewController *)self showAirpodsFitSuggestionsControllerWithHeadphoneDevice:headphoneDevice];
    }

    else
    {
      NSLog(&cfstr_Showimprovedis.isa, a2);
    }
  }

  else
  {
    v4 = self->_headphoneDevice;

    [(OBWelcomeController *)self showAirpodsNoiseReductionControllerWithHeadphoneDevice:v4];
  }
}

- (void)updateHeaderButton:(id)button
{
  [(OBHeaderAccessoryButton *)self->_headerAccessorybutton setTitle:button forState:0];
  v4 = self->_currentStep - 5;
  v5 = 0.0;
  if (v4 <= 3)
  {
    v5 = dbl_252066A40[v4];
  }

  headerAccessorybutton = self->_headerAccessorybutton;

  [(OBHeaderAccessoryButton *)headerAccessorybutton setAlpha:v5];
}

+ (id)fitNoiseCheckTopTestingView
{
  v2 = [_TtC13HearingModeUI22HMFitNoiseCheckTopView alloc];
  v3 = objc_alloc_init(_TtC13HearingModeUI19HMNoiseCheckService);
  v4 = [(HMFitNoiseCheckTopView *)v2 initWithService:v3 hpDevice:0];

  [(HMFitNoiseCheckTopView *)v4 testRun];

  return v4;
}

- (FitNoiseCheckDelegate)fitNoiseCheckDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_fitNoiseCheckDelegate);

  return WeakRetained;
}

- (void)showAirpodsFitSuggestionsControllerWithHeadphoneDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  HMFitNoiseCheckContentViewController.showAirpodsFitSuggestionsController(headphoneDevice:)(deviceCopy);
}

@end