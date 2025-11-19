@interface BKUIFingerPrintEnrollmentPhaseViewController
- (BKUIEmbeddedEnrollmentSelectionType)delegate;
- (BOOL)_isIPad;
- (BOOL)shouldAnimateEntireView;
- (CGPoint)anchorPoint;
- (CGSize)_idealEnrollCurveViewSize;
- (CGSize)buttonTraySize;
- (double)_enrollViewTopPadding;
- (id)_detailPhasesText;
- (id)_detailTextDonePhase;
- (id)_subtitleFont;
- (void)_continuePressed:(id)a3;
- (void)_enrollSkipped;
- (void)_forceLayout;
- (void)_forceResetCurvesLayerToPercent:(double)a3;
- (void)_handleViewState:(unint64_t)a3;
- (void)_updateButtonTraySize;
- (void)_updateContentViewSizeToMatchConstraints;
- (void)_updateEnrollViewsForSize:(CGSize)a3;
- (void)dealloc;
- (void)handleEnrollmentDone;
- (void)handleEnrollmentFailure;
- (void)removeTouchIndicator;
- (void)setEnrollProgress:(float)a3 enrollView:(id)a4;
- (void)setEnrollViewState:(unint64_t)a3;
- (void)setHeaderTitle:(id)a3;
- (void)shouldAnimateEntireView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKUIFingerPrintEnrollmentPhaseViewController

- (void)_updateContentViewSizeToMatchConstraints
{
  v3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self navigationController];
  v4 = [v3 navigationBar];
  [v4 frame];
  MaxY = CGRectGetMaxY(v21);

  v6 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
  [v6 frame];
  v8 = v7;

  v9 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  [v9 frame];
  v11 = v10;

  v12 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self buttonTray];
  [v12 frame];
  v14 = v13;

  if (!self->_disableContentViewSizing || [(BKUIFingerPrintEnrollmentPhaseViewController *)self rotating])
  {
    v15 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
    [v15 frame];
    [(BKUIFingerPrintEnrollmentPhaseViewController *)self setAnchorPoint:?];

    v16 = v8 - MaxY - v11 - v14 + -10.0;
    v17 = fmaxf(v16, 241.2);
    v18 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentViewHeightConstraint];
    [v18 setConstant:v17];

    v19 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
    [v19 layoutIfNeeded];
  }
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = BKUIFingerPrintEnrollmentPhaseViewController;
  [(OBBaseWelcomeController *)&v33 viewDidLoad];
  v3 = os_log_create("com.apple.biometrickitui", "FingerprintEnrollViewController");
  bkui_fingerprint_enroll_view_controller_log = self->bkui_fingerprint_enroll_view_controller_log;
  self->bkui_fingerprint_enroll_view_controller_log = v3;

  v5 = [MEMORY[0x277D37618] boldButton];
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self setContinueButton:v5];

  v6 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self continueButton];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self continueButton];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CONTINUE" value:&stru_2853BB280 table:@"BiometricKitUI"];
  [v7 setTitle:v9 forState:0];

  v10 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self continueButton];
  [v10 addTarget:self action:sel__continuePressed_ forControlEvents:64];

  v11 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  [v11 addSubview:self->_mesaFirstEnrollView];

  v12 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  [v12 addSubview:self->_mesaSecondEnrollView];

  v13 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentViewHeightConstraint];
  [v13 setActive:0];

  if ([(BKUIFingerPrintEnrollmentPhaseViewController *)self inBuddy])
  {
    v14 = [MEMORY[0x277D37650] linkButton];
    [(BKUIFingerPrintEnrollmentPhaseViewController *)self setSkipButton:v14];

    v15 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self skipButton];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self skipButton];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"SKIP_ENROLL" value:&stru_2853BB280 table:@"BiometricKitUI"];
    [v16 setTitle:v18 forState:0];

    v19 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self skipButton];
    [v19 addTarget:self action:sel__enrollSkipped forControlEvents:64];

    v20 = [MEMORY[0x277D37618] boldButton];
    [(BKUIFingerPrintEnrollmentPhaseViewController *)self setRetryButton:v20];

    v21 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self retryButton];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self retryButton];
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"RESTART_ENROLL" value:&stru_2853BB280 table:@"BiometricKitUI"];
    [v22 setTitle:v24 forState:0];

    v25 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self retryButton];
    [v25 addTarget:self action:sel__continuePressed_ forControlEvents:64];
  }

  [(BKUIFingerPrintEnrollmentPhaseViewController *)self setEnrollViewState:0];
  if ([(BKUIFingerPrintEnrollmentPhaseViewController *)self _topTouchButtonIpad])
  {
    objc_initWeak(&location, self);
    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    v27 = [MEMORY[0x277CCABD8] mainQueue];
    v28 = *MEMORY[0x277D776C0];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __59__BKUIFingerPrintEnrollmentPhaseViewController_viewDidLoad__block_invoke;
    v30[3] = &unk_278D0A050;
    objc_copyWeak(&v31, &location);
    v29 = [v26 addObserverForName:v28 object:0 queue:v27 usingBlock:v30];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }
}

