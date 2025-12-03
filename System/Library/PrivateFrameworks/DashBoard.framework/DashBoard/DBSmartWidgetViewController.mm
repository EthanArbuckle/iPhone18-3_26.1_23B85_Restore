@interface DBSmartWidgetViewController
- (BOOL)_shouldUpdateFocusForTouchpadInContext:(id)context;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isHighPriority;
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (DBSmartWidgetAnimating)animationDelegate;
- (DBSmartWidgetViewController)initWithEnvironment:(id)environment engine:(id)engine animationDelegate:(id)delegate;
- (id)_focusHighlightColor;
- (id)linearFocusItems;
- (id)preferredFocusEnvironments;
- (void)_didUpdateFocusForTouchpadInContext:(id)context;
- (void)_nextPrediction;
- (void)_performAction;
- (void)_previousPrediction;
- (void)_refresh;
- (void)_setFocusButtonsEnabled:(BOOL)enabled;
- (void)_setupFocusButtons;
- (void)_updatePrediction;
- (void)_updateToMostRecentSuccessfulPrediction;
- (void)_updateWidgetWithPrediction:(id)prediction predictedSize:(CGSize)size operationID:(int64_t)d smartWidgetView:(id)view;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)finalizePredictionUpdate;
- (void)resolveForNoPredictions;
- (void)setSmartWidgetForeground:(BOOL)foreground;
- (void)setWantsToShowPrediction:(BOOL)prediction;
- (void)smartWidgetEngine:(id)engine didUpdateCurrentPredictions:(id)predictions;
- (void)updateAppearanceForWallpaper;
- (void)viewDidLoad;
- (void)widgetViewTapped;
@end

@implementation DBSmartWidgetViewController

- (BOOL)isHighPriority
{
  engine = [(DBSmartWidgetViewController *)self engine];
  hasHighPriorityPrediction = [engine hasHighPriorityPrediction];

  return hasHighPriorityPrediction;
}

- (DBSmartWidgetViewController)initWithEnvironment:(id)environment engine:(id)engine animationDelegate:(id)delegate
{
  engineCopy = engine;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = DBSmartWidgetViewController;
  v11 = [(DBWidgetViewController *)&v20 initWithEnvironment:environment];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_animationDelegate, delegateCopy);
    [(DBSmartWidgetView *)v12->_widgetView setEngine:engineCopy];
    v12->_currentPredictionIndex = 0;
    v13 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinnerView = v12->_spinnerView;
    v12->_spinnerView = v13;

    _labelColor = [MEMORY[0x277D75348] _labelColor];
    [(UIActivityIndicatorView *)v12->_spinnerView setColor:_labelColor];

    [(UIActivityIndicatorView *)v12->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v12->_spinnerView setHidesWhenStopped:1];
    v12->_usesCarouselStyle = 1;
    objc_storeStrong(&v12->_engine, engine);
    [(DBSmartWidgetViewController *)v12 updateAppearanceForWallpaper];
    objc_initWeak(&location, v12);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __76__DBSmartWidgetViewController_initWithEnvironment_engine_animationDelegate___block_invoke;
    v17[3] = &unk_278F02300;
    objc_copyWeak(&v18, &location);
    dispatch_async(MEMORY[0x277D85CD0], v17);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __76__DBSmartWidgetViewController_initWithEnvironment_engine_animationDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePrediction];
  v1 = [WeakRetained engine];
  [v1 addObserver:WeakRetained];
}

