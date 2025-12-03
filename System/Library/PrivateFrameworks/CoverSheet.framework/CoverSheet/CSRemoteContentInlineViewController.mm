@interface CSRemoteContentInlineViewController
- (BOOL)_dismissesOnTap;
- (BOOL)_reducesWhitePoint;
- (BOOL)dismissForDismissType:(int64_t)type completion:(id)completion;
- (BOOL)handleEvent:(id)event;
- (BOOL)shouldDismissInlineContentForNowPlaying;
- (BOOL)shouldInlineContentReceiveBackgroundTouches;
- (CGRect)inlineContentFrame;
- (CSRemoteContentHostViewController)hostViewController;
- (CSRemoteContentInlineViewController)initWithContentDefinition:(id)definition preferences:(id)preferences hostViewController:(id)controller authenticationStatusProvider:(id)provider;
- (CSRemoteContentViewControllerDelegate)delegate;
- (double)remoteContentHeight;
- (id)_newDisplayLayoutElement;
- (int64_t)_backgroundStyle;
- (int64_t)_dateTimeStyle;
- (int64_t)_homeGestureMode;
- (void)_addChildHostViewController:(id)controller;
- (void)_didReceiveScroll;
- (void)_didReceiveTouch;
- (void)_dismissForced:(BOOL)forced animated:(BOOL)animated;
- (void)_removeChildHostViewController;
- (void)_setUserHasInteractedSinceWake:(BOOL)wake;
- (void)_updateContentAlpha:(double)alpha interactive:(BOOL)interactive;
- (void)_updateDisplayLayoutElementForActivation:(id)activation;
- (void)_updatePreferredContentSize;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)beginCancelTouchesForCurrentEventInHostedContent;
- (void)dealloc;
- (void)hostDidChangeContentBounds;
- (void)loadView;
- (void)remoteDidChangeStyle;
- (void)setContainerSize:(CGSize)size;
- (void)setHorizontalInsetMargin:(double)margin;
- (void)setHostViewController:(id)controller;
- (void)setRemoteContentHidden:(BOOL)hidden;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)viewDidLayoutSubviews;
@end

@implementation CSRemoteContentInlineViewController

- (CSRemoteContentInlineViewController)initWithContentDefinition:(id)definition preferences:(id)preferences hostViewController:(id)controller authenticationStatusProvider:(id)provider
{
  v39 = *MEMORY[0x277D85DE8];
  definitionCopy = definition;
  preferencesCopy = preferences;
  controllerCopy = controller;
  providerCopy = provider;
  v28.receiver = self;
  v28.super_class = CSRemoteContentInlineViewController;
  v15 = [(CSRemoteContentInlineViewController *)&v28 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_7;
  }

  if (definitionCopy && preferencesCopy && controllerCopy && providerCopy)
  {
    *(v15 + 1064) = *MEMORY[0x277CBF3A8];
    objc_storeStrong(v15 + 138, definition);
    objc_storeStrong(v16 + 139, preferences);
    objc_storeStrong(v16 + 144, provider);
    objc_storeWeak(v16 + 145, controllerCopy);
    v17 = objc_opt_new();
    v18 = [v17 priority:30];
    appearanceIdentifier = [v16 appearanceIdentifier];
    v20 = [v18 identifier:appearanceIdentifier];
    v21 = v16[146];
    v16[146] = v20;

    v22 = +[CSLockScreenDomain rootSettings];
    dashBoardRemoteContentSettings = [v22 dashBoardRemoteContentSettings];
    v24 = v16[147];
    v16[147] = dashBoardRemoteContentSettings;

    [v16[147] addKeyObserver:v16];
LABEL_7:
    v25 = v16;
    goto LABEL_11;
  }

  v26 = SBLogDashBoard();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    v30 = v16;
    v31 = 1024;
    v32 = definitionCopy != 0;
    v33 = 1024;
    v34 = preferencesCopy != 0;
    v35 = 1024;
    v36 = controllerCopy != 0;
    v37 = 1024;
    v38 = providerCopy != 0;
    _os_log_impl(&dword_21EB05000, v26, OS_LOG_TYPE_DEFAULT, "[RemoteContent] %{public}@: Missing required parameters for init; definition: %d, preferences: %d, hostVC: %d, authenticationStatusProvider: %d", buf, 0x24u);
  }

  v25 = 0;
LABEL_11:

  return v25;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  if ([(CSRemoteContentInlineViewController *)self isViewLoaded]&& WeakRetained)
  {
    [(CSRemoteContentInlineViewController *)self bs_removeChildViewController:WeakRetained];
  }

  v4.receiver = self;
  v4.super_class = CSRemoteContentInlineViewController;
  [(CSCoverSheetViewControllerBase *)&v4 dealloc];
}

