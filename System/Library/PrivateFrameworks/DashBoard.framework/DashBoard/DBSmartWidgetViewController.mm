@interface DBSmartWidgetViewController
- (BOOL)_shouldUpdateFocusForTouchpadInContext:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)isHighPriority;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (DBSmartWidgetAnimating)animationDelegate;
- (DBSmartWidgetViewController)initWithEnvironment:(id)a3 engine:(id)a4 animationDelegate:(id)a5;
- (id)_focusHighlightColor;
- (id)linearFocusItems;
- (id)preferredFocusEnvironments;
- (void)_didUpdateFocusForTouchpadInContext:(id)a3;
- (void)_nextPrediction;
- (void)_performAction;
- (void)_previousPrediction;
- (void)_refresh;
- (void)_setFocusButtonsEnabled:(BOOL)a3;
- (void)_setupFocusButtons;
- (void)_updatePrediction;
- (void)_updateToMostRecentSuccessfulPrediction;
- (void)_updateWidgetWithPrediction:(id)a3 predictedSize:(CGSize)a4 operationID:(int64_t)a5 smartWidgetView:(id)a6;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)finalizePredictionUpdate;
- (void)resolveForNoPredictions;
- (void)setSmartWidgetForeground:(BOOL)a3;
- (void)setWantsToShowPrediction:(BOOL)a3;
- (void)smartWidgetEngine:(id)a3 didUpdateCurrentPredictions:(id)a4;
- (void)updateAppearanceForWallpaper;
- (void)viewDidLoad;
- (void)widgetViewTapped;
@end

@implementation DBSmartWidgetViewController

- (BOOL)isHighPriority
{
  v2 = [(DBSmartWidgetViewController *)self engine];
  v3 = [v2 hasHighPriorityPrediction];

  return v3;
}

