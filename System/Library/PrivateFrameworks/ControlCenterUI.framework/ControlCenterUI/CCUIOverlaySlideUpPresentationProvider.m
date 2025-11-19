@interface CCUIOverlaySlideUpPresentationProvider
+ (CCUIInvokeSettings)invokeSettings;
+ (id)_baseC2AnimationParametersForTransitionState:(id)a3;
+ (id)_editingC2AnimationParametersToEditing:(BOOL)a3;
+ (id)_moduleC2AnimationParametersForTransitionState:(id)a3 layoutRect:(CCUILayoutRect *)a4;
+ (id)_moduleTranslationAnimationParametersForTransitionState:(id)a3;
- (BOOL)_isEditing;
- (CCUIOverlayMetricsProvider)metricsProvider;
- (CCUIOverlayViewProvider)viewProvider;
- (CGAffineTransform)_headerViewTransformForTransitionState:(SEL)a3;
- (CGAffineTransform)_moduleViewScaleTransformForTransitionState:(SEL)a3;
- (CGAffineTransform)_moduleViewTransformForTransitionState:(SEL)a3 layoutRect:(id)a4;
- (CGAffineTransform)_transformForTransitionState:(SEL)a3 rubberBandingHeight:(id)a4;
- (UIEdgeInsets)_edgeInsetsForContentSize:(CGSize)a3 withinBounds:(CGRect)a4 contentEdgeInsets:(UIEdgeInsets)a5 orientation:(int64_t)a6;
- (double)_additionalHeaderHeight;
- (double)_additionalHeaderOffset;
- (double)_additionalHeaderOffsetForEditing:(BOOL)a3;
- (double)_effectiveHeaderViewHeight;
- (double)_pullUpTranslation;
- (id)animationBatchForTransitionState:(id)a3 previousTransitionState:(id)a4 gestureVelocity:(CGPoint)a5;
- (id)cleanupForDismissal;
- (id)moduleViewAnimationBatchForTransitionState:(id)a3 moduleView:(id)a4 layoutRect:(CCUILayoutRect *)a5 gestureVelocity:(CGPoint)a6;
- (id)prepareForPresentation;
- (id)transitionBetweenEditing;
- (id)transitionStateForType:(unint64_t)a3 interactive:(BOOL)a4 translation:(CGPoint)a5;
- (uint64_t)_headerViewFrameForContentSize:(double)a3 withinBounds:(CGFloat)a4 contentInset:(CGFloat)a5 contentEdgeInsets:(CGFloat)a6 orientation:(CGFloat)a7;
- (unint64_t)finalTransitionTypeForState:(id)a3 gestureTranslation:(CGPoint)a4 gestureVelocity:(CGPoint)a5;
- (void)_addAccessoryAlphaAnimationsToBatch:(id)a3 transitionState:(id)a4;
- (void)_addBackgroundViewWeightingAnimationToBatch:(id)a3 transitionState:(id)a4;
- (void)_addHeaderChevronAlphaAnimationToBatch:(id)a3 transitionState:(id)a4;
- (void)_addHeaderContentTransformAnimationToBatch:(id)a3 transitionState:(id)a4;
- (void)_addHeaderContentTranslationAnimationToBatch:(id)a3 transitionState:(id)a4;
- (void)_addHeaderSensorStatusViewAlphaAnimationToBatch:(id)a3 transitionState:(id)a4;
- (void)_addHeaderStatusBarAlphaAnimationToBatch:(id)a3 transitionState:(id)a4;
- (void)_addModuleTransformAnimationsToBatch:(id)a3 transitionState:(id)a4;
- (void)_addModuleTransformAnimationsToBatch:(id)a3 transitionState:(id)a4 moduleView:(id)a5 layoutRect:(CCUILayoutRect *)a6;
- (void)_applyPageStretch;
- (void)_handleReduceMotionStateChangedNotification:(id)a3;
- (void)_setUpStretchSources;
- (void)_tearDownStretchSources;
- (void)_updateForScrollPositionChange;
- (void)layoutViews;
- (void)setVelocityPageStretchPercentage:(double)a3;
@end

@implementation CCUIOverlaySlideUpPresentationProvider

- (id)transitionStateForType:(unint64_t)a3 interactive:(BOOL)a4 translation:(CGPoint)a5
{
  y = a5.y;
  v6 = a4;
  [(CCUIOverlaySlideUpPresentationProvider *)self _pullUpTranslation];
  if (a3 == 1)
  {
    v8 = -v8;
  }

  v9 = y / v8;

  return [CCUIOverlayTransitionState stateWithType:a3 interactive:v6 progress:v9];
}

- (unint64_t)finalTransitionTypeForState:(id)a3 gestureTranslation:(CGPoint)a4 gestureVelocity:(CGPoint)a5
{
  if ((BSFloatGreaterThanOrEqualToFloat() & 1) == 0)
  {
    CCUIPortraitMainListGridGeometryInfo();
    if (!BSFloatGreaterThanOrEqualToFloat())
    {
      return 0;
    }
  }

  if (BSFloatLessThanFloat())
  {
    return 1;
  }

  return 2;
}

