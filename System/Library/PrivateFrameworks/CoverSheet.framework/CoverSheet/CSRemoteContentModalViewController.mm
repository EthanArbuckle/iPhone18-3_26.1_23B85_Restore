@interface CSRemoteContentModalViewController
- (BOOL)_dismissesOnTap;
- (BOOL)_reducesWhitePoint;
- (BOOL)_shouldCancelInteractiveDismissGesture;
- (BOOL)dismissForDismissType:(int64_t)type completion:(id)completion;
- (BOOL)handleEvent:(id)event;
- (CSRemoteContentHostViewController)hostViewController;
- (CSRemoteContentModalViewController)initWithContentDefinition:(id)definition preferences:(id)preferences hostViewController:(id)controller authenticationStatusProvider:(id)provider;
- (CSRemoteContentViewControllerDelegate)delegate;
- (id)_newDisplayLayoutElement;
- (int64_t)_backgroundStyle;
- (int64_t)_dateTimeStyle;
- (int64_t)_homeGestureMode;
- (void)_addChildHostViewController:(id)controller;
- (void)_createProperties;
- (void)_dismissForced:(BOOL)forced animated:(BOOL)animated;
- (void)_removeChildHostViewController;
- (void)_setCornerRounded:(BOOL)rounded;
- (void)_setUserHasInteractedSinceWake:(BOOL)wake;
- (void)_updateContentAlpha:(double)alpha interactive:(BOOL)interactive;
- (void)_updateContentScale:(double)scale interactive:(BOOL)interactive;
- (void)_updateDisplayLayoutElementForActivation:(id)activation;
- (void)_updateForPropertyChanged;
- (void)_updateGrabberViewVisibility;
- (void)_updateSecondaryActionButtonText;
- (void)addGrabberView:(id)view;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)dealloc;
- (void)didReceiveTouch;
- (void)handleBottomEdgeGestureBegan:(id)began;
- (void)handleBottomEdgeGestureChanged:(id)changed;
- (void)handleBottomEdgeGestureEnded:(id)ended;
- (void)handleSecondaryActionForView:(id)view;
- (void)loadView;
- (void)remoteDidChangeStyle;
- (void)setHostViewController:(id)controller;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)viewDidLoad;
@end

@implementation CSRemoteContentModalViewController

