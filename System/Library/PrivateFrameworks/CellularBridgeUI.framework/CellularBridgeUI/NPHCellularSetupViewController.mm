@interface NPHCellularSetupViewController
+ (BOOL)controllerNeedsToRun;
+ (NSMutableSet)loggedEvents;
+ (void)_logEventOncePerSession:(unint64_t)session;
+ (void)setLoggedEvents:(id)events;
- (BOOL)isGeminiSetup;
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (NPHCellularSetupViewController)initWithConfiguration:(int64_t)configuration;
- (id)_fetchCSNfromMetadata:(id)metadata;
- (id)_setUpNowDetailString;
- (id)okayButtonTitle;
- (id)tapToRadarMetadata;
- (id)titleString;
- (id)trialOfferMessage;
- (void)_decideWhetherToShowTransferOrSetup;
- (void)checkForSoftwareUpdate;
- (void)ctCellularPlanInfoDidChange:(id)change;
- (void)dealloc;
- (void)navigateToNextView;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)setUpNow;
- (void)transfer;
- (void)updateUIFromCellularPlanItems;
- (void)updateUIToShowContinue;
- (void)updateUIToShowPlanSetUpTrial;
- (void)updateUIToShowPlanTransferOrSetUpNewOptions;
- (void)updateUIToShowPreinstall;
- (void)updateUIToShowSetUpNow;
- (void)updateUIToShowSetUpNowMultipleSubscriptions;
- (void)updateUIToShowSpinner;
- (void)updateUIToShowUserConsent:(int64_t)consent relevantPlan:(id)plan;
- (void)updateUIToShowUserVisibleError;
- (void)userTappedConsent:(id)consent;
- (void)userTappedContinue:(id)continue;
- (void)userTappedNext:(id)next;
- (void)userTappedSetUp:(id)up;
- (void)userTappedSetUpCarrier:(id)carrier;
- (void)userTappedSetUpNew:(id)new;
- (void)userTappedSkip:(id)skip;
- (void)userTappedTransfer:(id)transfer;
- (void)viewDidLoad;
@end

@implementation NPHCellularSetupViewController

+ (BOOL)controllerNeedsToRun
{
  activeDevice = [MEMORY[0x277D37B48] activeDevice];
  v4 = [activeDevice supportsCapability:1252261691];

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = +[NPHCellularBridgeUIManager sharedInstance];
  serviceSubscriptionsOfferingRemotePlan = [v5 serviceSubscriptionsOfferingRemotePlan];
  v7 = [serviceSubscriptionsOfferingRemotePlan count];

  if (!v7)
  {
    [self _logEventOncePerSession:3];
LABEL_5:
    v9 = +[NPHCellularBridgeUIManager sharedInstance];
    [v9 finishRemoteProvisioning];

    return 0;
  }

  v8 = 1;
  [self _logEventOncePerSession:1];
  return v8;
}

- (NPHCellularSetupViewController)initWithConfiguration:(int64_t)configuration
{
  v8.receiver = self;
  v8.super_class = NPHCellularSetupViewController;
  v4 = [(NPHCellularSetupViewController *)&v8 initWithTitle:&stru_285611AE0 detailText:0 icon:0 contentLayout:2];
  v5 = v4;
  if (v4)
  {
    [(NPHCellularSetupViewController *)v4 setConfiguration:configuration];
    [(BPSWelcomeOptinViewController *)v5 setStyle:42];
    [(NPHCellularSetupViewController *)v5 setIsCellularSetupFlowComplete:0];
    [(NPHCellularSetupViewController *)v5 setIsTinkerCrossCarrierSetUpFlow:0];
    v6 = +[NPHCellularBridgeUIManager sharedInstance];
    [v6 fetchTinkerFamilyMember];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = NPHCellularSetupViewController;
  [(BPSWelcomeOptinViewController *)&v4 dealloc];
}

- (BOOL)isGeminiSetup
{
  v2 = +[NPHCellularBridgeUIManager sharedInstance];
  serviceSubscriptionsToOfferUser = [v2 serviceSubscriptionsToOfferUser];

  LOBYTE(v2) = [serviceSubscriptionsToOfferUser count] > 1;
  return v2;
}

+ (NSMutableSet)loggedEvents
{
  v2 = _loggedEvents;
  if (!_loggedEvents)
  {
    v3 = objc_opt_new();
    v4 = _loggedEvents;
    _loggedEvents = v3;

    v2 = _loggedEvents;
  }

  return v2;
}

+ (void)setLoggedEvents:(id)events
{
  if (_loggedEvents != events)
  {
    _loggedEvents = [events mutableCopy];

    MEMORY[0x2821F96F8]();
  }
}

+ (void)_logEventOncePerSession:(unint64_t)session
{
  loggedEvents = [self loggedEvents];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:session];
  v7 = [loggedEvents containsObject:v6];

  if ((v7 & 1) == 0)
  {
    [MEMORY[0x277D37A60] incrementSetUpEvent:session];
    loggedEvents2 = [self loggedEvents];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:session];
    [loggedEvents2 addObject:v8];
  }
}

- (void)ctCellularPlanInfoDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__NPHCellularSetupViewController_ctCellularPlanInfoDidChange___block_invoke;
  v6[3] = &unk_278DAC820;
  objc_copyWeak(&v8, &location);
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __62__NPHCellularSetupViewController_ctCellularPlanInfoDidChange___block_invoke(id *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = nph_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[NPHCellularBridgeUIManager sharedInstance];
    v4 = [v3 selectedCellularPlan];
    v5 = +[NPHCellularBridgeUIManager sharedInstance];
    v6 = [v5 cellularPlans];
    v24 = 136315650;
    v25 = "[NPHCellularSetupViewController ctCellularPlanInfoDidChange:]_block_invoke";
    v26 = 2112;
    v27 = v4;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_243333000, v2, OS_LOG_TYPE_DEFAULT, "Akashi - %s selectedPlan:%@ cellularPlans:%@", &v24, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained setHaveReceivedProxyPlanItems:1];

  v8 = +[NPHCellularBridgeUIManager sharedInstance];
  v9 = [v8 cellularUseErrors];
  v10 = objc_loadWeakRetained(a1 + 6);
  [v10 setUserVisibleErrors:v9];

  v11 = objc_loadWeakRetained(a1 + 6);
  v12 = [v11 userVisibleErrors];
  v13 = [v12 indexOfObjectPassingTest:&__block_literal_global_0];

  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a1[4] checkForSoftwareUpdate];
  }

  v14 = [a1[5] userInfo];
  v15 = [v14 objectForKey:NPHCellularPlanInfoError];

  if (v15)
  {
    v16 = nph_general_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __62__NPHCellularSetupViewController_ctCellularPlanInfoDidChange___block_invoke_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    [NPHCellularBridgeUIManager presentCellularError:v15 onViewController:a1[4]];
  }

  [a1[4] updateUIFromCellularPlanItems];

  v23 = *MEMORY[0x277D85DE8];
}