- (void)layoutViews
{
  v104 = *MEMORY[0x277D85DE8];
  v3 = [(CCUIOverlaySlideUpPresentationProvider *)self viewProvider];
  v4 = [(CCUIOverlaySlideUpPresentationProvider *)self metricsProvider];
  v5 = [v3 overlayBackgroundView];
  [v4 overlayBackgroundFrame];
  [v5 setFrame:?];

  v6 = [v4 overlayInterfaceOrientation];
  v7 = [v3 pagingView];
  v8 = [v7 traitCollection];
  [v8 displayScale];
  v91 = v9;

  [v4 overlayReachabilityHeight];
  v97 = v10;
  v11 = [v3 overlayHeaderView];
  v12 = [v11 statusBar];
  [v12 setOrientation:v6];

  v13 = [v3 overlayHeaderView];
  v14 = [v13 statusBar];
  [v14 setCompactTrailingAlpha:0.0];

  [v4 overlayContainerFrame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v3 overlayContainerView];
  [v23 setFrame:{v16, v18, v20, v22}];

  v24 = [v3 pagingView];
  [v24 setFrame:{v16, v18, v20, v22}];

  v25 = [v3 pagingView];
  [v25 layoutIfNeeded];

  v92 = CCUILayoutEdgeInsetsForInterfaceOrientation(v6);
  v98 = v26;
  v28 = v27;
  v30 = v29;
  [v4 overlayContentSize];
  BSRectWithSize();
  v89 = v31;
  rect = v32;
  v34 = v33;
  v36 = v35;
  v37 = [v3 overlayBackgroundView];
  [v37 setFrame:{v16, v18, v20, v22}];
  [v37 setContentFrame:{v16, v18, v20, v22}];
  v88 = v30;
  v86 = v28;
  v95 = v34;
  v90 = v16;
  v96 = v18;
  v94 = v20;
  v38 = v20;
  v39 = v22;
  [(CCUIOverlaySlideUpPresentationProvider *)self _edgeInsetsForContentSize:v6 withinBounds:v34 contentEdgeInsets:v36 orientation:v16, v18, v38, v22, *&v92, *&v98, v28, *&v30];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  if ((v6 - 3) <= 1)
  {
    v48 = [MEMORY[0x277D75418] currentDevice];
    v49 = [v48 userInterfaceIdiom];

    if (!v49)
    {
      [(CCUIOverlaySlideUpPresentationProvider *)self _additionalHeaderHeight];
      v41 = v41 + v50;
    }
  }

  [v4 setOverlayContentLayoutInset:{v41, v43, v45, v47}];
  [v4 setOverlayContentLayoutOffset:0.0];
  v85 = v92;
  v93 = fmax(v41, v97);
  [(CCUIOverlaySlideUpPresentationProvider *)self _headerViewFrameForContentSize:v6 withinBounds:v95 contentInset:v36 contentEdgeInsets:v90 orientation:v96, v94, v22, *&v93, *&v43, *&v45, *&v47, *&v85, *&v98, v86, *&v30];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = [v3 overlayHeaderView];
  [v59 setFrame:{v52, v54, v56, v58}];

  v60 = [v3 overlayHeaderView];
  [v60 setInterfaceOrientation:v6];

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v61 = [v3 overlayHeaderLayers];
  v62 = [v61 countByEnumeratingWithState:&v99 objects:v103 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v100;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v100 != v64)
        {
          objc_enumerationMutation(v61);
        }

        [*(*(&v99 + 1) + 8 * i) setFrame:{v52, v54, v56, v58}];
      }

      v63 = [v61 countByEnumeratingWithState:&v99 objects:v103 count:16];
    }

    while (v63);
  }

  v66 = [v3 overlayHeaderView];
  v67 = [v66 statusBar];
  [v67 setExpandedEdgeInsets:{0.0, v98 + v89, 0.0, v88}];

  v68 = [v3 overlayStatusLabelViewController];
  [v68 setEdgeInsets:{0.0, v98 + v89, 0.0, v88}];

  v69 = [v3 overlayHeaderView];
  [v69 setSensorAttributionEdgeInsets:{0.0, v98 + v89, 0.0, v88}];

  v105.origin.x = v89;
  v105.origin.y = rect;
  v105.size.width = v95;
  v105.size.height = v36;
  v70 = v93 + CGRectGetHeight(v105);
  [(CCUIOverlaySlideUpPresentationProvider *)self _additionalHeaderOffsetForEditing:[(CCUIOverlaySlideUpPresentationProvider *)self _isEditing]^ 1];
  v106.origin.x = v90;
  v106.origin.y = v96;
  v106.size.width = v94;
  v106.size.height = v39;
  CGRectGetHeight(v106);
  v107.origin.x = v89;
  v107.origin.y = v70;
  v107.size.width = v95;
  v107.size.height = v36;
  CGRectGetMinY(v107);
  UIRectInsetEdges();
  v72 = v71;
  v74 = v73;
  v75 = [v3 editingAccessoryView];
  [v75 sizeThatFits:{v72, v74}];

  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = [v3 editingAccessoryView];
  [v84 setFrame:{v77, v79, v81, v83}];
}

