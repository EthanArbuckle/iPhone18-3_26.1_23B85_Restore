@interface HUPocketedContainerViewController
- (CGSize)preferredContentSize;
- (HUPocketedContainerViewController)initWithCoder:(id)a3;
- (HUPocketedContainerViewController)initWithContentViewController:(id)a3 pocketViewController:(id)a4;
- (HUPocketedContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_installPocket;
- (id)_tearDownPocket;
- (id)hu_preloadContent;
- (void)_installContentViewController;
- (void)setPocketViewController:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUPocketedContainerViewController

- (HUPocketedContainerViewController)initWithContentViewController:(id)a3 pocketViewController:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HUPocketedContainerViewController.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"contentViewController"}];
  }

  v14.receiver = self;
  v14.super_class = HUPocketedContainerViewController;
  v10 = [(HUPocketedContainerViewController *)&v14 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_contentViewController, a3);
    objc_storeStrong(&v11->_pocketViewController, a4);
  }

  return v11;
}

- (HUPocketedContainerViewController)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithContentViewController_pocketViewController_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUPocketedContainerViewController.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HUPocketedContainerViewController initWithCoder:]", v6}];

  return 0;
}

- (HUPocketedContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithContentViewController_pocketViewController_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUPocketedContainerViewController.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HUPocketedContainerViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HUPocketedContainerViewController;
  [(HUPocketedContainerViewController *)&v4 viewDidLoad];
  [(HUPocketedContainerViewController *)self _installContentViewController];
  v3 = [(HUPocketedContainerViewController *)self _installPocket];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUPocketedContainerViewController;
  [(HUPocketedContainerViewController *)&v5 viewWillAppear:a3];
  v4 = [(HUPocketedContainerViewController *)self _installPocket];
}

- (CGSize)preferredContentSize
{
  v2 = [(HUPocketedContainerViewController *)self contentViewController];
  [v2 preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(HUPocketedContainerViewController *)self contentViewController];
  [v5 setPreferredContentSize:{width, height}];
}

