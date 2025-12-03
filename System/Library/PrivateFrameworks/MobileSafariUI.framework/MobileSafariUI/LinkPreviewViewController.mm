@interface LinkPreviewViewController
- (LinkPreviewViewController)initWithTabDocument:(id)document;
- (TabDocument)previewTabDocument;
- (_SFLinkPreviewHeader)previewHeader;
- (id)currentFluidProgressStateSource;
- (void)displayHostedScreenTimeView;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willCommitPreviewedWebView;
@end

@implementation LinkPreviewViewController

- (LinkPreviewViewController)initWithTabDocument:(id)document
{
  documentCopy = document;
  v9.receiver = self;
  v9.super_class = LinkPreviewViewController;
  v5 = [(LinkPreviewViewController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_previewTabDocument, documentCopy);
    [documentCopy setLinkPreviewViewController:v6];
    [documentCopy beginSuppressingProgressAnimation];
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

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(_SFBrowserView *)self->_browserView setBackgroundColor:?];

  [(_SFBrowserView *)self->_browserView setContentReadyForDisplay];
  [(_SFBrowserView *)self->_browserView setAutoresizingMask:18];
  [(LinkPreviewViewController *)self setView:self->_browserView];
  WeakRetained = objc_loadWeakRetained(&self->_previewTabDocument);
  v6 = [objc_alloc(MEMORY[0x277CDB7F8]) initWithMinimumPreviewUI:0];
  [(_SFBrowserView *)self->_browserView setPreviewHeader:v6];

  previewHeader = [(_SFBrowserView *)self->_browserView previewHeader];
  progressView = [previewHeader progressView];

  navigationBarItem = [WeakRetained navigationBarItem];
  fluidProgressController = [navigationBarItem fluidProgressController];
  [fluidProgressController registerObserver:progressView];

  navigationBarItem2 = [WeakRetained navigationBarItem];
  fluidProgressStateSource = [navigationBarItem2 fluidProgressStateSource];
  progressState = [fluidProgressStateSource progressState];
  [progressView setProgressToCurrentPositionForState:progressState];

  v14 = self->_browserView;
  webView = [WeakRetained webView];
  [(_SFBrowserView *)v14 addWebView:webView];

  currentWebView = [(_SFBrowserView *)self->_browserView currentWebView];
  [currentWebView setAutoresizingMask:18];

  previewHeader2 = [(_SFBrowserView *)self->_browserView previewHeader];
  [previewHeader2 setAccessibilityIdentifier:@"LinkPreview"];
}

- (_SFLinkPreviewHeader)previewHeader
{
  view = [(LinkPreviewViewController *)self view];
  previewHeader = [view previewHeader];

  return previewHeader;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = LinkPreviewViewController;
  [(LinkPreviewViewController *)&v3 viewWillLayoutSubviews];
  [(LinkPreviewViewController *)self preferredContentSize];
  [(_SFBrowserView *)self->_browserView setUnscaledWebViewWidth:?];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = LinkPreviewViewController;
  [(LinkPreviewViewController *)&v6 viewDidAppear:appear];
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

  previewHeader = [(_SFBrowserView *)self->_browserView previewHeader];
  [previewHeader setHidden:1];

  [(_SFBrowserView *)self->_browserView addWebView:0];
  WeakRetained = objc_loadWeakRetained(&self->_previewTabDocument);
  [WeakRetained setLinkPreviewViewController:0];
}

- (void)displayHostedScreenTimeView
{
  parentViewController = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController parentViewController];

  if (parentViewController != self)
  {
    [(LinkPreviewViewController *)self addChildViewController:self->_screenTimeOverlayViewController];
  }

  [(_SFBrowserView *)self->_browserView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController view];
  [view setFrame:{v5, v7, v9, v11}];

  view2 = [(LinkPreviewViewController *)self view];
  view3 = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController view];
  previewHeader = [(_SFBrowserView *)self->_browserView previewHeader];
  [view2 insertSubview:view3 belowSubview:previewHeader];

  if (parentViewController != self)
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