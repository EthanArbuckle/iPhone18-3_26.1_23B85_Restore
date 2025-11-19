@interface CCUIOverlayStatusBarPresentationProvider
+ (CCUIInvokeSettings)invokeSettings;
+ (id)_accessoryScaleCAAnimationParametersForTransitionState:(id)a3;
+ (id)_baseC2AnimationParametersForTransitionState:(id)a3;
+ (id)_compactTrailingStatusBarAlphaCAAnimationParametersForTransitionState:(id)a3;
+ (id)_editingC2AnimationParametersToEditing:(BOOL)a3;
+ (id)_expandedLeadingStatusBarAlphaCAAnimationParametersForTransitionState:(id)a3;
+ (id)_expandedTrailingStatusBarAlphaCAAnimationParametersForTransitionState:(id)a3;
+ (id)_hiddenStatusBarFadeAnimationParameters;
+ (id)_leadingStatusBarCAAnimationParametersForTransitionState:(id)a3;
+ (id)_moduleAlphaCAAnimationParametersForTransitionState:(id)a3;
+ (id)_reducedMotionStatusBarStateCAAnimationParameters;
+ (id)_trailingStatusBarCAAnimationParametersForTransitionState:(id)a3;
- (BOOL)_isEditing;
- (CCUIOverlayMetricsProvider)metricsProvider;
- (CCUIOverlayViewProvider)viewProvider;
- (CGAffineTransform)_accessoryScaleTransformForTransitionState:(SEL)a3 layoutRect:(id)a4;
- (CGAffineTransform)_compactStatusBar:(SEL)a3 transformForTransitionState:(id)a4;
- (CGAffineTransform)_headerViewTransformForTransitionState:(SEL)a3 rubberBandSlope:(id)a4;
- (CGAffineTransform)_transformForTransitionState:(SEL)a3 rubberBandingHeight:(id)a4 rubberBandSlope:(double)a5;
- (CGRect)_presentedViewFrame;
- (UIEdgeInsets)_edgeInsetsForContentSize:(CGSize)a3 withinBounds:(CGRect)a4 contentEdgeInsets:(UIEdgeInsets)a5 orientation:(int64_t)a6;
- (double)_additionalHeaderHeight;
- (double)_additionalHeaderOffset;
- (double)_additionalHeaderOffsetForEditing:(BOOL)a3;
- (double)_delayForTransitionState:(id)a3 layoutRect:(CCUILayoutRect *)a4;
- (double)_effectiveHeaderViewHeight;
- (double)_effectiveTransitionHeight;
- (double)_headerViewFrameForContentSize:(double)a3 withinBounds:(CGFloat)a4 contentInset:(CGFloat)a5 contentEdgeInsets:(CGFloat)a6 orientation:(CGFloat)a7;
- (double)_maxBaseTranslation;
- (double)_moduleViewRubberBandingHeight;
- (double)_moduleViewStretchPercentageForTransitionState:(id)a3;
- (id)_moduleTranslationAnimationParametersForTransitionState:(id)a3 previousTransitionState:(id)a4;
- (id)animationBatchForTransitionState:(id)a3 previousTransitionState:(id)a4 gestureVelocity:(CGPoint)a5;
- (id)cleanupForDismissal;
- (id)moduleViewAnimationBatchForTransitionState:(id)a3 moduleView:(id)a4 layoutRect:(CCUILayoutRect *)a5 gestureVelocity:(CGPoint)a6;
- (id)prepareForPresentation;
- (id)secondaryAnimationBatchForTransitionState:(id)a3 previousTransitionState:(id)a4 gestureVelocity:(CGPoint)a5;
- (id)transitionBetweenEditing;
- (id)transitionStateForType:(unint64_t)a3 interactive:(BOOL)a4 translation:(CGPoint)a5;
- (unint64_t)finalTransitionTypeForState:(id)a3 gestureTranslation:(CGPoint)a4 gestureVelocity:(CGPoint)a5;
- (void)_addAccessoryAlphaAnimationsToBatch:(id)a3 transitionState:(id)a4;
- (void)_addAccessoryScaleAnimationsToBatch:(id)a3 transitionState:(id)a4;
- (void)_addBackgroundViewWeightingAnimationToBatch:(id)a3 transitionState:(id)a4;
- (void)_addHeaderContentTransformAnimationToBatch:(id)a3 transitionState:(id)a4 previousTransitionState:(id)a5 gestureVelocity:(CGPoint)a6;
- (void)_addHeaderSensorStatusViewAlphaAnimationToBatch:(id)a3 transitionState:(id)a4;
- (void)_addLeadingStatusBarAlphaAnimationToBatch:(id)a3 transitionState:(id)a4;
- (void)_addModuleAlphaAnimationsToBatch:(id)a3 transitionState:(id)a4 moduleView:(id)a5 layoutRect:(CCUILayoutRect *)a6;
- (void)_addModuleContainerAlphaAnimationToBatch:(id)a3 transitionState:(id)a4;
- (void)_addModuleScaleAnimationsToBatch:(id)a3 transitionState:(id)a4;
- (void)_addModuleTransformAnimationsToBatch:(id)a3 transitionState:(id)a4 previousTransitionState:(id)a5 gestureVelocity:(CGPoint)a6;
- (void)_addModuleTransformAnimationsToBatch:(id)a3 transitionState:(id)a4 previousTransitionState:(id)a5 moduleView:(id)a6 layoutRect:(CCUILayoutRect *)a7 gestureVelocity:(CGPoint)a8;
- (void)_addReducedMotionStatusBarStateAnimationToBatch:(id)a3 transitionState:(id)a4;
- (void)_addStatusBarAlphaAnimationToBatch:(id)a3 transitionState:(id)a4;
- (void)_addStatusBarStateAnimationToBatch:(id)a3 transitionState:(id)a4;
- (void)_applyPageStretch;
- (void)_handleReduceMotionStateChangedNotification:(id)a3;
- (void)_setUpStretchSources;
- (void)_tearDownStretchSources;
- (void)_updateForScrollPositionChange;
- (void)layoutViews;
- (void)setRubberBandPageStretchPercentage:(double)a3;
- (void)setVelocityPageStretchPercentage:(double)a3;
@end

@implementation CCUIOverlayStatusBarPresentationProvider

