@interface CSCameraExtensionViewController
- (BOOL)handleEvent:(id)a3;
- (BOOL)secureCaptureSceneViewController:(id)a3 requestsSceneReactivation:(id)a4;
- (CSCameraExtensionViewController)initWithCaptureApplication:(id)a3 launchType:(unint64_t)a4;
- (CSCameraExtensionViewControllerDelegate)delegate;
- (CSCoverSheetViewController)coverSheetViewController;
- (CSDismissableModalViewController)modalPresenter;
- (CSHostableEntityPresenterDelegate)entityPresenterDelegate;
- (SBSwitcherIconZooming)iconZoomingView;
- (id)_launchActions;
- (id)_newDisplayLayoutElement;
- (int64_t)_effectiveContentMode;
- (void)_applyHostableEntityContentMode;
- (void)_createHostViewController;
- (void)_showHostViewControllerViewIfNeededAnimated:(BOOL)a3;
- (void)_updateDisplayLayoutElementForActivation:(id)a3;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
- (void)applicationLaunchTransitionDidCompleteWithError:(id)a3;
- (void)dealloc;
- (void)dismiss;
- (void)invalidate;
- (void)prepareForApplicationLaunchTransition;
- (void)secureCaptureSceneViewController:(id)a3 didCreateScene:(id)a4;
- (void)secureCaptureSceneViewController:(id)a3 didDestroyScene:(id)a4;
- (void)secureCaptureSceneViewController:(id)a3 didSetIdleTimerDisabled:(BOOL)a4;
- (void)secureCaptureSceneViewController:(id)a3 requestsLaunchAfterTransitionCompletionWithAction:(id)a4 completion:(id)a5;
- (void)secureCaptureSceneViewController:(id)a3 requestsLaunchWithAction:(id)a4 completion:(id)a5;
- (void)secureCaptureSceneViewController:(id)a3 sceneContentStateDidChange:(id)a4;
- (void)setActionsToDeliverToHostableEntity:(id)a3;
- (void)setHostableEntityContentMode:(int64_t)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CSCameraExtensionViewController

- (CSCameraExtensionViewController)initWithCaptureApplication:(id)a3 launchType:(unint64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = CSCameraExtensionViewController;
  v8 = [(CSCameraExtensionViewController *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_captureApplication, a3);
    v9->_reactivationAllowed = 1;
    v9->_launchType = a4;
    v10 = +[CSLockScreenDomain rootSettings];
    v11 = [v10 cameraExtensionSettings];
    cameraExtensionSettings = v9->_cameraExtensionSettings;
    v9->_cameraExtensionSettings = v11;
  }

  return v9;
}

- (void)dealloc
{
  [(SESecureCaptureSceneViewController *)self->_hostViewController invalidate];
  hostViewController = self->_hostViewController;
  self->_hostViewController = 0;

  v4.receiver = self;
  v4.super_class = CSCameraExtensionViewController;
  [(CSCoverSheetViewControllerBase *)&v4 dealloc];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = CSCameraExtensionViewController;
  [(CSCoverSheetViewControllerBase *)&v13 viewWillLayoutSubviews];
  v3 = [(CSCameraExtensionViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(SESecureCaptureSceneViewController *)self->_hostViewController view];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CSCameraExtensionViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewDidLoad];
  v3 = [(CSCameraExtensionViewController *)self view];
  v4 = [MEMORY[0x277D75348] blackColor];
  [v3 setBackgroundColor:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSCameraExtensionViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:a3];
  if (!self->_hostViewController)
  {
    [(CSCameraExtensionViewController *)self _createHostViewController];
  }

  [(CSCameraExtensionViewController *)self _applyHostableEntityContentMode];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSCameraExtensionViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:a3];
  [(CSCameraExtensionViewController *)self _applyHostableEntityContentMode];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__CSCameraExtensionViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke;
  v7[3] = &unk_27838B720;
  v8 = v5;
  v6 = v5;
  [(CSCoverSheetViewControllerBase *)self updateDisplayLayoutElementWithBuilder:v7];
}

void __79__CSCameraExtensionViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 level];
  [v4 setLevel:v3];
}

- (void)secureCaptureSceneViewController:(id)a3 didSetIdleTimerDisabled:(BOOL)a4
{
  v5 = [CSAction actionWithType:3, a4];
  [(CSCoverSheetViewControllerBase *)self sendAction:v5];
}