- (CSRemoteContentModalViewController)initWithContentDefinition:(id)definition preferences:(id)preferences hostViewController:(id)controller authenticationStatusProvider:(id)provider
{
  v61 = *MEMORY[0x277D85DE8];
  definitionCopy = definition;
  preferencesCopy = preferences;
  controllerCopy = controller;
  providerCopy = provider;
  v49.receiver = self;
  v49.super_class = CSRemoteContentModalViewController;
  v15 = [(CSRemoteContentModalViewController *)&v49 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_7;
  }

  if (definitionCopy && preferencesCopy && controllerCopy && providerCopy)
  {
    objc_storeStrong(&v15->_definition, definition);
    objc_storeStrong(&v16->_remoteContentPreferences, preferences);
    objc_storeStrong(&v16->_authenticationStatusProvider, provider);
    objc_storeWeak(&v16->_hostViewController, controllerCopy);
    v17 = +[CSLockScreenDomain rootSettings];
    lockScreenSettings = v16->_lockScreenSettings;
    v16->_lockScreenSettings = v17;

    [(PTSettings *)v16->_lockScreenSettings addKeyObserver:v16];
    v19 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:{-[CSLockScreenSettings unlockRubberBandFeedbackIntensity](v16->_lockScreenSettings, "unlockRubberBandFeedbackIntensity")}];
    rubberBandFeedbackGenerator = v16->_rubberBandFeedbackGenerator;
    v16->_rubberBandFeedbackGenerator = v19;

    v21 = objc_opt_new();
    v22 = [v21 priority:40];
    appearanceIdentifier = [(CSCoverSheetViewControllerBase *)v16 appearanceIdentifier];
    v24 = [v22 identifier:appearanceIdentifier];
    content = v16->_content;
    v16->_content = v24;

    v26 = objc_opt_new();
    v27 = [v26 priority:40];
    appearanceIdentifier2 = [(CSCoverSheetViewControllerBase *)v16 appearanceIdentifier];
    v29 = [v27 identifier:appearanceIdentifier2];
    dateTimeComponent = v16->_dateTimeComponent;
    v16->_dateTimeComponent = v29;

    v31 = objc_opt_new();
    v32 = [v31 priority:40];
    appearanceIdentifier3 = [(CSCoverSheetViewControllerBase *)v16 appearanceIdentifier];
    v34 = [v32 identifier:appearanceIdentifier3];
    proudLockComponent = v16->_proudLockComponent;
    v16->_proudLockComponent = v34;

    v36 = objc_opt_new();
    v37 = [v36 priority:40];
    appearanceIdentifier4 = [(CSCoverSheetViewControllerBase *)v16 appearanceIdentifier];
    v39 = [v37 identifier:appearanceIdentifier4];
    quickActionsComponent = v16->_quickActionsComponent;
    v16->_quickActionsComponent = v39;

    v50[0] = v16->_content;
    v50[1] = v16->_dateTimeComponent;
    v50[2] = v16->_proudLockComponent;
    v50[3] = v16->_quickActionsComponent;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
    components = v16->_components;
    v16->_components = v41;

    v43 = +[CSLockScreenDomain rootSettings];
    dashBoardRemoteContentSettings = [v43 dashBoardRemoteContentSettings];
    remoteContentSettings = v16->_remoteContentSettings;
    v16->_remoteContentSettings = dashBoardRemoteContentSettings;

    [(PTSettings *)v16->_remoteContentSettings addKeyObserver:v16];
LABEL_7:
    v46 = v16;
    goto LABEL_11;
  }

  v47 = SBLogDashBoard();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    v52 = v16;
    v53 = 1024;
    v54 = definitionCopy != 0;
    v55 = 1024;
    v56 = preferencesCopy != 0;
    v57 = 1024;
    v58 = controllerCopy != 0;
    v59 = 1024;
    v60 = providerCopy != 0;
    _os_log_impl(&dword_21EB05000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@: Missing required parameters for init; definition: %d, preferences: %d, hostVC: %d, authenticationStatusProvider: %d", buf, 0x24u);
  }

  v46 = 0;
LABEL_11:

  return v46;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  if ([(CSRemoteContentModalViewController *)self isViewLoaded]&& WeakRetained)
  {
    [(CSRemoteContentModalViewController *)self bs_removeChildViewController:WeakRetained];
  }

  v4.receiver = self;
  v4.super_class = CSRemoteContentModalViewController;
  [(CSCoverSheetViewControllerBase *)&v4 dealloc];
}

- (void)loadView
{
  [(CSRemoteContentModalViewController *)self _createProperties];
  v3 = [CSRemoteContentModalView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v7 = [(CSRemoteContentModalView *)v3 initWithFrame:?];

  [(CSRemoteContentModalView *)v7 setTouchDelegate:self];
  [(CSModalView *)v7 setShowsStatusText:0];
  [(CSModalView *)v7 setDelegate:self];
  [(CSRemoteContentModalView *)v7 setAutoresizingMask:18];
  [(CSModalView *)v7 setWantsEnhancedSecondaryActionButton:1];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(CSModalView *)v7 setSecondaryActionButtonTextColor:whiteColor];

  [(CSRemoteContentModalViewController *)self setView:v7];
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  if (WeakRetained)
  {
    [(CSRemoteContentModalViewController *)self _addChildHostViewController:WeakRetained];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CSRemoteContentModalViewController;
  [(CSModalViewControllerBase *)&v3 viewDidLoad];
  [(CSRemoteContentModalViewController *)self _updateSecondaryActionButtonText];
}

- (void)setHostViewController:(id)controller
{
  obj = controller;
  _removeChildHostViewController = [(CSRemoteContentModalViewController *)self _removeChildHostViewController];
  if (obj)
  {
    objc_storeWeak(&self->_hostViewController, obj);
    _removeChildHostViewController = [(CSRemoteContentModalViewController *)self isViewLoaded];
    if (_removeChildHostViewController)
    {
      _removeChildHostViewController = [(CSRemoteContentModalViewController *)self _addChildHostViewController:obj];
    }
  }

  MEMORY[0x2821F9730](_removeChildHostViewController);
}

- (BOOL)dismissForDismissType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [WeakRetained didDismissForDismissType:type];

  v8 = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(type) = [v8 remoteContentViewController:self requestsDismissalForType:type completion:completionCopy];

  return type;
}

