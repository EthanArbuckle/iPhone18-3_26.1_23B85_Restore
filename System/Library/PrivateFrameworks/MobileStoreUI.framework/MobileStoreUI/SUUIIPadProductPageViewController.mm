@interface SUUIIPadProductPageViewController
- (BOOL)_isIncompatibleItem;
- (CGPoint)topContentOffset;
- (SUUIIPadProductPageDelegate)delegate;
- (SUUIIPadProductPageViewController)initWithItem:(id)a3;
- (SUUIIPadProductPageViewController)initWithItemIdentifier:(int64_t)a3;
- (SUUIIPadProductPageViewController)initWithProductPage:(id)a3;
- (SUUIIPadProductPageViewController)initWithURL:(id)a3;
- (SUUIIPadProductPageViewController)initWithURLRequest:(id)a3;
- (id)_detailsViewController;
- (id)_initSUUIIPadProductPageViewController;
- (id)_placeholderViewController;
- (id)_relatedViewController;
- (id)_reviewsViewController;
- (id)_viewControllerForSectionIndex:(int64_t)a3;
- (void)_metricsEnterEventNotification:(id)a3;
- (void)_reloadHeaderViewController;
- (void)_selectSectionIndex:(int64_t)a3;
- (void)_sendCannotOpen;
- (void)_setDefaultSectionIndexWithFragment:(int64_t)a3;
- (void)_setMetricsController:(id)a3;
- (void)_setProductPage:(id)a3 error:(id)a4;
- (void)_showBanner;
- (void)_showError:(id)a3;
- (void)_showIncompatibleView;
- (void)_showViewController:(id)a3;
- (void)askPermissionBannerDidSelect:(id)a3;
- (void)configureMetricsWithPageEvent:(id)a3;
- (void)dealloc;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)loadView;
- (void)networkErrorViewControllerInvalidated:(id)a3;
- (void)productPageChildOpenItem:(id)a3;
- (void)productPageChildOpenURL:(id)a3 viewControllerBlock:(id)a4;
- (void)productPageHeaderView:(id)a3 didSelectURL:(id)a4;
- (void)reloadData;
- (void)setAskPermission:(BOOL)a3;
- (void)setBannerText:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SUUIIPadProductPageViewController

- (id)_initSUUIIPadProductPageViewController
{
  v7.receiver = self;
  v7.super_class = SUUIIPadProductPageViewController;
  v2 = [(SUUIIPadProductPageViewController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:4];
    v2->_defaultSelectedSectionIndex = 0;
    v2->_selectedSectionIndex = 0x7FFFFFFFFFFFFFFFLL;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__metricsEnterEventNotification_ name:@"SUUIMetricsDidRecordEnterEventNotification" object:0];
  }

  return v2;
}

- (SUUIIPadProductPageViewController)initWithItem:(id)a3
{
  v5 = a3;
  v6 = [(SUUIIPadProductPageViewController *)self _initSUUIIPadProductPageViewController];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 133, a3);
    v7->_lookupItemIdentifier = [v5 itemIdentifier];
    v8 = [v5 productPageURLString];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277CBABA0]);
      v10 = [MEMORY[0x277CBEBC0] URLWithString:v8];
      v11 = [v9 initWithURL:v10];
      urlRequest = v7->_urlRequest;
      v7->_urlRequest = v11;
    }
  }

  return v7;
}

- (SUUIIPadProductPageViewController)initWithItemIdentifier:(int64_t)a3
{
  result = [(SUUIIPadProductPageViewController *)self _initSUUIIPadProductPageViewController];
  if (result)
  {
    result->_lookupItemIdentifier = a3;
  }

  return result;
}

- (SUUIIPadProductPageViewController)initWithProductPage:(id)a3
{
  v5 = a3;
  v6 = [v5 item];
  v7 = [(SUUIIPadProductPageViewController *)self initWithItem:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_productPage, a3);
    [(SUUIIPadProductPageViewController *)v7 _setDefaultSectionIndexWithFragment:[(SUUIProductPage *)v7->_productPage defaultPageFragment]];
  }

  return v7;
}