- (DBSmartWidgetViewController)initWithEnvironment:(id)a3 engine:(id)a4 animationDelegate:(id)a5
{
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = DBSmartWidgetViewController;
  v11 = [(DBWidgetViewController *)&v20 initWithEnvironment:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_animationDelegate, v10);
    [(DBSmartWidgetView *)v12->_widgetView setEngine:v9];
    v12->_currentPredictionIndex = 0;
    v13 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinnerView = v12->_spinnerView;
    v12->_spinnerView = v13;

    v15 = [MEMORY[0x277D75348] _labelColor];
    [(UIActivityIndicatorView *)v12->_spinnerView setColor:v15];

    [(UIActivityIndicatorView *)v12->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v12->_spinnerView setHidesWhenStopped:1];
    v12->_usesCarouselStyle = 1;
    objc_storeStrong(&v12->_engine, a4);
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
  v3 = [(DBSmartWidgetViewController *)self view];
  [v3 setAccessibilityIdentifier:@"CARAppTodaySmartViewWidget"];

  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__performAction];
  [(DBSmartWidgetViewController *)self setActionRecognizer:v5];

  v6 = [(DBSmartWidgetViewController *)self actionRecognizer];
  [v6 setDelegate:self];

  v7 = [(DBWidgetViewController *)self contentView];
  v8 = [(DBSmartWidgetViewController *)self actionRecognizer];
  [v7 addGestureRecognizer:v8];

  v9 = [(DBSmartWidgetViewController *)self actionRecognizer];
  [v4 addObject:v9];

  v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  LODWORD(v8) = [v10 BOOLForKey:@"CARSmartWidgetDebugGestures"];

  if (v8)
  {
    v11 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__refresh];
    [(DBSmartWidgetViewController *)self setRefreshRecognizer:v11];

    v12 = [(DBSmartWidgetViewController *)self refreshRecognizer];
    [v12 setDelegate:self];

    v13 = [(DBWidgetViewController *)self contentView];
    v14 = [(DBSmartWidgetViewController *)self refreshRecognizer];
    [v13 addGestureRecognizer:v14];

    v15 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel__previousPrediction];
    [(DBSmartWidgetViewController *)self setPreviousPredictionRecognizer:v15];

    v16 = [(DBSmartWidgetViewController *)self previousPredictionRecognizer];
    [v16 setDelegate:self];

    v17 = [(DBSmartWidgetViewController *)self previousPredictionRecognizer];
    [v17 setDirection:2];

    v18 = [(DBWidgetViewController *)self contentView];
    v19 = [(DBSmartWidgetViewController *)self previousPredictionRecognizer];
    [v18 addGestureRecognizer:v19];

    v20 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel__nextPrediction];
    [(DBSmartWidgetViewController *)self setNextPredictionRecognizer:v20];

    v21 = [(DBSmartWidgetViewController *)self nextPredictionRecognizer];
    [v21 setDelegate:self];

    v22 = [(DBSmartWidgetViewController *)self nextPredictionRecognizer];
    [v22 setDirection:1];

    v23 = [(DBWidgetViewController *)self contentView];
    v24 = [(DBSmartWidgetViewController *)self nextPredictionRecognizer];
    [v23 addGestureRecognizer:v24];

    v25 = [(DBSmartWidgetViewController *)self actionRecognizer];
    v49[0] = v25;
    v26 = [(DBSmartWidgetViewController *)self refreshRecognizer];
    v49[1] = v26;
    v27 = [(DBSmartWidgetViewController *)self previousPredictionRecognizer];
    v49[2] = v27;
    v28 = [(DBSmartWidgetViewController *)self nextPredictionRecognizer];
    v49[3] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
    [v4 addObjectsFromArray:v29];
  }

  v30 = [MEMORY[0x277CBEB98] setWithArray:v4];
  [(DBSmartWidgetViewController *)self setRecognizers:v30];

  v31 = [(DBWidgetViewController *)self contentView];
  v32 = [(DBSmartWidgetViewController *)self spinnerView];
  [v31 addSubview:v32];

  v33 = [(DBSmartWidgetViewController *)self spinnerView];
  [v33 startAnimating];

  v45 = MEMORY[0x277CCAAD0];
  v46 = [(DBSmartWidgetViewController *)self spinnerView];
  v34 = [v46 centerXAnchor];
  v35 = [(DBWidgetViewController *)self contentView];
  v36 = [v35 centerXAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];
  v48[0] = v37;
  v38 = [(DBSmartWidgetViewController *)self spinnerView];
  v39 = [v38 centerYAnchor];
  v40 = [(DBWidgetViewController *)self contentView];
  v41 = [v40 centerYAnchor];
  [v39 constraintEqualToAnchor:v41];
  v42 = v44 = v4;
  v48[1] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  [v45 activateConstraints:v43];
}

- (void)_performAction
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [a1 widgetView];
  v5 = [v4 prediction];
  v6 = [v5 primaryActionBlock];
  if (v6)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [a1 widgetView];
  v9 = [v8 prediction];
  v10 = 138543618;
  v11 = v7;
  v12 = 2114;
  v13 = v9;
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "(ViewController) Performing action: Primary %{public}@ %{public}@", &v10, 0x16u);
}

- (void)_refresh
{
  v3 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetViewController _refresh];
  }

  v4 = [(DBSmartWidgetViewController *)self engine];
  [v4 refreshPredictions];
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

- (void)setWantsToShowPrediction:(BOOL)a3
{
  if (self->_wantsToShowPrediction != a3)
  {
    v5 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DBSmartWidgetViewController setWantsToShowPrediction:];
    }

    self->_wantsToShowPrediction = a3;
  }
}

- (void)_updatePrediction
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 engine];
  v4 = [v3 currentPredictions];
  [v4 count];
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
  v3 = [(DBSmartWidgetViewController *)self animationDelegate];
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __54__DBSmartWidgetViewController_resolveForNoPredictions__block_invoke;
  v7 = &unk_278F02300;
  objc_copyWeak(&v8, &location);
  [v3 animateSmartWidget:0 withOldUserInterfaceStyle:0 newUserInterfaceStyle:0 completion:&v4];

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

