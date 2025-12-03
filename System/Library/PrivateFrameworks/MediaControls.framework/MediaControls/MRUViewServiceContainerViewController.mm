@interface MRUViewServiceContainerViewController
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldUsePopoverAnchor;
- (MRUViewServiceContainerViewController)init;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setConfiguration:(id)configuration;
- (void)transitionToVisible:(BOOL)visible animated:(BOOL)animated;
- (void)updateMaterialForPresenting:(BOOL)presenting;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewServiceRoutingViewControllerDidChangeSize:(id)size;
- (void)viewServiceRoutingViewControllerDidDismiss:(id)dismiss;
- (void)viewServiceRoutingViewControllerDidDismiss:(id)dismiss withCustomRowTapped:(id)tapped;
@end

@implementation MRUViewServiceContainerViewController

- (MRUViewServiceContainerViewController)init
{
  v6.receiver = self;
  v6.super_class = MRUViewServiceContainerViewController;
  v2 = [(MRUViewServiceContainerViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MRUViewServiceRoutingViewController);
    routingViewController = v2->_routingViewController;
    v2->_routingViewController = v3;

    [(MRUViewServiceRoutingViewController *)v2->_routingViewController setDelegate:v2];
    [(MRUViewServiceRoutingViewController *)v2->_routingViewController setTransitioningDelegate:v2];
    [(MRUViewServiceRoutingViewController *)v2->_routingViewController setModalPresentationStyle:4];
  }

  return v2;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = MRUViewServiceContainerViewController;
  [(MRUViewServiceContainerViewController *)&v13 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  [(MPMediaControlsConfiguration *)self->_configuration sourceRect];
  v4 = [v3 initWithFrame:?];
  sourceView = self->_sourceView;
  self->_sourceView = v4;

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)self->_sourceView setBackgroundColor:clearColor];

  view = [(MRUViewServiceContainerViewController *)self view];
  [view addSubview:self->_sourceView];

  v8 = [MEMORY[0x1E69AE158] materialViewWithRecipe:4 options:0 initialWeighting:0.0];
  materialView = self->_materialView;
  self->_materialView = v8;

  [(MTMaterialView *)self->_materialView setUserInteractionEnabled:0];
  v10 = [(MTMaterialView *)self->_materialView visualStylingProviderForCategory:1];
  v11 = [[MRUVisualStylingProvider alloc] initWithVisualStylingProvider:v10];
  [(MRUViewServiceRoutingViewController *)self->_routingViewController setStylingProvider:v11];

  view2 = [(MRUViewServiceContainerViewController *)self view];
  [view2 addSubview:self->_materialView];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = MRUViewServiceContainerViewController;
  [(MRUViewServiceContainerViewController *)&v4 viewDidLayoutSubviews];
  [(MPMediaControlsConfiguration *)self->_configuration sourceRect];
  [(UIView *)self->_sourceView setFrame:?];
  view = [(MRUViewServiceContainerViewController *)self view];
  [view bounds];
  [(MTMaterialView *)self->_materialView setFrame:?];
}

- (BOOL)prefersStatusBarHidden
{
  if (![(MRUViewServiceContainerViewController *)self shouldUsePopoverAnchor])
  {
    return 1;
  }

  v3 = MEMORY[0x1E696AAE8];
  presentingAppBundleID = [(MPMediaControlsConfiguration *)self->_configuration presentingAppBundleID];
  LOBYTE(v3) = [v3 mru_isSpringBoardBundleIdentifier:presentingAppBundleID];

  return v3;
}