- (void)remoteDidChangeStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  obj = [WeakRetained contentPreferences];

  if (obj)
  {
    objc_storeStrong(&self->_remoteContentPreferences, obj);
    if ([(CSRemoteContentModalViewController *)self _suppressesBottomEdgeContent])
    {
      [(CSRemoteContentModalViewController *)self _setUserHasInteractedSinceWake:1];
    }
  }

  [(CSRemoteContentModalViewController *)self _updateGrabberViewVisibility];
  v4 = [CSAction actionWithType:3];
  [(CSCoverSheetViewControllerBase *)self sendAction:v4];

  [(CSRemoteContentModalViewController *)self _updateSecondaryActionButtonText];
  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
  [(CSCoverSheetViewControllerBase *)self updateBehaviorForController:self];
}

- (void)aggregateAppearance:(id)appearance
{
  v65 = *MEMORY[0x277D85DE8];
  appearanceCopy = appearance;
  v62.receiver = self;
  v62.super_class = CSRemoteContentModalViewController;
  [(CSModalViewControllerBase *)&v62 aggregateAppearance:appearanceCopy];
  if (!self->_remoteContentPreferences)
  {
    goto LABEL_53;
  }

  v5 = [MEMORY[0x277CBEB58] set];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  components = [appearanceCopy components];
  v7 = [components countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v59;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(components);
        }

        v11 = *(*(&v58 + 1) + 8 * i);
        type = [v11 type];
        if (type > 0x1C || ((1 << type) & 0x1FFFADED) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [components countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v8);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v55;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v55 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [appearanceCopy removeComponent:*(*(&v54 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v16);
  }

  v19 = +[CSComponent footerCallToActionLabel];
  v20 = [v19 priority:40];
  v21 = [v20 hidden:1];
  [appearanceCopy addComponent:v21];

  LODWORD(v21) = [(CSRemoteContentModalViewController *)self shouldHideHomeAffordance];
  v22 = objc_opt_new();
  v23 = [v22 priority:40];
  v24 = v23;
  if (v21)
  {
    [v23 hidden:1];
  }

  else
  {
    [v23 suppressTeachableMomentsAnimation:1];
  }
  v25 = ;
  [appearanceCopy addComponent:v25];

  [appearanceCopy addComponent:self->_content];
  [appearanceCopy addComponent:self->_proudLockComponent];
  [appearanceCopy addComponent:self->_quickActionsComponent];
  v26 = +[CSComponent backgroundContent];
  v27 = [v26 priority:40];
  v28 = [v27 hidden:1];
  [appearanceCopy addComponent:v28];

  v29 = +[CSComponent pageContent];
  v30 = [v29 priority:40];
  v31 = [v30 hidden:1];
  [appearanceCopy addComponent:v31];

  _backgroundStyle = [(CSRemoteContentModalViewController *)self _backgroundStyle];
  _dateTimeStyle = [(CSRemoteContentModalViewController *)self _dateTimeStyle];
  if (self->_remoteContentPreferences)
  {
    v34 = _dateTimeStyle;
    if (_backgroundStyle > 2)
    {
      v37 = (_backgroundStyle - 3) > 1;
      if ((_backgroundStyle - 3) <= 1)
      {
        v36 = 7;
      }

      else
      {
        v36 = 0;
      }

      v35 = !v37;
    }

    else if (_backgroundStyle)
    {
      if (_backgroundStyle == 1)
      {
        v35 = 0;
        v36 = 5;
      }

      else if (_backgroundStyle == 2)
      {
        v35 = 1;
        v36 = 6;
      }

      else
      {
        v36 = 0;
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
      v36 = 1;
    }

    v38 = objc_opt_new();
    v39 = [v38 priority:40];
    v40 = [MEMORY[0x277CCABB0] numberWithInteger:v36];
    v41 = [v39 style:v40];
    [appearanceCopy addComponent:v41];

    if (v35)
    {
      v42 = objc_alloc(MEMORY[0x277D760A8]);
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v44 = [v42 initWithStyle:1 contentColor:whiteColor];
      [appearanceCopy setLegibilitySettings:v44];
    }

    if (v34 == 2)
    {
      dateTimeComponent = self->_dateTimeComponent;
      v46 = 1;
    }

    else
    {
      if (v34 == 1)
      {
        [(CSDateViewComponent *)self->_dateTimeComponent setVibrantAndCentered:1];
        goto LABEL_48;
      }

      if (v34)
      {
        goto LABEL_48;
      }

      [(CSDateViewComponent *)self->_dateTimeComponent setVibrantAndCentered:0];
      dateTimeComponent = self->_dateTimeComponent;
      v46 = 0;
    }

    [(CSComponent *)dateTimeComponent setHidden:v46];
LABEL_48:
    if ([(CSRemoteContentModalViewController *)self _suppressesBottomEdgeContent])
    {
      v47 = +[CSComponent quickActions];
      v48 = [v47 priority:40];
      v49 = [v48 hidden:1];
      [appearanceCopy addComponent:v49];
    }
  }

  [appearanceCopy addComponent:self->_dateTimeComponent];
  if ([(CSRemoteContentModalViewController *)self _reducesWhitePoint])
  {
    [(CSRemoteContentModalViewController *)self _backgroundStyle];
    v50 = objc_opt_new();
    v51 = [v50 priority:40];
    v52 = [v51 lighterReduction:BSSettingFlagForBool()];
    v53 = [v52 hidden:0];
    [appearanceCopy addComponent:v53];
  }

LABEL_53:
}

- (void)aggregateBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v8.receiver = self;
  v8.super_class = CSRemoteContentModalViewController;
  [(CSModalViewControllerBase *)&v8 aggregateBehavior:behaviorCopy];
  [behaviorCopy addRestrictedCapabilities:0x2000];
  if ([(CSRemoteContentModalViewController *)self shouldCaptureHomeGesture])
  {
    [behaviorCopy addRestrictedCapabilities:4096];
  }

  else
  {
    [behaviorCopy removeRestrictedCapabilities:4096];
  }

  [behaviorCopy removeRestrictedCapabilities:130];
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  if (WeakRetained)
  {
    if ([(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings autoExtendsIdleTimer])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (self->_userHasInteractedSinceWake)
    {
      v7 = 6;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v6 = 2;
    v7 = 2;
  }

  [behaviorCopy setIdleTimerMode:v6];
  [behaviorCopy setIdleTimerDuration:v7];
}

- (id)_newDisplayLayoutElement
{
  serviceName = [(SBSRemoteContentDefinition *)self->_definition serviceName];
  if (serviceName)
  {
    v3 = [objc_alloc(MEMORY[0x277D66A50]) initWithIdentifier:serviceName];
    [v3 setFillsDisplayBounds:1];
    [v3 setLayoutRole:6];
    [v3 setUIApplicationElement:1];
    [v3 setBundleIdentifier:serviceName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateDisplayLayoutElementForActivation:(id)activation
{
  v5.receiver = self;
  v5.super_class = CSRemoteContentModalViewController;
  activationCopy = activation;
  [(CSCoverSheetViewControllerBase *)&v5 _updateDisplayLayoutElementForActivation:activationCopy];
  [activationCopy sb_setTransitioning:{(-[CSRemoteContentModalViewController _appearState](self, "_appearState", v5.receiver, v5.super_class) & 0xFFFFFFFD) == 1}];
}

- (void)handleSecondaryActionForView:(id)view
{
  v4 = [CSAction actionWithType:3];
  [(CSCoverSheetViewControllerBase *)self sendAction:v4];

  [(CSRemoteContentModalViewController *)self _dismissForced:1 animated:1];
}

- (void)didReceiveTouch
{
  if ([(CSRemoteContentModalViewController *)self _dismissesOnTap])
  {
    v3 = [CSAction actionWithType:1];
    [(CSCoverSheetViewControllerBase *)self sendAction:v3];
  }

  else if ([(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings undimsOnTap])
  {

    [(CSRemoteContentModalViewController *)self _setUserHasInteractedSinceWake:1];
  }
}

- (void)_setUserHasInteractedSinceWake:(BOOL)wake
{
  if (self->_userHasInteractedSinceWake != wake)
  {
    self->_userHasInteractedSinceWake = wake;
    [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];

    [(CSCoverSheetViewControllerBase *)self updateBehaviorForController:self];
  }
}

- (void)_createProperties
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D38]);
  scaleProperty = self->_scaleProperty;
  self->_scaleProperty = v3;

  [(UIViewFloatAnimatableProperty *)self->_scaleProperty setValue:1.0];
  initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  scaleSettings = self->_scaleSettings;
  self->_scaleSettings = initWithDefaultValues;

  [(SBFFluidBehaviorSettings *)self->_scaleSettings setBehaviorType:2];
  [(SBFFluidBehaviorSettings *)self->_scaleSettings setDampingRatio:1.0];
  [(SBFFluidBehaviorSettings *)self->_scaleSettings setResponse:0.5];
  v7 = objc_alloc_init(MEMORY[0x277D75D38]);
  alphaProperty = self->_alphaProperty;
  self->_alphaProperty = v7;

  [(UIViewFloatAnimatableProperty *)self->_alphaProperty setValue:1.0];
  initWithDefaultValues2 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  alphaSettings = self->_alphaSettings;
  self->_alphaSettings = initWithDefaultValues2;

  [(SBFFluidBehaviorSettings *)self->_alphaSettings setBehaviorType:1];
  [(SBFFluidBehaviorSettings *)self->_alphaSettings setDampingRatio:1.0];
  [(SBFFluidBehaviorSettings *)self->_alphaSettings setResponse:0.25];
  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D75D18];
  v12 = self->_alphaProperty;
  v17[0] = self->_scaleProperty;
  v17[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__CSRemoteContentModalViewController__createProperties__block_invoke;
  v14[3] = &unk_27838B748;
  objc_copyWeak(&v15, &location);
  [v11 _createTransformerWithInputAnimatableProperties:v13 presentationValueChangedCallback:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __55__CSRemoteContentModalViewController__createProperties__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForPropertyChanged];
}

- (void)_updateForPropertyChanged
{
  v23 = *MEMORY[0x277D85DE8];
  if (![(CSRemoteContentModalViewController *)self shouldHideHomeAffordance])
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    [(UIViewFloatAnimatableProperty *)self->_scaleProperty presentationValue];
    CSComponentTransitionInputsMake(0, &v19, 0.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v3, 0.0);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->_components;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          [v9 setTransitionModifiers:16];
          v14[0] = v19;
          v14[1] = v20;
          v14[2] = v21;
          [v9 setTransitionInputs:v14];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v22 count:16];
      }

      while (v6);
    }

    v10 = 1.0;
    if (!UIAccessibilityIsReduceTransparencyEnabled())
    {
      [(UIViewFloatAnimatableProperty *)self->_alphaProperty presentationValue];
      v10 = v11;
    }

    WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
    view = [WeakRetained view];
    [view setAlpha:v10];
  }

  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
}

- (void)addGrabberView:(id)view
{
  viewCopy = view;
  objc_storeStrong(&self->_grabberView, view);
  if (SBFEffectiveHomeButtonType() == 2)
  {
    grabberView = self->_grabberView;
    view = [(CSModalViewControllerBase *)self view];
    [view bounds];
    [(UIView *)grabberView setFrame:?];

    [(UIView *)self->_grabberView setAutoresizingMask:18];
    view2 = [(CSModalViewControllerBase *)self view];
    [view2 addSubview:self->_grabberView];
  }

  [(CSRemoteContentModalViewController *)self _updateGrabberViewVisibility];
}

- (void)_updateGrabberViewVisibility
{
  if ([(CSRemoteContentModalViewController *)self shouldHideHomeAffordance])
  {
    grabberView = self->_grabberView;

    [(UIView *)grabberView removeFromSuperview];
  }

  else
  {
    view = [(CSModalViewControllerBase *)self view];
    [view addSubview:self->_grabberView];
  }
}

- (void)handleBottomEdgeGestureBegan:(id)began
{
  beganCopy = began;
  [(CSRemoteContentModalViewController *)self _setCornerRounded:1];
  view = [(CSModalViewControllerBase *)self view];
  [beganCopy translationInView:view];
  v7 = v6;
  v9 = v8;

  self->_previousTranslation.x = v7;
  self->_previousTranslation.y = v9;

  if ([(CSRemoteContentModalViewController *)self suppressesDismissalGesture]&& ![(CSRemoteContentModalViewController *)self shouldHideHomeAffordance])
  {
    rubberBandFeedbackGenerator = self->_rubberBandFeedbackGenerator;

    [(UIImpactFeedbackGenerator *)rubberBandFeedbackGenerator prepare];
  }
}

- (void)handleBottomEdgeGestureChanged:(id)changed
{
  changedCopy = changed;
  view = [(CSModalViewControllerBase *)self view];
  [changedCopy translationInView:view];
  v7 = v6;
  v9 = v8;

  self->_previousTranslation.x = v7;
  self->_previousTranslation.y = v9;
  [(UIViewFloatAnimatableProperty *)self->_scaleProperty presentationValue];
  BSUIInvertRubberBandValueForInterval();
  BSUIConstrainValueToIntervalWithRubberBand();
  [(CSRemoteContentModalViewController *)self _updateContentScale:1 interactive:0x3FEB333333333333, 1, 0x3FF0000000000000, 1];
  [(UIViewFloatAnimatableProperty *)self->_alphaProperty presentationValue];
  BSUIInvertRubberBandValueForInterval();
  BSUIConstrainValueToIntervalWithRubberBand();
  [(CSRemoteContentModalViewController *)self _updateContentAlpha:1 interactive:0x3FEB333333333333, 1, 0x3FF0000000000000, 1];
}

- (void)handleBottomEdgeGestureEnded:(id)ended
{
  [(CSRemoteContentModalViewController *)self _updateContentScale:0 interactive:1.0];
  [(CSRemoteContentModalViewController *)self _updateContentAlpha:0 interactive:1.0];
  if (![(CSRemoteContentModalViewController *)self _shouldCancelInteractiveDismissGesture])
  {
    if (![(CSRemoteContentModalViewController *)self shouldHideHomeAffordance])
    {
      if ([(CSRemoteContentModalViewController *)self suppressesDismissalGesture])
      {
        [(UIImpactFeedbackGenerator *)self->_rubberBandFeedbackGenerator impactOccurred];
      }

      else if ([(CSRemoteContentModalViewController *)self shouldCaptureHomeGesture])
      {
        [(UIImpactFeedbackGenerator *)self->_rubberBandFeedbackGenerator impactOccurredWithIntensity:0.5];
      }
    }

    [(CSRemoteContentModalViewController *)self _dismissForced:0 animated:1];
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  keyCopy = key;
  if (self->_lockScreenSettings == settingsCopy)
  {
    if ([keyCopy isEqualToString:@"unlockRubberBandFeedbackIntensity"])
    {
      v7 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:{-[CSLockScreenSettings unlockRubberBandFeedbackIntensity](self->_lockScreenSettings, "unlockRubberBandFeedbackIntensity")}];
      rubberBandFeedbackGenerator = self->_rubberBandFeedbackGenerator;
      self->_rubberBandFeedbackGenerator = v7;
    }
  }

  else if (self->_remoteContentSettings == settingsCopy)
  {
    [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
  }
}

- (void)_setCornerRounded:(BOOL)rounded
{
  roundedCopy = rounded;
  view = [(CSModalViewControllerBase *)self view];
  v6 = view;
  if (roundedCopy)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    [traitCollection displayCornerRadius];
    [v6 _setContinuousCornerRadius:?];
  }

  else
  {
    [view _setContinuousCornerRadius:0.0];
  }

  view2 = [(CSModalViewControllerBase *)self view];
  [view2 setClipsToBounds:roundedCopy];
}

- (void)_updateContentScale:(double)scale interactive:(BOOL)interactive
{
  if (interactive)
  {
    v4 = 5;
  }

  else
  {
    v4 = 3;
  }

  scaleSettings = self->_scaleSettings;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__CSRemoteContentModalViewController__updateContentScale_interactive___block_invoke;
  v8[3] = &unk_27838C888;
  v8[4] = self;
  *&v8[5] = scale;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__CSRemoteContentModalViewController__updateContentScale_interactive___block_invoke_2;
  v6[3] = &unk_27838DB60;
  interactiveCopy = interactive;
  v6[4] = self;
  [MEMORY[0x277D75D18] sb_animateWithSettings:scaleSettings mode:v4 animations:v8 completion:v6];
}

uint64_t __70__CSRemoteContentModalViewController__updateContentScale_interactive___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) _setCornerRounded:0];
  }

  return result;
}

