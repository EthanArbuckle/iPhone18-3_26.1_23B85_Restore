@interface HUConfigurationWrapperViewController
- (BOOL)_canGoNext;
- (HUConfigurationContentViewController)protocolConformingContentViewController;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUConfigurationWrapperViewController)initWithContentViewController:(id)a3 configurationDelegate:(id)a4;
- (id)hu_preloadContent;
- (id)title;
- (void)_backAction:(id)a3;
- (void)_nextAction:(id)a3;
- (void)_updateNextButton;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUConfigurationWrapperViewController

- (HUConfigurationWrapperViewController)initWithContentViewController:(id)a3 configurationDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = HUConfigurationWrapperViewController;
  v9 = [(HUConfigurationWrapperViewController *)&v21 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentViewController, a3);
    v11 = [(HUConfigurationWrapperViewController *)v10 protocolConformingContentViewController];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(HUConfigurationWrapperViewController *)v10 protocolConformingContentViewController];
      [v13 setDelegate:v10];
    }

    objc_storeWeak(&v10->_delegate, v8);
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
  v2 = [(HUConfigurationWrapperViewController *)self contentViewController];
  v3 = [v2 title];

  return v3;
}

- (void)viewDidLoad
{
  v41[4] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = HUConfigurationWrapperViewController;
  [(HUConfigurationWrapperViewController *)&v40 viewDidLoad];
  v3 = [(HUConfigurationWrapperViewController *)self contentViewController];
  [(HUConfigurationWrapperViewController *)self addChildViewController:v3];

  v4 = [(HUConfigurationWrapperViewController *)self contentViewController];
  v5 = [v4 view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HUConfigurationWrapperViewController *)self view];
  v7 = [(HUConfigurationWrapperViewController *)self contentViewController];
  v8 = [v7 view];
  [v6 addSubview:v8];

  v28 = MEMORY[0x277CCAAD0];
  v39 = [(HUConfigurationWrapperViewController *)self view];
  v37 = [v39 leadingAnchor];
  v38 = [(HUConfigurationWrapperViewController *)self contentViewController];
  v36 = [v38 view];
  v35 = [v36 leadingAnchor];
  v34 = [v37 constraintEqualToAnchor:v35];
  v41[0] = v34;
  v33 = [(HUConfigurationWrapperViewController *)self view];
  v31 = [v33 trailingAnchor];
  v32 = [(HUConfigurationWrapperViewController *)self contentViewController];
  v30 = [v32 view];
  v29 = [v30 trailingAnchor];
  v27 = [v31 constraintEqualToAnchor:v29];
  v41[1] = v27;
  v26 = [(HUConfigurationWrapperViewController *)self view];
  v24 = [v26 topAnchor];
  v25 = [(HUConfigurationWrapperViewController *)self contentViewController];
  v23 = [v25 view];
  v9 = [v23 topAnchor];
  v10 = [v24 constraintEqualToAnchor:v9];
  v41[2] = v10;
  v11 = [(HUConfigurationWrapperViewController *)self view];
  v12 = [v11 bottomAnchor];
  v13 = [(HUConfigurationWrapperViewController *)self contentViewController];
  v14 = [v13 view];
  v15 = [v14 bottomAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];
  v41[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  [v28 activateConstraints:v17];

  v18 = [(HUConfigurationWrapperViewController *)self contentViewController];
  [v18 didMoveToParentViewController:self];

  v19 = [(HUConfigurationWrapperViewController *)self backButtonItem];
  v20 = [(HUConfigurationWrapperViewController *)self navigationItem];
  [v20 setBackBarButtonItem:v19];

  v21 = [(HUConfigurationWrapperViewController *)self nextButtonItem];
  v22 = [(HUConfigurationWrapperViewController *)self navigationItem];
  [v22 setRightBarButtonItem:v21];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUConfigurationWrapperViewController;
  [(HUConfigurationWrapperViewController *)&v5 viewWillAppear:a3];
  v4 = [(HUConfigurationWrapperViewController *)self delegate];
  [v4 viewControllerWillAppear:self];

  [(HUConfigurationWrapperViewController *)self _updateNextButton];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = HUConfigurationWrapperViewController;
  [(HUConfigurationWrapperViewController *)&v6 viewWillDisappear:a3];
  if ([(HUConfigurationWrapperViewController *)self isMovingFromParentViewController])
  {
    v4 = [(HUConfigurationWrapperViewController *)self navigationItem];
    v5 = [v4 backBarButtonItem];
    [(HUConfigurationWrapperViewController *)self _backAction:v5];
  }
}