void __59__BKUIFingerPrintEnrollmentPhaseViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained view];
  v5 = [v4 window];
  v6 = [v5 windowScene];

  v7 = [v3 object];

  if (v7 == v6)
  {
    v8 = [WeakRetained touchindicatorWindow];
    [v8 setHidden:{objc_msgSend(v6, "_enhancedWindowingEnabled")}];
  }
}

uint64_t __62__BKUIFingerPrintEnrollmentPhaseViewController_viewDidAppear___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __99__BKUIFingerPrintEnrollmentPhaseViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v8[3] = &unk_278D0A028;
    v8[4] = self;
    [v5 animateAlongsideTransition:0 completion:v8];
  }
}

void __99__BKUIFingerPrintEnrollmentPhaseViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BKUIFingerPrintEnrollmentPhaseViewController;
  [(OBBaseWelcomeController *)&v3 viewDidLayoutSubviews];
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self _updateContentViewSizeToMatchConstraints];
}

- (void)removeTouchIndicator
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__BKUIFingerPrintEnrollmentPhaseViewController_removeTouchIndicator__block_invoke;
  v3[3] = &unk_278D09978;
  v3[4] = self;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __68__BKUIFingerPrintEnrollmentPhaseViewController_removeTouchIndicator__block_invoke_2;
  v2[3] = &unk_278D099C0;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v2 completion:0.300000012];
}

void __68__BKUIFingerPrintEnrollmentPhaseViewController_removeTouchIndicator__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) touchindicatorWindow];
  [v1 setAlpha:0.0];
}

uint64_t __68__BKUIFingerPrintEnrollmentPhaseViewController_removeTouchIndicator__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) touchindicatorWindow];
  [v2 resignKeyWindow];

  v3 = *(a1 + 32);

  return [v3 setTouchindicatorWindow:0];
}

- (void)setEnrollProgress:(float)a3 enrollView:(id)a4
{
  v6 = a4;
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self enrollProgress];
  v8 = v7;
  *&v7 = a3;
  [v6 setProgress:v7];

  [(BKUIFingerPrintEnrollmentPhaseViewController *)self setEnrollProgress:a3];
  if ([(BKUIFingerPrintEnrollmentPhaseViewController *)self showFollowUpEnrollmentUpSellContent]&& a3 > 0.0 && v8 == 0.0 && [(BKUIFingerPrintEnrollmentPhaseViewController *)self inBuddy])
  {
    v10 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
    v9 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self _detailPhasesText];
    [v10 setDetailText:v9];
  }
}