- (void)layoutViews
{
  v164 = *MEMORY[0x277D85DE8];
  v3 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
  v4 = [(CCUIOverlayStatusBarPresentationProvider *)self metricsProvider];
  v5 = [v4 overlayInterfaceOrientation];
  v6 = [v3 pagingView];
  v7 = [v6 traitCollection];
  [v7 displayScale];
  v9 = v8;

  [v4 overlayReachabilityHeight];
  rect = v10;
  v11 = [v3 overlayHeaderView];
  v12 = [v11 statusBar];
  [v12 setOrientation:v5];

  [v4 overlayContainerFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v3 overlayContainerView];
  [v21 setFrame:{v14, v16, v18, v20}];

  [v4 overlayContentSize];
  BSRectWithSize();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  rect_16 = v28;
  v29 = [MEMORY[0x277D75418] currentDevice];
  v30 = [v29 userInterfaceIdiom];

  v149 = 0.0;
  v144 = v9;
  if ((v30 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v31 = [MEMORY[0x277D75128] sharedApplication];
    v32 = [v31 userInterfaceLayoutDirection];

    if (v32 != 1)
    {
      v165.origin.x = v14;
      v165.origin.y = v16;
      v165.size.width = v18;
      v165.size.height = v20;
      MaxX = CGRectGetMaxX(v165);
      v166.origin.x = v23;
      v166.origin.y = v25;
      v166.size.width = v27;
      v166.size.height = rect_16;
      v149 = MaxX - CGRectGetWidth(v166);
    }
  }

  v148 = v25;
  CCUILayoutEdgeInsetsForInterfaceOrientation(v5);
  CCUIEdgeInsetsRTLSwap();
  v35 = v34;
  v37 = v36;
  v146 = v39;
  v147 = v38;
  rect_8 = v27;
  v156 = v16;
  v157 = v14;
  rect_24 = v18;
  [(CCUIOverlayStatusBarPresentationProvider *)self _edgeInsetsForContentSize:v5 withinBounds:v27 contentEdgeInsets:rect_16 orientation:v14, v16, v18, v20, v34, *&v38, v36, *&v39];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  if ((v5 - 3) <= 1)
  {
    v48 = [MEMORY[0x277D75418] currentDevice];
    v49 = [v48 userInterfaceIdiom];

    v40 = v41;
    if (!v49)
    {
      [(CCUIOverlayStatusBarPresentationProvider *)self _additionalHeaderHeight];
      v40 = v41 + v50;
    }
  }

  [v4 setOverlayContentLayoutInset:{v40, v43, v45, v47}];
  v51 = *(MEMORY[0x277CBF348] + 8);
  v52 = v5 - 1;
  v53 = rect + v41;
  if ((v5 - 1) < 2)
  {
    v51 = rect + v51;
    v41 = rect + v41;
  }

  [v4 setOverlayContentLayoutOffset:{*MEMORY[0x277CBF348], v51, v53}];
  v143 = v41;
  [(CCUIOverlayStatusBarPresentationProvider *)self _headerViewFrameForContentSize:v5 withinBounds:rect_8 contentInset:rect_16 contentEdgeInsets:v157 orientation:v156, rect_24, v20, *&v41, *&v43, *&v45, *&v47, v35, *&v147, v37, *&v146];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  if (v52 >= 2)
  {
    v61 = v54;
  }

  else
  {
    v61 = rect + v54;
  }

  v62 = [v3 overlayHeaderView];
  [v62 setFrame:{v56, v61, v58, v60}];

  v63 = [v3 overlayHeaderView];
  [v63 setInterfaceOrientation:v5];

  [(CCUIOverlayStatusBarPresentationProvider *)self _effectiveTransitionHeight];
  v65 = v64;
  v167.origin.x = v56;
  v167.origin.y = v61;
  v167.size.width = v58;
  v167.size.height = v60;
  Height = CGRectGetHeight(v167);
  v67 = fmin(v65, Height - CCUIStatusBarHeight());
  v68 = [v3 overlayHeaderView];
  [v68 setEdgeInsets:{v67, 0.0, 0.0, 0.0}];

  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v69 = [v3 overlayHeaderLayers];
  v70 = [v69 countByEnumeratingWithState:&v159 objects:v163 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v160;
    do
    {
      for (i = 0; i != v71; ++i)
      {
        if (*v160 != v72)
        {
          objc_enumerationMutation(v69);
        }

        [*(*(&v159 + 1) + 8 * i) setFrame:{v56, v61, v58, v60}];
      }

      v71 = [v69 countByEnumeratingWithState:&v159 objects:v163 count:16];
    }

    while (v71);
  }

  v74 = [v4 overlayStatusBarStyle];
  [v74 statusBarInsets];
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;

  v83 = [v3 overlayHeaderView];
  v84 = [v83 statusBar];
  [v84 setCompactEdgeInsets:{v76, v147 + v78 + 4.0 + 35.0, 0.0, v82}];

  v168.origin.y = v156;
  v168.origin.x = v157;
  v168.size.width = rect_24;
  v168.size.height = v20;
  Width = CGRectGetWidth(v168);
  v145 = v20;
  v86 = rect + v76;
  v87 = CCUIStatusBarHeight() - (v76 + v80);
  v88 = [v3 overlayLeadingStatusBar];
  [v88 setFrame:{v78 + 0.0, v86, Width - (v78 + v82), v87}];

  v89 = [v3 overlayHeaderView];
  v90 = [v89 statusBar];
  [v90 setExpandedEdgeInsets:{0.0, v147, 0.0, v146}];

  v91 = [v3 overlayHeaderView];
  [v91 setSensorAttributionEdgeInsets:{0.0, v147, 0.0, v146}];

  v92 = [v3 overlayStatusLabelViewController];
  [v92 setEdgeInsets:{0.0, v147, 0.0, v146}];

  v93 = [(CCUIOverlayStatusBarPresentationProvider *)self _isEditing];
  v94 = [MEMORY[0x277D75418] currentDevice];
  v95 = [v94 userInterfaceIdiom];

  v96 = 0.0;
  if ((v95 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v97 = 0.0;
  }

  else
  {
    v97 = v149;
  }

  if ((v95 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v96 = v25;
  }

  v98 = v97;
  v99 = rect_8;
  v100 = rect_16;
  v101 = v143 + CGRectGetHeight(*(&v96 - 1));
  [(CCUIOverlayStatusBarPresentationProvider *)self _additionalHeaderOffsetForEditing:!v93];
  v169.origin.y = v156;
  v169.origin.x = v157;
  v169.size.width = rect_24;
  v169.size.height = v145;
  CGRectGetHeight(v169);
  v170.origin.x = v97;
  v170.origin.y = v101;
  v170.size.width = rect_8;
  v170.size.height = rect_16;
  CGRectGetMinY(v170);
  UIRectInsetEdges();
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v110 = [v3 editingAccessoryView];
  [v110 sizeThatFits:{v107, v109}];

  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  x = v171.origin.x;
  v112 = v171.size.width;
  v113 = v171.size.height;
  MinY = CGRectGetMinY(v171);
  v172.origin.x = v103;
  v172.origin.y = v105;
  v172.size.width = v107;
  v172.size.height = v109;
  v115 = fmin(MinY, CGRectGetMinY(v172) + 30.0);
  v116 = [v3 editingAccessoryView];
  recta = x;
  v117 = x;
  v118 = v112;
  v119 = v115;
  rect_16a = v113;
  [v116 setFrame:{v117, v115, v118, v113}];

  v120 = [MEMORY[0x277D75418] currentDevice];
  v121 = [v120 userInterfaceIdiom];

  if ((v121 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v122 = v149;
  }

  else
  {
    v122 = v157;
  }

  if ((v121 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v123 = v148;
  }

  else
  {
    v123 = v156;
  }

  if ((v121 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v124 = rect_8;
  }

  else
  {
    v124 = rect_24;
  }

  v125 = [v3 pagingView];
  v158 = v124;
  [v125 setFrame:{v122, v123, v124, v145}];

  [v4 overlayBackgroundFrame];
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  if (v52 <= 1)
  {
    UIRectInset();
    v127 = v134;
    v129 = v135;
    v131 = v136;
    v133 = v137;
  }

  v138 = [v3 overlayBackgroundView];
  [v138 setFrame:{v127, v129, v131, v133}];
  v139 = [MEMORY[0x277D75418] currentDevice];
  v140 = [v139 userInterfaceIdiom];

  if ((v140 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(CCUIOverlayStatusBarPresentationProvider *)self _additionalHeaderOffsetForEditing:!v93];
    v142 = v141;
    v173.origin.x = recta;
    v173.origin.y = v119;
    v173.size.width = v118;
    v173.size.height = rect_16a;
    v133 = v142 + CGRectGetMaxY(v173) + 30.0;
    v127 = v122;
    v129 = v123;
    v131 = v158;
  }

  [v138 setContentFrame:{v127, v129, v131, v133}];
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

- (BOOL)_isEditing
{
  v2 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
  v3 = [v2 isEditing];

  return v3;
}

- (double)_additionalHeaderOffset
{
  v3 = [(CCUIOverlayStatusBarPresentationProvider *)self _isEditing];

  [(CCUIOverlayStatusBarPresentationProvider *)self _additionalHeaderOffsetForEditing:v3];
  return result;
}

- (double)_additionalHeaderHeight
{
  v3 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
  v4 = [v3 overlayHeaderView];
  v5 = [(CCUIOverlayStatusBarPresentationProvider *)self metricsProvider];
  [v4 additionalHeightForOrientation:{objc_msgSend(v5, "overlayInterfaceOrientation")}];
  v7 = v6;

  return v7;
}

- (double)_effectiveHeaderViewHeight
{
  v3 = CCUIPortraitHeaderHeight();
  [(CCUIOverlayStatusBarPresentationProvider *)self _additionalHeaderHeight];
  return v3 + v4;
}

- (double)_effectiveTransitionHeight
{
  v3 = CCUIPortraitHeaderHeight();
  v4 = v3 - CCUIStatusBarHeight();
  [(CCUIOverlayStatusBarPresentationProvider *)self _additionalHeaderHeight];
  return v4 + v5;
}

- (id)transitionStateForType:(unint64_t)a3 interactive:(BOOL)a4 translation:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4;
  v10 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
  v11 = [(CCUIOverlayStatusBarPresentationProvider *)self metricsProvider];
  if (([v11 overlayInterfaceOrientation] - 3) > 1 || (objc_msgSend(MEMORY[0x277D75418], "currentDevice"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "userInterfaceIdiom"), v12, v13))
  {
    [(CCUIOverlayStatusBarPresentationProvider *)self _effectiveTransitionHeight];
  }

  else
  {
    [(CCUIOverlayStatusBarPresentationProvider *)self _presentedViewFrame];
    MinY = CGRectGetMinY(v32);
  }

  if (a3 != 1)
  {
    MinY = -MinY;
  }

  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __91__CCUIOverlayStatusBarPresentationProvider_transitionStateForType_interactive_translation___block_invoke;
  v24 = &unk_278381E68;
  v25 = v11;
  v26 = v10;
  v27 = x;
  v28 = y;
  v29 = MinY;
  v30 = a3;
  v15 = y / MinY;
  v16 = v10;
  v17 = v11;
  v18 = __91__CCUIOverlayStatusBarPresentationProvider_transitionStateForType_interactive_translation___block_invoke(&v21);
  v19 = [CCUIOverlayTransitionState stateWithType:a3 interactive:v7 progress:v15 pagingProgress:v18, v21, v22, v23, v24];

  return v19;
}

double __91__CCUIOverlayStatusBarPresentationProvider_transitionStateForType_interactive_translation___block_invoke(uint64_t a1)
{
  v2 = 0.0;
  if ([*(a1 + 32) overlayPageCount] >= 2)
  {
    v3 = [*(a1 + 40) overlayPageControl];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [*(a1 + 40) pagingView];
    [v3 convertRect:v12 toView:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v23.origin.x = v14;
    v23.origin.y = v16;
    v23.size.width = v18;
    v23.size.height = v20;
    v21 = fmin(fmax((*(a1 + 56) - *(a1 + 64)) / (CGRectGetMinY(v23) - *(a1 + 64)), 0.0), 1.0);
    if (*(a1 + 72) == 1)
    {
      v2 = v21;
    }

    else
    {
      v2 = 0.0;
    }
  }

  return v2;
}

- (unint64_t)finalTransitionTypeForState:(id)a3 gestureTranslation:(CGPoint)a4 gestureVelocity:(CGPoint)a5
{
  v5 = a3;
  v6 = BSFloatGreaterThanOrEqualToFloat();
  v7 = [v5 type];
  if (v6)
  {
    if (v7 == 1)
    {
      v8 = BSFloatGreaterThanFloat();
    }

    else if (BSFloatLessThanFloat())
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (v7 == 1)
    {
      [v5 snappedStatusBarPresentationProgress];
    }

    else
    {
      [v5 snappedPresentationProgress];
    }

    if (BSFloatIsOne())
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  return v8;
}

- (id)animationBatchForTransitionState:(id)a3 previousTransitionState:(id)a4 gestureVelocity:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(CCUIAnimationBatch);
  [(CCUIOverlayStatusBarPresentationProvider *)self _addLeadingStatusBarAlphaAnimationToBatch:v11 transitionState:v9];
  [(CCUIOverlayStatusBarPresentationProvider *)self _addHeaderContentTransformAnimationToBatch:v11 transitionState:v9 previousTransitionState:v10 gestureVelocity:x, y];
  [(CCUIOverlayStatusBarPresentationProvider *)self _addHeaderSensorStatusViewAlphaAnimationToBatch:v11 transitionState:v9];
  v12 = [CCUIOverlayTransitionState isSignificantStatusBarTransitionFrom:v10 to:v9];

  if (v12)
  {
    if (UIAccessibilityIsReduceMotionEnabled())
    {
      [(CCUIOverlayStatusBarPresentationProvider *)self _addReducedMotionStatusBarStateAnimationToBatch:v11 transitionState:v9];
    }

    else
    {
      [(CCUIOverlayStatusBarPresentationProvider *)self _addStatusBarStateAnimationToBatch:v11 transitionState:v9];
      [(CCUIOverlayStatusBarPresentationProvider *)self _addStatusBarAlphaAnimationToBatch:v11 transitionState:v9];
    }
  }

  return v11;
}

- (id)moduleViewAnimationBatchForTransitionState:(id)a3 moduleView:(id)a4 layoutRect:(CCUILayoutRect *)a5 gestureVelocity:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v10 = a3;
  v11 = a4;
  v12 = objc_alloc_init(CCUIAnimationBatch);
  v13 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __125__CCUIOverlayStatusBarPresentationProvider_moduleViewAnimationBatchForTransitionState_moduleView_layoutRect_gestureVelocity___block_invoke;
  v19[3] = &unk_278381E90;
  v19[4] = self;
  v14 = v12;
  v20 = v14;
  v21 = v10;
  v22 = x;
  v23 = y;
  v15 = v10;
  [v13 performIfDisplayingModuleView:v11 subview:0 block:v19];

  v16 = v21;
  v17 = v14;

  return v14;
}

void __125__CCUIOverlayStatusBarPresentationProvider_moduleViewAnimationBatchForTransitionState_moduleView_layoutRect_gestureVelocity___block_invoke(double *a1, void *a2, __int128 *a3)
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  v8 = a3[1];
  v16 = *a3;
  v17 = v8;
  v9 = a1[7];
  v10 = a1[8];
  v11 = a2;
  [v5 _addModuleTransformAnimationsToBatch:v6 transitionState:v7 previousTransitionState:0 moduleView:v11 layoutRect:&v16 gestureVelocity:{v9, v10}];
  v12 = *(a1 + 4);
  v13 = *(a1 + 5);
  v14 = *(a1 + 6);
  v15 = a3[1];
  v16 = *a3;
  v17 = v15;
  [v12 _addModuleScaleAnimationsToBatch:v13 transitionState:v14 moduleView:v11 layoutRect:&v16];
}

- (id)secondaryAnimationBatchForTransitionState:(id)a3 previousTransitionState:(id)a4 gestureVelocity:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(CCUIAnimationBatch);
  [(CCUIOverlayStatusBarPresentationProvider *)self _addBackgroundViewWeightingAnimationToBatch:v11 transitionState:v9];
  [(CCUIOverlayStatusBarPresentationProvider *)self _addModuleTransformAnimationsToBatch:v11 transitionState:v9 previousTransitionState:v10 gestureVelocity:x, y];
  [(CCUIOverlayStatusBarPresentationProvider *)self _addModuleScaleAnimationsToBatch:v11 transitionState:v9];
  v12 = [CCUIOverlayTransitionState isSignificantTransitionFrom:v10 to:v9];

  if (v12)
  {
    [(CCUIOverlayStatusBarPresentationProvider *)self _addModuleAlphaAnimationsToBatch:v11 transitionState:v9];
    [(CCUIOverlayStatusBarPresentationProvider *)self _addAccessoryScaleAnimationsToBatch:v11 transitionState:v9];
    [(CCUIOverlayStatusBarPresentationProvider *)self _addAccessoryAlphaAnimationsToBatch:v11 transitionState:v9];
  }

  return v11;
}

- (id)prepareForPresentation
{
  v3 = objc_alloc_init(CCUIAnimationBatch);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__handleReduceMotionStateChangedNotification_ name:*MEMORY[0x277D764C0] object:0];

  [(CCUIOverlayStatusBarPresentationProvider *)self _setUpStretchSources];
  v5 = [(CCUIOverlayStatusBarPresentationProvider *)self metricsProvider];
  v6 = [v5 overlayStatusBarStyle];
  v7 = [v6 isHidden];

  if (v7)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__CCUIOverlayStatusBarPresentationProvider_prepareForPresentation__block_invoke;
    v13[3] = &unk_278381DF0;
    v13[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v13];
    v8 = [objc_opt_class() _hiddenStatusBarFadeAnimationParameters];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__CCUIOverlayStatusBarPresentationProvider_prepareForPresentation__block_invoke_2;
    v12[3] = &unk_278381DF0;
    v12[4] = self;
    v9 = [CCUIAnimation animationWithParameters:v8 animations:v12];
    [(CCUIAnimationBatch *)v3 addAnimation:v9];
  }

  else
  {
    v10 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
    [v10 setOverlayStatusBarHidden:0];
  }

  return v3;
}

void __66__CCUIOverlayStatusBarPresentationProvider_prepareForPresentation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewProvider];
  [v1 setOverlayStatusBarHidden:1];
}

