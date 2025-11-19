@interface SUProductPageViewController
+ (id)_defaultClientIdentifier;
+ (id)_defaultClientInterface;
+ (void)_validateURL:(id)a3 withURLBag:(id)a4 completionBlock:(id)a5;
+ (void)getCanLoadWithURL:(id)a3 completionBlock:(id)a4;
- (BOOL)iPhoneProductPage:(id)a3 shouldOpenItem:(id)a4;
- (BOOL)iPhoneProductPage:(id)a3 shouldOpenURL:(id)a4;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (NSDictionary)scriptContextDictionary;
- (SUProductPageViewController)initWithTabBarItem:(id)a3;
- (SUProductPageViewControllerDelegate)delegate;
- (id)_initSUProductPageViewController;
- (id)_newRequestPropertiesWithRequest:(id)a3;
- (id)_previewOverlay;
- (id)scriptInterfaceForClientInterface:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applicationWillEnterForeground;
- (void)_failWithError:(id)a3;
- (void)_gotoStoreButtonAction:(id)a3;
- (void)_loadClientContextWithCompletionBlock:(id)a3;
- (void)_loadProductWithRequest:(id)a3;
- (void)_loadRequestForProductParameters;
- (void)_purchaseFailedNotification:(id)a3;
- (void)_purchaseFinishedNotification:(id)a3;
- (void)_reloadGotoStoreButton;
- (void)_reloadViews;
- (void)_sendDidFailLoadWithError:(id)a3;
- (void)_sendDidFinishWithResult:(int64_t)a3;
- (void)_setClientContext:(id)a3;
- (void)_setResponse:(id)a3 forProperties:(id)a4 error:(id)a5;
- (void)_showPageWithRequest:(id)a3 animated:(BOOL)a4;
- (void)_showPreviewOverlayAnimated:(BOOL)a3;
- (void)_showProductPage:(id)a3 pageEvent:(id)a4;
- (void)clientInterface:(id)a3 exitStoreWithReason:(int64_t)a4;
- (void)clientInterface:(id)a3 hidePreviewOverlayAnimated:(BOOL)a4;
- (void)clientInterface:(id)a3 presentDialog:(id)a4;
- (void)clientInterface:(id)a3 setStatusBarHidden:(BOOL)a4 withAnimation:(int64_t)a5;
- (void)clientInterface:(id)a3 setStatusBarStyle:(int64_t)a4 animated:(BOOL)a5;
- (void)clientInterface:(id)a3 showPreviewOverlayAnimated:(BOOL)a4;
- (void)clientInterface:(id)a3 willDismissViewController:(id)a4;
- (void)clientInterface:(id)a3 willPresentViewController:(id)a4;
- (void)dealloc;
- (void)iPadProductPage:(id)a3 openItem:(id)a4;
- (void)iPadProductPage:(id)a3 openURL:(id)a4 viewControllerBlock:(id)a5;
- (void)itemStateCenter:(id)a3 didFinishPurchases:(id)a4;
- (void)itemStateCenter:(id)a3 didFinishSoftwarePurchases:(id)a4;
- (void)loadProductWithParameters:(id)a3;
- (void)loadProductWithRequest:(id)a3;
- (void)loadView;
- (void)loadWithProductPage:(id)a3;
- (void)loadWithStorePageRequest:(id)a3;
- (void)purchaseManager:(id)a3 didFinishPurchaseRequest:(id)a4 withError:(id)a5;
- (void)purchaseManager:(id)a3 willAddPurchases:(id)a4;
- (void)setAdditionalPurchaseParameters:(id)a3;
- (void)setAffiliateIdentifier:(id)a3;
- (void)setAskToBuy:(BOOL)a3;
- (void)setClientInterface:(id)a3;
- (void)setProductPageStyle:(int64_t)a3;
- (void)setPromptString:(id)a3;
- (void)setScriptContextDictionary:(id)a3;
- (void)storePage:(id)a3 finishedWithSuccess:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation SUProductPageViewController

- (id)_initSUProductPageViewController
{
  v19.receiver = self;
  v19.super_class = SUProductPageViewController;
  v2 = [(SUViewController *)&v19 init];
  v3 = v2;
  if (v2)
  {
    if (v2->_style == 1)
    {
      v4 = objc_alloc_init(SUUIBannerViewController);
      bannerViewController = v3->_bannerViewController;
      v3->_bannerViewController = v4;

      [(SUUIBannerViewController *)v3->_bannerViewController setDelegate:v3];
      [(SUProductPageViewController *)v3 addChildViewController:v3->_bannerViewController];
    }

    else
    {
      v6 = [objc_opt_class() _defaultClientInterface];
      v7 = objc_alloc_init(MEMORY[0x277D7FE30]);
      [v7 setLeftItemsSupplementBackButton:1];
      [(SUViewController *)v3 _setExistingNavigationItem:v7];
      v3->_showsStoreButton = 1;
      v3->_preview = 0;
      v8 = [(SUViewController *)[SUUIITunesStoreUIPageViewController alloc] initWithSection:0];
      storePageViewController = v3->_storePageViewController;
      v3->_storePageViewController = v8;

      v10 = [(SUStorePageViewController *)v3->_storePageViewController copyScriptProperties];
      if (v3->_style == 1)
      {
        [MEMORY[0x277D75348] clearColor];
      }

      else
      {
        [MEMORY[0x277D75348] colorWithWhite:0.921568627 alpha:1.0];
      }
      v11 = ;
      [v10 setBackgroundColor:v11];

      [(SUStorePageViewController *)v3->_storePageViewController setScriptProperties:v10];
      [(SUStorePageViewController *)v3->_storePageViewController setCanMoveToOverlay:0];
      [(SUViewController *)v3->_storePageViewController _setExistingNavigationItem:v7];
      [(SUStorePageViewController *)v3->_storePageViewController setLoadsWhenHidden:1];
      [(SUStorePageViewController *)v3->_storePageViewController _setReloadsWhenCacheExpired:0];
      [(SUUIITunesStoreUIPageViewController *)v3->_storePageViewController setProductPageViewController:v3];
      [(SUProductPageViewController *)v3 addChildViewController:v3->_storePageViewController];
      [(SUProductPageViewController *)v3 setClientInterface:v6];
      v12 = [MEMORY[0x277CCAB98] defaultCenter];
      [v12 addObserver:v3 selector:sel__purchaseFailedNotification_ name:*MEMORY[0x277D7FF30] object:0];
      [v12 addObserver:v3 selector:sel__purchaseFinishedNotification_ name:*MEMORY[0x277D7FF38] object:0];
      v13 = +[SUUIItemStateCenter defaultCenter];
      itemStateCenter = v3->_itemStateCenter;
      v3->_itemStateCenter = v13;

      [(SUUIItemStateCenter *)v3->_itemStateCenter addObserver:v3];
      style = v3->_style;
      if (style)
      {
        v16 = 0;
        if (style != 3)
        {
          v16 = 15;
        }
      }

      else
      {
        v17 = [MEMORY[0x277D75418] currentDevice];
        if ([v17 userInterfaceIdiom] == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 15;
        }
      }

      [(SUProductPageViewController *)v3 setEdgesForExtendedLayout:v16];
    }
  }

  return v3;
}

