@interface NUArticleContainerViewController
- (NUArticleContainerViewController)init;
- (NUArticleContainerViewController)initWithPagingFactory:(id)a3 router:(id)a4;
- (NUArticleContainerViewControllerDelegate)delegate;
- (UIEdgeInsets)overrideSafeAreaInsets;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (id)viewControllerPageableForViewController:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)loadWithArticleIDs:(id)a3;
- (void)loadingDidFinishWithError:(id)a3;
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

- (NUArticleContainerViewController)initWithPagingFactory:(id)a3 router:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NUArticleContainerViewController;
  v9 = [(NUArticleContainerViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_linkPreviewing = 0;
    objc_storeStrong(&v9->_pagingFactory, a3);
    objc_storeStrong(&v10->_router, a4);
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
  v3 = [(NUArticleContainerViewController *)self pageViewController];
  [(NUArticleContainerViewController *)self addChildViewController:v3];

  v4 = [(NUArticleContainerViewController *)self view];
  v5 = [(NUArticleContainerViewController *)self pageViewController];
  v6 = [v5 view];
  [v4 addSubview:v6];

  v7 = [(NUArticleContainerViewController *)self pageViewController];
  [v7 didMoveToParentViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = NUArticleContainerViewController;
  [(NUArticleContainerViewController *)&v14 viewDidLayoutSubviews];
  v3 = [(NUArticleContainerViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(NUArticleContainerViewController *)self pageViewController];
  v13 = [v12 view];
  [v13 setBounds:{v5, v7, v9, v11}];
}

- (void)didReceiveMemoryWarning
{
  v11.receiver = self;
  v11.super_class = NUArticleContainerViewController;
  [(NUArticleContainerViewController *)&v11 didReceiveMemoryWarning];
  v3 = [(NUArticleContainerViewController *)self pageViewController];
  v4 = [v3 visibleViewController];
  v5 = [(NUArticleContainerViewController *)self viewControllerPageableForViewController:v4];

  v6 = [(NUArticleContainerViewController *)self paging];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__NUArticleContainerViewController_didReceiveMemoryWarning__block_invoke;
  v8[3] = &unk_2799A3470;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [v6 forEachPage:v8];
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

- (void)loadWithArticleIDs:(id)a3
{
  v4 = a3;
  v5 = [(NUArticleContainerViewController *)self pagingFactory];
  v6 = [v5 createPagingForArticleIDs:v4];

  [(NUArticleContainerViewController *)self setPaging:v6];
  v7 = [(NUArticleContainerViewController *)self paging];
  v12 = [v7 firstPage];

  if (v12)
  {
    v8 = [(NUArticleContainerViewController *)self paging];
    v9 = [v8 firstPage];
    v10 = [v9 viewController];

    [v10 setLoadingDelegate:self];
    v11 = [(NUArticleContainerViewController *)self pageViewController];
    [v11 setVisibleViewController:v10];
  }
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v5 = [(NUArticleContainerViewController *)self viewControllerPageableForViewController:a4];
  if (v5)
  {
    v6 = [(NUArticleContainerViewController *)self paging];
    v7 = [v5 pageIdentifier];
    v8 = [v6 pageBeforeForIdentifier:v7];

    if (v8)
    {
      v9 = [(NUArticleContainerViewController *)self paging];
      v10 = [v8 identifier];
      v11 = [v9 pageBeforeForIdentifier:v10];

      if (v11)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __90__NUArticleContainerViewController_pageViewController_viewControllerBeforeViewController___block_invoke_3;
        block[3] = &unk_2799A3498;
        v15 = v11;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      v12 = [v8 viewController];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v5 = [(NUArticleContainerViewController *)self viewControllerPageableForViewController:a4];
  if (v5)
  {
    v6 = [(NUArticleContainerViewController *)self paging];
    v7 = [v5 pageIdentifier];
    v8 = [v6 pageAfterIdentifier:v7];

    if (v8)
    {
      v9 = [(NUArticleContainerViewController *)self paging];
      v10 = [v8 identifier];
      v11 = [v9 pageAfterIdentifier:v10];

      if (v11)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __89__NUArticleContainerViewController_pageViewController_viewControllerAfterViewController___block_invoke_3;
        block[3] = &unk_2799A3498;
        v15 = v11;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      v12 = [v8 viewController];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)loadingWillStart
{
  v3 = [(NUArticleContainerViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(NUArticleContainerViewController *)self paging];
    v8 = [v5 firstPage];

    v6 = [(NUArticleContainerViewController *)self delegate];
    v7 = [v8 identifier];
    [v6 articleContainerViewController:self willLoadFirstPageWithIdentifier:v7];
  }
}

- (void)loadingDidFinishWithError:(id)a3
{
  v10 = a3;
  v4 = [(NUArticleContainerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NUArticleContainerViewController *)self paging];
    v7 = [v6 firstPage];

    v8 = [(NUArticleContainerViewController *)self delegate];
    v9 = [v7 identifier];
    [v8 articleContainerViewController:self didLoadFirstPageWithIdentifier:v9 error:v10];
  }
}

- (id)viewControllerPageableForViewController:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 conformsToProtocol:&unk_286E322C8])
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