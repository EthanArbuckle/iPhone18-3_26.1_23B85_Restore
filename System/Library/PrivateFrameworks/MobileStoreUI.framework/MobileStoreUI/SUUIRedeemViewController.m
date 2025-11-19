@interface SUUIRedeemViewController
- (SUUIRedeemViewCameraOverrideDelegate)cameraDelegate;
- (SUUIRedeemViewController)initWithRedeemCategory:(int64_t)a3;
- (void)_presentLegacyRedeem;
- (void)_presentModernRedeemWithURL:(id)a3;
- (void)_redeemURLWithCompletion:(id)a3;
- (void)_setChildViewController:(id)a3;
- (void)_setup;
- (void)_setupNavigationItem;
- (void)_startActivityIndicator;
- (void)_stopActivityIndicator;
- (void)clientInterfaceDidFinishLoading:(id)a3;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SUUIRedeemViewController

- (SUUIRedeemViewController)initWithRedeemCategory:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277D75D28]);
  v8.receiver = self;
  v8.super_class = SUUIRedeemViewController;
  v6 = [(SUUIRedeemViewController *)&v8 initWithRootViewController:v5];

  if (v6)
  {
    v6->_category = a3;
    [(SUUIRedeemViewController *)v6 _setup];
  }

  return v6;
}

- (void)_setup
{
  [(SUUIRedeemViewController *)self setShouldPerformInitialOperationOnAppear:1];
  [(SUUIRedeemViewController *)self setModalPresentationStyle:2];

  [(SUUIRedeemViewController *)self _setupNavigationItem];
}

- (void)_setupNavigationItem
{
  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonAction];
  v3 = [(SUUIRedeemViewController *)self topViewController];
  v4 = [v3 navigationItem];
  [v4 setLeftBarButtonItem:v5];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = SUUIRedeemViewController;
  [(SUUIRedeemViewController *)&v5 loadView];
  v3 = [(SUUIRedeemViewController *)self view];
  v4 = [MEMORY[0x277D75348] whiteColor];
  [v3 setBackgroundColor:v4];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SUUIRedeemViewController;
  [(SUUIRedeemViewController *)&v6 viewDidLoad];
  [(SUUIRedeemViewController *)self _startActivityIndicator];
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__SUUIRedeemViewController_viewDidLoad__block_invoke;
  v3[3] = &unk_2798F8CF8;
  objc_copyWeak(&v4, &location);
  [(SUUIRedeemViewController *)self _redeemURLWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __39__SUUIRedeemViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__SUUIRedeemViewController_viewDidLoad__block_invoke_2;
  v5[3] = &unk_2798F7560;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __39__SUUIRedeemViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _stopActivityIndicator];
  if (*(a1 + 32))
  {
    [WeakRetained _presentModernRedeemWithURL:?];
  }

  else
  {
    [WeakRetained _presentLegacyRedeem];
  }
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SUUIRedeemViewController;
  [(SUUIRedeemViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(SUUIRedeemViewController *)self activityIndicator];
  v4 = [(SUUIRedeemViewController *)self view];
  [v4 center];
  [v3 setCenter:?];
}

- (void)_presentLegacyRedeem
{
  [(SUUIRedeemViewController *)self _stopActivityIndicator];
  v8 = [[SUUIRedeemViewControllerLegacy alloc] initWithRedeemCategory:[(SUUIRedeemViewController *)self category]];
  [(SUUIRedeemViewControllerLegacy *)v8 setAttempsAutomaticRedeem:[(SUUIRedeemViewController *)self attempsAutomaticRedeem]];
  v3 = [(SUUIRedeemViewController *)self cameraDelegate];
  [(SUUIRedeemViewControllerLegacy *)v8 setCameraDelegate:v3];

  v4 = [(SUUIRedeemViewController *)self initialCode];
  [(SUUIRedeemViewControllerLegacy *)v8 setInitialCode:v4];

  v5 = [(SUUIRedeemViewController *)self clientContext];
  [(SUUIRedeemViewControllerLegacy *)v8 setClientContext:v5];

  [(SUUIRedeemViewControllerLegacy *)v8 setCameraRedeemVisible:[(SUUIRedeemViewController *)self cameraRedeemVisible]];
  v6 = [(SUUIRedeemViewController *)self operationQueue];
  [(SUUIRedeemViewControllerLegacy *)v8 setOperationQueue:v6];

  v7 = [(SUUIRedeemViewController *)self redeemConfiguration];
  [(SUUIRedeemViewControllerLegacy *)v8 setRedeemConfiguration:v7];

  [(SUUIRedeemViewControllerLegacy *)v8 setShouldPerformInitialOperationOnAppear:[(SUUIRedeemViewController *)self shouldPerformInitialOperationOnAppear]];
  [(SUUIRedeemViewController *)self _setChildViewController:v8];
}

