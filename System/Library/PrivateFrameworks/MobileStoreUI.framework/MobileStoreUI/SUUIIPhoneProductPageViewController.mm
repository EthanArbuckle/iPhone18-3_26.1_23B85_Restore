@interface SUUIIPhoneProductPageViewController
- (BOOL)_isIncompatibleItem;
- (CGPoint)topContentOffset;
- (SUUIIPhoneProductPageDelegate)delegate;
- (SUUIIPhoneProductPageViewController)initWithItem:(id)item;
- (SUUIIPhoneProductPageViewController)initWithItemIdentifier:(int64_t)identifier;
- (SUUIIPhoneProductPageViewController)initWithProductPage:(id)page;
- (SUUIIPhoneProductPageViewController)initWithURL:(id)l;
- (SUUIIPhoneProductPageViewController)initWithURLRequest:(id)request;
- (id)_detailsViewController;
- (id)_headerViewController;
- (id)_initSUUIIPhoneProductPageViewController;
- (id)_loadingViewController;
- (id)_relatedPlaceholderViewController;
- (id)_relatedViewController;
- (id)_reviewsViewController;
- (id)_viewControllerForSectionIndex:(unint64_t)index;
- (void)_animateAddToWishlist;
- (void)_hideBanner;
- (void)_invalidateChildViewControllers;
- (void)_metricsEnterEventNotification:(id)notification;
- (void)_presentHTMLProductPage;
- (void)_reloadChildViewControllers;
- (void)_setContentInsetsForChildViewController:(id)controller;
- (void)_setHeaderPositionForChildViewController:(id)controller;
- (void)_setMetricsController:(id)controller;
- (void)_setProductPage:(id)page error:(id)error;
- (void)_setSectionIndexWithFragment:(int64_t)fragment;
- (void)_shareButtonAction:(id)action;
- (void)_showActivityViewController;
- (void)_showBanner;
- (void)_showError:(id)error;
- (void)askPermissionBannerDidSelect:(id)select;
- (void)configureMetricsWithPageEvent:(id)event;
- (void)dealloc;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)loadView;
- (void)networkErrorViewControllerInvalidated:(id)invalidated;
- (void)productPageChildOpenItem:(id)item;
- (void)productPageChildOpenURL:(id)l viewControllerBlock:(id)block;
- (void)productPageChildViewControllerDidScroll:(id)scroll;
- (void)productPageHeaderView:(id)view didReloadItemOffer:(id)offer;
- (void)productPageHeaderView:(id)view didSelectSectionIndex:(int64_t)index;
- (void)productPageHeaderView:(id)view didSelectURL:(id)l;
- (void)productViewControllerDidFinish:(id)finish;
- (void)reloadData;
- (void)setAskPermission:(BOOL)permission;
- (void)setBannerText:(id)text;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SUUIIPhoneProductPageViewController

- (id)_initSUUIIPhoneProductPageViewController
{
  v8.receiver = self;
  v8.super_class = SUUIIPhoneProductPageViewController;
  v2 = [(SUUIIPhoneProductPageViewController *)&v8 init];
  p_isa = &v2->super.super.super.super.isa;
  if (v2)
  {
    v2->_sectionIndex = 0;
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = p_isa[148];
    p_isa[148] = v4;

    [p_isa[148] setMaxConcurrentOperationCount:6];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:p_isa selector:sel__metricsEnterEventNotification_ name:@"SUUIMetricsDidRecordEnterEventNotification" object:0];
  }

  return p_isa;
}

- (SUUIIPhoneProductPageViewController)initWithItem:(id)item
{
  itemCopy = item;
  _initSUUIIPhoneProductPageViewController = [(SUUIIPhoneProductPageViewController *)self _initSUUIIPhoneProductPageViewController];
  v7 = _initSUUIIPhoneProductPageViewController;
  if (_initSUUIIPhoneProductPageViewController)
  {
    objc_storeStrong(_initSUUIIPhoneProductPageViewController + 142, item);
    v7[146] = [v7[142] itemIdentifier];
    productPageURLString = [itemCopy productPageURLString];
    if (productPageURLString)
    {
      v9 = MEMORY[0x277CBABA0];
      v10 = [MEMORY[0x277CBEBC0] URLWithString:productPageURLString];
      v11 = [v9 requestWithURL:v10];
      v12 = v7[154];
      v7[154] = v11;
    }

    itemKind = [v7[142] itemKind];
    if (itemKind != 5 && !SUUIItemKindIsSoftwareKind(itemKind))
    {
      v16 = objc_alloc_init(SUUIDismissingProductViewController);
      v17 = [v7[154] URL];
      [(SKStoreProductViewController *)v16 loadProductWithURL:v17 completionBlock:0];

      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      keyWindow = [mEMORY[0x277D75128] keyWindow];
      rootViewController = [keyWindow rootViewController];
      [rootViewController presentViewController:v16 animated:1 completion:0];

      v14 = 0;
      goto LABEL_8;
    }
  }

  v14 = v7;
LABEL_8:

  return v14;
}

- (SUUIIPhoneProductPageViewController)initWithItemIdentifier:(int64_t)identifier
{
  result = [(SUUIIPhoneProductPageViewController *)self _initSUUIIPhoneProductPageViewController];
  if (result)
  {
    result->_lookupItemIdentifier = identifier;
  }

  return result;
}

- (SUUIIPhoneProductPageViewController)initWithProductPage:(id)page
{
  pageCopy = page;
  item = [pageCopy item];
  v7 = [(SUUIIPhoneProductPageViewController *)self initWithItem:item];

  if (v7)
  {
    objc_storeStrong(&v7->_productPage, page);
    -[SUUIIPhoneProductPageViewController _setSectionIndexWithFragment:](v7, "_setSectionIndexWithFragment:", [pageCopy defaultPageFragment]);
  }

  return v7;
}

- (SUUIIPhoneProductPageViewController)initWithURL:(id)l
{
  v4 = [MEMORY[0x277CBABA0] requestWithURL:l];
  v5 = [(SUUIIPhoneProductPageViewController *)self initWithURLRequest:v4];

  return v5;
}

