@interface SUUIViewController
- (NSOperationQueue)operationQueue;
- (SUUIIPadSearchController)IPadSearchController;
- (SUUIViewController)initWithTabBarItem:(id)a3;
- (id)_defaultLeftBarButtonItems;
- (id)_defaultRightBarButtonItemsIsCompact:(BOOL)a3;
- (id)_getIPadSearchController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_presentWishlistFromPopover:(id)a3;
- (void)_presentWishlistFromSheet;
- (void)_reloadForOrientation:(int64_t)a3;
- (void)_showDialogWithError:(id)a3;
- (void)_wishlistAction:(id)a3;
- (void)_wishlistPopoverDidDismiss;
- (void)dealloc;
- (void)forceOrientationBackToSupportedOrientation;
- (void)networkErrorViewControllerInvalidated:(id)a3;
- (void)productPageOverlayDidDismiss:(id)a3;
- (void)setClientContext:(id)a3;
- (void)showDefaultNavigationItems;
- (void)showDefaultNavigationItemsForSize:(CGSize)a3;
- (void)showDefaultNavigationItemsIsCompact:(BOOL)a3;
- (void)showError:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)wishlist:(id)a3 didSelectItem:(id)a4 atIndexPath:(id)a5;
@end

@implementation SUUIViewController

- (SUUIViewController)initWithTabBarItem:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUUIViewController;
  v5 = [(SUUIViewController *)&v9 init];
  if (v5)
  {
    v6 = [v4 underlyingTabBarItem];
    [(SUUIViewController *)v5 setTabBarItem:v6];
    v7 = [v6 _internalTitle];
    [(SUUIViewController *)v5 setTitle:v7];
  }

  return v5;
}

- (void)dealloc
{
  [(SUUINetworkErrorViewController *)self->_networkErrorViewController setDelegate:0];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  [(UIBarButtonItem *)self->_wishlistButtonItem setTarget:0];
  [(SUUIPopoverObserver *)self->_wishlistPopoverObserver setTarget:0 selector:0];
  [(SUUIWishlistViewController *)self->_wishlistViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIViewController;
  [(SUUIViewController *)&v3 dealloc];
}

- (SUUIIPadSearchController)IPadSearchController
{
  v3 = SUUIUserInterfaceIdiom(self->_clientContext);
  if (v3)
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = [v4 keyWindow];
    [v5 bounds];
    if (v6 <= SUUICompactThreshold())
    {
    }

    else
    {
      v7 = [(SUUIClientContext *)self->_clientContext shouldForceTransientSearchControllerBahavior];

      if (!v7)
      {
        v3 = [(SUUIViewController *)self _getIPadSearchController];
        goto LABEL_7;
      }
    }

    v3 = 0;
  }

LABEL_7:

  return v3;
}

- (id)_getIPadSearchController
{
  searchController = self->_searchController;
  if (!searchController)
  {
    v4 = [[SUUIIPadSearchController alloc] initWithParentViewController:self];
    v5 = self->_searchController;
    self->_searchController = v4;

    v6 = self->_searchController;
    v7 = [(SUUIViewController *)self clientContext];
    [(SUUIIPadSearchController *)v6 setClientContext:v7];

    searchController = self->_searchController;
  }

  return searchController;
}

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:2];
    v6 = self->_operationQueue;
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.iTunesStoreUI.%@.%p", objc_opt_class(), self];
    [(NSOperationQueue *)v6 setName:v7];

    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (void)setClientContext:(id)a3
{
  v5 = a3;
  if (self->_clientContext != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_clientContext, a3);
    [(SUUIIPadSearchController *)self->_searchController setClientContext:self->_clientContext];
    v5 = v6;
  }
}

- (void)showDefaultNavigationItems
{
  v3 = [(SUUIViewController *)self navigationItem];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 keyWindow];
  [v5 bounds];
  v7 = [(SUUIViewController *)self _defaultRightBarButtonItemsIsCompact:v6 <= SUUICompactThreshold()];
  [v3 setRightBarButtonItems:v7];

  v9 = [(SUUIViewController *)self navigationItem];
  v8 = [(SUUIViewController *)self _defaultLeftBarButtonItems];
  [v9 setLeftBarButtonItems:v8];
}

- (void)showDefaultNavigationItemsForSize:(CGSize)a3
{
  width = a3.width;
  v5 = [(SUUIViewController *)self navigationItem:a3.width];
  v6 = [(SUUIViewController *)self _defaultLeftBarButtonItems];
  [v5 setLeftBarButtonItems:v6];

  v8 = [(SUUIViewController *)self navigationItem];
  v7 = [(SUUIViewController *)self _defaultRightBarButtonItemsIsCompact:width <= SUUICompactThreshold()];
  [v8 setRightBarButtonItems:v7];
}

