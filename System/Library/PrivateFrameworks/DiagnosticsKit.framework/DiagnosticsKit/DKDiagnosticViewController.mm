@interface DKDiagnosticViewController
- (BOOL)isCancelled;
- (DKDiagnosticViewController)init;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)createGradientLayer;
- (void)dismissInHostApp;
- (void)displayPressHomeLabelFor:(double)a3;
- (void)monitorIncomingCall;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resetGradientAndLabelBefore:(BOOL)a3;
- (void)setCancelled:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)setNeedsUpdateResponder;
- (void)setProgress:(id)a3;
- (void)shouldShowViewControllerInHostApp:(id)a3;
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

- (void)beginRequestWithExtensionContext:(id)a3
{
  v7.receiver = self;
  v7.super_class = DKDiagnosticViewController;
  v4 = a3;
  [(DKDiagnosticViewController *)&v7 beginRequestWithExtensionContext:v4];
  [(DKDiagnosticViewController *)self setContext:v4, v7.receiver, v7.super_class];

  v5 = objc_alloc_init(MEMORY[0x277CCAC48]);
  [(DKDiagnosticViewController *)self setProgress:v5];

  v6 = objc_alloc_init(DKMutableDiagnosticResult);
  [(DKDiagnosticViewController *)self setResult:v6];

  [(DKDiagnosticViewController *)self monitorIncomingCall];
}

- (void)setFinished:(BOOL)a3
{
  v3 = a3;
  v5 = [(DKDiagnosticViewController *)self finishedLock];
  [v5 lock];

  if (!v3 || self->_finished)
  {
    v11 = [(DKDiagnosticViewController *)self finishedLock];
    [v11 unlock];
  }

  else
  {
    self->_finished = v3;
    v6 = [(DKDiagnosticViewController *)self finishedLock];
    [v6 unlock];

    if ([(DKDiagnosticViewController *)self isSetup])
    {
      if (objc_opt_respondsToSelector())
      {
        [(DKDiagnosticViewController *)self teardown];
      }
    }

    v7 = [(DKDiagnosticViewController *)self result];
    [DKUtilities moveFilesToSharedContainerInMutableResult:v7];

    v8 = [(DKDiagnosticViewController *)self context];
    v9 = [(DKDiagnosticViewController *)self result];
    v10 = [v9 copy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__DKDiagnosticViewController_setFinished___block_invoke;
    v12[3] = &unk_278F6C050;
    v12[4] = self;
    [v8 completeWithDiagnosticResult:v10 completion:v12];
  }
}

void __42__DKDiagnosticViewController_setFinished___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) context];
  [v1 completeRequestReturningItems:MEMORY[0x277CBEBF8] completionHandler:0];
}

- (void)setCancelled:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cancelled = a3;
  objc_sync_exit(obj);
}

- (BOOL)isCancelled
{
  v2 = self;
  objc_sync_enter(v2);
  cancelled = v2->_cancelled;
  objc_sync_exit(v2);

  return cancelled;
}

