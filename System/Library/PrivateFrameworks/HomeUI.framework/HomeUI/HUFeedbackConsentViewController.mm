@interface HUFeedbackConsentViewController
- (HUFeedbackConsentViewController)initWithConsentDelegate:(id)a3;
- (WKWebView)consentView;
- (id)htmlString;
- (void)dealloc;
- (void)didAcceptConsent;
- (void)didDeclineConsent;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation HUFeedbackConsentViewController

- (HUFeedbackConsentViewController)initWithConsentDelegate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUFeedbackConsentViewController;
  v6 = [(HUFeedbackConsentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_consentDelegate, a3);
    [(HUFeedbackConsentViewController *)v7 setModalInPresentation:1];
  }

  return v7;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(HUFeedbackConsentViewController *)self setView:v4];

  v5 = [MEMORY[0x277D75348] systemBackgroundColor];
  v6 = [(HUFeedbackConsentViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [(HUFeedbackConsentViewController *)self view];
  v8 = [(HUFeedbackConsentViewController *)self consentView];
  [v7 addSubview:v8];

  v9 = [(HUFeedbackConsentViewController *)self consentView];
  [v9 addObserver:self forKeyPath:@"loading" options:1 context:HUFeedbackConsentViewControllerContext];

  [(HUFeedbackConsentViewController *)self setIsObservingConsentViewLoading:1];
}

- (void)viewDidLoad
{
  v21[3] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = HUFeedbackConsentViewController;
  [(HUFeedbackConsentViewController *)&v20 viewDidLoad];
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(HUFeedbackConsentViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackDisagreeTitle", @"HUCameraFeedbackDisagreeTitle", 1);
  v7 = [v5 initWithTitle:v6 style:0 target:self action:sel_didDeclineConsent];

  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  v9 = objc_alloc(MEMORY[0x277D751E0]);
  v10 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackAgreeTitle", @"HUCameraFeedbackAgreeTitle", 1);
  v11 = [v9 initWithTitle:v10 style:2 target:self action:sel_didAcceptConsent];

  v21[0] = v7;
  v21[1] = v8;
  v21[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  [(HUFeedbackConsentViewController *)self setToolbarItems:v12];
  v13 = [(HUFeedbackConsentViewController *)self navigationController];
  [v13 setToolbarHidden:0];

  v14 = objc_alloc(MEMORY[0x277D751E0]);
  v15 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackCancelTitle", @"HUCameraFeedbackCancelTitle", 1);
  v16 = [v14 initWithTitle:v15 style:0 target:self action:sel_didDeclineConsent];

  v17 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackConsentTitle", @"HUCameraFeedbackConsentTitle", 1);
  [(HUFeedbackConsentViewController *)self setTitle:v17];

  v18 = [(HUFeedbackConsentViewController *)self navigationItem];
  [v18 setLeftBarButtonItem:v16];

  v19 = [(HUFeedbackConsentViewController *)self view];
  [v19 setNeedsUpdateConstraints];
}

- (void)updateViewConstraints
{
  v29[4] = *MEMORY[0x277D85DE8];
  v3 = [(HUFeedbackConsentViewController *)self consentView];
  v4 = [v3 translatesAutoresizingMaskIntoConstraints];

  if (v4)
  {
    v5 = [(HUFeedbackConsentViewController *)self consentView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v27 = [(HUFeedbackConsentViewController *)self consentView];
    v25 = [v27 topAnchor];
    v26 = [(HUFeedbackConsentViewController *)self view];
    v23 = [v26 topAnchor];
    v24 = [(HUFeedbackConsentViewController *)self view];
    [v24 layoutMargins];
    v22 = [v25 constraintEqualToAnchor:v23 constant:?];
    v29[0] = v22;
    v21 = [(HUFeedbackConsentViewController *)self consentView];
    v19 = [v21 leadingAnchor];
    v20 = [(HUFeedbackConsentViewController *)self view];
    v18 = [v20 leadingAnchor];
    v17 = [v19 constraintEqualToAnchor:v18];
    v29[1] = v17;
    v16 = [(HUFeedbackConsentViewController *)self consentView];
    v6 = [v16 trailingAnchor];
    v7 = [(HUFeedbackConsentViewController *)self view];
    v8 = [v7 trailingAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];
    v29[2] = v9;
    v10 = [(HUFeedbackConsentViewController *)self consentView];
    v11 = [v10 bottomAnchor];
    v12 = [(HUFeedbackConsentViewController *)self view];
    v13 = [v12 bottomAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    v29[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v15];
  }

  v28.receiver = self;
  v28.super_class = HUFeedbackConsentViewController;
  [(HUFeedbackConsentViewController *)&v28 updateViewConstraints];
}

- (void)didAcceptConsent
{
  [MEMORY[0x277D14500] acceptEmployeeCameraFeedbackConsent];
  v3 = [(HUFeedbackConsentViewController *)self consentDelegate];
  [v3 consentController:self didFinishConsentWithAnswer:1];

  [(HUFeedbackConsentViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)didDeclineConsent
{
  v3 = [(HUFeedbackConsentViewController *)self consentDelegate];
  [v3 consentController:self didFinishConsentWithAnswer:0];

  [(HUFeedbackConsentViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (WKWebView)consentView
{
  consentView = self->_consentView;
  if (!consentView)
  {
    v4 = objc_alloc_init(MEMORY[0x277CE3858]);
    v5 = objc_alloc(MEMORY[0x277CE3850]);
    v6 = [(HUFeedbackConsentViewController *)self view];
    [v6 bounds];
    v7 = [v5 initWithFrame:v4 configuration:?];

    v8 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WKWebView *)v7 setBackgroundColor:v8];

    v9 = [(WKWebView *)v7 layer];
    [v9 setOpacity:0.0];

    v10 = [(HUFeedbackConsentViewController *)self htmlString];
    v11 = [(WKWebView *)v7 loadHTMLString:v10 baseURL:0];
    v12 = self->_consentView;
    self->_consentView = v7;

    consentView = self->_consentView;
  }

  return consentView;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqual:@"loading"] && HUFeedbackConsentViewControllerContext == a6)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __82__HUFeedbackConsentViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v14[3] = &unk_277DB8488;
    v14[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v14 animations:0.2];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HUFeedbackConsentViewController;
    [(HUFeedbackConsentViewController *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

void __82__HUFeedbackConsentViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) consentView];
  v1 = [v3 layer];
  LODWORD(v2) = 1.0;
  [v1 setOpacity:v2];
}

- (id)htmlString
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(HUFeedbackConsentViewController *)self consentFormFilePath];
  v4 = [v2 fileURLWithPath:v3 isDirectory:0];

  v9 = 0;
  v5 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v4 encoding:4 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v6;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "Unable to load consent form at url:%@ with err:%@", buf, 0x16u);
    }
  }

  return v5;
}

- (void)dealloc
{
  if ([(HUFeedbackConsentViewController *)self isObservingConsentViewLoading])
  {
    v3 = [(HUFeedbackConsentViewController *)self consentView];
    [v3 removeObserver:self forKeyPath:@"loading"];
  }

  v4.receiver = self;
  v4.super_class = HUFeedbackConsentViewController;
  [(HUFeedbackConsentViewController *)&v4 dealloc];
}

@end