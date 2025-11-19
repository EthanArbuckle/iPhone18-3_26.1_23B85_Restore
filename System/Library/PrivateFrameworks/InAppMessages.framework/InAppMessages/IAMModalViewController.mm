@interface IAMModalViewController
- (BOOL)shouldAutorotate;
- (IAMModalViewController)init;
- (IAMViewControllerMetricsDelegate)metricsDelegate;
- (id)_presentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)presentationControllerWillDismiss:(id)a3;
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
  v3 = [(IAMModalViewController *)self contentViewController];
  [(IAMModalViewController *)self addChildViewController:v3];

  v4 = [(IAMModalViewController *)self contentViewController];
  v5 = [v4 view];
  [(IAMModalViewController *)self setContentView:v5];

  v6 = [(IAMModalViewController *)self contentView];
  [v6 setClipsToBounds:1];

  v7 = [(IAMModalViewController *)self contentView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(IAMModalViewController *)self view];
  v9 = [(IAMModalViewController *)self contentView];
  [v8 addSubview:v9];

  v24 = MEMORY[0x277CCAAD0];
  v33 = [(IAMModalViewController *)self contentView];
  v31 = [v33 topAnchor];
  v32 = [(IAMModalViewController *)self view];
  v30 = [v32 topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v35[0] = v29;
  v28 = [(IAMModalViewController *)self contentView];
  v26 = [v28 leftAnchor];
  v27 = [(IAMModalViewController *)self view];
  v25 = [v27 leftAnchor];
  v23 = [v26 constraintEqualToAnchor:v25];
  v35[1] = v23;
  v22 = [(IAMModalViewController *)self contentView];
  v21 = [v22 rightAnchor];
  v10 = [(IAMModalViewController *)self view];
  v11 = [v10 rightAnchor];
  v12 = [v21 constraintEqualToAnchor:v11];
  v35[2] = v12;
  v13 = [(IAMModalViewController *)self contentView];
  v14 = [v13 bottomAnchor];
  v15 = [(IAMModalViewController *)self view];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v35[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  [v24 activateConstraints:v18];

  v19 = [(IAMModalViewController *)self contentViewController];
  [v19 didMoveToParentViewController:self];

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldAutorotate
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (id)_presentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = MEMORY[0x277D75FA8];
  v9 = a4;
  v10 = [[v8 alloc] initWithPresentedViewController:v7 presentingViewController:v9];

  [v10 setDelegate:self];
  [v10 _setShouldDismissWhenTappedOutside:1];
  v11 = [v7 traitCollection];
  if ([v11 horizontalSizeClass] == 2)
  {
    v12 = [v7 traitCollection];
    v13 = [v12 userInterfaceIdiom] == 1;
  }

  else
  {
    v13 = 0;
  }

  if ([(IAMModalViewController *)self shouldPresentFullscreen])
  {
    v14 = [MEMORY[0x277D76238] _largeDetent];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __110__IAMModalViewController__presentationControllerForPresentedController_presentingController_sourceController___block_invoke;
    v19[3] = &__block_descriptor_33_e16_d16__0__UIView_8l;
    v20 = v13;
    v14 = [MEMORY[0x277D76238] _detentWithContainerViewBlock:v19];
  }

  v15 = v14;
  v21[0] = v14;
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

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = [(IAMModalViewController *)self metricsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(IAMModalViewController *)self metricsDelegate];
    [v6 viewController:self didReportDismissalAction:1];
  }
}

- (IAMViewControllerMetricsDelegate)metricsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_metricsDelegate);

  return WeakRetained;
}

@end