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
- (void)_continuePressed:(id)pressed;
- (void)_enrollSkipped;
- (void)_forceLayout;
- (void)_forceResetCurvesLayerToPercent:(double)percent;
- (void)_handleViewState:(unint64_t)state;
- (void)_updateButtonTraySize;
- (void)_updateContentViewSizeToMatchConstraints;
- (void)_updateEnrollViewsForSize:(CGSize)size;
- (void)dealloc;
- (void)handleEnrollmentDone;
- (void)handleEnrollmentFailure;
- (void)removeTouchIndicator;
- (void)setEnrollProgress:(float)progress enrollView:(id)view;
- (void)setEnrollViewState:(unint64_t)state;
- (void)setHeaderTitle:(id)title;
- (void)shouldAnimateEntireView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKUIFingerPrintEnrollmentPhaseViewController

- (void)_updateContentViewSizeToMatchConstraints
{
  navigationController = [(BKUIFingerPrintEnrollmentPhaseViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  MaxY = CGRectGetMaxY(v21);

  view = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
  [view frame];
  v8 = v7;

  contentView = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  [contentView frame];
  v11 = v10;

  buttonTray = [(BKUIFingerPrintEnrollmentPhaseViewController *)self buttonTray];
  [buttonTray frame];
  v14 = v13;

  if (!self->_disableContentViewSizing || [(BKUIFingerPrintEnrollmentPhaseViewController *)self rotating])
  {
    contentView2 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
    [contentView2 frame];
    [(BKUIFingerPrintEnrollmentPhaseViewController *)self setAnchorPoint:?];

    v16 = v8 - MaxY - v11 - v14 + -10.0;
    v17 = fmaxf(v16, 241.2);
    contentViewHeightConstraint = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentViewHeightConstraint];
    [contentViewHeightConstraint setConstant:v17];

    contentView3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
    [contentView3 layoutIfNeeded];
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

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self setContinueButton:boldButton];

  continueButton = [(BKUIFingerPrintEnrollmentPhaseViewController *)self continueButton];
  [continueButton setTranslatesAutoresizingMaskIntoConstraints:0];

  continueButton2 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self continueButton];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CONTINUE" value:&stru_2853BB280 table:@"BiometricKitUI"];
  [continueButton2 setTitle:v9 forState:0];

  continueButton3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self continueButton];
  [continueButton3 addTarget:self action:sel__continuePressed_ forControlEvents:64];

  contentView = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  [contentView addSubview:self->_mesaFirstEnrollView];

  contentView2 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  [contentView2 addSubview:self->_mesaSecondEnrollView];

  contentViewHeightConstraint = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentViewHeightConstraint];
  [contentViewHeightConstraint setActive:0];

  if ([(BKUIFingerPrintEnrollmentPhaseViewController *)self inBuddy])
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    [(BKUIFingerPrintEnrollmentPhaseViewController *)self setSkipButton:linkButton];

    skipButton = [(BKUIFingerPrintEnrollmentPhaseViewController *)self skipButton];
    [skipButton setTranslatesAutoresizingMaskIntoConstraints:0];

    skipButton2 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self skipButton];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"SKIP_ENROLL" value:&stru_2853BB280 table:@"BiometricKitUI"];
    [skipButton2 setTitle:v18 forState:0];

    skipButton3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self skipButton];
    [skipButton3 addTarget:self action:sel__enrollSkipped forControlEvents:64];

    boldButton2 = [MEMORY[0x277D37618] boldButton];
    [(BKUIFingerPrintEnrollmentPhaseViewController *)self setRetryButton:boldButton2];

    retryButton = [(BKUIFingerPrintEnrollmentPhaseViewController *)self retryButton];
    [retryButton setTranslatesAutoresizingMaskIntoConstraints:0];

    retryButton2 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self retryButton];
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"RESTART_ENROLL" value:&stru_2853BB280 table:@"BiometricKitUI"];
    [retryButton2 setTitle:v24 forState:0];

    retryButton3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self retryButton];
    [retryButton3 addTarget:self action:sel__continuePressed_ forControlEvents:64];
  }

  [(BKUIFingerPrintEnrollmentPhaseViewController *)self setEnrollViewState:0];
  if ([(BKUIFingerPrintEnrollmentPhaseViewController *)self _topTouchButtonIpad])
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v28 = *MEMORY[0x277D776C0];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __59__BKUIFingerPrintEnrollmentPhaseViewController_viewDidLoad__block_invoke;
    v30[3] = &unk_278D0A050;
    objc_copyWeak(&v31, &location);
    v29 = [defaultCenter addObserverForName:v28 object:0 queue:mainQueue usingBlock:v30];

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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __99__BKUIFingerPrintEnrollmentPhaseViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v8[3] = &unk_278D0A028;
    v8[4] = self;
    [coordinatorCopy animateAlongsideTransition:0 completion:v8];
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