- (void)loadView
{
  v3 = [CSRemoteContentInlineView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v6 = [(CSRemoteContentInlineView *)v3 initWithFrame:?];

  [(CSRemoteContentInlineView *)v6 setAutoresizingMask:0];
  [(CSRemoteContentInlineViewController *)self setView:v6];
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  if (WeakRetained)
  {
    [(CSRemoteContentInlineViewController *)self _addChildHostViewController:WeakRetained];
  }
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = CSRemoteContentInlineViewController;
  [(CSCoverSheetViewControllerBase *)&v15 viewDidLayoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v6 = v5;
  v8 = v7;

  LODWORD(mainScreen) = ([(CSRemoteContentInlineViewController *)self interfaceOrientation]- 1) < 2;
  [WeakRetained safeAreaForRemote];
  v10 = (v8 < v6) ^ mainScreen;
  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (!v10)
  {
    v6 = v8;
  }

  v12 = -self->_horizontalInsetMargin;
  v13 = -(v9 + 8.0);
  view = [WeakRetained view];
  [view setFrame:{v12, v13, v6, v11}];
}

- (double)remoteContentHeight
{
  [(CSRemoteContentInlineViewController *)self inlineContentFrame];
  IsNull = CGRectIsNull(v15);
  result = 0.0;
  if (!IsNull)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
    [WeakRetained safeAreaForRemote];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [(CSRemoteContentInlineViewController *)self inlineContentFrame];
    v17 = CGRectIntegral(v16);
    MaxY = CGRectGetMaxY(v17);
    v18.origin.x = v7;
    v18.origin.y = v9;
    v18.size.width = v11;
    v18.size.height = v13;
    v19 = CGRectIntegral(v18);
    return MaxY - CGRectGetMinY(v19);
  }

  return result;
}

- (void)setRemoteContentHidden:(BOOL)hidden
{
  self->_remoteContentHidden = hidden;
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [WeakRetained setHidden:self->_remoteContentHidden];
}

- (void)setHorizontalInsetMargin:(double)margin
{
  if (self->_horizontalInsetMargin != margin)
  {
    self->_horizontalInsetMargin = margin;
    view = [(CSRemoteContentInlineViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)setHostViewController:(id)controller
{
  obj = controller;
  _removeChildHostViewController = [(CSRemoteContentInlineViewController *)self _removeChildHostViewController];
  if (obj)
  {
    objc_storeWeak(&self->_hostViewController, obj);
    _removeChildHostViewController = [(CSRemoteContentInlineViewController *)self isViewLoaded];
    if (_removeChildHostViewController)
    {
      _removeChildHostViewController = [(CSRemoteContentInlineViewController *)self _addChildHostViewController:obj];
    }
  }

  MEMORY[0x2821F9730](_removeChildHostViewController);
}

- (BOOL)dismissForDismissType:(int64_t)type completion:(id)completion
{
  self->_dismissing = 1;
  completionCopy = completion;
  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
  [(CSCoverSheetViewControllerBase *)self updateBehaviorForController:self];
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [WeakRetained didDismissForDismissType:type];

  v8 = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(type) = [v8 remoteContentViewController:self requestsDismissalForType:type completion:completionCopy];

  return type;
}

- (void)hostDidChangeContentBounds
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [WeakRetained hostDidChangeContentBounds];

  viewIfLoaded = [(CSRemoteContentInlineViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)remoteDidChangeStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  obj = [WeakRetained contentPreferences];

  if (obj)
  {
    objc_storeStrong(&self->_remoteContentPreferences, obj);
    if ([(CSRemoteContentInlineViewController *)self _suppressesBottomEdgeContent])
    {
      [(CSRemoteContentInlineViewController *)self _setUserHasInteractedSinceWake:1];
    }
  }

  v4 = [CSAction actionWithType:3];
  [(CSCoverSheetViewControllerBase *)self sendAction:v4];

  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
  [(CSCoverSheetViewControllerBase *)self updateBehaviorForController:self];
}

- (void)aggregateAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v36.receiver = self;
  v36.super_class = CSRemoteContentInlineViewController;
  [(CSCoverSheetViewControllerBase *)&v36 aggregateAppearance:appearanceCopy];
  if (!self->_remoteContentPreferences || self->_dismissing)
  {
    goto LABEL_37;
  }

  _backgroundStyle = [(CSRemoteContentInlineViewController *)self _backgroundStyle];
  _dateTimeStyle = [(CSRemoteContentInlineViewController *)self _dateTimeStyle];
  v7 = 7;
  if ((_backgroundStyle - 3) <= 1)
  {
    v8 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = 1;
  v10 = 5;
  v11 = 6;
  if (_backgroundStyle == 2)
  {
    v12 = 1;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (_backgroundStyle == 1)
  {
    v12 = 0;
  }

  else
  {
    v10 = v11;
  }

  if (_backgroundStyle)
  {
    v9 = v10;
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = _backgroundStyle <= 2;
  v15 = _backgroundStyle <= 2 && _backgroundStyle == 0;
  if (_backgroundStyle <= 2)
  {
    v16 = v9;
  }

  else
  {
    v16 = v7;
  }

  if (v14)
  {
    v17 = v13;
  }

  else
  {
    v17 = v8;
  }

  v18 = objc_opt_new();
  v19 = [v18 priority:30];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
  v21 = [v19 style:v20];
  [appearanceCopy addComponent:v21];

  if (!v15)
  {
    v22 = objc_opt_new();
    v23 = [v22 priority:30];
    v24 = [v23 shouldRenderInline:1];
    [appearanceCopy addComponent:v24];
  }

  if (v17)
  {
    v25 = objc_alloc(MEMORY[0x277D760A8]);
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v27 = [v25 initWithStyle:1 contentColor:whiteColor];
    [appearanceCopy setLegibilitySettings:v27];
  }

  if (_dateTimeStyle < 2)
  {
    v28 = 0;
LABEL_32:
    [(CSDateViewComponent *)self->_dateTimeComponent setVibrantAndCentered:_dateTimeStyle];
    [(CSDateViewComponent *)self->_dateTimeComponent setHidesTime:v28];
    goto LABEL_33;
  }

  if (_dateTimeStyle == 2)
  {
    _dateTimeStyle = 0;
    v28 = 1;
    goto LABEL_32;
  }

LABEL_33:
  [(CSDateViewComponent *)self->_dateTimeComponent setConstrainsTimeHeight:1];
  [appearanceCopy addComponent:self->_dateTimeComponent];
  if ([(CSRemoteContentInlineViewController *)self _suppressesBottomEdgeContent])
  {
    v29 = +[CSComponent quickActions];
    v30 = [v29 priority:30];
    v31 = [v30 hidden:1];
    [appearanceCopy addComponent:v31];
  }

  if ([(CSRemoteContentInlineViewController *)self _reducesWhitePoint])
  {
    [(CSRemoteContentInlineViewController *)self _backgroundStyle];
    v32 = objc_opt_new();
    v33 = [v32 priority:30];
    v34 = [v33 lighterReduction:BSSettingFlagForBool()];
    v35 = [v34 hidden:0];
    [appearanceCopy addComponent:v35];
  }

LABEL_37:
}

- (void)aggregateBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v8.receiver = self;
  v8.super_class = CSRemoteContentInlineViewController;
  [(CSCoverSheetViewControllerBase *)&v8 aggregateBehavior:behaviorCopy];
  [behaviorCopy addRestrictedCapabilities:0x2000];
  [behaviorCopy removeRestrictedCapabilities:4096];
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
  v5.super_class = CSRemoteContentInlineViewController;
  activationCopy = activation;
  [(CSCoverSheetViewControllerBase *)&v5 _updateDisplayLayoutElementForActivation:activationCopy];
  [activationCopy sb_setTransitioning:{(-[CSRemoteContentInlineViewController _appearState](self, "_appearState", v5.receiver, v5.super_class) & 0xFFFFFFFD) == 1}];
}

- (BOOL)shouldDismissInlineContentForNowPlaying
{
  if (([(CSRemoteContentInlineViewController *)self interfaceOrientation]- 3) < 2)
  {
    return 1;
  }

  return [(CSRemoteContentInlineViewController *)self _dismissesOnTap];
}

- (BOOL)shouldInlineContentReceiveBackgroundTouches
{
  if ([(CSRemoteContentInlineViewController *)self _dismissesOnTap])
  {
    return 1;
  }

  remoteContentSettings = self->_remoteContentSettings;

  return [(CSDashBoardRemoteContentSettings *)remoteContentSettings undimsOnTap];
}

- (CGRect)inlineContentFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [WeakRetained contentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setContainerSize:(CGSize)size
{
  if (self->_containerSize.width != size.width || self->_containerSize.height != size.height)
  {
    self->_containerSize = size;
    [(CSRemoteContentInlineViewController *)self _updatePreferredContentSize];
  }
}

- (void)_didReceiveTouch
{
  if ([(CSRemoteContentInlineViewController *)self _dismissesOnTap])
  {
    v3 = [CSAction actionWithType:1];
    [(CSCoverSheetViewControllerBase *)self sendAction:v3];
  }

  else if ([(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings undimsOnTap])
  {

    [(CSRemoteContentInlineViewController *)self _setUserHasInteractedSinceWake:1];
  }
}

- (void)_didReceiveScroll
{
  if ([(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings undimsOnTap])
  {

    [(CSRemoteContentInlineViewController *)self _setUserHasInteractedSinceWake:1];
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

- (void)beginCancelTouchesForCurrentEventInHostedContent
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  _cancelTouchesForCurrentEventInHostedContent = [WeakRetained _cancelTouchesForCurrentEventInHostedContent];
  cancelInlineContentTouchesAssertion = self->_cancelInlineContentTouchesAssertion;
  self->_cancelInlineContentTouchesAssertion = _cancelTouchesForCurrentEventInHostedContent;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_remoteContentSettings == settings)
  {
    [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self, key];
  }
}

- (void)_updateContentAlpha:(double)alpha interactive:(BOOL)interactive
{
  v4 = !interactive;
  alphaSettings = self->_alphaSettings;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__CSRemoteContentInlineViewController__updateContentAlpha_interactive___block_invoke;
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

- (void)_dismissForced:(BOOL)forced animated:(BOOL)animated
{
  animatedCopy = animated;
  forcedCopy = forced;
  if (![(CSRemoteContentInlineViewController *)self suppressesDismissalGesture]|| forcedCopy)
  {
    self->_dismissing = 1;
    v7 = 0.3;
    if (!animatedCopy)
    {
      v7 = 0.0;
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__CSRemoteContentInlineViewController__dismissForced_animated___block_invoke;
    v9[3] = &unk_27838B770;
    v9[4] = self;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__CSRemoteContentInlineViewController__dismissForced_animated___block_invoke_2;
    v8[3] = &unk_27838B9B8;
    v8[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v9 animations:v8 completion:v7];
  }
}

void __63__CSRemoteContentInlineViewController__dismissForced_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) view];
  [v3 setBackgroundColor:0];
}

void __63__CSRemoteContentInlineViewController__dismissForced_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);
  v4 = [CSAction actionWithType:1];
  [v3 sendAction:v4];
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = CSRemoteContentInlineViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v8, sel_handleEvent_, eventCopy) && ([eventCopy isConsumable] & 1) != 0)
  {
    goto LABEL_6;
  }

  type = [eventCopy type];
  if (type == 22)
  {
    if ([(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings undimsOnTap])
    {
      [(CSRemoteContentInlineViewController *)self _setUserHasInteractedSinceWake:1];
    }

    goto LABEL_9;
  }

  if (type != 25)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  [(CSRemoteContentInlineViewController *)self _setUserHasInteractedSinceWake:0];
LABEL_6:
  v6 = 1;
LABEL_10:

  return v6;
}

- (void)_addChildHostViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setServiceViewShouldShareTouchesWithHost:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__CSRemoteContentInlineViewController__addChildHostViewController___block_invoke;
  v6[3] = &unk_27838BA70;
  v7 = controllerCopy;
  selfCopy = self;
  v5 = controllerCopy;
  [(CSRemoteContentInlineViewController *)self bs_addChildViewController:v5 animated:1 transitionBlock:v6];
}

void __67__CSRemoteContentInlineViewController__addChildHostViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [*(a1 + 40) view];
  [v3 bounds];
  [v2 setFrame:?];

  v4 = [*(a1 + 32) view];
  [v4 setAutoresizingMask:0];

  [*(a1 + 32) safeAreaForRemote];
  v6 = v5;
  v7 = [*(a1 + 32) view];
  CGAffineTransformMakeTranslation(&v10, 0.0, -v6);
  [v7 setTransform:&v10];

  v8 = [*(a1 + 40) view];
  v9 = [*(a1 + 32) view];
  [v8 sendSubviewToBack:v9];
}

- (void)_removeChildHostViewController
{
  if ([(CSRemoteContentInlineViewController *)self isViewLoaded])
  {
    WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
    if (WeakRetained)
    {
      [(CSRemoteContentInlineViewController *)self bs_removeChildViewController:WeakRetained];
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
  if ([(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings forceLuminanceReduction]|| (v3 = [(SBSRemoteContentPreferences *)self->_remoteContentPreferences reducesWhitePoint]) != 0)
  {

    LOBYTE(v3) = [(CSRemoteContentInlineViewController *)self _supportsLuminanceReductionForCurrentBackgroundStyle];
  }

  return v3;
}

- (void)_updatePreferredContentSize
{
  [(CSRemoteContentInlineViewController *)self remoteContentHeight];
  v4 = v3;
  [(CSRemoteContentInlineViewController *)self setPreferredContentSize:self->_containerSize.width, v3];
  viewIfLoaded = [(CSRemoteContentInlineViewController *)self viewIfLoaded];
  [viewIfLoaded setFrame:{0.0, 0.0, self->_containerSize.width, v4}];
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