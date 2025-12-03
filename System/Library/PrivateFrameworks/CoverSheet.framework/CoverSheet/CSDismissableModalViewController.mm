@interface CSDismissableModalViewController
- (BOOL)handleAction:(id)action fromController:(id)controller;
- (BOOL)handleEvent:(id)event;
- (CSDismissableModalViewControllerDelegate)delegate;
- (void)_addOrRemoveGestureForCurrentSettings;
- (void)_configureBarSwipeBehaviorWithGrabberViewIfNecessary:(id)necessary;
- (void)_handleBottomEdgeGestureBegan:(id)began;
- (void)_handleBottomEdgeGestureChanged:(id)changed;
- (void)_handleBottomEdgeGestureEnded:(id)ended;
- (void)_handleBottomEdgeGestureRecognizer:(id)recognizer;
- (void)addGrabberView:(id)view;
- (void)barSwipeBehaviorActionPerformed:(id)performed;
- (void)homeGestureParticipantOwningHomeGestureDidChange:(BOOL)change;
- (void)homeGestureParticipantUpdateZStackPreferences:(id)preferences forZStackParticipant:(id)participant;
- (void)setHomeAffordanceController:(id)controller;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CSDismissableModalViewController

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CSDismissableModalViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:appear];
  [(CSDismissableModalViewController *)self _addOrRemoveGestureForCurrentSettings];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CSDismissableModalViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:disappear];
  [(CSDismissableModalViewController *)self _addOrRemoveGestureForCurrentSettings];
}

- (void)setHomeAffordanceController:(id)controller
{
  controllerCopy = controller;
  homeAffordanceController = self->_homeAffordanceController;
  if (homeAffordanceController != controllerCopy)
  {
    v7 = controllerCopy;
    [(CSModalHomeAffordanceControlling *)homeAffordanceController setHomeGestureRecognizer:0];
    [(CSModalHomeAffordanceControlling *)self->_homeAffordanceController unregisterHomeGestureParticipant];
    objc_storeStrong(&self->_homeAffordanceController, controller);
    if (self->_bottomEdgeRecognizer)
    {
      [(CSModalHomeAffordanceControlling *)self->_homeAffordanceController setHomeGestureRecognizer:?];
      [(CSModalHomeAffordanceControlling *)self->_homeAffordanceController registerHomeGestureParticipant:self];
    }

    homeAffordanceController = [(CSDismissableModalViewController *)self _addOrRemoveGestureForCurrentSettings];
    controllerCopy = v7;
  }

  MEMORY[0x2821F96F8](homeAffordanceController, controllerCopy);
}

- (void)_addOrRemoveGestureForCurrentSettings
{
  if (SBFEffectiveHomeButtonType() != 2)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      return;
    }
  }

  _appearState = [(CSDismissableModalViewController *)self _appearState];
  bottomEdgeRecognizer = self->_bottomEdgeRecognizer;
  if (_appearState)
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
      coverSheetDismissGestureSettings = [v9 coverSheetDismissGestureSettings];

      v11 = self->_bottomEdgeRecognizer;
      [coverSheetDismissGestureSettings edgeRegionSize];
      [(UIScreenEdgePanGestureRecognizer *)v11 _setEdgeRegionSize:?];
      v12 = self->_bottomEdgeRecognizer;
      [coverSheetDismissGestureSettings edgeRegionSize];
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

    delegate = [(CSDismissableModalViewController *)self delegate];
    [(UIScreenEdgePanGestureRecognizer *)delegate dismissForHomeButton];
    v17 = delegate;
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

- (void)_handleBottomEdgeGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  state = [recognizerCopy state];
  if ((state - 3) < 3)
  {
    [(CSDismissableModalViewController *)self _handleBottomEdgeGestureEnded:recognizerCopy];
LABEL_8:
    v6 = recognizerCopy;
    goto LABEL_9;
  }

  if (state == 2)
  {
    [(CSDismissableModalViewController *)self _handleBottomEdgeGestureChanged:recognizerCopy];
    goto LABEL_8;
  }

  v5 = state == 1;
  v6 = recognizerCopy;
  if (v5)
  {
    [(CSDismissableModalViewController *)self _handleBottomEdgeGestureBegan:recognizerCopy];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_handleBottomEdgeGestureBegan:(id)began
{
  beganCopy = began;
  if (self->_bottomEdgeRecognizer == beganCopy)
  {
    v6 = beganCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained handleBottomEdgeGestureBegan:v6];
    }

    [(SBFBarSwipeBehavior *)self->_barSwipeBehavior barSwipeInteractionBegan:v6];

    beganCopy = v6;
  }
}