- (void)setEnrollProgress:(float)progress enrollView:(id)view
{
  viewCopy = view;
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self enrollProgress];
  v8 = v7;
  *&v7 = progress;
  [viewCopy setProgress:v7];

  [(BKUIFingerPrintEnrollmentPhaseViewController *)self setEnrollProgress:progress];
  if ([(BKUIFingerPrintEnrollmentPhaseViewController *)self showFollowUpEnrollmentUpSellContent]&& progress > 0.0 && v8 == 0.0 && [(BKUIFingerPrintEnrollmentPhaseViewController *)self inBuddy])
  {
    headerView = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
    _detailPhasesText = [(BKUIFingerPrintEnrollmentPhaseViewController *)self _detailPhasesText];
    [headerView setDetailText:_detailPhasesText];
  }
}

- (void)_updateEnrollViewsForSize:(CGSize)size
{
  height = size.height;
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
    enrollCurvesViewTopConstraint = [(BKUIFingerPrintEnrollmentPhaseViewController *)self enrollCurvesViewTopConstraint];
    [enrollCurvesViewTopConstraint setActive:0];

    [MEMORY[0x277CCAAD0] deactivateConstraints:self->_mesaEnrollContainerConstraints];
    array = MEMORY[0x277CBEBF8];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  mesaEnrollContainerConstraints = self->_mesaEnrollContainerConstraints;
  self->_mesaEnrollContainerConstraints = array;

  [(BKUIFingerPrintEnrollmentPhaseViewController *)self setInnerAndOuterCurvesViewHeightDiff:(v10 - v9) * 0.5];
  view = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
  [view bounds];
  v16 = v15 * 0.13;
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self innerAndOuterCurvesViewHeightDiff];
  *&v17 = v17;
  v18 = fminf(v16, *&v17);

  topAnchor = [(BKUICurvesView *)self->_mesaSecondEnrollView topAnchor];
  contentView = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v18];
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self setEnrollCurvesViewTopConstraint:v22];

  enrollCurvesViewTopConstraint2 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self enrollCurvesViewTopConstraint];
  [enrollCurvesViewTopConstraint2 setActive:1];

  buttonTray = [(BKUIFingerPrintEnrollmentPhaseViewController *)self buttonTray];
  LODWORD(contentView) = [buttonTray isHidden];

  if (contentView)
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
  widthAnchor = [(BKUICurvesView *)self->_mesaSecondEnrollView widthAnchor];
  v54 = [widthAnchor constraintEqualToConstant:v28];
  v56[0] = v54;
  heightAnchor = [(BKUICurvesView *)self->_mesaSecondEnrollView heightAnchor];
  v52 = [heightAnchor constraintEqualToConstant:v10];
  v56[1] = v52;
  centerXAnchor = [(BKUICurvesView *)self->_mesaSecondEnrollView centerXAnchor];
  contentView2 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  centerXAnchor2 = [contentView2 centerXAnchor];
  v48 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:v7];
  v56[2] = v48;
  bottomAnchor = [(BKUICurvesView *)self->_mesaSecondEnrollView bottomAnchor];
  contentView3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v26];
  v56[3] = v44;
  widthAnchor2 = [(BKUICurvesView *)self->_mesaFirstEnrollView widthAnchor];
  v42 = [widthAnchor2 constraintEqualToConstant:v29];
  v56[4] = v42;
  heightAnchor2 = [(BKUICurvesView *)self->_mesaFirstEnrollView heightAnchor];
  v40 = [heightAnchor2 constraintEqualToConstant:v9];
  v56[5] = v40;
  centerXAnchor3 = [(BKUICurvesView *)self->_mesaFirstEnrollView centerXAnchor];
  contentView4 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  centerXAnchor4 = [contentView4 centerXAnchor];
  v33 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v56[6] = v33;
  centerYAnchor = [(BKUICurvesView *)self->_mesaFirstEnrollView centerYAnchor];
  centerYAnchor2 = [(BKUICurvesView *)self->_mesaSecondEnrollView centerYAnchor];
  v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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
    buttonTray = [(BKUIFingerPrintEnrollmentPhaseViewController *)self buttonTray];
    [buttonTray removeAllButtons];

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
  buttonTray = [(BKUIFingerPrintEnrollmentPhaseViewController *)self buttonTray];
  [buttonTray removeAllButtons];

  mesaSecondEnrollView = [(BKUIFingerPrintEnrollmentPhaseViewController *)self mesaSecondEnrollView];
  [mesaSecondEnrollView setAlpha:1.0];

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