- (void)secureCaptureSceneViewController:(id)a3 requestsLaunchWithAction:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cameraExtensionViewController:self requestsLaunchWithAction:v8 completion:v7];
}

- (void)secureCaptureSceneViewController:(id)a3 requestsLaunchAfterTransitionCompletionWithAction:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cameraExtensionViewController:self requestsLaunchAfterTransitionCompletionWithAction:v8 completion:v7];
}

- (void)secureCaptureSceneViewController:(id)a3 didCreateScene:(id)a4
{
  v5 = a4;
  v6 = [(CSCameraExtensionViewController *)self delegate];
  [v6 cameraExtensionViewController:self didCreateScene:v5];

  v7 = [(CSCoverSheetViewControllerBase *)self isDisappeared]^ 1;

  [(CSCameraExtensionViewController *)self _showHostViewControllerViewIfNeededAnimated:v7];
}

- (void)secureCaptureSceneViewController:(id)a3 sceneContentStateDidChange:(id)a4
{
  if ([a4 contentState] == 2)
  {
    v5 = [(CSCoverSheetViewControllerBase *)self isDisappeared]^ 1;

    [(CSCameraExtensionViewController *)self _showHostViewControllerViewIfNeededAnimated:v5];
  }
}

- (BOOL)secureCaptureSceneViewController:(id)a3 requestsSceneReactivation:(id)a4
{
  reactivationAllowed = self->_reactivationAllowed;
  if (reactivationAllowed)
  {
    objc_initWeak(&location, self);
    v6 = dispatch_time(0, 500000000);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __94__CSCameraExtensionViewController_secureCaptureSceneViewController_requestsSceneReactivation___block_invoke;
    v8[3] = &unk_27838B748;
    objc_copyWeak(&v9, &location);
    dispatch_after(v6, MEMORY[0x277D85CD0], v8);
    self->_reactivationAllowed = 0;
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return reactivationAllowed;
}

void __94__CSCameraExtensionViewController_secureCaptureSceneViewController_requestsSceneReactivation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = WeakRetained[142];
  v2 = [WeakRetained _launchActions];
  v3 = [v2 copy];
  [v1 reactivateWithLaunchActions:v3];
}

- (void)secureCaptureSceneViewController:(id)a3 didDestroyScene:(id)a4
{
  v5 = a4;
  v6 = [(CSCameraExtensionViewController *)self delegate];
  [v6 cameraExtensionViewController:self didDestroyScene:v5];
}

- (void)invalidate
{
  [(SESecureCaptureSceneViewController *)self->_hostViewController invalidate];
  [(CSCameraExtensionViewController *)self bs_removeChildViewController:self->_hostViewController];
  hostViewController = self->_hostViewController;
  self->_hostViewController = 0;
}

- (id)_newDisplayLayoutElement
{
  v2 = [(LCSCaptureApplicationDescribing *)self->_captureApplication extension];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D66A50]) initWithIdentifier:v3];
    [v4 setFillsDisplayBounds:1];
    [v4 setLayoutRole:6];
    [v4 setBundleIdentifier:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateDisplayLayoutElementForActivation:(id)a3
{
  v5.receiver = self;
  v5.super_class = CSCameraExtensionViewController;
  v4 = a3;
  [(CSCoverSheetViewControllerBase *)&v5 _updateDisplayLayoutElementForActivation:v4];
  [v4 sb_setTransitioning:{(-[CSCameraExtensionViewController _appearState](self, "_appearState", v5.receiver, v5.super_class) & 0xFFFFFFFD) == 1}];
}

- (void)dismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_modalPresenter);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__CSCameraExtensionViewController_dismiss__block_invoke;
    v6[3] = &unk_27838B770;
    v7 = WeakRetained;
    [v7 dismissContentViewController:self animated:1 completion:v6];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSCameraExtensionViewController;
    [(CSCoverSheetViewControllerBase *)&v5 dismiss];
  }
}

