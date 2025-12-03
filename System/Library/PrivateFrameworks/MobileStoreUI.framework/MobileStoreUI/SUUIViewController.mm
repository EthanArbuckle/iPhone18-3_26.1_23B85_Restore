@interface SUUIViewController
- (NSOperationQueue)operationQueue;
- (SUUIIPadSearchController)IPadSearchController;
- (SUUIViewController)initWithTabBarItem:(id)item;
- (id)_defaultLeftBarButtonItems;
- (id)_defaultRightBarButtonItemsIsCompact:(BOOL)compact;
- (id)_getIPadSearchController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_presentWishlistFromPopover:(id)popover;
- (void)_presentWishlistFromSheet;
- (void)_reloadForOrientation:(int64_t)orientation;
- (void)_showDialogWithError:(id)error;
- (void)_wishlistAction:(id)action;
- (void)_wishlistPopoverDidDismiss;
- (void)dealloc;
- (void)forceOrientationBackToSupportedOrientation;
- (void)networkErrorViewControllerInvalidated:(id)invalidated;
- (void)productPageOverlayDidDismiss:(id)dismiss;
- (void)setClientContext:(id)context;
- (void)showDefaultNavigationItems;
- (void)showDefaultNavigationItemsForSize:(CGSize)size;
- (void)showDefaultNavigationItemsIsCompact:(BOOL)compact;
- (void)showError:(id)error;
- (void)viewWillAppear:(BOOL)appear;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)wishlist:(id)wishlist didSelectItem:(id)item atIndexPath:(id)path;
@end

@implementation SUUIViewController

- (SUUIViewController)initWithTabBarItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = SUUIViewController;
  v5 = [(SUUIViewController *)&v9 init];
  if (v5)
  {
    underlyingTabBarItem = [itemCopy underlyingTabBarItem];
    [(SUUIViewController *)v5 setTabBarItem:underlyingTabBarItem];
    _internalTitle = [underlyingTabBarItem _internalTitle];
    [(SUUIViewController *)v5 setTitle:_internalTitle];
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
  _getIPadSearchController = SUUIUserInterfaceIdiom(self->_clientContext);
  if (_getIPadSearchController)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    keyWindow = [mEMORY[0x277D75128] keyWindow];
    [keyWindow bounds];
    if (v6 <= SUUICompactThreshold())
    {
    }

    else
    {
      shouldForceTransientSearchControllerBahavior = [(SUUIClientContext *)self->_clientContext shouldForceTransientSearchControllerBahavior];

      if (!shouldForceTransientSearchControllerBahavior)
      {
        _getIPadSearchController = [(SUUIViewController *)self _getIPadSearchController];
        goto LABEL_7;
      }
    }

    _getIPadSearchController = 0;
  }

LABEL_7:

  return _getIPadSearchController;
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
    clientContext = [(SUUIViewController *)self clientContext];
    [(SUUIIPadSearchController *)v6 setClientContext:clientContext];

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

- (void)setClientContext:(id)context
{
  contextCopy = context;
  if (self->_clientContext != contextCopy)
  {
    v6 = contextCopy;
    objc_storeStrong(&self->_clientContext, context);
    [(SUUIIPadSearchController *)self->_searchController setClientContext:self->_clientContext];
    contextCopy = v6;
  }
}

- (void)showDefaultNavigationItems
{
  navigationItem = [(SUUIViewController *)self navigationItem];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  [keyWindow bounds];
  v7 = [(SUUIViewController *)self _defaultRightBarButtonItemsIsCompact:v6 <= SUUICompactThreshold()];
  [navigationItem setRightBarButtonItems:v7];

  navigationItem2 = [(SUUIViewController *)self navigationItem];
  _defaultLeftBarButtonItems = [(SUUIViewController *)self _defaultLeftBarButtonItems];
  [navigationItem2 setLeftBarButtonItems:_defaultLeftBarButtonItems];
}

- (void)showDefaultNavigationItemsForSize:(CGSize)size
{
  width = size.width;
  v5 = [(SUUIViewController *)self navigationItem:size.width];
  _defaultLeftBarButtonItems = [(SUUIViewController *)self _defaultLeftBarButtonItems];
  [v5 setLeftBarButtonItems:_defaultLeftBarButtonItems];

  navigationItem = [(SUUIViewController *)self navigationItem];
  v7 = [(SUUIViewController *)self _defaultRightBarButtonItemsIsCompact:width <= SUUICompactThreshold()];
  [navigationItem setRightBarButtonItems:v7];
}

