@interface DDRemoteActionManagerViewController
- (DDRemoteAction)action;
- (DDRemoteActionManagerViewController)initWithAction:(id)a3;
- (id)controllerVerticalMargin;
- (id)doneButton;
- (id)emptyViewcontroller;
- (void)DDRemoteActionDidTerminateWithError:(id)a3;
- (void)addHitOverlay;
- (void)dealloc;
- (void)dismissViewController;
- (void)loadNavigationControllerIfNeeded;
- (void)loadRemoteAction;
- (void)loadTitleBarIfNeeded;
- (void)presentRemoteViewController;
- (void)removeLoadingViewToShowView:(id)a3;
- (void)setPreviewMode:(BOOL)a3;
- (void)showErrorView;
- (void)showLoadingView;
- (void)showRemoteController;
- (void)unloadRemoteAction;
- (void)updatePreviewMode;
@end

@implementation DDRemoteActionManagerViewController

- (void)dealloc
{
  [(DDRemoteActionManagerViewController *)self unloadRemoteAction];
  v3.receiver = self;
  v3.super_class = DDRemoteActionManagerViewController;
  [(DDRemoteActionManagerViewController *)&v3 dealloc];
}

- (DDRemoteActionManagerViewController)initWithAction:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = DDRemoteActionManagerViewController;
  v5 = [(DDRemoteActionManagerViewController *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x277D75348] systemBackgroundColor];
    v7 = [(DDRemoteActionManagerViewController *)v5 view];
    [v7 setBackgroundColor:v6];

    [(DDRemoteActionManagerViewController *)v5 setAction:v4];
    LOBYTE(v6) = [v4 menuHeaderReplacesPreview];
    v5->_menuHeaderReplacesPreview = v6;
    if (v6)
    {
      objc_storeStrong(&v5->_platterTitle, 0);
    }

    else
    {
      v8 = [v4 platterTitle];
      objc_storeStrong(&v5->_platterTitle, v8);
    }

    v9 = [(DDRemoteActionManagerViewController *)v5 action];
    [v9 suggestedContentSize];
    v5->_preferredContentSize.width = v10;
    v5->_preferredContentSize.height = v11;

    [(DDRemoteActionManagerViewController *)v5 loadNavigationControllerIfNeeded];
    [(DDRemoteActionManagerViewController *)v5 addHitOverlay];
    [(DDRemoteActionManagerViewController *)v5 loadTitleBarIfNeeded];
    [(DDRemoteActionManagerViewController *)v5 loadRemoteAction];
    v5->_previewMode = 1;
    [(DDRemoteActionManagerViewController *)v5 updatePreviewMode];
    v5->_loaded = 0;
    v12 = dispatch_time(0, 800000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__DDRemoteActionManagerViewController_initWithAction___block_invoke;
    block[3] = &unk_278290B50;
    v13 = v5;
    v17 = v13;
    dispatch_after(v12, MEMORY[0x277D85CD0], block);
    v14 = v13;
  }

  return v5;
}

uint64_t __54__DDRemoteActionManagerViewController_initWithAction___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + 1072) & 1) == 0 && !*(result + 1016))
  {
    return [result showLoadingView];
  }

  return result;
}

- (id)doneButton
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissViewController];

  return v2;
}

- (id)emptyViewcontroller
{
  v3 = objc_opt_new();
  [v3 setTitle:self->_platterTitle];
  v4 = [(DDRemoteActionManagerViewController *)self doneButton];
  v5 = [v3 navigationItem];
  [v5 setRightBarButtonItem:v4];

  return v3;
}