- (void)showDefaultNavigationItemsIsCompact:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIViewController *)self navigationItem];
  v6 = [(SUUIViewController *)self _defaultLeftBarButtonItems];
  [v5 setLeftBarButtonItems:v6];

  v8 = [(SUUIViewController *)self navigationItem];
  v7 = [(SUUIViewController *)self _defaultRightBarButtonItemsIsCompact:v3];
  [v8 setRightBarButtonItems:v7];
}

- (void)showError:(id)a3
{
  v10 = a3;
  if ([SUUINetworkErrorViewController canDisplayError:?])
  {
    if (!self->_networkErrorViewController)
    {
      v4 = [[SUUINetworkErrorViewController alloc] initWithError:v10];
      networkErrorViewController = self->_networkErrorViewController;
      self->_networkErrorViewController = v4;

      v6 = self->_networkErrorViewController;
      v7 = [(SUUIViewController *)self clientContext];
      [(SUUINetworkErrorViewController *)v6 setClientContext:v7];

      [(SUUINetworkErrorViewController *)self->_networkErrorViewController setDelegate:self];
      [(SUUIViewController *)self addChildViewController:self->_networkErrorViewController];
      v8 = [(SUUIViewController *)self view];
      v9 = [(SUUINetworkErrorViewController *)self->_networkErrorViewController view];
      [v9 setAutoresizingMask:18];
      [v8 bounds];
      [v9 setFrame:?];
      [v8 addSubview:v9];
    }
  }

  else
  {
    NSLog(&cfstr_LoadFailure.isa, v10);
    if (SUUIViewControllerIsVisible(self))
    {
      [(SUUIViewController *)self _showDialogWithError:v10];
    }
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (SUUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    return 30;
  }

  if (SUUIAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUIViewController;
  [(SUUIViewController *)&v4 viewWillAppear:a3];
  [(SUUIViewController *)self _reloadForOrientation:[(SUUIViewController *)self interfaceOrientation]];
  [(SUUIIPadSearchController *)self->_searchController reloadSearchField];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v6.receiver = self;
  v6.super_class = SUUIViewController;
  [(SUUIViewController *)&v6 willAnimateRotationToInterfaceOrientation:a4 duration:?];
  [(SUUIViewController *)self _reloadForOrientation:a3];
}

- (void)forceOrientationBackToSupportedOrientation
{
  v7 = [MEMORY[0x277D75128] sharedApplication];
  if (([v7 statusBarOrientation] - 3) <= 1 && (-[SUUIViewController supportedInterfaceOrientations](self, "supportedInterfaceOrientations") & 0x18) == 0)
  {
    if (!-[SUUIViewController isViewLoaded](self, "isViewLoaded") || (-[SUUIViewController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
    {
      v5 = [(SUUIViewController *)self presentedViewController];
      v6 = [v5 view];
      v4 = [v6 window];

      if (!v4)
      {
        v4 = [MEMORY[0x277D75DA0] keyWindow];
      }
    }

    [v4 _setRotatableViewOrientation:1 duration:1 force:0.0];
  }
}

- (void)networkErrorViewControllerInvalidated:(id)a3
{
  v4 = a3;
  networkErrorViewController = self->_networkErrorViewController;
  if (networkErrorViewController)
  {
    v8 = v4;
    [networkErrorViewController setDelegate:0];
    v6 = [(SUUINetworkErrorViewController *)self->_networkErrorViewController view];
    [v6 removeFromSuperview];

    [(SUUINetworkErrorViewController *)self->_networkErrorViewController removeFromParentViewController];
    v7 = self->_networkErrorViewController;
    self->_networkErrorViewController = 0;

    networkErrorViewController = SUUIViewControllerIsVisible(self);
    v4 = v8;
    if (networkErrorViewController)
    {
      networkErrorViewController = [(SUUIViewController *)self reloadData];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](networkErrorViewController, v4);
}

- (void)_wishlistPopoverDidDismiss
{
  [(SUUIPopoverObserver *)self->_wishlistPopoverObserver setTarget:0 selector:0];
  wishlistPopoverObserver = self->_wishlistPopoverObserver;
  self->_wishlistPopoverObserver = 0;

  [(SUUIWishlistViewController *)self->_wishlistViewController setDelegate:0];
  wishlistViewController = self->_wishlistViewController;
  self->_wishlistViewController = 0;
}

- (void)productPageOverlayDidDismiss:(id)a3
{
  [(SUUIProductPageOverlayController *)self->_productPageOverlayController setDelegate:0];
  productPageOverlayController = self->_productPageOverlayController;
  self->_productPageOverlayController = 0;
}

- (void)wishlist:(id)a3 didSelectItem:(id)a4 atIndexPath:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277D75418] currentDevice];
  if (![v9 userInterfaceIdiom])
  {

    goto LABEL_7;
  }

  v10 = [MEMORY[0x277D75128] sharedApplication];
  v11 = [v10 keyWindow];
  [v11 bounds];
  v13 = v12;
  v14 = SUUICompactThreshold();

  if (v13 <= v14)
  {
LABEL_7:
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __57__SUUIViewController_wishlist_didSelectItem_atIndexPath___block_invoke;
    v28[3] = &unk_2798F5AF8;
    v23 = &v29;
    v28[4] = self;
    v29 = v8;
    v25 = v8;
    [v7 dismissViewControllerAnimated:1 completion:v28];
    goto LABEL_8;
  }

  [(SUUIPopoverObserver *)self->_wishlistPopoverObserver setTarget:0 selector:0];
  [(SUUIPopoverObserver *)self->_wishlistPopoverObserver dismissPopoverAnimated:1];
  wishlistPopoverObserver = self->_wishlistPopoverObserver;
  self->_wishlistPopoverObserver = 0;

  [(SUUIWishlistViewController *)self->_wishlistViewController setDelegate:0];
  wishlistViewController = self->_wishlistViewController;
  self->_wishlistViewController = 0;

  if (!self->_productPageOverlayController)
  {
    v17 = [[SUUIProductPageOverlayController alloc] initWithParentViewController:self];
    productPageOverlayController = self->_productPageOverlayController;
    self->_productPageOverlayController = v17;

    v19 = self->_productPageOverlayController;
    v20 = [(SUUIViewController *)self clientContext];
    [(SUUIProductPageOverlayController *)v19 setClientContext:v20];

    [(SUUIProductPageOverlayController *)self->_productPageOverlayController setDelegate:self];
  }

  UIAnimationDragCoefficient();
  v22 = dispatch_time(0, (v21 * 0.35 * 1000000000.0));
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__SUUIViewController_wishlist_didSelectItem_atIndexPath___block_invoke_4;
  v26[3] = &unk_2798F5AF8;
  v23 = &v27;
  v26[4] = self;
  v27 = v8;
  v24 = v8;
  dispatch_after(v22, MEMORY[0x277D85CD0], v26);
LABEL_8:
}

void __57__SUUIViewController_wishlist_didSelectItem_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientContext];
  v3 = [*(a1 + 40) lookupDictionary];
  v4 = SUUIXEventSidepackDictionary(v3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SUUIViewController_wishlist_didSelectItem_atIndexPath___block_invoke_2;
  v6[3] = &unk_2798FAC50;
  v7 = *(a1 + 40);
  v8 = v2;
  v9 = *(a1 + 32);
  v5 = v2;
  [v5 sendOnXEventWithDictionary:v4 completionBlock:v6];
}

void __57__SUUIViewController_wishlist_didSelectItem_atIndexPath___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SUUIViewController_wishlist_didSelectItem_atIndexPath___block_invoke_3;
    block[3] = &unk_2798F5BC0;
    v6 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v7 = v3;
    v8 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __57__SUUIViewController_wishlist_didSelectItem_atIndexPath___block_invoke_3(uint64_t a1)
{
  v3 = [[SUUIIPhoneProductPageViewController alloc] initWithItem:*(a1 + 32)];
  [(SUUIViewController *)v3 setClientContext:*(a1 + 40)];
  v2 = [*(a1 + 48) navigationController];
  [v2 pushViewController:v3 animated:1];
}

- (void)_wishlistAction:(id)a3
{
  v13 = a3;
  v4 = [MEMORY[0x277D75418] currentDevice];
  if (![v4 userInterfaceIdiom])
  {

    goto LABEL_7;
  }

  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 keyWindow];
  [v6 bounds];
  v8 = v7;
  v9 = SUUICompactThreshold();

  if (v8 <= v9)
  {
LABEL_7:
    [(SUUIViewController *)self _presentWishlistFromSheet];
    goto LABEL_8;
  }

  wishlistPopoverObserver = self->_wishlistPopoverObserver;
  if (wishlistPopoverObserver)
  {
    [(SUUIPopoverObserver *)wishlistPopoverObserver setTarget:0 selector:0];
    [(SUUIPopoverObserver *)self->_wishlistPopoverObserver dismissPopoverAnimated:1];
    v11 = self->_wishlistPopoverObserver;
    self->_wishlistPopoverObserver = 0;

    [(SUUIWishlistViewController *)self->_wishlistViewController setDelegate:0];
    wishlistViewController = self->_wishlistViewController;
    self->_wishlistViewController = 0;
  }

  [(SUUIViewController *)self _presentWishlistFromPopover:v13];
LABEL_8:
}

- (void)_presentWishlistFromSheet
{
  v5 = [(SUUIViewController *)self clientContext];
  v3 = objc_alloc_init(SUUIWishlistViewController);
  [(SUUIWishlistViewController *)v3 setClientContext:v5];
  [(SUUIWishlistViewController *)v3 setDelegate:self];
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
  [v4 setModalPresentationStyle:2];
  [(SUUIViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_presentWishlistFromPopover:(id)a3
{
  v4 = a3;
  v11 = [(SUUIViewController *)self clientContext];
  v5 = objc_alloc_init(SUUIWishlistViewController);
  wishlistViewController = self->_wishlistViewController;
  self->_wishlistViewController = v5;

  [(SUUIWishlistViewController *)self->_wishlistViewController setClientContext:v11];
  [(SUUIWishlistViewController *)self->_wishlistViewController setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_wishlistViewController];
  v8 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:v7];
  [v8 setPopoverContentSize:{320.0, 416.0}];
  [v8 presentPopoverFromBarButtonItem:v4 permittedArrowDirections:1 animated:1];

  v9 = [[SUUIPopoverObserver alloc] initWithPopoverController:v8];
  wishlistPopoverObserver = self->_wishlistPopoverObserver;
  self->_wishlistPopoverObserver = v9;

  [(SUUIPopoverObserver *)self->_wishlistPopoverObserver setTarget:self selector:sel__wishlistPopoverDidDismiss];
}

- (void)_showDialogWithError:(id)a3
{
  v4 = a3;
  v5 = [(SUUIViewController *)self clientContext];
  v6 = [v5 localizedAlertWithError:v4];

  [v6 show];
}

- (void)_reloadForOrientation:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [(SUUIViewController *)self navigationItem];
  v5 = [v4 rightBarButtonItems];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) customView];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 sizeToFit];
          [v11 frame];
          [v11 setFrame:?];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(SUUIViewController *)self navigationItem];
  [v12 setRightBarButtonItems:0];

  v13 = [(SUUIViewController *)self navigationItem];
  [v13 setRightBarButtonItems:v6];
}

