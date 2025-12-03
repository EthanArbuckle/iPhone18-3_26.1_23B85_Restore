@interface HUPocketedContainerViewController
- (CGSize)preferredContentSize;
- (HUPocketedContainerViewController)initWithCoder:(id)coder;
- (HUPocketedContainerViewController)initWithContentViewController:(id)controller pocketViewController:(id)viewController;
- (HUPocketedContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_installPocket;
- (id)_tearDownPocket;
- (id)hu_preloadContent;
- (void)_installContentViewController;
- (void)setPocketViewController:(id)controller;
- (void)setPreferredContentSize:(CGSize)size;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUPocketedContainerViewController

- (HUPocketedContainerViewController)initWithContentViewController:(id)controller pocketViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (!controllerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUPocketedContainerViewController.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"contentViewController"}];
  }

  v14.receiver = self;
  v14.super_class = HUPocketedContainerViewController;
  v10 = [(HUPocketedContainerViewController *)&v14 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_contentViewController, controller);
    objc_storeStrong(&v11->_pocketViewController, viewController);
  }

  return v11;
}

- (HUPocketedContainerViewController)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithContentViewController_pocketViewController_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPocketedContainerViewController.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HUPocketedContainerViewController initWithCoder:]", v6}];

  return 0;
}

- (HUPocketedContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithContentViewController_pocketViewController_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPocketedContainerViewController.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HUPocketedContainerViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HUPocketedContainerViewController;
  [(HUPocketedContainerViewController *)&v4 viewDidLoad];
  [(HUPocketedContainerViewController *)self _installContentViewController];
  _installPocket = [(HUPocketedContainerViewController *)self _installPocket];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HUPocketedContainerViewController;
  [(HUPocketedContainerViewController *)&v5 viewWillAppear:appear];
  _installPocket = [(HUPocketedContainerViewController *)self _installPocket];
}

- (CGSize)preferredContentSize
{
  contentViewController = [(HUPocketedContainerViewController *)self contentViewController];
  [contentViewController preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  contentViewController = [(HUPocketedContainerViewController *)self contentViewController];
  [contentViewController setPreferredContentSize:{width, height}];
}

- (void)setPocketViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_pocketViewController != controllerCopy)
  {
    objc_initWeak(&location, self);
    _tearDownPocket = [(HUPocketedContainerViewController *)self _tearDownPocket];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__HUPocketedContainerViewController_setPocketViewController___block_invoke;
    v9[3] = &unk_277DBD700;
    objc_copyWeak(&v11, &location);
    v10 = controllerCopy;
    v6 = [_tearDownPocket flatMap:v9];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__HUPocketedContainerViewController_setPocketViewController___block_invoke_2;
    v8[3] = &unk_277DBAFF8;
    v8[4] = self;
    v7 = [v6 flatMap:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

id __61__HUPocketedContainerViewController_setPocketViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 125, *(a1 + 32));
  }

  v4 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v4;
}

- (id)hu_preloadContent
{
  v3 = objc_opt_new();
  contentViewController = [(HUPocketedContainerViewController *)self contentViewController];
  [v3 na_safeAddObject:contentViewController];

  pocketViewController = [(HUPocketedContainerViewController *)self pocketViewController];
  [v3 na_safeAddObject:pocketViewController];

  v6 = [v3 na_map:&__block_literal_global_185];
  if ([v6 count])
  {
    v7 = [MEMORY[0x277D2C900] combineAllFutures:v6];
    futureWithNoResult = [v7 flatMap:&__block_literal_global_66_3];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

id __54__HUPocketedContainerViewController_hu_preloadContent__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_28249D748])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 hu_preloadContent];

  return v5;
}

