@interface SUUIStorePageViewController
+ (SUUIStorePageViewController)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4;
- (BOOL)performTestWithName:(id)a3 options:(id)a4;
- (BOOL)sectionsViewController:(id)a3 showProductPageForItem:(id)a4;
- (BOOL)sectionsViewController:(id)a3 showStorePageForURL:(id)a4;
- (NSOperationQueue)operationQueue;
- (SUUIStorePageDelegate)delegate;
- (SUUIStorePageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_colorScheme;
- (id)_sectionsViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_loadWithOperation:(id)a3 completionBlock:(id)a4;
- (void)_metricsEnterEventNotification:(id)a3;
- (void)_recordMetricsPageEvent:(id)a3 forStorePage:(id)a4;
- (void)_reloadStorePage;
- (void)_runPerformanceTestAfterIdle;
- (void)_runPerformanceTestAfterPageLoad;
- (void)_runScrollTestWithName:(id)a3 options:(id)a4;
- (void)_setMetricsController:(id)a3;
- (void)_setStorePage:(id)a3 error:(id)a4;
- (void)_showProductPage:(id)a3 withPageEvent:(id)a4;
- (void)cancelPageLoad;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)a3;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)loadURL:(id)a3 withCompletionBlock:(id)a4;
- (void)loadURL:(id)a3 withDataConsumer:(id)a4 completionBlock:(id)a5;
- (void)loadURLRequest:(id)a3 withCompletionBlock:(id)a4;
- (void)loadURLRequest:(id)a3 withDataConsumer:(id)a4 completionBlock:(id)a5;
- (void)loadView;
- (void)loadWithJSONData:(id)a3 fromOperation:(id)a4 completionBlock:(id)a5;
- (void)sectionsViewControllerDidDismissOverlayController:(id)a3;
- (void)setMetricsController:(id)a3;
- (void)setRefreshControl:(id)a3;
- (void)setStorePage:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SUUIStorePageViewController

- (SUUIStorePageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = SUUIStorePageViewController;
  v4 = [(SUUIStorePageViewController *)&v9 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    [(SUUIStorePageViewController *)v4 setRestorationClass:objc_opt_class()];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(SUUIStorePageViewController *)v4 setRestorationIdentifier:v6];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v4 selector:sel__metricsEnterEventNotification_ name:@"SUUIMetricsDidRecordEnterEventNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"SUUIMetricsDidRecordEnterEventNotification" object:0];
  [(SUUIStorePageSectionsViewController *)self->_sectionsViewController setDelegate:0];

  v4.receiver = self;
  v4.super_class = SUUIStorePageViewController;
  [(SUUIStorePageViewController *)&v4 dealloc];
}

- (void)cancelPageLoad
{
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  [(SSVLoadURLOperation *)self->_loadOperation cancel];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;
}

- (void)loadURL:(id)a3 withCompletionBlock:(id)a4
{
  v6 = MEMORY[0x277CBABA0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithURL:v8];

  [(SUUIStorePageViewController *)self loadURLRequest:v9 withCompletionBlock:v7];
}

- (void)loadURL:(id)a3 withDataConsumer:(id)a4 completionBlock:(id)a5
{
  v8 = MEMORY[0x277CBABA0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithURL:v11];

  [(SUUIStorePageViewController *)self loadURLRequest:v12 withDataConsumer:v10 completionBlock:v9];
}

- (void)loadURLRequest:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[(SSVURLDataConsumer *)SUUIStorePageDataConsumer];
  [(SUUIStorePageViewController *)self loadURLRequest:v7 withDataConsumer:v8 completionBlock:v6];
}

- (void)loadURLRequest:(id)a3 withDataConsumer:(id)a4 completionBlock:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v20;
  if (v20)
  {
    if (v8)
    {
      goto LABEL_6;
    }

    v11 = @"nil consumer";
  }

  else
  {
    v11 = @"nil request";
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:v11];
  v10 = v20;