- (void)_updateWidgetWithPrediction:(id)a3 predictedSize:(CGSize)a4 operationID:(int64_t)a5 smartWidgetView:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(DBSmartWidgetViewController *)self view];
    v11 = @"Home";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(DBSmartWidgetViewController *)self view];
      v11 = @"Calendar";
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v10 = [(DBSmartWidgetViewController *)self view];
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

  [v10 setAccessibilityValue:v11];

  v13 = [(DBSmartWidgetViewController *)self widgetView];
  v28 = [v13 overrideUserInterfaceStyle];

  v14 = [v9 overrideUserInterfaceStyle];
  v15 = [v8 uniqueIdentifier];
  v16 = [(DBSmartWidgetViewController *)self widgetView];
  v17 = [v16 prediction];
  v18 = [v17 uniqueIdentifier];
  if ([v15 isEqual:v18])
  {
    v19 = [(DBSmartWidgetViewController *)self animationDelegate];
    v20 = [v19 isSmartWidgetHidden];

    if ((v20 & 1) == 0)
    {
      v21 = DBLogForCategory(9uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [DBSmartWidgetViewController _updateWidgetWithPrediction:predictedSize:operationID:smartWidgetView:];
      }

      v22 = [(DBSmartWidgetViewController *)self widgetView];
      [v22 setPrediction:v8];

      goto LABEL_17;
    }
  }

  else
  {
  }

  v23 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [v8 uniqueIdentifier];
    v25 = [v24 UUIDString];
    *buf = 138543362;
    v34 = v25;
    _os_log_impl(&dword_248146000, v23, OS_LOG_TYPE_INFO, "[Update Prediction] Widget View prediction %{public}@ prepared", buf, 0xCu);
  }

  v26 = [(DBSmartWidgetViewController *)self spinnerView];
  [v26 stopAnimating];

  objc_initWeak(buf, self);
  [(DBSmartWidgetViewController *)self setReadyToShowPrediction:1];
  v27 = [(DBSmartWidgetViewController *)self animationDelegate];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __101__DBSmartWidgetViewController__updateWidgetWithPrediction_predictedSize_operationID_smartWidgetView___block_invoke;
  v29[3] = &unk_278F031C0;
  objc_copyWeak(v32, buf);
  v32[1] = v14;
  v30 = v8;
  v31 = v9;
  [v27 animateSmartWidget:v29 withOldUserInterfaceStyle:v28 newUserInterfaceStyle:v14 completion:0];

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
  v1 = [a1 widgetView];
  v2 = [v1 prediction];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_10(&dword_248146000, v3, v4, "Current prediction (ViewController): %{public}@", v5, v6, v7, v8, v9);
}

- (void)setSmartWidgetForeground:(BOOL)a3
{
  if (self->_usesCarouselStyle)
  {
    carouselVC = self->_carouselVC;
    if (carouselVC)
    {
      [(DBSmartWidgetCarousel *)carouselVC setCarouselForeground:a3];
    }
  }
}

- (void)smartWidgetEngine:(id)a3 didUpdateCurrentPredictions:(id)a4
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

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(DBSmartWidgetViewController *)self recognizers];
  v7 = [v6 containsObject:v5];

  return v7 ^ 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(DBSmartWidgetViewController *)self nextPredictionRecognizer];
  if (v6 == v5)
  {
    v8 = 1;
  }

  else
  {
    v7 = [(DBSmartWidgetViewController *)self previousPredictionRecognizer];
    v8 = v7 == v5;
  }

  return v8;
}