- (SUUIIPadProductPageViewController)initWithURL:(id)a3
{
  v4 = [MEMORY[0x277CBABA0] requestWithURL:a3];
  v5 = [(SUUIIPadProductPageViewController *)self initWithURLRequest:v4];

  return v5;
}

- (SUUIIPadProductPageViewController)initWithURLRequest:(id)a3
{
  v4 = a3;
  v5 = [(SUUIIPadProductPageViewController *)self _initSUUIIPadProductPageViewController];
  if (v5)
  {
    v6 = [v4 copy];
    urlRequest = v5->_urlRequest;
    v5->_urlRequest = v6;

    v8 = [v4 URL];
    [(SUUIIPadProductPageViewController *)v5 _setDefaultSectionIndexWithFragment:SUUIProductPageFragmentWithURL(v8)];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"SUUIMetricsDidRecordEnterEventNotification" object:0];
  [(SUUIProductPageHeaderViewController *)self->_headerViewController setDelegate:0];
  [(SUUINetworkErrorViewController *)self->_networkErrorViewController setDelegate:0];
  [(SUUISwooshArrayViewController *)self->_relatedViewController setDelegate:0];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];

  v4.receiver = self;
  v4.super_class = SUUIIPadProductPageViewController;
  [(SUUIIPadProductPageViewController *)&v4 dealloc];
}

- (void)configureMetricsWithPageEvent:(id)a3
{
  v4 = a3;
  metricsController = self->_metricsController;
  if (metricsController)
  {
    [(SUUIMetricsController *)metricsController recordEvent:v4];
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = [(SUUIIPadProductPageViewController *)self clientContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__SUUIIPadProductPageViewController_configureMetricsWithPageEvent___block_invoke;
    v7[3] = &unk_2798F7ED0;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [v6 getDefaultMetricsControllerWithCompletionBlock:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __67__SUUIIPadProductPageViewController_configureMetricsWithPageEvent___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setMetricsController:v5];

  v4 = [*(a1 + 32) pageURL];
  [v5 setPageURL:v4];

  [v5 recordEvent:*(a1 + 32)];
}

- (void)reloadData
{
  objc_initWeak(&location, self);
  if (!self->_metricsController)
  {
    clientContext = self->_clientContext;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__SUUIIPadProductPageViewController_reloadData__block_invoke;
    v10[3] = &unk_2798F7EF8;
    objc_copyWeak(&v11, &location);
    [(SUUIClientContext *)clientContext getDefaultMetricsControllerWithCompletionBlock:v10];
    objc_destroyWeak(&v11);
  }

  if (!self->_productPage && !self->_loadOperation)
  {
    if (self->_urlRequest)
    {
      v4 = [[SUUILoadProductPageOperation alloc] initWithProductPageURLRequest:self->_urlRequest clientContext:self->_clientContext];
    }

    else
    {
      if (!self->_lookupItemIdentifier)
      {
        goto LABEL_10;
      }

      v4 = [[SUUILoadProductPageOperation alloc] initWithItemIdentifier:self->_lookupItemIdentifier clientContext:self->_clientContext];
    }

    loadOperation = self->_loadOperation;
    self->_loadOperation = v4;

LABEL_10:
    v6 = self->_loadOperation;
    if (v6)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __47__SUUIIPadProductPageViewController_reloadData__block_invoke_2;
      v8[3] = &unk_2798F7F20;
      objc_copyWeak(&v9, &location);
      [(SUUILoadProductPageOperation *)v6 setOutputBlock:v8];
      [(NSOperationQueue *)self->_operationQueue addOperation:self->_loadOperation];
      lastPageEvent = self->_lastPageEvent;
      self->_lastPageEvent = 0;

      objc_destroyWeak(&v9);
    }
  }

  objc_destroyWeak(&location);
}

void __47__SUUIIPadProductPageViewController_reloadData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setMetricsController:v3];
}

