@interface CSCoverSheetView
- ($453422EBA70013024ECC637D52E1FF2D)_completedTransitionContextForPreviousTransitionContext:(SEL)a3 newTransitionContext:(id *)a4;
- ($453422EBA70013024ECC637D52E1FF2D)_currentTransitionContext;
- ($453422EBA70013024ECC637D52E1FF2D)transitionContext;
- (BOOL)_maglevActive;
- (BOOL)coverSheetScrollView:(id)a3 gestureRecognizerShouldBegin:(id)a4;
- (BOOL)coverSheetScrollView:(id)a3 shouldSetContentOffset:(CGPoint)a4 animated:(BOOL)a5;
- (BOOL)isTransitioning;
- (BOOL)resetScrollViewToMainPageAnimated:(BOOL)a3 withAnimationSettings:(id)a4 withCompletion:(id)a5;
- (BOOL)resetScrollViewToMainPageAnimated:(BOOL)a3 withCompletion:(id)a4;
- (BOOL)scrollToPageAtIndex:(unint64_t)a3 animated:(BOOL)a4 withCompletion:(id)a5;
- (CGAffineTransform)_portraitEnforcingTransform;
- (CGAffineTransform)_transformScaling:(SEL)a3 byScale:(id)a4 aboutPointInSelf:(double)a5;
- (CGPoint)_scrollView:(id)a3 adjustedOffsetForOffset:(CGPoint)a4 translation:(CGPoint)a5 startPoint:(CGPoint)a6 locationInView:(CGPoint)a7 horizontalVelocity:(double *)a8 verticalVelocity:(double *)a9;
- (CGPoint)contentViewOffset;
- (CGPoint)dateViewOffset;
- (CGPoint)foregroundViewPositionOffset;
- (CGPoint)proudLockIconViewOffset;
- (CGPoint)quickActionsViewOffset;
- (CGPoint)wallpaperFloatingLayerContainerViewOffset;
- (CGRect)_dateViewFrameForPageAlignment:(int64_t)a3 pageRelativeScrollOffset:(double)a4 outAlignmentPercent:(double *)a5;
- (CGRect)_wallpaperOrientationEnforcingBounds;
- (CGRect)dateViewPresentationExtentForPageRelativeScrollOffset:(double)a3;
- (CGRect)effectiveContainerBounds;
- (CSCoverSheetView)initWithFrame:(CGRect)a3;
- (CSCoverSheetViewDelegate)delegate;
- (CSLayoutStrategy)layoutStrategy;
- (NSString)coverSheetIdentifier;
- (UIView)referenceViewForBelowPresentationContext;
- (id)_effectiveContentsContainerView;
- (id)_filterForDimming:(BOOL)a3;
- (id)_filterNumbersForDimming:(BOOL)a3;
- (id)_lockScreenDefaults;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (unint64_t)_indexOfMainPage;
- (void)_addAuthIndicator;
- (void)_addBackgroundContainerView;
- (void)_addBackgroundView;
- (void)_addContentViewWithContentView:(id)a3;
- (void)_addContentsContainerView;
- (void)_addDateTimeContainer;
- (void)_addHigherSlideableContentView;
- (void)_addNotificationLegibilityContainers;
- (void)_addNotificationLegibilityDynamicDimView;
- (void)_addNotificationLegibilityFullBaseLayerDimView;
- (void)_addNotificationLegibilityLocalizedDimView;
- (void)_addScrollView;
- (void)_addSlideableContentView;
- (void)_addStatusBarLegibilityView;
- (void)_addTintingView;
- (void)_addWallpaperFloatingLayerContainerView;
- (void)_animateLayer:(id)a3 toValues:(id)a4 forKeyPath:(id)a5 duration:(double)a6 dispatchGroup:(id)a7;
- (void)_animateToDimming:(BOOL)a3 withDuration:(double)a4 dispatchGroup:(id)a5;
- (void)_createProudLockContainerWrapperIfNecessary;
- (void)_evaluateBackgroundContentViewMatchMove;
- (void)_layoutAuthIndicator;
- (void)_layoutBackgroundContentView;
- (void)_layoutBackgroundContentViewForPresentationValueChange;
- (void)_layoutBottomPage;
- (void)_layoutComplicationContainerView;
- (void)_layoutContentContainerView;
- (void)_layoutContentView;
- (void)_layoutDateTimeViewClippingView;
- (void)_layoutDateView;
- (void)_layoutFakeStatusBar;
- (void)_layoutFullScreenViews;
- (void)_layoutGlassEffectView;
- (void)_layoutHigherSlideableContentView;
- (void)_layoutNotificationLegibilityContainerViews;
- (void)_layoutNotificationLegibilityFullBaseLayerView;
- (void)_layoutNotificationLegibilityLocalizedDimView;
- (void)_layoutProudLockView;
- (void)_layoutQuickActionsView;
- (void)_layoutSidebarComplicationContainerView;
- (void)_layoutStatusBarBackgroundView;
- (void)_layoutStatusBarLegibilityView;
- (void)_layoutTeachableMomentsContainerView;
- (void)_layoutTintingView;
- (void)_layoutWallpaperEffectView;
- (void)_layoutWallpaperFloatingLayerContainerView;
- (void)_makeView:(id)a3 untouchable:(BOOL)a4;
- (void)_orderSubviews;
- (void)_prepareBlursForView:(id)a3 withHardEdges:(BOOL)a4;
- (void)_removeContentView;
- (void)_setBackgroundContentViewMatchMoveActive:(BOOL)a3;
- (void)_setDateView:(id)a3 forTesting:(BOOL)a4;
- (void)_setupAllGesturesOnScrollView:(BOOL)a3;
- (void)_setupBackgroundContentGestureOnScrollView:(BOOL)a3;
- (void)_setupComplicationGestureOnScrollView:(BOOL)a3;
- (void)_setupDateViewGestureOnScrollView:(BOOL)a3;
- (void)_setupQuickNoteGestureOnScrollView:(BOOL)a3;
- (void)_setupWallpaperGestureOnScrollView:(BOOL)a3;
- (void)_updateBackgroundContainerPinningAnimation;
- (void)_updateBlurForView:(id)a3 toRadius:(double)a4;
- (void)_updateDateFont;
- (void)_updateLegibility;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)cancelTransition;
- (void)didAddSubview:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)scrollViewDidEndScrolling:(id)a3;
- (void)scrollViewDidScroll:(id)a3 withContext:(id *)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginScrolling:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setBackgroundContentGestureRecognizer:(id)a3;
- (void)setBackgroundContentPresentationLevel:(unint64_t)a3;
- (void)setBackgroundContentView:(id)a3;
- (void)setBackgroundContentViewAlpha:(double)a3;
- (void)setBackgroundContentViewDimmed:(BOOL)a3;
- (void)setBackgroundGlassView:(id)a3;
- (void)setBackgroundView:(id)a3;
- (void)setBedtimeGreetingViewBackgroundView:(id)a3;
- (void)setBottomPage:(id)a3;
- (void)setCameraCoveredView:(id)a3;
- (void)setClipping:(BOOL)a3 corners:(unint64_t)a4 radius:(double)a5;
- (void)setClipsToBounds:(BOOL)a3;
- (void)setComplicationContainerView:(id)a3;
- (void)setComplicationContainerViewScale:(double)a3;
- (void)setComplicationGestureRecognizer:(id)a3;
- (void)setContentViewOffset:(CGPoint)a3;
- (void)setContentViewOffset:(CGPoint)a3 scale:(double)a4;
- (void)setContentViewScale:(double)a3;
- (void)setControlCenterGrabberBlurRadius:(double)a3;
- (void)setControlCenterGrabberScale:(double)a3;
- (void)setCoverSheetPresentationProgress:(double)a3 forPresentationValue:(BOOL)a4;
- (void)setDateTimePresentationLevel:(unint64_t)a3;
- (void)setDateViewGestureRecognizer:(id)a3;
- (void)setDateViewIsVibrant:(BOOL)a3;
- (void)setDateViewOffset:(CGPoint)a3;
- (void)setDateViewOffset:(CGPoint)a3 scale:(double)a4;
- (void)setDateViewScale:(double)a3;
- (void)setDateViewStretch:(BOOL)a3;
- (void)setFakeStatusBar:(id)a3;
- (void)setFakeStatusBarBlurRadius:(double)a3;
- (void)setFakeStatusBarLevel:(unint64_t)a3;
- (void)setFakeStatusBarScale:(double)a3;
- (void)setFixedFooterView:(id)a3;
- (void)setForceDateViewCentered:(BOOL)a3;
- (void)setForegroundViewPositionOffset:(CGPoint)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setModalPresentationLevel:(unint64_t)a3;
- (void)setModalPresentationView:(id)a3;
- (void)setModalPresentationViewOffset:(double)a3;
- (void)setPageViews:(id)a3;
- (void)setPoseidonContainerView:(id)a3;
- (void)setProudLockContainerView:(id)a3;
- (void)setProudLockIconBlurRadius:(double)a3;
- (void)setProudLockIconViewOffset:(CGPoint)a3;
- (void)setProudLockIconViewOffset:(CGPoint)a3 scale:(double)a4;
- (void)setProudLockIconViewScale:(double)a3;
- (void)setProudLockPrefersLowerPresentationLevel:(BOOL)a3;
- (void)setQuickActionsView:(id)a3;
- (void)setQuickActionsViewBlurRadius:(double)a3;
- (void)setQuickActionsViewOffset:(CGPoint)a3;
- (void)setQuickActionsViewOffset:(CGPoint)a3 scale:(double)a4;
- (void)setQuickActionsViewScale:(double)a3;
- (void)setQuickNoteGestureRecognizer:(id)a3;
- (void)setReduceTransparencyBackingColor:(id)a3;
- (void)setRegionsDebugView:(id)a3;
- (void)setSearchGesture:(id)a3;
- (void)setSidebarComplicationContainerView:(id)a3;
- (void)setStatusBarBackgroundView:(id)a3;
- (void)setSuppressesBackgroundContentMatchMove:(BOOL)a3 forReason:(id)a4;
- (void)setTeachableMomentsContainerView:(id)a3;
- (void)setWakeEffectView:(id)a3;
- (void)setWallpaperEffectView:(id)a3;
- (void)setWallpaperFloatingLayerContainerViewOffset:(CGPoint)a3;
- (void)setWallpaperFloatingLayerContainerViewOffset:(CGPoint)a3 scale:(double)a4;
- (void)setWallpaperFloatingLayerContainerViewScale:(double)a3;
- (void)setWallpaperFloatingLayerPresentationLevel:(unint64_t)a3;
- (void)setWallpaperGestureRecognizer:(id)a3;
- (void)setWallpaperPresentationLevel:(unint64_t)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)updateContainerOrientationForBackgroundViews:(int64_t)a3;
- (void)updateUIForAuthenticated:(BOOL)a3;
- (void)viewControllerDidDisappear;
- (void)viewControllerWillAppear;
@end

@implementation CSCoverSheetView

- (CSCoverSheetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- ($453422EBA70013024ECC637D52E1FF2D)_currentTransitionContext
{
  v5 = 0uLL;
  v15 = 0u;
  v16 = 0u;
  scrollView = self->_scrollView;
  if (scrollView && ([(SBFPagedScrollView *)scrollView currentScrollInterval], v5 = 0uLL, (v7 = self->_scrollView) != 0))
  {
    [(SBFPagedScrollView *)v7 currentScrollContext];
    v8 = v12;
    v9 = self->_scrollView;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v14 = 0;
    v12 = v5;
    v13 = v5;
  }

  [(SBFPagedScrollView *)v9 pageRelativeScrollOffset];
  v11[0] = v15;
  v11[1] = v16;
  CSCoverSheetTransitionContextMake(v11, v8, retstr);
  return result;
}

- (id)_effectiveContentsContainerView
{
  if (CSFeatureEnabled(12))
  {
    self = self->_contentsContainerView;
  }

  return self;
}

- (void)_orderSubviews
{
  v3 = &OBJC_IVAR___CSCombinedListViewController__cachedAdjunctHeight;
  if (self->_fixedFooterView)
  {
    [(UIView *)self->_slideableContentView bringSubviewToFront:?];
  }

  if (!self->_dateTimePresentationLevel)
  {
    [(UIView *)self->_slideableContentView sendSubviewToBack:self->_dateTimeClippingView];
  }

  if (!self->_backgroundContentPresentationLevel)
  {
    [(UIView *)self->_slideableContentView insertSubview:self->_backgroundContentView atIndex:0];
  }

  if (!self->_wallpaperPresentationLevel)
  {
    [(UIView *)self->_slideableContentView insertSubview:self->_wallpaperEffectView atIndex:0];
  }

  if (!self->_wallpaperFloatingLayerPresentationLevel)
  {
    [(UIView *)self->_slideableContentView insertSubview:self->_wallpaperFloatingLayerContainerView aboveSubview:self->_dateTimeClippingView];
    if (self->_notificationLegibilityFullBaseLayerDimView)
    {
      [(UIView *)self->_notificationLegibiltyBelowDateTimeContainerView addSubview:?];
      [(UIView *)self->_slideableContentView insertSubview:self->_notificationLegibiltyBelowDateTimeContainerView belowSubview:self->_dateTimeClippingView];
    }

    if (self->_notificationLegibilityLocalizedDimView)
    {
      [(UIView *)self->_notificationLegibiltyAboveDateTimeContainerView addSubview:?];
      [(UIView *)self->_slideableContentView insertSubview:self->_notificationLegibiltyAboveDateTimeContainerView aboveSubview:self->_wallpaperFloatingLayerContainerView];
    }

    if (self->_notificationLegibilityDynamicDimView)
    {
      [(UIView *)self->_notificationLegibiltyAboveDateTimeContainerView addSubview:?];
      [(UIView *)self->_slideableContentView insertSubview:self->_notificationLegibiltyAboveDateTimeContainerView aboveSubview:self->_wallpaperFloatingLayerContainerView];
    }
  }

  if (CSFeatureEnabled(11))
  {
    [(UIView *)self->_slideableContentView insertSubview:self->_backgroundGlassView aboveSubview:self->_wallpaperFloatingLayerContainerView];
  }

  v4 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v4 sendSubviewToBack:self->_statusBarLegibilityView];

  if (self->_modalPresentationLevel == 1)
  {
    v5 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    [v5 sendSubviewToBack:self->_modalPresentationView];
  }

  if (self->_wallpaperFloatingLayerPresentationLevel != 1)
  {
    v8 = 0;
    goto LABEL_45;
  }

  v6 = [(CSNotificationLegibilityDimView *)self->_wallpaperFloatingLayerContainerView superview];
  v7 = [(CSCoverSheetView *)self _effectiveContentsContainerView];

  v8 = v6 != v7;
  if (v6 == v7)
  {
    notificationLegibilityLocalizedDimView = self->_notificationLegibilityLocalizedDimView;
    if (notificationLegibilityLocalizedDimView)
    {
      v18 = [(CSNotificationLegibilityDimView *)notificationLegibilityLocalizedDimView superview];
      v19 = [(CSCoverSheetView *)self _effectiveContentsContainerView];

      if (v18 != v19)
      {
        v20 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
        [v20 addSubview:self->_notificationLegibilityLocalizedDimView];
      }

      v21 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
      [v21 sendSubviewToBack:self->_notificationLegibilityLocalizedDimView];
    }

    notificationLegibilityDynamicDimView = self->_notificationLegibilityDynamicDimView;
    if (notificationLegibilityDynamicDimView)
    {
      v23 = [(CSNotificationLegibilityDimView *)notificationLegibilityDynamicDimView superview];
      v24 = [(CSCoverSheetView *)self _effectiveContentsContainerView];

      if (v23 != v24)
      {
        v25 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
        [v25 addSubview:self->_notificationLegibilityDynamicDimView];
      }

      v26 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
      [v26 sendSubviewToBack:self->_notificationLegibilityDynamicDimView];
    }

    v27 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    [v27 sendSubviewToBack:self->_wallpaperFloatingLayerContainerView];

    v28 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    v29 = [(UIView *)self->_dateTimeClippingView superview];
    [v28 sendSubviewToBack:v29];

    notificationLegibilityFullBaseLayerDimView = self->_notificationLegibilityFullBaseLayerDimView;
    if (notificationLegibilityFullBaseLayerDimView)
    {
      v31 = [(CSNotificationLegibilityDimView *)notificationLegibilityFullBaseLayerDimView superview];
      v32 = [(CSCoverSheetView *)self _effectiveContentsContainerView];

      v3 = &OBJC_IVAR___CSCombinedListViewController__cachedAdjunctHeight;
      if (v31 != v32)
      {
        v33 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
        [v33 addSubview:self->_notificationLegibilityFullBaseLayerDimView];
      }

      v14 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
      [v14 sendSubviewToBack:self->_notificationLegibilityFullBaseLayerDimView];
      goto LABEL_41;
    }

    v8 = 0;
  }

  else
  {
    v9 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    wallpaperFloatingLayerContainerView = self->_wallpaperFloatingLayerContainerView;
    v11 = [(UIView *)self->_dateTimeClippingView superview];
    [v9 insertSubview:wallpaperFloatingLayerContainerView aboveSubview:v11];

    if (self->_notificationLegibilityLocalizedDimView)
    {
      v12 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
      [v12 insertSubview:self->_notificationLegibilityLocalizedDimView aboveSubview:self->_wallpaperFloatingLayerContainerView];
    }

    if (self->_notificationLegibilityDynamicDimView)
    {
      v13 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
      [v13 insertSubview:self->_notificationLegibilityDynamicDimView aboveSubview:self->_wallpaperFloatingLayerContainerView];
    }

    if (self->_notificationLegibilityFullBaseLayerDimView)
    {
      v14 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
      v15 = self->_notificationLegibilityFullBaseLayerDimView;
      v16 = [(UIView *)self->_dateTimeClippingView superview];
      [v14 insertSubview:v15 belowSubview:v16];

      v3 = &OBJC_IVAR___CSCombinedListViewController__cachedAdjunctHeight;
LABEL_41:

      goto LABEL_45;
    }

    v8 = 1;
  }

  v3 = &OBJC_IVAR___CSCombinedListViewController__cachedAdjunctHeight;
LABEL_45:
  if (self->_backgroundContentPresentationLevel == 1)
  {
    v34 = [(CSBackgroundContentView *)self->_backgroundContentView superview];
    v35 = [(CSCoverSheetView *)self _effectiveContentsContainerView];

    v36 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    v37 = v36;
    backgroundContentView = self->_backgroundContentView;
    if (v34 == v35)
    {
      [v36 sendSubviewToBack:backgroundContentView];
    }

    else
    {
      [v36 insertSubview:backgroundContentView atIndex:0];
      v8 = 1;
    }
  }

  if (self->_wallpaperPresentationLevel == 1)
  {
    v39 = [(CSWallpaperView *)self->_wallpaperEffectView superview];

    wallpaperEffectView = self->_wallpaperEffectView;
    if (v39 != self)
    {
      [(CSCoverSheetView *)self insertSubview:wallpaperEffectView atIndex:0];
      backgroundContainerView = self->_backgroundContainerView;

      [(CSCoverSheetView *)self sendSubviewToBack:backgroundContainerView];
      return;
    }

    [(CSCoverSheetView *)self sendSubviewToBack:wallpaperEffectView];
  }

  [(CSCoverSheetView *)self sendSubviewToBack:self->_backgroundContainerView];
  if (v8)
  {
    return;
  }

  v42 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v42 bringSubviewToFront:self->_quickActionsView];

  v43 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v43 bringSubviewToFront:self->_tintingView];

  if (!self->_modalPresentationLevel)
  {
    v44 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    [v44 bringSubviewToFront:self->_modalPresentationView];
  }

  if (self->_fakeStatusBar && self->_fakeStatusBarLevel == 1)
  {
    v66 = [(CSCoverSheetView *)self referenceViewForBelowPresentationContext];
    v45 = [v66 superview];
    [v45 insertSubview:self->_higherSlideableContentView aboveSubview:v66];
    [v45 insertSubview:self->_fakeStatusBarWrapperView belowSubview:self->_higherSlideableContentView];
    statusBarBackgroundView = self->_statusBarBackgroundView;
    fakeStatusBarWrapperView = self->_fakeStatusBarWrapperView;
    v48 = v45;
LABEL_72:
    [v48 insertSubview:statusBarBackgroundView belowSubview:fakeStatusBarWrapperView];

    goto LABEL_76;
  }

  v49 = [(UIView *)self->_statusBarBackgroundView superview];
  v50 = [(CSCoverSheetView *)self _effectiveContentsContainerView];

  v51 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  v52 = v51;
  v53 = self->_statusBarBackgroundView;
  if (v49 == v50)
  {
    [v51 bringSubviewToFront:v53];
  }

  else
  {
    [v51 addSubview:v53];
  }

  v54 = [(UIView *)self->_higherSlideableContentView superview];
  v55 = [(CSCoverSheetView *)self _effectiveContentsContainerView];

  v56 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  v57 = v56;
  higherSlideableContentView = self->_higherSlideableContentView;
  if (v54 == v55)
  {
    [v56 bringSubviewToFront:higherSlideableContentView];
  }

  else
  {
    [v56 addSubview:higherSlideableContentView];
  }

  if (!self->_fakeStatusBar || self->_fakeStatusBarLevel != 1)
  {
    v62 = [(CSPropertyAnimatingTouchPassThroughView *)self->_fakeStatusBarWrapperView superview];
    v63 = [(CSCoverSheetView *)self _effectiveContentsContainerView];

    v64 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    v65 = self->_fakeStatusBarWrapperView;
    v66 = v64;
    if (v62 == v63)
    {
      [v64 bringSubviewToFront:v65];
    }

    else
    {
      [v64 addSubview:v65];
    }

    goto LABEL_76;
  }

  v66 = [(CSCoverSheetView *)self subviews];
  v59 = [v66 indexOfObject:self->_fakeStatusBarWrapperView];
  v60 = v3[118];
  if (v59 != [v66 indexOfObject:*(&self->super.super.super.isa + v60)] - 1)
  {
    v61 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    [v61 insertSubview:self->_fakeStatusBarWrapperView belowSubview:*(&self->super.super.super.isa + v60)];

    v48 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    v45 = v48;
    statusBarBackgroundView = self->_statusBarBackgroundView;
    fakeStatusBarWrapperView = self->_fakeStatusBarWrapperView;
    goto LABEL_72;
  }