- (void)viewDidLoad
{
  v49[4] = *MEMORY[0x277D85DE8];
  v47.receiver = self;
  v47.super_class = DBSmartWidgetViewController;
  [(DBSmartWidgetViewController *)&v47 viewDidLoad];
  view = [(DBSmartWidgetViewController *)self view];
  [view setAccessibilityIdentifier:@"CARAppTodaySmartViewWidget"];

  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__performAction];
  [(DBSmartWidgetViewController *)self setActionRecognizer:v5];

  actionRecognizer = [(DBSmartWidgetViewController *)self actionRecognizer];
  [actionRecognizer setDelegate:self];

  contentView = [(DBWidgetViewController *)self contentView];
  actionRecognizer2 = [(DBSmartWidgetViewController *)self actionRecognizer];
  [contentView addGestureRecognizer:actionRecognizer2];

  actionRecognizer3 = [(DBSmartWidgetViewController *)self actionRecognizer];
  [v4 addObject:actionRecognizer3];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  LODWORD(actionRecognizer2) = [standardUserDefaults BOOLForKey:@"CARSmartWidgetDebugGestures"];

  if (actionRecognizer2)
  {
    v11 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__refresh];
    [(DBSmartWidgetViewController *)self setRefreshRecognizer:v11];

    refreshRecognizer = [(DBSmartWidgetViewController *)self refreshRecognizer];
    [refreshRecognizer setDelegate:self];

    contentView2 = [(DBWidgetViewController *)self contentView];
    refreshRecognizer2 = [(DBSmartWidgetViewController *)self refreshRecognizer];
    [contentView2 addGestureRecognizer:refreshRecognizer2];

    v15 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel__previousPrediction];
    [(DBSmartWidgetViewController *)self setPreviousPredictionRecognizer:v15];

    previousPredictionRecognizer = [(DBSmartWidgetViewController *)self previousPredictionRecognizer];
    [previousPredictionRecognizer setDelegate:self];

    previousPredictionRecognizer2 = [(DBSmartWidgetViewController *)self previousPredictionRecognizer];
    [previousPredictionRecognizer2 setDirection:2];

    contentView3 = [(DBWidgetViewController *)self contentView];
    previousPredictionRecognizer3 = [(DBSmartWidgetViewController *)self previousPredictionRecognizer];
    [contentView3 addGestureRecognizer:previousPredictionRecognizer3];

    v20 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel__nextPrediction];
    [(DBSmartWidgetViewController *)self setNextPredictionRecognizer:v20];

    nextPredictionRecognizer = [(DBSmartWidgetViewController *)self nextPredictionRecognizer];
    [nextPredictionRecognizer setDelegate:self];

    nextPredictionRecognizer2 = [(DBSmartWidgetViewController *)self nextPredictionRecognizer];
    [nextPredictionRecognizer2 setDirection:1];

    contentView4 = [(DBWidgetViewController *)self contentView];
    nextPredictionRecognizer3 = [(DBSmartWidgetViewController *)self nextPredictionRecognizer];
    [contentView4 addGestureRecognizer:nextPredictionRecognizer3];

    actionRecognizer4 = [(DBSmartWidgetViewController *)self actionRecognizer];
    v49[0] = actionRecognizer4;
    refreshRecognizer3 = [(DBSmartWidgetViewController *)self refreshRecognizer];
    v49[1] = refreshRecognizer3;
    previousPredictionRecognizer4 = [(DBSmartWidgetViewController *)self previousPredictionRecognizer];
    v49[2] = previousPredictionRecognizer4;
    nextPredictionRecognizer4 = [(DBSmartWidgetViewController *)self nextPredictionRecognizer];
    v49[3] = nextPredictionRecognizer4;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
    [v4 addObjectsFromArray:v29];
  }

  v30 = [MEMORY[0x277CBEB98] setWithArray:v4];
  [(DBSmartWidgetViewController *)self setRecognizers:v30];

  contentView5 = [(DBWidgetViewController *)self contentView];
  spinnerView = [(DBSmartWidgetViewController *)self spinnerView];
  [contentView5 addSubview:spinnerView];

  spinnerView2 = [(DBSmartWidgetViewController *)self spinnerView];
  [spinnerView2 startAnimating];

  v45 = MEMORY[0x277CCAAD0];
  spinnerView3 = [(DBSmartWidgetViewController *)self spinnerView];
  centerXAnchor = [spinnerView3 centerXAnchor];
  contentView6 = [(DBWidgetViewController *)self contentView];
  centerXAnchor2 = [contentView6 centerXAnchor];
  v37 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v48[0] = v37;
  spinnerView4 = [(DBSmartWidgetViewController *)self spinnerView];
  centerYAnchor = [spinnerView4 centerYAnchor];
  contentView7 = [(DBWidgetViewController *)self contentView];
  centerYAnchor2 = [contentView7 centerYAnchor];
  [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v42 = v44 = v4;
  v48[1] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  [v45 activateConstraints:v43];
}

- (void)_performAction
{
  v14 = *MEMORY[0x277D85DE8];
  widgetView = [self widgetView];
  prediction = [widgetView prediction];
  primaryActionBlock = [prediction primaryActionBlock];
  if (primaryActionBlock)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  widgetView2 = [self widgetView];
  prediction2 = [widgetView2 prediction];
  v10 = 138543618;
  v11 = v7;
  v12 = 2114;
  v13 = prediction2;
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "(ViewController) Performing action: Primary %{public}@ %{public}@", &v10, 0x16u);
}

- (void)_refresh
{
  v3 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetViewController _refresh];
  }

  engine = [(DBSmartWidgetViewController *)self engine];
  [engine refreshPredictions];
}

- (void)_previousPrediction
{
  v3 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetViewController _previousPrediction];
  }

  [(DBSmartWidgetViewController *)self setCurrentPredictionIndex:[(DBSmartWidgetViewController *)self currentPredictionIndex]- 1];
  [(DBSmartWidgetViewController *)self _updatePrediction];
}

- (void)_nextPrediction
{
  v3 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetViewController _nextPrediction];
  }

  [(DBSmartWidgetViewController *)self setCurrentPredictionIndex:[(DBSmartWidgetViewController *)self currentPredictionIndex]+ 1];
  [(DBSmartWidgetViewController *)self _updatePrediction];
}

- (void)setWantsToShowPrediction:(BOOL)prediction
{
  if (self->_wantsToShowPrediction != prediction)
  {
    v5 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DBSmartWidgetViewController setWantsToShowPrediction:];
    }

    self->_wantsToShowPrediction = prediction;
  }
}

- (void)_updatePrediction
{
  v6 = *MEMORY[0x277D85DE8];
  engine = [self engine];
  currentPredictions = [engine currentPredictions];
  [currentPredictions count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "[Update Prediction] currentPredictions.count=%ld", v5, 0xCu);
}