- (id)animationBatchForTransitionState:(id)a3 previousTransitionState:(id)a4 gestureVelocity:(CGPoint)a5
{
  v6 = a3;
  v7 = objc_alloc_init(CCUIAnimationBatch);
  [(CCUIOverlaySlideUpPresentationProvider *)self _addBackgroundViewWeightingAnimationToBatch:v7 transitionState:v6];
  v8 = [(CCUIOverlaySlideUpPresentationProvider *)self metricsProvider];
  [v8 overlayReachabilityHeight];
  v10 = fabs(v9);

  if (v10 < 2.22044605e-16)
  {
    [(CCUIOverlaySlideUpPresentationProvider *)self _addHeaderContentTransformAnimationToBatch:v7 transitionState:v6];
    [(CCUIOverlaySlideUpPresentationProvider *)self _addHeaderChevronAlphaAnimationToBatch:v7 transitionState:v6];
    [(CCUIOverlaySlideUpPresentationProvider *)self _addHeaderStatusBarAlphaAnimationToBatch:v7 transitionState:v6];
    [(CCUIOverlaySlideUpPresentationProvider *)self _addHeaderSensorStatusViewAlphaAnimationToBatch:v7 transitionState:v6];
    [(CCUIOverlaySlideUpPresentationProvider *)self _addHeaderContentTranslationAnimationToBatch:v7 transitionState:v6];
  }

  [(CCUIOverlaySlideUpPresentationProvider *)self _addAccessoryAlphaAnimationsToBatch:v7 transitionState:v6];
  [(CCUIOverlaySlideUpPresentationProvider *)self _addModuleTransformAnimationsToBatch:v7 transitionState:v6];

  return v7;
}

- (id)moduleViewAnimationBatchForTransitionState:(id)a3 moduleView:(id)a4 layoutRect:(CCUILayoutRect *)a5 gestureVelocity:(CGPoint)a6
{
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(CCUIAnimationBatch);
  var1 = a5->var1;
  v14[0] = a5->var0;
  v14[1] = var1;
  [(CCUIOverlaySlideUpPresentationProvider *)self _addModuleTransformAnimationsToBatch:v11 transitionState:v10 moduleView:v9 layoutRect:v14];

  return v11;
}

- (id)prepareForPresentation
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__handleReduceMotionStateChangedNotification_ name:*MEMORY[0x277D764C0] object:0];

  [(CCUIOverlaySlideUpPresentationProvider *)self _setUpStretchSources];
  v4 = objc_alloc_init(CCUIAnimationBatch);

  return v4;
}

- (id)cleanupForDismissal
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(CCUIOverlaySlideUpPresentationProvider *)self _tearDownStretchSources];
  v4 = objc_alloc_init(CCUIAnimationBatch);

  return v4;
}

- (id)transitionBetweenEditing
{
  v3 = objc_alloc_init(CCUIAnimationBatch);
  v4 = [(CCUIOverlaySlideUpPresentationProvider *)self viewProvider];
  v5 = [v4 isEditing];
  v6 = [objc_opt_class() _editingC2AnimationParametersToEditing:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__CCUIOverlaySlideUpPresentationProvider_transitionBetweenEditing__block_invoke;
  v10[3] = &unk_278382258;
  v13 = v5;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = [CCUIAnimation animationWithParameters:v6 animations:v10];
  [(CCUIAnimationBatch *)v3 addAnimation:v8];

  return v3;
}

uint64_t __66__CCUIOverlaySlideUpPresentationProvider_transitionBetweenEditing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) overlayHeaderView];
  v3 = v2;
  if (*(a1 + 48))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  [v2 setAlpha:v4];

  v5 = [*(a1 + 32) editingAccessoryView];
  v6 = v5;
  if (*(a1 + 48))
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [v5 setAlpha:v7];

  v8 = *(a1 + 40);

  return [v8 layoutViews];
}

- (UIEdgeInsets)_edgeInsetsForContentSize:(CGSize)a3 withinBounds:(CGRect)a4 contentEdgeInsets:(UIEdgeInsets)a5 orientation:(int64_t)a6
{
  v7 = *(MEMORY[0x277D768C8] + 8);
  v8 = *(MEMORY[0x277D768C8] + 24);
  if ((a6 - 1) > 1)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v18 = [(CCUIOverlaySlideUpPresentationProvider *)self viewProvider];
    v19 = [v18 overlayContainerView];
    v20 = [v19 traitCollection];
    [v20 displayScale];

    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    CGRectGetHeight(v24);
    UIRoundToScale();
    v9 = v13;
  }

  else
  {
    v9 = *(MEMORY[0x277D768C8] + 16);
    [(CCUIOverlaySlideUpPresentationProvider *)self _additionalHeaderOffset:a3.width];
    v11 = v10;
    [(CCUIOverlaySlideUpPresentationProvider *)self _effectiveHeaderViewHeight];
    v13 = v11 + v12;
  }

  v21 = v7;
  v22 = v9;
  v23 = v8;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v13;
  return result;
}

- (uint64_t)_headerViewFrameForContentSize:(double)a3 withinBounds:(CGFloat)a4 contentInset:(CGFloat)a5 contentEdgeInsets:(CGFloat)a6 orientation:(CGFloat)a7
{
  if ((a9 - 1) > 1)
  {
    v16.origin.x = a4;
    v16.origin.y = a5;
    v16.size.width = a6;
    v16.size.height = a7;
    CGRectGetWidth(v16);
    return [a1 _additionalHeaderHeight];
  }

  else
  {
    [a1 _additionalHeaderOffset];
    v15.origin.x = a4;
    v15.origin.y = a5;
    v15.size.width = a6;
    v15.size.height = a7;
    CGRectGetWidth(v15);
    return [a1 _effectiveHeaderViewHeight];
  }
}