LABEL_6:
  if (self->_lastRequest != v10)
  {
    v12 = [(NSURLRequest *)v20 copy];
    lastRequest = self->_lastRequest;
    self->_lastRequest = v12;
  }

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  lastDataConsumerClassName = self->_lastDataConsumerClassName;
  self->_lastDataConsumerClassName = v15;

  lastPageEvent = self->_lastPageEvent;
  self->_lastPageEvent = 0;

  v18 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURLRequest:v20];
  [v18 setDataConsumer:v8];
  v19 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
  [v18 setStoreFrontSuffix:v19];

  [(SUUIStorePageViewController *)self _loadWithOperation:v18 completionBlock:v9];
}

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:4];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (void)setMetricsController:(id)a3
{
  metricsController = self->_metricsController;
  self->_metricsController = 0;
  v5 = a3;

  [(SUUIStorePageViewController *)self _setMetricsController:v5];
}

- (void)setRefreshControl:(id)a3
{
  v5 = a3;
  refreshControl = self->_refreshControl;
  if (refreshControl != v5)
  {
    v12 = v5;
    [(UIRefreshControl *)refreshControl removeFromSuperview];
    objc_storeStrong(&self->_refreshControl, a3);
    [(UIRefreshControl *)self->_refreshControl setAutoresizingMask:2];
    v7 = [(SUUIStorePageSectionsViewController *)self->_sectionsViewController collectionView];
    if (v7)
    {
      [(UIRefreshControl *)self->_refreshControl frame];
      v9 = v8;
      v11 = v10;
      [v7 bounds];
      [(UIRefreshControl *)self->_refreshControl setFrame:v9, v11];
      [v7 _addContentSubview:self->_refreshControl atBack:1];
    }

    v5 = v12;
  }

  MEMORY[0x2821F96F8](refreshControl, v5);
}

- (void)setStorePage:(id)a3
{
  if (self->_storePage != a3)
  {
    v4 = [a3 copy];
    storePage = self->_storePage;
    self->_storePage = v4;

    [(SUUIStorePageSectionsViewController *)self->_sectionsViewController dismissOverlays];
    [(SUUIStorePageViewController *)self _reloadStorePage];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"SUUIApplicationPageDidDisplayNotification" object:self];
  }
}

- (void)decodeRestorableStateWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  [(SUUIStorePageViewController *)self setTitle:v5];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"consumerClass"];
  lastDataConsumerClassName = self->_lastDataConsumerClassName;
  self->_lastDataConsumerClassName = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"request"];
  lastRequest = self->_lastRequest;
  self->_lastRequest = v8;

  self->_loadOnAppear = self->_lastRequest != 0;
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorScheme"];
  placeholderColorScheme = self->_placeholderColorScheme;
  self->_placeholderColorScheme = v10;

  v12 = [(SUUIStorePageViewController *)self _sectionsViewController];
  SUUIDecodeRestorableStateWithCoder(v4, @"sectionsVC", v12);
  v13 = [(SUUIStorePageViewController *)self _colorScheme];
  [v12 setColorScheme:v13];

  v14.receiver = self;
  v14.super_class = SUUIStorePageViewController;
  [(SUUIStorePageViewController *)&v14 decodeRestorableStateWithCoder:v4];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  metricsController = self->_metricsController;
  v6 = SUUIMetricsWindowOrientationForInterfaceOrientation([(SUUIStorePageViewController *)self interfaceOrientation]);
  [(SUUIMetricsController *)metricsController setWindowOrientation:v6];

  v7.receiver = self;
  v7.super_class = SUUIStorePageViewController;
  [(SUUIStorePageViewController *)&v7 didRotateFromInterfaceOrientation:a3];
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  sectionsViewController = self->_sectionsViewController;
  v5 = a3;
  SUUIEncodeRestorableStateWithCoder(v5, @"sectionsVC", sectionsViewController);
  v6 = [(SUUIStorePageViewController *)self _colorScheme];
  [v5 encodeObject:v6 forKey:@"colorScheme"];

  v7 = [(SUUIStorePageViewController *)self title];
  [v5 encodeObject:v7 forKey:@"title"];

  [v5 encodeObject:self->_lastDataConsumerClassName forKey:@"consumerClass"];
  [v5 encodeObject:self->_lastRequest forKey:@"request"];
  v8.receiver = self;
  v8.super_class = SUUIStorePageViewController;
  [(SUUIStorePageViewController *)&v8 encodeRestorableStateWithCoder:v5];
}