- (id)_installPocket
{
  v46[4] = *MEMORY[0x277D85DE8];
  pocketViewController = [(HUPocketedContainerViewController *)self pocketViewController];

  if (pocketViewController)
  {
    pocketViewController2 = [(HUPocketedContainerViewController *)self pocketViewController];
    [(HUPocketedContainerViewController *)self addChildViewController:pocketViewController2];

    pocketViewController3 = [(HUPocketedContainerViewController *)self pocketViewController];
    view = [pocketViewController3 view];

    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    view2 = [(HUPocketedContainerViewController *)self view];
    [view2 addSubview:view];

    v33 = MEMORY[0x277CCAAD0];
    bottomAnchor = [view bottomAnchor];
    view3 = [(HUPocketedContainerViewController *)self view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
    v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v46[0] = v36;
    leftAnchor = [view leftAnchor];
    view4 = [(HUPocketedContainerViewController *)self view];
    leftAnchor2 = [view4 leftAnchor];
    v31 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v46[1] = v31;
    rightAnchor = [view rightAnchor];
    view5 = [(HUPocketedContainerViewController *)self view];
    rightAnchor2 = [view5 rightAnchor];
    v11 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v46[2] = v11;
    heightAnchor = [view heightAnchor];
    pocketViewController4 = [(HUPocketedContainerViewController *)self pocketViewController];
    [pocketViewController4 preferredContentSize];
    v15 = [heightAnchor constraintEqualToConstant:v14];
    v46[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
    [v33 activateConstraints:v16];

    v17 = objc_alloc(MEMORY[0x277D75D68]);
    v18 = [MEMORY[0x277D75210] effectWithStyle:1];
    v19 = [v17 initWithEffect:v18];

    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    view6 = [(HUPocketedContainerViewController *)self view];
    [view6 insertSubview:v19 belowSubview:view];

    v21 = MEMORY[0x277CCAAD0];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __51__HUPocketedContainerViewController__installPocket__block_invoke;
    v43[3] = &unk_277DC0BD8;
    v22 = v19;
    v44 = v22;
    selfCopy = self;
    v23 = __51__HUPocketedContainerViewController__installPocket__block_invoke(v43);
    [v21 activateConstraints:v23];

    [(HUPocketedContainerViewController *)self setPocketBackgroundView:v22];
    pocketViewController5 = [(HUPocketedContainerViewController *)self pocketViewController];
    v25 = &unk_28249D748;
    if ([pocketViewController5 conformsToProtocol:v25])
    {
      v26 = pocketViewController5;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    v28 = MEMORY[0x277D2C900];
    if (v27)
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __51__HUPocketedContainerViewController__installPocket__block_invoke_2;
      v41[3] = &unk_277DB7580;
      v42 = v27;
      futureWithNoResult = [v28 lazyFutureWithBlock:v41];
    }

    else
    {
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

id __51__HUPocketedContainerViewController__installPocket__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) leadingAnchor];
  v4 = [*(a1 + 40) view];
  v5 = [v4 leadingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  [v2 addObject:v6];

  v7 = [*(a1 + 32) trailingAnchor];
  v8 = [*(a1 + 40) view];
  v9 = [v8 trailingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  [v2 addObject:v10];

  v11 = [*(a1 + 32) bottomAnchor];
  v12 = [*(a1 + 40) view];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  [v2 addObject:v14];

  v15 = [*(a1 + 32) topAnchor];
  v16 = [*(a1 + 40) pocketViewController];
  v17 = [v16 view];
  v18 = [v17 topAnchor];
  v19 = [v15 constraintEqualToAnchor:v18];
  [v2 addObject:v19];

  return v2;
}

void __51__HUPocketedContainerViewController__installPocket__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 hu_preloadContent];
  v4 = [v3 completionHandlerAdapter];

  v5 = [v6 addCompletionBlock:v4];
}

- (id)_tearDownPocket
{
  pocketViewController = [(HUPocketedContainerViewController *)self pocketViewController];

  if (pocketViewController)
  {
    pocketViewController2 = [(HUPocketedContainerViewController *)self pocketViewController];
    [pocketViewController2 willMoveToParentViewController:0];

    pocketViewController3 = [(HUPocketedContainerViewController *)self pocketViewController];
    view = [pocketViewController3 view];
    [view removeFromSuperview];

    pocketViewController4 = [(HUPocketedContainerViewController *)self pocketViewController];
    [pocketViewController4 removeFromParentViewController];

    pocketViewController = self->_pocketViewController;
    self->_pocketViewController = 0;

    contentViewController = [(HUPocketedContainerViewController *)self contentViewController];
    objc_opt_class();
    v10 = contentViewController;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      tableView = [v12 tableView];
      [tableView setContentInset:{0.0, 0.0, 0.0, 0.0}];
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = HUPocketedContainerViewController;
  [(HUPocketedContainerViewController *)&v11 viewDidLayoutSubviews];
  contentViewController = [(HUPocketedContainerViewController *)self contentViewController];
  objc_opt_class();
  v4 = contentViewController;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    pocketBackgroundView = [(HUPocketedContainerViewController *)self pocketBackgroundView];
    [pocketBackgroundView frame];
    v9 = v8 + 10.0;
    tableView = [v6 tableView];
    [tableView setContentInset:{0.0, 0.0, v9, 0.0}];
  }
}

- (void)_installContentViewController
{
  v26[4] = *MEMORY[0x277D85DE8];
  if ([(HUPocketedContainerViewController *)self isViewLoaded])
  {
    contentViewController = [(HUPocketedContainerViewController *)self contentViewController];
    [(HUPocketedContainerViewController *)self addChildViewController:contentViewController];

    contentViewController2 = [(HUPocketedContainerViewController *)self contentViewController];
    view = [contentViewController2 view];

    view2 = [(HUPocketedContainerViewController *)self view];
    [view2 addSubview:view];

    v18 = MEMORY[0x277CCAAD0];
    leadingAnchor = [view leadingAnchor];
    view3 = [(HUPocketedContainerViewController *)self view];
    leadingAnchor2 = [view3 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[0] = v22;
    trailingAnchor = [view trailingAnchor];
    view4 = [(HUPocketedContainerViewController *)self view];
    trailingAnchor2 = [view4 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[1] = v17;
    topAnchor = [view topAnchor];
    view5 = [(HUPocketedContainerViewController *)self view];
    topAnchor2 = [view5 topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[2] = v9;
    bottomAnchor = [view bottomAnchor];
    view6 = [(HUPocketedContainerViewController *)self view];
    bottomAnchor2 = [view6 bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
    [v18 activateConstraints:v14];

    contentViewController3 = [(HUPocketedContainerViewController *)self contentViewController];
    [contentViewController3 didMoveToParentViewController:self];
  }
}

@end