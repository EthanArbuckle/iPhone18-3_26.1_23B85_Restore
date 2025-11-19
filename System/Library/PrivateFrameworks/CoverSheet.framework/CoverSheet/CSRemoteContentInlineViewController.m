@interface CSRemoteContentInlineViewController
- (BOOL)_dismissesOnTap;
- (BOOL)_reducesWhitePoint;
- (BOOL)dismissForDismissType:(int64_t)a3 completion:(id)a4;
- (BOOL)handleEvent:(id)a3;
- (BOOL)shouldDismissInlineContentForNowPlaying;
- (BOOL)shouldInlineContentReceiveBackgroundTouches;
- (CGRect)inlineContentFrame;
- (CSRemoteContentHostViewController)hostViewController;
- (CSRemoteContentInlineViewController)initWithContentDefinition:(id)a3 preferences:(id)a4 hostViewController:(id)a5 authenticationStatusProvider:(id)a6;
- (CSRemoteContentViewControllerDelegate)delegate;
- (double)remoteContentHeight;
- (id)_newDisplayLayoutElement;
- (int64_t)_backgroundStyle;
- (int64_t)_dateTimeStyle;
- (int64_t)_homeGestureMode;
- (void)_addChildHostViewController:(id)a3;
- (void)_didReceiveScroll;
- (void)_didReceiveTouch;
- (void)_dismissForced:(BOOL)a3 animated:(BOOL)a4;
- (void)_removeChildHostViewController;
- (void)_setUserHasInteractedSinceWake:(BOOL)a3;
- (void)_updateContentAlpha:(double)a3 interactive:(BOOL)a4;
- (void)_updateDisplayLayoutElementForActivation:(id)a3;
- (void)_updatePreferredContentSize;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
- (void)beginCancelTouchesForCurrentEventInHostedContent;
- (void)dealloc;
- (void)hostDidChangeContentBounds;
- (void)loadView;
- (void)remoteDidChangeStyle;
- (void)setContainerSize:(CGSize)a3;
- (void)setHorizontalInsetMargin:(double)a3;
- (void)setHostViewController:(id)a3;
- (void)setRemoteContentHidden:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)viewDidLayoutSubviews;
@end

@implementation CSRemoteContentInlineViewController