LABEL_76:
}

- ($453422EBA70013024ECC637D52E1FF2D)transitionContext
{
  v3 = *&self[11].var1.var0.var1;
  *&retstr->var0 = *&self[11].var0;
  *&retstr->var1.var0.var1 = v3;
  *&retstr->var1.var1.var1 = *&self[11].var1.var1.var1;
  return self;
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)isTransitioning
{
  v2 = [(CSCoverSheetView *)self scrollView];
  v3 = [v2 isScrolling];

  return v3;
}

- (CGRect)effectiveContainerBounds
{
  v2 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v2 bounds];
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

- (CGPoint)dateViewOffset
{
  x = self->_dateViewOffset.x;
  y = self->_dateViewOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (unint64_t)_indexOfMainPage
{
  v3 = [(CSCoverSheetView *)self scrollView];
  v4 = [v3 pageViews];
  v5 = [(CSCoverSheetView *)self mainPageView];
  v6 = [v4 indexOfObject:v5];

  return v6;
}

- (void)_layoutFakeStatusBar
{
  v3 = self->_fakeStatusBar;
  v4 = v3;
  if (v3)
  {
    v17 = *(MEMORY[0x277CBF2C0] + 16);
    *&v21.a = *MEMORY[0x277CBF2C0];
    v18 = *&v21.a;
    *&v21.c = v17;
    *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
    v16 = *&v21.tx;
    [(UIView *)v3 setTransform:&v21];
    [(CSCoverSheetView *)self bounds];
    v6 = v5;
    [(UIView *)v4 frame];
    [(UIView *)v4 setFrame:0.0, 0.0, v6, CGRectGetHeight(v22)];
    fakeStatusBarWrapperView = self->_fakeStatusBarWrapperView;
    *&v21.a = v18;
    *&v21.c = v17;
    *&v21.tx = v16;
    [(CSPropertyAnimatingTouchPassThroughView *)fakeStatusBarWrapperView setTransform:&v21];
    v8 = self->_fakeStatusBarWrapperView;
    v9 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    [v9 bounds];
    [(CSPropertyAnimatingTouchPassThroughView *)v8 setBounds:?];

    v10 = self->_fakeStatusBarWrapperView;
    v11 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    [v11 bounds];
    BSRectGetCenter();
    [(CSPropertyAnimatingTouchPassThroughView *)v10 setCenter:?];

    v12 = [(CSPropertyAnimatingTouchPassThroughView *)self->_fakeStatusBarWrapperView superview];
    v13 = [(CSCoverSheetView *)self _effectiveContentsContainerView];

    if (v12 == v13)
    {
      memset(&v21, 0, sizeof(v21));
      if (BSPointEqualToPoint())
      {
        *&v21.a = v18;
        *&v21.c = v17;
        *&v21.tx = v16;
      }

      else
      {
        CGAffineTransformMakeTranslation(&v21, self->_foregroundViewPositionOffset.x, self->_foregroundViewPositionOffset.y);
      }

      v14 = self->_fakeStatusBarWrapperView;
      fakeStatusBarScale = self->_fakeStatusBarScale;
      v19 = v21;
      CGAffineTransformScale(&v20, &v19, fakeStatusBarScale, fakeStatusBarScale);
      [(CSPropertyAnimatingTouchPassThroughView *)v14 setTransform:&v20];
    }

    [(UIView *)v4 layoutIfNeeded];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSCoverSheetView;
  [(CSCoverSheetView *)&v3 layoutSubviews];
  [(CSCoverSheetView *)self _layoutContentContainerView];
  [(CSCoverSheetView *)self _layoutGlassEffectView];
  [(CSCoverSheetView *)self _layoutFullScreenViews];
  [(CSCoverSheetView *)self _layoutDateTimeViewClippingView];
  [(CSCoverSheetView *)self _layoutDateView];
  [(CSCoverSheetView *)self _layoutSidebarComplicationContainerView];
  [(CSCoverSheetView *)self _layoutComplicationContainerView];
  [(CSCoverSheetView *)self _layoutFakeStatusBar];
  [(CSCoverSheetView *)self _layoutAuthIndicator];
  [(CSCoverSheetView *)self _layoutBottomPage];
  [(CSCoverSheetView *)self _layoutWallpaperEffectView];
  [(CSCoverSheetView *)self _layoutTintingView];
  [(CSCoverSheetView *)self _layoutProudLockView];
  [(CSCoverSheetView *)self _layoutHigherSlideableContentView];
  [(CSCoverSheetView *)self _layoutTeachableMomentsContainerView];
  [(CSCoverSheetView *)self _layoutQuickActionsView];
  [(CSCoverSheetView *)self _layoutStatusBarLegibilityView];
  [(CSCoverSheetView *)self _layoutBackgroundContentView];
  [(CSCoverSheetView *)self _layoutWallpaperFloatingLayerContainerView];
  [(CSCoverSheetView *)self _layoutNotificationLegibilityLocalizedDimView];
  [(CSCoverSheetView *)self _layoutNotificationLegibilityFullBaseLayerView];
  [(CSCoverSheetView *)self _layoutNotificationLegibilityContainerViews];
  [(SBSearchGesture *)self->_searchGesture updateForRotation];
  [(CSCoverSheetView *)self _orderSubviews];
}

- (void)_layoutContentContainerView
{
  if (CSFeatureEnabled(12))
  {
    [(CSCoverSheetView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9 * 0.5;
    v11 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    [v11 setFrame:{v4, v6, v8, v10}];
  }
}

- (void)_layoutGlassEffectView
{
  if (CSFeatureEnabled(11))
  {
    v3 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [(CSCoverSheetSDFView *)self->_backgroundGlassView setBounds:v5, v7, v9, v11];
    backgroundGlassView = self->_backgroundGlassView;
    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    MidX = CGRectGetMidX(v16);
    v17.origin.x = v5;
    v17.origin.y = v7;
    v17.size.width = v9;
    v17.size.height = v11;
    MidY = CGRectGetMidY(v17);

    [(CSCoverSheetSDFView *)backgroundGlassView setCenter:MidX, MidY];
  }
}

- (void)_layoutFullScreenViews
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v12 center];
  v37 = v14;
  v39 = v13;

  backgroundContainerView = self->_backgroundContainerView;
  v16 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v16 frame];
  [(BSUIOrientationTransformWrapperView *)backgroundContainerView setFrame:?];

  [(CSFixedFooterView *)self->_fixedFooterView setFrame:v5, v7, v9, v11];
  v17 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [(UIView *)self->_modalPresentationView setFrame:v19, v21 + self->_modalPresentationViewOffset, v23, v25];
  [(SBFPagedScrollView *)self->_scrollView frame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if ((BSRectEqualToRect() & 1) == 0)
  {
    v34 = SBLogDashBoard();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v46.origin.x = v27;
      v46.origin.y = v29;
      v46.size.width = v31;
      v46.size.height = v33;
      v35 = NSStringFromCGRect(v46);
      v47.origin.x = v5;
      v47.origin.y = v7;
      v47.size.width = v9;
      v47.size.height = v11;
      v36 = NSStringFromCGRect(v47);
      *buf = 138412546;
      v42 = v35;
      v43 = 2112;
      v44 = v36;
      _os_log_impl(&dword_21EB05000, v34, OS_LOG_TYPE_INFO, "CoverSheetView scrollView frame will change from %@ to %@", buf, 0x16u);
    }

    [(SBFPagedScrollView *)self->_scrollView setFrame:v5, v7, v9, v11];
  }

  [(UIView *)self->_slideableContentView setBounds:v5, v7, v9, v11, v37, v39];
  [(UIView *)self->_slideableContentView setCenter:v40, v38];
  [(UIView *)self->_higherSlideableContentView setBounds:v5, v7, v9, v11];
  [(UIView *)self->_higherSlideableContentView setCenter:v40, v38];
  [(CSCoverSheetView *)self bringSubviewToFront:self->_regionsDebugView];
  [(CSRegionsDebugView *)self->_regionsDebugView setFrame:v5, v7, v9, v11];
}

- (void)_layoutDateTimeViewClippingView
{
  if (self->_dateTimeClippingView && self->_dateView)
  {
    [(CSCoverSheetView *)self _overlayClippingFrame];
    [(UIView *)self->_dateTimeClippingView setFrame:?];
    dateTimeClippingView = self->_dateTimeClippingView;
    v4 = [(CSCoverSheetView *)self clipsToBounds];

    [(UIView *)dateTimeClippingView setClipsToBounds:v4];
  }
}

- (void)_layoutDateView
{
  v30 = 0.0;
  dateViewPageAlignment = self->_dateViewPageAlignment;
  [(SBFPagedScrollView *)self->_scrollView unclippedPageRelativeScrollOffset];
  [(CSCoverSheetView *)self _dateViewFrameForPageAlignment:dateViewPageAlignment pageRelativeScrollOffset:&v30 outAlignmentPercent:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  dateView = self->_dateView;
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  v29[0] = *MEMORY[0x277CBF2C0];
  v29[1] = v13;
  v29[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(SBFLockScreenDateView *)dateView setTransform:v29];
  dateEffectView = self->_dateEffectView;
  if (dateEffectView)
  {
    [(UIVisualEffectView *)dateEffectView setFrame:v5, v7, v9, v11];
    v15 = self->_dateView;
    [(UIVisualEffectView *)self->_dateEffectView bounds];
    v5 = v16;
    v7 = v17;
    v9 = v18;
    v11 = v19;
  }

  else
  {
    v15 = self->_dateView;
  }

  [(SBFLockScreenDateView *)v15 setFrame:v5, v7, v9, v11];
  v20 = self->_dateView;
  dateViewScale = self->_dateViewScale;
  v22 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v22 center];
  [(CSCoverSheetView *)self _transformScaling:v20 byScale:dateViewScale aboutPointInSelf:v23, v24];
  [(SBFLockScreenDateView *)v20 setTransform:v29];

  if (self->_dateViewStretch)
  {
    y = self->_dateViewOffset.y;
    v26 = -y;
    v27 = y <= -0.0;
    v28 = 0.0;
    if (v27)
    {
      v28 = v26;
    }

    [(SBFLockScreenDateView *)self->_dateView setDateToTimeStretch:v28 * 0.125];
  }

  [(SBFLockScreenDateView *)self->_dateView setAlignmentPercent:v30];
  [(SBFLockScreenDateView *)self->_dateView layoutIfNeeded];
}

- (void)_layoutSidebarComplicationContainerView
{
  sidebarComplicationContainerView = self->_sidebarComplicationContainerView;
  if (sidebarComplicationContainerView)
  {
    v4 = MEMORY[0x277D02CF0];
    v5 = sidebarComplicationContainerView;
    v6 = [[v4 alloc] initWithTraitEnvironment:self];
    [(CSCoverSheetView *)self effectiveContainerBounds];
    [v6 frameForElements:16 withBoundingRect:?];
    [(UIView *)v5 setFrame:?];
  }
}

- (void)_layoutAuthIndicator
{
  [(CSCoverSheetView *)self frame];
  Width = CGRectGetWidth(v6);
  authIndicator = self->_authIndicator;

  [(UIView *)authIndicator setFrame:0.0, 0.0, Width, 2.0];
}

- (void)_layoutComplicationContainerView
{
  complicationContainerView = self->_complicationContainerView;
  if (complicationContainerView)
  {
    v4 = MEMORY[0x277D02CF0];
    v5 = complicationContainerView;
    v6 = [[v4 alloc] initWithTraitEnvironment:self];
    [(CSCoverSheetView *)self effectiveContainerBounds];
    [v6 frameForElements:32 withBoundingRect:?];
    v7 = self->_complicationContainerView;
    BSRectWithSize();
    [(UIView *)v7 setBounds:?];
    v8 = self->_complicationContainerView;
    BSRectGetCenter();
    [(UIView *)v8 setCenter:?];
    v9 = self->_complicationContainerView;
    complicationContainerViewScale = self->_complicationContainerViewScale;
    v11 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    [v11 center];
    [(CSCoverSheetView *)self _transformScaling:v9 byScale:complicationContainerViewScale aboutPointInSelf:v12, v13];
    [(UIView *)v9 setTransform:&v14];
  }
}

- (void)_layoutBottomPage
{
  v3 = [(CSCoverSheetView *)self bottomPage];
  if (v3)
  {
    v6 = v3;
    [(CSCoverSheetView *)self frame];
    Height = CGRectGetHeight(v8);
    [(CSCoverSheetView *)self frame];
    Width = CGRectGetWidth(v9);
    [(CSCoverSheetView *)self frame];
    [v6 setFrame:{0.0, Height, Width, CGRectGetHeight(v10)}];
    v3 = v6;
  }
}

- (void)_layoutTintingView
{
  if (self->_tintingView)
  {
    v3 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    v4 = [(CSCoverSheetView *)self mainPageView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(CSCoverSheetView *)self mainPageView];
    [v3 convertRect:v13 fromView:{v6, v8, v10, v12}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    tintingView = self->_tintingView;

    [(UIView *)tintingView setFrame:v15, v17, v19, v21];
  }
}

- (void)_layoutWallpaperEffectView
{
  if (self->_wallpaperEffectView)
  {
    if ([(CSCoverSheetView *)self _maglevActive])
    {
      v3 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
      [v3 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      wallpaperEffectView = self->_wallpaperEffectView;
      [(CSCoverSheetView *)self _wallpaperOrientationEnforcingBounds];
      [(CSWallpaperView *)wallpaperEffectView setBounds:?];
      v13 = self->_wallpaperEffectView;
      v20.origin.x = v5;
      v20.origin.y = v7;
      v20.size.width = v9;
      v20.size.height = v11;
      MidX = CGRectGetMidX(v20);
      v21.origin.x = v5;
      v21.origin.y = v7;
      v21.size.width = v9;
      v21.size.height = v11;
      [(CSWallpaperView *)v13 setCenter:MidX, CGRectGetMidY(v21)];
      v15 = self->_wallpaperEffectView;
      [(CSCoverSheetView *)self _portraitEnforcingTransform];
      [(CSWallpaperView *)v15 setTransform:v18];
    }

    else
    {
      v16 = self->_wallpaperEffectView;
      v17 = [(CSCoverSheetView *)self scrollView];
      [v17 size];
      BSRectWithSize();
      [(CSWallpaperView *)v16 setFrame:?];
    }
  }
}

- (void)_layoutProudLockView
{
  if (![(UIView *)self->_proudLockContainerView isHidden])
  {
    [(CSCoverSheetView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [MEMORY[0x277D65EC0] proudLockCenterFromTopOfScreen];
    v12 = v11;
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    Width = CGRectGetWidth(v30);
    v31.origin.x = v4;
    v31.origin.y = v6;
    v31.size.width = v8;
    v31.size.height = v10;
    v14 = CGRectGetMidX(v31) + Width * -0.5;
    [(CSPropertyAnimatingTouchPassThroughView *)self->_proudLockContainerWrapperView setBounds:v14, 0.0, Width, v12 + v12];
    v32.origin.x = v4;
    v32.origin.y = v6;
    v32.size.width = v8;
    v32.size.height = v10;
    [(CSPropertyAnimatingTouchPassThroughView *)self->_proudLockContainerWrapperView setCenter:CGRectGetMidX(v32), v12];
    [(UIView *)self->_proudLockContainerView setFrame:v14, 0.0, Width, v12 + v12];
    cameraCoveredView = self->_cameraCoveredView;
    [(CSCoverSheetView *)self effectiveContainerBounds];
    [(UIView *)cameraCoveredView setFrame:?];
    if (BSPointEqualToPoint() && self->_proudLockIconViewScale == 1.0)
    {
      proudLockContainerWrapperView = self->_proudLockContainerWrapperView;
      v24 = *(MEMORY[0x277CBF2C0] + 16);
      *&v29.a = *MEMORY[0x277CBF2C0];
      *&v29.c = v24;
      *&v29.tx = *(MEMORY[0x277CBF2C0] + 32);
      v21 = &v29;
    }

    else
    {
      memset(&v29, 0, sizeof(v29));
      CGAffineTransformMakeTranslation(&v29, self->_proudLockIconViewOffset.x, self->_proudLockIconViewOffset.y);
      v33.origin.x = v4;
      v33.origin.y = v6;
      v33.size.width = v8;
      v33.size.height = v10;
      MidX = CGRectGetMidX(v33);
      proudLockIconViewScale = self->_proudLockIconViewScale;
      [MEMORY[0x277D65EC0] proudLockScaleFactor];
      v19 = proudLockIconViewScale / v18;
      if (v19 > 1.0)
      {
        v19 = 1.0;
      }

      memset(&v28, 0, sizeof(v28));
      [(CSCoverSheetView *)self _transformScaling:self->_proudLockContainerWrapperView byScale:v19 aboutPointInSelf:MidX, v12];
      v20 = self->_proudLockContainerWrapperView;
      t1 = v29;
      v25 = v28;
      CGAffineTransformConcat(&v27, &t1, &v25);
      v21 = &v27;
      proudLockContainerWrapperView = v20;
    }

    [(CSPropertyAnimatingTouchPassThroughView *)proudLockContainerWrapperView setTransform:v21];
    if (self->_proudLockPrefersLowerPresentationLevel)
    {
      v23 = &OBJC_IVAR___CSCoverSheetView__slideableContentView;
    }

    else
    {
      v23 = &OBJC_IVAR___CSCoverSheetView__higherSlideableContentView;
    }

    [*(&self->super.super.super.isa + *v23) addSubview:self->_proudLockContainerWrapperView];
  }
}

- (void)_layoutHigherSlideableContentView
{
  [(UIView *)self->_slideableContentView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  v12 = [(UIView *)self->_higherSlideableContentView superview];
  [v11 convertRect:v12 toView:{v4, v6, v8, v10}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  higherSlideableContentView = self->_higherSlideableContentView;

  [(UIView *)higherSlideableContentView setFrame:v14, v16, v18, v20];
}

- (void)_layoutTeachableMomentsContainerView
{
  v3 = [(CSCoverSheetView *)self teachableMomentsContainerView];
  if (v3)
  {
    v4 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v3 setBounds:{v6, v8, v10, v12}];
    BSRectGetCenter();
    [v3 setCenter:?];
    memset(&v15, 0, sizeof(v15));
    CGAffineTransformMakeScale(&v15, self->_controlCenterGrabberScale, self->_controlCenterGrabberScale);
    v13 = [v3 controlCenterGrabberContainerView];
    v14 = v15;
    [v13 setTransform:&v14];
  }
}

- (void)_layoutQuickActionsView
{
  v3 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [(CSCoverSheetView *)self _indexOfMainPage];
  [(SBFPagedScrollView *)self->_scrollView unclippedPageRelativeScrollOffset];
  v12 = v10 - v11;
  [(CSCoverSheetView *)self bounds];
  Width = CGRectGetWidth(v25);
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v14 = -(v12 * Width);
  }

  else
  {
    v14 = v12 * Width;
  }

  if (BSPointEqualToPoint() && self->_quickActionsViewScale == 1.0)
  {
    quickActionsView = self->_quickActionsView;
    v19 = *(MEMORY[0x277CBF2C0] + 16);
    *&v24.a = *MEMORY[0x277CBF2C0];
    *&v24.c = v19;
    *&v24.tx = *(MEMORY[0x277CBF2C0] + 32);
    [(CSQuickActionsView *)quickActionsView setTransform:&v24];
    [(CSQuickActionsView *)self->_quickActionsView setFrame:v14, v5, v7, v9];
  }

  else
  {
    v15 = self->_quickActionsView;
    v16 = *(MEMORY[0x277CBF2C0] + 16);
    *&v24.a = *MEMORY[0x277CBF2C0];
    *&v24.c = v16;
    *&v24.tx = *(MEMORY[0x277CBF2C0] + 32);
    [(CSQuickActionsView *)v15 setTransform:&v24];
    [(CSQuickActionsView *)self->_quickActionsView setFrame:v14, v5, v7, v9];
    memset(&v24, 0, sizeof(v24));
    CGAffineTransformMakeTranslation(&v24, self->_quickActionsViewOffset.x, self->_quickActionsViewOffset.y);
    memset(&v23, 0, sizeof(v23));
    CGAffineTransformMakeScale(&v23, self->_quickActionsViewScale, self->_quickActionsViewScale);
    v17 = self->_quickActionsView;
    t1 = v23;
    v20 = v24;
    CGAffineTransformConcat(&v22, &t1, &v20);
    [(CSQuickActionsView *)v17 setTransform:&v22];
  }
}

- (void)_layoutStatusBarLegibilityView
{
  v3 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  statusBarLegibilityView = self->_statusBarLegibilityView;

  [(SBFStatusBarLegibilityView *)statusBarLegibilityView setFrame:v5, v7, v9, v11];
}

- (void)_layoutBackgroundContentView
{
  v3 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CSBackgroundContentView *)self->_backgroundContentView setBounds:v5, v7, v9, v11];
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  v12 = CGRectGetHeight(v17) * self->_coverSheetPresentationProgressModelValue;
  backgroundContentView = self->_backgroundContentView;
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  MidX = CGRectGetMidX(v18);
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  v15 = v12 + CGRectGetMidY(v19);

  [(CSBackgroundContentView *)backgroundContentView setCenter:MidX, v15];
}

- (void)_layoutWallpaperFloatingLayerContainerView
{
  v3 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if ([(CSCoverSheetView *)self _maglevActive])
  {
    [(CSCoverSheetView *)self _wallpaperOrientationEnforcingBounds];
    [(CSNotificationLegibilityDimView *)self->_wallpaperFloatingLayerContainerView setBounds:?];
    wallpaperFloatingLayerContainerView = self->_wallpaperFloatingLayerContainerView;
    v33.origin.x = v5;
    v33.origin.y = v7;
    v33.size.width = v9;
    v33.size.height = v11;
    MidX = CGRectGetMidX(v33);
    v34.origin.x = v5;
    v34.origin.y = v7;
    v34.size.width = v9;
    v34.size.height = v11;
    [(CSNotificationLegibilityDimView *)wallpaperFloatingLayerContainerView setCenter:MidX, CGRectGetMidY(v34)];
    v14 = *(MEMORY[0x277CBF2C0] + 16);
    *&v32.a = *MEMORY[0x277CBF2C0];
    *&v32.c = v14;
    *&v32.tx = *(MEMORY[0x277CBF2C0] + 32);
    v15 = BSPointEqualToPoint();
    wallpaperFloatingLayerContainerViewScale = self->_wallpaperFloatingLayerContainerViewScale;
    if (v15)
    {
      v17 = wallpaperFloatingLayerContainerViewScale == 1.0;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      memset(&v31, 0, sizeof(v31));
      CGAffineTransformMakeTranslation(&v31, self->_wallpaperFloatingLayerContainerViewOffset.x, self->_wallpaperFloatingLayerContainerViewOffset.y);
      memset(&t2, 0, sizeof(t2));
      CGAffineTransformMakeScale(&t2, wallpaperFloatingLayerContainerViewScale, wallpaperFloatingLayerContainerViewScale);
      t1 = t2;
      v28 = v31;
      CGAffineTransformConcat(&v32, &t1, &v28);
    }

    v18 = self->_wallpaperFloatingLayerContainerView;
    [(CSCoverSheetView *)self _portraitEnforcingTransform];
    t1 = v32;
    CGAffineTransformConcat(&v31, &t1, &t2);
    p_t2 = &v31;
    v20 = v18;
  }

  else
  {
    [(CSNotificationLegibilityDimView *)self->_wallpaperFloatingLayerContainerView setBounds:v5, v7, v9, v11];
    v21 = self->_wallpaperFloatingLayerContainerView;
    v35.origin.x = v5;
    v35.origin.y = v7;
    v35.size.width = v9;
    v35.size.height = v11;
    v22 = CGRectGetMidX(v35);
    v36.origin.x = v5;
    v36.origin.y = v7;
    v36.size.width = v9;
    v36.size.height = v11;
    [(CSNotificationLegibilityDimView *)v21 setCenter:v22, CGRectGetMidY(v36)];
    v23 = BSPointEqualToPoint();
    v24 = self->_wallpaperFloatingLayerContainerViewScale;
    if (v23)
    {
      v25 = v24 == 1.0;
    }

    else
    {
      v25 = 0;
    }

    if (v25)
    {
      v20 = self->_wallpaperFloatingLayerContainerView;
      v27 = *(MEMORY[0x277CBF2C0] + 16);
      *&v32.a = *MEMORY[0x277CBF2C0];
      *&v32.c = v27;
      *&v32.tx = *(MEMORY[0x277CBF2C0] + 32);
      p_t2 = &v32;
    }

    else
    {
      memset(&v32, 0, sizeof(v32));
      CGAffineTransformMakeTranslation(&v32, self->_wallpaperFloatingLayerContainerViewOffset.x, self->_wallpaperFloatingLayerContainerViewOffset.y);
      memset(&v31, 0, sizeof(v31));
      CGAffineTransformMakeScale(&v31, v24, v24);
      v26 = self->_wallpaperFloatingLayerContainerView;
      t1 = v31;
      v28 = v32;
      CGAffineTransformConcat(&t2, &t1, &v28);
      p_t2 = &t2;
      v20 = v26;
    }
  }

  [(CSNotificationLegibilityDimView *)v20 setTransform:p_t2];
}

- (BOOL)_maglevActive
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (void)viewControllerDidDisappear
{
  self->_viewControllerAppearingOrAppeared = 0;
  [(CSCoverSheetView *)self _setupAllGesturesOnScrollView:0];
  [(SBSearchGesture *)self->_searchGesture setTargetView:0];
  [(CSCoverSheetView *)self cancelTransition];
  self->_shouldModifyPageScrolling = 1;
}

- (void)cancelTransition
{
  v3 = [(CSCoverSheetView *)self scrollView];
  v4 = [v3 isScrolling];

  if (v4)
  {
    v5 = [(CSCoverSheetView *)self scrollView];
    v6 = [(CSCoverSheetView *)self scrollView];
    v7 = v6;
    if (v6)
    {
      [v6 currentScrollContext];
      v8 = *(&v11 + 1);
      v9 = v12;
    }

    else
    {
      v12 = 0.0;
      v10 = 0u;
      v11 = 0u;
      v9 = 0.0;
      v8 = 0.0;
    }

    [v5 setContentOffset:{v8, v9, v10, v11, *&v12}];
  }
}

- (void)_removeContentView
{
  [(UIView *)self->_slideableContentView addSubview:self->_scrollView];
  [(UIView *)self->_contentView removeFromSuperview];
  contentView = self->_contentView;
  self->_contentView = 0;

  self->_hasSubviewModifyingView = 0;
}

- (CSCoverSheetView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = CSCoverSheetView;
  v3 = [(CSCoverSheetView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    legibilitySettings = v3->_legibilitySettings;
    v3->_legibilitySettings = 0;

    v4->_statusBarLegibilityEnabled = 1;
    v4->_dateViewPageAlignment = 0x7FFFFFFFFFFFFFFFLL;
    v4->_targetPageIndexForDraggingEnded = 0x7FFFFFFFFFFFFFFFLL;
    v6 = +[CSLockScreenDomain rootSettings];
    v7 = [v6 lookSettings];
    lookSettings = v4->_lookSettings;
    v4->_lookSettings = v7;

    [(PTSettings *)v4->_lookSettings addKeyObserver:v4];
    [(CSCoverSheetView *)v4 setClipsToBounds:1];
    [(CSCoverSheetView *)v4 _addContentsContainerView];
    [(CSCoverSheetView *)v4 _addBackgroundContainerView];
    [(CSCoverSheetView *)v4 _addBackgroundView];
    [(CSCoverSheetView *)v4 _addSlideableContentView];
    [(CSCoverSheetView *)v4 _addHigherSlideableContentView];
    [(CSCoverSheetView *)v4 _addDateTimeContainer];
    [(CSCoverSheetView *)v4 _addWallpaperFloatingLayerContainerView];
    [(CSCoverSheetView *)v4 _addNotificationLegibilityDynamicDimView];
    [(CSCoverSheetView *)v4 _addNotificationLegibilityLocalizedDimView];
    [(CSCoverSheetView *)v4 _addNotificationLegibilityFullBaseLayerDimView];
    [(CSCoverSheetView *)v4 _addNotificationLegibilityContainers];
    [(CSCoverSheetView *)v4 _addScrollView];
    [(CSCoverSheetView *)v4 _addAuthIndicator];
    [(CSCoverSheetView *)v4 _addTintingView];
    [(CSCoverSheetView *)v4 _addStatusBarLegibilityView];
    v9 = [[CSScrollModifier alloc] initWithView:v4];
    scrollModifier = v4->_scrollModifier;
    v4->_scrollModifier = v9;
  }

  return v4;
}

- (void)setFakeStatusBar:(id)a3
{
  v5 = a3;
  fakeStatusBar = self->_fakeStatusBar;
  if (fakeStatusBar != v5)
  {
    v12 = v5;
    [(UIView *)fakeStatusBar removeFromSuperview];
    objc_storeStrong(&self->_fakeStatusBar, a3);
    fakeStatusBarWrapperView = self->_fakeStatusBarWrapperView;
    if (!fakeStatusBarWrapperView)
    {
      v8 = [CSPropertyAnimatingTouchPassThroughView alloc];
      v9 = [(CSPropertyAnimatingTouchPassThroughView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      v10 = self->_fakeStatusBarWrapperView;
      self->_fakeStatusBarWrapperView = v9;

      v11 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
      [v11 addSubview:self->_fakeStatusBarWrapperView];

      [(CSCoverSheetView *)self _prepareBlursForView:self->_fakeStatusBarWrapperView withHardEdges:0];
      fakeStatusBarWrapperView = self->_fakeStatusBarWrapperView;
    }

    [(CSPropertyAnimatingTouchPassThroughView *)fakeStatusBarWrapperView addSubview:self->_fakeStatusBar];
    fakeStatusBar = [(CSCoverSheetView *)self _layoutFakeStatusBar];
    v5 = v12;
  }

  MEMORY[0x2821F96F8](fakeStatusBar, v5);
}

- (void)setFakeStatusBarLevel:(unint64_t)a3
{
  if (self->_fakeStatusBarLevel != a3)
  {
    self->_fakeStatusBarLevel = a3;
    [(CSCoverSheetView *)self _orderSubviews];
  }
}

- (void)setFakeStatusBarBlurRadius:(double)a3
{
  if (self->_fakeStatusBarBlurRadius != a3)
  {
    self->_fakeStatusBarBlurRadius = a3;
    if (self->_fakeStatusBarWrapperView)
    {
      [CSCoverSheetView _updateBlurForView:"_updateBlurForView:toRadius:" toRadius:?];
    }
  }
}

- (void)setFakeStatusBarScale:(double)a3
{
  if (self->_fakeStatusBarScale != a3)
  {
    self->_fakeStatusBarScale = a3;
    [(CSCoverSheetView *)self _layoutFakeStatusBar];
  }
}

- (void)setStatusBarBackgroundView:(id)a3
{
  v5 = a3;
  statusBarBackgroundView = self->_statusBarBackgroundView;
  v8 = v5;
  if (statusBarBackgroundView != v5)
  {
    [(UIView *)statusBarBackgroundView removeFromSuperview];
    objc_storeStrong(&self->_statusBarBackgroundView, a3);
    v7 = self->_statusBarBackgroundView;
    if (v7)
    {
      [(CSCoverSheetView *)self insertSubview:v7 aboveSubview:self->_scrollView];
      [(CSCoverSheetView *)self _layoutStatusBarBackgroundView];
    }
  }
}

- (void)setControlCenterGrabberScale:(double)a3
{
  if (self->_controlCenterGrabberScale != a3)
  {
    self->_controlCenterGrabberScale = a3;
    [(CSCoverSheetView *)self _layoutTeachableMomentsContainerView];
  }
}

- (void)setControlCenterGrabberBlurRadius:(double)a3
{
  if (self->_controlCenterGrabberBlurRadius != a3)
  {
    self->_controlCenterGrabberBlurRadius = a3;
    v4 = [(CSTeachableMomentsContainerView *)self->_teachableMomentsContainerView controlCenterGrabberContainerView];

    if (v4)
    {
      v5 = [(CSTeachableMomentsContainerView *)self->_teachableMomentsContainerView controlCenterGrabberContainerView];
      [(CSCoverSheetView *)self _updateBlurForView:v5 toRadius:self->_controlCenterGrabberBlurRadius];
    }
  }
}

- (void)setWallpaperGestureRecognizer:(id)a3
{
  v5 = a3;
  if (self->_wallpaperGestureRecognizer != v5)
  {
    v8 = v5;
    [(CSCoverSheetView *)self _setupWallpaperGestureOnScrollView:0];
    objc_storeStrong(&self->_wallpaperGestureRecognizer, a3);
    v6 = [(SBFPagedScrollView *)self->_scrollView currentPageIndex];
    v7 = v6 == [(CSCoverSheetView *)self _indexOfMainPage];
    v5 = v8;
    if (v7)
    {
      [(CSCoverSheetView *)self _setupWallpaperGestureOnScrollView:1];
      v5 = v8;
    }
  }
}

- (void)setBackgroundContentGestureRecognizer:(id)a3
{
  v5 = a3;
  if (self->_backgroundContentGestureRecognizer != v5)
  {
    v8 = v5;
    [(CSCoverSheetView *)self _setupBackgroundContentGestureOnScrollView:0];
    objc_storeStrong(&self->_backgroundContentGestureRecognizer, a3);
    v6 = [(SBFPagedScrollView *)self->_scrollView currentPageIndex];
    v7 = v6 == [(CSCoverSheetView *)self _indexOfMainPage];
    v5 = v8;
    if (v7)
    {
      [(CSCoverSheetView *)self _setupBackgroundContentGestureOnScrollView:1];
      v5 = v8;
    }
  }
}

- (void)setQuickNoteGestureRecognizer:(id)a3
{
  v5 = a3;
  if (self->_quickNoteGestureRecognizer != v5)
  {
    v8 = v5;
    [(CSCoverSheetView *)self _setupQuickNoteGestureOnScrollView:0];
    objc_storeStrong(&self->_quickNoteGestureRecognizer, a3);
    v6 = [(SBFPagedScrollView *)self->_scrollView currentPageIndex];
    v7 = v6 == [(CSCoverSheetView *)self _indexOfMainPage];
    v5 = v8;
    if (v7)
    {
      [(CSCoverSheetView *)self _setupQuickNoteGestureOnScrollView:1];
      v5 = v8;
    }
  }
}

- (void)setSearchGesture:(id)a3
{
  v5 = a3;
  searchGesture = self->_searchGesture;
  if (searchGesture != v5)
  {
    v7 = v5;
    [(SBSearchGesture *)searchGesture setTargetView:0];
    objc_storeStrong(&self->_searchGesture, a3);
    searchGesture = [(SBSearchGesture *)v7 setTargetView:self->_scrollView];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](searchGesture, v5);
}

- (void)setDateViewOffset:(CGPoint)a3
{
  if (self->_dateViewOffset.x != a3.x || self->_dateViewOffset.y != a3.y)
  {
    self->_dateViewOffset = a3;
    [(CSCoverSheetView *)self _layoutDateView];
  }
}

- (void)setDateViewScale:(double)a3
{
  if (self->_dateViewScale != a3)
  {
    self->_dateViewScale = a3;
    [(CSCoverSheetView *)self _layoutDateView];
  }
}

- (void)setDateViewStretch:(BOOL)a3
{
  if (self->_dateViewStretch != a3)
  {
    self->_dateViewStretch = a3;
    [(CSCoverSheetView *)self _layoutDateView];
  }
}

- (void)setContentViewOffset:(CGPoint)a3
{
  if (self->_contentViewOffset.x != a3.x || self->_contentViewOffset.y != a3.y)
  {
    self->_contentViewOffset = a3;
    [(CSCoverSheetView *)self _layoutContentView];
  }
}

- (void)setContentViewScale:(double)a3
{
  if (self->_contentViewScale != a3)
  {
    self->_contentViewScale = a3;
    [(CSCoverSheetView *)self _layoutContentView];
  }
}

- (void)setProudLockIconViewOffset:(CGPoint)a3
{
  if (self->_proudLockIconViewOffset.x != a3.x || self->_proudLockIconViewOffset.y != a3.y)
  {
    self->_proudLockIconViewOffset = a3;
    [(CSCoverSheetView *)self _layoutProudLockView];
  }
}

- (void)setProudLockIconViewScale:(double)a3
{
  if (self->_proudLockIconViewScale != a3)
  {
    self->_proudLockIconViewScale = a3;
    [(CSCoverSheetView *)self _layoutProudLockView];
  }
}

- (void)setProudLockPrefersLowerPresentationLevel:(BOOL)a3
{
  if (self->_proudLockPrefersLowerPresentationLevel != a3)
  {
    self->_proudLockPrefersLowerPresentationLevel = a3;
    [(CSCoverSheetView *)self _layoutProudLockView];
  }
}

- (void)setProudLockIconBlurRadius:(double)a3
{
  if (self->_proudLockIconBlurRadius != a3)
  {
    self->_proudLockIconBlurRadius = a3;
    if (self->_proudLockContainerWrapperView)
    {
      [CSCoverSheetView _updateBlurForView:"_updateBlurForView:toRadius:" toRadius:?];
    }
  }
}

- (void)setForceDateViewCentered:(BOOL)a3
{
  if (self->_forceDateViewCentered != a3)
  {
    self->_forceDateViewCentered = a3;
    [(CSCoverSheetView *)self _layoutDateView];
  }
}

- (void)setDateViewIsVibrant:(BOOL)a3
{
  if (self->_dateViewIsVibrant != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_dateViewIsVibrant = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__CSCoverSheetView_setDateViewIsVibrant___block_invoke;
    v5[3] = &unk_27838BC70;
    v6 = a3;
    v5[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v5];
  }
}

uint64_t __41__CSCoverSheetView_setDateViewIsVibrant___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v3 = *(v2 + 464);
    if (!v3)
    {
      v4 = objc_alloc(MEMORY[0x277D75D68]);
      v5 = objc_opt_new();
      v6 = [v4 initWithEffect:v5];
      v7 = *(a1 + 32);
      v8 = *(v7 + 464);
      *(v7 + 464) = v6;

      [*(*(a1 + 32) + 464) setClipsToBounds:0];
      v9 = [*(*(a1 + 32) + 464) contentView];
      [v9 setClipsToBounds:0];

      [*(*(a1 + 32) + 432) addSubview:*(*(a1 + 32) + 464)];
      v3 = *(*(a1 + 32) + 464);
    }

    v10 = [v3 contentView];
    [v10 addSubview:*(*(a1 + 32) + 704)];
  }

  else
  {
    [*(v2 + 432) addSubview:*(v2 + 704)];
    v11 = *(*(a1 + 32) + 464);
    if (!v11)
    {
      goto LABEL_8;
    }

    [v11 removeFromSuperview];
    v12 = *(a1 + 32);
    v10 = *(v12 + 464);
    *(v12 + 464) = 0;
  }

LABEL_8:
  v13 = *(a1 + 32);

  return [v13 _layoutDateView];
}

- (void)setDateViewGestureRecognizer:(id)a3
{
  v5 = a3;
  if (self->_dateViewGestureRecognizer != v5)
  {
    v8 = v5;
    [(CSCoverSheetView *)self _setupDateViewGestureOnScrollView:0];
    objc_storeStrong(&self->_dateViewGestureRecognizer, a3);
    v6 = [(SBFPagedScrollView *)self->_scrollView currentPageIndex];
    v7 = v6 == [(CSCoverSheetView *)self _indexOfMainPage];
    v5 = v8;
    if (v7)
    {
      [(CSCoverSheetView *)self _setupDateViewGestureOnScrollView:1];
      v5 = v8;
    }
  }
}

- (void)setComplicationGestureRecognizer:(id)a3
{
  v5 = a3;
  if (self->_complicationGestureRecognizer != v5)
  {
    v8 = v5;
    [(CSCoverSheetView *)self _setupComplicationGestureOnScrollView:0];
    objc_storeStrong(&self->_complicationGestureRecognizer, a3);
    v6 = [(SBFPagedScrollView *)self->_scrollView currentPageIndex];
    v7 = v6 == [(CSCoverSheetView *)self _indexOfMainPage];
    v5 = v8;
    if (v7)
    {
      [(CSCoverSheetView *)self _setupComplicationGestureOnScrollView:1];
      v5 = v8;
    }
  }
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(CSCoverSheetView *)self _updateLegibility];
  }
}

- (void)setModalPresentationView:(id)a3
{
  v5 = a3;
  modalPresentationView = self->_modalPresentationView;
  if (modalPresentationView != v5)
  {
    v16 = v5;
    [(UIView *)modalPresentationView removeFromSuperview];
    v7 = CSFeatureEnabled(12);
    if (v7)
    {
      v8 = [(UIView *)self->_modalPresentationView layer];
      [v8 removeAnimationForKey:@"CSCoverSheetViewBackgroundContentViewMatchMoveAnimation"];
    }

    objc_storeStrong(&self->_modalPresentationView, a3);
    v9 = self->_modalPresentationView;
    if (v9)
    {
      v10 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
      [v10 bounds];
      [(UIView *)v9 setFrame:?];

      [(CSCoverSheetView *)self addSubview:self->_modalPresentationView];
    }

    if (v7)
    {
      v11 = [(CSCoverSheetView *)self window];

      if (v11)
      {
        v12 = MEMORY[0x277D65DE0];
        v13 = [(CSCoverSheetView *)self window];
        v14 = [v12 matchMoveAnimationForPinningToView:v13];

        [v14 setAppliesX:1];
        [v14 setAppliesY:1];
        v15 = [(UIView *)self->_modalPresentationView layer];
        [v15 addAnimation:v14 forKey:@"CSCoverSheetViewBackgroundContentViewMatchMoveAnimation"];
      }
    }

    modalPresentationView = [(CSCoverSheetView *)self setNeedsLayout];
    v5 = v16;
  }

  MEMORY[0x2821F96F8](modalPresentationView, v5);
}

- (void)setModalPresentationViewOffset:(double)a3
{
  if (CSFeatureEnabled(12))
  {
    if (self->_modalPresentationViewOffset != a3)
    {
      self->_modalPresentationViewOffset = a3;
      BSDispatchMain();
    }
  }
}

- (void)setModalPresentationLevel:(unint64_t)a3
{
  if (self->_modalPresentationLevel != a3)
  {
    self->_modalPresentationLevel = a3;
    [(CSCoverSheetView *)self _orderSubviews];
  }
}

- (void)setWallpaperPresentationLevel:(unint64_t)a3
{
  if (self->_wallpaperPresentationLevel != a3)
  {
    self->_wallpaperPresentationLevel = a3;
    [(CSCoverSheetView *)self _orderSubviews];
  }
}

- (void)setWallpaperFloatingLayerPresentationLevel:(unint64_t)a3
{
  if (self->_wallpaperFloatingLayerPresentationLevel != a3)
  {
    self->_wallpaperFloatingLayerPresentationLevel = a3;
    [(CSCoverSheetView *)self _orderSubviews];
  }
}

- (void)setDateTimePresentationLevel:(unint64_t)a3
{
  if (self->_dateTimePresentationLevel != a3)
  {
    self->_dateTimePresentationLevel = a3;
    [(CSCoverSheetView *)self _orderSubviews];
  }
}

- (void)setBackgroundContentPresentationLevel:(unint64_t)a3
{
  if (self->_backgroundContentPresentationLevel != a3)
  {
    self->_backgroundContentPresentationLevel = a3;
    [(CSCoverSheetView *)self _orderSubviews];
  }
}

- (void)setWallpaperFloatingLayerContainerViewOffset:(CGPoint)a3
{
  if (self->_wallpaperFloatingLayerContainerViewOffset.x != a3.x || self->_wallpaperFloatingLayerContainerViewOffset.y != a3.y)
  {
    self->_wallpaperFloatingLayerContainerViewOffset = a3;
    [(CSCoverSheetView *)self _layoutWallpaperFloatingLayerContainerView];
  }
}

- (void)setWallpaperFloatingLayerContainerViewScale:(double)a3
{
  if (self->_wallpaperFloatingLayerContainerViewScale != a3)
  {
    self->_wallpaperFloatingLayerContainerViewScale = a3;
    [(CSCoverSheetView *)self _layoutWallpaperFloatingLayerContainerView];
  }
}

- (void)setBackgroundContentViewAlpha:(double)a3
{
  if (self->_backgroundContentViewAlpha != a3)
  {
    self->_backgroundContentViewAlpha = a3;
    [(CSBackgroundContentView *)self->_backgroundContentView setAlpha:?];
  }
}

- (void)setBackgroundContentViewDimmed:(BOOL)a3
{
  if (self->_backgroundContentViewDimmed != a3)
  {
    self->_backgroundContentViewDimmed = a3;
    v5 = dispatch_group_create();
    [(CSCoverSheetView *)self _animateToDimming:self->_backgroundContentViewDimmed withDuration:v5 dispatchGroup:0.15];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__CSCoverSheetView_setBackgroundContentViewDimmed___block_invoke;
    v6[3] = &unk_27838BC70;
    v6[4] = self;
    v7 = a3;
    dispatch_group_notify(v5, MEMORY[0x277D85CD0], v6);
  }
}

void __51__CSCoverSheetView_setBackgroundContentViewDimmed___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 661) == *(a1 + 40))
  {
    v3 = [*(v1 + 1088) layer];
    v4 = [*(a1 + 32) _filterForDimming:*(*(a1 + 32) + 661)];
    v6[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    [v3 setFilters:v5];
  }
}