void __48__DBSmartWidgetViewController__updatePrediction__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = DBLogForCategory(9uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v6)
    {
      v7 = [v3 localizedDescription];
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_INFO, "[Update Prediction] Carousel creation failed: %@", buf, 0xCu);
    }

    [WeakRetained setReadyToShowPrediction:0];
    v8 = [WeakRetained carouselVC];
    v9 = [v8 view];
    [v9 removeFromSuperview];

    v10 = [WeakRetained carouselVC];
    [v10 removeFromParentViewController];

    [WeakRetained setCarouselVC:0];
    [WeakRetained resolveForNoPredictions];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_INFO, "[Update Prediction] Carousel creation success", buf, 2u);
    }

    objc_initWeak(buf, WeakRetained);
    v11 = dispatch_time(0, 20000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__DBSmartWidgetViewController__updatePrediction__block_invoke_235;
    block[3] = &unk_278F02300;
    objc_copyWeak(&v13, buf);
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __48__DBSmartWidgetViewController__updatePrediction__block_invoke_235(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setReadyToShowPrediction:1];
  v1 = [WeakRetained carouselVC];
  v2 = [v1 view];
  [v2 setHidden:0];

  v3 = [WeakRetained spinnerView];
  [v3 stopAnimating];

  [WeakRetained updateAppearanceForWallpaper];
  [WeakRetained finalizePredictionUpdate];
  v4 = [WeakRetained animationDelegate];
  [v4 animateSmartWidget:&__block_literal_global_19 withOldUserInterfaceStyle:0 newUserInterfaceStyle:0 completion:0];
}

void __48__DBSmartWidgetViewController__updatePrediction__block_invoke_242(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;

  v4 = *(a1 + 64);
  if (v4 == [*(a1 + 32) currentOperationID])
  {
    v5 = DBLogForCategory(9uLL);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v6)
      {
        v7 = [*(a1 + 40) uniqueIdentifier];
        v8 = [v7 UUIDString];
        *buf = 138543618;
        v23 = v8;
        v24 = 2114;
        v25 = v3;
        _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_INFO, "[Update Prediction] Attempt 1 %{public}@ failed to prepare with error %{public}@. Making one more attempt", buf, 0x16u);
      }

      objc_initWeak(buf, *(a1 + 32));
      v9 = *(a1 + 48);
      v10 = *(a1 + 40);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __48__DBSmartWidgetViewController__updatePrediction__block_invoke_243;
      v17[3] = &unk_278F03170;
      objc_copyWeak(v20, buf);
      v11 = *(a1 + 32);
      v20[1] = *(a1 + 64);
      v17[4] = v11;
      v18 = *(a1 + 40);
      v21 = *(a1 + 72);
      v19 = *(a1 + 48);
      [v9 preparePrediction:v10 withPredictedSize:v17 completion:{*(a1 + 72), *(a1 + 80)}];

      objc_destroyWeak(v20);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v6)
      {
        v15 = [*(a1 + 40) uniqueIdentifier];
        v16 = [v15 UUIDString];
        *buf = 138543362;
        v23 = v16;
        _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_INFO, "[Update Prediction] Attempt 1 %{public}@ SUCCESS", buf, 0xCu);
      }

      [*(a1 + 32) _updateWidgetWithPrediction:*(a1 + 40) predictedSize:*(a1 + 64) operationID:*(a1 + 48) smartWidgetView:{*(a1 + 72), *(a1 + 80)}];
    }
  }

  else
  {
    v12 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [*(a1 + 40) uniqueIdentifier];
      v14 = [v13 UUIDString];
      *buf = 138543362;
      v23 = v14;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_INFO, "[Update Prediction] Attempt 1: Prediction %{public}@ is out-of-date. A new prediction has been requested.", buf, 0xCu);
    }
  }
}

void __48__DBSmartWidgetViewController__updatePrediction__block_invoke_243(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;

  v4 = *(a1 + 64);
  if (v4 == [*(a1 + 32) currentOperationID])
  {
    v5 = DBLogForCategory(9uLL);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v6)
      {
        v7 = [*(a1 + 40) uniqueIdentifier];
        v8 = [v7 UUIDString];
        v14 = 138543618;
        v15 = v8;
        v16 = 2114;
        v17 = v3;
        _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_INFO, "[Update Prediction] Attempt 2 %{public}@ failed to prepare with error %{public}@. Re-requesting previous successful prediction or non-LA prediction.", &v14, 0x16u);
      }

      [*(a1 + 32) _updateToMostRecentSuccessfulPrediction];
    }

    else
    {
      if (v6)
      {
        v12 = [*(a1 + 40) uniqueIdentifier];
        v13 = [v12 UUIDString];
        v14 = 138543362;
        v15 = v13;
        _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_INFO, "[Update Prediction] Attempt 2 %{public}@ SUCCESS", &v14, 0xCu);
      }

      [*(a1 + 32) _updateWidgetWithPrediction:*(a1 + 40) predictedSize:*(a1 + 64) operationID:*(a1 + 48) smartWidgetView:{*(a1 + 72), *(a1 + 80)}];
    }
  }

  else
  {
    v9 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 40) uniqueIdentifier];
      v11 = [v10 UUIDString];
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_INFO, "[Update Prediction] Attempt 2: Prediction %{public}@ is out-of-date. A new prediction has been requested.", &v14, 0xCu);
    }
  }
}