- (SUProductPageViewController)initWithTabBarItem:(id)a3
{
  v3 = [(SUProductPageViewController *)self _initSUProductPageViewController];
  v4 = v3;
  if (v3)
  {
    [(SUProductPageViewController *)v3 _setShowsCancelButton:1];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D7FF30] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D7FF38] object:0];
  [(SUUIItemStateCenter *)self->_itemStateCenter removeObserver:self];
  [(SUUIITunesStoreUIPageViewController *)self->_storePageViewController setProductPageViewController:0];
  [(SUUIITunesStoreUIPageViewController *)self->_storePageViewController removeFromParentViewController];
  v4 = [(SUViewController *)self clientInterface];
  [v4 setDelegate:0];

  [(SUUIBannerViewController *)self->_bannerViewController setDelegate:0];
  [(SUUIIPadProductPageViewController *)self->_ipadProductPageViewController setDelegate:0];
  [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setDelegate:0];
  [(SUPurchaseManager *)self->_purchaseManager setDelegate:0];
  [(SUPreviewOverlayViewController *)self->_previewOverlay removeFromParentViewController];
  v5 = [(SUBarButtonItem *)self->_gotoStoreButtonItem target];

  if (v5 == self)
  {
    [(SUBarButtonItem *)self->_gotoStoreButtonItem setTarget:0];
  }

  v6 = [(SUBarButtonItem *)self->_rightBarButtonItem target];

  if (v6 == self)
  {
    [(SUBarButtonItem *)self->_rightBarButtonItem setTarget:0];
  }

  v7.receiver = self;
  v7.super_class = SUProductPageViewController;
  [(SUViewController *)&v7 dealloc];
}

+ (void)getCanLoadWithURL:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D262A0] sharedConnection];
  v9 = [v8 isOnDeviceAppInstallationAllowed];

  if (v9)
  {
    v10 = [MEMORY[0x277D69C90] contextWithBagType:0];
    v11 = [MEMORY[0x277D7FD50] sharedCache];
    v12 = [v11 URLBagForContext:v10];

    if (v12)
    {
      [a1 _validateURL:v6 withURLBag:v12 completionBlock:v7];
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277D7FCF8]) initWithBagContext:v10];
      objc_initWeak(&location, v13);
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __65__SUProductPageViewController_getCanLoadWithURL_completionBlock___block_invoke;
      v18 = &unk_2798F7BB0;
      objc_copyWeak(v22, &location);
      v22[1] = a1;
      v19 = v6;
      v20 = v10;
      v21 = v7;
      [v13 setCompletionBlock:&v15];
      v14 = [MEMORY[0x277D7FD20] mainQueue];
      [v14 addOperation:v13];

      objc_destroyWeak(v22);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __65__SUProductPageViewController_getCanLoadWithURL_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained success];

  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  if (v3)
  {
    v10 = [MEMORY[0x277D7FD50] sharedCache];
    v6 = [v10 URLBagForContext:*(a1 + 40)];
    [v4 _validateURL:v5 withURLBag:v6 completionBlock:*(a1 + 48)];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    v9 = *(a1 + 32);

    [v8 _validateURL:v9 withURLBag:0 completionBlock:v7];
  }
}

- (void)loadProductWithParameters:(id)a3
{
  if (self->_productParameters != a3)
  {
    v4 = [a3 copy];
    productParameters = self->_productParameters;
    self->_productParameters = v4;

    [(SUProductPageViewController *)self _loadRequestForProductParameters];
  }
}

- (void)loadProductWithRequest:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D69C90] contextWithBagType:0];
  v6 = [MEMORY[0x277D7FD50] sharedCache];
  v7 = [v6 URLBagForContext:v5];

  if (v7)
  {
    [(SUProductPageViewController *)self _loadProductWithRequest:v4];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277D7FCF8]) initWithBagContext:v5];
    v9 = [MEMORY[0x277D69D50] weakReferenceWithObject:self];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __54__SUProductPageViewController_loadProductWithRequest___block_invoke;
    v15 = &unk_2798F5AF8;
    v16 = v9;
    v17 = v4;
    v10 = v9;
    [v8 setCompletionBlock:&v12];
    v11 = [MEMORY[0x277D7FD20] mainQueue];
    [v11 addOperation:v8];
  }
}

void __54__SUProductPageViewController_loadProductWithRequest___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__SUProductPageViewController_loadProductWithRequest___block_invoke_2;
  v2[3] = &unk_2798F5AF8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __54__SUProductPageViewController_loadProductWithRequest___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [v2 _loadProductWithRequest:*(a1 + 40)];
}

- (NSDictionary)scriptContextDictionary
{
  v2 = [(SUStorePageViewController *)self->_storePageViewController copyScriptProperties];
  v3 = [v2 contextDictionary];

  return v3;
}

- (void)setAdditionalPurchaseParameters:(id)a3
{
  if (self->_additionalPurchaseParameters != a3)
  {
    v4 = [a3 copy];
    additionalPurchaseParameters = self->_additionalPurchaseParameters;
    self->_additionalPurchaseParameters = v4;

    clientContext = self->_clientContext;
    v7 = self->_additionalPurchaseParameters;

    [(SUUIClientContext *)clientContext _setAdditionalPurchaseParameters:v7];
  }
}

- (void)setAffiliateIdentifier:(id)a3
{
  if (self->_affiliateIdentifier != a3)
  {
    v4 = [a3 copy];
    affiliateIdentifier = self->_affiliateIdentifier;
    self->_affiliateIdentifier = v4;

    clientContext = self->_clientContext;
    v7 = self->_affiliateIdentifier;

    [(SUUIClientContext *)clientContext _setPurchaseAffiliateIdentifier:v7];
  }
}

- (void)setAskToBuy:(BOOL)a3
{
  if (self->_askToBuy != a3)
  {
    self->_askToBuy = a3;
    [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setAskPermission:?];
    [(SUUIIPadProductPageViewController *)self->_ipadProductPageViewController setAskPermission:self->_askToBuy];
    v4 = [(SUViewController *)self clientInterface];
    [v4 setInAskToBuyApprovalFlow:self->_askToBuy];
  }
}

- (void)setPromptString:(id)a3
{
  v5 = a3;
  if (self->_promptString != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_promptString, a3);
    [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setBannerText:self->_promptString];
    [(SUUIIPadProductPageViewController *)self->_ipadProductPageViewController setBannerText:self->_promptString];
    v6 = [(SUViewController *)self clientInterface];
    [v6 setAskToBuyApprovalPrompt:self->_promptString];

    v5 = v7;
  }
}

- (void)setProductPageStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    if (a3)
    {
      if (a3 == 3)
      {
        v5 = 0;
      }

      else
      {
        v5 = 15;
      }
    }

    else
    {
      v6 = [MEMORY[0x277D75418] currentDevice];
      if ([v6 userInterfaceIdiom] == 1)
      {
        v5 = 0;
      }

      else
      {
        v5 = 15;
      }
    }

    [(SUProductPageViewController *)self setEdgesForExtendedLayout:v5];
  }
}

- (void)setScriptContextDictionary:(id)a3
{
  storePageViewController = self->_storePageViewController;
  v5 = a3;
  v6 = [(SUStorePageViewController *)storePageViewController copyScriptProperties];
  [v6 setContextDictionary:v5];
  [(SUUIBannerViewController *)self->_bannerViewController setScriptContextDictionary:v5];

  [(SUStorePageViewController *)self->_storePageViewController setScriptProperties:v6];
}

- (void)storePage:(id)a3 finishedWithSuccess:(BOOL)a4
{
  if (a4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 productPageDidFinishLoad:self];
    }

    [(SUProductPageViewController *)self _reloadGotoStoreButton];
  }

  else
  {

    [(SUProductPageViewController *)self _failWithError:0];
  }
}

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = [MEMORY[0x277D75348] colorWithWhite:0.88 alpha:1.0];
  [v4 setBackgroundColor:v3];

  [(SUProductPageViewController *)self setView:v4];
  [(SUProductPageViewController *)self _reloadViews];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  if (SUUIAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  return a3 == 1 || v5 != 0;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUProductPageViewController;
  [(SUViewController *)&v4 viewDidAppear:a3];
  [(SUStorePageViewController *)self->_storePageViewController _setReloadsWhenCacheExpired:1];
}

