@interface IAMModalWebMessageViewController
- (IAMModalWebMessageViewController)initWithWebView:(id)a3;
- (IAMViewControllerMetricsDelegate)metricsDelegate;
- (UIButton)closeButton;
- (void)_handleCloseButtonTap:(id)a3;
- (void)setShouldDisplayCloseButton:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation IAMModalWebMessageViewController

- (IAMModalWebMessageViewController)initWithWebView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IAMModalWebMessageViewController;
  v6 = [(IAMModalWebMessageViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webView, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = IAMModalWebMessageViewController;
  [(IAMModalWebMessageViewController *)&v5 viewDidLoad];
  v3 = [(IAMModalWebMessageViewController *)self view];
  [v3 bounds];
  [(IAMWebView *)self->_webView setFrame:?];

  [(IAMWebView *)self->_webView setAutoresizingMask:18];
  v4 = [(IAMModalWebMessageViewController *)self view];
  [v4 addSubview:self->_webView];
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

- (void)setShouldDisplayCloseButton:(BOOL)a3
{
  v28[2] = *MEMORY[0x277D85DE8];
  if (self->_shouldDisplayCloseButton != a3)
  {
    self->_shouldDisplayCloseButton = a3;
    if (a3)
    {
      v4 = [(IAMModalWebMessageViewController *)self view];
      v5 = [(IAMModalWebMessageViewController *)self closeButton];
      [v4 addSubview:v5];

      v6 = [(IAMModalWebMessageViewController *)self closeButton];
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

      v7 = MEMORY[0x277CCAAD0];
      v26 = [(IAMModalWebMessageViewController *)self closeButton];
      v8 = [v26 topAnchor];
      v9 = [(IAMModalWebMessageViewController *)self view];
      v10 = [v9 topAnchor];
      v25 = v8;
      v11 = [v8 constraintEqualToAnchor:v10 constant:16.0];
      v27[0] = v11;
      v12 = [(IAMModalWebMessageViewController *)self closeButton];
      v13 = [v12 rightAnchor];
      v14 = [(IAMModalWebMessageViewController *)self view];
      v15 = [v14 rightAnchor];
      v16 = [v13 constraintEqualToAnchor:v15 constant:-16.0];
      v27[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
      [v7 activateConstraints:v17];
LABEL_6:

      goto LABEL_7;
    }

    v18 = [(IAMModalWebMessageViewController *)self closeButton];
    v19 = [(IAMModalWebMessageViewController *)self view];
    v20 = [v18 isDescendantOfView:v19];

    if (v20)
    {
      v21 = [(IAMModalWebMessageViewController *)self closeButton];
      [v21 removeFromSuperview];

      v22 = MEMORY[0x277CCAAD0];
      v26 = [(IAMModalWebMessageViewController *)self closeButton];
      v23 = [v26 topAnchor];
      v9 = [(IAMModalWebMessageViewController *)self view];
      v10 = [v9 topAnchor];
      v25 = v23;
      v11 = [v23 constraintEqualToAnchor:v10 constant:16.0];
      v28[0] = v11;
      v12 = [(IAMModalWebMessageViewController *)self closeButton];
      v13 = [v12 rightAnchor];
      v14 = [(IAMModalWebMessageViewController *)self view];
      v15 = [v14 rightAnchor];
      v16 = [v13 constraintEqualToAnchor:v15 constant:-16.0];
      v28[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      [v22 deactivateConstraints:v17];
      goto LABEL_6;
    }
  }

LABEL_7:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloseButtonTap:(id)a3
{
  v4 = [(IAMModalWebMessageViewController *)self metricsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(IAMModalWebMessageViewController *)self metricsDelegate];
    [v6 viewController:self didReportDismissalAction:0];
  }

  [(IAMModalWebMessageViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (IAMViewControllerMetricsDelegate)metricsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_metricsDelegate);

  return WeakRetained;
}

@end