- (void)_animateToDimming:(BOOL)a3 withDuration:(double)a4 dispatchGroup:(id)a5
{
  v6 = a3;
  v13[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(CSBackgroundContentView *)self->_backgroundContentView layer];
  if (v9)
  {
    v10 = [(CSCoverSheetView *)self _filterNumbersForDimming:v6];
    [(CSCoverSheetView *)self _animateLayer:v9 toValues:v10 forKeyPath:@"filters.curves.inputRedValues" duration:v8 dispatchGroup:a4];
    [(CSCoverSheetView *)self _animateLayer:v9 toValues:v10 forKeyPath:@"filters.curves.inputGreenValues" duration:v8 dispatchGroup:a4];
    [(CSCoverSheetView *)self _animateLayer:v9 toValues:v10 forKeyPath:@"filters.curves.inputBlueValues" duration:v8 dispatchGroup:a4];
    v11 = [(CSCoverSheetView *)self _filterForDimming:v6];
    v13[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [v9 setFilters:v12];
  }
}

- (id)_filterNumbersForDimming:(BOOL)a3
{
  if (a3)
  {
    return &unk_28307A088;
  }

  else
  {
    return &unk_28307A0A0;
  }
}

- (id)_filterForDimming:(BOOL)a3
{
  v3 = [(CSCoverSheetView *)self _filterNumbersForDimming:a3];
  v4 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2E8]];
  [v4 setValue:v3 forKey:*MEMORY[0x277CDA500]];
  [v4 setValue:v3 forKey:*MEMORY[0x277CDA498]];
  [v4 setValue:v3 forKey:*MEMORY[0x277CDA3D0]];

  return v4;
}