- (void)setClientInterface:(id)a3
{
  v4 = a3;
  v5 = [(SUViewController *)self clientInterface];
  v6 = v5;
  if (v5 != v4)
  {
    [v5 setDelegate:0];
    if (!self->_purchaseManager)
    {
      v7 = objc_alloc_init(MEMORY[0x277D7FE58]);
      purchaseManager = self->_purchaseManager;
      self->_purchaseManager = v7;

      [(SUPurchaseManager *)self->_purchaseManager setDelegate:self];
    }

    [v4 setDelegate:self];
    [v4 setPurchaseManager:self->_purchaseManager];
    [v4 setInAskToBuyApprovalFlow:self->_askToBuy];
    [v4 setAskToBuyApprovalPrompt:self->_promptString];
    [(SUViewController *)self->_storePageViewController setClientInterface:v4];
  }

  v9.receiver = self;
  v9.super_class = SUProductPageViewController;
  [(SUViewController *)&v9 setClientInterface:v4];
}

- (BOOL)iPhoneProductPage:(id)a3 shouldOpenItem:(id)a4
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = a4;
  v6 = [v4 alloc];
  v7 = [v5 productPageURLString];

  v8 = [v6 initWithString:v7];
  v9 = UIITunesStoreResolvedURLForHTTPURL();
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  v13 = [MEMORY[0x277D75128] sharedApplication];
  [v13 openURL:v12 options:MEMORY[0x277CBEC10] completionHandler:0];

  return 0;
}

- (BOOL)iPhoneProductPage:(id)a3 shouldOpenURL:(id)a4
{
  v4 = a4;
  v5 = UIITunesStoreResolvedURLForHTTPURL();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  v9 = [MEMORY[0x277D75128] sharedApplication];
  [v9 openURL:v8 options:MEMORY[0x277CBEC10] completionHandler:0];

  return 0;
}

- (void)iPadProductPage:(id)a3 openItem:(id)a4
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = a4;
  v6 = [v4 alloc];
  v7 = [v5 productPageURLString];

  v8 = [v6 initWithString:v7];
  v9 = UIITunesStoreResolvedURLForHTTPURL();
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  v13 = [MEMORY[0x277D75128] sharedApplication];
  [v13 openURL:v12 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)iPadProductPage:(id)a3 openURL:(id)a4 viewControllerBlock:(id)a5
{
  v16 = a3;
  v7 = a4;
  v8 = a5;
  if (v7 || ([v16 item], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "productPageURLString"), v15 = objc_claimAutoreleasedReturnValue(), v14, v15) && (objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v15), v7 = objc_claimAutoreleasedReturnValue(), v15, v7))
  {
    v9 = UIITunesStoreResolvedURLForHTTPURL();
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    v12 = v11;

    v13 = [MEMORY[0x277D75128] sharedApplication];
    [v13 openURL:v12 options:MEMORY[0x277CBEC10] completionHandler:0];
  }
}

- (void)clientInterface:(id)a3 exitStoreWithReason:(int64_t)a4
{
  if ((a4 - 3) >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 2;
  }

  [(SUProductPageViewController *)self _sendDidFinishWithResult:v4];
}

- (void)clientInterface:(id)a3 hidePreviewOverlayAnimated:(BOOL)a4
{
  if (self->_previewOverlay)
  {
    v4 = a4;
    v6 = [(SUViewController *)self navigationController];
    previewOverlay = self->_previewOverlay;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__SUProductPageViewController_clientInterface_hidePreviewOverlayAnimated___block_invoke;
    v8[3] = &unk_2798F5BE8;
    v8[4] = self;
    [(SUPreviewOverlayViewController *)previewOverlay hideInNavigationController:v6 animated:v4 completionBlock:v8];
  }
}

void __74__SUProductPageViewController_clientInterface_hidePreviewOverlayAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1248) removeFromParentViewController];
  v2 = [*(*(a1 + 32) + 1248) view];
  [v2 removeFromSuperview];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:*MEMORY[0x277D7FF28] object:*(*(a1 + 32) + 1248)];
}

- (void)clientInterface:(id)a3 presentDialog:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 productPage:self presentAlertForDialog:v5];
  }

  else
  {
    dialogManager = self->_dialogManager;
    if (!dialogManager)
    {
      v10 = objc_alloc_init(MEMORY[0x277D7FDC8]);
      v11 = self->_dialogManager;
      self->_dialogManager = v10;

      dialogManager = self->_dialogManager;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__SUProductPageViewController_clientInterface_presentDialog___block_invoke;
    v12[3] = &unk_2798F7BD8;
    v13 = v5;
    v14 = self;
    [(SUDialogManager *)dialogManager presentDialog:v13 withCompletionBlock:v12];
  }
}

void __61__SUProductPageViewController_clientInterface_presentDialog___block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = [*(a1 + 32) buttons];
  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = v4;
    v5 = [v4 count] > a2;
    v4 = v7;
    if (v5)
    {
      v6 = [v7 objectAtIndex:a2];
      if ([v6 actionType] == 5)
      {
        [*(a1 + 40) _sendDidFinishWithResult:0];
      }

      v4 = v7;
    }
  }
}

- (void)clientInterface:(id)a3 setStatusBarHidden:(BOOL)a4 withAnimation:(int64_t)a5
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 productPage:self setStatusBarHidden:v6 withAnimation:a5];
  }

  else
  {
    v10 = [MEMORY[0x277D75128] sharedApplication];
    [v10 setStatusBarHidden:v6 withAnimation:a5];
  }
}

- (void)clientInterface:(id)a3 setStatusBarStyle:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 productPage:self setStatusBarStyle:a4 animated:v5];
  }

  else
  {
    v10 = [MEMORY[0x277D75128] sharedApplication];
    [v10 setStatusBarStyle:a4 animated:v5];
  }
}

- (void)clientInterface:(id)a3 showPreviewOverlayAnimated:(BOOL)a4
{
  v4 = a4;
  v6 = [(SUProductPageViewController *)self _previewOverlay];
  if ([v6 isContentLoaded])
  {
    [(SUProductPageViewController *)self _showPreviewOverlayAnimated:v4];
  }

  else
  {
    v7 = [objc_opt_class() defaultRequestProperties];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__SUProductPageViewController_clientInterface_showPreviewOverlayAnimated___block_invoke;
    v8[3] = &unk_2798F7C00;
    v8[4] = self;
    v9 = v4;
    [v6 loadWithRequestProperties:v7 completionBlock:v8];
  }
}

uint64_t __74__SUProductPageViewController_clientInterface_showPreviewOverlayAnimated___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _showPreviewOverlayAnimated:*(result + 40)];
  }

  return result;
}

- (void)clientInterface:(id)a3 willDismissViewController:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 productPage:self willDismissViewController:v8];
  }
}

- (void)clientInterface:(id)a3 willPresentViewController:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 productPage:self willPresentViewController:v8];
  }
}

- (id)scriptInterfaceForClientInterface:(id)a3
{
  v4 = objc_alloc_init(StoreScriptInterface);
  [(StoreScriptInterface *)v4 setParentProductPageViewController:self];

  return v4;
}