- (void)loadView
{
  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = [(SUUIStorePageViewController *)self _sectionsViewController];
  v4 = [v3 view];
  [v4 setAutoresizingMask:18];
  [v6 bounds];
  [v4 setFrame:?];
  [v6 addSubview:v4];
  if (self->_refreshControl)
  {
    v5 = [v3 collectionView];
    [v5 _addContentSubview:self->_refreshControl atBack:1];
  }

  [(SUUIStorePageViewController *)self setView:v6];
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
  v3 = a3;
  if (self->_loadOnAppear)
  {
    self->_loadOnAppear = 0;
    if (!self->_storePage && !self->_loadOperation)
    {
      lastRequest = self->_lastRequest;
      if (lastRequest)
      {
        lastDataConsumerClassName = self->_lastDataConsumerClassName;
        if (lastDataConsumerClassName && ([NSClassFromString(lastDataConsumerClassName) consumer], v7 = objc_claimAutoreleasedReturnValue(), lastRequest = self->_lastRequest, v7))
        {
          v8 = v7;
          [(SUUIStorePageViewController *)self loadURLRequest:lastRequest withDataConsumer:v7 completionBlock:0];
        }

        else
        {
          [(SUUIStorePageViewController *)self loadURLRequest:lastRequest withCompletionBlock:0];
        }
      }
    }
  }

  else if (self->_metricsController)
  {
    lastPageEvent = self->_lastPageEvent;
    if (lastPageEvent)
    {
      v10 = [MEMORY[0x277CBEAA8] date];
      [(SSMetricsPageEvent *)lastPageEvent setOriginalTimeUsingDate:v10];

      [(SUUIMetricsController *)self->_metricsController recordEvent:self->_lastPageEvent];
    }
  }

  v11.receiver = self;
  v11.super_class = SUUIStorePageViewController;
  [(SUUIStorePageViewController *)&v11 viewWillAppear:v3];
}

- (BOOL)sectionsViewController:(id)a3 showProductPageForItem:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 storePage:self showProductPageForItem:v5];
  }

  return v7 & 1;
}

- (BOOL)sectionsViewController:(id)a3 showStorePageForURL:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 storePage:self showStorePageForURL:v5];
  }

  return v7 & 1;
}

- (void)sectionsViewControllerDidDismissOverlayController:(id)a3
{
  if (SUUIViewControllerIsVisible(self))
  {
    if (self->_metricsController)
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
}

- (BOOL)performTestWithName:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  performanceTestName = self->_performanceTestName;
  self->_performanceTestName = v7;

  v9 = [v6 copy];
  performanceTestOptions = self->_performanceTestOptions;
  self->_performanceTestOptions = v9;

  return 1;
}

+ (SUUIStorePageViewController)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4
{
  v4 = objc_alloc_init(a1);
  v5 = +[SUUIStateRestorationContext sharedContext];
  v6 = [v5 clientContext];
  [v4 setClientContext:v6];

  return v4;
}

- (void)_metricsEnterEventNotification:(id)a3
{
  if (SUUIViewControllerIsVisible(self) && self->_lastPageEvent)
  {
    v4 = [(SUUIStorePageViewController *)self presentedViewController];
    if (v4)
    {
    }

    else if (![(SUUIStorePageSectionsViewController *)self->_sectionsViewController isDisplayingOverlays])
    {
      lastPageEvent = self->_lastPageEvent;
      v6 = [MEMORY[0x277CBEAA8] date];
      [(SSMetricsPageEvent *)lastPageEvent setOriginalTimeUsingDate:v6];

      metricsController = self->_metricsController;
      v8 = self->_lastPageEvent;

      [(SUUIMetricsController *)metricsController recordEvent:v8];
    }
  }
}