- (void)showDefaultNavigationItemsIsCompact:(BOOL)compact
{
  compactCopy = compact;
  navigationItem = [(SUUIViewController *)self navigationItem];
  _defaultLeftBarButtonItems = [(SUUIViewController *)self _defaultLeftBarButtonItems];
  [navigationItem setLeftBarButtonItems:_defaultLeftBarButtonItems];

  navigationItem2 = [(SUUIViewController *)self navigationItem];
  v7 = [(SUUIViewController *)self _defaultRightBarButtonItemsIsCompact:compactCopy];
  [navigationItem2 setRightBarButtonItems:v7];
}

- (void)showError:(id)error
{
  errorCopy = error;
  if ([SUUINetworkErrorViewController canDisplayError:?])
  {
    if (!self->_networkErrorViewController)
    {
      v4 = [[SUUINetworkErrorViewController alloc] initWithError:errorCopy];
      networkErrorViewController = self->_networkErrorViewController;
      self->_networkErrorViewController = v4;

      v6 = self->_networkErrorViewController;
      clientContext = [(SUUIViewController *)self clientContext];
      [(SUUINetworkErrorViewController *)v6 setClientContext:clientContext];

      [(SUUINetworkErrorViewController *)self->_networkErrorViewController setDelegate:self];
      [(SUUIViewController *)self addChildViewController:self->_networkErrorViewController];
      view = [(SUUIViewController *)self view];
      view2 = [(SUUINetworkErrorViewController *)self->_networkErrorViewController view];
      [view2 setAutoresizingMask:18];
      [view bounds];
      [view2 setFrame:?];
      [view addSubview:view2];
    }
  }

  else
  {
    NSLog(&cfstr_LoadFailure.isa, errorCopy);
    if (SUUIViewControllerIsVisible(self))
    {
      [(SUUIViewController *)self _showDialogWithError:errorCopy];
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SUUIViewController;
  [(SUUIViewController *)&v4 viewWillAppear:appear];
  [(SUUIViewController *)self _reloadForOrientation:[(SUUIViewController *)self interfaceOrientation]];
  [(SUUIIPadSearchController *)self->_searchController reloadSearchField];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v6.receiver = self;
  v6.super_class = SUUIViewController;
  [(SUUIViewController *)&v6 willAnimateRotationToInterfaceOrientation:duration duration:?];
  [(SUUIViewController *)self _reloadForOrientation:orientation];
}

- (void)forceOrientationBackToSupportedOrientation
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if (([mEMORY[0x277D75128] statusBarOrientation] - 3) <= 1 && (-[SUUIViewController supportedInterfaceOrientations](self, "supportedInterfaceOrientations") & 0x18) == 0)
  {
    if (!-[SUUIViewController isViewLoaded](self, "isViewLoaded") || (-[SUUIViewController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], window = objc_claimAutoreleasedReturnValue(), v3, !window))
    {
      presentedViewController = [(SUUIViewController *)self presentedViewController];
      view = [presentedViewController view];
      window = [view window];

      if (!window)
      {
        window = [MEMORY[0x277D75DA0] keyWindow];
      }
    }

    [window _setRotatableViewOrientation:1 duration:1 force:0.0];
  }
}

- (void)networkErrorViewControllerInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  networkErrorViewController = self->_networkErrorViewController;
  if (networkErrorViewController)
  {
    v8 = invalidatedCopy;
    [networkErrorViewController setDelegate:0];
    view = [(SUUINetworkErrorViewController *)self->_networkErrorViewController view];
    [view removeFromSuperview];

    [(SUUINetworkErrorViewController *)self->_networkErrorViewController removeFromParentViewController];
    v7 = self->_networkErrorViewController;
    self->_networkErrorViewController = 0;

    networkErrorViewController = SUUIViewControllerIsVisible(self);
    invalidatedCopy = v8;
    if (networkErrorViewController)
    {
      networkErrorViewController = [(SUUIViewController *)self reloadData];
      invalidatedCopy = v8;
    }
  }

  MEMORY[0x2821F96F8](networkErrorViewController, invalidatedCopy);
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

- (void)productPageOverlayDidDismiss:(id)dismiss
{
  [(SUUIProductPageOverlayController *)self->_productPageOverlayController setDelegate:0];
  productPageOverlayController = self->_productPageOverlayController;
  self->_productPageOverlayController = 0;
}

- (void)wishlist:(id)wishlist didSelectItem:(id)item atIndexPath:(id)path
{
  wishlistCopy = wishlist;
  itemCopy = item;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if (![currentDevice userInterfaceIdiom])
  {

    goto LABEL_7;
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  [keyWindow bounds];
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
    v29 = itemCopy;
    v25 = itemCopy;
    [wishlistCopy dismissViewControllerAnimated:1 completion:v28];
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
    clientContext = [(SUUIViewController *)self clientContext];
    [(SUUIProductPageOverlayController *)v19 setClientContext:clientContext];

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
  v27 = itemCopy;
  v24 = itemCopy;
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

- (void)_wishlistAction:(id)action
{
  actionCopy = action;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if (![currentDevice userInterfaceIdiom])
  {

    goto LABEL_7;
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  [keyWindow bounds];
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

  [(SUUIViewController *)self _presentWishlistFromPopover:actionCopy];
LABEL_8:
}

- (void)_presentWishlistFromSheet
{
  clientContext = [(SUUIViewController *)self clientContext];
  v3 = objc_alloc_init(SUUIWishlistViewController);
  [(SUUIWishlistViewController *)v3 setClientContext:clientContext];
  [(SUUIWishlistViewController *)v3 setDelegate:self];
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
  [v4 setModalPresentationStyle:2];
  [(SUUIViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_presentWishlistFromPopover:(id)popover
{
  popoverCopy = popover;
  clientContext = [(SUUIViewController *)self clientContext];
  v5 = objc_alloc_init(SUUIWishlistViewController);
  wishlistViewController = self->_wishlistViewController;
  self->_wishlistViewController = v5;

  [(SUUIWishlistViewController *)self->_wishlistViewController setClientContext:clientContext];
  [(SUUIWishlistViewController *)self->_wishlistViewController setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_wishlistViewController];
  v8 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:v7];
  [v8 setPopoverContentSize:{320.0, 416.0}];
  [v8 presentPopoverFromBarButtonItem:popoverCopy permittedArrowDirections:1 animated:1];

  v9 = [[SUUIPopoverObserver alloc] initWithPopoverController:v8];
  wishlistPopoverObserver = self->_wishlistPopoverObserver;
  self->_wishlistPopoverObserver = v9;

  [(SUUIPopoverObserver *)self->_wishlistPopoverObserver setTarget:self selector:sel__wishlistPopoverDidDismiss];
}

- (void)_showDialogWithError:(id)error
{
  errorCopy = error;
  clientContext = [(SUUIViewController *)self clientContext];
  v6 = [clientContext localizedAlertWithError:errorCopy];

  [v6 show];
}

- (void)_reloadForOrientation:(int64_t)orientation
{
  v19 = *MEMORY[0x277D85DE8];
  navigationItem = [(SUUIViewController *)self navigationItem];
  rightBarButtonItems = [navigationItem rightBarButtonItems];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = rightBarButtonItems;
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

        customView = [*(*(&v14 + 1) + 8 * i) customView];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [customView sizeToFit];
          [customView frame];
          [customView setFrame:?];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  navigationItem2 = [(SUUIViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItems:0];

  navigationItem3 = [(SUUIViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItems:v6];
}

- (id)_defaultLeftBarButtonItems
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  clientContext = [(SUUIViewController *)self clientContext];
  v5 = [clientContext additionalLeftBarButtonItemForViewController:self];

  if (v5)
  {
    [v3 addObject:v5];
  }

  return v3;
}

- (id)_defaultRightBarButtonItemsIsCompact:(BOOL)compact
{
  compactCopy = compact;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  clientContext = [(SUUIViewController *)self clientContext];
  v7 = [clientContext additionalRightBarButtonItemForViewController:self];

  if (v7)
  {
    [v5 addObject:v7];
  }

  iPadSearchController = [(SUUIViewController *)self IPadSearchController];
  newSearchFieldBarItem = [iPadSearchController newSearchFieldBarItem];

  if (!newSearchFieldBarItem && !compactCopy)
  {
    if (SUUIUserInterfaceIdiom(self->_clientContext) != 1)
    {
      newSearchFieldBarItem = 0;
      goto LABEL_12;
    }

    _getIPadSearchController = [(SUUIViewController *)self _getIPadSearchController];
    newSearchFieldBarItem = [_getIPadSearchController newSearchFieldBarItem];
  }

  if (newSearchFieldBarItem)
  {
    clientContext2 = [(SUUIViewController *)self clientContext];
    v12 = [clientContext2 storeViewController:self shouldDisplayDefaultDarButton:0];

    if (v12)
    {
      if (!compactCopy)
      {
        [v5 addObject:newSearchFieldBarItem];
      }
    }
  }

LABEL_12:
  if (!self->_wishlistButtonHidden)
  {
    clientContext3 = [(SUUIViewController *)self clientContext];
    v14 = [clientContext3 storeViewController:self shouldDisplayDefaultDarButton:1];

    if (v14)
    {
      wishlistButtonItem = self->_wishlistButtonItem;
      if (!wishlistButtonItem)
      {
        clientContext4 = [(SUUIViewController *)self clientContext];
        v17 = [SUUIWishlistViewController wishlistBarButtonItemWithClientContext:clientContext4];
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