- (void)purchaseManager:(id)a3 didFinishPurchaseRequest:(id)a4 withError:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277D69B38] sharedConfig];
  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  v15 = v14;
  if (!v10)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      *v24 = 138412290;
      *&v24[4] = objc_opt_class();
      v21 = *&v24[4];
      LODWORD(v23) = 12;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_19:

        [(SUProductPageViewController *)self _sendDidFinishWithResult:4];
        goto LABEL_20;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:{4, v24, v23, *v24, *&v24[8]}];
      free(v22);
      SSFileLog();
    }

    goto LABEL_19;
  }

  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v13 &= 2u;
  }

  if (v13)
  {
    *v24 = 138412546;
    *&v24[4] = objc_opt_class();
    *&v24[12] = 2112;
    *&v24[14] = v10;
    v16 = *&v24[4];
    LODWORD(v23) = 22;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_11;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, v24, v23, *v24, *&v24[16], v25}];
    free(v17);
    SSFileLog();
  }

LABEL_11:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = objc_loadWeakRetained(&self->_delegate);
    [v20 productPage:self purchaseBatchFailedWithError:v10];
  }

LABEL_20:
}

- (void)purchaseManager:(id)a3 willAddPurchases:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([(NSString *)self->_additionalPurchaseParameters length])
          {
            v12 = [v11 buyParameters];
            if (v12)
            {
              v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@&%@", v12, self->_additionalPurchaseParameters];
              [v11 setBuyParameters:v13];
            }
          }

          if (self->_affiliateIdentifier)
          {
            [v11 setAffiliateIdentifier:?];
          }

          if (self->_urlBagType)
          {
            v14 = [v11 requestProperties];
            v15 = [v14 mutableCopy];

            if (!v15)
            {
              v15 = objc_alloc_init(MEMORY[0x277D69BD0]);
            }

            [v15 setURLBagType:self->_urlBagType];
            [v11 setRequestProperties:v15];
          }

          [v28 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v8);
  }

  v16 = [MEMORY[0x277D69B38] sharedConfig];
  v17 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v16 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 & 2;
  }

  if (v20)
  {
    v21 = objc_opt_class();
    v33 = 138412546;
    v34 = v21;
    v35 = 2112;
    v36 = v28;
    v22 = v21;
    LODWORD(v27) = 22;
    v23 = _os_log_send_and_compose_impl();

    if (!v23)
    {
      goto LABEL_30;
    }

    v19 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:{4, &v33, v27}];
    free(v23);
    SSFileLog();
  }

LABEL_30:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = objc_loadWeakRetained(&self->_delegate);
    [v26 productPage:self willMakePurchases:v28];
  }
}

- (void)itemStateCenter:(id)a3 didFinishPurchases:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v31 + 1) + 8 * v9);
      v11 = [v10 error];

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = [v10 error];

    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = [MEMORY[0x277D69B38] sharedConfig];
    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v35 = 138412546;
      v36 = v17;
      v37 = 2112;
      v38 = v12;
      v18 = v17;
      LODWORD(v30) = 22;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
        goto LABEL_20;
      }

      v16 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v35, v30, v31}];
      free(v19);
      SSFileLog();
    }

LABEL_20:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 productPage:self purchaseBatchFailedWithError:v12];
    }

    goto LABEL_32;
  }

LABEL_9:

LABEL_22:
  v23 = [MEMORY[0x277D69B38] sharedConfig];
  v24 = [v23 shouldLog];
  if ([v23 shouldLogToDisk])
  {
    v25 = v24 | 2;
  }

  else
  {
    v25 = v24;
  }

  v26 = [v23 OSLogObject];
  if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v25 &= 2u;
  }

  if (!v25)
  {
    goto LABEL_30;
  }

  v27 = objc_opt_class();
  v35 = 138412290;
  v36 = v27;
  v28 = v27;
  LODWORD(v30) = 12;
  v29 = _os_log_send_and_compose_impl();

  if (v29)
  {
    v26 = [MEMORY[0x277CCACA8] stringWithCString:v29 encoding:{4, &v35, v30, v31}];
    free(v29);
    SSFileLog();
LABEL_30:
  }

  [(SUProductPageViewController *)self _sendDidFinishWithResult:4];
  v12 = 0;
LABEL_32:
}

- (void)itemStateCenter:(id)a3 didFinishSoftwarePurchases:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v31 + 1) + 8 * v9);
      v11 = [v10 error];

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = [v10 error];

    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = [MEMORY[0x277D69B38] sharedConfig];
    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v35 = 138412546;
      v36 = v17;
      v37 = 2112;
      v38 = v12;
      v18 = v17;
      LODWORD(v30) = 22;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
        goto LABEL_20;
      }

      v16 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v35, v30, v31}];
      free(v19);
      SSFileLog();
    }

LABEL_20:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 productPage:self purchaseBatchFailedWithError:v12];
    }

    goto LABEL_32;
  }

LABEL_9:

LABEL_22:
  v23 = [MEMORY[0x277D69B38] sharedConfig];
  v24 = [v23 shouldLog];
  if ([v23 shouldLogToDisk])
  {
    v25 = v24 | 2;
  }

  else
  {
    v25 = v24;
  }

  v26 = [v23 OSLogObject];
  if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v25 &= 2u;
  }

  if (!v25)
  {
    goto LABEL_30;
  }

  v27 = objc_opt_class();
  v35 = 138412290;
  v36 = v27;
  v28 = v27;
  LODWORD(v30) = 12;
  v29 = _os_log_send_and_compose_impl();

  if (v29)
  {
    v26 = [MEMORY[0x277CCACA8] stringWithCString:v29 encoding:{4, &v35, v30, v31}];
    free(v29);
    SSFileLog();
LABEL_30:
  }

  [(SUProductPageViewController *)self _sendDidFinishWithResult:4];
  v12 = 0;
LABEL_32:
}

- (void)_gotoStoreButtonAction:(id)a3
{
  v8 = a3;
  nativeURL = self->_nativeURL;
  if (nativeURL)
  {
    v5 = nativeURL;
  }

  else
  {
    v5 = [(SUStorePageViewController *)self->_storePageViewController displayedURL];
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = [MEMORY[0x277D75128] sharedApplication];
  v7 = UIITunesStoreResolvedURLForHTTPURL();
  [v6 openURL:v7];

LABEL_5:
  [(SUProductPageViewController *)self _sendDidFinishWithResult:3];
}

- (void)_purchaseFailedNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:*MEMORY[0x277D7FF40]];

  v8 = [MEMORY[0x277D69B38] sharedConfig];
  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    *v18 = 138412802;
    *&v18[4] = objc_opt_class();
    *&v18[12] = 2112;
    *&v18[14] = v5;
    *&v18[22] = 2112;
    v19 = v7;
    v12 = *&v18[4];
    LODWORD(v17) = 32;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_10;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{4, v18, v17, *v18, *&v18[16], v19}];
    free(v13);
    SSFileLog();
  }

LABEL_10:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 productPage:self didFinishPurchase:v5 withError:v7];
  }
}

- (void)_purchaseFinishedNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = [MEMORY[0x277D69B38] sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    *v15 = 138412546;
    *&v15[4] = objc_opt_class();
    *&v15[12] = 2112;
    *&v15[14] = v4;
    v9 = *&v15[4];
    LODWORD(v14) = 22;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_10;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, v15, v14, *v15, *&v15[16]}];
    free(v10);
    SSFileLog();
  }

LABEL_10:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 productPage:self didFinishPurchase:v4 withError:0];
  }
}

- (void)_applicationWillEnterForeground
{
  lastPageEvent = self->_lastPageEvent;
  if (lastPageEvent)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    [(SSMetricsPageEvent *)lastPageEvent setOriginalTimeUsingDate:v4];

    style = self->_style;
    if (style == 3 || !style && ([MEMORY[0x277D75418] currentDevice], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, v7 == 1))
    {
      v8 = &OBJC_IVAR___SUProductPageViewController__ipadProductPageViewController;
    }

    else
    {
      v8 = &OBJC_IVAR___SUProductPageViewController__iphoneProductPageViewController;
    }

    v9 = *(&self->super.super.super.super.isa + *v8);
    v10 = self->_lastPageEvent;

    [v9 configureMetricsWithPageEvent:v10];
  }
}