void __47__SUUIIPadProductPageViewController_reloadData__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SUUIIPadProductPageViewController_reloadData__block_invoke_3;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __47__SUUIIPadProductPageViewController_reloadData__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setProductPage:*(a1 + 32) error:*(a1 + 40)];
}

- (void)setAskPermission:(BOOL)a3
{
  if (self->_askPermission != a3)
  {
    self->_askPermission = a3;
    [(SUUIProductPageDetailsViewController *)self->_detailsViewController setAskPermission:?];
    [(SUUIProductPageReviewsViewController *)self->_reviewsViewController setAskPermission:self->_askPermission];
    [(SUUISwooshArrayViewController *)self->_relatedViewController setAskPermission:self->_askPermission];
    headerViewController = self->_headerViewController;
    askPermission = self->_askPermission;

    [(SUUIProductPageHeaderViewController *)headerViewController setAskPermission:askPermission];
  }
}

- (void)setBannerText:(id)a3
{
  v5 = a3;
  if (self->_bannerText != v5)
  {
    objc_storeStrong(&self->_bannerText, a3);
    if (self->_bannerText)
    {
      [(SUUIIPadProductPageViewController *)self _showBanner];
    }
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  metricsController = self->_metricsController;
  v6 = SUUIMetricsWindowOrientationForInterfaceOrientation([(SUUIIPadProductPageViewController *)self interfaceOrientation]);
  [(SUUIMetricsController *)metricsController setWindowOrientation:v6];

  v7.receiver = self;
  v7.super_class = SUUIIPadProductPageViewController;
  [(SUUIIPadProductPageViewController *)&v7 didRotateFromInterfaceOrientation:a3];
}

- (void)loadView
{
  overlayView = self->_overlayView;
  if (!overlayView)
  {
    v4 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 630.0, 630.0}];
    v5 = self->_overlayView;
    self->_overlayView = v4;

    v6 = self->_overlayView;
    v7 = [MEMORY[0x277D75348] whiteColor];
    [(UIView *)v6 setBackgroundColor:v7];

    overlayView = self->_overlayView;
  }

  [(SUUIIPadProductPageViewController *)self setView:overlayView];
}

- (void)viewDidLayoutSubviews
{
  if (self->_productPage && self->_selectedSectionIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SUUIIPadProductPageViewController *)self _selectSectionIndex:self->_defaultSelectedSectionIndex];
    v3 = [(SUUIIPadProductPageViewController *)self _reviewsViewController];
    [v3 reloadData];
  }

  v4.receiver = self;
  v4.super_class = SUUIIPadProductPageViewController;
  [(SUUIIPadProductPageViewController *)&v4 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  item = self->_item;
  if (item && !SUUIItemKindIsSoftwareKind([(SUUIItem *)item itemKind]))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SUUIIPadProductPageViewController_viewWillAppear___block_invoke;
    block[3] = &unk_2798F5BE8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  if (self->_metricsController)
  {
    lastPageEvent = self->_lastPageEvent;
    if (lastPageEvent)
    {
      v7 = [MEMORY[0x277CBEAA8] date];
      [(SSMetricsPageEvent *)lastPageEvent setOriginalTimeUsingDate:v7];

      [(SUUIMetricsController *)self->_metricsController recordEvent:self->_lastPageEvent];
    }
  }

  [(SUUIIPadProductPageViewController *)self reloadData];
  [(SUUIIPadProductPageViewController *)self _reloadHeaderViewController];
  [(SUUIProductPageHeaderViewController *)self->_headerViewController reloadData];
  v8.receiver = self;
  v8.super_class = SUUIIPadProductPageViewController;
  [(SUUIIPadProductPageViewController *)&v8 viewWillAppear:v3];
}

