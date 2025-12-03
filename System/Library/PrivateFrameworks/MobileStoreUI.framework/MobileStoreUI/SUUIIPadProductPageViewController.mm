@interface SUUIIPadProductPageViewController
- (BOOL)_isIncompatibleItem;
- (CGPoint)topContentOffset;
- (SUUIIPadProductPageDelegate)delegate;
- (SUUIIPadProductPageViewController)initWithItem:(id)item;
- (SUUIIPadProductPageViewController)initWithItemIdentifier:(int64_t)identifier;
- (SUUIIPadProductPageViewController)initWithProductPage:(id)page;
- (SUUIIPadProductPageViewController)initWithURL:(id)l;
- (SUUIIPadProductPageViewController)initWithURLRequest:(id)request;
- (id)_detailsViewController;
- (id)_initSUUIIPadProductPageViewController;
- (id)_placeholderViewController;
- (id)_relatedViewController;
- (id)_reviewsViewController;
- (id)_viewControllerForSectionIndex:(int64_t)index;
- (void)_metricsEnterEventNotification:(id)notification;
- (void)_reloadHeaderViewController;
- (void)_selectSectionIndex:(int64_t)index;
- (void)_sendCannotOpen;
- (void)_setDefaultSectionIndexWithFragment:(int64_t)fragment;
- (void)_setMetricsController:(id)controller;
- (void)_setProductPage:(id)page error:(id)error;
- (void)_showBanner;
- (void)_showError:(id)error;
- (void)_showIncompatibleView;
- (void)_showViewController:(id)controller;
- (void)askPermissionBannerDidSelect:(id)select;
- (void)configureMetricsWithPageEvent:(id)event;
- (void)dealloc;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)loadView;
- (void)networkErrorViewControllerInvalidated:(id)invalidated;
- (void)productPageChildOpenItem:(id)item;
- (void)productPageChildOpenURL:(id)l viewControllerBlock:(id)block;
- (void)productPageHeaderView:(id)view didSelectURL:(id)l;
- (void)reloadData;
- (void)setAskPermission:(BOOL)permission;
- (void)setBannerText:(id)text;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__metricsEnterEventNotification_ name:@"SUUIMetricsDidRecordEnterEventNotification" object:0];
  }

  return v2;
}

- (SUUIIPadProductPageViewController)initWithItem:(id)item
{
  itemCopy = item;
  _initSUUIIPadProductPageViewController = [(SUUIIPadProductPageViewController *)self _initSUUIIPadProductPageViewController];
  v7 = _initSUUIIPadProductPageViewController;
  if (_initSUUIIPadProductPageViewController)
  {
    objc_storeStrong(_initSUUIIPadProductPageViewController + 133, item);
    v7->_lookupItemIdentifier = [itemCopy itemIdentifier];
    productPageURLString = [itemCopy productPageURLString];
    if (productPageURLString)
    {
      v9 = objc_alloc(MEMORY[0x277CBABA0]);
      v10 = [MEMORY[0x277CBEBC0] URLWithString:productPageURLString];
      v11 = [v9 initWithURL:v10];
      urlRequest = v7->_urlRequest;
      v7->_urlRequest = v11;
    }
  }

  return v7;
}

- (SUUIIPadProductPageViewController)initWithItemIdentifier:(int64_t)identifier
{
  result = [(SUUIIPadProductPageViewController *)self _initSUUIIPadProductPageViewController];
  if (result)
  {
    result->_lookupItemIdentifier = identifier;
  }

  return result;
}

- (SUUIIPadProductPageViewController)initWithProductPage:(id)page
{
  pageCopy = page;
  item = [pageCopy item];
  v7 = [(SUUIIPadProductPageViewController *)self initWithItem:item];

  if (v7)
  {
    objc_storeStrong(&v7->_productPage, page);
    [(SUUIIPadProductPageViewController *)v7 _setDefaultSectionIndexWithFragment:[(SUUIProductPage *)v7->_productPage defaultPageFragment]];
  }

  return v7;
}