- (void)loadWithProductPage:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SUProductPageViewController_loadWithProductPage___block_invoke;
  v6[3] = &unk_2798F6170;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(SUProductPageViewController *)self _loadClientContextWithCompletionBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __51__SUProductPageViewController_loadWithProductPage___block_invoke(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (a2)
  {
    [WeakRetained _showProductPage:*(a1 + 32) pageEvent:0];
  }

  else
  {
    [WeakRetained _sendDidFailLoadWithError:v7];
  }
}

- (void)loadWithStorePageRequest:(id)a3
{
  v8 = a3;
  -[SUProductPageViewController setProductPageStyle:](self, "setProductPageStyle:", [v8 productPageStyle]);
  v4 = [v8 productURL];
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x277CBABA0] requestWithURL:v4];
    [(SUProductPageViewController *)self loadProductWithRequest:v6];
  }

  else
  {
    v7 = [v8 productParameters];
    if (!v7)
    {
      goto LABEL_6;
    }

    v5 = v7;
    [(SUProductPageViewController *)self loadProductWithParameters:v7];
  }

LABEL_6:
}

+ (id)_defaultClientInterface
{
  v3 = objc_alloc_init(MEMORY[0x277D7FDC0]);
  v4 = [a1 _defaultClientIdentifier];
  [v3 setClientIdentifier:v4];

  v5 = objc_alloc_init(SUUIViewControllerFactory);
  [v3 setViewControllerFactory:v5];

  return v3;
}

- (void)_sendDidFinishWithResult:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 productPage:self didFinishWithResult:a3];
  }
}

- (void)_setClientContext:(id)a3
{
  v5 = a3;
  if (self->_clientContext != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_clientContext, a3);
    [(SUUIClientContext *)self->_clientContext setMetricsPageContext:@"Sheet" forViewController:self];
    v5 = v6;
  }
}

- (void)_showPageWithRequest:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  v8 = objc_loadWeakRetained(&self->_delegate);
  v9 = v8;
  if (v7)
  {
    [(SUProductPageViewController *)v8 productPage:self presentProductPageWithRequest:v13 animated:v4];
  }

  else
  {
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_6;
    }

    v9 = objc_alloc_init(SUProductPageViewController);
    v11 = [(SUViewController *)self clientInterface];
    [(SUProductPageViewController *)v9 setClientInterface:v11];

    [(SUProductPageViewController *)v9 loadWithStorePageRequest:v13];
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 productPage:self presentProductPage:v9 animated:v4];
  }

LABEL_6:
}

+ (id)_defaultClientIdentifier
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if ([v3 isEqualToString:@"com.apple.ios.StoreKitUIService"])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"ThirdParty";
  }

  v6 = v5;

  return v5;
}

+ (void)_validateURL:(id)a3 withURLBag:(id)a4 completionBlock:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [a4 valueForKey:@"ix-store-sheet"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 objectForKey:@"host-patterns"];
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = 0;
LABEL_35:

        goto LABEL_36;
      }

      v11 = [v7 host];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v13)
      {
        v14 = v13;
        v30 = v10;
        v32 = v9;
        v29 = v7;
        v15 = *v39;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v39 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:*(*(&v38 + 1) + 8 * i) options:1 error:0];
            v18 = [v17 rangeOfFirstMatchInString:v11 options:0 range:{0, objc_msgSend(v11, "length")}];

            if (v18 != 0x7FFFFFFFFFFFFFFFLL)
            {

              v7 = v29;
              v10 = v30;
              v9 = v32;
              goto LABEL_16;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

        v19 = 0;
        v20 = 0;
        v7 = v29;
        v10 = v30;
        v9 = v32;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      goto LABEL_33;
    }

LABEL_16:
    v11 = [v9 objectForKey:@"path-patterns"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v7 path];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v11 = v11;
        v22 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v22)
        {
          v23 = v22;
          v31 = v10;
          v33 = v9;
          v24 = v7;
          v25 = *v35;
LABEL_20:
          v26 = 0;
          while (1)
          {
            if (*v35 != v25)
            {
              objc_enumerationMutation(v11);
            }

            v20 = 1;
            v27 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:*(*(&v34 + 1) + 8 * v26) options:1 error:0];
            v28 = [v27 rangeOfFirstMatchInString:v12 options:0 range:{0, objc_msgSend(v12, "length")}];

            if (v28 != 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            if (v23 == ++v26)
            {
              v23 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
              if (v23)
              {
                goto LABEL_20;
              }

              v20 = 0;
              break;
            }
          }

          v7 = v24;
          v10 = v31;
          v9 = v33;
        }

        else
        {
          v20 = 0;
        }

        v19 = 1;
LABEL_33:

        goto LABEL_34;
      }

      v20 = 0;
      v19 = 1;
    }

    else
    {
      v19 = 1;
      v20 = 1;
    }

LABEL_34:

    v21 = v19 & v20;
    goto LABEL_35;
  }

  v21 = 0;
LABEL_36:
  v8[2](v8, v21);
}

- (void)_failWithError:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277CDD438];
    v10 = *MEMORY[0x277CCA450];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_286AECDE0 table:0];
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v4 = [v5 errorWithDomain:v6 code:5 userInfo:v9];
  }

  [(SUStorePageViewController *)self->_storePageViewController setSkLoading:0];
  [(SUProductPageViewController *)self _sendDidFailLoadWithError:v4];
}

- (void)_loadClientContextWithCompletionBlock:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUViewController *)self clientInterface];
  v6 = [v5 clientIdentifier];

  if (!v6)
  {
    v6 = [objc_opt_class() _defaultClientIdentifier];
  }

  if (!self->_clientContext)
  {
    v7 = +[SUUIClientContext defaultContext];
    clientContext = self->_clientContext;
    self->_clientContext = v7;

    v9 = [(SUUIClientContext *)self->_clientContext clientInterface];
    [v9 setClientIdentifier:v6];

    [(SUUIClientContext *)self->_clientContext setMetricsPageContext:@"Sheet" forViewController:self];
    [(SUUIClientContext *)self->_clientContext _setAdditionalPurchaseParameters:self->_additionalPurchaseParameters];
    [(SUUIClientContext *)self->_clientContext _setPurchaseAffiliateIdentifier:self->_affiliateIdentifier];
    [(SUUIClientContext *)self->_clientContext _setPurchaseURLBagType:self->_urlBagType];
    if (!self->_clientContext)
    {
      v10 = objc_alloc_init(SUUIReloadConfigurationOperation);
      objc_initWeak(&location, self);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __69__SUProductPageViewController__loadClientContextWithCompletionBlock___block_invoke;
      v21[3] = &unk_2798F7C50;
      objc_copyWeak(&v25, &location);
      v22 = v6;
      v23 = self;
      v24 = v4;
      [(SUUIReloadConfigurationOperation *)v10 setOutputBlock:v21];
      v11 = [MEMORY[0x277D69B38] sharedConfig];
      v12 = [v11 shouldLog];
      v13 = [v11 shouldLogToDisk];
      v14 = [v11 OSLogObject];
      v15 = v14;
      if (v13)
      {
        v12 |= 2u;
      }

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v12 &= 2u;
      }

      if (v12)
      {
        v16 = objc_opt_class();
        v27 = 138412290;
        v28 = v16;
        v17 = v16;
        LODWORD(v20) = 12;
        v18 = _os_log_send_and_compose_impl();

        if (!v18)
        {
LABEL_15:

          v19 = objc_alloc_init(MEMORY[0x277CCABD8]);
          [v19 addOperation:v10];

          objc_destroyWeak(&v25);
          objc_destroyWeak(&location);

          goto LABEL_6;
        }

        v15 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v27, v20}];
        free(v18);
        SSFileLog();
      }

      goto LABEL_15;
    }
  }

  (*(v4 + 2))(v4, 1, 0);