void __66__CCUIOverlayStatusBarPresentationProvider_prepareForPresentation__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) viewProvider];
  [v1 setOverlayStatusBarHidden:0];
}

- (id)cleanupForDismissal
{
  v3 = objc_alloc_init(CCUIAnimationBatch);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  [(CCUIOverlayStatusBarPresentationProvider *)self _tearDownStretchSources];
  v5 = [(CCUIOverlayStatusBarPresentationProvider *)self metricsProvider];
  v6 = [v5 overlayStatusBarStyle];
  v7 = [v6 isHidden];

  if (v7)
  {
    v8 = [objc_opt_class() _hiddenStatusBarFadeAnimationParameters];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__CCUIOverlayStatusBarPresentationProvider_cleanupForDismissal__block_invoke;
    v12[3] = &unk_278381DF0;
    v12[4] = self;
    v9 = [CCUIAnimation animationWithParameters:v8 animations:v12];
    [(CCUIAnimationBatch *)v3 addAnimation:v9];
  }

  else
  {
    v10 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
    [v10 setOverlayStatusBarHidden:1];
  }

  return v3;
}

void __63__CCUIOverlayStatusBarPresentationProvider_cleanupForDismissal__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewProvider];
  [v1 setOverlayStatusBarHidden:1];
}

- (id)transitionBetweenEditing
{
  v3 = objc_alloc_init(CCUIAnimationBatch);
  v4 = [(CCUIOverlayStatusBarPresentationProvider *)self _isEditing];
  v5 = [objc_opt_class() _editingC2AnimationParametersToEditing:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__CCUIOverlayStatusBarPresentationProvider_transitionBetweenEditing__block_invoke;
  v8[3] = &unk_278381EB8;
  v8[4] = self;
  v9 = v4;
  v6 = [CCUIAnimation animationWithParameters:v5 animations:v8];
  [(CCUIAnimationBatch *)v3 addAnimation:v6];

  return v3;
}

void __68__CCUIOverlayStatusBarPresentationProvider_transitionBetweenEditing__block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) viewProvider];
  v2 = [v8 overlayHeaderView];
  v3 = v2;
  if (*(a1 + 40))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  [v2 setAlpha:v4];

  v5 = [v8 editingAccessoryView];
  v6 = v5;
  if (*(a1 + 40))
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [v5 setAlpha:v7];

  [*(a1 + 32) layoutViews];
}

- (CGRect)_presentedViewFrame
{
  v3 = [(CCUIOverlayStatusBarPresentationProvider *)self metricsProvider];
  [v3 overlayContainerFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 overlayContentSize];
  BSRectWithSize();
  v13 = v12;
  v15 = v14;
  v16 = [v3 overlayInterfaceOrientation];
  [(CCUIOverlayStatusBarPresentationProvider *)self _edgeInsetsForContentSize:v16 withinBounds:v13 contentEdgeInsets:v15 orientation:v5, v7, v9, v11, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  v18 = v5 + v17;
  v20 = v7 + v19;
  v22 = v9 - (v17 + v21);
  v24 = v11 - (v19 + v23);

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (UIEdgeInsets)_edgeInsetsForContentSize:(CGSize)a3 withinBounds:(CGRect)a4 contentEdgeInsets:(UIEdgeInsets)a5 orientation:(int64_t)a6
{
  if ((a6 - 1) < 2 || (height = a4.size.height, width = a4.size.width, y = a4.origin.y, x = a4.origin.x, v11 = a3.height, v12 = a3.width, [MEMORY[0x277D75418] currentDevice], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "userInterfaceIdiom"), v13, (v14 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    v16 = *(MEMORY[0x277D768C8] + 8);
    v15 = *(MEMORY[0x277D768C8] + 16);
    v17 = *(MEMORY[0x277D768C8] + 24);
    [(CCUIOverlayStatusBarPresentationProvider *)self _additionalHeaderOffset:a3.width];
    v19 = v18;
    [(CCUIOverlayStatusBarPresentationProvider *)self _effectiveHeaderViewHeight];
    v21 = v19 + v20;
  }

  else
  {
    v22 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
    v23 = [v22 overlayContainerView];
    v24 = [v23 traitCollection];
    [v24 displayScale];

    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v25 = fmax(CGRectGetWidth(v31) - v12, 0.0);
    UIRoundToScale();
    v16 = v26;
    v17 = v25 - v26;
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v27 = fmax(CGRectGetHeight(v32) - v11, 0.0);
    UIRoundToScale();
    v15 = v27 - v21;
  }

  v28 = v16;
  v29 = v15;
  v30 = v17;
  result.right = v30;
  result.bottom = v29;
  result.left = v28;
  result.top = v21;
  return result;
}

- (double)_headerViewFrameForContentSize:(double)a3 withinBounds:(CGFloat)a4 contentInset:(CGFloat)a5 contentEdgeInsets:(CGFloat)a6 orientation:(CGFloat)a7
{
  v16 = [MEMORY[0x277D75418] currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if ((v17 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v18 = [MEMORY[0x277D75128] sharedApplication];
    v19 = 0.0;
    if ([v18 userInterfaceLayoutDirection] != 1)
    {
      v21.origin.x = a4;
      v21.origin.y = a5;
      v21.size.width = a6;
      v21.size.height = a7;
      v19 = CGRectGetWidth(v21) - a2;
    }

    [a1 _additionalHeaderOffset];
    [a1 _effectiveHeaderViewHeight];
  }

  else
  {
    if ((a9 - 1) > 1)
    {
      v23.origin.x = a4;
      v23.origin.y = a5;
      v23.size.width = a6;
      v23.size.height = a7;
      CGRectGetWidth(v23);
      [a1 _additionalHeaderHeight];
    }

    else
    {
      [a1 _additionalHeaderOffset];
      v22.origin.x = a4;
      v22.origin.y = a5;
      v22.size.width = a6;
      v22.size.height = a7;
      CGRectGetWidth(v22);
      [a1 _effectiveHeaderViewHeight];
    }

    return 0.0;
  }

  return v19;
}

- (double)_additionalHeaderOffsetForEditing:(BOOL)a3
{
  result = 0.0;
  if (a3)
  {
    v5 = -CCUIStatusBarHeight();
    [(CCUIOverlayStatusBarPresentationProvider *)self _additionalHeaderHeight];
    return v5 - v6;
  }

  return result;
}

+ (id)_hiddenStatusBarFadeAnimationParameters
{
  if (_hiddenStatusBarFadeAnimationParameters_onceToken != -1)
  {
    +[CCUIOverlayStatusBarPresentationProvider _hiddenStatusBarFadeAnimationParameters];
  }

  v3 = _hiddenStatusBarFadeAnimationParameters_parameters;

  return v3;
}

void __83__CCUIOverlayStatusBarPresentationProvider__hiddenStatusBarFadeAnimationParameters__block_invoke()
{
  v2 = objc_alloc_init(CCUIMutableCABasicAnimationParameters);
  [(CCUIMutableCABasicAnimationParameters *)v2 setDuration:0.35];
  v0 = [(CCUIMutableCABasicAnimationParameters *)v2 copy];
  v1 = _hiddenStatusBarFadeAnimationParameters_parameters;
  _hiddenStatusBarFadeAnimationParameters_parameters = v0;
}

+ (id)_baseC2AnimationParametersForTransitionState:(id)a3
{
  v3 = a3;
  if (_baseC2AnimationParametersForTransitionState__onceToken != -1)
  {
    +[CCUIOverlayStatusBarPresentationProvider _baseC2AnimationParametersForTransitionState:];
  }

  if ([v3 isInteractive])
  {
    v4 = _baseC2AnimationParametersForTransitionState__baseInteractiveParameters;
  }

  else
  {
    [v3 clampedPresentationProgress];
    if (BSFloatIsZero())
    {
      v4 = _baseC2AnimationParametersForTransitionState__baseDismissParameters;
    }

    else
    {
      IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
      v6 = &_baseC2AnimationParametersForTransitionState__baseReduceMotionPresentParameters;
      if (!IsReduceMotionEnabled)
      {
        v6 = &_baseC2AnimationParametersForTransitionState__basePresentParameters;
      }

      v4 = *v6;
    }
  }

  v7 = v4;

  return v4;
}

void __89__CCUIOverlayStatusBarPresentationProvider__baseC2AnimationParametersForTransitionState___block_invoke()
{
  v11 = objc_alloc_init(CCUIMutableC2AnimationParameters);
  [(CCUIMutableC2AnimationParameters *)v11 setTension:250.0];
  [(CCUIMutableC2AnimationParameters *)v11 setFriction:22.0];
  v13 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(CCUIMutableC2AnimationParameters *)v11 setFrameRateRange:*&v13.minimum, *&v13.maximum, *&v13.preferred];
  [(CCUIMutableC2AnimationParameters *)v11 setHighFrameRateReason:2031617];
  v0 = [(CCUIMutableC2AnimationParameters *)v11 copy];
  v1 = _baseC2AnimationParametersForTransitionState__basePresentParameters;
  _baseC2AnimationParametersForTransitionState__basePresentParameters = v0;

  v2 = objc_alloc_init(CCUIMutableC2AnimationParameters);
  [(CCUIMutableC2AnimationParameters *)v2 setTension:250.0];
  [(CCUIMutableC2AnimationParameters *)v2 setFriction:30.0];
  v14 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(CCUIMutableC2AnimationParameters *)v2 setFrameRateRange:*&v14.minimum, *&v14.maximum, *&v14.preferred];
  [(CCUIMutableC2AnimationParameters *)v2 setHighFrameRateReason:2031617];
  v3 = [(CCUIMutableC2AnimationParameters *)v2 copy];
  v4 = _baseC2AnimationParametersForTransitionState__baseReduceMotionPresentParameters;
  _baseC2AnimationParametersForTransitionState__baseReduceMotionPresentParameters = v3;

  v5 = objc_alloc_init(CCUIMutableC2AnimationParameters);
  [(CCUIMutableC2AnimationParameters *)v5 setTension:436.1];
  [(CCUIMutableC2AnimationParameters *)v5 setFriction:41.8];
  v15 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(CCUIMutableC2AnimationParameters *)v5 setFrameRateRange:*&v15.minimum, *&v15.maximum, *&v15.preferred];
  [(CCUIMutableC2AnimationParameters *)v5 setHighFrameRateReason:2031617];
  v6 = [(CCUIMutableC2AnimationParameters *)v5 copy];
  v7 = _baseC2AnimationParametersForTransitionState__baseDismissParameters;
  _baseC2AnimationParametersForTransitionState__baseDismissParameters = v6;

  v8 = objc_alloc_init(CCUIMutableC2AnimationParameters);
  [(CCUIMutableC2AnimationParameters *)v8 setInteractive:1];
  [(CCUIMutableC2AnimationParameters *)v8 setTension:1754.61];
  [(CCUIMutableC2AnimationParameters *)v8 setFriction:72.05];
  v16 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(CCUIMutableC2AnimationParameters *)v8 setFrameRateRange:*&v16.minimum, *&v16.maximum, *&v16.preferred];
  [(CCUIMutableC2AnimationParameters *)v8 setHighFrameRateReason:2031617];
  v9 = [(CCUIMutableC2AnimationParameters *)v8 copy];
  v10 = _baseC2AnimationParametersForTransitionState__baseInteractiveParameters;
  _baseC2AnimationParametersForTransitionState__baseInteractiveParameters = v9;
}

+ (id)_leadingStatusBarCAAnimationParametersForTransitionState:(id)a3
{
  v3 = _leadingStatusBarCAAnimationParametersForTransitionState__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[CCUIOverlayStatusBarPresentationProvider _leadingStatusBarCAAnimationParametersForTransitionState:];
  }

  [v4 snappedStatusBarPresentationProgress];

  IsOne = BSFloatIsOne();
  v6 = &_leadingStatusBarCAAnimationParametersForTransitionState__presentParameters;
  if (!IsOne)
  {
    v6 = &_leadingStatusBarCAAnimationParametersForTransitionState__dismissParameters;
  }

  v7 = *v6;

  return v7;
}

