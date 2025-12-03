@interface IAMModalViewController
- (BOOL)shouldAutorotate;
- (IAMModalViewController)init;
- (IAMViewControllerMetricsDelegate)metricsDelegate;
- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation IAMModalViewController

- (IAMModalViewController)init
{
  v5.receiver = self;
  v5.super_class = IAMModalViewController;
  v2 = [(IAMModalViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IAMModalViewController *)v2 setModalPresentationStyle:4];
  }

  return v3;
}

- (void)viewDidLoad
{
  v35[4] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = IAMModalViewController;
  [(IAMModalViewController *)&v34 viewDidLoad];
  [(IAMModalViewController *)self setNeedsStatusBarAppearanceUpdate];
  contentViewController = [(IAMModalViewController *)self contentViewController];
  [(IAMModalViewController *)self addChildViewController:contentViewController];

  contentViewController2 = [(IAMModalViewController *)self contentViewController];
  view = [contentViewController2 view];
  [(IAMModalViewController *)self setContentView:view];

  contentView = [(IAMModalViewController *)self contentView];
  [contentView setClipsToBounds:1];

  contentView2 = [(IAMModalViewController *)self contentView];
  [contentView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(IAMModalViewController *)self view];
  contentView3 = [(IAMModalViewController *)self contentView];
  [view2 addSubview:contentView3];

  v24 = MEMORY[0x277CCAAD0];
  contentView4 = [(IAMModalViewController *)self contentView];
  topAnchor = [contentView4 topAnchor];
  view3 = [(IAMModalViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v35[0] = v29;
  contentView5 = [(IAMModalViewController *)self contentView];
  leftAnchor = [contentView5 leftAnchor];
  view4 = [(IAMModalViewController *)self view];
  leftAnchor2 = [view4 leftAnchor];
  v23 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v35[1] = v23;
  contentView6 = [(IAMModalViewController *)self contentView];
  rightAnchor = [contentView6 rightAnchor];
  view5 = [(IAMModalViewController *)self view];
  rightAnchor2 = [view5 rightAnchor];
  v12 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v35[2] = v12;
  contentView7 = [(IAMModalViewController *)self contentView];
  bottomAnchor = [contentView7 bottomAnchor];
  view6 = [(IAMModalViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v35[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  [v24 activateConstraints:v18];

  contentViewController3 = [(IAMModalViewController *)self contentViewController];
  [contentViewController3 didMoveToParentViewController:self];

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldAutorotate
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v21[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v8 = MEMORY[0x277D75FA8];
  presentingControllerCopy = presentingController;
  v10 = [[v8 alloc] initWithPresentedViewController:controllerCopy presentingViewController:presentingControllerCopy];

  [v10 setDelegate:self];
  [v10 _setShouldDismissWhenTappedOutside:1];
  traitCollection = [controllerCopy traitCollection];
  if ([traitCollection horizontalSizeClass] == 2)
  {
    traitCollection2 = [controllerCopy traitCollection];
    v13 = [traitCollection2 userInterfaceIdiom] == 1;
  }

  else
  {
    v13 = 0;
  }

  if ([(IAMModalViewController *)self shouldPresentFullscreen])
  {
    _largeDetent = [MEMORY[0x277D76238] _largeDetent];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __110__IAMModalViewController__presentationControllerForPresentedController_presentingController_sourceController___block_invoke;
    v19[3] = &__block_descriptor_33_e16_d16__0__UIView_8l;
    v20 = v13;
    _largeDetent = [MEMORY[0x277D76238] _detentWithContainerViewBlock:v19];
  }

  v15 = _largeDetent;
  v21[0] = _largeDetent;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  [v10 _setDetents:v16];

  if (!v13)
  {
    [v10 _setWantsBottomAttachedInCompactHeight:1];
    [v10 _setWidthFollowsPreferredContentSizeWhenBottomAttached:1];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

double __110__IAMModalViewController__presentationControllerForPresentedController_presentingController_sourceController___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    return 648.0;
  }

  [a2 safeAreaInsets];
  return 500.0 - v5;
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  metricsDelegate = [(IAMModalViewController *)self metricsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    metricsDelegate2 = [(IAMModalViewController *)self metricsDelegate];
    [metricsDelegate2 viewController:self didReportDismissalAction:1];
  }
}

- (IAMViewControllerMetricsDelegate)metricsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_metricsDelegate);

  return WeakRetained;
}

@end