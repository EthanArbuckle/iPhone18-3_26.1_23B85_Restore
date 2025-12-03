@interface CAMViewfinderView
- (BOOL)_shouldLayoutPortraitInstructionsAtTop;
- (BOOL)_wantsInterfaceOrientedPreviewForLayoutStyle:(int64_t)style;
- (CAMControlVisibilityDelegate)visibilityDelegate;
- (CAMPanoramaChromeLayoutDelegate)chromePanoramaLayoutDelegate;
- (CAMViewfinderView)initWithCoder:(id)coder;
- (CAMViewfinderView)initWithFrame:(CGRect)frame;
- (CAMViewfinderView)initWithLayoutStyle:(int64_t)style;
- (CGRect)_cameraPreviewFrameForAspectRatio:(int64_t)ratio topBarFrame:(CGRect)frame bottomBarFrame:(CGRect)barFrame shouldShiftPreviewForUtilityBar:(BOOL)bar;
- (CGRect)_frameForBadgeTrayForLayoutStyle:(int64_t)style orientation:(int64_t)orientation;
- (CGRect)_previewFrameForAspectRatio:(int64_t)ratio topBarFrame:(CGRect)frame bottomBarFrame:(CGRect)barFrame shouldShiftPreviewForUtilityBar:(BOOL)bar;
- (CGRect)externalChromeShutterButtonFrame;
- (CGSize)_bottomBarSizeForLayoutStyle:(int64_t)style withProposedSize:(CGSize)size;
- (CGSize)_previewSizeForAspectRatio:(int64_t)ratio;
- (CGSize)_topBarSizeForLayoutStyle:(int64_t)style;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size forAspectRatio:(int64_t)ratio;
- (UIEdgeInsets)_layoutMarginInsetsForLayoutStyle:(int64_t)style;
- (UIOffset)_previewOffset;
- (double)_badgeTrayHeightForLayoutStyle:(int64_t)style;
- (double)_interpolatedBottomBarWidthWithProposedWidth:(double)width;
- (double)_interpolatedTopBarHeight;
- (double)_interpolatedVerticalOffsetForShutterIndicator;
- (double)_multiplierForAspectRatio:(int64_t)ratio;
- (id)_viewToLayoutBadgesBelowForLayoutStyle:(int64_t)style orientation:(int64_t)orientation;
- (id)descriptionOverlayViewForKey:(id)key;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_cameraAppPreviewLayoutForAspectRatio:(int64_t)ratio shouldShiftPreviewForUtilityBar:(BOOL)bar outPreviewBounds:(CGRect *)bounds outPreviewCenter:(CGPoint *)center outFourThreeTopBarFrame:(CGRect *)frame outBottomBarFrame:(CGRect *)barFrame;
- (void)_cameraTopBarForLayoutForLayoutStyle:(int64_t)style shouldAdjustTopBarOrientation:(BOOL)orientation bounds:(CGRect *)bounds center:(CGPoint *)center transform:(CGAffineTransform *)transform;
- (void)_commonCAMViewfinderViewInitializationWithLayoutStyle:(int64_t)style;
- (void)_createPlaceholderSnapshotAndPerformDoubleSidedFadeForView:(id)view fadeOutDuration:(double)duration fadeOutDelay:(double)delay fadeInDuration:(double)inDuration fadeInDelay:(double)inDelay;
- (void)_createPlaceholderSnapshotAndPerformSingleSidedFadeForView:(id)view fadeOutDuration:(double)duration fadeOutDelay:(double)delay;
- (void)_enforceBadgeSubviewOrderingWithAppearingBadges:(id)badges;
- (void)_layoutBadgeTrayForLayoutStyle:(int64_t)style appearingBadges:(id)badges disappearingBadges:(id)disappearingBadges animated:(BOOL)animated;
- (void)_layoutBadgeTrayWithBadges:(id)badges layoutStyle:(int64_t)style;
- (void)_layoutBarExtensionViews;
- (void)_layoutBottomBadgesForLayoutStyle:(int64_t)style;
- (void)_layoutBottomCenteredView:(id)view aboveView:(id)aboveView aboveViewSpacing:(double)spacing forLayoutStyle:(int64_t)style;
- (void)_layoutBurstIndicatorForLayoutStyle:(int64_t)style;
- (void)_layoutCleanLensInstructionLabelForLayoutStyle:(int64_t)style;
- (void)_layoutDescriptionOverlayView:(id)view;
- (void)_layoutElapsedTimeViewForLayoutStyle:(int64_t)style;
- (void)_layoutFlipButtonForLayoutStyle:(int64_t)style;
- (void)_layoutImageAnalysisInstructionLabelForLayoutStyle:(int64_t)style;
- (void)_layoutInstructionLabelOnTop:(id)top forLayoutStyle:(int64_t)style;
- (void)_layoutLightingControlForLayoutStyle:(int64_t)style;
- (void)_layoutMachineReadableCodeButton;
- (void)_layoutPanoramaViewForLayoutStyle:(int64_t)style;
- (void)_layoutPortraitModeInstructionLabelForLayoutStyle:(int64_t)style;
- (void)_layoutQRCodeInstructionLabelForLayoutStyle:(int64_t)style;
- (void)_layoutShutterButtonForLayoutStyle:(int64_t)style;
- (void)_layoutShutterIndicatorForLayoutStyle:(int64_t)style;
- (void)_layoutSnapshotsOfPreviewView;
- (void)_layoutTextInteractionInsertAndActionInfoView;
- (void)_layoutTimerIndicatorViewForLayoutStyle:(int64_t)style;
- (void)_layoutTopBadgesForLayoutStyle:(int64_t)style appearingBadges:(id)badges disappearingBadges:(id)disappearingBadges animated:(BOOL)animated;
- (void)_layoutTopBarForLayoutStyle:(int64_t)style;
- (void)_layoutVideoConfigurationStatusIndicatorForLayoutStyle:(int64_t)style;
- (void)_layoutZoomControlForLayoutStyle:(int64_t)style;
- (void)_layoutZoomSliderForLayoutStyle:(int64_t)style;
- (void)_previewLayoutForAspectRatio:(int64_t)ratio shouldShiftPreviewForUtilityBar:(BOOL)bar outPreviewBounds:(CGRect *)bounds outPreviewCenter:(CGPoint *)center outFourThreeTopBarFrame:(CGRect *)frame outBottomBarFrame:(CGRect *)barFrame;
- (void)_topBarForLayoutForLayoutStyle:(int64_t)style shouldAdjustTopBarOrientation:(BOOL)orientation bounds:(CGRect *)bounds center:(CGPoint *)center transform:(CGAffineTransform *)transform;
- (void)_updateBarExtensionViewsIfNecessary;
- (void)_updateModernLayout;
- (void)adoptMachineReadableCodeButton:(id)button animated:(BOOL)animated;
- (void)badgeViewDidChangeIntrinsicContentSize:(id)size;
- (void)controlStatusIndicatorDidChangeIntrinsicContentSize:(id)size animated:(BOOL)animated;
- (void)dismissMachineReadableCodeButtonAnimated:(BOOL)animated;
- (void)instructionLabelDidChangeIntrinsicContentSize:(id)size;
- (void)layoutSubviews;
- (void)prepareForAutorotation;
- (void)prepareForResumingUsingCrossfade;
- (void)removeInflightBlurAnimations;
- (void)setAutomaticallyAdjustsTopBarOrientation:(BOOL)orientation;
- (void)setBottomBar:(id)bar;
- (void)setBurstIndicatorView:(id)view;
- (void)setChromeView:(id)view;
- (void)setCleanLensesInstructionLabel:(id)label;
- (void)setDescriptionOverlayView:(id)view forKey:(id)key;
- (void)setDesiredAspectRatio:(int64_t)ratio;
- (void)setDisabledModeOverlayView:(id)view;
- (void)setElapsedTimeView:(id)view;
- (void)setExternalChromeShutterButtonFrame:(CGRect)frame;
- (void)setFilterNameBadge:(id)badge;
- (void)setFlipButton:(id)button;
- (void)setFocusAndExposureLockBadge:(id)badge;
- (void)setImageAnalysisInstructionLabel:(id)label;
- (void)setLayoutStyle:(int64_t)style;
- (void)setLightingControl:(id)control;
- (void)setLightingNameBadge:(id)badge;
- (void)setLivePhotoBadge:(id)badge;
- (void)setMaskingAspectRatio:(int64_t)ratio animated:(BOOL)animated;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setPanoramaView:(id)view;
- (void)setPortraitModeInstructionLabel:(id)label;
- (void)setPreviewView:(id)view;
- (void)setQrCodeInstructionLabel:(id)label;
- (void)setShallowDepthOfFieldBadge:(id)badge;
- (void)setSharedLibraryBadge:(id)badge;
- (void)setShowingStandardControls:(BOOL)controls;
- (void)setShutterButton:(id)button;
- (void)setShutterIndicatorView:(id)view;
- (void)setTextInteractionInsert:(id)insert;
- (void)setTimerIndicatorView:(id)view;
- (void)setTopBar:(id)bar;
- (void)setVideoConfigurationStatusIndicator:(id)indicator;
- (void)setVisibleTopBadges:(id)badges animated:(BOOL)animated;
- (void)setZoomControl:(id)control;
- (void)setZoomSlider:(id)slider;
@end

@implementation CAMViewfinderView

- (CAMControlVisibilityDelegate)visibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_visibilityDelegate);

  return WeakRetained;
}

- (BOOL)_shouldLayoutPortraitInstructionsAtTop
{
  visibilityDelegate = [(CAMViewfinderView *)self visibilityDelegate];
  v4 = [visibilityDelegate shouldHideLightingControl] ^ 1;
  lightingControl = [(CAMViewfinderView *)self lightingControl];

  if (lightingControl)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (void)layoutSubviews
{
  v66.receiver = self;
  v66.super_class = CAMViewfinderView;
  [(CAMViewfinderView *)&v66 layoutSubviews];
  [(CAMViewfinderView *)self bounds];
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  MidX = CGRectGetMidX(v67);
  v56 = y;
  v68.origin.x = x;
  v57 = x;
  v68.origin.y = y;
  v68.size.width = width;
  v52 = height;
  v53 = width;
  v68.size.height = height;
  MidY = CGRectGetMidY(v68);
  layoutStyle = [(CAMViewfinderView *)self layoutStyle];
  [(CAMViewfinderView *)self _updateModernLayout];
  chromeView = [(CAMViewfinderView *)self chromeView];
  [chromeView setFrame:{x, y, width, height}];

  visibilityDelegate = [(CAMViewfinderView *)self visibilityDelegate];
  shouldShiftPreviewForUtilityBar = [visibilityDelegate shouldShiftPreviewForUtilityBar];

  desiredAspectRatio = [(CAMViewfinderView *)self desiredAspectRatio];
  v12 = *(MEMORY[0x1E695F058] + 16);
  v64 = *MEMORY[0x1E695F058];
  v65 = v12;
  v13 = *MEMORY[0x1E695EFF8];
  v62 = v12;
  v63 = v13;
  v60 = v12;
  v61 = v64;
  v59 = v64;
  [(CAMViewfinderView *)self _previewLayoutForAspectRatio:desiredAspectRatio shouldShiftPreviewForUtilityBar:shouldShiftPreviewForUtilityBar outPreviewBounds:&v64 outPreviewCenter:&v63 outFourThreeTopBarFrame:&v61 outBottomBarFrame:&v59];
  bottomBar = [(CAMViewfinderView *)self bottomBar];
  [bottomBar setFrame:{v59, v60}];
  [(CAMViewfinderView *)self _utilityBarExtensionDistanceForLayoutStyle:layoutStyle];
  [bottomBar setUtilityBarExtensionDistance:?];
  v15 = v64;
  v16 = v65;
  previewView = [(CAMViewfinderView *)self previewView];
  [previewView setBounds:{v15, v16}];

  v18 = v63;
  previewView2 = [(CAMViewfinderView *)self previewView];
  [previewView2 setCenter:v18];

  v20 = v64;
  v21 = v65;
  previewView3 = [(CAMViewfinderView *)self previewView];
  [previewView3 setViewportFrame:{v20, v21}];

  v23 = v64;
  v24 = v65;
  previewView4 = [(CAMViewfinderView *)self previewView];
  [previewView4 setOverlayFrame:{v23, v24}];

  maskingAspectRatio = [(CAMViewfinderView *)self maskingAspectRatio];
  [(CAMViewfinderView *)self _previewSizeForAspectRatio:maskingAspectRatio];
  v28 = v27;
  v30 = v29;
  [(CAMViewfinderView *)self _previewFrameForAspectRatio:maskingAspectRatio topBarFrame:shouldShiftPreviewForUtilityBar bottomBarFrame:v61 shouldShiftPreviewForUtilityBar:v62, v59, v60];
  v31 = v69.origin.x;
  v32 = v69.origin.y;
  v33 = v69.size.width;
  v34 = v69.size.height;
  v35 = CGRectGetMidX(v69);
  v70.origin.x = v31;
  v70.origin.y = v32;
  v70.size.width = v33;
  v70.size.height = v34;
  v36 = CGRectGetMidY(v70);
  _previewContainerMaskingView = [(CAMViewfinderView *)self _previewContainerMaskingView];
  v38 = _previewContainerMaskingView;
  if (maskingAspectRatio == 3)
  {
    v39 = v36;
  }

  else
  {
    v39 = MidY;
  }

  if (maskingAspectRatio == 3)
  {
    v40 = v35;
  }

  else
  {
    v40 = MidX;
  }

  if (maskingAspectRatio == 3)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = v57;
  }

  if (maskingAspectRatio == 3)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = v56;
  }

  if (maskingAspectRatio == 3)
  {
    v43 = v28;
  }

  else
  {
    v43 = v53;
  }

  if (maskingAspectRatio != 3)
  {
    v30 = v52;
  }

  [_previewContainerMaskingView setCenter:{v40, v39, 0.0, *&v41}];
  [v38 setBounds:{v41, v42, v43, v30}];
  [(CAMViewfinderView *)self convertPoint:v38 toView:MidX, MidY];
  v45 = v44;
  v47 = v46;
  _previewContainerView = [(CAMViewfinderView *)self _previewContainerView];
  [_previewContainerView setBounds:{v57, v56, v53, v52}];
  [_previewContainerView setCenter:{v45, v47}];
  [(CAMViewfinderView *)self _layoutTopBarForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutBarExtensionViews];
  [(CAMViewfinderView *)self _layoutElapsedTimeViewForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutShutterIndicatorForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutBurstIndicatorForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutTimerIndicatorViewForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutVideoConfigurationStatusIndicatorForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutPanoramaViewForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutSnapshotsOfPreviewView];
  [(CAMViewfinderView *)self _layoutLightingControlForLayoutStyle:layoutStyle];
  _descriptionOverlayViewByKey = [(CAMViewfinderView *)self _descriptionOverlayViewByKey];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __35__CAMViewfinderView_layoutSubviews__block_invoke;
  v58[3] = &unk_1E76FB8C8;
  v58[4] = self;
  [_descriptionOverlayViewByKey enumerateKeysAndObjectsUsingBlock:v58];

  [(CAMViewfinderView *)self _layoutPortraitModeInstructionLabelForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutQRCodeInstructionLabelForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutImageAnalysisInstructionLabelForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutCleanLensInstructionLabelForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutTopBadgesForLayoutStyle:layoutStyle animated:0];
  [(CAMViewfinderView *)self _layoutBottomBadgesForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutZoomSliderForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutZoomControlForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutShutterButtonForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutFlipButtonForLayoutStyle:layoutStyle];
  disabledModeOverlayView = [(CAMViewfinderView *)self disabledModeOverlayView];
  [disabledModeOverlayView setFrame:{v51, v42, v43, v30}];
  [disabledModeOverlayView setViewportFrame:{v51, v42, v43, v30}];
  [(CAMViewfinderView *)self _layoutTextInteractionInsertAndActionInfoView];
  [(CAMViewfinderView *)self _layoutMachineReadableCodeButton];
}

- (double)_interpolatedTopBarHeight
{
  [(CAMViewfinderView *)self bounds];
  CGRectGetWidth(v6);
  [(CAMViewfinderView *)self layoutStyle];
  traitCollection = [(CAMViewfinderView *)self traitCollection];
  [traitCollection userInterfaceIdiom];

  UIRoundToViewScale();
  return result;
}

- (void)_layoutBarExtensionViews
{
  [(CAMViewfinderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CAMViewfinderView *)self _layoutMarginInsetsForLayoutStyle:[(CAMViewfinderView *)self layoutStyle]];
  v12 = v11;
  v14 = v13;
  v15 = *MEMORY[0x1E695F058];
  v16 = *(MEMORY[0x1E695F058] + 8);
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  v17 = CGRectGetMaxY(v20) - v14;
  [(UIView *)self->__topBarExtensionView setFrame:v15, v16, v8, v12];
  bottomBarExtensionView = self->__bottomBarExtensionView;

  [(UIView *)bottomBarExtensionView setFrame:v15, v17, v8, v14];
}

- (double)_interpolatedVerticalOffsetForShutterIndicator
{
  [(CAMViewfinderView *)self bounds];
  CGRectGetWidth(v7);
  UIRoundToViewScale();
  v4 = v3;
  result = CAMPixelWidthForView(self) + 71.0;
  v6 = 62.0;
  if (v4 >= 62.0)
  {
    v6 = v4;
  }

  if (v6 < result)
  {
    return v6;
  }

  return result;
}