BOOL __62__NPHCellularSetupViewController_ctCellularPlanInfoDidChange___block_invoke_320(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 domain];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getCTCellularPlanErrorDomainSymbolLoc_ptr;
  v12 = getCTCellularPlanErrorDomainSymbolLoc_ptr;
  if (!getCTCellularPlanErrorDomainSymbolLoc_ptr)
  {
    v5 = CellularPlanManagerLibrary();
    v10[3] = dlsym(v5, "CTCellularPlanErrorDomain");
    getCTCellularPlanErrorDomainSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    v8 = __62__NPHCellularSetupViewController_ctCellularPlanInfoDidChange___block_invoke_320_cold_1();
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  if ([v3 isEqualToString:*v4])
  {
    v6 = [v2 code] == 32;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)checkForSoftwareUpdate
{
  if (!self->_subManager)
  {
    v3 = [objc_alloc(MEMORY[0x277D64120]) initWithDelegate:0];
    subManager = self->_subManager;
    self->_subManager = v3;

    v5 = self->_subManager;

    [(SUBManager *)v5 scanForUpdates];
  }
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = NPHCellularSetupViewController;
  [(BPSWelcomeOptinViewController *)&v30 viewDidLoad];
  navigationController = [(NPHCellularSetupViewController *)self navigationController];
  presentationController = [navigationController presentationController];
  [presentationController setDelegate:self];

  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"AKASHI_NEXT" value:&stru_285611AE0 table:0];
  v8 = [v5 initWithTitle:v7 style:2 target:self action:sel_userTappedNext_];
  [(NPHCellularSetupViewController *)self setNextNavBarButtonItem:v8];

  v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_userTappedSkip_];
  [(NPHCellularSetupViewController *)self setCancelNavBarButtonItem:v9];

  v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  spinner = self->_spinner;
  self->_spinner = v10;

  [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
  view = [(NPHCellularSetupViewController *)self view];
  [view addSubview:self->_spinner];

  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  centerXAnchor = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  contentView = [(NPHCellularSetupViewController *)self contentView];
  centerXAnchor2 = [contentView centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v16 setActive:1];

  topAnchor = [(UIActivityIndicatorView *)self->_spinner topAnchor];
  contentView2 = [(NPHCellularSetupViewController *)self contentView];
  bottomAnchor = [contentView2 bottomAnchor];
  v20 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
  [v20 setActive:1];

  headerView = [(NPHCellularSetupViewController *)self headerView];
  v22 = [MEMORY[0x277D755B8] systemImageNamed:@"antenna.radiowaves.left.and.right" variableValue:0 withConfiguration:0.0];
  [headerView setIcon:v22 accessibilityLabel:0];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v24 = NPHCellularSetupShouldShowSpinnerNotification;
  v25 = +[NPHCellularBridgeUIManager sharedInstance];
  [defaultCenter addObserver:self selector:sel_updateUIToShowSpinner name:v24 object:v25];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v27 = NPHCellularPlanInfoDidChangeNotification;
  v28 = +[NPHCellularBridgeUIManager sharedInstance];
  [defaultCenter2 addObserver:self selector:sel_ctCellularPlanInfoDidChange_ name:v27 object:v28];

  v29 = +[NPHCellularBridgeUIManager sharedInstance];
  [v29 updateCellularPlansWithFetch:0];
}

- (id)titleString
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"AKASHI_TITLE" value:&stru_285611AE0 table:0];

  v5 = +[NPHCellularBridgeUIManager sharedInstance];
  if ([v5 isAnyCellularPlanActivating])
  {
    type = [(NPHCellularSetupViewController *)self type];

    if (type == 7)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  if ([(NPHCellularSetupViewController *)self isTinkerCrossCarrierSetUpFlow]&& [(NPHCellularSetupViewController *)self type]== 2)
  {
    v7 = +[NPHCellularBridgeUIManager sharedInstance];
    v19 = 0;
    [v7 consentRequiredRelevantCellularPlanItem:&v19];
    v8 = v19;

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"AKASHI_TITLE_CONSENT_TINKER" value:&stru_285611AE0 table:0];
    carrierName = [v8 carrierName];

    v13 = [v9 stringWithFormat:v11, carrierName];

LABEL_15:
    v4 = v13;
    goto LABEL_16;
  }

  v14 = +[NPHCellularBridgeUIManager sharedInstance];
  if ([v14 cellularPlanIsSetUp] && !-[NPHCellularSetupViewController isGeminiSetup](self, "isGeminiSetup"))
  {
    type2 = [(NPHCellularSetupViewController *)self type];

    if (type2 != 3)
    {
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = v15;
      v16 = @"AKASHI_TITLE_COMPLETE";
      goto LABEL_14;
    }
  }

  else
  {
  }

  if ([(NPHCellularSetupViewController *)self isTinkerCrossCarrierSetUpFlow]&& [(NPHCellularSetupViewController *)self type]== 7)
  {
LABEL_13:
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v15;
    v16 = @"AKASHI_TITLE_INSTALLING";
LABEL_14:
    v13 = [v15 localizedStringForKey:v16 value:&stru_285611AE0 table:0];

    goto LABEL_15;
  }

LABEL_16:

  return v4;
}

- (id)okayButtonTitle
{
  if (self->_shouldHideSkipButton)
  {
    v2 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = [v3 localizedStringForKey:@"AKASHI_NOT_NOW" value:&stru_285611AE0 table:0];
  }

  return v2;
}

- (void)userTappedNext:(id)next
{
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "Akashi - User tapped Next", v5, 2u);
  }

  [MEMORY[0x277D37A60] incrementSetUpEvent:13];
  [(NPHCellularSetupViewController *)self navigateToNextView];
}

- (void)userTappedContinue:(id)continue
{
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "Akashi - User tapped Continue", v5, 2u);
  }

  [(NPHCellularSetupViewController *)self navigateToNextView];
}