- (void)setProgress:(id)a3
{
  objc_storeStrong(&self->_progress, a3);
  v5 = a3;
  [v5 addObserver:self forKeyPath:@"fractionCompleted" options:1 context:ProgressObserverContext_0];
  [v5 addObserver:self forKeyPath:@"totalUnitCount" options:1 context:ProgressObserverContext_0];
  [v5 addObserver:self forKeyPath:@"indeterminate" options:1 context:ProgressObserverContext_0];
  [v5 addObserver:self forKeyPath:@"userInfo.NSProgressEstimatedTimeRemainingKey" options:1 context:ProgressObserverContext_0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (ProgressObserverContext_0 == a6)
  {
    v7 = [DKDiagnosticProgress alloc];
    v8 = [(DKDiagnosticViewController *)self progress];
    v12 = [(DKDiagnosticProgress *)v7 initWithProgress:v8];

    v9 = [(DKDiagnosticViewController *)self context];
    v10 = [(DKDiagnosticViewController *)self context];
    v11 = [v10 testID];
    [v9 updateProgress:v12 forTest:v11];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = DKDiagnosticViewController;
    [(DKDiagnosticViewController *)&v13 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)monitorIncomingCall
{
  v3 = objc_alloc_init(MEMORY[0x277CBAF70]);
  [(DKDiagnosticViewController *)self setCallObserver:v3];

  v8 = [(DKDiagnosticViewController *)self callObserver];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 stringByAppendingString:@".incomingCallCancelQueue"];
  v7 = dispatch_queue_create([v6 UTF8String], 0);
  [v8 setDelegate:self queue:v7];
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v5 = [(DKDiagnosticViewController *)self context];
    [v5 cancelRemoteDiagnosticWithCompletion:0];

    [v6 setDelegate:0 queue:0];
  }
}

- (void)displayPressHomeLabelFor:(double)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v60 = a3;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "Displaying press home label for %f", buf, 0xCu);
  }

  if ([(DKDiagnosticViewController *)self shouldShowPressHomeLabel])
  {
    v6 = [(DKDiagnosticViewController *)self pressHomeLabel];

    if (!v6)
    {
      v7 = objc_alloc(MEMORY[0x277D760A0]);
      v8 = [MEMORY[0x277D760A8] sharedInstanceForStyle:2];
      v9 = [@"PRESS_BUTTON_TO_SKIP" localizedString];
      v10 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
      v11 = [v7 initWithSettings:v8 strength:v9 string:v10 font:0.25];
      [(DKDiagnosticViewController *)self setPressHomeLabel:v11];

      v12 = [(DKDiagnosticViewController *)self pressHomeLabel];
      [v12 setUserInteractionEnabled:0];

      v13 = [(DKDiagnosticViewController *)self pressHomeLabel];
      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

      v14 = [(DKDiagnosticViewController *)self view];
      v15 = [(DKDiagnosticViewController *)self pressHomeLabel];
      [v14 addSubview:v15];

      v16 = [(DKDiagnosticViewController *)self pressHomeLabel];
      v17 = [v16 layer];
      [v17 setZPosition:999.0];

      v47 = MEMORY[0x277CCAAD0];
      v55 = [(DKDiagnosticViewController *)self pressHomeLabel];
      v53 = [v55 bottomAnchor];
      v54 = [(DKDiagnosticViewController *)self view];
      v52 = [v54 bottomAnchor];
      v51 = [v53 constraintEqualToAnchor:v52 constant:-38.0];
      v58[0] = v51;
      v50 = [(DKDiagnosticViewController *)self pressHomeLabel];
      v48 = [v50 leadingAnchor];
      v49 = [(DKDiagnosticViewController *)self view];
      v46 = [v49 leadingAnchor];
      v45 = [v48 constraintEqualToAnchor:v46];
      v58[1] = v45;
      v44 = [(DKDiagnosticViewController *)self pressHomeLabel];
      v18 = [v44 trailingAnchor];
      v19 = [(DKDiagnosticViewController *)self view];
      v20 = [v19 trailingAnchor];
      v21 = [v18 constraintEqualToAnchor:v20];
      v58[2] = v21;
      v22 = [(DKDiagnosticViewController *)self pressHomeLabel];
      v23 = [v22 heightAnchor];
      v24 = [v23 constraintEqualToConstant:19.0];
      v58[3] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:4];
      [v47 activateConstraints:v25];
    }

    v26 = [(DKDiagnosticViewController *)self pressHomeLabel];
    [v26 setAlpha:1.0];

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
    v38 = [MEMORY[0x277CD9E00] animation];
    [v38 setDuration:0.6];
    v57[0] = v27;
    v57[1] = v33;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
    [v38 setAnimations:v39];

    [v38 setFillMode:v32];
    v40 = [(DKDiagnosticViewController *)self gradientLayer];
    [v40 removeAllAnimations];

    v41 = [(DKDiagnosticViewController *)self gradientLayer];
    [v41 addAnimation:v38 forKey:@"fade-in-animation"];

    v42 = dispatch_time(0, ((a3 + 0.6) * 1000000000.0));
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
  v4 = [MEMORY[0x277D75348] whiteColor];
  v26[0] = [v4 CGColor];
  v5 = [MEMORY[0x277D75348] clearColor];
  v26[1] = [v5 CGColor];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  [v3 setColors:v6];

  [(DKDiagnosticViewController *)self resetGradientAndLabelBefore:1];
  v7 = [(DKDiagnosticViewController *)self view];
  v8 = [v7 layer];
  [v8 addSublayer:v3];

  [(DKDiagnosticViewController *)self setGradientLayer:v3];
  v9 = [(DKDiagnosticViewController *)self pressHomeLabel];
  v10 = [v9 layer];
  [v10 setMask:v3];

  v11 = [(DKDiagnosticViewController *)self view];
  [v11 layoutIfNeeded];

  v12 = [(DKDiagnosticViewController *)self pressHomeLabel];
  [v12 frame];
  v14 = v13;
  v15 = [(DKDiagnosticViewController *)self pressHomeLabel];
  [v15 frame];
  v17 = hypot(v14, v16);

  v18 = fmax(v17 * 2.0 + 32.0, 364.0);
  v19 = [(DKDiagnosticViewController *)self pressHomeLabel];
  [v19 bounds];
  MidX = CGRectGetMidX(v27);
  v21 = [(DKDiagnosticViewController *)self pressHomeLabel];
  [v21 bounds];
  MidY = CGRectGetMidY(v28);

  v23 = [(DKDiagnosticViewController *)self gradientLayer];
  [v23 setBounds:{0.0, 0.0, v18, v18}];

  v24 = [(DKDiagnosticViewController *)self gradientLayer];
  [v24 setPosition:{MidX, MidY + 32.0}];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)resetGradientAndLabelBefore:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v5 = [(DKDiagnosticViewController *)self pressHomeLabel];
  [v5 setAlpha:1.0];

  v6 = [(DKDiagnosticViewController *)self gradientLayer];
  v7 = v6;
  if (v3)
  {
    [v6 setLocations:&unk_285B929A8];

    v8 = [(DKDiagnosticViewController *)self gradientLayer];
    v9 = 0.0;
    v10 = 0.0;
  }

  else
  {
    [v6 setLocations:&unk_285B929C0];

    v8 = [(DKDiagnosticViewController *)self gradientLayer];
    v9 = 1.0;
    v10 = 1.0;
  }

  CATransform3DMakeScale(&v11, v9, v10, 1.0);
  [v8 setTransform:&v11];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)shouldShowViewControllerInHostApp:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(DKDiagnosticViewController *)self shouldPresentInHostApp]);
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

  v4 = [(DKDiagnosticViewController *)self context];
  [v4 dismissRemoteDiagnosticViewControllerWithCompletion:&__block_literal_global_3];
}

@end