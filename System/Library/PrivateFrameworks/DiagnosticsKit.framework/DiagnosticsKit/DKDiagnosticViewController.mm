@interface DKDiagnosticViewController
- (BOOL)isCancelled;
- (DKDiagnosticViewController)init;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)callObserver:(id)observer callChanged:(id)changed;
- (void)createGradientLayer;
- (void)dismissInHostApp;
- (void)displayPressHomeLabelFor:(double)for;
- (void)monitorIncomingCall;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)resetGradientAndLabelBefore:(BOOL)before;
- (void)setCancelled:(BOOL)cancelled;
- (void)setFinished:(BOOL)finished;
- (void)setNeedsUpdateResponder;
- (void)setProgress:(id)progress;
- (void)shouldShowViewControllerInHostApp:(id)app;
- (void)viewDidLoad;
@end

@implementation DKDiagnosticViewController

- (DKDiagnosticViewController)init
{
  v9.receiver = self;
  v9.super_class = DKDiagnosticViewController;
  v2 = [(DKDiagnosticViewController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_cancelled = 0;
    v2->_setup = 0;
    v2->_finished = 0;
    v4 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    finishedLock = v3->_finishedLock;
    v3->_finishedLock = v4;

    v3->_shouldShowPressHomeLabel = 1;
    v6 = objc_alloc_init(MEMORY[0x277CCAC48]);
    progress = v3->_progress;
    v3->_progress = v6;
  }

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = DKDiagnosticViewController;
  [(DKDiagnosticViewController *)&v5 viewDidLoad];
  v3 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__DKDiagnosticViewController_viewDidLoad__block_invoke;
  block[3] = &unk_278F6C050;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

- (void)beginRequestWithExtensionContext:(id)context
{
  v7.receiver = self;
  v7.super_class = DKDiagnosticViewController;
  contextCopy = context;
  [(DKDiagnosticViewController *)&v7 beginRequestWithExtensionContext:contextCopy];
  [(DKDiagnosticViewController *)self setContext:contextCopy, v7.receiver, v7.super_class];

  v5 = objc_alloc_init(MEMORY[0x277CCAC48]);
  [(DKDiagnosticViewController *)self setProgress:v5];

  v6 = objc_alloc_init(DKMutableDiagnosticResult);
  [(DKDiagnosticViewController *)self setResult:v6];

  [(DKDiagnosticViewController *)self monitorIncomingCall];
}

- (void)setFinished:(BOOL)finished
{
  finishedCopy = finished;
  finishedLock = [(DKDiagnosticViewController *)self finishedLock];
  [finishedLock lock];

  if (!finishedCopy || self->_finished)
  {
    finishedLock2 = [(DKDiagnosticViewController *)self finishedLock];
    [finishedLock2 unlock];
  }

  else
  {
    self->_finished = finishedCopy;
    finishedLock3 = [(DKDiagnosticViewController *)self finishedLock];
    [finishedLock3 unlock];

    if ([(DKDiagnosticViewController *)self isSetup])
    {
      if (objc_opt_respondsToSelector())
      {
        [(DKDiagnosticViewController *)self teardown];
      }
    }

    result = [(DKDiagnosticViewController *)self result];
    [DKUtilities moveFilesToSharedContainerInMutableResult:result];

    context = [(DKDiagnosticViewController *)self context];
    result2 = [(DKDiagnosticViewController *)self result];
    v10 = [result2 copy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__DKDiagnosticViewController_setFinished___block_invoke;
    v12[3] = &unk_278F6C050;
    v12[4] = self;
    [context completeWithDiagnosticResult:v10 completion:v12];
  }
}

void __42__DKDiagnosticViewController_setFinished___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) context];
  [v1 completeRequestReturningItems:MEMORY[0x277CBEBF8] completionHandler:0];
}

- (void)setCancelled:(BOOL)cancelled
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cancelled = cancelled;
  objc_sync_exit(obj);
}

