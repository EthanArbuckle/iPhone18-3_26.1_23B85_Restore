@interface CAMViewfinderView
- (BOOL)_shouldLayoutPortraitInstructionsAtTop;
- (BOOL)_wantsInterfaceOrientedPreviewForLayoutStyle:(int64_t)a3;
- (CAMControlVisibilityDelegate)visibilityDelegate;
- (CAMPanoramaChromeLayoutDelegate)chromePanoramaLayoutDelegate;
- (CAMViewfinderView)initWithCoder:(id)a3;
- (CAMViewfinderView)initWithFrame:(CGRect)a3;
- (CAMViewfinderView)initWithLayoutStyle:(int64_t)a3;
- (CGRect)_cameraPreviewFrameForAspectRatio:(int64_t)a3 topBarFrame:(CGRect)a4 bottomBarFrame:(CGRect)a5 shouldShiftPreviewForUtilityBar:(BOOL)a6;
- (CGRect)_frameForBadgeTrayForLayoutStyle:(int64_t)a3 orientation:(int64_t)a4;
- (CGRect)_previewFrameForAspectRatio:(int64_t)a3 topBarFrame:(CGRect)a4 bottomBarFrame:(CGRect)a5 shouldShiftPreviewForUtilityBar:(BOOL)a6;
- (CGRect)externalChromeShutterButtonFrame;
- (CGSize)_bottomBarSizeForLayoutStyle:(int64_t)a3 withProposedSize:(CGSize)a4;
- (CGSize)_previewSizeForAspectRatio:(int64_t)a3;
- (CGSize)_topBarSizeForLayoutStyle:(int64_t)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 forAspectRatio:(int64_t)a4;
- (UIEdgeInsets)_layoutMarginInsetsForLayoutStyle:(int64_t)a3;
- (UIOffset)_previewOffset;
- (double)_badgeTrayHeightForLayoutStyle:(int64_t)a3;
- (double)_interpolatedBottomBarWidthWithProposedWidth:(double)a3;
- (double)_interpolatedTopBarHeight;
- (double)_interpolatedVerticalOffsetForShutterIndicator;
- (double)_multiplierForAspectRatio:(int64_t)a3;
- (id)_viewToLayoutBadgesBelowForLayoutStyle:(int64_t)a3 orientation:(int64_t)a4;
- (id)descriptionOverlayViewForKey:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_cameraAppPreviewLayoutForAspectRatio:(int64_t)a3 shouldShiftPreviewForUtilityBar:(BOOL)a4 outPreviewBounds:(CGRect *)a5 outPreviewCenter:(CGPoint *)a6 outFourThreeTopBarFrame:(CGRect *)a7 outBottomBarFrame:(CGRect *)a8;
- (void)_cameraTopBarForLayoutForLayoutStyle:(int64_t)a3 shouldAdjustTopBarOrientation:(BOOL)a4 bounds:(CGRect *)a5 center:(CGPoint *)a6 transform:(CGAffineTransform *)a7;
- (void)_commonCAMViewfinderViewInitializationWithLayoutStyle:(int64_t)a3;
- (void)_createPlaceholderSnapshotAndPerformDoubleSidedFadeForView:(id)a3 fadeOutDuration:(double)a4 fadeOutDelay:(double)a5 fadeInDuration:(double)a6 fadeInDelay:(double)a7;
- (void)_createPlaceholderSnapshotAndPerformSingleSidedFadeForView:(id)a3 fadeOutDuration:(double)a4 fadeOutDelay:(double)a5;
- (void)_enforceBadgeSubviewOrderingWithAppearingBadges:(id)a3;
- (void)_layoutBadgeTrayForLayoutStyle:(int64_t)a3 appearingBadges:(id)a4 disappearingBadges:(id)a5 animated:(BOOL)a6;
- (void)_layoutBadgeTrayWithBadges:(id)a3 layoutStyle:(int64_t)a4;
- (void)_layoutBarExtensionViews;
- (void)_layoutBottomBadgesForLayoutStyle:(int64_t)a3;
- (void)_layoutBottomCenteredView:(id)a3 aboveView:(id)a4 aboveViewSpacing:(double)a5 forLayoutStyle:(int64_t)a6;
- (void)_layoutBurstIndicatorForLayoutStyle:(int64_t)a3;
- (void)_layoutCleanLensInstructionLabelForLayoutStyle:(int64_t)a3;
- (void)_layoutDescriptionOverlayView:(id)a3;
- (void)_layoutElapsedTimeViewForLayoutStyle:(int64_t)a3;
- (void)_layoutFlipButtonForLayoutStyle:(int64_t)a3;
- (void)_layoutImageAnalysisInstructionLabelForLayoutStyle:(int64_t)a3;
- (void)_layoutInstructionLabelOnTop:(id)a3 forLayoutStyle:(int64_t)a4;
- (void)_layoutLightingControlForLayoutStyle:(int64_t)a3;
- (void)_layoutMachineReadableCodeButton;
- (void)_layoutPanoramaViewForLayoutStyle:(int64_t)a3;
- (void)_layoutPortraitModeInstructionLabelForLayoutStyle:(int64_t)a3;
- (void)_layoutQRCodeInstructionLabelForLayoutStyle:(int64_t)a3;
- (void)_layoutShutterButtonForLayoutStyle:(int64_t)a3;
- (void)_layoutShutterIndicatorForLayoutStyle:(int64_t)a3;
- (void)_layoutSnapshotsOfPreviewView;
- (void)_layoutTextInteractionInsertAndActionInfoView;
- (void)_layoutTimerIndicatorViewForLayoutStyle:(int64_t)a3;
- (void)_layoutTopBadgesForLayoutStyle:(int64_t)a3 appearingBadges:(id)a4 disappearingBadges:(id)a5 animated:(BOOL)a6;
- (void)_layoutTopBarForLayoutStyle:(int64_t)a3;
- (void)_layoutVideoConfigurationStatusIndicatorForLayoutStyle:(int64_t)a3;
- (void)_layoutZoomControlForLayoutStyle:(int64_t)a3;
- (void)_layoutZoomSliderForLayoutStyle:(int64_t)a3;
- (void)_previewLayoutForAspectRatio:(int64_t)a3 shouldShiftPreviewForUtilityBar:(BOOL)a4 outPreviewBounds:(CGRect *)a5 outPreviewCenter:(CGPoint *)a6 outFourThreeTopBarFrame:(CGRect *)a7 outBottomBarFrame:(CGRect *)a8;
- (void)_topBarForLayoutForLayoutStyle:(int64_t)a3 shouldAdjustTopBarOrientation:(BOOL)a4 bounds:(CGRect *)a5 center:(CGPoint *)a6 transform:(CGAffineTransform *)a7;
- (void)_updateBarExtensionViewsIfNecessary;
- (void)_updateModernLayout;
- (void)adoptMachineReadableCodeButton:(id)a3 animated:(BOOL)a4;
- (void)badgeViewDidChangeIntrinsicContentSize:(id)a3;
- (void)controlStatusIndicatorDidChangeIntrinsicContentSize:(id)a3 animated:(BOOL)a4;
- (void)dismissMachineReadableCodeButtonAnimated:(BOOL)a3;
- (void)instructionLabelDidChangeIntrinsicContentSize:(id)a3;
- (void)layoutSubviews;
- (void)prepareForAutorotation;
- (void)prepareForResumingUsingCrossfade;
- (void)removeInflightBlurAnimations;
- (void)setAutomaticallyAdjustsTopBarOrientation:(BOOL)a3;
- (void)setBottomBar:(id)a3;
- (void)setBurstIndicatorView:(id)a3;
- (void)setChromeView:(id)a3;
- (void)setCleanLensesInstructionLabel:(id)a3;
- (void)setDescriptionOverlayView:(id)a3 forKey:(id)a4;
- (void)setDesiredAspectRatio:(int64_t)a3;
- (void)setDisabledModeOverlayView:(id)a3;
- (void)setElapsedTimeView:(id)a3;
- (void)setExternalChromeShutterButtonFrame:(CGRect)a3;
- (void)setFilterNameBadge:(id)a3;
- (void)setFlipButton:(id)a3;
- (void)setFocusAndExposureLockBadge:(id)a3;
- (void)setImageAnalysisInstructionLabel:(id)a3;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setLightingControl:(id)a3;
- (void)setLightingNameBadge:(id)a3;
- (void)setLivePhotoBadge:(id)a3;
- (void)setMaskingAspectRatio:(int64_t)a3 animated:(BOOL)a4;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setPanoramaView:(id)a3;
- (void)setPortraitModeInstructionLabel:(id)a3;
- (void)setPreviewView:(id)a3;
- (void)setQrCodeInstructionLabel:(id)a3;
- (void)setShallowDepthOfFieldBadge:(id)a3;
- (void)setSharedLibraryBadge:(id)a3;
- (void)setShowingStandardControls:(BOOL)a3;
- (void)setShutterButton:(id)a3;
- (void)setShutterIndicatorView:(id)a3;
- (void)setTextInteractionInsert:(id)a3;
- (void)setTimerIndicatorView:(id)a3;
- (void)setTopBar:(id)a3;
- (void)setVideoConfigurationStatusIndicator:(id)a3;
- (void)setVisibleTopBadges:(id)a3 animated:(BOOL)a4;
- (void)setZoomControl:(id)a3;
- (void)setZoomSlider:(id)a3;
@end

@implementation CAMViewfinderView

- (CAMControlVisibilityDelegate)visibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_visibilityDelegate);

  return WeakRetained;
}