- (void)_updateEnrollViewsForSize:(CGSize)a3
{
  height = a3.height;
  v67 = *MEMORY[0x277D85DE8];
  bkui_fingerprint_enroll_view_controller_log = self->bkui_fingerprint_enroll_view_controller_log;
  if (os_log_type_enabled(bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUIFingerPrintEnrollmentPhaseViewController _updateEnrollViewsForSize:?];
  }

  v6 = height * 0.00108695652 + 0.434782609;
  if ([(BKUIFingerPrintEnrollmentPhaseViewController *)self _isIPad])
  {
    [(BKUIFingerPrintEnrollmentPhaseViewController *)self inBuddy];
  }

  v7 = v6 * 5.0;
  v8 = self->bkui_fingerprint_enroll_view_controller_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    v58 = height * 0.00108695652 + 0.434782609;
    v59 = 2048;
    v60 = height;
    v61 = 2048;
    v62 = v6 * 5.0;
    v63 = 2048;
    v64 = 0;
    v65 = 2048;
    v66 = v6 * -40.0;
    _os_log_impl(&dword_241B0A000, v8, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: SVG multiplier: %f (size: %f), svgHOffset: %f, svgVOffset: %f, svgVOffset2: %f", buf, 0x34u);
  }

  v9 = v6 * 192.0;
  v10 = v6 * 268.0;
  if (self->_mesaEnrollContainerConstraints)
  {
    v11 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self enrollCurvesViewTopConstraint];
    [v11 setActive:0];

    [MEMORY[0x277CCAAD0] deactivateConstraints:self->_mesaEnrollContainerConstraints];
    v12 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v12 = [MEMORY[0x277CBEB18] array];
  }

  mesaEnrollContainerConstraints = self->_mesaEnrollContainerConstraints;
  self->_mesaEnrollContainerConstraints = v12;

  [(BKUIFingerPrintEnrollmentPhaseViewController *)self setInnerAndOuterCurvesViewHeightDiff:(v10 - v9) * 0.5];
  v14 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
  [v14 bounds];
  v16 = v15 * 0.13;
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self innerAndOuterCurvesViewHeightDiff];
  *&v17 = v17;
  v18 = fminf(v16, *&v17);

  v19 = [(BKUICurvesView *)self->_mesaSecondEnrollView topAnchor];
  v20 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  v21 = [v20 topAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:v18];
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self setEnrollCurvesViewTopConstraint:v22];

  v23 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self enrollCurvesViewTopConstraint];
  [v23 setActive:1];

  v24 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self buttonTray];
  LODWORD(v20) = [v24 isHidden];

  if (v20)
  {
    v25 = 25.0;
  }

  else
  {
    v25 = 0.0;
  }

  if ([(BKUIFingerPrintEnrollmentPhaseViewController *)self enrollViewState])
  {
    v26 = -v25;
  }

  else
  {
    [(BKUIFingerPrintEnrollmentPhaseViewController *)self innerAndOuterCurvesViewHeightDiff];
    v26 = v27 - v25;
  }

  v28 = v6 * 180.0;
  v29 = v6 * 124.0;
  v55 = [(BKUICurvesView *)self->_mesaSecondEnrollView widthAnchor];
  v54 = [v55 constraintEqualToConstant:v28];
  v56[0] = v54;
  v53 = [(BKUICurvesView *)self->_mesaSecondEnrollView heightAnchor];
  v52 = [v53 constraintEqualToConstant:v10];
  v56[1] = v52;
  v50 = [(BKUICurvesView *)self->_mesaSecondEnrollView centerXAnchor];
  v51 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  v49 = [v51 centerXAnchor];
  v48 = [v50 constraintEqualToAnchor:v49 constant:v7];
  v56[2] = v48;
  v46 = [(BKUICurvesView *)self->_mesaSecondEnrollView bottomAnchor];
  v47 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  v45 = [v47 bottomAnchor];
  v44 = [v46 constraintEqualToAnchor:v45 constant:v26];
  v56[3] = v44;
  v43 = [(BKUICurvesView *)self->_mesaFirstEnrollView widthAnchor];
  v42 = [v43 constraintEqualToConstant:v29];
  v56[4] = v42;
  v41 = [(BKUICurvesView *)self->_mesaFirstEnrollView heightAnchor];
  v40 = [v41 constraintEqualToConstant:v9];
  v56[5] = v40;
  v30 = [(BKUICurvesView *)self->_mesaFirstEnrollView centerXAnchor];
  v31 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  v32 = [v31 centerXAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  v56[6] = v33;
  v34 = [(BKUICurvesView *)self->_mesaFirstEnrollView centerYAnchor];
  v35 = [(BKUICurvesView *)self->_mesaSecondEnrollView centerYAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  v56[7] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:8];
  v38 = self->_mesaEnrollContainerConstraints;
  self->_mesaEnrollContainerConstraints = v37;

  [MEMORY[0x277CCAAD0] activateConstraints:self->_mesaEnrollContainerConstraints];
  [(BKUICurvesView *)self->_mesaFirstEnrollView setSublayersSize:v29, v9];
  [(BKUICurvesView *)self->_mesaSecondEnrollView setSublayersSize:v28, v10];
  v39 = *MEMORY[0x277D85DE8];
}