- (void)loadNavigationControllerIfNeeded
{
  v30[1] = *MEMORY[0x277D85DE8];
  if (!self->_menuHeaderReplacesPreview)
  {
    v3 = [(DDRemoteActionManagerViewController *)self action];
    v4 = [v3 wantsSeamlessCommit];

    if (v4)
    {
      v5 = objc_alloc(MEMORY[0x277D757A0]);
      v6 = [(DDRemoteActionManagerViewController *)self emptyViewcontroller];
      v7 = [v5 initWithRootViewController:v6];
      navigationController = self->_navigationController;
      self->_navigationController = v7;

      v9 = [(UINavigationController *)self->_navigationController view];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

      [(DDRemoteActionManagerViewController *)self addChildViewController:self->_navigationController];
      v10 = [(DDRemoteActionManagerViewController *)self view];
      v11 = [(UINavigationController *)self->_navigationController view];
      [v10 addSubview:v11];

      v12 = [(DDRemoteActionManagerViewController *)self view];
      v13 = MEMORY[0x277CCAAD0];
      v29 = @"nc";
      v14 = [(UINavigationController *)self->_navigationController view];
      v30[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v16 = [v13 constraintsWithVisualFormat:@"H:|[nc]|" options:0 metrics:0 views:v15];
      [v12 addConstraints:v16];

      v17 = [(UINavigationController *)self->_navigationController view];
      v18 = [v17 topAnchor];
      v19 = [(DDRemoteActionManagerViewController *)self view];
      v20 = [v19 topAnchor];
      v21 = [v18 constraintEqualToAnchor:v20];
      navControllerTopConstraint = self->_navControllerTopConstraint;
      self->_navControllerTopConstraint = v21;

      v23 = [(UINavigationController *)self->_navigationController view];
      v24 = [v23 bottomAnchor];
      v25 = [(DDRemoteActionManagerViewController *)self view];
      v26 = [v25 bottomAnchor];
      v27 = [v24 constraintEqualToAnchor:v26];
      [v27 setActive:1];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)dismissViewController
{
  [(DDRemoteActionManagerViewController *)self dismissViewControllerAnimated:1 completion:0];
  strongSelf = self->_strongSelf;
  self->_strongSelf = 0;
}

- (void)loadTitleBarIfNeeded
{
  v41[1] = *MEMORY[0x277D85DE8];
  if (!self->_menuHeaderReplacesPreview && !self->_titleBar && self->_platterTitle)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    titleBar = self->_titleBar;
    self->_titleBar = v3;

    v5 = [(DDRemoteActionManagerViewController *)self view];
    [v5 addSubview:self->_titleBar];

    [(UIView *)self->_titleBar setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(DDRemoteActionManagerViewController *)self view];
    v7 = MEMORY[0x277CCAAD0];
    v8 = self->_titleBar;
    v40 = @"bar";
    v41[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v10 = [v7 constraintsWithVisualFormat:@"H:|[bar]|" options:0 metrics:0 views:v9];
    [v6 addConstraints:v10];

    v11 = [(DDRemoteActionManagerViewController *)self view];
    v12 = MEMORY[0x277CCAAD0];
    v13 = self->_titleBar;
    v38 = @"bar";
    v39 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v15 = [v12 constraintsWithVisualFormat:@"V:|[bar(46)]" options:0 metrics:0 views:v14];
    [v11 addConstraints:v15];

    v16 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIView *)self->_titleBar setBackgroundColor:v16];

    v17 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(UIView *)self->_titleBar addSubview:v17];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = self->_titleBar;
    v19 = MEMORY[0x277CCAAD0];
    v36 = @"line";
    v37 = v17;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v21 = [v19 constraintsWithVisualFormat:@"H:|[line]|" options:0 metrics:0 views:v20];
    [(UIView *)v18 addConstraints:v21];

    v22 = self->_titleBar;
    v23 = MEMORY[0x277CCAAD0];
    v34 = @"line";
    v35 = v17;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v25 = [v23 constraintsWithVisualFormat:@"V:[line(1)]|" options:0 metrics:0 views:v24];
    [(UIView *)v22 addConstraints:v25];

    v26 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [v17 setBackgroundColor:v26];

    v27 = objc_opt_new();
    [(UIView *)self->_titleBar addSubview:v27];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = [MEMORY[0x277CCAAD0] constraintWithItem:v27 attribute:9 relatedBy:0 toItem:self->_titleBar attribute:9 multiplier:1.0 constant:0.0];
    [v28 setActive:1];

    v29 = [MEMORY[0x277CCAAD0] constraintWithItem:v27 attribute:7 relatedBy:0 toItem:self->_titleBar attribute:7 multiplier:1.0 constant:-10.0];
    [v29 setActive:1];

    v30 = [MEMORY[0x277CCAAD0] constraintWithItem:v27 attribute:10 relatedBy:0 toItem:self->_titleBar attribute:10 multiplier:1.0 constant:0.0];
    [v30 setActive:1];

    v31 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74420]];
    [v27 setFont:v31];

    v32 = [MEMORY[0x277D75348] labelColor];
    [v27 setTextColor:v32];

    [v27 setTextAlignment:1];
    [v27 setLineBreakMode:4];
    [v27 setText:self->_platterTitle];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)loadRemoteAction
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Fail to get DataDetectorsUI ActionsExtension (error %@)", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __55__DDRemoteActionManagerViewController_loadRemoteAction__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = WeakRetained;
  if (v9 || !WeakRetained)
  {
    [WeakRetained showErrorView];
  }

  else
  {
    [WeakRetained setRequest:v7];
    [v11 setExtension:*(a1 + 32)];
    v12 = v8;
    objc_storeStrong(v11 + 124, a3);
    [v12 setDelegate:v11];
    v13 = [*(a1 + 32) _extensionContextForUUID:v7];
    objc_storeStrong(v11 + 125, v13);
    [v13 enableUserInteraction:{objc_msgSend(v11, "previewMode") ^ 1}];
    v14 = *(a1 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__DDRemoteActionManagerViewController_loadRemoteAction__block_invoke_2;
    v15[3] = &unk_278290B78;
    objc_copyWeak(&v16, (a1 + 48));
    [v13 prepareViewControllerWithContext:v14 completionHandler:v15];
    objc_destroyWeak(&v16);
  }
}