void __101__CCUIOverlayStatusBarPresentationProvider__leadingStatusBarCAAnimationParametersForTransitionState___block_invoke()
{
  v5 = objc_alloc_init(CCUIMutableCASpringAnimationParameters);
  [(CCUIMutableCASpringAnimationParameters *)v5 setMass:1.0];
  [(CCUIMutableCASpringAnimationParameters *)v5 setStiffness:500.0];
  [(CCUIMutableCASpringAnimationParameters *)v5 setDamping:50.0];
  v0 = [(CCUIMutableCASpringAnimationParameters *)v5 copy];
  v1 = _leadingStatusBarCAAnimationParametersForTransitionState__presentParameters;
  _leadingStatusBarCAAnimationParametersForTransitionState__presentParameters = v0;

  v2 = objc_alloc_init(CCUIMutableCASpringAnimationParameters);
  [(CCUIMutableCASpringAnimationParameters *)v2 setMass:1.0];
  [(CCUIMutableCASpringAnimationParameters *)v2 setStiffness:525.0];
  [(CCUIMutableCASpringAnimationParameters *)v2 setDamping:50.0];
  v3 = [(CCUIMutableCASpringAnimationParameters *)v2 copy];
  v4 = _leadingStatusBarCAAnimationParametersForTransitionState__dismissParameters;
  _leadingStatusBarCAAnimationParametersForTransitionState__dismissParameters = v3;
}

+ (id)_trailingStatusBarCAAnimationParametersForTransitionState:(id)a3
{
  v3 = _trailingStatusBarCAAnimationParametersForTransitionState__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[CCUIOverlayStatusBarPresentationProvider _trailingStatusBarCAAnimationParametersForTransitionState:];
  }

  [v4 snappedStatusBarPresentationProgress];

  IsOne = BSFloatIsOne();
  v6 = &_trailingStatusBarCAAnimationParametersForTransitionState__presentParameters;
  if (!IsOne)
  {
    v6 = &_trailingStatusBarCAAnimationParametersForTransitionState__dismissParameters;
  }

  v7 = *v6;

  return v7;
}

void __102__CCUIOverlayStatusBarPresentationProvider__trailingStatusBarCAAnimationParametersForTransitionState___block_invoke()
{
  v5 = objc_alloc_init(CCUIMutableCASpringAnimationParameters);
  [(CCUIMutableCASpringAnimationParameters *)v5 setMass:1.0];
  [(CCUIMutableCASpringAnimationParameters *)v5 setStiffness:150.0];
  [(CCUIMutableCASpringAnimationParameters *)v5 setDamping:50.0];
  v0 = [(CCUIMutableCASpringAnimationParameters *)v5 copy];
  v1 = _trailingStatusBarCAAnimationParametersForTransitionState__presentParameters;
  _trailingStatusBarCAAnimationParametersForTransitionState__presentParameters = v0;

  v2 = objc_alloc_init(CCUIMutableCASpringAnimationParameters);
  [(CCUIMutableCASpringAnimationParameters *)v2 setMass:1.0];
  [(CCUIMutableCASpringAnimationParameters *)v2 setStiffness:525.0];
  [(CCUIMutableCASpringAnimationParameters *)v2 setDamping:50.0];
  v3 = [(CCUIMutableCASpringAnimationParameters *)v2 copy];
  v4 = _trailingStatusBarCAAnimationParametersForTransitionState__dismissParameters;
  _trailingStatusBarCAAnimationParametersForTransitionState__dismissParameters = v3;
}

+ (id)_compactTrailingStatusBarAlphaCAAnimationParametersForTransitionState:(id)a3
{
  v3 = _compactTrailingStatusBarAlphaCAAnimationParametersForTransitionState__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[CCUIOverlayStatusBarPresentationProvider _compactTrailingStatusBarAlphaCAAnimationParametersForTransitionState:];
  }

  [v4 snappedStatusBarPresentationProgress];

  IsOne = BSFloatIsOne();
  v6 = &_compactTrailingStatusBarAlphaCAAnimationParametersForTransitionState__presentParameters;
  if (!IsOne)
  {
    v6 = &_compactTrailingStatusBarAlphaCAAnimationParametersForTransitionState__dismissParameters;
  }

  v7 = *v6;

  return v7;
}

void __114__CCUIOverlayStatusBarPresentationProvider__compactTrailingStatusBarAlphaCAAnimationParametersForTransitionState___block_invoke()
{
  v6 = objc_alloc_init(CCUIMutableCABasicAnimationParameters);
  [(CCUIMutableCABasicAnimationParameters *)v6 setDuration:0.1321];
  v0 = *MEMORY[0x277CDA7B8];
  [(CCUIMutableCABasicAnimationParameters *)v6 setTimingFunction:*MEMORY[0x277CDA7B8]];
  v1 = [(CCUIMutableCABasicAnimationParameters *)v6 copy];
  v2 = _compactTrailingStatusBarAlphaCAAnimationParametersForTransitionState__presentParameters;
  _compactTrailingStatusBarAlphaCAAnimationParametersForTransitionState__presentParameters = v1;

  v3 = objc_alloc_init(CCUIMutableCABasicAnimationParameters);
  [(CCUIMutableCABasicAnimationParameters *)v3 setDuration:0.1321];
  [(CCUIMutableCABasicAnimationParameters *)v3 setTimingFunction:v0];
  v4 = [(CCUIMutableCABasicAnimationParameters *)v3 copy];
  v5 = _compactTrailingStatusBarAlphaCAAnimationParametersForTransitionState__dismissParameters;
  _compactTrailingStatusBarAlphaCAAnimationParametersForTransitionState__dismissParameters = v4;
}

+ (id)_expandedLeadingStatusBarAlphaCAAnimationParametersForTransitionState:(id)a3
{
  v3 = _expandedLeadingStatusBarAlphaCAAnimationParametersForTransitionState__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[CCUIOverlayStatusBarPresentationProvider _expandedLeadingStatusBarAlphaCAAnimationParametersForTransitionState:];
  }

  [v4 snappedStatusBarPresentationProgress];

  IsOne = BSFloatIsOne();
  v6 = &_expandedLeadingStatusBarAlphaCAAnimationParametersForTransitionState__presentParameters;
  if (!IsOne)
  {
    v6 = &_expandedLeadingStatusBarAlphaCAAnimationParametersForTransitionState__dismissParameters;
  }

  v7 = *v6;

  return v7;
}

void __114__CCUIOverlayStatusBarPresentationProvider__expandedLeadingStatusBarAlphaCAAnimationParametersForTransitionState___block_invoke()
{
  v6 = objc_alloc_init(CCUIMutableCABasicAnimationParameters);
  [(CCUIMutableCABasicAnimationParameters *)v6 setDuration:0.2525];
  v0 = *MEMORY[0x277CDA7B8];
  [(CCUIMutableCABasicAnimationParameters *)v6 setTimingFunction:*MEMORY[0x277CDA7B8]];
  v1 = [(CCUIMutableCABasicAnimationParameters *)v6 copy];
  v2 = _expandedLeadingStatusBarAlphaCAAnimationParametersForTransitionState__presentParameters;
  _expandedLeadingStatusBarAlphaCAAnimationParametersForTransitionState__presentParameters = v1;

  v3 = objc_alloc_init(CCUIMutableCABasicAnimationParameters);
  [(CCUIMutableCABasicAnimationParameters *)v3 setDuration:0.0725];
  [(CCUIMutableCABasicAnimationParameters *)v3 setTimingFunction:v0];
  v4 = [(CCUIMutableCABasicAnimationParameters *)v3 copy];
  v5 = _expandedLeadingStatusBarAlphaCAAnimationParametersForTransitionState__dismissParameters;
  _expandedLeadingStatusBarAlphaCAAnimationParametersForTransitionState__dismissParameters = v4;
}