- (void)handleEnrollmentFailure
{
  if ([(BKUIFingerPrintEnrollmentPhaseViewController *)self inBuddy])
  {
    v3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self buttonTray];
    [v3 removeAllButtons];

    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __71__BKUIFingerPrintEnrollmentPhaseViewController_handleEnrollmentFailure__block_invoke;
    v4[3] = &unk_278D09978;
    v4[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.3];
  }
}

void __71__BKUIFingerPrintEnrollmentPhaseViewController_handleEnrollmentFailure__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonTray];
  v3 = [*(a1 + 32) retryButton];
  [v2 addButton:v3];

  v4 = [*(a1 + 32) buttonTray];
  v5 = [*(a1 + 32) skipButton];
  [v4 addButton:v5];

  v6 = [*(a1 + 32) view];
  [v6 layoutIfNeeded];
}

- (void)handleEnrollmentDone
{
  v3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self buttonTray];
  [v3 removeAllButtons];

  v4 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self mesaSecondEnrollView];
  [v4 setAlpha:1.0];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__BKUIFingerPrintEnrollmentPhaseViewController_handleEnrollmentDone__block_invoke;
  v5[3] = &unk_278D09978;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.01];
}

uint64_t __68__BKUIFingerPrintEnrollmentPhaseViewController_handleEnrollmentDone__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonTray];
  v3 = [*(a1 + 32) continueButton];
  [v2 addButton:v3];

  v4 = *(a1 + 32);

  return [v4 _forceLayout];
}

- (void)setEnrollViewState:(unint64_t)a3
{
  if (self->_enrollViewState != a3)
  {
    self->_enrollViewState = a3;
    [(BKUIFingerPrintEnrollmentPhaseViewController *)self _handleViewState:?];
  }
}

- (void)_handleViewState:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _idealEnrollCurveViewSize];
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _updateEnrollViewsForSize:?];
      v8 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerTitle];
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self setHeaderTitle:v8];

      v9 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
      v10 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self _detailPhasesText];
      [v9 setDetailText:v10];

      v11 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self mesaSecondEnrollView];
      [v11 setAlpha:1.0];

      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _forceLayout];
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _updateContentViewSizeToMatchConstraints];
      v20 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
      [v20 origin];
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self setAnchorPoint:?];
    }

    else
    {
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _forceResetCurvesLayerToPercent:0.0];
      v14 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self buttonTray];
      [v14 removeAllButtons];

      v15 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
      [v15 setTitleTrailingSymbol:&stru_2853BB280];

      v16 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerTitle];
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self setHeaderTitle:v16];

      v17 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
      v18 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self _detailPhasesText];
      [v17 setDetailText:v18];

      v19 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self mesaSecondEnrollView];
      [v19 setAlpha:0.0];

      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _forceLayout];
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _updateContentViewSizeToMatchConstraints];
      v20 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self touchindicatorWindow];
      [v20 setShouldShow:1];
    }

    goto LABEL_15;
  }

  switch(a3)
  {
    case 2uLL:
      v20 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self _detailTextDonePhase];
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _forceLayout];
      v12 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self touchindicatorWindow];
      [v12 setShouldShow:0];

      [(BKUIFingerPrintEnrollmentPhaseViewController *)self handleEnrollmentDone];
LABEL_15:

      return;
    case 3uLL:
      v4 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"ENROLL_FAILED_PROMPT";
      break;
    case 4uLL:
      v4 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"TRY_AGAIN";
      break;
    default:
      return;
  }

  v13 = [v5 localizedStringForKey:v7 value:&stru_2853BB280 table:@"BiometricKitUI"];
  [v4 setDetailText:v13];

  [(BKUIFingerPrintEnrollmentPhaseViewController *)self _forceLayout];
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self handleEnrollmentFailure];

  [(BKUIFingerPrintEnrollmentPhaseViewController *)self _forceResetCurvesLayerToPercent:0.0];
}

- (void)_forceLayout
{
  v3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
  [v3 setNeedsLayout];

  v4 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
  [v4 layoutIfNeeded];
}