- (void)networkErrorViewControllerInvalidated:(id)a3
{
  v4 = a3;
  networkErrorViewController = self->_networkErrorViewController;
  if (networkErrorViewController)
  {
    v8 = v4;
    v6 = [networkErrorViewController view];
    [v6 removeFromSuperview];

    [(SUUINetworkErrorViewController *)self->_networkErrorViewController removeFromParentViewController];
    [(SUUINetworkErrorViewController *)self->_networkErrorViewController setDelegate:0];
    v7 = self->_networkErrorViewController;
    self->_networkErrorViewController = 0;

    networkErrorViewController = SUUIViewControllerIsVisible(self);
    v4 = v8;
    if (networkErrorViewController)
    {
      self->_selectedSectionIndex = 0x7FFFFFFFFFFFFFFFLL;
      networkErrorViewController = [(SUUIIPadProductPageViewController *)self reloadData];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](networkErrorViewController, v4);
}

- (void)productPageHeaderView:(id)a3 didSelectURL:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SUUIIPadProductPageViewController_productPageHeaderView_didSelectURL___block_invoke;
  v7[3] = &unk_2798F7F48;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(SUUIIPadProductPageViewController *)self productPageChildOpenURL:v6 viewControllerBlock:v7];
}

SUUIStorePageViewController *__72__SUUIIPadProductPageViewController_productPageHeaderView_didSelectURL___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SUUIStorePageViewController);
  v3 = [*(a1 + 32) clientContext];
  [(SUUIStorePageViewController *)v2 setClientContext:v3];

  v4 = [*(*(a1 + 32) + 1144) item];
  v5 = [v4 artistName];
  [(SUUIStorePageViewController *)v2 setTitle:v5];

  [(SUUIStorePageViewController *)v2 loadURL:*(a1 + 40) withCompletionBlock:0];

  return v2;
}

- (void)productPageChildOpenItem:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 iPadProductPage:self openItem:v7];
  }
}

- (void)productPageChildOpenURL:(id)a3 viewControllerBlock:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 iPadProductPage:self openURL:v10 viewControllerBlock:v6];
  }
}

- (CGPoint)topContentOffset
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)askPermissionBannerDidSelect:(id)a3
{
  if (!self->_bannerText)
  {
    v5 = SUUIAskPermissionFramework();
    v6 = SUUIWeakLinkedClassForString(&cfstr_Prrequestqueue.isa, v5);
    v7 = SUUIAskPermissionFramework();
    v8 = *SUUIWeakLinkedSymbolForString("kPRRequestQueueiTunesStoreIdentifier", v7);
    v10 = [v6 _requestQueueForIdentifier:v8];
    v9 = [(SUUIItem *)self->_item itemIdentifier];

    [v10 _attemptLocalApprovalForStorePurchaseRequestWithItemIdentifier:v9 completionHandler:0];
  }
}

- (void)_metricsEnterEventNotification:(id)a3
{
  if (SUUIViewControllerIsVisible(self))
  {
    lastPageEvent = self->_lastPageEvent;
    if (lastPageEvent)
    {
      v5 = [MEMORY[0x277CBEAA8] date];
      [(SSMetricsPageEvent *)lastPageEvent setOriginalTimeUsingDate:v5];

      metricsController = self->_metricsController;
      v7 = self->_lastPageEvent;

      [(SUUIMetricsController *)metricsController recordEvent:v7];
    }
  }
}

- (id)_detailsViewController
{
  detailsViewController = self->_detailsViewController;
  if (!detailsViewController)
  {
    v4 = [[SUUIProductPageDetailsViewController alloc] initWithProductPage:self->_productPage];
    v5 = self->_detailsViewController;
    self->_detailsViewController = v4;

    v6 = self->_detailsViewController;
    v7 = [(SUUIIPadProductPageViewController *)self clientContext];
    [(SUUIProductPageDetailsViewController *)v6 setClientContext:v7];

    [(SUUIProductPageDetailsViewController *)self->_detailsViewController setDelegate:self];
    [(SUUIProductPageDetailsViewController *)self->_detailsViewController setOperationQueue:self->_operationQueue];
    [(SUUIProductPageDetailsViewController *)self->_detailsViewController setAskPermission:self->_askPermission];
    detailsViewController = self->_detailsViewController;
  }

  return detailsViewController;
}