- (id)_defaultLeftBarButtonItems
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(SUUIViewController *)self clientContext];
  v5 = [v4 additionalLeftBarButtonItemForViewController:self];

  if (v5)
  {
    [v3 addObject:v5];
  }

  return v3;
}

- (id)_defaultRightBarButtonItemsIsCompact:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(SUUIViewController *)self clientContext];
  v7 = [v6 additionalRightBarButtonItemForViewController:self];

  if (v7)
  {
    [v5 addObject:v7];
  }

  v8 = [(SUUIViewController *)self IPadSearchController];
  v9 = [v8 newSearchFieldBarItem];

  if (!v9 && !v3)
  {
    if (SUUIUserInterfaceIdiom(self->_clientContext) != 1)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v10 = [(SUUIViewController *)self _getIPadSearchController];
    v9 = [v10 newSearchFieldBarItem];
  }

  if (v9)
  {
    v11 = [(SUUIViewController *)self clientContext];
    v12 = [v11 storeViewController:self shouldDisplayDefaultDarButton:0];

    if (v12)
    {
      if (!v3)
      {
        [v5 addObject:v9];
      }
    }
  }

LABEL_12:
  if (!self->_wishlistButtonHidden)
  {
    v13 = [(SUUIViewController *)self clientContext];
    v14 = [v13 storeViewController:self shouldDisplayDefaultDarButton:1];

    if (v14)
    {
      wishlistButtonItem = self->_wishlistButtonItem;
      if (!wishlistButtonItem)
      {
        v16 = [(SUUIViewController *)self clientContext];
        v17 = [SUUIWishlistViewController wishlistBarButtonItemWithClientContext:v16];
        v18 = self->_wishlistButtonItem;
        self->_wishlistButtonItem = v17;

        [(UIBarButtonItem *)self->_wishlistButtonItem setAction:sel__wishlistAction_];
        [(UIBarButtonItem *)self->_wishlistButtonItem setTarget:self];
        wishlistButtonItem = self->_wishlistButtonItem;
      }

      [v5 addObject:wishlistButtonItem];
    }
  }

  return v5;
}

@end