+ (id)_expandedTrailingStatusBarAlphaCAAnimationParametersForTransitionState:(id)a3
{
  v3 = _expandedTrailingStatusBarAlphaCAAnimationParametersForTransitionState__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[CCUIOverlayStatusBarPresentationProvider _expandedTrailingStatusBarAlphaCAAnimationParametersForTransitionState:];
  }

  [v4 snappedStatusBarPresentationProgress];

  IsOne = BSFloatIsOne();
  v6 = &_expandedTrailingStatusBarAlphaCAAnimationParametersForTransitionState__presentParameters;
  if (!IsOne)
  {
    v6 = &_expandedTrailingStatusBarAlphaCAAnimationParametersForTransitionState__dismissParameters;
  }

  v7 = *v6;

  return v7;
}

void __115__CCUIOverlayStatusBarPresentationProvider__expandedTrailingStatusBarAlphaCAAnimationParametersForTransitionState___block_invoke()
{
  v6 = objc_alloc_init(CCUIMutableCABasicAnimationParameters);
  [(CCUIMutableCABasicAnimationParameters *)v6 setDuration:0.0925];
  v0 = *MEMORY[0x277CDA7B8];
  [(CCUIMutableCABasicAnimationParameters *)v6 setTimingFunction:*MEMORY[0x277CDA7B8]];
  v1 = [(CCUIMutableCABasicAnimationParameters *)v6 copy];
  v2 = _expandedTrailingStatusBarAlphaCAAnimationParametersForTransitionState__presentParameters;
  _expandedTrailingStatusBarAlphaCAAnimationParametersForTransitionState__presentParameters = v1;

  v3 = objc_alloc_init(CCUIMutableCABasicAnimationParameters);
  [(CCUIMutableCABasicAnimationParameters *)v3 setDuration:0.1321];
  [(CCUIMutableCABasicAnimationParameters *)v3 setTimingFunction:v0];
  v4 = [(CCUIMutableCABasicAnimationParameters *)v3 copy];
  v5 = _expandedTrailingStatusBarAlphaCAAnimationParametersForTransitionState__dismissParameters;
  _expandedTrailingStatusBarAlphaCAAnimationParametersForTransitionState__dismissParameters = v4;
}

+ (id)_reducedMotionStatusBarStateCAAnimationParameters
{
  if (_reducedMotionStatusBarStateCAAnimationParameters_onceToken != -1)
  {
    +[CCUIOverlayStatusBarPresentationProvider _reducedMotionStatusBarStateCAAnimationParameters];
  }

  v3 = _reducedMotionStatusBarStateCAAnimationParameters_parameters;

  return v3;
}

void __93__CCUIOverlayStatusBarPresentationProvider__reducedMotionStatusBarStateCAAnimationParameters__block_invoke()
{
  v2 = objc_alloc_init(CCUIMutableCABasicAnimationParameters);
  [(CCUIMutableCABasicAnimationParameters *)v2 setDuration:0.35];
  v0 = [(CCUIMutableCABasicAnimationParameters *)v2 copy];
  v1 = _reducedMotionStatusBarStateCAAnimationParameters_parameters;
  _reducedMotionStatusBarStateCAAnimationParameters_parameters = v0;
}

- (id)_moduleTranslationAnimationParametersForTransitionState:(id)a3 previousTransitionState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() _baseC2AnimationParametersForTransitionState:v6];
  v9 = [v8 mutableCopy];

  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v10 = [objc_opt_class() invokeSettings];
    v11 = [v10 scrollAnimationSettings];
    if ([v9 isInteractive])
    {
      [v11 trackingDampingRatio];
      v13 = v12;
      [v11 trackingResponse];
      v15 = v14;
    }

    else
    {
      [v6 clampedPresentationProgress];
      v16 = 0.0;
      if (BSFloatIsOne() && ([(CCUIOverlayStatusBarPresentationProvider *)self _moduleViewStretchPercentageForTransitionState:v7], v18 = fmin(fmax(v17, 0.0), 1.0), BSFloatGreaterThanFloat()))
      {
        v19 = [v10 baseOverscrollSettlingAnimationSettings];

        [v10 maxOverscrollDampingRatioAdjustment];
        v21 = v18 * v20;
        [v10 maxOverscrollResponseAdjustment];
        v16 = v18 * v22;
        v11 = v19;
      }

      else
      {
        v21 = 0.0;
      }

      [v11 dampingRatio];
      v13 = v23 - v21;
      [v11 response];
      v15 = v24 - v16;
    }

    [v9 setDampingRatio:v13 response:v15];
  }

  return v9;
}

+ (id)_accessoryScaleCAAnimationParametersForTransitionState:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CCUIMutableCASpringAnimationParameters);
  v5 = [v3 type];

  [(CCUIMutableCASpringAnimationParameters *)v4 setMass:1.0];
  v6 = dbl_21EAB54B0[v5 == 1];
  [(CCUIMutableCASpringAnimationParameters *)v4 setStiffness:dbl_21EAB54A0[v5 == 1]];
  [(CCUIMutableCASpringAnimationParameters *)v4 setDamping:v6];

  return v4;
}

+ (id)_moduleAlphaCAAnimationParametersForTransitionState:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CCUIMutableCASpringAnimationParameters);
  v5 = [v3 type];

  [(CCUIMutableCASpringAnimationParameters *)v4 setMass:1.0];
  v6 = dbl_21EAB54D0[v5 == 1];
  [(CCUIMutableCASpringAnimationParameters *)v4 setStiffness:dbl_21EAB54C0[v5 == 1]];
  [(CCUIMutableCASpringAnimationParameters *)v4 setDamping:v6];

  return v4;
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
  v13 = __104__CCUIOverlayStatusBarPresentationProvider__addBackgroundViewWeightingAnimationToBatch_transitionState___block_invoke;
  v14 = &unk_278381DC8;
  v15 = self;
  v16 = v6;
  v9 = v6;
  v10 = [CCUIAnimation animationWithParameters:v8 animations:&v11];
  [v7 addAnimation:{v10, v11, v12, v13, v14, v15}];
}

void __104__CCUIOverlayStatusBarPresentationProvider__addBackgroundViewWeightingAnimationToBatch_transitionState___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) viewProvider];
  v2 = [v6 overlayBackgroundView];
  [*(a1 + 40) clampedPresentationProgress];
  v4 = v3;
  [v2 setPresentationProgress:?];
  v5 = [v6 overlayHeaderBackgroundView];
  [v5 setAlpha:v4];
}

- (void)_addLeadingStatusBarAlphaAnimationToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _baseC2AnimationParametersForTransitionState:v6];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __102__CCUIOverlayStatusBarPresentationProvider__addLeadingStatusBarAlphaAnimationToBatch_transitionState___block_invoke;
  v14 = &unk_278381DC8;
  v15 = self;
  v16 = v6;
  v9 = v6;
  v10 = [CCUIAnimation animationWithParameters:v8 animations:&v11];
  [v7 addAnimation:{v10, v11, v12, v13, v14, v15}];
}

void __102__CCUIOverlayStatusBarPresentationProvider__addLeadingStatusBarAlphaAnimationToBatch_transitionState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewProvider];
  v3 = [v2 overlayLeadingStatusBar];

  [*(a1 + 32) _leadingStatusBarAlphaForTransitionState:*(a1 + 40)];
  [v3 setAlpha:?];
}

- (void)_addHeaderContentTransformAnimationToBatch:(id)a3 transitionState:(id)a4 previousTransitionState:(id)a5 gestureVelocity:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v11 = a4;
  v12 = a5;
  v13 = a3;
  v14 = [objc_opt_class() _baseC2AnimationParametersForTransitionState:v11];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __143__CCUIOverlayStatusBarPresentationProvider__addHeaderContentTransformAnimationToBatch_transitionState_previousTransitionState_gestureVelocity___block_invoke;
  v18[3] = &unk_278381F00;
  v19 = v11;
  v20 = v12;
  v22 = x;
  v23 = y;
  v21 = self;
  v15 = v12;
  v16 = v11;
  v17 = [CCUIAnimation animationWithParameters:v14 animations:v18];
  [v13 addAnimation:v17];
}

void __143__CCUIOverlayStatusBarPresentationProvider__addHeaderContentTransformAnimationToBatch_transitionState_previousTransitionState_gestureVelocity___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isInteractive] & 1) != 0 || !objc_msgSend(*(a1 + 40), "isInteractive"))
  {
    IsOne = 0;
  }

  else
  {
    [*(a1 + 32) clampedPresentationProgress];
    IsOne = BSFloatIsOne();
  }

  v3 = *(a1 + 64);
  v38 = 1.0;
  v4 = [*(a1 + 48) viewProvider];
  v5 = [v4 overlayHeaderView];

  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v6 = *(a1 + 48);
  if (v6)
  {
    if (IsOne)
    {
      v7 = &v38;
    }

    else
    {
      v7 = 0;
    }

    [v6 _headerViewTransformForTransitionState:*(a1 + 32) rubberBandSlope:v7];
  }

  if (IsOne)
  {
    v8 = [objc_opt_class() invokeSettings];
    v9 = v3 * v38;
    if (v5)
    {
      [v5 contentTransformVelocity];
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
    }

    [v8 velocityInjectionMaxPercentageOfExpectedVelocityThreshold];
    if (BSFloatLessThanFloat())
    {
      v10 = *(MEMORY[0x277CD9DE8] + 80);
      v22 = *(MEMORY[0x277CD9DE8] + 64);
      v23 = v10;
      v24 = *(MEMORY[0x277CD9DE8] + 96);
      v11 = *(MEMORY[0x277CD9DE8] + 16);
      v18 = *MEMORY[0x277CD9DE8];
      v19 = v11;
      v12 = *(MEMORY[0x277CD9DE8] + 48);
      v20 = *(MEMORY[0x277CD9DE8] + 32);
      v21 = v12;
      v26 = *(MEMORY[0x277CD9DE8] + 112);
      v25 = v9;
      [v5 setContentTransformVelocity:&v18];
    }
  }

  v18 = v35;
  v19 = v36;
  v20 = v37;
  [v5 setContentTransform:&v18];
  v13 = [*(a1 + 48) viewProvider];
  v14 = [v13 overlayHeaderView];
  v15 = [v14 statusBar];

  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v16 = *(a1 + 48);
  if (v16)
  {
    [v16 _compactStatusBar:v15 transformForTransitionState:*(a1 + 32)];
  }

  v17[0] = v18;
  v17[1] = v19;
  v17[2] = v20;
  [v5 setCompactScaleTransform:v17];
}

- (CGAffineTransform)_compactStatusBar:(SEL)a3 transformForTransitionState:(id)a4
{
  [a5 clampedPresentationProgress];
  v8 = v7;
  [(CCUIOverlayStatusBarPresentationProvider *)self _effectiveTransitionHeight];
  v10 = fmin(v8 * (v9 / (CCUIStatusBarHeight() * 0.75)), 1.0);
  v11 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
  v12 = [v11 overlayHeaderView];
  v13 = [v12 statusBar];
  [v13 maxCompactScaleFactor];
  v15 = v14;

  return CGAffineTransformMakeScale(retstr, (v15 + -1.0) * v10 + 1.0, (v15 + -1.0) * v10 + 1.0);
}