- (BOOL)isCancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cancelled = selfCopy->_cancelled;
  objc_sync_exit(selfCopy);

  return cancelled;
}

- (void)setProgress:(id)progress
{
  objc_storeStrong(&self->_progress, progress);
  progressCopy = progress;
  [progressCopy addObserver:self forKeyPath:@"fractionCompleted" options:1 context:ProgressObserverContext_0];
  [progressCopy addObserver:self forKeyPath:@"totalUnitCount" options:1 context:ProgressObserverContext_0];
  [progressCopy addObserver:self forKeyPath:@"indeterminate" options:1 context:ProgressObserverContext_0];
  [progressCopy addObserver:self forKeyPath:@"userInfo.NSProgressEstimatedTimeRemainingKey" options:1 context:ProgressObserverContext_0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (ProgressObserverContext_0 == context)
  {
    v7 = [DKDiagnosticProgress alloc];
    progress = [(DKDiagnosticViewController *)self progress];
    v12 = [(DKDiagnosticProgress *)v7 initWithProgress:progress];

    context = [(DKDiagnosticViewController *)self context];
    context2 = [(DKDiagnosticViewController *)self context];
    testID = [context2 testID];
    [context updateProgress:v12 forTest:testID];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = DKDiagnosticViewController;
    [(DKDiagnosticViewController *)&v13 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)monitorIncomingCall
{
  v3 = objc_alloc_init(MEMORY[0x277CBAF70]);
  [(DKDiagnosticViewController *)self setCallObserver:v3];

  callObserver = [(DKDiagnosticViewController *)self callObserver];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v6 = [bundleIdentifier stringByAppendingString:@".incomingCallCancelQueue"];
  v7 = dispatch_queue_create([v6 UTF8String], 0);
  [callObserver setDelegate:self queue:v7];
}

- (void)callObserver:(id)observer callChanged:(id)changed
{
  if (changed)
  {
    observerCopy = observer;
    context = [(DKDiagnosticViewController *)self context];
    [context cancelRemoteDiagnosticWithCompletion:0];

    [observerCopy setDelegate:0 queue:0];
  }
}

- (void)displayPressHomeLabelFor:(double)for
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    forCopy = for;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "Displaying press home label for %f", buf, 0xCu);
  }

  if ([(DKDiagnosticViewController *)self shouldShowPressHomeLabel])
  {
    pressHomeLabel = [(DKDiagnosticViewController *)self pressHomeLabel];

    if (!pressHomeLabel)
    {
      v7 = objc_alloc(MEMORY[0x277D760A0]);
      v8 = [MEMORY[0x277D760A8] sharedInstanceForStyle:2];
      localizedString = [@"PRESS_BUTTON_TO_SKIP" localizedString];
      v10 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
      v11 = [v7 initWithSettings:v8 strength:localizedString string:v10 font:0.25];
      [(DKDiagnosticViewController *)self setPressHomeLabel:v11];

      pressHomeLabel2 = [(DKDiagnosticViewController *)self pressHomeLabel];
      [pressHomeLabel2 setUserInteractionEnabled:0];

      pressHomeLabel3 = [(DKDiagnosticViewController *)self pressHomeLabel];
      [pressHomeLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

      view = [(DKDiagnosticViewController *)self view];
      pressHomeLabel4 = [(DKDiagnosticViewController *)self pressHomeLabel];
      [view addSubview:pressHomeLabel4];

      pressHomeLabel5 = [(DKDiagnosticViewController *)self pressHomeLabel];
      layer = [pressHomeLabel5 layer];
      [layer setZPosition:999.0];

      v47 = MEMORY[0x277CCAAD0];
      pressHomeLabel6 = [(DKDiagnosticViewController *)self pressHomeLabel];
      bottomAnchor = [pressHomeLabel6 bottomAnchor];
      view2 = [(DKDiagnosticViewController *)self view];
      bottomAnchor2 = [view2 bottomAnchor];
      v51 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-38.0];
      v58[0] = v51;
      pressHomeLabel7 = [(DKDiagnosticViewController *)self pressHomeLabel];
      leadingAnchor = [pressHomeLabel7 leadingAnchor];
      view3 = [(DKDiagnosticViewController *)self view];
      leadingAnchor2 = [view3 leadingAnchor];
      v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v58[1] = v45;
      pressHomeLabel8 = [(DKDiagnosticViewController *)self pressHomeLabel];
      trailingAnchor = [pressHomeLabel8 trailingAnchor];
      view4 = [(DKDiagnosticViewController *)self view];
      trailingAnchor2 = [view4 trailingAnchor];
      v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v58[2] = v21;
      pressHomeLabel9 = [(DKDiagnosticViewController *)self pressHomeLabel];
      heightAnchor = [pressHomeLabel9 heightAnchor];
      v24 = [heightAnchor constraintEqualToConstant:19.0];
      v58[3] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:4];
      [v47 activateConstraints:v25];
    }

    pressHomeLabel10 = [(DKDiagnosticViewController *)self pressHomeLabel];
    [pressHomeLabel10 setAlpha:1.0];

    [(DKDiagnosticViewController *)self createGradientLayer];
    v27 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
    [v27 setFromValue:&unk_285B92948];
    [v27 setToValue:&unk_285B92958];
    [v27 setDuration:0.6];
    LODWORD(v28) = 1.0;
    LODWORD(v29) = 1028443341;
    LODWORD(v30) = 1041865114;
    v31 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v29 :0.0 :v30 :v28];
    [v27 setTimingFunction:v31];

    v32 = *MEMORY[0x277CDA228];
    [v27 setFillMode:*MEMORY[0x277CDA228]];
    v33 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"locations"];
    [v33 setFromValue:&unk_285B92978];
    [v33 setToValue:&unk_285B92990];
    [v33 setDuration:0.6];
    LODWORD(v34) = 1.0;
    LODWORD(v35) = 1028443341;
    LODWORD(v36) = 1041865114;
    v37 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v35 :0.0 :v36 :v34];
    [v33 setTimingFunction:v37];

    [v33 setFillMode:v32];
    animation = [MEMORY[0x277CD9E00] animation];
    [animation setDuration:0.6];
    v57[0] = v27;
    v57[1] = v33;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
    [animation setAnimations:v39];

    [animation setFillMode:v32];
    gradientLayer = [(DKDiagnosticViewController *)self gradientLayer];
    [gradientLayer removeAllAnimations];

    gradientLayer2 = [(DKDiagnosticViewController *)self gradientLayer];
    [gradientLayer2 addAnimation:animation forKey:@"fade-in-animation"];

    v42 = dispatch_time(0, ((for + 0.6) * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__DKDiagnosticViewController_displayPressHomeLabelFor___block_invoke;
    block[3] = &unk_278F6C050;
    block[4] = self;
    dispatch_after(v42, MEMORY[0x277D85CD0], block);
  }

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t __55__DKDiagnosticViewController_displayPressHomeLabelFor___block_invoke(uint64_t a1)
{
  v2 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248B9D000, v2, OS_LOG_TYPE_DEFAULT, "Fading out the press home label", buf, 2u);
  }

  [*(a1 + 32) resetGradientAndLabelBefore:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__DKDiagnosticViewController_displayPressHomeLabelFor___block_invoke_61;
  v4[3] = &unk_278F6C050;
  v4[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.7];
}

