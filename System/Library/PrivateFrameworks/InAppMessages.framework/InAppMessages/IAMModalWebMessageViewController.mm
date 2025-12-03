@interface IAMModalWebMessageViewController
- (IAMModalWebMessageViewController)initWithWebView:(id)view;
- (IAMViewControllerMetricsDelegate)metricsDelegate;
- (UIButton)closeButton;
- (void)_handleCloseButtonTap:(id)tap;
- (void)setShouldDisplayCloseButton:(BOOL)button;
- (void)viewDidLoad;
@end

@implementation IAMModalWebMessageViewController

- (IAMModalWebMessageViewController)initWithWebView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = IAMModalWebMessageViewController;
  v6 = [(IAMModalWebMessageViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webView, view);
  }

  return v7;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = IAMModalWebMessageViewController;
  [(IAMModalWebMessageViewController *)&v5 viewDidLoad];
  view = [(IAMModalWebMessageViewController *)self view];
  [view bounds];
  [(IAMWebView *)self->_webView setFrame:?];

  [(IAMWebView *)self->_webView setAutoresizingMask:18];
  view2 = [(IAMModalWebMessageViewController *)self view];
  [view2 addSubview:self->_webView];
}

- (UIButton)closeButton
{
  closeButton = self->_closeButton;
  if (!closeButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:7];
    [(UIButton *)v4 addTarget:self action:sel__handleCloseButtonTap_ forControlEvents:64];
    v5 = self->_closeButton;
    self->_closeButton = v4;

    closeButton = self->_closeButton;
  }

  return closeButton;
}

- (void)setShouldDisplayCloseButton:(BOOL)button
{
  v28[2] = *MEMORY[0x277D85DE8];
  if (self->_shouldDisplayCloseButton != button)
  {
    self->_shouldDisplayCloseButton = button;
    if (button)
    {
      view = [(IAMModalWebMessageViewController *)self view];
      closeButton = [(IAMModalWebMessageViewController *)self closeButton];
      [view addSubview:closeButton];

      closeButton2 = [(IAMModalWebMessageViewController *)self closeButton];
      [closeButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

      v7 = MEMORY[0x277CCAAD0];
      closeButton3 = [(IAMModalWebMessageViewController *)self closeButton];
      topAnchor = [closeButton3 topAnchor];
      view2 = [(IAMModalWebMessageViewController *)self view];
      topAnchor2 = [view2 topAnchor];
      v25 = topAnchor;
      v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
      v27[0] = v11;
      closeButton4 = [(IAMModalWebMessageViewController *)self closeButton];
      rightAnchor = [closeButton4 rightAnchor];
      view3 = [(IAMModalWebMessageViewController *)self view];
      rightAnchor2 = [view3 rightAnchor];
      v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-16.0];
      v27[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
      [v7 activateConstraints:v17];
LABEL_6:

      goto LABEL_7;
    }

    closeButton5 = [(IAMModalWebMessageViewController *)self closeButton];
    view4 = [(IAMModalWebMessageViewController *)self view];
    v20 = [closeButton5 isDescendantOfView:view4];

    if (v20)
    {
      closeButton6 = [(IAMModalWebMessageViewController *)self closeButton];
      [closeButton6 removeFromSuperview];

      v22 = MEMORY[0x277CCAAD0];
      closeButton3 = [(IAMModalWebMessageViewController *)self closeButton];
      topAnchor3 = [closeButton3 topAnchor];
      view2 = [(IAMModalWebMessageViewController *)self view];
      topAnchor2 = [view2 topAnchor];
      v25 = topAnchor3;
      v11 = [topAnchor3 constraintEqualToAnchor:topAnchor2 constant:16.0];
      v28[0] = v11;
      closeButton4 = [(IAMModalWebMessageViewController *)self closeButton];
      rightAnchor = [closeButton4 rightAnchor];
      view3 = [(IAMModalWebMessageViewController *)self view];
      rightAnchor2 = [view3 rightAnchor];
      v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-16.0];
      v28[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      [v22 deactivateConstraints:v17];
      goto LABEL_6;
    }
  }

LABEL_7:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloseButtonTap:(id)tap
{
  metricsDelegate = [(IAMModalWebMessageViewController *)self metricsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    metricsDelegate2 = [(IAMModalWebMessageViewController *)self metricsDelegate];
    [metricsDelegate2 viewController:self didReportDismissalAction:0];
  }

  [(IAMModalWebMessageViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (IAMViewControllerMetricsDelegate)metricsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_metricsDelegate);

  return WeakRetained;
}

@end