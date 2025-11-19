@interface MRUViewServiceContainerViewController
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldUsePopoverAnchor;
- (MRUViewServiceContainerViewController)init;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)transitionToVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)updateMaterialForPresenting:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewServiceRoutingViewControllerDidChangeSize:(id)a3;
- (void)viewServiceRoutingViewControllerDidDismiss:(id)a3;
- (void)viewServiceRoutingViewControllerDidDismiss:(id)a3 withCustomRowTapped:(id)a4;
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

  v6 = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)self->_sourceView setBackgroundColor:v6];

  v7 = [(MRUViewServiceContainerViewController *)self view];
  [v7 addSubview:self->_sourceView];

  v8 = [MEMORY[0x1E69AE158] materialViewWithRecipe:4 options:0 initialWeighting:0.0];
  materialView = self->_materialView;
  self->_materialView = v8;

  [(MTMaterialView *)self->_materialView setUserInteractionEnabled:0];
  v10 = [(MTMaterialView *)self->_materialView visualStylingProviderForCategory:1];
  v11 = [[MRUVisualStylingProvider alloc] initWithVisualStylingProvider:v10];
  [(MRUViewServiceRoutingViewController *)self->_routingViewController setStylingProvider:v11];

  v12 = [(MRUViewServiceContainerViewController *)self view];
  [v12 addSubview:self->_materialView];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = MRUViewServiceContainerViewController;
  [(MRUViewServiceContainerViewController *)&v4 viewDidLayoutSubviews];
  [(MPMediaControlsConfiguration *)self->_configuration sourceRect];
  [(UIView *)self->_sourceView setFrame:?];
  v3 = [(MRUViewServiceContainerViewController *)self view];
  [v3 bounds];
  [(MTMaterialView *)self->_materialView setFrame:?];
}

- (BOOL)prefersStatusBarHidden
{
  if (![(MRUViewServiceContainerViewController *)self shouldUsePopoverAnchor])
  {
    return 1;
  }

  v3 = MEMORY[0x1E696AAE8];
  v4 = [(MPMediaControlsConfiguration *)self->_configuration presentingAppBundleID];
  LOBYTE(v3) = [v3 mru_isSpringBoardBundleIdentifier:v4];

  return v3;
}

- (void)setConfiguration:(id)a3
{
  objc_storeStrong(&self->_configuration, a3);
  v5 = a3;
  [(MRUViewServiceRoutingViewController *)self->_routingViewController setConfiguration:v5];
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[MRUPopoverPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v7];

  if ([(MRUViewServiceContainerViewController *)self shouldUsePopoverAnchor])
  {
    [(MRUPopoverPresentationController *)v9 setSourceView:self->_sourceView];
  }

  CCUIExpandedModuleContinuousCornerRadius();
  [(MRUPopoverPresentationController *)v9 _setCornerRadius:?];
  v10 = [MEMORY[0x1E69DC938] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if ((v11 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

- (void)prepareForPopoverPresentation:(id)a3
{
  routingViewController = self->_routingViewController;
  v5 = a3;
  v9 = [(MRUViewServiceRoutingViewController *)routingViewController view];
  v6 = [(MRUViewServiceContainerViewController *)self view];
  [v6 bounds];
  [v9 sizeThatFits:{v7, v8}];
  [v5 setPopoverContentSize:?];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [(MRUViewServiceContainerViewController *)self dismissalBlock];

  if (v4)
  {
    v5 = [(MRUViewServiceContainerViewController *)self dismissalBlock];
    v5[2]();
  }
}

- (void)transitionToVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a3)
  {
    [(MRUViewServiceContainerViewController *)self presentViewController:self->_routingViewController animated:a4 completion:0];
  }

  else
  {
    v7 = [(MRUViewServiceContainerViewController *)self dismissalBlock];
    [(MRUViewServiceContainerViewController *)self dismissViewControllerAnimated:v4 completion:v7];
  }

  [(MRUViewServiceContainerViewController *)self updateMaterialForPresenting:v5];
}

- (void)viewServiceRoutingViewControllerDidChangeSize:(id)a3
{
  v4 = a3;
  v5 = [(MRUViewServiceContainerViewController *)self routingViewController];
  v6 = [v5 transitionCoordinator];

  if (v6)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__MRUViewServiceContainerViewController_viewServiceRoutingViewControllerDidChangeSize___block_invoke_2;
    v11[3] = &unk_1E7665460;
    v12 = v4;
    v13 = self;
    [v6 animateAlongsideTransition:&__block_literal_global_42 completion:v11];
  }

  else
  {
    v7 = [v4 view];
    v8 = [(MRUViewServiceContainerViewController *)self view];
    [v8 bounds];
    [v7 sizeThatFits:{v9, v10}];
    [v4 setPreferredContentSize:?];
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

- (void)viewServiceRoutingViewControllerDidDismiss:(id)a3
{
  v4 = [(MRUViewServiceContainerViewController *)self dismissalBlock];
  [(MRUViewServiceContainerViewController *)self dismissViewControllerAnimated:1 completion:v4];
}

- (void)viewServiceRoutingViewControllerDidDismiss:(id)a3 withCustomRowTapped:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __104__MRUViewServiceContainerViewController_viewServiceRoutingViewControllerDidDismiss_withCustomRowTapped___block_invoke;
  v9[3] = &unk_1E7663980;
  objc_copyWeak(&v11, &location);
  v8 = v7;
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
  v3 = [(MRUViewServiceContainerViewController *)self view];
  [v3 bounds];
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
  v20 = [(MRUViewServiceContainerViewController *)self view];
  v21 = [v20 window];
  v22 = [v21 windowScene];
  v23 = [v22 screen];

  v24 = [v23 displayIdentity];
  v25 = [v24 isExternal];

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

  v27 = [MEMORY[0x1E69DC938] currentDevice];
  v28 = [v27 userInterfaceIdiom];

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
  v30 = (v25 ^ 1) & ((v28 & 0xFFFFFFFFFFFFFFFBLL) == 1 || v29);
LABEL_9:

  return v30;
}

- (void)updateMaterialForPresenting:(BOOL)a3
{
  v3 = a3;
  if (![(MRUViewServiceContainerViewController *)self shouldUsePopoverAnchor])
  {
    v5 = [(MRUViewServiceContainerViewController *)self routingViewController];
    v6 = [v5 transitionCoordinator];

    if (v6)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __69__MRUViewServiceContainerViewController_updateMaterialForPresenting___block_invoke;
      v8[3] = &unk_1E76642B8;
      v8[4] = self;
      v9 = v3;
      [v6 animateAlongsideTransition:v8 completion:0];
    }

    else
    {
      v7 = 0.0;
      if (v3)
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