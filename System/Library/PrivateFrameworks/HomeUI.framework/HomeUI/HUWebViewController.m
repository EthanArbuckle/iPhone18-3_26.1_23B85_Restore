@interface HUWebViewController
- (BOOL)_shouldShare;
- (HUWebViewController)initWithDocument:(id)a3;
- (HUWebViewController)initWithURL:(id)a3;
- (id)_initWithDocument:(id)a3 orMaybeAURL:(id)a4;
- (void)_share:(id)a3;
- (void)_startLoadWithDocument:(id)a3 orMaybeAURL:(id)a4;
- (void)loadView;
- (void)setScrollEnabled:(BOOL)a3;
- (void)setZoomEnabled:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation HUWebViewController

- (HUWebViewController)initWithURL:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HUWebViewController.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v6 = [(HUWebViewController *)self _initWithDocument:0 orMaybeAURL:v5];

  return v6;
}

- (HUWebViewController)initWithDocument:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HUWebViewController.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"document"}];
  }

  v6 = [(HUWebViewController *)self _initWithDocument:v5 orMaybeAURL:0];

  return v6;
}

- (id)_initWithDocument:(id)a3 orMaybeAURL:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v12 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WKWebView *)v8->_webView setBackgroundColor:v12];

    [(HUWebViewController *)v8 _startLoadWithDocument:v6 orMaybeAURL:v7];
  }

  return v8;
}

- (void)_startLoadWithDocument:(id)a3 orMaybeAURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!self->_loadingFuture)
  {
    v9 = objc_opt_new();
    loadingFuture = self->_loadingFuture;
    self->_loadingFuture = v9;

    if (v7)
    {
      objc_storeStrong(&self->_document, a3);
      v11 = [(HUWebViewController *)self webView];
      v12 = [(HUWebViewController *)self document];
      v13 = [v12 stringValue];
      v14 = [v11 loadHTMLString:v13 baseURL:0];
    }

    else
    {
      if (!v8)
      {
LABEL_7:
        objc_initWeak(&location, self);
        v18 = [MEMORY[0x277D2C938] mainThreadScheduler];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __58__HUWebViewController__startLoadWithDocument_orMaybeAURL___block_invoke;
        v20[3] = &unk_277DB8770;
        objc_copyWeak(&v21, &location);
        v19 = [v18 afterDelay:v20 performBlock:3.0];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);
        goto LABEL_8;
      }

      v15 = [v8 copy];
      URL = self->_URL;
      self->_URL = v15;

      v11 = [(HUWebViewController *)self webView];
      v12 = [MEMORY[0x277CCAD20] requestWithURL:v8];
      v17 = [v11 loadRequest:v12];
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

  v4 = [(HUWebViewController *)self view];
  v5 = [(HUWebViewController *)self webView];
  [v4 addSubview:v5];

  v20 = MEMORY[0x277CCAAD0];
  v30 = [(HUWebViewController *)self webView];
  v28 = [v30 leadingAnchor];
  v29 = [(HUWebViewController *)self view];
  v27 = [v29 safeAreaLayoutGuide];
  v26 = [v27 leadingAnchor];
  v25 = [v28 constraintEqualToAnchor:v26];
  v31[0] = v25;
  v24 = [(HUWebViewController *)self webView];
  v22 = [v24 trailingAnchor];
  v23 = [(HUWebViewController *)self view];
  v21 = [v23 safeAreaLayoutGuide];
  v19 = [v21 trailingAnchor];
  v18 = [v22 constraintEqualToAnchor:v19];
  v31[1] = v18;
  v17 = [(HUWebViewController *)self webView];
  v16 = [v17 topAnchor];
  v6 = [(HUWebViewController *)self view];
  v7 = [v6 safeAreaLayoutGuide];
  v8 = [v7 topAnchor];
  v9 = [v16 constraintEqualToAnchor:v8];
  v31[2] = v9;
  v10 = [(HUWebViewController *)self webView];
  v11 = [v10 bottomAnchor];
  v12 = [(HUWebViewController *)self view];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v31[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v20 activateConstraints:v15];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = HUWebViewController;
  [(HUWebViewController *)&v10 viewWillAppear:a3];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  v5 = [v4 CGColor];
  v6 = [(HUWebViewController *)self view];
  v7 = [v6 layer];
  [v7 setBackgroundColor:v5];

  if ([(HUWebViewController *)self _shouldShare])
  {
    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:self action:sel__share_];
    v9 = [(HUWebViewController *)self navigationItem];
    [v9 setRightBarButtonItem:v8];
  }
}

- (void)setScrollEnabled:(BOOL)a3
{
  v3 = a3;
  self->_scrollEnabled = a3;
  v5 = [(HUWebViewController *)self webView];
  v4 = [v5 scrollView];
  [v4 setScrollEnabled:v3];
}

- (void)setZoomEnabled:(BOOL)a3
{
  v3 = a3;
  self->_zoomEnabled = a3;
  v5 = [(HUWebViewController *)self webView];
  v4 = [v5 scrollView];
  [v4 setZoomEnabled:v3];
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v12 = a4;
  v6 = a5;
  if ([v12 navigationType])
  {
    v7 = 1;
  }

  else
  {
    v8 = [MEMORY[0x277D148E8] sharedInstance];
    v9 = [v12 request];
    v10 = [v9 URL];
    v11 = [v8 openURL:v10];

    v7 = 0;
  }

  v6[2](v6, v7);
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v6 = a5;
  v7 = [(HUWebViewController *)self loadingFuture];
  [v7 finishWithError:v6];
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v5 = a3;
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
    [v5 evaluateJavaScript:v14 completionHandler:v17];
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

  v4 = [(HUWebViewController *)self document];
  if (v4)
  {
    v3 = [(HUWebViewController *)self showsShareButton];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_share:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  if ([(HUWebViewController *)self _shouldShare])
  {
    v4 = objc_alloc(MEMORY[0x277D546D8]);
    v5 = [(HUWebViewController *)self document];
    v6 = [v5 attributedString];
    v16[0] = v6;
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

    v12 = [(HUWebViewController *)self navigationItem];
    v13 = [v12 rightBarButtonItem];
    v14 = [v8 popoverPresentationController];
    [v14 setBarButtonItem:v13];

    [(HUWebViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

@end