- (SUUIIPhoneProductPageViewController)initWithURLRequest:(id)request
{
  requestCopy = request;
  _initSUUIIPhoneProductPageViewController = [(SUUIIPhoneProductPageViewController *)self _initSUUIIPhoneProductPageViewController];
  if (_initSUUIIPhoneProductPageViewController)
  {
    v6 = [requestCopy URL];
    [(SUUIIPhoneProductPageViewController *)_initSUUIIPhoneProductPageViewController _setSectionIndexWithFragment:SUUIProductPageFragmentWithURL(v6)];

    v7 = [requestCopy copy];
    urlRequest = _initSUUIIPhoneProductPageViewController->_urlRequest;
    _initSUUIIPhoneProductPageViewController->_urlRequest = v7;
  }

  return _initSUUIIPhoneProductPageViewController;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SUUIMetricsDidRecordEnterEventNotification" object:0];
  [(SUUIProductPageDetailsViewController *)self->_detailsViewController setDelegate:0];
  [(SUUINetworkErrorViewController *)self->_errorViewController setDelegate:0];
  [(SUUIIncompatibleAppViewController *)self->_incompatibleViewController setDelegate:0];
  [(SUUIProductPagePlaceholderViewController *)self->_relatedPlaceholderViewController setDelegate:0];
  [(SUUIProductPagePlaceholderViewController *)self->_loadingViewController setDelegate:0];
  [(SUUISwooshArrayViewController *)self->_relatedViewController setDelegate:0];
  [(SUUIProductPageReviewsViewController *)self->_reviewsViewController setDelegate:0];

  v4.receiver = self;
  v4.super_class = SUUIIPhoneProductPageViewController;
  [(SUUIViewController *)&v4 dealloc];
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
      [(SUUIIPhoneProductPageViewController *)self _showBanner];
    }
  }
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
    clientContext = [(SUUIViewController *)self clientContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__SUUIIPhoneProductPageViewController_configureMetricsWithPageEvent___block_invoke;
    v7[3] = &unk_2798F7ED0;
    objc_copyWeak(&v9, &location);
    v8 = eventCopy;
    [clientContext getDefaultMetricsControllerWithCompletionBlock:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __69__SUUIIPhoneProductPageViewController_configureMetricsWithPageEvent___block_invoke(uint64_t a1, void *a2)
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
  clientContext = [(SUUIViewController *)self clientContext];
  objc_initWeak(&location, self);
  if (!self->_metricsController)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__SUUIIPhoneProductPageViewController_reloadData__block_invoke;
    v10[3] = &unk_2798F7EF8;
    objc_copyWeak(&v11, &location);
    [clientContext getDefaultMetricsControllerWithCompletionBlock:v10];
    objc_destroyWeak(&v11);
  }

  if (!self->_productPage && !self->_loadOperation)
  {
    if (self->_urlRequest)
    {
      v4 = [[SUUILoadProductPageOperation alloc] initWithProductPageURLRequest:self->_urlRequest clientContext:clientContext];
    }

    else
    {
      if (!self->_lookupItemIdentifier)
      {
        goto LABEL_10;
      }

      v4 = [[SUUILoadProductPageOperation alloc] initWithItemIdentifier:self->_lookupItemIdentifier clientContext:clientContext];
    }

    loadOperation = self->_loadOperation;
    self->_loadOperation = v4;

LABEL_10:
    v6 = self->_loadOperation;
    if (v6)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __49__SUUIIPhoneProductPageViewController_reloadData__block_invoke_2;
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

void __49__SUUIIPhoneProductPageViewController_reloadData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setMetricsController:v3];
}

void __49__SUUIIPhoneProductPageViewController_reloadData__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SUUIIPhoneProductPageViewController_reloadData__block_invoke_3;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __49__SUUIIPhoneProductPageViewController_reloadData__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setProductPage:*(a1 + 32) error:*(a1 + 40)];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  metricsController = self->_metricsController;
  v6 = SUUIMetricsWindowOrientationForInterfaceOrientation([(SUUIIPhoneProductPageViewController *)self interfaceOrientation]);
  [(SUUIMetricsController *)metricsController setWindowOrientation:v6];

  v7.receiver = self;
  v7.super_class = SUUIIPhoneProductPageViewController;
  [(SUUIIPhoneProductPageViewController *)&v7 didRotateFromInterfaceOrientation:orientation];
}

- (void)loadView
{
  v10 = objc_alloc_init(SUUIIPhoneProductPageView);
  [(SUUIIPhoneProductPageViewController *)self setView:?];
  [(SUUIViewController *)self showDefaultNavigationItems];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:self action:sel__shareButtonAction_];
  [v3 setImageInsets:{-3.0, 0.0, 3.0, 0.0}];
  navigationItem = [(SUUIIPhoneProductPageViewController *)self navigationItem];
  rightBarButtonItems = [navigationItem rightBarButtonItems];
  v6 = [rightBarButtonItems mutableCopy];
  v7 = v6;
  if (v6)
  {
    array = v6;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v9 = array;

  [v9 addObject:v3];
  [navigationItem setRightBarButtonItems:v9];
}

- (void)viewDidLayoutSubviews
{
  if (!self->_childViewController)
  {
    [(SUUIIPhoneProductPageViewController *)self _reloadChildViewControllers];
    [(SUUIProductPageHeaderViewController *)self->_headerViewController reloadData];
  }

  v3.receiver = self;
  v3.super_class = SUUIIPhoneProductPageViewController;
  [(SUUIIPhoneProductPageViewController *)&v3 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
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

  [(SUUIIPhoneProductPageViewController *)self reloadData];
  v7.receiver = self;
  v7.super_class = SUUIIPhoneProductPageViewController;
  [(SUUIViewController *)&v7 viewWillAppear:appearCopy];
}

- (void)networkErrorViewControllerInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  errorViewController = self->_errorViewController;
  if (errorViewController)
  {
    v9 = invalidatedCopy;
    childViewController = self->_childViewController;
    if (errorViewController == childViewController)
    {
      self->_childViewController = 0;

      errorViewController = self->_errorViewController;
    }

    [(SUUINetworkErrorViewController *)errorViewController setDelegate:0];
    view = [(SUUINetworkErrorViewController *)self->_errorViewController view];
    [view removeFromSuperview];

    [(SUUINetworkErrorViewController *)self->_errorViewController removeFromParentViewController];
    v8 = self->_errorViewController;
    self->_errorViewController = 0;

    [(SUUIIPhoneProductPageViewController *)self _reloadChildViewControllers];
    errorViewController = [(SUUIIPhoneProductPageViewController *)self reloadData];
    invalidatedCopy = v9;
  }

  MEMORY[0x2821F96F8](errorViewController, invalidatedCopy);
}

- (void)productPageHeaderView:(id)view didReloadItemOffer:(id)offer
{
  viewCopy = view;
  isViewLoaded = [viewCopy isViewLoaded];
  v6 = viewCopy;
  if (isViewLoaded)
  {
    view = [viewCopy view];
    [view sizeToFit];

    scrollView = [(SUUIProductPageChildViewController *)self->_childViewController scrollView];
    v9 = scrollView;
    if (scrollView)
    {
      [scrollView contentOffset];
      v11 = v10;
      v13 = v12;
      [v9 contentInset];
      v15 = v14;
      [(SUUIIPhoneProductPageViewController *)self _setContentInsetsForChildViewController:self->_childViewController];
      [(SUUIIPhoneProductPageViewController *)self _setHeaderPositionForChildViewController:self->_childViewController];
      [v9 contentInset];
      [v9 setContentOffset:{v11, v13 + v15 - v16}];
    }

    v6 = viewCopy;
  }

  MEMORY[0x2821F96F8](isViewLoaded, v6);
}

- (void)productPageHeaderView:(id)view didSelectSectionIndex:(int64_t)index
{
  if (self->_sectionIndex != index)
  {
    self->_sectionIndex = index;
    [(SUUIIPhoneProductPageViewController *)self _reloadChildViewControllers];
  }
}

- (void)productPageHeaderView:(id)view didSelectURL:(id)l
{
  lCopy = l;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SUUIIPhoneProductPageViewController_productPageHeaderView_didSelectURL___block_invoke;
  v7[3] = &unk_2798F7F48;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
  [(SUUIIPhoneProductPageViewController *)self productPageChildOpenURL:v6 viewControllerBlock:v7];
}

SUUIStorePageViewController *__74__SUUIIPhoneProductPageViewController_productPageHeaderView_didSelectURL___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SUUIStorePageViewController);
  v3 = [*(a1 + 32) clientContext];
  [(SUUIStorePageViewController *)v2 setClientContext:v3];

  v4 = [*(*(a1 + 32) + 1200) item];
  v5 = [v4 artistName];
  [(SUUIStorePageViewController *)v2 setTitle:v5];

  [(SUUIStorePageViewController *)v2 loadURL:*(a1 + 40) withCompletionBlock:0];

  return v2;
}