- (void)setEnrollViewState:(unint64_t)state
{
  if (self->_enrollViewState != state)
  {
    self->_enrollViewState = state;
    [(BKUIFingerPrintEnrollmentPhaseViewController *)self _handleViewState:?];
  }
}

- (void)_handleViewState:(unint64_t)state
{
  if (state <= 1)
  {
    if (state)
    {
      if (state != 1)
      {
        return;
      }

      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _idealEnrollCurveViewSize];
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _updateEnrollViewsForSize:?];
      headerTitle = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerTitle];
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self setHeaderTitle:headerTitle];

      headerView = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
      _detailPhasesText = [(BKUIFingerPrintEnrollmentPhaseViewController *)self _detailPhasesText];
      [headerView setDetailText:_detailPhasesText];

      mesaSecondEnrollView = [(BKUIFingerPrintEnrollmentPhaseViewController *)self mesaSecondEnrollView];
      [mesaSecondEnrollView setAlpha:1.0];

      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _forceLayout];
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _updateContentViewSizeToMatchConstraints];
      contentView = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
      [contentView origin];
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self setAnchorPoint:?];
    }

    else
    {
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _forceResetCurvesLayerToPercent:0.0];
      buttonTray = [(BKUIFingerPrintEnrollmentPhaseViewController *)self buttonTray];
      [buttonTray removeAllButtons];

      headerView2 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
      [headerView2 setTitleTrailingSymbol:&stru_2853BB280];

      headerTitle2 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerTitle];
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self setHeaderTitle:headerTitle2];

      headerView3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
      _detailPhasesText2 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self _detailPhasesText];
      [headerView3 setDetailText:_detailPhasesText2];

      mesaSecondEnrollView2 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self mesaSecondEnrollView];
      [mesaSecondEnrollView2 setAlpha:0.0];

      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _forceLayout];
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _updateContentViewSizeToMatchConstraints];
      contentView = [(BKUIFingerPrintEnrollmentPhaseViewController *)self touchindicatorWindow];
      [contentView setShouldShow:1];
    }

    goto LABEL_15;
  }

  switch(state)
  {
    case 2uLL:
      contentView = [(BKUIFingerPrintEnrollmentPhaseViewController *)self _detailTextDonePhase];
      [(BKUIFingerPrintEnrollmentPhaseViewController *)self _forceLayout];
      touchindicatorWindow = [(BKUIFingerPrintEnrollmentPhaseViewController *)self touchindicatorWindow];
      [touchindicatorWindow setShouldShow:0];

      [(BKUIFingerPrintEnrollmentPhaseViewController *)self handleEnrollmentDone];
LABEL_15:

      return;
    case 3uLL:
      headerView4 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"ENROLL_FAILED_PROMPT";
      break;
    case 4uLL:
      headerView4 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"TRY_AGAIN";
      break;
    default:
      return;
  }

  v13 = [v5 localizedStringForKey:v7 value:&stru_2853BB280 table:@"BiometricKitUI"];
  [headerView4 setDetailText:v13];

  [(BKUIFingerPrintEnrollmentPhaseViewController *)self _forceLayout];
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self handleEnrollmentFailure];

  [(BKUIFingerPrintEnrollmentPhaseViewController *)self _forceResetCurvesLayerToPercent:0.0];
}