- (void)_handleBottomEdgeGestureChanged:(id)changed
{
  changedCopy = changed;
  if (self->_bottomEdgeRecognizer == changedCopy)
  {
    v6 = changedCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained handleBottomEdgeGestureChanged:v6];
    }

    [(SBFBarSwipeBehavior *)self->_barSwipeBehavior barSwipeInteractionChanged:v6];

    changedCopy = v6;
  }
}

- (void)_handleBottomEdgeGestureEnded:(id)ended
{
  endedCopy = ended;
  if (self->_bottomEdgeRecognizer == endedCopy)
  {
    v6 = endedCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained handleBottomEdgeGestureEnded:v6];
    }

    [(SBFBarSwipeBehavior *)self->_barSwipeBehavior barSwipeInteractionEnded:v6];

    endedCopy = v6;
  }
}

- (void)_configureBarSwipeBehaviorWithGrabberViewIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (!self->_barSwipeBehavior)
  {
    v9 = necessaryCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    necessaryCopy = v9;
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277D65E10]) initWithGrabberView:v9 settleAffordanceAnimationBehaviorDescription:0];
      barSwipeBehavior = self->_barSwipeBehavior;
      self->_barSwipeBehavior = v7;

      [(SBFBarSwipeBehavior *)self->_barSwipeBehavior setDelegate:self];
      necessaryCopy = v9;
    }
  }
}

- (void)homeGestureParticipantOwningHomeGestureDidChange:(BOOL)change
{
  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
  ownsHomeGesture = [(CSModalHomeAffordanceControlling *)self->_homeAffordanceController ownsHomeGesture];
  homeAffordanceController = self->_homeAffordanceController;
  if (ownsHomeGesture)
  {
    bottomEdgeRecognizer = self->_bottomEdgeRecognizer;
  }

  else
  {
    bottomEdgeRecognizer = 0;
  }

  [(CSModalHomeAffordanceControlling *)homeAffordanceController setHomeGestureRecognizer:bottomEdgeRecognizer];
}

- (void)addGrabberView:(id)view
{
  viewCopy = view;
  [(CSDismissableModalViewController *)self _configureBarSwipeBehaviorWithGrabberViewIfNecessary:viewCopy];
  delegate = [(CSDismissableModalViewController *)self delegate];
  [delegate addGrabberView:viewCopy];
}

- (void)homeGestureParticipantUpdateZStackPreferences:(id)preferences forZStackParticipant:(id)participant
{
  preferencesCopy = preferences;
  participantCopy = participant;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained zStackParticipant:participantCopy updatePreferences:preferencesCopy];
  }
}

- (void)barSwipeBehaviorActionPerformed:(id)performed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained handleBarSwipeHomeGesturePerformed];
  }
}

- (BOOL)handleAction:(id)action fromController:(id)controller
{
  actionCopy = action;
  controllerCopy = controller;
  v8 = objc_opt_class();
  v9 = controllerCopy;
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
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained wantsDefaultModalDismissalBehavior] && objc_msgSend(actionCopy, "type") == 1)
  {
    contentViewControllers = [(CSPresentationViewController *)self contentViewControllers];
    v14 = [contentViewControllers containsObject:v11];

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

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = CSDismissableModalViewController;
  if (!-[CSPresentationViewController handleEvent:](&v8, sel_handleEvent_, eventCopy) || ([eventCopy isConsumable] & 1) == 0)
  {
    if ([eventCopy type] != 27)
    {
      isConsumable = 0;
      goto LABEL_7;
    }

    delegate = [(CSDismissableModalViewController *)self delegate];
    [delegate dismissForHomeButton];
  }

  isConsumable = [eventCopy isConsumable];
LABEL_7:

  return isConsumable;
}

- (CSDismissableModalViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end