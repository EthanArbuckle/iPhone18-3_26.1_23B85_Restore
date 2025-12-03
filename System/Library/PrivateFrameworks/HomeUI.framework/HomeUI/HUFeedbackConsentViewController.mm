@interface HUFeedbackConsentViewController
- (HUFeedbackConsentViewController)initWithConsentDelegate:(id)delegate;
- (WKWebView)consentView;
- (id)htmlString;
- (void)dealloc;
- (void)didAcceptConsent;
- (void)didDeclineConsent;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation HUFeedbackConsentViewController

- (HUFeedbackConsentViewController)initWithConsentDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = HUFeedbackConsentViewController;
  v6 = [(HUFeedbackConsentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_consentDelegate, delegate);
    [(HUFeedbackConsentViewController *)v7 setModalInPresentation:1];
  }

  return v7;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(HUFeedbackConsentViewController *)self setView:v4];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(HUFeedbackConsentViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  view2 = [(HUFeedbackConsentViewController *)self view];
  consentView = [(HUFeedbackConsentViewController *)self consentView];
  [view2 addSubview:consentView];

  consentView2 = [(HUFeedbackConsentViewController *)self consentView];
  [consentView2 addObserver:self forKeyPath:@"loading" options:1 context:HUFeedbackConsentViewControllerContext];

  [(HUFeedbackConsentViewController *)self setIsObservingConsentViewLoading:1];
}

- (void)viewDidLoad
{
  v21[3] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = HUFeedbackConsentViewController;
  [(HUFeedbackConsentViewController *)&v20 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(HUFeedbackConsentViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

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
  navigationController = [(HUFeedbackConsentViewController *)self navigationController];
  [navigationController setToolbarHidden:0];

  v14 = objc_alloc(MEMORY[0x277D751E0]);
  v15 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackCancelTitle", @"HUCameraFeedbackCancelTitle", 1);
  v16 = [v14 initWithTitle:v15 style:0 target:self action:sel_didDeclineConsent];

  v17 = _HULocalizedStringWithDefaultValue(@"HUCameraFeedbackConsentTitle", @"HUCameraFeedbackConsentTitle", 1);
  [(HUFeedbackConsentViewController *)self setTitle:v17];

  navigationItem = [(HUFeedbackConsentViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v16];

  view2 = [(HUFeedbackConsentViewController *)self view];
  [view2 setNeedsUpdateConstraints];
}

- (void)updateViewConstraints
{
  v29[4] = *MEMORY[0x277D85DE8];
  consentView = [(HUFeedbackConsentViewController *)self consentView];
  translatesAutoresizingMaskIntoConstraints = [consentView translatesAutoresizingMaskIntoConstraints];

  if (translatesAutoresizingMaskIntoConstraints)
  {
    consentView2 = [(HUFeedbackConsentViewController *)self consentView];
    [consentView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    consentView3 = [(HUFeedbackConsentViewController *)self consentView];
    topAnchor = [consentView3 topAnchor];
    view = [(HUFeedbackConsentViewController *)self view];
    topAnchor2 = [view topAnchor];
    view2 = [(HUFeedbackConsentViewController *)self view];
    [view2 layoutMargins];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v29[0] = v22;
    consentView4 = [(HUFeedbackConsentViewController *)self consentView];
    leadingAnchor = [consentView4 leadingAnchor];
    view3 = [(HUFeedbackConsentViewController *)self view];
    leadingAnchor2 = [view3 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v29[1] = v17;
    consentView5 = [(HUFeedbackConsentViewController *)self consentView];
    trailingAnchor = [consentView5 trailingAnchor];
    view4 = [(HUFeedbackConsentViewController *)self view];
    trailingAnchor2 = [view4 trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v29[2] = v9;
    consentView6 = [(HUFeedbackConsentViewController *)self consentView];
    bottomAnchor = [consentView6 bottomAnchor];
    view5 = [(HUFeedbackConsentViewController *)self view];
    bottomAnchor2 = [view5 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
  consentDelegate = [(HUFeedbackConsentViewController *)self consentDelegate];
  [consentDelegate consentController:self didFinishConsentWithAnswer:1];

  [(HUFeedbackConsentViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)didDeclineConsent
{
  consentDelegate = [(HUFeedbackConsentViewController *)self consentDelegate];
  [consentDelegate consentController:self didFinishConsentWithAnswer:0];

  [(HUFeedbackConsentViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (WKWebView)consentView
{
  consentView = self->_consentView;
  if (!consentView)
  {
    v4 = objc_alloc_init(MEMORY[0x277CE3858]);
    v5 = objc_alloc(MEMORY[0x277CE3850]);
    view = [(HUFeedbackConsentViewController *)self view];
    [view bounds];
    v7 = [v5 initWithFrame:v4 configuration:?];

    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WKWebView *)v7 setBackgroundColor:systemBackgroundColor];

    layer = [(WKWebView *)v7 layer];
    [layer setOpacity:0.0];

    htmlString = [(HUFeedbackConsentViewController *)self htmlString];
    v11 = [(WKWebView *)v7 loadHTMLString:htmlString baseURL:0];
    v12 = self->_consentView;
    self->_consentView = v7;

    consentView = self->_consentView;
  }

  return consentView;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqual:@"loading"] && HUFeedbackConsentViewControllerContext == context)
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
    [(HUFeedbackConsentViewController *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
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
  consentFormFilePath = [(HUFeedbackConsentViewController *)self consentFormFilePath];
  v4 = [v2 fileURLWithPath:consentFormFilePath isDirectory:0];

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
    consentView = [(HUFeedbackConsentViewController *)self consentView];
    [consentView removeObserver:self forKeyPath:@"loading"];
  }

  v4.receiver = self;
  v4.super_class = HUFeedbackConsentViewController;
  [(HUFeedbackConsentViewController *)&v4 dealloc];
}

@end