- (void)_layoutSnapshotsOfPreviewView
{
  v32 = *MEMORY[0x1E69E9840];
  previewView = [(CAMViewfinderView *)self previewView];
  v4 = previewView;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  if (previewView)
  {
    [previewView transform];
  }

  v18 = v4;
  [(CAMViewfinderView *)self _previewContainerView];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v27 = 0u;
  obj = [v17 subviews];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    v8 = MEMORY[0x1E695F058];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          snapshotView = [v11 snapshotView];
          desiredAspectRatio = [v11 desiredAspectRatio];

          visibilityDelegate = [(CAMViewfinderView *)self visibilityDelegate];
          shouldShiftPreviewForUtilityBar = [visibilityDelegate shouldShiftPreviewForUtilityBar];

          v16 = v8[1];
          v22 = *v8;
          v23 = v16;
          v21 = *MEMORY[0x1E695EFF8];
          [(CAMViewfinderView *)self _previewLayoutForAspectRatio:desiredAspectRatio shouldShiftPreviewForUtilityBar:shouldShiftPreviewForUtilityBar outPreviewBounds:&v22 outPreviewCenter:&v21 outFourThreeTopBarFrame:0 outBottomBarFrame:0];
          [snapshotView setBounds:{v22, v23}];
          [snapshotView setCenter:v21];
          v20[0] = v28;
          v20[1] = v29;
          v20[2] = v30;
          [snapshotView setTransform:v20];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v6);
  }
}

- (void)removeInflightBlurAnimations
{
  v14 = *MEMORY[0x1E69E9840];
  _previewContainerView = [(CAMViewfinderView *)self _previewContainerView];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  subviews = [_previewContainerView subviews];
  v4 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 removeInflightBlurAnimations];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)prepareForResumingUsingCrossfade
{
  v14 = *MEMORY[0x1E69E9840];
  _previewContainerView = [(CAMViewfinderView *)self _previewContainerView];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  subviews = [_previewContainerView subviews];
  v4 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 prepareForResumingUsingCrossfade];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_commonCAMViewfinderViewInitializationWithLayoutStyle:(int64_t)style
{
  self->_layoutStyle = style;
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [(CAMViewfinderView *)self setBackgroundColor:blackColor];

  v5 = objc_alloc(MEMORY[0x1E69DD250]);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
  previewContainerView = self->__previewContainerView;
  self->__previewContainerView = v10;

  v12 = self->__previewContainerView;
  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  [(UIView *)v12 setBackgroundColor:blackColor2];

  v14 = [[CAMPreviewContainerMaskingView alloc] initWithFrame:v6, v7, v8, v9];
  previewContainerMaskingView = self->__previewContainerMaskingView;
  self->__previewContainerMaskingView = v14;

  v16 = self->__previewContainerMaskingView;
  blackColor3 = [MEMORY[0x1E69DC888] blackColor];
  [(CAMPreviewContainerMaskingView *)v16 setBackgroundColor:blackColor3];

  [(CAMPreviewContainerMaskingView *)self->__previewContainerMaskingView addSubview:self->__previewContainerView];
  [(CAMViewfinderView *)self _updateModernLayout];
  [(CAMViewfinderView *)self addSubview:self->__previewContainerMaskingView];
  self->_showingStandardControls = 1;
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  descriptionOverlayViewByKey = self->__descriptionOverlayViewByKey;
  self->__descriptionOverlayViewByKey = v18;

  MEMORY[0x1EEE66BB8](v18, descriptionOverlayViewByKey);
}

- (CAMViewfinderView)initWithLayoutStyle:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = CAMViewfinderView;
  v4 = [(CAMViewfinderView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(CAMViewfinderView *)v4 _commonCAMViewfinderViewInitializationWithLayoutStyle:style];
    v6 = v5;
  }

  return v5;
}

- (CAMViewfinderView)initWithFrame:(CGRect)frame
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [(CAMViewfinderView *)self initWithLayoutStyle:cam_initialLayoutStyle];
}

- (CAMViewfinderView)initWithCoder:(id)coder
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [(CAMViewfinderView *)self initWithLayoutStyle:cam_initialLayoutStyle];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  desiredAspectRatio = [(CAMViewfinderView *)self desiredAspectRatio];

  [(CAMViewfinderView *)self systemLayoutSizeFittingSize:desiredAspectRatio forAspectRatio:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size forAspectRatio:(int64_t)ratio
{
  height = size.height;
  width = size.width;
  [(CAMViewfinderView *)self _multiplierForAspectRatio:ratio];
  window = [(CAMViewfinderView *)self window];
  v8 = CAMInterfaceOrientationForWindow(window);

  if (width >= height)
  {
    v9 = height;
  }

  else
  {
    v9 = width;
  }

  UIRoundToViewScale();
  if ((v8 - 3) >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if ((v8 - 3) < 2)
  {
    v9 = v10;
  }

  if (v9 > width || v11 > height)
  {
    UIRoundToViewScale();
    v9 = v13;
    UIRoundToViewScale();
    v11 = v14;
  }

  v15 = v9;
  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v25.receiver = self;
  v25.super_class = CAMViewfinderView;
  v7 = [(CAMViewfinderView *)&v25 hitTest:event withEvent:?];
  _previewContainerView = [(CAMViewfinderView *)self _previewContainerView];

  if (v7 == _previewContainerView)
  {
    [(CAMViewfinderView *)self bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(CAMViewfinderView *)self _layoutMarginInsetsForLayoutStyle:[(CAMViewfinderView *)self layoutStyle]];
    v18 = v12 + v17;
    v21 = v14 - (v19 + v20);
    v27.size.height = v16 - (v17 + v22);
    v27.origin.x = v10 + v19;
    v27.origin.y = v18;
    v27.size.width = v21;
    v26.x = x;
    v26.y = y;
    if (!CGRectContainsPoint(v27, v26))
    {

      v7 = 0;
    }
  }

  v23 = v7;

  return v7;
}

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
    [(CAMViewfinderView *)self _updateModernLayout];
    [(CAMViewfinderView *)self _updateBarExtensionViewsIfNecessary];

    [(CAMViewfinderView *)self setNeedsLayout];
  }
}

- (CGSize)_topBarSizeForLayoutStyle:(int64_t)style
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_layoutTopBarForLayoutStyle:(int64_t)style
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  v12 = *MEMORY[0x1E695F058];
  v13 = v4;
  v11 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v8 = *MEMORY[0x1E695EFD0];
  v9 = v5;
  v10 = *(MEMORY[0x1E695EFD0] + 32);
  [(CAMViewfinderView *)self _topBarForLayoutForLayoutStyle:style shouldAdjustTopBarOrientation:0 bounds:&v12 center:&v11 transform:&v8];
  topBar = [(CAMViewfinderView *)self topBar];
  [topBar setBounds:{v12, v13}];
  [topBar setCenter:v11];
  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  [topBar setTransform:v7];
}

- (void)_topBarForLayoutForLayoutStyle:(int64_t)style shouldAdjustTopBarOrientation:(BOOL)orientation bounds:(CGRect *)bounds center:(CGPoint *)center transform:(CGAffineTransform *)transform
{
  orientationCopy = orientation;
  v13 = !orientation || ([(CAMViewfinderView *)self orientation]- 5) < 0xFFFFFFFFFFFFFFFELL;
  _modernLayout = [(CAMViewfinderView *)self _modernLayout];

  if (_modernLayout && v13)
  {
    _modernLayout2 = [(CAMViewfinderView *)self _modernLayout];
    [_modernLayout2 frameForControlStatusBar];
    v17 = v16;
    v19 = v18;

    if (bounds)
    {
      bounds->size.width = v17;
      bounds->size.height = v19;
      bounds->origin = *MEMORY[0x1E695EFF8];
    }

    if (center)
    {
      UIRectGetCenter();
      center->x = v20;
      center->y = v21;
    }

    if (transform)
    {
      v22 = MEMORY[0x1E695EFD0];
      v23 = *(MEMORY[0x1E695EFD0] + 16);
      *&transform->a = *MEMORY[0x1E695EFD0];
      *&transform->c = v23;
      *&transform->tx = *(v22 + 32);
    }
  }

  else if ([(CAMViewfinderView *)self useMessagesLayout])
  {
    [(CAMViewfinderView *)self bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    if (orientationCopy)
    {
      orientation = [(CAMViewfinderView *)self orientation];
    }

    else
    {
      orientation = 1;
    }

    previewView = [(CAMViewfinderView *)self previewView];
    [previewView frame];
    [MEMORY[0x1E69C4998] cameraTopBarGeometryForReferenceBounds:orientation forContentSize:v25 withOrientation:{v27, v29, v31, v34, v35}];
    if (bounds)
    {
      bounds->origin = 0u;
      bounds->size = 0u;
    }

    if (center)
    {
      *center = 0u;
    }

    if (transform)
    {
      *&transform->a = 0u;
      *&transform->c = 0u;
      *&transform->tx = 0u;
    }
  }

  else
  {

    [(CAMViewfinderView *)self _cameraTopBarForLayoutForLayoutStyle:style shouldAdjustTopBarOrientation:orientationCopy bounds:bounds center:center transform:transform];
  }
}

- (void)_cameraTopBarForLayoutForLayoutStyle:(int64_t)style shouldAdjustTopBarOrientation:(BOOL)orientation bounds:(CGRect *)bounds center:(CGPoint *)center transform:(CGAffineTransform *)transform
{
  orientationCopy = orientation;
  previewView = [(CAMViewfinderView *)self previewView];
  [previewView frame];
  v52.origin.x = v14;
  v52.origin.y = v15;
  v52.size.width = v16;
  v52.size.height = v17;
  [(CAMViewfinderView *)self _topBarSizeForLayoutStyle:style];
  v49 = v18;
  v20 = v19;
  [(CAMViewfinderView *)self _layoutMarginInsetsForLayoutStyle:style];
  v22 = v21;
  v24 = v23;
  v51 = v25;
  v27 = v26;
  [(CAMViewfinderView *)self bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v50 = v20;
  UIRoundToViewScale();
  v37 = v36;
  v38 = *(MEMORY[0x1E695EFD0] + 16);
  v53 = *MEMORY[0x1E695EFD0];
  v54 = v38;
  v55 = *(MEMORY[0x1E695EFD0] + 32);
  if (!orientationCopy || (v39 = [(CAMViewfinderView *)self orientation], v39 < 3))
  {
    v40 = v24 + v29;
    v41 = v22 + v31;
    v42 = v33 - (v24 + v27);
    v43 = v37;
    v44 = v35 - (v22 + v51);
    MidX = CGRectGetMidX(v52);
    v56.origin.x = v40;
    v56.origin.y = v41;
    v56.size.width = v42;
    v56.size.height = v44;
    MidY = v43 + CGRectGetMinY(v56);
    goto LABEL_4;
  }

  if (v39 == 3)
  {
    MidX = CGRectGetMaxX(v52) + -8.0 - v37;
    MidY = CGRectGetMidY(v52);
    v48 = 3;
    goto LABEL_15;
  }

  if (v39 == 4)
  {
    MidX = v37 + CGRectGetMinX(v52) + 8.0;
    MidY = CGRectGetMidY(v52);
    v48 = 4;
LABEL_15:
    CAMOrientationTransform(v48, &v53);
    goto LABEL_4;
  }

  MidX = *MEMORY[0x1E695EFF8];
  MidY = *(MEMORY[0x1E695EFF8] + 8);
LABEL_4:
  if (bounds)
  {
    bounds->origin.x = 0.0;
    bounds->origin.y = 0.0;
    bounds->size.width = v49;
    bounds->size.height = v50;
  }

  if (center)
  {
    center->x = MidX;
    center->y = MidY;
  }

  if (transform)
  {
    v47 = v54;
    *&transform->a = v53;
    *&transform->c = v47;
    *&transform->tx = v55;
  }
}

- (double)_interpolatedBottomBarWidthWithProposedWidth:(double)width
{
  window = [(CAMViewfinderView *)self window];
  screen = [window screen];
  [screen _referenceBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v15.origin.x = v6;
  v15.origin.y = v8;
  v15.size.width = v10;
  v15.size.height = v12;
  CGRectGetWidth(v15);

  UIRoundToViewScale();
  return result;
}

- (CGSize)_bottomBarSizeForLayoutStyle:(int64_t)style withProposedSize:(CGSize)size
{
  width = size.width;
  [(CAMViewfinderView *)self bounds:style];
  Height = CGRectGetHeight(v10);
  [(CAMViewfinderView *)self _interpolatedBottomBarWidthWithProposedWidth:width];
  v8 = Height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)_wantsInterfaceOrientedPreviewForLayoutStyle:(int64_t)style
{
  v4 = +[CAMCaptureCapabilities capabilities];
  isSplitScreenSupported = [v4 isSplitScreenSupported];
  if (style)
  {
    v6 = 0;
  }

  else
  {
    v6 = isSplitScreenSupported;
  }

  if (style == 3)
  {
    v6 = isSplitScreenSupported;
  }

  v7 = (style - 1) < 2 || v6;

  return v7;
}

- (CGSize)_previewSizeForAspectRatio:(int64_t)ratio
{
  _modernLayout = [(CAMViewfinderView *)self _modernLayout];

  if (_modernLayout)
  {
    _modernLayout2 = [(CAMViewfinderView *)self _modernLayout];
    [_modernLayout2 viewportSizeForAspectRatio:ratio];
    v8 = v7;
    v10 = v9;

    v11 = v8;
    v12 = v10;
  }

  else
  {
    [(CAMViewfinderView *)self bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    layoutStyle = [(CAMViewfinderView *)self layoutStyle];
    [(CAMViewfinderView *)self _multiplierForAspectRatio:ratio];
    v40.origin.x = v14;
    v40.origin.y = v16;
    v40.size.width = v18;
    v40.size.height = v20;
    Width = CGRectGetWidth(v40);
    v41.origin.x = v14;
    v41.origin.y = v16;
    v41.size.width = v18;
    v41.size.height = v20;
    Height = CGRectGetHeight(v41);
    v24 = [(CAMViewfinderView *)self _wantsFullScreenPreviewRegardlessOfLayoutForLayoutStyle:layoutStyle];
    UIRoundToViewScale();
    v26 = v25;
    UIRoundToViewScale();
    v28 = v27;
    UIRoundToViewScale();
    v30 = v29;
    if ([(CAMViewfinderView *)self _wantsInterfaceOrientedPreviewForLayoutStyle:layoutStyle])
    {
      window = [(CAMViewfinderView *)self window];
      v32 = CAMInterfaceOrientationForWindow(window);

      if ((v32 - 3) >= 2)
      {
        v33 = v28;
      }

      else
      {
        v33 = v30;
      }

      if (Width >= Height)
      {
        v34 = Height;
      }

      else
      {
        v34 = Width;
      }

      if (ratio == 3)
      {
        v33 = v34;
        v35 = v34;
      }

      else
      {
        v35 = Width;
      }

      v36 = v33 / Height;
    }

    else
    {
      v36 = v26 / Width;
      if (Height <= Width)
      {
        v33 = Height;
      }

      else
      {
        v36 = v28 / Height;
        v33 = v28;
      }

      if (Height <= Width)
      {
        v35 = v26;
      }

      else
      {
        v35 = Width;
      }
    }

    v37 = v24 | (v36 > 0.85);
    if (v24 & 1 | (v36 > 0.85))
    {
      v12 = Height;
    }

    else
    {
      v12 = v33;
    }

    if (v37)
    {
      v38 = Width;
    }

    else
    {
      v38 = v35;
    }

    if (ratio == 3)
    {
      v12 = v33;
      v11 = v35;
    }

    else
    {
      v11 = v38;
    }
  }

  result.height = v12;
  result.width = v11;
  return result;
}

- (CGRect)_previewFrameForAspectRatio:(int64_t)ratio topBarFrame:(CGRect)frame bottomBarFrame:(CGRect)barFrame shouldShiftPreviewForUtilityBar:(BOOL)bar
{
  barCopy = bar;
  height = barFrame.size.height;
  width = barFrame.size.width;
  y = barFrame.origin.y;
  x = barFrame.origin.x;
  v11 = frame.size.height;
  v12 = frame.size.width;
  v13 = frame.origin.y;
  v14 = frame.origin.x;
  _modernLayout = [(CAMViewfinderView *)self _modernLayout];

  if (_modernLayout)
  {
    if (ratio == 3)
    {
      barCopy = 0;
    }

    else
    {
      barCopy = barCopy;
    }

    _modernLayout2 = [(CAMViewfinderView *)self _modernLayout];
    [_modernLayout2 viewportFrameForAspectRatio:ratio accessoryAreaExpanded:barCopy smartStyleControlsExpanded:0];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
  }

  else
  {
    if ([(CAMViewfinderView *)self useMessagesLayout])
    {
      [(CAMViewfinderView *)self bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      [(CAMViewfinderView *)self _previewSizeForAspectRatio:ratio];
      [MEMORY[0x1E69C4998] cameraContentGeometryForReferenceBounds:-[CAMViewfinderView orientation](self forContentSize:"orientation" withOrientation:0 shouldShiftPreviewForUtilityBar:{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), barCopy, v28, v30, v32, v34, v35, v36}];
      UIRectCenteredAboutPointScale();
    }

    else
    {
      [(CAMViewfinderView *)self _cameraPreviewFrameForAspectRatio:ratio topBarFrame:barCopy bottomBarFrame:v14 shouldShiftPreviewForUtilityBar:v13, v12, v11, x, y, width, height];
    }

    v20 = v37;
    v22 = v38;
    v24 = v39;
    v26 = v40;
  }

  v41 = v20;
  v42 = v22;
  v43 = v24;
  v44 = v26;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (CGRect)_cameraPreviewFrameForAspectRatio:(int64_t)ratio topBarFrame:(CGRect)frame bottomBarFrame:(CGRect)barFrame shouldShiftPreviewForUtilityBar:(BOOL)bar
{
  [(CAMViewfinderView *)self bounds:ratio];
  layoutStyle = [(CAMViewfinderView *)self layoutStyle];
  if (ratio <= 6 && ratio != 4)
  {
    [(CAMViewfinderView *)self _layoutMarginInsetsForLayoutStyle:layoutStyle, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  }

  [(CAMViewfinderView *)self _previewSizeForAspectRatio:ratio];
  UIRectCenteredIntegralRectScale();
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (double)_multiplierForAspectRatio:(int64_t)ratio
{
  result = 0.0;
  if (ratio <= 2)
  {
    if (!ratio)
    {
      return 1.33333333;
    }

    if (ratio == 1)
    {
      return 1.77777778;
    }

    v24 = ratio == 2;
    v25 = 1.5;
  }

  else
  {
    if (ratio <= 4)
    {
      if (ratio == 3)
      {
        return 1.0;
      }

      [(CAMViewfinderView *)self bounds];
      x = v26.origin.x;
      y = v26.origin.y;
      width = v26.size.width;
      height = v26.size.height;
      v9 = CGRectGetWidth(v26);
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      v10 = CGRectGetHeight(v27);
      window = [(CAMViewfinderView *)self window];
      screen = [window screen];
      [screen bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v28.origin.x = v14;
      v28.origin.y = v16;
      v28.size.width = v18;
      v28.size.height = v20;
      v21 = CGRectGetWidth(v28);
      v29.origin.x = v14;
      v29.origin.y = v16;
      v29.size.width = v18;
      v29.size.height = v20;
      v22 = CGRectGetHeight(v29);
      result = 1.33333333;
      if (v9 > 0.0 && v10 > 0.0 && v21 > 0.0 && v22 > 0.0)
      {
        v23 = [(CAMViewfinderView *)self _wantsInterfaceOrientedPreviewForLayoutStyle:[(CAMViewfinderView *)self layoutStyle]];
        result = v10 / v9;
        if ((((v10 / v9 > 1.0) ^ (v22 / v21 > 1.0)) & v23) != 0)
        {
          return 1.0 / result;
        }
      }

      return result;
    }

    v25 = 0.75;
    if (ratio == 6)
    {
      result = 0.5625;
    }

    v24 = ratio == 5;
  }

  if (v24)
  {
    return v25;
  }

  return result;
}

- (void)setDesiredAspectRatio:(int64_t)ratio
{
  if (self->_desiredAspectRatio != ratio)
  {
    self->_desiredAspectRatio = ratio;
    [(CAMViewfinderView *)self _updateBarExtensionViewsIfNecessary];

    [(CAMViewfinderView *)self setNeedsLayout];
  }
}

- (void)_updateBarExtensionViewsIfNecessary
{
  layoutStyle = [(CAMViewfinderView *)self layoutStyle];
  desiredAspectRatio = [(CAMViewfinderView *)self desiredAspectRatio];
  topBarExtensionView = self->__topBarExtensionView;
  if (layoutStyle == 3 && desiredAspectRatio == 4)
  {
    if (topBarExtensionView)
    {
      return;
    }

    v8 = objc_alloc(MEMORY[0x1E69DD250]);
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x1E695F058], v10, v11, v12}];
    v14 = self->__topBarExtensionView;
    self->__topBarExtensionView = v13;

    v15 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v10, v11, v12}];
    bottomBarExtensionView = self->__bottomBarExtensionView;
    self->__bottomBarExtensionView = v15;

    v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3];
    [(UIView *)self->__topBarExtensionView setBackgroundColor:v18];
    [(UIView *)self->__bottomBarExtensionView setBackgroundColor:v18];
    chromeView = [(CAMViewfinderView *)self chromeView];
    [CAMView view:self insertSubview:self->__topBarExtensionView belowSubview:chromeView];
    [CAMView view:self insertSubview:self->__bottomBarExtensionView belowSubview:chromeView];

    v7 = v18;
  }

  else
  {
    [(UIView *)topBarExtensionView removeFromSuperview];
    v6 = self->__topBarExtensionView;
    self->__topBarExtensionView = 0;

    [(UIView *)self->__bottomBarExtensionView removeFromSuperview];
    v7 = self->__bottomBarExtensionView;
    self->__bottomBarExtensionView = 0;
  }
}

- (void)setMaskingAspectRatio:(int64_t)ratio animated:(BOOL)animated
{
  if (self->_maskingAspectRatio != ratio)
  {
    if (animated)
    {
      [(CAMViewfinderView *)self layoutIfNeeded];
      self->_maskingAspectRatio = ratio;
      [(CAMViewfinderView *)self setNeedsLayout];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __52__CAMViewfinderView_setMaskingAspectRatio_animated___block_invoke;
      v6[3] = &unk_1E76F77B0;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v6 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:400.0 completion:0.0];
    }

    else
    {
      self->_maskingAspectRatio = ratio;

      [(CAMViewfinderView *)self setNeedsLayout];
    }
  }
}

void __52__CAMViewfinderView_setMaskingAspectRatio_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _previewContainerMaskingView];
  [v2 setClipsToBounds:1];
  [*(a1 + 32) layoutIfNeeded];
}