- (void)_updateContentAlpha:(double)alpha interactive:(BOOL)interactive
{
  v4 = !interactive;
  alphaSettings = self->_alphaSettings;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__CSRemoteContentModalViewController__updateContentAlpha_interactive___block_invoke;
  v7[3] = &unk_27838C888;
  if (v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 5;
  }

  v7[4] = self;
  *&v7[5] = alpha;
  [MEMORY[0x277D75D18] sb_animateWithSettings:alphaSettings mode:v6 animations:v7 completion:0];
}

- (BOOL)_shouldCancelInteractiveDismissGesture
{
  [(UIViewFloatAnimatableProperty *)self->_scaleProperty presentationValue];
  v4 = v3;
  [(UIViewFloatAnimatableProperty *)self->_scaleProperty velocity];
  v6 = v5;
  if ([(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings usesLegacyDismissalLogic])
  {
    v7 = 1000.0;
  }

  else
  {
    [(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings directFlingDampeningFactor];
    v7 = v8 * 1000.0;
  }

  v9 = v4 + v6 / v7 * 0.99 / 0.01;
  if ([(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings usesLegacyDismissalLogic])
  {
    if (v9 <= 1.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1.0;
    }

    v11 = vabdd_f64(1.0, v10);
    [(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings legacyThreshold];
    return v11 < vabdd_f64(v12, v9);
  }

  else
  {
    [(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings directThreshold];
    return v9 > v14;
  }
}

- (void)_dismissForced:(BOOL)forced animated:(BOOL)animated
{
  animatedCopy = animated;
  forcedCopy = forced;
  if (![(CSRemoteContentModalViewController *)self suppressesDismissalGesture]|| forcedCopy)
  {
    self->_dismissing = 1;
    v7 = 0.3;
    if (!animatedCopy)
    {
      v7 = 0.0;
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__CSRemoteContentModalViewController__dismissForced_animated___block_invoke;
    v9[3] = &unk_27838B770;
    v9[4] = self;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__CSRemoteContentModalViewController__dismissForced_animated___block_invoke_2;
    v8[3] = &unk_27838B9B8;
    v8[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v9 animations:v8 completion:v7];
  }
}

void __62__CSRemoteContentModalViewController__dismissForced_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) view];
  [v3 setBackgroundColor:0];
}

void __62__CSRemoteContentModalViewController__dismissForced_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);
  v4 = [CSAction actionWithType:1];
  [v3 sendAction:v4];
}

- (void)_updateSecondaryActionButtonText
{
  if ([(CSRemoteContentModalViewController *)self _suppressesBottomEdgeContent])
  {
    v5 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v3 localizedStringForKey:@"BEDTIME_DISMISS" value:&stru_28302FDA0 table:@"CoverSheet"];
  }

  viewIfLoaded = [(CSModalViewControllerBase *)self viewIfLoaded];
  [viewIfLoaded setSecondaryActionButtonText:v5];
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = CSRemoteContentModalViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v8, sel_handleEvent_, eventCopy) && ([eventCopy isConsumable] & 1) != 0)
  {
    goto LABEL_6;
  }

  type = [eventCopy type];
  if (type == 22)
  {
    [(CSRemoteContentModalViewController *)self didReceiveTouch];
    goto LABEL_8;
  }

  if (type != 25)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  [(CSRemoteContentModalViewController *)self _setUserHasInteractedSinceWake:0];