- (void)_presentModernRedeemWithURL:(id)a3
{
  v4 = a3;
  v5 = [(SUUIRedeemViewController *)self initialCode];

  if (v5)
  {
    v6 = [(SUUIRedeemViewController *)self initialCode];
    v7 = [v4 URLByAppendingQueryParameter:@"code" value:v6];

    v4 = v7;
  }

  v8 = [objc_alloc(MEMORY[0x277CDD340]) initWithAccountURL:v4];
  v9 = [v8 view];
  v10 = [MEMORY[0x277D75348] whiteColor];
  [v9 setBackgroundColor:v10];

  objc_storeStrong(&self->_embeddedViewController, v8);
  v11 = [objc_alloc(MEMORY[0x277D7FE20]) initWithChildViewController:v8];
  v12 = [v11 view];
  v13 = [MEMORY[0x277D75348] whiteColor];
  [v12 setBackgroundColor:v13];

  v14 = [(SUUIRedeemViewController *)self navigationController];

  if (v14)
  {
    [(SUUIRedeemViewController *)self _setChildViewController:v11];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v11];
    v16 = [v15 view];
    v17 = [MEMORY[0x277D75348] whiteColor];
    [v16 setBackgroundColor:v17];

    [(SUUIRedeemViewController *)self _setChildViewController:v15];
  }

  v18 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUUIRedeemViewController__presentModernRedeemWithURL___block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_after(v18, MEMORY[0x277D85CD0], block);
}

void __56__SUUIRedeemViewController__presentModernRedeemWithURL___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 1474) & 1) == 0)
  {
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:*(a1 + 32) action:sel__cancelButtonAction];
    [v5 setTag:999];
    v3 = [*(a1 + 32) embeddedViewController];
    v4 = [v3 navigationItem];
    [v4 setLeftBarButtonItem:v5 animated:1];
  }
}

- (void)_redeemURLWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D69C90] contextWithBagType:0];
  v5 = [objc_alloc(MEMORY[0x277D7FCF8]) initWithBagContext:v4];
  objc_initWeak(&location, v5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SUUIRedeemViewController__redeemURLWithCompletion___block_invoke;
  v8[3] = &unk_2798F8D20;
  v6 = v3;
  v9 = v6;
  objc_copyWeak(&v10, &location);
  [v5 setCompletionBlock:v8];
  v7 = [MEMORY[0x277D7FD20] mainQueue];
  [v7 addOperation:v5];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __53__SUUIRedeemViewController__redeemURLWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = MEMORY[0x277CBEBC0];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained URLBag];
    v4 = [v3 valueForKey:@"redeemCodeLanding"];
    v5 = [v2 URLWithString:v4];
    (*(v1 + 16))(v1, v5);
  }
}

- (void)clientInterfaceDidFinishLoading:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  self->_finishedLoading = 1;
  v3 = [(SUUIRedeemViewController *)self embeddedViewController];
  v4 = [v3 navigationItem];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 leftBarButtonItems];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v14 + 1) + 8 * v10) tag] == 999)
        {
          v12 = [v4 leftBarButtonItems];
          v13 = [v12 mutableCopy];

          [v13 removeObjectAtIndex:v11];
          [v4 setLeftBarButtonItems:v13 animated:1];

          goto LABEL_11;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_setChildViewController:(id)a3
{
  v9 = a3;
  [(SUUIRedeemViewController *)self setNavigationBarHidden:1];
  [v9 willMoveToParentViewController:self];
  v4 = [v9 view];
  v5 = [(SUUIRedeemViewController *)self view];
  [v5 bounds];
  [v4 setFrame:?];

  v6 = [v9 view];
  [v6 setAutoresizingMask:18];

  v7 = [(SUUIRedeemViewController *)self view];
  v8 = [v9 view];
  [v7 addSubview:v8];

  [(SUUIRedeemViewController *)self addChildViewController:v9];
  [v9 didMoveToParentViewController:self];
}

- (void)_startActivityIndicator
{
  v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
  [v4 startAnimating];
  v3 = [(SUUIRedeemViewController *)self view];
  [v3 addSubview:v4];

  [(SUUIRedeemViewController *)self setActivityIndicator:v4];
}

- (void)_stopActivityIndicator
{
  v3 = [(SUUIRedeemViewController *)self activityIndicator];
  [v3 stopAnimating];
  [v3 removeFromSuperview];
  [(SUUIRedeemViewController *)self setActivityIndicator:0];
}

- (SUUIRedeemViewCameraOverrideDelegate)cameraDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraDelegate);

  return WeakRetained;
}

@end