- (double)_pullUpTranslation
{
  v3 = [(CCUIOverlaySlideUpPresentationProvider *)self viewProvider];
  v4 = [(CCUIOverlaySlideUpPresentationProvider *)self metricsProvider];
  v5 = CCUILayoutEdgeInsetsForInterfaceOrientation([v4 overlayInterfaceOrientation]);
  v6 = [v3 overlayContainerView];
  [v6 frame];
  Height = CGRectGetHeight(v11);
  [v4 overlayContentLayoutInset];
  v9 = Height - v8 - v5;

  return v9;
}

- (double)_effectiveHeaderViewHeight
{
  v3 = CCUIPortraitHeaderHeight();
  [(CCUIOverlaySlideUpPresentationProvider *)self _additionalHeaderHeight];
  return v3 + v4;
}

- (double)_additionalHeaderHeight
{
  v3 = [(CCUIOverlaySlideUpPresentationProvider *)self viewProvider];
  v4 = [v3 overlayHeaderView];
  v5 = [(CCUIOverlaySlideUpPresentationProvider *)self metricsProvider];
  [v4 additionalHeightForOrientation:{objc_msgSend(v5, "overlayInterfaceOrientation")}];
  v7 = v6;

  return v7;
}

- (double)_additionalHeaderOffset
{
  v3 = [(CCUIOverlaySlideUpPresentationProvider *)self _isEditing];

  [(CCUIOverlaySlideUpPresentationProvider *)self _additionalHeaderOffsetForEditing:v3];
  return result;
}

- (double)_additionalHeaderOffsetForEditing:(BOOL)a3
{
  result = 0.0;
  if (a3)
  {
    v4 = [(CCUIOverlaySlideUpPresentationProvider *)self metricsProvider];
    v5 = [v4 overlayInterfaceOrientation];

    v6 = CCUILayoutEdgeInsetsForInterfaceOrientation(v5);
    return -CCUIStatusBarHeight() - v6;
  }

  return result;
}

- (BOOL)_isEditing
{
  v2 = [(CCUIOverlaySlideUpPresentationProvider *)self viewProvider];
  v3 = [v2 isEditing];

  return v3;
}

+ (id)_baseC2AnimationParametersForTransitionState:(id)a3
{
  v3 = a3;
  if (_baseC2AnimationParametersForTransitionState__onceToken_0 != -1)
  {
    +[CCUIOverlaySlideUpPresentationProvider _baseC2AnimationParametersForTransitionState:];
  }

  if ([v3 isInteractive])
  {
    v4 = _baseC2AnimationParametersForTransitionState__baseInteractiveParameters_0;
  }

  else
  {
    [v3 clampedPresentationProgress];
    if (BSFloatIsZero())
    {
      v4 = _baseC2AnimationParametersForTransitionState__baseDismissParameters_0;
    }

    else
    {
      IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
      v6 = &_baseC2AnimationParametersForTransitionState__baseReduceMotionPresentParameters_0;
      if (!IsReduceMotionEnabled)
      {
        v6 = &_baseC2AnimationParametersForTransitionState__basePresentParameters_0;
      }

      v4 = *v6;
    }
  }

  v7 = v4;

  return v4;
}

void __87__CCUIOverlaySlideUpPresentationProvider__baseC2AnimationParametersForTransitionState___block_invoke()
{
  v11 = objc_alloc_init(CCUIMutableC2AnimationParameters);
  [(CCUIMutableC2AnimationParameters *)v11 setTension:250.0];
  [(CCUIMutableC2AnimationParameters *)v11 setFriction:22.0];
  v13 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(CCUIMutableC2AnimationParameters *)v11 setFrameRateRange:*&v13.minimum, *&v13.maximum, *&v13.preferred];
  [(CCUIMutableC2AnimationParameters *)v11 setHighFrameRateReason:2031617];
  v0 = [(CCUIMutableC2AnimationParameters *)v11 copy];
  v1 = _baseC2AnimationParametersForTransitionState__basePresentParameters_0;
  _baseC2AnimationParametersForTransitionState__basePresentParameters_0 = v0;

  v2 = objc_alloc_init(CCUIMutableC2AnimationParameters);
  [(CCUIMutableC2AnimationParameters *)v2 setTension:250.0];
  [(CCUIMutableC2AnimationParameters *)v2 setFriction:30.0];
  v14 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(CCUIMutableC2AnimationParameters *)v2 setFrameRateRange:*&v14.minimum, *&v14.maximum, *&v14.preferred];
  [(CCUIMutableC2AnimationParameters *)v2 setHighFrameRateReason:2031617];
  v3 = [(CCUIMutableC2AnimationParameters *)v2 copy];
  v4 = _baseC2AnimationParametersForTransitionState__baseReduceMotionPresentParameters_0;
  _baseC2AnimationParametersForTransitionState__baseReduceMotionPresentParameters_0 = v3;

  v5 = objc_alloc_init(CCUIMutableC2AnimationParameters);
  [(CCUIMutableC2AnimationParameters *)v5 setTension:250.0];
  [(CCUIMutableC2AnimationParameters *)v5 setFriction:22.0];
  v15 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(CCUIMutableC2AnimationParameters *)v5 setFrameRateRange:*&v15.minimum, *&v15.maximum, *&v15.preferred];
  [(CCUIMutableC2AnimationParameters *)v5 setHighFrameRateReason:2031617];
  v6 = [(CCUIMutableC2AnimationParameters *)v5 copy];
  v7 = _baseC2AnimationParametersForTransitionState__baseDismissParameters_0;
  _baseC2AnimationParametersForTransitionState__baseDismissParameters_0 = v6;

  v8 = objc_alloc_init(CCUIMutableC2AnimationParameters);
  [(CCUIMutableC2AnimationParameters *)v8 setInteractive:1];
  [(CCUIMutableC2AnimationParameters *)v8 setTension:1754.61];
  [(CCUIMutableC2AnimationParameters *)v8 setFriction:72.05];
  v16 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(CCUIMutableC2AnimationParameters *)v8 setFrameRateRange:*&v16.minimum, *&v16.maximum, *&v16.preferred];
  [(CCUIMutableC2AnimationParameters *)v8 setHighFrameRateReason:2031617];
  v9 = [(CCUIMutableC2AnimationParameters *)v8 copy];
  v10 = _baseC2AnimationParametersForTransitionState__baseInteractiveParameters_0;
  _baseC2AnimationParametersForTransitionState__baseInteractiveParameters_0 = v9;
}