- (void)resolveForNoPredictions
{
  objc_initWeak(&location, self);
  animationDelegate = [(DBSmartWidgetViewController *)self animationDelegate];
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __54__DBSmartWidgetViewController_resolveForNoPredictions__block_invoke;
  v7 = &unk_278F02300;
  objc_copyWeak(&v8, &location);
  [animationDelegate animateSmartWidget:0 withOldUserInterfaceStyle:0 newUserInterfaceStyle:0 completion:&v4];

  [(DBSmartWidgetViewController *)self finalizePredictionUpdate:v4];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __54__DBSmartWidgetViewController_resolveForNoPredictions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __54__DBSmartWidgetViewController_resolveForNoPredictions__block_invoke_cold_1(WeakRetained);
  }

  v3 = [WeakRetained engine];
  v4 = [v3 currentPredictions];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = [WeakRetained widgetView];
    [v6 setPrediction:0];

    v7 = [WeakRetained spinnerView];
    [v7 startAnimating];
  }
}

- (void)_updateToMostRecentSuccessfulPrediction
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t __70__DBSmartWidgetViewController__updateToMostRecentSuccessfulPrediction__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 widgetView];
  v5 = [v4 prediction];
  v6 = [v3 isEqual:v5];

  return v6;
}

- (void)_updateWidgetWithPrediction:(id)prediction predictedSize:(CGSize)size operationID:(int64_t)d smartWidgetView:(id)view
{
  v35 = *MEMORY[0x277D85DE8];
  predictionCopy = prediction;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = [(DBSmartWidgetViewController *)self view];
    v11 = @"Home";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      view = [(DBSmartWidgetViewController *)self view];
      v11 = @"Calendar";
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      view = [(DBSmartWidgetViewController *)self view];
      if (isKindOfClass)
      {
        v11 = @"LiveActivity";
      }

      else
      {
        v11 = @"Unknown";
      }
    }
  }

  [view setAccessibilityValue:v11];

  widgetView = [(DBSmartWidgetViewController *)self widgetView];
  overrideUserInterfaceStyle = [widgetView overrideUserInterfaceStyle];

  overrideUserInterfaceStyle2 = [viewCopy overrideUserInterfaceStyle];
  uniqueIdentifier = [predictionCopy uniqueIdentifier];
  widgetView2 = [(DBSmartWidgetViewController *)self widgetView];
  prediction = [widgetView2 prediction];
  uniqueIdentifier2 = [prediction uniqueIdentifier];
  if ([uniqueIdentifier isEqual:uniqueIdentifier2])
  {
    animationDelegate = [(DBSmartWidgetViewController *)self animationDelegate];
    isSmartWidgetHidden = [animationDelegate isSmartWidgetHidden];

    if ((isSmartWidgetHidden & 1) == 0)
    {
      v21 = DBLogForCategory(9uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [DBSmartWidgetViewController _updateWidgetWithPrediction:predictedSize:operationID:smartWidgetView:];
      }

      widgetView3 = [(DBSmartWidgetViewController *)self widgetView];
      [widgetView3 setPrediction:predictionCopy];

      goto LABEL_17;
    }
  }

  else
  {
  }

  v23 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier3 = [predictionCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier3 UUIDString];
    *buf = 138543362;
    v34 = uUIDString;
    _os_log_impl(&dword_248146000, v23, OS_LOG_TYPE_INFO, "[Update Prediction] Widget View prediction %{public}@ prepared", buf, 0xCu);
  }

  spinnerView = [(DBSmartWidgetViewController *)self spinnerView];
  [spinnerView stopAnimating];

  objc_initWeak(buf, self);
  [(DBSmartWidgetViewController *)self setReadyToShowPrediction:1];
  animationDelegate2 = [(DBSmartWidgetViewController *)self animationDelegate];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __101__DBSmartWidgetViewController__updateWidgetWithPrediction_predictedSize_operationID_smartWidgetView___block_invoke;
  v29[3] = &unk_278F031C0;
  objc_copyWeak(v32, buf);
  v32[1] = overrideUserInterfaceStyle2;
  v30 = predictionCopy;
  v31 = viewCopy;
  [animationDelegate2 animateSmartWidget:v29 withOldUserInterfaceStyle:overrideUserInterfaceStyle newUserInterfaceStyle:overrideUserInterfaceStyle2 completion:0];

  objc_destroyWeak(v32);
  objc_destroyWeak(buf);
LABEL_17:
  [(DBSmartWidgetViewController *)self updateAppearanceForWallpaper];
  [(DBSmartWidgetViewController *)self finalizePredictionUpdate];
}

