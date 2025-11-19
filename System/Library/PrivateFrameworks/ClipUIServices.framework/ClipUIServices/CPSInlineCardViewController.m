@interface CPSInlineCardViewController
- (CPSInlineCardViewController)initWithURL:(id)a3;
- (CPSInlineCardViewControllerDelegate)delegate;
- (void)_setupInlineCardViewWithProxCardKit;
- (void)didTapBackgroundView:(id)a3;
- (void)launchContentViewController:(id)a3 didTapCloseButton:(BOOL)a4;
- (void)launchContentViewControllerDidDisappear:(id)a3 didOpenClip:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CPSInlineCardViewController

- (CPSInlineCardViewController)initWithURL:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CPSInlineCardViewController;
  v5 = [(CPSInlineCardViewController *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = v5;
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = CPSInlineCardViewController;
  [(CPSInlineCardViewController *)&v9 viewWillAppear:a3];
  if (!self->_launchContentViewController)
  {
    v4 = [[CPSLaunchContentViewController alloc] initWithURL:self->_url displayMode:1];
    launchContentViewController = self->_launchContentViewController;
    self->_launchContentViewController = v4;

    [(CPSLaunchContentViewController *)self->_launchContentViewController setDelegate:self];
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    v7 = [(CPSInlineCardViewController *)self view];
    [v7 setBackgroundColor:v6];

    if (_UISolariumEnabled())
    {
      v8 = [(CPSInlineCardViewController *)self view];
      [v8 setInsetsLayoutMarginsFromSafeArea:0];

      [(CPSInlineCardViewController *)self setViewRespectsSystemMinimumLayoutMargins:0];
    }

    [(CPSInlineCardViewController *)self _setupInlineCardViewWithProxCardKit];
  }
}

- (void)_setupInlineCardViewWithProxCardKit
{
  v76[8] = *MEMORY[0x277D85DE8];
  v72 = 0;
  v73 = &v72;
  v74 = 0x2050000000;
  v3 = getPRXFlowConfigurationClass_softClass;
  v75 = getPRXFlowConfigurationClass_softClass;
  if (!getPRXFlowConfigurationClass_softClass)
  {
    v67 = MEMORY[0x277D85DD0];
    v68 = 3221225472;
    v69 = __getPRXFlowConfigurationClass_block_invoke;
    v70 = &unk_278DD24C0;
    v71 = &v72;
    __getPRXFlowConfigurationClass_block_invoke(&v67);
    v3 = v73[3];
  }

  v4 = v3;
  _Block_object_dispose(&v72, 8);
  v64 = [v3 defaultConfiguration];
  [v64 setSupportsDarkMode:1];
  v72 = 0;
  v73 = &v72;
  v74 = 0x2050000000;
  v5 = getPRXCardContainerViewControllerClass_softClass;
  v75 = getPRXCardContainerViewControllerClass_softClass;
  if (!getPRXCardContainerViewControllerClass_softClass)
  {
    v67 = MEMORY[0x277D85DD0];
    v68 = 3221225472;
    v69 = __getPRXCardContainerViewControllerClass_block_invoke;
    v70 = &unk_278DD24C0;
    v71 = &v72;
    __getPRXCardContainerViewControllerClass_block_invoke(&v67);
    v5 = v73[3];
  }

  v6 = v5;
  _Block_object_dispose(&v72, 8);
  v7 = [[v5 alloc] initWithConfiguration:v64];
  proxController = self->_proxController;
  self->_proxController = v7;

  v9 = [(PRXCardContainerViewController *)self->_proxController mainNavigationController];
  [v9 pushViewController:self->_launchContentViewController animated:0];

  v10 = [(PRXCardContainerViewController *)self->_proxController view];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSInlineCardViewController *)self addChildViewController:self->_proxController];
  v11 = [(CPSInlineCardViewController *)self view];
  [v11 addSubview:v10];

  [(PRXCardContainerViewController *)self->_proxController didMoveToParentViewController:self];
  v65 = v10;
  v63 = [v65 backgroundView];
  [v63 _setContinuousCornerRadius:13.0];
  v12 = [CPSInlineCardContainerView alloc];
  v66 = [(CPSInlineCardContainerView *)v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(CPSInlineCardContainerView *)v66 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSInlineCardContainerView *)v66 setDelegate:self];
  v13 = [(CPSLaunchContentViewController *)self->_launchContentViewController view];
  [(CPSInlineCardContainerView *)v66 setContentView:v13];

  v14 = [(CPSInlineCardViewController *)self view];
  [v14 addSubview:v66];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 removeObserver:v65 name:*MEMORY[0x277D76C60] object:0];

  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 removeObserver:v65 name:*MEMORY[0x277D76C50] object:0];

  v35 = MEMORY[0x277CCAAD0];
  v60 = [v65 topAnchor];
  v62 = _UISolariumEnabled();
  v61 = [(CPSInlineCardViewController *)self view];
  if (v62)
  {
    v39 = [v61 layoutMarginsGuide];
    v17 = [v39 topAnchor];
  }

  else
  {
    v17 = [v61 topAnchor];
    v39 = v17;
  }

  v34 = v17;
  v59 = [v60 constraintEqualToAnchor:?];
  v76[0] = v59;
  v56 = [v65 bottomAnchor];
  v58 = _UISolariumEnabled();
  v57 = [(CPSInlineCardViewController *)self view];
  if (v58)
  {
    v38 = [v57 layoutMarginsGuide];
    v18 = [v38 bottomAnchor];
  }

  else
  {
    v18 = [v57 bottomAnchor];
    v38 = v18;
  }

  v33 = v18;
  v55 = [v56 constraintEqualToAnchor:?];
  v76[1] = v55;
  v52 = [v65 leadingAnchor];
  v54 = _UISolariumEnabled();
  v53 = [(CPSInlineCardViewController *)self view];
  if (v54)
  {
    v37 = [v53 layoutMarginsGuide];
    v19 = [v37 leadingAnchor];
  }

  else
  {
    v19 = [v53 leadingAnchor];
    v37 = v19;
  }

  v32 = v19;
  v51 = [v52 constraintEqualToAnchor:?];
  v76[2] = v51;
  v48 = [v65 trailingAnchor];
  v50 = _UISolariumEnabled();
  v49 = [(CPSInlineCardViewController *)self view];
  if (v50)
  {
    v36 = [v49 layoutMarginsGuide];
    v20 = [v36 trailingAnchor];
  }

  else
  {
    v20 = [v49 trailingAnchor];
    v36 = v20;
  }

  v31 = v20;
  v47 = [v48 constraintEqualToAnchor:?];
  v76[3] = v47;
  v45 = [(CPSInlineCardContainerView *)v66 centerXAnchor];
  v46 = [(CPSInlineCardViewController *)self view];
  v44 = [v46 centerXAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v76[4] = v43;
  v41 = [(CPSInlineCardContainerView *)v66 centerYAnchor];
  v42 = [(CPSInlineCardViewController *)self view];
  v40 = [v42 centerYAnchor];
  v21 = [v41 constraintEqualToAnchor:v40];
  v76[5] = v21;
  v22 = [(CPSInlineCardContainerView *)v66 widthAnchor];
  v23 = [(CPSInlineCardViewController *)self view];
  v24 = [v23 widthAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  v76[6] = v25;
  v26 = [(CPSInlineCardContainerView *)v66 heightAnchor];
  v27 = [(CPSInlineCardViewController *)self view];
  v28 = [v27 heightAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  v76[7] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:8];
  [v35 activateConstraints:v30];

  if (v50)
  {
  }

  if (v54)
  {
  }

  if (v58)
  {
  }

  if (v62)
  {
  }
}

- (void)launchContentViewControllerDidDisappear:(id)a3 didOpenClip:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  if (!v4)
  {
    [(CPSLaunchContentViewController *)self->_launchContentViewController cancelSession];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 cardViewControllerDidDisappear:self clipDidOpen:v4 persistUserSettings:0];
  }
}

- (void)launchContentViewController:(id)a3 didTapCloseButton:(BOOL)a4
{
  [(CPSLaunchContentViewController *)self->_launchContentViewController cancelSession:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 cardViewControllerDidDisappear:self clipDidOpen:0 persistUserSettings:1];
  }
}

- (void)didTapBackgroundView:(id)a3
{
  [(CPSLaunchContentViewController *)self->_launchContentViewController cancelSession];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 cardViewControllerDidDisappear:self clipDidOpen:0 persistUserSettings:0];
  }
}

- (CPSInlineCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end