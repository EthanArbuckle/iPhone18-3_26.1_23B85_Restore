@interface CSDismissableModalViewController
- (BOOL)handleAction:(id)a3 fromController:(id)a4;
- (BOOL)handleEvent:(id)a3;
- (CSDismissableModalViewControllerDelegate)delegate;
- (void)_addOrRemoveGestureForCurrentSettings;
- (void)_configureBarSwipeBehaviorWithGrabberViewIfNecessary:(id)a3;
- (void)_handleBottomEdgeGestureBegan:(id)a3;
- (void)_handleBottomEdgeGestureChanged:(id)a3;
- (void)_handleBottomEdgeGestureEnded:(id)a3;
- (void)_handleBottomEdgeGestureRecognizer:(id)a3;
- (void)addGrabberView:(id)a3;
- (void)barSwipeBehaviorActionPerformed:(id)a3;
- (void)homeGestureParticipantOwningHomeGestureDidChange:(BOOL)a3;
- (void)homeGestureParticipantUpdateZStackPreferences:(id)a3 forZStackParticipant:(id)a4;
- (void)setHomeAffordanceController:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CSDismissableModalViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSDismissableModalViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:a3];
  [(CSDismissableModalViewController *)self _addOrRemoveGestureForCurrentSettings];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSDismissableModalViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:a3];
  [(CSDismissableModalViewController *)self _addOrRemoveGestureForCurrentSettings];
}

- (void)setHomeAffordanceController:(id)a3
{
  v5 = a3;
  homeAffordanceController = self->_homeAffordanceController;
  if (homeAffordanceController != v5)
  {
    v7 = v5;
    [(CSModalHomeAffordanceControlling *)homeAffordanceController setHomeGestureRecognizer:0];
    [(CSModalHomeAffordanceControlling *)self->_homeAffordanceController unregisterHomeGestureParticipant];
    objc_storeStrong(&self->_homeAffordanceController, a3);
    if (self->_bottomEdgeRecognizer)
    {
      [(CSModalHomeAffordanceControlling *)self->_homeAffordanceController setHomeGestureRecognizer:?];
      [(CSModalHomeAffordanceControlling *)self->_homeAffordanceController registerHomeGestureParticipant:self];
    }

    homeAffordanceController = [(CSDismissableModalViewController *)self _addOrRemoveGestureForCurrentSettings];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](homeAffordanceController, v5);
}

- (void)_addOrRemoveGestureForCurrentSettings
{
  if (SBFEffectiveHomeButtonType() != 2)
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      return;
    }
  }

  v5 = [(CSDismissableModalViewController *)self _appearState];
  bottomEdgeRecognizer = self->_bottomEdgeRecognizer;
  if (v5)
  {
    if (bottomEdgeRecognizer)
    {
      return;
    }

    v7 = [(UIScreenEdgePanGestureRecognizer *)[_CSScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:sel__handleBottomEdgeGestureRecognizer_];
    v8 = self->_bottomEdgeRecognizer;
    self->_bottomEdgeRecognizer = &v7->super;

    [(UIScreenEdgePanGestureRecognizer *)self->_bottomEdgeRecognizer setEdges:4];
    [(UIScreenEdgePanGestureRecognizer *)self->_bottomEdgeRecognizer setDelegate:self];
    [(UIScreenEdgePanGestureRecognizer *)self->_bottomEdgeRecognizer setAllowedTouchTypes:&unk_283079470];
    [(UIScreenEdgePanGestureRecognizer *)self->_bottomEdgeRecognizer sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
    [(UIScreenEdgePanGestureRecognizer *)self->_bottomEdgeRecognizer _setHysteresis:10.0];
    if ((_SBF_Private_IsD16() & 1) != 0 || (_SBF_Private_IsD17() & 1) != 0 || (_SBF_Private_IsD63() & 1) != 0 || (_SBF_Private_IsD64() & 1) != 0 || _SBF_Private_IsV59())
    {
      v9 = +[CSLockScreenDomain rootSettings];
      v10 = [v9 coverSheetDismissGestureSettings];

      v11 = self->_bottomEdgeRecognizer;
      [v10 edgeRegionSize];
      [(UIScreenEdgePanGestureRecognizer *)v11 _setEdgeRegionSize:?];
      v12 = self->_bottomEdgeRecognizer;
      [v10 edgeRegionSize];
      [(UIScreenEdgePanGestureRecognizer *)v12 _setBottomEdgeRegionSize:?];
    }

    v13 = [(CSModalHomeAffordanceControlling *)self->_homeAffordanceController registerHomeGestureParticipant:self];
    homeAffordanceController = self->_homeAffordanceController;
    if (v13)
    {
      if ([(CSModalHomeAffordanceControlling *)homeAffordanceController ownsHomeGesture])
      {
        v15 = self->_homeAffordanceController;
        v16 = self->_bottomEdgeRecognizer;

        [(CSModalHomeAffordanceControlling *)v15 setHomeGestureRecognizer:v16];
      }

      return;
    }

    if (!homeAffordanceController)
    {
      return;
    }

    v18 = [(CSDismissableModalViewController *)self delegate];
    [(UIScreenEdgePanGestureRecognizer *)v18 dismissForHomeButton];
    v17 = v18;
  }

  else
  {
    if (!bottomEdgeRecognizer)
    {
      return;
    }

    [(CSModalHomeAffordanceControlling *)self->_homeAffordanceController setHomeGestureRecognizer:0];
    [(CSModalHomeAffordanceControlling *)self->_homeAffordanceController unregisterHomeGestureParticipant];
    v17 = self->_bottomEdgeRecognizer;
    self->_bottomEdgeRecognizer = 0;
  }
}

- (void)_handleBottomEdgeGestureRecognizer:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if ((v4 - 3) < 3)
  {
    [(CSDismissableModalViewController *)self _handleBottomEdgeGestureEnded:v7];
LABEL_8:
    v6 = v7;
    goto LABEL_9;
  }

  if (v4 == 2)
  {
    [(CSDismissableModalViewController *)self _handleBottomEdgeGestureChanged:v7];
    goto LABEL_8;
  }

  v5 = v4 == 1;
  v6 = v7;
  if (v5)
  {
    [(CSDismissableModalViewController *)self _handleBottomEdgeGestureBegan:v7];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_handleBottomEdgeGestureBegan:(id)a3
{
  v4 = a3;
  if (self->_bottomEdgeRecognizer == v4)
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained handleBottomEdgeGestureBegan:v6];
    }

    [(SBFBarSwipeBehavior *)self->_barSwipeBehavior barSwipeInteractionBegan:v6];

    v4 = v6;
  }
}