- (CGAffineTransform)_headerViewTransformForTransitionState:(SEL)a3 rubberBandSlope:(id)a4
{
  v19 = a4;
  v8 = [(CCUIOverlayStatusBarPresentationProvider *)self metricsProvider];
  v9 = [v8 overlayInterfaceOrientation];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  if ((v9 - 3) > 1)
  {
    if ((v9 - 1) < 2)
    {
LABEL_7:
      UIAccessibilityIsReduceMotionEnabled();
      v17 = 184.0;
      goto LABEL_8;
    }
  }

  else
  {
    [v19 clampedPresentationProgress];
    if (BSFloatIsZero())
    {
      v10 = [MEMORY[0x277D75418] currentDevice];
      v11 = [v10 userInterfaceIdiom];

      if (!v11)
      {
        [(CCUIOverlayStatusBarPresentationProvider *)self _effectiveTransitionHeight];
        v13 = v12;
        v14 = CCUIStatusBarHeight();
        CGAffineTransformMakeTranslation(retstr, 0.0, -(v13 + v14 * 0.5));
        goto LABEL_9;
      }
    }
  }

  v15 = [MEMORY[0x277D75418] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  v17 = 24.0;
  if ((v16 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    goto LABEL_7;
  }

LABEL_8:
  [(CCUIOverlayStatusBarPresentationProvider *)self _transformForTransitionState:v19 rubberBandingHeight:a5 rubberBandSlope:v17];
LABEL_9:

  return result;
}

- (void)_addStatusBarStateAnimationToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _leadingStatusBarCAAnimationParametersForTransitionState:v6];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __95__CCUIOverlayStatusBarPresentationProvider__addStatusBarStateAnimationToBatch_transitionState___block_invoke;
  v20[3] = &unk_278381DC8;
  v20[4] = self;
  v9 = v6;
  v21 = v9;
  v10 = [CCUIAnimation animationWithParameters:v8 delay:v20 animations:0.0];
  [v7 addAnimation:v10];

  v11 = [objc_opt_class() _trailingStatusBarCAAnimationParametersForTransitionState:v9];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __95__CCUIOverlayStatusBarPresentationProvider__addStatusBarStateAnimationToBatch_transitionState___block_invoke_2;
  v17 = &unk_278381DC8;
  v18 = self;
  v19 = v9;
  v12 = v9;
  v13 = [CCUIAnimation animationWithParameters:v11 delay:&v14 animations:0.0];
  [v7 addAnimation:{v13, v14, v15, v16, v17, v18}];
}

void __95__CCUIOverlayStatusBarPresentationProvider__addStatusBarStateAnimationToBatch_transitionState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewProvider];
  v3 = [v2 overlayHeaderView];
  v4 = [v3 statusBar];

  [*(a1 + 40) snappedStatusBarPresentationProgress];
  [v4 setLeadingState:BSFloatIsOne()];
}

void __95__CCUIOverlayStatusBarPresentationProvider__addStatusBarStateAnimationToBatch_transitionState___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) viewProvider];
  v3 = [v2 overlayHeaderView];
  v4 = [v3 statusBar];

  [*(a1 + 40) snappedStatusBarPresentationProgress];
  [v4 setTrailingState:BSFloatIsOne()];
}

- (void)_addStatusBarAlphaAnimationToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _compactTrailingStatusBarAlphaCAAnimationParametersForTransitionState:v6];
  [v6 snappedStatusBarPresentationProgress];
  if (BSFloatIsOne())
  {
    v9 = 0.03;
  }

  else
  {
    v9 = 0.05283;
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __95__CCUIOverlayStatusBarPresentationProvider__addStatusBarAlphaAnimationToBatch_transitionState___block_invoke;
  v28[3] = &unk_278381DC8;
  v28[4] = self;
  v10 = v6;
  v29 = v10;
  v11 = [CCUIAnimation animationWithParameters:v8 delay:v28 animations:v9];
  [v7 addAnimation:v11];

  v12 = [objc_opt_class() _expandedLeadingStatusBarAlphaCAAnimationParametersForTransitionState:v10];
  [v10 snappedStatusBarPresentationProgress];
  if (BSFloatIsOne())
  {
    v13 = 0.0025;
  }

  else
  {
    v13 = 0.0;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __95__CCUIOverlayStatusBarPresentationProvider__addStatusBarAlphaAnimationToBatch_transitionState___block_invoke_2;
  v26[3] = &unk_278381DC8;
  v26[4] = self;
  v14 = v10;
  v27 = v14;
  v15 = [CCUIAnimation animationWithParameters:v12 delay:v26 animations:v13];
  [v7 addAnimation:v15];

  v16 = [objc_opt_class() _expandedTrailingStatusBarAlphaCAAnimationParametersForTransitionState:v14];
  [v14 snappedStatusBarPresentationProgress];
  if (BSFloatIsOne())
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 0.05283;
  }

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __95__CCUIOverlayStatusBarPresentationProvider__addStatusBarAlphaAnimationToBatch_transitionState___block_invoke_3;
  v23 = &unk_278381DC8;
  v24 = self;
  v25 = v14;
  v18 = v14;
  v19 = [CCUIAnimation animationWithParameters:v16 delay:&v20 animations:v17];
  [v7 addAnimation:{v19, v20, v21, v22, v23, v24}];
}

void __95__CCUIOverlayStatusBarPresentationProvider__addStatusBarAlphaAnimationToBatch_transitionState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewProvider];
  v3 = [v2 overlayHeaderView];
  v5 = [v3 statusBar];

  [*(a1 + 40) snappedStatusBarPresentationProgress];
  [v5 setCompactTrailingAlpha:1.0 - v4];
}

void __95__CCUIOverlayStatusBarPresentationProvider__addStatusBarAlphaAnimationToBatch_transitionState___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) viewProvider];
  v3 = [v2 overlayHeaderView];
  v4 = [v3 statusBar];

  [*(a1 + 40) snappedStatusBarPresentationProgress];
  [v4 setLeadingAlpha:?];
}

void __95__CCUIOverlayStatusBarPresentationProvider__addStatusBarAlphaAnimationToBatch_transitionState___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) viewProvider];
  v3 = [v2 overlayHeaderView];
  v4 = [v3 statusBar];

  [*(a1 + 40) snappedStatusBarPresentationProgress];
  [v4 setExpandedTrailingAlpha:?];
}

- (void)_addHeaderSensorStatusViewAlphaAnimationToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _baseC2AnimationParametersForTransitionState:v6];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __108__CCUIOverlayStatusBarPresentationProvider__addHeaderSensorStatusViewAlphaAnimationToBatch_transitionState___block_invoke;
  v14 = &unk_278381DC8;
  v15 = self;
  v16 = v6;
  v9 = v6;
  v10 = [CCUIAnimation animationWithParameters:v8 animations:&v11];
  [v7 addAnimation:{v10, v11, v12, v13, v14, v15}];
}

void __108__CCUIOverlayStatusBarPresentationProvider__addHeaderSensorStatusViewAlphaAnimationToBatch_transitionState___block_invoke(uint64_t a1)
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

- (void)_addReducedMotionStatusBarStateAnimationToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _reducedMotionStatusBarStateCAAnimationParameters];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __108__CCUIOverlayStatusBarPresentationProvider__addReducedMotionStatusBarStateAnimationToBatch_transitionState___block_invoke;
  v14 = &unk_278381DC8;
  v15 = self;
  v16 = v6;
  v9 = v6;
  v10 = [CCUIAnimation animationWithParameters:v8 animations:&v11];
  [v7 addAnimation:{v10, v11, v12, v13, v14, v15}];
}

void __108__CCUIOverlayStatusBarPresentationProvider__addReducedMotionStatusBarStateAnimationToBatch_transitionState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewProvider];
  v3 = [v2 overlayHeaderView];
  v6 = [v3 statusBar];

  [*(a1 + 40) snappedStatusBarPresentationProgress];
  IsOne = BSFloatIsOne();
  [v6 setLeadingState:IsOne];
  [v6 setTrailingState:IsOne];
  [*(a1 + 40) snappedStatusBarPresentationProgress];
  [v6 setCompactTrailingAlpha:1.0 - v5];
  [*(a1 + 40) snappedStatusBarPresentationProgress];
  [v6 setLeadingAlpha:?];
  [*(a1 + 40) snappedStatusBarPresentationProgress];
  [v6 setExpandedTrailingAlpha:?];
}

- (void)_addModuleTransformAnimationsToBatch:(id)a3 transitionState:(id)a4 previousTransitionState:(id)a5 gestureVelocity:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __137__CCUIOverlayStatusBarPresentationProvider__addModuleTransformAnimationsToBatch_transitionState_previousTransitionState_gestureVelocity___block_invoke;
  v30[3] = &unk_278381F28;
  v30[4] = self;
  v31 = v11;
  v15 = v12;
  v32 = v15;
  v16 = v13;
  v33 = v16;
  v34 = x;
  v35 = y;
  v17 = v11;
  [v14 enumerateOverlayModuleViewsWithBlock:v30];

  if (([v15 isInteractive] & 1) != 0 || !objc_msgSend(v16, "isInteractive"))
  {
    IsOne = 0;
  }

  else
  {
    [v15 clampedPresentationProgress];
    IsOne = BSFloatIsOne();
  }

  v29 = 0x3FF0000000000000;
  memset(&v28, 0, sizeof(v28));
  [(CCUIOverlayStatusBarPresentationProvider *)self _moduleViewRubberBandingHeight];
  v19 = IsOne & 1;
  if (IsOne)
  {
    v20 = &v29;
  }

  else
  {
    v20 = 0;
  }

  [(CCUIOverlayStatusBarPresentationProvider *)self _transformForTransitionState:v15 rubberBandingHeight:v20 rubberBandSlope:?];
  transform = v28;
  memset(&v27, 0, sizeof(v27));
  CGAffineTransformDecompose(&v27, &transform);
  dy = v27.translation.dy;
  v22 = [(CCUIOverlayStatusBarPresentationProvider *)self _moduleTranslationAnimationParametersForTransitionState:v15 previousTransitionState:v16];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __137__CCUIOverlayStatusBarPresentationProvider__addModuleTransformAnimationsToBatch_transitionState_previousTransitionState_gestureVelocity___block_invoke_2;
  v24[3] = &unk_278381F50;
  v24[4] = self;
  v25 = v19;
  *&v24[5] = y;
  v24[6] = v29;
  *&v24[7] = dy;
  v23 = [CCUIAnimation animationWithParameters:v22 animations:v24];
  [v17 addAnimation:v23];
}

uint64_t __137__CCUIOverlayStatusBarPresentationProvider__addModuleTransformAnimationsToBatch_transitionState_previousTransitionState_gestureVelocity___block_invoke(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return [v3 _addModuleTransformAnimationsToBatch:v4 transitionState:v5 previousTransitionState:v6 moduleView:a2 layoutRect:v9 gestureVelocity:{*(a1 + 64), *(a1 + 72)}];
}