- (void)_updateModernLayout
{
  [(CAMViewfinderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  layoutStyle = [(CAMViewfinderView *)self layoutStyle];
  if (!-[CAMViewfinderView _wantsPreviewOnlyLayout](self, "_wantsPreviewOnlyLayout") && (layoutStyle == 3 && v8 < 350.0 || (+[CAMCaptureCapabilities capabilities](CAMCaptureCapabilities, "capabilities"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 imagePickerUsesModernLayout], v12, v13)))
  {
    CAMShutterButtonSpecForLayoutStyle(layoutStyle, v18);
    v14 = v18[0];
    _modernLayout = [(CAMViewfinderView *)self _modernLayout];
    v16 = _modernLayout;
    if (_modernLayout)
    {
      [_modernLayout setShutterIntrinsicSize:{v14, v14}];
      [v16 setReferenceBounds:{v4, v6, v8, v10}];
    }

    else
    {
      v17 = [[CAMFullscreenViewfinderLayout alloc] initWithReferenceBounds:v4 shutterIntrinsicSize:v6, v8, v10, v14, v14];
      [(CAMViewfinderView *)self _setModernLayout:v17];
    }
  }

  else
  {

    [(CAMViewfinderView *)self _setModernLayout:0];
  }
}

- (void)_layoutShutterIndicatorForLayoutStyle:(int64_t)style
{
  [(CAMViewfinderView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  shutterIndicatorView = [(CAMViewfinderView *)self shutterIndicatorView];
  [CAMView rotateView:shutterIndicatorView toInterfaceOrientation:3 animated:0];
  [shutterIndicatorView intrinsicContentSize];
  v13 = v12;
  v15 = v14;
  [shutterIndicatorView setBounds:{0.0, 0.0, v12, v14}];
  [(CAMViewfinderView *)self _interpolatedVerticalOffsetForShutterIndicator];
  v17 = v16;
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v13;
  v23.size.height = v15;
  MidX = CGRectGetMidX(v23);
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v13;
  v24.size.height = v15;
  MidY = CGRectGetMidY(v24);
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  v20 = CGRectGetMaxX(v25) - MidY;
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  [shutterIndicatorView setCenter:{v20, MidX + v17 + CGRectGetMinY(v26)}];
}

- (void)_layoutBurstIndicatorForLayoutStyle:(int64_t)style
{
  bottomBar = [(CAMViewfinderView *)self bottomBar];
  backgroundStyle = [bottomBar backgroundStyle];
  shutterButton = [bottomBar shutterButton];
  [bottomBar frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  burstIndicatorView = [(CAMViewfinderView *)self burstIndicatorView];
  v15 = *MEMORY[0x1E695EFF8];
  v16 = *(MEMORY[0x1E695EFF8] + 8);
  [burstIndicatorView intrinsicContentSize];
  v18 = v17;
  rect = v13;
  v33 = v19;
  if (bottomBar && backgroundStyle == 1 && shutterButton)
  {
    [shutterButton frame];
    [shutterButton alignmentRectForFrame:?];
    [bottomBar convertRect:self toView:?];
    v20 = v11;
    v21 = v9;
    v22 = v7;
    MinX = CGRectGetMinX(v36);
    v37.origin.x = v15;
    v37.origin.y = v16;
    v37.size.width = v18;
    v24 = v33;
    v37.size.height = v33;
    CGRectGetWidth(v37);
    UIRoundToViewScale();
    v26 = MinX - v25;
    v27 = -30.0;
  }

  else
  {
    v38.origin.x = v7;
    v38.origin.y = v9;
    v38.size.width = v11;
    v38.size.height = v13;
    v20 = v11;
    v21 = v9;
    v22 = v7;
    v28 = CGRectGetMinX(v38);
    v39.origin.x = v15;
    v39.origin.y = v16;
    v39.size.width = v18;
    v24 = v33;
    v39.size.height = v33;
    CGRectGetWidth(v39);
    UIRoundToViewScale();
    v26 = v28 - v29;
    v27 = -9.0;
  }

  v30 = v26 + v27;
  v40.origin.x = v22;
  v40.origin.y = v21;
  v40.size.width = v20;
  v40.size.height = rect;
  MidY = CGRectGetMidY(v40);
  [burstIndicatorView setBounds:{v15, v16, v18, v24}];
  [burstIndicatorView setCenter:{v30, MidY}];
}

- (void)_layoutZoomSliderForLayoutStyle:(int64_t)style
{
  zoomSlider = [(CAMViewfinderView *)self zoomSlider];
  bottomBar = [(CAMViewfinderView *)self bottomBar];
  previewView = [(CAMViewfinderView *)self previewView];
  [CAMZoomSliderUtilities layoutZoomSlider:zoomSlider forLayoutStyle:style bottomBar:bottomBar previewView:previewView viewfinderView:self];
}

- (void)_layoutZoomControlForLayoutStyle:(int64_t)style
{
  zoomControl = [(CAMViewfinderView *)self zoomControl];
  [(CAMViewfinderView *)self bounds];
  switch(style)
  {
    case 3:
      goto LABEL_4;
    case 1:
      [CAMZoomControlUtilities layoutZoomControl:zoomControl layoutSide:1 forLayoutStyle:1 width:375.0 marginForZoomButtonFromEdge:20.5 marginForZoomDialFromEdge:0.0 zoomDialContentMaskingHeight:0.0 centerOfZoomControlInContainerView:-82.5, v6 * 0.5];
      break;
    case 0:
LABEL_4:
      visibilityDelegate = [(CAMViewfinderView *)self visibilityDelegate];
      shouldShiftPreviewForUtilityBar = [visibilityDelegate shouldShiftPreviewForUtilityBar];

      v9 = *(MEMORY[0x1E695F058] + 16);
      v27 = *MEMORY[0x1E695F058];
      v28 = v9;
      v26 = *MEMORY[0x1E695EFF8];
      [(CAMViewfinderView *)self _previewLayoutForAspectRatio:[(CAMViewfinderView *)self desiredAspectRatio] shouldShiftPreviewForUtilityBar:shouldShiftPreviewForUtilityBar outPreviewBounds:&v27 outPreviewCenter:&v26 outFourThreeTopBarFrame:0 outBottomBarFrame:0];
      v10 = v28;
      v11 = *&v26 - *&v28 * 0.5;
      v12 = *(&v26 + 1) - *(&v28 + 1) * 0.5;
      [(CAMViewfinderView *)self externalChromeShutterButtonFrame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      desiredAspectRatio = [(CAMViewfinderView *)self desiredAspectRatio];
      +[CAMChromeViewSpec shutterTopPadding];
      [CAMZoomControlUtilities referenceYForControlsAboveShutterButtonFrame:desiredAspectRatio viewportFrame:v14 aspectRatio:v16 shutterTopPadding:v18, v20, v11, v12, v10, v22];
      v24 = v23;
      zoomControl2 = [(CAMViewfinderView *)self zoomControl];
      [(CAMViewfinderView *)self bounds];
      [CAMZoomControlUtilities layoutForExternalChromeZoomControl:"layoutForExternalChromeZoomControl:bounds:viewportFrame:referenceYForControlsAboveShutterButton:xOffset:" bounds:zoomControl2 viewportFrame:v24 referenceYForControlsAboveShutterButton:0 xOffset:?];

      break;
  }
}

- (void)_layoutLightingControlForLayoutStyle:(int64_t)style
{
  lightingControl = [(CAMViewfinderView *)self lightingControl];
  if (lightingControl)
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    [(CAMViewfinderView *)self bounds];
    [lightingControl sizeThatFits:{v7, v8}];
    v10 = v9;
    v12 = v11;
    [(CAMViewfinderView *)self bounds];
    UIRectGetCenter();
    v14 = v13;
    [lightingControl setBounds:{v5, v6, v10, v12}];
    [lightingControl setCenter:{v12 * 0.5, v14}];
    CGAffineTransformMakeRotation(&v16, 1.57079633);
    v15 = v16;
    [lightingControl setTransform:&v15];
  }
}

- (void)_layoutTimerIndicatorViewForLayoutStyle:(int64_t)style
{
  timerIndicatorView = [(CAMViewfinderView *)self timerIndicatorView];
  [(CAMViewfinderView *)self bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  MidX = CGRectGetMidX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MidY = CGRectGetMidY(v13);
  [timerIndicatorView setBounds:{x, y, width, height}];
  [timerIndicatorView setCenter:{MidX, MidY}];
}

- (void)_layoutElapsedTimeViewForLayoutStyle:(int64_t)style
{
  [(CAMViewfinderView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  elapsedTimeView = [(CAMViewfinderView *)self elapsedTimeView];
  [elapsedTimeView intrinsicContentSize];
  v14.origin.x = v5;
  v14.origin.y = v7;
  v14.size.width = v9;
  v14.size.height = v11;
  CGRectGetMidX(v14);
  UIRoundToViewScale();
  [elapsedTimeView frameForAlignmentRect:?];
  [elapsedTimeView setFrame:?];
}

- (void)_layoutVideoConfigurationStatusIndicatorForLayoutStyle:(int64_t)style
{
  videoConfigurationStatusIndicator = [(CAMViewfinderView *)self videoConfigurationStatusIndicator];
  elapsedTimeView = [(CAMViewfinderView *)self elapsedTimeView];
  [elapsedTimeView frame];
  [elapsedTimeView alignmentRectForFrame:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [videoConfigurationStatusIndicator intrinsicContentSize];
  v14 = v13;
  v16 = v15;
  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  v17 = CGRectGetMaxX(v21) + 16.0;
  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  CGRectGetMidY(v22);
  UIRoundToViewScale();
  [videoConfigurationStatusIndicator frameForAlignmentRect:{v17, v18 + CAMPixelWidthForView(self), v14, v16}];
  [videoConfigurationStatusIndicator setFrame:?];
}

- (void)_layoutTopBadgesForLayoutStyle:(int64_t)style appearingBadges:(id)badges disappearingBadges:(id)disappearingBadges animated:(BOOL)animated
{
  animatedCopy = animated;
  badgesCopy = badges;
  disappearingBadgesCopy = disappearingBadges;
  if (style <= 3 && style != 2)
  {
    [(CAMViewfinderView *)self _layoutBadgeTrayForLayoutStyle:style appearingBadges:badgesCopy disappearingBadges:disappearingBadgesCopy animated:animatedCopy];
  }
}

- (void)_enforceBadgeSubviewOrderingWithAppearingBadges:(id)badges
{
  v29 = *MEMORY[0x1E69E9840];
  badgesCopy = badges;
  v5 = MEMORY[0x1E695DFA8];
  visibleTopBadges = [(CAMViewfinderView *)self visibleTopBadges];
  v7 = [v5 setWithArray:visibleTopBadges];

  [v7 minusSet:badgesCopy];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = badgesCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(CAMViewfinderView *)self bringSubviewToFront:*(*(&v23 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(CAMViewfinderView *)self bringSubviewToFront:*(*(&v19 + 1) + 8 * v17++), v19];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  timerIndicatorView = [(CAMViewfinderView *)self timerIndicatorView];
  if (timerIndicatorView)
  {
    [(CAMViewfinderView *)self bringSubviewToFront:timerIndicatorView];
  }
}

- (void)_layoutBottomBadgesForLayoutStyle:(int64_t)style
{
  filterNameBadge = [(CAMViewfinderView *)self filterNameBadge];
  [CAMViewfinderView _layoutBottomCenteredView:"_layoutBottomCenteredView:aboveView:aboveViewSpacing:forLayoutStyle:" aboveView:0.0 aboveViewSpacing:? forLayoutStyle:?];
  visibilityDelegate = [(CAMViewfinderView *)self visibilityDelegate];
  shouldLayoutLightingNameBadgeAtBottom = [visibilityDelegate shouldLayoutLightingNameBadgeAtBottom];

  if (shouldLayoutLightingNameBadgeAtBottom)
  {
    lightingNameBadge = [(CAMViewfinderView *)self lightingNameBadge];
    [(CAMViewfinderView *)self _layoutBottomCenteredView:lightingNameBadge aboveView:0 aboveViewSpacing:style forLayoutStyle:0.0];
  }
}

- (void)_layoutInstructionLabelOnTop:(id)top forLayoutStyle:(int64_t)style
{
  topCopy = top;
  previewView = [(CAMViewfinderView *)self previewView];
  [previewView frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  orientation = [(CAMViewfinderView *)self orientation];
  v16 = orientation;
  if ((orientation - 3) >= 2)
  {
    v17 = v14;
  }

  else
  {
    v17 = v12;
  }

  if ((orientation - 3) >= 2)
  {
    v18 = v12;
  }

  else
  {
    v18 = v14;
  }

  v19 = MEMORY[0x1E695F058];
  [topCopy sizeThatFits:{v18 + -25.0, v17 + -25.0}];
  v37 = v20;
  v22 = v21;
  topBar = [(CAMViewfinderView *)self topBar];
  [topBar frame];
  MaxY = CGRectGetMaxY(v40);

  visibilityDelegate = [(CAMViewfinderView *)self visibilityDelegate];
  shouldLayoutLightingNameBadgeAtBottom = [visibilityDelegate shouldLayoutLightingNameBadgeAtBottom];

  if (shouldLayoutLightingNameBadgeAtBottom)
  {
    v34 = MaxY;
  }

  else
  {
    lightingNameBadge = [(CAMViewfinderView *)self lightingNameBadge];
    [lightingNameBadge frame];
    v34 = CGRectGetMaxY(v41);
  }

  v35 = v19[1];
  v36 = *v19;
  UIRectGetCenter();
  v29 = v28;
  v31 = v30;
  v32 = v22;
  v33 = v22 * 0.5 + CAMPixelWidthForView(self) + 10.0;
  if (v16 >= 3)
  {
    if (v16 == 3)
    {
      v44.origin.x = v8;
      v44.origin.y = v10;
      v44.size.width = v12;
      v44.size.height = v14;
      v29 = CGRectGetMaxX(v44) - v33;
    }

    else if (v16 == 4)
    {
      v43.origin.x = v8;
      v43.origin.y = v10;
      v43.size.width = v12;
      v43.size.height = v14;
      v29 = v33 + CGRectGetMinX(v43);
    }
  }

  else
  {
    v42.origin.x = v8;
    v42.origin.y = v10;
    v42.size.width = v12;
    v42.size.height = v14;
    v31 = v33 + fmax(v34, CGRectGetMinY(v42));
  }

  [topCopy setBounds:{v36, v35, v37, v32, *&v34}];
  [topCopy setCenter:{v29, v31}];
  CAMOrientationTransform(v16, v39);
  v38[0] = v39[0];
  v38[1] = v39[1];
  v38[2] = v39[2];
  [topCopy setTransform:v38];
}

- (void)_layoutPortraitModeInstructionLabelForLayoutStyle:(int64_t)style
{
  visibilityDelegate = [(CAMViewfinderView *)self visibilityDelegate];
  _shouldLayoutPortraitInstructionsAtTop = [(CAMViewfinderView *)self _shouldLayoutPortraitInstructionsAtTop];
  portraitModeInstructionLabel = [(CAMViewfinderView *)self portraitModeInstructionLabel];
  if (_shouldLayoutPortraitInstructionsAtTop)
  {
    [(CAMViewfinderView *)self _layoutInstructionLabelOnTop:portraitModeInstructionLabel forLayoutStyle:style];
  }

  else
  {
    if ([visibilityDelegate shouldHideFilterNameBadge])
    {
      filterNameBadge = 0;
    }

    else
    {
      filterNameBadge = [(CAMViewfinderView *)self filterNameBadge];
    }

    [(CAMViewfinderView *)self _layoutBottomCenteredView:portraitModeInstructionLabel aboveView:filterNameBadge aboveViewSpacing:style forLayoutStyle:15.0];
  }

  [portraitModeInstructionLabel setStyle:1];
}

- (void)_layoutQRCodeInstructionLabelForLayoutStyle:(int64_t)style
{
  qrCodeInstructionLabel = [(CAMViewfinderView *)self qrCodeInstructionLabel];
  [(CAMViewfinderView *)self _layoutInstructionLabelOnTop:qrCodeInstructionLabel forLayoutStyle:style];
  [qrCodeInstructionLabel setStyle:1];
}

- (void)_layoutImageAnalysisInstructionLabelForLayoutStyle:(int64_t)style
{
  imageAnalysisInstructionLabel = [(CAMViewfinderView *)self imageAnalysisInstructionLabel];
  [imageAnalysisInstructionLabel setStyle:1];
  [(CAMViewfinderView *)self _layoutInstructionLabelOnTop:imageAnalysisInstructionLabel forLayoutStyle:style];
}

- (void)_layoutCleanLensInstructionLabelForLayoutStyle:(int64_t)style
{
  cleanLensesInstructionLabel = [(CAMViewfinderView *)self cleanLensesInstructionLabel];
  [cleanLensesInstructionLabel setStyle:1];
  [(CAMViewfinderView *)self _layoutInstructionLabelOnTop:cleanLensesInstructionLabel forLayoutStyle:style];
}

- (void)_layoutBadgeTrayForLayoutStyle:(int64_t)style appearingBadges:(id)badges disappearingBadges:(id)disappearingBadges animated:(BOOL)animated
{
  animatedCopy = animated;
  v37 = *MEMORY[0x1E69E9840];
  badgesCopy = badges;
  disappearingBadgesCopy = disappearingBadges;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(badgesCopy, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  visibleTopBadges = [(CAMViewfinderView *)self visibleTopBadges];
  v13 = [visibleTopBadges countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(visibleTopBadges);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        if ([badgesCopy containsObject:v17])
        {
          [v11 addObject:v17];
        }
      }

      v14 = [visibleTopBadges countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }

  if (animatedCopy)
  {
    v18 = 0.25;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = MEMORY[0x1E69DD250];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __96__CAMViewfinderView__layoutBadgeTrayForLayoutStyle_appearingBadges_disappearingBadges_animated___block_invoke;
  v29[3] = &unk_1E76F97F0;
  v29[4] = self;
  v20 = v11;
  v30 = v20;
  styleCopy = style;
  [v19 performWithoutAnimation:v29];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __96__CAMViewfinderView__layoutBadgeTrayForLayoutStyle_appearingBadges_disappearingBadges_animated___block_invoke_2;
  v24[3] = &unk_1E76F8400;
  v25 = disappearingBadgesCopy;
  v26 = v20;
  selfCopy = self;
  styleCopy2 = style;
  v21 = v20;
  v22 = disappearingBadgesCopy;
  [CAMView animateIfNeededWithDuration:0 options:v24 animations:0 completion:v18];
}

void __96__CAMViewfinderView__layoutBadgeTrayForLayoutStyle_appearingBadges_disappearingBadges_animated___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v17 + 1) + 8 * v6++) setAlpha:0.0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) setAlpha:{1.0, v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v9);
  }

  v12 = [*(a1 + 48) visibleTopBadges];
  [*(a1 + 48) _layoutBadgeTrayWithBadges:v12 layoutStyle:*(a1 + 56)];
}

- (id)_viewToLayoutBadgesBelowForLayoutStyle:(int64_t)style orientation:(int64_t)orientation
{
  visibilityDelegate = [(CAMViewfinderView *)self visibilityDelegate];
  shouldHideElapsedTimeView = [visibilityDelegate shouldHideElapsedTimeView];
  shouldHideTopBar = [visibilityDelegate shouldHideTopBar];
  shouldShiftPreviewForUtilityBar = [visibilityDelegate shouldShiftPreviewForUtilityBar];
  shouldHidePortraitModeInstructionLabel = [visibilityDelegate shouldHidePortraitModeInstructionLabel];
  shouldHideQRCodeInstructionLabel = [visibilityDelegate shouldHideQRCodeInstructionLabel];
  shouldHideCleanLensInstructionLabel = [visibilityDelegate shouldHideCleanLensInstructionLabel];
  _shouldLayoutPortraitInstructionsAtTop = [(CAMViewfinderView *)self _shouldLayoutPortraitInstructionsAtTop];
  topBar = [(CAMViewfinderView *)self topBar];
  elapsedTimeView = [(CAMViewfinderView *)self elapsedTimeView];
  if ((shouldHidePortraitModeInstructionLabel & 1) != 0 || ([(CAMViewfinderView *)self portraitModeInstructionLabel], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    if ((shouldHideQRCodeInstructionLabel & 1) != 0 || ([(CAMViewfinderView *)self qrCodeInstructionLabel], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      if ((shouldHideCleanLensInstructionLabel & 1) != 0 || ([(CAMViewfinderView *)self cleanLensesInstructionLabel], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
      {
        cleanLensesInstructionLabel = 0;
        if (style)
        {
          goto LABEL_14;
        }
      }

      else
      {
        cleanLensesInstructionLabel = [(CAMViewfinderView *)self cleanLensesInstructionLabel];
        _shouldLayoutPortraitInstructionsAtTop = 0;
        if (style)
        {
          goto LABEL_14;
        }
      }

LABEL_12:
      v17 = 1;
      goto LABEL_17;
    }

    cleanLensesInstructionLabel = [(CAMViewfinderView *)self qrCodeInstructionLabel];
    _shouldLayoutPortraitInstructionsAtTop = 1;
    if (!style)
    {
      goto LABEL_12;
    }
  }

  else
  {
    cleanLensesInstructionLabel = [(CAMViewfinderView *)self portraitModeInstructionLabel];
    if (!style)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
  if (style == 3)
  {
    orientationCopy2 = orientation;
    v17 = shouldShiftPreviewForUtilityBar;
    goto LABEL_18;
  }

  v17 = 0;
LABEL_17:
  orientationCopy2 = orientation;
LABEL_18:
  v19 = orientationCopy2 >= 3;
  v20 = orientationCopy2 - 3;
  if (!v19)
  {
    goto LABEL_22;
  }

  if (v20 <= 1)
  {
    v17 = 1;
LABEL_22:
    v21 = 1;
    goto LABEL_23;
  }

  v21 = 0;
LABEL_23:
  if (((shouldHideQRCodeInstructionLabel & shouldHidePortraitModeInstructionLabel & 1) != 0 || (v22 = cleanLensesInstructionLabel, ((cleanLensesInstructionLabel != 0) & _shouldLayoutPortraitInstructionsAtTop & v17) == 0)) && (v22 = elapsedTimeView, (elapsedTimeView == 0) | shouldHideElapsedTimeView & 1) && (v22 = topBar, (topBar == 0) | (shouldHideTopBar | v21) & 1))
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  return v23;
}

- (double)_badgeTrayHeightForLayoutStyle:(int64_t)style
{
  result = 0.0;
  if (style <= 3)
  {
    return dbl_1A3A69F40[style];
  }

  return result;
}

- (CGRect)_frameForBadgeTrayForLayoutStyle:(int64_t)style orientation:(int64_t)orientation
{
  v7 = [CAMViewfinderView _viewToLayoutBadgesBelowForLayoutStyle:"_viewToLayoutBadgesBelowForLayoutStyle:orientation:" orientation:?];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  rect = v14;
  v43 = 0u;
  v44 = 0u;
  visibilityDelegate = [(CAMViewfinderView *)self visibilityDelegate];
  shouldShiftPreviewForUtilityBar = [visibilityDelegate shouldShiftPreviewForUtilityBar];

  [(CAMViewfinderView *)self _previewLayoutForAspectRatio:[(CAMViewfinderView *)self desiredAspectRatio] shouldShiftPreviewForUtilityBar:shouldShiftPreviewForUtilityBar outPreviewBounds:0 outPreviewCenter:0 outFourThreeTopBarFrame:&v43 outBottomBarFrame:0];
  maskingAspectRatio = [(CAMViewfinderView *)self maskingAspectRatio];
  bottomBar = [(CAMViewfinderView *)self bottomBar];
  [bottomBar frame];
  [(CAMViewfinderView *)self _previewFrameForAspectRatio:maskingAspectRatio topBarFrame:shouldShiftPreviewForUtilityBar bottomBarFrame:v43 shouldShiftPreviewForUtilityBar:v44, v19, v20, v21, v22];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [(CAMViewfinderView *)self _badgeTrayHeightForLayoutStyle:style];
  v32 = v31;
  if (orientation > 2)
  {
    if (orientation == 3)
    {
      if (v7)
      {
        v49.origin.x = v9;
        v49.origin.y = v11;
        v49.size.width = v13;
        v49.size.height = rect;
        MinX = CGRectGetMinX(v49);
      }

      else
      {
        v50.origin.x = v24;
        v50.origin.y = v26;
        v50.size.width = v28;
        v50.size.height = v30;
        MinX = CGRectGetMaxX(v50);
      }

      v24 = MinX - v32;
    }

    else
    {
      if (orientation != 4)
      {
        goto LABEL_23;
      }

      if (v7)
      {
        v47.origin.x = v9;
        v47.origin.y = v11;
        v47.size.width = v13;
        v47.size.height = rect;
        MaxX = CGRectGetMaxX(v47);
      }

      else
      {
        v52.origin.x = v24;
        v52.origin.y = v26;
        v52.size.width = v28;
        v52.size.height = v30;
        MaxX = CGRectGetMinX(v52);
      }

      v24 = MaxX;
    }

    v28 = v32;
    goto LABEL_23;
  }

  if (orientation < 2)
  {
    v45.origin.x = v9;
    v45.origin.y = v11;
    v45.size.width = v13;
    v45.size.height = rect;
    MaxY = CGRectGetMaxY(v45);
    v46.origin.x = v24;
    v46.origin.y = v26;
    v46.size.width = v28;
    v46.size.height = v30;
    v34 = CGRectGetMinY(v46) - v32;
    if (v34 >= MaxY)
    {
      v26 = v34;
    }

    else
    {
      v26 = MaxY;
    }

LABEL_19:
    v30 = v32;
    goto LABEL_23;
  }

  if (orientation == 2)
  {
    if (v7)
    {
      v48.origin.x = v9;
      v48.origin.y = v11;
      v48.size.width = v13;
      v48.size.height = rect;
      MinY = CGRectGetMinY(v48);
    }

    else
    {
      v51.origin.x = v24;
      v51.origin.y = v26;
      v51.size.width = v28;
      v51.size.height = v30;
      MinY = CGRectGetMaxY(v51);
    }

    v26 = MinY - v32;
    goto LABEL_19;
  }

LABEL_23:

  v38 = v24;
  v39 = v26;
  v40 = v28;
  v41 = v30;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (void)_layoutBadgeTrayWithBadges:(id)badges layoutStyle:(int64_t)style
{
  v62 = *MEMORY[0x1E69E9840];
  badgesCopy = badges;
  v6 = [badgesCopy count];
  if (v6)
  {
    v7 = v6;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v38 = badgesCopy;
    v8 = badgesCopy;
    v9 = [v8 countByEnumeratingWithState:&v56 objects:v61 count:16];
    v10 = 0.0;
    v11 = 0.0;
    if (v9)
    {
      v12 = v9;
      v13 = *v57;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v57 != v13)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v56 + 1) + 8 * i) intrinsicContentSize];
          v11 = v11 + v15;
        }

        v12 = [v8 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v12);
    }

    v16 = v11 + (v7 - 1) * 5.0;
    orientation = [(CAMViewfinderView *)self orientation];
    [(CAMViewfinderView *)self _frameForBadgeTrayForLayoutStyle:style orientation:orientation];
    x = v63.origin.x;
    y = v63.origin.y;
    width = v63.size.width;
    height = v63.size.height;
    v22 = CGRectGetWidth(v63);
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v23 = CGRectGetHeight(v64);
    if (v22 >= v23)
    {
      v23 = v22;
    }

    v24 = (v23 - v16) * 0.5;
    if (orientation > 2)
    {
      if (orientation == 3)
      {
        v68.origin.x = x;
        v68.origin.y = y;
        v68.size.width = width;
        v68.size.height = height;
        MinY = CGRectGetMinY(v68);
        goto LABEL_21;
      }

      if (orientation == 4)
      {
        v66.origin.x = x;
        v66.origin.y = y;
        v66.size.width = width;
        v66.size.height = height;
        MaxY = CGRectGetMaxY(v66);
LABEL_19:
        v10 = MaxY - v24;
      }
    }

    else
    {
      if (orientation < 2)
      {
        v65.origin.x = x;
        v65.origin.y = y;
        v65.size.width = width;
        v65.size.height = height;
        MinY = CGRectGetMinX(v65);
LABEL_21:
        v10 = v24 + MinY;
        goto LABEL_22;
      }

      if (orientation == 2)
      {
        v67.origin.x = x;
        v67.origin.y = y;
        v67.size.width = width;
        v67.size.height = height;
        MaxY = CGRectGetMaxX(v67);
        goto LABEL_19;
      }
    }

LABEL_22:
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    CAMOrientationTransform(orientation, &v53);
    UIRectGetCenter();
    v28 = v27;
    v30 = v29;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v8;
    v31 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
    if (!v31)
    {
      goto LABEL_40;
    }

    v32 = v31;
    v33 = *v50;
    v40 = *MEMORY[0x1E695EFF8];
    while (1)
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v50 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v49 + 1) + 8 * j);
        [v35 intrinsicContentSize];
        v46 = v40;
        v47 = v40;
        *&v48 = v36;
        *(&v48 + 1) = v37;
        if (orientation > 2)
        {
          if (orientation != 3)
          {
            if (orientation != 4)
            {
              goto LABEL_38;
            }

            *&v46 = v28;
            *(&v46 + 1) = v10 + v36 * -0.5;
LABEL_35:
            v10 = v10 - (v36 + 5.0);
            goto LABEL_38;
          }

          *&v46 = v28;
          *(&v46 + 1) = v10 + v36 * 0.5;
        }

        else
        {
          if (orientation >= 2)
          {
            if (orientation != 2)
            {
              goto LABEL_38;
            }

            *&v46 = v10 + v36 * -0.5;
            *(&v46 + 1) = v30;
            goto LABEL_35;
          }

          *&v46 = v10 + v36 * 0.5;
          *(&v46 + 1) = v30 + -2.0;
        }

        v10 = v10 + v36 + 5.0;
LABEL_38:
        [CAMView ceilBounds:&v47 andRoundCenter:&v46 toViewScale:self];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __60__CAMViewfinderView__layoutBadgeTrayWithBadges_layoutStyle___block_invoke;
        v43[3] = &unk_1E76F7768;
        v43[4] = v35;
        v44 = v47;
        v45 = v48;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v43];
        [v35 setCenter:v46];
        v42[0] = v53;
        v42[1] = v54;
        v42[2] = v55;
        [v35 setTransform:v42];
      }

      v32 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
      if (!v32)
      {
LABEL_40:

        badgesCopy = v38;
        break;
      }
    }
  }
}

- (void)_layoutBottomCenteredView:(id)view aboveView:(id)aboveView aboveViewSpacing:(double)spacing forLayoutStyle:(int64_t)style
{
  viewCopy = view;
  aboveViewCopy = aboveView;
  if (style != 2)
  {
    spacingCopy = spacing;
    if (style == 1)
    {
      v12 = 31.0;
    }

    else
    {
      v12 = 15.0;
    }

    previewView = [(CAMViewfinderView *)self previewView];
    topBar = [(CAMViewfinderView *)self topBar];
    [topBar frame];
    MaxY = CGRectGetMaxY(v44);

    [previewView frame];
    x = v45.origin.x;
    y = v45.origin.y;
    width = v45.size.width;
    height = v45.size.height;
    v46 = CGRectInset(v45, v12, v12);
    [viewCopy sizeThatFits:{v46.size.width, v46.size.height}];
    v20 = v19;
    v22 = v21;
    UIRoundToViewScale();
    UIRoundToViewScale();
    v24 = v23;
    v40 = 0.0;
    v41 = 0.0;
    v42 = v20;
    v43 = v22;
    v39 = *MEMORY[0x1E695EFF8];
    orientation = [(CAMViewfinderView *)self orientation];
    v26 = orientation;
    if (orientation < 3)
    {
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      *&v39 = CGRectGetMidX(v47);
      if (aboveViewCopy)
      {
        [aboveViewCopy frame];
        [aboveViewCopy alignmentRectForFrame:?];
        MinY = CGRectGetMinY(v48);
        v28 = v24 + spacingCopy;
      }

      else
      {
        v52.origin.x = x;
        v52.origin.y = y;
        v52.size.width = width;
        v52.size.height = height;
        MinY = CGRectGetMaxY(v52);
        v28 = v12 + v24;
      }

      *(&v39 + 1) = MinY - v28;
      goto LABEL_20;
    }

    if (orientation == 3)
    {
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      v31 = CGRectGetMinY(v53);
      v54.origin.x = x;
      v54.origin.y = y;
      v54.size.width = width;
      v54.size.height = height;
      *(&v39 + 1) = (fmax(MaxY, v31) + CGRectGetMaxY(v54)) * 0.5;
      if (aboveViewCopy)
      {
        [aboveViewCopy frame];
        [aboveViewCopy alignmentRectForFrame:?];
        v32 = v24 + CGRectGetMaxX(v55) + spacingCopy;
      }

      else
      {
        v56.origin.x = x;
        v56.origin.y = y;
        v56.size.width = width;
        v56.size.height = height;
        v32 = v12 + v24 + CGRectGetMinX(v56);
      }
    }

    else
    {
      if (orientation != 4)
      {
LABEL_20:
        [CAMView ceilBounds:&v40 andRoundCenter:&v39 toViewScale:self, *&MaxY];
        [viewCopy setBounds:{v40, v41, v42, v43}];
        [viewCopy setCenter:v39];
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        CAMOrientationTransform(v26, &v36);
        v35[0] = v36;
        v35[1] = v37;
        v35[2] = v38;
        [viewCopy setTransform:v35];

        goto LABEL_21;
      }

      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v29 = CGRectGetMinY(v49);
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      *(&v39 + 1) = (fmax(MaxY, v29) + CGRectGetMaxY(v50)) * 0.5;
      if (aboveViewCopy)
      {
        [aboveViewCopy frame];
        [aboveViewCopy alignmentRectForFrame:?];
        MinX = CGRectGetMinX(v51);
        v12 = spacingCopy;
      }

      else
      {
        v57.origin.x = x;
        v57.origin.y = y;
        v57.size.width = width;
        v57.size.height = height;
        MinX = CGRectGetMaxX(v57);
      }

      v32 = MinX - v24 - v12;
    }

    *&v39 = v32;
    goto LABEL_20;
  }

LABEL_21:
}

- (void)_layoutPanoramaViewForLayoutStyle:(int64_t)style
{
  panoramaView = [(CAMViewfinderView *)self panoramaView];
  if (panoramaView)
  {
    [(CAMViewfinderView *)self bounds];
    v55 = v6;
    v56 = v7;
    v9 = v8;
    v11 = v10;
    v13 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
    previewViewOrientation = [(CAMViewfinderView *)self previewViewOrientation];
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v17 = [(CAMViewfinderView *)self window:CAMTransformCorrectingForOrientation(previewViewOrientation];
    screen = [v17 screen];
    [screen _referenceBounds];
    v57 = v20;
    v59 = v19;
    v22 = v21;
    v24 = v23;

    if (style != 3)
    {
      if (style == 1)
      {
        chromePanoramaLayoutDelegate = [(CAMViewfinderView *)self chromePanoramaLayoutDelegate];
        [chromePanoramaLayoutDelegate chromeSidebarFrame];
        v47 = v34;
        v48 = v33;
        v51 = v36;
        v52 = v35;

        v49 = v9;
        v50 = v11;
        v53 = v9;
        v54 = v11;
        v37 = v55;
        v38 = v56;
        if (previewViewOrientation >= 3)
        {
          v53 = v22;
          v54 = v24;
          v38 = v57;
          v37 = v59;
          if (previewViewOrientation - 3 < 2)
          {
            v53 = v50;
            v54 = v49;
            v37 = v55;
            v38 = v56;
          }
        }

        [panoramaView panoramaCaptureSize];
        [CAMPanoramaUtilities panoramaViewSizeForCaptureSize:1 referenceBounds:*&v48 chromeSidebarFrame:*&v47 layoutStyle:*&v52, *&v51];
        v58 = v40;
        v60 = v39;
        if (previewViewOrientation >= 3)
        {
          if (previewViewOrientation - 3 < 2)
          {
            v13 = v55;
            v12 = v56;
            v14 = v49;
            v15 = v50;
          }
        }

        else
        {
          [CAMPanoramaUtilities panoramaViewLayoutInsetsForLayoutStyle:1 referenceBounds:v37 chromeSidebarFrame:v38, v53, v54, v48, v47, v52, v51];
          v13 = v55 + v41;
          v12 = v56 + v42;
          v14 = v49 - (v41 + v43);
          v15 = v50 - (v42 + v44);
        }

        v65.origin.x = v13;
        v65.origin.y = v12;
        v65.size.width = v14;
        v65.size.height = v15;
        CGRectGetMidX(v65);
        UIRoundToViewScale();
        v27 = v45;
        v66.origin.x = v13;
        v66.origin.y = v12;
        v66.size.width = v14;
        v66.size.height = v15;
        CGRectGetMidY(v66);
        UIRoundToViewScale();
        v29 = v46;
        v12 = 0.0;
        v15 = v58;
        v14 = v60;
        goto LABEL_15;
      }

      if (style)
      {
        v27 = *MEMORY[0x1E695EFF8];
        v29 = *(MEMORY[0x1E695EFF8] + 8);
LABEL_16:
        [panoramaView setBounds:{v13, v12, v14, v15}];
        [panoramaView setCenter:{v27, v29}];
        v61[0] = v62;
        v61[1] = v63;
        v61[2] = v64;
        [panoramaView setTransform:v61];
        goto LABEL_17;
      }
    }

    previewView = [(CAMViewfinderView *)self previewView];
    [previewView center];
    v27 = v26;
    v29 = v28;
    [panoramaView panoramaCaptureSize];
    [CAMPanoramaUtilities panoramaViewSizeForCaptureSize:style referenceBounds:*&v13 chromeSidebarFrame:*&v12 layoutStyle:*&v14, *&v15];
    v14 = v30;
    v15 = v31;

    v12 = 0.0;
LABEL_15:
    v13 = 0.0;
    goto LABEL_16;
  }

LABEL_17:
}

- (void)_layoutShutterButtonForLayoutStyle:(int64_t)style
{
  shutterButton = [(CAMViewfinderView *)self shutterButton];
  if (shutterButton)
  {
    v44 = shutterButton;
    [(CAMViewfinderView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    window = [(CAMViewfinderView *)self window];
    v14 = CAMInterfaceOrientationForWindow(window) - 3;

    [v44 intrinsicContentSize];
    v16 = v15;
    v18 = v17;
    UIRectCenteredIntegralRectScale();
    v41 = v22;
    v42 = v21;
    if (v14 > 1)
    {
      v43 = v19;
      v48.origin.x = v6;
      v48.origin.y = v8;
      v48.size.width = v10;
      v48.size.height = v12;
      v40 = CGRectGetMaxY(v48) + -8.0 - v18;
      UIRectCenteredIntegralRectScale();
      v29 = v30;
      v26 = v31;
      v28 = v32;
      v49.origin.x = v6;
      v49.origin.y = v8;
      v49.size.width = v10;
      v49.size.height = v12;
      v24 = CGRectGetMaxY(v49) + -150.0;
    }

    else
    {
      v46.origin.x = v6;
      v40 = v20;
      v46.origin.y = v8;
      v46.size.width = v10;
      v46.size.height = v12;
      v43 = CGRectGetMaxX(v46) + -8.0 - v16;
      UIRectCenteredIntegralRectScale();
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v47.origin.x = v6;
      v47.origin.y = v8;
      v47.size.width = v10;
      v47.size.height = v12;
      v29 = CGRectGetMaxX(v47) + -150.0;
    }

    v50.origin.x = v29;
    v50.origin.y = v24;
    v50.size.width = v26;
    v50.size.height = v28;
    MaxY = CGRectGetMaxY(v50);
    v51.origin.x = v43;
    v51.origin.y = v40;
    v51.size.width = v42;
    v51.size.height = v41;
    v39 = MaxY - CGRectGetMaxY(v51);
    v52.origin.x = v43;
    v52.origin.y = v40;
    v52.size.width = v42;
    v52.size.height = v41;
    MinX = CGRectGetMinX(v52);
    v53.origin.x = v29;
    v53.origin.y = v24;
    v53.size.width = v26;
    v53.size.height = v28;
    v37 = MinX - CGRectGetMinX(v53);
    v54.origin.x = v43;
    v54.origin.y = v40;
    v54.size.width = v42;
    v54.size.height = v41;
    MinY = CGRectGetMinY(v54);
    v55.origin.x = v29;
    v55.origin.y = v24;
    v55.size.width = v26;
    v55.size.height = v28;
    v34 = MinY - CGRectGetMinY(v55);
    v56.origin.x = v29;
    v56.origin.y = v24;
    v56.size.width = v26;
    v56.size.height = v28;
    MaxX = CGRectGetMaxX(v56);
    v57.origin.x = v43;
    v57.origin.y = v40;
    v57.size.width = v42;
    v57.size.height = v41;
    [v44 setTappableEdgeInsets:{v34, v37, v39, MaxX - CGRectGetMaxX(v57), 0}];
    [v44 frameForAlignmentRect:{v43, v40, v42, v41}];
    [v44 setFrame:?];
    shutterButton = v44;
  }
}

- (void)_layoutFlipButtonForLayoutStyle:(int64_t)style
{
  flipButton = [(CAMViewfinderView *)self flipButton];
  if (flipButton)
  {
    v45 = flipButton;
    [(CAMViewfinderView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    window = [(CAMViewfinderView *)self window];
    v14 = CAMInterfaceOrientationForWindow(window) - 3;

    [v45 intrinsicContentSize];
    v16 = v15;
    v44 = v17;
    v18 = v6;
    v19 = v8;
    v20 = v10;
    v21 = v12;
    if (v14 > 1)
    {
      v22 = CGRectGetMaxX(*&v18) + -10.0 - v16;
      v49.origin.x = v6;
      v49.origin.y = v8;
      v49.size.width = v10;
      v49.size.height = v12;
      MinY = CGRectGetMinY(v49);
      v50.origin.x = v6;
      v50.origin.y = v8;
      v50.size.width = v10;
      v50.size.height = v12;
      MinX = CGRectGetMaxX(v50) + -70.0;
    }

    else
    {
      v22 = CGRectGetMinX(*&v18) + 10.0;
      v47.origin.x = v6;
      v47.origin.y = v8;
      v47.size.width = v10;
      v47.size.height = v12;
      MinY = CGRectGetMinY(v47);
      v48.origin.x = v6;
      v48.origin.y = v8;
      v48.size.width = v10;
      v48.size.height = v12;
      MinX = CGRectGetMinX(v48);
    }

    v51.origin.x = v6;
    v51.origin.y = v8;
    v51.size.width = v10;
    v51.size.height = v12;
    v25 = CGRectGetMinY(v51);
    v52.origin.x = MinX;
    v52.origin.y = v25;
    v52.size.width = 70.0;
    v52.size.height = 70.0;
    MaxY = CGRectGetMaxY(v52);
    v53.origin.x = v22;
    v53.origin.y = MinY + 10.0;
    v53.size.width = v16;
    v53.size.height = v44;
    v43 = MaxY - CGRectGetMaxY(v53);
    v54.origin.x = v22;
    v54.origin.y = MinY + 10.0;
    v54.size.width = v16;
    v54.size.height = v44;
    v27 = CGRectGetMinX(v54);
    v55.origin.x = MinX;
    v55.origin.y = v25;
    v55.size.width = 70.0;
    v55.size.height = 70.0;
    v42 = v27 - CGRectGetMinX(v55);
    v56.origin.x = v22;
    v56.origin.y = MinY + 10.0;
    v56.size.width = v16;
    v56.size.height = v44;
    v28 = CGRectGetMinY(v56);
    v57.origin.x = MinX;
    v57.origin.y = v25;
    v57.size.width = 70.0;
    v57.size.height = 70.0;
    v29 = v28 - CGRectGetMinY(v57);
    v58.origin.x = MinX;
    v58.origin.y = v25;
    v58.size.width = 70.0;
    v58.size.height = 70.0;
    MaxX = CGRectGetMaxX(v58);
    v59.origin.x = v22;
    v59.origin.y = MinY + 10.0;
    v59.size.width = v16;
    v59.size.height = v44;
    [v45 setTappableEdgeInsets:{v29, v42, v43, MaxX - CGRectGetMaxX(v59)}];
    [v45 frameForAlignmentRect:{v22, MinY + 10.0, v16, v44}];
    x = v60.origin.x;
    y = v60.origin.y;
    width = v60.size.width;
    height = v60.size.height;
    v35 = CGRectGetMinX(v60);
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    CGRectGetWidth(v61);
    UIRoundToViewScale();
    v37 = v35 + v36;
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    v38 = CGRectGetMinY(v62);
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    CGRectGetHeight(v63);
    UIRoundToViewScale();
    v40 = v38 + v39;
    [v45 setBounds:{0.0, 0.0, width, height}];
    [v45 setCenter:{v37, v40}];
    shutterButton = [(CAMViewfinderView *)self shutterButton];
    if (shutterButton)
    {
      [(CAMViewfinderView *)self insertSubview:v45 aboveSubview:shutterButton];
    }

    flipButton = v45;
  }
}

- (void)_layoutDescriptionOverlayView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    layoutStyle = [(CAMViewfinderView *)self layoutStyle];
    if (!layoutStyle || layoutStyle == 3)
    {
      v12 = *(MEMORY[0x1E695F058] + 16);
      v17 = *MEMORY[0x1E695F058];
      v18 = v12;
      v16 = *MEMORY[0x1E695EFF8];
      [(CAMViewfinderView *)self _previewLayoutForAspectRatio:0 shouldShiftPreviewForUtilityBar:0 outPreviewBounds:&v17 outPreviewCenter:&v16 outFourThreeTopBarFrame:0 outBottomBarFrame:0];
      v13 = v18;
      v14 = *&v16 - *&v18 * 0.5;
      v15 = *(&v16 + 1) - *(&v18 + 1) * 0.5;
      [(CAMViewfinderView *)self bounds];
      [viewCopy setFrame:?];
      [viewCopy setViewportFrame:{v14, v15, v13}];
      v10 = viewCopy;
      v11 = 1;
      goto LABEL_7;
    }

    if (layoutStyle == 1)
    {
      [(CAMViewfinderView *)self bounds];
      v7 = v6;
      [(CAMViewfinderView *)self bounds];
      v9 = v8;
      [viewCopy setFrame:{0.0, 0.0, v7}];
      [viewCopy setViewportFrame:{0.0, 0.0, v7, v9}];
      v10 = viewCopy;
      v11 = 0;
LABEL_7:
      [v10 setBlackoutFrameVisible:v11];
    }
  }
}

- (void)_layoutTextInteractionInsertAndActionInfoView
{
  rect_24 = [(CAMViewfinderView *)self textInteractionInsert];
  if (rect_24)
  {
    previewView = [(CAMViewfinderView *)self previewView];
    videoPreviewLayer = [previewView videoPreviewLayer];

    [videoPreviewLayer rectForMetadataOutputRectOfInterest:{0.0, 0.0, 1.0, 1.0}];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    layer = [(CAMViewfinderView *)self layer];
    [layer convertRect:videoPreviewLayer fromLayer:{v6, v8, v10, v12}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [rect_24 setFrame:{v15, v17, v19, v21}];
    [(CAMViewfinderView *)self bounds];
    v23 = v22;
    v51 = v24;
    rect = v22;
    v26 = v25;
    v28 = v27;
    v55.origin.x = v15;
    v55.origin.y = v17;
    v55.size.width = v19;
    v55.size.height = v21;
    CGRectGetMaxX(v55);
    v56.origin.x = v23;
    v56.origin.y = v51;
    v56.size.width = v26;
    v56.size.height = v28;
    CGRectGetMaxX(v56);
    v57.origin.x = v15;
    v57.origin.y = v17;
    v57.size.width = v19;
    v57.size.height = v21;
    CGRectGetMaxY(v57);
    v58.origin.x = rect;
    v58.origin.y = v51;
    v58.size.width = v26;
    v58.size.height = v28;
    CGRectGetMaxY(v58);
    UIEdgeInsetsMakeWithEdges();
    UIEdgeInsetsAdd();
    UIEdgeInsetsMax();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    bottomBar = [(CAMViewfinderView *)self bottomBar];
    [bottomBar frame];
    v39 = v36 + v38;

    +[CAMChromeViewSpec padViewItemDiameter];
    v41 = v40;
    +[CAMChromeViewSpec padViewItemDiameter];
    v43 = v39 + v42 * 2.0;
    [rect_24 setPreferredQuickActionButtonHeight:v41];
    actionInfoView = [rect_24 actionInfoView];
    if (actionInfoView)
    {
      [rect_24 bounds];
      v59.origin.y = v30 + v45;
      v59.size.height = v46 - (v30 + v34);
      v59.origin.x = v32 + v47;
      v59.size.width = v48 - (v32 + v43);
      [actionInfoView setFrame:{v59.origin.x, CGRectGetMaxY(v59) - v41, v59.size.width, v41}];
    }

    imageAnalysisInstructionLabel = [(CAMViewfinderView *)self imageAnalysisInstructionLabel];
    [imageAnalysisInstructionLabel frame];
    v50 = v30 + CGRectGetMaxY(v60);

    [rect_24 setContentInsets:{v50, v32, v34 + v41, v43}];
  }
}

- (void)_layoutMachineReadableCodeButton
{
  machineReadableCodeButton = [(CAMViewfinderView *)self machineReadableCodeButton];
  [(CAMViewfinderView *)self _layoutBottomCenteredView:machineReadableCodeButton aboveView:0 aboveViewSpacing:1 forLayoutStyle:0.0];
}

- (void)_previewLayoutForAspectRatio:(int64_t)ratio shouldShiftPreviewForUtilityBar:(BOOL)bar outPreviewBounds:(CGRect *)bounds outPreviewCenter:(CGPoint *)center outFourThreeTopBarFrame:(CGRect *)frame outBottomBarFrame:(CGRect *)barFrame
{
  barCopy = bar;
  _modernLayout = [(CAMViewfinderView *)self _modernLayout];

  if (_modernLayout)
  {
    if (ratio == 3)
    {
      barCopy = 0;
    }

    else
    {
      barCopy = barCopy;
    }

    _modernLayout2 = [(CAMViewfinderView *)self _modernLayout];
    [_modernLayout2 viewportFrameForAspectRatio:ratio accessoryAreaExpanded:barCopy smartStyleControlsExpanded:0];
    v18 = v17;
    v20 = v19;

    if (bounds)
    {
      bounds->size.width = v18;
      bounds->size.height = v20;
      bounds->origin = *MEMORY[0x1E695EFF8];
    }

    if (center)
    {
      UIRectGetCenter();
      center->x = v21;
      center->y = v22;
    }

    if (frame)
    {
      _modernLayout3 = [(CAMViewfinderView *)self _modernLayout];
      [_modernLayout3 frameForControlStatusBar];
      frame->origin.x = v24;
      frame->origin.y = v25;
      frame->size.width = v26;
      frame->size.height = v27;
    }

    if (barFrame)
    {
      _modernLayout4 = [(CAMViewfinderView *)self _modernLayout];
      [_modernLayout4 viewportFrameForAspectRatio:0 accessoryAreaExpanded:0 smartStyleControlsExpanded:0];
      MaxY = CGRectGetMaxY(v62);

      _modernLayout5 = [(CAMViewfinderView *)self _modernLayout];
      [_modernLayout5 viewportFrameForAspectRatio:1 accessoryAreaExpanded:0 smartStyleControlsExpanded:0];
      v31 = CGRectGetMaxY(v63);

      barFrame->origin.x = 0.0;
      barFrame->origin.y = MaxY;
      [(CAMViewfinderView *)self bounds];
      barFrame->size.width = v32;
      barFrame->size.height = v31 - MaxY;
    }
  }

  else if ([(CAMViewfinderView *)self useMessagesLayout])
  {
    [(CAMViewfinderView *)self bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [(CAMViewfinderView *)self _previewSizeForAspectRatio:ratio];
    [MEMORY[0x1E69C4998] cameraContentGeometryForReferenceBounds:-[CAMViewfinderView orientation](self forContentSize:"orientation" withOrientation:0 shouldShiftPreviewForUtilityBar:{0), barCopy, v34, v36, v38, v40, v41, v42}];
    [MEMORY[0x1E69C4998] cameraTopBarFrameForReferenceBounds:{v34, v36, v38, v40}];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    [MEMORY[0x1E69C4998] cameraBottomBarFrameForReferenceBounds:{v34, v36, v38, v40}];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    if (bounds)
    {
      bounds->origin.x = 0.0;
      bounds->origin.y = 0.0;
      bounds->size.width = fmin(0.0, 0.0);
      bounds->size.height = fmax(0.0, 0.0);
    }

    if (center)
    {
      [(CAMViewfinderView *)self _previewOffset];
      v60.f64[1] = v59;
      *center = vaddq_f64(0, v60);
    }

    if (frame)
    {
      frame->origin.x = v44;
      frame->origin.y = v46;
      frame->size.width = v48;
      frame->size.height = v50;
    }

    if (barFrame)
    {
      barFrame->origin.x = v52;
      barFrame->origin.y = v54;
      barFrame->size.width = v56;
      barFrame->size.height = v58;
    }
  }

  else
  {

    [(CAMViewfinderView *)self _cameraAppPreviewLayoutForAspectRatio:ratio shouldShiftPreviewForUtilityBar:barCopy outPreviewBounds:bounds outPreviewCenter:center outFourThreeTopBarFrame:frame outBottomBarFrame:barFrame];
  }
}

- (void)_cameraAppPreviewLayoutForAspectRatio:(int64_t)ratio shouldShiftPreviewForUtilityBar:(BOOL)bar outPreviewBounds:(CGRect *)bounds outPreviewCenter:(CGPoint *)center outFourThreeTopBarFrame:(CGRect *)frame outBottomBarFrame:(CGRect *)barFrame
{
  barCopy = bar;
  [(CAMViewfinderView *)self bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  layoutStyle = [(CAMViewfinderView *)self layoutStyle];
  [(CAMViewfinderView *)self _layoutMarginInsetsForLayoutStyle:layoutStyle];
  v25 = v16 + v24;
  v27 = v18 + v26;
  v29 = v20 - (v24 + v28);
  v31 = v22 - (v26 + v30);
  v81.origin.x = v25;
  v81.origin.y = v27;
  v81.size.width = v29;
  v81.size.height = v31;
  Width = CGRectGetWidth(v81);
  v82.origin.x = v25;
  v82.origin.y = v27;
  v82.size.width = v29;
  v82.size.height = v31;
  Height = CGRectGetHeight(v82);
  topBar = [(CAMViewfinderView *)self topBar];
  [(CAMViewfinderView *)self _previewSizeForAspectRatio:0];
  v33 = v32;
  v35 = v34;
  if (topBar)
  {
    [(CAMViewfinderView *)self _topBarSizeForLayoutStyle:layoutStyle];
    v37 = v36;
    v39 = v38;
    v83.origin.x = v25;
    v83.origin.y = v27;
    v83.size.width = v29;
    v83.size.height = v31;
    MinY = CGRectGetMinY(v83);
    v84.origin.x = v25;
    v84.origin.y = v27;
    v84.size.width = v29;
    v84.size.height = v31;
    v76 = v37;
    MinX = CGRectGetMinX(v84);
    v75 = v39;
  }

  else
  {
    v37 = *MEMORY[0x1E695F060];
    v39 = *(MEMORY[0x1E695F060] + 8);
    v85.origin.x = v25;
    v85.origin.y = v27;
    v85.size.width = v29;
    v85.size.height = v31;
    CGRectGetMinY(v85);
    MinX = *MEMORY[0x1E695F058];
    MinY = *(MEMORY[0x1E695F058] + 8);
    v75 = *(MEMORY[0x1E695F058] + 24);
    v76 = *(MEMORY[0x1E695F058] + 16);
  }

  bottomBar = [(CAMViewfinderView *)self bottomBar];
  if (bottomBar)
  {
    [(CAMViewfinderView *)self _bottomBarSizeForLayoutStyle:layoutStyle withProposedSize:Width - (v33 + v37), Height - (v35 + v39)];
    v42 = v41;
    v44 = v43;
    v86.origin.x = v25;
    v86.origin.y = v27;
    v86.size.width = v29;
    v86.size.height = v31;
    MaxY = CGRectGetMaxY(v86);
    v87.origin.x = v25;
    v87.origin.y = v27;
    v46 = v42;
    v87.size.width = v29;
    v47 = v44;
    v87.size.height = v31;
    v48 = CGRectGetMaxX(v87) - v42;
    v49 = MaxY - v44;
  }

  else
  {
    v88.origin.x = v25;
    v88.origin.y = v27;
    v88.size.width = v29;
    v88.size.height = v31;
    CGRectGetMaxY(v88);
    v48 = *MEMORY[0x1E695F058];
    v49 = *(MEMORY[0x1E695F058] + 8);
    v46 = *(MEMORY[0x1E695F058] + 16);
    v47 = *(MEMORY[0x1E695F058] + 24);
  }

  [(CAMViewfinderView *)self _previewSizeForAspectRatio:ratio];
  v51 = v50;
  v53 = v52;
  v72 = v47;
  v74 = v48;
  v54 = v49;
  v55 = v46;
  [(CAMViewfinderView *)self _previewFrameForAspectRatio:ratio topBarFrame:barCopy bottomBarFrame:MinX shouldShiftPreviewForUtilityBar:MinY, v76, v75, v48, v49, v46, v47];
  x = v89.origin.x;
  y = v89.origin.y;
  v58 = v89.size.width;
  v59 = v89.size.height;
  MidX = CGRectGetMidX(v89);
  v90.origin.x = x;
  v90.origin.y = y;
  v90.size.width = v58;
  v90.size.height = v59;
  MidY = CGRectGetMidY(v90);
  if (![(CAMViewfinderView *)self _wantsInterfaceOrientedPreviewForLayoutStyle:layoutStyle])
  {
    v67 = v51;
    v66 = v72;
    if (!bounds)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  window = [(CAMViewfinderView *)self window];
  externalDisplayPreviewOrientation = CAMInterfaceOrientationForWindow(window);

  window2 = [(CAMViewfinderView *)self window];
  screen = [window2 screen];
  _isEmbeddedScreen = [screen _isEmbeddedScreen];

  if ((_isEmbeddedScreen & 1) == 0)
  {
    externalDisplayPreviewOrientation = [(CAMViewfinderView *)self externalDisplayPreviewOrientation];
  }

  v66 = v72;
  if ((externalDisplayPreviewOrientation - 3) >= 2)
  {
    v67 = v51;
  }

  else
  {
    v67 = v53;
  }

  if ((externalDisplayPreviewOrientation - 3) < 2)
  {
    v53 = v51;
  }

  if (bounds)
  {
LABEL_18:
    bounds->origin.x = 0.0;
    bounds->origin.y = 0.0;
    bounds->size.width = v67;
    bounds->size.height = v53;
  }

LABEL_19:
  if (center)
  {
    [(CAMViewfinderView *)self _previewOffset];
    center->x = MidX + v68;
    center->y = MidY + v69;
  }

  if (frame)
  {
    frame->origin.x = MinX;
    frame->origin.y = MinY;
    frame->size.width = v76;
    frame->size.height = v75;
  }

  if (barFrame)
  {
    barFrame->origin.x = v74;
    barFrame->origin.y = v54;
    barFrame->size.width = v55;
    barFrame->size.height = v66;
  }
}

- (UIOffset)_previewOffset
{
  layoutStyle = [(CAMViewfinderView *)self layoutStyle];
  v5 = *MEMORY[0x1E69DE258];
  v4 = *(MEMORY[0x1E69DE258] + 8);
  if (layoutStyle == 1)
  {
    window = [(CAMViewfinderView *)self window];
    v7 = CAMInterfaceOrientationForWindow(window);

    v8 = v7 - 1;
    window2 = [(CAMViewfinderView *)self window];
    screen = [window2 screen];
    [screen _referenceBounds];
    v12 = v11;
    v14 = v13;

    v15 = v14 != 0.0 && v12 / v14 == 0.75;
    previewView = [(CAMViewfinderView *)self previewView];
    videoPreviewView = [previewView videoPreviewView];
    previewViewAspectMode = [videoPreviewView previewViewAspectMode];

    v19 = -15.0;
    if (v8 >= 2)
    {
      v19 = v5;
    }

    if (previewViewAspectMode == 1 && !v15)
    {
      v5 = v19;
    }
  }

  v20 = v5;
  v21 = v4;
  result.vertical = v21;
  result.horizontal = v20;
  return result;
}

- (UIEdgeInsets)_layoutMarginInsetsForLayoutStyle:(int64_t)style
{
  if (style == 3)
  {
    _modernLayout = [(CAMViewfinderView *)self _modernLayout];
    if (_modernLayout)
    {
      visibilityDelegate = [(CAMViewfinderView *)self visibilityDelegate];
      shouldShiftPreviewForUtilityBar = [visibilityDelegate shouldShiftPreviewForUtilityBar];

      [_modernLayout viewportFrameForAspectRatio:1 accessoryAreaExpanded:shouldShiftPreviewForUtilityBar smartStyleControlsExpanded:0];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [(CAMViewfinderView *)self bounds];
      v16 = v15;
      v28.origin.x = v8;
      v28.origin.y = v10;
      v28.size.width = v12;
      v28.size.height = v14;
      v17 = v16 - CGRectGetMaxY(v28);
      [_modernLayout frameForControlStatusBar];
      MinY = CGRectGetMinY(v29);
      v19 = 0.0;
    }

    else
    {
      window = [(CAMViewfinderView *)self window];
      screen = [window screen];
      [screen _referenceBounds];
      v24 = v23;

      v17 = v24 * 16.0 / 39.0 + -86.8461538;
      v19 = 0.0;
      MinY = 33.0;
    }

    v20 = 0.0;
  }

  else
  {
    MinY = *MEMORY[0x1E69DDCE0];
    v19 = *(MEMORY[0x1E69DDCE0] + 8);
    v17 = *(MEMORY[0x1E69DDCE0] + 16);
    v20 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v25 = MinY;
  v26 = v19;
  v27 = v17;
  result.right = v20;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

- (void)setTopBar:(id)bar
{
  barCopy = bar;
  topBar = self->_topBar;
  if (topBar != barCopy)
  {
    v7 = barCopy;
    [(CAMTopBar *)topBar removeFromSuperview];
    objc_storeStrong(&self->_topBar, bar);
    topBar = [(CAMViewfinderView *)self addSubview:self->_topBar];
    barCopy = v7;
  }

  MEMORY[0x1EEE66BB8](topBar, barCopy);
}

- (void)setPreviewView:(id)view
{
  viewCopy = view;
  if (self->_previewView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_previewView, view);
    _previewContainerView = [(CAMViewfinderView *)self _previewContainerView];
    [_previewContainerView addSubview:self->_previewView];

    viewCopy = v7;
  }
}

- (void)setShowingStandardControls:(BOOL)controls
{
  if (self->_showingStandardControls != controls)
  {
    self->_showingStandardControls = controls;
    [(CAMViewfinderView *)self setNeedsLayout];
  }
}

- (void)setDisabledModeOverlayView:(id)view
{
  viewCopy = view;
  disabledModeOverlayView = self->_disabledModeOverlayView;
  if (disabledModeOverlayView != viewCopy)
  {
    v8 = viewCopy;
    [(CAMDisabledModeOverlayView *)disabledModeOverlayView removeFromSuperview];
    objc_storeStrong(&self->_disabledModeOverlayView, view);
    _previewContainerMaskingView = [(CAMViewfinderView *)self _previewContainerMaskingView];
    [_previewContainerMaskingView addSubview:v8];
    [(CAMViewfinderView *)self setNeedsLayout];

    viewCopy = v8;
  }

  MEMORY[0x1EEE66BB8](disabledModeOverlayView, viewCopy);
}

- (void)setBottomBar:(id)bar
{
  barCopy = bar;
  bottomBar = self->_bottomBar;
  if (bottomBar != barCopy)
  {
    v7 = barCopy;
    [(CAMBottomBar *)bottomBar removeFromSuperview];
    objc_storeStrong(&self->_bottomBar, bar);
    bottomBar = [(CAMViewfinderView *)self addSubview:self->_bottomBar];
    barCopy = v7;
  }

  MEMORY[0x1EEE66BB8](bottomBar, barCopy);
}

- (void)setElapsedTimeView:(id)view
{
  viewCopy = view;
  elapsedTimeView = self->_elapsedTimeView;
  if (elapsedTimeView != viewCopy)
  {
    v7 = viewCopy;
    [(CAMElapsedTimeView *)elapsedTimeView removeFromSuperview];
    objc_storeStrong(&self->_elapsedTimeView, view);
    elapsedTimeView = [(CAMViewfinderView *)self addSubview:v7];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](elapsedTimeView, viewCopy);
}

- (void)setVideoConfigurationStatusIndicator:(id)indicator
{
  indicatorCopy = indicator;
  videoConfigurationStatusIndicator = self->_videoConfigurationStatusIndicator;
  if (videoConfigurationStatusIndicator != indicatorCopy)
  {
    v9 = indicatorCopy;
    superview = [(CAMVideoConfigurationStatusIndicator *)videoConfigurationStatusIndicator superview];

    if (superview == self)
    {
      [(CAMVideoConfigurationStatusIndicator *)self->_videoConfigurationStatusIndicator removeFromSuperview];
    }

    delegate = [(CAMControlStatusIndicator *)self->_videoConfigurationStatusIndicator delegate];

    if (delegate == self)
    {
      [(CAMControlStatusIndicator *)self->_videoConfigurationStatusIndicator setDelegate:0];
    }

    objc_storeStrong(&self->_videoConfigurationStatusIndicator, indicator);
    [(CAMControlStatusIndicator *)self->_videoConfigurationStatusIndicator setDelegate:self];
    videoConfigurationStatusIndicator = [(CAMViewfinderView *)self addSubview:self->_videoConfigurationStatusIndicator];
    indicatorCopy = v9;
  }

  MEMORY[0x1EEE66BB8](videoConfigurationStatusIndicator, indicatorCopy);
}

- (void)setShutterButton:(id)button
{
  buttonCopy = button;
  shutterButton = self->_shutterButton;
  if (shutterButton != buttonCopy)
  {
    v7 = buttonCopy;
    [(CUShutterButton *)shutterButton removeFromSuperview];
    objc_storeStrong(&self->_shutterButton, button);
    shutterButton = [(CAMViewfinderView *)self addSubview:self->_shutterButton];
    buttonCopy = v7;
  }

  MEMORY[0x1EEE66BB8](shutterButton, buttonCopy);
}

- (void)setFlipButton:(id)button
{
  buttonCopy = button;
  flipButton = self->_flipButton;
  if (flipButton != buttonCopy)
  {
    v8 = buttonCopy;
    [(CAMFlipButton *)flipButton removeFromSuperview];
    objc_storeStrong(&self->_flipButton, button);
    v7 = CAMPixelWidthForView(self);
    [(CAMFlipButton *)self->_flipButton setTappableEdgeInsets:v7 + 9.0, v7 + 9.0, v7 + 9.0, v7 + 9.0];
    flipButton = [(CAMViewfinderView *)self addSubview:v8];
    buttonCopy = v8;
  }

  MEMORY[0x1EEE66BB8](flipButton, buttonCopy);
}

- (void)setVisibleTopBadges:(id)badges animated:(BOOL)animated
{
  animatedCopy = animated;
  badgesCopy = badges;
  if (([badgesCopy isEqualToArray:self->_visibleTopBadges] & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DFA8] setWithArray:self->_visibleTopBadges];
    v7 = [MEMORY[0x1E695DFA8] setWithArray:badgesCopy];
    v8 = [badgesCopy copy];
    visibleTopBadges = self->_visibleTopBadges;
    self->_visibleTopBadges = v8;

    v10 = [v6 mutableCopy];
    [v10 minusSet:v7];
    v11 = v7;
    [v11 minusSet:v6];
    [(CAMViewfinderView *)self _enforceBadgeSubviewOrderingWithAppearingBadges:v11];
    [(CAMViewfinderView *)self _layoutTopBadgesForLayoutStyle:[(CAMViewfinderView *)self layoutStyle] appearingBadges:v11 disappearingBadges:v10 animated:animatedCopy];
  }
}

- (void)setFocusAndExposureLockBadge:(id)badge
{
  badgeCopy = badge;
  focusAndExposureLockBadge = self->_focusAndExposureLockBadge;
  if (focusAndExposureLockBadge != badgeCopy)
  {
    v10 = badgeCopy;
    [(CAMFocusLockBadge *)focusAndExposureLockBadge removeFromSuperview];
    delegate = [(CEKBadgeView *)self->_focusAndExposureLockBadge delegate];

    if (delegate == self)
    {
      [(CEKBadgeView *)self->_focusAndExposureLockBadge setDelegate:0];
    }

    [(CAMFocusLockBadge *)self->_focusAndExposureLockBadge setAlpha:1.0];
    objc_storeStrong(&self->_focusAndExposureLockBadge, badge);
    [(CEKBadgeView *)self->_focusAndExposureLockBadge setDelegate:self];
    visibleTopBadges = [(CAMViewfinderView *)self visibleTopBadges];
    v9 = [visibleTopBadges containsObject:self->_focusAndExposureLockBadge];

    if ((v9 & 1) == 0)
    {
      [(CAMFocusLockBadge *)self->_focusAndExposureLockBadge setAlpha:0.0];
    }

    focusAndExposureLockBadge = [(CAMViewfinderView *)self addSubview:v10];
    badgeCopy = v10;
  }

  MEMORY[0x1EEE66BB8](focusAndExposureLockBadge, badgeCopy);
}

- (void)setLivePhotoBadge:(id)badge
{
  badgeCopy = badge;
  livePhotoBadge = self->_livePhotoBadge;
  if (livePhotoBadge != badgeCopy)
  {
    v10 = badgeCopy;
    [(CAMLivePhotoBadge *)livePhotoBadge removeFromSuperview];
    delegate = [(CEKBadgeView *)self->_livePhotoBadge delegate];

    if (delegate == self)
    {
      [(CEKBadgeView *)self->_livePhotoBadge setDelegate:0];
    }

    [(CAMLivePhotoBadge *)self->_livePhotoBadge setAlpha:1.0];
    objc_storeStrong(&self->_livePhotoBadge, badge);
    [(CEKBadgeView *)self->_livePhotoBadge setDelegate:self];
    visibleTopBadges = [(CAMViewfinderView *)self visibleTopBadges];
    v9 = [visibleTopBadges containsObject:self->_livePhotoBadge];

    if ((v9 & 1) == 0)
    {
      [(CAMLivePhotoBadge *)self->_livePhotoBadge setAlpha:0.0];
    }

    livePhotoBadge = [(CAMViewfinderView *)self addSubview:v10];
    badgeCopy = v10;
  }

  MEMORY[0x1EEE66BB8](livePhotoBadge, badgeCopy);
}

- (void)setShallowDepthOfFieldBadge:(id)badge
{
  badgeCopy = badge;
  shallowDepthOfFieldBadge = self->_shallowDepthOfFieldBadge;
  if (shallowDepthOfFieldBadge != badgeCopy)
  {
    v9 = badgeCopy;
    [(CAMShallowDepthOfFieldBadge *)shallowDepthOfFieldBadge removeFromSuperview];
    [(CAMShallowDepthOfFieldBadge *)self->_shallowDepthOfFieldBadge setAlpha:1.0];
    objc_storeStrong(&self->_shallowDepthOfFieldBadge, badge);
    visibleTopBadges = [(CAMViewfinderView *)self visibleTopBadges];
    v8 = [visibleTopBadges containsObject:self->_shallowDepthOfFieldBadge];

    if ((v8 & 1) == 0)
    {
      [(CAMShallowDepthOfFieldBadge *)self->_shallowDepthOfFieldBadge setAlpha:0.0];
    }

    shallowDepthOfFieldBadge = [(CAMViewfinderView *)self addSubview:v9];
    badgeCopy = v9;
  }

  MEMORY[0x1EEE66BB8](shallowDepthOfFieldBadge, badgeCopy);
}

- (void)setPortraitModeInstructionLabel:(id)label
{
  labelCopy = label;
  portraitModeInstructionLabel = self->_portraitModeInstructionLabel;
  if (portraitModeInstructionLabel != labelCopy)
  {
    v8 = labelCopy;
    [(CAMPortraitModeInstructionLabel *)portraitModeInstructionLabel removeFromSuperview];
    delegate = [(CAMInstructionLabel *)self->_portraitModeInstructionLabel delegate];

    if (delegate == self)
    {
      [(CAMInstructionLabel *)self->_portraitModeInstructionLabel setDelegate:0];
    }

    objc_storeStrong(&self->_portraitModeInstructionLabel, label);
    [(CAMInstructionLabel *)self->_portraitModeInstructionLabel setDelegate:self];
    portraitModeInstructionLabel = [(CAMViewfinderView *)self addSubview:v8];
    labelCopy = v8;
  }

  MEMORY[0x1EEE66BB8](portraitModeInstructionLabel, labelCopy);
}

- (void)setCleanLensesInstructionLabel:(id)label
{
  labelCopy = label;
  cleanLensesInstructionLabel = self->_cleanLensesInstructionLabel;
  if (cleanLensesInstructionLabel != labelCopy)
  {
    v8 = labelCopy;
    [(CAMCleanLensesInstructionLabel *)cleanLensesInstructionLabel removeFromSuperview];
    delegate = [(CAMInstructionLabel *)self->_cleanLensesInstructionLabel delegate];

    if (delegate == self)
    {
      [(CAMInstructionLabel *)self->_cleanLensesInstructionLabel setDelegate:0];
    }

    objc_storeStrong(&self->_cleanLensesInstructionLabel, label);
    [(CAMInstructionLabel *)self->_cleanLensesInstructionLabel setDelegate:self];
    cleanLensesInstructionLabel = [(CAMViewfinderView *)self addSubview:v8];
    labelCopy = v8;
  }

  MEMORY[0x1EEE66BB8](cleanLensesInstructionLabel, labelCopy);
}

- (void)setSharedLibraryBadge:(id)badge
{
  badgeCopy = badge;
  sharedLibraryBadge = self->_sharedLibraryBadge;
  if (sharedLibraryBadge != badgeCopy)
  {
    v10 = badgeCopy;
    [(CAMSharedLibraryBadge *)sharedLibraryBadge removeFromSuperview];
    delegate = [(CEKBadgeView *)self->_sharedLibraryBadge delegate];

    if (delegate == self)
    {
      [(CEKBadgeView *)self->_sharedLibraryBadge setDelegate:0];
    }

    [(CAMSharedLibraryBadge *)self->_sharedLibraryBadge setAlpha:1.0];
    objc_storeStrong(&self->_sharedLibraryBadge, badge);
    [(CEKBadgeView *)self->_sharedLibraryBadge setDelegate:self];
    visibleTopBadges = [(CAMViewfinderView *)self visibleTopBadges];
    v9 = [visibleTopBadges containsObject:self->_sharedLibraryBadge];

    if ((v9 & 1) == 0)
    {
      [(CAMSharedLibraryBadge *)self->_sharedLibraryBadge setAlpha:0.0];
    }

    sharedLibraryBadge = [(CAMViewfinderView *)self addSubview:v10];
    badgeCopy = v10;
  }

  MEMORY[0x1EEE66BB8](sharedLibraryBadge, badgeCopy);
}

- (void)setDescriptionOverlayView:(id)view forKey:(id)key
{
  viewCopy = view;
  keyCopy = key;
  _descriptionOverlayViewByKey = [(CAMViewfinderView *)self _descriptionOverlayViewByKey];
  v8 = [_descriptionOverlayViewByKey objectForKeyedSubscript:keyCopy];
  if (v8 != viewCopy)
  {
    superview = [v8 superview];

    if (superview == self)
    {
      [v8 removeFromSuperview];
    }

    [_descriptionOverlayViewByKey setObject:viewCopy forKeyedSubscript:keyCopy];
    [viewCopy setOrientation:{-[CAMViewfinderView orientation](self, "orientation")}];
    _previewContainerMaskingView = [(CAMViewfinderView *)self _previewContainerMaskingView];
    [(CAMViewfinderView *)self insertSubview:viewCopy aboveSubview:_previewContainerMaskingView];
  }
}

- (id)descriptionOverlayViewForKey:(id)key
{
  keyCopy = key;
  _descriptionOverlayViewByKey = [(CAMViewfinderView *)self _descriptionOverlayViewByKey];
  v6 = [_descriptionOverlayViewByKey objectForKeyedSubscript:keyCopy];

  return v6;
}

- (void)setQrCodeInstructionLabel:(id)label
{
  labelCopy = label;
  qrCodeInstructionLabel = self->_qrCodeInstructionLabel;
  if (qrCodeInstructionLabel != labelCopy)
  {
    v8 = labelCopy;
    [(CAMQRCodeInstructionLabel *)qrCodeInstructionLabel removeFromSuperview];
    delegate = [(CAMInstructionLabel *)self->_qrCodeInstructionLabel delegate];

    if (delegate == self)
    {
      [(CAMInstructionLabel *)self->_qrCodeInstructionLabel setDelegate:0];
    }

    objc_storeStrong(&self->_qrCodeInstructionLabel, label);
    [(CAMInstructionLabel *)self->_qrCodeInstructionLabel setDelegate:self];
    qrCodeInstructionLabel = [(CAMViewfinderView *)self addSubview:v8];
    labelCopy = v8;
  }

  MEMORY[0x1EEE66BB8](qrCodeInstructionLabel, labelCopy);
}

- (void)setFilterNameBadge:(id)badge
{
  badgeCopy = badge;
  filterNameBadge = self->_filterNameBadge;
  if (filterNameBadge != badgeCopy)
  {
    v8 = badgeCopy;
    delegate = [(CEKBadgeView *)filterNameBadge delegate];

    if (delegate == self)
    {
      [(CEKBadgeView *)self->_filterNameBadge setDelegate:0];
    }

    [(CAMFilterNameBadge *)self->_filterNameBadge removeFromSuperview];
    objc_storeStrong(&self->_filterNameBadge, badge);
    [(CEKBadgeView *)self->_filterNameBadge setDelegate:self];
    filterNameBadge = [(CAMViewfinderView *)self addSubview:v8];
    badgeCopy = v8;
  }

  MEMORY[0x1EEE66BB8](filterNameBadge, badgeCopy);
}

- (void)controlStatusIndicatorDidChangeIntrinsicContentSize:(id)size animated:(BOOL)animated
{
  v5 = [(CAMViewfinderView *)self layoutStyle:size];

  [(CAMViewfinderView *)self _layoutVideoConfigurationStatusIndicatorForLayoutStyle:v5];
}

- (void)badgeViewDidChangeIntrinsicContentSize:(id)size
{
  layoutStyle = [(CAMViewfinderView *)self layoutStyle];
  [(CAMViewfinderView *)self _layoutPortraitModeInstructionLabelForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutQRCodeInstructionLabelForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutTopBadgesForLayoutStyle:layoutStyle animated:1];

  [(CAMViewfinderView *)self _layoutBottomBadgesForLayoutStyle:layoutStyle];
}

- (void)instructionLabelDidChangeIntrinsicContentSize:(id)size
{
  layoutStyle = [(CAMViewfinderView *)self layoutStyle];
  [(CAMViewfinderView *)self _layoutPortraitModeInstructionLabelForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutQRCodeInstructionLabelForLayoutStyle:layoutStyle];
  [(CAMViewfinderView *)self _layoutTopBadgesForLayoutStyle:layoutStyle animated:1];

  [(CAMViewfinderView *)self _layoutBottomBadgesForLayoutStyle:layoutStyle];
}

- (void)setShutterIndicatorView:(id)view
{
  viewCopy = view;
  shutterIndicatorView = self->_shutterIndicatorView;
  if (shutterIndicatorView != viewCopy)
  {
    v7 = viewCopy;
    [(CAMShutterIndicatorView *)shutterIndicatorView removeFromSuperview];
    objc_storeStrong(&self->_shutterIndicatorView, view);
    shutterIndicatorView = [(CAMViewfinderView *)self addSubview:v7];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](shutterIndicatorView, viewCopy);
}

- (void)setBurstIndicatorView:(id)view
{
  viewCopy = view;
  burstIndicatorView = self->_burstIndicatorView;
  if (burstIndicatorView != viewCopy)
  {
    v7 = viewCopy;
    [(CAMBurstIndicatorView *)burstIndicatorView removeFromSuperview];
    objc_storeStrong(&self->_burstIndicatorView, view);
    burstIndicatorView = [(CAMViewfinderView *)self addSubview:v7];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](burstIndicatorView, viewCopy);
}

- (void)setTimerIndicatorView:(id)view
{
  viewCopy = view;
  timerIndicatorView = self->_timerIndicatorView;
  if (timerIndicatorView != viewCopy)
  {
    v7 = viewCopy;
    [(CAMTimerIndicatorView *)timerIndicatorView removeFromSuperview];
    objc_storeStrong(&self->_timerIndicatorView, view);
    [(CAMViewfinderView *)self addSubview:v7];
    timerIndicatorView = [(CAMViewfinderView *)self _enforceBadgeSubviewOrderingWithAppearingBadges:0];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](timerIndicatorView, viewCopy);
}

- (void)setPanoramaView:(id)view
{
  viewCopy = view;
  panoramaView = self->_panoramaView;
  if (panoramaView != viewCopy)
  {
    v7 = viewCopy;
    [(CAMPanoramaView *)panoramaView removeFromSuperview];
    objc_storeStrong(&self->_panoramaView, view);
    panoramaView = [(CAMViewfinderView *)self addSubview:v7];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](panoramaView, viewCopy);
}

- (void)setZoomSlider:(id)slider
{
  sliderCopy = slider;
  zoomSlider = self->_zoomSlider;
  if (zoomSlider != sliderCopy)
  {
    v7 = sliderCopy;
    [(CAMZoomSlider *)zoomSlider removeFromSuperview];
    objc_storeStrong(&self->_zoomSlider, slider);
    zoomSlider = [(CAMViewfinderView *)self addSubview:v7];
    sliderCopy = v7;
  }

  MEMORY[0x1EEE66BB8](zoomSlider, sliderCopy);
}

- (void)setZoomControl:(id)control
{
  controlCopy = control;
  zoomControl = self->_zoomControl;
  if (zoomControl != controlCopy)
  {
    v10 = controlCopy;
    [(CAMZoomControl *)zoomControl removeFromSuperview];
    objc_storeStrong(&self->_zoomControl, control);
    bottomBar = [(CAMViewfinderView *)self bottomBar];
    if (bottomBar)
    {
      [(CAMViewfinderView *)self insertSubview:v10 belowSubview:bottomBar];
    }

    else
    {
      chromeView = [(CAMViewfinderView *)self chromeView];

      if (chromeView)
      {
        chromeView2 = [(CAMViewfinderView *)self chromeView];
        [(CAMViewfinderView *)self insertSubview:v10 belowSubview:chromeView2];
      }

      else
      {
        [(CAMViewfinderView *)self addSubview:v10];
      }
    }

    [(CAMViewfinderView *)self setNeedsLayout];

    controlCopy = v10;
  }

  MEMORY[0x1EEE66BB8](zoomControl, controlCopy);
}

- (void)setLightingControl:(id)control
{
  controlCopy = control;
  lightingControl = self->_lightingControl;
  if (lightingControl != controlCopy)
  {
    v7 = controlCopy;
    [(CEKLightingControl *)lightingControl removeFromSuperview];
    objc_storeStrong(&self->_lightingControl, control);
    [(CEKLightingControl *)self->_lightingControl setOrientation:[(CAMViewfinderView *)self orientation]];
    lightingControl = [(CAMViewfinderView *)self addSubview:v7];
    controlCopy = v7;
  }

  MEMORY[0x1EEE66BB8](lightingControl, controlCopy);
}

- (void)setLightingNameBadge:(id)badge
{
  badgeCopy = badge;
  lightingNameBadge = self->_lightingNameBadge;
  if (lightingNameBadge != badgeCopy)
  {
    v8 = badgeCopy;
    delegate = [(CEKLightingNameBadge *)lightingNameBadge delegate];

    if (delegate == self)
    {
      [(CEKLightingNameBadge *)self->_lightingNameBadge setDelegate:0];
    }

    [(CEKLightingNameBadge *)self->_lightingNameBadge removeFromSuperview];
    objc_storeStrong(&self->_lightingNameBadge, badge);
    [(CEKLightingNameBadge *)self->_lightingNameBadge setDelegate:self];
    lightingNameBadge = [(CAMViewfinderView *)self addSubview:v8];
    badgeCopy = v8;
  }

  MEMORY[0x1EEE66BB8](lightingNameBadge, badgeCopy);
}

- (void)setAutomaticallyAdjustsTopBarOrientation:(BOOL)orientation
{
  if (self->_automaticallyAdjustsTopBarOrientation != orientation)
  {
    self->_automaticallyAdjustsTopBarOrientation = orientation;
    [(CAMViewfinderView *)self setNeedsLayout];
  }
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  v37 = *MEMORY[0x1E69E9840];
  orientation = self->_orientation;
  if (orientation != orientation)
  {
    animatedCopy = animated;
    layoutStyle = [(CAMViewfinderView *)self layoutStyle];
    if (animatedCopy)
    {
      [(CAMViewfinderView *)self layoutIfNeeded];
      self->_orientation = orientation;
      if (layoutStyle != 3 && layoutStyle || (orientation - 1) >= 2)
      {
        v11 = 0.25;
        v10 = 0.0;
        v9 = 0.2;
        v12 = 0.3;
      }

      else if ((orientation - 1) > 1)
      {
        v10 = 0.0;
        v9 = 0.2;
        v12 = 0.3;
        v11 = 0.25;
      }

      else
      {
        v9 = 0.0;
        v10 = 0.1;
        v11 = 0.2;
        v12 = 0.2;
      }

      v13 = MEMORY[0x1E695DFA8];
      visibleTopBadges = [(CAMViewfinderView *)self visibleTopBadges];
      v15 = [v13 setWithArray:visibleTopBadges];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v33;
        do
        {
          v20 = 0;
          do
          {
            if (*v33 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [(CAMViewfinderView *)self _createPlaceholderSnapshotAndPerformDoubleSidedFadeForView:*(*(&v32 + 1) + 8 * v20++) fadeOutDuration:v12 fadeOutDelay:v10 fadeInDuration:v11 fadeInDelay:v9];
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v18);
      }

      visibilityDelegate = [(CAMViewfinderView *)self visibilityDelegate];
      if (([visibilityDelegate shouldHidePortraitModeInstructionLabel] & 1) == 0)
      {
        portraitModeInstructionLabel = [(CAMViewfinderView *)self portraitModeInstructionLabel];
        [(CAMViewfinderView *)self _createPlaceholderSnapshotAndPerformDoubleSidedFadeForView:portraitModeInstructionLabel fadeOutDuration:v12 fadeOutDelay:v10 fadeInDuration:v11 fadeInDelay:v9];
      }

      if (([visibilityDelegate shouldHideQRCodeInstructionLabel] & 1) == 0)
      {
        qrCodeInstructionLabel = [(CAMViewfinderView *)self qrCodeInstructionLabel];
        [(CAMViewfinderView *)self _createPlaceholderSnapshotAndPerformDoubleSidedFadeForView:qrCodeInstructionLabel fadeOutDuration:v12 fadeOutDelay:v10 fadeInDuration:v11 fadeInDelay:v9];
      }

      if (([visibilityDelegate shouldHideFilterNameBadge] & 1) == 0)
      {
        filterNameBadge = [(CAMViewfinderView *)self filterNameBadge];
        [(CAMViewfinderView *)self _createPlaceholderSnapshotAndPerformDoubleSidedFadeForView:filterNameBadge fadeOutDuration:v12 fadeOutDelay:v10 fadeInDuration:v11 fadeInDelay:v9];
      }

      if (([visibilityDelegate shouldHideLightingNameBadgeForOrientation:orientation] & 1) == 0)
      {
        if ((orientation - 3) >= 2)
        {
          if ((orientation - 1) >= 2)
          {
            lightingNameBadge = [(CAMViewfinderView *)self lightingNameBadge];
          }

          else
          {
            lightingNameBadge = [(CAMViewfinderView *)self lightingNameBadge];
            if ((orientation - 3) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              [(CAMViewfinderView *)self _createPlaceholderSnapshotAndPerformSingleSidedFadeForView:lightingNameBadge fadeOutDuration:v12 fadeOutDelay:v10];
            }
          }
        }

        else
        {
          lightingNameBadge = [(CAMViewfinderView *)self lightingNameBadge];
          if ((orientation - 3) <= 1)
          {
            [(CAMViewfinderView *)self _createPlaceholderSnapshotAndPerformDoubleSidedFadeForView:lightingNameBadge fadeOutDuration:v12 fadeOutDelay:v10 fadeInDuration:v11 fadeInDelay:v9];
          }
        }
      }

      shouldHideTopBar = [visibilityDelegate shouldHideTopBar];
      if (((orientation - 1) | (orientation - 1)) >= 2 && (shouldHideTopBar & 1) == 0 && [(CAMViewfinderView *)self automaticallyAdjustsTopBarOrientation])
      {
        topBar = [(CAMViewfinderView *)self topBar];
        [(CAMViewfinderView *)self _createPlaceholderSnapshotAndPerformDoubleSidedFadeForView:topBar fadeOutDuration:0.3 fadeOutDelay:0.0 fadeInDuration:0.25 fadeInDelay:0.2];
      }
    }

    else
    {
      self->_orientation = orientation;
    }

    _descriptionOverlayViewByKey = [(CAMViewfinderView *)self _descriptionOverlayViewByKey];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __45__CAMViewfinderView_setOrientation_animated___block_invoke;
    v30[3] = &__block_descriptor_41_e55_v32__0___NSCopying__8__CAMDescriptionOverlayView_16_B24l;
    v30[4] = orientation;
    v31 = animatedCopy;
    [_descriptionOverlayViewByKey enumerateKeysAndObjectsUsingBlock:v30];

    [(CAMViewfinderView *)self setNeedsLayout];
    [(CAMViewfinderView *)self _layoutPortraitModeInstructionLabelForLayoutStyle:layoutStyle];
    [(CAMViewfinderView *)self _layoutQRCodeInstructionLabelForLayoutStyle:layoutStyle];
    [(CAMViewfinderView *)self _layoutTopBadgesForLayoutStyle:layoutStyle animated:0];
    [(CAMViewfinderView *)self _layoutBottomBadgesForLayoutStyle:layoutStyle];
    if (animatedCopy)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __45__CAMViewfinderView_setOrientation_animated___block_invoke_2;
      v29[3] = &unk_1E76F77B0;
      v29[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v29 options:0 animations:0.25 completion:0.0];
    }
  }
}

- (void)prepareForAutorotation
{
  _previewContainerMaskingView = [(CAMViewfinderView *)self _previewContainerMaskingView];
  [_previewContainerMaskingView setClipsToBounds:0];
  [(CAMViewfinderView *)self _layoutSnapshotsOfPreviewView];
}

- (void)_createPlaceholderSnapshotAndPerformSingleSidedFadeForView:(id)view fadeOutDuration:(double)duration fadeOutDelay:(double)delay
{
  viewCopy = view;
  v8 = [viewCopy snapshotViewAfterScreenUpdates:0];
  v9 = MEMORY[0x1E69DD250];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109__CAMViewfinderView__createPlaceholderSnapshotAndPerformSingleSidedFadeForView_fadeOutDuration_fadeOutDelay___block_invoke;
  v18[3] = &unk_1E76F7960;
  v10 = v8;
  v19 = v10;
  v20 = viewCopy;
  v11 = viewCopy;
  [v9 performWithoutAnimation:v18];
  v12 = MEMORY[0x1E69DD250];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __109__CAMViewfinderView__createPlaceholderSnapshotAndPerformSingleSidedFadeForView_fadeOutDuration_fadeOutDelay___block_invoke_2;
  v16[3] = &unk_1E76F77B0;
  v17 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __109__CAMViewfinderView__createPlaceholderSnapshotAndPerformSingleSidedFadeForView_fadeOutDuration_fadeOutDelay___block_invoke_3;
  v14[3] = &unk_1E76F7988;
  v15 = v17;
  v13 = v17;
  [v12 animateWithDuration:327682 delay:v16 options:v14 animations:duration completion:delay];
}

void __109__CAMViewfinderView__createPlaceholderSnapshotAndPerformSingleSidedFadeForView_fadeOutDuration_fadeOutDelay___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) bounds];
  [v2 setBounds:?];
  v3 = *(a1 + 32);
  [*(a1 + 40) center];
  [v3 setCenter:?];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  [v5 setTransform:v8];
  v6 = [*(a1 + 40) superview];
  [v6 addSubview:*(a1 + 32)];

  [*(a1 + 40) setAlpha:0.0];
  v7 = [*(a1 + 40) layer];
  [v7 removeAllAnimations];
}

- (void)_createPlaceholderSnapshotAndPerformDoubleSidedFadeForView:(id)view fadeOutDuration:(double)duration fadeOutDelay:(double)delay fadeInDuration:(double)inDuration fadeInDelay:(double)inDelay
{
  viewCopy = view;
  [(CAMViewfinderView *)self _createPlaceholderSnapshotAndPerformSingleSidedFadeForView:viewCopy fadeOutDuration:duration fadeOutDelay:delay];
  v13 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __136__CAMViewfinderView__createPlaceholderSnapshotAndPerformDoubleSidedFadeForView_fadeOutDuration_fadeOutDelay_fadeInDuration_fadeInDelay___block_invoke;
  v15[3] = &unk_1E76F77B0;
  v16 = viewCopy;
  v14 = viewCopy;
  [v13 animateWithDuration:2 delay:v15 options:0 animations:inDuration completion:inDelay];
}

- (void)setTextInteractionInsert:(id)insert
{
  insertCopy = insert;
  textInteractionInsert = self->_textInteractionInsert;
  if (textInteractionInsert != insertCopy)
  {
    v7 = insertCopy;
    textInteractionInsert = [(VKTextLiftingView *)textInteractionInsert removeFromSuperview];
    insertCopy = v7;
    self->_textInteractionInsert = v7;
    if (v7)
    {
      [(CAMViewfinderView *)self addSubview:v7];
      [(CAMViewfinderView *)self _layoutTextInteractionInsertAndActionInfoView];
      imageAnalysisInstructionLabel = [(CAMViewfinderView *)self imageAnalysisInstructionLabel];
      [(CAMViewfinderView *)self bringSubviewToFront:imageAnalysisInstructionLabel];

      insertCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](textInteractionInsert, insertCopy);
}

- (void)setImageAnalysisInstructionLabel:(id)label
{
  labelCopy = label;
  imageAnalysisInstructionLabel = self->_imageAnalysisInstructionLabel;
  if (imageAnalysisInstructionLabel != labelCopy)
  {
    v7 = labelCopy;
    [(CAMImageAnalysisInstructionLabel *)imageAnalysisInstructionLabel removeFromSuperview];
    objc_storeStrong(&self->_imageAnalysisInstructionLabel, label);
    imageAnalysisInstructionLabel = [(CAMViewfinderView *)self addSubview:v7];
    labelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](imageAnalysisInstructionLabel, labelCopy);
}

- (void)adoptMachineReadableCodeButton:(id)button animated:(BOOL)animated
{
  animatedCopy = animated;
  buttonCopy = button;
  machineReadableCodeButton = [(CAMViewfinderView *)self machineReadableCodeButton];
  v8 = machineReadableCodeButton;
  if (machineReadableCodeButton != buttonCopy)
  {
    if (machineReadableCodeButton)
    {
      [(CAMViewfinderView *)self dismissMachineReadableCodeButtonAnimated:animatedCopy];
    }

    [(CAMViewfinderView *)self setMachineReadableCodeButton:buttonCopy];
    v9 = 0.0;
    if (animatedCopy)
    {
      [buttonCopy setAlpha:0.0];
      v9 = 0.3;
    }

    [(CAMViewfinderView *)self addSubview:buttonCopy];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__CAMViewfinderView_adoptMachineReadableCodeButton_animated___block_invoke;
    v10[3] = &unk_1E76F77B0;
    v11 = buttonCopy;
    [CAMView animateIfNeededWithDuration:v10 animations:v9];
  }
}

- (void)dismissMachineReadableCodeButtonAnimated:(BOOL)animated
{
  animatedCopy = animated;
  machineReadableCodeButton = [(CAMViewfinderView *)self machineReadableCodeButton];
  if (machineReadableCodeButton)
  {
    [(CAMViewfinderView *)self setMachineReadableCodeButton:0];
    if (animatedCopy)
    {
      v6 = 0.3;
    }

    else
    {
      v6 = 0.0;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__CAMViewfinderView_dismissMachineReadableCodeButtonAnimated___block_invoke;
    v9[3] = &unk_1E76F77B0;
    v10 = machineReadableCodeButton;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__CAMViewfinderView_dismissMachineReadableCodeButtonAnimated___block_invoke_2;
    v7[3] = &unk_1E76F9A38;
    v7[4] = self;
    v8 = v10;
    [CAMView animateIfNeededWithDuration:v9 animations:v7 completion:v6];
  }
}

void __62__CAMViewfinderView_dismissMachineReadableCodeButtonAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) machineReadableCodeButton];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    v4 = *(a1 + 40);

    [v4 removeFromSuperview];
  }
}

- (void)setChromeView:(id)view
{
  viewCopy = view;
  chromeView = self->_chromeView;
  if (chromeView != viewCopy)
  {
    v9 = viewCopy;
    superview = [(UIView *)chromeView superview];

    if (superview == self)
    {
      [(UIView *)self->_chromeView removeFromSuperview];
    }

    objc_storeStrong(&self->_chromeView, view);
    _bottomBarExtensionView = [(CAMViewfinderView *)self _bottomBarExtensionView];
    [CAMView view:self insertSubview:v9 aboveSubview:_bottomBarExtensionView];

    chromeView = [(CAMViewfinderView *)self setNeedsLayout];
    viewCopy = v9;
  }

  MEMORY[0x1EEE66BB8](chromeView, viewCopy);
}

- (void)setExternalChromeShutterButtonFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_externalChromeShutterButtonFrame = &self->_externalChromeShutterButtonFrame;
  if (!CGRectEqualToRect(self->_externalChromeShutterButtonFrame, frame))
  {
    p_externalChromeShutterButtonFrame->origin.x = x;
    p_externalChromeShutterButtonFrame->origin.y = y;
    p_externalChromeShutterButtonFrame->size.width = width;
    p_externalChromeShutterButtonFrame->size.height = height;

    [(CAMViewfinderView *)self setNeedsLayout];
  }
}

- (CAMPanoramaChromeLayoutDelegate)chromePanoramaLayoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chromePanoramaLayoutDelegate);

  return WeakRetained;
}

- (CGRect)externalChromeShutterButtonFrame
{
  x = self->_externalChromeShutterButtonFrame.origin.x;
  y = self->_externalChromeShutterButtonFrame.origin.y;
  width = self->_externalChromeShutterButtonFrame.size.width;
  height = self->_externalChromeShutterButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end