void __55__DDRemoteActionManagerViewController_loadRemoteAction__block_invoke_2(uint64_t a1, int a2, double a3, double a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (a2 && WeakRetained)
  {
    *(WeakRetained + 1072) = 1;
    *(WeakRetained + 136) = a3;
    *(WeakRetained + 137) = a4;
    [WeakRetained setPreferredContentSize:{a3, a4}];
    [v8 showRemoteController];
  }

  else
  {
    [WeakRetained showErrorView];
  }
}

- (void)showRemoteController
{
  if (self->_loaded && !self->_displayed && !self->_shouldDeferPresenting)
  {
    self->_displayed = 1;
    [(DDRemoteActionManagerViewController *)self updatePreviewMode];
    navigationController = self->_navigationController;
    if (!navigationController)
    {
      navigationController = self->_remoteViewController;
    }

    v5 = [navigationController view];
    [(DDRemoteActionManagerViewController *)self removeLoadingViewToShowView:v5];
  }
}

- (void)presentRemoteViewController
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (!self->_navigationController)
  {
    [(DDRemoteActionManagerViewController *)self addChildViewController:self->_remoteViewController];
    v13 = [(DDRemoteActionManagerViewController *)self view];
    v14 = [(DDRemoteActionHostViewController *)self->_remoteViewController view];
    [v13 insertSubview:v14 below:self->_hitView];

    v15 = [(DDRemoteActionHostViewController *)self->_remoteViewController view];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(DDRemoteActionManagerViewController *)self view];
    v17 = MEMORY[0x277CCAAD0];
    v29 = @"vc";
    v18 = [(DDRemoteActionHostViewController *)self->_remoteViewController view];
    v30 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v20 = [v17 constraintsWithVisualFormat:@"H:|[vc]|" options:0 metrics:0 views:v19];
    [v16 addConstraints:v20];

    if ([(DDRemoteActionManagerViewController *)self previewMode]&& self->_titleBar)
    {
      v8 = [(DDRemoteActionManagerViewController *)self view];
      titleBar = self->_titleBar;
      v22 = MEMORY[0x277CCAAD0];
      v27[1] = @"vc";
      v28[0] = titleBar;
      v27[0] = @"titleBar";
      v9 = [(DDRemoteActionHostViewController *)self->_remoteViewController view];
      v28[1] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
      v23 = @"V:[titleBar][vc]|";
    }

    else
    {
      v8 = [(DDRemoteActionManagerViewController *)self view];
      v22 = MEMORY[0x277CCAAD0];
      v9 = [(DDRemoteActionHostViewController *)self->_remoteViewController view];
      v26 = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v23 = @"V:|[vc]|";
    }

    v12 = [v22 constraintsWithVisualFormat:v23 options:0 metrics:0 views:v10];
    [v8 addConstraints:v12];
    goto LABEL_11;
  }

  v3 = [(DDRemoteActionManagerViewController *)self doneButton];
  v4 = [(DDRemoteActionHostViewController *)self->_remoteViewController navigationItem];
  [v4 setRightBarButtonItem:v3];

  [(DDRemoteActionHostViewController *)self->_remoteViewController setTitle:self->_platterTitle];
  navigationController = self->_navigationController;
  v31[0] = self->_remoteViewController;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [(UINavigationController *)navigationController setViewControllers:v6];

  if (self->_titleBar)
  {
    titleBarBottomConstraint = self->_titleBarBottomConstraint;
    if (titleBarBottomConstraint)
    {
      [(NSLayoutConstraint *)titleBarBottomConstraint setActive:0];
    }

    v8 = [(UINavigationController *)self->_navigationController view];
    v9 = [v8 topAnchor];
    v10 = [(UIView *)self->_titleBar bottomAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v12 = self->_titleBarBottomConstraint;
    self->_titleBarBottomConstraint = v11;
LABEL_11:
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)addHitOverlay
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (!self->_hitView)
  {
    v3 = objc_opt_new();
    hitView = self->_hitView;
    self->_hitView = v3;

    [(UIView *)self->_hitView setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(DDRemoteActionManagerViewController *)self view];
    [v5 addSubview:self->_hitView];

    v6 = [(UIView *)self->_hitView layer];
    [v6 setHitTestsAsOpaque:1];

    v7 = [(DDRemoteActionManagerViewController *)self view];
    v8 = MEMORY[0x277CCAAD0];
    v9 = self->_hitView;
    v20 = @"hitView";
    v21[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v11 = [v8 constraintsWithVisualFormat:@"H:|[hitView]|" options:0 metrics:0 views:v10];
    [v7 addConstraints:v11];

    v12 = [(DDRemoteActionManagerViewController *)self view];
    v13 = MEMORY[0x277CCAAD0];
    v14 = self->_hitView;
    v18 = @"hitView";
    v19 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v16 = [v13 constraintsWithVisualFormat:@"V:|[hitView]|" options:0 metrics:0 views:v15];
    [v12 addConstraints:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updatePreviewMode
{
  serviceContext = self->_serviceContext;
  if (serviceContext)
  {
    [(DDRemoteActionViewServiceProtocol *)serviceContext enableUserInteraction:!self->_previewMode];
  }

  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    v5 = [(DDRemoteActionHostViewController *)remoteViewController parentViewController];

    if (v5)
    {
      [(DDRemoteActionHostViewController *)self->_remoteViewController removeFromParentViewController];
      v6 = [(DDRemoteActionHostViewController *)self->_remoteViewController view];
      [v6 removeFromSuperview];
    }

    [(DDRemoteActionManagerViewController *)self presentRemoteViewController];
  }

  navigationController = self->_navigationController;
  if (navigationController)
  {
    [(UINavigationController *)navigationController setNavigationBarHidden:self->_previewMode];
  }

  [(UIView *)self->_titleBar setHidden:!self->_previewMode];
  [(UIView *)self->_hitView setHidden:!self->_previewMode];
  [(NSLayoutConstraint *)self->_titleBarBottomConstraint setActive:self->_previewMode];
  [(NSLayoutConstraint *)self->_navControllerTopConstraint setActive:!self->_previewMode];
  if (self->_previewMode)
  {
    v8 = 0;
  }

  else
  {
    v8 = self;
  }

  objc_storeStrong(&self->_strongSelf, v8);
}

- (void)setPreviewMode:(BOOL)a3
{
  if (self->_previewMode != a3)
  {
    self->_previewMode = a3;
    [(DDRemoteActionManagerViewController *)self updatePreviewMode];
  }
}

- (void)unloadRemoteAction
{
  v3 = [(DDRemoteActionManagerViewController *)self request];

  if (v3)
  {
    v4 = [(DDRemoteActionManagerViewController *)self extension];
    v5 = [(DDRemoteActionManagerViewController *)self request];
    [v4 cancelExtensionRequestWithIdentifier:v5];

    [(DDRemoteActionManagerViewController *)self setRequest:0];
  }
}

- (id)controllerVerticalMargin
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 statusBarFrame];
  v5 = v4;
  v7 = v6;

  v8 = fmin(v5, v7);
  v9 = [(UINavigationController *)self->_navigationController navigationBar];
  [v9 size];
  v11 = v10;

  v12 = MEMORY[0x277CCABB0];

  return [v12 numberWithDouble:v11 + v8];
}

- (void)showLoadingView
{
  v49[1] = *MEMORY[0x277D85DE8];
  if (!self->_loadingView)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    loadingDate = self->_loadingDate;
    self->_loadingDate = v3;

    v5 = objc_opt_new();
    loadingView = self->_loadingView;
    self->_loadingView = v5;

    v7 = [(DDRemoteActionManagerViewController *)self view];
    [v7 addSubview:self->_loadingView];

    [(UIView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(DDRemoteActionManagerViewController *)self view];
    v9 = MEMORY[0x277CCAAD0];
    v10 = self->_loadingView;
    v48 = @"lv";
    v49[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v12 = [v9 constraintsWithVisualFormat:@"H:|[lv]|" options:0 metrics:0 views:v11];
    [v8 addConstraints:v12];

    v13 = [(DDRemoteActionManagerViewController *)self view];
    v14 = MEMORY[0x277CCAAD0];
    v46 = @"margin";
    v15 = [(DDRemoteActionManagerViewController *)self controllerVerticalMargin];
    v47 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v17 = self->_loadingView;
    v44 = @"lv";
    v45 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v19 = [v14 constraintsWithVisualFormat:@"V:|-(margin)-[lv]|" options:0 metrics:v16 views:v18];
    [v13 addConstraints:v19];

    v20 = [objc_alloc(MEMORY[0x277D750E8]) initWithFrame:{135.0, 140.0, 50.0, 50.0}];
    [(UIView *)self->_loadingView addSubview:v20];
    [v20 setActivityIndicatorViewStyle:100];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [MEMORY[0x277CCAAD0] constraintWithItem:v20 attribute:9 relatedBy:0 toItem:self->_loadingView attribute:9 multiplier:1.0 constant:0.0];
    [v21 setActive:1];

    v22 = [MEMORY[0x277CCAAD0] constraintWithItem:v20 attribute:10 relatedBy:0 toItem:self->_loadingView attribute:10 multiplier:1.0 constant:-23.0];
    [v22 setActive:1];

    [v20 startAnimating];
    v23 = objc_opt_new();
    [(UIView *)self->_loadingView addSubview:v23];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [MEMORY[0x277CCAAD0] constraintWithItem:v23 attribute:9 relatedBy:0 toItem:self->_loadingView attribute:9 multiplier:1.0 constant:0.0];
    [v24 setActive:1];

    v25 = [MEMORY[0x277CCAAD0] constraintWithItem:v23 attribute:3 relatedBy:0 toItem:v20 attribute:3 multiplier:1.0 constant:30.0];
    [v25 setActive:1];

    v26 = *MEMORY[0x277D74388];
    v41[0] = *MEMORY[0x277D74398];
    v41[1] = v26;
    v42[0] = &unk_282C2BC68;
    v42[1] = &unk_282C2BC80;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
    v43 = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];

    v29 = *MEMORY[0x277D74338];
    v40[0] = v28;
    v30 = *MEMORY[0x277D74340];
    v39[0] = v29;
    v39[1] = v30;
    v31 = _UISystemFontName();
    v40[1] = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];

    v33 = [objc_alloc(MEMORY[0x277D74310]) initWithFontAttributes:v32];
    v34 = [MEMORY[0x277D74300] fontWithDescriptor:v33 size:14.0];
    [v23 setFont:v34];

    v35 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v23 setTextColor:v35];

    v36 = DDLocalizedString(@"LOADING");
    [v23 setText:v36];

    [(UIView *)self->_loadingView setAlpha:0.0];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __54__DDRemoteActionManagerViewController_showLoadingView__block_invoke;
    v38[3] = &unk_278290B50;
    v38[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v38 animations:0.2];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)removeLoadingViewToShowView:(id)a3
{
  v4 = a3;
  if (self->_loadingView)
  {
    [(NSDate *)self->_loadingDate timeIntervalSinceNow];
    v6 = fmin(v5 + 0.3, 0.0);
    [v4 setAlpha:0.0];
    v7 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__DDRemoteActionManagerViewController_removeLoadingViewToShowView___block_invoke;
    v9[3] = &unk_278290BC8;
    v10 = v4;
    v11 = self;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__DDRemoteActionManagerViewController_removeLoadingViewToShowView___block_invoke_2;
    v8[3] = &unk_278290BF0;
    v8[4] = self;
    [v7 animateWithDuration:0 delay:v9 options:v8 animations:0.2 completion:v6];
  }
}