void __101__DBSmartWidgetViewController__updateWidgetWithPrediction_predictedSize_operationID_smartWidgetView___block_invoke(uint64_t a1)
{
  v39[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained view];
  [v3 setOverrideUserInterfaceStyle:*(a1 + 56)];

  v4 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __101__DBSmartWidgetViewController__updateWidgetWithPrediction_predictedSize_operationID_smartWidgetView___block_invoke_cold_1();
  }

  v5 = [WeakRetained widgetView];
  v6 = [v5 prediction];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v8 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __101__DBSmartWidgetViewController__updateWidgetWithPrediction_predictedSize_operationID_smartWidgetView___block_invoke_cold_2();
    }

    v9 = [WeakRetained widgetView];

    if (v9)
    {
      v10 = [WeakRetained widgetView];
      [v10 removeFromSuperview];

      [WeakRetained setWidgetView:0];
    }

    [WeakRetained setWidgetView:*(a1 + 40)];
    v11 = [WeakRetained widgetView];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [WeakRetained contentView];
    v13 = [WeakRetained widgetView];
    v14 = [WeakRetained spinnerView];
    [v12 insertSubview:v13 belowSubview:v14];

    v29 = MEMORY[0x277CCAAD0];
    v38 = [WeakRetained widgetView];
    v36 = [v38 topAnchor];
    v37 = [WeakRetained contentView];
    v35 = [v37 topAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v39[0] = v34;
    v33 = [WeakRetained widgetView];
    v31 = [v33 leftAnchor];
    v32 = [WeakRetained contentView];
    v30 = [v32 leftAnchor];
    v28 = [v31 constraintEqualToAnchor:v30];
    v39[1] = v28;
    v27 = [WeakRetained widgetView];
    v25 = [v27 rightAnchor];
    v26 = [WeakRetained contentView];
    v15 = [v26 rightAnchor];
    v16 = [v25 constraintEqualToAnchor:v15];
    v39[2] = v16;
    v17 = [WeakRetained widgetView];
    v18 = [v17 bottomAnchor];
    v19 = [WeakRetained contentView];
    v20 = [v19 bottomAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    v39[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
    [v29 activateConstraints:v22];
  }

  v23 = *(a1 + 32);
  v24 = [WeakRetained widgetView];
  [v24 setPrediction:v23];
}

- (void)finalizePredictionUpdate
{
  widgetView = [self widgetView];
  prediction = [widgetView prediction];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_10(&dword_248146000, v3, v4, "Current prediction (ViewController): %{public}@", v5, v6, v7, v8, v9);
}

- (void)setSmartWidgetForeground:(BOOL)foreground
{
  if (self->_usesCarouselStyle)
  {
    carouselVC = self->_carouselVC;
    if (carouselVC)
    {
      [(DBSmartWidgetCarousel *)carouselVC setCarouselForeground:foreground];
    }
  }
}

- (void)smartWidgetEngine:(id)engine didUpdateCurrentPredictions:(id)predictions
{
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetViewController smartWidgetEngine:didUpdateCurrentPredictions:];
  }

  [(DBSmartWidgetViewController *)self setCurrentPredictionIndex:0];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__DBSmartWidgetViewController_smartWidgetEngine_didUpdateCurrentPredictions___block_invoke;
  v6[3] = &unk_278F02300;
  objc_copyWeak(&v7, &location);
  dispatch_async(MEMORY[0x277D85CD0], v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __77__DBSmartWidgetViewController_smartWidgetEngine_didUpdateCurrentPredictions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePrediction];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  recognizers = [(DBSmartWidgetViewController *)self recognizers];
  v7 = [recognizers containsObject:recognizerCopy];

  return v7 ^ 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  nextPredictionRecognizer = [(DBSmartWidgetViewController *)self nextPredictionRecognizer];
  if (nextPredictionRecognizer == recognizerCopy)
  {
    v8 = 1;
  }

  else
  {
    previousPredictionRecognizer = [(DBSmartWidgetViewController *)self previousPredictionRecognizer];
    v8 = previousPredictionRecognizer == recognizerCopy;
  }

  return v8;
}