+ (id)_moduleTranslationAnimationParametersForTransitionState:(id)a3
{
  v3 = [a1 _baseC2AnimationParametersForTransitionState:a3];
  v4 = [v3 mutableCopy];

  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v5 = [objc_opt_class() invokeSettings];
    if ([v4 isInteractive])
    {
      v6 = [v5 scrollAnimationSettings];
      [v6 trackingDampingRatio];
      v8 = v7;
      [v6 trackingResponse];
    }

    else
    {
      v6 = [v5 baseOverscrollSettlingAnimationSettings];
      [v6 dampingRatio];
      v8 = v10;
      [v6 response];
    }

    [v4 setDampingRatio:v8 response:v9];
  }

  return v4;
}

+ (id)_moduleC2AnimationParametersForTransitionState:(id)a3 layoutRect:(CCUILayoutRect *)a4
{
  v4 = [a1 _baseC2AnimationParametersForTransitionState:{a3, a4}];
  v5 = [v4 mutableCopy];

  [v5 tension];
  [v5 setTension:v6 + 0.0];
  [v5 friction];
  [v5 setFriction:v7 + 0.0];

  return v5;
}

+ (id)_editingC2AnimationParametersToEditing:(BOOL)a3
{
  v3 = objc_alloc_init(CCUIMutableC2AnimationParameters);
  [(CCUIMutableC2AnimationParameters *)v3 setTension:436.1];
  [(CCUIMutableC2AnimationParameters *)v3 setFriction:41.8];
  v6 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(CCUIMutableC2AnimationParameters *)v3 setFrameRateRange:*&v6.minimum, *&v6.maximum, *&v6.preferred];
  [(CCUIMutableC2AnimationParameters *)v3 setHighFrameRateReason:2031618];

  return v3;
}

- (void)_addBackgroundViewWeightingAnimationToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _baseC2AnimationParametersForTransitionState:v6];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __102__CCUIOverlaySlideUpPresentationProvider__addBackgroundViewWeightingAnimationToBatch_transitionState___block_invoke;
  v14 = &unk_278381DC8;
  v15 = self;
  v16 = v6;
  v9 = v6;
  v10 = [CCUIAnimation animationWithParameters:v8 animations:&v11];
  [v7 addAnimation:{v10, v11, v12, v13, v14, v15}];
}

void __102__CCUIOverlaySlideUpPresentationProvider__addBackgroundViewWeightingAnimationToBatch_transitionState___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) viewProvider];
  v2 = [v8 overlayBackgroundView];
  [*(a1 + 40) clampedPresentationProgress];
  v4 = v3;
  [*(a1 + 32) _pullUpTranslation];
  v6 = v5;
  if ([*(a1 + 40) isInteractive])
  {
    v7 = (v4 * v6 + (1.0 - v4) * 0.0) / 300.0;
  }

  else
  {
    [*(a1 + 40) clampedPresentationProgress];
  }

  [v2 setPresentationProgress:v7];
}

- (void)_addHeaderContentTransformAnimationToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _moduleTranslationAnimationParametersForTransitionState:v6];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __101__CCUIOverlaySlideUpPresentationProvider__addHeaderContentTransformAnimationToBatch_transitionState___block_invoke;
  v14 = &unk_278381DC8;
  v15 = self;
  v16 = v6;
  v9 = v6;
  v10 = [CCUIAnimation animationWithParameters:v8 animations:&v11];
  [v7 addAnimation:{v10, v11, v12, v13, v14, v15}];
}

void __101__CCUIOverlaySlideUpPresentationProvider__addHeaderContentTransformAnimationToBatch_transitionState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewProvider];
  v3 = [v2 overlayHeaderView];

  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 _headerViewTransformForTransitionState:*(a1 + 40)];
  }

  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  [v3 setContentTransform:v5];
}

- (CGAffineTransform)_headerViewTransformForTransitionState:(SEL)a3
{
  v6 = a4;
  v7 = [(CCUIOverlaySlideUpPresentationProvider *)self viewProvider];
  v8 = [v7 overlayContainerView];
  v9 = [v8 traitCollection];
  [v9 displayScale];

  [v6 clampedPresentationProgress];
  [(CCUIOverlaySlideUpPresentationProvider *)self _pullUpTranslation];
  UIRoundToScale();
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;

  return CGAffineTransformMakeTranslation(retstr, 0.0, v10);
}

- (void)_addHeaderChevronAlphaAnimationToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _baseC2AnimationParametersForTransitionState:v6];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __97__CCUIOverlaySlideUpPresentationProvider__addHeaderChevronAlphaAnimationToBatch_transitionState___block_invoke;
  v14 = &unk_278381DC8;
  v15 = self;
  v16 = v6;
  v9 = v6;
  v10 = [CCUIAnimation animationWithParameters:v8 animations:&v11];
  [v7 addAnimation:{v10, v11, v12, v13, v14, v15}];
}

void __97__CCUIOverlaySlideUpPresentationProvider__addHeaderChevronAlphaAnimationToBatch_transitionState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewProvider];
  v6 = [v2 overlayHeaderView];

  [*(a1 + 40) presentationProgress];
  v4 = (v3 + -0.88) * 0.3 / 0.07;
  if (v4 <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4 + 0.0;
  }

  [v6 setChevronAlpha:{fmin(v5, 0.3)}];
}

- (void)_addHeaderStatusBarAlphaAnimationToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _baseC2AnimationParametersForTransitionState:v6];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __99__CCUIOverlaySlideUpPresentationProvider__addHeaderStatusBarAlphaAnimationToBatch_transitionState___block_invoke;
  v14 = &unk_278381DC8;
  v15 = self;
  v16 = v6;
  v9 = v6;
  v10 = [CCUIAnimation animationWithParameters:v8 animations:&v11];
  [v7 addAnimation:{v10, v11, v12, v13, v14, v15}];
}

void __99__CCUIOverlaySlideUpPresentationProvider__addHeaderStatusBarAlphaAnimationToBatch_transitionState___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) viewProvider];
  v2 = [v8 overlayHeaderView];
  [*(a1 + 40) presentationProgress];
  v4 = (v3 + -0.88) / 0.07;
  if (v4 <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4 + 0.0;
  }

  v6 = fmin(v5, 1.0);
  [v2 setStatusBarAlpha:v6];
  v7 = [v8 overlayHeaderBackgroundView];
  [v7 setAlpha:v6];
}

- (void)_addAccessoryAlphaAnimationsToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _baseC2AnimationParametersForTransitionState:v6];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __94__CCUIOverlaySlideUpPresentationProvider__addAccessoryAlphaAnimationsToBatch_transitionState___block_invoke;
  v14 = &unk_278381DC8;
  v15 = self;
  v16 = v6;
  v9 = v6;
  v10 = [CCUIAnimation animationWithParameters:v8 animations:&v11];
  [v7 addAnimation:{v10, v11, v12, v13, v14, v15}];
}

void __94__CCUIOverlaySlideUpPresentationProvider__addAccessoryAlphaAnimationsToBatch_transitionState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewProvider];
  v6 = [v2 overlayPageControl];

  [*(a1 + 40) presentationProgress];
  v4 = (v3 + -0.88) / 0.07;
  if (v4 <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4 + 0.0;
  }

  [v6 setAlpha:{fmin(v5, 1.0)}];
}

- (void)_addHeaderSensorStatusViewAlphaAnimationToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _baseC2AnimationParametersForTransitionState:v6];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __106__CCUIOverlaySlideUpPresentationProvider__addHeaderSensorStatusViewAlphaAnimationToBatch_transitionState___block_invoke;
  v14 = &unk_278381DC8;
  v15 = self;
  v16 = v6;
  v9 = v6;
  v10 = [CCUIAnimation animationWithParameters:v8 animations:&v11];
  [v7 addAnimation:{v10, v11, v12, v13, v14, v15}];
}

void __106__CCUIOverlaySlideUpPresentationProvider__addHeaderSensorStatusViewAlphaAnimationToBatch_transitionState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewProvider];
  v6 = [v2 overlayHeaderView];

  [*(a1 + 40) presentationProgress];
  v4 = (v3 + -0.88) / 0.07;
  if (v4 <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4 + 0.0;
  }

  [v6 setSensorStatusViewAlpha:{fmin(v5, 1.0)}];
}

- (void)_addHeaderContentTranslationAnimationToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _baseC2AnimationParametersForTransitionState:v6];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __103__CCUIOverlaySlideUpPresentationProvider__addHeaderContentTranslationAnimationToBatch_transitionState___block_invoke;
  v14 = &unk_278381DC8;
  v15 = self;
  v16 = v6;
  v9 = v6;
  v10 = [CCUIAnimation animationWithParameters:v8 animations:&v11];
  [v7 addAnimation:{v10, v11, v12, v13, v14, v15}];
}

void __103__CCUIOverlaySlideUpPresentationProvider__addHeaderContentTranslationAnimationToBatch_transitionState___block_invoke(uint64_t a1)
{
  v14 = 0u;
  v15 = 0;
  v13 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 _transformForTransitionState:*(a1 + 40) rubberBandingHeight:{460.0, 0, 0, 0}];
    v2 = *(a1 + 32);
  }

  v3 = [v2 viewProvider];
  v4 = [v3 pagingView];

  [v4 bounds];
  [v4 convertRect:0 toView:?];
  v6 = v5;
  v7 = [*(a1 + 32) viewProvider];
  v8 = [v7 overlayHeaderView];

  v9 = [v8 statusBar];
  [v9 bounds];
  [v9 convertRect:0 toView:?];
  v12 = fmax(v6 - (v10 + v11) + 0.0, 0.0);
  [v9 setExpandedStatusBarTranslation:v12];
  [v9 layoutIfNeeded];
  [v8 setVerticalContentTranslation:v12];
  [v8 layoutIfNeeded];
}

- (void)_addModuleTransformAnimationsToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CCUIOverlaySlideUpPresentationProvider *)self viewProvider];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __95__CCUIOverlaySlideUpPresentationProvider__addModuleTransformAnimationsToBatch_transitionState___block_invoke;
  v18[3] = &unk_278381FA0;
  v18[4] = self;
  v19 = v6;
  v20 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateOverlayModuleViewsWithBlock:v18];

  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, 32);
  [(CCUIOverlaySlideUpPresentationProvider *)self _moduleViewTransformForTransitionState:v9 layoutRect:&v16];
  transform = v17;
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformDecompose(&v16, &transform);
  dy = v16.translation.dy;
  v12 = [objc_opt_class() _moduleTranslationAnimationParametersForTransitionState:v9];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__CCUIOverlaySlideUpPresentationProvider__addModuleTransformAnimationsToBatch_transitionState___block_invoke_2;
  v14[3] = &unk_278382060;
  v14[4] = self;
  *&v14[5] = dy;
  v13 = [CCUIAnimation animationWithParameters:v12 animations:v14];
  [v10 addAnimation:v13];
}

uint64_t __95__CCUIOverlaySlideUpPresentationProvider__addModuleTransformAnimationsToBatch_transitionState___block_invoke(void *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  return [v3 _addModuleTransformAnimationsToBatch:v4 transitionState:v5 moduleView:a2 layoutRect:v8];
}

void __95__CCUIOverlaySlideUpPresentationProvider__addModuleTransformAnimationsToBatch_transitionState___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) scrollPositionProperty];
  [v2 setValue:*(a1 + 40)];
}

- (void)_addModuleTransformAnimationsToBatch:(id)a3 transitionState:(id)a4 moduleView:(id)a5 layoutRect:(CCUILayoutRect *)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [objc_opt_class() _moduleTranslationAnimationParametersForTransitionState:v9];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __117__CCUIOverlaySlideUpPresentationProvider__addModuleTransformAnimationsToBatch_transitionState_moduleView_layoutRect___block_invoke;
  v16[3] = &unk_278381FC8;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v13 = v10;
  v14 = v9;
  v15 = [CCUIAnimation animationWithParameters:v12 animations:v16];
  [v11 addAnimation:v15];
}

void __117__CCUIOverlaySlideUpPresentationProvider__addModuleTransformAnimationsToBatch_transitionState_moduleView_layoutRect___block_invoke(uint64_t a1)
{
  memset(&v10, 0, sizeof(v10));
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    memset(&v9, 0, 32);
    [v2 _moduleViewTransformForTransitionState:v3 layoutRect:&v9];
  }

  memset(&v9, 0, sizeof(v9));
  transform = v10;
  CGAffineTransformDecompose(&v9, &transform);
  v4 = [*(a1 + 48) c2AnimationContainerView];
  v5 = v4;
  memset(&transform, 0, sizeof(transform));
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  CGAffineTransformDecompose(&transform, &v7);
  *&transform.tx = v9.translation;
  *&v6.tx = v9.translation;
  memset(&v7, 0, sizeof(v7));
  *&v6.a = *&transform.a;
  *&v6.c = *&transform.c;
  CGAffineTransformMakeWithComponents(&v7, &v6);
  v6 = v7;
  [v5 setTransform:&v6];
}

- (CGAffineTransform)_moduleViewTransformForTransitionState:(SEL)a3 layoutRect:(id)a4
{
  memset(&v11[1], 0, sizeof(CGAffineTransform));
  v7 = a4;
  [(CCUIOverlaySlideUpPresentationProvider *)self _transformForTransitionState:v7 rubberBandingHeight:460.0];
  memset(v11, 0, 48);
  [(CCUIOverlaySlideUpPresentationProvider *)self _moduleViewScaleTransformForTransitionState:v7];

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  t1 = v11[0];
  v9 = v11[1];
  return CGAffineTransformConcat(retstr, &t1, &v9);
}

- (CGAffineTransform)_moduleViewScaleTransformForTransitionState:(SEL)a3
{
  v11 = a4;
  if (![v11 isInteractive] || objc_msgSend(v11, "type") == 1)
  {
    [v11 isInteractive];
  }

  [v11 clampedPresentationProgress];
  v6 = v5 + 1.0 - v5;
  [v11 presentationProgress];
  v8 = fmax(v7 + -1.0, 0.0);
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v9 = v6 + v8 * 0.0 + (1.0 - v8) * 0.0;
  CGAffineTransformMakeScale(retstr, v9, v9);

  return result;
}

- (CGAffineTransform)_transformForTransitionState:(SEL)a3 rubberBandingHeight:(id)a4
{
  v7 = a4;
  v8 = [(CCUIOverlaySlideUpPresentationProvider *)self viewProvider];
  v9 = [v8 overlayContainerView];
  v10 = [v9 traitCollection];
  [v10 displayScale];

  [(CCUIOverlaySlideUpPresentationProvider *)self _pullUpTranslation];
  [v7 clampedPresentationProgress];
  [v7 nonZeroPresentationProgress];
  [v7 clampedPresentationProgress];

  BSUIConstrainValueWithRubberBand();
  UIRoundToScale();
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;

  return CGAffineTransformMakeTranslation(retstr, 0.0, v11);
}