void __137__CCUIOverlayStatusBarPresentationProvider__addModuleTransformAnimationsToBatch_transitionState_previousTransitionState_gestureVelocity___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) scrollPositionProperty];
  if (*(a1 + 64) == 1)
  {
    v2 = [objc_opt_class() invokeSettings];
    v3 = *(a1 + 40) * *(a1 + 48);
    [v5 velocity];
    [v2 velocityInjectionMaxPercentageOfExpectedVelocityThreshold];
    if (BSFloatLessThanFloat())
    {
      [v5 setVelocity:v3];
    }
  }

  v4 = [*(a1 + 32) scrollPositionProperty];
  [v4 setValue:*(a1 + 56)];
}

- (void)_addModuleTransformAnimationsToBatch:(id)a3 transitionState:(id)a4 previousTransitionState:(id)a5 moduleView:(id)a6 layoutRect:(CCUILayoutRect *)a7 gestureVelocity:(CGPoint)a8
{
  y = a8.y;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a3;
  v17 = [(CCUIOverlayStatusBarPresentationProvider *)self _moduleTranslationAnimationParametersForTransitionState:v13 previousTransitionState:v14];
  if ([v13 isInteractive])
  {
    LOBYTE(v18) = 0;
  }

  else
  {
    v18 = [v14 isInteractive];
    if (v18)
    {
      [v13 clampedPresentationProgress];
      LOBYTE(v18) = BSFloatIsOne();
    }
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __159__CCUIOverlayStatusBarPresentationProvider__addModuleTransformAnimationsToBatch_transitionState_previousTransitionState_moduleView_layoutRect_gestureVelocity___block_invoke;
  v22[3] = &unk_278381F78;
  v22[4] = self;
  v23 = v13;
  v26 = v18;
  v24 = v15;
  v25 = y;
  v19 = v15;
  v20 = v13;
  v21 = [CCUIAnimation animationWithParameters:v17 animations:v22];
  [v16 addAnimation:v21];
}

void __159__CCUIOverlayStatusBarPresentationProvider__addModuleTransformAnimationsToBatch_transitionState_previousTransitionState_moduleView_layoutRect_gestureVelocity___block_invoke(uint64_t a1)
{
  v33 = 1.0;
  memset(&v32, 0, sizeof(v32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v2 _moduleViewRubberBandingHeight];
  if (v2)
  {
    if (*(a1 + 64))
    {
      v4 = &v33;
    }

    else
    {
      v4 = 0;
    }

    [v2 _transformForTransitionState:v3 rubberBandingHeight:v4 rubberBandSlope:?];
  }

  else
  {
    memset(&v32, 0, sizeof(v32));
  }

  memset(&v31, 0, sizeof(v31));
  transform = v32;
  CGAffineTransformDecompose(&v31, &transform);
  v5 = [*(a1 + 48) c2AnimationContainerView];
  if (*(a1 + 64) == 1)
  {
    v6 = [objc_opt_class() invokeSettings];
    v7 = *(a1 + 56) * v33;
    v8 = [v5 _velocityForKey:@"transform"];
    v9 = v8;
    if (v8)
    {
      [v8 CATransform3DValue];
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
    }

    [v6 velocityInjectionMaxPercentageOfExpectedVelocityThreshold];
    if (BSFloatLessThanFloat())
    {
      v10 = *(MEMORY[0x277CD9DE8] + 80);
      v18 = *(MEMORY[0x277CD9DE8] + 64);
      v19 = v10;
      v20 = *(MEMORY[0x277CD9DE8] + 96);
      v11 = *(MEMORY[0x277CD9DE8] + 16);
      *&transform.a = *MEMORY[0x277CD9DE8];
      *&transform.c = v11;
      v12 = *(MEMORY[0x277CD9DE8] + 48);
      *&transform.tx = *(MEMORY[0x277CD9DE8] + 32);
      v17 = v12;
      v22 = *(MEMORY[0x277CD9DE8] + 112);
      v21 = v7;
      v13 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&transform];
      [v5 _setVelocity:v13 forKey:@"transform"];
    }
  }

  memset(&transform, 0, sizeof(transform));
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
  }

  CGAffineTransformDecompose(&transform, &v15);
  *&transform.tx = v31.translation;
  *&v14.tx = v31.translation;
  memset(&v15, 0, sizeof(v15));
  *&v14.a = *&transform.a;
  *&v14.c = *&transform.c;
  CGAffineTransformMakeWithComponents(&v15, &v14);
  v14 = v15;
  [v5 setTransform:&v14];
}

- (double)_moduleViewRubberBandingHeight
{
  v2 = [(CCUIOverlayStatusBarPresentationProvider *)self metricsProvider];
  v3 = [objc_opt_class() invokeSettings];
  if (([v2 overlayInterfaceOrientation] - 1) < 2 || (objc_msgSend(MEMORY[0x277D75418], "currentDevice"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "userInterfaceIdiom"), v4, (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    [v3 overscrollRubberbandDistance];
  }

  else
  {
    [v3 landscapeOverscrollRubberbandDistance];
  }

  v7 = v6;

  return v7;
}

- (void)_addModuleScaleAnimationsToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__CCUIOverlayStatusBarPresentationProvider__addModuleScaleAnimationsToBatch_transitionState___block_invoke;
  v11[3] = &unk_278381FA0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateOverlayModuleViewsWithBlock:v11];
}

uint64_t __93__CCUIOverlayStatusBarPresentationProvider__addModuleScaleAnimationsToBatch_transitionState___block_invoke(void *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  return [v3 _addModuleScaleAnimationsToBatch:v4 transitionState:v5 moduleView:a2 layoutRect:v8];
}

- (double)_moduleViewStretchPercentageForTransitionState:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    [(CCUIOverlayStatusBarPresentationProvider *)self _maxBaseTranslation];
    [v4 nonZeroPresentationProgress];
    [v4 clampedPresentationProgress];
    v6 = [objc_opt_class() invokeSettings];
    [v6 overscrollRubberbandDistance];
    v8 = v7;

    BSUIConstrainValueWithRubberBand();
    v5 = v9 / v8;
  }

  return v5;
}

- (CGAffineTransform)_accessoryScaleTransformForTransitionState:(SEL)a3 layoutRect:(id)a4
{
  v10 = a4;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v6 = MEMORY[0x277CBF2C0];
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v7;
    *&retstr->tx = *(v6 + 32);
  }

  else
  {
    [v10 snappedPresentationProgress];
    *&retstr->a = 0u;
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    CGAffineTransformMakeScale(retstr, v8 + (1.0 - v8) * 0.8, v8 + (1.0 - v8) * 0.8);
  }

  return result;
}

- (void)_addModuleContainerAlphaAnimationToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _moduleAlphaCAAnimationParametersForTransitionState:v6];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __101__CCUIOverlayStatusBarPresentationProvider__addModuleContainerAlphaAnimationToBatch_transitionState___block_invoke;
  v14 = &unk_278381DC8;
  v15 = v6;
  v16 = self;
  v9 = v6;
  v10 = [CCUIAnimation animationWithParameters:v8 animations:&v11];
  [v7 addAnimation:{v10, v11, v12, v13, v14}];
}

void __101__CCUIOverlayStatusBarPresentationProvider__addModuleContainerAlphaAnimationToBatch_transitionState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) snappedPresentationProgress];
  v3 = fmax(v2, 0.011);
  v5 = [*(a1 + 40) viewProvider];
  v4 = [v5 moduleContainerView];
  [v4 setAlpha:v3];
}

- (void)_addModuleAlphaAnimationsToBatch:(id)a3 transitionState:(id)a4 moduleView:(id)a5 layoutRect:(CCUILayoutRect *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [objc_opt_class() _moduleAlphaCAAnimationParametersForTransitionState:v10];
  var1 = a6->var1;
  v26[0] = a6->var0;
  v26[1] = var1;
  [(CCUIOverlayStatusBarPresentationProvider *)self _delayForTransitionState:v10 layoutRect:v26];
  v16 = v15;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __115__CCUIOverlayStatusBarPresentationProvider__addModuleAlphaAnimationsToBatch_transitionState_moduleView_layoutRect___block_invoke;
  v23 = &unk_278381DC8;
  v24 = v11;
  v25 = v10;
  v17 = v10;
  v18 = v11;
  v19 = [CCUIAnimation animationWithParameters:v13 delay:&v20 animations:v16];
  [v12 addAnimation:{v19, v20, v21, v22, v23}];
}

void __115__CCUIOverlayStatusBarPresentationProvider__addModuleAlphaAnimationsToBatch_transitionState_moduleView_layoutRect___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) caAnimationContainerView];
  [*(a1 + 40) snappedPresentationProgress];
  [v2 setAlpha:?];
}

- (void)_addAccessoryScaleAnimationsToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _accessoryScaleCAAnimationParametersForTransitionState:v6];
  v9 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
  v10 = [v9 overlayPageControl];

  v19[0] = xmmword_21EAB5500;
  v19[1] = unk_21EAB5510;
  [(CCUIOverlayStatusBarPresentationProvider *)self _delayForTransitionState:v6 layoutRect:v19];
  v12 = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__CCUIOverlayStatusBarPresentationProvider__addAccessoryScaleAnimationsToBatch_transitionState___block_invoke;
  v16[3] = &unk_278381FC8;
  v16[4] = self;
  v17 = v6;
  v18 = v10;
  v13 = v10;
  v14 = v6;
  v15 = [CCUIAnimation animationWithParameters:v8 delay:v16 animations:v12];
  [v7 addAnimation:v15];
}

uint64_t __96__CCUIOverlayStatusBarPresentationProvider__addAccessoryScaleAnimationsToBatch_transitionState___block_invoke(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v6 = xmmword_21EAB54E0;
    v7 = xmmword_21EAB54F0;
    [v2 _accessoryScaleTransformForTransitionState:v3 layoutRect:&v6];
  }

  v4 = a1[6];
  v6 = v9;
  v7 = v10;
  v8 = v11;
  return [v4 setTransform:&v6];
}

- (void)_addAccessoryAlphaAnimationsToBatch:(id)a3 transitionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _moduleAlphaCAAnimationParametersForTransitionState:v6];
  v9 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
  v10 = [v9 overlayPageControl];

  v22[0] = xmmword_21EAB5500;
  v22[1] = unk_21EAB5510;
  [(CCUIOverlayStatusBarPresentationProvider *)self _delayForTransitionState:v6 layoutRect:v22];
  v12 = v11;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __96__CCUIOverlayStatusBarPresentationProvider__addAccessoryAlphaAnimationsToBatch_transitionState___block_invoke;
  v19 = &unk_278381DC8;
  v20 = v10;
  v21 = v6;
  v13 = v6;
  v14 = v10;
  v15 = [CCUIAnimation animationWithParameters:v8 delay:&v16 animations:v12];
  [v7 addAnimation:{v15, v16, v17, v18, v19}];
}

uint64_t __96__CCUIOverlayStatusBarPresentationProvider__addAccessoryAlphaAnimationsToBatch_transitionState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) snappedPresentationProgress];

  return [v1 setAlpha:?];
}