- (BOOL)_shouldLayoutPortraitInstructionsAtTop
{
  v3 = [(CAMViewfinderView *)self visibilityDelegate];
  v4 = [v3 shouldHideLightingControl] ^ 1;
  v5 = [(CAMViewfinderView *)self lightingControl];

  if (v5)
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
  v7 = [(CAMViewfinderView *)self layoutStyle];
  [(CAMViewfinderView *)self _updateModernLayout];
  v8 = [(CAMViewfinderView *)self chromeView];
  [v8 setFrame:{x, y, width, height}];

  v9 = [(CAMViewfinderView *)self visibilityDelegate];
  v10 = [v9 shouldShiftPreviewForUtilityBar];

  v11 = [(CAMViewfinderView *)self desiredAspectRatio];
  v12 = *(MEMORY[0x1E695F058] + 16);
  v64 = *MEMORY[0x1E695F058];
  v65 = v12;
  v13 = *MEMORY[0x1E695EFF8];
  v62 = v12;
  v63 = v13;
  v60 = v12;
  v61 = v64;
  v59 = v64;
  [(CAMViewfinderView *)self _previewLayoutForAspectRatio:v11 shouldShiftPreviewForUtilityBar:v10 outPreviewBounds:&v64 outPreviewCenter:&v63 outFourThreeTopBarFrame:&v61 outBottomBarFrame:&v59];
  v14 = [(CAMViewfinderView *)self bottomBar];
  [v14 setFrame:{v59, v60}];
  [(CAMViewfinderView *)self _utilityBarExtensionDistanceForLayoutStyle:v7];
  [v14 setUtilityBarExtensionDistance:?];
  v15 = v64;
  v16 = v65;
  v17 = [(CAMViewfinderView *)self previewView];
  [v17 setBounds:{v15, v16}];

  v18 = v63;
  v19 = [(CAMViewfinderView *)self previewView];
  [v19 setCenter:v18];

  v20 = v64;
  v21 = v65;
  v22 = [(CAMViewfinderView *)self previewView];
  [v22 setViewportFrame:{v20, v21}];

  v23 = v64;
  v24 = v65;
  v25 = [(CAMViewfinderView *)self previewView];
  [v25 setOverlayFrame:{v23, v24}];

  v26 = [(CAMViewfinderView *)self maskingAspectRatio];
  [(CAMViewfinderView *)self _previewSizeForAspectRatio:v26];
  v28 = v27;
  v30 = v29;
  [(CAMViewfinderView *)self _previewFrameForAspectRatio:v26 topBarFrame:v10 bottomBarFrame:v61 shouldShiftPreviewForUtilityBar:v62, v59, v60];
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
  v37 = [(CAMViewfinderView *)self _previewContainerMaskingView];
  v38 = v37;
  if (v26 == 3)
  {
    v39 = v36;
  }

  else
  {
    v39 = MidY;
  }

  if (v26 == 3)
  {
    v40 = v35;
  }

  else
  {
    v40 = MidX;
  }

  if (v26 == 3)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = v57;
  }

  if (v26 == 3)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = v56;
  }

  if (v26 == 3)
  {
    v43 = v28;
  }

  else
  {
    v43 = v53;
  }

  if (v26 != 3)
  {
    v30 = v52;
  }

  [v37 setCenter:{v40, v39, 0.0, *&v41}];
  [v38 setBounds:{v41, v42, v43, v30}];
  [(CAMViewfinderView *)self convertPoint:v38 toView:MidX, MidY];
  v45 = v44;
  v47 = v46;
  v48 = [(CAMViewfinderView *)self _previewContainerView];
  [v48 setBounds:{v57, v56, v53, v52}];
  [v48 setCenter:{v45, v47}];
  [(CAMViewfinderView *)self _layoutTopBarForLayoutStyle:v7];
  [(CAMViewfinderView *)self _layoutBarExtensionViews];
  [(CAMViewfinderView *)self _layoutElapsedTimeViewForLayoutStyle:v7];
  [(CAMViewfinderView *)self _layoutShutterIndicatorForLayoutStyle:v7];
  [(CAMViewfinderView *)self _layoutBurstIndicatorForLayoutStyle:v7];
  [(CAMViewfinderView *)self _layoutTimerIndicatorViewForLayoutStyle:v7];
  [(CAMViewfinderView *)self _layoutVideoConfigurationStatusIndicatorForLayoutStyle:v7];
  [(CAMViewfinderView *)self _layoutPanoramaViewForLayoutStyle:v7];
  [(CAMViewfinderView *)self _layoutSnapshotsOfPreviewView];
  [(CAMViewfinderView *)self _layoutLightingControlForLayoutStyle:v7];
  v49 = [(CAMViewfinderView *)self _descriptionOverlayViewByKey];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __35__CAMViewfinderView_layoutSubviews__block_invoke;
  v58[3] = &unk_1E76FB8C8;
  v58[4] = self;
  [v49 enumerateKeysAndObjectsUsingBlock:v58];

  [(CAMViewfinderView *)self _layoutPortraitModeInstructionLabelForLayoutStyle:v7];
  [(CAMViewfinderView *)self _layoutQRCodeInstructionLabelForLayoutStyle:v7];
  [(CAMViewfinderView *)self _layoutImageAnalysisInstructionLabelForLayoutStyle:v7];
  [(CAMViewfinderView *)self _layoutCleanLensInstructionLabelForLayoutStyle:v7];
  [(CAMViewfinderView *)self _layoutTopBadgesForLayoutStyle:v7 animated:0];
  [(CAMViewfinderView *)self _layoutBottomBadgesForLayoutStyle:v7];
  [(CAMViewfinderView *)self _layoutZoomSliderForLayoutStyle:v7];
  [(CAMViewfinderView *)self _layoutZoomControlForLayoutStyle:v7];
  [(CAMViewfinderView *)self _layoutShutterButtonForLayoutStyle:v7];
  [(CAMViewfinderView *)self _layoutFlipButtonForLayoutStyle:v7];
  v50 = [(CAMViewfinderView *)self disabledModeOverlayView];
  [v50 setFrame:{v51, v42, v43, v30}];
  [v50 setViewportFrame:{v51, v42, v43, v30}];
  [(CAMViewfinderView *)self _layoutTextInteractionInsertAndActionInfoView];
  [(CAMViewfinderView *)self _layoutMachineReadableCodeButton];
}

- (double)_interpolatedTopBarHeight
{
  [(CAMViewfinderView *)self bounds];
  CGRectGetWidth(v6);
  [(CAMViewfinderView *)self layoutStyle];
  v3 = [(CAMViewfinderView *)self traitCollection];
  [v3 userInterfaceIdiom];

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
  v3 = [(CAMViewfinderView *)self previewView];
  v4 = v3;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  if (v3)
  {
    [v3 transform];
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
          v12 = [v11 snapshotView];
          v13 = [v11 desiredAspectRatio];

          v14 = [(CAMViewfinderView *)self visibilityDelegate];
          v15 = [v14 shouldShiftPreviewForUtilityBar];

          v16 = v8[1];
          v22 = *v8;
          v23 = v16;
          v21 = *MEMORY[0x1E695EFF8];
          [(CAMViewfinderView *)self _previewLayoutForAspectRatio:v13 shouldShiftPreviewForUtilityBar:v15 outPreviewBounds:&v22 outPreviewCenter:&v21 outFourThreeTopBarFrame:0 outBottomBarFrame:0];
          [v12 setBounds:{v22, v23}];
          [v12 setCenter:v21];
          v20[0] = v28;
          v20[1] = v29;
          v20[2] = v30;
          [v12 setTransform:v20];
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
  v2 = [(CAMViewfinderView *)self _previewContainerView];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 subviews];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
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
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)prepareForResumingUsingCrossfade
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(CAMViewfinderView *)self _previewContainerView];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 subviews];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
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
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_commonCAMViewfinderViewInitializationWithLayoutStyle:(int64_t)a3
{
  self->_layoutStyle = a3;
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [(CAMViewfinderView *)self setBackgroundColor:v4];

  v5 = objc_alloc(MEMORY[0x1E69DD250]);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
  previewContainerView = self->__previewContainerView;
  self->__previewContainerView = v10;

  v12 = self->__previewContainerView;
  v13 = [MEMORY[0x1E69DC888] blackColor];
  [(UIView *)v12 setBackgroundColor:v13];

  v14 = [[CAMPreviewContainerMaskingView alloc] initWithFrame:v6, v7, v8, v9];
  previewContainerMaskingView = self->__previewContainerMaskingView;
  self->__previewContainerMaskingView = v14;

  v16 = self->__previewContainerMaskingView;
  v17 = [MEMORY[0x1E69DC888] blackColor];
  [(CAMPreviewContainerMaskingView *)v16 setBackgroundColor:v17];

  [(CAMPreviewContainerMaskingView *)self->__previewContainerMaskingView addSubview:self->__previewContainerView];
  [(CAMViewfinderView *)self _updateModernLayout];
  [(CAMViewfinderView *)self addSubview:self->__previewContainerMaskingView];
  self->_showingStandardControls = 1;
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  descriptionOverlayViewByKey = self->__descriptionOverlayViewByKey;
  self->__descriptionOverlayViewByKey = v18;

  MEMORY[0x1EEE66BB8](v18, descriptionOverlayViewByKey);
}

- (CAMViewfinderView)initWithLayoutStyle:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMViewfinderView;
  v4 = [(CAMViewfinderView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(CAMViewfinderView *)v4 _commonCAMViewfinderViewInitializationWithLayoutStyle:a3];
    v6 = v5;
  }

  return v5;
}

- (CAMViewfinderView)initWithFrame:(CGRect)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 cam_initialLayoutStyle];

  return [(CAMViewfinderView *)self initWithLayoutStyle:v5];
}

- (CAMViewfinderView)initWithCoder:(id)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 cam_initialLayoutStyle];

  return [(CAMViewfinderView *)self initWithLayoutStyle:v5];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CAMViewfinderView *)self desiredAspectRatio];

  [(CAMViewfinderView *)self systemLayoutSizeFittingSize:v6 forAspectRatio:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 forAspectRatio:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  [(CAMViewfinderView *)self _multiplierForAspectRatio:a4];
  v7 = [(CAMViewfinderView *)self window];
  v8 = CAMInterfaceOrientationForWindow(v7);

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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v25.receiver = self;
  v25.super_class = CAMViewfinderView;
  v7 = [(CAMViewfinderView *)&v25 hitTest:a4 withEvent:?];
  v8 = [(CAMViewfinderView *)self _previewContainerView];

  if (v7 == v8)
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

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    [(CAMViewfinderView *)self _updateModernLayout];
    [(CAMViewfinderView *)self _updateBarExtensionViewsIfNecessary];

    [(CAMViewfinderView *)self setNeedsLayout];
  }
}

- (CGSize)_topBarSizeForLayoutStyle:(int64_t)a3
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_layoutTopBarForLayoutStyle:(int64_t)a3
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  v12 = *MEMORY[0x1E695F058];
  v13 = v4;
  v11 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v8 = *MEMORY[0x1E695EFD0];
  v9 = v5;
  v10 = *(MEMORY[0x1E695EFD0] + 32);
  [(CAMViewfinderView *)self _topBarForLayoutForLayoutStyle:a3 shouldAdjustTopBarOrientation:0 bounds:&v12 center:&v11 transform:&v8];
  v6 = [(CAMViewfinderView *)self topBar];
  [v6 setBounds:{v12, v13}];
  [v6 setCenter:v11];
  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  [v6 setTransform:v7];
}