- (void)_setUpStretchSources
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v3 = [(CCUIOverlaySlideUpPresentationProvider *)self scrollVelocityStretchSource];

    if (!v3)
    {
      v4 = [objc_opt_class() invokeSettings];
      [v4 maxVelocityStretchScaleMagnitudeForModules];
      v6 = v5;
      [v4 maxVelocityStretchScaleScalarMagnitudeForModules];
      v8 = v7;
      v9 = [(CCUIOverlaySlideUpPresentationProvider *)self viewProvider];
      v10 = [v9 addModuleStretchSourceWithParameters:{v6, v8, 0.0}];

      [(CCUIOverlaySlideUpPresentationProvider *)self setScrollVelocityStretchSource:v10];
      v11 = objc_alloc_init(MEMORY[0x277D75D38]);
      [v11 setVelocityUsableForVFD:1];
      [(CCUIOverlaySlideUpPresentationProvider *)self setScrollPositionProperty:v11];
      objc_initWeak(&location, self);
      v12 = MEMORY[0x277D75D18];
      v17[0] = v11;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __62__CCUIOverlaySlideUpPresentationProvider__setUpStretchSources__block_invoke;
      v14[3] = &unk_278382038;
      objc_copyWeak(&v15, &location);
      [v12 _createTransformerWithInputAnimatableProperties:v13 presentationValueChangedCallback:v14];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __62__CCUIOverlaySlideUpPresentationProvider__setUpStretchSources__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForScrollPositionChange];
}

- (void)_tearDownStretchSources
{
  v3 = [(CCUIOverlaySlideUpPresentationProvider *)self scrollVelocityStretchSource];
  [v3 invalidate];

  [(CCUIOverlaySlideUpPresentationProvider *)self setScrollVelocityStretchSource:0];
  v4 = [(CCUIOverlaySlideUpPresentationProvider *)self scrollPositionProperty];
  [v4 invalidate];

  [(CCUIOverlaySlideUpPresentationProvider *)self setScrollPositionProperty:0];
}

- (void)_updateForScrollPositionChange
{
  v3 = [objc_opt_class() invokeSettings];
  v4 = [(CCUIOverlaySlideUpPresentationProvider *)self scrollPositionProperty];
  [v4 velocity];
  v6 = v5;

  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  [v3 velocityForMaxStretch];
  v8 = fmin(fmax(v6 * (1.0 / v7), 0.0), 1.0);
  v9 = MEMORY[0x277D75D18];
  v10 = [v3 stretchAnimationSettings];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__CCUIOverlaySlideUpPresentationProvider__updateForScrollPositionChange__block_invoke;
  v11[3] = &unk_278382060;
  v11[4] = self;
  *&v11[5] = v8;
  [v9 sb_animateWithSettings:v10 mode:3 animations:v11 completion:0];
}

uint64_t __72__CCUIOverlaySlideUpPresentationProvider__updateForScrollPositionChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) scrollVelocityStretchSource];
  [v2 setStretchValue:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 setVelocityPageStretchPercentage:v4];
}

- (void)setVelocityPageStretchPercentage:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_velocityPageStretchPercentage = a3;

    [(CCUIOverlaySlideUpPresentationProvider *)self _applyPageStretch];
  }
}

- (void)_applyPageStretch
{
  v12 = [objc_opt_class() invokeSettings];
  [(CCUIOverlaySlideUpPresentationProvider *)self velocityPageStretchPercentage];
  v4 = v3;
  [v12 maxVelocityStretchScaleMagnitudeForPages];
  v6 = v4 * v5;
  [v12 maxVelocityStretchScaleScalarMagnitudeForPages];
  v8 = v4 * v7;
  v9 = (1.0 - v6) * (1.0 - v8);
  v10 = (v6 + 1.0) * (v8 + 1.0);
  v11 = [(CCUIOverlaySlideUpPresentationProvider *)self viewProvider];
  [v11 setOverlayPageContentScale:{v9, v10}];
}

- (void)_handleReduceMotionStateChangedNotification:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CCUIOverlaySlideUpPresentationProvider__handleReduceMotionStateChangedNotification___block_invoke;
  block[3] = &unk_278381DF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __86__CCUIOverlaySlideUpPresentationProvider__handleReduceMotionStateChangedNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _tearDownStretchSources];
  v2 = *(a1 + 32);

  return [v2 _setUpStretchSources];
}

+ (CCUIInvokeSettings)invokeSettings
{
  if (invokeSettings_onceToken_0 != -1)
  {
    +[CCUIOverlaySlideUpPresentationProvider invokeSettings];
  }

  v3 = invokeSettings___invokeSettings_0;

  return v3;
}

void __56__CCUIOverlaySlideUpPresentationProvider_invokeSettings__block_invoke()
{
  v2 = +[CCUIControlCenterDomain rootSettings];
  v0 = [v2 invokeSettings];
  v1 = invokeSettings___invokeSettings_0;
  invokeSettings___invokeSettings_0 = v0;
}

- (CCUIOverlayViewProvider)viewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);

  return WeakRetained;
}

- (CCUIOverlayMetricsProvider)metricsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_metricsProvider);

  return WeakRetained;
}

@end