LABEL_6:
}

void __69__SUProductPageViewController__loadClientContextWithCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__SUProductPageViewController__loadClientContextWithCompletionBlock___block_invoke_2;
  v12[3] = &unk_2798F7C28;
  objc_copyWeak(&v18, (a1 + 56));
  v13 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v7;
  v15 = v8;
  v16 = v6;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v12);

  objc_destroyWeak(&v18);
}

void __69__SUProductPageViewController__loadClientContextWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained && *(a1 + 32))
  {
    v2 = [[SUUIClientContext alloc] initWithConfigurationDictionary:*(a1 + 32)];
    v3 = [(SUUIClientContext *)v2 clientInterface];
    [v3 setClientIdentifier:*(a1 + 40)];

    [(SUUIClientContext *)v2 setMetricsPageContext:@"Sheet" forViewController:*(a1 + 48)];
    [(SUUIClientContext *)v2 _setAdditionalPurchaseParameters:*(*(a1 + 48) + 1136)];
    [(SUUIClientContext *)v2 _setPurchaseAffiliateIdentifier:*(*(a1 + 48) + 1144)];
    [(SUUIClientContext *)v2 _setPurchaseURLBagType:*(*(a1 + 48) + 1312)];
    v4 = WeakRetained[146];
    WeakRetained[146] = v2;
  }

  (*(*(a1 + 64) + 16))();
}

- (void)_loadProductWithRequest:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SUProductPageViewController__loadProductWithRequest___block_invoke;
  v6[3] = &unk_2798F6170;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(SUProductPageViewController *)self _loadClientContextWithCompletionBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __55__SUProductPageViewController__loadProductWithRequest___block_invoke(uint64_t a1, char a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained _newRequestPropertiesWithRequest:*(a1 + 32)];

  if (a2)
  {
    v8 = [MEMORY[0x277D69B38] sharedConfig];
    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v13 = objc_loadWeakRetained((a1 + 40));
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = v14;
      [v15 URL];
      v25 = 138412546;
      v26 = v14;
      v28 = v27 = 2112;
      LODWORD(v21) = 22;
      v17 = _os_log_send_and_compose_impl();

      if (v17)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, &v25, v21}];
        free(v17);
        SSFileLog();
      }
    }

    else
    {
    }

    v20 = [objc_alloc(MEMORY[0x277D69C98]) initWithRequestProperties:v7];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__SUProductPageViewController__loadProductWithRequest___block_invoke_103;
    v22[3] = &unk_2798F7C78;
    objc_copyWeak(&v24, (a1 + 40));
    v23 = v7;
    [v20 startWithConnectionResponseBlock:v22];

    objc_destroyWeak(&v24);
  }

  else
  {
    v19 = objc_loadWeakRetained((a1 + 40));
    [v19 _setResponse:0 forProperties:v7 error:v5];
  }
}

void __55__SUProductPageViewController__loadProductWithRequest___block_invoke_103(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__SUProductPageViewController__loadProductWithRequest___block_invoke_2;
  v9[3] = &unk_2798F67C8;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = *(a1 + 32);
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __55__SUProductPageViewController__loadProductWithRequest___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _setResponse:*(a1 + 32) forProperties:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_loadRequestForProductParameters
{
  v39[1] = *MEMORY[0x277D85DE8];
  if ([(NSDictionary *)self->_productParameters count])
  {
    if (self->_bannerViewController)
    {
      objc_initWeak(location, self);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __63__SUProductPageViewController__loadRequestForProductParameters__block_invoke;
      v33[3] = &unk_2798F6170;
      objc_copyWeak(&v34, location);
      v33[4] = self;
      [(SUProductPageViewController *)self _loadClientContextWithCompletionBlock:v33];
      objc_destroyWeak(&v34);
      objc_destroyWeak(location);
    }

    else
    {
      v3 = [MEMORY[0x277D69C90] contextWithBagType:0];
      v4 = [MEMORY[0x277D7FD50] sharedCache];
      v5 = [v4 URLBagForContext:v3];

      if (v5)
      {
        v6 = [v5 valueForKey:@"ix-store-sheet"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (-[SUProductPageViewController productPageStyle](self, "productPageStyle") == 1 && ([v6 objectForKey:@"banner-lookup-url"], (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v6, "objectForKey:", @"lookup-url"), (v7 = objc_claimAutoreleasedReturnValue()) != 0)) && (v8 = objc_msgSend(objc_alloc(MEMORY[0x277CBEBC0]), "initWithString:", v7), v7, v8))
        {
          v9 = [MEMORY[0x277D69B38] sharedConfig];
          v10 = [v9 shouldLog];
          if ([v9 shouldLogToDisk])
          {
            v11 = v10 | 2;
          }

          else
          {
            v11 = v10;
          }

          v12 = [v9 OSLogObject];
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v11 &= 2u;
          }

          if (v11)
          {
            *location = 138412546;
            *&location[4] = objc_opt_class();
            v36 = 2112;
            v37 = v8;
            v13 = *&location[4];
            LODWORD(v28) = 22;
            v14 = _os_log_send_and_compose_impl();

            if (v14)
            {
              v15 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, location, v28}];
              free(v14);
              SSFileLog();
            }
          }

          else
          {
          }

          v25 = [MEMORY[0x277CBABA0] requestWithURL:v8];
          [(SUProductPageViewController *)self loadProductWithRequest:v25];
        }

        else
        {
          v16 = [MEMORY[0x277D69B38] sharedConfig];
          v17 = [v16 shouldLog];
          if ([v16 shouldLogToDisk])
          {
            v18 = v17 | 2;
          }

          else
          {
            v18 = v17;
          }

          v19 = [v16 OSLogObject];
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v18 &= 2u;
          }

          if (v18)
          {
            *location = 138412290;
            *&location[4] = objc_opt_class();
            v20 = *&location[4];
            LODWORD(v28) = 12;
            v21 = _os_log_send_and_compose_impl();

            if (v21)
            {
              v22 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:{4, location, v28}];
              free(v21);
              SSFileLog();
            }
          }

          else
          {
          }

          v24 = MEMORY[0x277CCA9B8];
          v38 = *MEMORY[0x277CCA450];
          v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v25 = [v8 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_286AECDE0 table:0];
          v39[0] = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
          v27 = [v24 errorWithDomain:*MEMORY[0x277CDD438] code:5 userInfo:v26];
          [(SUProductPageViewController *)self _failWithError:v27];
        }
      }

      else
      {
        v6 = [objc_alloc(MEMORY[0x277D7FCF8]) initWithBagContext:v3];
        objc_initWeak(location, v6);
        objc_initWeak(&from, self);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __63__SUProductPageViewController__loadRequestForProductParameters__block_invoke_111;
        v29[3] = &unk_2798F7CC8;
        objc_copyWeak(&v30, location);
        objc_copyWeak(&v31, &from);
        [v6 setCompletionBlock:v29];
        [(SUStorePageViewController *)self->_storePageViewController setSkLoading:1];
        v23 = [MEMORY[0x277D7FD20] mainQueue];
        [v23 addOperation:v6];

        objc_destroyWeak(&v31);
        objc_destroyWeak(&v30);
        objc_destroyWeak(&from);
        objc_destroyWeak(location);
      }
    }
  }
}