- (void)setConfiguration:(id)configuration
{
  objc_storeStrong(&self->_configuration, configuration);
  configurationCopy = configuration;
  [(MRUViewServiceRoutingViewController *)self->_routingViewController setConfiguration:configurationCopy];
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v9 = [[MRUPopoverPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  if ([(MRUViewServiceContainerViewController *)self shouldUsePopoverAnchor])
  {
    [(MRUPopoverPresentationController *)v9 setSourceView:self->_sourceView];
  }

  CCUIExpandedModuleContinuousCornerRadius();
  [(MRUPopoverPresentationController *)v9 _setCornerRadius:?];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v12 = 15;
  }

  else
  {
    v12 = 3;
  }

  [(MRUPopoverPresentationController *)v9 setPermittedArrowDirections:v12];
  [(MRUPopoverPresentationController *)v9 setDelegate:self];

  return v9;
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  routingViewController = self->_routingViewController;
  presentationCopy = presentation;
  view = [(MRUViewServiceRoutingViewController *)routingViewController view];
  view2 = [(MRUViewServiceContainerViewController *)self view];
  [view2 bounds];
  [view sizeThatFits:{v7, v8}];
  [presentationCopy setPopoverContentSize:?];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissalBlock = [(MRUViewServiceContainerViewController *)self dismissalBlock];

  if (dismissalBlock)
  {
    dismissalBlock2 = [(MRUViewServiceContainerViewController *)self dismissalBlock];
    dismissalBlock2[2]();
  }
}

- (void)transitionToVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  if (visible)
  {
    [(MRUViewServiceContainerViewController *)self presentViewController:self->_routingViewController animated:animated completion:0];
  }

  else
  {
    dismissalBlock = [(MRUViewServiceContainerViewController *)self dismissalBlock];
    [(MRUViewServiceContainerViewController *)self dismissViewControllerAnimated:animatedCopy completion:dismissalBlock];
  }

  [(MRUViewServiceContainerViewController *)self updateMaterialForPresenting:visibleCopy];
}

- (void)viewServiceRoutingViewControllerDidChangeSize:(id)size
{
  sizeCopy = size;
  routingViewController = [(MRUViewServiceContainerViewController *)self routingViewController];
  transitionCoordinator = [routingViewController transitionCoordinator];

  if (transitionCoordinator)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__MRUViewServiceContainerViewController_viewServiceRoutingViewControllerDidChangeSize___block_invoke_2;
    v11[3] = &unk_1E7665460;
    v12 = sizeCopy;
    selfCopy = self;
    [transitionCoordinator animateAlongsideTransition:&__block_literal_global_42 completion:v11];
  }

  else
  {
    view = [sizeCopy view];
    view2 = [(MRUViewServiceContainerViewController *)self view];
    [view2 bounds];
    [view sizeThatFits:{v9, v10}];
    [sizeCopy setPreferredContentSize:?];
  }
}

void __87__MRUViewServiceContainerViewController_viewServiceRoutingViewControllerDidChangeSize___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) view];
  v2 = [*(a1 + 40) view];
  [v2 bounds];
  [v5 sizeThatFits:{v3, v4}];
  [*(a1 + 32) setPreferredContentSize:?];
}

- (void)viewServiceRoutingViewControllerDidDismiss:(id)dismiss
{
  dismissalBlock = [(MRUViewServiceContainerViewController *)self dismissalBlock];
  [(MRUViewServiceContainerViewController *)self dismissViewControllerAnimated:1 completion:dismissalBlock];
}

- (void)viewServiceRoutingViewControllerDidDismiss:(id)dismiss withCustomRowTapped:(id)tapped
{
  dismissCopy = dismiss;
  tappedCopy = tapped;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __104__MRUViewServiceContainerViewController_viewServiceRoutingViewControllerDidDismiss_withCustomRowTapped___block_invoke;
  v9[3] = &unk_1E7663980;
  objc_copyWeak(&v11, &location);
  v8 = tappedCopy;
  v10 = v8;
  [(MRUViewServiceContainerViewController *)self dismissViewControllerAnimated:1 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __104__MRUViewServiceContainerViewController_viewServiceRoutingViewControllerDidDismiss_withCustomRowTapped___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained customRowTappedBlock];
  v2[2](v2, *(a1 + 32));
}