- (CGAffineTransform)_transformForTransitionState:(SEL)a3 rubberBandingHeight:(id)a4 rubberBandSlope:(double)a5
{
  v9 = a4;
  v10 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
  v11 = [v10 overlayContainerView];
  v12 = [v11 traitCollection];
  [v12 displayScale];

  [(CCUIOverlayStatusBarPresentationProvider *)self _maxBaseTranslation];
  [v9 clampedPresentationProgress];
  [v9 nonZeroPresentationProgress];
  [v9 clampedPresentationProgress];

  BSUIConstrainValueWithRubberBand();
  v14 = v13;
  UIRoundToScale();
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  result = CGAffineTransformMakeTranslation(retstr, 0.0, v15);
  if (a6)
  {
    result = BSUIConstrainValueWithRubberBand();
    *a6 = v17 - v14;
  }

  return result;
}

- (double)_delayForTransitionState:(id)a3 layoutRect:(CCUILayoutRect *)a4
{
  v5 = [a3 type];
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  result = 0.0;
  if (v5 == 2)
  {
    if (!IsReduceMotionEnabled)
    {
      return a4->var0.var0 * 0.016 + a4->var0.var1 * 0.016;
    }
  }

  else if (!IsReduceMotionEnabled)
  {
    return a4->var0.var1 * 0.025;
  }

  return result;
}

- (double)_maxBaseTranslation
{
  v3 = [(CCUIOverlayStatusBarPresentationProvider *)self metricsProvider];
  if (([v3 overlayInterfaceOrientation] - 3) > 1 || (objc_msgSend(MEMORY[0x277D75418], "currentDevice"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "userInterfaceIdiom"), v4, v5))
  {
    [(CCUIOverlayStatusBarPresentationProvider *)self _effectiveTransitionHeight];
    v7 = v6;
    v8 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
    v9 = [v8 overlayHeaderView];
    v10 = [v9 statusBar];
    [v10 verticalSecondaryServiceDelta];
    MinY = v7 - v11;
  }

  else
  {
    [(CCUIOverlayStatusBarPresentationProvider *)self _presentedViewFrame];
    MinY = CGRectGetMinY(v14);
  }

  return MinY;
}

- (void)_setUpStretchSources
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v3 = [(CCUIOverlayStatusBarPresentationProvider *)self rubberBandStretchSource];

    if (!v3)
    {
      v4 = [objc_opt_class() invokeSettings];
      [v4 maxOverscrollStretchScaleMagnitudeForModules];
      v6 = v5;
      v7 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
      v8 = [v7 addModuleStretchSourceWithParameters:{v6, 0.0, 0.0}];

      [(CCUIOverlayStatusBarPresentationProvider *)self setRubberBandStretchSource:v8];
      [v4 maxOverscrollRubberbandModuleSpreadDistance];
      v10 = v9;
      v11 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __64__CCUIOverlayStatusBarPresentationProvider__setUpStretchSources__block_invoke;
      v25[3] = &unk_278382010;
      v25[4] = self;
      v12 = [v11 addModuleStretchSourceWithParameters:v25 stretchTransformer:{0.0, 0.0, v10}];

      [(CCUIOverlayStatusBarPresentationProvider *)self setRubberBandTranslationSource:v12];
      [v4 maxVelocityStretchScaleMagnitudeForModules];
      v14 = v13;
      [v4 maxVelocityStretchScaleScalarMagnitudeForModules];
      v16 = v15;
      v17 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
      v18 = [v17 addModuleStretchSourceWithParameters:{v14, v16, 0.0}];

      [(CCUIOverlayStatusBarPresentationProvider *)self setScrollVelocityStretchSource:v18];
      v19 = objc_alloc_init(MEMORY[0x277D75D38]);
      [v19 setVelocityUsableForVFD:1];
      [(CCUIOverlayStatusBarPresentationProvider *)self setScrollPositionProperty:v19];
      objc_initWeak(&location, self);
      v20 = MEMORY[0x277D75D18];
      v26[0] = v19;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __64__CCUIOverlayStatusBarPresentationProvider__setUpStretchSources__block_invoke_3;
      v22[3] = &unk_278382038;
      objc_copyWeak(&v23, &location);
      [v20 _createTransformerWithInputAnimatableProperties:v21 presentationValueChangedCallback:v22];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }
}

void __64__CCUIOverlayStatusBarPresentationProvider__setUpStretchSources__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
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

  if ((BSFloatIsZero() & 1) == 0)
  {
    v12 = [v11 iconView];
    if (v12)
    {
      v13 = v12;
LABEL_15:
      v17 = [*(a1 + 32) viewProvider];
      v18 = [v11 subview];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __64__CCUIOverlayStatusBarPresentationProvider__setUpStretchSources__block_invoke_2;
      v19[3] = &__block_descriptor_40_e100_v48__0___CCUIContentModuleViewAnimating__8_CCUILayoutRect__CCUILayoutPoint_QQ__CCUILayoutSize_QQ__16l;
      v19[4] = a5;
      [v17 performIfDisplayingModuleView:v13 subview:v18 block:v19];

      goto LABEL_16;
    }

    v14 = objc_opt_class();
    v15 = v9;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v13 = v16;

    if (v13)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
}

double __64__CCUIOverlayStatusBarPresentationProvider__setUpStretchSources__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  result = *(v3 + 8) * (*(a3 + 8) + 1);
  *(v3 + 8) = result;
  return result;
}

void __64__CCUIOverlayStatusBarPresentationProvider__setUpStretchSources__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForScrollPositionChange];
}

- (void)_tearDownStretchSources
{
  v3 = [(CCUIOverlayStatusBarPresentationProvider *)self rubberBandStretchSource];
  [v3 invalidate];

  [(CCUIOverlayStatusBarPresentationProvider *)self setRubberBandStretchSource:0];
  v4 = [(CCUIOverlayStatusBarPresentationProvider *)self rubberBandTranslationSource];
  [v4 invalidate];

  [(CCUIOverlayStatusBarPresentationProvider *)self setRubberBandTranslationSource:0];
  v5 = [(CCUIOverlayStatusBarPresentationProvider *)self scrollVelocityStretchSource];
  [v5 invalidate];

  [(CCUIOverlayStatusBarPresentationProvider *)self setScrollVelocityStretchSource:0];
  v6 = [(CCUIOverlayStatusBarPresentationProvider *)self scrollPositionProperty];
  [v6 invalidate];

  [(CCUIOverlayStatusBarPresentationProvider *)self setScrollPositionProperty:0];
}

- (void)_updateForScrollPositionChange
{
  v3 = [objc_opt_class() invokeSettings];
  [v3 overscrollRubberbandDistance];
  v5 = v4;
  v6 = [(CCUIOverlayStatusBarPresentationProvider *)self scrollPositionProperty];
  [v6 presentationValue];
  v8 = v7 / v5;

  v9 = MEMORY[0x277D75D18];
  v10 = [v3 overscrollRubberbandAnimationSettings];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__CCUIOverlayStatusBarPresentationProvider__updateForScrollPositionChange__block_invoke;
  v18[3] = &unk_278382060;
  v18[4] = self;
  v18[5] = fmin(fmax(v8, 0.0), 1.0);
  [v9 sb_animateWithSettings:v10 mode:3 animations:v18 completion:0];

  v11 = [(CCUIOverlayStatusBarPresentationProvider *)self scrollPositionProperty];
  [v11 velocity];

  [v3 velocityForMaxStretch];
  [v3 velocityStretchPercentageQuantum];
  BSFloatIsZero();
  BSFloatRoundForScale();
  v13 = v12;
  v14 = [(CCUIOverlayStatusBarPresentationProvider *)self scrollVelocityStretchSource];
  [v14 stretchValue];

  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    v15 = MEMORY[0x277D75D18];
    v16 = [v3 stretchAnimationSettings];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__CCUIOverlayStatusBarPresentationProvider__updateForScrollPositionChange__block_invoke_2;
    v17[3] = &unk_278382060;
    v17[4] = self;
    v17[5] = v13;
    [v15 sb_animateWithSettings:v16 mode:3 animations:v17 completion:0];
  }
}

uint64_t __74__CCUIOverlayStatusBarPresentationProvider__updateForScrollPositionChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rubberBandStretchSource];
  [v2 setStretchValue:*(a1 + 40)];

  v3 = [*(a1 + 32) rubberBandTranslationSource];
  [v3 setStretchValue:*(a1 + 40)];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 setRubberBandPageStretchPercentage:v5];
}

uint64_t __74__CCUIOverlayStatusBarPresentationProvider__updateForScrollPositionChange__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) scrollVelocityStretchSource];
  [v2 setStretchValue:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 setVelocityPageStretchPercentage:v4];
}

- (void)setRubberBandPageStretchPercentage:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_rubberBandPageStretchPercentage = a3;

    [(CCUIOverlayStatusBarPresentationProvider *)self _applyPageStretch];
  }
}

- (void)setVelocityPageStretchPercentage:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_velocityPageStretchPercentage = a3;

    [(CCUIOverlayStatusBarPresentationProvider *)self _applyPageStretch];
  }
}

- (void)_applyPageStretch
{
  v16 = [objc_opt_class() invokeSettings];
  [(CCUIOverlayStatusBarPresentationProvider *)self rubberBandPageStretchPercentage];
  v4 = v3;
  [v16 maxOverscrollStretchScaleMagnitudeForPages];
  v6 = v4 * v5;
  [(CCUIOverlayStatusBarPresentationProvider *)self velocityPageStretchPercentage];
  v8 = v7;
  [v16 maxVelocityStretchScaleMagnitudeForPages];
  v10 = v8 * v9;
  [v16 maxVelocityStretchScaleScalarMagnitudeForPages];
  v12 = v8 * v11;
  v13 = (1.0 - v6 - v10) * (1.0 - v12);
  v14 = (v6 + 1.0 + v10) * (v12 + 1.0);
  v15 = [(CCUIOverlayStatusBarPresentationProvider *)self viewProvider];
  [v15 setOverlayPageContentScale:{v13, v14}];
}

- (void)_handleReduceMotionStateChangedNotification:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__CCUIOverlayStatusBarPresentationProvider__handleReduceMotionStateChangedNotification___block_invoke;
  block[3] = &unk_278381DF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __88__CCUIOverlayStatusBarPresentationProvider__handleReduceMotionStateChangedNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _tearDownStretchSources];
  v2 = *(a1 + 32);

  return [v2 _setUpStretchSources];
}

+ (CCUIInvokeSettings)invokeSettings
{
  if (invokeSettings_onceToken != -1)
  {
    +[CCUIOverlayStatusBarPresentationProvider invokeSettings];
  }

  v3 = invokeSettings___invokeSettings;

  return v3;
}

void __58__CCUIOverlayStatusBarPresentationProvider_invokeSettings__block_invoke()
{
  v2 = +[CCUIControlCenterDomain rootSettings];
  v0 = [v2 invokeSettings];
  v1 = invokeSettings___invokeSettings;
  invokeSettings___invokeSettings = v0;
}

@end