void __63__SUProductPageViewController__loadRequestForProductParameters__block_invoke(uint64_t a1, char a2, void *a3)
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (a2)
  {
    if (WeakRetained)
    {
      [WeakRetained[145] setClientContext:*(*(a1 + 32) + 1168)];
      v7 = v6[145];
      v8 = v6[157];
      v9 = [*(a1 + 32) mainDocumentURL];
      [v7 loadWithProductParameters:v8 mainDocumentURL:v9];
    }
  }

  else
  {
    [WeakRetained _sendDidFailLoadWithError:v10];
  }
}

void __63__SUProductPageViewController__loadRequestForProductParameters__block_invoke_111(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SUProductPageViewController__loadRequestForProductParameters__block_invoke_2;
  v4[3] = &unk_2798F7CA0;
  v5 = WeakRetained;
  v3 = WeakRetained;
  objc_copyWeak(&v6, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(&v6);
}

void __63__SUProductPageViewController__loadRequestForProductParameters__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) success])
  {
    v2 = [MEMORY[0x277D69B38] sharedConfig];
    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v2 OSLogObject];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v4 &= 2u;
    }

    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v9 = v7;
      [v8 error];
      v22 = 138412546;
      v23 = v7;
      v25 = v24 = 2112;
      LODWORD(v18) = 22;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_14:

        v11 = objc_loadWeakRetained((a1 + 40));
        v12 = MEMORY[0x277CCA9B8];
        v13 = *MEMORY[0x277CDD438];
        v20 = *MEMORY[0x277CCA450];
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v15 = [v14 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_286AECDE0 table:0];
        v21 = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v17 = [v12 errorWithDomain:v13 code:5 userInfo:v16];
        [v11 _failWithError:v17];

        return;
      }

      v5 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, &v22, v18}];
      free(v10);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v19 = objc_loadWeakRetained((a1 + 40));
  [v19 _loadRequestForProductParameters];
}

- (id)_newRequestPropertiesWithRequest:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v16 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURLRequest:v17];
  [v16 setITunesStoreRequest:1];
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_productParameters;
  v4 = [(NSDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [(NSDictionary *)self->_productParameters objectForKey:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 stringValue];

          v9 = v10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v18 setObject:v9 forKey:v8];
        }
      }

      v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  [v16 setRequestParameters:v18];
  v11 = self->_style - 1;
  if (v11 >= 3)
  {
    v13 = [MEMORY[0x277D75418] currentDevice];
    v14 = [v13 userInterfaceIdiom];

    if (v14 == 1)
    {
      v12 = @"iPad";
    }

    else
    {
      v12 = @"iPhone";
    }
  }

  else
  {
    v12 = off_2798F7CE8[v11];
  }

  [v16 setValue:v12 forRequestParameter:@"style"];

  return v16;
}

- (id)_previewOverlay
{
  previewOverlay = self->_previewOverlay;
  if (!previewOverlay)
  {
    v4 = objc_alloc_init(MEMORY[0x277D7FE48]);
    v5 = self->_previewOverlay;
    self->_previewOverlay = v4;

    v6 = self->_previewOverlay;
    v7 = [(SUViewController *)self clientInterface];
    [(SUPreviewOverlayViewController *)v6 setClientInterface:v7];

    previewOverlay = self->_previewOverlay;
  }

  return previewOverlay;
}

- (void)_reloadGotoStoreButton
{
  nativeURL = self->_nativeURL;
  if (nativeURL)
  {
    v4 = nativeURL;
  }

  else
  {
    v4 = [(SUStorePageViewController *)self->_storePageViewController displayedURL];
    if (!v4)
    {
      v30 = 0;
      v7 = 0;
      goto LABEL_9;
    }
  }

  v30 = v4;
  v5 = UIITunesStoreResolvedURLForHTTPURL();
  v6 = [v5 scheme];
  if ([v6 isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"https"))
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277D75128] sharedApplication];
    v7 = [v8 canOpenURL:v5];
  }

LABEL_9:
  rightBarButtonItem = self->_rightBarButtonItem;
  if (!rightBarButtonItem)
  {
    rightBarButtonItem = self->_gotoStoreButtonItem;
  }

  v10 = rightBarButtonItem;
  if ((v7 & 1) != 0 && self->_showsStoreButton)
  {
    gotoStoreButtonItem = self->_gotoStoreButtonItem;
    if (!gotoStoreButtonItem)
    {
      v12 = objc_alloc_init(MEMORY[0x277D7FDB0]);
      v13 = self->_gotoStoreButtonItem;
      self->_gotoStoreButtonItem = v12;

      [(SUBarButtonItem *)self->_gotoStoreButtonItem setAction:sel__gotoStoreButtonAction_];
      [(SUBarButtonItem *)self->_gotoStoreButtonItem setTarget:self];
      v14 = self->_gotoStoreButtonItem;
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"GOTO_STORE_BUTTON" value:&stru_286AECDE0 table:0];
      [(SUBarButtonItem *)v14 setTitle:v16];

      gotoStoreButtonItem = self->_gotoStoreButtonItem;
    }

    v17 = gotoStoreButtonItem;
  }

  else
  {
    v18 = [(SUBarButtonItem *)self->_gotoStoreButtonItem target];

    if (v18 == self)
    {
      [(SUBarButtonItem *)self->_gotoStoreButtonItem setTarget:0];
    }

    v19 = self->_gotoStoreButtonItem;
    self->_gotoStoreButtonItem = 0;

    v17 = 0;
  }

  v20 = self->_rightBarButtonItem;
  if (self->_showsRightBarButton)
  {
    if (!v20)
    {
      v21 = objc_alloc_init(MEMORY[0x277D7FDB0]);
      v22 = self->_rightBarButtonItem;
      self->_rightBarButtonItem = v21;

      [(SUBarButtonItem *)self->_rightBarButtonItem setAction:sel__rightBarButtonAction_];
      [(SUBarButtonItem *)self->_rightBarButtonItem setTarget:self];
      [(SUBarButtonItem *)self->_rightBarButtonItem setTitle:self->_rightBarButtonTitle];
      v20 = self->_rightBarButtonItem;
    }

    v23 = v20;
    v24 = v17;
    v17 = v23;
  }

  else
  {
    v25 = [(SUBarButtonItem *)v20 target];

    if (v25 == self)
    {
      [(SUBarButtonItem *)self->_rightBarButtonItem setTarget:0];
    }

    v24 = self->_rightBarButtonItem;
    self->_rightBarButtonItem = 0;
  }

  v26 = [(SUViewController *)self navigationItem];
  v27 = [v26 rightBarButtonItems];
  v28 = [v27 mutableCopy];

  if (v10 != v17 || ([v28 containsObject:v17] & 1) == 0)
  {
    if (!v28 && v17)
    {
      v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    if (v28 && (v29 = [v28 indexOfObjectIdenticalTo:v10], v29 != 0x7FFFFFFFFFFFFFFFLL))
    {
      if (v17)
      {
        [v28 replaceObjectAtIndex:v29 withObject:v17];
      }

      else
      {
        [v28 removeObjectAtIndex:v29];
      }
    }

    else if (v17)
    {
      [v28 addObject:v17];
    }

    [(SUUIITunesStoreUIPageViewController *)self->_storePageViewController resetNavigationItem:v26];
    [v26 setRightBarButtonItems:v28];
  }
}

