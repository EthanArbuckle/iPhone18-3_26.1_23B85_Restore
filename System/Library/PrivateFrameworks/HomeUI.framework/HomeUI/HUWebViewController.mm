@interface HUWebViewController
- (BOOL)_shouldShare;
- (HUWebViewController)initWithDocument:(id)document;
- (HUWebViewController)initWithURL:(id)l;
- (id)_initWithDocument:(id)document orMaybeAURL:(id)l;
- (void)_share:(id)_share;
- (void)_startLoadWithDocument:(id)document orMaybeAURL:(id)l;
- (void)loadView;
- (void)setScrollEnabled:(BOOL)enabled;
- (void)setZoomEnabled:(BOOL)enabled;
- (void)viewWillAppear:(BOOL)appear;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation HUWebViewController

- (HUWebViewController)initWithURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUWebViewController.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v6 = [(HUWebViewController *)self _initWithDocument:0 orMaybeAURL:lCopy];

  return v6;
}

- (HUWebViewController)initWithDocument:(id)document
{
  documentCopy = document;
  if (!documentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUWebViewController.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"document"}];
  }

  v6 = [(HUWebViewController *)self _initWithDocument:documentCopy orMaybeAURL:0];

  return v6;
}

- (id)_initWithDocument:(id)document orMaybeAURL:(id)l
{
  documentCopy = document;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = HUWebViewController;
  v8 = [(HUWebViewController *)&v14 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CE3858]);
    [v9 setDataDetectorTypes:0];
    v10 = objc_opt_new();
    webView = v8->_webView;
    v8->_webView = v10;

    [(WKWebView *)v8->_webView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WKWebView *)v8->_webView setNavigationDelegate:v8];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WKWebView *)v8->_webView setBackgroundColor:systemBackgroundColor];

    [(HUWebViewController *)v8 _startLoadWithDocument:documentCopy orMaybeAURL:lCopy];
  }

  return v8;
}

- (void)_startLoadWithDocument:(id)document orMaybeAURL:(id)l
{
  documentCopy = document;
  lCopy = l;
  if (!self->_loadingFuture)
  {
    v9 = objc_opt_new();
    loadingFuture = self->_loadingFuture;
    self->_loadingFuture = v9;

    if (documentCopy)
    {
      objc_storeStrong(&self->_document, document);
      webView = [(HUWebViewController *)self webView];
      document = [(HUWebViewController *)self document];
      stringValue = [document stringValue];
      v14 = [webView loadHTMLString:stringValue baseURL:0];
    }

    else
    {
      if (!lCopy)
      {
LABEL_7:
        objc_initWeak(&location, self);
        mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __58__HUWebViewController__startLoadWithDocument_orMaybeAURL___block_invoke;
        v20[3] = &unk_277DB8770;
        objc_copyWeak(&v21, &location);
        v19 = [mainThreadScheduler afterDelay:v20 performBlock:3.0];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);
        goto LABEL_8;
      }

      v15 = [lCopy copy];
      URL = self->_URL;
      self->_URL = v15;

      webView = [(HUWebViewController *)self webView];
      document = [MEMORY[0x277CCAD20] requestWithURL:lCopy];
      v17 = [webView loadRequest:document];
    }

    goto LABEL_7;
  }

LABEL_8:
}

void __58__HUWebViewController__startLoadWithDocument_orMaybeAURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained loadingFuture];
  v2 = [v1 isFinished];

  if ((v2 & 1) == 0)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [WeakRetained document];
    [v3 na_safeSetObject:v4 forKey:@"document"];

    v5 = [WeakRetained URL];
    [v3 na_safeSetObject:v5 forKey:@"URL"];

    v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:26 operation:@"Loading software update license" options:v3];
    v7 = [MEMORY[0x277D14640] sharedHandler];
    [v7 logError:v6 operationDescription:0];

    v8 = [WeakRetained loadingFuture];
    [v8 finishWithError:v6];
  }
}