- (void)loadWithJSONData:(id)a3 fromOperation:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  obj = [v9 URLRequest];
  if (self->_lastRequest != obj)
  {
    objc_storeStrong(&self->_lastRequest, obj);
  }

  lastDataConsumerClassName = self->_lastDataConsumerClassName;
  self->_lastDataConsumerClassName = @"SUUIStorePageDataConsumer";

  lastPageEvent = self->_lastPageEvent;
  self->_lastPageEvent = 0;

  v13 = [objc_alloc(MEMORY[0x277D69CD8]) initWithData:v10 fromOperation:v9];
  v14 = +[(SSVURLDataConsumer *)SUUIStorePageDataConsumer];
  [v13 setDataConsumer:v14];

  [(SUUIStorePageViewController *)self _loadWithOperation:v13 completionBlock:v8];
}

- (id)_colorScheme
{
  storePage = self->_storePage;
  if (storePage)
  {
    v4 = [(SUUIStorePage *)storePage uber];
    v5 = v4;
    if (!v4 || ([v4 colorScheme], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = [(SUUIStorePage *)self->_storePage backgroundArtwork];

      if (v7)
      {
        v6 = objc_alloc_init(SUUIColorScheme);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = self->_placeholderColorScheme;
  }

  return v6;
}

- (void)_loadWithOperation:(id)a3 completionBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  [(SSVLoadURLOperation *)self->_loadOperation cancel];
  objc_storeStrong(&self->_loadOperation, a3);
  objc_initWeak(&location, self);
  loadOperation = self->_loadOperation;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__SUUIStorePageViewController__loadWithOperation_completionBlock___block_invoke;
  v18[3] = &unk_2798FC4F0;
  objc_copyWeak(&v20, &location);
  v10 = v8;
  v19 = v10;
  [(SSVLoadURLOperation *)loadOperation setOutputBlock:v18];
  if (!self->_metricsController)
  {
    clientContext = self->_clientContext;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __66__SUUIStorePageViewController__loadWithOperation_completionBlock___block_invoke_3;
    v16 = &unk_2798F7EF8;
    objc_copyWeak(&v17, &location);
    [(SUUIClientContext *)clientContext getDefaultMetricsControllerWithCompletionBlock:&v13];
    objc_destroyWeak(&v17);
  }

  v12 = [(SUUIStorePageViewController *)self operationQueue:v13];
  [v12 addOperation:self->_loadOperation];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __66__SUUIStorePageViewController__loadWithOperation_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SUUIStorePageViewController__loadWithOperation_completionBlock___block_invoke_2;
  v9[3] = &unk_2798FC4C8;
  v10 = v5;
  v7 = v5;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = v6;
  v12 = *(a1 + 32);
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __66__SUUIStorePageViewController__loadWithOperation_completionBlock___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _setStorePage:v4 error:*(a1 + 40)];

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4 != 0, *(a1 + 40));
  }
}

void __66__SUUIStorePageViewController__loadWithOperation_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setMetricsController:v3];
}

- (void)_recordMetricsPageEvent:(id)a3 forStorePage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (self->_metricsController)
  {
    if (self->_storePage == v8)
    {
      v10 = [(SUUIStorePageViewController *)self navigationController];
      v11 = [v10 viewControllers];
      v12 = [v11 count];

      if (v12 >= 2)
      {
        [v7 setNavigationType:*MEMORY[0x277D6A4C0]];
      }

      v13 = [MEMORY[0x277CBEAA8] date];
      [v13 timeIntervalSince1970];
      [v7 setPageRenderTime:?];

      v14 = [(SUUIStorePage *)v9 uber];
      [v7 setUbered:v14 != 0];

      if (![(SUUIStorePageSectionsViewController *)self->_sectionsViewController isDisplayingOverlays])
      {
        [(SUUIMetricsController *)self->_metricsController recordEvent:v7];
      }

      objc_storeStrong(&self->_lastPageEvent, a3);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    clientContext = self->_clientContext;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__SUUIStorePageViewController__recordMetricsPageEvent_forStorePage___block_invoke;
    v16[3] = &unk_2798FC518;
    objc_copyWeak(&v19, &location);
    v17 = v7;
    v18 = v9;
    [(SUUIClientContext *)clientContext getDefaultMetricsControllerWithCompletionBlock:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __68__SUUIStorePageViewController__recordMetricsPageEvent_forStorePage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setMetricsController:v3];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    [v5 _recordMetricsPageEvent:*(a1 + 32) forStorePage:*(a1 + 40)];
  }
}