LABEL_6:
  v6 = 1;
LABEL_9:

  return v6;
}

- (void)_addChildHostViewController:(id)controller
{
  controllerCopy = controller;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__CSRemoteContentModalViewController__addChildHostViewController___block_invoke;
  v6[3] = &unk_27838BA70;
  v7 = controllerCopy;
  selfCopy = self;
  v5 = controllerCopy;
  [(CSRemoteContentModalViewController *)self bs_addChildViewController:v5 animated:1 transitionBlock:v6];
}

void __66__CSRemoteContentModalViewController__addChildHostViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [*(a1 + 40) view];
  [v3 bounds];
  [v2 setFrame:?];

  v5 = [*(a1 + 40) view];
  v4 = [*(a1 + 32) view];
  [v5 sendSubviewToBack:v4];
}

- (void)_removeChildHostViewController
{
  if ([(CSRemoteContentModalViewController *)self isViewLoaded])
  {
    WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
    if (WeakRetained)
    {
      [(CSRemoteContentModalViewController *)self bs_removeChildViewController:WeakRetained];
    }
  }

  objc_storeWeak(&self->_hostViewController, 0);
}

- (int64_t)_dateTimeStyle
{
  if ([(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings overrideContentPreferences])
  {
    remoteContentSettings = self->_remoteContentSettings;

    return [(CSDashBoardRemoteContentSettings *)remoteContentSettings dateTimeStyleOverride];
  }

  else
  {
    remoteContentPreferences = self->_remoteContentPreferences;

    return [(SBSRemoteContentPreferences *)remoteContentPreferences dateTimeStyle];
  }
}

- (int64_t)_backgroundStyle
{
  if ([(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings overrideContentPreferences])
  {
    remoteContentSettings = self->_remoteContentSettings;

    return [(CSDashBoardRemoteContentSettings *)remoteContentSettings backgroundStyleOverride];
  }

  else
  {
    remoteContentPreferences = self->_remoteContentPreferences;

    return [(SBSRemoteContentPreferences *)remoteContentPreferences backgroundStyle];
  }
}

- (int64_t)_homeGestureMode
{
  if ([(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings overrideContentPreferences])
  {
    remoteContentSettings = self->_remoteContentSettings;

    return [(CSDashBoardRemoteContentSettings *)remoteContentSettings homeGestureModeOverride];
  }

  else if ([(SBFAuthenticationStatusProvider *)self->_authenticationStatusProvider hasAuthenticatedAtLeastOnceSinceBoot])
  {
    remoteContentPreferences = self->_remoteContentPreferences;

    return [(SBSRemoteContentPreferences *)remoteContentPreferences homeGestureMode];
  }

  else
  {
    return 4;
  }
}

- (BOOL)_dismissesOnTap
{
  if ([(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings overrideContentPreferences])
  {
    remoteContentSettings = self->_remoteContentSettings;

    return [(CSDashBoardRemoteContentSettings *)remoteContentSettings dismissesOnTapOverride];
  }

  else
  {
    remoteContentPreferences = self->_remoteContentPreferences;

    return [(SBSRemoteContentPreferences *)remoteContentPreferences dismissesOnTap];
  }
}

- (BOOL)_reducesWhitePoint
{
  if (self->_userHasInteractedSinceWake || ![(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings forceLuminanceReduction]&& ![(SBSRemoteContentPreferences *)self->_remoteContentPreferences reducesWhitePoint])
  {
    return 0;
  }

  return [(CSRemoteContentModalViewController *)self _supportsLuminanceReductionForCurrentBackgroundStyle];
}

- (CSRemoteContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CSRemoteContentHostViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

@end