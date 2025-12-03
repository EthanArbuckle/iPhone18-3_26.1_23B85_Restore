@interface SUUILegacyNativeViewController
- (SUUILegacyNativeViewController)initWithData:(id)data fromOperation:(id)operation;
- (id)_categoryController;
- (id)_storePageViewController;
- (void)_finishLoadWithResult:(BOOL)result error:(id)error;
- (void)_reloadNavigationItem;
- (void)categoryController:(id)controller didSelectCategory:(id)category;
- (void)dealloc;
- (void)loadView;
- (void)reloadData;
- (void)viewWillAppear:(BOOL)appear;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation SUUILegacyNativeViewController

- (SUUILegacyNativeViewController)initWithData:(id)data fromOperation:(id)operation
{
  dataCopy = data;
  operationCopy = operation;
  v14.receiver = self;
  v14.super_class = SUUILegacyNativeViewController;
  v9 = [(SUUILegacyNativeViewController *)&v14 init];
  if (v9)
  {
    uRLRequest = [operationCopy URLRequest];
    v11 = [uRLRequest URL];
    activeURL = v9->_activeURL;
    v9->_activeURL = v11;

    objc_storeStrong(&v9->_defaultURL, v9->_activeURL);
    objc_storeStrong(&v9->_initialData, data);
    objc_storeStrong(&v9->_initialOperation, operation);
  }

  return v9;
}

- (void)dealloc
{
  [(SUUICategoryController *)self->_categoryController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUILegacyNativeViewController;
  [(SUUIViewController *)&v3 dealloc];
}

- (void)reloadData
{
  if (self->_initialData)
  {
    objc_initWeak(&location, self);
    _storePageViewController = [(SUUILegacyNativeViewController *)self _storePageViewController];
    initialData = self->_initialData;
    initialOperation = self->_initialOperation;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __44__SUUILegacyNativeViewController_reloadData__block_invoke;
    v13[3] = &unk_2798F6AF8;
    objc_copyWeak(&v14, &location);
    [_storePageViewController loadWithJSONData:initialData fromOperation:initialOperation completionBlock:v13];

    v6 = self->_initialData;
    self->_initialData = 0;

    v7 = self->_initialOperation;
    self->_initialOperation = 0;

    v8 = &v14;
  }

  else
  {
    if (!self->_activeURL)
    {
      goto LABEL_6;
    }

    objc_initWeak(&location, self);
    _storePageViewController2 = [(SUUILegacyNativeViewController *)self _storePageViewController];
    activeURL = self->_activeURL;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__SUUILegacyNativeViewController_reloadData__block_invoke_3;
    v11[3] = &unk_2798F6AF8;
    objc_copyWeak(&v12, &location);
    [_storePageViewController2 loadURL:activeURL withCompletionBlock:v11];

    v8 = &v12;
  }

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
LABEL_6:
  if ([(SUUILegacyNativeViewController *)self isViewLoaded])
  {
    [(SUUILegacyNativeViewController *)self _reloadNavigationItem];
  }
}

void __44__SUUILegacyNativeViewController_reloadData__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SUUILegacyNativeViewController_reloadData__block_invoke_2;
  block[3] = &unk_2798F8C80;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __44__SUUILegacyNativeViewController_reloadData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishLoadWithResult:*(a1 + 48) error:*(a1 + 32)];
}

void __44__SUUILegacyNativeViewController_reloadData__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SUUILegacyNativeViewController_reloadData__block_invoke_4;
  block[3] = &unk_2798F8C80;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __44__SUUILegacyNativeViewController_reloadData__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishLoadWithResult:*(a1 + 48) error:*(a1 + 32)];
}

- (void)loadView
{
  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  _storePageViewController = [(SUUILegacyNativeViewController *)self _storePageViewController];
  view = [_storePageViewController view];

  [view bounds];
  [v5 setFrame:?];
  [view setAutoresizingMask:18];
  [v5 bounds];
  [view setFrame:?];
  [v5 addSubview:view];
  if (([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG] & 1) == 0)
  {
    [(SUUIViewController *)self showDefaultNavigationItems];
  }

  [(SUUILegacyNativeViewController *)self setView:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  storePage = [(SUUIStorePageViewController *)self->_storePageViewController storePage];
  if (storePage || -[SUUIStorePageViewController isSkLoading](self->_storePageViewController, "isSkLoading") || [MEMORY[0x277D75128] shouldMakeUIForDefaultPNG])
  {
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    launchedToTest = [mEMORY[0x277D75128] launchedToTest];

    if ((launchedToTest & 1) == 0)
    {
      [(SUUILegacyNativeViewController *)self reloadData];
    }
  }

  [(SUUILegacyNativeViewController *)self _reloadNavigationItem];
  v8.receiver = self;
  v8.super_class = SUUILegacyNativeViewController;
  [(SUUIViewController *)&v8 viewWillAppear:appearCopy];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(SUUICategoryController *)self->_categoryController dismiss];
    [(SUUILegacyNativeViewController *)self _reloadNavigationItem];
  }

  v9.receiver = self;
  v9.super_class = SUUILegacyNativeViewController;
  [(SUUIViewController *)&v9 willAnimateRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)categoryController:(id)controller didSelectCategory:(id)category
{
  categoryCopy = category;
  v6 = [categoryCopy URL];
  activeURL = self->_activeURL;
  self->_activeURL = v6;

  navigationItem = [(SUUILegacyNativeViewController *)self navigationItem];
  name = [categoryCopy name];

  [navigationItem setTitle:name];
  [(SUUIStorePageViewController *)self->_storePageViewController setStorePage:0];

  [(SUUILegacyNativeViewController *)self reloadData];
}