- (void)userTappedConsent:(id)consent
{
  v22 = *MEMORY[0x277D85DE8];
  consentCopy = consent;
  [MEMORY[0x277D37A60] incrementSetUpEvent:14];
  v5 = +[NPHCellularBridgeUIManager sharedInstance];
  selectedCellularPlan = [v5 selectedCellularPlan];

  suggestedChoiceButton = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  LODWORD(v5) = suggestedChoiceButton != consentCopy;

  v8 = nph_general_log();
  v9 = 2 * v5;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[NPHCellularSetupViewController userTappedConsent:]";
    *&buf[12] = 2112;
    *&buf[14] = consentCopy;
    *&buf[22] = 2048;
    v20 = v9;
    _os_log_impl(&dword_243333000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@ consentResponse: %ld", buf, 0x20u);
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v10 = getCTCellularPlanManagerClass_softClass;
  v18 = getCTCellularPlanManagerClass_softClass;
  if (!getCTCellularPlanManagerClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCTCellularPlanManagerClass_block_invoke;
    v20 = &unk_278DAC960;
    v21 = &v15;
    __getCTCellularPlanManagerClass_block_invoke(buf);
    v10 = v16[3];
  }

  v11 = v10;
  _Block_object_dispose(&v15, 8);
  sharedManager = [v10 sharedManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__NPHCellularSetupViewController_userTappedConsent___block_invoke;
  v14[3] = &unk_278DAC870;
  v14[4] = self;
  v14[5] = v9;
  [sharedManager userDidProvideConsentResponse:v9 forPlan:selectedCellularPlan isRemote:1 completion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __52__NPHCellularSetupViewController_userTappedConsent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NPHCellularSetupViewController_userTappedConsent___block_invoke_2;
  block[3] = &unk_278DAC848;
  v5 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v5;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __52__NPHCellularSetupViewController_userTappedConsent___block_invoke_2(void *a1)
{
  v2 = a1 + 4;
  if (a1[4])
  {
    v3 = nph_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __52__NPHCellularSetupViewController_userTappedConsent___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = a1[5];
  if (a1[6])
  {
    return [v10 navigateToNextView];
  }

  else
  {
    return [v10 updateUIFromCellularPlanItems];
  }
}

- (void)navigateToNextView
{
  [objc_opt_class() setLoggedEvents:0];
  miniFlowDelegate = [(NPHCellularSetupViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];

  if ([(NPHCellularSetupViewController *)self configuration]== 1)
  {

    [(NPHCellularSetupViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else if ([(NPHCellularSetupViewController *)self configuration]== 2)
  {
    v4 = +[NPHCellularBridgeUIManager sharedInstance];
    [v4 finishRemoteProvisioning];
  }
}

- (void)userTappedSkip:(id)skip
{
  skipCopy = skip;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "Akashi - Skipped Setup", v8, 2u);
  }

  [MEMORY[0x277D37A60] incrementSetUpEvent:11];
  if ([(NPHCellularSetupViewController *)self type]== 2)
  {
    [(NPHCellularSetupViewController *)self userTappedConsent:skipCopy];
  }

  if ([(NPHCellularSetupViewController *)self configuration]== 2)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CellularSetupBridgeBuddyUI"];
    principalClass = [v6 principalClass];
    if (principalClass)
    {
      [MEMORY[0x277CF3450] markSkippedSetupPaneClassForCurrentDevice:principalClass];
    }
  }

  [(NPHCellularSetupViewController *)self navigateToNextView];
}

- (void)userTappedSetUp:(id)up
{
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "Akashi - User tapped Set Up", v5, 2u);
  }

  [MEMORY[0x277D37A60] incrementSetUpEvent:12];
  [(NPHCellularSetupViewController *)self setUpNow];
}

- (void)userTappedTransfer:(id)transfer
{
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "Akashi - User tapped Transfer", v5, 2u);
  }

  [MEMORY[0x277D37A60] incrementSetUpEvent:15];
  [(NPHCellularSetupViewController *)self transfer];
}

- (void)userTappedSetUpNew:(id)new
{
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "Akashi - User tapped Set Up New", buf, 2u);
  }

  if ([(NPHCellularSetupViewController *)self isGeminiSetup])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__NPHCellularSetupViewController_userTappedSetUpNew___block_invoke;
    block[3] = &unk_278DAC7B0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [MEMORY[0x277D37A60] incrementSetUpEvent:16];
    [(NPHCellularSetupViewController *)self setUpNow];
  }
}

- (void)setUpNow
{
  v3 = +[NPHCellularBridgeUIManager sharedInstance];
  cellularPlanRequiringPreInstallConsent = [v3 cellularPlanRequiringPreInstallConsent];

  v5 = +[NPHCellularBridgeUIManager sharedInstance];
  v6 = v5;
  if (cellularPlanRequiringPreInstallConsent)
  {
    v7 = +[NPHCellularBridgeUIManager sharedInstance];
    cellularPlanRequiringPreInstallConsent2 = [v7 cellularPlanRequiringPreInstallConsent];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __42__NPHCellularSetupViewController_setUpNow__block_invoke;
    v16[3] = &unk_278DAC8C0;
    v16[4] = self;
    [v6 installPendingCellularPlan:cellularPlanRequiringPreInstallConsent2 withCompletion:v16];
  }

  else
  {
    serviceSubscriptionsToOfferUser = [v5 serviceSubscriptionsToOfferUser];
    firstObject = [serviceSubscriptionsToOfferUser firstObject];

    v11 = +[NPHCellularBridgeUIManager sharedInstance];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__NPHCellularSetupViewController_setUpNow__block_invoke_370;
    v13[3] = &unk_278DAC910;
    v14 = firstObject;
    selfCopy = self;
    v12 = firstObject;
    [v11 setUpCellularPlanOnViewController:self withContext:v12 withCompletion:v13];
  }
}

void __42__NPHCellularSetupViewController_setUpNow__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__NPHCellularSetupViewController_setUpNow__block_invoke_2;
  v6[3] = &unk_278DAC898;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __42__NPHCellularSetupViewController_setUpNow__block_invoke_2(uint64_t result)
{
  v1 = (result + 32);
  if (*(result + 32))
  {
    v2 = result;
    v3 = nph_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__NPHCellularSetupViewController_setUpNow__block_invoke_2_cold_1(v1, v3);
    }

    return [NPHCellularBridgeUIManager presentCellularError:*(v2 + 32) onViewController:*(v2 + 40)];
  }

  return result;
}

void __42__NPHCellularSetupViewController_setUpNow__block_invoke_370(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NPHCellularSetupViewController_setUpNow__block_invoke_2_371;
  block[3] = &unk_278DAC8E8;
  v8 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __42__NPHCellularSetupViewController_setUpNow__block_invoke_2_371(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = nph_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__NPHCellularSetupViewController_setUpNow__block_invoke_2_371_cold_1(a1, v2, v3);
    }

    [NPHCellularBridgeUIManager presentCellularError:*(a1 + 32) onViewController:*(a1 + 48)];
  }

  result = [*(a1 + 48) configuration];
  if (result == 1)
  {
    return [*(a1 + 48) navigateToNextView];
  }

  return result;
}

