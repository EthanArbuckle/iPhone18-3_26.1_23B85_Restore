@interface SUUIProductPageOverlayController
- (NSArray)URLs;
- (SUUIProductPageOverlayController)initWithParentViewController:(id)controller;
- (SUUIProductPageOverlayDelegate)delegate;
- (UIViewController)parentViewController;
- (int64_t)numberOfVisibleOverlays;
- (void)_backstopViewAction:(id)action;
- (void)_finishDismissAndNotifyDelegate:(BOOL)delegate withViewController:(id)controller;
- (void)_removeOverlayViewController;
- (void)_showOverlayViewController;
- (void)_showWithInitialViewController:(id)controller;
- (void)dealloc;
- (void)iPadProductPage:(id)page openItem:(id)item;
- (void)iPadProductPage:(id)page openURL:(id)l viewControllerBlock:(id)block;
- (void)iPadProductPageCannotOpen:(id)open;
- (void)productViewControllerDidFinish:(id)finish;
- (void)showWithInitialItem:(id)item;
- (void)showWithInitialItemIdentifier:(int64_t)identifier;
- (void)showWithInitialProductPage:(id)page metricsPageEvent:(id)event;
- (void)showWithInitialURL:(id)l;
- (void)showWithInitialURLRequest:(id)request;
- (void)showWithInitialURLs:(id)ls;
@end

@implementation SUUIProductPageOverlayController

- (SUUIProductPageOverlayController)initWithParentViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = SUUIProductPageOverlayController;
  v5 = [(SUUIProductPageOverlayController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parentViewController, controllerCopy);
  }

  return v6;
}

- (void)dealloc
{
  if (self->_overlayViewController)
  {
    [(SUUIProductPageOverlayController *)self _removeOverlayViewController];
  }

  v3.receiver = self;
  v3.super_class = SUUIProductPageOverlayController;
  [(SUUIProductPageOverlayController *)&v3 dealloc];
}

- (int64_t)numberOfVisibleOverlays
{
  viewControllers = [(SUUIOverlayContainerViewController *)self->_overlayViewController viewControllers];
  v3 = [viewControllers count];

  return v3;
}

- (void)showWithInitialItem:(id)item
{
  itemCopy = item;
  v6 = [[SUUIIPadProductPageViewController alloc] initWithItem:itemCopy];
  initialItem = self->_initialItem;
  self->_initialItem = itemCopy;

  [(SUUIProductPageOverlayController *)self _showWithInitialViewController:v6];
}

- (void)showWithInitialItemIdentifier:(int64_t)identifier
{
  v4 = [[SUUIIPadProductPageViewController alloc] initWithItemIdentifier:identifier];
  [(SUUIProductPageOverlayController *)self _showWithInitialViewController:v4];
}

- (void)showWithInitialProductPage:(id)page metricsPageEvent:(id)event
{
  eventCopy = event;
  pageCopy = page;
  v9 = [[SUUIIPadProductPageViewController alloc] initWithProductPage:pageCopy];

  clientContext = [(SUUIProductPageOverlayController *)self clientContext];
  [(SUUIIPadProductPageViewController *)v9 setClientContext:clientContext];

  [(SUUIIPadProductPageViewController *)v9 configureMetricsWithPageEvent:eventCopy];
  [(SUUIProductPageOverlayController *)self _showWithInitialViewController:v9];
}

- (void)showWithInitialURL:(id)l
{
  lCopy = l;
  v5 = [[SUUIIPadProductPageViewController alloc] initWithURL:lCopy];

  [(SUUIProductPageOverlayController *)self _showWithInitialViewController:v5];
}

- (void)showWithInitialURLRequest:(id)request
{
  requestCopy = request;
  v5 = [[SUUIIPadProductPageViewController alloc] initWithURLRequest:requestCopy];

  [(SUUIProductPageOverlayController *)self _showWithInitialViewController:v5];
}

- (void)showWithInitialURLs:(id)ls
{
  v20 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  [(SUUIProductPageOverlayController *)self _showOverlayViewController];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = lsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [SUUIIPadProductPageViewController alloc];
        v13 = [(SUUIIPadProductPageViewController *)v12 initWithURL:v11, v15];
        clientContext = [(SUUIProductPageOverlayController *)self clientContext];
        [(SUUIIPadProductPageViewController *)v13 setClientContext:clientContext];

        [(SUUIIPadProductPageViewController *)v13 setDelegate:self];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(SUUIOverlayContainerViewController *)self->_overlayViewController showViewControllers:v5];
}

- (NSArray)URLs
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  viewControllers = [(SUUIOverlayContainerViewController *)self->_overlayViewController viewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(viewControllers);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) URL];
        if (v9)
        {
          [array addObject:v9];
        }
      }

      v6 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)iPadProductPage:(id)page openItem:(id)item
{
  itemCopy = item;
  v7 = [[SUUIIPadProductPageViewController alloc] initWithItem:itemCopy];

  clientContext = [(SUUIProductPageOverlayController *)self clientContext];
  [(SUUIIPadProductPageViewController *)v7 setClientContext:clientContext];

  [(SUUIIPadProductPageViewController *)v7 setDelegate:self];
  [(SUUIOverlayContainerViewController *)self->_overlayViewController showViewController:v7 withCompletionBlock:0];
}