- (id)_categoryController
{
  categoryController = self->_categoryController;
  if (!categoryController)
  {
    v4 = [[SUUICategoryController alloc] initWithContentsController:self];
    v5 = self->_categoryController;
    self->_categoryController = v4;

    v6 = self->_categoryController;
    clientContext = [(SUUIViewController *)self clientContext];
    [(SUUICategoryController *)v6 setClientContext:clientContext];

    [(SUUICategoryController *)self->_categoryController setDelegate:self];
    v8 = self->_categoryController;
    operationQueue = [(SUUIViewController *)self operationQueue];
    [(SUUICategoryController *)v8 setOperationQueue:operationQueue];

    categoryController = self->_categoryController;
  }

  return categoryController;
}

- (void)_finishLoadWithResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  if (resultCopy)
  {
    _categoryController = [(SUUILegacyNativeViewController *)self _categoryController];
    category = [_categoryController category];

    if (!category)
    {
      storePage = [(SUUIStorePageViewController *)self->_storePageViewController storePage];
      v10 = [storePage valueForPageKey:@"categoryList"];
      v11 = [storePage valueForPageKey:@"categoryListUrl"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [[SUUICategory alloc] initWithCategoryDictionary:v10];
        [_categoryController setCategory:v12];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [_categoryController setCategory:0];
          objc_initWeak(&location, self);
          v13 = [MEMORY[0x277CBEBC0] URLWithString:v11];
          v16 = MEMORY[0x277D85DD0];
          v17 = 3221225472;
          v18 = __62__SUUILegacyNativeViewController__finishLoadWithResult_error___block_invoke;
          v19 = &unk_2798F6AF8;
          objc_copyWeak(&v20, &location);
          [_categoryController loadFromURL:v13 withCompletionBlock:&v16];

          objc_destroyWeak(&v20);
          objc_destroyWeak(&location);
        }
      }
    }

    v14 = [(SUUIStorePageViewController *)self->_storePageViewController storePage:v16];
    title = [v14 title];
    [(SUUILegacyNativeViewController *)self setTitle:title];

    [(SUUILegacyNativeViewController *)self _reloadNavigationItem];
  }

  if (errorCopy)
  {
    [(SUUIViewController *)self showError:errorCopy];
  }
}

void __62__SUUILegacyNativeViewController__finishLoadWithResult_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadNavigationItem];
}

- (void)_reloadNavigationItem
{
  navigationItem = [(SUUILegacyNativeViewController *)self navigationItem];
  [navigationItem setLeftItemsSupplementBackButton:1];
  [navigationItem setLeftBarButtonItem:0];
  [navigationItem setTitleView:0];
  _categoryController = [(SUUILegacyNativeViewController *)self _categoryController];
  category = [_categoryController category];
  children = [category children];
  v6 = [children count];

  if (v6)
  {
    clientContext = [(SUUIViewController *)self clientContext];
    v8 = SUUIUserInterfaceIdiom(clientContext);

    if (v8 == 1 && (-[SUUIStorePageViewController storePage](self->_storePageViewController, "storePage"), v9 = objc_claimAutoreleasedReturnValue(), [v9 valueForPageKey:@"categoryListUrl"], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      statusBarOrientation = [mEMORY[0x277D75128] statusBarOrientation];

      if ((statusBarOrientation - 1) < 2)
      {
        v14 = 4;
      }

      else
      {
        v14 = 5;
      }

      [_categoryController setSegmentedControlLength:v14];
      [_categoryController setDefaultURL:self->_defaultURL];
      [_categoryController setSelectedURL:self->_activeURL];
      segmentedControl = [_categoryController segmentedControl];
      [segmentedControl sizeToFit];
      [navigationItem setTitleView:segmentedControl];
    }

    else
    {
      [_categoryController setSelectedURL:self->_activeURL];
      [_categoryController setDefaultURL:self->_defaultURL];
      segmentedControl = [_categoryController categoryButton];
      [navigationItem setLeftBarButtonItem:segmentedControl];
    }
  }
}

- (id)_storePageViewController
{
  storePageViewController = self->_storePageViewController;
  if (!storePageViewController)
  {
    v4 = objc_alloc_init(SUUIStorePageViewController);
    v5 = self->_storePageViewController;
    self->_storePageViewController = v4;

    v6 = self->_storePageViewController;
    clientContext = [(SUUIViewController *)self clientContext];
    [(SUUIStorePageViewController *)v6 setClientContext:clientContext];

    [(SUUILegacyNativeViewController *)self addChildViewController:self->_storePageViewController];
    storePageViewController = self->_storePageViewController;
  }

  return storePageViewController;
}

@end