- (void)loadView
{
  v31[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(HUWebViewController *)self setView:v3];

  view = [(HUWebViewController *)self view];
  webView = [(HUWebViewController *)self webView];
  [view addSubview:webView];

  v20 = MEMORY[0x277CCAAD0];
  webView2 = [(HUWebViewController *)self webView];
  leadingAnchor = [webView2 leadingAnchor];
  view2 = [(HUWebViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[0] = v25;
  webView3 = [(HUWebViewController *)self webView];
  trailingAnchor = [webView3 trailingAnchor];
  view3 = [(HUWebViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v31[1] = v18;
  webView4 = [(HUWebViewController *)self webView];
  topAnchor = [webView4 topAnchor];
  view4 = [(HUWebViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[2] = v9;
  webView5 = [(HUWebViewController *)self webView];
  bottomAnchor = [webView5 bottomAnchor];
  view5 = [(HUWebViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v31[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v20 activateConstraints:v15];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = HUWebViewController;
  [(HUWebViewController *)&v10 viewWillAppear:appear];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  cGColor = [systemBackgroundColor CGColor];
  view = [(HUWebViewController *)self view];
  layer = [view layer];
  [layer setBackgroundColor:cGColor];

  if ([(HUWebViewController *)self _shouldShare])
  {
    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:self action:sel__share_];
    navigationItem = [(HUWebViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v8];
  }
}

- (void)setScrollEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_scrollEnabled = enabled;
  webView = [(HUWebViewController *)self webView];
  scrollView = [webView scrollView];
  [scrollView setScrollEnabled:enabledCopy];
}

- (void)setZoomEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_zoomEnabled = enabled;
  webView = [(HUWebViewController *)self webView];
  scrollView = [webView scrollView];
  [scrollView setZoomEnabled:enabledCopy];
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  if ([actionCopy navigationType])
  {
    v7 = 1;
  }

  else
  {
    mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
    request = [actionCopy request];
    v10 = [request URL];
    v11 = [mEMORY[0x277D148E8] openURL:v10];

    v7 = 0;
  }

  handlerCopy[2](handlerCopy, v7);
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  loadingFuture = [(HUWebViewController *)self loadingFuture];
  [loadingFuture finishWithError:errorCopy];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v6 pointSize];
  v8 = v7;

  [MEMORY[0x277D74300] defaultFontSize];
  v10 = v9;
  v11 = objc_opt_new();
  v12 = v11;
  if (v8 == v10)
  {
    [v11 finishWithNoResult];
  }

  else
  {
    v13 = v8 / v10 * 100.0;
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"document.getElementsByTagName('body')[0].style.webkitTextSizeAdjust='%f%%'", floorf(v13)];;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__HUWebViewController_webView_didFinishNavigation___block_invoke;
    v17[3] = &unk_277DB7530;
    v18 = v12;
    [viewCopy evaluateJavaScript:v14 completionHandler:v17];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__HUWebViewController_webView_didFinishNavigation___block_invoke_2;
  v16[3] = &unk_277DBA338;
  v16[4] = self;
  v15 = [v12 addSuccessBlock:v16];
}

void __51__HUWebViewController_webView_didFinishNavigation___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) loadingFuture];
  [v1 finishWithNoResult];
}

- (BOOL)_shouldShare
{
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    return 0;
  }

  document = [(HUWebViewController *)self document];
  if (document)
  {
    showsShareButton = [(HUWebViewController *)self showsShareButton];
  }

  else
  {
    showsShareButton = 0;
  }

  return showsShareButton;
}

- (void)_share:(id)_share
{
  v16[1] = *MEMORY[0x277D85DE8];
  if ([(HUWebViewController *)self _shouldShare])
  {
    v4 = objc_alloc(MEMORY[0x277D546D8]);
    document = [(HUWebViewController *)self document];
    attributedString = [document attributedString];
    v16[0] = attributedString;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v8 = [v4 initWithActivityItems:v7 applicationActivities:0];

    [v8 setExcludedActivityCategories:1];
    v9 = *MEMORY[0x277D54740];
    v15[0] = *MEMORY[0x277D54718];
    v15[1] = v9;
    v10 = *MEMORY[0x277D54780];
    v15[2] = *MEMORY[0x277D54708];
    v15[3] = v10;
    v15[4] = *MEMORY[0x277D54778];
    v15[5] = @"com.apple.mobilenotes.SharingExtension";
    v15[6] = @"com.apple.reminders.RemindersEditorExtension";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:7];
    [v8 setExcludedActivityTypes:v11];

    navigationItem = [(HUWebViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    popoverPresentationController = [v8 popoverPresentationController];
    [popoverPresentationController setBarButtonItem:rightBarButtonItem];

    [(HUWebViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

@end