- (CSRemoteContentInlineViewController)initWithContentDefinition:(id)a3 preferences:(id)a4 hostViewController:(id)a5 authenticationStatusProvider:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v28.receiver = self;
  v28.super_class = CSRemoteContentInlineViewController;
  v15 = [(CSRemoteContentInlineViewController *)&v28 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_7;
  }

  if (v11 && v12 && v13 && v14)
  {
    *(v15 + 1064) = *MEMORY[0x277CBF3A8];
    objc_storeStrong(v15 + 138, a3);
    objc_storeStrong(v16 + 139, a4);
    objc_storeStrong(v16 + 144, a6);
    objc_storeWeak(v16 + 145, v13);
    v17 = objc_opt_new();
    v18 = [v17 priority:30];
    v19 = [v16 appearanceIdentifier];
    v20 = [v18 identifier:v19];
    v21 = v16[146];
    v16[146] = v20;

    v22 = +[CSLockScreenDomain rootSettings];
    v23 = [v22 dashBoardRemoteContentSettings];
    v24 = v16[147];
    v16[147] = v23;

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
    v32 = v11 != 0;
    v33 = 1024;
    v34 = v12 != 0;
    v35 = 1024;
    v36 = v13 != 0;
    v37 = 1024;
    v38 = v14 != 0;
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
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
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
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  LODWORD(v4) = ([(CSRemoteContentInlineViewController *)self interfaceOrientation]- 1) < 2;
  [WeakRetained safeAreaForRemote];
  v10 = (v8 < v6) ^ v4;
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
  v14 = [WeakRetained view];
  [v14 setFrame:{v12, v13, v6, v11}];
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

- (void)setRemoteContentHidden:(BOOL)a3
{
  self->_remoteContentHidden = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [WeakRetained setHidden:self->_remoteContentHidden];
}

- (void)setHorizontalInsetMargin:(double)a3
{
  if (self->_horizontalInsetMargin != a3)
  {
    self->_horizontalInsetMargin = a3;
    v4 = [(CSRemoteContentInlineViewController *)self view];
    [v4 setNeedsLayout];
  }
}

- (void)setHostViewController:(id)a3
{
  obj = a3;
  v4 = [(CSRemoteContentInlineViewController *)self _removeChildHostViewController];
  if (obj)
  {
    objc_storeWeak(&self->_hostViewController, obj);
    v4 = [(CSRemoteContentInlineViewController *)self isViewLoaded];
    if (v4)
    {
      v4 = [(CSRemoteContentInlineViewController *)self _addChildHostViewController:obj];
    }
  }

  MEMORY[0x2821F9730](v4);
}

- (BOOL)dismissForDismissType:(int64_t)a3 completion:(id)a4
{
  self->_dismissing = 1;
  v6 = a4;
  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
  [(CSCoverSheetViewControllerBase *)self updateBehaviorForController:self];
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [WeakRetained didDismissForDismissType:a3];

  v8 = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(a3) = [v8 remoteContentViewController:self requestsDismissalForType:a3 completion:v6];

  return a3;
}

- (void)hostDidChangeContentBounds
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [WeakRetained hostDidChangeContentBounds];

  v4 = [(CSRemoteContentInlineViewController *)self viewIfLoaded];
  [v4 setNeedsLayout];
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

- (void)aggregateAppearance:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = CSRemoteContentInlineViewController;
  [(CSCoverSheetViewControllerBase *)&v36 aggregateAppearance:v4];
  if (!self->_remoteContentPreferences || self->_dismissing)
  {
    goto LABEL_37;
  }

  v5 = [(CSRemoteContentInlineViewController *)self _backgroundStyle];
  v6 = [(CSRemoteContentInlineViewController *)self _dateTimeStyle];
  v7 = 7;
  if ((v5 - 3) <= 1)
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
  if (v5 == 2)
  {
    v12 = 1;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (v5 == 1)
  {
    v12 = 0;
  }

  else
  {
    v10 = v11;
  }

  if (v5)
  {
    v9 = v10;
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v5 <= 2;
  v15 = v5 <= 2 && v5 == 0;
  if (v5 <= 2)
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
  [v4 addComponent:v21];

  if (!v15)
  {
    v22 = objc_opt_new();
    v23 = [v22 priority:30];
    v24 = [v23 shouldRenderInline:1];
    [v4 addComponent:v24];
  }

  if (v17)
  {
    v25 = objc_alloc(MEMORY[0x277D760A8]);
    v26 = [MEMORY[0x277D75348] whiteColor];
    v27 = [v25 initWithStyle:1 contentColor:v26];
    [v4 setLegibilitySettings:v27];
  }

  if (v6 < 2)
  {
    v28 = 0;
LABEL_32:
    [(CSDateViewComponent *)self->_dateTimeComponent setVibrantAndCentered:v6];
    [(CSDateViewComponent *)self->_dateTimeComponent setHidesTime:v28];
    goto LABEL_33;
  }

  if (v6 == 2)
  {
    v6 = 0;
    v28 = 1;
    goto LABEL_32;
  }

LABEL_33:
  [(CSDateViewComponent *)self->_dateTimeComponent setConstrainsTimeHeight:1];
  [v4 addComponent:self->_dateTimeComponent];
  if ([(CSRemoteContentInlineViewController *)self _suppressesBottomEdgeContent])
  {
    v29 = +[CSComponent quickActions];
    v30 = [v29 priority:30];
    v31 = [v30 hidden:1];
    [v4 addComponent:v31];
  }

  if ([(CSRemoteContentInlineViewController *)self _reducesWhitePoint])
  {
    [(CSRemoteContentInlineViewController *)self _backgroundStyle];
    v32 = objc_opt_new();
    v33 = [v32 priority:30];
    v34 = [v33 lighterReduction:BSSettingFlagForBool()];
    v35 = [v34 hidden:0];
    [v4 addComponent:v35];
  }

LABEL_37:
}

- (void)aggregateBehavior:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CSRemoteContentInlineViewController;
  [(CSCoverSheetViewControllerBase *)&v8 aggregateBehavior:v4];
  [v4 addRestrictedCapabilities:0x2000];
  [v4 removeRestrictedCapabilities:4096];
  [v4 removeRestrictedCapabilities:130];
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

  [v4 setIdleTimerMode:v6];
  [v4 setIdleTimerDuration:v7];
}

- (id)_newDisplayLayoutElement
{
  v2 = [(SBSRemoteContentDefinition *)self->_definition serviceName];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D66A50]) initWithIdentifier:v2];
    [v3 setFillsDisplayBounds:1];
    [v3 setLayoutRole:6];
    [v3 setUIApplicationElement:1];
    [v3 setBundleIdentifier:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateDisplayLayoutElementForActivation:(id)a3
{
  v5.receiver = self;
  v5.super_class = CSRemoteContentInlineViewController;
  v4 = a3;
  [(CSCoverSheetViewControllerBase *)&v5 _updateDisplayLayoutElementForActivation:v4];
  [v4 sb_setTransitioning:{(-[CSRemoteContentInlineViewController _appearState](self, "_appearState", v5.receiver, v5.super_class) & 0xFFFFFFFD) == 1}];
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

- (void)setContainerSize:(CGSize)a3
{
  if (self->_containerSize.width != a3.width || self->_containerSize.height != a3.height)
  {
    self->_containerSize = a3;
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

- (void)_setUserHasInteractedSinceWake:(BOOL)a3
{
  if (self->_userHasInteractedSinceWake != a3)
  {
    self->_userHasInteractedSinceWake = a3;
    [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];

    [(CSCoverSheetViewControllerBase *)self updateBehaviorForController:self];
  }
}

- (void)beginCancelTouchesForCurrentEventInHostedContent
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  v3 = [WeakRetained _cancelTouchesForCurrentEventInHostedContent];
  cancelInlineContentTouchesAssertion = self->_cancelInlineContentTouchesAssertion;
  self->_cancelInlineContentTouchesAssertion = v3;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_remoteContentSettings == a3)
  {
    [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self, a4];
  }
}

- (void)_updateContentAlpha:(double)a3 interactive:(BOOL)a4
{
  v4 = !a4;
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
  *&v7[5] = a3;
  [MEMORY[0x277D75D18] sb_animateWithSettings:alphaSettings mode:v6 animations:v7 completion:0];
}

- (void)_dismissForced:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (![(CSRemoteContentInlineViewController *)self suppressesDismissalGesture]|| v5)
  {
    self->_dismissing = 1;
    v7 = 0.3;
    if (!v4)
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

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CSRemoteContentInlineViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v8, sel_handleEvent_, v4) && ([v4 isConsumable] & 1) != 0)
  {
    goto LABEL_6;
  }

  v5 = [v4 type];
  if (v5 == 22)
  {
    if ([(CSDashBoardRemoteContentSettings *)self->_remoteContentSettings undimsOnTap])
    {
      [(CSRemoteContentInlineViewController *)self _setUserHasInteractedSinceWake:1];
    }

    goto LABEL_9;
  }

  if (v5 != 25)
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

- (void)_addChildHostViewController:(id)a3
{
  v4 = a3;
  [v4 setServiceViewShouldShareTouchesWithHost:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__CSRemoteContentInlineViewController__addChildHostViewController___block_invoke;
  v6[3] = &unk_27838BA70;
  v7 = v4;
  v8 = self;
  v5 = v4;
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
  v5 = [(CSRemoteContentInlineViewController *)self viewIfLoaded];
  [v5 setFrame:{0.0, 0.0, self->_containerSize.width, v4}];
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