- (void)_reloadStorePage
{
  metricsController = self->_metricsController;
  v4 = [(SUUIStorePage *)self->_storePage metricsConfiguration];
  [(SUUIMetricsController *)metricsController setPageConfiguration:v4];

  v5 = self->_metricsController;
  v6 = [(SUUIStorePage *)self->_storePage pageURL];
  v7 = [v6 absoluteString];
  [(SUUIMetricsController *)v5 setPageURL:v7];

  sectionsViewController = self->_sectionsViewController;
  v9 = [(SUUIStorePageViewController *)self _colorScheme];
  [(SUUIStorePageSectionsViewController *)sectionsViewController setColorScheme:v9];

  v10 = self->_sectionsViewController;
  v11 = [(SUUIStorePage *)self->_storePage pageComponents];
  [(SUUIStorePageSectionsViewController *)v10 setSectionsWithPageComponents:v11];
}

- (void)_runPerformanceTestAfterIdle
{
  if ([(NSString *)self->_performanceTestName hasPrefix:@"Switch"])
  {
    v14 = SUUIViewControllerGetAncestorTabBarController(self);
    v3 = [(NSDictionary *)self->_performanceTestOptions objectForKey:@"destinationTabIndex"];
    v4 = [v3 integerValue];

    if ([v14 selectedIndex] != v4)
    {
      v5 = [v14 viewControllers];
      v6 = [v5 objectAtIndex:v4];

      v7 = [v6 topViewController];
      v8 = objc_opt_respondsToSelector();
      v9 = [MEMORY[0x277D75128] sharedApplication];
      v10 = v9;
      performanceTestName = self->_performanceTestName;
      if (v8)
      {
        [v9 startedTest:performanceTestName];

        [v7 performTestWithName:self->_performanceTestName options:self->_performanceTestOptions];
        [v14 setSelectedIndex:v4];
      }

      else
      {
        [v9 failedTest:performanceTestName];
      }

      v12 = self->_performanceTestName;
      self->_performanceTestName = 0;

      performanceTestOptions = self->_performanceTestOptions;
      self->_performanceTestOptions = 0;
    }
  }
}

- (void)_runPerformanceTestAfterPageLoad
{
  if ([(NSString *)self->_performanceTestName hasPrefix:@"launch"])
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    [v3 finishedTest:self->_performanceTestName extraResults:0];

    performanceTestName = self->_performanceTestName;
    self->_performanceTestName = 0;

    performanceTestOptions = self->_performanceTestOptions;
    self->_performanceTestOptions = 0;
LABEL_3:

    return;
  }

  if ([(NSString *)self->_performanceTestName hasPrefix:@"Scroll"])
  {
    v6 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SUUIStorePageViewController__runPerformanceTestAfterPageLoad__block_invoke;
    block[3] = &unk_2798F5BE8;
    block[4] = self;
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
    return;
  }

  if ([(NSString *)self->_performanceTestName hasPrefix:@"Switch"])
  {
    v7 = [(NSDictionary *)self->_performanceTestOptions objectForKey:@"destinationTabIndex"];
    v8 = [v7 integerValue];

    v12 = SUUIViewControllerGetAncestorTabBarController(self);
    if ([(NSDictionary *)v12 selectedIndex]== v8)
    {
      v9 = [MEMORY[0x277D75128] sharedApplication];
      [v9 finishedTest:self->_performanceTestName extraResults:0];

      v10 = self->_performanceTestName;
      self->_performanceTestName = 0;

      v11 = self->_performanceTestOptions;
      self->_performanceTestOptions = 0;
    }

    performanceTestOptions = v12;
    goto LABEL_3;
  }
}

void __63__SUUIStorePageViewController__runPerformanceTestAfterPageLoad__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _runScrollTestWithName:*(*(a1 + 32) + 1064) options:*(*(a1 + 32) + 1072)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1064);
  *(v2 + 1064) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 1072);
  *(v4 + 1072) = 0;
}