- (void)transfer
{
  v3 = +[NPHCellularBridgeUIManager sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__NPHCellularSetupViewController_transfer__block_invoke;
  v4[3] = &unk_278DAC8C0;
  v4[4] = self;
  [v3 transferCellularPlanOnViewController:self withCompletion:v4];
}

void __42__NPHCellularSetupViewController_transfer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NPHCellularSetupViewController_transfer__block_invoke_2;
  block[3] = &unk_278DAC938;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, &location);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);
}

void __42__NPHCellularSetupViewController_transfer__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = nph_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__NPHCellularSetupViewController_transfer__block_invoke_2_cold_1(v1, v3, v4, v5, v6, v7, v8, v9);
    }

    v10 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [NPHCellularBridgeUIManager presentCellularError:v10 onViewController:WeakRetained];
  }
}

- (void)userTappedSetUpCarrier:(id)carrier
{
  v18 = *MEMORY[0x277D85DE8];
  carrierCopy = carrier;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "Akashi - User tapped Set Up Carrier", buf, 2u);
  }

  v6 = objc_getAssociatedObject(carrierCopy, sel_updateUIToShowSetUpNowMultipleSubscriptions);

  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[NPHCellularSetupViewController userTappedSetUpCarrier:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "Akashi - %s subscriptionContext:%@", buf, 0x16u);
  }

  v8 = +[NPHCellularBridgeUIManager sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__NPHCellularSetupViewController_userTappedSetUpCarrier___block_invoke;
  v11[3] = &unk_278DAC910;
  v12 = v6;
  selfCopy = self;
  v9 = v6;
  [v8 setUpCellularPlanOnViewController:self withContext:v9 withCompletion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __57__NPHCellularSetupViewController_userTappedSetUpCarrier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NPHCellularSetupViewController_userTappedSetUpCarrier___block_invoke_2;
  block[3] = &unk_278DAC8E8;
  v8 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __57__NPHCellularSetupViewController_userTappedSetUpCarrier___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = nph_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __57__NPHCellularSetupViewController_userTappedSetUpCarrier___block_invoke_2_cold_1(a1, v2, v3);
    }

    [NPHCellularBridgeUIManager presentCellularError:*(a1 + 32) onViewController:*(a1 + 48)];
  }

  result = [*(a1 + 48) configuration];
  if (result == 1)
  {
    return [*(a1 + 48) navigateToNextView];
  }

  return result;
}

- (void)updateUIFromCellularPlanItems
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[NPHCellularSetupViewController updateUIFromCellularPlanItems]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "Akashi - %s", buf, 0xCu);
  }

  if (![(NPHCellularSetupViewController *)self isCellularSetupFlowComplete])
  {
    if (!self->_haveReceivedProxyPlanItems)
    {
      [(NPHCellularSetupViewController *)self updateUIToShowSpinner];
      goto LABEL_17;
    }

    v5 = +[NPHCellularBridgeUIManager sharedInstance];
    selectedCellularPlan = [v5 selectedCellularPlan];

    if (selectedCellularPlan)
    {
      plan = [selectedCellularPlan plan];
      status = [plan status];

      if (status == 6)
      {
        if (!self->_haveReceivedProxyPlanItems)
        {
          [NPHCellularSetupViewController updateUIFromCellularPlanItems];
        }

        [(NPHCellularSetupViewController *)self updateUIToShowPreinstall];
        goto LABEL_16;
      }
    }

    v9 = +[NPHCellularBridgeUIManager sharedInstance];
    v21 = 0;
    v10 = [v9 consentRequiredRelevantCellularPlanItem:&v21];
    v11 = v21;

    if (v10)
    {
      [(NPHCellularSetupViewController *)self updateUIToShowUserConsent:v10 relevantPlan:v11];
      goto LABEL_15;
    }

    v13 = +[NPHCellularBridgeUIManager sharedInstance];
    if ([v13 cellularPlanIsSetUp])
    {
      if ([(NPHCellularSetupViewController *)self configuration]!= 1)
      {

LABEL_30:
        if (!self->_haveReceivedProxyPlanItems)
        {
          [NPHCellularSetupViewController updateUIFromCellularPlanItems];
        }

        [(NPHCellularSetupViewController *)self updateUIToShowContinue];
        goto LABEL_15;
      }

      v14 = +[NPHCellularBridgeUIManager sharedInstance];
      shouldAllowUserToAddOrSetUpPlan = [v14 shouldAllowUserToAddOrSetUpPlan];

      if ((shouldAllowUserToAddOrSetUpPlan & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    if ([(NSArray *)self->_userVisibleErrors count])
    {
      v16 = +[NPHCellularBridgeUIManager sharedInstance];
      shouldAllowUserToAddOrSetUpPlan2 = [v16 shouldAllowUserToAddOrSetUpPlan];

      if ((shouldAllowUserToAddOrSetUpPlan2 & 1) == 0)
      {
        if (!self->_haveReceivedProxyPlanItems)
        {
          [NPHCellularSetupViewController updateUIFromCellularPlanItems];
        }

        [(NPHCellularSetupViewController *)self updateUIToShowUserVisibleError];
        goto LABEL_15;
      }
    }

    v18 = +[NPHCellularBridgeUIManager sharedInstance];
    if ([v18 cellularPlanIsSetUp])
    {
      if ([(NPHCellularSetupViewController *)self configuration]!= 1)
      {

        goto LABEL_15;
      }

      v19 = +[NPHCellularBridgeUIManager sharedInstance];
      shouldAllowUserToAddOrSetUpPlan3 = [v19 shouldAllowUserToAddOrSetUpPlan];

      if (!shouldAllowUserToAddOrSetUpPlan3)
      {
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }
    }

    else
    {
    }

    if (!self->_haveReceivedProxyPlanItems)
    {
      [NPHCellularSetupViewController updateUIFromCellularPlanItems];
    }

    [(NPHCellularSetupViewController *)self _decideWhetherToShowTransferOrSetup];
    goto LABEL_15;
  }

  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[NPHCellularSetupViewController updateUIFromCellularPlanItems]";
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s - cellular setup flow is complete", buf, 0xCu);
  }

LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateUIToShowSpinner
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[NPHCellularSetupViewController updateUIToShowSpinner]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "Akashi - %s", &v12, 0xCu);
  }

  [(NPHCellularSetupViewController *)self setType:0];
  [objc_opt_class() _logEventOncePerSession:4];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  if ([(NPHCellularSetupViewController *)self configuration]== 1)
  {
    [(NPHCellularSetupViewController *)self cancelNavBarButtonItem];
  }

  else
  {
    [(NPHCellularSetupViewController *)self nextNavBarButtonItem];
  }
  v5 = ;
  [navigationItem setRightBarButtonItem:v5];

  suggestedButtonTitle = self->_suggestedButtonTitle;
  self->_suggestedButtonTitle = 0;

  alternateButtonTitle = self->_alternateButtonTitle;
  self->_alternateButtonTitle = 0;

  alternateChoiceButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton setHidden:1];

  self->_shouldHideSkipButton = 1;
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"AKASHI_PLAN_UNKNOWN" value:&stru_285611AE0 table:0];
  [(NPHCellularSetupViewController *)self setDetailString:v10];

  [(BPSWelcomeOptinViewController *)self refreshViews];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateUIToShowContinue
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[NPHCellularSetupViewController updateUIToShowContinue]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "Akashi - %s", buf, 0xCu);
  }

  [(NPHCellularSetupViewController *)self setType:7];
  [(NPHCellularSetupViewController *)self setIsCellularSetupFlowComplete:1];
  [objc_opt_class() _logEventOncePerSession:6];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:0];

  self->_shouldHideSkipButton = 1;
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  v5 = +[NPHSharedUtilities isActiveDeviceTinker];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 localizedStringForKey:@"AKASHI_DONE" value:&stru_285611AE0 table:0];
    suggestedButtonTitle = self->_suggestedButtonTitle;
    self->_suggestedButtonTitle = v8;

    v10 = MGGetBoolAnswer();
    v11 = @"WIFI";
    if (v10)
    {
      v11 = @"WLAN";
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"AKASHI_TINKER_DETAIL_FYI_%@", v11];
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:v12 value:&stru_285611AE0 table:0];
    v16 = +[NPHCellularBridgeUIManager sharedInstance];
    tinkerFamilyMemberFirstName = [v16 tinkerFamilyMemberFirstName];
    v18 = [v13 stringWithFormat:v15, tinkerFamilyMemberFirstName];
    [(NPHCellularSetupViewController *)self setDetailString:v18];
  }

  else
  {
    v19 = [v6 localizedStringForKey:@"AKASHI_CONTINUE" value:&stru_285611AE0 table:0];
    v20 = self->_suggestedButtonTitle;
    self->_suggestedButtonTitle = v19;

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v12 localizedStringForKey:@"AKASHI_DETAIL_FYI" value:&stru_285611AE0 table:0];
    [(NPHCellularSetupViewController *)self setDetailString:v14];
  }

  suggestedChoiceButton = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton removeTarget:self action:0 forControlEvents:64];

  suggestedChoiceButton2 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton2 addTarget:self action:sel_userTappedContinue_ forControlEvents:64];

  alternateButtonTitle = self->_alternateButtonTitle;
  self->_alternateButtonTitle = 0;

  alternateChoiceButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton removeTarget:self action:0 forControlEvents:64];

  alternateChoiceButton2 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton2 setHidden:1];

  [(BPSWelcomeOptinViewController *)self refreshViews];
  v26 = *MEMORY[0x277D85DE8];
}

