@interface CPSInlineCardViewController
- (CPSInlineCardViewController)initWithURL:(id)l;
- (CPSInlineCardViewControllerDelegate)delegate;
- (void)_setupInlineCardViewWithProxCardKit;
- (void)didTapBackgroundView:(id)view;
- (void)launchContentViewController:(id)controller didTapCloseButton:(BOOL)button;
- (void)launchContentViewControllerDidDisappear:(id)disappear didOpenClip:(BOOL)clip;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CPSInlineCardViewController

- (CPSInlineCardViewController)initWithURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = CPSInlineCardViewController;
  v5 = [(CPSInlineCardViewController *)&v10 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = v5;
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = CPSInlineCardViewController;
  [(CPSInlineCardViewController *)&v9 viewWillAppear:appear];
  if (!self->_launchContentViewController)
  {
    v4 = [[CPSLaunchContentViewController alloc] initWithURL:self->_url displayMode:1];
    launchContentViewController = self->_launchContentViewController;
    self->_launchContentViewController = v4;

    [(CPSLaunchContentViewController *)self->_launchContentViewController setDelegate:self];
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    view = [(CPSInlineCardViewController *)self view];
    [view setBackgroundColor:v6];

    if (_UISolariumEnabled())
    {
      view2 = [(CPSInlineCardViewController *)self view];
      [view2 setInsetsLayoutMarginsFromSafeArea:0];

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
  defaultConfiguration = [v3 defaultConfiguration];
  [defaultConfiguration setSupportsDarkMode:1];
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
  v7 = [[v5 alloc] initWithConfiguration:defaultConfiguration];
  proxController = self->_proxController;
  self->_proxController = v7;

  mainNavigationController = [(PRXCardContainerViewController *)self->_proxController mainNavigationController];
  [mainNavigationController pushViewController:self->_launchContentViewController animated:0];

  view = [(PRXCardContainerViewController *)self->_proxController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSInlineCardViewController *)self addChildViewController:self->_proxController];
  view2 = [(CPSInlineCardViewController *)self view];
  [view2 addSubview:view];

  [(PRXCardContainerViewController *)self->_proxController didMoveToParentViewController:self];
  v65 = view;
  backgroundView = [v65 backgroundView];
  [backgroundView _setContinuousCornerRadius:13.0];
  v12 = [CPSInlineCardContainerView alloc];
  v66 = [(CPSInlineCardContainerView *)v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(CPSInlineCardContainerView *)v66 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSInlineCardContainerView *)v66 setDelegate:self];
  view3 = [(CPSLaunchContentViewController *)self->_launchContentViewController view];
  [(CPSInlineCardContainerView *)v66 setContentView:view3];

  view4 = [(CPSInlineCardViewController *)self view];
  [view4 addSubview:v66];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:v65 name:*MEMORY[0x277D76C60] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:v65 name:*MEMORY[0x277D76C50] object:0];

  v35 = MEMORY[0x277CCAAD0];
  topAnchor = [v65 topAnchor];
  v62 = _UISolariumEnabled();
  view5 = [(CPSInlineCardViewController *)self view];
  if (v62)
  {
    layoutMarginsGuide = [view5 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
  }

  else
  {
    topAnchor2 = [view5 topAnchor];
    layoutMarginsGuide = topAnchor2;
  }

  v34 = topAnchor2;
  v59 = [topAnchor constraintEqualToAnchor:?];
  v76[0] = v59;
  bottomAnchor = [v65 bottomAnchor];
  v58 = _UISolariumEnabled();
  view6 = [(CPSInlineCardViewController *)self view];
  if (v58)
  {
    layoutMarginsGuide2 = [view6 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
  }

  else
  {
    bottomAnchor2 = [view6 bottomAnchor];
    layoutMarginsGuide2 = bottomAnchor2;
  }

  v33 = bottomAnchor2;
  v55 = [bottomAnchor constraintEqualToAnchor:?];
  v76[1] = v55;
  leadingAnchor = [v65 leadingAnchor];
  v54 = _UISolariumEnabled();
  view7 = [(CPSInlineCardViewController *)self view];
  if (v54)
  {
    layoutMarginsGuide3 = [view7 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
  }

  else
  {
    leadingAnchor2 = [view7 leadingAnchor];
    layoutMarginsGuide3 = leadingAnchor2;
  }

  v32 = leadingAnchor2;
  v51 = [leadingAnchor constraintEqualToAnchor:?];
  v76[2] = v51;
  trailingAnchor = [v65 trailingAnchor];
  v50 = _UISolariumEnabled();
  view8 = [(CPSInlineCardViewController *)self view];
  if (v50)
  {
    layoutMarginsGuide4 = [view8 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
  }

  else
  {
    trailingAnchor2 = [view8 trailingAnchor];
    layoutMarginsGuide4 = trailingAnchor2;
  }

  v31 = trailingAnchor2;
  v47 = [trailingAnchor constraintEqualToAnchor:?];
  v76[3] = v47;
  centerXAnchor = [(CPSInlineCardContainerView *)v66 centerXAnchor];
  view9 = [(CPSInlineCardViewController *)self view];
  centerXAnchor2 = [view9 centerXAnchor];
  v43 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v76[4] = v43;
  centerYAnchor = [(CPSInlineCardContainerView *)v66 centerYAnchor];
  view10 = [(CPSInlineCardViewController *)self view];
  centerYAnchor2 = [view10 centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v76[5] = v21;
  widthAnchor = [(CPSInlineCardContainerView *)v66 widthAnchor];
  view11 = [(CPSInlineCardViewController *)self view];
  widthAnchor2 = [view11 widthAnchor];
  v25 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v76[6] = v25;
  heightAnchor = [(CPSInlineCardContainerView *)v66 heightAnchor];
  view12 = [(CPSInlineCardViewController *)self view];
  heightAnchor2 = [view12 heightAnchor];
  v29 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
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

- (void)launchContentViewControllerDidDisappear:(id)disappear didOpenClip:(BOOL)clip
{
  clipCopy = clip;
  disappearCopy = disappear;
  if (!clipCopy)
  {
    [(CPSLaunchContentViewController *)self->_launchContentViewController cancelSession];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 cardViewControllerDidDisappear:self clipDidOpen:clipCopy persistUserSettings:0];
  }
}

- (void)launchContentViewController:(id)controller didTapCloseButton:(BOOL)button
{
  [(CPSLaunchContentViewController *)self->_launchContentViewController cancelSession:controller];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 cardViewControllerDidDisappear:self clipDidOpen:0 persistUserSettings:1];
  }
}

- (void)didTapBackgroundView:(id)view
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