- (BOOL)_isIncompatibleItem
{
  v3 = [(SUUIProductPage *)self->_productPage item];
  item = v3;
  if (!v3)
  {
    item = self->_item;
  }

  v5 = item;

  v6 = [(SUUIItem *)v5 itemKind];
  return v6 == 5;
}

- (id)_placeholderViewController
{
  placeholderViewController = self->_placeholderViewController;
  if (!placeholderViewController)
  {
    v4 = objc_alloc_init(SUUIProductPagePlaceholderViewController);
    v5 = self->_placeholderViewController;
    self->_placeholderViewController = v4;

    v6 = self->_placeholderViewController;
    v7 = [(SUUIProductPage *)self->_productPage uber];
    v8 = [v7 colorScheme];
    [(SUUIProductPagePlaceholderViewController *)v6 setColorScheme:v8];

    [(SUUIProductPagePlaceholderViewController *)self->_placeholderViewController setClientContext:self->_clientContext];
    placeholderViewController = self->_placeholderViewController;
  }

  return placeholderViewController;
}

- (id)_relatedViewController
{
  relatedViewController = self->_relatedViewController;
  if (!relatedViewController)
  {
    v4 = [SUUISwooshArrayViewController alloc];
    v5 = [(SUUIProductPage *)self->_productPage relatedContentSwooshes];
    v6 = [(SUUISwooshArrayViewController *)v4 initWithSwooshComponents:v5];
    v7 = self->_relatedViewController;
    self->_relatedViewController = v6;

    [(SUUISwooshArrayViewController *)self->_relatedViewController setClientContext:self->_clientContext];
    v8 = self->_relatedViewController;
    v9 = [(SUUIProductPage *)self->_productPage uber];
    v10 = [v9 colorScheme];
    [(SUUISwooshArrayViewController *)v8 setColorScheme:v10];

    [(SUUISwooshArrayViewController *)self->_relatedViewController setDelegate:self];
    [(SUUISwooshArrayViewController *)self->_relatedViewController setOperationQueue:self->_operationQueue];
    [(SUUISwooshArrayViewController *)self->_relatedViewController setMetricsController:self->_metricsController];
    [(SUUISwooshArrayViewController *)self->_relatedViewController setAskPermission:self->_askPermission];
    relatedViewController = self->_relatedViewController;
  }

  return relatedViewController;
}

- (void)_reloadHeaderViewController
{
  headerViewController = self->_headerViewController;
  if (headerViewController || self->_item && (v15 = [[SUUIProductPageHeaderViewController alloc] initWithItem:self->_item], v16 = self->_headerViewController, self->_headerViewController = v15, v16, v17 = self->_headerViewController, [(SUUIIPadProductPageViewController *)self clientContext], v18 = objc_claimAutoreleasedReturnValue(), [(SUUIProductPageHeaderViewController *)v17 setClientContext:v18], v18, [(SUUIProductPageHeaderViewController *)self->_headerViewController setDelegate:self], [(SUUIProductPageHeaderViewController *)self->_headerViewController setOperationQueue:self->_operationQueue], [(SUUIProductPageHeaderViewController *)self->_headerViewController setProductPage:self->_productPage], [(SUUIProductPageHeaderViewController *)self->_headerViewController setSelectedSectionIndex:self->_defaultSelectedSectionIndex], [(SUUIProductPageHeaderViewController *)self->_headerViewController setAskPermission:self->_askPermission], [(SUUIIPadProductPageViewController *)self addChildViewController:self->_headerViewController], (headerViewController = self->_headerViewController) != 0))
  {
    v19 = [(SUUIProductPageHeaderViewController *)headerViewController view];
    [v19 frame];
    v5 = v4;
    v7 = v6;
    [(SUUIMessageBanner *)self->_banner frame];
    v9 = v8;
    [v19 setFrame:{v5, v8, 630.0, v7}];
    [(UIView *)self->_overlayView addSubview:v19];
    v10 = [(SUUIProductPageHeaderViewController *)self->_headerViewController floatingView];
    [v10 sizeToFit];
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v21.origin.x = v5;
    v21.origin.y = v9;
    v21.size.width = 630.0;
    v21.size.height = v7;
    [v10 setFrame:{v12, CGRectGetMaxY(v21), 630.0, v14}];
    [(UIView *)self->_overlayView addSubview:v10];
  }
}