- (id)_focusHighlightColor
{
  v2 = [(DBWidgetViewController *)self environment];
  v3 = [v2 environmentConfiguration];
  v4 = [v3 wallpaperPreferences];
  v5 = [v4 currentWallpaper];

  v6 = [v5 traits];
  if ([v6 supportsDashboardPlatterMaterials])
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

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = [(DBSmartWidgetViewController *)self traitCollection];
  if ([v5 primaryInteractionModel] == 8 && objc_msgSend(v4, "focusHeading") != 16)
  {
    v9 = [v4 focusHeading];

    if (v9 != 32)
    {
      v6 = [(DBSmartWidgetViewController *)self _shouldUpdateFocusForTouchpadInContext:v4];
      goto LABEL_5;
    }
  }

  else
  {
  }

  v10.receiver = self;
  v10.super_class = DBSmartWidgetViewController;
  v6 = [(DBSmartWidgetViewController *)&v10 shouldUpdateFocusInContext:v4];
LABEL_5:
  v7 = v6;

  return v7;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = DBSmartWidgetViewController;
  [(DBSmartWidgetViewController *)&v9 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [(DBSmartWidgetViewController *)self traitCollection];
  if ([v7 primaryInteractionModel] == 8 && objc_msgSend(v6, "focusHeading") != 16)
  {
    v8 = [v6 focusHeading];

    if (v8 != 32)
    {
      [(DBSmartWidgetViewController *)self _didUpdateFocusForTouchpadInContext:v6];
    }
  }

  else
  {
  }
}

- (id)preferredFocusEnvironments
{
  v3 = [(DBSmartWidgetViewController *)self traitCollection];
  if ([v3 primaryInteractionModel] == 8)
  {
    v4 = [(DBSmartWidgetViewController *)self idealFocusEnvironments];

    if (v4)
    {
      v5 = [(DBSmartWidgetViewController *)self idealFocusEnvironments];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7.receiver = self;
  v7.super_class = DBSmartWidgetViewController;
  v5 = [(DBSmartWidgetViewController *)&v7 preferredFocusEnvironments];
LABEL_6:

  return v5;
}

- (id)linearFocusItems
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [(DBSmartWidgetViewController *)self view];
  v18[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

  v5 = [(DBSmartWidgetViewController *)self widgetView];
  v6 = [v5 linearFocusItems];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(DBSmartWidgetViewController *)self widgetView];
    v9 = [v8 linearFocusItems];
    v10 = v4;
    v4 = v8;
  }

  else
  {
    v11 = [(DBSmartWidgetViewController *)self carouselVC];
    v12 = [v11 linearFocusItems];
    v13 = [v12 count];

    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = MEMORY[0x277CBEB18];
    v15 = [(DBSmartWidgetViewController *)self carouselVC];
    v16 = [v15 linearFocusItems];
    v9 = [v14 arrayWithArray:v16];

    v10 = [(DBSmartWidgetViewController *)self view];
    [v9 addObject:v10];
  }

  v4 = v9;
LABEL_6:

  return v4;
}

- (void)widgetViewTapped
{
  v8.receiver = self;
  v8.super_class = DBSmartWidgetViewController;
  [(DBWidgetViewController *)&v8 widgetViewTapped];
  v3 = [(DBSmartWidgetViewController *)self carouselVC];
  [v3 widgetViewTapped];

  objc_initWeak(&location, self);
  v4 = [(DBSmartWidgetViewController *)self widgetView];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__DBSmartWidgetViewController_widgetViewTapped__block_invoke;
  v5[3] = &unk_278F02070;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [v4 widgetViewTapped:v5];

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
  v3 = [(DBSmartWidgetViewController *)self widgetView];
  v4 = [(DBSmartWidgetViewController *)self _focusHighlightColor];
  [v3 setFocusHighlightColor:v4];
}

- (BOOL)_shouldUpdateFocusForTouchpadInContext:(id)a3
{
  v4 = a3;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetViewController _shouldUpdateFocusForTouchpadInContext:];
  }

  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetViewController _shouldUpdateFocusForTouchpadInContext:v4];
  }

  v7 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetViewController _shouldUpdateFocusForTouchpadInContext:v4];
  }

  v8 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetViewController _shouldUpdateFocusForTouchpadInContext:v4];
  }

  v9 = [MEMORY[0x277CBEAA8] date];
  [v9 timeIntervalSince1970];
  v11 = v10;

  [(DBSmartWidgetViewController *)self lastFocusBlockTime];
  if (v11 - v12 >= 0.1)
  {
    v14 = [(DBSmartWidgetViewController *)self carouselVC];
    if (!v14)
    {
      goto LABEL_16;
    }

    v15 = v14;
    v16 = [(DBSmartWidgetViewController *)self carouselVC];
    v17 = [v16 isShowingDecorations];

    if (!v17)
    {
      goto LABEL_16;
    }

    v18 = [v4 nextFocusedItem];
    v19 = [(DBSmartWidgetViewController *)self topFocusButton];

    if (v18 == v19)
    {
      NSLog(&cfstr_FocusDebugPrev.isa);
      [(DBSmartWidgetCarousel *)self->_carouselVC rotateUp];
    }

    else
    {
      v20 = [v4 nextFocusedItem];
      v21 = [(DBSmartWidgetViewController *)self bottomFocusButton];

      if (v20 != v21)
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

- (void)_didUpdateFocusForTouchpadInContext:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBSmartWidgetViewController *)self carouselVC];

  if (v5)
  {
    v6 = [(DBSmartWidgetViewController *)self carouselVC];
    v7 = [v6 linearFocusItems];

    NSLog(&cfstr_FocusDebugCaro.isa, v7);
    if ([v7 count])
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = [v7 objectAtIndexedSubscript:v9];
        v12 = [v4 previouslyFocusedItem];

        if (v11 == v12)
        {
          if (v9 == [v7 count] - 1 || objc_msgSend(v4, "focusHeading") != 8)
          {
            if (v9 && [v4 focusHeading] == 4)
            {
              NSLog(&cfstr_FocusDebugMovi_0.isa);
              v13 = [v7 objectAtIndexedSubscript:v9 - 1];
              v23 = v13;
              v14 = &v23;
            }

            else
            {
              NSLog(&cfstr_FocusDebugMovi_1.isa);
              v13 = [(DBSmartWidgetViewController *)self view];
              v22 = v13;
              v14 = &v22;
            }
          }

          else
          {
            NSLog(&cfstr_FocusDebugMovi.isa);
            v13 = [v7 objectAtIndexedSubscript:v9 + 1];
            v24[0] = v13;
            v14 = v24;
          }

          v8 = 1;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

          v10 = v15;
        }

        ++v9;
      }

      while (v9 < [v7 count]);
    }

    else
    {
      v10 = 0;
      v8 = 0;
    }

    v16 = [v4 nextFocusedItem];
    v17 = [(DBSmartWidgetViewController *)self view];
    v18 = v17;
    if (v16 != v17 || (v8 & 1) != 0)
    {
    }

    else
    {
      v19 = [v7 count];

      v20 = v7;
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

- (void)_setFocusButtonsEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = [(DBSmartWidgetViewController *)self carouselVC];

    if (!v4)
    {
      return;
    }

    v5 = [(DBSmartWidgetViewController *)self carouselVC];
    v9 = [v5 linearFocusItems];

    if ([v9 count])
    {
      v6 = [(DBSmartWidgetViewController *)self topFocusButton];
      [v6 setEnabled:1];

      v7 = [(DBSmartWidgetViewController *)self bottomFocusButton];
      [v7 setEnabled:1];
    }
  }

  else
  {
    v8 = [(DBSmartWidgetViewController *)self topFocusButton];
    [v8 setEnabled:0];

    v9 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    [v9 setEnabled:0];
  }
}