- (void)_animateLayer:(id)a3 toValues:(id)a4 forKeyPath:(id)a5 duration:(double)a6 dispatchGroup:(id)a7
{
  v19 = a5;
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [v14 presentationLayer];
  v16 = [v15 valueForKeyPath:v19];

  if (!v16)
  {
    v16 = [(CSCoverSheetView *)self _filterNumbersForDimming:0];
  }

  if (v12)
  {
    dispatch_group_enter(v12);
  }

  v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:v19];
  [v17 setDuration:a6];
  v18 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v17 setTimingFunction:v18];

  [v17 setFromValue:v16];
  [v17 setToValue:v13];

  [v17 setValue:v12 forKey:@"CSCoverSheetDimmingDispatchGroup"];
  [v17 setDelegate:self];
  [v14 removeAnimationForKey:v19];
  [v14 addAnimation:v17 forKey:v19];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = [a3 valueForKey:{@"CSCoverSheetDimmingDispatchGroup", a4}];
  if (v4)
  {
    v5 = v4;
    dispatch_group_leave(v4);
    v4 = v5;
  }
}

- (void)setBottomPage:(id)a3
{
  v5 = a3;
  bottomPage = self->_bottomPage;
  if (bottomPage != v5)
  {
    v7 = v5;
    [(UIView *)bottomPage removeFromSuperview];
    objc_storeStrong(&self->_bottomPage, a3);
    v5 = v7;
    if (v7)
    {
      [(UIView *)self->_slideableContentView addSubview:v7];
      bottomPage = [(CSCoverSheetView *)self _layoutBottomPage];
      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](bottomPage, v5);
}

- (void)setTeachableMomentsContainerView:(id)a3
{
  v5 = a3;
  teachableMomentsContainerView = self->_teachableMomentsContainerView;
  if (teachableMomentsContainerView != v5)
  {
    v8 = v5;
    [(CSTeachableMomentsContainerView *)teachableMomentsContainerView removeFromSuperview];
    objc_storeStrong(&self->_teachableMomentsContainerView, a3);
    [(UIView *)self->_higherSlideableContentView addSubview:self->_teachableMomentsContainerView];
    v7 = [(CSTeachableMomentsContainerView *)self->_teachableMomentsContainerView controlCenterGrabberContainerView];
    [(CSCoverSheetView *)self _prepareBlursForView:v7 withHardEdges:0];

    teachableMomentsContainerView = [(CSCoverSheetView *)self setNeedsLayout];
    v5 = v8;
  }

  MEMORY[0x2821F96F8](teachableMomentsContainerView, v5);
}

- (void)setSidebarComplicationContainerView:(id)a3
{
  v5 = a3;
  sidebarComplicationContainerView = self->_sidebarComplicationContainerView;
  if (sidebarComplicationContainerView != v5)
  {
    v7 = v5;
    [(UIView *)sidebarComplicationContainerView removeFromSuperview];
    objc_storeStrong(&self->_sidebarComplicationContainerView, a3);
    [(UIView *)self->_slideableContentView addSubview:self->_sidebarComplicationContainerView];
    sidebarComplicationContainerView = [(CSCoverSheetView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](sidebarComplicationContainerView, v5);
}

- (void)setComplicationContainerView:(id)a3
{
  v5 = a3;
  complicationContainerView = self->_complicationContainerView;
  if (complicationContainerView != v5)
  {
    v7 = v5;
    [(UIView *)complicationContainerView removeFromSuperview];
    objc_storeStrong(&self->_complicationContainerView, a3);
    [(UIView *)self->_slideableContentView addSubview:self->_complicationContainerView];
    complicationContainerView = [(CSCoverSheetView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](complicationContainerView, v5);
}

- (void)setFixedFooterView:(id)a3
{
  v5 = a3;
  fixedFooterView = self->_fixedFooterView;
  if (fixedFooterView != v5)
  {
    v9 = v5;
    [(CSFixedFooterView *)fixedFooterView removeFromSuperview];
    objc_storeStrong(&self->_fixedFooterView, a3);
    v7 = self->_fixedFooterView;
    v8 = [(CSCoverSheetView *)self scrollView];
    [(CSFixedFooterView *)v7 setTrackingScrollViewForPageControl:v8];

    [(UIView *)self->_slideableContentView insertSubview:self->_fixedFooterView atIndex:0];
    fixedFooterView = [(CSCoverSheetView *)self setNeedsLayout];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](fixedFooterView, v5);
}

- (void)setProudLockContainerView:(id)a3
{
  v5 = a3;
  proudLockContainerView = self->_proudLockContainerView;
  if (proudLockContainerView != v5)
  {
    v7 = v5;
    [(UIView *)proudLockContainerView removeFromSuperview];
    objc_storeStrong(&self->_proudLockContainerView, a3);
    [(CSCoverSheetView *)self _createProudLockContainerWrapperIfNecessary];
    [(CSPropertyAnimatingTouchPassThroughView *)self->_proudLockContainerWrapperView addSubview:self->_proudLockContainerView];
    proudLockContainerView = [(CSCoverSheetView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](proudLockContainerView, v5);
}

- (void)setCameraCoveredView:(id)a3
{
  v5 = a3;
  cameraCoveredView = self->_cameraCoveredView;
  if (cameraCoveredView != v5)
  {
    v7 = v5;
    [(UIView *)cameraCoveredView removeFromSuperview];
    objc_storeStrong(&self->_cameraCoveredView, a3);
    [(CSCoverSheetView *)self _createProudLockContainerWrapperIfNecessary];
    [(CSPropertyAnimatingTouchPassThroughView *)self->_proudLockContainerWrapperView addSubview:self->_cameraCoveredView];
    cameraCoveredView = [(CSCoverSheetView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](cameraCoveredView, v5);
}

- (void)_createProudLockContainerWrapperIfNecessary
{
  if (!self->_proudLockContainerWrapperView)
  {
    v3 = [CSPropertyAnimatingTouchPassThroughView alloc];
    v4 = [(CSPropertyAnimatingTouchPassThroughView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    proudLockContainerWrapperView = self->_proudLockContainerWrapperView;
    self->_proudLockContainerWrapperView = v4;

    [(CSCoverSheetView *)self _prepareBlursForView:self->_proudLockContainerWrapperView withHardEdges:1];

    [(CSCoverSheetView *)self setNeedsLayout];
  }
}

- (void)setPoseidonContainerView:(id)a3
{
  v5 = a3;
  poseidonContainerView = self->_poseidonContainerView;
  if (poseidonContainerView != v5)
  {
    v7 = v5;
    [(UIView *)poseidonContainerView removeFromSuperview];
    objc_storeStrong(&self->_poseidonContainerView, a3);
    [(UIView *)self->_higherSlideableContentView addSubview:self->_poseidonContainerView];
    poseidonContainerView = [(CSCoverSheetView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](poseidonContainerView, v5);
}

- (void)setWallpaperEffectView:(id)a3
{
  v5 = a3;
  wallpaperEffectView = self->_wallpaperEffectView;
  if (wallpaperEffectView != v5)
  {
    v7 = v5;
    [(CSWallpaperView *)wallpaperEffectView removeFromSuperview];
    objc_storeStrong(&self->_wallpaperEffectView, a3);
    if (self->_wallpaperEffectView)
    {
      [(UIView *)self->_slideableContentView addSubview:?];
      [(UIView *)self->_slideableContentView sendSubviewToBack:self->_wallpaperEffectView];
    }

    wallpaperEffectView = [(CSCoverSheetView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](wallpaperEffectView, v5);
}

- (void)setBackgroundContentView:(id)a3
{
  v7 = a3;
  v5 = CSFeatureEnabled(12);
  if (self->_backgroundContentView != v7)
  {
    [(CSCoverSheetView *)self _setBackgroundContentViewMatchMoveActive:0];
    [(CSBackgroundContentView *)self->_backgroundContentView removeFromSuperview];
    objc_storeStrong(&self->_backgroundContentView, a3);
    backgroundContentView = self->_backgroundContentView;
    if (backgroundContentView)
    {
      [(CSBackgroundContentView *)backgroundContentView setClipsToBounds:1];
      [(CSCoverSheetView *)self _setBackgroundContentViewMatchMoveActive:v5];
      [(CSCoverSheetView *)self insertSubview:self->_backgroundContentView belowSubview:self->_slideableContentView];
    }

    [(CSCoverSheetView *)self setNeedsLayout];
  }
}

- (void)_setBackgroundContentViewMatchMoveActive:(BOOL)a3
{
  if (self->_isBackgroundContentViewMatchMoveActive != a3)
  {
    self->_isBackgroundContentViewMatchMoveActive = a3;
    [(CSCoverSheetView *)self _evaluateBackgroundContentViewMatchMove];
  }
}

- (void)_evaluateBackgroundContentViewMatchMove
{
  v3 = [(CSCoverSheetView *)self window];
  if (v3)
  {
    v9 = v3;
    isBackgroundContentViewMatchMoveActive = self->_isBackgroundContentViewMatchMoveActive;
    if ([(NSMutableSet *)self->_backgroundContentViewMatchMoveDisabledReasons count])
    {
      v5 = 0;
    }

    else
    {
      v5 = isBackgroundContentViewMatchMoveActive;
    }

    v6 = [(CSBackgroundContentView *)self->_backgroundContentView layer];
    v7 = [v6 animationForKey:@"CSCoverSheetViewBackgroundContentViewMatchMoveAnimation"];

    if (((v5 ^ (v7 == 0)) & 1) == 0)
    {
      if (v5)
      {
        v8 = [MEMORY[0x277D65DE0] matchMoveAnimationForPinningToView:v9];
        [v8 setAppliesX:1];
        [v8 setAppliesY:1];
        [v6 addAnimation:v8 forKey:@"CSCoverSheetViewBackgroundContentViewMatchMoveAnimation"];
      }

      else
      {
        [v6 removeAnimationForKey:@"CSCoverSheetViewBackgroundContentViewMatchMoveAnimation"];
      }
    }

    v3 = v9;
  }
}

- (void)setWakeEffectView:(id)a3
{
  v5 = a3;
  wakeEffectView = self->_wakeEffectView;
  if (wakeEffectView != v5)
  {
    v7 = v5;
    [(UIView *)wakeEffectView removeFromSuperview];
    objc_storeStrong(&self->_wakeEffectView, a3);
    if (self->_wakeEffectView)
    {
      [(UIView *)self->_slideableContentView addSubview:?];
      [(UIView *)self->_slideableContentView sendSubviewToBack:self->_wakeEffectView];
    }

    wakeEffectView = [(CSCoverSheetView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](wakeEffectView, v5);
}

- (void)setPageViews:(id)a3
{
  [(SBFPagedScrollView *)self->_scrollView setPageViews:a3];
  fixedFooterView = self->_fixedFooterView;

  [(CSFixedFooterView *)fixedFooterView updatePageControl];
}

- (void)setBackgroundView:(id)a3
{
  v5 = a3;
  backgroundView = self->_backgroundView;
  v9 = v5;
  if (backgroundView != v5)
  {
    if (backgroundView)
    {
      [(SBUIBackgroundView *)backgroundView removeFromSuperview];
    }

    objc_storeStrong(&self->_backgroundView, a3);
    [(SBUIBackgroundView *)self->_backgroundView setUserInteractionEnabled:0];
    [(SBUIBackgroundView *)self->_backgroundView setReduceTransparencyBackingColor:self->_reduceTransparencyBackingColor];
    backgroundView = self->_backgroundView;
  }

  v7 = [(SBUIBackgroundView *)backgroundView superview];
  backgroundContainerView = self->_backgroundContainerView;

  if (v7 != backgroundContainerView)
  {
    [(BSUIOrientationTransformWrapperView *)self->_backgroundContainerView addContentView:self->_backgroundView];
    [(CSCoverSheetView *)self setNeedsLayout];
  }
}

- (void)updateContainerOrientationForBackgroundViews:(int64_t)a3
{
  [(BSUIOrientationTransformWrapperView *)self->_backgroundContainerView setContainerOrientation:a3];
  backgroundContainerView = self->_backgroundContainerView;

  [(BSUIOrientationTransformWrapperView *)backgroundContainerView layoutIfNeeded];
}

- (void)setBedtimeGreetingViewBackgroundView:(id)a3
{
  v5 = a3;
  bedtimeGreetingViewBackgroundView = self->_bedtimeGreetingViewBackgroundView;
  if (bedtimeGreetingViewBackgroundView != v5)
  {
    v7 = v5;
    if (bedtimeGreetingViewBackgroundView)
    {
      [(SBUIBackgroundView *)bedtimeGreetingViewBackgroundView removeFromSuperview];
    }

    objc_storeStrong(&self->_bedtimeGreetingViewBackgroundView, a3);
    [(SBUIBackgroundView *)self->_bedtimeGreetingViewBackgroundView setUserInteractionEnabled:0];
    [(SBUIBackgroundView *)self->_bedtimeGreetingViewBackgroundView setReduceTransparencyBackingColor:self->_reduceTransparencyBackingColor];
    bedtimeGreetingViewBackgroundView = [(BSUIOrientationTransformWrapperView *)self->_backgroundContainerView addContentView:self->_bedtimeGreetingViewBackgroundView];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](bedtimeGreetingViewBackgroundView, v5);
}

- (void)setReduceTransparencyBackingColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v5 = [(UIColor *)self->_reduceTransparencyBackingColor isEqual:v5];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_reduceTransparencyBackingColor, a3);
      [(SBUIBackgroundView *)self->_bedtimeGreetingViewBackgroundView setReduceTransparencyBackingColor:self->_reduceTransparencyBackingColor];
      v5 = [(SBUIBackgroundView *)self->_backgroundView setReduceTransparencyBackingColor:self->_reduceTransparencyBackingColor];
      v6 = v7;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setQuickActionsView:(id)a3
{
  v5 = a3;
  quickActionsView = self->_quickActionsView;
  v10 = v5;
  if (quickActionsView == v5)
  {
    v7 = [(CSQuickActionsView *)v5 superview];
    v8 = [(CSCoverSheetView *)self _effectiveContentsContainerView];

    if (v7 == v8)
    {
      goto LABEL_5;
    }

    quickActionsView = self->_quickActionsView;
  }

  [(CSQuickActionsView *)quickActionsView removeFromSuperview];
  objc_storeStrong(&self->_quickActionsView, a3);
  v9 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v9 addSubview:self->_quickActionsView];

  [(CSCoverSheetView *)self _prepareBlursForView:self->_quickActionsView withHardEdges:0];
LABEL_5:
}

- (void)setQuickActionsViewOffset:(CGPoint)a3
{
  if (self->_quickActionsViewOffset.x != a3.x || self->_quickActionsViewOffset.y != a3.y)
  {
    self->_quickActionsViewOffset = a3;
    [(CSCoverSheetView *)self _layoutQuickActionsView];
  }
}

- (void)setQuickActionsViewScale:(double)a3
{
  if (self->_quickActionsViewScale != a3)
  {
    self->_quickActionsViewScale = a3;
    [(CSCoverSheetView *)self _layoutQuickActionsView];
  }
}

- (void)setQuickActionsViewBlurRadius:(double)a3
{
  if (self->_quickActionsViewBlurRadius != a3)
  {
    self->_quickActionsViewBlurRadius = a3;
    if (self->_quickActionsView)
    {
      [CSCoverSheetView _updateBlurForView:"_updateBlurForView:toRadius:" toRadius:?];
    }
  }
}

- (void)setQuickActionsViewOffset:(CGPoint)a3 scale:(double)a4
{
  if (self->_quickActionsViewOffset.x != a3.x || self->_quickActionsViewOffset.y != a3.y)
  {
    self->_quickActionsViewOffset = a3;
    p_quickActionsViewScale = &self->_quickActionsViewScale;
    if (self->_quickActionsViewScale == a4)
    {
LABEL_6:
      [(CSCoverSheetView *)self _layoutQuickActionsView];
      return;
    }

LABEL_8:
    *p_quickActionsViewScale = a4;
    goto LABEL_6;
  }

  p_quickActionsViewScale = &self->_quickActionsViewScale;
  if (self->_quickActionsViewScale != a4)
  {
    goto LABEL_8;
  }
}

- (void)setDateViewOffset:(CGPoint)a3 scale:(double)a4
{
  if (self->_dateViewOffset.x != a3.x || self->_dateViewOffset.y != a3.y)
  {
    self->_dateViewOffset = a3;
    p_dateViewScale = &self->_dateViewScale;
    if (self->_dateViewScale == a4)
    {
LABEL_6:
      [(CSCoverSheetView *)self _layoutDateView];
      return;
    }

LABEL_8:
    *p_dateViewScale = a4;
    goto LABEL_6;
  }

  p_dateViewScale = &self->_dateViewScale;
  if (self->_dateViewScale != a4)
  {
    goto LABEL_8;
  }
}

- (void)setContentViewOffset:(CGPoint)a3 scale:(double)a4
{
  if (self->_contentViewOffset.x != a3.x || self->_contentViewOffset.y != a3.y)
  {
    self->_contentViewOffset = a3;
    p_contentViewScale = &self->_contentViewScale;
    if (self->_contentViewScale == a4)
    {
LABEL_6:
      [(CSCoverSheetView *)self _layoutContentView];
      return;
    }

LABEL_8:
    *p_contentViewScale = a4;
    goto LABEL_6;
  }

  p_contentViewScale = &self->_contentViewScale;
  if (self->_contentViewScale != a4)
  {
    goto LABEL_8;
  }
}

- (void)setProudLockIconViewOffset:(CGPoint)a3 scale:(double)a4
{
  if (self->_proudLockIconViewOffset.x != a3.x || self->_proudLockIconViewOffset.y != a3.y)
  {
    self->_proudLockIconViewOffset = a3;
    p_proudLockIconViewScale = &self->_proudLockIconViewScale;
    if (self->_proudLockIconViewScale == a4)
    {
LABEL_6:
      [(CSCoverSheetView *)self _layoutProudLockView];
      return;
    }

LABEL_8:
    *p_proudLockIconViewScale = a4;
    goto LABEL_6;
  }

  p_proudLockIconViewScale = &self->_proudLockIconViewScale;
  if (self->_proudLockIconViewScale != a4)
  {
    goto LABEL_8;
  }
}

- (void)setWallpaperFloatingLayerContainerViewOffset:(CGPoint)a3 scale:(double)a4
{
  if (self->_wallpaperFloatingLayerContainerViewOffset.x != a3.x || self->_wallpaperFloatingLayerContainerViewOffset.y != a3.y)
  {
    self->_wallpaperFloatingLayerContainerViewOffset = a3;
    p_wallpaperFloatingLayerContainerViewScale = &self->_wallpaperFloatingLayerContainerViewScale;
    if (self->_wallpaperFloatingLayerContainerViewScale == a4)
    {
LABEL_6:
      [(CSCoverSheetView *)self _layoutWallpaperFloatingLayerContainerView];
      return;
    }

LABEL_8:
    *p_wallpaperFloatingLayerContainerViewScale = a4;
    goto LABEL_6;
  }

  p_wallpaperFloatingLayerContainerViewScale = &self->_wallpaperFloatingLayerContainerViewScale;
  if (self->_wallpaperFloatingLayerContainerViewScale != a4)
  {
    goto LABEL_8;
  }
}

- (void)setSuppressesBackgroundContentMatchMove:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    backgroundContentViewMatchMoveDisabledReasons = self->_backgroundContentViewMatchMoveDisabledReasons;
    v11 = v7;
    if (v4)
    {
      if (!backgroundContentViewMatchMoveDisabledReasons)
      {
        v9 = [MEMORY[0x277CBEB58] set];
        v10 = self->_backgroundContentViewMatchMoveDisabledReasons;
        self->_backgroundContentViewMatchMoveDisabledReasons = v9;

        v7 = v11;
        backgroundContentViewMatchMoveDisabledReasons = self->_backgroundContentViewMatchMoveDisabledReasons;
      }

      [(NSMutableSet *)backgroundContentViewMatchMoveDisabledReasons addObject:v7];
    }

    else
    {
      [(NSMutableSet *)backgroundContentViewMatchMoveDisabledReasons removeObject:v7];
    }

    v6 = [(CSCoverSheetView *)self _evaluateBackgroundContentViewMatchMove];
    v7 = v11;
  }

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)setCoverSheetPresentationProgress:(double)a3 forPresentationValue:(BOOL)a4
{
  if (a4)
  {
    self->_coverSheetPresentationProgressPresentationValue = a3;
    [(CSCoverSheetView *)self _layoutBackgroundContentViewForPresentationValueChange];
  }

  else
  {
    self->_coverSheetPresentationProgressModelValue = a3;
    [(CSCoverSheetView *)self _layoutBackgroundContentView];
  }
}

- (void)setClipping:(BOOL)a3 corners:(unint64_t)a4 radius:(double)a5
{
  v7 = a3;
  if (_UISolariumEnabled())
  {
    [(UIView *)self->_notificationLegibiltyAboveDateTimeContainerView setClipsToBounds:v7];
    [(UIView *)self->_notificationLegibiltyAboveDateTimeContainerView _setContinuousCornerRadius:a5];
    v9 = [(UIView *)self->_notificationLegibiltyAboveDateTimeContainerView layer];
    [v9 setMaskedCorners:a4];

    [(UIView *)self->_notificationLegibiltyBelowDateTimeContainerView setClipsToBounds:v7];
    [(UIView *)self->_notificationLegibiltyBelowDateTimeContainerView _setContinuousCornerRadius:a5];
    v10 = [(UIView *)self->_notificationLegibiltyBelowDateTimeContainerView layer];
    [v10 setMaskedCorners:a4];
  }
}

- (void)setComplicationContainerViewScale:(double)a3
{
  if (self->_complicationContainerViewScale != a3)
  {
    self->_complicationContainerViewScale = a3;
    [(CSCoverSheetView *)self _layoutComplicationContainerView];
  }
}

- (void)setBackgroundGlassView:(id)a3
{
  v7 = a3;
  backgroundGlassView = CSFeatureEnabled(11);
  v6 = v7;
  if (backgroundGlassView)
  {
    backgroundGlassView = self->_backgroundGlassView;
    if (backgroundGlassView != v7)
    {
      [backgroundGlassView removeFromSuperview];
      objc_storeStrong(&self->_backgroundGlassView, a3);
      [(UIView *)self->_slideableContentView addSubview:self->_backgroundGlassView];
      [(CSCoverSheetView *)self _orderSubviews];
      backgroundGlassView = [(CSCoverSheetView *)self setNeedsLayout];
      v6 = v7;
    }
  }

  MEMORY[0x2821F96F8](backgroundGlassView, v6);
}

- (BOOL)resetScrollViewToMainPageAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CSCoverSheetView *)self scrollView];
  LOBYTE(v4) = [v7 scrollToPageAtIndex:-[CSCoverSheetView _indexOfMainPage](self animated:"_indexOfMainPage") withCompletion:{v4, v6}];

  return v4;
}

- (BOOL)resetScrollViewToMainPageAnimated:(BOOL)a3 withAnimationSettings:(id)a4 withCompletion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CSCoverSheetView *)self scrollView];
  LOBYTE(self) = [v9 scrollToPageAtIndex:-[CSCoverSheetView _indexOfMainPage](self withAnimationSettings:"_indexOfMainPage") withCompletion:{v8, v7}];

  return self;
}

- (BOOL)scrollToPageAtIndex:(unint64_t)a3 animated:(BOOL)a4 withCompletion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = self->_scrollView;
  v10 = [(SBFPagedScrollView *)v9 gestureEnabled];
  [(SBFPagedScrollView *)v9 setGestureEnabled:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__CSCoverSheetView_scrollToPageAtIndex_animated_withCompletion___block_invoke;
  v14[3] = &unk_27838BD30;
  v17 = v10;
  v15 = v9;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  LOBYTE(v5) = [(SBFPagedScrollView *)v12 scrollToPageAtIndex:a3 animated:v5 withCompletion:v14];

  return v5;
}

uint64_t __64__CSCoverSheetView_scrollToPageAtIndex_animated_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setGestureEnabled:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)updateUIForAuthenticated:(BOOL)a3
{
  if (a3)
  {
    v4 = 0.0;
    v5 = 1.0;
  }

  else
  {
    v4 = 1.0;
    v5 = 0.0;
  }

  v6 = [MEMORY[0x277D75348] colorWithRed:v4 green:v5 blue:0.0 alpha:0.5];
  [(UIView *)self->_authIndicator setBackgroundColor:v6];
}

- (void)setForegroundViewPositionOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (self->_foregroundViewPositionOffset.x != a3.x || self->_foregroundViewPositionOffset.y != a3.y)
  {
    self->_foregroundViewPositionOffset = a3;
    if (BSFloatIsZero())
    {
      [(CSCoverSheetView *)self _removeContentView];
    }

    else
    {
      [(CSCoverSheetView *)self addSubview:self->_scrollView];
    }

    [(CSCoverSheetView *)self _orderSubviews];
    if (BSPointEqualToPoint())
    {
      slideableContentView = self->_slideableContentView;
      v11 = *(MEMORY[0x277CBF2C0] + 16);
      *&v14.a = *MEMORY[0x277CBF2C0];
      v12 = *&v14.a;
      *&v14.c = v11;
      *&v14.tx = *(MEMORY[0x277CBF2C0] + 32);
      v10 = *&v14.tx;
      [(UIView *)slideableContentView setTransform:&v14];
      higherSlideableContentView = self->_higherSlideableContentView;
      *&v14.a = v12;
      *&v14.c = v11;
      *&v14.tx = v10;
      v9 = &v14;
    }

    else
    {
      memset(&v14, 0, sizeof(v14));
      CGAffineTransformMakeTranslation(&v14, x, y);
      higherSlideableContentView = self->_slideableContentView;
      v13 = v14;
      v9 = &v13;
    }

    [(UIView *)higherSlideableContentView setTransform:v9];
    [(CSCoverSheetView *)self _layoutFakeStatusBar];
    [(CSCoverSheetView *)self _layoutHigherSlideableContentView];
  }
}

- (void)viewControllerWillAppear
{
  self->_viewControllerAppearingOrAppeared = 1;
  v3 = [(SBFPagedScrollView *)self->_scrollView currentPageIndex];
  if (v3 == [(CSCoverSheetView *)self _indexOfMainPage])
  {
    [(CSCoverSheetView *)self _setupAllGesturesOnScrollView:1];
    searchGesture = self->_searchGesture;
    scrollView = self->_scrollView;

    [(SBSearchGesture *)searchGesture setTargetView:scrollView];
  }
}

- (CGRect)dateViewPresentationExtentForPageRelativeScrollOffset:(double)a3
{
  v8 = 0.0;
  [(CSCoverSheetView *)self _dateViewFrameForPageAlignment:0 pageRelativeScrollOffset:&v8 outAlignmentPercent:a3];
  v5 = v4;
  v7 = v6;
  [(SBFLockScreenDateView *)self->_dateView presentationExtentForAlignmentPercent:v8];
  return CGRectOffset(v9, v5, v7);
}

- (id)_lockScreenDefaults
{
  cachedLockScreenDefaults = self->_cachedLockScreenDefaults;
  if (!cachedLockScreenDefaults)
  {
    v4 = objc_alloc_init(MEMORY[0x277D65FF0]);
    v5 = self->_cachedLockScreenDefaults;
    self->_cachedLockScreenDefaults = v4;

    cachedLockScreenDefaults = self->_cachedLockScreenDefaults;
  }

  return cachedLockScreenDefaults;
}

- (void)didAddSubview:(id)a3
{
  v4.receiver = self;
  v4.super_class = CSCoverSheetView;
  [(CSCoverSheetView *)&v4 didAddSubview:a3];
  [(CSCoverSheetView *)self _orderSubviews];
}

- (void)setClipsToBounds:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = CSCoverSheetView;
  [(CSCoverSheetView *)&v5 setClipsToBounds:?];
  [(UIView *)self->_dateTimeClippingView setClipsToBounds:v3];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CSCoverSheetView;
  [(CSCoverSheetView *)&v3 didMoveToWindow];
  [(CSCoverSheetView *)self _updateBackgroundContainerPinningAnimation];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = CSCoverSheetView;
  v5 = [(CSCoverSheetView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (CGPoint)_scrollView:(id)a3 adjustedOffsetForOffset:(CGPoint)a4 translation:(CGPoint)a5 startPoint:(CGPoint)a6 locationInView:(CGPoint)a7 horizontalVelocity:(double *)a8 verticalVelocity:(double *)a9
{
  y = a7.y;
  x = a7.x;
  v13 = a6.y;
  v14 = a6.x;
  v15 = a5.y;
  v16 = a5.x;
  v17 = a4.y;
  v18 = a4.x;
  v20 = a3;
  initialPageIndex = self->_initialPageIndex;
  if (initialPageIndex == [(CSCoverSheetView *)self _indexOfMainPage]&& self->_shouldModifyPageScrolling)
  {
    [(CSScrollModifier *)self->_scrollModifier scrollView:v20 adjustedOffsetForOffset:a8 translation:a9 startPoint:v18 locationInView:v17 horizontalVelocity:v16 verticalVelocity:v15, v14, v13, x, y];
    v18 = v22;
    v17 = v23;
  }

  v24 = v18;
  v25 = v17;
  result.y = v25;
  result.x = v24;
  return result;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v5 = a3;
  v4 = [(SBFPagedScrollView *)self->_scrollView currentPageIndex];
  self->_initialPageIndex = v4;
  if (v4 == [(CSCoverSheetView *)self _indexOfMainPage]&& self->_shouldModifyPageScrolling)
  {
    [(CSScrollModifier *)self->_scrollModifier scrollViewWillBeginDragging:v5];
  }

  if ([(UIGestureRecognizer *)self->_wallpaperGestureRecognizer isEnabled])
  {
    [(UIGestureRecognizer *)self->_wallpaperGestureRecognizer setEnabled:0];
    [(UIGestureRecognizer *)self->_wallpaperGestureRecognizer setEnabled:1];
  }
}

- (void)scrollViewWillBeginScrolling:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5 = [(CSCoverSheetView *)self delegate];
  self->_shouldModifyPageScrolling = [v5 shouldModifyPageScrolling];

  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    [v4 contentSize];
    v7 = v6;
    [v4 frame];
    v9 = v7 - v8;
    [v4 contentOffset];
    v11 = v9 - v10;
  }

  else
  {
    [v4 contentOffset];
  }

  self->_scrollViewStartingXOffset = v11;
  [(CSCoverSheetView *)self _currentTransitionContext];
  *&self->_transitionContext.value = v13;
  *&self->_transitionContext.interval.start.inclusive = v14;
  *&self->_transitionContext.interval.end.inclusive = v15;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained transitionSource:self willBeginWithType:2];
  [WeakRetained setRestrictsTouchesForRemoteView:1];
}

- (void)scrollViewDidScroll:(id)a3 withContext:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  [(CSFixedFooterView *)self->_fixedFooterView updatePageControl:a3];
  p_transitionContext = &self->_transitionContext;
  value = self->_transitionContext.interval.start.value;
  v7 = self->_transitionContext.value;
  v23 = *&self->_transitionContext.interval.start.inclusive;
  mode = self->_transitionContext.mode;
  v24 = *&self->_transitionContext.interval.end.inclusive;
  [(CSCoverSheetView *)self _currentTransitionContext];
  v9 = *&buf[16];
  *&self->_transitionContext.value = *buf;
  *&self->_transitionContext.interval.start.inclusive = v9;
  *&self->_transitionContext.interval.end.inclusive = v22;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (mode)
  {
    if (self->_transitionContext.mode)
    {
      if ((BSFloatEqualToFloat() & 1) == 0)
      {
        *buf = value;
        *&buf[8] = v23;
        *&buf[24] = v24;
        if (BSIntervalOrder())
        {
          end = self->_transitionContext.interval.end;
          *buf = self->_transitionContext.interval.start;
          *&buf[16] = end;
          if (BSIntervalOrder())
          {
            *v17 = v7;
            *&v17[1] = value;
            v18 = v23;
            v19 = v24;
            v20 = mode;
            v12 = *&self->_transitionContext.interval.start.inclusive;
            v16[0] = *&p_transitionContext->value;
            v16[1] = v12;
            v16[2] = *&self->_transitionContext.interval.end.inclusive;
            [(CSCoverSheetView *)self _completedTransitionContextForPreviousTransitionContext:v17 newTransitionContext:v16];
            [WeakRetained transitionSource:self didEndWithContext:buf];
            [WeakRetained transitionSource:self willBeginWithType:2];
            v13 = SBLogDashBoard();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = self->_transitionContext.mode;
              *buf = 134217984;
              *&buf[4] = v14;
              _os_log_impl(&dword_21EB05000, v13, OS_LOG_TYPE_DEFAULT, "Scroll context did change to transitionContext.mode: %ld", buf, 0xCu);
            }
          }
        }
      }
    }
  }

  v15 = *&self->_transitionContext.interval.start.inclusive;
  *buf = *&p_transitionContext->value;
  *&buf[16] = v15;
  v22 = *&self->_transitionContext.interval.end.inclusive;
  [WeakRetained transitionSource:self didUpdateTransitionWithContext:buf];
  [(CSCoverSheetView *)self _layoutQuickActionsView];
  [(CSCoverSheetView *)self _layoutDateView];
  [(CSCoverSheetView *)self _layoutStatusBarBackgroundView];
  [(CSCoverSheetView *)self _layoutHigherSlideableContentView];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v25 = *MEMORY[0x277D85DE8];
  v9 = a3;
  initialPageIndex = self->_initialPageIndex;
  if (initialPageIndex == [(CSCoverSheetView *)self _indexOfMainPage]&& self->_shouldModifyPageScrolling)
  {
    [(CSScrollModifier *)self->_scrollModifier scrollViewWillEndDragging:v9 withVelocity:a5 targetContentOffset:x, y];
    v11 = [(SBFPagedScrollView *)self->_scrollView currentPageIndex];
    v12 = self->_initialPageIndex;
    v13 = [(SBFPagedScrollView *)self->_scrollView pageViews];
    v14 = [v13 count] - 1;

    if (v14 >= v11 + 1)
    {
      v15 = v11 + 1;
    }

    else
    {
      v15 = v14;
    }

    v16 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
    if ([(CSScrollModifier *)self->_scrollModifier scrollFromRightToLeft]!= v16)
    {
      v11 = v15;
    }

    if (![(CSScrollModifier *)self->_scrollModifier recognized])
    {
      v11 = v12;
    }

    v17 = [(CSCoverSheetView *)self scrollView];
    [v17 contentOffsetForPageAtIndex:v11];
    a5->x = v18;
  }

  if (self->_targetPageIndexForDraggingEnded != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [(CSCoverSheetView *)self scrollView];
    [v19 contentOffsetForPageAtIndex:self->_targetPageIndexForDraggingEnded];
    a5->x = v20;

    v21 = SBLogDashBoard();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      targetPageIndexForDraggingEnded = self->_targetPageIndexForDraggingEnded;
      v23 = 134217984;
      v24 = targetPageIndexForDraggingEnded;
      _os_log_impl(&dword_21EB05000, v21, OS_LOG_TYPE_DEFAULT, "Scroll did end dragging with no clear destination, moving to index: %lu", &v23, 0xCu);
    }
  }
}

- (void)scrollViewDidEndScrolling:(id)a3
{
  kdebug_trace();
  [(CSFixedFooterView *)self->_fixedFooterView updatePageControl];
  [(CSCoverSheetView *)self _currentTransitionContext];
  v4 = v10;
  *&self->_transitionContext.value = v9;
  *&self->_transitionContext.interval.start.inclusive = v4;
  *&self->_transitionContext.interval.end.inclusive = v11;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = *&self->_transitionContext.interval.start.inclusive;
  v9 = *&self->_transitionContext.value;
  v10 = v6;
  v11 = *&self->_transitionContext.interval.end.inclusive;
  [WeakRetained transitionSource:self didEndWithContext:&v9];
  [WeakRetained setRestrictsTouchesForRemoteView:0];
  initialPageIndex = self->_initialPageIndex;
  if (initialPageIndex == [(CSCoverSheetView *)self _indexOfMainPage]&& self->_shouldModifyPageScrolling)
  {
    [(CSScrollModifier *)self->_scrollModifier reset];
  }

  [(CSCoverSheetView *)self _setupAllGesturesOnScrollView:0];
  if (self->_viewControllerAppearingOrAppeared)
  {
    v8 = [(SBFPagedScrollView *)self->_scrollView currentPageIndex];
    if (v8 == [(CSCoverSheetView *)self _indexOfMainPage])
    {
      [(CSCoverSheetView *)self _setupAllGesturesOnScrollView:1];
    }
  }
}

- (BOOL)coverSheetScrollView:(id)a3 shouldSetContentOffset:(CGPoint)a4 animated:(BOOL)a5
{
  x = a4.x;
  v8 = [(CSCoverSheetView *)self scrollView:a3];
  [v8 contentOffsetForPageAtIndex:{-[CSCoverSheetView _indexOfMainPage](self, "_indexOfMainPage")}];
  v10 = v9;

  v11 = BSFloatEqualToFloat();
  v12 = (x >= v10) ^ ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1);
  if ((v11 & 1) != 0 || (v12 & 1) != 0 || ![(CSCoverSheetView *)self ignoresOverscrollOnMainPage])
  {
    v14 = [(CSCoverSheetView *)self scrollView];
    v15 = [v14 panGestureRecognizer];
    v16 = [v15 state];

    v13 = v11 | a5 | ((v16 - 3) < 0xFFFFFFFFFFFFFFFELL) | ![(CSCoverSheetView *)self cameraSwipeBlocked]| v12 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (BOOL)coverSheetScrollView:(id)a3 gestureRecognizerShouldBegin:(id)a4
{
  v5 = a4;
  [v5 locationInView:self];
  v7 = v6;
  v9 = v8;
  v10 = [(CSCoverSheetView *)self delegate];
  v11 = [v5 view];

  LOBYTE(v5) = [v10 isTouchLocation:v11 inRestrictedRectForGestureView:{v7, v9}];
  return v5 ^ 1;
}

- (void)_setDateView:(id)a3 forTesting:(BOOL)a4
{
  v7 = a3;
  dateView = self->_dateView;
  if (dateView != v7)
  {
    v11 = v7;
    [(SBFLockScreenDateView *)dateView removeFromSuperview];
    objc_storeStrong(&self->_dateView, a3);
    [(CSCoverSheetView *)self _updateDateFont];
    if (!a4)
    {
      dateEffectView = self->_dateEffectView;
      if (dateEffectView)
      {
        v10 = [(UIVisualEffectView *)dateEffectView contentView];
        [v10 addSubview:v11];
      }

      else
      {
        [(UIView *)self->_dateTimeClippingView addSubview:v11];
      }
    }

    [(CSCoverSheetView *)self _dateViewFrameForPageAlignment:1 pageRelativeScrollOffset:0 outAlignmentPercent:0.0];
    [(SBFLockScreenDateView *)self->_dateView setRestingFrame:?];
    dateView = [(CSCoverSheetView *)self _layoutDateView];
    v7 = v11;
  }

  MEMORY[0x2821F96F8](dateView, v7);
}

- (void)_updateDateFont
{
  if ([(CSLookSettings *)self->_lookSettings useSettingsDateTime]&& [(CSLookSettings *)self->_lookSettings customizesDateTime])
  {
    dateView = self->_dateView;
    v4 = [(CSLookSettings *)self->_lookSettings customTimeFont];
    [(SBFLockScreenDateView *)dateView setCustomTimeFont:v4];

    v5 = self->_dateView;
    v6 = [(CSLookSettings *)self->_lookSettings subtitleAboveTime];
    v7 = v5;
  }

  else
  {
    v8 = self->_dateView;
    v9 = [MEMORY[0x277D65EB0] timeFont];
    [(SBFLockScreenDateView *)v8 setCustomTimeFont:v9];

    v7 = self->_dateView;
    v6 = 0;
  }

  [(SBFLockScreenDateView *)v7 setSubtitleOnTop:v6];
}

- (void)setRegionsDebugView:(id)a3
{
  v5 = a3;
  regionsDebugView = self->_regionsDebugView;
  if (regionsDebugView != v5)
  {
    v8 = v5;
    [(CSRegionsDebugView *)regionsDebugView removeFromSuperview];
    objc_storeStrong(&self->_regionsDebugView, a3);
    v7 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    [v7 addSubview:v8];

    regionsDebugView = [(CSCoverSheetView *)self setNeedsLayout];
    v5 = v8;
  }

  MEMORY[0x2821F96F8](regionsDebugView, v5);
}

- (CGAffineTransform)_transformScaling:(SEL)a3 byScale:(id)a4 aboutPointInSelf:(double)a5
{
  v7 = a4;
  v8 = [v7 superview];
  [v7 center];
  v10 = v9;
  v12 = v11;

  [v8 convertPoint:self toView:{v10, v12}];

  return SBFTransformForScalingAboutPointInSuperview();
}

- (CGRect)_dateViewFrameForPageAlignment:(int64_t)a3 pageRelativeScrollOffset:(double)a4 outAlignmentPercent:(double *)a5
{
  y = self->_dateViewOffset.y;
  v10 = -y;
  if (self->_dateViewStretch && BSFloatLessThanFloat())
  {
    v10 = y * -0.4;
  }

  v11 = [(CSCoverSheetView *)self _indexOfMainPage];
  dateViewPageAlignment = self->_dateViewPageAlignment;
  WeakRetained = objc_loadWeakRetained(&self->_layoutStrategy);
  v14 = WeakRetained;
  v15 = 0;
  if (!self->_forceDateViewCentered)
  {
    if (dateViewPageAlignment == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = a4 - v11;
    }

    else
    {
      v16 = a3;
    }

    v17 = [WeakRetained persistentLayout];
    [v17 timeLabelOffsetForScrollPercent:v16];
    v15 = v18;
  }

  if (_os_feature_enabled_impl())
  {
    v19 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
  }

  else
  {
    [(CSCoverSheetView *)self bounds];
    [v14 suggestedFrameForDateTimeViewInScreenCoordinates:self->_forceDateViewCentered forceCenteredX:?];
    v21 = v28;
    v23 = v29;
    v25 = v30;
    v27 = v31;
  }

  [(UIView *)self->_dateTimeClippingView origin];
  v33 = v10 - v32;
  v46.origin.x = v21;
  v46.origin.y = v23;
  v46.size.width = v25;
  v46.size.height = v27;
  CGRectOffset(v46, 0.0, v33);
  if (a5)
  {
    *a5 = v15;
  }

  SBFMainScreenScale();
  BSRectRoundForScale();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v42 = v35;
  v43 = v37;
  v44 = v39;
  v45 = v41;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (void)_layoutStatusBarBackgroundView
{
  [(SBFPagedScrollView *)self->_scrollView unclippedPageRelativeScrollOffset];
  v4 = v3;
  v5 = [(CSCoverSheetView *)self _indexOfMainPage];
  v6 = 0.0;
  if (self->_statusBarBackgroundPageAlignment != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    [(CSCoverSheetView *)self bounds];
    v6 = CGRectGetWidth(v24) * (v7 - v4 + self->_statusBarBackgroundPageAlignment);
  }

  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v8 = -v6;
  }

  else
  {
    v8 = v6;
  }

  [(CSCoverSheetView *)self bounds];
  v10 = v9;
  [(UIView *)self->_statusBarBackgroundView intrinsicContentSize];
  v12 = v11;
  v13 = [(UIView *)self->_statusBarBackgroundView superview];
  [(CSCoverSheetView *)self convertRect:v13 toView:v8, 0.0, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  statusBarBackgroundView = self->_statusBarBackgroundView;

  [(UIView *)statusBarBackgroundView setFrame:v15, v17, v19, v21];
}

- (void)_layoutContentView
{
  v3 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_contentView setBounds:v5, v7, v9, v11];
  contentView = self->_contentView;
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  [(UIView *)contentView setCenter:MidX, CGRectGetMidY(v27)];
  v14 = BSPointEqualToPoint();
  contentViewScale = self->_contentViewScale;
  if (v14)
  {
    v16 = contentViewScale == 1.0;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v19 = self->_contentView;
    v20 = *(MEMORY[0x277CBF2C0] + 16);
    *&v25.a = *MEMORY[0x277CBF2C0];
    *&v25.c = v20;
    *&v25.tx = *(MEMORY[0x277CBF2C0] + 32);
    v18 = &v25;
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
    CGAffineTransformMakeTranslation(&v25, self->_contentViewOffset.x, self->_contentViewOffset.y);
    memset(&v24, 0, sizeof(v24));
    CGAffineTransformMakeScale(&v24, contentViewScale, contentViewScale);
    v17 = self->_contentView;
    t1 = v24;
    v21 = v25;
    CGAffineTransformConcat(&v23, &t1, &v21);
    v18 = &v23;
    v19 = v17;
  }

  [(UIView *)v19 setTransform:v18];
}

- (CGRect)_wallpaperOrientationEnforcingBounds
{
  v3 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if ([(CSCoverSheetView *)self _forcingPortraitForWallpaperContent])
  {
    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    Height = CGRectGetHeight(v18);
    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v9;
    v19.size.height = v11;
    Width = CGRectGetWidth(v19);
    if (Height < Width)
    {
      v7 = 0.0;
      v11 = Width;
      v9 = Height;
      v5 = 0.0;
    }
  }

  v14 = v5;
  v15 = v7;
  v16 = v9;
  v17 = v11;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGAffineTransform)_portraitEnforcingTransform
{
  result = [(CSCoverSheetView *)self _forcingPortraitForWallpaperContent];
  if (result)
  {
    v6 = [(CSCoverSheetView *)self window];
    v7 = [v6 interfaceOrientation];

    switch(v7)
    {
      case 1:
        v8 = 0.0;
        break;
      case 3:
        v8 = 1.57079633;
        break;
      case 4:
        v8 = -1.57079633;
        break;
      default:
        v8 = 3.14159265;
        if (v7 != 2)
        {
          v8 = 0.0;
        }

        break;
    }

    memset(&v23, 0, sizeof(v23));
    CGAffineTransformMakeRotation(&v23, -v8);
    t1 = v23;
    memset(&v22, 0, sizeof(v22));
    UIIntegralTransform();
    v12 = [(CSCoverSheetView *)self window];
    v13 = [v12 isRotating];

    if (v13)
    {
      v14 = [(CSCoverSheetView *)self window];
      v15 = [v14 _fromWindowOrientation];

      v16 = [(CSCoverSheetView *)self window];
      v17 = [v16 _toWindowOrientation];

      if ((v15 - 3) < 2)
      {
        v18 = -3;
LABEL_16:
        if (v15 != v17 && (v17 + v18) <= 1)
        {
          v20.tx = 0.0;
          v20.ty = 0.0;
          t1 = v22;
          *&v20.a = xmmword_21EC96370;
          *&v20.c = xmmword_21EC96380;
          return CGAffineTransformConcat(retstr, &t1, &v20);
        }

        goto LABEL_19;
      }

      if ((v15 - 1) <= 1)
      {
        v18 = -1;
        goto LABEL_16;
      }
    }

LABEL_19:
    v19 = *&v22.c;
    *&retstr->a = *&v22.a;
    *&retstr->c = v19;
    v11 = *&v22.tx;
    goto LABEL_20;
  }

  v9 = MEMORY[0x277CBF2C0];
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v10;
  v11 = *(v9 + 32);
LABEL_20:
  *&retstr->tx = v11;
  return result;
}

- (void)_layoutNotificationLegibilityLocalizedDimView
{
  if (_UISolariumEnabled())
  {
    v3 = [(CSCoverSheetView *)self wallpaperFloatingLayerContainerView];
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [(CSNotificationLegibilityDimView *)self->_notificationLegibilityLocalizedDimView layoutInsetsForSize:v9, v11];
    notificationLegibilityLocalizedDimView = self->_notificationLegibilityLocalizedDimView;

    [(CSNotificationLegibilityDimView *)notificationLegibilityLocalizedDimView setFrame:v5 + v13, v7 + v12, v9 - (v13 + v15), v11 - (v12 + v14)];
  }
}

- (void)_layoutNotificationLegibilityFullBaseLayerView
{
  if (_UISolariumEnabled())
  {
    v3 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [(CSNotificationLegibilityDimView *)self->_notificationLegibilityFullBaseLayerDimView layoutInsetsForSize:v9, v11];
    notificationLegibilityFullBaseLayerDimView = self->_notificationLegibilityFullBaseLayerDimView;

    [(CSNotificationLegibilityDimView *)notificationLegibilityFullBaseLayerDimView setFrame:v5 + v13, v7 + v12, v9 - (v13 + v15), v11 - (v12 + v14)];
  }
}

- (void)_layoutNotificationLegibilityContainerViews
{
  if (_UISolariumEnabled())
  {
    v3 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [(UIView *)self->_notificationLegibiltyAboveDateTimeContainerView setFrame:v5, v7, v9, v11];
    notificationLegibiltyBelowDateTimeContainerView = self->_notificationLegibiltyBelowDateTimeContainerView;

    [(UIView *)notificationLegibiltyBelowDateTimeContainerView setFrame:v5, v7, v9, v11];
  }
}

- (void)_layoutBackgroundContentViewForPresentationValueChange
{
  [(CSCoverSheetView *)self effectiveContainerBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  backgroundContentView = self->_backgroundContentView;
  v12 = [MEMORY[0x277CCAE60] valueWithCGRect:?];
  [(CSBackgroundContentView *)backgroundContentView _setPresentationValue:v12 forKey:@"bounds"];

  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v13 = CGRectGetHeight(v19) * self->_coverSheetPresentationProgressPresentationValue;
  v14 = self->_backgroundContentView;
  v15 = MEMORY[0x277CCAE60];
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  v17 = [v15 valueWithCGPoint:{MidX, v13 + CGRectGetMidY(v21)}];
  [(CSBackgroundContentView *)v14 _setPresentationValue:v17 forKey:@"position"];
}

- (void)_addContentsContainerView
{
  if (CSFeatureEnabled(12))
  {
    v3 = [CSCoverSheetContentsContainerView alloc];
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 bounds];
    v5 = [(CSCoverSheetContentsContainerView *)v3 initWithFrame:?];
    contentsContainerView = self->_contentsContainerView;
    self->_contentsContainerView = v5;

    v7 = [(CSCoverSheetContentsContainerView *)self->_contentsContainerView layer];
    [v7 setHitTestsAsOpaque:1];

    [(CSCoverSheetContentsContainerView *)self->_contentsContainerView setCoverSheetView:self];
    v8 = self->_contentsContainerView;

    [(CSCoverSheetView *)self addSubview:v8];
  }
}

- (void)_updateBackgroundContainerPinningAnimation
{
  if (CSFeatureEnabled(12))
  {
    backgroundContainerView = self->_backgroundContainerView;
    if (backgroundContainerView)
    {
      v4 = [(BSUIOrientationTransformWrapperView *)backgroundContainerView layer];
      [v4 removeAnimationForKey:@"CSCoverSheetViewBackgroundContentViewMatchMoveAnimation"];

      v7 = [(CSCoverSheetView *)self window];
      if (v7)
      {
        v5 = [MEMORY[0x277D65DE0] matchMoveAnimationForPinningToView:v7];
        [v5 setAppliesX:1];
        [v5 setAppliesY:1];
        v6 = [(BSUIOrientationTransformWrapperView *)self->_backgroundContainerView layer];
        [v6 addAnimation:v5 forKey:@"CSCoverSheetViewBackgroundContentViewMatchMoveAnimation"];
      }

      [(CSCoverSheetView *)self setNeedsLayout];
    }
  }
}

- (void)_addBackgroundContainerView
{
  v3 = objc_alloc(MEMORY[0x277CF0D78]);
  [(CSCoverSheetView *)self bounds];
  v4 = [v3 initWithFrame:?];
  backgroundContainerView = self->_backgroundContainerView;
  self->_backgroundContainerView = v4;

  [(BSUIOrientationTransformWrapperView *)self->_backgroundContainerView setContainerOrientation:1];
  [(BSUIOrientationTransformWrapperView *)self->_backgroundContainerView setContentOrientation:1];
  [(BSUIOrientationTransformWrapperView *)self->_backgroundContainerView setCounterTransformView:1];
  v6 = self->_backgroundContainerView;

  [(CSCoverSheetView *)self insertSubview:v6 atIndex:0];
}

- (void)_addBackgroundView
{
  v3 = objc_alloc(MEMORY[0x277D67998]);
  [(CSCoverSheetView *)self bounds];
  v4 = [v3 initWithFrame:?];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;

  [(SBUIBackgroundView *)self->_backgroundView setGroupName:@"CSBackgroundView"];
  backgroundContainerView = self->_backgroundContainerView;
  v7 = self->_backgroundView;

  [(BSUIOrientationTransformWrapperView *)backgroundContainerView addContentView:v7];
}

- (void)_addSlideableContentView
{
  v3 = objc_alloc(MEMORY[0x277D65F80]);
  v4 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  slideableContentView = self->_slideableContentView;
  self->_slideableContentView = v5;

  [(UIView *)self->_slideableContentView setAutoresizingMask:18];
  v7 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v7 addSubview:self->_slideableContentView];
}

- (void)_addHigherSlideableContentView
{
  v3 = objc_alloc(MEMORY[0x277D65F80]);
  v4 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  higherSlideableContentView = self->_higherSlideableContentView;
  self->_higherSlideableContentView = v5;

  [(UIView *)self->_higherSlideableContentView setAutoresizingMask:18];
  v7 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v7 addSubview:self->_higherSlideableContentView];
}