- (id)_reviewsViewController
{
  reviewsViewController = self->_reviewsViewController;
  if (!reviewsViewController)
  {
    v4 = [[SUUIProductPageReviewsViewController alloc] initWithProductPage:self->_productPage];
    v5 = self->_reviewsViewController;
    self->_reviewsViewController = v4;

    [(SUUIProductPageReviewsViewController *)self->_reviewsViewController setClientContext:self->_clientContext];
    [(SUUIProductPageReviewsViewController *)self->_reviewsViewController setAskPermission:self->_askPermission];
    reviewsViewController = self->_reviewsViewController;
  }

  return reviewsViewController;
}

- (void)_selectSectionIndex:(int64_t)a3
{
  if (self->_selectedSectionIndex != a3)
  {
    v7 = [(SUUIIPadProductPageViewController *)self _viewControllerForSectionIndex:?];
    if ([v7 isViewLoaded])
    {
      v5 = [v7 view];
      [v5 removeFromSuperview];
    }

    [v7 removeFromParentViewController];
    self->_selectedSectionIndex = a3;
    v6 = [(SUUIIPadProductPageViewController *)self _viewControllerForSectionIndex:a3];
    if (v6)
    {
      [(SUUIIPadProductPageViewController *)self addChildViewController:v6];
      [(SUUIIPadProductPageViewController *)self _showViewController:v6];
    }
  }
}

- (void)_sendCannotOpen
{
  if (!self->_didSendCannotOpen)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      self->_didSendCannotOpen = 1;
      v5 = objc_loadWeakRetained(&self->_delegate);
      [v5 iPadProductPageCannotOpen:self];
    }
  }
}

- (void)_setDefaultSectionIndexWithFragment:(int64_t)a3
{
  if (a3 <= 2)
  {
    self->_defaultSelectedSectionIndex = a3;
  }
}

- (void)_setMetricsController:(id)a3
{
  v5 = a3;
  if (!self->_metricsController)
  {
    v20 = v5;
    v6 = [(SUUIProductPage *)self->_productPage metricsConfiguration];
    objc_storeStrong(&self->_metricsController, a3);
    metricsController = self->_metricsController;
    v8 = [(SUUIClientContext *)self->_clientContext clientInterface];
    v9 = [v8 clientIdentifier];
    [(SUUIMetricsController *)metricsController setApplicationIdentifier:v9];

    [(SUUIMetricsController *)self->_metricsController setPageConfiguration:v6];
    v10 = self->_metricsController;
    v11 = [(SUUIClientContext *)self->_clientContext metricsPageContextForViewController:self];
    [(SUUIMetricsController *)v10 setPageContext:v11];

    v12 = self->_metricsController;
    v13 = [(SUUIProductPage *)self->_productPage pageURL];
    v14 = [v13 absoluteString];
    [(SUUIMetricsController *)v12 setPageURL:v14];

    v15 = self->_metricsController;
    v16 = [MEMORY[0x277D75128] sharedApplication];
    v17 = SUUIMetricsWindowOrientationForInterfaceOrientation([v16 statusBarOrientation]);
    [(SUUIMetricsController *)v15 setWindowOrientation:v17];

    [(SUUISwooshArrayViewController *)self->_relatedViewController setMetricsController:self->_metricsController];
    v18 = self->_metricsController;
    v19 = [v6 pingURLs];
    [(SUUIMetricsController *)v18 pingURLs:v19 withClientContext:self->_clientContext];

    [(SUUIMetricsController *)self->_metricsController recordEvent:self->_lastPageEvent];
    v5 = v20;
  }
}