- (void)_setupFocusButtons
{
  v62[4] = *MEMORY[0x277D85DE8];
  v3 = [(DBSmartWidgetViewController *)self topFocusButton];
  if (!v3 || ([(DBSmartWidgetViewController *)self bottomFocusButton], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    objc_initWeak(&location, self);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __49__DBSmartWidgetViewController__setupFocusButtons__block_invoke;
    v58[3] = &unk_278F01CF0;
    objc_copyWeak(&v59, &location);
    v5 = [(DBSmartWidgetViewController *)self carouselVC];
    [v5 setDecorationsStateChanged:v58];

    v6 = [MEMORY[0x277D75220] buttonWithType:0];
    [(DBSmartWidgetViewController *)self setTopFocusButton:v6];

    v7 = [MEMORY[0x277D75348] clearColor];
    v8 = [(DBSmartWidgetViewController *)self topFocusButton];
    [v8 setBackgroundColor:v7];

    v9 = [(DBSmartWidgetViewController *)self topFocusButton];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(DBSmartWidgetViewController *)self view];
    v11 = [v10 superview];
    v12 = [(DBSmartWidgetViewController *)self topFocusButton];
    [v11 addSubview:v12];

    v13 = [(DBSmartWidgetViewController *)self topFocusButton];
    [v13 setEnabled:0];

    v14 = [MEMORY[0x277D75220] buttonWithType:0];
    [(DBSmartWidgetViewController *)self setBottomFocusButton:v14];

    v15 = [MEMORY[0x277D75348] clearColor];
    v16 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    [v16 setBackgroundColor:v15];

    v17 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(DBSmartWidgetViewController *)self view];
    v19 = [v18 superview];
    v20 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    [v19 addSubview:v20];

    v21 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    [v21 setEnabled:0];

    v41 = MEMORY[0x277CCAAD0];
    v56 = [(DBSmartWidgetViewController *)self topFocusButton];
    v52 = [v56 leadingAnchor];
    v54 = [(DBSmartWidgetViewController *)self view];
    v50 = [v54 leadingAnchor];
    v48 = [v52 constraintEqualToAnchor:v50];
    v62[0] = v48;
    v46 = [(DBSmartWidgetViewController *)self topFocusButton];
    v44 = [v46 widthAnchor];
    v42 = [v44 constraintEqualToConstant:1.0];
    v62[1] = v42;
    v22 = [(DBSmartWidgetViewController *)self topFocusButton];
    v23 = [v22 bottomAnchor];
    v24 = [(DBSmartWidgetViewController *)self view];
    v25 = [v24 topAnchor];
    v26 = [v23 constraintEqualToAnchor:v25 constant:-2.0];
    v62[2] = v26;
    v27 = [(DBSmartWidgetViewController *)self topFocusButton];
    v28 = [v27 heightAnchor];
    v29 = [v28 constraintEqualToConstant:2.0];
    v62[3] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
    [v41 activateConstraints:v30];

    v43 = MEMORY[0x277CCAAD0];
    v57 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    v51 = [v57 leadingAnchor];
    v55 = [(DBSmartWidgetViewController *)self view];
    v53 = [v55 leadingAnchor];
    v49 = [v51 constraintEqualToAnchor:v53];
    v61[0] = v49;
    v47 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    v45 = [v47 widthAnchor];
    v31 = [v45 constraintEqualToConstant:1.0];
    v61[1] = v31;
    v32 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    v33 = [v32 topAnchor];
    v34 = [(DBSmartWidgetViewController *)self view];
    v35 = [v34 bottomAnchor];
    v36 = [v33 constraintEqualToAnchor:v35 constant:2.0];
    v61[2] = v36;
    v37 = [(DBSmartWidgetViewController *)self bottomFocusButton];
    v38 = [v37 heightAnchor];
    v39 = [v38 constraintEqualToConstant:2.0];
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