- (void)_addContentViewWithContentView:(id)a3
{
  v4 = a3;
  if (!self->_hasSubviewModifyingView)
  {
    v10 = v4;
    self->_hasSubviewModifyingView = 1;
    if (!self->_contentView)
    {
      v5 = objc_alloc(MEMORY[0x277D65F80]);
      v6 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
      [v6 bounds];
      v7 = [v5 initWithFrame:?];
      contentView = self->_contentView;
      self->_contentView = v7;

      [(UIView *)self->_contentView setAutoresizingMask:18];
    }

    v9 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
    [v9 addSubview:self->_contentView];

    [(UIView *)self->_contentView addSubview:v10];
    v4 = v10;
  }
}

- (void)_addScrollView
{
  v3 = [CSScrollView alloc];
  [(CSCoverSheetView *)self bounds];
  v5 = [(SBFPagedScrollView *)v3 initWithFrame:?];
  [(BSUIScrollView *)v5 setDelegate:self];
  v4 = [(CSScrollView *)v5 panGestureRecognizer];
  [v4 setName:@"CoverSheetPagedPanGestureRecognizer"];

  [(CSScrollView *)v5 setAutoresizingMask:18];
  [(CSScrollView *)v5 setContentInsetAdjustmentBehavior:2];
  [(CSScrollView *)v5 setAllowsKeyboardScrolling:0];
  [(UIView *)self->_slideableContentView addSubview:v5];
  [(CSCoverSheetView *)self setScrollView:v5];
}