- (void)updateUIToShowPreinstall
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[NPHCellularSetupViewController updateUIToShowPreinstall]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "Akashi - %s", &v12, 0xCu);
  }

  [(NPHCellularSetupViewController *)self setType:1];
  [objc_opt_class() _logEventOncePerSession:7];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  if ([(NPHCellularSetupViewController *)self configuration]== 1)
  {
    cancelNavBarButtonItem = [(NPHCellularSetupViewController *)self cancelNavBarButtonItem];
    [navigationItem setRightBarButtonItem:cancelNavBarButtonItem];
  }

  else
  {
    [navigationItem setRightBarButtonItem:0];
  }

  suggestedButtonTitle = self->_suggestedButtonTitle;
  self->_suggestedButtonTitle = 0;

  alternateButtonTitle = self->_alternateButtonTitle;
  self->_alternateButtonTitle = 0;

  alternateChoiceButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton setHidden:1];

  self->_shouldHideSkipButton = 1;
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"AKASHI_PLAN_PREINSTALL" value:&stru_285611AE0 table:0];
  [(NPHCellularSetupViewController *)self setDetailString:v10];

  [(BPSWelcomeOptinViewController *)self refreshViews];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateUIToShowUserConsent:(int64_t)consent relevantPlan:(id)plan
{
  v33 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315650;
    v28 = "[NPHCellularSetupViewController updateUIToShowUserConsent:relevantPlan:]";
    v29 = 2048;
    consentCopy = consent;
    v31 = 2112;
    v32 = planCopy;
    _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "Akashi - %s consentType:%ld relevantPlanItem:%@", &v27, 0x20u);
  }

  [(NPHCellularSetupViewController *)self setType:2];
  [objc_opt_class() _logEventOncePerSession:10];
  v8 = +[NPHCellularBridgeUIManager sharedInstance];
  v9 = [v8 userConsentMessageForConsentType:consent relevantPlanItem:planCopy];

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  if ([(NPHCellularSetupViewController *)self configuration]== 1)
  {
    cancelNavBarButtonItem = [(NPHCellularSetupViewController *)self cancelNavBarButtonItem];
    [navigationItem setRightBarButtonItem:cancelNavBarButtonItem];
  }

  else
  {
    [navigationItem setRightBarButtonItem:0];
  }

  isTinkerCrossCarrierSetUpFlow = [(NPHCellularSetupViewController *)self isTinkerCrossCarrierSetUpFlow];
  v13 = 0x277CCA000;
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = v14;
  if (isTinkerCrossCarrierSetUpFlow)
  {
    v16 = @"AKASHI_CONSENT_TINKER";
  }

  else
  {
    v16 = @"AKASHI_CONTINUE";
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_285611AE0 table:0];
  objc_storeStrong(&self->_suggestedButtonTitle, v17);

  suggestedChoiceButton = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton removeTarget:self action:0 forControlEvents:64];

  suggestedChoiceButton2 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton2 addTarget:self action:sel_userTappedConsent_ forControlEvents:64];

  configuration = [(NPHCellularSetupViewController *)self configuration];
  if (configuration == 1)
  {
    v21 = 0;
  }

  else
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v13 localizedStringForKey:@"AKASHI_FINISH_UP_LATER" value:&stru_285611AE0 table:0];
  }

  objc_storeStrong(&self->_alternateButtonTitle, v21);
  if (configuration != 1)
  {
  }

  v22 = [(NPHCellularSetupViewController *)self configuration]== 1;
  alternateChoiceButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton setHidden:v22];

  alternateChoiceButton2 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton2 removeTarget:self action:0 forControlEvents:64];

  if ([(NPHCellularSetupViewController *)self configuration]== 2)
  {
    alternateChoiceButton3 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
    [alternateChoiceButton3 addTarget:self action:sel_userTappedConsent_ forControlEvents:64];
  }

  self->_shouldHideSkipButton = 1;
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  [(NPHCellularSetupViewController *)self setDetailString:v9];
  [(BPSWelcomeOptinViewController *)self refreshViews];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)updateUIToShowUserVisibleError
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[NPHCellularSetupViewController updateUIToShowUserVisibleError]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "Akashi - %s", buf, 0xCu);
  }

  [(NPHCellularSetupViewController *)self setType:8];
  [objc_opt_class() _logEventOncePerSession:9];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  if ([(NPHCellularSetupViewController *)self configuration]== 1)
  {
    cancelNavBarButtonItem = [(NPHCellularSetupViewController *)self cancelNavBarButtonItem];
    [navigationItem setRightBarButtonItem:cancelNavBarButtonItem];
  }

  else
  {
    [navigationItem setRightBarButtonItem:0];
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"AKASHI_CONTINUE" value:&stru_285611AE0 table:0];
  suggestedButtonTitle = self->_suggestedButtonTitle;
  self->_suggestedButtonTitle = v7;

  suggestedChoiceButton = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton removeTarget:self action:0 forControlEvents:64];

  suggestedChoiceButton2 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton2 addTarget:self action:sel_userTappedContinue_ forControlEvents:64];

  alternateButtonTitle = self->_alternateButtonTitle;
  self->_alternateButtonTitle = 0;

  alternateChoiceButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton removeTarget:self action:0 forControlEvents:64];

  alternateChoiceButton2 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton2 setHidden:1];

  v14 = [MEMORY[0x277CBEB98] setWithArray:self->_userVisibleErrors];
  allObjects = [v14 allObjects];

  v16 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = allObjects;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * i);
        localizedDescription = [v22 localizedDescription];
        [v16 appendString:localizedDescription];

        lastObject = [v17 lastObject];
        LOBYTE(v22) = [v22 isEqual:lastObject];

        if ((v22 & 1) == 0)
        {
          [v16 appendString:@"\r\r"];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v19);
  }

  self->_shouldHideSkipButton = 1;
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  [(NPHCellularSetupViewController *)self setDetailString:v16];
  [(BPSWelcomeOptinViewController *)self refreshViews];

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_setUpNowDetailString
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"AKASHI_MESSAGE_SET_UP_NOW" value:&stru_285611AE0 table:0];

  if (+[NPHSharedUtilities isActiveDeviceTinker])
  {
    v4 = MGGetBoolAnswer();
    v5 = @"WIFI";
    if (v4)
    {
      v5 = @"WLAN";
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"AKASHI_MESSAGE_TINKER_SET_UP_NOW_%@", v5];
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:v6 value:&stru_285611AE0 table:0];
    v10 = +[NPHCellularBridgeUIManager sharedInstance];
    tinkerFamilyMemberFirstName = [v10 tinkerFamilyMemberFirstName];
    v12 = [v7 stringWithFormat:v9, tinkerFamilyMemberFirstName];

    v3 = v12;
  }

  return v3;
}

