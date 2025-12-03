@interface CCUIModuleAlertViewController
- (CCUIModuleAlertViewController)initWithModuleIdentifier:(id)identifier presentationOptions:(id)options mainViewController:(id)controller;
- (CCUIModuleAlertViewControllerDelegate)delegate;
- (CGRect)compactModeFrameForContentModuleContainerViewController:(id)controller;
- (CGRect)expandedModeFrameForContentModuleContainerViewController:(id)controller;
- (CGSize)controlCenterGridSizeForContentModuleContainerViewController:(id)controller;
- (void)contentModuleContainerViewControllerDismissPresentedContent:(id)content;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation CCUIModuleAlertViewController

- (CCUIModuleAlertViewController)initWithModuleIdentifier:(id)identifier presentationOptions:(id)options mainViewController:(id)controller
{
  identifierCopy = identifier;
  optionsCopy = options;
  controllerCopy = controller;
  if (!identifierCopy)
  {
    [CCUIModuleAlertViewController initWithModuleIdentifier:a2 presentationOptions:self mainViewController:?];
  }

  moduleInstanceManager = [controllerCopy moduleInstanceManager];
  v13 = [moduleInstanceManager loadAlertModuleWithBundleIdentifier:identifierCopy];
  if (!v13)
  {
    [CCUIModuleAlertViewController initWithModuleIdentifier:a2 presentationOptions:self mainViewController:identifierCopy];
  }

  v34.receiver = self;
  v34.super_class = CCUIModuleAlertViewController;
  v14 = [(CCUIModuleAlertViewController *)&v34 initWithNibName:0 bundle:0];
  if (v14)
  {
    v15 = [identifierCopy copy];
    moduleIdentifier = v14->_moduleIdentifier;
    v14->_moduleIdentifier = v15;

    v17 = [optionsCopy copy];
    presentationOptions = v14->_presentationOptions;
    v14->_presentationOptions = v17;

    v32 = controllerCopy;
    objc_storeStrong(&v14->_moduleInstance, v13);
    v19 = [CCUIContentModuleContainerViewController alloc];
    metadata = [(CCUIModuleInstance *)v14->_moduleInstance metadata];
    moduleIdentifier = [metadata moduleIdentifier];
    v33 = optionsCopy;
    v21 = objc_alloc(MEMORY[0x277CCAD78]);
    uniqueIdentifier = [(CCUIModuleInstance *)v14->_moduleInstance uniqueIdentifier];
    v23 = [v21 initWithUUIDString:uniqueIdentifier];
    module = [(CCUIModuleInstance *)v14->_moduleInstance module];
    [MEMORY[0x277CFC958] defaultAlertPresentationContext];
    v25 = v13;
    v27 = v26 = moduleInstanceManager;
    v28 = [(CCUIContentModuleContainerViewController *)v19 initWithModuleIdentifier:moduleIdentifier uniqueIdentifier:v23 contentModule:module presentationContext:v27 contentRenderingMode:0];
    moduleContainerViewController = v14->_moduleContainerViewController;
    v14->_moduleContainerViewController = v28;

    moduleInstanceManager = v26;
    v13 = v25;

    controllerCopy = v32;
    optionsCopy = v33;

    [(CCUIContentModuleContainerViewController *)v14->_moduleContainerViewController setDelegate:v14];
    [(CCUIModuleAlertViewController *)v14 addChildViewController:v14->_moduleContainerViewController];
  }

  return v14;
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(CCUIModuleAlertViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = CCUIModuleAlertViewController;
  [(CCUIModuleAlertViewController *)&v15 viewDidLoad];
  _auxiliaryMaterialView = [MEMORY[0x277CFC968] _auxiliaryMaterialView];
  blurView = self->_blurView;
  self->_blurView = _auxiliaryMaterialView;

  v5 = self->_blurView;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [(MTMaterialView *)v5 setGroupNameBase:v7];

  [(MTMaterialView *)self->_blurView setWeighting:0.0];
  [(MTMaterialView *)self->_blurView setAutoresizingMask:18];
  view = [(CCUIModuleAlertViewController *)self view];
  [view addSubview:self->_blurView];

  v9 = objc_alloc(MEMORY[0x277CFC9D0]);
  view2 = [(CCUIModuleAlertViewController *)self view];
  [view2 bounds];
  v11 = [v9 initWithFrame:?];
  contentView = self->_contentView;
  self->_contentView = v11;

  [(UIView *)self->_contentView setAutoresizingMask:18];
  view3 = [(CCUIModuleAlertViewController *)self view];
  [view3 addSubview:self->_contentView];

  view4 = [(CCUIContentModuleContainerViewController *)self->_moduleContainerViewController view];
  [view4 setAutoresizingMask:18];
  [(UIView *)self->_contentView addSubview:view4];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CCUIModuleAlertViewController;
  [(CCUIModuleAlertViewController *)&v4 viewWillLayoutSubviews];
  if (![(CCUIContentModuleContainerViewController *)self->_moduleContainerViewController isExpanded])
  {
    contentViewController = [(CCUIContentModuleContainerViewController *)self->_moduleContainerViewController contentViewController];
    if ((objc_opt_respondsToSelector() & 1) == 0 || [contentViewController shouldBeginTransitionToExpandedContentModule])
    {
      [(CCUIContentModuleContainerViewController *)self->_moduleContainerViewController setExpanded:1];
      if (objc_opt_respondsToSelector())
      {
        [contentViewController willTransitionToExpandedContentMode:1];
      }

      [(CCUIContentModuleContainerViewController *)self->_moduleContainerViewController transitionToExpandedMode:1];
      if (objc_opt_respondsToSelector())
      {
        [contentViewController didTransitionToExpandedContentMode:1];
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CCUIModuleAlertViewController;
  [(CCUIModuleAlertViewController *)&v4 viewDidAppear:appear];
  [(MTMaterialView *)self->_blurView setContentReplacedWithSnapshot:UIAccessibilityIsReduceTransparencyEnabled()];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CCUIModuleAlertViewController;
  [(CCUIModuleAlertViewController *)&v4 viewWillDisappear:disappear];
  [(MTMaterialView *)self->_blurView setContentReplacedWithSnapshot:0];
}

- (CGRect)compactModeFrameForContentModuleContainerViewController:(id)controller
{
  v3 = [(CCUIModuleAlertViewController *)self compactModeSourceViewForContentModuleContainerViewController:controller];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)expandedModeFrameForContentModuleContainerViewController:(id)controller
{
  view = [(CCUIModuleAlertViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGSize)controlCenterGridSizeForContentModuleContainerViewController:(id)controller
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)contentModuleContainerViewControllerDismissPresentedContent:(id)content
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __93__CCUIModuleAlertViewController_contentModuleContainerViewControllerDismissPresentedContent___block_invoke;
  v3[3] = &unk_278382888;
  v3[4] = self;
  [(CCUIModuleAlertViewController *)self dismissModulePresentedContentAnimated:1 completion:v3];
}

void __93__CCUIModuleAlertViewController_contentModuleContainerViewControllerDismissPresentedContent___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1040));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((*(a1 + 32) + 1040));
      [v5 contentModuleAlertViewControllerNeedsDismissal:*(a1 + 32)];
    }
  }
}

- (CCUIModuleAlertViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithModuleIdentifier:(uint64_t)a1 presentationOptions:(uint64_t)a2 mainViewController:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CCUIModuleAlertViewController.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"moduleIdentifier"}];
}

- (void)initWithModuleIdentifier:(uint64_t)a1 presentationOptions:(uint64_t)a2 mainViewController:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CCUIModuleAlertViewController.m" lineNumber:51 description:{@"Unable to load module instance '%@'", a3}];
}

@end