- (void)_addDateTimeContainer
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  dateTimeClippingView = self->_dateTimeClippingView;
  self->_dateTimeClippingView = v4;

  [(UIView *)self->_dateTimeClippingView setUserInteractionEnabled:0];
  slideableContentView = self->_slideableContentView;
  v7 = self->_dateTimeClippingView;

  [(UIView *)slideableContentView addSubview:v7];
}

- (void)_addWallpaperFloatingLayerContainerView
{
  v3 = [CSNotificationLegibilityDimView alloc];
  [(CSCoverSheetView *)self bounds];
  v4 = [(CSNotificationLegibilityDimView *)v3 initWithFrame:3 dimType:?];
  wallpaperFloatingLayerContainerView = self->_wallpaperFloatingLayerContainerView;
  self->_wallpaperFloatingLayerContainerView = v4;

  [(CSNotificationLegibilityDimView *)self->_wallpaperFloatingLayerContainerView setAccessibilityIgnoresInvertColors:1];
  slideableContentView = self->_slideableContentView;
  v7 = self->_wallpaperFloatingLayerContainerView;

  [(UIView *)slideableContentView addSubview:v7];
}

- (void)_addNotificationLegibilityDynamicDimView
{
  if (_UISolariumEnabled())
  {
    v3 = [CSNotificationLegibilityDimView alloc];
    v4 = [(CSNotificationLegibilityDimView *)v3 initWithFrame:0 dimType:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    notificationLegibilityDynamicDimView = self->_notificationLegibilityDynamicDimView;
    self->_notificationLegibilityDynamicDimView = v4;

    v6 = self->_notificationLegibilityDynamicDimView;

    [(CSCoverSheetView *)self _makeView:v6 untouchable:1];
  }
}

- (void)_addNotificationLegibilityLocalizedDimView
{
  if (_UISolariumEnabled())
  {
    v3 = [CSNotificationLegibilityDimView alloc];
    v4 = [(CSNotificationLegibilityDimView *)v3 initWithFrame:1 dimType:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    notificationLegibilityLocalizedDimView = self->_notificationLegibilityLocalizedDimView;
    self->_notificationLegibilityLocalizedDimView = v4;

    v6 = self->_notificationLegibilityLocalizedDimView;

    [(CSCoverSheetView *)self _makeView:v6 untouchable:1];
  }
}

- (void)_addNotificationLegibilityFullBaseLayerDimView
{
  if (_UISolariumEnabled())
  {
    v3 = [CSNotificationLegibilityDimView alloc];
    v4 = [(CSNotificationLegibilityDimView *)v3 initWithFrame:2 dimType:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    notificationLegibilityFullBaseLayerDimView = self->_notificationLegibilityFullBaseLayerDimView;
    self->_notificationLegibilityFullBaseLayerDimView = v4;

    v6 = self->_notificationLegibilityFullBaseLayerDimView;

    [(CSCoverSheetView *)self _makeView:v6 untouchable:1];
  }
}

- (void)_addNotificationLegibilityContainers
{
  if (_UISolariumEnabled())
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    v4 = *MEMORY[0x277CBF3A0];
    v5 = *(MEMORY[0x277CBF3A0] + 8);
    v6 = *(MEMORY[0x277CBF3A0] + 16);
    v7 = *(MEMORY[0x277CBF3A0] + 24);
    v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
    notificationLegibiltyAboveDateTimeContainerView = self->_notificationLegibiltyAboveDateTimeContainerView;
    self->_notificationLegibiltyAboveDateTimeContainerView = v8;

    [(CSCoverSheetView *)self _makeView:self->_notificationLegibiltyAboveDateTimeContainerView untouchable:1];
    v10 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
    notificationLegibiltyBelowDateTimeContainerView = self->_notificationLegibiltyBelowDateTimeContainerView;
    self->_notificationLegibiltyBelowDateTimeContainerView = v10;

    v12 = self->_notificationLegibiltyBelowDateTimeContainerView;

    [(CSCoverSheetView *)self _makeView:v12 untouchable:1];
  }
}

- (void)_makeView:(id)a3 untouchable:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [v5 setUserInteractionEnabled:!v4];
  v6 = [v5 layer];

  [v6 setAllowsHitTesting:!v4];
}

- (void)_addAuthIndicator
{
  v3 = [(CSCoverSheetView *)self _lockScreenDefaults];
  v4 = [v3 showAuthenticationEngineeringUI];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    authIndicator = self->_authIndicator;
    self->_authIndicator = v5;

    [(UIView *)self->_authIndicator setUserInteractionEnabled:0];
    [(UIView *)self->_slideableContentView addSubview:self->_authIndicator];
    [(CSCoverSheetView *)self setNeedsLayout];

    [(CSCoverSheetView *)self updateUIForAuthenticated:0];
  }
}