- (void)updateUIToShowSetUpNow
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[NPHCellularSetupViewController updateUIToShowSetUpNow]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "Akashi - %s", &v16, 0xCu);
  }

  [(NPHCellularSetupViewController *)self setType:3];
  [objc_opt_class() _logEventOncePerSession:5];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  if ([(NPHCellularSetupViewController *)self configuration]== 1)
  {
    cancelNavBarButtonItem = [(NPHCellularSetupViewController *)self cancelNavBarButtonItem];
    [navigationItem setRightBarButtonItem:cancelNavBarButtonItem];
  }

  else
  {
    [navigationItem setRightBarButtonItem:0];
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"AKASHI_SETUP_NOW" value:&stru_285611AE0 table:0];
  suggestedButtonTitle = self->_suggestedButtonTitle;
  self->_suggestedButtonTitle = v7;

  suggestedChoiceButton = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton removeTarget:self action:0 forControlEvents:64];

  suggestedChoiceButton2 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton2 addTarget:self action:sel_userTappedSetUp_ forControlEvents:64];

  alternateButtonTitle = self->_alternateButtonTitle;
  self->_alternateButtonTitle = 0;

  alternateChoiceButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton removeTarget:self action:0 forControlEvents:64];

  alternateChoiceButton2 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton2 setHidden:1];

  self->_shouldHideSkipButton = 0;
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  _setUpNowDetailString = [(NPHCellularSetupViewController *)self _setUpNowDetailString];
  [(NPHCellularSetupViewController *)self setDetailString:_setUpNowDetailString];

  [(BPSWelcomeOptinViewController *)self refreshViews];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateUIToShowPlanTransferOrSetUpNewOptions
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[NPHCellularSetupViewController updateUIToShowPlanTransferOrSetUpNewOptions]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "Akashi - %s", buf, 0xCu);
  }

  [(NPHCellularSetupViewController *)self setType:4];
  v4 = +[NPHCellularBridgeUIManager sharedInstance];
  transferableRemotePlan = [v4 transferableRemotePlan];
  carrierName = [transferableRemotePlan carrierName];

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  if ([(NPHCellularSetupViewController *)self configuration]== 1)
  {
    cancelNavBarButtonItem = [(NPHCellularSetupViewController *)self cancelNavBarButtonItem];
    [navigationItem setRightBarButtonItem:cancelNavBarButtonItem];
  }

  else
  {
    [navigationItem setRightBarButtonItem:0];
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"AKASHI_SETUP_TRANSFER" value:&stru_285611AE0 table:0];
  v12 = [v9 stringWithFormat:v11, carrierName];
  suggestedButtonTitle = self->_suggestedButtonTitle;
  self->_suggestedButtonTitle = v12;

  suggestedChoiceButton = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton removeTarget:self action:0 forControlEvents:64];

  suggestedChoiceButton2 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton2 addTarget:self action:sel_userTappedTransfer_ forControlEvents:64];

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"AKASHI_SETUP_NEW" value:&stru_285611AE0 table:0];
  alternateButtonTitle = self->_alternateButtonTitle;
  self->_alternateButtonTitle = v17;

  alternateChoiceButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton removeTarget:self action:0 forControlEvents:64];

  alternateChoiceButton2 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton2 addTarget:self action:sel_userTappedSetUpNew_ forControlEvents:64];

  alternateChoiceButton3 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton3 setHidden:0];

  self->_shouldHideSkipButton = 0;
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  LODWORD(v16) = +[NPHSharedUtilities isActiveDeviceTinker];
  v22 = MEMORY[0x277CCACA8];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = v23;
  if (v16)
  {
    v25 = [v23 localizedStringForKey:@"AKASHI_MESSAGE_TRANSFER_OR_NEW_TINKER" value:&stru_285611AE0 table:0];
    v26 = +[NPHCellularBridgeUIManager sharedInstance];
    tinkerFamilyMemberFirstName = [v26 tinkerFamilyMemberFirstName];
    v28 = [v22 stringWithFormat:v25, tinkerFamilyMemberFirstName, carrierName];
    [(NPHCellularSetupViewController *)self setDetailString:v28];
  }

  else
  {
    v25 = [v23 localizedStringForKey:@"AKASHI_MESSAGE_TRANSFER_OR_NEW" value:&stru_285611AE0 table:0];
    v26 = [v22 stringWithFormat:v25, carrierName];
    [(NPHCellularSetupViewController *)self setDetailString:v26];
  }

  [(BPSWelcomeOptinViewController *)self refreshViews];
  v29 = *MEMORY[0x277D85DE8];
}