- (void)_reloadViews
{
  if (![(SUProductPageViewController *)self isViewLoaded])
  {
    return;
  }

  bannerViewController = self->_bannerViewController;
  if (!bannerViewController)
  {
    if (self->_ipadProductPageViewController)
    {
      v4 = [(SUUIITunesStoreUIPageViewController *)self->_storePageViewController view];
      [v4 removeFromSuperview];

      v5 = [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController view];
      [v5 removeFromSuperview];

      bannerViewController = self->_ipadProductPageViewController;
    }

    else
    {
      storePageViewController = self->_storePageViewController;
      if (self->_iphoneProductPageViewController)
      {
        v10 = [(SUUIITunesStoreUIPageViewController *)storePageViewController view];
        [v10 removeFromSuperview];

        v11 = [(SUUIIPadProductPageViewController *)self->_ipadProductPageViewController view];
        [v11 removeFromSuperview];

        v15 = [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController view];
        [(SUUIViewController *)self->_iphoneProductPageViewController _setWishlistButtonHidden:1];
        [(SUUIViewController *)self->_iphoneProductPageViewController showDefaultNavigationItems];
        [(SUProductPageViewController *)self _reloadGotoStoreButton];
        v6 = v15;
        if (!v15)
        {
          return;
        }

        goto LABEL_6;
      }

      if (!storePageViewController)
      {
        return;
      }

      v12 = [0 view];
      [v12 removeFromSuperview];

      v13 = [(SUUIIPadProductPageViewController *)self->_ipadProductPageViewController view];
      [v13 removeFromSuperview];

      bannerViewController = self->_storePageViewController;
    }
  }

  v6 = [bannerViewController view];
  if (!v6)
  {
    return;
  }

LABEL_6:
  v14 = v6;
  [v6 setAutoresizingMask:18];
  v7 = [(SUProductPageViewController *)self view];
  [v7 bounds];
  [v14 setFrame:?];

  v8 = [(SUProductPageViewController *)self view];
  [v8 addSubview:v14];
}

- (void)_setResponse:(id)a3 forProperties:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  nativeURL = self->_nativeURL;
  self->_nativeURL = 0;

  lastPageEvent = self->_lastPageEvent;
  self->_lastPageEvent = 0;

  v13 = [v8 bodyData];
  if (v13)
  {
    v14 = +[(SSVURLDataConsumer *)SUUIProductPageDataConsumer];
    v26 = v10;
    v15 = [v14 objectForData:v13 response:0 error:&v26];
    v16 = v26;

    if (v15)
    {
      v17 = [v8 URL];
      [v15 setPageURL:v17];

      v18 = [v8 metricsPageEvent];
      [(SUProductPageViewController *)self _showProductPage:v15 pageEvent:v18];

      v19 = [v8 metricsPageEvent];
      v20 = self->_lastPageEvent;
      self->_lastPageEvent = v19;
    }

    else
    {
      v21 = [(SUProductPageViewController *)self view];
      v22 = [v8 MIMEType];
      v23 = [v22 isEqualToString:@"text/html"];

      storePageViewController = self->_storePageViewController;
      if (v23)
      {
        v25 = [v9 URL];
        [(SUStorePageViewController *)storePageViewController reloadWithStorePage:v13 ofType:1 forURL:v25];
      }

      else
      {
        [(SUStorePageViewController *)self->_storePageViewController reloadWithURLRequestProperties:v9];
      }

      [(SUProductPageViewController *)self _reloadGotoStoreButton];
    }

    v10 = v16;
  }

  else
  {
    [(SUProductPageViewController *)self _sendDidFailLoadWithError:v10];
  }
}

- (void)_sendDidFailLoadWithError:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 productPage:self didFailLoadWithError:v7];
  }
}

- (void)_showPreviewOverlayAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUProductPageViewController *)self _previewOverlay];
  v6 = [(SUViewController *)self navigationController];
  [v6 addChildViewController:v5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__SUProductPageViewController__showPreviewOverlayAnimated___block_invoke;
  v8[3] = &unk_2798F5BE8;
  v9 = v5;
  v7 = v5;
  [v7 showInNavigationController:v6 animated:v3 completionBlock:v8];
}

void __59__SUProductPageViewController__showPreviewOverlayAnimated___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x277D7FF28] object:*(a1 + 32)];
}

- (void)_showProductPage:(id)a3 pageEvent:(id)a4
{
  v36[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEBC0];
  v9 = [v6 item];
  v10 = [v9 productPageURLString];
  v11 = [v8 URLWithString:v10];
  nativeURL = self->_nativeURL;
  self->_nativeURL = v11;

  style = self->_style;
  if (style == 3 || !style && ([MEMORY[0x277D75418] currentDevice], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "userInterfaceIdiom"), v14, v15 == 1))
  {
    [(SUUIClientContext *)self->_clientContext setUserInterfaceIdiomOverride:1];
    v16 = 1208;
    [(SUUIIPadProductPageViewController *)self->_ipadProductPageViewController removeFromParentViewController];
    v17 = [[SUUIIPadProductPageViewController alloc] initWithProductPage:v6];
    ipadProductPageViewController = self->_ipadProductPageViewController;
    self->_ipadProductPageViewController = v17;

    v19 = self->_ipadProductPageViewController;
    v20 = [(SUViewController *)self navigationItem];
    [(SUUIIPadProductPageViewController *)v19 _setExistingNavigationItem:v20];

    [(SUUIIPadProductPageViewController *)self->_ipadProductPageViewController setClientContext:self->_clientContext];
    [(SUUIIPadProductPageViewController *)self->_ipadProductPageViewController setDelegate:self];
    [(SUUIIPadProductPageViewController *)self->_ipadProductPageViewController configureMetricsWithPageEvent:v7];
    [(SUUIIPadProductPageViewController *)self->_ipadProductPageViewController setAskPermission:self->_askToBuy];
    v21 = self->_ipadProductPageViewController;
    if (!self->_askToBuy)
    {
      promptString = 0;
      goto LABEL_8;
    }
  }

  else
  {
    [(SUUIClientContext *)self->_clientContext setUserInterfaceIdiomOverride:0];
    v16 = 1216;
    [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController removeFromParentViewController];
    v23 = [[SUUIIPhoneProductPageViewController alloc] initWithProductPage:v6];
    iphoneProductPageViewController = self->_iphoneProductPageViewController;
    self->_iphoneProductPageViewController = v23;

    v25 = self->_iphoneProductPageViewController;
    v26 = [(SUViewController *)self navigationItem];
    [(SUUIIPhoneProductPageViewController *)v25 _setExistingNavigationItem:v26];

    [(SUUIViewController *)self->_iphoneProductPageViewController setClientContext:self->_clientContext];
    [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setDelegate:self];
    [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController configureMetricsWithPageEvent:v7];
    [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setAskPermission:self->_askToBuy];
    promptString = 0;
    v21 = self->_iphoneProductPageViewController;
    if (!self->_askToBuy)
    {
      goto LABEL_8;
    }
  }

  promptString = self->_promptString;
LABEL_8:
  [v21 setBannerText:promptString];
  if (!*(&self->super.super.super.super.isa + v16))
  {
    [(SUProductPageViewController *)self _reloadViews];
    [(SUProductPageViewController *)self _reloadGotoStoreButton];
    v30 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CDD438];
    v35 = *MEMORY[0x277CCA450];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v29 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_286AECDE0 table:0];
    v36[0] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v34 = [v30 errorWithDomain:v31 code:5 userInfo:v33];
    [(SUProductPageViewController *)self _sendDidFailLoadWithError:v34];

    goto LABEL_12;
  }

  [(SUProductPageViewController *)self addChildViewController:?];
  [(SUProductPageViewController *)self _reloadViews];
  [(SUProductPageViewController *)self _reloadGotoStoreButton];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    v29 = objc_loadWeakRetained(&self->_delegate);
    [v29 productPageDidFinishLoad:self];
LABEL_12:
  }
}

- (SUProductPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end