- (SUUIIPadProductPageViewController)initWithURL:(id)l
{
  v4 = [MEMORY[0x277CBABA0] requestWithURL:l];
  v5 = [(SUUIIPadProductPageViewController *)self initWithURLRequest:v4];

  return v5;
}

- (SUUIIPadProductPageViewController)initWithURLRequest:(id)request
{
  requestCopy = request;
  _initSUUIIPadProductPageViewController = [(SUUIIPadProductPageViewController *)self _initSUUIIPadProductPageViewController];
  if (_initSUUIIPadProductPageViewController)
  {
    v6 = [requestCopy copy];
    urlRequest = _initSUUIIPadProductPageViewController->_urlRequest;
    _initSUUIIPadProductPageViewController->_urlRequest = v6;

    v8 = [requestCopy URL];
    [(SUUIIPadProductPageViewController *)_initSUUIIPadProductPageViewController _setDefaultSectionIndexWithFragment:SUUIProductPageFragmentWithURL(v8)];
  }

  return _initSUUIIPadProductPageViewController;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SUUIMetricsDidRecordEnterEventNotification" object:0];
  [(SUUIProductPageHeaderViewController *)self->_headerViewController setDelegate:0];
  [(SUUINetworkErrorViewController *)self->_networkErrorViewController setDelegate:0];
  [(SUUISwooshArrayViewController *)self->_relatedViewController setDelegate:0];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];

  v4.receiver = self;
  v4.super_class = SUUIIPadProductPageViewController;
  [(SUUIIPadProductPageViewController *)&v4 dealloc];
}

- (void)configureMetricsWithPageEvent:(id)event
{
  eventCopy = event;
  metricsController = self->_metricsController;
  if (metricsController)
  {
    [(SUUIMetricsController *)metricsController recordEvent:eventCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    clientContext = [(SUUIIPadProductPageViewController *)self clientContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__SUUIIPadProductPageViewController_configureMetricsWithPageEvent___block_invoke;
    v7[3] = &unk_2798F7ED0;
    objc_copyWeak(&v9, &location);
    v8 = eventCopy;
    [clientContext getDefaultMetricsControllerWithCompletionBlock:v7];

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

- (void)setAskPermission:(BOOL)permission
{
  if (self->_askPermission != permission)
  {
    self->_askPermission = permission;
    [(SUUIProductPageDetailsViewController *)self->_detailsViewController setAskPermission:?];
    [(SUUIProductPageReviewsViewController *)self->_reviewsViewController setAskPermission:self->_askPermission];
    [(SUUISwooshArrayViewController *)self->_relatedViewController setAskPermission:self->_askPermission];
    headerViewController = self->_headerViewController;
    askPermission = self->_askPermission;

    [(SUUIProductPageHeaderViewController *)headerViewController setAskPermission:askPermission];
  }
}

- (void)setBannerText:(id)text
{
  textCopy = text;
  if (self->_bannerText != textCopy)
  {
    objc_storeStrong(&self->_bannerText, text);
    if (self->_bannerText)
    {
      [(SUUIIPadProductPageViewController *)self _showBanner];
    }
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  metricsController = self->_metricsController;
  v6 = SUUIMetricsWindowOrientationForInterfaceOrientation([(SUUIIPadProductPageViewController *)self interfaceOrientation]);
  [(SUUIMetricsController *)metricsController setWindowOrientation:v6];

  v7.receiver = self;
  v7.super_class = SUUIIPadProductPageViewController;
  [(SUUIIPadProductPageViewController *)&v7 didRotateFromInterfaceOrientation:orientation];
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
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UIView *)v6 setBackgroundColor:whiteColor];

    overlayView = self->_overlayView;
  }

  [(SUUIIPadProductPageViewController *)self setView:overlayView];
}

- (void)viewDidLayoutSubviews
{
  if (self->_productPage && self->_selectedSectionIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SUUIIPadProductPageViewController *)self _selectSectionIndex:self->_defaultSelectedSectionIndex];
    _reviewsViewController = [(SUUIIPadProductPageViewController *)self _reviewsViewController];
    [_reviewsViewController reloadData];
  }

  v4.receiver = self;
  v4.super_class = SUUIIPadProductPageViewController;
  [(SUUIIPadProductPageViewController *)&v4 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
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
      date = [MEMORY[0x277CBEAA8] date];
      [(SSMetricsPageEvent *)lastPageEvent setOriginalTimeUsingDate:date];

      [(SUUIMetricsController *)self->_metricsController recordEvent:self->_lastPageEvent];
    }
  }

  [(SUUIIPadProductPageViewController *)self reloadData];
  [(SUUIIPadProductPageViewController *)self _reloadHeaderViewController];
  [(SUUIProductPageHeaderViewController *)self->_headerViewController reloadData];
  v8.receiver = self;
  v8.super_class = SUUIIPadProductPageViewController;
  [(SUUIIPadProductPageViewController *)&v8 viewWillAppear:appearCopy];
}

