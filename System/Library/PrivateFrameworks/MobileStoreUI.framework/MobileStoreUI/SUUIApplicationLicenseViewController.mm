@interface SUUIApplicationLicenseViewController
- (SUUIApplicationLicenseViewController)initWithLicenseAgreementPage:(id)page;
- (SUUIApplicationLicenseViewController)initWithLicenseAgreementURL:(id)l;
- (void)_displayPage:(id)page error:(id)error;
- (void)loadView;
- (void)reloadData;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SUUIApplicationLicenseViewController

- (SUUIApplicationLicenseViewController)initWithLicenseAgreementPage:(id)page
{
  pageCopy = page;
  v9.receiver = self;
  v9.super_class = SUUIApplicationLicenseViewController;
  v5 = [(SUUIApplicationLicenseViewController *)&v9 init];
  if (v5)
  {
    v6 = [pageCopy copy];
    licensePage = v5->_licensePage;
    v5->_licensePage = v6;
  }

  return v5;
}

- (SUUIApplicationLicenseViewController)initWithLicenseAgreementURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = SUUIApplicationLicenseViewController;
  v5 = [(SUUIApplicationLicenseViewController *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (void)reloadData
{
  if (!self->_licensePage && !self->_loadOperation)
  {
    if (self->_url)
    {
      v3 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:self->_url];
      loadOperation = self->_loadOperation;
      self->_loadOperation = v3;

      v5 = self->_loadOperation;
      v6 = +[(SSVURLDataConsumer *)SUUIApplicationLicenseDataConsumer];
      [(SSVLoadURLOperation *)v5 setDataConsumer:v6];

      v7 = self->_loadOperation;
      clientContext = [(SUUIViewController *)self clientContext];
      v9 = [clientContext valueForConfigurationKey:@"sfsuffix"];
      [(SSVLoadURLOperation *)v7 setStoreFrontSuffix:v9];

      objc_initWeak(&location, self);
      v10 = self->_loadOperation;
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __50__SUUIApplicationLicenseViewController_reloadData__block_invoke;
      v15 = &unk_2798F6AD0;
      objc_copyWeak(&v16, &location);
      [(SSVLoadURLOperation *)v10 setOutputBlock:&v12];
      v11 = [(SUUIViewController *)self operationQueue:v12];
      [v11 addOperation:self->_loadOperation];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }
}

void __50__SUUIApplicationLicenseViewController_reloadData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUUIApplicationLicenseViewController_reloadData__block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __50__SUUIApplicationLicenseViewController_reloadData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _displayPage:*(a1 + 32) error:*(a1 + 40)];
}

- (void)loadView
{
  webView = self->_webView;
  if (!webView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D88]);
    v5 = self->_webView;
    self->_webView = v4;

    v6 = self->_webView;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UIWebView *)v6 setBackgroundColor:whiteColor];

    scrollView = [(UIWebView *)self->_webView scrollView];
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [scrollView setBackgroundColor:whiteColor2];

    licensePage = self->_licensePage;
    webView = self->_webView;
    if (licensePage)
    {
      licenseAgreementHTML = [(SUUIApplicationLicensePage *)licensePage licenseAgreementHTML];
      [(UIWebView *)webView loadHTMLString:licenseAgreementHTML baseURL:0];

      webView = self->_webView;
    }
  }

  [(SUUIApplicationLicenseViewController *)self setView:webView];

  [(SUUIViewController *)self showDefaultNavigationItems];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SUUIApplicationLicenseViewController *)self reloadData];
  v5.receiver = self;
  v5.super_class = SUUIApplicationLicenseViewController;
  [(SUUIViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)_displayPage:(id)page error:(id)error
{
  pageCopy = page;
  errorCopy = error;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;

  if (errorCopy)
  {
    [(SUUIViewController *)self showError:errorCopy];
  }

  else
  {
    objc_storeStrong(&self->_licensePage, page);
    webView = self->_webView;
    if (webView)
    {
      licenseAgreementHTML = [(SUUIApplicationLicensePage *)self->_licensePage licenseAgreementHTML];
      [(UIWebView *)webView loadHTMLString:licenseAgreementHTML baseURL:0];
    }

    title = [(SUUIApplicationLicensePage *)self->_licensePage title];
    [(SUUIApplicationLicenseViewController *)self setTitle:title];
  }
}

@end