- (void)_addTintingView
{
  v3 = objc_alloc_init(MEMORY[0x277D65F80]);
  tintingView = self->_tintingView;
  self->_tintingView = v3;

  v5 = self->_tintingView;
  v6 = [MEMORY[0x277D75348] blackColor];
  [(UIView *)v5 setBackgroundColor:v6];

  [(UIView *)self->_tintingView setHidden:1];
  v7 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v7 addSubview:self->_tintingView];
}

- (void)_addStatusBarLegibilityView
{
  v3 = objc_alloc_init(MEMORY[0x277D65F50]);
  statusBarLegibilityView = self->_statusBarLegibilityView;
  self->_statusBarLegibilityView = v3;

  v5 = [(CSCoverSheetView *)self _effectiveContentsContainerView];
  [v5 addSubview:self->_statusBarLegibilityView];
}

- ($453422EBA70013024ECC637D52E1FF2D)_completedTransitionContextForPreviousTransitionContext:(SEL)a3 newTransitionContext:(id *)a4
{
  v5 = *&a4->var1.var1.var1;
  *&retstr->var1.var0.var1 = *&a4->var1.var0.var1;
  *&retstr->var1.var1.var1 = v5;
  *&retstr->var0 = *&a4->var0;
  retstr->var1.var1 = a5->var1.var0;
  retstr->var0 = a4->var1.var1.var0;
  return self;
}