- (void)networkErrorViewControllerInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  networkErrorViewController = self->_networkErrorViewController;
  if (networkErrorViewController)
  {
    v8 = invalidatedCopy;
    view = [networkErrorViewController view];
    [view removeFromSuperview];

    [(SUUINetworkErrorViewController *)self->_networkErrorViewController removeFromParentViewController];
    [(SUUINetworkErrorViewController *)self->_networkErrorViewController setDelegate:0];
    v7 = self->_networkErrorViewController;
    self->_networkErrorViewController = 0;

    networkErrorViewController = SUUIViewControllerIsVisible(self);
    invalidatedCopy = v8;
    if (networkErrorViewController)
    {
      self->_selectedSectionIndex = 0x7FFFFFFFFFFFFFFFLL;
      networkErrorViewController = [(SUUIIPadProductPageViewController *)self reloadData];
      invalidatedCopy = v8;
    }
  }

  MEMORY[0x2821F96F8](networkErrorViewController, invalidatedCopy);
}

- (void)productPageHeaderView:(id)view didSelectURL:(id)l
{
  lCopy = l;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SUUIIPadProductPageViewController_productPageHeaderView_didSelectURL___block_invoke;
  v7[3] = &unk_2798F7F48;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
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

- (void)productPageChildOpenItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 iPadProductPage:self openItem:itemCopy];
  }
}

- (void)productPageChildOpenURL:(id)l viewControllerBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 iPadProductPage:self openURL:lCopy viewControllerBlock:blockCopy];
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

- (void)askPermissionBannerDidSelect:(id)select
{
  if (!self->_bannerText)
  {
    v5 = SUUIAskPermissionFramework();
    v6 = SUUIWeakLinkedClassForString(&cfstr_Prrequestqueue.isa, v5);
    v7 = SUUIAskPermissionFramework();
    v8 = *SUUIWeakLinkedSymbolForString("kPRRequestQueueiTunesStoreIdentifier", v7);
    v10 = [v6 _requestQueueForIdentifier:v8];
    itemIdentifier = [(SUUIItem *)self->_item itemIdentifier];

    [v10 _attemptLocalApprovalForStorePurchaseRequestWithItemIdentifier:itemIdentifier completionHandler:0];
  }
}

- (void)_metricsEnterEventNotification:(id)notification
{
  if (SUUIViewControllerIsVisible(self))
  {
    lastPageEvent = self->_lastPageEvent;
    if (lastPageEvent)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [(SSMetricsPageEvent *)lastPageEvent setOriginalTimeUsingDate:date];

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
    clientContext = [(SUUIIPadProductPageViewController *)self clientContext];
    [(SUUIProductPageDetailsViewController *)v6 setClientContext:clientContext];

    [(SUUIProductPageDetailsViewController *)self->_detailsViewController setDelegate:self];
    [(SUUIProductPageDetailsViewController *)self->_detailsViewController setOperationQueue:self->_operationQueue];
    [(SUUIProductPageDetailsViewController *)self->_detailsViewController setAskPermission:self->_askPermission];
    detailsViewController = self->_detailsViewController;
  }

  return detailsViewController;
}