- (void)updateUIToShowSetUpNowMultipleSubscriptions
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v37 = "[NPHCellularSetupViewController updateUIToShowSetUpNowMultipleSubscriptions]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "Akashi - %s", buf, 0xCu);
  }

  [(NPHCellularSetupViewController *)self setType:5];
  [objc_opt_class() _logEventOncePerSession:5];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  if ([(NPHCellularSetupViewController *)self configuration]== 1)
  {
    cancelNavBarButtonItem = [(NPHCellularSetupViewController *)self cancelNavBarButtonItem];
    [navigationItem setRightBarButtonItem:cancelNavBarButtonItem];
  }

  else
  {
    [navigationItem setRightBarButtonItem:0];
  }

  v6 = 0x278DAC000uLL;
  v7 = +[NPHCellularBridgeUIManager sharedInstance];
  serviceSubscriptionsToOfferUser = [v7 serviceSubscriptionsToOfferUser];

  v9 = nph_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v37 = "[NPHCellularSetupViewController updateUIToShowSetUpNowMultipleSubscriptions]";
    v38 = 2112;
    v39 = serviceSubscriptionsToOfferUser;
    _os_log_impl(&dword_243333000, v9, OS_LOG_TYPE_DEFAULT, "Akashi - %s serviceSubscriptionsToOfferUser:%@", buf, 0x16u);
  }

  suggestedChoiceButton = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  v35[0] = suggestedChoiceButton;
  alternateChoiceButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  v35[1] = alternateChoiceButton;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];

  v12 = 0;
  v13 = 1;
  do
  {
    v34 = v13;
    v14 = [serviceSubscriptionsToOfferUser objectAtIndex:v12];
    [*(v6 + 1128) sharedInstance];
    v16 = v15 = v6;
    v17 = [v16 simLabelForSubscription:v14];

    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v19 localizedStringForKey:@"AKASHI_SETUP_CARRIER_NOW" value:&stru_285611AE0 table:0];
    v21 = v20 = serviceSubscriptionsToOfferUser;
    v22 = [v18 stringWithFormat:v21, v17];

    v23 = [v33 objectAtIndexedSubscript:v12];
    v24 = [v33 objectAtIndexedSubscript:v12];
    suggestedChoiceButton2 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];

    v26 = &OBJC_IVAR___NPHCellularSetupViewController__alternateButtonTitle;
    if (v24 == suggestedChoiceButton2)
    {
      v26 = &OBJC_IVAR___NPHCellularSetupViewController__suggestedButtonTitle;
    }

    v27 = *v26;
    v28 = *(&self->super.super.super.super.super.super.isa + v27);
    *(&self->super.super.super.super.super.super.isa + v27) = v22;
    v29 = v22;

    [v23 removeTarget:self action:0 forControlEvents:64];
    [v23 addTarget:self action:sel_userTappedSetUpCarrier_ forControlEvents:64];
    objc_setAssociatedObject(v23, sel_updateUIToShowSetUpNowMultipleSubscriptions, v14, 1);

    serviceSubscriptionsToOfferUser = v20;
    v6 = v15;

    v13 = 0;
    v12 = 1;
  }

  while ((v34 & 1) != 0);
  alternateChoiceButton2 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton2 setHidden:0];

  self->_shouldHideSkipButton = 0;
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  _setUpNowDetailString = [(NPHCellularSetupViewController *)self _setUpNowDetailString];
  [(NPHCellularSetupViewController *)self setDetailString:_setUpNowDetailString];

  [(BPSWelcomeOptinViewController *)self refreshViews];
  v32 = *MEMORY[0x277D85DE8];
}

- (void)updateUIToShowPlanSetUpTrial
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[NPHCellularSetupViewController updateUIToShowPlanSetUpTrial]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "Akashi - %s", &v16, 0xCu);
  }

  [(NPHCellularSetupViewController *)self setType:6];
  [objc_opt_class() _logEventOncePerSession:8];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  if ([(NPHCellularSetupViewController *)self configuration]== 1)
  {
    cancelNavBarButtonItem = [(NPHCellularSetupViewController *)self cancelNavBarButtonItem];
    [navigationItem setRightBarButtonItem:cancelNavBarButtonItem];
  }

  else
  {
    [navigationItem setRightBarButtonItem:0];
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"AKASHI_SETUP_NOW" value:&stru_285611AE0 table:0];
  suggestedButtonTitle = self->_suggestedButtonTitle;
  self->_suggestedButtonTitle = v7;

  suggestedChoiceButton = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton removeTarget:self action:0 forControlEvents:64];

  suggestedChoiceButton2 = [(BPSWelcomeOptinViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton2 addTarget:self action:sel_userTappedSetUp_ forControlEvents:64];

  alternateButtonTitle = self->_alternateButtonTitle;
  self->_alternateButtonTitle = 0;

  alternateChoiceButton = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton removeTarget:self action:0 forControlEvents:64];

  alternateChoiceButton2 = [(BPSWelcomeOptinViewController *)self alternateChoiceButton];
  [alternateChoiceButton2 setHidden:1];

  self->_shouldHideSkipButton = 0;
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  trialOfferMessage = [(NPHCellularSetupViewController *)self trialOfferMessage];
  [(NPHCellularSetupViewController *)self setDetailString:trialOfferMessage];

  [(BPSWelcomeOptinViewController *)self refreshViews];
  v15 = *MEMORY[0x277D85DE8];
}