- (void)askPermissionBannerDidSelect:(id)select
{
  selectCopy = select;
  if (!self->_bannerText)
  {
    objc_initWeak(&location, self);
    v5 = SUUIAskPermissionFramework();
    v6 = SUUIWeakLinkedClassForString(&cfstr_Prrequestqueue.isa, v5);
    v7 = SUUIAskPermissionFramework();
    v8 = *SUUIWeakLinkedSymbolForString("kPRRequestQueueiTunesStoreIdentifier", v7);
    v9 = [v6 _requestQueueForIdentifier:v8];
    itemIdentifier = [(SUUIItem *)self->_item itemIdentifier];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__SUUIIPhoneProductPageViewController_askPermissionBannerDidSelect___block_invoke;
    v11[3] = &unk_2798F8BE8;
    objc_copyWeak(&v12, &location);
    [v9 _attemptLocalApprovalForStorePurchaseRequestWithItemIdentifier:itemIdentifier completionHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __68__SUUIIPhoneProductPageViewController_askPermissionBannerDidSelect___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__SUUIIPhoneProductPageViewController_askPermissionBannerDidSelect___block_invoke_2;
  v3[3] = &unk_2798F8878;
  v5 = a3;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
}

void __68__SUUIIPhoneProductPageViewController_askPermissionBannerDidSelect___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _hideBanner];
  }
}

- (void)productPageChildOpenItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0 || (v6 = objc_loadWeakRetained(&self->_delegate), v7 = [v6 iPhoneProductPage:self shouldOpenItem:itemCopy], v6, v7))
  {
    v8 = [[SUUIIPhoneProductPageViewController alloc] initWithItem:itemCopy];
    clientContext = [(SUUIViewController *)self clientContext];
    [(SUUIViewController *)v8 setClientContext:clientContext];

    navigationController = [(SUUIIPhoneProductPageViewController *)self navigationController];
    [navigationController pushViewController:v8 animated:1];
  }
}

- (void)productPageChildOpenURL:(id)l viewControllerBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0 || (v9 = objc_loadWeakRetained(&self->_delegate), v10 = [v9 iPhoneProductPage:self shouldOpenURL:lCopy], v9, v10))
  {
    if (blockCopy && (blockCopy[2](blockCopy), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      navigationController = [(SUUIIPhoneProductPageViewController *)self navigationController];
      [navigationController pushViewController:v12 animated:1];
    }

    else
    {
      SUUIMetricsOpenURL(lCopy);
    }
  }
}

- (void)productPageChildViewControllerDidScroll:(id)scroll
{
  if (self->_childViewController == scroll)
  {
    [(SUUIIPhoneProductPageViewController *)self _setHeaderPositionForChildViewController:?];
  }
}

- (CGPoint)topContentOffset
{
  selfCopy = self;
  [(SUUIMessageBanner *)self->_banner frame];
  v4 = v3;
  clientContext = [selfCopy clientContext];
  navigationBar = SUUIUserInterfaceIdiom(clientContext);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v9 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v10 = navigationBar != 1;
  if (v10 == v9)
  {
    v11 = 0.0;
  }

  else
  {
    selfCopy = [selfCopy navigationController];
    navigationBar = [selfCopy navigationBar];
    [navigationBar frame];
  }

  v12 = v10 ^ v9;
  v13 = v4 + v11;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v16 = v13 + 0.0;
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] statusBarFrame];
  v18 = 20.0;
  if (v19 == 0.0)
  {
    v18 = 0.0;
  }

  v16 = v13 + v18;

  if (v12)
  {
LABEL_10:
  }