- (void)iPadProductPage:(id)page openURL:(id)l viewControllerBlock:(id)block
{
  pageCopy = page;
  lCopy = l;
  blockCopy = block;
  v11 = blockCopy;
  if (blockCopy && ((*(blockCopy + 2))(blockCopy), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    clientContext = self->_clientContext;
    WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
    v16 = [(SUUIClientContext *)clientContext metricsPageContextForViewController:WeakRetained];

    [(SUUIClientContext *)self->_clientContext setMetricsPageContext:v16 forViewController:v13];
    if (self->_initialItem && (v17 = objc_loadWeakRetained(&self->_delegate), v18 = objc_opt_respondsToSelector(), v17, (v18 & 1) != 0) && (v19 = objc_loadWeakRetained(&self->_delegate), [v19 productPageOverlay:self flipSourceViewToDismissItem:self->_initialItem], v20 = objc_claimAutoreleasedReturnValue(), v19, v20))
    {
      v21 = objc_alloc_init(SUUIOverlayFlipTransition);
      [(SUUIOverlayFlipTransition *)v21 setFlipSourceView:v20];
      overlayViewController = self->_overlayViewController;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __80__SUUIProductPageOverlayController_iPadProductPage_openURL_viewControllerBlock___block_invoke_2;
      v26[3] = &unk_2798F5AF8;
      v26[4] = self;
      v27 = v13;
      v23 = v13;
      [(SUUIOverlayContainerViewController *)overlayViewController dismissWithFlipTransition:v21 completionBlock:v26];
    }

    else
    {
      v24 = self->_overlayViewController;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __80__SUUIProductPageOverlayController_iPadProductPage_openURL_viewControllerBlock___block_invoke;
      v28[3] = &unk_2798F5AF8;
      v28[4] = self;
      v29 = v13;
      v25 = v13;
      [(SUUIOverlayContainerViewController *)v24 dismissWithFadeTransitionCompletionBlock:v28];
    }
  }

  else if (lCopy)
  {
    SUUIMetricsOpenURL(lCopy);
  }
}

- (void)iPadProductPageCannotOpen:(id)open
{
  v8 = [open URL];
  [(SUUIProductPageOverlayController *)self _finishDismissAndNotifyDelegate:0 withViewController:0];
  v4 = objc_alloc_init(MEMORY[0x277CDD3A8]);
  [v4 loadProductWithURL:v8 completionBlock:0];
  [v4 setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  navigationController = [WeakRetained navigationController];
  topViewController = [navigationController topViewController];

  [topViewController presentViewController:v4 animated:1 completion:0];
}

- (void)_backstopViewAction:(id)action
{
  actionCopy = action;
  if (self->_initialItem && (WeakRetained = objc_loadWeakRetained(&self->_delegate), v6 = objc_opt_respondsToSelector(), WeakRetained, (v6 & 1) != 0) && (v7 = objc_loadWeakRetained(&self->_delegate), [v7 productPageOverlay:self flipSourceViewToDismissItem:self->_initialItem], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v9 = objc_alloc_init(SUUIOverlayFlipTransition);
    [(SUUIOverlayFlipTransition *)v9 setFlipSourceView:v8];
    overlayViewController = self->_overlayViewController;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__SUUIProductPageOverlayController__backstopViewAction___block_invoke_2;
    v12[3] = &unk_2798F5BE8;
    v12[4] = self;
    [(SUUIOverlayContainerViewController *)overlayViewController dismissWithFlipTransition:v9 completionBlock:v12];
  }

  else
  {
    v11 = self->_overlayViewController;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__SUUIProductPageOverlayController__backstopViewAction___block_invoke;
    v13[3] = &unk_2798F5BE8;
    v13[4] = self;
    [(SUUIOverlayContainerViewController *)v11 dismissWithFadeTransitionCompletionBlock:v13];
  }
}

- (void)productViewControllerDidFinish:(id)finish
{
  [finish dismissViewControllerAnimated:1 completion:0];

  [(SUUIProductPageOverlayController *)self _finishDismissAndNotifyDelegate:1 withViewController:0];
}

- (void)_finishDismissAndNotifyDelegate:(BOOL)delegate withViewController:(id)controller
{
  delegateCopy = delegate;
  controllerCopy = controller;
  if ([(SUUIOverlayContainerViewController *)self->_overlayViewController isViewLoaded])
  {
    view = [(SUUIOverlayContainerViewController *)self->_overlayViewController view];
    [view removeFromSuperview];
  }

  viewControllers = [(SUUIOverlayContainerViewController *)self->_overlayViewController viewControllers];
  [viewControllers enumerateObjectsUsingBlock:&__block_literal_global_17];

  backstopControl = [(SUUIOverlayContainerViewController *)self->_overlayViewController backstopControl];
  [backstopControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(SUUIOverlayContainerViewController *)self->_overlayViewController removeFromParentViewController];
  overlayViewController = self->_overlayViewController;
  self->_overlayViewController = 0;

  initialItem = self->_initialItem;
  self->_initialItem = 0;

  if (delegateCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = v13;
    if (v12)
    {
      [v13 productPageOverlayDidDismiss:self toPresentViewController:controllerCopy];
      goto LABEL_10;
    }

    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 productPageOverlayDidDismiss:self];
    }
  }

  v17 = controllerCopy;
  if (!controllerCopy)
  {
    goto LABEL_11;
  }

  v14 = objc_loadWeakRetained(&self->_parentViewController);
  navigationController = [v14 navigationController];
  [navigationController pushViewController:controllerCopy animated:1];

LABEL_10:
  v17 = controllerCopy;
LABEL_11:
}

- (void)_removeOverlayViewController
{
  v16 = *MEMORY[0x277D85DE8];
  viewControllers = [(SUUIOverlayContainerViewController *)self->_overlayViewController viewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v11 + 1) + 8 * v7++) setDelegate:0];
      }

      while (v5 != v7);
      v5 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  if ([(SUUIOverlayContainerViewController *)self->_overlayViewController isViewLoaded])
  {
    backstopControl = [(SUUIOverlayContainerViewController *)self->_overlayViewController backstopControl];
    [backstopControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

    view = [(SUUIOverlayContainerViewController *)self->_overlayViewController view];
    [view removeFromSuperview];
  }

  [(SUUIOverlayContainerViewController *)self->_overlayViewController removeFromParentViewController];
  overlayViewController = self->_overlayViewController;
  self->_overlayViewController = 0;
}