- (void)aggregateAppearance:(id)a3
{
  v17.receiver = self;
  v17.super_class = CSCameraExtensionViewController;
  v3 = a3;
  [(CSCoverSheetViewControllerBase *)&v17 aggregateAppearance:v3];
  v4 = objc_opt_new();
  v5 = [v4 priority:{40, v17.receiver, v17.super_class}];
  v6 = [v5 fakeStatusBar:1];
  v7 = [v6 fakeStatusBarLevel:&unk_28307A388];
  [v3 addComponent:v7];

  v8 = +[CSComponent homeAffordance];
  v9 = [v8 priority:40];
  v10 = [v9 hidden:1];
  [v3 addComponent:v10];

  v11 = objc_opt_new();
  v12 = [v11 priority:40];
  v13 = [v12 hidden:1];
  [v3 addComponent:v13];

  v14 = +[CSComponent dateView];
  v15 = [v14 priority:40];
  v16 = [v15 hidden:1];
  [v3 addComponent:v16];
}

- (void)aggregateBehavior:(id)a3
{
  v9.receiver = self;
  v9.super_class = CSCameraExtensionViewController;
  v4 = a3;
  [(CSCoverSheetViewControllerBase *)&v9 aggregateBehavior:v4];
  v5 = [(SESecureCaptureSceneViewController *)self->_hostViewController requestsIdleTimerDisabled:v9.receiver];
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  if (v5)
  {
    v7 = 18;
  }

  else
  {
    v7 = 17;
  }

  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [v4 setIdleTimerMode:v6];
  [v4 setIdleTimerDuration:v7];
  [v4 setIdleWarnMode:v8];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CSCameraExtensionViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v10, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    v6 = [v4 type];
    if (v6 == 10)
    {
      v7 = self;
      v8 = 3;
    }

    else
    {
      if (v6 != 11)
      {
        if (v6 == 25)
        {
          [(CSCameraExtensionViewController *)self dismiss];
        }

        goto LABEL_11;
      }

      v7 = self;
      v8 = 2;
    }

    [(CSCameraExtensionViewController *)v7 setHostableEntityContentMode:v8];
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = [v4 isConsumable];
LABEL_12:

  return v5;
}

- (void)setHostableEntityContentMode:(int64_t)a3
{
  if (self->_hostableEntityContentMode != a3)
  {
    self->_hostableEntityContentMode = a3;
    [(CSCameraExtensionViewController *)self _applyHostableEntityContentMode];
  }
}

- (void)setActionsToDeliverToHostableEntity:(id)a3
{
  v6 = a3;
  if ((BSEqualSets() & 1) == 0)
  {
    [(CSCameraExtensionViewController *)self bs_removeChildViewController:self->_hostViewController];
    [(SESecureCaptureSceneViewController *)self->_hostViewController invalidate];
    v4 = [v6 copy];
    actionsToDeliverToHostableEntity = self->_actionsToDeliverToHostableEntity;
    self->_actionsToDeliverToHostableEntity = v4;

    if (![(CSCoverSheetViewControllerBase *)self isDisappeared])
    {
      [(CSCameraExtensionViewController *)self _createHostViewController];
    }
  }
}

- (SBSwitcherIconZooming)iconZoomingView
{
  v3 = [(CSCameraExtensionViewController *)self coverSheetViewController];
  v4 = [(LCSCaptureApplicationDescribing *)self->_captureApplication bundleIdentifier];
  v5 = [v3 bestIconViewForApplicationBundleIdentifier:v4];

  return v5;
}

- (int64_t)_effectiveContentMode
{
  v3 = [(CSCoverSheetViewControllerBase *)self isDisappeared];
  if (self->_hostableEntityContentMode <= 1)
  {
    hostableEntityContentMode = 1;
  }

  else
  {
    hostableEntityContentMode = self->_hostableEntityContentMode;
  }

  if (v3)
  {
    return hostableEntityContentMode;
  }

  else
  {
    return self->_hostableEntityContentMode;
  }
}

- (void)_applyHostableEntityContentMode
{
  v3 = [(CSCameraExtensionViewController *)self _effectiveContentMode];
  if (v3 == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained cameraExtensionViewControllerWillPresent:self];
    }

    [(SESecureCaptureSceneViewController *)self->_hostViewController setPresentationMode:1];
    if (![(CSCameraExtensionViewController *)self isLayoutElementSet])
    {
      [(CSCoverSheetViewControllerBase *)self _setDisplayLayoutElementActive:1 immediately:1];
      self->_layoutElementSet = 1;
    }

    if (self->_hostViewController && ![(CSCameraExtensionViewController *)self isLaunchMonitoringRequested]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [(SESecureCaptureSceneViewController *)self->_hostViewController _scene];
      [WeakRetained cameraExtensionViewController:self requestsLaunchMonitoringForScene:v5];

      self->_launchMonitoringRequested = 1;
    }
  }

  else
  {
    if (v3 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(SESecureCaptureSceneViewController *)self->_hostViewController setPresentationMode:v4];
  }
}

