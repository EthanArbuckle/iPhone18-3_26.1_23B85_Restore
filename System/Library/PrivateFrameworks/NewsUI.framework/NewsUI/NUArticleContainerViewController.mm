@interface NUArticleContainerViewController
- (NUArticleContainerViewController)init;
- (NUArticleContainerViewController)initWithPagingFactory:(id)factory router:(id)router;
- (NUArticleContainerViewControllerDelegate)delegate;
- (UIEdgeInsets)overrideSafeAreaInsets;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (id)viewControllerPageableForViewController:(id)controller;
- (void)didReceiveMemoryWarning;
- (void)loadWithArticleIDs:(id)ds;
- (void)loadingDidFinishWithError:(id)error;
- (void)loadingWillStart;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NUArticleContainerViewController

- (NUArticleContainerViewController)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:@"Unavailable" reason:@"Must use initWithPagingFactory:interstitialAdManager:router:" userInfo:0];
  objc_exception_throw(v2);
}

- (NUArticleContainerViewController)initWithPagingFactory:(id)factory router:(id)router
{
  factoryCopy = factory;
  routerCopy = router;
  v14.receiver = self;
  v14.super_class = NUArticleContainerViewController;
  v9 = [(NUArticleContainerViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_linkPreviewing = 0;
    objc_storeStrong(&v9->_pagingFactory, factory);
    objc_storeStrong(&v10->_router, router);
    v11 = [[NUPageViewController alloc] initWithNibName:0 bundle:0];
    pageViewController = v10->_pageViewController;
    v10->_pageViewController = v11;

    [(NUPageViewController *)v10->_pageViewController setDelegate:v10];
    [(NUPageViewController *)v10->_pageViewController setDataSource:v10];
  }

  return v10;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = NUArticleContainerViewController;
  [(NUArticleContainerViewController *)&v8 viewDidLoad];
  pageViewController = [(NUArticleContainerViewController *)self pageViewController];
  [(NUArticleContainerViewController *)self addChildViewController:pageViewController];

  view = [(NUArticleContainerViewController *)self view];
  pageViewController2 = [(NUArticleContainerViewController *)self pageViewController];
  view2 = [pageViewController2 view];
  [view addSubview:view2];

  pageViewController3 = [(NUArticleContainerViewController *)self pageViewController];
  [pageViewController3 didMoveToParentViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = NUArticleContainerViewController;
  [(NUArticleContainerViewController *)&v14 viewDidLayoutSubviews];
  view = [(NUArticleContainerViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  pageViewController = [(NUArticleContainerViewController *)self pageViewController];
  view2 = [pageViewController view];
  [view2 setBounds:{v5, v7, v9, v11}];
}

- (void)didReceiveMemoryWarning
{
  v11.receiver = self;
  v11.super_class = NUArticleContainerViewController;
  [(NUArticleContainerViewController *)&v11 didReceiveMemoryWarning];
  pageViewController = [(NUArticleContainerViewController *)self pageViewController];
  visibleViewController = [pageViewController visibleViewController];
  v5 = [(NUArticleContainerViewController *)self viewControllerPageableForViewController:visibleViewController];

  paging = [(NUArticleContainerViewController *)self paging];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__NUArticleContainerViewController_didReceiveMemoryWarning__block_invoke;
  v8[3] = &unk_2799A3470;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  [paging forEachPage:v8];
}

void __59__NUArticleContainerViewController_didReceiveMemoryWarning__block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) pageIdentifier];

  if (v3)
  {
    v4 = [*(a1 + 40) paging];
    v5 = [*(a1 + 32) pageIdentifier];
    v6 = [v4 pageForIdentifier:v5];
    if (v6 != v14)
    {
      v7 = [*(a1 + 40) paging];
      v8 = [*(a1 + 32) pageIdentifier];
      v9 = [v7 pageBeforeForIdentifier:v8];
      if (v9 != v14)
      {
        v10 = [*(a1 + 40) paging];
        v11 = [*(a1 + 32) pageIdentifier];
        v12 = [v10 pageAfterIdentifier:v11];

        v13 = v14;
        if (v12 == v14)
        {
          goto LABEL_9;
        }

        goto LABEL_5;
      }
    }

    goto LABEL_8;
  }

LABEL_5:
  [v14 unprepare];
LABEL_8:
  v13 = v14;
LABEL_9:
}

- (void)loadWithArticleIDs:(id)ds
{
  dsCopy = ds;
  pagingFactory = [(NUArticleContainerViewController *)self pagingFactory];
  v6 = [pagingFactory createPagingForArticleIDs:dsCopy];

  [(NUArticleContainerViewController *)self setPaging:v6];
  paging = [(NUArticleContainerViewController *)self paging];
  firstPage = [paging firstPage];

  if (firstPage)
  {
    paging2 = [(NUArticleContainerViewController *)self paging];
    firstPage2 = [paging2 firstPage];
    viewController = [firstPage2 viewController];

    [viewController setLoadingDelegate:self];
    pageViewController = [(NUArticleContainerViewController *)self pageViewController];
    [pageViewController setVisibleViewController:viewController];
  }
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  v5 = [(NUArticleContainerViewController *)self viewControllerPageableForViewController:viewController];
  if (v5)
  {
    paging = [(NUArticleContainerViewController *)self paging];
    pageIdentifier = [v5 pageIdentifier];
    v8 = [paging pageBeforeForIdentifier:pageIdentifier];

    if (v8)
    {
      paging2 = [(NUArticleContainerViewController *)self paging];
      identifier = [v8 identifier];
      v11 = [paging2 pageBeforeForIdentifier:identifier];

      if (v11)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __90__NUArticleContainerViewController_pageViewController_viewControllerBeforeViewController___block_invoke_3;
        block[3] = &unk_2799A3498;
        v15 = v11;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      viewController = [v8 viewController];
    }

    else
    {
      viewController = 0;
    }
  }

  else
  {
    viewController = 0;
  }

  return viewController;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  v5 = [(NUArticleContainerViewController *)self viewControllerPageableForViewController:viewController];
  if (v5)
  {
    paging = [(NUArticleContainerViewController *)self paging];
    pageIdentifier = [v5 pageIdentifier];
    v8 = [paging pageAfterIdentifier:pageIdentifier];

    if (v8)
    {
      paging2 = [(NUArticleContainerViewController *)self paging];
      identifier = [v8 identifier];
      v11 = [paging2 pageAfterIdentifier:identifier];

      if (v11)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __89__NUArticleContainerViewController_pageViewController_viewControllerAfterViewController___block_invoke_3;
        block[3] = &unk_2799A3498;
        v15 = v11;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      viewController = [v8 viewController];
    }

    else
    {
      viewController = 0;
    }
  }

  else
  {
    viewController = 0;
  }

  return viewController;
}

- (void)loadingWillStart
{
  delegate = [(NUArticleContainerViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    paging = [(NUArticleContainerViewController *)self paging];
    firstPage = [paging firstPage];

    delegate2 = [(NUArticleContainerViewController *)self delegate];
    identifier = [firstPage identifier];
    [delegate2 articleContainerViewController:self willLoadFirstPageWithIdentifier:identifier];
  }
}

- (void)loadingDidFinishWithError:(id)error
{
  errorCopy = error;
  delegate = [(NUArticleContainerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    paging = [(NUArticleContainerViewController *)self paging];
    firstPage = [paging firstPage];

    delegate2 = [(NUArticleContainerViewController *)self delegate];
    identifier = [firstPage identifier];
    [delegate2 articleContainerViewController:self didLoadFirstPageWithIdentifier:identifier error:errorCopy];
  }
}

- (id)viewControllerPageableForViewController:(id)controller
{
  controllerCopy = controller;
  v4 = controllerCopy;
  if (controllerCopy && [controllerCopy conformsToProtocol:&unk_286E322C8])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIEdgeInsets)overrideSafeAreaInsets
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (NUArticleContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end