- (void)_showOverlayViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  v20 = SUUIViewControllerGetAncestorTabBarController(WeakRetained);

  if (!self->_overlayViewController)
  {
    v4 = objc_alloc_init(SUUIOverlayContainerViewController);
    overlayViewController = self->_overlayViewController;
    self->_overlayViewController = v4;

    [v20 addChildViewController:self->_overlayViewController];
    backstopControl = [(SUUIOverlayContainerViewController *)self->_overlayViewController backstopControl];
    [backstopControl addTarget:self action:sel__backstopViewAction_ forControlEvents:64];

    clientContext = self->_clientContext;
    v8 = objc_loadWeakRetained(&self->_parentViewController);
    v9 = [(SUUIClientContext *)clientContext metricsPageContextForViewController:v8];

    [(SUUIClientContext *)self->_clientContext setMetricsPageContext:v9 forViewController:self->_overlayViewController];
  }

  view = [v20 view];
  [view bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  view2 = [(SUUIOverlayContainerViewController *)self->_overlayViewController view];
  [view2 setAutoresizingMask:18];
  [view2 setFrame:{v12, v14, v16, v18}];
  [view addSubview:view2];
}

- (void)_showWithInitialViewController:(id)controller
{
  controllerCopy = controller;
  clientContext = [(SUUIProductPageOverlayController *)self clientContext];
  [(SUUIOverlayFlipTransition *)controllerCopy setClientContext:clientContext];

  [(SUUIOverlayFlipTransition *)controllerCopy setDelegate:self];
  [(SUUIProductPageOverlayController *)self _showOverlayViewController];
  if (self->_initialItem && (WeakRetained = objc_loadWeakRetained(&self->_delegate), v7 = objc_opt_respondsToSelector(), WeakRetained, (v7 & 1) != 0) && (v8 = objc_loadWeakRetained(&self->_delegate), [v8 productPageOverlay:self flipSourceViewToPresentItem:self->_initialItem], v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
  {
    v10 = objc_alloc_init(SUUIOverlayFlipTransition);
    [(SUUIOverlayFlipTransition *)v10 setFlipSourceView:v9];
    overlayViewController = self->_overlayViewController;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__SUUIProductPageOverlayController__showWithInitialViewController___block_invoke_2;
    v14[3] = &unk_2798F5BE8;
    v15 = controllerCopy;
    v12 = controllerCopy;
    [(SUUIOverlayContainerViewController *)overlayViewController showViewController:v12 withFlipTransition:v10 completionBlock:v14];
  }

  else
  {
    v13 = self->_overlayViewController;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__SUUIProductPageOverlayController__showWithInitialViewController___block_invoke;
    v16[3] = &unk_2798F5BE8;
    v17 = controllerCopy;
    v9 = controllerCopy;
    [(SUUIOverlayContainerViewController *)v13 showViewController:v9 withCompletionBlock:v16];
    v10 = v17;
  }
}

- (SUUIProductPageOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end