- (CGSize)_idealEnrollCurveViewSize
{
  v3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
  [v3 frame];
  v5 = v4;
  v6 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
  [v6 frame];
  v8 = v7;

  if ([(BKUIFingerPrintEnrollmentPhaseViewController *)self _isIPad])
  {
    v9 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
    [v9 frame];
    v11 = v10;

    v12 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
    [v12 frame];
    v14 = v13;

    if (v11 >= v14)
    {
      v11 = v14;
    }

    v15 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
    [v15 frame];
    v17 = v11 - v16;

    v18 = MGGetProductType();
    if (v18 == 2903084588 || v18 == 1895344378)
    {
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self buttonTraySize];
      v17 = v17 - v19;
    }
  }

  else
  {
    v17 = v5 - v8;
  }

  v20 = 0.0;
  v21 = v17;
  result.height = v21;
  result.width = v20;
  return result;
}

- (BOOL)shouldAnimateEntireView
{
  v3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  [v3 frame];
  v5 = v4;
  [(BKUICurvesView *)self->_mesaFirstEnrollView bounds];
  v7 = v5 + v6;
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self _enrollViewTopPadding];
  v9 = v8 + v7;

  v10 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self buttonTray];
  [v10 frame];
  v12 = v11;

  bkui_fingerprint_enroll_view_controller_log = self->bkui_fingerprint_enroll_view_controller_log;
  if (os_log_type_enabled(bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [(BKUIFingerPrintEnrollmentPhaseViewController *)bkui_fingerprint_enroll_view_controller_log shouldAnimateEntireView];
  }

  return v9 > v12;
}

- (double)_enrollViewTopPadding
{
  v3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
  [v3 bounds];
  v5 = v4 * 0.13;
  v6 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  [v6 frame];
  v8 = v7;
  v9 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self mesaSecondEnrollView];
  [v9 frame];
  v11 = (v8 - v10) * 0.5;
  v12 = fminf(v5, v11);

  return v12;
}

- (void)_continuePressed:(id)a3
{
  v4 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self delegate];
  [v4 didSelectPrimaryButton:self];
}

- (void)_enrollSkipped
{
  v3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self delegate];
  [v3 didSelectSecondaryButton:self];
}

- (id)_subtitleFont
{
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self _isIPad];
  v2 = [MEMORY[0x277D74300] systemFontOfSize:18.0];

  return v2;
}

- (BOOL)_isIPad
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

void __96__BKUIFingerPrintEnrollmentPhaseViewController_updateHeaderWithTitle_animated_heightDifference___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained shouldAnimateEntireView])
  {
    goto LABEL_14;
  }

  v5 = [WeakRetained contentView];
  [v5 frame];
  v7 = v6;
  [WeakRetained anchorPoint];
  v9 = v8;

  if (v7 != v9)
  {
    v16 = *(a1 + 48);
    v17 = [WeakRetained enrollCurvesViewTopConstraint];
    v15 = v17;
    v18 = v16;
LABEL_9:
    [v17 setConstant:v18];
LABEL_10:

    goto LABEL_11;
  }

  v10 = *(a1 + 48) + a2;
  if (a2 >= 0.0)
  {
    v17 = [WeakRetained enrollCurvesViewTopConstraint];
    v15 = v17;
    v18 = v10;
    goto LABEL_9;
  }

  v11 = [WeakRetained enrollCurvesViewTopConstraint];
  [v11 setConstant:{fmax(v10, -15.0)}];

  v12 = [WeakRetained enrollCurvesViewTopConstraint];
  [v12 constant];
  v14 = v13;

  if (v14 < 10.0)
  {
    v15 = _BKUILoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __96__BKUIFingerPrintEnrollmentPhaseViewController_updateHeaderWithTitle_animated_heightDifference___block_invoke_cold_1(v15);
    }

    goto LABEL_10;
  }

LABEL_11:
  v19 = [WeakRetained view];
  [v19 layoutIfNeeded];

  if ([*(a1 + 32) enrollViewState] == 2 && objc_msgSend(*(a1 + 32), "showFollowUpEnrollmentUpSellContent"))
  {
    v20 = [*(a1 + 32) headerView];
    [v20 setTitleTrailingSymbol:@"checkmark"];
  }

