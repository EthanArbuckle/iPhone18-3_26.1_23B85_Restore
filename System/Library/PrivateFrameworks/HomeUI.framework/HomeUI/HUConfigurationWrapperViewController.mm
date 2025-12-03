@interface HUConfigurationWrapperViewController
- (BOOL)_canGoNext;
- (HUConfigurationContentViewController)protocolConformingContentViewController;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUConfigurationWrapperViewController)initWithContentViewController:(id)controller configurationDelegate:(id)delegate;
- (id)hu_preloadContent;
- (id)title;
- (void)_backAction:(id)action;
- (void)_nextAction:(id)action;
- (void)_updateNextButton;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUConfigurationWrapperViewController

- (HUConfigurationWrapperViewController)initWithContentViewController:(id)controller configurationDelegate:(id)delegate
{
  controllerCopy = controller;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = HUConfigurationWrapperViewController;
  v9 = [(HUConfigurationWrapperViewController *)&v21 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentViewController, controller);
    protocolConformingContentViewController = [(HUConfigurationWrapperViewController *)v10 protocolConformingContentViewController];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      protocolConformingContentViewController2 = [(HUConfigurationWrapperViewController *)v10 protocolConformingContentViewController];
      [protocolConformingContentViewController2 setDelegate:v10];
    }

    objc_storeWeak(&v10->_delegate, delegateCopy);
    v10->_isFinalStep = 0;
    v14 = objc_alloc(MEMORY[0x277D751E0]);
    v15 = _HULocalizedStringWithDefaultValue(@"HUBackTitle", @"HUBackTitle", 1);
    v16 = [v14 initWithTitle:v15 style:0 target:0 action:0];
    backButtonItem = v10->_backButtonItem;
    v10->_backButtonItem = v16;

    v18 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:0 style:2 target:v10 action:sel__nextAction_];
    nextButtonItem = v10->_nextButtonItem;
    v10->_nextButtonItem = v18;
  }

  return v10;
}

- (id)title
{
  contentViewController = [(HUConfigurationWrapperViewController *)self contentViewController];
  title = [contentViewController title];

  return title;
}