- (void)_updateLegibility
{
  [(SBFLockScreenDateView *)self->_dateView setLegibilitySettings:self->_legibilitySettings];
  statusBarLegibilityView = self->_statusBarLegibilityView;
  legibilitySettings = self->_legibilitySettings;

  [(SBFStatusBarLegibilityView *)statusBarLegibilityView setLegibilitySettings:legibilitySettings];
}

- (void)_setupAllGesturesOnScrollView:(BOOL)a3
{
  v3 = a3;
  [(CSCoverSheetView *)self _setupWallpaperGestureOnScrollView:?];
  [(CSCoverSheetView *)self _setupBackgroundContentGestureOnScrollView:v3];
  [(CSCoverSheetView *)self _setupQuickNoteGestureOnScrollView:v3];
  [(CSCoverSheetView *)self _setupDateViewGestureOnScrollView:v3];

  [(CSCoverSheetView *)self _setupComplicationGestureOnScrollView:v3];
}

- (void)_setupWallpaperGestureOnScrollView:(BOOL)a3
{
  if (self->_wallpaperGestureRecognizer)
  {
    v3 = a3;
    v5 = SBLogDashBoard();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_INFO, "DashBoardView installed wallpaper gesture recognizer", buf, 2u);
      }

      [(SBFPagedScrollView *)self->_scrollView addGestureRecognizer:self->_wallpaperGestureRecognizer];
    }

    else
    {
      if (v6)
      {
        *v7 = 0;
        _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_INFO, "DashBoardView removed wallpaper gesture recognizer", v7, 2u);
      }

      [(SBFPagedScrollView *)self->_scrollView removeGestureRecognizer:self->_wallpaperGestureRecognizer];
    }
  }
}

- (void)_setupBackgroundContentGestureOnScrollView:(BOOL)a3
{
  if (self->_backgroundContentGestureRecognizer)
  {
    v3 = a3;
    v5 = SBLogDashBoard();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "DashBoardView installed background content gesture recognizer", buf, 2u);
      }

      [(SBFPagedScrollView *)self->_scrollView addGestureRecognizer:self->_backgroundContentGestureRecognizer];
    }

    else
    {
      if (v6)
      {
        *v7 = 0;
        _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "DashBoardView removed background content gesture recognizer", v7, 2u);
      }

      [(SBFPagedScrollView *)self->_scrollView removeGestureRecognizer:self->_backgroundContentGestureRecognizer];
    }
  }
}

- (void)_setupQuickNoteGestureOnScrollView:(BOOL)a3
{
  if (self->_quickNoteGestureRecognizer)
  {
    v3 = a3;
    v5 = SBLogDashBoard();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "DashBoardView installed quicknote gesture recognizer", buf, 2u);
      }

      [(SBFPagedScrollView *)self->_scrollView addGestureRecognizer:self->_quickNoteGestureRecognizer];
    }

    else
    {
      if (v6)
      {
        *v7 = 0;
        _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "DashBoardView removed quicknote gesture recognizer", v7, 2u);
      }

      [(SBFPagedScrollView *)self->_scrollView removeGestureRecognizer:self->_quickNoteGestureRecognizer];
    }
  }
}

- (void)_setupDateViewGestureOnScrollView:(BOOL)a3
{
  if (self->_dateViewGestureRecognizer)
  {
    v3 = a3;
    v5 = SBLogDashBoard();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "DashBoardView installed dateview gesture recognizer", buf, 2u);
      }

      [(SBFPagedScrollView *)self->_scrollView addGestureRecognizer:self->_dateViewGestureRecognizer];
    }

    else
    {
      if (v6)
      {
        *v7 = 0;
        _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "DashBoardView removed dateview gesture recognizer", v7, 2u);
      }

      [(SBFPagedScrollView *)self->_scrollView removeGestureRecognizer:self->_dateViewGestureRecognizer];
    }
  }
}

- (void)_setupComplicationGestureOnScrollView:(BOOL)a3
{
  if (self->_complicationGestureRecognizer)
  {
    v3 = a3;
    v5 = SBLogDashBoard();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "DashBoardView installed complication gesture recognizer", buf, 2u);
      }

      [(SBFPagedScrollView *)self->_scrollView addGestureRecognizer:self->_complicationGestureRecognizer];
    }

    else
    {
      if (v6)
      {
        *v7 = 0;
        _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "DashBoardView removed complication gesture recognizer", v7, 2u);
      }

      [(SBFPagedScrollView *)self->_scrollView removeGestureRecognizer:self->_complicationGestureRecognizer];
    }
  }
}

- (void)_prepareBlursForView:(id)a3 withHardEdges:(BOOL)a4
{
  v4 = a4;
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 layer];
    v8 = [v7 valueForKeyPath:@"filters.coverSheetBlurContents"];
    if (!v8)
    {
      v9 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
      v10 = v9;
      if (v4)
      {
        [v9 setValue:MEMORY[0x277CBEC38] forKey:@"inputHardEdges"];
      }

      [v10 setName:@"coverSheetBlurContents"];
      v11 = [v7 filters];

      if (v11)
      {
        v12 = [v7 mutableArrayValueForKeyPath:@"filters"];
        [v12 addObject:v10];
      }

      else
      {
        v18[0] = v10;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
        [v7 setFilters:v12];
      }
    }

    v13 = [v6 animatedLayerProperties];
    v14 = [v13 mutableCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = objc_opt_new();
    }

    v17 = v16;

    [v17 addObject:@"filters.coverSheetBlurContents.inputRadius"];
    [v6 setAnimatedLayerProperties:v17];
  }
}

- (void)_updateBlurForView:(id)a3 toRadius:(double)a4
{
  v6 = [a3 layer];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [v6 setValue:v5 forKeyPath:@"filters.coverSheetBlurContents.inputRadius"];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_lookSettings == a3)
  {
    [(CSCoverSheetView *)self _updateDateFont];

    [(CSCoverSheetView *)self _layoutDateView];
  }
}

- (CSLayoutStrategy)layoutStrategy
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutStrategy);

  return WeakRetained;
}

- (CGPoint)quickActionsViewOffset
{
  x = self->_quickActionsViewOffset.x;
  y = self->_quickActionsViewOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)proudLockIconViewOffset
{
  x = self->_proudLockIconViewOffset.x;
  y = self->_proudLockIconViewOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)contentViewOffset
{
  x = self->_contentViewOffset.x;
  y = self->_contentViewOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)wallpaperFloatingLayerContainerViewOffset
{
  x = self->_wallpaperFloatingLayerContainerViewOffset.x;
  y = self->_wallpaperFloatingLayerContainerViewOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)foregroundViewPositionOffset
{
  x = self->_foregroundViewPositionOffset.x;
  y = self->_foregroundViewPositionOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIView)referenceViewForBelowPresentationContext
{
  WeakRetained = objc_loadWeakRetained(&self->_referenceViewForBelowPresentationContext);

  return WeakRetained;
}

@end