- (void)setPocketViewController:(id)a3
{
  v4 = a3;
  if (self->_pocketViewController != v4)
  {
    objc_initWeak(&location, self);
    v5 = [(HUPocketedContainerViewController *)self _tearDownPocket];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__HUPocketedContainerViewController_setPocketViewController___block_invoke;
    v9[3] = &unk_277DBD700;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    v6 = [v5 flatMap:v9];
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
  v4 = [(HUPocketedContainerViewController *)self contentViewController];
  [v3 na_safeAddObject:v4];

  v5 = [(HUPocketedContainerViewController *)self pocketViewController];
  [v3 na_safeAddObject:v5];

  v6 = [v3 na_map:&__block_literal_global_185];
  if ([v6 count])
  {
    v7 = [MEMORY[0x277D2C900] combineAllFutures:v6];
    v8 = [v7 flatMap:&__block_literal_global_66_3];
  }

  else
  {
    v8 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v8;
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
  v3 = [(HUPocketedContainerViewController *)self pocketViewController];

  if (v3)
  {
    v4 = [(HUPocketedContainerViewController *)self pocketViewController];
    [(HUPocketedContainerViewController *)self addChildViewController:v4];

    v5 = [(HUPocketedContainerViewController *)self pocketViewController];
    v6 = [v5 view];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(HUPocketedContainerViewController *)self view];
    [v7 addSubview:v6];

    v33 = MEMORY[0x277CCAAD0];
    v39 = [v6 bottomAnchor];
    v40 = [(HUPocketedContainerViewController *)self view];
    v38 = [v40 safeAreaLayoutGuide];
    v37 = [v38 bottomAnchor];
    v36 = [v39 constraintEqualToAnchor:v37];
    v46[0] = v36;
    v34 = [v6 leftAnchor];
    v35 = [(HUPocketedContainerViewController *)self view];
    v32 = [v35 leftAnchor];
    v31 = [v34 constraintEqualToAnchor:v32];
    v46[1] = v31;
    v8 = [v6 rightAnchor];
    v9 = [(HUPocketedContainerViewController *)self view];
    v10 = [v9 rightAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    v46[2] = v11;
    v12 = [v6 heightAnchor];
    v13 = [(HUPocketedContainerViewController *)self pocketViewController];
    [v13 preferredContentSize];
    v15 = [v12 constraintEqualToConstant:v14];
    v46[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
    [v33 activateConstraints:v16];

    v17 = objc_alloc(MEMORY[0x277D75D68]);
    v18 = [MEMORY[0x277D75210] effectWithStyle:1];
    v19 = [v17 initWithEffect:v18];

    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [(HUPocketedContainerViewController *)self view];
    [v20 insertSubview:v19 belowSubview:v6];

    v21 = MEMORY[0x277CCAAD0];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __51__HUPocketedContainerViewController__installPocket__block_invoke;
    v43[3] = &unk_277DC0BD8;
    v22 = v19;
    v44 = v22;
    v45 = self;
    v23 = __51__HUPocketedContainerViewController__installPocket__block_invoke(v43);
    [v21 activateConstraints:v23];

    [(HUPocketedContainerViewController *)self setPocketBackgroundView:v22];
    v24 = [(HUPocketedContainerViewController *)self pocketViewController];
    v25 = &unk_28249D748;
    if ([v24 conformsToProtocol:v25])
    {
      v26 = v24;
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
      v29 = [v28 lazyFutureWithBlock:v41];
    }

    else
    {
      v29 = [MEMORY[0x277D2C900] futureWithNoResult];
    }
  }

  else
  {
    v29 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v29;
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
  v3 = [(HUPocketedContainerViewController *)self pocketViewController];

  if (v3)
  {
    v4 = [(HUPocketedContainerViewController *)self pocketViewController];
    [v4 willMoveToParentViewController:0];

    v5 = [(HUPocketedContainerViewController *)self pocketViewController];
    v6 = [v5 view];
    [v6 removeFromSuperview];

    v7 = [(HUPocketedContainerViewController *)self pocketViewController];
    [v7 removeFromParentViewController];

    pocketViewController = self->_pocketViewController;
    self->_pocketViewController = 0;

    v9 = [(HUPocketedContainerViewController *)self contentViewController];
    objc_opt_class();
    v10 = v9;
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
      v13 = [v12 tableView];
      [v13 setContentInset:{0.0, 0.0, 0.0, 0.0}];
    }

    v14 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v14 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v14;
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = HUPocketedContainerViewController;
  [(HUPocketedContainerViewController *)&v11 viewDidLayoutSubviews];
  v3 = [(HUPocketedContainerViewController *)self contentViewController];
  objc_opt_class();
  v4 = v3;
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
    v7 = [(HUPocketedContainerViewController *)self pocketBackgroundView];
    [v7 frame];
    v9 = v8 + 10.0;
    v10 = [v6 tableView];
    [v10 setContentInset:{0.0, 0.0, v9, 0.0}];
  }
}

- (void)_installContentViewController
{
  v26[4] = *MEMORY[0x277D85DE8];
  if ([(HUPocketedContainerViewController *)self isViewLoaded])
  {
    v3 = [(HUPocketedContainerViewController *)self contentViewController];
    [(HUPocketedContainerViewController *)self addChildViewController:v3];

    v4 = [(HUPocketedContainerViewController *)self contentViewController];
    v5 = [v4 view];

    v6 = [(HUPocketedContainerViewController *)self view];
    [v6 addSubview:v5];

    v18 = MEMORY[0x277CCAAD0];
    v24 = [v5 leadingAnchor];
    v25 = [(HUPocketedContainerViewController *)self view];
    v23 = [v25 leadingAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v26[0] = v22;
    v20 = [v5 trailingAnchor];
    v21 = [(HUPocketedContainerViewController *)self view];
    v19 = [v21 trailingAnchor];
    v17 = [v20 constraintEqualToAnchor:v19];
    v26[1] = v17;
    v16 = [v5 topAnchor];
    v7 = [(HUPocketedContainerViewController *)self view];
    v8 = [v7 topAnchor];
    v9 = [v16 constraintEqualToAnchor:v8];
    v26[2] = v9;
    v10 = [v5 bottomAnchor];
    v11 = [(HUPocketedContainerViewController *)self view];
    v12 = [v11 bottomAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    v26[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
    [v18 activateConstraints:v14];

    v15 = [(HUPocketedContainerViewController *)self contentViewController];
    [v15 didMoveToParentViewController:self];
  }
}

@end