- (void)_setProductPage:(id)a3 error:(id)a4
{
  v25 = a3;
  v7 = a4;
  v8 = [v25 ITMLData];

  if (v8)
  {
    v9 = [(SUUIIPadProductPageViewController *)self clientContext];
    v10 = [v25 ITMLData];
    v11 = [v25 ITMLResponse];
    [v9 sendOnPageResponseWithDocument:0 data:v10 URLResponse:v11 performanceMetrics:0];
  }

  else
  {
    if (!v25)
    {
      goto LABEL_12;
    }

    objc_storeStrong(&self->_productPage, a3);
    v9 = [(SUUIProductPage *)self->_productPage metricsConfiguration];
    [(SUUIMetricsController *)self->_metricsController setPageConfiguration:v9];
    metricsController = self->_metricsController;
    v13 = [(SUUIProductPage *)self->_productPage pageURL];
    v14 = [v13 absoluteString];
    [(SUUIMetricsController *)metricsController setPageURL:v14];

    if (!self->_item)
    {
      v15 = [v25 item];
      item = self->_item;
      self->_item = v15;

      [(SUUIIPadProductPageViewController *)self _reloadHeaderViewController];
    }

    [(SUUIProductPageHeaderViewController *)self->_headerViewController setProductPage:self->_productPage];
    if (self->_selectedSectionIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SUUIIPadProductPageViewController *)self _selectSectionIndex:self->_defaultSelectedSectionIndex];
    }

    v17 = [(SUUIProductPage *)self->_productPage uber];
    v10 = [v17 colorScheme];

    [(SUUIProductPagePlaceholderViewController *)self->_placeholderViewController setColorScheme:v10];
    [(SUUISwooshArrayViewController *)self->_relatedViewController setColorScheme:v10];
    v18 = [(SUUIIPadProductPageViewController *)self _reviewsViewController];
    [v18 reloadData];

    [(SUUIProductPageHeaderViewController *)self->_headerViewController reloadData];
    v11 = [(SUUILoadProductPageOperation *)self->_loadOperation metricsPageEvent];
    if (v11)
    {
      v19 = [MEMORY[0x277CBEAA8] date];
      [v19 timeIntervalSince1970];
      [v11 setPageRenderTime:?];

      [(SUUIMetricsController *)self->_metricsController recordEvent:v11];
      objc_storeStrong(&self->_lastPageEvent, v11);
    }

    v20 = self->_metricsController;
    v21 = [v9 pingURLs];
    [(SUUIMetricsController *)v20 pingURLs:v21 withClientContext:self->_clientContext];
  }

LABEL_12:
  if (!v7)
  {
    goto LABEL_18;
  }

  v22 = [v7 domain];
  if ([v22 isEqualToString:@"SUUIErrorDomain"])
  {
    v23 = [v7 code];

    if (v23 == 1)
    {
      [(SUUIIPadProductPageViewController *)self _sendCannotOpen];
      goto LABEL_18;
    }
  }

  else
  {
  }

  [(SUUIIPadProductPageViewController *)self _showError:v7];