- (id)_focusHighlightColor
{
  environment = [(DBWidgetViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];
  currentWallpaper = [wallpaperPreferences currentWallpaper];

  traits = [currentWallpaper traits];
  if ([traits supportsDashboardPlatterMaterials])
  {
    [MEMORY[0x277D75348] _carSystemPrimaryColor];
  }

  else
  {
    [MEMORY[0x277D75348] _carSystemFocusColor];
  }
  v7 = ;

  return v7;
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  traitCollection = [(DBSmartWidgetViewController *)self traitCollection];
  if ([traitCollection primaryInteractionModel] == 8 && objc_msgSend(contextCopy, "focusHeading") != 16)
  {
    focusHeading = [contextCopy focusHeading];

    if (focusHeading != 32)
    {
      v6 = [(DBSmartWidgetViewController *)self _shouldUpdateFocusForTouchpadInContext:contextCopy];
      goto LABEL_5;
    }
  }

  else
  {
  }

  v10.receiver = self;
  v10.super_class = DBSmartWidgetViewController;
  v6 = [(DBSmartWidgetViewController *)&v10 shouldUpdateFocusInContext:contextCopy];
LABEL_5:
  v7 = v6;

  return v7;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = DBSmartWidgetViewController;
  [(DBSmartWidgetViewController *)&v9 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  traitCollection = [(DBSmartWidgetViewController *)self traitCollection];
  if ([traitCollection primaryInteractionModel] == 8 && objc_msgSend(contextCopy, "focusHeading") != 16)
  {
    focusHeading = [contextCopy focusHeading];

    if (focusHeading != 32)
    {
      [(DBSmartWidgetViewController *)self _didUpdateFocusForTouchpadInContext:contextCopy];
    }
  }

  else
  {
  }
}

- (id)preferredFocusEnvironments
{
  traitCollection = [(DBSmartWidgetViewController *)self traitCollection];
  if ([traitCollection primaryInteractionModel] == 8)
  {
    idealFocusEnvironments = [(DBSmartWidgetViewController *)self idealFocusEnvironments];

    if (idealFocusEnvironments)
    {
      idealFocusEnvironments2 = [(DBSmartWidgetViewController *)self idealFocusEnvironments];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7.receiver = self;
  v7.super_class = DBSmartWidgetViewController;
  idealFocusEnvironments2 = [(DBSmartWidgetViewController *)&v7 preferredFocusEnvironments];
LABEL_6:

  return idealFocusEnvironments2;
}

- (id)linearFocusItems
{
  v18[1] = *MEMORY[0x277D85DE8];
  view = [(DBSmartWidgetViewController *)self view];
  v18[0] = view;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

  widgetView = [(DBSmartWidgetViewController *)self widgetView];
  linearFocusItems = [widgetView linearFocusItems];
  v7 = [linearFocusItems count];

  if (v7)
  {
    widgetView2 = [(DBSmartWidgetViewController *)self widgetView];
    linearFocusItems2 = [widgetView2 linearFocusItems];
    view2 = v4;
    v4 = widgetView2;
  }

  else
  {
    carouselVC = [(DBSmartWidgetViewController *)self carouselVC];
    linearFocusItems3 = [carouselVC linearFocusItems];
    v13 = [linearFocusItems3 count];

    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = MEMORY[0x277CBEB18];
    carouselVC2 = [(DBSmartWidgetViewController *)self carouselVC];
    linearFocusItems4 = [carouselVC2 linearFocusItems];
    linearFocusItems2 = [v14 arrayWithArray:linearFocusItems4];

    view2 = [(DBSmartWidgetViewController *)self view];
    [linearFocusItems2 addObject:view2];
  }

  v4 = linearFocusItems2;
LABEL_6:

  return v4;
}

- (void)widgetViewTapped
{
  v8.receiver = self;
  v8.super_class = DBSmartWidgetViewController;
  [(DBWidgetViewController *)&v8 widgetViewTapped];
  carouselVC = [(DBSmartWidgetViewController *)self carouselVC];
  [carouselVC widgetViewTapped];

  objc_initWeak(&location, self);
  widgetView = [(DBSmartWidgetViewController *)self widgetView];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__DBSmartWidgetViewController_widgetViewTapped__block_invoke;
  v5[3] = &unk_278F02070;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [widgetView widgetViewTapped:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

uint64_t __47__DBSmartWidgetViewController_widgetViewTapped__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);

  return [v2 _performAction];
}

- (void)updateAppearanceForWallpaper
{
  v5.receiver = self;
  v5.super_class = DBSmartWidgetViewController;
  [(DBWidgetViewController *)&v5 updateAppearanceForWallpaper];
  widgetView = [(DBSmartWidgetViewController *)self widgetView];
  _focusHighlightColor = [(DBSmartWidgetViewController *)self _focusHighlightColor];
  [widgetView setFocusHighlightColor:_focusHighlightColor];
}

- (BOOL)_shouldUpdateFocusForTouchpadInContext:(id)context
{
  contextCopy = context;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetViewController _shouldUpdateFocusForTouchpadInContext:];
  }

  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetViewController _shouldUpdateFocusForTouchpadInContext:contextCopy];
  }

  v7 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetViewController _shouldUpdateFocusForTouchpadInContext:contextCopy];
  }

  v8 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetViewController _shouldUpdateFocusForTouchpadInContext:contextCopy];
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = v10;

  [(DBSmartWidgetViewController *)self lastFocusBlockTime];
  if (v11 - v12 >= 0.1)
  {
    carouselVC = [(DBSmartWidgetViewController *)self carouselVC];
    if (!carouselVC)
    {
      goto LABEL_16;
    }

    v15 = carouselVC;
    carouselVC2 = [(DBSmartWidgetViewController *)self carouselVC];
    isShowingDecorations = [carouselVC2 isShowingDecorations];

    if (!isShowingDecorations)
    {
      goto LABEL_16;
    }

    nextFocusedItem = [contextCopy nextFocusedItem];
    topFocusButton = [(DBSmartWidgetViewController *)self topFocusButton];

    if (nextFocusedItem == topFocusButton)
    {
      NSLog(&cfstr_FocusDebugPrev.isa);
      [(DBSmartWidgetCarousel *)self->_carouselVC rotateUp];
    }

    else
    {
      nextFocusedItem2 = [contextCopy nextFocusedItem];
      bottomFocusButton = [(DBSmartWidgetViewController *)self bottomFocusButton];

      if (nextFocusedItem2 != bottomFocusButton)
      {
LABEL_16:
        v13 = 1;
        goto LABEL_17;
      }

      NSLog(&cfstr_FocusDebugPrev_0.isa);
      [(DBSmartWidgetCarousel *)self->_carouselVC rotateDown];
    }

    [(DBSmartWidgetViewController *)self setLastFocusBlockTime:v11];
    goto LABEL_11;
  }

  NSLog(&cfstr_FocusDebugRece.isa);