- (void)_handleBottomEdgeGestureChanged:(id)a3
{
  v4 = a3;
  if (self->_bottomEdgeRecognizer == v4)
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained handleBottomEdgeGestureChanged:v6];
    }

    [(SBFBarSwipeBehavior *)self->_barSwipeBehavior barSwipeInteractionChanged:v6];

    v4 = v6;
  }
}

- (void)_handleBottomEdgeGestureEnded:(id)a3
{
  v4 = a3;
  if (self->_bottomEdgeRecognizer == v4)
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained handleBottomEdgeGestureEnded:v6];
    }

    [(SBFBarSwipeBehavior *)self->_barSwipeBehavior barSwipeInteractionEnded:v6];

    v4 = v6;
  }
}

- (void)_configureBarSwipeBehaviorWithGrabberViewIfNecessary:(id)a3
{
  v4 = a3;
  if (!self->_barSwipeBehavior)
  {
    v9 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    v4 = v9;
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277D65E10]) initWithGrabberView:v9 settleAffordanceAnimationBehaviorDescription:0];
      barSwipeBehavior = self->_barSwipeBehavior;
      self->_barSwipeBehavior = v7;

      [(SBFBarSwipeBehavior *)self->_barSwipeBehavior setDelegate:self];
      v4 = v9;
    }
  }
}

- (void)homeGestureParticipantOwningHomeGestureDidChange:(BOOL)a3
{
  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
  v4 = [(CSModalHomeAffordanceControlling *)self->_homeAffordanceController ownsHomeGesture];
  homeAffordanceController = self->_homeAffordanceController;
  if (v4)
  {
    bottomEdgeRecognizer = self->_bottomEdgeRecognizer;
  }

  else
  {
    bottomEdgeRecognizer = 0;
  }

  [(CSModalHomeAffordanceControlling *)homeAffordanceController setHomeGestureRecognizer:bottomEdgeRecognizer];
}

- (void)addGrabberView:(id)a3
{
  v4 = a3;
  [(CSDismissableModalViewController *)self _configureBarSwipeBehaviorWithGrabberViewIfNecessary:v4];
  v5 = [(CSDismissableModalViewController *)self delegate];
  [v5 addGrabberView:v4];
}

- (void)homeGestureParticipantUpdateZStackPreferences:(id)a3 forZStackParticipant:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained zStackParticipant:v6 updatePreferences:v8];
  }
}

- (void)barSwipeBehaviorActionPerformed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained handleBarSwipeHomeGesturePerformed];
  }
}

- (BOOL)handleAction:(id)a3 fromController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained wantsDefaultModalDismissalBehavior] && objc_msgSend(v6, "type") == 1)
  {
    v13 = [(CSPresentationViewController *)self contentViewControllers];
    v14 = [v13 containsObject:v11];

    if (v14)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __64__CSDismissableModalViewController_handleAction_fromController___block_invoke;
      v17[3] = &unk_27838B770;
      v17[4] = self;
      v15 = 1;
      [(CSPresentationViewController *)self dismissContentViewController:v11 animated:1 completion:v17];
    }

    else
    {
      [(CSCoverSheetViewControllerBase *)self dismiss];
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CSDismissableModalViewController;
  if (!-[CSPresentationViewController handleEvent:](&v8, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    if ([v4 type] != 27)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = [(CSDismissableModalViewController *)self delegate];
    [v5 dismissForHomeButton];
  }

  v6 = [v4 isConsumable];
LABEL_7:

  return v6;
}

- (CSDismissableModalViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end