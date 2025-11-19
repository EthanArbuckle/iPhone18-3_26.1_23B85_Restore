@interface LinkPreviewViewController
- (LinkPreviewViewController)initWithTabDocument:(id)a3;
- (TabDocument)previewTabDocument;
- (_SFLinkPreviewHeader)previewHeader;
- (id)currentFluidProgressStateSource;
- (void)displayHostedScreenTimeView;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willCommitPreviewedWebView;
@end

@implementation LinkPreviewViewController

- (LinkPreviewViewController)initWithTabDocument:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LinkPreviewViewController;
  v5 = [(LinkPreviewViewController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_previewTabDocument, v4);
    [v4 setLinkPreviewViewController:v6];
    [v4 beginSuppressingProgressAnimation];
    v7 = v6;
  }

  return v6;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277CDB770]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  browserView = self->_browserView;
  self->_browserView = v4;

  v18 = [MEMORY[0x277D75348] systemBackgroundColor];
  [(_SFBrowserView *)self->_browserView setBackgroundColor:?];

  [(_SFBrowserView *)self->_browserView setContentReadyForDisplay];
  [(_SFBrowserView *)self->_browserView setAutoresizingMask:18];
  [(LinkPreviewViewController *)self setView:self->_browserView];
  WeakRetained = objc_loadWeakRetained(&self->_previewTabDocument);
  v6 = [objc_alloc(MEMORY[0x277CDB7F8]) initWithMinimumPreviewUI:0];
  [(_SFBrowserView *)self->_browserView setPreviewHeader:v6];

  v7 = [(_SFBrowserView *)self->_browserView previewHeader];
  v8 = [v7 progressView];

  v9 = [WeakRetained navigationBarItem];
  v10 = [v9 fluidProgressController];
  [v10 registerObserver:v8];

  v11 = [WeakRetained navigationBarItem];
  v12 = [v11 fluidProgressStateSource];
  v13 = [v12 progressState];
  [v8 setProgressToCurrentPositionForState:v13];

  v14 = self->_browserView;
  v15 = [WeakRetained webView];
  [(_SFBrowserView *)v14 addWebView:v15];

  v16 = [(_SFBrowserView *)self->_browserView currentWebView];
  [v16 setAutoresizingMask:18];

  v17 = [(_SFBrowserView *)self->_browserView previewHeader];
  [v17 setAccessibilityIdentifier:@"LinkPreview"];
}

- (_SFLinkPreviewHeader)previewHeader
{
  v2 = [(LinkPreviewViewController *)self view];
  v3 = [v2 previewHeader];

  return v3;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = LinkPreviewViewController;
  [(LinkPreviewViewController *)&v3 viewWillLayoutSubviews];
  [(LinkPreviewViewController *)self preferredContentSize];
  [(_SFBrowserView *)self->_browserView setUnscaledWebViewWidth:?];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = LinkPreviewViewController;
  [(LinkPreviewViewController *)&v6 viewDidAppear:a3];
  v4 = dispatch_time(0, 250000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__LinkPreviewViewController_viewDidAppear___block_invoke;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __43__LinkPreviewViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));
  [WeakRetained endSuppressingProgressAnimationAnimated:0];
}

- (void)willCommitPreviewedWebView
{
  v3 = [(_SFBrowserView *)self->_browserView currentWebView:*MEMORY[0x277CBF2C0]];
  [v3 setTransform:&v6];

  v4 = [(_SFBrowserView *)self->_browserView previewHeader];
  [v4 setHidden:1];

  [(_SFBrowserView *)self->_browserView addWebView:0];
  WeakRetained = objc_loadWeakRetained(&self->_previewTabDocument);
  [WeakRetained setLinkPreviewViewController:0];
}

- (void)displayHostedScreenTimeView
{
  v3 = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController parentViewController];

  if (v3 != self)
  {
    [(LinkPreviewViewController *)self addChildViewController:self->_screenTimeOverlayViewController];
  }

  [(_SFBrowserView *)self->_browserView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController view];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(LinkPreviewViewController *)self view];
  v14 = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController view];
  v15 = [(_SFBrowserView *)self->_browserView previewHeader];
  [v13 insertSubview:v14 belowSubview:v15];

  if (v3 != self)
  {
    screenTimeOverlayViewController = self->_screenTimeOverlayViewController;

    [(SFScreenTimeOverlayViewController *)screenTimeOverlayViewController didMoveToParentViewController:self];
  }
}

- (id)currentFluidProgressStateSource
{
  WeakRetained = objc_loadWeakRetained(&self->_previewTabDocument);

  return WeakRetained;
}

- (TabDocument)previewTabDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_previewTabDocument);

  return WeakRetained;
}

@end