LABEL_11:
  v13 = 0;
LABEL_17:

  return v13;
}

- (void)_didUpdateFocusForTouchpadInContext:(id)context
{
  v24[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  carouselVC = [(DBSmartWidgetViewController *)self carouselVC];

  if (carouselVC)
  {
    carouselVC2 = [(DBSmartWidgetViewController *)self carouselVC];
    linearFocusItems = [carouselVC2 linearFocusItems];

    NSLog(&cfstr_FocusDebugCaro.isa, linearFocusItems);
    if ([linearFocusItems count])
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = [linearFocusItems objectAtIndexedSubscript:v9];
        previouslyFocusedItem = [contextCopy previouslyFocusedItem];

        if (v11 == previouslyFocusedItem)
        {
          if (v9 == [linearFocusItems count] - 1 || objc_msgSend(contextCopy, "focusHeading") != 8)
          {
            if (v9 && [contextCopy focusHeading] == 4)
            {
              NSLog(&cfstr_FocusDebugMovi_0.isa);
              view = [linearFocusItems objectAtIndexedSubscript:v9 - 1];
              v23 = view;
              v14 = &v23;
            }

            else
            {
              NSLog(&cfstr_FocusDebugMovi_1.isa);
              view = [(DBSmartWidgetViewController *)self view];
              v22 = view;
              v14 = &v22;
            }
          }

          else
          {
            NSLog(&cfstr_FocusDebugMovi.isa);
            view = [linearFocusItems objectAtIndexedSubscript:v9 + 1];
            v24[0] = view;
            v14 = v24;
          }

          v8 = 1;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

          v10 = v15;
        }

        ++v9;
      }

      while (v9 < [linearFocusItems count]);
    }

    else
    {
      v10 = 0;
      v8 = 0;
    }

    nextFocusedItem = [contextCopy nextFocusedItem];
    view2 = [(DBSmartWidgetViewController *)self view];
    v18 = view2;
    if (nextFocusedItem != view2 || (v8 & 1) != 0)
    {
    }

    else
    {
      v19 = [linearFocusItems count];

      v20 = linearFocusItems;
      if (v19)
      {
        goto LABEL_22;
      }
    }

    v21 = [v10 count];
    v20 = v10;
    if (!v21)
    {
LABEL_23:

      goto LABEL_24;
    }

LABEL_22:
    [(DBSmartWidgetViewController *)self setIdealFocusEnvironments:v20];
    [(DBSmartWidgetViewController *)self setNeedsFocusUpdate];
    goto LABEL_23;
  }

LABEL_24:
  NSLog(&cfstr_FocusDebug.isa);
}

- (void)_setFocusButtonsEnabled:(BOOL)enabled
{
  if (enabled)
  {
    carouselVC = [(DBSmartWidgetViewController *)self carouselVC];

    if (!carouselVC)
    {
      return;
    }

    carouselVC2 = [(DBSmartWidgetViewController *)self carouselVC];
    linearFocusItems = [carouselVC2 linearFocusItems];

    if ([linearFocusItems count])
    {
      topFocusButton = [(DBSmartWidgetViewController *)self topFocusButton];
      [topFocusButton setEnabled:1];

      bottomFocusButton = [(DBSmartWidgetViewController *)self bottomFocusButton];
      [bottomFocusButton setEnabled:1];
    }
  }

  else
  {
    topFocusButton2 = [(DBSmartWidgetViewController *)self topFocusButton];
    [topFocusButton2 setEnabled:0];

    linearFocusItems = [(DBSmartWidgetViewController *)self bottomFocusButton];
    [linearFocusItems setEnabled:0];
  }
}

