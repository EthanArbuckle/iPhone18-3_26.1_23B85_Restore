@interface HUSoftwareUpdateLicenseViewController
- (HUSoftwareUpdateLicenseViewController)initWithDocument:(id)a3;
- (HUSoftwareUpdateLicenseViewController)initWithURL:(id)a3;
- (WKWebView)webView;
- (id)_evaluateHeight:(id)a3;
- (id)_initWithWebViewController:(id)a3;
- (id)hu_preloadContent;
- (id)loadLicense;
- (void)_agreeToTerms:(id)a3;
- (void)_disagreeToTerms:(id)a3;
- (void)_emailTermsAndConditions:(id)a3;
- (void)loadView;
- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation HUSoftwareUpdateLicenseViewController

- (HUSoftwareUpdateLicenseViewController)initWithURL:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateLicenseViewController.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v6 = [[HUWebViewController alloc] initWithURL:v5];
  v7 = [(HUSoftwareUpdateLicenseViewController *)self _initWithWebViewController:v6];

  return v7;
}

- (HUSoftwareUpdateLicenseViewController)initWithDocument:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateLicenseViewController.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"document"}];
  }

  v6 = [[HUWebViewController alloc] initWithDocument:v5];
  v7 = [(HUSoftwareUpdateLicenseViewController *)self _initWithWebViewController:v6];

  return v7;
}

- (id)_initWithWebViewController:(id)a3
{
  v5 = a3;
  v39.receiver = self;
  v39.super_class = HUSoftwareUpdateLicenseViewController;
  v6 = [(HUSoftwareUpdateLicenseViewController *)&v39 init];
  p_isa = &v6->super.super.super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_webViewController, a3);
    [p_isa[132] setShowsShareButton:0];
    v8 = [p_isa webViewController];
    [v8 setZoomEnabled:0];

    [p_isa addChildViewController:v5];
    [v5 didMoveToParentViewController:p_isa];
    v9 = [p_isa webView];
    [v9 setAutoresizingMask:18];

    v10 = [p_isa webView];
    [v10 setUIDelegate:p_isa];

    v11 = [p_isa webView];
    [v11 _setLayoutMode:4];

    v12 = [p_isa webView];
    v13 = [v12 scrollView];
    v14 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v13 setBackgroundColor:v14];

    v15 = [p_isa webView];
    v16 = [v15 scrollView];
    [v16 _setShowsBackgroundShadow:0];

    v17 = [p_isa webView];
    v18 = [v17 scrollView];
    [v18 setDecelerationRate:0.998];

    v19 = [p_isa webView];
    v20 = [v19 scrollView];
    [v20 setScrollEnabled:0];

    v21 = [p_isa webView];
    v22 = [v21 scrollView];
    [v22 setDelegate:p_isa];

    v23 = [MEMORY[0x277D75220] buttonWithType:1];
    v24 = p_isa[129];
    p_isa[129] = v23;

    v25 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [p_isa[129] setBackgroundColor:v25];

    v26 = p_isa[129];
    v27 = [MEMORY[0x277D75348] hf_keyColor];
    [v26 setTitleColor:v27 forState:0];

    v28 = p_isa[129];
    v29 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateLicenseViewControllerEmailButtonTitle", @"HUSoftwareUpdateLicenseViewControllerEmailButtonTitle", 1);
    [v28 setTitle:v29 forState:0];

    [p_isa[129] addTarget:p_isa action:sel__emailTermsAndConditions_ forControlEvents:64];
    if (([MEMORY[0x277CD6878] canSendMail] & 1) == 0)
    {
      [p_isa[129] setEnabled:0];
    }

    v30 = objc_opt_new();
    v31 = p_isa[128];
    p_isa[128] = v30;

    v32 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [p_isa[128] setBackgroundColor:v32];

    v33 = p_isa[128];
    v34 = [p_isa retainCopyOfTermsButton];
    [v33 addSubview:v34];

    v35 = p_isa[128];
    v36 = [p_isa webViewController];
    v37 = [v36 view];
    [v35 addSubview:v37];
  }

  return p_isa;
}