LABEL_18:
  [(SUUILoadProductPageOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;
}

- (void)_showError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_networkErrorViewController)
  {
    v8 = v4;
    v4 = [SUUINetworkErrorViewController canDisplayError:v4];
    v5 = v8;
    if (v4)
    {
      v6 = [[SUUINetworkErrorViewController alloc] initWithError:v8];
      networkErrorViewController = self->_networkErrorViewController;
      self->_networkErrorViewController = v6;

      [(SUUINetworkErrorViewController *)self->_networkErrorViewController setClientContext:self->_clientContext];
      [(SUUINetworkErrorViewController *)self->_networkErrorViewController setDelegate:self];
      [(SUUIIPadProductPageViewController *)self addChildViewController:self->_networkErrorViewController];
      v4 = [(SUUIIPadProductPageViewController *)self _showViewController:self->_networkErrorViewController];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_showIncompatibleView
{
  incompatibleViewController = self->_incompatibleViewController;
  if (!incompatibleViewController)
  {
    v4 = [SUUIIncompatibleAppViewController alloc];
    v5 = [(SUUIProductPage *)self->_productPage item];
    v6 = [(SUUIIncompatibleAppViewController *)v4 initWithIncompatibleItem:v5];
    v7 = self->_incompatibleViewController;
    self->_incompatibleViewController = v6;

    [(SUUIViewController *)self->_incompatibleViewController setClientContext:self->_clientContext];
    [(SUUIIncompatibleAppViewController *)self->_incompatibleViewController setOperationQueue:self->_operationQueue];
    [(SUUIIPadProductPageViewController *)self addChildViewController:self->_incompatibleViewController];
    v8 = [(SUUIIncompatibleAppViewController *)self->_incompatibleViewController view];
    [v8 setAutoresizingMask:18];
    [(UIView *)self->_overlayView bounds];
    [v8 setFrame:?];
    [(UIView *)self->_overlayView addSubview:v8];

    incompatibleViewController = self->_incompatibleViewController;
  }

  overlayView = self->_overlayView;
  v10 = [(SUUIIncompatibleAppViewController *)incompatibleViewController view];
  [(UIView *)overlayView bringSubviewToFront:v10];
}

- (void)_showBanner
{
  if (!self->_banner)
  {
    v3 = objc_alloc_init(SUUIMessageBanner);
    banner = self->_banner;
    self->_banner = v3;

    [(SUUIMessageBanner *)self->_banner setDelegate:self];
    v5 = self->_banner;
    if (self->_bannerText)
    {
      [(SUUIMessageBanner *)self->_banner setMessage:?];
    }

    else
    {
      v6 = [(SUUIIPadProductPageViewController *)self clientContext];
      v7 = [(SUUIIPadProductPageViewController *)self view];
      v8 = [v7 tintColor];
      v9 = SUUIMessageBannerAttributedString(v6, v8);
      [(SUUIMessageBanner *)v5 setAttributedMessage:v9];
    }

    v10 = [(SUUIIPadProductPageViewController *)self view];
    [v10 addSubview:self->_banner];

    v11 = [(SUUIIPadProductPageViewController *)self view];
    [v11 bounds];
    v13 = v12;
    v15 = v14;

    [(SUUIMessageBanner *)self->_banner sizeThatFits:630.0, 630.0];
    [(SUUIMessageBanner *)self->_banner setFrame:v13, v15, v16, v17];
    v18 = [(SUUIIPadProductPageViewController *)self _viewControllerForSectionIndex:self->_selectedSectionIndex];
    [(SUUIIPadProductPageViewController *)self _showViewController:v18];
  }
}

- (void)_showViewController:(id)a3
{
  v4 = a3;
  [(SUUIIPadProductPageViewController *)self _reloadHeaderViewController];
  v7 = [v4 view];

  [(SUUIMessageBanner *)self->_banner frame];
  v5 = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
  [v5 frame];
  v6 = [(SUUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [v6 frame];

  [(UIView *)self->_overlayView bounds];
  [v7 setFrame:?];
  [(UIView *)self->_overlayView insertSubview:v7 atIndex:0];
  if ([(SUUIIPadProductPageViewController *)self _isIncompatibleItem])
  {
    [(SUUIIPadProductPageViewController *)self _showIncompatibleView];
  }
}

- (id)_viewControllerForSectionIndex:(int64_t)a3
{
  if (a3 == 2)
  {
    v5 = [(SUUIProductPage *)self->_productPage relatedContentSwooshes];
    v6 = [v5 count];

    if (v6)
    {
      [(SUUIIPadProductPageViewController *)self _relatedViewController];
    }

    else
    {
      [(SUUIIPadProductPageViewController *)self _placeholderViewController];
    }
    v4 = ;
  }

  else if (a3 == 1)
  {
    v4 = [(SUUIIPadProductPageViewController *)self _reviewsViewController];
  }

  else if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(SUUIIPadProductPageViewController *)self _detailsViewController];
  }

  return v4;
}

- (SUUIIPadProductPageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end