- (void)_runScrollTestWithName:(id)a3 options:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = [(SUUIStorePageSectionsViewController *)self->_sectionsViewController collectionView];
  v8 = v7;
  if (([v7 isScrollEnabled] & 1) == 0)
  {
    v9 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    v10 = [v7 cellForItemAtIndexPath:v9];

    v11 = [v10 subviews];
    v12 = [v11 mutableCopy];

    v13 = [v12 count];
    v8 = v7;
    if (v13 >= 1)
    {
      v14 = v13;
      v15 = 0;
      while (1)
      {
        v8 = [v12 objectAtIndex:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v16 = [v8 subviews];
        if (v16)
        {
          [v12 addObjectsFromArray:v16];
          v14 = [v12 count];
        }

        if (++v15 >= v14)
        {
          v8 = v7;
          goto LABEL_10;
        }
      }
    }

LABEL_10:
  }

  v17 = [v6 objectForKey:@"iterations"];
  v18 = [v17 intValue];
  v19 = [v6 objectForKey:@"offset"];
  v20 = [v19 intValue];
  [v8 contentSize];
  [v8 _performScrollTest:v22 iterations:v18 delta:v20 length:v21];
}

- (id)_sectionsViewController
{
  sectionsViewController = self->_sectionsViewController;
  if (!sectionsViewController)
  {
    v4 = objc_alloc_init(SUUIStorePageSectionsViewController);
    v5 = self->_sectionsViewController;
    self->_sectionsViewController = v4;

    v6 = self->_sectionsViewController;
    v7 = [(SUUIStorePageViewController *)self clientContext];
    [(SUUIViewController *)v6 setClientContext:v7];

    [(SUUIStorePageSectionsViewController *)self->_sectionsViewController setDelegate:self];
    v8 = self->_sectionsViewController;
    v9 = [(SUUIStorePageViewController *)self operationQueue];
    [(SUUIViewController *)v8 setOperationQueue:v9];

    v10 = self->_sectionsViewController;
    v11 = [(SUUIStorePageViewController *)self _colorScheme];
    [(SUUIStorePageSectionsViewController *)v10 setColorScheme:v11];

    [(SUUIStorePageSectionsViewController *)self->_sectionsViewController setMetricsController:self->_metricsController];
    storePage = self->_storePage;
    if (storePage)
    {
      v13 = self->_sectionsViewController;
      v14 = [(SUUIStorePage *)storePage pageComponents];
      [(SUUIStorePageSectionsViewController *)v13 setSectionsWithPageComponents:v14];
    }

    [(SUUIStorePageViewController *)self addChildViewController:self->_sectionsViewController];
    sectionsViewController = self->_sectionsViewController;
  }

  return sectionsViewController;
}

- (void)_setMetricsController:(id)a3
{
  v5 = a3;
  if (!self->_metricsController)
  {
    v19 = v5;
    objc_storeStrong(&self->_metricsController, a3);
    metricsController = self->_metricsController;
    v7 = [(SUUIStorePage *)self->_storePage metricsConfiguration];
    [(SUUIMetricsController *)metricsController setPageConfiguration:v7];

    v8 = self->_metricsController;
    v9 = [(SUUIClientContext *)self->_clientContext metricsPageContextForViewController:self];
    [(SUUIMetricsController *)v8 setPageContext:v9];

    v10 = self->_metricsController;
    v11 = [(SUUIStorePage *)self->_storePage pageURL];
    v12 = [v11 absoluteString];
    [(SUUIMetricsController *)v10 setPageURL:v12];

    v13 = self->_metricsController;
    v14 = [MEMORY[0x277D75128] sharedApplication];
    v15 = SUUIMetricsWindowOrientationForInterfaceOrientation([v14 statusBarOrientation]);
    [(SUUIMetricsController *)v13 setWindowOrientation:v15];

    [(SUUIStorePageSectionsViewController *)self->_sectionsViewController setMetricsController:self->_metricsController];
    v16 = self->_metricsController;
    v17 = [(SUUIStorePage *)self->_storePage metricsConfiguration];
    v18 = [v17 pingURLs];
    [(SUUIMetricsController *)v16 pingURLs:v18 withClientContext:self->_clientContext];

    v5 = v19;
  }
}