LABEL_14:
}

- (void)setHeaderTitle:(id)a3
{
  objc_storeStrong(&self->_headerTitle, a3);
  v5 = a3;
  v6 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
  [v6 setTitle:v5];
}

- (void)_forceResetCurvesLayerToPercent:(double)a3
{
  [(BKUICurvesView *)self->_mesaFirstEnrollView setProgress:0.0];
  *&a3 = a3;
  LODWORD(v5) = LODWORD(a3);
  [(BKUICurvesView *)self->_mesaFirstEnrollView setProgress:v5];
  [(BKUICurvesView *)self->_mesaSecondEnrollView setProgress:0.0];
  mesaSecondEnrollView = self->_mesaSecondEnrollView;
  LODWORD(v7) = LODWORD(a3);

  [(BKUICurvesView *)mesaSecondEnrollView setProgress:v7];
}

- (id)_detailPhasesText
{
  if ([(BKUIFingerPrintEnrollmentPhaseViewController *)self _topTouchButtonIpad])
  {
    [(BKUIFingerPrintEnrollmentPhaseViewController *)self enrollProgress];
    if (v3 <= 0.0)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = v8;
      v6 = @"SCAN_FINGER_START_FOLLOW_UP";
      v9 = @"Mesa-j307";
      goto LABEL_13;
    }

    v4 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self enrollViewState];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v4 == 1)
    {
      v6 = @"LIFT_AND_REST_FOLLOW_UP";
    }

    else
    {
      v6 = @"LIFT_AND_REST_LONGER_FOLLOW_UP";
    }

    v9 = @"Mesa-j307";
  }

  else
  {
    v7 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self enrollViewState];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v7 == 1)
    {
      v6 = @"LIFT_AND_REST";
    }

    else
    {
      v6 = @"LIFT_AND_REST_LONGER";
    }

    v9 = @"BiometricKitUI";
  }

  v8 = v5;
LABEL_13:
  v10 = [v8 localizedStringForKey:v6 value:&stru_2853BB280 table:v9];

  return v10;
}

- (id)_detailTextDonePhase
{
  if ([(BKUIFingerPrintEnrollmentPhaseViewController *)self showFollowUpEnrollmentUpSellContent])
  {
    v3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self isSecondEnrollment];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v3)
    {
      v5 = @"FINGER_CAN_BE_ADDED_DELETED_FOLLOW_UP";
    }

    else
    {
      v5 = @"FINGER_READY_FOLLOW_UP";
    }

    v7 = @"Mesa-j307";
    goto LABEL_8;
  }

  v6 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self hideUnlockMessage];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v6)
  {
    v5 = @"SENSOR_IS_READY";
    v7 = @"BiometricKitUI";
LABEL_8:
    v8 = [v4 localizedStringForKey:v5 value:&stru_2853BB280 table:v7];
    goto LABEL_10;
  }

  v9 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"FINGER_CAN_BE_USED"];
  v8 = [v4 localizedStringForKey:v9 value:&stru_2853BB280 table:@"BiometricKitUI"];

LABEL_10:

  return v8;
}

- (void)_updateButtonTraySize
{
  v19 = [objc_alloc(MEMORY[0x277D37698]) initWithTitle:&stru_2853BB280 detailText:&stru_2853BB280 icon:0];
  v3 = [MEMORY[0x277D37618] boldButton];
  v4 = [v19 buttonTray];
  [v4 addButton:v3];

  v5 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v19 view];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [v19 view];
  [v15 layoutIfNeeded];

  v16 = [v19 buttonTray];
  [v16 frame];
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self setButtonTraySize:v17, v18];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BKUIFingerPrintEnrollmentPhaseViewController;
  [(BKUIFingerPrintEnrollmentPhaseViewController *)&v4 dealloc];
}

- (BKUIEmbeddedEnrollmentSelectionType)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)buttonTraySize
{
  width = self->_buttonTraySize.width;
  height = self->_buttonTraySize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)shouldAnimateEntireView
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = a3;
  _os_log_debug_impl(&dword_241B0A000, log, OS_LOG_TYPE_DEBUG, "Enroll Height: %f\tButton Height: %f", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end