LABEL_11:

  v20 = 0.0;
  v21 = -49.0 - v16;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)productViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  objc_initWeak(&location, self);
  [finishCopy setDelegate:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SUUIIPhoneProductPageViewController_productViewControllerDidFinish___block_invoke;
  v5[3] = &unk_2798F67A0;
  objc_copyWeak(&v6, &location);
  [finishCopy dismissViewControllerAnimated:1 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __70__SUUIIPhoneProductPageViewController_productViewControllerDidFinish___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  v4 = [v3 topViewController];
  v5 = objc_loadWeakRetained((a1 + 32));

  v6 = objc_loadWeakRetained((a1 + 32));
  v9 = v6;
  if (v4 == v5)
  {
    v7 = [v6 navigationController];
    v8 = [v7 popViewControllerAnimated:1];
  }

  else
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
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

- (void)_shareButtonAction:(id)action
{
  if (self->_productPage)
  {
    self->_wantsActivityViewController = 0;
    [(SUUIIPhoneProductPageViewController *)self _showActivityViewController];
  }

  else
  {
    self->_wantsActivityViewController = 1;
  }
}

- (void)_animateAddToWishlist
{
  iconImage = [(SUUIProductPageHeaderViewController *)self->_headerViewController iconImage];
  navigationController = [(SUUIIPhoneProductPageViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  v5 = [SUUIAddToWishlistAnimation alloc];
  _wishlistButtonItem = [(SUUIViewController *)self _wishlistButtonItem];
  v7 = [(SUUIAddToWishlistAnimation *)v5 initWithImage:iconImage buttonItem:_wishlistButtonItem navigationBar:navigationBar];

  [(SUUIAddToWishlistAnimation *)v7 animateWithCompletionBlock:0];
}

- (id)_detailsViewController
{
  detailsViewController = self->_detailsViewController;
  if (!detailsViewController)
  {
    if (self->_productPage)
    {
      v4 = [[SUUIProductPageDetailsViewController alloc] initWithProductPage:self->_productPage];
      v5 = self->_detailsViewController;
      self->_detailsViewController = v4;

      v6 = self->_detailsViewController;
      clientContext = [(SUUIViewController *)self clientContext];
      [(SUUIProductPageDetailsViewController *)v6 setClientContext:clientContext];

      [(SUUIProductPageDetailsViewController *)self->_detailsViewController setDelegate:self];
      [(SUUIProductPageDetailsViewController *)self->_detailsViewController setOperationQueue:self->_operationQueue];
      [(SUUIProductPageDetailsViewController *)self->_detailsViewController setAskPermission:self->_askPermission];
      detailsViewController = self->_detailsViewController;
    }

    else
    {
      detailsViewController = 0;
    }
  }

  return detailsViewController;
}

- (id)_reviewsViewController
{
  reviewsViewController = self->_reviewsViewController;
  if (!reviewsViewController)
  {
    if (self->_productPage)
    {
      v4 = [[SUUIProductPageReviewsViewController alloc] initWithProductPage:self->_productPage];
      v5 = self->_reviewsViewController;
      self->_reviewsViewController = v4;

      v6 = self->_reviewsViewController;
      clientContext = [(SUUIViewController *)self clientContext];
      [(SUUIProductPageReviewsViewController *)v6 setClientContext:clientContext];

      [(SUUIProductPageReviewsViewController *)self->_reviewsViewController setDelegate:self];
      [(SUUIProductPageReviewsViewController *)self->_reviewsViewController setAskPermission:self->_askPermission];
      reviewsViewController = self->_reviewsViewController;
    }

    else
    {
      reviewsViewController = 0;
    }
  }

  return reviewsViewController;
}

- (id)_relatedViewController
{
  relatedContentSwooshes = [(SUUIProductPage *)self->_productPage relatedContentSwooshes];
  v4 = relatedContentSwooshes;
  if (!self->_relatedViewController && [relatedContentSwooshes count])
  {
    v5 = [[SUUISwooshArrayViewController alloc] initWithSwooshComponents:v4];
    relatedViewController = self->_relatedViewController;
    self->_relatedViewController = v5;

    v7 = self->_relatedViewController;
    uber = [(SUUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];
    [(SUUISwooshArrayViewController *)v7 setColorScheme:colorScheme];

    v10 = self->_relatedViewController;
    clientContext = [(SUUIViewController *)self clientContext];
    [(SUUISwooshArrayViewController *)v10 setClientContext:clientContext];

    [(SUUISwooshArrayViewController *)self->_relatedViewController setDelegate:self];
    [(SUUISwooshArrayViewController *)self->_relatedViewController setOperationQueue:self->_operationQueue];
    [(SUUISwooshArrayViewController *)self->_relatedViewController setMetricsController:self->_metricsController];
    [(SUUISwooshArrayViewController *)self->_relatedViewController setAskPermission:self->_askPermission];
  }

  v12 = self->_relatedViewController;
  v13 = v12;

  return v12;
}

- (void)_showBanner
{
  if (self->_banner)
  {
    return;
  }

  view = [(SUUIIPhoneProductPageViewController *)self view];
  [(SUUIMessageBanner *)self->_banner frame];
  v4 = v3;
  clientContext = [(SUUIViewController *)self clientContext];
  navigationController = SUUIUserInterfaceIdiom(clientContext);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v9 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v10 = navigationController != 1;
  if (v10 == v9)
  {
    v11 = 0.0;
  }

  else
  {
    navigationController = [(SUUIIPhoneProductPageViewController *)self navigationController];
    currentDevice = [navigationController navigationBar];
    [currentDevice frame];
  }

  v12 = v10 ^ v9;
  v13 = v4 + v11;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [view setBannerOffset:v13 + 0.0];
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] statusBarFrame];
    v17 = 20.0;
    if (v18 == 0.0)
    {
      v17 = 0.0;
    }

    [view setBannerOffset:v13 + v17];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

LABEL_12:
  v19 = objc_alloc_init(SUUIMessageBanner);
  banner = self->_banner;
  self->_banner = v19;

  [(SUUIMessageBanner *)self->_banner setDelegate:self];
  v21 = self->_banner;
  if (self->_bannerText)
  {
    [(SUUIMessageBanner *)self->_banner setMessage:?];
  }

  else
  {
    clientContext2 = [(SUUIViewController *)self clientContext];
    view2 = [(SUUIIPhoneProductPageViewController *)self view];
    tintColor = [view2 tintColor];
    v25 = SUUIMessageBannerAttributedString(clientContext2, tintColor);
    [(SUUIMessageBanner *)v21 setAttributedMessage:v25];
  }

  [view setBannerView:self->_banner];
  [view layoutSubviews];
  [(SUUIIPhoneProductPageViewController *)self _setContentInsetsForChildViewController:self->_childViewController];
  [(SUUIIPhoneProductPageViewController *)self _setHeaderPositionForChildViewController:self->_childViewController];
}

- (void)_hideBanner
{
  if (self->_banner)
  {
    view = [(SUUIIPhoneProductPageViewController *)self view];
    [view setBannerView:0];

    view2 = [(SUUIIPhoneProductPageViewController *)self view];
    [view2 layoutSubviews];

    [(SUUIMessageBanner *)self->_banner setDelegate:0];
    banner = self->_banner;
    self->_banner = 0;

    [(SUUIIPhoneProductPageViewController *)self _setContentInsetsForChildViewController:self->_childViewController];
    childViewController = self->_childViewController;

    [(SUUIIPhoneProductPageViewController *)self _setHeaderPositionForChildViewController:childViewController];
  }
}

- (id)_relatedPlaceholderViewController
{
  relatedContentSwooshes = [(SUUIProductPage *)self->_productPage relatedContentSwooshes];
  v4 = relatedContentSwooshes;
  if (!self->_relatedPlaceholderViewController && ![relatedContentSwooshes count])
  {
    v5 = [[SUUIProductPagePlaceholderViewController alloc] initWithStyle:0];
    relatedPlaceholderViewController = self->_relatedPlaceholderViewController;
    self->_relatedPlaceholderViewController = v5;

    v7 = self->_relatedPlaceholderViewController;
    uber = [(SUUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];
    [(SUUIProductPagePlaceholderViewController *)v7 setColorScheme:colorScheme];

    v10 = self->_relatedPlaceholderViewController;
    clientContext = [(SUUIViewController *)self clientContext];
    [(SUUIProductPagePlaceholderViewController *)v10 setClientContext:clientContext];

    [(SUUIProductPagePlaceholderViewController *)self->_relatedPlaceholderViewController setDelegate:self];
  }

  v12 = self->_relatedPlaceholderViewController;
  v13 = v12;

  return v12;
}

- (id)_loadingViewController
{
  loadingViewController = self->_loadingViewController;
  if (!loadingViewController)
  {
    v4 = [[SUUIProductPagePlaceholderViewController alloc] initWithStyle:1];
    v5 = self->_loadingViewController;
    self->_loadingViewController = v4;

    v6 = self->_loadingViewController;
    uber = [(SUUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];
    [(SUUIProductPagePlaceholderViewController *)v6 setColorScheme:colorScheme];

    v9 = self->_loadingViewController;
    clientContext = [(SUUIViewController *)self clientContext];
    [(SUUIProductPagePlaceholderViewController *)v9 setClientContext:clientContext];

    [(SUUIProductPagePlaceholderViewController *)self->_loadingViewController setDelegate:self];
    loadingViewController = self->_loadingViewController;
  }

  return loadingViewController;
}

- (id)_headerViewController
{
  headerViewController = self->_headerViewController;
  if (!headerViewController)
  {
    if (self->_item)
    {
      v4 = [[SUUIProductPageHeaderViewController alloc] initWithItem:self->_item];
      v5 = self->_headerViewController;
      self->_headerViewController = v4;

      v6 = self->_headerViewController;
      clientContext = [(SUUIViewController *)self clientContext];
      [(SUUIProductPageHeaderViewController *)v6 setClientContext:clientContext];

      [(SUUIProductPageHeaderViewController *)self->_headerViewController setDelegate:self];
      [(SUUIProductPageHeaderViewController *)self->_headerViewController setOperationQueue:self->_operationQueue];
      [(SUUIProductPageHeaderViewController *)self->_headerViewController setProductPage:self->_productPage];
      [(SUUIProductPageHeaderViewController *)self->_headerViewController setSelectedSectionIndex:self->_sectionIndex];
      [(SUUIProductPageHeaderViewController *)self->_headerViewController setAskPermission:self->_askPermission];
      headerViewController = self->_headerViewController;
    }

    else
    {
      headerViewController = 0;
    }
  }

  return headerViewController;
}

- (void)_invalidateChildViewControllers
{
  if ([(SUUIIPhoneProductPageViewController *)self isViewLoaded])
  {
    view = [(SUUIIPhoneProductPageViewController *)self view];
    [view setView:0];
  }

  childViewController = self->_childViewController;
  self->_childViewController = 0;

  [(SUUIProductPageDetailsViewController *)self->_detailsViewController setDelegate:0];
  [(SUUIProductPageDetailsViewController *)self->_detailsViewController removeFromParentViewController];
  detailsViewController = self->_detailsViewController;
  self->_detailsViewController = 0;

  [(SUUIIncompatibleAppViewController *)self->_incompatibleViewController setDelegate:0];
  [(SUUIIncompatibleAppViewController *)self->_incompatibleViewController removeFromParentViewController];
  incompatibleViewController = self->_incompatibleViewController;
  self->_incompatibleViewController = 0;

  [(SUUIProductPagePlaceholderViewController *)self->_loadingViewController setDelegate:0];
  [(SUUIProductPagePlaceholderViewController *)self->_loadingViewController removeFromParentViewController];
  loadingViewController = self->_loadingViewController;
  self->_loadingViewController = 0;

  [(SUUIProductPagePlaceholderViewController *)self->_relatedPlaceholderViewController setDelegate:0];
  [(SUUIProductPagePlaceholderViewController *)self->_relatedPlaceholderViewController removeFromParentViewController];
  relatedPlaceholderViewController = self->_relatedPlaceholderViewController;
  self->_relatedPlaceholderViewController = 0;

  [(SUUISwooshArrayViewController *)self->_relatedViewController setDelegate:0];
  [(SUUISwooshArrayViewController *)self->_relatedViewController removeFromParentViewController];
  relatedViewController = self->_relatedViewController;
  self->_relatedViewController = 0;

  [(SUUIProductPageReviewsViewController *)self->_reviewsViewController setDelegate:0];
  [(SUUIProductPageReviewsViewController *)self->_reviewsViewController removeFromParentViewController];
  reviewsViewController = self->_reviewsViewController;
  self->_reviewsViewController = 0;
}

- (BOOL)_isIncompatibleItem
{
  item = [(SUUIProductPage *)self->_productPage item];
  if (item)
  {
    v4 = item;
  }

  else
  {
    v4 = self->_item;
    if (!v4)
    {
LABEL_5:
      v6 = 0;
      goto LABEL_12;
    }
  }

  deviceFamilies = [(SUUIItem *)v4 deviceFamilies];
  if ((deviceFamilies & 6) != 0)
  {
    goto LABEL_5;
  }

  v7 = deviceFamilies;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v6 = (v7 & 1) == 0 || (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1;
LABEL_12:
  v11 = [(SUUIItem *)v4 itemKind]== 5 || v6;

  return v11;
}

- (void)_presentHTMLProductPage
{
  v4 = objc_alloc_init(MEMORY[0x277CDD3A8]);
  v3 = [(NSURLRequest *)self->_urlRequest URL];
  [v4 loadProductWithURL:v3 completionBlock:0];

  [v4 setDelegate:self];
  [(SUUIIPhoneProductPageViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_reloadChildViewControllers
{
  v201 = [(SUUIIPhoneProductPageViewController *)self _viewControllerForSectionIndex:self->_sectionIndex];
  isViewLoaded = [(SUUIIPhoneProductPageViewController *)self isViewLoaded];
  v4 = v201;
  if (!isViewLoaded || self->_childViewController == v201)
  {
    goto LABEL_97;
  }

  navigationItem = [(SUUIIPhoneProductPageViewController *)self navigationItem];
  item = [(SUUIProductPage *)self->_productPage item];
  v7 = item;
  if (!item)
  {
    item = self->_item;
  }

  title = [item title];
  [navigationItem setBackButtonTitle:title];

  view = [(SUUIIPhoneProductPageViewController *)self view];
  _headerViewController = [(SUUIIPhoneProductPageViewController *)self _headerViewController];
  v11 = self->_childViewController;
  [(SUUIProductPageChildViewController *)v11 setHeaderViewController:0];
  [view setView:0];
  v200 = v11;
  [(SUUIProductPageChildViewController *)v11 removeFromParentViewController];
  objc_storeStrong(&self->_childViewController, v201);
  [(SUUIIPhoneProductPageViewController *)self addChildViewController:self->_childViewController];
  view2 = [(SUUIProductPageChildViewController *)self->_childViewController view];
  [view setView:view2];

  v198 = _headerViewController;
  [(SUUIProductPageChildViewController *)self->_childViewController setHeaderViewController:_headerViewController];
  [(SUUIIPhoneProductPageViewController *)self _setHeaderPositionForChildViewController:self->_childViewController];
  [(SUUIMessageBanner *)self->_banner frame];
  v14 = v13;
  clientContext = [(SUUIViewController *)self clientContext];
  navigationController = SUUIUserInterfaceIdiom(clientContext);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v19 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v20 = navigationController != 1;
  v21 = 0.0;
  v22 = 0.0;
  if (v20 != v19)
  {
    navigationController = [(SUUIIPhoneProductPageViewController *)self navigationController];
    currentDevice = [navigationController navigationBar];
    [currentDevice frame];
  }

  v23 = v14 + v22;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v26 = userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL;
  if (v26 != 1)
  {
    currentDevice2 = [MEMORY[0x277D75128] sharedApplication];
    [currentDevice2 statusBarFrame];
    if (v27 == 0.0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = 20.0;
    }
  }

  v28 = v20 ^ v19;
  [(SUUIMessageBanner *)self->_banner frame];
  [view setBannerOffset:v23 + v21 - v29];
  if (v26 != 1)
  {
  }

  if (v28)
  {
  }

  v30 = &qword_259FCB000;
  v199 = view;
  if (v200)
  {
    scrollView = [(SUUIProductPageChildViewController *)v200 scrollView];
    [scrollView contentOffset];
    v197 = v32;
    v34 = v33;
  }

  else
  {
    [(SUUIMessageBanner *)self->_banner frame];
    v36 = v35;
    scrollView = [(SUUIViewController *)self clientContext];
    navigationController2 = SUUIUserInterfaceIdiom(scrollView);
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

    v40 = (userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v41 = navigationController2 != 1;
    v42 = 0.0;
    v43 = 0.0;
    if (v41 != v40)
    {
      navigationController2 = [(SUUIIPhoneProductPageViewController *)self navigationController];
      currentDevice3 = [navigationController2 navigationBar];
      [currentDevice3 frame];
    }

    v44 = v36 + v43;
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

    v47 = userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL;
    if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      currentDevice4 = [MEMORY[0x277D75128] sharedApplication];
      [currentDevice4 statusBarFrame];
      if (v48 == 0.0)
      {
        v42 = 0.0;
      }

      else
      {
        v42 = 20.0;
      }
    }

    v49 = MEMORY[0x277CBF348];
    v50 = v41 ^ v40;
    view3 = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
    [view3 frame];
    v53 = -(v44 + v42) - v52;

    if (v47 != 1)
    {
    }

    v197 = *v49;
    v34 = v53 + -49.0;
    if (v50)
    {
    }

    v30 = &qword_259FCB000;
  }

  [(SUUIMessageBanner *)self->_banner frame];
  v55 = v54;
  clientContext2 = [(SUUIViewController *)self clientContext];
  navigationController3 = SUUIUserInterfaceIdiom(clientContext2);
  currentDevice5 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom5 = [currentDevice5 userInterfaceIdiom];

  v60 = (userInterfaceIdiom5 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v61 = navigationController3 != 1;
  if (v61 == v60)
  {
    v62 = 0.0;
  }

  else
  {
    navigationController3 = [(SUUIIPhoneProductPageViewController *)self navigationController];
    currentDevice5 = [navigationController3 navigationBar];
    [currentDevice5 frame];
  }

  v63 = v61 ^ v60;
  v64 = v55 + v62;
  currentDevice6 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom6 = [currentDevice6 userInterfaceIdiom];

  if ((userInterfaceIdiom6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v67 = v64 + 0.0;
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] statusBarFrame];
    v69 = 20.0;
    if (v70 == 0.0)
    {
      v69 = 0.0;
    }

    v67 = v64 + v69;
  }

  v71 = *(v30 + 31);
  v72 = v71 - v67;
  if (v63)
  {
  }

  if (v34 > v72)
  {
    [(SUUIMessageBanner *)self->_banner frame];
    v74 = v73;
    clientContext3 = [(SUUIViewController *)self clientContext];
    navigationController4 = SUUIUserInterfaceIdiom(clientContext3);
    currentDevice7 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom7 = [currentDevice7 userInterfaceIdiom];

    v79 = (userInterfaceIdiom7 & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v80 = navigationController4 != 1;
    if (v80 == v79)
    {
      v81 = 0.0;
    }

    else
    {
      navigationController4 = [(SUUIIPhoneProductPageViewController *)self navigationController];
      currentDevice7 = [navigationController4 navigationBar];
      [currentDevice7 frame];
    }

    v82 = v80 ^ v79;
    v83 = v74 + v81;
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom8 = [currentDevice8 userInterfaceIdiom];

    if ((userInterfaceIdiom8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v86 = v83 + 0.0;
      if (!v82)
      {
        goto LABEL_49;
      }
    }

    else
    {
      mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
      [mEMORY[0x277D75128]2 statusBarFrame];
      v88 = 20.0;
      if (v89 == 0.0)
      {
        v88 = 0.0;
      }

      v86 = v83 + v88;

      if (!v82)
      {
        goto LABEL_49;
      }
    }

LABEL_49:
    v34 = v71 - v86;
  }

  v196 = v34;
  [(SUUIMessageBanner *)self->_banner frame];
  v91 = v90;
  clientContext4 = [(SUUIViewController *)self clientContext];
  v92 = SUUIUserInterfaceIdiom(clientContext4);
  currentDevice9 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom9 = [currentDevice9 userInterfaceIdiom];

  v95 = 0.0;
  v96 = 0.0;
  v191 = v92 != 1;
  v192 = (userInterfaceIdiom9 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  if (v191 != v192)
  {
    navigationController5 = [(SUUIIPhoneProductPageViewController *)self navigationController];
    navigationBar = [navigationController5 navigationBar];
    [navigationBar frame];
    v96 = v97;
  }

  v195 = v71;
  currentDevice10 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom10 = [currentDevice10 userInterfaceIdiom];

  v190 = userInterfaceIdiom10 & 0xFFFFFFFFFFFFFFFBLL;
  if ((userInterfaceIdiom10 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    mEMORY[0x277D75128]3 = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128]3 statusBarFrame];
    if (v100 == 0.0)
    {
      v95 = 0.0;
    }

    else
    {
      v95 = 20.0;
    }
  }

  v189 = SUUIViewControllerGetAncestorTabBarController(self);
  tabBar = [v189 tabBar];
  [tabBar frame];
  v102 = v101;
  view4 = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
  [view4 frame];
  v105 = v104;
  scrollView2 = [(SUUIProductPageChildViewController *)self->_childViewController scrollView];
  [scrollView2 contentSize];
  v188 = v107;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v193 = v109;
  [(SUUIMessageBanner *)self->_banner frame];
  v111 = v110;
  clientContext5 = [(SUUIViewController *)self clientContext];
  v113 = SUUIUserInterfaceIdiom(clientContext5);
  currentDevice11 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom11 = [currentDevice11 userInterfaceIdiom];

  v116 = (userInterfaceIdiom11 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v117 = v113 != 1;
  v118 = 0.0;
  v119 = 0.0;
  if (v117 != v116)
  {
    navigationController6 = [(SUUIIPhoneProductPageViewController *)self navigationController];
    navigationBar2 = [navigationController6 navigationBar];
    [navigationBar2 frame];
    v119 = v120;
  }

  currentDevice12 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom12 = [currentDevice12 userInterfaceIdiom];

  v123 = userInterfaceIdiom12 & 0xFFFFFFFFFFFFFFFBLL;
  if ((userInterfaceIdiom12 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    currentDevice12 = [MEMORY[0x277D75128] sharedApplication];
    [currentDevice12 statusBarFrame];
    if (v124 == 0.0)
    {
      v118 = 0.0;
    }

    else
    {
      v118 = 20.0;
    }
  }

  v125 = v91 + v96;
  v126 = v117 ^ v116;
  view5 = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
  [view5 frame];
  v129 = v128;

  if (v123 != 1)
  {
  }

  v130 = v125 + v95;
  if (v126)
  {
  }

  v131 = v130 + v102;

  if (v190 != 1)
  {
  }

  v132 = v131 + v105;
  v133 = v111 + v119;
  if (v191 != v192)
  {
  }

  v134 = v133 + v118;

  [(SUUIMessageBanner *)self->_banner frame];
  v136 = v135;
  clientContext6 = [(SUUIViewController *)self clientContext];
  navigationController7 = SUUIUserInterfaceIdiom(clientContext6);
  currentDevice13 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom13 = [currentDevice13 userInterfaceIdiom];

  v141 = (userInterfaceIdiom13 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v142 = navigationController7 != 1;
  v143 = 0.0;
  v144 = 0.0;
  if (v142 != v141)
  {
    navigationController7 = [(SUUIIPhoneProductPageViewController *)self navigationController];
    currentDevice13 = [navigationController7 navigationBar];
    [currentDevice13 frame];
  }

  v145 = v134 + v129;
  v146 = v136 + v144;
  currentDevice14 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom14 = [currentDevice14 userInterfaceIdiom];

  v149 = userInterfaceIdiom14 & 0xFFFFFFFFFFFFFFFBLL;
  if ((userInterfaceIdiom14 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    currentDevice14 = [MEMORY[0x277D75128] sharedApplication];
    [currentDevice14 statusBarFrame];
    if (v150 == 0.0)
    {
      v143 = 0.0;
    }

    else
    {
      v143 = 20.0;
    }
  }

  v151 = v132 + v188 + 49.0 - v193;
  v152 = v145 + 49.0;
  v153 = v142 ^ v141;
  view6 = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
  [view6 frame];
  v156 = -(v146 + v143) - v155;

  if (v149 != 1)
  {
  }

  v157 = v151 - v152;
  v158 = v199;
  if (v153)
  {
  }

  if (v157 < v156 + v195)
  {
    [(SUUIMessageBanner *)self->_banner frame];
    v160 = v159;
    clientContext7 = [(SUUIViewController *)self clientContext];
    navigationController8 = SUUIUserInterfaceIdiom(clientContext7);
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom15 = [currentDevice15 userInterfaceIdiom];

    v165 = (userInterfaceIdiom15 & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v166 = navigationController8 != 1;
    v167 = 0.0;
    v168 = 0.0;
    if (v166 != v165)
    {
      navigationController8 = [(SUUIIPhoneProductPageViewController *)self navigationController];
      currentDevice15 = [navigationController8 navigationBar];
      [currentDevice15 frame];
    }

    v169 = v160 + v168;
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom16 = [currentDevice16 userInterfaceIdiom];

    v172 = userInterfaceIdiom16 & 0xFFFFFFFFFFFFFFFBLL;
    if ((userInterfaceIdiom16 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      currentDevice16 = [MEMORY[0x277D75128] sharedApplication];
      [currentDevice16 statusBarFrame];
      if (v173 == 0.0)
      {
        v167 = 0.0;
      }

      else
      {
        v167 = 20.0;
      }
    }

    v174 = v166 ^ v165;
    v175 = -(v169 + v167);
    view7 = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
    [view7 frame];
    v178 = v177;

    if (v172 != 1)
    {
    }

    v179 = v175 - v178;
    v158 = v199;
    if (v174)
    {
    }

    v157 = v179 + v195;
  }

  if (v196 <= v157)
  {
    v157 = v196;
  }

  scrollView3 = [(SUUIProductPageChildViewController *)self->_childViewController scrollView];
  [scrollView3 setContentOffset:{v197, v157}];

  [v158 animateYPosition:v196 - v157];
  incompatibleViewController = self->_incompatibleViewController;
  if (v201 == incompatibleViewController)
  {
    [(SUUIIncompatibleAppViewController *)incompatibleViewController reloadData];
  }

  v4 = v201;
LABEL_97:

  MEMORY[0x2821F96F8](isViewLoaded, v4);
}

- (void)_setContentInsetsForChildViewController:(id)controller
{
  scrollView = [controller scrollView];
  if (scrollView)
  {
    v52 = scrollView;
    view = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
    [view frame];
    v7 = v6;
    [(SUUIMessageBanner *)self->_banner frame];
    v9 = v8;
    clientContext = [(SUUIViewController *)self clientContext];
    v11 = SUUIUserInterfaceIdiom(clientContext);
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v14 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v15 = v11 != 1;
    v16 = 0.0;
    v17 = 0.0;
    if (v15 != v14)
    {
      currentDevice = [(SUUIIPhoneProductPageViewController *)self navigationController];
      navigationBar = [currentDevice navigationBar];
      [navigationBar frame];
    }

    v18 = v7 + 49.0;
    v19 = v9 + v17;
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    v22 = userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL;
    if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      currentDevice2 = [MEMORY[0x277D75128] sharedApplication];
      [currentDevice2 statusBarFrame];
      if (v23 == 0.0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 20.0;
      }
    }

    v24 = v15 ^ v14;
    v25 = SUUIViewControllerGetAncestorTabBarController(self);
    tabBar = [v25 tabBar];
    [tabBar frame];
    [v52 setContentInset:{v18 + v19 + v16, 0.0, v27, 0.0}];

    if (v22 != 1)
    {
    }

    if (v24)
    {
    }

    [(SUUIMessageBanner *)self->_banner frame];
    v29 = v28;
    clientContext2 = [(SUUIViewController *)self clientContext];
    navigationController = SUUIUserInterfaceIdiom(clientContext2);
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

    v34 = (userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v35 = navigationController != 1;
    v36 = 0.0;
    v37 = 0.0;
    if (v35 != v34)
    {
      navigationController = [(SUUIIPhoneProductPageViewController *)self navigationController];
      currentDevice3 = [navigationController navigationBar];
      [currentDevice3 frame];
    }

    v38 = v29 + v37;
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

    v41 = userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL;
    if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      currentDevice4 = [MEMORY[0x277D75128] sharedApplication];
      [currentDevice4 statusBarFrame];
      if (v42 == 0.0)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = 20.0;
      }
    }

    v43 = v35 ^ v34;
    v44 = SUUIViewControllerGetAncestorTabBarController(self);
    tabBar2 = [v44 tabBar];
    [tabBar2 frame];
    [v52 setScrollIndicatorInsets:{v38 + v36, 0.0, v46, 0.0}];

    if (v41 != 1)
    {
    }

    if (v43)
    {
    }

    uber = [(SUUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];
    backgroundColor = [colorScheme backgroundColor];
    if (backgroundColor)
    {
      SUUIScrollViewSetTopBackgroundColor(v52, backgroundColor);
    }

    else
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      SUUIScrollViewSetTopBackgroundColor(v52, whiteColor);
    }

    SUUIScrollViewLayoutTopBackgroundColorForProductPage(v52, 0.0);
    scrollView = v52;
  }
}

- (void)_setHeaderPositionForChildViewController:(id)controller
{
  scrollView = [controller scrollView];
  [scrollView contentOffset];
  v5 = v4;
  view = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
  floatingView = [(SUUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [scrollView contentInset];
  v9 = v8;
  view2 = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
  [view2 frame];
  v12 = v9 - v11 + -49.0;

  [floatingView frame];
  [floatingView setFrame:?];
  [view frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  view3 = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
  [view3 frame];
  v21 = -(v20 + 49.0);

  [view setFrame:{v14, v21, v16, v18}];
  v22 = 0.0;
  if (v5 > -(v12 + 49.0))
  {
    v22 = (v5 + 49.0 + v12) / 49.0;
  }

  [floatingView setBackdropAlpha:{1.0 - fmin(v22, 1.0)}];
}

- (void)_setMetricsController:(id)controller
{
  controllerCopy = controller;
  if (!self->_metricsController)
  {
    v22 = controllerCopy;
    metricsConfiguration = [(SUUIProductPage *)self->_productPage metricsConfiguration];
    objc_storeStrong(&self->_metricsController, controller);
    [(SUUIMetricsController *)self->_metricsController setPageConfiguration:metricsConfiguration];
    metricsController = self->_metricsController;
    pageURL = [(SUUIProductPage *)self->_productPage pageURL];
    absoluteString = [pageURL absoluteString];
    [(SUUIMetricsController *)metricsController setPageURL:absoluteString];

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    statusBarOrientation = [mEMORY[0x277D75128] statusBarOrientation];

    v12 = self->_metricsController;
    v13 = SUUIMetricsWindowOrientationForInterfaceOrientation(statusBarOrientation);
    [(SUUIMetricsController *)v12 setWindowOrientation:v13];

    clientContext = [(SUUIViewController *)self clientContext];
    v15 = self->_metricsController;
    clientInterface = [clientContext clientInterface];
    clientIdentifier = [clientInterface clientIdentifier];
    [(SUUIMetricsController *)v15 setApplicationIdentifier:clientIdentifier];

    v18 = self->_metricsController;
    v19 = [clientContext metricsPageContextForViewController:self];
    [(SUUIMetricsController *)v18 setPageContext:v19];

    [(SUUISwooshArrayViewController *)self->_relatedViewController setMetricsController:self->_metricsController];
    v20 = self->_metricsController;
    pingURLs = [metricsConfiguration pingURLs];
    [(SUUIMetricsController *)v20 pingURLs:pingURLs withClientContext:clientContext];

    controllerCopy = v22;
  }
}

- (void)_setProductPage:(id)page error:(id)error
{
  pageCopy = page;
  errorCopy = error;
  metricsPageEvent = [(SUUILoadProductPageOperation *)self->_loadOperation metricsPageEvent];
  [(SUUILoadProductPageOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;

  iTMLData = [pageCopy ITMLData];

  if (iTMLData)
  {
    clientContext = [(SUUIViewController *)self clientContext];
    iTMLData2 = [pageCopy ITMLData];
    iTMLResponse = [pageCopy ITMLResponse];
    [clientContext sendOnPageResponseWithDocument:0 data:iTMLData2 URLResponse:iTMLResponse performanceMetrics:0];
  }

  else
  {
    if (!pageCopy)
    {
      goto LABEL_14;
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
      item = [(SUUIProductPage *)self->_productPage item];
      item = self->_item;
      self->_item = item;
    }

    [(SUUIProductPageHeaderViewController *)self->_headerViewController setProductPage:self->_productPage];
    if ([(SUUIProductPageHeaderViewController *)self->_headerViewController isViewLoaded])
    {
      view = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
      [view sizeToFit];
    }

    [(SUUIIPhoneProductPageViewController *)self _invalidateChildViewControllers];
    [(SUUIIPhoneProductPageViewController *)self _reloadChildViewControllers];
    [(SUUIProductPageHeaderViewController *)self->_headerViewController reloadData];
    v21 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SUUIIPhoneProductPageViewController__setProductPage_error___block_invoke;
    block[3] = &unk_2798F5BE8;
    block[4] = self;
    dispatch_after(v21, MEMORY[0x277D85CD0], block);
    if (metricsPageEvent)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      [metricsPageEvent setPageRenderTime:?];

      [(SUUIMetricsController *)self->_metricsController recordEvent:metricsPageEvent];
      objc_storeStrong(&self->_lastPageEvent, metricsPageEvent);
    }

    if (self->_wantsActivityViewController)
    {
      [(SUUIIPhoneProductPageViewController *)self _showActivityViewController];
    }

    v23 = self->_metricsController;
    pingURLs = [clientContext pingURLs];
    clientContext2 = [(SUUIViewController *)self clientContext];
    [(SUUIMetricsController *)v23 pingURLs:pingURLs withClientContext:clientContext2];
  }

LABEL_14:
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:@"SUUIErrorDomain"])
    {
      code = [errorCopy code];

      if (code == 1)
      {
        [(SUUIIPhoneProductPageViewController *)self _presentHTMLProductPage];
        goto LABEL_20;
      }
    }

    else
    {
    }

    [(SUUIIPhoneProductPageViewController *)self _showError:errorCopy];
  }

LABEL_20:
}

void __61__SUUIIPhoneProductPageViewController__setProductPage_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _reviewsViewController];
  [v1 reloadData];
}

- (void)_setSectionIndexWithFragment:(int64_t)fragment
{
  if (fragment <= 2)
  {
    self->_sectionIndex = fragment;
  }
}

- (void)_showError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (!self->_errorViewController)
  {
    v12 = errorCopy;
    errorCopy = [SUUINetworkErrorViewController canDisplayError:errorCopy];
    v5 = v12;
    if (errorCopy)
    {
      [(SUUIProductPageChildViewController *)self->_childViewController setHeaderViewController:0];
      [(SUUIProductPageChildViewController *)self->_childViewController removeFromParentViewController];
      v6 = [[SUUINetworkErrorViewController alloc] initWithError:v12];
      errorViewController = self->_errorViewController;
      self->_errorViewController = v6;

      v8 = self->_errorViewController;
      clientContext = [(SUUIViewController *)self clientContext];
      [(SUUINetworkErrorViewController *)v8 setClientContext:clientContext];

      [(SUUINetworkErrorViewController *)self->_errorViewController setDelegate:self];
      objc_storeStrong(&self->_childViewController, self->_errorViewController);
      [(SUUIIPhoneProductPageViewController *)self addChildViewController:self->_childViewController];
      view = [(SUUIIPhoneProductPageViewController *)self view];
      view2 = [(SUUINetworkErrorViewController *)self->_errorViewController view];
      [view2 setAutoresizingMask:18];
      [view bounds];
      [view2 setFrame:?];
      [view addSubview:view2];

      v5 = v12;
    }
  }

  MEMORY[0x2821F96F8](errorCopy, v5);
}

- (void)_showActivityViewController
{
  v3 = [SUUIProductPageActivityViewController alloc];
  item = [(SUUIProductPage *)self->_productPage item];
  clientContext = [(SUUIViewController *)self clientContext];
  v6 = [(SUUIProductPageActivityViewController *)v3 initWithProductPageItem:item clientContext:clientContext];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __66__SUUIIPhoneProductPageViewController__showActivityViewController__block_invoke;
  v10 = &unk_2798F8090;
  objc_copyWeak(&v11, &location);
  [(SUUIProductPageActivityViewController *)v6 setCompletionWithItemsHandler:&v7];
  [(SUUIIPhoneProductPageViewController *)self presentViewController:v6 animated:1 completion:0, v7, v8, v9, v10];
  self->_wantsActivityViewController = 0;
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __66__SUUIIPhoneProductPageViewController__showActivityViewController__block_invoke(uint64_t a1, void *a2, int a3)
{
  if (a3 && [a2 isEqualToString:0x286AFAFE0])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _animateAddToWishlist];
  }
}

- (id)_viewControllerForSectionIndex:(unint64_t)index
{
  if (!self->_item)
  {
    goto LABEL_11;
  }

  if ([(SUUIIPhoneProductPageViewController *)self _isIncompatibleItem])
  {
    incompatibleViewController = self->_incompatibleViewController;
    if (!incompatibleViewController)
    {
      v6 = [SUUIIncompatibleAppViewController alloc];
      item = [(SUUIProductPage *)self->_productPage item];
      v8 = [(SUUIIncompatibleAppViewController *)v6 initWithIncompatibleItem:item];
      v9 = self->_incompatibleViewController;
      self->_incompatibleViewController = v8;

      v10 = self->_incompatibleViewController;
      clientContext = [(SUUIViewController *)self clientContext];
      [(SUUIViewController *)v10 setClientContext:clientContext];

      [(SUUIIncompatibleAppViewController *)self->_incompatibleViewController setDelegate:self];
      [(SUUIIncompatibleAppViewController *)self->_incompatibleViewController setOperationQueue:self->_operationQueue];
      incompatibleViewController = self->_incompatibleViewController;
    }

    _loadingViewController = incompatibleViewController;
    goto LABEL_18;
  }

  productPage = self->_productPage;
  if (!productPage)
  {
    _loadingViewController = [(SUUIIPhoneProductPageViewController *)self _loadingViewController];
    goto LABEL_18;
  }

  if (index == 2)
  {
    relatedContentSwooshes = [(SUUIProductPage *)productPage relatedContentSwooshes];
    v16 = [relatedContentSwooshes count];

    if (v16)
    {
      _relatedViewController = [(SUUIIPhoneProductPageViewController *)self _relatedViewController];
      if ([_relatedViewController isSkLoaded])
      {
        _loadingViewController2 = _relatedViewController;
      }

      else
      {
        _loadingViewController2 = [(SUUIIPhoneProductPageViewController *)self _loadingViewController];
        [_relatedViewController loadMissingItemData];
      }

      goto LABEL_19;
    }

    _loadingViewController = [(SUUIIPhoneProductPageViewController *)self _relatedPlaceholderViewController];
    goto LABEL_18;
  }

  if (index == 1)
  {
    _loadingViewController = [(SUUIIPhoneProductPageViewController *)self _reviewsViewController];
    goto LABEL_18;
  }

  if (index)
  {
LABEL_11:
    _loadingViewController2 = 0;
    goto LABEL_19;
  }

  _loadingViewController = [(SUUIIPhoneProductPageViewController *)self _detailsViewController];
LABEL_18:
  _loadingViewController2 = _loadingViewController;
LABEL_19:

  return _loadingViewController2;
}

- (SUUIIPhoneProductPageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end