- (BOOL)_isIncompatibleItem
{
  item = [(SUUIProductPage *)self->_productPage item];
  item = item;
  if (!item)
  {
    item = self->_item;
  }

  v5 = item;

  itemKind = [(SUUIItem *)v5 itemKind];
  return itemKind == 5;
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
    uber = [(SUUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];
    [(SUUIProductPagePlaceholderViewController *)v6 setColorScheme:colorScheme];

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
    relatedContentSwooshes = [(SUUIProductPage *)self->_productPage relatedContentSwooshes];
    v6 = [(SUUISwooshArrayViewController *)v4 initWithSwooshComponents:relatedContentSwooshes];
    v7 = self->_relatedViewController;
    self->_relatedViewController = v6;

    [(SUUISwooshArrayViewController *)self->_relatedViewController setClientContext:self->_clientContext];
    v8 = self->_relatedViewController;
    uber = [(SUUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];
    [(SUUISwooshArrayViewController *)v8 setColorScheme:colorScheme];

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
    view = [(SUUIProductPageHeaderViewController *)headerViewController view];
    [view frame];
    v5 = v4;
    v7 = v6;
    [(SUUIMessageBanner *)self->_banner frame];
    v9 = v8;
    [view setFrame:{v5, v8, 630.0, v7}];
    [(UIView *)self->_overlayView addSubview:view];
    floatingView = [(SUUIProductPageHeaderViewController *)self->_headerViewController floatingView];
    [floatingView sizeToFit];
    [floatingView frame];
    v12 = v11;
    v14 = v13;
    v21.origin.x = v5;
    v21.origin.y = v9;
    v21.size.width = 630.0;
    v21.size.height = v7;
    [floatingView setFrame:{v12, CGRectGetMaxY(v21), 630.0, v14}];
    [(UIView *)self->_overlayView addSubview:floatingView];
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

- (void)_selectSectionIndex:(int64_t)index
{
  if (self->_selectedSectionIndex != index)
  {
    v7 = [(SUUIIPadProductPageViewController *)self _viewControllerForSectionIndex:?];
    if ([v7 isViewLoaded])
    {
      view = [v7 view];
      [view removeFromSuperview];
    }

    [v7 removeFromParentViewController];
    self->_selectedSectionIndex = index;
    v6 = [(SUUIIPadProductPageViewController *)self _viewControllerForSectionIndex:index];
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

- (void)_setDefaultSectionIndexWithFragment:(int64_t)fragment
{
  if (fragment <= 2)
  {
    self->_defaultSelectedSectionIndex = fragment;
  }
}

- (void)_setMetricsController:(id)controller
{
  controllerCopy = controller;
  if (!self->_metricsController)
  {
    v20 = controllerCopy;
    metricsConfiguration = [(SUUIProductPage *)self->_productPage metricsConfiguration];
    objc_storeStrong(&self->_metricsController, controller);
    metricsController = self->_metricsController;
    clientInterface = [(SUUIClientContext *)self->_clientContext clientInterface];
    clientIdentifier = [clientInterface clientIdentifier];
    [(SUUIMetricsController *)metricsController setApplicationIdentifier:clientIdentifier];

    [(SUUIMetricsController *)self->_metricsController setPageConfiguration:metricsConfiguration];
    v10 = self->_metricsController;
    v11 = [(SUUIClientContext *)self->_clientContext metricsPageContextForViewController:self];
    [(SUUIMetricsController *)v10 setPageContext:v11];

    v12 = self->_metricsController;
    pageURL = [(SUUIProductPage *)self->_productPage pageURL];
    absoluteString = [pageURL absoluteString];
    [(SUUIMetricsController *)v12 setPageURL:absoluteString];

    v15 = self->_metricsController;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v17 = SUUIMetricsWindowOrientationForInterfaceOrientation([mEMORY[0x277D75128] statusBarOrientation]);
    [(SUUIMetricsController *)v15 setWindowOrientation:v17];

    [(SUUISwooshArrayViewController *)self->_relatedViewController setMetricsController:self->_metricsController];
    v18 = self->_metricsController;
    pingURLs = [metricsConfiguration pingURLs];
    [(SUUIMetricsController *)v18 pingURLs:pingURLs withClientContext:self->_clientContext];

    [(SUUIMetricsController *)self->_metricsController recordEvent:self->_lastPageEvent];
    controllerCopy = v20;
  }
}

- (void)_setProductPage:(id)page error:(id)error
{
  pageCopy = page;
  errorCopy = error;
  iTMLData = [pageCopy ITMLData];

  if (iTMLData)
  {
    clientContext = [(SUUIIPadProductPageViewController *)self clientContext];
    iTMLData2 = [pageCopy ITMLData];
    iTMLResponse = [pageCopy ITMLResponse];
    [clientContext sendOnPageResponseWithDocument:0 data:iTMLData2 URLResponse:iTMLResponse performanceMetrics:0];
  }

  else
  {
    if (!pageCopy)
    {
      goto LABEL_12;
    }

    objc_storeStrong(&self->_productPage, page);
    clientContext = [(SUUIProductPage *)self->_productPage metricsConfiguration];
    [(SUUIMetricsController *)self->_metricsController setPageConfiguration:clientContext];
    metricsController = self->_metricsController;
    pageURL = [(SUUIProductPage *)self->_productPage pageURL];
    absoluteString = [pageURL absoluteString];
    [(SUUIMetricsController *)metricsController setPageURL:absoluteString];

    if (!self->_item)
    {
      item = [pageCopy item];
      item = self->_item;
      self->_item = item;

      [(SUUIIPadProductPageViewController *)self _reloadHeaderViewController];
    }

    [(SUUIProductPageHeaderViewController *)self->_headerViewController setProductPage:self->_productPage];
    if (self->_selectedSectionIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SUUIIPadProductPageViewController *)self _selectSectionIndex:self->_defaultSelectedSectionIndex];
    }

    uber = [(SUUIProductPage *)self->_productPage uber];
    iTMLData2 = [uber colorScheme];

    [(SUUIProductPagePlaceholderViewController *)self->_placeholderViewController setColorScheme:iTMLData2];
    [(SUUISwooshArrayViewController *)self->_relatedViewController setColorScheme:iTMLData2];
    _reviewsViewController = [(SUUIIPadProductPageViewController *)self _reviewsViewController];
    [_reviewsViewController reloadData];

    [(SUUIProductPageHeaderViewController *)self->_headerViewController reloadData];
    iTMLResponse = [(SUUILoadProductPageOperation *)self->_loadOperation metricsPageEvent];
    if (iTMLResponse)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      [iTMLResponse setPageRenderTime:?];

      [(SUUIMetricsController *)self->_metricsController recordEvent:iTMLResponse];
      objc_storeStrong(&self->_lastPageEvent, iTMLResponse);
    }

    v20 = self->_metricsController;
    pingURLs = [clientContext pingURLs];
    [(SUUIMetricsController *)v20 pingURLs:pingURLs withClientContext:self->_clientContext];
  }

LABEL_12:
  if (!errorCopy)
  {
    goto LABEL_18;
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:@"SUUIErrorDomain"])
  {
    code = [errorCopy code];

    if (code == 1)
    {
      [(SUUIIPadProductPageViewController *)self _sendCannotOpen];
      goto LABEL_18;
    }
  }

  else
  {
  }

  [(SUUIIPadProductPageViewController *)self _showError:errorCopy];
LABEL_18:
  [(SUUILoadProductPageOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;
}

- (void)_showError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (!self->_networkErrorViewController)
  {
    v8 = errorCopy;
    errorCopy = [SUUINetworkErrorViewController canDisplayError:errorCopy];
    v5 = v8;
    if (errorCopy)
    {
      v6 = [[SUUINetworkErrorViewController alloc] initWithError:v8];
      networkErrorViewController = self->_networkErrorViewController;
      self->_networkErrorViewController = v6;

      [(SUUINetworkErrorViewController *)self->_networkErrorViewController setClientContext:self->_clientContext];
      [(SUUINetworkErrorViewController *)self->_networkErrorViewController setDelegate:self];
      [(SUUIIPadProductPageViewController *)self addChildViewController:self->_networkErrorViewController];
      errorCopy = [(SUUIIPadProductPageViewController *)self _showViewController:self->_networkErrorViewController];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](errorCopy, v5);
}

- (void)_showIncompatibleView
{
  incompatibleViewController = self->_incompatibleViewController;
  if (!incompatibleViewController)
  {
    v4 = [SUUIIncompatibleAppViewController alloc];
    item = [(SUUIProductPage *)self->_productPage item];
    v6 = [(SUUIIncompatibleAppViewController *)v4 initWithIncompatibleItem:item];
    v7 = self->_incompatibleViewController;
    self->_incompatibleViewController = v6;

    [(SUUIViewController *)self->_incompatibleViewController setClientContext:self->_clientContext];
    [(SUUIIncompatibleAppViewController *)self->_incompatibleViewController setOperationQueue:self->_operationQueue];
    [(SUUIIPadProductPageViewController *)self addChildViewController:self->_incompatibleViewController];
    view = [(SUUIIncompatibleAppViewController *)self->_incompatibleViewController view];
    [view setAutoresizingMask:18];
    [(UIView *)self->_overlayView bounds];
    [view setFrame:?];
    [(UIView *)self->_overlayView addSubview:view];

    incompatibleViewController = self->_incompatibleViewController;
  }

  overlayView = self->_overlayView;
  view2 = [(SUUIIncompatibleAppViewController *)incompatibleViewController view];
  [(UIView *)overlayView bringSubviewToFront:view2];
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
      clientContext = [(SUUIIPadProductPageViewController *)self clientContext];
      view = [(SUUIIPadProductPageViewController *)self view];
      tintColor = [view tintColor];
      v9 = SUUIMessageBannerAttributedString(clientContext, tintColor);
      [(SUUIMessageBanner *)v5 setAttributedMessage:v9];
    }

    view2 = [(SUUIIPadProductPageViewController *)self view];
    [view2 addSubview:self->_banner];

    view3 = [(SUUIIPadProductPageViewController *)self view];
    [view3 bounds];
    v13 = v12;
    v15 = v14;

    [(SUUIMessageBanner *)self->_banner sizeThatFits:630.0, 630.0];
    [(SUUIMessageBanner *)self->_banner setFrame:v13, v15, v16, v17];
    v18 = [(SUUIIPadProductPageViewController *)self _viewControllerForSectionIndex:self->_selectedSectionIndex];
    [(SUUIIPadProductPageViewController *)self _showViewController:v18];
  }
}

- (void)_showViewController:(id)controller
{
  controllerCopy = controller;
  [(SUUIIPadProductPageViewController *)self _reloadHeaderViewController];
  view = [controllerCopy view];

  [(SUUIMessageBanner *)self->_banner frame];
  view2 = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
  [view2 frame];
  floatingView = [(SUUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [floatingView frame];

  [(UIView *)self->_overlayView bounds];
  [view setFrame:?];
  [(UIView *)self->_overlayView insertSubview:view atIndex:0];
  if ([(SUUIIPadProductPageViewController *)self _isIncompatibleItem])
  {
    [(SUUIIPadProductPageViewController *)self _showIncompatibleView];
  }
}

- (id)_viewControllerForSectionIndex:(int64_t)index
{
  if (index == 2)
  {
    relatedContentSwooshes = [(SUUIProductPage *)self->_productPage relatedContentSwooshes];
    v6 = [relatedContentSwooshes count];

    if (v6)
    {
      [(SUUIIPadProductPageViewController *)self _relatedViewController];
    }

    else
    {
      [(SUUIIPadProductPageViewController *)self _placeholderViewController];
    }
    _reviewsViewController = ;
  }

  else if (index == 1)
  {
    _reviewsViewController = [(SUUIIPadProductPageViewController *)self _reviewsViewController];
  }

  else if (index)
  {
    _reviewsViewController = 0;
  }

  else
  {
    _reviewsViewController = [(SUUIIPadProductPageViewController *)self _detailsViewController];
  }

  return _reviewsViewController;
}

- (SUUIIPadProductPageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end