uint64_t __67__DDRemoteActionManagerViewController_removeLoadingViewToShowView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(*(a1 + 40) + 1008);

  return [v2 setAlpha:0.0];
}

void __67__DDRemoteActionManagerViewController_removeLoadingViewToShowView___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1008) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1008);
  *(v2 + 1008) = 0;
}

- (void)showErrorView
{
  v46[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = objc_opt_new();
    errorView = self->_errorView;
    self->_errorView = v3;

    v5 = [(DDRemoteActionManagerViewController *)self view];
    [v5 addSubview:self->_errorView];

    [(UIView *)self->_errorView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(DDRemoteActionManagerViewController *)self view];
    v7 = MEMORY[0x277CCAAD0];
    v8 = self->_errorView;
    v45 = @"ev";
    v46[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v10 = [v7 constraintsWithVisualFormat:@"H:|[ev]|" options:0 metrics:0 views:v9];
    [v6 addConstraints:v10];

    v11 = [(DDRemoteActionManagerViewController *)self view];
    v12 = MEMORY[0x277CCAAD0];
    v43 = @"margin";
    v13 = [(DDRemoteActionManagerViewController *)self controllerVerticalMargin];
    v44 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v15 = self->_errorView;
    v41 = @"ev";
    v42 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v17 = [v12 constraintsWithVisualFormat:@"V:|-(margin)-[ev]|" options:0 metrics:v14 views:v16];
    [v11 addConstraints:v17];

    v18 = objc_opt_new();
    [(UIView *)self->_errorView addSubview:v18];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [MEMORY[0x277CCAAD0] constraintWithItem:v18 attribute:9 relatedBy:0 toItem:self->_errorView attribute:9 multiplier:1.0 constant:0.0];
    [v19 setActive:1];

    v20 = [MEMORY[0x277CCAAD0] constraintWithItem:v18 attribute:10 relatedBy:0 toItem:self->_errorView attribute:10 multiplier:1.0 constant:-23.0];
    [v20 setActive:1];

    v21 = *MEMORY[0x277D74388];
    v38[0] = *MEMORY[0x277D74398];
    v38[1] = v21;
    v39[0] = &unk_282C2BC68;
    v39[1] = &unk_282C2BC80;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v40 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];

    v24 = *MEMORY[0x277D74338];
    v37[0] = v23;
    v25 = *MEMORY[0x277D74340];
    v36[0] = v24;
    v36[1] = v25;
    v26 = _UISystemFontName();
    v37[1] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

    v28 = [objc_alloc(MEMORY[0x277D74310]) initWithFontAttributes:v27];
    v29 = [MEMORY[0x277D74300] fontWithDescriptor:v28 size:14.0];
    [v18 setFont:v29];

    v30 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v18 setTextColor:v30];

    v31 = DDLocalizedString(@"Preview not available");
    [v18 setText:v31];

    if (self->_loadingView)
    {
      [(DDRemoteActionManagerViewController *)self removeLoadingViewToShowView:self->_errorView];
    }

    else if (self->_remoteViewController)
    {
      [(UIView *)self->_errorView setAlpha:0.0];
      v33[4] = self;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __52__DDRemoteActionManagerViewController_showErrorView__block_invoke_2;
      v34[3] = &unk_278290B50;
      v34[4] = self;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __52__DDRemoteActionManagerViewController_showErrorView__block_invoke_3;
      v33[3] = &unk_278290BF0;
      [MEMORY[0x277D75D18] animateWithDuration:v34 animations:v33 completion:0.2];
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__DDRemoteActionManagerViewController_showErrorView__block_invoke;
    block[3] = &unk_278290B50;
    block[4] = self;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __52__DDRemoteActionManagerViewController_showErrorView__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1016) setAlpha:1.0];
  v2 = [*(*(a1 + 32) + 992) view];
  [v2 setAlpha:0.0];
}

void __52__DDRemoteActionManagerViewController_showErrorView__block_invoke_3(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1056);
  if (v3)
  {
    v4 = [v2 emptyViewcontroller];
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v3 setViewControllers:v5];

    v2 = *(a1 + 32);
  }

  v6 = [*(v2 + 992) view];
  [v6 removeFromSuperview];

  [*(*(a1 + 32) + 992) removeFromParentViewController];
  v7 = *(a1 + 32);
  v8 = *(v7 + 992);
  *(v7 + 992) = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)DDRemoteActionDidTerminateWithError:(id)a3
{
  if (a3)
  {
    [(DDRemoteActionManagerViewController *)self showErrorView];
  }
}

- (DDRemoteAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

@end