void __55__DKDiagnosticViewController_displayPressHomeLabelFor___block_invoke_61(uint64_t a1)
{
  v1 = [*(a1 + 32) pressHomeLabel];
  [v1 setAlpha:0.0];

  v2 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_248B9D000, v2, OS_LOG_TYPE_DEFAULT, "Press home label alpha is 0 now", v3, 2u);
  }
}

- (void)createGradientLayer
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CD9EB0]);
  [v3 setType:*MEMORY[0x277CDA6A0]];
  [v3 setStartPoint:{0.5, 0.5}];
  [v3 setEndPoint:{1.0, 1.0}];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v26[0] = [whiteColor CGColor];
  clearColor = [MEMORY[0x277D75348] clearColor];
  v26[1] = [clearColor CGColor];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  [v3 setColors:v6];

  [(DKDiagnosticViewController *)self resetGradientAndLabelBefore:1];
  view = [(DKDiagnosticViewController *)self view];
  layer = [view layer];
  [layer addSublayer:v3];

  [(DKDiagnosticViewController *)self setGradientLayer:v3];
  pressHomeLabel = [(DKDiagnosticViewController *)self pressHomeLabel];
  layer2 = [pressHomeLabel layer];
  [layer2 setMask:v3];

  view2 = [(DKDiagnosticViewController *)self view];
  [view2 layoutIfNeeded];

  pressHomeLabel2 = [(DKDiagnosticViewController *)self pressHomeLabel];
  [pressHomeLabel2 frame];
  v14 = v13;
  pressHomeLabel3 = [(DKDiagnosticViewController *)self pressHomeLabel];
  [pressHomeLabel3 frame];
  v17 = hypot(v14, v16);

  v18 = fmax(v17 * 2.0 + 32.0, 364.0);
  pressHomeLabel4 = [(DKDiagnosticViewController *)self pressHomeLabel];
  [pressHomeLabel4 bounds];
  MidX = CGRectGetMidX(v27);
  pressHomeLabel5 = [(DKDiagnosticViewController *)self pressHomeLabel];
  [pressHomeLabel5 bounds];
  MidY = CGRectGetMidY(v28);

  gradientLayer = [(DKDiagnosticViewController *)self gradientLayer];
  [gradientLayer setBounds:{0.0, 0.0, v18, v18}];

  gradientLayer2 = [(DKDiagnosticViewController *)self gradientLayer];
  [gradientLayer2 setPosition:{MidX, MidY + 32.0}];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)resetGradientAndLabelBefore:(BOOL)before
{
  beforeCopy = before;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  pressHomeLabel = [(DKDiagnosticViewController *)self pressHomeLabel];
  [pressHomeLabel setAlpha:1.0];

  gradientLayer = [(DKDiagnosticViewController *)self gradientLayer];
  v7 = gradientLayer;
  if (beforeCopy)
  {
    [gradientLayer setLocations:&unk_285B929A8];

    gradientLayer2 = [(DKDiagnosticViewController *)self gradientLayer];
    v9 = 0.0;
    v10 = 0.0;
  }

  else
  {
    [gradientLayer setLocations:&unk_285B929C0];

    gradientLayer2 = [(DKDiagnosticViewController *)self gradientLayer];
    v9 = 1.0;
    v10 = 1.0;
  }

  CATransform3DMakeScale(&v11, v9, v10, 1.0);
  [gradientLayer2 setTransform:&v11];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)shouldShowViewControllerInHostApp:(id)app
{
  appCopy = app;
  (*(app + 2))(appCopy, [(DKDiagnosticViewController *)self shouldPresentInHostApp]);
}

- (void)setNeedsUpdateResponder
{
  [(DKDiagnosticViewController *)self resignFirstResponder];

  [(DKDiagnosticViewController *)self becomeFirstResponder];
}

- (void)dismissInHostApp
{
  v3 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248B9D000, v3, OS_LOG_TYPE_DEFAULT, "Telling host app that this DK's view controller should not be shown", v5, 2u);
  }

  context = [(DKDiagnosticViewController *)self context];
  [context dismissRemoteDiagnosticViewControllerWithCompletion:&__block_literal_global_3];
}

@end