- (BOOL)shouldUsePopoverAnchor
{
  view = [(MRUViewServiceContainerViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_sourceView frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v38.origin.x = v5;
  v38.origin.y = v7;
  v38.size.width = v9;
  v38.size.height = v11;
  MinX = CGRectGetMinX(v38);
  v39.origin.x = v5;
  v39.origin.y = v7;
  v39.size.width = v9;
  v39.size.height = v11;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = v5;
  v40.origin.y = v7;
  v40.size.width = v9;
  v40.size.height = v11;
  Width = CGRectGetWidth(v40);
  v41.origin.x = v5;
  v41.origin.y = v7;
  v41.size.width = v9;
  v41.size.height = v11;
  v34 = CGRectGetMinX(v41);
  v42.origin.x = v5;
  v42.origin.y = v7;
  v42.size.width = v9;
  v42.size.height = v11;
  MaxY = CGRectGetMaxY(v42);
  v43.origin.x = v5;
  v43.origin.y = v7;
  v43.size.width = v9;
  v43.size.height = v11;
  rect1 = CGRectGetWidth(v43);
  view2 = [(MRUViewServiceContainerViewController *)self view];
  window = [view2 window];
  windowScene = [window windowScene];
  screen = [windowScene screen];

  displayIdentity = [screen displayIdentity];
  isExternal = [displayIdentity isExternal];

  v44.origin.x = v13;
  v44.origin.y = v15;
  v44.size.width = v17;
  v44.size.height = v19;
  if (CGRectIsEmpty(v44))
  {
    v26 = 1;
  }

  else
  {
    v45.origin.x = v5;
    v45.origin.y = v7;
    v45.size.width = v9;
    v45.size.height = v11;
    v48.origin.x = v13;
    v48.origin.y = v15;
    v48.size.width = v17;
    v48.size.height = v19;
    v26 = !CGRectContainsRect(v45, v48);
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v46.origin.x = MinX;
  v46.size.width = Width;
  v46.origin.y = MinY;
  v46.size.height = 200.0;
  v49.origin.x = v13;
  v49.origin.y = v15;
  v49.size.width = v17;
  v49.size.height = v19;
  if (!CGRectContainsRect(v46, v49))
  {
    v47.origin.x = v34;
    v47.origin.y = MaxY - 200.0;
    v47.size.width = rect1;
    v47.size.height = 200.0;
    v50.origin.x = v13;
    v50.origin.y = v15;
    v50.size.width = v17;
    v50.size.height = v19;
    v29 = CGRectContainsRect(v47, v50);
    if (!v26)
    {
      goto LABEL_6;
    }

LABEL_8:
    v30 = 0;
    goto LABEL_9;
  }

  v29 = 1;
  if (v26)
  {
    goto LABEL_8;
  }

LABEL_6:
  v30 = (isExternal ^ 1) & ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || v29);
LABEL_9:

  return v30;
}

- (void)updateMaterialForPresenting:(BOOL)presenting
{
  presentingCopy = presenting;
  if (![(MRUViewServiceContainerViewController *)self shouldUsePopoverAnchor])
  {
    routingViewController = [(MRUViewServiceContainerViewController *)self routingViewController];
    transitionCoordinator = [routingViewController transitionCoordinator];

    if (transitionCoordinator)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __69__MRUViewServiceContainerViewController_updateMaterialForPresenting___block_invoke;
      v8[3] = &unk_1E76642B8;
      v8[4] = self;
      v9 = presentingCopy;
      [transitionCoordinator animateAlongsideTransition:v8 completion:0];
    }

    else
    {
      v7 = 0.0;
      if (presentingCopy)
      {
        v7 = 1.0;
      }

      [(MTMaterialView *)self->_materialView setWeighting:v7];
    }
  }
}

uint64_t __69__MRUViewServiceContainerViewController_updateMaterialForPresenting___block_invoke(uint64_t a1)
{
  v2 = 0.0;
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  [*(*(a1 + 32) + 1032) setWeighting:v2];
  v3 = *(a1 + 32);

  return [v3 setNeedsStatusBarAppearanceUpdate];
}

@end