- (id)hu_preloadContent
{
  objc_initWeak(&location, self);
  v3 = [(HUSoftwareUpdateLicenseViewController *)self webViewController];
  v4 = [v3 hu_preloadContent];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HUSoftwareUpdateLicenseViewController_hu_preloadContent__block_invoke;
  v7[3] = &unk_277DBD948;
  objc_copyWeak(&v8, &location);
  v5 = [v4 flatMap:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

id __58__HUSoftwareUpdateLicenseViewController_hu_preloadContent__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained loadLicense];

  return v2;
}

- (void)loadView
{
  v3 = [(HUSoftwareUpdateLicenseViewController *)self scrollView];
  [(HUSoftwareUpdateLicenseViewController *)self setView:v3];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = HUSoftwareUpdateLicenseViewController;
  [(HUSoftwareUpdateLicenseViewController *)&v8 viewWillLayoutSubviews];
  v3 = [(HUSoftwareUpdateLicenseViewController *)self view];
  [v3 bounds];
  v5 = v4;

  v6 = [(HUSoftwareUpdateLicenseViewController *)self retainCopyOfTermsButton];
  [v6 sizeToFit];

  v7 = [(HUSoftwareUpdateLicenseViewController *)self retainCopyOfTermsButton];
  [v7 setFrame:{0.0, 32.0, v5, 38.0}];
}

- (void)viewDidLayoutSubviews
{
  v30.receiver = self;
  v30.super_class = HUSoftwareUpdateLicenseViewController;
  [(HUSoftwareUpdateLicenseViewController *)&v30 viewDidLayoutSubviews];
  v3 = [(HUSoftwareUpdateLicenseViewController *)self view];
  [v3 bounds];
  v5 = v4;

  v6 = [(HUSoftwareUpdateLicenseViewController *)self navigationController];
  v7 = [v6 toolbar];
  [v7 bounds];
  v9 = v8 + 32.0;

  v10 = [(HUSoftwareUpdateLicenseViewController *)self webViewController];
  v11 = [v10 view];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(HUSoftwareUpdateLicenseViewController *)self view];
  [v18 frame];
  v20 = v19;

  v21 = [(HUSoftwareUpdateLicenseViewController *)self webViewController];
  v22 = [v21 view];
  [v22 setFrame:{v13, v15, v20, v17}];

  v23 = [(HUSoftwareUpdateLicenseViewController *)self webView];
  v24 = [(HUSoftwareUpdateLicenseViewController *)self _evaluateHeight:v23];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __62__HUSoftwareUpdateLicenseViewController_viewDidLayoutSubviews__block_invoke;
  v29[3] = &unk_277DC4F20;
  v29[4] = self;
  *&v29[5] = v5;
  *&v29[6] = v9;
  v25 = [v24 addSuccessBlock:v29];

  v26 = [(HUSoftwareUpdateLicenseViewController *)self webView];
  [v26 frame];
  v27 = CGRectGetMaxY(v31) + 32.0;
  v28 = [(HUSoftwareUpdateLicenseViewController *)self scrollView];
  [v28 setContentSize:{v5, v27}];
}

void __62__HUSoftwareUpdateLicenseViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 retainCopyOfTermsButton];
  [v5 frame];
  v6 = CGRectGetMaxY(v18) + 32.0;
  v7 = *(a1 + 40);
  [v4 floatValue];
  v9 = v8;

  v10 = *(a1 + 48) + v9 + 10.0;
  v11 = [*(a1 + 32) webViewController];
  v12 = [v11 view];
  [v12 setFrame:{0.0, v6, v7, v10}];

  v13 = *(a1 + 40);
  v16 = [*(a1 + 32) webView];
  [v16 frame];
  v14 = CGRectGetMaxY(v19) + 32.0;
  v15 = [*(a1 + 32) scrollView];
  [v15 setContentSize:{v13, v14}];
}