- (void)_setStorePage:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = [v6 productPage];
  if (v7)
  {
    v8 = [(SSVLoadURLOperation *)self->_loadOperation metricsPageEvent];
    [(SUUIStorePageViewController *)self _showProductPage:v7 withPageEvent:v8];
LABEL_10:

    goto LABEL_11;
  }

  v9 = [v6 pageType];
  v10 = [v9 isEqualToString:@"itml"];

  if (v10)
  {
    v8 = [(SUUIStorePageViewController *)self clientContext];
    v11 = [v6 ITMLData];
    v12 = [v6 ITMLResponse];
    [v8 sendOnPageResponseWithDocument:0 data:v11 URLResponse:v12 performanceMetrics:0];

LABEL_9:
    goto LABEL_10;
  }

  if (v6)
  {
    objc_storeStrong(&self->_storePage, a3);
    [(SUUIStorePageViewController *)self _reloadStorePage];
    v13 = [(SSVLoadURLOperation *)self->_loadOperation metricsPageEvent];
    v8 = v13;
    if (v13)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__SUUIStorePageViewController__setStorePage_error___block_invoke;
      block[3] = &unk_2798F5BC0;
      block[4] = self;
      v19 = v13;
      v20 = v6;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    metricsController = self->_metricsController;
    v15 = [(SUUIStorePage *)self->_storePage metricsConfiguration];
    v16 = [v15 pingURLs];
    [(SUUIMetricsController *)metricsController pingURLs:v16 withClientContext:self->_clientContext];

    [(SUUIStorePageViewController *)self _runPerformanceTestAfterPageLoad];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"SUUIApplicationPageDidDisplayNotification" object:self];
    goto LABEL_9;
  }

LABEL_11:
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;
}

- (void)_showProductPage:(id)a3 withPageEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 item];
  v9 = [v8 itemKind];

  if (SUUIItemKindIsSoftwareKind(v9) || v9 == 5)
  {
    v17 = [MEMORY[0x277D75418] currentDevice];
    v18 = [v17 userInterfaceIdiom];

    if (v18 == 1)
    {
      [(SUUIStorePageSectionsViewController *)self->_sectionsViewController showOverlayWithProductPage:v6 metricsPageEvent:v7];
    }

    else
    {
      v19 = [[SUUIIPhoneProductPageViewController alloc] initWithProductPage:v6];
      v20 = [(SUUIStorePageViewController *)self clientContext];
      [(SUUIViewController *)v19 setClientContext:v20];

      [(SUUIIPhoneProductPageViewController *)v19 configureMetricsWithPageEvent:v7];
      v21 = [(SUUIStorePageViewController *)self navigationController];
      v22 = [v21 viewControllers];
      v23 = [v22 mutableCopy];

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __62__SUUIStorePageViewController__showProductPage_withPageEvent___block_invoke_2;
      v26[3] = &unk_2798FC540;
      v26[4] = self;
      v24 = [v23 indexOfObjectPassingTest:v26];
      if (v24 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v23 addObject:v19];
      }

      else
      {
        [v23 replaceObjectAtIndex:v24 withObject:v19];
      }

      [v21 setViewControllers:v23 animated:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__SUUIStorePageViewController__showProductPage_withPageEvent___block_invoke_3;
      block[3] = &unk_2798F5BE8;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CDD3A8]);
    [v10 setAutomaticallyDismisses:1];
    v11 = objc_alloc(MEMORY[0x277CBEAC0]);
    v12 = MEMORY[0x277CCABB0];
    v13 = [v6 item];
    v14 = [v12 numberWithLongLong:{objc_msgSend(v13, "itemIdentifier")}];
    v15 = [v11 initWithObjectsAndKeys:{v14, @"id", 0}];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __62__SUUIStorePageViewController__showProductPage_withPageEvent___block_invoke;
    v27[3] = &unk_2798F6668;
    v28 = v10;
    v16 = v10;
    [v16 loadProductWithParameters:v15 completionBlock:v27];
    [(SUUIStorePageViewController *)self presentViewController:v16 animated:1 completion:0];
  }
}

uint64_t __62__SUUIStorePageViewController__showProductPage_withPageEvent___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

- (SUUIStorePageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end