- (id)hu_preloadContent
{
  v2 = [(HUConfigurationWrapperViewController *)self contentViewController];
  if ([v2 conformsToProtocol:&unk_28249D748])
  {
    v3 = v2;
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
  v2 = [(HUConfigurationWrapperViewController *)self contentViewController];
  if ([v2 conformsToProtocol:&unk_2825BD840])
  {
    v3 = v2;
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
  v3 = [(HUConfigurationWrapperViewController *)self finishFuture];
  if (v3)
  {
    v4 = v3;
    v5 = [(HUConfigurationWrapperViewController *)self finishFuture];
    v6 = [v5 isFinished];

    if (!v6)
    {
      return 0;
    }
  }

  v7 = [(HUConfigurationWrapperViewController *)self protocolConformingContentViewController];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    return 1;
  }

  v9 = [(HUConfigurationWrapperViewController *)self protocolConformingContentViewController];
  v10 = [v9 canFinishConfiguration];

  return v10;
}

- (void)_updateNextButton
{
  v3 = [(HUConfigurationWrapperViewController *)self _canGoNext];
  v4 = [(HUConfigurationWrapperViewController *)self nextButtonItem];
  [v4 setEnabled:v3];

  if ([(HUConfigurationWrapperViewController *)self isFinalStep])
  {
    v5 = @"HUDoneTitle";
  }

  else
  {
    v5 = @"HUNextTitle";
  }

  v7 = _HULocalizedStringWithDefaultValue(v5, v5, 1);
  v6 = [(HUConfigurationWrapperViewController *)self nextButtonItem];
  [v6 setTitle:v7];
}

- (void)_backAction:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC10]];
  v6 = [(HUConfigurationWrapperViewController *)self protocolConformingContentViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HUConfigurationWrapperViewController *)self protocolConformingContentViewController];
    v9 = [v8 cancelConfiguration];

    v5 = v9;
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

- (void)_nextAction:(id)a3
{
  v4 = a3;
  if (![(HUConfigurationWrapperViewController *)self _canGoNext])
  {
    v5 = [(HUConfigurationWrapperViewController *)self contentViewController];
    NSLog(&cfstr_NextActionSent.isa, v5);
  }

  v6 = [(HUConfigurationWrapperViewController *)self finishFuture];
  if (!v6 || (v7 = v6, -[HUConfigurationWrapperViewController finishFuture](self, "finishFuture"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isFinished], v8, v7, v9))
  {
    v10 = [(HUConfigurationWrapperViewController *)self protocolConformingContentViewController];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(HUConfigurationWrapperViewController *)self protocolConformingContentViewController];
      v13 = [v12 finishConfiguration];
      [(HUConfigurationWrapperViewController *)self setFinishFuture:v13];

      [(HUConfigurationWrapperViewController *)self _updateNextButton];
      objc_initWeak(&location, self);
      v14 = [(HUConfigurationWrapperViewController *)self finishFuture];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __52__HUConfigurationWrapperViewController__nextAction___block_invoke;
      v21[3] = &unk_277DBB4C8;
      objc_copyWeak(&v22, &location);
      v15 = [v14 addSuccessBlock:v21];

      v16 = [(HUConfigurationWrapperViewController *)self finishFuture];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __52__HUConfigurationWrapperViewController__nextAction___block_invoke_2;
      v19[3] = &unk_277DBB4A0;
      objc_copyWeak(&v20, &location);
      v17 = [v16 addCompletionBlock:v19];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    else
    {
      v18 = [(HUConfigurationWrapperViewController *)self delegate];
      [v18 viewController:self didFinishWithConfigurationResults:0];
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