- (void)_topBarForLayoutForLayoutStyle:(int64_t)a3 shouldAdjustTopBarOrientation:(BOOL)a4 bounds:(CGRect *)a5 center:(CGPoint *)a6 transform:(CGAffineTransform *)a7
{
  v10 = a4;
  v13 = !a4 || ([(CAMViewfinderView *)self orientation]- 5) < 0xFFFFFFFFFFFFFFFELL;
  v14 = [(CAMViewfinderView *)self _modernLayout];

  if (v14 && v13)
  {
    v15 = [(CAMViewfinderView *)self _modernLayout];
    [v15 frameForControlStatusBar];
    v17 = v16;
    v19 = v18;

    if (a5)
    {
      a5->size.width = v17;
      a5->size.height = v19;
      a5->origin = *MEMORY[0x1E695EFF8];
    }

    if (a6)
    {
      UIRectGetCenter();
      a6->x = v20;
      a6->y = v21;
    }

    if (a7)
    {
      v22 = MEMORY[0x1E695EFD0];
      v23 = *(MEMORY[0x1E695EFD0] + 16);
      *&a7->a = *MEMORY[0x1E695EFD0];
      *&a7->c = v23;
      *&a7->tx = *(v22 + 32);
    }
  }

  else if ([(CAMViewfinderView *)self useMessagesLayout])
  {
    [(CAMViewfinderView *)self bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    if (v10)
    {
      v32 = [(CAMViewfinderView *)self orientation];
    }

    else
    {
      v32 = 1;
    }

    v33 = [(CAMViewfinderView *)self previewView];
    [v33 frame];
    [MEMORY[0x1E69C4998] cameraTopBarGeometryForReferenceBounds:v32 forContentSize:v25 withOrientation:{v27, v29, v31, v34, v35}];
    if (a5)
    {
      a5->origin = 0u;
      a5->size = 0u;
    }

    if (a6)
    {
      *a6 = 0u;
    }

    if (a7)
    {
      *&a7->a = 0u;
      *&a7->c = 0u;
      *&a7->tx = 0u;
    }
  }

  else
  {

    [(CAMViewfinderView *)self _cameraTopBarForLayoutForLayoutStyle:a3 shouldAdjustTopBarOrientation:v10 bounds:a5 center:a6 transform:a7];
  }
}

- (void)_cameraTopBarForLayoutForLayoutStyle:(int64_t)a3 shouldAdjustTopBarOrientation:(BOOL)a4 bounds:(CGRect *)a5 center:(CGPoint *)a6 transform:(CGAffineTransform *)a7
{
  v10 = a4;
  v13 = [(CAMViewfinderView *)self previewView];
  [v13 frame];
  v52.origin.x = v14;
  v52.origin.y = v15;
  v52.size.width = v16;
  v52.size.height = v17;
  [(CAMViewfinderView *)self _topBarSizeForLayoutStyle:a3];
  v49 = v18;
  v20 = v19;
  [(CAMViewfinderView *)self _layoutMarginInsetsForLayoutStyle:a3];
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
  if (!v10 || (v39 = [(CAMViewfinderView *)self orientation], v39 < 3))
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
  if (a5)
  {
    a5->origin.x = 0.0;
    a5->origin.y = 0.0;
    a5->size.width = v49;
    a5->size.height = v50;
  }

  if (a6)
  {
    a6->x = MidX;
    a6->y = MidY;
  }

  if (a7)
  {
    v47 = v54;
    *&a7->a = v53;
    *&a7->c = v47;
    *&a7->tx = v55;
  }
}

- (double)_interpolatedBottomBarWidthWithProposedWidth:(double)a3
{
  v3 = [(CAMViewfinderView *)self window];
  v4 = [v3 screen];
  [v4 _referenceBounds];
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

- (CGSize)_bottomBarSizeForLayoutStyle:(int64_t)a3 withProposedSize:(CGSize)a4
{
  width = a4.width;
  [(CAMViewfinderView *)self bounds:a3];
  Height = CGRectGetHeight(v10);
  [(CAMViewfinderView *)self _interpolatedBottomBarWidthWithProposedWidth:width];
  v8 = Height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)_wantsInterfaceOrientedPreviewForLayoutStyle:(int64_t)a3
{
  v4 = +[CAMCaptureCapabilities capabilities];
  v5 = [v4 isSplitScreenSupported];
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (a3 == 3)
  {
    v6 = v5;
  }

  v7 = (a3 - 1) < 2 || v6;

  return v7;
}

- (CGSize)_previewSizeForAspectRatio:(int64_t)a3
{
  v5 = [(CAMViewfinderView *)self _modernLayout];

  if (v5)
  {
    v6 = [(CAMViewfinderView *)self _modernLayout];
    [v6 viewportSizeForAspectRatio:a3];
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
    v21 = [(CAMViewfinderView *)self layoutStyle];
    [(CAMViewfinderView *)self _multiplierForAspectRatio:a3];
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
    v24 = [(CAMViewfinderView *)self _wantsFullScreenPreviewRegardlessOfLayoutForLayoutStyle:v21];
    UIRoundToViewScale();
    v26 = v25;
    UIRoundToViewScale();
    v28 = v27;
    UIRoundToViewScale();
    v30 = v29;
    if ([(CAMViewfinderView *)self _wantsInterfaceOrientedPreviewForLayoutStyle:v21])
    {
      v31 = [(CAMViewfinderView *)self window];
      v32 = CAMInterfaceOrientationForWindow(v31);

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

      if (a3 == 3)
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

    if (a3 == 3)
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

- (CGRect)_previewFrameForAspectRatio:(int64_t)a3 topBarFrame:(CGRect)a4 bottomBarFrame:(CGRect)a5 shouldShiftPreviewForUtilityBar:(BOOL)a6
{
  v6 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4.size.height;
  v12 = a4.size.width;
  v13 = a4.origin.y;
  v14 = a4.origin.x;
  v17 = [(CAMViewfinderView *)self _modernLayout];

  if (v17)
  {
    if (a3 == 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v6;
    }

    v18 = [(CAMViewfinderView *)self _modernLayout];
    [v18 viewportFrameForAspectRatio:a3 accessoryAreaExpanded:v6 smartStyleControlsExpanded:0];
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
      [(CAMViewfinderView *)self _previewSizeForAspectRatio:a3];
      [MEMORY[0x1E69C4998] cameraContentGeometryForReferenceBounds:-[CAMViewfinderView orientation](self forContentSize:"orientation" withOrientation:0 shouldShiftPreviewForUtilityBar:{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), v6, v28, v30, v32, v34, v35, v36}];
      UIRectCenteredAboutPointScale();
    }

    else
    {
      [(CAMViewfinderView *)self _cameraPreviewFrameForAspectRatio:a3 topBarFrame:v6 bottomBarFrame:v14 shouldShiftPreviewForUtilityBar:v13, v12, v11, x, y, width, height];
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

- (CGRect)_cameraPreviewFrameForAspectRatio:(int64_t)a3 topBarFrame:(CGRect)a4 bottomBarFrame:(CGRect)a5 shouldShiftPreviewForUtilityBar:(BOOL)a6
{
  [(CAMViewfinderView *)self bounds:a3];
  v8 = [(CAMViewfinderView *)self layoutStyle];
  if (a3 <= 6 && a3 != 4)
  {
    [(CAMViewfinderView *)self _layoutMarginInsetsForLayoutStyle:v8, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  }

  [(CAMViewfinderView *)self _previewSizeForAspectRatio:a3];
  UIRectCenteredIntegralRectScale();
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (double)_multiplierForAspectRatio:(int64_t)a3
{
  result = 0.0;
  if (a3 <= 2)
  {
    if (!a3)
    {
      return 1.33333333;
    }

    if (a3 == 1)
    {
      return 1.77777778;
    }

    v24 = a3 == 2;
    v25 = 1.5;
  }

  else
  {
    if (a3 <= 4)
    {
      if (a3 == 3)
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
      v11 = [(CAMViewfinderView *)self window];
      v12 = [v11 screen];
      [v12 bounds];
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
    if (a3 == 6)
    {
      result = 0.5625;
    }

    v24 = a3 == 5;
  }

  if (v24)
  {
    return v25;
  }

  return result;
}

- (void)setDesiredAspectRatio:(int64_t)a3
{
  if (self->_desiredAspectRatio != a3)
  {
    self->_desiredAspectRatio = a3;
    [(CAMViewfinderView *)self _updateBarExtensionViewsIfNecessary];

    [(CAMViewfinderView *)self setNeedsLayout];
  }
}

- (void)_updateBarExtensionViewsIfNecessary
{
  v3 = [(CAMViewfinderView *)self layoutStyle];
  v4 = [(CAMViewfinderView *)self desiredAspectRatio];
  topBarExtensionView = self->__topBarExtensionView;
  if (v3 == 3 && v4 == 4)
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
    v17 = [(CAMViewfinderView *)self chromeView];
    [CAMView view:self insertSubview:self->__topBarExtensionView belowSubview:v17];
    [CAMView view:self insertSubview:self->__bottomBarExtensionView belowSubview:v17];

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

- (void)setMaskingAspectRatio:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_maskingAspectRatio != a3)
  {
    if (a4)
    {
      [(CAMViewfinderView *)self layoutIfNeeded];
      self->_maskingAspectRatio = a3;
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
      self->_maskingAspectRatio = a3;

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
  v11 = [(CAMViewfinderView *)self layoutStyle];
  if (!-[CAMViewfinderView _wantsPreviewOnlyLayout](self, "_wantsPreviewOnlyLayout") && (v11 == 3 && v8 < 350.0 || (+[CAMCaptureCapabilities capabilities](CAMCaptureCapabilities, "capabilities"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 imagePickerUsesModernLayout], v12, v13)))
  {
    CAMShutterButtonSpecForLayoutStyle(v11, v18);
    v14 = v18[0];
    v15 = [(CAMViewfinderView *)self _modernLayout];
    v16 = v15;
    if (v15)
    {
      [v15 setShutterIntrinsicSize:{v14, v14}];
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

- (void)_layoutShutterIndicatorForLayoutStyle:(int64_t)a3
{
  [(CAMViewfinderView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v21 = [(CAMViewfinderView *)self shutterIndicatorView];
  [CAMView rotateView:v21 toInterfaceOrientation:3 animated:0];
  [v21 intrinsicContentSize];
  v13 = v12;
  v15 = v14;
  [v21 setBounds:{0.0, 0.0, v12, v14}];
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
  [v21 setCenter:{v20, MidX + v17 + CGRectGetMinY(v26)}];
}

- (void)_layoutBurstIndicatorForLayoutStyle:(int64_t)a3
{
  v34 = [(CAMViewfinderView *)self bottomBar];
  v4 = [v34 backgroundStyle];
  v5 = [v34 shutterButton];
  [v34 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(CAMViewfinderView *)self burstIndicatorView];
  v15 = *MEMORY[0x1E695EFF8];
  v16 = *(MEMORY[0x1E695EFF8] + 8);
  [v14 intrinsicContentSize];
  v18 = v17;
  rect = v13;
  v33 = v19;
  if (v34 && v4 == 1 && v5)
  {
    [v5 frame];
    [v5 alignmentRectForFrame:?];
    [v34 convertRect:self toView:?];
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
  [v14 setBounds:{v15, v16, v18, v24}];
  [v14 setCenter:{v30, MidY}];
}

- (void)_layoutZoomSliderForLayoutStyle:(int64_t)a3
{
  v7 = [(CAMViewfinderView *)self zoomSlider];
  v5 = [(CAMViewfinderView *)self bottomBar];
  v6 = [(CAMViewfinderView *)self previewView];
  [CAMZoomSliderUtilities layoutZoomSlider:v7 forLayoutStyle:a3 bottomBar:v5 previewView:v6 viewfinderView:self];
}

- (void)_layoutZoomControlForLayoutStyle:(int64_t)a3
{
  v5 = [(CAMViewfinderView *)self zoomControl];
  [(CAMViewfinderView *)self bounds];
  switch(a3)
  {
    case 3:
      goto LABEL_4;
    case 1:
      [CAMZoomControlUtilities layoutZoomControl:v5 layoutSide:1 forLayoutStyle:1 width:375.0 marginForZoomButtonFromEdge:20.5 marginForZoomDialFromEdge:0.0 zoomDialContentMaskingHeight:0.0 centerOfZoomControlInContainerView:-82.5, v6 * 0.5];
      break;
    case 0:
LABEL_4:
      v7 = [(CAMViewfinderView *)self visibilityDelegate];
      v8 = [v7 shouldShiftPreviewForUtilityBar];

      v9 = *(MEMORY[0x1E695F058] + 16);
      v27 = *MEMORY[0x1E695F058];
      v28 = v9;
      v26 = *MEMORY[0x1E695EFF8];
      [(CAMViewfinderView *)self _previewLayoutForAspectRatio:[(CAMViewfinderView *)self desiredAspectRatio] shouldShiftPreviewForUtilityBar:v8 outPreviewBounds:&v27 outPreviewCenter:&v26 outFourThreeTopBarFrame:0 outBottomBarFrame:0];
      v10 = v28;
      v11 = *&v26 - *&v28 * 0.5;
      v12 = *(&v26 + 1) - *(&v28 + 1) * 0.5;
      [(CAMViewfinderView *)self externalChromeShutterButtonFrame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(CAMViewfinderView *)self desiredAspectRatio];
      +[CAMChromeViewSpec shutterTopPadding];
      [CAMZoomControlUtilities referenceYForControlsAboveShutterButtonFrame:v21 viewportFrame:v14 aspectRatio:v16 shutterTopPadding:v18, v20, v11, v12, v10, v22];
      v24 = v23;
      v25 = [(CAMViewfinderView *)self zoomControl];
      [(CAMViewfinderView *)self bounds];
      [CAMZoomControlUtilities layoutForExternalChromeZoomControl:"layoutForExternalChromeZoomControl:bounds:viewportFrame:referenceYForControlsAboveShutterButton:xOffset:" bounds:v25 viewportFrame:v24 referenceYForControlsAboveShutterButton:0 xOffset:?];

      break;
  }
}

- (void)_layoutLightingControlForLayoutStyle:(int64_t)a3
{
  v4 = [(CAMViewfinderView *)self lightingControl];
  if (v4)
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    [(CAMViewfinderView *)self bounds];
    [v4 sizeThatFits:{v7, v8}];
    v10 = v9;
    v12 = v11;
    [(CAMViewfinderView *)self bounds];
    UIRectGetCenter();
    v14 = v13;
    [v4 setBounds:{v5, v6, v10, v12}];
    [v4 setCenter:{v12 * 0.5, v14}];
    CGAffineTransformMakeRotation(&v16, 1.57079633);
    v15 = v16;
    [v4 setTransform:&v15];
  }
}

- (void)_layoutTimerIndicatorViewForLayoutStyle:(int64_t)a3
{
  v10 = [(CAMViewfinderView *)self timerIndicatorView];
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
  [v10 setBounds:{x, y, width, height}];
  [v10 setCenter:{MidX, MidY}];
}

- (void)_layoutElapsedTimeViewForLayoutStyle:(int64_t)a3
{
  [(CAMViewfinderView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CAMViewfinderView *)self elapsedTimeView];
  [v12 intrinsicContentSize];
  v14.origin.x = v5;
  v14.origin.y = v7;
  v14.size.width = v9;
  v14.size.height = v11;
  CGRectGetMidX(v14);
  UIRoundToViewScale();
  [v12 frameForAlignmentRect:?];
  [v12 setFrame:?];
}

- (void)_layoutVideoConfigurationStatusIndicatorForLayoutStyle:(int64_t)a3
{
  v19 = [(CAMViewfinderView *)self videoConfigurationStatusIndicator];
  v4 = [(CAMViewfinderView *)self elapsedTimeView];
  [v4 frame];
  [v4 alignmentRectForFrame:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v19 intrinsicContentSize];
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
  [v19 frameForAlignmentRect:{v17, v18 + CAMPixelWidthForView(self), v14, v16}];
  [v19 setFrame:?];
}

- (void)_layoutTopBadgesForLayoutStyle:(int64_t)a3 appearingBadges:(id)a4 disappearingBadges:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v11 = a4;
  v10 = a5;
  if (a3 <= 3 && a3 != 2)
  {
    [(CAMViewfinderView *)self _layoutBadgeTrayForLayoutStyle:a3 appearingBadges:v11 disappearingBadges:v10 animated:v6];
  }
}

- (void)_enforceBadgeSubviewOrderingWithAppearingBadges:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFA8];
  v6 = [(CAMViewfinderView *)self visibleTopBadges];
  v7 = [v5 setWithArray:v6];

  [v7 minusSet:v4];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v4;
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

  v18 = [(CAMViewfinderView *)self timerIndicatorView];
  if (v18)
  {
    [(CAMViewfinderView *)self bringSubviewToFront:v18];
  }
}

- (void)_layoutBottomBadgesForLayoutStyle:(int64_t)a3
{
  v8 = [(CAMViewfinderView *)self filterNameBadge];
  [CAMViewfinderView _layoutBottomCenteredView:"_layoutBottomCenteredView:aboveView:aboveViewSpacing:forLayoutStyle:" aboveView:0.0 aboveViewSpacing:? forLayoutStyle:?];
  v5 = [(CAMViewfinderView *)self visibilityDelegate];
  v6 = [v5 shouldLayoutLightingNameBadgeAtBottom];

  if (v6)
  {
    v7 = [(CAMViewfinderView *)self lightingNameBadge];
    [(CAMViewfinderView *)self _layoutBottomCenteredView:v7 aboveView:0 aboveViewSpacing:a3 forLayoutStyle:0.0];
  }
}

- (void)_layoutInstructionLabelOnTop:(id)a3 forLayoutStyle:(int64_t)a4
{
  v5 = a3;
  v6 = [(CAMViewfinderView *)self previewView];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(CAMViewfinderView *)self orientation];
  v16 = v15;
  if ((v15 - 3) >= 2)
  {
    v17 = v14;
  }

  else
  {
    v17 = v12;
  }

  if ((v15 - 3) >= 2)
  {
    v18 = v12;
  }

  else
  {
    v18 = v14;
  }

  v19 = MEMORY[0x1E695F058];
  [v5 sizeThatFits:{v18 + -25.0, v17 + -25.0}];
  v37 = v20;
  v22 = v21;
  v23 = [(CAMViewfinderView *)self topBar];
  [v23 frame];
  MaxY = CGRectGetMaxY(v40);

  v25 = [(CAMViewfinderView *)self visibilityDelegate];
  v26 = [v25 shouldLayoutLightingNameBadgeAtBottom];

  if (v26)
  {
    v34 = MaxY;
  }

  else
  {
    v27 = [(CAMViewfinderView *)self lightingNameBadge];
    [v27 frame];
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

  [v5 setBounds:{v36, v35, v37, v32, *&v34}];
  [v5 setCenter:{v29, v31}];
  CAMOrientationTransform(v16, v39);
  v38[0] = v39[0];
  v38[1] = v39[1];
  v38[2] = v39[2];
  [v5 setTransform:v38];
}

- (void)_layoutPortraitModeInstructionLabelForLayoutStyle:(int64_t)a3
{
  v8 = [(CAMViewfinderView *)self visibilityDelegate];
  v5 = [(CAMViewfinderView *)self _shouldLayoutPortraitInstructionsAtTop];
  v6 = [(CAMViewfinderView *)self portraitModeInstructionLabel];
  if (v5)
  {
    [(CAMViewfinderView *)self _layoutInstructionLabelOnTop:v6 forLayoutStyle:a3];
  }

  else
  {
    if ([v8 shouldHideFilterNameBadge])
    {
      v7 = 0;
    }

    else
    {
      v7 = [(CAMViewfinderView *)self filterNameBadge];
    }

    [(CAMViewfinderView *)self _layoutBottomCenteredView:v6 aboveView:v7 aboveViewSpacing:a3 forLayoutStyle:15.0];
  }

  [v6 setStyle:1];
}

- (void)_layoutQRCodeInstructionLabelForLayoutStyle:(int64_t)a3
{
  v5 = [(CAMViewfinderView *)self qrCodeInstructionLabel];
  [(CAMViewfinderView *)self _layoutInstructionLabelOnTop:v5 forLayoutStyle:a3];
  [v5 setStyle:1];
}

- (void)_layoutImageAnalysisInstructionLabelForLayoutStyle:(int64_t)a3
{
  v5 = [(CAMViewfinderView *)self imageAnalysisInstructionLabel];
  [v5 setStyle:1];
  [(CAMViewfinderView *)self _layoutInstructionLabelOnTop:v5 forLayoutStyle:a3];
}

- (void)_layoutCleanLensInstructionLabelForLayoutStyle:(int64_t)a3
{
  v5 = [(CAMViewfinderView *)self cleanLensesInstructionLabel];
  [v5 setStyle:1];
  [(CAMViewfinderView *)self _layoutInstructionLabelOnTop:v5 forLayoutStyle:a3];
}

- (void)_layoutBadgeTrayForLayoutStyle:(int64_t)a3 appearingBadges:(id)a4 disappearingBadges:(id)a5 animated:(BOOL)a6
{
  v23 = a6;
  v37 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [(CAMViewfinderView *)self visibleTopBadges];
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        if ([v9 containsObject:v17])
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }

  if (v23)
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
  v31 = a3;
  [v19 performWithoutAnimation:v29];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __96__CAMViewfinderView__layoutBadgeTrayForLayoutStyle_appearingBadges_disappearingBadges_animated___block_invoke_2;
  v24[3] = &unk_1E76F8400;
  v25 = v10;
  v26 = v20;
  v27 = self;
  v28 = a3;
  v21 = v20;
  v22 = v10;
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

- (id)_viewToLayoutBadgesBelowForLayoutStyle:(int64_t)a3 orientation:(int64_t)a4
{
  v6 = [(CAMViewfinderView *)self visibilityDelegate];
  v27 = [v6 shouldHideElapsedTimeView];
  v26 = [v6 shouldHideTopBar];
  v25 = [v6 shouldShiftPreviewForUtilityBar];
  v7 = [v6 shouldHidePortraitModeInstructionLabel];
  v8 = [v6 shouldHideQRCodeInstructionLabel];
  v9 = [v6 shouldHideCleanLensInstructionLabel];
  v10 = [(CAMViewfinderView *)self _shouldLayoutPortraitInstructionsAtTop];
  v11 = [(CAMViewfinderView *)self topBar];
  v12 = [(CAMViewfinderView *)self elapsedTimeView];
  if ((v7 & 1) != 0 || ([(CAMViewfinderView *)self portraitModeInstructionLabel], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    if ((v8 & 1) != 0 || ([(CAMViewfinderView *)self qrCodeInstructionLabel], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      if ((v9 & 1) != 0 || ([(CAMViewfinderView *)self cleanLensesInstructionLabel], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
      {
        v14 = 0;
        if (a3)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v14 = [(CAMViewfinderView *)self cleanLensesInstructionLabel];
        v10 = 0;
        if (a3)
        {
          goto LABEL_14;
        }
      }

LABEL_12:
      v17 = 1;
      goto LABEL_17;
    }

    v14 = [(CAMViewfinderView *)self qrCodeInstructionLabel];
    v10 = 1;
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = [(CAMViewfinderView *)self portraitModeInstructionLabel];
    if (!a3)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
  if (a3 == 3)
  {
    v18 = a4;
    v17 = v25;
    goto LABEL_18;
  }

  v17 = 0;
LABEL_17:
  v18 = a4;
LABEL_18:
  v19 = v18 >= 3;
  v20 = v18 - 3;
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
  if (((v8 & v7 & 1) != 0 || (v22 = v14, ((v14 != 0) & v10 & v17) == 0)) && (v22 = v12, (v12 == 0) | v27 & 1) && (v22 = v11, (v11 == 0) | (v26 | v21) & 1))
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  return v23;
}

- (double)_badgeTrayHeightForLayoutStyle:(int64_t)a3
{
  result = 0.0;
  if (a3 <= 3)
  {
    return dbl_1A3A69F40[a3];
  }

  return result;
}

- (CGRect)_frameForBadgeTrayForLayoutStyle:(int64_t)a3 orientation:(int64_t)a4
{
  v7 = [CAMViewfinderView _viewToLayoutBadgesBelowForLayoutStyle:"_viewToLayoutBadgesBelowForLayoutStyle:orientation:" orientation:?];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  rect = v14;
  v43 = 0u;
  v44 = 0u;
  v15 = [(CAMViewfinderView *)self visibilityDelegate];
  v16 = [v15 shouldShiftPreviewForUtilityBar];

  [(CAMViewfinderView *)self _previewLayoutForAspectRatio:[(CAMViewfinderView *)self desiredAspectRatio] shouldShiftPreviewForUtilityBar:v16 outPreviewBounds:0 outPreviewCenter:0 outFourThreeTopBarFrame:&v43 outBottomBarFrame:0];
  v17 = [(CAMViewfinderView *)self maskingAspectRatio];
  v18 = [(CAMViewfinderView *)self bottomBar];
  [v18 frame];
  [(CAMViewfinderView *)self _previewFrameForAspectRatio:v17 topBarFrame:v16 bottomBarFrame:v43 shouldShiftPreviewForUtilityBar:v44, v19, v20, v21, v22];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [(CAMViewfinderView *)self _badgeTrayHeightForLayoutStyle:a3];
  v32 = v31;
  if (a4 > 2)
  {
    if (a4 == 3)
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
      if (a4 != 4)
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

  if (a4 < 2)
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

  if (a4 == 2)
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

- (void)_layoutBadgeTrayWithBadges:(id)a3 layoutStyle:(int64_t)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v38 = v5;
    v8 = v5;
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
    v17 = [(CAMViewfinderView *)self orientation];
    [(CAMViewfinderView *)self _frameForBadgeTrayForLayoutStyle:a4 orientation:v17];
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
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v68.origin.x = x;
        v68.origin.y = y;
        v68.size.width = width;
        v68.size.height = height;
        MinY = CGRectGetMinY(v68);
        goto LABEL_21;
      }

      if (v17 == 4)
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
      if (v17 < 2)
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

      if (v17 == 2)
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
    CAMOrientationTransform(v17, &v53);
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
        if (v17 > 2)
        {
          if (v17 != 3)
          {
            if (v17 != 4)
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
          if (v17 >= 2)
          {
            if (v17 != 2)
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

        v5 = v38;
        break;
      }
    }
  }
}

- (void)_layoutBottomCenteredView:(id)a3 aboveView:(id)a4 aboveViewSpacing:(double)a5 forLayoutStyle:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (a6 != 2)
  {
    v34 = a5;
    if (a6 == 1)
    {
      v12 = 31.0;
    }

    else
    {
      v12 = 15.0;
    }

    v13 = [(CAMViewfinderView *)self previewView];
    v14 = [(CAMViewfinderView *)self topBar];
    [v14 frame];
    MaxY = CGRectGetMaxY(v44);

    [v13 frame];
    x = v45.origin.x;
    y = v45.origin.y;
    width = v45.size.width;
    height = v45.size.height;
    v46 = CGRectInset(v45, v12, v12);
    [v10 sizeThatFits:{v46.size.width, v46.size.height}];
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
    v25 = [(CAMViewfinderView *)self orientation];
    v26 = v25;
    if (v25 < 3)
    {
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      *&v39 = CGRectGetMidX(v47);
      if (v11)
      {
        [v11 frame];
        [v11 alignmentRectForFrame:?];
        MinY = CGRectGetMinY(v48);
        v28 = v24 + v34;
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

    if (v25 == 3)
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
      if (v11)
      {
        [v11 frame];
        [v11 alignmentRectForFrame:?];
        v32 = v24 + CGRectGetMaxX(v55) + v34;
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
      if (v25 != 4)
      {
LABEL_20:
        [CAMView ceilBounds:&v40 andRoundCenter:&v39 toViewScale:self, *&MaxY];
        [v10 setBounds:{v40, v41, v42, v43}];
        [v10 setCenter:v39];
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        CAMOrientationTransform(v26, &v36);
        v35[0] = v36;
        v35[1] = v37;
        v35[2] = v38;
        [v10 setTransform:v35];

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
      if (v11)
      {
        [v11 frame];
        [v11 alignmentRectForFrame:?];
        MinX = CGRectGetMinX(v51);
        v12 = v34;
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

- (void)_layoutPanoramaViewForLayoutStyle:(int64_t)a3
{
  v5 = [(CAMViewfinderView *)self panoramaView];
  if (v5)
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
    v16 = [(CAMViewfinderView *)self previewViewOrientation];
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v17 = [(CAMViewfinderView *)self window:CAMTransformCorrectingForOrientation(v16];
    v18 = [v17 screen];
    [v18 _referenceBounds];
    v57 = v20;
    v59 = v19;
    v22 = v21;
    v24 = v23;

    if (a3 != 3)
    {
      if (a3 == 1)
      {
        v32 = [(CAMViewfinderView *)self chromePanoramaLayoutDelegate];
        [v32 chromeSidebarFrame];
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
        if (v16 >= 3)
        {
          v53 = v22;
          v54 = v24;
          v38 = v57;
          v37 = v59;
          if (v16 - 3 < 2)
          {
            v53 = v50;
            v54 = v49;
            v37 = v55;
            v38 = v56;
          }
        }

        [v5 panoramaCaptureSize];
        [CAMPanoramaUtilities panoramaViewSizeForCaptureSize:1 referenceBounds:*&v48 chromeSidebarFrame:*&v47 layoutStyle:*&v52, *&v51];
        v58 = v40;
        v60 = v39;
        if (v16 >= 3)
        {
          if (v16 - 3 < 2)
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

      if (a3)
      {
        v27 = *MEMORY[0x1E695EFF8];
        v29 = *(MEMORY[0x1E695EFF8] + 8);
LABEL_16:
        [v5 setBounds:{v13, v12, v14, v15}];
        [v5 setCenter:{v27, v29}];
        v61[0] = v62;
        v61[1] = v63;
        v61[2] = v64;
        [v5 setTransform:v61];
        goto LABEL_17;
      }
    }

    v25 = [(CAMViewfinderView *)self previewView];
    [v25 center];
    v27 = v26;
    v29 = v28;
    [v5 panoramaCaptureSize];
    [CAMPanoramaUtilities panoramaViewSizeForCaptureSize:a3 referenceBounds:*&v13 chromeSidebarFrame:*&v12 layoutStyle:*&v14, *&v15];
    v14 = v30;
    v15 = v31;

    v12 = 0.0;
LABEL_15:
    v13 = 0.0;
    goto LABEL_16;
  }

LABEL_17:
}

- (void)_layoutShutterButtonForLayoutStyle:(int64_t)a3
{
  v4 = [(CAMViewfinderView *)self shutterButton];
  if (v4)
  {
    v44 = v4;
    [(CAMViewfinderView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(CAMViewfinderView *)self window];
    v14 = CAMInterfaceOrientationForWindow(v13) - 3;

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
    v4 = v44;
  }
}

- (void)_layoutFlipButtonForLayoutStyle:(int64_t)a3
{
  v4 = [(CAMViewfinderView *)self flipButton];
  if (v4)
  {
    v45 = v4;
    [(CAMViewfinderView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(CAMViewfinderView *)self window];
    v14 = CAMInterfaceOrientationForWindow(v13) - 3;

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
    v41 = [(CAMViewfinderView *)self shutterButton];
    if (v41)
    {
      [(CAMViewfinderView *)self insertSubview:v45 aboveSubview:v41];
    }

    v4 = v45;
  }
}

- (void)_layoutDescriptionOverlayView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CAMViewfinderView *)self layoutStyle];
    if (!v5 || v5 == 3)
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
      [v4 setFrame:?];
      [v4 setViewportFrame:{v14, v15, v13}];
      v10 = v4;
      v11 = 1;
      goto LABEL_7;
    }

    if (v5 == 1)
    {
      [(CAMViewfinderView *)self bounds];
      v7 = v6;
      [(CAMViewfinderView *)self bounds];
      v9 = v8;
      [v4 setFrame:{0.0, 0.0, v7}];
      [v4 setViewportFrame:{0.0, 0.0, v7, v9}];
      v10 = v4;
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
    v3 = [(CAMViewfinderView *)self previewView];
    v4 = [v3 videoPreviewLayer];

    [v4 rectForMetadataOutputRectOfInterest:{0.0, 0.0, 1.0, 1.0}];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(CAMViewfinderView *)self layer];
    [v13 convertRect:v4 fromLayer:{v6, v8, v10, v12}];
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
    v37 = [(CAMViewfinderView *)self bottomBar];
    [v37 frame];
    v39 = v36 + v38;

    +[CAMChromeViewSpec padViewItemDiameter];
    v41 = v40;
    +[CAMChromeViewSpec padViewItemDiameter];
    v43 = v39 + v42 * 2.0;
    [rect_24 setPreferredQuickActionButtonHeight:v41];
    v44 = [rect_24 actionInfoView];
    if (v44)
    {
      [rect_24 bounds];
      v59.origin.y = v30 + v45;
      v59.size.height = v46 - (v30 + v34);
      v59.origin.x = v32 + v47;
      v59.size.width = v48 - (v32 + v43);
      [v44 setFrame:{v59.origin.x, CGRectGetMaxY(v59) - v41, v59.size.width, v41}];
    }

    v49 = [(CAMViewfinderView *)self imageAnalysisInstructionLabel];
    [v49 frame];
    v50 = v30 + CGRectGetMaxY(v60);

    [rect_24 setContentInsets:{v50, v32, v34 + v41, v43}];
  }
}

- (void)_layoutMachineReadableCodeButton
{
  v3 = [(CAMViewfinderView *)self machineReadableCodeButton];
  [(CAMViewfinderView *)self _layoutBottomCenteredView:v3 aboveView:0 aboveViewSpacing:1 forLayoutStyle:0.0];
}

- (void)_previewLayoutForAspectRatio:(int64_t)a3 shouldShiftPreviewForUtilityBar:(BOOL)a4 outPreviewBounds:(CGRect *)a5 outPreviewCenter:(CGPoint *)a6 outFourThreeTopBarFrame:(CGRect *)a7 outBottomBarFrame:(CGRect *)a8
{
  v12 = a4;
  v15 = [(CAMViewfinderView *)self _modernLayout];

  if (v15)
  {
    if (a3 == 3)
    {
      v12 = 0;
    }

    else
    {
      v12 = v12;
    }

    v16 = [(CAMViewfinderView *)self _modernLayout];
    [v16 viewportFrameForAspectRatio:a3 accessoryAreaExpanded:v12 smartStyleControlsExpanded:0];
    v18 = v17;
    v20 = v19;

    if (a5)
    {
      a5->size.width = v18;
      a5->size.height = v20;
      a5->origin = *MEMORY[0x1E695EFF8];
    }

    if (a6)
    {
      UIRectGetCenter();
      a6->x = v21;
      a6->y = v22;
    }

    if (a7)
    {
      v23 = [(CAMViewfinderView *)self _modernLayout];
      [v23 frameForControlStatusBar];
      a7->origin.x = v24;
      a7->origin.y = v25;
      a7->size.width = v26;
      a7->size.height = v27;
    }

    if (a8)
    {
      v28 = [(CAMViewfinderView *)self _modernLayout];
      [v28 viewportFrameForAspectRatio:0 accessoryAreaExpanded:0 smartStyleControlsExpanded:0];
      MaxY = CGRectGetMaxY(v62);

      v30 = [(CAMViewfinderView *)self _modernLayout];
      [v30 viewportFrameForAspectRatio:1 accessoryAreaExpanded:0 smartStyleControlsExpanded:0];
      v31 = CGRectGetMaxY(v63);

      a8->origin.x = 0.0;
      a8->origin.y = MaxY;
      [(CAMViewfinderView *)self bounds];
      a8->size.width = v32;
      a8->size.height = v31 - MaxY;
    }
  }

  else if ([(CAMViewfinderView *)self useMessagesLayout])
  {
    [(CAMViewfinderView *)self bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [(CAMViewfinderView *)self _previewSizeForAspectRatio:a3];
    [MEMORY[0x1E69C4998] cameraContentGeometryForReferenceBounds:-[CAMViewfinderView orientation](self forContentSize:"orientation" withOrientation:0 shouldShiftPreviewForUtilityBar:{0), v12, v34, v36, v38, v40, v41, v42}];
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
    if (a5)
    {
      a5->origin.x = 0.0;
      a5->origin.y = 0.0;
      a5->size.width = fmin(0.0, 0.0);
      a5->size.height = fmax(0.0, 0.0);
    }

    if (a6)
    {
      [(CAMViewfinderView *)self _previewOffset];
      v60.f64[1] = v59;
      *a6 = vaddq_f64(0, v60);
    }

    if (a7)
    {
      a7->origin.x = v44;
      a7->origin.y = v46;
      a7->size.width = v48;
      a7->size.height = v50;
    }

    if (a8)
    {
      a8->origin.x = v52;
      a8->origin.y = v54;
      a8->size.width = v56;
      a8->size.height = v58;
    }
  }

  else
  {

    [(CAMViewfinderView *)self _cameraAppPreviewLayoutForAspectRatio:a3 shouldShiftPreviewForUtilityBar:v12 outPreviewBounds:a5 outPreviewCenter:a6 outFourThreeTopBarFrame:a7 outBottomBarFrame:a8];
  }
}

- (void)_cameraAppPreviewLayoutForAspectRatio:(int64_t)a3 shouldShiftPreviewForUtilityBar:(BOOL)a4 outPreviewBounds:(CGRect *)a5 outPreviewCenter:(CGPoint *)a6 outFourThreeTopBarFrame:(CGRect *)a7 outBottomBarFrame:(CGRect *)a8
{
  v12 = a4;
  [(CAMViewfinderView *)self bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(CAMViewfinderView *)self layoutStyle];
  [(CAMViewfinderView *)self _layoutMarginInsetsForLayoutStyle:v23];
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
  v79 = [(CAMViewfinderView *)self topBar];
  [(CAMViewfinderView *)self _previewSizeForAspectRatio:0];
  v33 = v32;
  v35 = v34;
  if (v79)
  {
    [(CAMViewfinderView *)self _topBarSizeForLayoutStyle:v23];
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

  v40 = [(CAMViewfinderView *)self bottomBar];
  if (v40)
  {
    [(CAMViewfinderView *)self _bottomBarSizeForLayoutStyle:v23 withProposedSize:Width - (v33 + v37), Height - (v35 + v39)];
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

  [(CAMViewfinderView *)self _previewSizeForAspectRatio:a3];
  v51 = v50;
  v53 = v52;
  v72 = v47;
  v74 = v48;
  v54 = v49;
  v55 = v46;
  [(CAMViewfinderView *)self _previewFrameForAspectRatio:a3 topBarFrame:v12 bottomBarFrame:MinX shouldShiftPreviewForUtilityBar:MinY, v76, v75, v48, v49, v46, v47];
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
  if (![(CAMViewfinderView *)self _wantsInterfaceOrientedPreviewForLayoutStyle:v23])
  {
    v67 = v51;
    v66 = v72;
    if (!a5)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v61 = [(CAMViewfinderView *)self window];
  v62 = CAMInterfaceOrientationForWindow(v61);

  v63 = [(CAMViewfinderView *)self window];
  v64 = [v63 screen];
  v65 = [v64 _isEmbeddedScreen];

  if ((v65 & 1) == 0)
  {
    v62 = [(CAMViewfinderView *)self externalDisplayPreviewOrientation];
  }

  v66 = v72;
  if ((v62 - 3) >= 2)
  {
    v67 = v51;
  }

  else
  {
    v67 = v53;
  }

  if ((v62 - 3) < 2)
  {
    v53 = v51;
  }

  if (a5)
  {
LABEL_18:
    a5->origin.x = 0.0;
    a5->origin.y = 0.0;
    a5->size.width = v67;
    a5->size.height = v53;
  }

LABEL_19:
  if (a6)
  {
    [(CAMViewfinderView *)self _previewOffset];
    a6->x = MidX + v68;
    a6->y = MidY + v69;
  }

  if (a7)
  {
    a7->origin.x = MinX;
    a7->origin.y = MinY;
    a7->size.width = v76;
    a7->size.height = v75;
  }

  if (a8)
  {
    a8->origin.x = v74;
    a8->origin.y = v54;
    a8->size.width = v55;
    a8->size.height = v66;
  }
}

- (UIOffset)_previewOffset
{
  v3 = [(CAMViewfinderView *)self layoutStyle];
  v5 = *MEMORY[0x1E69DE258];
  v4 = *(MEMORY[0x1E69DE258] + 8);
  if (v3 == 1)
  {
    v6 = [(CAMViewfinderView *)self window];
    v7 = CAMInterfaceOrientationForWindow(v6);

    v8 = v7 - 1;
    v9 = [(CAMViewfinderView *)self window];
    v10 = [v9 screen];
    [v10 _referenceBounds];
    v12 = v11;
    v14 = v13;

    v15 = v14 != 0.0 && v12 / v14 == 0.75;
    v16 = [(CAMViewfinderView *)self previewView];
    v17 = [v16 videoPreviewView];
    v18 = [v17 previewViewAspectMode];

    v19 = -15.0;
    if (v8 >= 2)
    {
      v19 = v5;
    }

    if (v18 == 1 && !v15)
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

- (UIEdgeInsets)_layoutMarginInsetsForLayoutStyle:(int64_t)a3
{
  if (a3 == 3)
  {
    v4 = [(CAMViewfinderView *)self _modernLayout];
    if (v4)
    {
      v5 = [(CAMViewfinderView *)self visibilityDelegate];
      v6 = [v5 shouldShiftPreviewForUtilityBar];

      [v4 viewportFrameForAspectRatio:1 accessoryAreaExpanded:v6 smartStyleControlsExpanded:0];
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
      [v4 frameForControlStatusBar];
      MinY = CGRectGetMinY(v29);
      v19 = 0.0;
    }

    else
    {
      v21 = [(CAMViewfinderView *)self window];
      v22 = [v21 screen];
      [v22 _referenceBounds];
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

- (void)setTopBar:(id)a3
{
  v5 = a3;
  topBar = self->_topBar;
  if (topBar != v5)
  {
    v7 = v5;
    [(CAMTopBar *)topBar removeFromSuperview];
    objc_storeStrong(&self->_topBar, a3);
    topBar = [(CAMViewfinderView *)self addSubview:self->_topBar];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](topBar, v5);
}

- (void)setPreviewView:(id)a3
{
  v5 = a3;
  if (self->_previewView != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_previewView, a3);
    v6 = [(CAMViewfinderView *)self _previewContainerView];
    [v6 addSubview:self->_previewView];

    v5 = v7;
  }
}

- (void)setShowingStandardControls:(BOOL)a3
{
  if (self->_showingStandardControls != a3)
  {
    self->_showingStandardControls = a3;
    [(CAMViewfinderView *)self setNeedsLayout];
  }
}

- (void)setDisabledModeOverlayView:(id)a3
{
  v5 = a3;
  disabledModeOverlayView = self->_disabledModeOverlayView;
  if (disabledModeOverlayView != v5)
  {
    v8 = v5;
    [(CAMDisabledModeOverlayView *)disabledModeOverlayView removeFromSuperview];
    objc_storeStrong(&self->_disabledModeOverlayView, a3);
    v7 = [(CAMViewfinderView *)self _previewContainerMaskingView];
    [v7 addSubview:v8];
    [(CAMViewfinderView *)self setNeedsLayout];

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](disabledModeOverlayView, v5);
}

- (void)setBottomBar:(id)a3
{
  v5 = a3;
  bottomBar = self->_bottomBar;
  if (bottomBar != v5)
  {
    v7 = v5;
    [(CAMBottomBar *)bottomBar removeFromSuperview];
    objc_storeStrong(&self->_bottomBar, a3);
    bottomBar = [(CAMViewfinderView *)self addSubview:self->_bottomBar];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](bottomBar, v5);
}

- (void)setElapsedTimeView:(id)a3
{
  v5 = a3;
  elapsedTimeView = self->_elapsedTimeView;
  if (elapsedTimeView != v5)
  {
    v7 = v5;
    [(CAMElapsedTimeView *)elapsedTimeView removeFromSuperview];
    objc_storeStrong(&self->_elapsedTimeView, a3);
    elapsedTimeView = [(CAMViewfinderView *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](elapsedTimeView, v5);
}

- (void)setVideoConfigurationStatusIndicator:(id)a3
{
  v5 = a3;
  videoConfigurationStatusIndicator = self->_videoConfigurationStatusIndicator;
  if (videoConfigurationStatusIndicator != v5)
  {
    v9 = v5;
    v7 = [(CAMVideoConfigurationStatusIndicator *)videoConfigurationStatusIndicator superview];

    if (v7 == self)
    {
      [(CAMVideoConfigurationStatusIndicator *)self->_videoConfigurationStatusIndicator removeFromSuperview];
    }

    v8 = [(CAMControlStatusIndicator *)self->_videoConfigurationStatusIndicator delegate];

    if (v8 == self)
    {
      [(CAMControlStatusIndicator *)self->_videoConfigurationStatusIndicator setDelegate:0];
    }

    objc_storeStrong(&self->_videoConfigurationStatusIndicator, a3);
    [(CAMControlStatusIndicator *)self->_videoConfigurationStatusIndicator setDelegate:self];
    videoConfigurationStatusIndicator = [(CAMViewfinderView *)self addSubview:self->_videoConfigurationStatusIndicator];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](videoConfigurationStatusIndicator, v5);
}

- (void)setShutterButton:(id)a3
{
  v5 = a3;
  shutterButton = self->_shutterButton;
  if (shutterButton != v5)
  {
    v7 = v5;
    [(CUShutterButton *)shutterButton removeFromSuperview];
    objc_storeStrong(&self->_shutterButton, a3);
    shutterButton = [(CAMViewfinderView *)self addSubview:self->_shutterButton];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](shutterButton, v5);
}

- (void)setFlipButton:(id)a3
{
  v5 = a3;
  flipButton = self->_flipButton;
  if (flipButton != v5)
  {
    v8 = v5;
    [(CAMFlipButton *)flipButton removeFromSuperview];
    objc_storeStrong(&self->_flipButton, a3);
    v7 = CAMPixelWidthForView(self);
    [(CAMFlipButton *)self->_flipButton setTappableEdgeInsets:v7 + 9.0, v7 + 9.0, v7 + 9.0, v7 + 9.0];
    flipButton = [(CAMViewfinderView *)self addSubview:v8];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](flipButton, v5);
}

- (void)setVisibleTopBadges:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  if (([v12 isEqualToArray:self->_visibleTopBadges] & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DFA8] setWithArray:self->_visibleTopBadges];
    v7 = [MEMORY[0x1E695DFA8] setWithArray:v12];
    v8 = [v12 copy];
    visibleTopBadges = self->_visibleTopBadges;
    self->_visibleTopBadges = v8;

    v10 = [v6 mutableCopy];
    [v10 minusSet:v7];
    v11 = v7;
    [v11 minusSet:v6];
    [(CAMViewfinderView *)self _enforceBadgeSubviewOrderingWithAppearingBadges:v11];
    [(CAMViewfinderView *)self _layoutTopBadgesForLayoutStyle:[(CAMViewfinderView *)self layoutStyle] appearingBadges:v11 disappearingBadges:v10 animated:v4];
  }
}

- (void)setFocusAndExposureLockBadge:(id)a3
{
  v5 = a3;
  focusAndExposureLockBadge = self->_focusAndExposureLockBadge;
  if (focusAndExposureLockBadge != v5)
  {
    v10 = v5;
    [(CAMFocusLockBadge *)focusAndExposureLockBadge removeFromSuperview];
    v7 = [(CEKBadgeView *)self->_focusAndExposureLockBadge delegate];

    if (v7 == self)
    {
      [(CEKBadgeView *)self->_focusAndExposureLockBadge setDelegate:0];
    }

    [(CAMFocusLockBadge *)self->_focusAndExposureLockBadge setAlpha:1.0];
    objc_storeStrong(&self->_focusAndExposureLockBadge, a3);
    [(CEKBadgeView *)self->_focusAndExposureLockBadge setDelegate:self];
    v8 = [(CAMViewfinderView *)self visibleTopBadges];
    v9 = [v8 containsObject:self->_focusAndExposureLockBadge];

    if ((v9 & 1) == 0)
    {
      [(CAMFocusLockBadge *)self->_focusAndExposureLockBadge setAlpha:0.0];
    }

    focusAndExposureLockBadge = [(CAMViewfinderView *)self addSubview:v10];
    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](focusAndExposureLockBadge, v5);
}

- (void)setLivePhotoBadge:(id)a3
{
  v5 = a3;
  livePhotoBadge = self->_livePhotoBadge;
  if (livePhotoBadge != v5)
  {
    v10 = v5;
    [(CAMLivePhotoBadge *)livePhotoBadge removeFromSuperview];
    v7 = [(CEKBadgeView *)self->_livePhotoBadge delegate];

    if (v7 == self)
    {
      [(CEKBadgeView *)self->_livePhotoBadge setDelegate:0];
    }

    [(CAMLivePhotoBadge *)self->_livePhotoBadge setAlpha:1.0];
    objc_storeStrong(&self->_livePhotoBadge, a3);
    [(CEKBadgeView *)self->_livePhotoBadge setDelegate:self];
    v8 = [(CAMViewfinderView *)self visibleTopBadges];
    v9 = [v8 containsObject:self->_livePhotoBadge];

    if ((v9 & 1) == 0)
    {
      [(CAMLivePhotoBadge *)self->_livePhotoBadge setAlpha:0.0];
    }

    livePhotoBadge = [(CAMViewfinderView *)self addSubview:v10];
    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](livePhotoBadge, v5);
}

- (void)setShallowDepthOfFieldBadge:(id)a3
{
  v5 = a3;
  shallowDepthOfFieldBadge = self->_shallowDepthOfFieldBadge;
  if (shallowDepthOfFieldBadge != v5)
  {
    v9 = v5;
    [(CAMShallowDepthOfFieldBadge *)shallowDepthOfFieldBadge removeFromSuperview];
    [(CAMShallowDepthOfFieldBadge *)self->_shallowDepthOfFieldBadge setAlpha:1.0];
    objc_storeStrong(&self->_shallowDepthOfFieldBadge, a3);
    v7 = [(CAMViewfinderView *)self visibleTopBadges];
    v8 = [v7 containsObject:self->_shallowDepthOfFieldBadge];

    if ((v8 & 1) == 0)
    {
      [(CAMShallowDepthOfFieldBadge *)self->_shallowDepthOfFieldBadge setAlpha:0.0];
    }

    shallowDepthOfFieldBadge = [(CAMViewfinderView *)self addSubview:v9];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](shallowDepthOfFieldBadge, v5);
}

- (void)setPortraitModeInstructionLabel:(id)a3
{
  v5 = a3;
  portraitModeInstructionLabel = self->_portraitModeInstructionLabel;
  if (portraitModeInstructionLabel != v5)
  {
    v8 = v5;
    [(CAMPortraitModeInstructionLabel *)portraitModeInstructionLabel removeFromSuperview];
    v7 = [(CAMInstructionLabel *)self->_portraitModeInstructionLabel delegate];

    if (v7 == self)
    {
      [(CAMInstructionLabel *)self->_portraitModeInstructionLabel setDelegate:0];
    }

    objc_storeStrong(&self->_portraitModeInstructionLabel, a3);
    [(CAMInstructionLabel *)self->_portraitModeInstructionLabel setDelegate:self];
    portraitModeInstructionLabel = [(CAMViewfinderView *)self addSubview:v8];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](portraitModeInstructionLabel, v5);
}

- (void)setCleanLensesInstructionLabel:(id)a3
{
  v5 = a3;
  cleanLensesInstructionLabel = self->_cleanLensesInstructionLabel;
  if (cleanLensesInstructionLabel != v5)
  {
    v8 = v5;
    [(CAMCleanLensesInstructionLabel *)cleanLensesInstructionLabel removeFromSuperview];
    v7 = [(CAMInstructionLabel *)self->_cleanLensesInstructionLabel delegate];

    if (v7 == self)
    {
      [(CAMInstructionLabel *)self->_cleanLensesInstructionLabel setDelegate:0];
    }

    objc_storeStrong(&self->_cleanLensesInstructionLabel, a3);
    [(CAMInstructionLabel *)self->_cleanLensesInstructionLabel setDelegate:self];
    cleanLensesInstructionLabel = [(CAMViewfinderView *)self addSubview:v8];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](cleanLensesInstructionLabel, v5);
}

- (void)setSharedLibraryBadge:(id)a3
{
  v5 = a3;
  sharedLibraryBadge = self->_sharedLibraryBadge;
  if (sharedLibraryBadge != v5)
  {
    v10 = v5;
    [(CAMSharedLibraryBadge *)sharedLibraryBadge removeFromSuperview];
    v7 = [(CEKBadgeView *)self->_sharedLibraryBadge delegate];

    if (v7 == self)
    {
      [(CEKBadgeView *)self->_sharedLibraryBadge setDelegate:0];
    }

    [(CAMSharedLibraryBadge *)self->_sharedLibraryBadge setAlpha:1.0];
    objc_storeStrong(&self->_sharedLibraryBadge, a3);
    [(CEKBadgeView *)self->_sharedLibraryBadge setDelegate:self];
    v8 = [(CAMViewfinderView *)self visibleTopBadges];
    v9 = [v8 containsObject:self->_sharedLibraryBadge];

    if ((v9 & 1) == 0)
    {
      [(CAMSharedLibraryBadge *)self->_sharedLibraryBadge setAlpha:0.0];
    }

    sharedLibraryBadge = [(CAMViewfinderView *)self addSubview:v10];
    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](sharedLibraryBadge, v5);
}

- (void)setDescriptionOverlayView:(id)a3 forKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(CAMViewfinderView *)self _descriptionOverlayViewByKey];
  v8 = [v7 objectForKeyedSubscript:v6];
  if (v8 != v11)
  {
    v9 = [v8 superview];

    if (v9 == self)
    {
      [v8 removeFromSuperview];
    }

    [v7 setObject:v11 forKeyedSubscript:v6];
    [v11 setOrientation:{-[CAMViewfinderView orientation](self, "orientation")}];
    v10 = [(CAMViewfinderView *)self _previewContainerMaskingView];
    [(CAMViewfinderView *)self insertSubview:v11 aboveSubview:v10];
  }
}

- (id)descriptionOverlayViewForKey:(id)a3
{
  v4 = a3;
  v5 = [(CAMViewfinderView *)self _descriptionOverlayViewByKey];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)setQrCodeInstructionLabel:(id)a3
{
  v5 = a3;
  qrCodeInstructionLabel = self->_qrCodeInstructionLabel;
  if (qrCodeInstructionLabel != v5)
  {
    v8 = v5;
    [(CAMQRCodeInstructionLabel *)qrCodeInstructionLabel removeFromSuperview];
    v7 = [(CAMInstructionLabel *)self->_qrCodeInstructionLabel delegate];

    if (v7 == self)
    {
      [(CAMInstructionLabel *)self->_qrCodeInstructionLabel setDelegate:0];
    }

    objc_storeStrong(&self->_qrCodeInstructionLabel, a3);
    [(CAMInstructionLabel *)self->_qrCodeInstructionLabel setDelegate:self];
    qrCodeInstructionLabel = [(CAMViewfinderView *)self addSubview:v8];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](qrCodeInstructionLabel, v5);
}

- (void)setFilterNameBadge:(id)a3
{
  v5 = a3;
  filterNameBadge = self->_filterNameBadge;
  if (filterNameBadge != v5)
  {
    v8 = v5;
    v7 = [(CEKBadgeView *)filterNameBadge delegate];

    if (v7 == self)
    {
      [(CEKBadgeView *)self->_filterNameBadge setDelegate:0];
    }

    [(CAMFilterNameBadge *)self->_filterNameBadge removeFromSuperview];
    objc_storeStrong(&self->_filterNameBadge, a3);
    [(CEKBadgeView *)self->_filterNameBadge setDelegate:self];
    filterNameBadge = [(CAMViewfinderView *)self addSubview:v8];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](filterNameBadge, v5);
}

- (void)controlStatusIndicatorDidChangeIntrinsicContentSize:(id)a3 animated:(BOOL)a4
{
  v5 = [(CAMViewfinderView *)self layoutStyle:a3];

  [(CAMViewfinderView *)self _layoutVideoConfigurationStatusIndicatorForLayoutStyle:v5];
}

- (void)badgeViewDidChangeIntrinsicContentSize:(id)a3
{
  v4 = [(CAMViewfinderView *)self layoutStyle];
  [(CAMViewfinderView *)self _layoutPortraitModeInstructionLabelForLayoutStyle:v4];
  [(CAMViewfinderView *)self _layoutQRCodeInstructionLabelForLayoutStyle:v4];
  [(CAMViewfinderView *)self _layoutTopBadgesForLayoutStyle:v4 animated:1];

  [(CAMViewfinderView *)self _layoutBottomBadgesForLayoutStyle:v4];
}

- (void)instructionLabelDidChangeIntrinsicContentSize:(id)a3
{
  v4 = [(CAMViewfinderView *)self layoutStyle];
  [(CAMViewfinderView *)self _layoutPortraitModeInstructionLabelForLayoutStyle:v4];
  [(CAMViewfinderView *)self _layoutQRCodeInstructionLabelForLayoutStyle:v4];
  [(CAMViewfinderView *)self _layoutTopBadgesForLayoutStyle:v4 animated:1];

  [(CAMViewfinderView *)self _layoutBottomBadgesForLayoutStyle:v4];
}

- (void)setShutterIndicatorView:(id)a3
{
  v5 = a3;
  shutterIndicatorView = self->_shutterIndicatorView;
  if (shutterIndicatorView != v5)
  {
    v7 = v5;
    [(CAMShutterIndicatorView *)shutterIndicatorView removeFromSuperview];
    objc_storeStrong(&self->_shutterIndicatorView, a3);
    shutterIndicatorView = [(CAMViewfinderView *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](shutterIndicatorView, v5);
}

- (void)setBurstIndicatorView:(id)a3
{
  v5 = a3;
  burstIndicatorView = self->_burstIndicatorView;
  if (burstIndicatorView != v5)
  {
    v7 = v5;
    [(CAMBurstIndicatorView *)burstIndicatorView removeFromSuperview];
    objc_storeStrong(&self->_burstIndicatorView, a3);
    burstIndicatorView = [(CAMViewfinderView *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](burstIndicatorView, v5);
}

- (void)setTimerIndicatorView:(id)a3
{
  v5 = a3;
  timerIndicatorView = self->_timerIndicatorView;
  if (timerIndicatorView != v5)
  {
    v7 = v5;
    [(CAMTimerIndicatorView *)timerIndicatorView removeFromSuperview];
    objc_storeStrong(&self->_timerIndicatorView, a3);
    [(CAMViewfinderView *)self addSubview:v7];
    timerIndicatorView = [(CAMViewfinderView *)self _enforceBadgeSubviewOrderingWithAppearingBadges:0];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](timerIndicatorView, v5);
}

- (void)setPanoramaView:(id)a3
{
  v5 = a3;
  panoramaView = self->_panoramaView;
  if (panoramaView != v5)
  {
    v7 = v5;
    [(CAMPanoramaView *)panoramaView removeFromSuperview];
    objc_storeStrong(&self->_panoramaView, a3);
    panoramaView = [(CAMViewfinderView *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](panoramaView, v5);
}

- (void)setZoomSlider:(id)a3
{
  v5 = a3;
  zoomSlider = self->_zoomSlider;
  if (zoomSlider != v5)
  {
    v7 = v5;
    [(CAMZoomSlider *)zoomSlider removeFromSuperview];
    objc_storeStrong(&self->_zoomSlider, a3);
    zoomSlider = [(CAMViewfinderView *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](zoomSlider, v5);
}

- (void)setZoomControl:(id)a3
{
  v5 = a3;
  zoomControl = self->_zoomControl;
  if (zoomControl != v5)
  {
    v10 = v5;
    [(CAMZoomControl *)zoomControl removeFromSuperview];
    objc_storeStrong(&self->_zoomControl, a3);
    v7 = [(CAMViewfinderView *)self bottomBar];
    if (v7)
    {
      [(CAMViewfinderView *)self insertSubview:v10 belowSubview:v7];
    }

    else
    {
      v8 = [(CAMViewfinderView *)self chromeView];

      if (v8)
      {
        v9 = [(CAMViewfinderView *)self chromeView];
        [(CAMViewfinderView *)self insertSubview:v10 belowSubview:v9];
      }

      else
      {
        [(CAMViewfinderView *)self addSubview:v10];
      }
    }

    [(CAMViewfinderView *)self setNeedsLayout];

    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](zoomControl, v5);
}

- (void)setLightingControl:(id)a3
{
  v5 = a3;
  lightingControl = self->_lightingControl;
  if (lightingControl != v5)
  {
    v7 = v5;
    [(CEKLightingControl *)lightingControl removeFromSuperview];
    objc_storeStrong(&self->_lightingControl, a3);
    [(CEKLightingControl *)self->_lightingControl setOrientation:[(CAMViewfinderView *)self orientation]];
    lightingControl = [(CAMViewfinderView *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](lightingControl, v5);
}

- (void)setLightingNameBadge:(id)a3
{
  v5 = a3;
  lightingNameBadge = self->_lightingNameBadge;
  if (lightingNameBadge != v5)
  {
    v8 = v5;
    v7 = [(CEKLightingNameBadge *)lightingNameBadge delegate];

    if (v7 == self)
    {
      [(CEKLightingNameBadge *)self->_lightingNameBadge setDelegate:0];
    }

    [(CEKLightingNameBadge *)self->_lightingNameBadge removeFromSuperview];
    objc_storeStrong(&self->_lightingNameBadge, a3);
    [(CEKLightingNameBadge *)self->_lightingNameBadge setDelegate:self];
    lightingNameBadge = [(CAMViewfinderView *)self addSubview:v8];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](lightingNameBadge, v5);
}

- (void)setAutomaticallyAdjustsTopBarOrientation:(BOOL)a3
{
  if (self->_automaticallyAdjustsTopBarOrientation != a3)
  {
    self->_automaticallyAdjustsTopBarOrientation = a3;
    [(CAMViewfinderView *)self setNeedsLayout];
  }
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v37 = *MEMORY[0x1E69E9840];
  orientation = self->_orientation;
  if (orientation != a3)
  {
    v5 = a4;
    v8 = [(CAMViewfinderView *)self layoutStyle];
    if (v5)
    {
      [(CAMViewfinderView *)self layoutIfNeeded];
      self->_orientation = a3;
      if (v8 != 3 && v8 || (a3 - 1) >= 2)
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
      v14 = [(CAMViewfinderView *)self visibleTopBadges];
      v15 = [v13 setWithArray:v14];

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

      v21 = [(CAMViewfinderView *)self visibilityDelegate];
      if (([v21 shouldHidePortraitModeInstructionLabel] & 1) == 0)
      {
        v22 = [(CAMViewfinderView *)self portraitModeInstructionLabel];
        [(CAMViewfinderView *)self _createPlaceholderSnapshotAndPerformDoubleSidedFadeForView:v22 fadeOutDuration:v12 fadeOutDelay:v10 fadeInDuration:v11 fadeInDelay:v9];
      }

      if (([v21 shouldHideQRCodeInstructionLabel] & 1) == 0)
      {
        v23 = [(CAMViewfinderView *)self qrCodeInstructionLabel];
        [(CAMViewfinderView *)self _createPlaceholderSnapshotAndPerformDoubleSidedFadeForView:v23 fadeOutDuration:v12 fadeOutDelay:v10 fadeInDuration:v11 fadeInDelay:v9];
      }

      if (([v21 shouldHideFilterNameBadge] & 1) == 0)
      {
        v24 = [(CAMViewfinderView *)self filterNameBadge];
        [(CAMViewfinderView *)self _createPlaceholderSnapshotAndPerformDoubleSidedFadeForView:v24 fadeOutDuration:v12 fadeOutDelay:v10 fadeInDuration:v11 fadeInDelay:v9];
      }

      if (([v21 shouldHideLightingNameBadgeForOrientation:orientation] & 1) == 0)
      {
        if ((a3 - 3) >= 2)
        {
          if ((a3 - 1) >= 2)
          {
            v25 = [(CAMViewfinderView *)self lightingNameBadge];
          }

          else
          {
            v25 = [(CAMViewfinderView *)self lightingNameBadge];
            if ((orientation - 3) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              [(CAMViewfinderView *)self _createPlaceholderSnapshotAndPerformSingleSidedFadeForView:v25 fadeOutDuration:v12 fadeOutDelay:v10];
            }
          }
        }

        else
        {
          v25 = [(CAMViewfinderView *)self lightingNameBadge];
          if ((orientation - 3) <= 1)
          {
            [(CAMViewfinderView *)self _createPlaceholderSnapshotAndPerformDoubleSidedFadeForView:v25 fadeOutDuration:v12 fadeOutDelay:v10 fadeInDuration:v11 fadeInDelay:v9];
          }
        }
      }

      v26 = [v21 shouldHideTopBar];
      if (((orientation - 1) | (a3 - 1)) >= 2 && (v26 & 1) == 0 && [(CAMViewfinderView *)self automaticallyAdjustsTopBarOrientation])
      {
        v27 = [(CAMViewfinderView *)self topBar];
        [(CAMViewfinderView *)self _createPlaceholderSnapshotAndPerformDoubleSidedFadeForView:v27 fadeOutDuration:0.3 fadeOutDelay:0.0 fadeInDuration:0.25 fadeInDelay:0.2];
      }
    }

    else
    {
      self->_orientation = a3;
    }

    v28 = [(CAMViewfinderView *)self _descriptionOverlayViewByKey];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __45__CAMViewfinderView_setOrientation_animated___block_invoke;
    v30[3] = &__block_descriptor_41_e55_v32__0___NSCopying__8__CAMDescriptionOverlayView_16_B24l;
    v30[4] = a3;
    v31 = v5;
    [v28 enumerateKeysAndObjectsUsingBlock:v30];

    [(CAMViewfinderView *)self setNeedsLayout];
    [(CAMViewfinderView *)self _layoutPortraitModeInstructionLabelForLayoutStyle:v8];
    [(CAMViewfinderView *)self _layoutQRCodeInstructionLabelForLayoutStyle:v8];
    [(CAMViewfinderView *)self _layoutTopBadgesForLayoutStyle:v8 animated:0];
    [(CAMViewfinderView *)self _layoutBottomBadgesForLayoutStyle:v8];
    if (v5)
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
  v3 = [(CAMViewfinderView *)self _previewContainerMaskingView];
  [v3 setClipsToBounds:0];
  [(CAMViewfinderView *)self _layoutSnapshotsOfPreviewView];
}

- (void)_createPlaceholderSnapshotAndPerformSingleSidedFadeForView:(id)a3 fadeOutDuration:(double)a4 fadeOutDelay:(double)a5
{
  v7 = a3;
  v8 = [v7 snapshotViewAfterScreenUpdates:0];
  v9 = MEMORY[0x1E69DD250];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109__CAMViewfinderView__createPlaceholderSnapshotAndPerformSingleSidedFadeForView_fadeOutDuration_fadeOutDelay___block_invoke;
  v18[3] = &unk_1E76F7960;
  v10 = v8;
  v19 = v10;
  v20 = v7;
  v11 = v7;
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
  [v12 animateWithDuration:327682 delay:v16 options:v14 animations:a4 completion:a5];
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

- (void)_createPlaceholderSnapshotAndPerformDoubleSidedFadeForView:(id)a3 fadeOutDuration:(double)a4 fadeOutDelay:(double)a5 fadeInDuration:(double)a6 fadeInDelay:(double)a7
{
  v12 = a3;
  [(CAMViewfinderView *)self _createPlaceholderSnapshotAndPerformSingleSidedFadeForView:v12 fadeOutDuration:a4 fadeOutDelay:a5];
  v13 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __136__CAMViewfinderView__createPlaceholderSnapshotAndPerformDoubleSidedFadeForView_fadeOutDuration_fadeOutDelay_fadeInDuration_fadeInDelay___block_invoke;
  v15[3] = &unk_1E76F77B0;
  v16 = v12;
  v14 = v12;
  [v13 animateWithDuration:2 delay:v15 options:0 animations:a6 completion:a7];
}

- (void)setTextInteractionInsert:(id)a3
{
  v4 = a3;
  textInteractionInsert = self->_textInteractionInsert;
  if (textInteractionInsert != v4)
  {
    v7 = v4;
    textInteractionInsert = [(VKTextLiftingView *)textInteractionInsert removeFromSuperview];
    v4 = v7;
    self->_textInteractionInsert = v7;
    if (v7)
    {
      [(CAMViewfinderView *)self addSubview:v7];
      [(CAMViewfinderView *)self _layoutTextInteractionInsertAndActionInfoView];
      v6 = [(CAMViewfinderView *)self imageAnalysisInstructionLabel];
      [(CAMViewfinderView *)self bringSubviewToFront:v6];

      v4 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](textInteractionInsert, v4);
}

- (void)setImageAnalysisInstructionLabel:(id)a3
{
  v5 = a3;
  imageAnalysisInstructionLabel = self->_imageAnalysisInstructionLabel;
  if (imageAnalysisInstructionLabel != v5)
  {
    v7 = v5;
    [(CAMImageAnalysisInstructionLabel *)imageAnalysisInstructionLabel removeFromSuperview];
    objc_storeStrong(&self->_imageAnalysisInstructionLabel, a3);
    imageAnalysisInstructionLabel = [(CAMViewfinderView *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](imageAnalysisInstructionLabel, v5);
}

- (void)adoptMachineReadableCodeButton:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CAMViewfinderView *)self machineReadableCodeButton];
  v8 = v7;
  if (v7 != v6)
  {
    if (v7)
    {
      [(CAMViewfinderView *)self dismissMachineReadableCodeButtonAnimated:v4];
    }

    [(CAMViewfinderView *)self setMachineReadableCodeButton:v6];
    v9 = 0.0;
    if (v4)
    {
      [v6 setAlpha:0.0];
      v9 = 0.3;
    }

    [(CAMViewfinderView *)self addSubview:v6];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__CAMViewfinderView_adoptMachineReadableCodeButton_animated___block_invoke;
    v10[3] = &unk_1E76F77B0;
    v11 = v6;
    [CAMView animateIfNeededWithDuration:v10 animations:v9];
  }
}

- (void)dismissMachineReadableCodeButtonAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMViewfinderView *)self machineReadableCodeButton];
  if (v5)
  {
    [(CAMViewfinderView *)self setMachineReadableCodeButton:0];
    if (v3)
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
    v10 = v5;
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

- (void)setChromeView:(id)a3
{
  v5 = a3;
  chromeView = self->_chromeView;
  if (chromeView != v5)
  {
    v9 = v5;
    v7 = [(UIView *)chromeView superview];

    if (v7 == self)
    {
      [(UIView *)self->_chromeView removeFromSuperview];
    }

    objc_storeStrong(&self->_chromeView, a3);
    v8 = [(CAMViewfinderView *)self _bottomBarExtensionView];
    [CAMView view:self insertSubview:v9 aboveSubview:v8];

    chromeView = [(CAMViewfinderView *)self setNeedsLayout];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](chromeView, v5);
}

- (void)setExternalChromeShutterButtonFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_externalChromeShutterButtonFrame = &self->_externalChromeShutterButtonFrame;
  if (!CGRectEqualToRect(self->_externalChromeShutterButtonFrame, a3))
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