- (id)trialOfferMessage
{
  v2 = +[NPHCellularBridgeUIManager sharedInstance];
  trialPlanType = [v2 trialPlanType];

  if (![(__CFString *)trialPlanType length])
  {

    trialPlanType = @"FREEORSPECIAL";
  }

  uppercaseString = [(__CFString *)trialPlanType uppercaseString];
  v5 = [@"AKASHI_MESSAGE_SET_UP_TRIAL_" stringByAppendingString:uppercaseString];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:v5 value:&stru_285611AE0 table:0];

  if ([v7 hasPrefix:@"AKASHI_MESSAGE_SET_UP_TRIAL_"])
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"AKASHI_MESSAGE_SET_UP_TRIAL_FREEORSPECIAL" value:&stru_285611AE0 table:0];

    v7 = v9;
  }

  v10 = +[NPHCellularBridgeUIManager sharedInstance];
  v11 = +[NPHCellularBridgeUIManager sharedInstance];
  serviceSubscriptionsOfferingTrialPlan = [v11 serviceSubscriptionsOfferingTrialPlan];
  firstObject = [serviceSubscriptionsOfferingTrialPlan firstObject];
  v14 = [v10 carrierNameForSubscription:firstObject];

  v15 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v14];

  return v15;
}

- (id)_fetchCSNfromMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [metadataCopy objectForKey:*MEMORY[0x277CF3438]];
  if (v4)
  {
    mEMORY[0x277D37B50] = [MEMORY[0x277D37B50] sharedInstance];
    v6 = [mEMORY[0x277D37B50] deviceForPairingID:v4];

    if (v6)
    {
      deviceCSN = [v6 valueForProperty:*MEMORY[0x277D37B60]];
LABEL_6:
      v9 = deviceCSN;
      goto LABEL_8;
    }
  }

  v8 = [metadataCopy objectForKey:*MEMORY[0x277CF3430]];
  v6 = v8;
  if (v8)
  {
    deviceCSN = [v8 deviceCSN];
    goto LABEL_6;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)_decideWhetherToShowTransferOrSetup
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[NPHCellularSetupViewController _decideWhetherToShowTransferOrSetup]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "Akashi - %s", &v16, 0xCu);
  }

  v4 = +[NPHCellularBridgeUIManager sharedInstance];
  isTinkerCrossCarrierSetup = [v4 isTinkerCrossCarrierSetup];

  if (isTinkerCrossCarrierSetup)
  {
    [(NPHCellularSetupViewController *)self setIsTinkerCrossCarrierSetUpFlow:1];
    [(NPHCellularSetupViewController *)self updateUIToShowSetUpNow];
  }

  else
  {
    if ([(NPHCellularSetupViewController *)self configuration]== 2)
    {
      delegate = [(BPSWelcomeOptinViewController *)self delegate];
      setupFlowUserInfo = [delegate setupFlowUserInfo];

      v8 = [(NPHCellularSetupViewController *)self _fetchCSNfromMetadata:setupFlowUserInfo];
      v9 = nph_general_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315650;
        v17 = "[NPHCellularSetupViewController _decideWhetherToShowTransferOrSetup]";
        v18 = 2112;
        v19 = setupFlowUserInfo;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_243333000, v9, OS_LOG_TYPE_DEFAULT, "%s - setupMetadata:%@ CSN:%@", &v16, 0x20u);
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = +[NPHCellularBridgeUIManager sharedInstance];
    v11 = [v10 shouldAllowUserToTransferPlanFromDeviceWithCSN:v8];

    if (v11)
    {
      [(NPHCellularSetupViewController *)self updateUIToShowPlanTransferOrSetUpNewOptions];
    }

    else if ([(NPHCellularSetupViewController *)self isGeminiSetup])
    {
      [(NPHCellularSetupViewController *)self updateUIToShowSetUpNowMultipleSubscriptions];
    }

    else
    {
      v12 = +[NPHCellularBridgeUIManager sharedInstance];
      serviceSubscriptionsOfferingTrialPlan = [v12 serviceSubscriptionsOfferingTrialPlan];
      v14 = [serviceSubscriptionsOfferingTrialPlan count];

      if (v14)
      {
        [(NPHCellularSetupViewController *)self updateUIToShowPlanSetUpTrial];
      }

      else
      {
        [(NPHCellularSetupViewController *)self updateUIToShowSetUpNow];
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  if ([(NPHCellularSetupViewController *)self configuration]== 1 && [(NPHCellularSetupViewController *)self type]== 2)
  {

    [(NPHCellularSetupViewController *)self userTappedConsent:0];
  }
}

- (id)tapToRadarMetadata
{
  v2 = [objc_alloc(MEMORY[0x277CF3460]) initWithComponent:3];

  return v2;
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

void __62__NPHCellularSetupViewController_ctCellularPlanInfoDidChange___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_243333000, a2, a3, "Error fetching cellular plan - %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __62__NPHCellularSetupViewController_ctCellularPlanInfoDidChange___block_invoke_320_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __52__NPHCellularSetupViewController_userTappedConsent___block_invoke_2_cold_1(v0);
}

void __52__NPHCellularSetupViewController_userTappedConsent___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_243333000, a2, a3, "Error from userDidProvideConsentResponse - %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __42__NPHCellularSetupViewController_setUpNow__block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 136315394;
  v5 = "[NPHCellularSetupViewController setUpNow]_block_invoke_2";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_243333000, a2, OS_LOG_TYPE_ERROR, "%s - Error in installPendingCellularPlan error:%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __42__NPHCellularSetupViewController_setUpNow__block_invoke_2_371_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *a2;
  v6 = 136315650;
  v7 = "[NPHCellularSetupViewController setUpNow]_block_invoke_2";
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = v4;
  _os_log_error_impl(&dword_243333000, log, OS_LOG_TYPE_ERROR, "%s - Error setting up cellular plan - subscriptionContext:%@ error:%@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__NPHCellularSetupViewController_transfer__block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_243333000, a2, a3, "Error trasferring cellular plan - %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __57__NPHCellularSetupViewController_userTappedSetUpCarrier___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_243333000, log, OS_LOG_TYPE_ERROR, "Error setting up cellular plan - subscriptionContext:%@ error:%@", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end