- (void)viewDidLoad
{
  v41[4] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = HUConfigurationWrapperViewController;
  [(HUConfigurationWrapperViewController *)&v40 viewDidLoad];
  contentViewController = [(HUConfigurationWrapperViewController *)self contentViewController];
  [(HUConfigurationWrapperViewController *)self addChildViewController:contentViewController];

  contentViewController2 = [(HUConfigurationWrapperViewController *)self contentViewController];
  view = [contentViewController2 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(HUConfigurationWrapperViewController *)self view];
  contentViewController3 = [(HUConfigurationWrapperViewController *)self contentViewController];
  view3 = [contentViewController3 view];
  [view2 addSubview:view3];

  v28 = MEMORY[0x277CCAAD0];
  view4 = [(HUConfigurationWrapperViewController *)self view];
  leadingAnchor = [view4 leadingAnchor];
  contentViewController4 = [(HUConfigurationWrapperViewController *)self contentViewController];
  view5 = [contentViewController4 view];
  leadingAnchor2 = [view5 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[0] = v34;
  view6 = [(HUConfigurationWrapperViewController *)self view];
  trailingAnchor = [view6 trailingAnchor];
  contentViewController5 = [(HUConfigurationWrapperViewController *)self contentViewController];
  view7 = [contentViewController5 view];
  trailingAnchor2 = [view7 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[1] = v27;
  view8 = [(HUConfigurationWrapperViewController *)self view];
  topAnchor = [view8 topAnchor];
  contentViewController6 = [(HUConfigurationWrapperViewController *)self contentViewController];
  view9 = [contentViewController6 view];
  topAnchor2 = [view9 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v41[2] = v10;
  view10 = [(HUConfigurationWrapperViewController *)self view];
  bottomAnchor = [view10 bottomAnchor];
  contentViewController7 = [(HUConfigurationWrapperViewController *)self contentViewController];
  view11 = [contentViewController7 view];
  bottomAnchor2 = [view11 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v41[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  [v28 activateConstraints:v17];

  contentViewController8 = [(HUConfigurationWrapperViewController *)self contentViewController];
  [contentViewController8 didMoveToParentViewController:self];

  backButtonItem = [(HUConfigurationWrapperViewController *)self backButtonItem];
  navigationItem = [(HUConfigurationWrapperViewController *)self navigationItem];
  [navigationItem setBackBarButtonItem:backButtonItem];

  nextButtonItem = [(HUConfigurationWrapperViewController *)self nextButtonItem];
  navigationItem2 = [(HUConfigurationWrapperViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:nextButtonItem];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HUConfigurationWrapperViewController;
  [(HUConfigurationWrapperViewController *)&v5 viewWillAppear:appear];
  delegate = [(HUConfigurationWrapperViewController *)self delegate];
  [delegate viewControllerWillAppear:self];

  [(HUConfigurationWrapperViewController *)self _updateNextButton];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = HUConfigurationWrapperViewController;
  [(HUConfigurationWrapperViewController *)&v6 viewWillDisappear:disappear];
  if ([(HUConfigurationWrapperViewController *)self isMovingFromParentViewController])
  {
    navigationItem = [(HUConfigurationWrapperViewController *)self navigationItem];
    backBarButtonItem = [navigationItem backBarButtonItem];
    [(HUConfigurationWrapperViewController *)self _backAction:backBarButtonItem];
  }
}

- (id)hu_preloadContent
{
  contentViewController = [(HUConfigurationWrapperViewController *)self contentViewController];
  if ([contentViewController conformsToProtocol:&unk_28249D748])
  {
    v3 = contentViewController;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    [v4 hu_preloadContent];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v5 = ;

  return v5;
}

- (HUConfigurationContentViewController)protocolConformingContentViewController
{
  contentViewController = [(HUConfigurationWrapperViewController *)self contentViewController];
  if ([contentViewController conformsToProtocol:&unk_2825BD840])
  {
    v3 = contentViewController;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)_canGoNext
{
  finishFuture = [(HUConfigurationWrapperViewController *)self finishFuture];
  if (finishFuture)
  {
    v4 = finishFuture;
    finishFuture2 = [(HUConfigurationWrapperViewController *)self finishFuture];
    isFinished = [finishFuture2 isFinished];

    if (!isFinished)
    {
      return 0;
    }
  }

  protocolConformingContentViewController = [(HUConfigurationWrapperViewController *)self protocolConformingContentViewController];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    return 1;
  }

  protocolConformingContentViewController2 = [(HUConfigurationWrapperViewController *)self protocolConformingContentViewController];
  canFinishConfiguration = [protocolConformingContentViewController2 canFinishConfiguration];

  return canFinishConfiguration;
}

- (void)_updateNextButton
{
  _canGoNext = [(HUConfigurationWrapperViewController *)self _canGoNext];
  nextButtonItem = [(HUConfigurationWrapperViewController *)self nextButtonItem];
  [nextButtonItem setEnabled:_canGoNext];

  if ([(HUConfigurationWrapperViewController *)self isFinalStep])
  {
    v5 = @"HUDoneTitle";
  }

  else
  {
    v5 = @"HUNextTitle";
  }

  v7 = _HULocalizedStringWithDefaultValue(v5, v5, 1);
  nextButtonItem2 = [(HUConfigurationWrapperViewController *)self nextButtonItem];
  [nextButtonItem2 setTitle:v7];
}

- (void)_backAction:(id)action
{
  actionCopy = action;
  v5 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC10]];
  protocolConformingContentViewController = [(HUConfigurationWrapperViewController *)self protocolConformingContentViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    protocolConformingContentViewController2 = [(HUConfigurationWrapperViewController *)self protocolConformingContentViewController];
    cancelConfiguration = [protocolConformingContentViewController2 cancelConfiguration];

    v5 = cancelConfiguration;
  }

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__HUConfigurationWrapperViewController__backAction___block_invoke;
  v11[3] = &unk_277DBB4A0;
  objc_copyWeak(&v12, &location);
  v10 = [v5 addCompletionBlock:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __52__HUConfigurationWrapperViewController__backAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 viewControllerDidGoBack:WeakRetained];
}

- (void)_nextAction:(id)action
{
  actionCopy = action;
  if (![(HUConfigurationWrapperViewController *)self _canGoNext])
  {
    contentViewController = [(HUConfigurationWrapperViewController *)self contentViewController];
    NSLog(&cfstr_NextActionSent.isa, contentViewController);
  }

  finishFuture = [(HUConfigurationWrapperViewController *)self finishFuture];
  if (!finishFuture || (v7 = finishFuture, -[HUConfigurationWrapperViewController finishFuture](self, "finishFuture"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isFinished], v8, v7, v9))
  {
    protocolConformingContentViewController = [(HUConfigurationWrapperViewController *)self protocolConformingContentViewController];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      protocolConformingContentViewController2 = [(HUConfigurationWrapperViewController *)self protocolConformingContentViewController];
      finishConfiguration = [protocolConformingContentViewController2 finishConfiguration];
      [(HUConfigurationWrapperViewController *)self setFinishFuture:finishConfiguration];

      [(HUConfigurationWrapperViewController *)self _updateNextButton];
      objc_initWeak(&location, self);
      finishFuture2 = [(HUConfigurationWrapperViewController *)self finishFuture];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __52__HUConfigurationWrapperViewController__nextAction___block_invoke;
      v21[3] = &unk_277DBB4C8;
      objc_copyWeak(&v22, &location);
      v15 = [finishFuture2 addSuccessBlock:v21];

      finishFuture3 = [(HUConfigurationWrapperViewController *)self finishFuture];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __52__HUConfigurationWrapperViewController__nextAction___block_invoke_2;
      v19[3] = &unk_277DBB4A0;
      objc_copyWeak(&v20, &location);
      v17 = [finishFuture3 addCompletionBlock:v19];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    else
    {
      delegate = [(HUConfigurationWrapperViewController *)self delegate];
      [delegate viewController:self didFinishWithConfigurationResults:0];
    }
  }
}

void __52__HUConfigurationWrapperViewController__nextAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  [v4 viewController:WeakRetained didFinishWithConfigurationResults:v3];
}

void __52__HUConfigurationWrapperViewController__nextAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateNextButton];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end