- (void)_forceLayout
{
  view = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
  [view setNeedsLayout];

  view2 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
  [view2 layoutIfNeeded];
}

- (CGSize)_idealEnrollCurveViewSize
{
  view = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
  [view frame];
  v5 = v4;
  headerView = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
  [headerView frame];
  v8 = v7;

  if ([(BKUIFingerPrintEnrollmentPhaseViewController *)self _isIPad])
  {
    view2 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
    [view2 frame];
    v11 = v10;

    view3 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
    [view3 frame];
    v14 = v13;

    if (v11 >= v14)
    {
      v11 = v14;
    }

    headerView2 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
    [headerView2 frame];
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
  contentView = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  [contentView frame];
  v5 = v4;
  [(BKUICurvesView *)self->_mesaFirstEnrollView bounds];
  v7 = v5 + v6;
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self _enrollViewTopPadding];
  v9 = v8 + v7;

  buttonTray = [(BKUIFingerPrintEnrollmentPhaseViewController *)self buttonTray];
  [buttonTray frame];
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
  view = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
  [view bounds];
  v5 = v4 * 0.13;
  contentView = [(BKUIFingerPrintEnrollmentPhaseViewController *)self contentView];
  [contentView frame];
  v8 = v7;
  mesaSecondEnrollView = [(BKUIFingerPrintEnrollmentPhaseViewController *)self mesaSecondEnrollView];
  [mesaSecondEnrollView frame];
  v11 = (v8 - v10) * 0.5;
  v12 = fminf(v5, v11);

  return v12;
}

- (void)_continuePressed:(id)pressed
{
  delegate = [(BKUIFingerPrintEnrollmentPhaseViewController *)self delegate];
  [delegate didSelectPrimaryButton:self];
}

- (void)_enrollSkipped
{
  delegate = [(BKUIFingerPrintEnrollmentPhaseViewController *)self delegate];
  [delegate didSelectSecondaryButton:self];
}

- (id)_subtitleFont
{
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self _isIPad];
  v2 = [MEMORY[0x277D74300] systemFontOfSize:18.0];

  return v2;
}

- (BOOL)_isIPad
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

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

- (void)setHeaderTitle:(id)title
{
  objc_storeStrong(&self->_headerTitle, title);
  titleCopy = title;
  headerView = [(BKUIFingerPrintEnrollmentPhaseViewController *)self headerView];
  [headerView setTitle:titleCopy];
}

- (void)_forceResetCurvesLayerToPercent:(double)percent
{
  [(BKUICurvesView *)self->_mesaFirstEnrollView setProgress:0.0];
  *&percent = percent;
  LODWORD(v5) = LODWORD(percent);
  [(BKUICurvesView *)self->_mesaFirstEnrollView setProgress:v5];
  [(BKUICurvesView *)self->_mesaSecondEnrollView setProgress:0.0];
  mesaSecondEnrollView = self->_mesaSecondEnrollView;
  LODWORD(v7) = LODWORD(percent);

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

    enrollViewState = [(BKUIFingerPrintEnrollmentPhaseViewController *)self enrollViewState];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (enrollViewState == 1)
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
    enrollViewState2 = [(BKUIFingerPrintEnrollmentPhaseViewController *)self enrollViewState];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (enrollViewState2 == 1)
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
    isSecondEnrollment = [(BKUIFingerPrintEnrollmentPhaseViewController *)self isSecondEnrollment];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (isSecondEnrollment)
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

  hideUnlockMessage = [(BKUIFingerPrintEnrollmentPhaseViewController *)self hideUnlockMessage];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (hideUnlockMessage)
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
  boldButton = [MEMORY[0x277D37618] boldButton];
  buttonTray = [v19 buttonTray];
  [buttonTray addButton:boldButton];

  view = [(BKUIFingerPrintEnrollmentPhaseViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [v19 view];
  [view2 setFrame:{v7, v9, v11, v13}];

  view3 = [v19 view];
  [view3 layoutIfNeeded];

  buttonTray2 = [v19 buttonTray];
  [buttonTray2 frame];
  [(BKUIFingerPrintEnrollmentPhaseViewController *)self setButtonTraySize:v17, v18];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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