- (void)viewDidLoad
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HUSoftwareUpdateLicenseViewController;
  [(HUSoftwareUpdateLicenseViewController *)&v12 viewDidLoad];
  v3 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateLicenseTitle", @"HUSoftwareUpdateLicenseTitle", 1);
  [(HUSoftwareUpdateLicenseViewController *)self setTitle:v3];

  v4 = objc_alloc(MEMORY[0x277D751E0]);
  v5 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateLicenseDisagreeButtonTitle", @"HUSoftwareUpdateLicenseDisagreeButtonTitle", 1);
  v6 = [v4 initWithTitle:v5 style:0 target:self action:sel__disagreeToTerms_];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  v8 = objc_alloc(MEMORY[0x277D751E0]);
  v9 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateLicenseAgreeButtonTitle", @"HUSoftwareUpdateLicenseAgreeButtonTitle", 1);
  v10 = [v8 initWithTitle:v9 style:2 target:self action:sel__agreeToTerms_];

  v13[0] = v6;
  v13[1] = v7;
  v13[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  [(HUSoftwareUpdateLicenseViewController *)self setToolbarItems:v11];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUSoftwareUpdateLicenseViewController;
  [(HUSoftwareUpdateLicenseViewController *)&v5 viewWillAppear:a3];
  v4 = [(HUSoftwareUpdateLicenseViewController *)self navigationController];
  [v4 setToolbarHidden:0];
}

- (id)loadLicense
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__HUSoftwareUpdateLicenseViewController_loadLicense__block_invoke;
  v4[3] = &unk_277DB7580;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] futureWithBlock:v4];

  return v2;
}

void __52__HUSoftwareUpdateLicenseViewController_loadLicense__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) webView];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HUSoftwareUpdateLicenseViewController_loadLicense__block_invoke_2;
  v6[3] = &unk_277DB7158;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 evaluateJavaScript:@"document.documentElement.outerHTML.toString()" completionHandler:v6];
}

void __52__HUSoftwareUpdateLicenseViewController_loadLicense__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v8 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [*(a1 + 32) setLicense:v5];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) license];
  [v6 finishWithResult:v7];
}

- (void)_agreeToTerms:(id)a3
{
  v5 = [(HUSoftwareUpdateLicenseViewController *)self agreeHandler];

  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateLicenseViewController.m" lineNumber:179 description:@"Agree handler must be set before presenting HUSoftwareUpdateLicenseViewController"];
  }

  v7 = [(HUSoftwareUpdateLicenseViewController *)self agreeHandler];
  v7[2]();
}

- (void)_disagreeToTerms:(id)a3
{
  v5 = [(HUSoftwareUpdateLicenseViewController *)self disagreeHandler];

  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateLicenseViewController.m" lineNumber:185 description:@"Disagree handler must be set before presenting HUSoftwareUpdateLicenseViewController"];
  }

  v7 = [(HUSoftwareUpdateLicenseViewController *)self disagreeHandler];
  v7[2]();
}

- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5
{
  v7 = a5;
  if (v7)
  {
    v6 = [MEMORY[0x277D14640] sharedHandler];
    [v6 handleError:v7];
  }

  else
  {
    [(HUSoftwareUpdateLicenseViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_emailTermsAndConditions:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CD6878]);
  v4 = [(HUSoftwareUpdateLicenseViewController *)self license];
  [v5 setMessageBody:v4 isHTML:1];

  [v5 setMailComposeDelegate:self];
  [(HUSoftwareUpdateLicenseViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (id)_evaluateHeight:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HUSoftwareUpdateLicenseViewController__evaluateHeight___block_invoke;
  v8[3] = &unk_277DB7580;
  v9 = v3;
  v5 = v3;
  v6 = [v4 futureWithBlock:v8];

  return v6;
}

void __57__HUSoftwareUpdateLicenseViewController__evaluateHeight___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HUSoftwareUpdateLicenseViewController__evaluateHeight___block_invoke_2;
  v6[3] = &unk_277DB7530;
  v7 = v3;
  v5 = v3;
  [v4 evaluateJavaScript:@"Math.max( document.body.scrollHeight completionHandler:{document.body.offsetHeight)", v6}];
}

void __57__HUSoftwareUpdateLicenseViewController__evaluateHeight___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_opt_class();
  v7 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v4 finishWithResult:v6];
}

- (WKWebView)webView
{
  v2 = [(HUSoftwareUpdateLicenseViewController *)self webViewController];
  v3 = [v2 webView];

  return v3;
}

@end