- (id)_launchActions
{
  actionsToDeliverToHostableEntity = self->_actionsToDeliverToHostableEntity;
  v4 = actionsToDeliverToHostableEntity;
  if (!actionsToDeliverToHostableEntity)
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = [(LCSCaptureApplicationDescribing *)self->_captureApplication launchActionsForTarget:1 launchType:[(CSCameraExtensionViewController *)self _lcsLaunchType]];
  v6 = [v4 setByAddingObjectsFromSet:v5];

  if (!actionsToDeliverToHostableEntity)
  {
  }

  return v6;
}

- (void)_createHostViewController
{
  v3 = objc_alloc(MEMORY[0x277D4C8E0]);
  v4 = [(LCSCaptureApplicationDescribing *)self->_captureApplication extension];
  v5 = [(CSCameraExtensionViewController *)self _launchActions];
  v6 = [v3 initWithProvider:v4 launchActions:v5];
  hostViewController = self->_hostViewController;
  self->_hostViewController = v6;

  actionsToDeliverToHostableEntity = self->_actionsToDeliverToHostableEntity;
  self->_actionsToDeliverToHostableEntity = 0;

  [(SESecureCaptureSceneViewController *)self->_hostViewController setDelegate:self];
  v9 = [(SESecureCaptureSceneViewController *)self->_hostViewController view];
  [v9 setAlpha:0.0];

  [(CSCameraExtensionViewController *)self bs_addChildViewController:self->_hostViewController];
  [(CSCameraExtensionViewController *)self _applyHostableEntityContentMode];

  [(CSCameraExtensionViewController *)self _showHostViewControllerViewIfNeededAnimated:0];
}

- (void)_showHostViewControllerViewIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SESecureCaptureSceneViewController *)self->_hostViewController view];
  v6 = [(SESecureCaptureSceneViewController *)self->_hostViewController _scene];
  [v5 alpha];
  if (BSFloatIsZero() && [v6 contentState] == 2)
  {
    if (v3)
    {
      v7 = [(CSCameraExtensionSettings *)self->_cameraExtensionSettings captureExtensionLaunchFadeInSettings];
      v8 = [v7 BSAnimationSettings];
    }

    else
    {
      v8 = 0;
    }

    v9 = MEMORY[0x277CF0D38];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __79__CSCameraExtensionViewController__showHostViewControllerViewIfNeededAnimated___block_invoke;
    v10[3] = &unk_27838B770;
    v11 = v5;
    [v9 animateWithSettings:v8 actions:v10];
  }
}

- (void)prepareForApplicationLaunchTransition
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(LCSCaptureApplicationDescribing *)self->_captureApplication bundleIdentifier];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "Prepare for application launch transition to %@", &v5, 0xCu);
  }

  [(CSCameraExtensionViewController *)self setHostableEntityContentMode:3];
}

- (void)applicationLaunchTransitionDidCompleteWithError:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogDashBoard();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CSCameraExtensionViewController *)self applicationLaunchTransitionDidCompleteWithError:v4, v6];
    }

    [(CSCameraExtensionViewController *)self setHostableEntityContentMode:2];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(LCSCaptureApplicationDescribing *)self->_captureApplication bundleIdentifier];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Capture application launch transition to %@ completed successfully", &v8, 0xCu);
    }
  }
}

- (CSHostableEntityPresenterDelegate)entityPresenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_entityPresenterDelegate);

  return WeakRetained;
}

- (CSCameraExtensionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CSDismissableModalViewController)modalPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_modalPresenter);

  return WeakRetained;
}

- (CSCoverSheetViewController)coverSheetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetViewController);

  return WeakRetained;
}

- (void)applicationLaunchTransitionDidCompleteWithError:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 1096) bundleIdentifier];
  v6 = [a2 debugDescription];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_21EB05000, a3, OS_LOG_TYPE_ERROR, "Capture application launch transition to %@ completed with error: %@", &v7, 0x16u);
}

@end