- (void)_setupFocusButtons
{
  v62[4] = *MEMORY[0x277D85DE8];
  topFocusButton = [(DBSmartWidgetViewController *)self topFocusButton];
  if (!topFocusButton || ([(DBSmartWidgetViewController *)self bottomFocusButton], v4 = objc_claimAutoreleasedReturnValue(), v4, topFocusButton, !v4))
  {
    objc_initWeak(&location, self);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __49__DBSmartWidgetViewController__setupFocusButtons__block_invoke;
    v58[3] = &unk_278F01CF0;
    objc_copyWeak(&v59, &location);
    carouselVC = [(DBSmartWidgetViewController *)self carouselVC];
    [carouselVC setDecorationsStateChanged:v58];

    v6 = [MEMORY[0x277D75220] buttonWithType:0];
    [(DBSmartWidgetViewController *)self setTopFocusButton:v6];

    clearColor = [MEMORY[0x277D75348] clearColor];
    topFocusButton2 = [(DBSmartWidgetViewController *)self topFocusButton];
    [topFocusButton2 setBackgroundColor:clearColor];

    topFocusButton3 = [(DBSmartWidgetViewController *)self topFocusButton];
    [topFocusButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

    view = [(DBSmartWidgetViewController *)self view];
    superview = [view superview];
    topFocusButton4 = [(DBSmartWidgetViewController *)self topFocusButton];
    [superview addSubview:topFocusButton4];

    topFocusButton5 = [(DBSmartWidgetViewController *)self topFocusButton];
    [topFocusButton5 setEnabled:0];

    v14 = [MEMORY[0x277D75220] buttonWithType:0];
    [(DBSmartWidgetViewController *)self setBottomFocusButton:v14];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    bottomFocusButton = [(DBSmartWidgetViewController *)self bottomFocusButton];
    [bottomFocusButton setBackgroundColor:clearColor2];

    bottomFocusButton2 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    [bottomFocusButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

    view2 = [(DBSmartWidgetViewController *)self view];
    superview2 = [view2 superview];
    bottomFocusButton3 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    [superview2 addSubview:bottomFocusButton3];

    bottomFocusButton4 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    [bottomFocusButton4 setEnabled:0];

    v41 = MEMORY[0x277CCAAD0];
    topFocusButton6 = [(DBSmartWidgetViewController *)self topFocusButton];
    leadingAnchor = [topFocusButton6 leadingAnchor];
    view3 = [(DBSmartWidgetViewController *)self view];
    leadingAnchor2 = [view3 leadingAnchor];
    v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v62[0] = v48;
    topFocusButton7 = [(DBSmartWidgetViewController *)self topFocusButton];
    widthAnchor = [topFocusButton7 widthAnchor];
    v42 = [widthAnchor constraintEqualToConstant:1.0];
    v62[1] = v42;
    topFocusButton8 = [(DBSmartWidgetViewController *)self topFocusButton];
    bottomAnchor = [topFocusButton8 bottomAnchor];
    view4 = [(DBSmartWidgetViewController *)self view];
    topAnchor = [view4 topAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-2.0];
    v62[2] = v26;
    topFocusButton9 = [(DBSmartWidgetViewController *)self topFocusButton];
    heightAnchor = [topFocusButton9 heightAnchor];
    v29 = [heightAnchor constraintEqualToConstant:2.0];
    v62[3] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
    [v41 activateConstraints:v30];

    v43 = MEMORY[0x277CCAAD0];
    bottomFocusButton5 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    leadingAnchor3 = [bottomFocusButton5 leadingAnchor];
    view5 = [(DBSmartWidgetViewController *)self view];
    leadingAnchor4 = [view5 leadingAnchor];
    v49 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v61[0] = v49;
    bottomFocusButton6 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    widthAnchor2 = [bottomFocusButton6 widthAnchor];
    v31 = [widthAnchor2 constraintEqualToConstant:1.0];
    v61[1] = v31;
    bottomFocusButton7 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    topAnchor2 = [bottomFocusButton7 topAnchor];
    view6 = [(DBSmartWidgetViewController *)self view];
    bottomAnchor2 = [view6 bottomAnchor];
    v36 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:2.0];
    v61[2] = v36;
    bottomFocusButton8 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    heightAnchor2 = [bottomFocusButton8 heightAnchor];
    v39 = [heightAnchor2 constraintEqualToConstant:2.0];
    v61[3] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:4];
    [v43 activateConstraints:v40];

    objc_destroyWeak(&v59);
    objc_destroyWeak(&location);
  }
}

void __49__DBSmartWidgetViewController__setupFocusButtons__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setFocusButtonsEnabled:a2];
}

- (DBSmartWidgetAnimating)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

void __54__DBSmartWidgetViewController_resolveForNoPredictions__block_invoke_cold_1(void *a1)
{
  v1 = [a1 engine];
  v2 = [v1 currentPredictions];
  [v2 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_10(&dword_248146000, v3, v4, "[Update Prediction] no predictions completed currentPredictions.count=%ld", v5, v6, v7, v8, v9);
}

- (void)_shouldUpdateFocusForTouchpadInContext:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_shouldUpdateFocusForTouchpadInContext:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 previouslyFocusedItem];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_10(&dword_248146000, v2, v3, "[FOCUS DEBUG] Previous: %@", v4, v5, v6, v7, v8);
}

- (void)_shouldUpdateFocusForTouchpadInContext:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 nextFocusedItem];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_10(&dword_248146000, v2, v3, "[FOCUS DEBUG] Next: %@", v4, v5, v6, v7, v8);
}

- (void)_shouldUpdateFocusForTouchpadInContext:(void *)a1 .cold.4(void *a1)
{
  [a1 focusHeading];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_10(&dword_248146000, v1, v2, "[FOCUS DEBUG] Heading: %ld", v3, v4, v5, v6, v7);
}

@end