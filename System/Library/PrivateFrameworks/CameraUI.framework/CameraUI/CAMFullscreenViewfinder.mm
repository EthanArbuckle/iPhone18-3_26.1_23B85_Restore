@interface CAMFullscreenViewfinder
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForBadgeTray;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForBottomCenteredView:(SEL)a3 margins:(id)a4;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForBottomCenteredView:(SEL)a3 margins:(id)a4 aroundFrame:(CGSize)a5;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForFilterNameBadge:(SEL)a3;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForInstructionLabel:(SEL)a3 belowInstructionLabelGeometry:(id)a4 elapsedTimeViewGeometry:(id *)a5;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForLandscapeLightingBadge;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForMRCButton;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForSmartStyleNameBadge:(SEL)a3;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForTextInteractionInsertWithViewport:(SEL)a3;
- (BOOL)_canLayoutLightingControls;
- (BOOL)_isViewportAnimatorVelocityZero;
- (BOOL)_shouldShowSpatialCaptureRecordingIndicator;
- (BOOL)_shouldShowZoomControl;
- (BOOL)_showControlDrawer;
- (BOOL)_showLandscapeLightingBadge;
- (BOOL)_showModeView;
- (BOOL)_showPortraitControls;
- (BOOL)_showSmartStylePicker;
- (BOOL)_wantsReticle;
- (BOOL)isApertureSliderVisible;
- (BOOL)isControlDrawerPresentedModallyWithControlType:(int64_t)a3;
- (BOOL)isExposureSliderVisible;
- (BOOL)isIntensitySliderVisible;
- (BOOL)isNightModeSliderVisible;
- (BOOL)isReticleAnimating;
- (BOOL)isSmartStylePickerVisible;
- (BOOL)overCaptureGradientVisible;
- (BOOL)requestPreviewUpdateForSemanticStyleAnimated:(BOOL)a3;
- (BOOL)shouldAccessibilityGestureBeginForHUDManager:(id)a3;
- (CAMFullscreenViewfinder)initWithMetalContext:(id)a3;
- (CAMFullscreenViewfinderDelegate)delegate;
- (CEKFluidBehaviorSettings)_viewportSettings;
- (CGRect)_frameForActionInfoView;
- (CGRect)_frameForContentClippingContainer;
- (CGRect)_frameForControlDrawer;
- (CGRect)_frameForExternalChromeTopBar;
- (CGRect)_frameForFlipButton;
- (CGRect)_frameForLightingControl;
- (CGRect)_frameForPreviewOverlaysInViewport:(CGRect)a3;
- (CGRect)_frameForPreviewView;
- (CGRect)_frameForSpatialRecordingIndicatorWithElapsedTimeViewGeometry:(id *)a3 orientation:(int64_t)a4;
- (CGRect)_frameForSpotlightControlPanel;
- (CGRect)_imageAnalysisButtonAlignmentRectForCenterY:(double)a3;
- (CGRect)_imageAnalysisButtonFrameForCenterY:(double)a3;
- (CGRect)_imageAnalysisButtonFrameForZoomControl:(id)a3 zoomSlider:(id)a4;
- (CGRect)_viewportAnimatorRectPresentationValue;
- (CGRect)_viewportAnimatorRectValue;
- (CGRect)_viewportAnimatorViewportFrame;
- (CGRect)currentFourThreeViewportFrame;
- (CGRect)externalChromeShutterButtonFrame;
- (CGRect)frameForReticleViewport;
- (CGSize)panoramaCaptureSize;
- (double)_additionalBottomPaddingForLightingControl;
- (double)_centerYForZoomControl:(id)a3 zoomSlider:(id)a4;
- (double)_referenceYForControlsAboveShutterButton;
- (double)_trueVideoAnimationDuration;
- (double)_viewportAnimatorPercentComplete;
- (double)overCaptureGradientHeight;
- (double)previewAspectRatio;
- (id)_visibleInstructionLabelForInstructionLabelValue:(int64_t)a3;
- (id)descriptionOverlayViewForKey:(id)a3;
- (id)hudItemForAccessibilityHUDManager:(id)a3;
- (id)touchingRecognizersToCancel;
- (int64_t)_viewportAspectRatioForControlsOverPreview;
- (unint64_t)_badgeFontStyle;
- (unint64_t)interfaceModulation;
- (void)_animateQuietUIActive:(BOOL)a3 animations:(id)a4 completion:(id)a5;
- (void)_applyTextInsertContentInsets;
- (void)_createViewIfNeededForInstructionLabel:(int64_t)a3 isPrimary:(BOOL)a4;
- (void)_didFinishChangingPreviewGeometry;
- (void)_ensureBlurFilterForContentView:(id)a3;
- (void)_insertBackgroundSubview:(id)a3;
- (void)_insertStylePicker:(id)a3;
- (void)_iterateViewsForHUDManager:(id)a3 withItemFoundBlock:(id)a4;
- (void)_layoutPanoramaView;
- (void)_layoutSemanticStyleMaskedBadges;
- (void)_layoutSmartStyleNameBadge;
- (void)_layoutViewportWithFrame:(CGRect)a3 previewFrame:(CGRect)a4;
- (void)_layoutViewportWithFrame:(CGRect)a3 previewFrame:(CGRect)a4 trueVideoTransitionPercentComplete:(double)a5 smartFramingTransitionPercentComplete:(double)a6;
- (void)_layoutZoomControlForExternalChrome;
- (void)_layoutZoomControls;
- (void)_layoutZoomSliderForExternalChrome;
- (void)_loadFilterControlsIfNeeded;
- (void)_loadPortraitControlsIfNeeded;
- (void)_loadSemanticStyleControlsIfNeeded;
- (void)_loadSmartStyleControlsIfNeeded;
- (void)_setNeedsLayoutAnimated:(BOOL)a3;
- (void)_setSmartStyleControlsVisible:(BOOL)a3 animated:(BOOL)a4 notifyDelegate:(BOOL)a5;
- (void)_setViewportAnimatorFrame:(CGRect)a3 withDuration:(double)a4 timingCurve:(id)a5;
- (void)_setViewportAnimatorRectValue:(CGRect)a3;
- (void)_transitionView:(id)a3 fromOrientation:(int64_t)a4 toOrientation:(int64_t)a5;
- (void)_transitionView:(id)a3 isFlippingInPlace:(BOOL)a4;
- (void)_updateContentView:(id)a3 forQuietUIActive:(BOOL)a4;
- (void)_updateDisabledModeOverlayViewportFrame:(CGRect)a3;
- (void)_updateForLayoutCompleted;
- (void)_updateForSemanticStyleControlsDidChangeVisibility:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateGeometryForElapsedTimeAndInstructionLabels;
- (void)_updateLightingControlClipping;
- (void)_updatePortraitControlsHighlightAnimated:(BOOL)a3;
- (void)_updatePreviewAlignmentGuideForViewportFrame:(CGRect)a3;
- (void)_updatePreviewLayerForPreviewFrame:(CGRect)a3 viewportFrame:(CGRect)a4 trueVideoTransitionPercentComplete:(double)a5 smartFramingTransitionPercentComplete:(double)a6;
- (void)_updateQuietUIAnimated:(BOOL)a3;
- (void)_updateReticle;
- (void)_updateReticleForViewportFrame:(CGRect)a3;
- (void)_updateSemanticStylePicker:(id)a3 forViewportFrame:(CGRect)a4;
- (void)_updateSubviewsVisibilityAnimated:(BOOL)a3;
- (void)_updateTintColors;
- (void)_updateViewportVectorAnimatorWithInitialViewportFrame:(CGRect)a3 destinationViewportFrame:(CGRect)a4 response:(double)a5;
- (void)_updateZoomControlForLayoutConflictsAnimated:(BOOL)a3;
- (void)adoptMachineReadableCodeButton:(id)a3 fromOriginalParent:(id)a4 animated:(BOOL)a5;
- (void)animator:(id)a3 didUpdateValuesForKeys:(id)a4;
- (void)controlDrawer:(id)a3 didChangeExpanded:(BOOL)a4 forControlType:(int64_t)a5 animated:(BOOL)a6 updatePreferredDrawerControl:(BOOL)a7;
- (void)createTimerIndicatorView;
- (void)dismissMachineReadableCodeButtonAnimated:(BOOL)a3;
- (void)dismissModalControlDrawerIfNeededForReason:(int64_t)a3;
- (void)layoutSubviews;
- (void)machineReadableCodeButtonDidTapDismiss:(id)a3;
- (void)prepareForResumingUsingCrossfade;
- (void)presentControlDrawerModally:(BOOL)a3 forReason:(int64_t)a4 controlType:(int64_t)a5;
- (void)reloadSemanticStyleBadgesDelayIfNeeded:(BOOL)a3;
- (void)removeInflightBlurAnimations;
- (void)selectedByAccessibilityHUDManager:(id)a3;
- (void)semanticStylePickerDidChangeSelectedStyle:(id)a3;
- (void)semanticStylePickerDidScroll:(id)a3;
- (void)setChromeView:(id)a3;
- (void)setControlDrawerExpanded:(BOOL)a3 forReason:(int64_t)a4 animated:(BOOL)a5;
- (void)setControlDrawerVisible:(BOOL)a3 modeUIVisible:(BOOL)a4 animated:(BOOL)a5;
- (void)setDescriptionOverlayView:(id)a3 forKey:(id)a4;
- (void)setDeviceOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setDisabledModeOverlayView:(id)a3;
- (void)setElapsedTimeViewVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setExternalChromeFilterScrubberVisible:(BOOL)a3;
- (void)setExternalChromeSemanticStyleControlsVisible:(BOOL)a3;
- (void)setExternalChromeShutterButtonFrame:(CGRect)a3 animated:(BOOL)a4;
- (void)setExternalChromeSmartStyleControlsVisible:(BOOL)a3;
- (void)setExternalChromeTopInset:(double)a3 animated:(BOOL)a4;
- (void)setFlipAspectRatioButtonVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setFlipButtonVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setImageAnalysisButton:(id)a3;
- (void)setImageAnalysisButtonVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setInterfaceModulation:(unint64_t)a3 animated:(BOOL)a4;
- (void)setLightingNameBadgesHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setMaterial:(int64_t)a3 withDuration:(double)a4;
- (void)setOffsetZoomButtonForFlipAspectRatioButton:(BOOL)a3 animated:(BOOL)a4;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setOrientationInstructionBackgroundBlurred:(BOOL)a3 animated:(BOOL)a4;
- (void)setOrientationInstructionVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setOverCaptureGradientHeight:(double)a3 animated:(BOOL)a4;
- (void)setOverCaptureGradientVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setPanoramaCaptureSize:(CGSize)a3;
- (void)setPanoramaView:(id)a3;
- (void)setPhotoVideoModeSwitchVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setPortraitControlsAllowed:(BOOL)a3 animated:(BOOL)a4;
- (void)setPreviewAlignmentGuideVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setPreviewView:(id)a3;
- (void)setShallowDepthOfFieldStatus:(int64_t)a3 animated:(BOOL)a4;
- (void)setShowingStandardControls:(BOOL)a3;
- (void)setShutterControlVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setSmartFramingFieldOfView:(int64_t)a3 useTransition:(BOOL)a4 animated:(BOOL)a5;
- (void)setSpatialCaptureRecordingIndicatorVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setSpotlightControl:(int64_t)a3 animated:(BOOL)a4;
- (void)setStereoCaptureStatus:(int64_t)a3 animated:(BOOL)a4;
- (void)setStereoCaptureStatus:(int64_t)a3 useHoldStillStereoLowLightInstruction:(BOOL)a4 animated:(BOOL)a5;
- (void)setSystemOverlayVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setTextInteractionInsert:(id)a3;
- (void)setTimerIndicatorVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setTrueVideoState:(unint64_t)a3;
- (void)setUseHoldStillStereoLowLightInstruction:(BOOL)a3;
- (void)setViewportAspectRatio:(int64_t)a3 animated:(BOOL)a4;
- (void)setVisibleInstructionLabel:(int64_t)a3 animated:(BOOL)a4;
- (void)setVisibleInstructionLabel:(int64_t)a3 visibleSecondaryInstructionLabel:(int64_t)a4 animated:(BOOL)a5;
- (void)setVisiblePreviewSuggestionButton:(int64_t)a3 animated:(BOOL)a4;
- (void)setWantsSmartStylePicker:(BOOL)a3 animated:(BOOL)a4;
- (void)setZoomControlVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setZoomStyle:(unint64_t)a3;
@end

@implementation CAMFullscreenViewfinder

- (CAMFullscreenViewfinder)initWithMetalContext:(id)a3
{
  v46[1] = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = CAMFullscreenViewfinder;
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = [(CAMFullscreenViewfinder *)&v45 initWithFrame:a3, *MEMORY[0x1E695F058], v4, v5, v6];
  v8 = v7;
  if (v7)
  {
    v7->_showingStandardControls = 1;
    v7->_canCreateElapsedTimeView = 1;
    v9 = [MEMORY[0x1E69DC888] blackColor];
    [(CAMFullscreenViewfinder *)v8 setBackgroundColor:v9];

    v8->_controlDrawerVisible = 1;
    v8->_modeUIVisible = 1;
    v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v3, v4, v5, v6}];
    previewContainerView = v8->__previewContainerView;
    v8->__previewContainerView = v10;

    v12 = v8->__previewContainerView;
    v13 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v12 setBackgroundColor:v13];

    v14 = objc_alloc_init(CAMBadgeTray);
    badgeTray = v8->_badgeTray;
    v8->_badgeTray = v14;

    [(CAMBadgeTray *)v8->_badgeTray setUserInteractionEnabled:0];
    [(CAMFullscreenViewfinder *)v8 addSubview:v8->__previewContainerView];
    [(CAMFullscreenViewfinder *)v8 _updateReticle];
    v16 = objc_alloc_init(CAMNonInteractiveContainer);
    contentClippingContainer = v8->__contentClippingContainer;
    v8->__contentClippingContainer = &v16->super;

    [(UIView *)v8->__contentClippingContainer setClipsToBounds:1];
    [(CAMFullscreenViewfinder *)v8 addSubview:v8->__contentClippingContainer];
    v18 = [[CAMInterfaceModulationView alloc] initWithHostingView:v8];
    modulatingContentView = v8->__modulatingContentView;
    v8->__modulatingContentView = v18;

    [(UIView *)v8->__contentClippingContainer addSubview:v8->__modulatingContentView];
    v20 = [[CAMInterfaceModulationView alloc] initWithHostingView:v8];
    contentView = v8->__contentView;
    v8->__contentView = &v20->super;

    v22 = [[CAMInterfaceModulationView alloc] initWithHostingView:v8];
    contentViewBelowShutter = v8->__contentViewBelowShutter;
    v8->__contentViewBelowShutter = &v22->super;

    v24 = [[CAMInterfaceModulationView alloc] initWithHostingView:v8];
    chromeContentView = v8->__chromeContentView;
    v8->__chromeContentView = &v24->super;

    [(CAMInterfaceModulationView *)v8->__modulatingContentView addSubview:v8->__contentViewBelowShutter];
    [(CAMInterfaceModulationView *)v8->__modulatingContentView addSubview:v8->_shutterControl];
    [(CAMInterfaceModulationView *)v8->__modulatingContentView addSubview:v8->_badgeTray];
    [(CAMInterfaceModulationView *)v8->__modulatingContentView addSubview:v8->__contentView];
    [(CAMInterfaceModulationView *)v8->__modulatingContentView addSubview:v8->__chromeContentView];
    [(UIView *)v8->__contentView addSubview:v8->_flipButton];
    [(UIView *)v8->__contentView addSubview:v8->_photoVideoModeSwitch];
    v26 = objc_alloc_init(MEMORY[0x1E6993808]);
    viewportAnimator = v8->__viewportAnimator;
    v8->__viewportAnimator = v26;

    v28 = 0.0;
    [(CEKAdditiveAnimator *)v8->__viewportAnimator setValue:@"CAMViewfinderAnimatorSmartFramingTransitionPercentCompleteKey" forKey:0.0];
    [(CEKAdditiveAnimator *)v8->__viewportAnimator setDelegate:v8];
    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    descriptionOverlayViewByKey = v8->__descriptionOverlayViewByKey;
    v8->__descriptionOverlayViewByKey = v29;

    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    instructionLabelByValue = v8->__instructionLabelByValue;
    v8->__instructionLabelByValue = v31;

    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    createdPrimaryInstructionLabels = v8->__createdPrimaryInstructionLabels;
    v8->__createdPrimaryInstructionLabels = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    createdSecondaryInstructionLabels = v8->__createdSecondaryInstructionLabels;
    v8->__createdSecondaryInstructionLabels = v35;

    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    badgesForSpotlightControls = v8->__badgesForSpotlightControls;
    v8->__badgesForSpotlightControls = v37;

    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CAMTrueVideoModeSwitchToCaptureDuration", @"com.apple.camera", 0);
    v40 = 0.0;
    if (AppIntegerValue >= 1)
    {
      v40 = AppIntegerValue / 1000.0;
    }

    v8->__trueVideoModeSwitchToCaptureAnimationDurationOverride = v40;
    v41 = CFPreferencesGetAppIntegerValue(@"CAMTrueVideoModeSwitchFromCaptureDuration", @"com.apple.camera", 0);
    if (v41 >= 1)
    {
      v28 = v41 / 1000.0;
    }

    v8->__trueVideoModeSwitchFromCaptureAnimationDurationOverride = v28;
    v8->_smartFramingFieldOfView = 0;
    [(CAMFullscreenViewfinder *)v8 createTimerIndicatorView];
    v46[0] = objc_opt_class();
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
    v43 = [(CAMFullscreenViewfinder *)v8 registerForTraitChanges:v42 withAction:sel_setNeedsLayout];
  }

  return v8;
}

- (BOOL)_wantsReticle
{
  v3 = [(CAMFullscreenViewfinder *)self _overCapturePreviewLayer];
  if (v3)
  {
    v4 = [(CAMFullscreenViewfinder *)self isShowingStandardControls];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateReticle
{
  if ([(CAMFullscreenViewfinder *)self _wantsReticle]&& !self->__reticleView)
  {
    v5 = [CAMViewfinderReticleView alloc];
    v6 = [(CAMViewfinderReticleView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    reticleView = self->__reticleView;
    self->__reticleView = v6;

    v8 = self->__reticleView;
    previewContainerView = self->__previewContainerView;

    [(CAMFullscreenViewfinder *)self insertSubview:v8 aboveSubview:previewContainerView];
  }

  else if (![(CAMFullscreenViewfinder *)self _wantsReticle])
  {
    v3 = self->__reticleView;
    if (v3)
    {
      [(CAMViewfinderReticleView *)v3 removeFromSuperview];
      v4 = self->__reticleView;
      self->__reticleView = 0;
    }
  }
}

- (void)_insertBackgroundSubview:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CAMFullscreenViewfinder *)self _previewContainerView];
    [(CAMFullscreenViewfinder *)self insertSubview:v4 aboveSubview:v5];
  }
}

- (void)_updateGeometryForElapsedTimeAndInstructionLabels
{
  v79 = *MEMORY[0x1E69E9840];
  [(CAMFullscreenViewfinder *)self frameForReticleViewport];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMFullscreenViewfinder *)self elapsedTimeView];
  if (v11)
  {
    v12 = [(CAMFullscreenViewfinder *)self isElapsedTimeViewVisible];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(CAMFullscreenViewfinder *)self _layout];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v14 = [(CAMFullscreenViewfinder *)self orientation];
  v15 = [(CAMFullscreenViewfinder *)self isSystemOverlayVisible];
  if (v13)
  {
    [v13 geometryForElapsedTimeView:v11 viewportFrame:v14 orientation:v15 systemOverlayVisible:{v4, v6, v8, v10}];
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
  }

  if (v12)
  {
    v67 = v73;
    v68 = v74;
    v69 = v75;
    v70 = v76;
    v65 = v71;
    v66 = v72;
    CAMViewSetGeometry(v11, &v65);
    v67 = v73;
    v68 = v74;
    v69 = v75;
    v70 = v76;
    v16 = v71;
    v17 = v72;
  }

  else
  {
    v67 = xmmword_1A3A6A490;
    v68 = unk_1A3A6A4A0;
    v69 = xmmword_1A3A6A4B0;
    v70 = unk_1A3A6A4C0;
    v16 = CAMViewGeometryZero;
    v17 = unk_1A3A6A480;
  }

  v65 = v16;
  v66 = v17;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v18 = [(CAMFullscreenViewfinder *)self _createdPrimaryInstructionLabels];
  v19 = [v18 countByEnumeratingWithState:&v61 objects:v78 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v62;
    v36 = unk_1A3A6A4A0;
    v37 = xmmword_1A3A6A490;
    v34 = unk_1A3A6A4C0;
    v35 = xmmword_1A3A6A4B0;
    v32 = unk_1A3A6A480;
    v33 = CAMViewGeometryZero;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v62 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v61 + 1) + 8 * i);
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v51 = v37;
        v52 = v36;
        v53 = v35;
        v54 = v34;
        v49 = v33;
        v50 = v32;
        v45 = v67;
        v46 = v68;
        v47 = v69;
        v48 = v70;
        v43 = v65;
        v44 = v66;
        [(CAMFullscreenViewfinder *)self _geometryForInstructionLabel:v23 belowInstructionLabelGeometry:&v49 elapsedTimeViewGeometry:&v43, v32, v33, v34, v35, v36, v37];
        v51 = v57;
        v52 = v58;
        v53 = v59;
        v54 = v60;
        v49 = v55;
        v50 = v56;
        CAMApplyAnimationSensitiveGeometryToView(&v49, v23);
      }

      v20 = [v18 countByEnumeratingWithState:&v61 objects:v78 count:16];
    }

    while (v20);
  }

  v24 = [(CAMFullscreenViewfinder *)self _visibleInstructionLabelForInstructionLabelValue:[(CAMFullscreenViewfinder *)self visibleInstructionLabel]];
  v25 = v24;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  if (v24)
  {
    CAMViewGetGeometry(v24, &v55);
  }

  else
  {
    v57 = xmmword_1A3A6A490;
    v58 = unk_1A3A6A4A0;
    v59 = xmmword_1A3A6A4B0;
    v60 = unk_1A3A6A4C0;
    v55 = CAMViewGeometryZero;
    v56 = unk_1A3A6A480;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = [(CAMFullscreenViewfinder *)self _createdSecondaryInstructionLabels];
  v27 = [v26 countByEnumeratingWithState:&v39 objects:v77 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v40;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v39 + 1) + 8 * j);
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v45 = v57;
        v46 = v58;
        v47 = v59;
        v48 = v60;
        v43 = v55;
        v44 = v56;
        v38[2] = v67;
        v38[3] = v68;
        v38[4] = v69;
        v38[5] = v70;
        v38[0] = v65;
        v38[1] = v66;
        [(CAMFullscreenViewfinder *)self _geometryForInstructionLabel:v31 belowInstructionLabelGeometry:&v43 elapsedTimeViewGeometry:v38];
        v45 = v51;
        v46 = v52;
        v47 = v53;
        v48 = v54;
        v43 = v49;
        v44 = v50;
        CAMApplyAnimationSensitiveGeometryToView(&v43, v31);
      }

      v28 = [v26 countByEnumeratingWithState:&v39 objects:v77 count:16];
    }

    while (v28);
  }
}

- (void)_layoutViewportWithFrame:(CGRect)a3 previewFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v13 = [(CAMFullscreenViewfinder *)self trueVideoState];
  v14 = 0.0;
  if (v13 == 2)
  {
    v14 = 1.0;
  }

  [(CAMFullscreenViewfinder *)self _layoutViewportWithFrame:v11 previewFrame:v10 trueVideoTransitionPercentComplete:v9 smartFramingTransitionPercentComplete:v8, x, y, width, height, *&v14, 0];
}

- (void)_layoutViewportWithFrame:(CGRect)a3 previewFrame:(CGRect)a4 trueVideoTransitionPercentComplete:(double)a5 smartFramingTransitionPercentComplete:(double)a6
{
  width = a4.size.width;
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  [(CAMFullscreenViewfinder *)self _updateReticleForViewportFrame:?];
  [(CAMFullscreenViewfinder *)self _updatePreviewLayerForPreviewFrame:x viewportFrame:y trueVideoTransitionPercentComplete:width smartFramingTransitionPercentComplete:height, v11, v10, v9, v8, *&a5, *&a6];
  [(CAMFullscreenViewfinder *)self _updatePreviewAlignmentGuideForViewportFrame:v11, v10, v9, v8];
  v13 = [(CAMFullscreenViewfinder *)self semanticStylePicker];
  [(CAMFullscreenViewfinder *)self _updateSemanticStylePicker:v13 forViewportFrame:v11, v10, v9, v8];

  v14 = [(CAMFullscreenViewfinder *)self smartStylePicker];
  [(CAMFullscreenViewfinder *)self _updateSemanticStylePicker:v14 forViewportFrame:v11, v10, v9, v8];

  [(CAMFullscreenViewfinder *)self _updateDisabledModeOverlayViewportFrame:v11, v10, v9, v8];
  v15 = [(CAMFullscreenViewfinder *)self _overCapturePreviewLayer];
  if (!v15)
  {
    v16 = [(CAMFullscreenViewfinder *)self previewView];
    [v16 bounds];
    v11 = v17;
    v10 = v18;
    v9 = v19;
    v8 = v20;
  }

  v21 = [(CAMFullscreenViewfinder *)self previewView];
  [v21 setViewportFrame:{v11, v10, v9, v8}];

  v22 = [(CAMFullscreenViewfinder *)self _descriptionOverlayViewByKey];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __138__CAMFullscreenViewfinder__layoutViewportWithFrame_previewFrame_trueVideoTransitionPercentComplete_smartFramingTransitionPercentComplete___block_invoke;
  v25[3] = &__block_descriptor_64_e55_v32__0___NSCopying__8__CAMDescriptionOverlayView_16_B24l;
  *&v25[4] = v11;
  *&v25[5] = v10;
  *&v25[6] = v9;
  *&v25[7] = v8;
  [v22 enumerateKeysAndObjectsUsingBlock:v25];
}

- (void)layoutSubviews
{
  [(CAMFullscreenViewfinder *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMFullscreenViewfinder *)self shutterControl];
  v12 = [(CAMFullscreenViewfinder *)self _layout];
  if (!v12)
  {
    v230.origin.x = v4;
    v230.origin.y = v6;
    v230.size.width = v8;
    v230.size.height = v10;
    if (CGRectIsEmpty(v230))
    {
      v12 = 0;
    }

    else
    {
      v13 = [CAMFullscreenViewfinderLayout alloc];
      [v11 intrinsicContentSize];
      v12 = [(CAMFullscreenViewfinderLayout *)v13 initWithReferenceBounds:v4 shutterIntrinsicSize:v6, v8, v10, v14, v15];
      objc_storeStrong(&self->__layout, v12);
    }
  }

  [(CAMFullscreenViewfinderLayout *)v12 setReferenceBounds:v4, v6, v8, v10];
  [v11 intrinsicContentSize];
  [(CAMFullscreenViewfinderLayout *)v12 setShutterIntrinsicSize:?];
  v16 = [(CAMFullscreenViewfinder *)self window];
  v17 = [v16 screen];
  [v17 scale];
  [(CAMFullscreenViewfinderLayout *)v12 setScreenScale:?];

  v18 = [(CAMFullscreenViewfinder *)self chromeView];
  [v18 setFrame:{v4, v6, v8, v10}];

  [(CAMFullscreenViewfinder *)self _frameForPreviewView];
  v207 = v20;
  v209 = v19;
  v22 = v21;
  v24 = v23;
  [(CAMFullscreenViewfinder *)self frameForReticleViewport];
  v212 = v25;
  v213 = v26;
  v214 = v27;
  v211 = v28;
  [(CAMFullscreenViewfinder *)self _setViewportAnimatorFrame:?];
  v29 = [(CAMFullscreenViewfinder *)self _previewContainerView];
  [v29 setFrame:{v4, v6, v8, v10}];

  [(CAMFullscreenViewfinder *)self _frameForContentClippingContainer];
  v215 = v6;
  v216 = v4;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [(CAMFullscreenViewfinder *)self _contentClippingContainer];
  [v38 setFrame:{v31, v33, v35, v37}];

  v39 = [(CAMFullscreenViewfinder *)self _modulatingContentView];
  v40 = [v39 superview];
  [(CAMFullscreenViewfinder *)self convertRect:v40 toView:v216, v215, v8, v10];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = [(CAMFullscreenViewfinder *)self _modulatingContentView];
  [v49 setFrame:{v42, v44, v46, v48}];

  v50 = [(CAMFullscreenViewfinder *)self _contentView];
  [v50 setBounds:{v216, v215, v8, v10}];

  UIRectGetCenter();
  v52 = v51;
  v54 = v53;
  v55 = [(CAMFullscreenViewfinder *)self _contentView];
  [v55 setCenter:{v52, v54}];

  v56 = [(CAMFullscreenViewfinder *)self _contentViewBelowShutter];
  [v56 setBounds:{v216, v215, v8, v10}];

  UIRectGetCenter();
  v58 = v57;
  v60 = v59;
  v61 = [(CAMFullscreenViewfinder *)self _contentViewBelowShutter];
  [v61 setCenter:{v58, v60}];

  v62 = [(CAMFullscreenViewfinder *)self _chromeContentView];
  [v62 setBounds:{v216, v215, v8, v10}];

  UIRectGetCenter();
  v64 = v63;
  v66 = v65;
  v67 = [(CAMFullscreenViewfinder *)self _chromeContentView];
  [v67 setCenter:{v64, v66}];

  UIRectGetCenter();
  v69 = v68;
  v71 = v70;
  v72 = [(CAMFullscreenViewfinder *)self previewView];
  [v72 setCenter:{v69, v71}];

  v73 = *MEMORY[0x1E695EFF8];
  v74 = *(MEMORY[0x1E695EFF8] + 8);
  v75 = [(CAMFullscreenViewfinder *)self previewView];
  v205 = v22;
  [v75 setBounds:{v73, v74, v22, v24}];

  [(CAMFullscreenViewfinder *)self _frameForFlipButton];
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = [(CAMFullscreenViewfinder *)self flipButton];
  [v84 setFrame:{v77, v79, v81, v83}];

  v85 = [(CAMFullscreenViewfinder *)self badgeTray];
  [(CAMFullscreenViewfinder *)self _geometryForBadgeTray];
  CAMViewSetGeometry(v85, &v224);

  v86 = [(CAMFullscreenViewfinder *)self _reticleView];
  [v86 setFrame:{v216, v215, v8, v10}];

  v87 = [(CAMFullscreenViewfinder *)self timerIndicator];
  v88 = v211;
  CAMViewGeometryForOrientedFrame(1, &v224, v212, v214, v213, v211);
  CAMViewSetGeometry(v87, &v224);

  [(CAMFullscreenViewfinder *)self externalChromeTopInset];
  if (v214 <= v89)
  {
    v90 = [(CAMFullscreenViewfinder *)self timerIndicator];
    UIRectInsetEdges();
    CAMViewGeometryForOrientedFrame(1, &v224, v91, v92, v93, v94);
    CAMViewSetGeometry(v90, &v224);
  }

  v95 = [(CAMFullscreenViewfinder *)self _descriptionOverlayViewByKey];
  v223[0] = MEMORY[0x1E69E9820];
  v223[1] = 3221225472;
  v223[2] = __41__CAMFullscreenViewfinder_layoutSubviews__block_invoke;
  v223[3] = &__block_descriptor_64_e55_v32__0___NSCopying__8__CAMDescriptionOverlayView_16_B24l;
  *&v223[4] = v216;
  *&v223[5] = v215;
  *&v223[6] = v8;
  *&v223[7] = v10;
  [v95 enumerateKeysAndObjectsUsingBlock:v223];

  v96 = [(CAMFullscreenViewfinder *)self flipButton];
  [v96 center];
  [v11 setLockButtonCenterRightInset:v8 - v97];

  v98 = [(CAMFullscreenViewfinder *)self _layout];
  [v98 alignmentRectForBottomRightControlOfSize:{42.0, 42.0}];
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;

  v231.origin.x = v100;
  v231.origin.y = v102;
  v231.size.width = v104;
  v231.size.height = v106;
  v107 = v212;
  [v11 setPauseResumeButtonCenterLeftInset:v8 - CGRectGetMidX(v231)];
  [(CAMFullscreenViewfinderLayout *)v12 frameForShutterControl:v11];
  [v11 setFrame:?];
  if (![(CAMFullscreenViewfinder *)self isReticleAnimating])
  {
    [(CAMFullscreenViewfinder *)self _layoutViewportWithFrame:v212 previewFrame:v214, v213, v211, v209, v207, v205, v24];
  }

  v108 = [(CAMFullscreenViewfinder *)self previewView];
  [(CAMFullscreenViewfinder *)self _frameForPreviewOverlaysInViewport:v212, v214, v213, v211];
  [v108 convertRect:self fromView:?];
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v117 = [(CAMFullscreenViewfinder *)self previewView];
  [v117 setOverlayFrame:{v110, v112, v114, v116}];

  [(CAMFullscreenViewfinder *)self _layoutZoomControls];
  v118 = [(CAMFullscreenViewfinder *)self imageAnalysisButton];
  v119 = [(CAMFullscreenViewfinder *)self zoomSlider];
  v120 = [(CAMFullscreenViewfinder *)self zoomControl];
  v121 = [(CAMFullscreenViewfinder *)self traitCollection];
  v122 = [v121 preferredContentSizeCategory];
  [CAMZoomButton circleDiameterForContentSize:v122];
  v124 = v123;

  [v118 setBackgroundDiameter:v124];
  if (objc_opt_respondsToSelector())
  {
    [v118 setGlyphScale:0.8];
  }

  [(CAMFullscreenViewfinder *)self _imageAnalysisButtonFrameForZoomControl:v120 zoomSlider:v119];
  [v118 setFrame:?];
  v125 = [(CAMFullscreenViewfinder *)self flipAspectRatioButton];

  if (v125)
  {
    [(CAMFullscreenViewfinder *)self _centerYForZoomControl:v120 zoomSlider:v119];
    [(CAMFullscreenViewfinder *)self _imageAnalysisButtonAlignmentRectForCenterY:?];
    v233 = CGRectInset(v232, -3.0, -3.0);
    y = v233.origin.y;
    width = v233.size.width;
    height = v233.size.height;
    [(CAMFullscreenViewfinder *)self bounds];
    v130 = v129 * 0.5 - width * 0.5;
    if ([(CAMFullscreenViewfinder *)self isZoomControlVisible]|| [(CAMFullscreenViewfinder *)self trueVideoState])
    {
      v130 = v124 * 0.5 + 3.0 + v130;
    }

    v131 = [(CAMFullscreenViewfinder *)self flipAspectRatioButton];
    [v131 setFrame:{v130, y, width, height}];

    v88 = v211;
    v107 = v212;
  }

  v206 = v120;
  v208 = v119;
  v210 = v11;
  v132 = [(CAMFullscreenViewfinder *)self _textInteractionBackground];
  [v132 setFrame:{v216, v215, v8, v10}];

  v133 = [(CAMFullscreenViewfinder *)self textInteractionInsert];
  [(CAMFullscreenViewfinder *)self _geometryForTextInteractionInsertWithViewport:v107, v214, v213, v88];
  CAMViewSetGeometry(v133, &v224);
  [v118 backgroundDiameter];
  [v133 setPreferredQuickActionButtonHeight:?];
  v134 = [v133 actionInfoView];
  if (v134)
  {
    [(CAMFullscreenViewfinder *)self _frameForActionInfoView];
    [v134 setFrame:?];
  }

  [(CAMFullscreenViewfinder *)self _applyTextInsertContentInsets];
  v135 = [(CAMFullscreenViewfinder *)self machineReadableCodeButton];
  if (v135)
  {
    UIEdgeInsetsMakeWithEdges();
    [v135 setHitTestInsets:?];
    [(CAMFullscreenViewfinder *)self _geometryForMRCButton];
    CAMViewSetGeometry(v135, &v224);
  }

  v136 = [(CAMFullscreenViewfinder *)self controlDrawer];
  if (v136)
  {
    [(CAMFullscreenViewfinder *)self _frameForControlDrawer];
    [v136 setFrame:?];
  }

  [(CAMFullscreenViewfinder *)self _updateGeometryForElapsedTimeAndInstructionLabels];
  [(CAMFullscreenViewfinder *)self _frameForSpotlightControlPanel];
  v138 = v137;
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v145 = [(CAMFullscreenViewfinder *)self spotlightControlPanel];
  [v145 setFrame:{v138, v140, v142, v144}];

  if ([(CAMFullscreenViewfinder *)self _canLayoutLightingControls])
  {
    [(CAMFullscreenViewfinder *)self _frameForLightingControl];
    v147 = v146;
    v149 = v148;
    v150 = v107;
    v152 = v151;
    v153 = v88;
    v155 = v154;
    [(CAMFullscreenViewfinder *)self _additionalBottomPaddingForLightingControl];
    v157 = v156;
    v158 = [(CAMFullscreenViewfinder *)self lightingControl];
    [v158 setAdditionalBottomPadding:v157];

    v159 = [(CAMFullscreenViewfinder *)self lightingControl];
    [v159 setFrame:{v147, v149, v152, v155}];

    v160 = [(CAMFullscreenViewfinder *)self zoomControl];
    v161 = [(CAMFullscreenViewfinder *)self zoomSlider];
    [(CAMFullscreenViewfinder *)self _centerYForZoomControl:v160 zoomSlider:v161];
    v163 = v162;

    v234.origin.x = v147;
    v234.origin.y = v149;
    v234.size.width = v152;
    v234.size.height = v155;
    v88 = v153;
    v107 = v150;
    v164 = CGRectGetMaxY(v234) - v163;
    v165 = [(CAMFullscreenViewfinder *)self lightingControl];
    [v165 setCollapsedSelectionCenterPointBottomInset:v164];

    v228 = 0u;
    v229 = 0u;
    v226 = 0u;
    v227 = 0u;
    v224 = 0u;
    v225 = 0u;
    [(CAMFullscreenViewfinder *)self _geometryForLandscapeLightingBadge];
    v166 = [(CAMFullscreenViewfinder *)self lightingNameBadge];
    v219 = v226;
    v220 = v227;
    v221 = v228;
    v222 = v229;
    v217 = v224;
    v218 = v225;
    CAMApplyAnimationSensitiveGeometryToView(&v217, v166);
  }

  v167 = [(CAMFullscreenViewfinder *)self filterNameBadge];

  if (v167)
  {
    v168 = [(CAMFullscreenViewfinder *)self filterNameBadge];
    v228 = 0u;
    v229 = 0u;
    v226 = 0u;
    v227 = 0u;
    v224 = 0u;
    v225 = 0u;
    [(CAMFullscreenViewfinder *)self _geometryForFilterNameBadge:v168];
    v219 = v226;
    v220 = v227;
    v221 = v228;
    v222 = v229;
    v217 = v224;
    v218 = v225;
    CAMApplyAnimationSensitiveGeometryToView(&v217, v168);
  }

  [(CAMFullscreenViewfinder *)self _layoutSemanticStyleMaskedBadges];
  v169 = [(CAMFullscreenViewfinder *)self panoramaView];

  if (v169)
  {
    [(CAMFullscreenViewfinder *)self _layoutPanoramaView];
  }

  v170 = [(CAMFullscreenViewfinder *)self _orientationInstructionView];

  if (v170)
  {
    v171 = [(CAMFullscreenViewfinder *)self _orientationInstructionView];
    [v171 setFrame:{v107, v214, v213, v88}];
  }

  v172 = [(CAMFullscreenViewfinder *)self spatialCaptureRecordingIndicator];
  if (v172)
  {
    v173 = v172;
    v174 = [(CAMFullscreenViewfinder *)self isSpatialCaptureRecordingIndicatorVisible];

    if (v174)
    {
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v224 = 0u;
      v225 = 0u;
      v175 = [(CAMFullscreenViewfinder *)self _layout];
      v176 = [(CAMFullscreenViewfinder *)self elapsedTimeView];
      v177 = [(CAMFullscreenViewfinder *)self orientation];
      v178 = [(CAMFullscreenViewfinder *)self isSystemOverlayVisible];
      if (v175)
      {
        [v175 geometryForElapsedTimeView:v176 viewportFrame:v177 orientation:v178 systemOverlayVisible:{v107, v214, v213, v88}];
      }

      else
      {
        v228 = 0u;
        v229 = 0u;
        v226 = 0u;
        v227 = 0u;
        v224 = 0u;
        v225 = 0u;
      }

      v179 = [(CAMFullscreenViewfinder *)self orientation];
      v219 = v226;
      v220 = v227;
      v221 = v228;
      v222 = v229;
      v217 = v224;
      v218 = v225;
      [(CAMFullscreenViewfinder *)self _frameForSpatialRecordingIndicatorWithElapsedTimeViewGeometry:&v217 orientation:v179];
      v181 = v180;
      v183 = v182;
      v185 = v184;
      v187 = v186;
      v188 = [(CAMFullscreenViewfinder *)self spatialCaptureRecordingIndicator];
      [v188 setFrame:{v181, v183, v185, v187}];
    }
  }

  [(CAMFullscreenViewfinder *)self _frameForFlipButton];
  v190 = v189;
  v192 = v191;
  v194 = v193;
  v196 = v195;
  v197 = [(CAMFullscreenViewfinder *)self _layout];
  [v197 alignmentRectForShutterControl];
  v199 = v198;

  v235.origin.x = v190;
  v235.origin.y = v192;
  v235.size.width = v194;
  v235.size.height = v196;
  v236 = CGRectInset(v235, 0.0, (v196 - v199) * 0.5);
  v237 = CGRectInset(v236, (v236.size.height - v236.size.width) * -0.5, 0.0);
  x = v237.origin.x;
  v201 = v237.origin.y;
  v202 = v237.size.width;
  v203 = v237.size.height;
  v204 = [(CAMFullscreenViewfinder *)self photoVideoModeSwitch];
  [v204 setFrame:{x, v201, v202, v203}];

  [(CAMFullscreenViewfinder *)self _layoutSmartStyleNameBadge];
  [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:0];
  [(CAMFullscreenViewfinder *)self _updateTintColors];
}

- (void)_setViewportAnimatorFrame:(CGRect)a3 withDuration:(double)a4 timingCurve:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a5;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (!CGRectIsEmpty(v17))
  {
    v11 = +[CAMCaptureCapabilities capabilities];
    v12 = [v11 isViewportSpringAnimationSupported];

    if (v12)
    {
      if (a4 > 0.0)
      {
        [(CAMFullscreenViewfinder *)self _viewportAnimatorViewportFrame];
        [CAMFullscreenViewfinder _updateViewportVectorAnimatorWithInitialViewportFrame:"_updateViewportVectorAnimatorWithInitialViewportFrame:destinationViewportFrame:response:" destinationViewportFrame:*&a4 response:?];
      }

      [(CAMFullscreenViewfinder *)self _setViewportAnimatorViewportFrame:x, y, width, height];
    }

    else
    {
      if ([(CAMFullscreenViewfinder *)self trueVideoState]- 1 >= 2)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v14 = [(CAMFullscreenViewfinder *)self _viewportAnimator];
      [v14 setValue:@"CAMViewfinderAnimatorViewportOriginXKey" forKey:v15 duration:x timingCurve:a4];
      [v14 setValue:@"CAMViewfinderAnimatorViewportOriginYKey" forKey:v15 duration:y timingCurve:a4];
      [v14 setValue:@"CAMViewfinderAnimatorViewportWidthKey" forKey:v15 duration:width timingCurve:a4];
      [v14 setValue:@"CAMViewfinderAnimatorViewportHeightKey" forKey:v15 duration:height timingCurve:a4];
      [v14 setValue:@"CAMViewfinderAnimatorTrueVideoTransitionPercentCompleteKey" forKey:v15 duration:v13 timingCurve:a4];
      if ([(CAMFullscreenViewfinder *)self _useSmartFramingTransition])
      {
        [v14 setValue:@"CAMViewfinderAnimatorSmartFramingTransitionPercentCompleteKey" forKey:v15 duration:1.0 timingCurve:a4];
      }
    }
  }
}

- (void)animator:(id)a3 didUpdateValuesForKeys:(id)a4
{
  v5 = a3;
  [v5 valueForKey:@"CAMViewfinderAnimatorViewportOriginXKey"];
  UIRoundToViewScale();
  v7 = v6;
  [v5 valueForKey:@"CAMViewfinderAnimatorViewportOriginYKey"];
  UIRoundToViewScale();
  v9 = v8;
  [v5 valueForKey:@"CAMViewfinderAnimatorViewportWidthKey"];
  UIRoundToViewScale();
  v11 = v10;
  [v5 valueForKey:@"CAMViewfinderAnimatorViewportHeightKey"];
  UIRoundToViewScale();
  v13 = v12;
  [v5 valueForKey:@"CAMViewfinderAnimatorTrueVideoTransitionPercentCompleteKey"];
  v15 = v14;
  [v5 valueForKey:@"CAMViewfinderAnimatorSmartFramingTransitionPercentCompleteKey"];
  v17 = v16;

  [MEMORY[0x1E6979518] begin];
  [(CAMFullscreenViewfinder *)self _frameForPreviewView];
  [(CAMFullscreenViewfinder *)self _layoutViewportWithFrame:v7 previewFrame:v9 trueVideoTransitionPercentComplete:v11 smartFramingTransitionPercentComplete:v13, v18, v19, v20, v21, v15, v17];
  v22 = [(CAMFullscreenViewfinder *)self previewView];
  [v22 layoutIfNeeded];

  v23 = MEMORY[0x1E6979518];

  [v23 commit];
}

- (void)_didFinishChangingPreviewGeometry
{
  [(CAMFullscreenViewfinder *)self set_useSmartFramingTransition:0];
  v3 = [(CAMFullscreenViewfinder *)self delegate];
  [v3 fullscreenViewfinderDidFinishChangingPreviewGeometry:self];
}

- (BOOL)isReticleAnimating
{
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 isViewportSpringAnimationSupported];

  if (v4)
  {
    v5 = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
    if (v5)
    {
      v6 = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
      LODWORD(self) = [v6 isInvalidated] ^ 1;
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  else
  {
    v5 = [(CAMFullscreenViewfinder *)self _viewportAnimator];
    LOBYTE(self) = [v5 isAnimating];
  }

  return self;
}

- (void)_updateViewportVectorAnimatorWithInitialViewportFrame:(CGRect)a3 destinationViewportFrame:(CGRect)a4 response:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.size.height;
  v10 = a3.size.width;
  v11 = a3.origin.y;
  v12 = a3.origin.x;
  v14 = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
  if (!v14 || (v15 = v14, -[CAMFullscreenViewfinder _viewportVectorAnimator](self, "_viewportVectorAnimator"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isInvalidated], v16, v15, v17))
  {
    objc_initWeak(&location, self);
    v18 = MEMORY[0x1E6993860];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __115__CAMFullscreenViewfinder__updateViewportVectorAnimatorWithInitialViewportFrame_destinationViewportFrame_response___block_invoke;
    v22[3] = &unk_1E76F7740;
    objc_copyWeak(&v23, &location);
    v19 = [v18 rectAnimatablePropertyWithInitialValue:v22 cancelableFrameCallback:{v12, v11, v10, v9}];
    [(CAMFullscreenViewfinder *)self _setViewportVectorAnimator:v19];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  v20 = [(CAMFullscreenViewfinder *)self _viewportSettings];
  [v20 setResponse:a5];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __115__CAMFullscreenViewfinder__updateViewportVectorAnimatorWithInitialViewportFrame_destinationViewportFrame_response___block_invoke_2;
  v21[3] = &unk_1E76F7768;
  v21[4] = self;
  *&v21[5] = x;
  *&v21[6] = y;
  *&v21[7] = width;
  *&v21[8] = height;
  [MEMORY[0x1E69DD250] cek_animateWithSettings:v20 mode:3 animations:v21 completion:0];
}

uint64_t __115__CAMFullscreenViewfinder__updateViewportVectorAnimatorWithInitialViewportFrame_destinationViewportFrame_response___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_6:
    v19 = 1;
    goto LABEL_8;
  }

  [WeakRetained _viewportAnimatorRectValue];
  [v2 _viewportAnimatorRectPresentationValue];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v2 _viewportAnimatorPercentComplete];
  v12 = v11;
  [v2 _frameForPreviewView];
  [v2 _layoutViewportWithFrame:v4 previewFrame:v6 trueVideoTransitionPercentComplete:v8 smartFramingTransitionPercentComplete:{v10, v13, v14, v15, v16, v12, v12}];
  v17 = BSRectEqualToRect();
  v18 = [v2 _isViewportAnimatorVelocityZero];
  v19 = 0;
  if (v17 && v18)
  {
    if (!BSFloatIsOne())
    {
      v19 = 0;
      goto LABEL_8;
    }

    [v2 _didFinishChangingPreviewGeometry];
    goto LABEL_6;
  }

LABEL_8:

  return v19;
}

- (void)_setViewportAnimatorRectValue:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__CAMFullscreenViewfinder__setViewportAnimatorRectValue___block_invoke;
  v8[3] = &__block_descriptor_64_e9_v16__0_d8l;
  *&v8[4] = x;
  *&v8[5] = y;
  *&v8[6] = width;
  *&v8[7] = height;
  [v7 _mutateValue:v8];
}

double __57__CAMFullscreenViewfinder__setViewportAnimatorRectValue___block_invoke(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  *(a2 + 8) = *(a1 + 40);
  *(a2 + 16) = *(a1 + 48);
  result = *(a1 + 56);
  *(a2 + 24) = result;
  *(a2 + 32) = 0x3FF0000000000000;
  return result;
}

- (CGRect)_viewportAnimatorRectValue
{
  v2 = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
  v3 = [v2 _value];

  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_viewportAnimatorRectPresentationValue
{
  v2 = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
  v3 = [v2 _presentationValue];

  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (double)_viewportAnimatorPercentComplete
{
  v2 = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
  v3 = [v2 _presentationValue];

  return *(v3 + 32);
}

- (BOOL)_isViewportAnimatorVelocityZero
{
  v2 = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
  [v2 _velocity];

  if (!BSFloatIsZero() || !BSFloatIsZero() || !BSFloatIsZero() || !BSFloatIsZero())
  {
    return 0;
  }

  return BSFloatIsZero();
}

- (CEKFluidBehaviorSettings)_viewportSettings
{
  viewportSettings = self->__viewportSettings;
  if (!viewportSettings)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6993858]);
    v5 = self->__viewportSettings;
    self->__viewportSettings = v4;

    [(CEKFluidBehaviorSettings *)self->__viewportSettings setDefaultCriticallyDampedValues];
    viewportSettings = self->__viewportSettings;
  }

  return viewportSettings;
}

- (void)_setNeedsLayoutAnimated:(BOOL)a3
{
  v3 = a3;
  [(CAMFullscreenViewfinder *)self setNeedsLayout];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__CAMFullscreenViewfinder__setNeedsLayoutAnimated___block_invoke;
  aBlock[3] = &unk_1E76F77B0;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (v3)
  {
    [(CAMFullscreenViewfinder *)self _trueVideoAnimationDuration];
    v10 = 0.5;
    if (v7 <= 0.0)
    {
      v11 = 0.5;
    }

    else
    {
      v11 = v7;
    }

    LODWORD(v7) = 1045220557;
    LODWORD(v8) = 1041865114;
    LODWORD(v9) = 1.0;
    LODWORD(v10) = 1045220557;
    v12 = [MEMORY[0x1E69793D0] functionWithControlPoints:v7 :v10 :v8 :v9];
    [(CAMFullscreenViewfinder *)self frameForReticleViewport];
    [CAMFullscreenViewfinder _setViewportAnimatorFrame:"_setViewportAnimatorFrame:withDuration:timingCurve:" withDuration:v12 timingCurve:?];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setAnimationTimingFunction:v12];
    [(CAMFullscreenViewfinder *)self set_inFlightLayoutAnimationCount:[(CAMFullscreenViewfinder *)self _inFlightLayoutAnimationCount]+ 1];
    v13 = MEMORY[0x1E69DD250];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __51__CAMFullscreenViewfinder__setNeedsLayoutAnimated___block_invoke_2;
    v20[3] = &unk_1E76F77B0;
    v20[4] = self;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __51__CAMFullscreenViewfinder__setNeedsLayoutAnimated___block_invoke_3;
    v17 = &unk_1E76F77D8;
    v18 = self;
    v19 = v6;
    [v13 animateWithDuration:2 delay:v20 options:&v14 animations:v11 completion:0.0];
    [MEMORY[0x1E6979518] commit];
  }

  else
  {
    (*(v5 + 2))(v5);
    if (![(CAMFullscreenViewfinder *)self _inFlightLayoutAnimationCount])
    {
      [(CAMFullscreenViewfinder *)self _didFinishChangingPreviewGeometry];
    }
  }
}

uint64_t __51__CAMFullscreenViewfinder__setNeedsLayoutAnimated___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _inFlightLayoutAnimationCount];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _updateForLayoutCompleted];
  }

  return result;
}

uint64_t __51__CAMFullscreenViewfinder__setNeedsLayoutAnimated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) set_inFlightLayoutAnimationCount:{objc_msgSend(*(a1 + 32), "_inFlightLayoutAnimationCount") - 1}];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (double)_trueVideoAnimationDuration
{
  v3 = [(CAMFullscreenViewfinder *)self useSlowerTrueVideoTransitionAnimationDuration];
  v4 = [(CAMFullscreenViewfinder *)self trueVideoState];
  if (v4 == 1)
  {
    [(CAMFullscreenViewfinder *)self _trueVideoModeSwitchToCaptureAnimationDurationOverride];
    v6 = !v3;
    v7 = 0.7;
    v8 = 0.966;
  }

  else
  {
    result = 0.0;
    if (v4 != 3)
    {
      return result;
    }

    [(CAMFullscreenViewfinder *)self _trueVideoModeSwitchFromCaptureAnimationDurationOverride];
    v6 = !v3;
    v7 = 0.586;
    v8 = 1.0;
  }

  if (!v6)
  {
    v7 = v8;
  }

  if (result <= 0.0)
  {
    return v7;
  }

  return result;
}

- (void)_updateForLayoutCompleted
{
  if (![(CAMFullscreenViewfinder *)self isControlDrawerExpanded])
  {
    v3 = [(CAMFullscreenViewfinder *)self controlDrawer];
    [v3 collapseExpandableButtonsAnimated:0 updatePreferredDrawerControl:0];
  }
}

- (CGRect)currentFourThreeViewportFrame
{
  v3 = [(CAMFullscreenViewfinder *)self _layout];
  [v3 viewportFrameForAspectRatio:0 accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_frameForPreviewView
{
  [(CAMFullscreenViewfinder *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMFullscreenViewfinder *)self _overCapturePreviewLayer];

  if (!v11)
  {
    v12 = [(CAMFullscreenViewfinder *)self viewportAspectRatio];
    if ((v12 - 2) >= 3)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [(CAMFullscreenViewfinder *)self _layout];
    [v14 viewportFrameForAspectRatio:v13 accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
    v4 = v15;
    v6 = v16;
    v8 = v17;
    v10 = v18;
  }

  if ([(CAMFullscreenViewfinder *)self _wantsPreviewOnlyLayout])
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v6;
  }

  v20 = v4;
  v21 = v8;
  v22 = v10;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v19;
  result.origin.x = v20;
  return result;
}

- (CGRect)_frameForPreviewOverlaysInViewport:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CAMFullscreenViewfinder *)self _frameForExternalChromeTopBar];
  v20.origin.x = v7;
  v20.origin.y = v8;
  v20.size.width = v9;
  v20.size.height = v10;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18 = CGRectIntersection(v17, v20);
  v11 = v18.size.height;
  IsNull = CGRectIsNull(v18);
  if (IsNull)
  {
    v13 = height;
  }

  else
  {
    v13 = height - v11;
  }

  if (IsNull)
  {
    v14 = y;
  }

  else
  {
    v14 = y + v11;
  }

  v15 = x;
  v16 = width;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (void)_updatePreviewLayerForPreviewFrame:(CGRect)a3 viewportFrame:(CGRect)a4 trueVideoTransitionPercentComplete:(double)a5 smartFramingTransitionPercentComplete:(double)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  v15 = [(CAMFullscreenViewfinder *)self _overCapturePreviewLayer];
  if (v15)
  {
    v27 = v15;
    UIRectGetCenter();
    v18 = (v16 - v13) / v11;
    v19 = (v17 - v12) / v10;
    [v27 primaryCaptureRectAspectRatio];
    if (height / width == v20)
    {
      [v27 primaryCaptureRectCenterPoint];
      v21 = v18 != v23 || v19 != v22;
    }

    else
    {
      v21 = 1;
    }

    v24 = [(CAMFullscreenViewfinder *)self trueVideoState];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [(CAMFullscreenViewfinder *)self _useSmartFramingTransition]&& !v24)
    {
      v25 = [CAMCaptureConversions AVCaptureSmartFramingFieldOfViewForCAMCaptureSmartFramingFieldOfView:[(CAMFullscreenViewfinder *)self smartFramingFieldOfView]];
      [v27 setPrimaryCaptureRectAspectRatio:v25 centerPoint:height / width smartFramingTransitionPercentComplete:v19 smartFramingTransitionTargetFieldOfView:{v18, a6}];
      v26 = [(CAMFullscreenViewfinder *)self delegate];
      [v26 fullscreenViewfinder:self didChangePreviewGeometryWithViewportFrame:{x, y, width, height}];
    }

    else
    {
      v15 = v27;
      if (!v21)
      {
        goto LABEL_14;
      }

      [v27 setPrimaryCaptureRectAspectRatio:height / width centerPoint:v19 trueVideoTransitionPercentComplete:{v18, a5}];
      v25 = [(CAMFullscreenViewfinder *)self delegate];
      [v25 fullscreenViewfinder:self didChangePreviewGeometryWithViewportFrame:{x, y, width, height}];
    }

    v15 = v27;
  }

LABEL_14:
}

- (double)previewAspectRatio
{
  v2 = [(CAMFullscreenViewfinder *)self _overCapturePreviewLayer];
  [v2 primaryCaptureRectAspectRatio];
  v4 = 1.0 / v3;

  return v4;
}

- (BOOL)requestPreviewUpdateForSemanticStyleAnimated:(BOOL)a3
{
  v3 = a3;
  v60 = *MEMORY[0x1E69E9840];
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [v5 smartStylesSupported];

  if (v6)
  {
    return 0;
  }

  v7 = [(CAMFullscreenViewfinder *)self delegate];
  v8 = [v7 fullscreenViewfinderCanUpdatePreviewSemanticStyles:self];

  if (!v8)
  {
    return 0;
  }

  v9 = [(CAMFullscreenViewfinder *)self _overCapturePreviewLayer];
  v10 = [(CAMFullscreenViewfinder *)self isSemanticStyleControlVisible];
  v11 = [(CAMFullscreenViewfinder *)self delegate];
  v12 = v11;
  if (v10)
  {
    v13 = [v11 fullscreenViewfinderSemanticStyleList:self];

    v14 = [(CAMFullscreenViewfinder *)self semanticStylePicker];
    v15 = [v14 selectedStyleIndex];

    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    v17 = v16 - 1;
    v52 = v13;
    v18 = [v13 count];
    if (v15 + 1 < (v18 - 1))
    {
      v19 = v15 + 1;
    }

    else
    {
      v19 = v18 - 1;
    }

    v20 = v19 - v17;
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v16 - 1 < (v19 + 1))
    {
      v22 = v19 - v16 + 2;
      v23 = v17;
      do
      {
        v24 = [(CAMFullscreenViewfinder *)self semanticStylePicker];
        [v24 presentatationStyleRectAtIndex:v23];

        v25 = [(CAMFullscreenViewfinder *)self semanticStylePicker];
        [v25 bounds];
        CEKNormalizeRect();
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;

        v34 = [MEMORY[0x1E696B098] valueWithCGRect:{v27, v29, v31, v33}];
        [v21 addObject:v34];

        ++v23;
        --v22;
      }

      while (v22);
    }

    v35 = v20 + 1;
    v36 = v52;
    v37 = [v52 subarrayWithRange:{v17, v35}];
    if ([v9 isSemanticStyleRenderingEnabled])
    {
      v51 = v9;
      v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v50 = v37;
      v39 = v37;
      v40 = [v39 countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v56;
        do
        {
          v43 = 0;
          do
          {
            if (*v56 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v55 + 1) + 8 * v43);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = [v44 avSemanticStyle];
              [v38 addObject:v45];
            }

            else
            {
              v45 = os_log_create("com.apple.camera", "Camera");
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                [(CAMFullscreenViewfinder *)&buf requestPreviewUpdateForSemanticStyleAnimated:v54, v45];
              }
            }

            ++v43;
          }

          while (v41 != v43);
          v41 = [v39 countByEnumeratingWithState:&v55 objects:v59 count:16];
        }

        while (v41);
      }

      v46 = [v38 count];
      v9 = v51;
      if (v46 == [v21 count])
      {
        [v51 setSemanticStyles:v38 semanticStylesRegions:v21];
      }

      v36 = v52;
      v37 = v50;
    }
  }

  else
  {
    v48 = [v11 fullscreenViewfinderSelectedSemanticStyle:self];

    if ([v9 isSemanticStyleRenderingEnabled])
    {
      if (!v48 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v49 = [v48 avSemanticStyle];
        [v9 setSemanticStyle:v49 animated:v3];
      }
    }
  }

  return 1;
}

- (void)_updateReticleForViewportFrame:(CGRect)a3
{
  height = a3.size.height;
  y = a3.origin.y;
  [(CAMFullscreenViewfinder *)self bounds:a3.origin.x];
  v7 = v6 - (y + height);
  v8 = [(CAMFullscreenViewfinder *)self _reticleView];
  [v8 setViewportTopInset:0 bottomInset:y animated:v7];
  [v8 layoutIfNeeded];
}

- (void)_updatePreviewAlignmentGuideForViewportFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CAMFullscreenViewfinder *)self previewAlignmentGuide];
  [v8 setFrame:{x, y, width, height}];

  v9 = [(CAMFullscreenViewfinder *)self previewAlignmentGuide];
  [v9 layoutIfNeeded];
}

- (void)_updateSemanticStylePicker:(id)a3 forViewportFrame:(CGRect)a4
{
  if (a3)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v13 = a3;
    [v13 setFrame:{x, y, width, height}];
    [(CAMFullscreenViewfinder *)self frameForReticleViewport];
    v10 = v9;
    v12 = v11;
    [(CAMFullscreenViewfinder *)self externalChromeShutterButtonFrame];
    [v13 setContentBottomMargin:v10 + v12 - CGRectGetMinY(v15) + 15.0];
    [v13 layoutIfNeeded];
  }
}

- (CGRect)_frameForSpotlightControlPanel
{
  v3 = [(CAMFullscreenViewfinder *)self _viewportAspectRatioForControlsOverPreview];
  v4 = [(CAMFullscreenViewfinder *)self isControlDrawerExpanded];
  v5 = [(CAMFullscreenViewfinder *)self _layout];
  [v5 viewportFrameForAspectRatio:v3 accessoryAreaExpanded:v4 smartStyleControlsExpanded:{-[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(CAMFullscreenViewfinder *)self _layout];
  [v14 viewportFrameForAspectRatio:1 accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  MaxY = CGRectGetMaxY(v29);
  v30.origin.x = v16;
  v30.origin.y = v18;
  v30.size.width = v20;
  v30.size.height = v22;
  v24 = CGRectGetMaxY(v30);
  [(CAMFullscreenViewfinder *)self bounds];
  v26 = v24 - MaxY;
  v27 = 0.0;
  v28 = MaxY;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)frameForReticleViewport
{
  v3 = [(CAMFullscreenViewfinder *)self viewportAspectRatio];
  v4 = [(CAMFullscreenViewfinder *)self _layout];
  [v4 viewportFrameForAspectRatio:v3 accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if ([(CAMFullscreenViewfinder *)self _wantsPreviewOnlyLayout])
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v8;
  }

  v14 = v6;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

- (CGRect)_frameForContentClippingContainer
{
  v2 = [(CAMFullscreenViewfinder *)self _layout];
  [v2 frameForContentClippingContainer];
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

- (void)_updateDisabledModeOverlayViewportFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CAMFullscreenViewfinder *)self disabledModeOverlayView];
  [v8 setViewportFrame:{x, y, width, height}];

  [(CAMFullscreenViewfinder *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(CAMFullscreenViewfinder *)self disabledModeOverlayView];
  [v17 setFrame:{v10, v12, v14, v16}];

  v18 = [(CAMFullscreenViewfinder *)self disabledModeOverlayView];
  [v18 layoutIfNeeded];
}

- (void)_layoutZoomControls
{
  if ([(CAMFullscreenViewfinder *)self _isValidExternalChromeShutterButtonFrame])
  {
    [(CAMFullscreenViewfinder *)self _layoutZoomControlForExternalChrome];

    [(CAMFullscreenViewfinder *)self _layoutZoomSliderForExternalChrome];
  }
}

- (void)_layoutZoomControlForExternalChrome
{
  [(CAMFullscreenViewfinder *)self frameForReticleViewport];
  [(CAMFullscreenViewfinder *)self _referenceYForControlsAboveShutterButton];
  v4 = v3;
  v5 = 0.0;
  if ([(CAMFullscreenViewfinder *)self offsetZoomButtonForFlipAspectRatioButton])
  {
    v6 = [(CAMFullscreenViewfinder *)self traitCollection];
    v7 = [v6 preferredContentSizeCategory];
    [CAMZoomButton circleDiameterForContentSize:v7];
    v5 = -(v8 * 0.5 + 3.0);
  }

  v9 = [(CAMFullscreenViewfinder *)self zoomControl];
  [(CAMFullscreenViewfinder *)self bounds];
  [CAMZoomControlUtilities layoutForExternalChromeZoomControl:"layoutForExternalChromeZoomControl:bounds:viewportFrame:referenceYForControlsAboveShutterButton:xOffset:" bounds:v9 viewportFrame:v4 referenceYForControlsAboveShutterButton:*&v5 xOffset:?];
}

- (void)_layoutZoomSliderForExternalChrome
{
  v3 = [(CAMFullscreenViewfinder *)self zoomSlider];

  if (v3)
  {
    v24 = [(CAMFullscreenViewfinder *)self zoomSlider];
    [(CAMFullscreenViewfinder *)self externalChromeShutterButtonFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(CAMFullscreenViewfinder *)self frameForReticleViewport];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(CAMFullscreenViewfinder *)self bounds];
    [CAMZoomSliderUtilities layoutZoomSlider:v24 forLayoutStyle:0 bottomBarAlignmentRect:0 bottomBarTransparent:*MEMORY[0x1E695F058] shutterButtonAlignmentRect:*(MEMORY[0x1E695F058] + 8) previewViewAlignmentRect:*(MEMORY[0x1E695F058] + 16) viewfinderViewAlignmentRect:*(MEMORY[0x1E695F058] + 24), v5, v7, v9, v11, v13, v15, v17, v19, v20, v21, v22, v23];
  }
}

- (double)_referenceYForControlsAboveShutterButton
{
  [(CAMFullscreenViewfinder *)self externalChromeShutterButtonFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CAMFullscreenViewfinder *)self frameForReticleViewport];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(CAMFullscreenViewfinder *)self _viewportAspectRatioForControlsOverPreview];
  +[CAMChromeViewSpec shutterTopPadding];
  [CAMZoomControlUtilities referenceYForControlsAboveShutterButtonFrame:v19 viewportFrame:v4 aspectRatio:v6 shutterTopPadding:v8, v10, v12, v14, v16, v18, v20];
  return result;
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForBadgeTray
{
  [(CAMFullscreenViewfinder *)self frameForReticleViewport];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CAMFullscreenViewfinder *)self orientation];
  v14 = MEMORY[0x1E695F058];
  v15 = [(CAMFullscreenViewfinder *)self isElapsedTimeViewVisible];
  v16 = [(CAMFullscreenViewfinder *)self _visibleInstructionLabelForInstructionLabelValue:[(CAMFullscreenViewfinder *)self visibleInstructionLabel]];
  v17 = [(CAMFullscreenViewfinder *)self _visibleInstructionLabelForInstructionLabelValue:[(CAMFullscreenViewfinder *)self visibleSecondaryInstructionLabel]];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v18 = [(CAMFullscreenViewfinder *)self _layout];
  v19 = [(CAMFullscreenViewfinder *)self elapsedTimeView];
  v20 = [(CAMFullscreenViewfinder *)self orientation];
  v21 = [(CAMFullscreenViewfinder *)self isSystemOverlayVisible];
  if (v18)
  {
    [v18 geometryForElapsedTimeView:v19 viewportFrame:v20 orientation:v21 systemOverlayVisible:{v6, v8, v10, v12}];
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
  }

  v22 = *v14;
  v23 = v14[1];
  v24 = v14[2];
  v25 = v14[3];

  v38 = v23;
  v39 = v22;
  v36 = v25;
  v37 = v24;
  if (v15)
  {
    v61 = v67;
    v62 = v68;
    v63 = v69;
    v64 = v70;
    v59 = v65;
    v60 = v66;
    if (!(v16 | v17))
    {
      if (v13 - 3 > 1)
      {
        goto LABEL_13;
      }

      v55 = v67;
      v56 = v68;
      v57 = v69;
      v58 = v70;
      v53 = v65;
      v54 = v66;
      v26 = &v53;
      goto LABEL_12;
    }
  }

  else
  {
    v61 = xmmword_1A3A6A490;
    v62 = unk_1A3A6A4A0;
    v63 = xmmword_1A3A6A4B0;
    v64 = unk_1A3A6A4C0;
    v59 = CAMViewGeometryZero;
    v60 = unk_1A3A6A480;
    if (!(v16 | v17))
    {
      goto LABEL_13;
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v49 = xmmword_1A3A6A490;
  v50 = unk_1A3A6A4A0;
  v51 = xmmword_1A3A6A4B0;
  v52 = unk_1A3A6A4C0;
  v47 = CAMViewGeometryZero;
  v48 = unk_1A3A6A480;
  v43 = v61;
  v44 = v62;
  v45 = v63;
  v46 = v64;
  v41 = v59;
  v42 = v60;
  [(CAMFullscreenViewfinder *)self _geometryForInstructionLabel:v16 belowInstructionLabelGeometry:&v47 elapsedTimeViewGeometry:&v41];
  if (v17)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v43 = v55;
    v44 = v56;
    v45 = v57;
    v46 = v58;
    v41 = v53;
    v42 = v54;
    v40[2] = v61;
    v40[3] = v62;
    v40[4] = v63;
    v40[5] = v64;
    v40[0] = v59;
    v40[1] = v60;
    [(CAMFullscreenViewfinder *)self _geometryForInstructionLabel:v17 belowInstructionLabelGeometry:&v41 elapsedTimeViewGeometry:v40];
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v41 = v47;
    v42 = v48;
    v26 = &v41;
  }

  else
  {
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v52 = v58;
    v47 = v53;
    v48 = v54;
    v26 = &v47;
  }

LABEL_12:
  CAMFrameForGeometry(v26);
  v22 = v27;
  v23 = v28;
  v24 = v29;
  v25 = v30;
LABEL_13:
  if (v13 >= 3)
  {
    if (v13 == 3)
    {
      rect = v10;
      v76.origin.x = v22;
      v76.origin.y = v23;
      v76.size.width = v24;
      v76.size.height = v25;
      v80.origin.y = v38;
      v80.origin.x = v39;
      v80.size.height = v36;
      v80.size.width = v37;
      v32 = 0.0;
      if (!CGRectEqualToRect(v76, v80))
      {
        v77.origin.x = v6;
        v77.origin.y = v8;
        v77.size.width = rect;
        v77.size.height = v12;
        MaxX = CGRectGetMaxX(v77);
        v78.origin.x = v22;
        v78.origin.y = v23;
        v78.size.width = v24;
        v78.size.height = v25;
        v32 = MaxX - CGRectGetMinX(v78);
      }

      v79.origin.x = v6;
      v79.origin.y = v8;
      v79.size.width = rect;
      v79.size.height = v12;
      v6 = CGRectGetMaxX(v79) + -40.0 - v32;
      if (!(v15 | ![(CAMFullscreenViewfinder *)self isSystemOverlayVisible]) && [(CAMFullscreenViewfinder *)self visibleInstructionLabel])
      {
        v6 = v6 + -28.0;
      }
    }

    else
    {
      if (v13 != 4)
      {
        goto LABEL_27;
      }

      v74.origin.x = v22;
      v74.origin.y = v23;
      v74.size.width = v24;
      v74.size.height = v25;
      v6 = CGRectGetMaxX(v74);
    }

    v10 = 40.0;
    goto LABEL_27;
  }

  v71.origin.x = v6;
  v71.origin.y = v8;
  v71.size.width = v10;
  v71.size.height = v12;
  CGRectGetMinY(v71);
  v72.origin.x = v22;
  v72.origin.y = v23;
  v72.size.width = v24;
  v72.size.height = v25;
  if (CGRectIsEmpty(v72))
  {
    [(CAMFullscreenViewfinder *)self _frameForPreviewOverlaysInViewport:v6, v8, v10, v12];
    MinY = CGRectGetMinY(v73);
  }

  else
  {
    v75.origin.x = v22;
    v75.origin.y = v23;
    v75.size.width = v24;
    v75.size.height = v25;
    MinY = CGRectGetMaxY(v75);
  }

  v8 = MinY;
  v12 = 40.0;
LABEL_27:
  CAMViewGeometryForOrientedFrame(v13, retstr, v6, v8, v10, v12);

  return result;
}

- (CGRect)_frameForExternalChromeTopBar
{
  [(CAMFullscreenViewfinder *)self bounds];
  v4 = v3;
  [(CAMFullscreenViewfinder *)self externalChromeTopInset];
  v6 = v5;
  v7 = 0.0;
  v8 = 0.0;
  v9 = v4;
  result.size.height = v6;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)_frameForControlDrawer
{
  v3 = [(CAMFullscreenViewfinder *)self _layout];
  [v3 alignmentRectForShutterControl];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CAMFullscreenViewfinder *)self currentFourThreeViewportFrame];
  MaxY = CGRectGetMaxY(v21);
  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  MinY = CGRectGetMinY(v22);
  [(CAMFullscreenViewfinder *)self bounds];
  v15 = v14;
  v16 = MinY - MaxY;
  if ([(CAMFullscreenViewfinder *)self isControlDrawerExpanded])
  {
    v17 = MaxY;
  }

  else
  {
    v17 = v7;
  }

  v18 = 0.0;
  v19 = v15;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v17;
  result.origin.x = v18;
  return result;
}

- (CGRect)_frameForFlipButton
{
  v3 = [(CAMFullscreenViewfinder *)self _layout];
  v4 = [(CAMFullscreenViewfinder *)self flipButton];
  [v3 frameForBottomRightControl:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForMRCButton
{
  v35 = [(CAMFullscreenViewfinder *)self machineReadableCodeButton];
  v5 = [(CAMFullscreenViewfinder *)self orientation];
  v6 = [(CAMFullscreenViewfinder *)self zoomControl];
  v7 = [(CAMFullscreenViewfinder *)self zoomSlider];
  [(CAMFullscreenViewfinder *)self _centerYForZoomControl:v6 zoomSlider:v7];
  MidX = v8;

  [(CAMFullscreenViewfinder *)self _imageAnalysisButtonAlignmentRectForCenterY:MidX];
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  v38 = CGRectInset(v37, -5.0, -5.0);
  if (v5 - 3 > 1)
  {
    v29 = v38.origin.x;
    [(CAMFullscreenViewfinder *)self bounds];
    v28 = v30 - v29;
    v27 = 15.0;
  }

  else
  {
    v33 = v38.origin.y;
    v14 = [(CAMFullscreenViewfinder *)self _viewportAspectRatioForControlsOverPreview];
    v15 = [(CAMFullscreenViewfinder *)self _layout];
    [v15 viewportFrameForAspectRatio:v14 accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
    v17 = v16;
    v19 = v18;
    v34 = MidX;
    v20 = width;
    v21 = x;
    v23 = v22;
    v24 = y;
    v26 = v25;

    v39.origin.x = v17;
    v39.origin.y = v19;
    v39.size.width = v23;
    x = v21;
    width = v20;
    MidX = v34;
    v39.size.height = v26;
    y = v24;
    v27 = CGRectGetMaxY(v39) - v33;
    v28 = 15.0;
  }

  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;
  retstr->var1 = 0u;
  *&retstr->var2.a = 0u;
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  [(CAMFullscreenViewfinder *)self _geometryForBottomCenteredView:v35 margins:v28, v27];
  if (v5 >= 3)
  {
    if (v5 != 4)
    {
      goto LABEL_9;
    }

    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    MidX = CGRectGetMidX(v40);
    v31 = 32;
  }

  else
  {
    v31 = 40;
  }

  *(&retstr->var0.origin.x + v31) = MidX;
LABEL_9:

  return result;
}

- (BOOL)_canLayoutLightingControls
{
  v3 = [(CAMFullscreenViewfinder *)self lightingControl];

  if (!v3)
  {
    return 0;
  }

  return [(CAMFullscreenViewfinder *)self _isValidExternalChromeShutterButtonFrame];
}

- (CGRect)_frameForLightingControl
{
  v3 = [(CAMFullscreenViewfinder *)self lightingControl];
  v4 = [(CAMFullscreenViewfinder *)self viewportAspectRatio];
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = [(CAMFullscreenViewfinder *)self _layout];
  [v6 viewportFrameForAspectRatio:v5 accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
  v8 = v7;
  v10 = v9;

  [v3 contentHeightForWidth:v10];
  v12 = v11;
  [(CAMFullscreenViewfinder *)self _referenceYForControlsAboveShutterButton];
  [v3 frameForAlignmentRect:{v8, v13 - v12, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (double)_additionalBottomPaddingForLightingControl
{
  v3 = [(CAMFullscreenViewfinder *)self _layout];
  [v3 viewportFrameForAspectRatio:-[CAMFullscreenViewfinder viewportAspectRatio](self accessoryAreaExpanded:"viewportAspectRatio") smartStyleControlsExpanded:{-[CAMFullscreenViewfinder isControlDrawerExpanded](self, "isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CAMFullscreenViewfinder *)self externalChromeShutterButtonFrame];
  v22.origin.x = v12;
  v22.origin.y = v13;
  v22.size.width = v14;
  v22.size.height = v15;
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  v16 = CGRectIntersectsRect(v19, v22);
  result = 0.0;
  if (v16)
  {
    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    MaxY = CGRectGetMaxY(v20);
    [(CAMFullscreenViewfinder *)self _frameForLightingControl];
    return MaxY - CGRectGetMaxY(v21);
  }

  return result;
}

- (void)_updateLightingControlClipping
{
  if ([(CAMFullscreenViewfinder *)self material]== 4)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(CAMFullscreenViewfinder *)self viewportAspectRatio];
    if (v4 <= 6)
    {
      v3 = 0x6Du >> v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = [(CAMFullscreenViewfinder *)self lightingControl];
  [v5 setClipsToBounds:v3 & 1];
}

- (CGRect)_imageAnalysisButtonFrameForZoomControl:(id)a3 zoomSlider:(id)a4
{
  [(CAMFullscreenViewfinder *)self _centerYForZoomControl:a3 zoomSlider:a4];

  [(CAMFullscreenViewfinder *)self _imageAnalysisButtonFrameForCenterY:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (double)_centerYForZoomControl:(id)a3 zoomSlider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [(CAMFullscreenViewfinder *)self traitCollection];
    v10 = [v9 preferredContentSizeCategory];
    [CAMZoomButton circleDiameterForContentSize:v10];
    v12 = v11;

    [v6 frame];
    v14 = v13;
    [v6 zoomButtonMaxYWhenContracted];
    MidY = v15 + v14 + v12 * -0.5;
  }

  else if (v7)
  {
    [v7 frame];
    MidY = CGRectGetMidY(v18);
  }

  else
  {
    MidY = 0.0;
  }

  return MidY;
}

- (CGRect)_imageAnalysisButtonAlignmentRectForCenterY:(double)a3
{
  v4 = [(CAMFullscreenViewfinder *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  [CAMZoomButton circleDiameterForContentSize:v5];
  v7 = v6;

  v8 = [(CAMFullscreenViewfinder *)self _layout];
  [v8 alignmentRectForBottomRightControlOfSize:{v7, v7}];

  UIRoundToViewScale();
  UIRectCenteredXInRectScale();
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)_imageAnalysisButtonFrameForCenterY:(double)a3
{
  [(CAMFullscreenViewfinder *)self _imageAnalysisButtonAlignmentRectForCenterY:a3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CAMFullscreenViewfinder *)self bounds];
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v13 = -(MaxX - CGRectGetMaxX(v20));
  v14 = v5;
  v15 = v7;
  v16 = v9;
  v17 = v11;

  return CGRectInset(*&v14, v13, -15.0);
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForInstructionLabel:(SEL)a3 belowInstructionLabelGeometry:(id)a4 elapsedTimeViewGeometry:(id *)a5
{
  v10 = a4;
  [(CAMFullscreenViewfinder *)self frameForReticleViewport];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(CAMFullscreenViewfinder *)self orientation];
  v20 = v19;
  *retstr = *CAMViewGeometryZero;
  v21 = v19 - 3;
  if ((v19 - 3) >= 2)
  {
    v22 = v18;
  }

  else
  {
    v22 = v16;
  }

  if ((v19 - 3) >= 2)
  {
    v23 = v16;
  }

  else
  {
    v23 = v18;
  }

  [v10 sizeThatFits:{v23 + -25.0, v22 + -25.0}];
  v25 = v24;
  v27 = v26;

  retstr->var0.size.width = v25;
  retstr->var0.size.height = v27;
  v80 = v12;
  v81 = v14;
  UIRectGetCenter();
  v82 = v28;
  v30 = v29;
  v31 = CAMPixelWidthForView(self) + 10.0;
  v79 = v30;
  if (v21 <= 1)
  {
    if ([(CAMFullscreenViewfinder *)self _showSemanticStylePicker])
    {
      v32 = [(CAMFullscreenViewfinder *)self semanticStylePicker];
    }

    else
    {
      if (![(CAMFullscreenViewfinder *)self _showSmartStylePicker])
      {
        goto LABEL_13;
      }

      v32 = [(CAMFullscreenViewfinder *)self smartStylePicker];
    }

    v33 = v32;
    [v32 spacerWidth];
    v31 = v31 + v34 + 10.0;
  }

LABEL_13:
  v35 = *&a6->var2.a;
  var1 = a6->var1;
  v92 = v35;
  v36 = *&a6->var2.tx;
  v93 = *&a6->var2.c;
  v94 = v36;
  size = a6->var0.size;
  origin = a6->var0.origin;
  v90 = size;
  CAMFrameForGeometry(&origin);
  v75 = v38;
  v76 = v39;
  v77 = v40;
  v78 = v41;
  v42 = *&a6->var2.a;
  var1 = a6->var1;
  v92 = v42;
  v43 = *&a6->var2.tx;
  v93 = *&a6->var2.c;
  v94 = v43;
  v44 = a6->var0.size;
  origin = a6->var0.origin;
  v90 = v44;
  v85 = *&CAMViewGeometryZero[32];
  v86 = *&CAMViewGeometryZero[48];
  v87 = *&CAMViewGeometryZero[64];
  v88 = *&CAMViewGeometryZero[80];
  v83 = *CAMViewGeometryZero;
  v84 = *&CAMViewGeometryZero[16];
  IsEqualToViewGeometry = CAMViewGeometryIsEqualToViewGeometry(&origin, &v83);
  v46 = *&a5->var2.a;
  var1 = a5->var1;
  v92 = v46;
  v47 = *&a5->var2.tx;
  v93 = *&a5->var2.c;
  v94 = v47;
  v48 = a5->var0.size;
  origin = a5->var0.origin;
  v90 = v48;
  v85 = *&CAMViewGeometryZero[32];
  v86 = *&CAMViewGeometryZero[48];
  v87 = *&CAMViewGeometryZero[64];
  v88 = *&CAMViewGeometryZero[80];
  v83 = *CAMViewGeometryZero;
  v84 = *&CAMViewGeometryZero[16];
  v49 = CAMViewGeometryIsEqualToViewGeometry(&origin, &v83);
  v50 = *&a5->var2.a;
  var1 = a5->var1;
  v92 = v50;
  v51 = *&a5->var2.tx;
  v93 = *&a5->var2.c;
  v94 = v51;
  v52 = a5->var0.size;
  origin = a5->var0.origin;
  v90 = v52;
  CAMFrameForGeometry(&origin);
  v57 = v56;
  v58 = v53;
  v59 = v54;
  v60 = v55;
  v61 = 0.25;
  if (v49)
  {
    v61 = 0.5;
  }

  v62 = v31 + v27 * v61;
  if (v20 < 3)
  {
    [(CAMFullscreenViewfinder *)self _frameForPreviewOverlaysInViewport:v80, v81, v16, v18];
    if (v49)
    {
      MinY = CGRectGetMinY(*&v63);
    }

    else
    {
      v96.origin.x = v57;
      v96.origin.y = v58;
      v96.size.width = v59;
      v96.size.height = v60;
      MinY = CGRectGetMaxY(v96);
    }

    v69 = v82;
    v70 = v62 + MinY;
    goto LABEL_40;
  }

  if (v20 != 3)
  {
    if (v20 != 4)
    {
      v70 = v79;
      v69 = v82;
      goto LABEL_40;
    }

    if (v49)
    {
      if (IsEqualToViewGeometry)
      {
        v95.origin.x = v80;
        v95.origin.y = v81;
        v95.size.width = v16;
        v95.size.height = v18;
        MinX = CGRectGetMinX(v95);
LABEL_39:
        v70 = v79;
        v69 = v62 + MinX;
        goto LABEL_40;
      }

      v73 = v75;
      v53 = v76;
      v54 = v77;
      v55 = v78;
    }

    else
    {
      v73 = v57;
    }

    MinX = CGRectGetMaxX(*(&v53 - 1));
    goto LABEL_39;
  }

  if (!v49)
  {
    v72 = v57;
LABEL_32:
    MaxX = CGRectGetMinX(*(&v53 - 1));
    goto LABEL_33;
  }

  if (!IsEqualToViewGeometry)
  {
    v72 = v75;
    v53 = v76;
    v54 = v77;
    v55 = v78;
    goto LABEL_32;
  }

  v97.origin.x = v80;
  v97.origin.y = v81;
  v97.size.width = v16;
  v97.size.height = v18;
  MaxX = CGRectGetMaxX(v97);
LABEL_33:
  v70 = v79;
  v69 = MaxX - v62;
  if ([(CAMFullscreenViewfinder *)self isSystemOverlayVisible:*&v75]&& IsEqualToViewGeometry)
  {
    v69 = v69 + -28.0;
  }

LABEL_40:
  retstr->var1.x = v69;
  retstr->var1.y = v70;
  return CAMOrientationTransform(v20, &retstr->var2);
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForLandscapeLightingBadge
{
  v5 = [(CAMFullscreenViewfinder *)self lightingNameBadge];
  v6 = v5;
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  retstr->var1 = 0u;
  *&retstr->var2.a = 0u;
  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;
  if (v5)
  {
    CAMViewGetGeometry(v5, retstr);
    [v6 bounds];
    v7 = CGRectEqualToRect(v15, *MEMORY[0x1E695F058]);
  }

  else
  {
    v7 = 0;
    retstr->var1 = *&CAMViewGeometryZero[32];
    *&retstr->var2.a = *&CAMViewGeometryZero[48];
    *&retstr->var2.c = *&CAMViewGeometryZero[64];
    *&retstr->var2.tx = *&CAMViewGeometryZero[80];
    retstr->var0.origin = *CAMViewGeometryZero;
    retstr->var0.size = *&CAMViewGeometryZero[16];
  }

  if ([(CAMFullscreenViewfinder *)self _showLandscapeLightingBadge]|| v7)
  {
    [(CAMFullscreenViewfinder *)self _geometryForBottomCenteredView:v6];
    retstr->var1 = v11;
    *&retstr->var2.a = v12;
    *&retstr->var2.c = v13;
    *&retstr->var2.tx = v14;
    retstr->var0.origin = v9;
    retstr->var0.size = v10;
  }

  return result;
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForBottomCenteredView:(SEL)a3 margins:(id)a4
{
  height = a5.height;
  width = a5.width;
  v19 = a4;
  v8 = [(CAMFullscreenViewfinder *)self _viewportAspectRatioForControlsOverPreview];
  v9 = [(CAMFullscreenViewfinder *)self _layout];
  [v9 viewportFrameForAspectRatio:v8 accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(CAMFullscreenViewfinder *)self _geometryForBottomCenteredView:v19 margins:width aroundFrame:height, v11, v13, v15, v17];

  return result;
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForBottomCenteredView:(SEL)a3 margins:(id)a4 aroundFrame:(CGSize)a5
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5.height;
  v11 = a5.width;
  v14 = a4;
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v44 = CGRectInset(v43, v11, v10);
  v15 = v44.origin.x;
  v16 = v44.origin.y;
  v32 = v44.size.width;
  v33 = v44.size.height;
  v17 = [(CAMFullscreenViewfinder *)self orientation];
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  CAMOrientationTransform(v17, &v40);
  [v14 sizeThatFits:{vmlaq_n_f64(vmulq_n_f64(v41, v33), v40, v32)}];
  v19 = v18;
  v21 = v20;

  UIRectGetCenter();
  v38 = v22;
  v39 = v23;
  if (v17 >= 3)
  {
    v24 = v32;
    v25 = v33;
    if (v17 == 3)
    {
      v29 = v15;
      v30 = v16;
      v28 = v21 * 0.5 + CGRectGetMinX(*(&v24 - 2));
    }

    else
    {
      if (v17 != 4)
      {
        goto LABEL_8;
      }

      v26 = v15;
      v27 = v16;
      v28 = CGRectGetMaxX(*(&v24 - 2)) + v21 * -0.5;
    }

    v38 = v28;
    goto LABEL_8;
  }

  v45.origin.x = v15;
  v45.origin.y = v16;
  v45.size.width = v32;
  v45.size.height = v33;
  v39 = CGRectGetMaxY(v45) + v21 * -0.5;
LABEL_8:
  v35 = *MEMORY[0x1E695EFF8];
  v36 = v19;
  v37 = v21;
  [CAMView ceilBounds:&v35 andRoundCenter:&v38 toViewScale:self];
  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;
  retstr->var1 = 0u;
  *&retstr->var2.a = 0u;
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  v34[0] = v40;
  v34[1] = v41;
  v34[2] = v42;
  CAMViewGeometryMake(v34, retstr, v38, v39, *&v35, *(&v35 + 1), v36, v37);
  return result;
}

- (int64_t)_viewportAspectRatioForControlsOverPreview
{
  result = [(CAMFullscreenViewfinder *)self viewportAspectRatio];
  if (((1 << result) & 0x16) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (result <= 4)
  {
    return v3;
  }

  return result;
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForTextInteractionInsertWithViewport:(SEL)a3
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;
  retstr->var1 = 0u;
  *&retstr->var2.a = 0u;
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  v9 = [(CAMFullscreenViewfinder *)self orientation];

  CAMViewGeometryForOrientedFrame(v9, retstr, x, y, width, height);
  return result;
}

- (void)_applyTextInsertContentInsets
{
  v40 = [(CAMFullscreenViewfinder *)self textInteractionInsert];
  [v40 contentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMFullscreenViewfinder *)self orientation];
  v12 = [(CAMFullscreenViewfinder *)self imageAnalysisInstructionLabel];

  if (v12)
  {
    v13 = [(CAMFullscreenViewfinder *)self imageAnalysisInstructionLabel];
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(CAMFullscreenViewfinder *)self imageAnalysisInstructionLabel];
    v23 = [v22 superview];
    [v40 convertRect:v23 fromView:{v15, v17, v19, v21}];
    v25 = v24;
    v27 = v26;

    if (v11 == 2)
    {
      [v40 bounds];
      v8 = v28 + v29 - v25 + 8.0;
      [(CAMFullscreenViewfinder *)self _frameForActionInfoView];
      v32 = v31;
LABEL_5:
      v34 = v32 + v30;
      [v40 bounds];
      v4 = v34 - v35 + 8.0;
      goto LABEL_8;
    }

    [v40 bounds];
    v4 = v25 + v27 - v36 + 8.0;
    [(CAMFullscreenViewfinder *)self _frameForActionInfoView];
    v32 = v37;
  }

  else
  {
    [(CAMFullscreenViewfinder *)self _frameForActionInfoView];
    v32 = v33;
    if (v11 == 2)
    {
      goto LABEL_5;
    }
  }

  [v40 bounds];
  v8 = v38 + v39 - v32 + 8.0;
LABEL_8:
  [v40 setContentInsets:{v4, v6, v8, v10}];
}

- (CGRect)_frameForActionInfoView
{
  v3 = [(CAMFullscreenViewfinder *)self imageAnalysisButton];
  v4 = [(CAMFullscreenViewfinder *)self textInteractionInsert];
  [v3 bounds];
  [v4 convertRect:v3 fromView:?];
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  v9 = CGRectGetWidth(v37);
  [v3 backgroundDiameter];
  v36 = (v9 - v10) * 0.5;
  [v4 bounds];
  v11 = CGRectGetWidth(v38);
  [v3 backgroundDiameter];
  v13 = v12;
  v14 = [v4 imageInteraction];
  [v14 actionInfoEdgeInsets];
  v16 = v15;

  v17 = [(CAMFullscreenViewfinder *)self orientation];
  if (v17 > 2)
  {
    if (v17 == 3)
    {
      [v4 bounds];
      CGRectGetMaxY(v48);
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      CGRectGetHeight(v49);
      v50.origin.y = 0.0;
      v50.origin.x = v36 - v16;
      v50.size.width = v11;
      v50.size.height = v13;
      CGRectGetHeight(v50);
      goto LABEL_10;
    }

    if (v17 != 4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v17 >= 2)
  {
    if (v17 != 2)
    {
      goto LABEL_10;
    }

LABEL_8:
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    MaxX = CGRectGetMaxX(v43);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    MidY = CGRectGetMidY(v44);
    v45.origin.y = 0.0;
    v45.origin.x = MaxX;
    v45.size.width = v11;
    v45.size.height = v13;
    v23 = MidY + CGRectGetHeight(v45) * -0.5;
    v46.origin.x = MaxX;
    v46.origin.y = v23;
    v46.size.width = v11;
    v46.size.height = v13;
    CGRectGetWidth(v46);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    CGRectGetMaxX(v47);
    goto LABEL_10;
  }

  v18 = v36 - v16;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v19 = CGRectGetMidY(v39);
  v40.origin.y = 0.0;
  v40.origin.x = v18;
  v40.size.width = v11;
  v40.size.height = v13;
  v20 = v19 + CGRectGetHeight(v40) * -0.5;
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  CGRectGetMinX(v41);
  v42.origin.x = v18;
  v42.origin.y = v20;
  v42.size.width = v11;
  v42.size.height = v13;
  CGRectGetMinX(v42);
LABEL_10:
  UIRectRoundToViewScale();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v25;
  v33 = v27;
  v34 = v29;
  v35 = v31;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)_layoutPanoramaView
{
  v3 = [(CAMFullscreenViewfinder *)self panoramaView];
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v4 = [(CAMFullscreenViewfinder *)self previewView:CAMTransformCorrectingForOrientation([(CAMFullscreenViewfinder *)self previewViewOrientation]];
  v5 = [(CAMFullscreenViewfinder *)self window];
  v6 = [v5 screen];
  [v6 _referenceBounds];

  [v3 panoramaCaptureSize];
  [CAMPanoramaUtilities panoramaViewSizeForCaptureSize:3 referenceBounds:*MEMORY[0x1E695F058] chromeSidebarFrame:*(MEMORY[0x1E695F058] + 8) layoutStyle:*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  v10 = v9;
  [v4 center];
  v12 = v11;
  v14 = v13;
  [v3 setBounds:{0.0, 0.0, v8, v10}];
  [v3 setCenter:{v12, v14}];
  v51[0] = v52;
  v51[1] = v53;
  v51[2] = v54;
  [v3 setTransform:v51];
  v15 = [(CAMFullscreenViewfinder *)self zoomControl];
  if (v15)
  {
    v16 = v15;
    v17 = [(CAMFullscreenViewfinder *)self isZoomControlVisible];

    if (v17)
    {
      v18 = [(CAMFullscreenViewfinder *)self panoramaView];
      [v18 layoutIfNeeded];

      v19 = [(CAMFullscreenViewfinder *)self zoomControl];
      [v19 buttonPlatterDefaultFrame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = [(CAMFullscreenViewfinder *)self zoomControl];
      [(CAMFullscreenViewfinder *)self convertRect:v28 fromView:v21, v23, v25, v27];
      v30 = v29;

      v31 = [(CAMFullscreenViewfinder *)self panoramaView];
      v32 = [v31 instructionView];
      [v32 frame];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41 = [(CAMFullscreenViewfinder *)self panoramaView];
      [(CAMFullscreenViewfinder *)self convertRect:v41 fromView:v34, v36, v38, v40];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;

      v55.origin.x = v43;
      v55.origin.y = v45;
      v55.size.width = v47;
      v55.size.height = v49;
      v50 = CGRectGetMaxY(v55) + 16.0 - v30;
      if (v50 < 0.0)
      {
        v50 = 0.0;
      }

      if (v50 > 0.0)
      {
        [v3 setCenter:{v12, v14 - v50}];
      }
    }
  }
}

- (CGRect)_frameForSpatialRecordingIndicatorWithElapsedTimeViewGeometry:(id *)a3 orientation:(int64_t)a4
{
  width = a3->var0.size.width;
  height = a3->var0.size.height;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  CAMOrientationTransform(a4, v15);
  CAMViewGeometryMake(v15, &v16, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 0.0, 0.0, height, height);
  if (a4 >= 3)
  {
    v8 = height * 0.5 + width * 0.5 + 10.0;
    if (a4 == 3)
    {
      x = a3->var1.x;
      v10 = v8 + a3->var1.y;
    }

    else
    {
      if (a4 != 4)
      {
        goto LABEL_8;
      }

      x = a3->var1.x;
      v10 = a3->var1.y - v8;
    }

    *&v18 = x;
    *(&v18 + 1) = v10;
    goto LABEL_8;
  }

  v18 = *&CAMViewGeometryZero[32];
  v19 = *&CAMViewGeometryZero[48];
  v20 = *&CAMViewGeometryZero[64];
  v21 = *&CAMViewGeometryZero[80];
  v16 = *CAMViewGeometryZero;
  v17 = *&CAMViewGeometryZero[16];
LABEL_8:
  v15[2] = v18;
  v15[3] = v19;
  v15[4] = v20;
  v15[5] = v21;
  v15[0] = v16;
  v15[1] = v17;
  CAMFrameForGeometry(v15);
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_layoutSmartStyleNameBadge
{
  v3 = [(CAMFullscreenViewfinder *)self smartStyleNameBadge];
  if (v3)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    [(CAMFullscreenViewfinder *)self _geometryForSmartStyleNameBadge:v3];
    v4[2] = v7;
    v4[3] = v8;
    v4[4] = v9;
    v4[5] = v10;
    v4[0] = v5;
    v4[1] = v6;
    CAMApplyAnimationSensitiveGeometryToView(v4, v3);
  }
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForSmartStyleNameBadge:(SEL)a3
{
  v15 = a4;
  if (([(CAMFullscreenViewfinder *)self orientation]- 3) > 1)
  {
    *&retstr->var2.c = 0u;
    *&retstr->var2.tx = 0u;
    retstr->var1 = 0u;
    *&retstr->var2.a = 0u;
    retstr->var0.origin = 0u;
    retstr->var0.size = 0u;
    [(CAMFullscreenViewfinder *)self _geometryForBottomCenteredView:v15 margin:30.0];
    [(CAMFullscreenViewfinder *)self externalChromeShutterButtonFrame];
    retstr->var1.y = CGRectGetMinY(v17) + retstr->var0.size.height * -0.5 + -50.0;
  }

  else
  {
    v6 = CAMPixelWidthForView(self) + 10.0 + 10.0;
    v7 = [(CAMFullscreenViewfinder *)self smartStylePicker];
    [v7 spacerWidth];
    v9 = v6 + v8;

    [(CAMFullscreenViewfinder *)self frameForReticleViewport];
    [(CAMFullscreenViewfinder *)self _geometryForBottomCenteredView:v15 margins:v9 aroundFrame:v9, v10, v11, v12, v13];
  }

  return result;
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForFilterNameBadge:(SEL)a3
{
  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;
  retstr->var1 = 0u;
  *&retstr->var2.a = 0u;
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  [(CAMFullscreenViewfinder *)self _geometryForBottomCenteredView:a4];
  result = [(CAMFullscreenViewfinder *)self orientation];
  if (&result[-1].var2.ty + 7 <= 1)
  {
    v9 = [(CAMFullscreenViewfinder *)self zoomControl];
    v7 = [(CAMFullscreenViewfinder *)self zoomSlider];
    [(CAMFullscreenViewfinder *)self _centerYForZoomControl:v9 zoomSlider:v7];
    retstr->var1.y = v8;
  }

  return result;
}

- (void)setSmartFramingFieldOfView:(int64_t)a3 useTransition:(BOOL)a4 animated:(BOOL)a5
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_smartFramingFieldOfView != a3)
  {
    v5 = a5;
    v6 = a4;
    self->_smartFramingFieldOfView = a3;
    v9 = os_log_create("com.apple.camera", "SmartFraming");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (v6)
      {
        v10 = @"YES";
      }

      v11 = v10;
      v13 = 134349314;
      v14 = a3;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Setting smartFramingFieldOfView to: %{public}ld using transition: %{public}@", &v13, 0x16u);
    }

    if (v6)
    {
      v12 = [(CAMFullscreenViewfinder *)self _viewportAnimator];
      [v12 setValue:@"CAMViewfinderAnimatorSmartFramingTransitionPercentCompleteKey" forKey:0.0];

      [(CAMFullscreenViewfinder *)self set_useSmartFramingTransition:1];
      [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v5];
    }
  }
}

- (void)setOverCaptureGradientVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(CAMFullscreenViewfinder *)self _reticleView];
  [v6 setOverCaptureGradientVisible:v5 animated:v4];
}

- (BOOL)overCaptureGradientVisible
{
  v2 = [(CAMFullscreenViewfinder *)self _reticleView];
  v3 = [v2 overCaptureGradientVisible];

  return v3;
}

- (void)setOverCaptureGradientHeight:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(CAMFullscreenViewfinder *)self _reticleView];
  [v6 setOverCaptureGradientHeight:v4 animated:a3];
}

- (double)overCaptureGradientHeight
{
  v2 = [(CAMFullscreenViewfinder *)self _reticleView];
  [v2 overCaptureGradientHeight];
  v4 = v3;

  return v4;
}

- (void)setPortraitControlsAllowed:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_portraitControlsAllowed != a3)
  {
    v4 = a4;
    [(CAMFullscreenViewfinder *)self _loadPortraitControlsIfNeeded];
    if (v4)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_portraitControlsAllowed = a3;
    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v4];

    [(CAMFullscreenViewfinder *)self _updateZoomControlForLayoutConflictsAnimated:v4];
  }
}

- (void)setShallowDepthOfFieldStatus:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_shallowDepthOfFieldStatus != a3)
  {
    v4 = a4;
    if (a4)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_shallowDepthOfFieldStatus = a3;
    v7 = [(CAMFullscreenViewfinder *)self portraitInstructionLabel];
    [v7 setShallowDepthOfFieldStatus:a3];

    [(CAMFullscreenViewfinder *)self _updatePortraitControlsHighlightAnimated:v4];

    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v4];
  }
}

- (void)setLightingNameBadgesHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_lightingNameBadgesHidden != a3)
  {
    self->_lightingNameBadgesHidden = a3;
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:a4];
  }
}

- (void)_loadPortraitControlsIfNeeded
{
  v3 = [(CAMFullscreenViewfinder *)self lightingControl];

  if (!v3)
  {
    v12 = [(CAMFullscreenViewfinder *)self _contentView];
    v4 = [(CAMFullscreenViewfinder *)self _contentViewBelowShutter];
    v5 = objc_alloc_init(MEMORY[0x1E6993868]);
    lightingControl = self->_lightingControl;
    self->_lightingControl = v5;

    [(CEKLightingControl *)self->_lightingControl setNameBadgeFontStyle:[(CAMFullscreenViewfinder *)self _badgeFontStyle]];
    [(CEKLightingControl *)self->_lightingControl setMaxContentWidth:1.79769313e308];
    [(CEKLightingControl *)self->_lightingControl setOrientation:[(CAMFullscreenViewfinder *)self orientation]];
    [(CEKLightingControl *)self->_lightingControl preloadEffectChangeAnimation];
    [(CEKLightingControl *)self->_lightingControl setNameBadgeHidden:([(CAMFullscreenViewfinder *)self orientation]- 3) < 2];
    v7 = self->_lightingControl;
    v8 = [(CAMFullscreenViewfinder *)self zoomControl];
    [CAMView view:v4 insertSubview:v7 belowSubview:v8];

    v9 = objc_alloc_init(MEMORY[0x1E6993878]);
    lightingNameBadge = self->_lightingNameBadge;
    self->_lightingNameBadge = v9;

    [(CEKLightingNameBadge *)self->_lightingNameBadge setUserInteractionEnabled:0];
    [(CEKLightingNameBadge *)self->_lightingNameBadge setFontStyle:[(CAMFullscreenViewfinder *)self _badgeFontStyle]];
    [(CEKLightingNameBadge *)self->_lightingNameBadge setDelegate:self];
    [v12 addSubview:self->_lightingNameBadge];
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:0];
    [(CAMFullscreenViewfinder *)self _updatePortraitControlsHighlightAnimated:0];
    [(CAMFullscreenViewfinder *)self _updateLightingControlClipping];
    v11 = [(CAMFullscreenViewfinder *)self delegate];
    [v11 fullscreenViewfinderDidCreatePortraitControls:self];
  }
}

- (void)_updatePortraitControlsHighlightAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMFullscreenViewfinder *)self shallowDepthOfFieldStatus];
  v6 = v5 < 0xF;
  v7 = 0x6202u >> v5;
  v8 = [(CAMFullscreenViewfinder *)self lightingControl];
  [v8 setHighlighted:v6 & v7 animated:v3];

  v9 = [(CAMFullscreenViewfinder *)self lightingNameBadge];
  [v9 setHighlighted:v6 & v7];
}

- (void)_loadFilterControlsIfNeeded
{
  if (!self->_filterNameBadge)
  {
    v3 = objc_alloc_init(CAMFilterNameBadge);
    filterNameBadge = self->_filterNameBadge;
    self->_filterNameBadge = v3;

    [(CEKBadgeView *)self->_filterNameBadge setDelegate:self];
    [(CEKBadgeTextView *)self->_filterNameBadge setFontStyle:[(CAMFullscreenViewfinder *)self _badgeFontStyle]];
    v5 = [(CAMFullscreenViewfinder *)self _contentView];
    [v5 addSubview:self->_filterNameBadge];
  }
}

- (void)setWantsSmartStylePicker:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_wantsSmartStylePicker != a3)
  {
    self->_wantsSmartStylePicker = a3;
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:a4];
  }
}

- (BOOL)isSmartStylePickerVisible
{
  v3 = [(CAMFullscreenViewfinder *)self smartStyleControlsVisible];
  if (v3)
  {

    LOBYTE(v3) = [(CAMFullscreenViewfinder *)self wantsSmartStylePicker];
  }

  return v3;
}

- (void)_setSmartStyleControlsVisible:(BOOL)a3 animated:(BOOL)a4 notifyDelegate:(BOOL)a5
{
  if (self->_smartStyleControlsVisible != a3)
  {
    v5 = a5;
    v6 = a4;
    v7 = a3;
    if (a3)
    {
      [(CAMFullscreenViewfinder *)self _loadSmartStyleControlsIfNeeded];
    }

    if (v6)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_smartStyleControlsVisible = v7;
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:v6];
    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v6];
    if (v5)
    {
      v9 = [(CAMFullscreenViewfinder *)self delegate];
      [v9 fullscreenViewfinder:self didChangeSmartStyleControlsVisibility:v7 animated:v6];
    }
  }
}

- (void)_loadSmartStyleControlsIfNeeded
{
  if (!self->_smartStylePicker)
  {
    v3 = objc_alloc_init(CAMSmartStyleNameBadge);
    smartStyleNameBadge = self->_smartStyleNameBadge;
    self->_smartStyleNameBadge = v3;

    [(CAMSmartStyleNameBadge *)self->_smartStyleNameBadge setUserInteractionEnabled:0];
    [(CEKBadgeView *)self->_smartStyleNameBadge setDelegate:self];
    [(CEKBadgeTextView *)self->_smartStyleNameBadge setFontStyle:[(CAMFullscreenViewfinder *)self _badgeFontStyle]];
    v5 = [(CAMFullscreenViewfinder *)self _contentView];
    [v5 addSubview:self->_smartStyleNameBadge];

    v6 = objc_alloc_init(CAMSemanticStylePicker);
    smartStylePicker = self->_smartStylePicker;
    self->_smartStylePicker = v6;

    [(CAMSemanticStylePicker *)self->_smartStylePicker setScrollEnabled:0];
    [(CAMSemanticStylePicker *)self->_smartStylePicker setScrollViewUserInteractionEnabled:0];
    [(CAMSemanticStylePicker *)self->_smartStylePicker setDelegate:self];
    [(CAMSemanticStylePicker *)self->_smartStylePicker setExpanded:0];
    [(CAMSemanticStylePicker *)self->_smartStylePicker setMaterial:[(CAMFullscreenViewfinder *)self material]];
    v8 = [MEMORY[0x1E69DC888] blackColor];
    [(CAMSemanticStylePicker *)self->_smartStylePicker setMaterialColor:v8];

    [(CAMSemanticStylePicker *)self->_smartStylePicker setPageControlMaxNumberOfDots:5];
    [(CAMFullscreenViewfinder *)self _insertStylePicker:self->_smartStylePicker];
    [(CAMSmartStyleNameBadge *)self->_smartStyleNameBadge setAlpha:0.0];
    v9 = [(CAMFullscreenViewfinder *)self delegate];
    [v9 fullscreenViewfinderDidCreateSmartStyleControls:self];

    v10 = self->_smartStylePicker;
    [(CAMFullscreenViewfinder *)self frameForReticleViewport];
    [(CAMFullscreenViewfinder *)self _updateSemanticStylePicker:v10 forViewportFrame:?];

    [(CAMFullscreenViewfinder *)self setNeedsLayout];
  }
}

- (void)_insertStylePicker:(id)a3
{
  v4 = a3;
  v5 = [(CAMFullscreenViewfinder *)self chromeView];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(CAMFullscreenViewfinder *)self _reticleView];
  }

  v8 = v7;

  [CAMView view:self insertSubview:v4 belowSubview:v8];
}

- (void)_loadSemanticStyleControlsIfNeeded
{
  if (!self->_semanticStylePicker)
  {
    [(CAMFullscreenViewfinder *)self reloadSemanticStyleBadgesDelayIfNeeded:0];
    v3 = objc_alloc_init(CAMSemanticStylePicker);
    semanticStylePicker = self->_semanticStylePicker;
    self->_semanticStylePicker = v3;

    [(CAMSemanticStylePicker *)self->_semanticStylePicker setDelegate:self];
    v5 = [(CAMFullscreenViewfinder *)self delegate];
    v9 = [v5 fullscreenViewfinderSemanticStyleList:self];

    -[CAMSemanticStylePicker setNumberOfStyles:](self->_semanticStylePicker, "setNumberOfStyles:", [v9 count]);
    [(CAMSemanticStylePicker *)self->_semanticStylePicker setExpanded:0];
    [(CAMSemanticStylePicker *)self->_semanticStylePicker setMaterial:[(CAMFullscreenViewfinder *)self material]];
    v6 = [MEMORY[0x1E69DC888] blackColor];
    [(CAMSemanticStylePicker *)self->_semanticStylePicker setMaterialColor:v6];

    [(CAMFullscreenViewfinder *)self _insertStylePicker:self->_semanticStylePicker];
    v7 = self->_semanticStylePicker;
    [(CAMFullscreenViewfinder *)self frameForReticleViewport];
    [(CAMFullscreenViewfinder *)self _updateSemanticStylePicker:v7 forViewportFrame:?];
    v8 = [(CAMFullscreenViewfinder *)self delegate];
    [v8 fullscreenViewfinderDidCreateSemanticStyleControls:self];
  }
}

- (void)reloadSemanticStyleBadgesDelayIfNeeded:(BOOL)a3
{
  v5 = [(CAMFullscreenViewfinder *)self delegate];
  v6 = [v5 fullscreenViewfinderSemanticStyleList:self];

  if (!self->__semanticStyleBadges)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    semanticStyleBadges = self->__semanticStyleBadges;
    self->__semanticStyleBadges = v7;
  }

  while (1)
  {
    v12 = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
    v13 = [v12 count];
    v14 = [v6 count];

    if (v13 <= v14)
    {
      break;
    }

    v9 = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
    v10 = [v9 lastObject];

    [v10 removeFromSuperview];
    v11 = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
    [v11 removeLastObject];
  }

  v15 = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
  v16 = [v15 count];
  v17 = [v6 count];

  if (v16 < v17)
  {
    do
    {
      v18 = objc_alloc_init(CAMSemanticStyleMaskedBadge);
      v19 = [(CAMSemanticStyleMaskedBadge *)v18 badgeView];
      [v19 setDelegate:self];

      v20 = [(CAMFullscreenViewfinder *)self _badgeFontStyle];
      v21 = [(CAMSemanticStyleMaskedBadge *)v18 badgeView];
      [v21 setFontStyle:v20];

      v22 = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
      [v22 addObject:v18];

      v23 = [(CAMFullscreenViewfinder *)self _contentView];
      [v23 addSubview:v18];

      v24 = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
      v25 = [v24 count];
      v26 = [v6 count];
    }

    while (v25 < v26);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __66__CAMFullscreenViewfinder_reloadSemanticStyleBadgesDelayIfNeeded___block_invoke;
  v27[3] = &unk_1E76F7800;
  v27[4] = self;
  v28 = a3;
  [v6 enumerateObjectsUsingBlock:v27];
}

void __66__CAMFullscreenViewfinder_reloadSemanticStyleBadgesDelayIfNeeded___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 _semanticStyleBadges];
  v8 = [v7 objectAtIndexedSubscript:a3];

  [v8 setSemanticStyle:v6 delayIfNeeded:*(a1 + 40)];
}

- (void)semanticStylePickerDidChangeSelectedStyle:(id)a3
{
  v8 = a3;
  v4 = [(CAMFullscreenViewfinder *)self semanticStylePicker];

  if (v4 == v8)
  {
    v7 = [(CAMFullscreenViewfinder *)self delegate];
    [v7 fullscreenViewfinderDidChangeSemanticStyle:self];
  }

  else
  {
    v5 = [(CAMFullscreenViewfinder *)self smartStylePicker];

    v6 = v8;
    if (v5 != v8)
    {
      goto LABEL_6;
    }

    v7 = [(CAMFullscreenViewfinder *)self delegate];
    [v7 fullscreenViewfinderDidChangeSelectedSmartStyle:self];
  }

  v6 = v8;
LABEL_6:
}

- (void)semanticStylePickerDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(CAMFullscreenViewfinder *)self semanticStylePicker];

  if (v5 == v4)
  {
    [(CAMFullscreenViewfinder *)self _layoutSemanticStyleMaskedBadges];

    [(CAMFullscreenViewfinder *)self requestPreviewUpdateForSemanticStyleAnimated:0];
  }
}

- (void)_layoutSemanticStyleMaskedBadges
{
  v3 = [(CAMFullscreenViewfinder *)self _viewportAspectRatioForControlsOverPreview];
  v4 = [(CAMFullscreenViewfinder *)self _layout];
  [v4 viewportFrameForAspectRatio:v3 accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(CAMFullscreenViewfinder *)self orientation];
  if (v13 >= 3)
  {
    v24 = v8;
    v25 = v6;
    if (v13 - 3 >= 2)
    {
      v27 = 0.0;
    }

    else
    {
      v28 = [(CAMFullscreenViewfinder *)self semanticStylePicker];
      [v28 spacerWidth];
      v27 = 10.0 + 15.0 + v29;
    }
  }

  else
  {
    v14 = [(CAMFullscreenViewfinder *)self semanticStylePicker];
    v15 = [(CAMFullscreenViewfinder *)self semanticStylePicker];
    v16 = [v15 pageControl];
    [v16 frame];
    [v14 convertRect:self toView:?];
    rect.origin.x = v17;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v40.origin.x = v6;
    v40.origin.y = v8;
    v40.size.width = v10;
    v40.size.height = v12;
    v24 = v8;
    v25 = v6;
    MaxY = CGRectGetMaxY(v40);
    v41.origin.x = rect.origin.x;
    v41.origin.y = v19;
    v41.size.width = v21;
    v41.size.height = v23;
    v27 = MaxY - CGRectGetMinY(v41) + 4.0;
  }

  v30 = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
  *&rect.origin.y = MEMORY[0x1E69E9820];
  *&rect.size.width = 3221225472;
  *&rect.size.height = __59__CAMFullscreenViewfinder__layoutSemanticStyleMaskedBadges__block_invoke;
  v32 = &unk_1E76F7828;
  v33 = self;
  v34 = v27;
  v35 = v27;
  v36 = v25;
  v37 = v24;
  v38 = v10;
  v39 = v12;
  [v30 enumerateObjectsUsingBlock:&rect.origin.y];
}

void __59__CAMFullscreenViewfinder__layoutSemanticStyleMaskedBadges__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 _geometryForBottomCenteredView:v5 margins:*(a1 + 40) aroundFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    v6 = *(a1 + 32);
  }

  v7 = [v6 semanticStylePicker];
  [v7 presentatationStyleRectAtIndex:a3];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v5 superview];
  v17 = [*(a1 + 32) semanticStylePicker];
  [v16 convertRect:v17 fromView:{v9, v11, v13, v15}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [*(a1 + 32) bounds];
  v27 = v25 + v26;
  v33[2] = v36;
  v33[3] = v37;
  v33[4] = v38;
  v33[5] = v39;
  v33[0] = v34;
  v33[1] = v35;
  CAMFrameForGeometry(v33);
  x = v40.origin.x;
  v42.origin.x = v19;
  v42.origin.y = v21;
  v42.size.width = v23;
  v42.size.height = v27;
  v41 = CGRectIntersection(v40, v42);
  v29 = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  if (CGRectIsNull(v41))
  {
    v29 = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  [v5 setFrame:{v29, y, width, height}];
  [v5 setOrientation:{objc_msgSend(*(a1 + 32), "orientation")}];
  [v5 setBadgeLeftInset:x - v29];
}

- (void)setViewportAspectRatio:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_viewportAspectRatio != a3)
  {
    v4 = a4;
    if (a4)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_viewportAspectRatio = a3;
    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v4];

    [(CAMFullscreenViewfinder *)self _updateLightingControlClipping];
  }
}

- (void)setControlDrawerExpanded:(BOOL)a3 forReason:(int64_t)a4 animated:(BOOL)a5
{
  if (self->_controlDrawerExpanded == a3)
  {
    return;
  }

  v5 = a5;
  v7 = a3;
  v9 = [(CAMFullscreenViewfinder *)self controlDrawer];

  if (!v9 && v7)
  {
    v10 = [[CAMControlDrawer alloc] initWithLayoutStyle:3];
    [(CAMFullscreenViewfinder *)self _setControlDrawer:v10];

    v11 = [(CAMFullscreenViewfinder *)self orientation];
    v12 = [(CAMFullscreenViewfinder *)self controlDrawer];
    [v12 setOrientation:v11];

    v13 = [(CAMFullscreenViewfinder *)self controlDrawer];
    [v13 setPresentationDelegate:self];

    v14 = [(CAMFullscreenViewfinder *)self _contentView];
    v15 = [(CAMFullscreenViewfinder *)self controlDrawer];
    [v14 addSubview:v15];

    v16 = [(CAMFullscreenViewfinder *)self delegate];
    [v16 fullscreenViewfinderDidCreateControlDrawer:self];
  }

  v17 = [(CAMFullscreenViewfinder *)self controlDrawer];
  v33 = v17;
  if ((a4 & 0xFFFFFFFFFFFFFFFBLL) != 0 || !v7)
  {
    v18 = -1;
  }

  else
  {
    v18 = -1;
    if ([v17 expandedControlType] == -1)
    {
      v19 = [(CAMFullscreenViewfinder *)self delegate];
      v20 = [v19 expandedControlTypeForExpandingDrawerInFullscreenViewfinder:self];

      v21 = [v33 visibleControlTypes];
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
      v23 = [v21 containsObject:v22];

      if (v23)
      {
        v18 = v20;
      }

      else
      {
        v18 = -1;
      }
    }
  }

  if (v5)
  {
    [(CAMFullscreenViewfinder *)self layoutIfNeeded];
  }

  self->_controlDrawerExpanded = v7;
  [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:v5];
  [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v5];
  if (!v7)
  {
    [(CAMFullscreenViewfinder *)self _setControlDrawerPresentedModally:0];
LABEL_22:
    [(CAMFullscreenViewfinder *)self _setSmartStyleControlsVisible:v7 animated:v5 notifyDelegate:1];
    goto LABEL_23;
  }

  v24 = [v33 visibleControlTypes];
  v25 = [v24 count];

  if (v25 == 1)
  {
    v26 = [v33 visibleControlTypes];
    v27 = [v26 firstObject];
    v28 = [v27 integerValue];

    v29 = v33;
    v30 = v28;
    v31 = 0;
  }

  else
  {
    if (v18 == -1)
    {
      goto LABEL_21;
    }

    v29 = v33;
    v30 = v18;
    v31 = v5;
  }

  [v29 expandControlForType:v30 animated:v31 updatePreferredDrawerControl:0];
LABEL_21:
  if ([v33 expandedControlType] == 11)
  {
    goto LABEL_22;
  }

LABEL_23:
  v32 = [(CAMFullscreenViewfinder *)self delegate];
  [v32 fullscreenViewfinder:self didChangeControlDrawerVisibility:v7 animated:v5 forReason:a4];
}

- (void)presentControlDrawerModally:(BOOL)a3 forReason:(int64_t)a4 controlType:(int64_t)a5
{
  v7 = a3;
  v9 = [(CAMFullscreenViewfinder *)self isControlDrawerExpanded];
  v10 = [(CAMFullscreenViewfinder *)self _isControlDrawerPresentedModally];
  if (v7 && (v10 || !v9))
  {
    v11 = [(CAMFullscreenViewfinder *)self delegate];
    [v11 fullscreenViewFinder:self willPresentControlDrawerModallyForControlType:a5 reason:a4];

    [(CAMFullscreenViewfinder *)self setControlDrawerExpanded:1 forReason:a4 animated:1];
    v12 = [(CAMFullscreenViewfinder *)self controlDrawer];
    [v12 expandControlForType:a5 animated:v9 updatePreferredDrawerControl:a4 == 1];

    [(CAMFullscreenViewfinder *)self _setControlDrawerPresentedModally:1];
  }

  else
  {
    [(CAMFullscreenViewfinder *)self setControlDrawerExpanded:1 forReason:a4 animated:1];
    v13 = [(CAMFullscreenViewfinder *)self controlDrawer];
    [v13 expandControlForType:a5 animated:v9 updatePreferredDrawerControl:a4 == 1];
  }
}

- (BOOL)isControlDrawerPresentedModallyWithControlType:(int64_t)a3
{
  if (![(CAMFullscreenViewfinder *)self isControlDrawerExpanded]|| ![(CAMFullscreenViewfinder *)self _isControlDrawerPresentedModally])
  {
    return 0;
  }

  v5 = [(CAMFullscreenViewfinder *)self controlDrawer];
  v6 = [v5 isControlExpandedForType:a3];

  return v6;
}

- (void)dismissModalControlDrawerIfNeededForReason:(int64_t)a3
{
  if ([(CAMFullscreenViewfinder *)self _isControlDrawerPresentedModally])
  {
    [(CAMFullscreenViewfinder *)self _setControlDrawerPresentedModally:0];
    v5 = [(CAMFullscreenViewfinder *)self controlDrawer];
    v7 = [v5 expandedControl];

    if (v7)
    {
      v6 = [(CAMFullscreenViewfinder *)self delegate];
      [v6 fullscreenViewFinder:self willDismissControlDrawerModallyForControlType:objc_msgSend(v7 reason:{"controlType"), a3}];
    }

    [(CAMFullscreenViewfinder *)self setControlDrawerExpanded:0 forReason:a3 animated:1];
  }
}

- (void)controlDrawer:(id)a3 didChangeExpanded:(BOOL)a4 forControlType:(int64_t)a5 animated:(BOOL)a6 updatePreferredDrawerControl:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v10 = a4;
  v15 = a3;
  if (!v10)
  {
    [(CAMFullscreenViewfinder *)self _setControlDrawerPresentedModally:0];
  }

  switch(a5)
  {
    case 4:
      [(CAMFullscreenViewfinder *)self _loadFilterControlsIfNeeded];
      [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:1];
      break;
    case 11:
      [(CAMFullscreenViewfinder *)self _loadSmartStyleControlsIfNeeded];
      [(CAMFullscreenViewfinder *)self _setSmartStyleControlsVisible:v10 animated:v10 | v8 notifyDelegate:1];
      break;
    case 10:
      [(CAMFullscreenViewfinder *)self _updateForSemanticStyleControlsDidChangeVisibility:v10 animated:v8];
      break;
  }

  v12 = [(CAMFullscreenViewfinder *)self delegate];
  [v12 fullscreenViewfinder:self didChangeExpanded:v10 forDrawerControlOfType:a5 animated:v8 updatePreferredDrawerControl:v7];

  if (!v10)
  {
    v13 = [v15 visibleControlTypes];
    v14 = [v13 count];

    if (v14 == 1)
    {
      [(CAMFullscreenViewfinder *)self setControlDrawerExpanded:0 forReason:8 animated:1];
    }
  }
}

- (void)_updateForSemanticStyleControlsDidChangeVisibility:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(CAMFullscreenViewfinder *)self _loadSemanticStyleControlsIfNeeded];
  [(CAMFullscreenViewfinder *)self requestPreviewUpdateForSemanticStyleAnimated:0];
  [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:v4];
  v7 = [(CAMFullscreenViewfinder *)self delegate];
  [v7 fullscreenViewfinder:self didChangeExpanded:v5 forDrawerControlOfType:10 animated:v4 updatePreferredDrawerControl:0];
}

- (BOOL)isApertureSliderVisible
{
  v3 = [(CAMFullscreenViewfinder *)self isControlDrawerExpanded];
  if (v3)
  {
    v4 = [(CAMFullscreenViewfinder *)self controlDrawer];
    v5 = [v4 isApertureSliderExpanded];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isIntensitySliderVisible
{
  v3 = [(CAMFullscreenViewfinder *)self isControlDrawerExpanded];
  if (v3)
  {
    v4 = [(CAMFullscreenViewfinder *)self controlDrawer];
    v5 = [v4 isIntensitySliderExpanded];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isNightModeSliderVisible
{
  v3 = [(CAMFullscreenViewfinder *)self isControlDrawerExpanded];
  if (v3)
  {
    v4 = [(CAMFullscreenViewfinder *)self controlDrawer];
    v5 = [v4 isNightModeSliderExpanded];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isExposureSliderVisible
{
  v3 = [(CAMFullscreenViewfinder *)self isControlDrawerExpanded];
  if (v3)
  {
    v4 = [(CAMFullscreenViewfinder *)self controlDrawer];
    v5 = [v4 isExposureSliderExpanded];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)setSpotlightControl:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_spotlightControl != a3)
  {
    v4 = a4;
    v7 = [(CAMFullscreenViewfinder *)self spotlightControlPanel];
    v8 = [(CAMFullscreenViewfinder *)self _wantsSpotlightControlPanelForControl:a3];
    v9 = v8;
    if (!v7 && v8)
    {
      v7 = objc_alloc_init(CAMSpotlightControlPanel);
      [(CAMSpotlightControlPanel *)v7 setOrientation:[(CAMFullscreenViewfinder *)self orientation]];
      v10 = [(CAMFullscreenViewfinder *)self _contentView];
      [v10 addSubview:v7];

      [(CAMFullscreenViewfinder *)self _setSpotlightControlPanel:v7];
      v11 = [(CAMFullscreenViewfinder *)self delegate];
      [v11 fullscreenViewfinderDidCreateSpotlightControlPanel:self];
    }

    if (v9)
    {
      v12 = [(CAMFullscreenViewfinder *)self _wantsSpotlightControlPanelForControl:self->_spotlightControl];
      v13 = [(CAMFullscreenViewfinder *)self spotlightControlPanel];
      [v13 setSpotlightControl:a3 animated:v12];
    }

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v15 = [(CAMFullscreenViewfinder *)self _badgesForSpotlightControls];
    v16 = [v15 objectForKeyedSubscript:v14];

    if (v16)
    {
      if (v4)
      {
LABEL_9:
        [(CAMFullscreenViewfinder *)self layoutIfNeeded];
        self->_spotlightControl = a3;
        [(CAMFullscreenViewfinder *)self setNeedsLayout];
        [(CAMFullscreenViewfinder *)self _updateQuietUIAnimated:1];
        [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:1];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __56__CAMFullscreenViewfinder_setSpotlightControl_animated___block_invoke;
        v19[3] = &unk_1E76F77B0;
        v19[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v19 usingSpringWithDamping:0 initialSpringVelocity:0.7 options:0.0 animations:0.7 completion:1.0];
LABEL_17:

        return;
      }
    }

    else
    {
      if (a3 == 2)
      {
        v16 = objc_alloc_init(CAMFocusLockBadge);
        [(CAMFocusLockBadge *)v16 setFocusLockType:2];
      }

      else if (a3 == 3)
      {
        v16 = objc_alloc_init(CAMShallowDepthOfFieldBadge);
        [(CAMFocusLockBadge *)v16 setShallowDepthOfFieldStatus:1];
      }

      else
      {
        v16 = 0;
      }

      v17 = [(CAMFullscreenViewfinder *)self _contentView];
      [v17 addSubview:v16];

      v18 = [(CAMFullscreenViewfinder *)self _badgesForSpotlightControls];
      [v18 setObject:v16 forKeyedSubscript:v14];

      if (v4)
      {
        goto LABEL_9;
      }
    }

    self->_spotlightControl = a3;
    [(CAMFullscreenViewfinder *)self setNeedsLayout];
    [(CAMFullscreenViewfinder *)self _updateQuietUIAnimated:0];
    goto LABEL_17;
  }
}

- (void)_updateQuietUIAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMFullscreenViewfinder *)self spotlightControl];
  if (v5 == 1)
  {
    v6 = [(CAMFullscreenViewfinder *)self _contentView];
    [(CAMFullscreenViewfinder *)self _ensureBlurFilterForContentView:v6];

    v7 = [(CAMFullscreenViewfinder *)self _contentViewBelowShutter];
    [(CAMFullscreenViewfinder *)self _ensureBlurFilterForContentView:v7];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__CAMFullscreenViewfinder__updateQuietUIAnimated___block_invoke;
  v10[3] = &unk_1E76F7850;
  v10[4] = self;
  v11 = v5 == 1;
  v8 = _Block_copy(v10);
  v9 = v8;
  if (v3)
  {
    [(CAMFullscreenViewfinder *)self _animateQuietUIActive:v5 == 1 animations:v8 completion:0];
  }

  else
  {
    (*(v8 + 2))(v8);
  }
}

uint64_t __50__CAMFullscreenViewfinder__updateQuietUIAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _contentView];
  [v2 _updateContentView:v3 forQuietUIActive:*(a1 + 40)];

  v4 = *(a1 + 32);
  v5 = [v4 _contentViewBelowShutter];
  [v4 _updateContentView:v5 forQuietUIActive:*(a1 + 40)];

  v6 = *(a1 + 32);

  return [v6 _updateSubviewsVisibilityAnimated:0];
}

- (void)_animateQuietUIActive:(BOOL)a3 animations:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E69DD280];
  v9 = a4;
  if (a3)
  {
    v10 = 0.8;
    v11 = 1.0;
  }

  else
  {
    v11 = 0.4;
    v10 = 1.0;
  }

  v12 = [v8 behaviorWithDampingRatio:v10 response:v11];
  v13 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__CAMFullscreenViewfinder__animateQuietUIActive_animations_completion___block_invoke;
  v15[3] = &unk_1E76F7878;
  v16 = v7;
  v14 = v7;
  [v13 _animateUsingSpringBehavior:v12 tracking:0 animations:v9 completion:v15];
}

uint64_t __71__CAMFullscreenViewfinder__animateQuietUIActive_animations_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_ensureBlurFilterForContentView:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 subviews];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 layer];
    v7 = [v6 valueForKeyPath:@"filters.gaussianBlur"];
    if (!v7)
    {
      v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
      [v7 setName:@"gaussianBlur"];
      v9[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      [v6 setFilters:v8];
    }
  }
}

- (void)_updateContentView:(id)a3 forQuietUIActive:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 subviews];
  v7 = [v6 count];

  if (v7)
  {
    if (v4)
    {
      v8 = 1.03;
    }

    else
    {
      v8 = 1.0;
    }

    if (v4)
    {
      v9 = 10.0;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = !v4;
    v11 = [v5 layer];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    [v11 setValue:v12 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    CGAffineTransformMakeScale(&v14, v8, v8);
    v13 = v14;
    [v5 setTransform:&v13];
    [v5 setAlpha:v10];
  }
}

- (BOOL)_shouldShowSpatialCaptureRecordingIndicator
{
  v3 = [(CAMFullscreenViewfinder *)self isSpatialCaptureRecordingIndicatorVisible];
  v4 = [(CAMFullscreenViewfinder *)self orientation];
  v5 = v4 == 3;
  result = v4 != 3 && v3;
  if (v5 && v3)
  {
    return ![(CAMFullscreenViewfinder *)self isSystemOverlayVisible];
  }

  return result;
}

- (void)setSpatialCaptureRecordingIndicatorVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_spatialCaptureRecordingIndicatorVisible != a3)
  {
    v16 = v7;
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v10 = a4;
    self->_spatialCaptureRecordingIndicatorVisible = a3;
    if (a3)
    {
      v12 = [(CAMFullscreenViewfinder *)self spatialCaptureRecordingIndicator];

      if (!v12)
      {
        v13 = objc_alloc_init(CAMSpatialCaptureRecordingIndicator);
        [(CAMSpatialCaptureRecordingIndicator *)v13 setOrientation:[(CAMFullscreenViewfinder *)self orientation]];
        v14 = [(CAMFullscreenViewfinder *)self _modulatingContentView];
        [v14 addSubview:v13];

        if (v10)
        {
          [(CAMSpatialCaptureRecordingIndicator *)v13 setAlpha:0.0];
        }

        [(CAMFullscreenViewfinder *)self _setSpatialCaptureRecordingIndicator:v13, v16, v17, v18, v19, v8];
      }

      v15 = [(CAMFullscreenViewfinder *)self spatialCaptureRecordingIndicator:v16];
      [v15 setOrientation:-[CAMFullscreenViewfinder orientation](self animated:{"orientation"), 0}];

      [(CAMFullscreenViewfinder *)self setNeedsLayout];
    }

    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:v10];
  }
}

- (void)setOrientationInstructionVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_orientationInstructionVisible != a3)
  {
    v5 = a4;
    self->_orientationInstructionVisible = a3;
    if (a3)
    {
      v7 = [(CAMFullscreenViewfinder *)self _orientationInstructionView];

      if (!v7)
      {
        v8 = objc_alloc_init(CAMOrientationInstructionView);
        [(CAMOrientationInstructionView *)v8 setOrientation:[(CAMFullscreenViewfinder *)self deviceOrientation]];
        [(CAMOrientationInstructionView *)v8 setHasBlurredBackground:[(CAMFullscreenViewfinder *)self isOrientationInstructionBackgroundBlurred] animated:0];
        [(CAMFullscreenViewfinder *)self _insertBackgroundSubview:v8];
        [(CAMFullscreenViewfinder *)self _setOrientationInstructionView:v8];
        if (v5)
        {
          [(CAMOrientationInstructionView *)v8 setAlpha:0.0];
        }
      }
    }

    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:v5];
  }
}

- (void)setOrientationInstructionBackgroundBlurred:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_orientationInstructionBackgroundBlurred != a3)
  {
    v5 = a4;
    v6 = a3;
    self->_orientationInstructionBackgroundBlurred = a3;
    v7 = [(CAMFullscreenViewfinder *)self _orientationInstructionView];
    [v7 setHasBlurredBackground:v6 animated:v5];
  }
}

- (void)setStereoCaptureStatus:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_stereoCaptureStatus != a3)
  {
    v4 = a4;
    self->_stereoCaptureStatus = a3;
    v7 = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];

    if (v7)
    {
      if (v4)
      {
        [(CAMFullscreenViewfinder *)self layoutIfNeeded];
      }

      v8 = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];
      [v8 setStereoCaptureStatus:a3];

      [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v4];
    }
  }
}

- (void)setUseHoldStillStereoLowLightInstruction:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMFullscreenViewfinder *)self stereoCaptureStatus];

  [(CAMFullscreenViewfinder *)self setStereoCaptureStatus:v5 useHoldStillStereoLowLightInstruction:v3 animated:0];
}

- (void)setStereoCaptureStatus:(int64_t)a3 useHoldStillStereoLowLightInstruction:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if (self->_stereoCaptureStatus != a3 || self->_useHoldStillStereoLowLightInstruction != a4)
  {
    self->_stereoCaptureStatus = a3;
    self->_useHoldStillStereoLowLightInstruction = a4;
    v9 = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];

    if (v9)
    {
      if (v5)
      {
        [(CAMFullscreenViewfinder *)self layoutIfNeeded];
      }

      v10 = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];
      [v10 setStereoCaptureStatus:a3];

      v11 = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];
      [v11 setUseHoldStillLowLightInstruction:v6];

      [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v5];
    }
  }
}

- (void)setShowingStandardControls:(BOOL)a3
{
  if (self->_showingStandardControls != a3)
  {
    self->_showingStandardControls = a3;
    [(CAMFullscreenViewfinder *)self _updateReticle];
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:0];

    [(CAMFullscreenViewfinder *)self setNeedsLayout];
  }
}

- (BOOL)_showControlDrawer
{
  if ([(CAMFullscreenViewfinder *)self isControlDrawerVisible])
  {
    v3 = [(CAMFullscreenViewfinder *)self isControlDrawerExpanded];
  }

  else
  {
    v3 = 0;
  }

  return [(CAMFullscreenViewfinder *)self _shouldShowControls]&& v3;
}

- (BOOL)_showModeView
{
  if ([(CAMFullscreenViewfinder *)self isModeUIVisible])
  {
    v3 = ![(CAMFullscreenViewfinder *)self _showControlDrawer];
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  v4 = v3 & ~[(CAMFullscreenViewfinder *)self smartStyleControlsVisible];
  return v4 & [(CAMFullscreenViewfinder *)self _shouldShowControls];
}

- (BOOL)_shouldShowZoomControl
{
  if ([(CAMFullscreenViewfinder *)self isZoomControlVisible])
  {
    v3 = [(CAMFullscreenViewfinder *)self machineReadableCodeButton];
    if (v3 && ([(CAMFullscreenViewfinder *)self orientation]- 3) >= 2)
    {
      v5 = [(CAMFullscreenViewfinder *)self zoomControl];
      [v5 edgeMargin];
      v4 = v6 != 0.0;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return [(CAMFullscreenViewfinder *)self _shouldShowControls]&& v4;
}

- (BOOL)_showPortraitControls
{
  if ([(CAMFullscreenViewfinder *)self isPortraitControlsAllowed]&& ![(CAMFullscreenViewfinder *)self isFilterScrubberVisible])
  {
    v3 = ![(CAMFullscreenViewfinder *)self isSemanticStyleControlVisible];
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return [(CAMFullscreenViewfinder *)self _shouldShowControls]& v3;
}

- (BOOL)_showLandscapeLightingBadge
{
  if ([(CAMFullscreenViewfinder *)self _showPortraitControls])
  {
    v3 = ([(CAMFullscreenViewfinder *)self orientation]- 3) < 2;
  }

  else
  {
    v3 = 0;
  }

  return [(CAMFullscreenViewfinder *)self _shouldShowControls]&& v3;
}

- (BOOL)_showSmartStylePicker
{
  v3 = [(CAMFullscreenViewfinder *)self spotlightControl];
  v4 = [(CAMFullscreenViewfinder *)self isSmartStylePickerVisible];
  v5 = v3 != 1 && v4;
  return v5 & [(CAMFullscreenViewfinder *)self _shouldShowControls];
}

- (void)_updateSubviewsVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = 0.3;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [(CAMFullscreenViewfinder *)self _showControlDrawer];
  v7 = [(CAMFullscreenViewfinder *)self _showModeView];
  v8 = [(CAMFullscreenViewfinder *)self controlDrawer];
  v33 = v8;
  if (v3 && v6 != v7)
  {
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if (v6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    v11 = v9;
    v12 = v10;
    v13 = MEMORY[0x1E69DD250];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __61__CAMFullscreenViewfinder__updateSubviewsVisibilityAnimated___block_invoke;
    v45[3] = &unk_1E76F77B0;
    v46 = v12;
    v14 = v12;
    [v13 animateWithDuration:131074 delay:v45 options:0 animations:0.2 completion:0.0];
    v15 = MEMORY[0x1E69DD250];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __61__CAMFullscreenViewfinder__updateSubviewsVisibilityAnimated___block_invoke_2;
    v43[3] = &unk_1E76F77B0;
    v44 = v11;
    v16 = v11;
    [v15 animateWithDuration:65538 delay:v43 options:0 animations:0.25 completion:0.05];
  }

  else
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __61__CAMFullscreenViewfinder__updateSubviewsVisibilityAnimated___block_invoke_3;
    v40[3] = &unk_1E76F7850;
    v41 = v8;
    v42 = v6;
    [CAMView animateIfNeededWithDuration:v40 animations:v5];
    v14 = v41;
  }

  v17 = [(CAMFullscreenViewfinder *)self machineReadableCodeButton];

  if (v17)
  {
    v18 = ([(CAMFullscreenViewfinder *)self orientation]- 5) < 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v18 = 1;
  }

  v19 = [(CAMFullscreenViewfinder *)self lightingControl];
  v20 = [(CAMFullscreenViewfinder *)self _showPortraitControls];
  v21 = [(CAMFullscreenViewfinder *)self _showLandscapeLightingBadge]&& v18;
  if (v20)
  {
    v22 = (v21 & 1) != 0 || [(CAMFullscreenViewfinder *)self lightingNameBadgesHidden];
    [v19 setNameBadgeHidden:v22 animated:v3];
  }

  v23 = [(CAMFullscreenViewfinder *)self spotlightControl];
  v24 = [(CAMFullscreenViewfinder *)self _showSemanticStylePicker];
  v25 = [(CAMFullscreenViewfinder *)self semanticStylePicker];
  [v25 setExpanded:v24 animated:v3];

  v26 = [(CAMFullscreenViewfinder *)self _showSmartStylePicker];
  v27 = v23 == 1;
  v28 = v23 == 1 || v3;
  v29 = [(CAMFullscreenViewfinder *)self smartStylePicker];
  [v29 setExpanded:v26 animated:v28];

  v30 = [(CAMFullscreenViewfinder *)self _reticleView];
  [v30 setCornersVisible:!v24 && !v26 && !v27 animated:v3];

  v31 = [(CAMFullscreenViewfinder *)self _shouldShowControls];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __61__CAMFullscreenViewfinder__updateSubviewsVisibilityAnimated___block_invoke_4;
  v34[3] = &unk_1E76F78A0;
  v36 = v31;
  v37 = v21;
  v38 = v24;
  v34[4] = self;
  v35 = v19;
  v39 = v20;
  v32 = v19;
  [CAMView animateIfNeededWithDuration:v34 animations:v5];
}

uint64_t __61__CAMFullscreenViewfinder__updateSubviewsVisibilityAnimated___block_invoke_3(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

void __61__CAMFullscreenViewfinder__updateSubviewsVisibilityAnimated___block_invoke_4(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  v2 = 0.0;
  if (*(a1 + 48))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [*(a1 + 32) badgeTray];
  [v4 setAlpha:v3];

  v5 = 0.0;
  if ([*(a1 + 32) isShutterButtonVisible])
  {
    if (*(a1 + 48))
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }
  }

  v6 = [*(a1 + 32) shutterControl];
  [v6 setAlpha:v5];

  if ([*(a1 + 32) isTimerIndicatorVisible])
  {
    if (*(a1 + 48))
    {
      v2 = 1.0;
    }

    else
    {
      v2 = 0.0;
    }
  }

  v7 = [*(a1 + 32) timerIndicator];
  [v7 setAlpha:v2];

  v8 = 0.0;
  v9 = 0.0;
  if (*(a1 + 49) == 1 && *(a1 + 48) == 1)
  {
    if ([*(a1 + 32) lightingNameBadgesHidden])
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }
  }

  v10 = [*(a1 + 32) lightingNameBadge];
  [v10 setAlpha:v9];

  if ([*(a1 + 32) _showFilterNameBadge])
  {
    if (*(a1 + 48))
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }
  }

  v11 = [*(a1 + 32) filterNameBadge];
  [v11 setAlpha:v8];

  v12 = 0.0;
  if ([*(a1 + 32) _showSmartStyleNameBadge])
  {
    if (*(a1 + 48))
    {
      v12 = 1.0;
    }

    else
    {
      v12 = 0.0;
    }
  }

  v13 = [*(a1 + 32) smartStyleNameBadge];
  [v13 setAlpha:v12];

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v14 = [*(a1 + 32) _semanticStyleBadges];
  v15 = [v14 countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v69;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v69 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = 0.0;
        if (*(a1 + 50) == 1)
        {
          if (*(a1 + 48))
          {
            v19 = 1.0;
          }

          else
          {
            v19 = 0.0;
          }
        }

        [*(*(&v68 + 1) + 8 * i) setAlpha:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v16);
  }

  v20 = 0.0;
  v21 = 0.0;
  if ([*(a1 + 32) isFlipButtonVisible])
  {
    if (*(a1 + 48))
    {
      v21 = 1.0;
    }

    else
    {
      v21 = 0.0;
    }
  }

  v22 = [*(a1 + 32) flipButton];
  [v22 setAlpha:v21];

  if ([*(a1 + 32) _shouldShowZoomControl])
  {
    if (*(a1 + 48))
    {
      v20 = 1.0;
    }

    else
    {
      v20 = 0.0;
    }
  }

  v23 = [*(a1 + 32) zoomControl];
  [v23 setAlpha:v20];

  v24 = 0.0;
  if ([*(a1 + 32) isElapsedTimeViewVisible])
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = [*(a1 + 32) elapsedTimeView];
  [v26 setAlpha:v25];

  v27 = 0.0;
  if ([*(a1 + 32) isImageAnalysisButtonVisible])
  {
    if (*(a1 + 48))
    {
      v27 = 1.0;
    }

    else
    {
      v27 = 0.0;
    }
  }

  v28 = [*(a1 + 32) imageAnalysisButton];
  [v28 setAlpha:v27];

  if ([*(a1 + 32) isPreviewAlignmentGuideVisible])
  {
    if (*(a1 + 48))
    {
      v24 = 1.0;
    }

    else
    {
      v24 = 0.0;
    }
  }

  v29 = [*(a1 + 32) previewAlignmentGuide];
  [v29 setAlpha:v24];

  if ([*(a1 + 32) _shouldShowSpotlightControlPanel])
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = [*(a1 + 32) spotlightControlPanel];
  [v31 setAlpha:v30];

  v32 = [*(a1 + 32) _visibleInstructionLabelForInstructionLabelValue:{objc_msgSend(*(a1 + 32), "visibleInstructionLabel")}];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v33 = [*(a1 + 32) _createdPrimaryInstructionLabels];
  v34 = [v33 countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v65;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v65 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v64 + 1) + 8 * j);
        v39 = 0.0;
        if (v38 == v32)
        {
          if (*(a1 + 48))
          {
            v39 = 1.0;
          }

          else
          {
            v39 = 0.0;
          }
        }

        [v38 setAlpha:v39];
      }

      v35 = [v33 countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v35);
  }

  v40 = [*(a1 + 32) _visibleInstructionLabelForInstructionLabelValue:{objc_msgSend(*(a1 + 32), "visibleSecondaryInstructionLabel")}];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v41 = [*(a1 + 32) _createdSecondaryInstructionLabels];
  v42 = [v41 countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v61;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v61 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v60 + 1) + 8 * k);
        v47 = 0.0;
        if (v46 == v40)
        {
          if (*(a1 + 48))
          {
            v47 = 1.0;
          }

          else
          {
            v47 = 0.0;
          }
        }

        [v46 setAlpha:v47];
      }

      v43 = [v41 countByEnumeratingWithState:&v60 objects:v72 count:16];
    }

    while (v43);
  }

  v48 = 0.0;
  if (*(a1 + 51))
  {
    v49 = 1.0;
  }

  else
  {
    v49 = 0.0;
  }

  [*(a1 + 40) setAlpha:v49];
  v50 = 0.0;
  if ([*(a1 + 32) isFlipAspectRatioButtonVisible])
  {
    if (*(a1 + 48))
    {
      v50 = 1.0;
    }

    else
    {
      v50 = 0.0;
    }
  }

  v51 = [*(a1 + 32) flipAspectRatioButton];
  [v51 setAlpha:v50];

  if ([*(a1 + 32) isOrientationInstructionVisible])
  {
    if (*(a1 + 48))
    {
      v48 = 1.0;
    }

    else
    {
      v48 = 0.0;
    }
  }

  v52 = [*(a1 + 32) _orientationInstructionView];
  [v52 setAlpha:v48];

  v53 = 0.0;
  v54 = 0.0;
  if ([*(a1 + 32) _shouldShowSpatialCaptureRecordingIndicator])
  {
    if (*(a1 + 48))
    {
      v54 = 1.0;
    }

    else
    {
      v54 = 0.0;
    }
  }

  v55 = [*(a1 + 32) spatialCaptureRecordingIndicator];
  [v55 setAlpha:v54];

  v56 = [*(a1 + 32) photoVideoModeSwitch];
  v57 = [v56 isEnabled];

  if ([*(a1 + 32) isModeSwitchVisible])
  {
    v58 = 0.5;
    if (v57)
    {
      v58 = 1.0;
    }

    if (*(a1 + 48))
    {
      v53 = v58;
    }

    else
    {
      v53 = 0.0;
    }
  }

  v59 = [*(a1 + 32) photoVideoModeSwitch];
  [v59 setAlpha:v53];
}

- (void)_updateTintColors
{
  [(CAMFullscreenViewfinder *)self frameForReticleViewport];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__CAMFullscreenViewfinder__updateTintColors__block_invoke;
  aBlock[3] = &unk_1E76F78C8;
  aBlock[5] = v3;
  aBlock[6] = v4;
  aBlock[7] = v5;
  aBlock[8] = v6;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = [(CAMFullscreenViewfinder *)self controlDrawer];
  v7[2](v7, v8);

  v9 = [(CAMFullscreenViewfinder *)self flipButton];
  v7[2](v7, v9);
}

void __44__CAMFullscreenViewfinder__updateTintColors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  v4 = CGRectIntersectsRect(v8, *(a1 + 40));
  v5 = objc_opt_class();
  if (v4)
  {
    [v5 darkControlBackgroundColor];
  }

  else
  {
    [v5 lightControlBackgroundColor];
  }
  v6 = ;
  [v3 setTintColor:v6];
}

- (void)setVisibleInstructionLabel:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(CAMFullscreenViewfinder *)self visibleSecondaryInstructionLabel];

  [(CAMFullscreenViewfinder *)self setVisibleInstructionLabel:a3 visibleSecondaryInstructionLabel:v7 animated:v4];
}

- (void)_createViewIfNeededForInstructionLabel:(int64_t)a3 isPrimary:(BOOL)a4
{
  v4 = a4;
  v7 = [(CAMFullscreenViewfinder *)self _modulatingContentView];
  if (a3 <= 5)
  {
    v43 = v7;
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v21 = [(CAMFullscreenViewfinder *)self portraitInstructionLabel];

        if (v21)
        {
          goto LABEL_39;
        }

        v22 = objc_alloc_init(CAMPortraitModeInstructionLabel);
        [(CAMFullscreenViewfinder *)self _setPortraitInstructionLabel:v22];

        v23 = [(CAMFullscreenViewfinder *)self shallowDepthOfFieldStatus];
        v24 = [(CAMFullscreenViewfinder *)self portraitInstructionLabel];
        [v24 setShallowDepthOfFieldStatus:v23];

        v18 = [(CAMFullscreenViewfinder *)self portraitInstructionLabel];
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_40;
        }

        v16 = [(CAMFullscreenViewfinder *)self qrCodeInstructionLabel];

        if (v16)
        {
          goto LABEL_39;
        }

        v17 = objc_alloc_init(CAMQRCodeInstructionLabel);
        [(CAMFullscreenViewfinder *)self _setQRCodeInstructionLabel:v17];

        v18 = [(CAMFullscreenViewfinder *)self qrCodeInstructionLabel];
      }
    }

    else if (a3 == 3)
    {
      v27 = [(CAMFullscreenViewfinder *)self nightModeInstructionLabel];

      if (v27)
      {
        goto LABEL_39;
      }

      v28 = objc_alloc_init(CAMNightModeInstructionLabel);
      [(CAMFullscreenViewfinder *)self _setNightModeInstructionLabel:v28];

      v18 = [(CAMFullscreenViewfinder *)self nightModeInstructionLabel];
    }

    else
    {
      if (a3 != 4)
      {
        v8 = [(CAMFullscreenViewfinder *)self imageAnalysisInstructionLabel];

        if (!v8)
        {
          v9 = objc_alloc_init(CAMImageAnalysisInstructionLabel);
          [(CAMFullscreenViewfinder *)self _setImageAnalysisInstructionLabel:v9];

          v10 = [(CAMFullscreenViewfinder *)self imageAnalysisInstructionLabel];
          v11 = self;

          v12 = 0;
          v43 = v11;
          goto LABEL_34;
        }

LABEL_39:
        v7 = v43;
        goto LABEL_40;
      }

      v35 = [(CAMFullscreenViewfinder *)self flashCompromisedInstructionLabel];

      if (v35)
      {
        goto LABEL_39;
      }

      v36 = objc_alloc_init(CAMFlashCompromisedInstructionLabel);
      [(CAMFullscreenViewfinder *)self _setFlashCompromisedInstructionLabel:v36];

      v18 = [(CAMFullscreenViewfinder *)self flashCompromisedInstructionLabel];
    }

    goto LABEL_33;
  }

  if (a3 <= 7)
  {
    v43 = v7;
    if (a3 == 6)
    {
      v25 = [(CAMFullscreenViewfinder *)self freeResourcesInstructionLabel];

      if (v25)
      {
        goto LABEL_39;
      }

      v26 = objc_alloc_init(CAMFreeResourcesInstructionLabel);
      [(CAMFullscreenViewfinder *)self _setFreeResourcesInstructionLabel:v26];

      v15 = [(CAMFullscreenViewfinder *)self freeResourcesInstructionLabel];
      goto LABEL_24;
    }

    v19 = [(CAMFullscreenViewfinder *)self deviceTooHotInstructionLabel];

    if (v19)
    {
      goto LABEL_39;
    }

    v20 = objc_alloc_init(CAMDeviceTooHotInstructionLabel);
    [(CAMFullscreenViewfinder *)self _setDeviceTooHotInstructionLabel:v20];

    v18 = [(CAMFullscreenViewfinder *)self deviceTooHotInstructionLabel];
LABEL_33:
    v10 = v18;
    v12 = 0;
LABEL_34:
    if (v10)
    {
      [v10 setUserInteractionEnabled:v12];
      [v10 setStyle:1];
      [v10 setDelegate:self];
      [(CAMFullscreenViewfinder *)v43 addSubview:v10];
      v39 = [(CAMFullscreenViewfinder *)self _instructionLabelByValue];
      v40 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      [v39 setObject:v10 forKeyedSubscript:v40];

      if (v4)
      {
        [(CAMFullscreenViewfinder *)self _createdPrimaryInstructionLabels];
      }

      else
      {
        [(CAMFullscreenViewfinder *)self _createdSecondaryInstructionLabels];
      }
      v41 = ;
      [v41 addObject:v10];

      v42 = [(CAMFullscreenViewfinder *)self delegate];
      [v42 fullscreenViewfinder:self didCreateInstructionLabel:a3];
    }

    goto LABEL_39;
  }

  if (a3 == 8)
  {
    v43 = v7;
    v29 = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];

    if (v29)
    {
      goto LABEL_39;
    }

    v30 = objc_alloc_init(CAMSpatialCaptureInstructionLabel);
    [(CAMFullscreenViewfinder *)self _setSpatialCaptureInstructionLabel:v30];

    v31 = [(CAMFullscreenViewfinder *)self stereoCaptureStatus];
    v32 = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];
    [v32 setStereoCaptureStatus:v31];

    v33 = [(CAMFullscreenViewfinder *)self useHoldStillStereoLowLightInstruction];
    v34 = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];
    [v34 setUseHoldStillLowLightInstruction:v33];

    v18 = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];
    goto LABEL_33;
  }

  if (a3 == 9)
  {
    if (self->_smartStyleCategoryInstructionLabel)
    {
      goto LABEL_40;
    }

    v43 = v7;
    v37 = objc_alloc_init(CAMSmartStyleCategoryInstructionLabel);
    smartStyleCategoryInstructionLabel = self->_smartStyleCategoryInstructionLabel;
    self->_smartStyleCategoryInstructionLabel = v37;

    v18 = self->_smartStyleCategoryInstructionLabel;
    goto LABEL_33;
  }

  if (a3 == 10 && !self->_cleanLensesInstructionLabel)
  {
    v43 = v7;
    v13 = objc_alloc_init(CAMCleanLensesInstructionLabel);
    cleanLensesInstructionLabel = self->_cleanLensesInstructionLabel;
    self->_cleanLensesInstructionLabel = v13;

    v15 = self->_cleanLensesInstructionLabel;
LABEL_24:
    v10 = v15;
    v12 = 1;
    goto LABEL_34;
  }

LABEL_40:
}

- (id)_visibleInstructionLabelForInstructionLabelValue:(int64_t)a3
{
  v4 = [(CAMFullscreenViewfinder *)self _instructionLabelByValue];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (void)setVisibleInstructionLabel:(int64_t)a3 visibleSecondaryInstructionLabel:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  if (*&self->_visibleInstructionLabel != __PAIR128__(a4, a3))
  {
    [(CAMFullscreenViewfinder *)self _createViewIfNeededForInstructionLabel:a3 isPrimary:1];
    [(CAMFullscreenViewfinder *)self _createViewIfNeededForInstructionLabel:a4 isPrimary:0];
    if (v5)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    visibleInstructionLabel = self->_visibleInstructionLabel;
    visibleSecondaryInstructionLabel = self->_visibleSecondaryInstructionLabel;
    self->_visibleInstructionLabel = a3;
    self->_visibleSecondaryInstructionLabel = a4;
    if (a3 && !visibleInstructionLabel || a4 && !visibleSecondaryInstructionLabel)
    {
      [(CAMFullscreenViewfinder *)self _updateGeometryForElapsedTimeAndInstructionLabels];
    }

    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v5];
  }
}

- (unint64_t)_badgeFontStyle
{
  v2 = +[CAMCaptureCapabilities capabilities];
  v3 = [v2 sfCameraFontSupported];

  return v3;
}

- (void)_transitionView:(id)a3 fromOrientation:(int64_t)a4 toOrientation:(int64_t)a5
{
  if (a3)
  {
    v5 = ((a5 - 1) | (a4 - 1)) < 2;
    v6 = a3;
    v8 = CAMSnapshotForFadingOrientationTransition(v6, v5);
    v7 = [v6 superview];

    [v7 addSubview:v8];
  }
}

- (void)_transitionView:(id)a3 isFlippingInPlace:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = CAMSnapshotForFadingOrientationTransition(v5, v4);
    v6 = [v5 superview];

    [v6 addSubview:v7];
  }
}

- (void)setControlDrawerVisible:(BOOL)a3 modeUIVisible:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  if (self->_controlDrawerVisible != a3 || self->_modeUIVisible != a4)
  {
    if (a5)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_controlDrawerVisible = a3;
    self->_modeUIVisible = a4;

    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v5];
  }
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v117 = *MEMORY[0x1E69E9840];
  orientation = self->_orientation;
  if (orientation != a3)
  {
    v5 = a4;
    if (a4)
    {
      v8 = 0.3;
    }

    else
    {
      v8 = 0.0;
    }

    self->_orientation = a3;
    v9 = [(CAMFullscreenViewfinder *)self controlDrawer];
    [v9 setOrientation:a3 animated:v5];

    v10 = [(CAMFullscreenViewfinder *)self shutterControl];
    [v10 setOrientation:a3 animated:v5];

    v11 = [(CAMFullscreenViewfinder *)self timerIndicator];
    [v11 setOrientation:a3 animated:v5];

    v12 = [(CAMFullscreenViewfinder *)self spotlightControlPanel];
    [v12 setOrientation:a3 animated:v5];

    v13 = [(CAMFullscreenViewfinder *)self flipAspectRatioButton];
    [v13 setOrientation:a3 animated:v5];

    v14 = [(CAMFullscreenViewfinder *)self lightingControl];
    [v14 setOrientation:a3];

    v15 = [(CAMFullscreenViewfinder *)self photoVideoModeSwitch];
    [v15 setOrientation:a3 animated:v5];

    v16 = [(CAMFullscreenViewfinder *)self _descriptionOverlayViewByKey];
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = __51__CAMFullscreenViewfinder_setOrientation_animated___block_invoke;
    v112[3] = &__block_descriptor_41_e55_v32__0___NSCopying__8__CAMDescriptionOverlayView_16_B24l;
    v112[4] = a3;
    v113 = v5;
    [v16 enumerateKeysAndObjectsUsingBlock:v112];

    v17 = [(CAMFullscreenViewfinder *)self disabledModeOverlayView];
    [v17 setOrientation:a3 animated:v5];

    v18 = [(CAMFullscreenViewfinder *)self imageAnalysisButton];
    [(CAMFullscreenViewfinder *)self frameForReticleViewport];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __51__CAMFullscreenViewfinder_setOrientation_animated___block_invoke_2;
    v105[3] = &unk_1E76F7910;
    v105[4] = self;
    v107 = v19;
    v108 = v21;
    v109 = v23;
    v110 = v25;
    v60 = v18;
    v106 = v60;
    v111 = a3;
    [CAMView animateIfNeededWithDuration:v105 animations:v8];
    v64 = [(CAMFullscreenViewfinder *)self badgeTray];
    v27 = [(CAMFullscreenViewfinder *)self lightingNameBadge];
    v28 = [(CAMFullscreenViewfinder *)self filterNameBadge];
    v29 = [(CAMFullscreenViewfinder *)self smartStyleNameBadge];
    v30 = [(CAMFullscreenViewfinder *)self elapsedTimeView];
    [(CAMFullscreenViewfinder *)self machineReadableCodeButton];
    v63 = v62 = v27;
    v61 = v30;
    if (v5)
    {
      [(CAMFullscreenViewfinder *)self _transitionView:v64 fromOrientation:orientation toOrientation:a3];
      if ([(CAMFullscreenViewfinder *)self isElapsedTimeViewVisible])
      {
        [(CAMFullscreenViewfinder *)self _transitionView:v30 fromOrientation:orientation toOrientation:a3];
      }

      v31 = [(CAMFullscreenViewfinder *)self _visibleInstructionLabelForInstructionLabelValue:[(CAMFullscreenViewfinder *)self visibleInstructionLabel]];
      if (v31)
      {
        [(CAMFullscreenViewfinder *)self _transitionView:v31 fromOrientation:orientation toOrientation:a3];
      }

      v32 = [(CAMFullscreenViewfinder *)self _visibleInstructionLabelForInstructionLabelValue:[(CAMFullscreenViewfinder *)self visibleSecondaryInstructionLabel]];
      if (v32)
      {
        [(CAMFullscreenViewfinder *)self _transitionView:v32 fromOrientation:orientation toOrientation:a3];
      }

      if ([(CAMFullscreenViewfinder *)self _showFilterNameBadge])
      {
        [(CAMFullscreenViewfinder *)self _transitionView:v28 fromOrientation:orientation toOrientation:a3];
      }

      if ([(CAMFullscreenViewfinder *)self _showSmartStyleNameBadge])
      {
        [(CAMFullscreenViewfinder *)self _transitionView:v29 fromOrientation:orientation toOrientation:a3];
      }

      if ([(CAMFullscreenViewfinder *)self _showSemanticStylePicker])
      {
        v65 = v29;
        v66 = v28;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v33 = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
        v34 = [v33 countByEnumeratingWithState:&v101 objects:v116 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v102;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v102 != v36)
              {
                objc_enumerationMutation(v33);
              }

              [(CAMFullscreenViewfinder *)self _transitionView:*(*(&v101 + 1) + 8 * i) fromOrientation:orientation toOrientation:a3];
            }

            v35 = [v33 countByEnumeratingWithState:&v101 objects:v116 count:16];
          }

          while (v35);
        }

        v30 = v61;
        v27 = v62;
        v28 = v66;
        v29 = v65;
      }

      if (v63)
      {
        [(CAMFullscreenViewfinder *)self _transitionView:v63 fromOrientation:orientation toOrientation:a3];
      }

      v38 = [(CAMFullscreenViewfinder *)self _showLandscapeLightingBadge];
      if (((orientation - 3) | (a3 - 3)) <= 1 && v38)
      {
        [(CAMFullscreenViewfinder *)self _transitionView:v27 fromOrientation:orientation toOrientation:a3];
      }
    }

    v39 = [(CAMFullscreenViewfinder *)self isElapsedTimeViewVisible];
    v40 = [v30 layer];
    v41 = [v40 animationForKey:@"opacity"];
    v42 = v41 == 0 || v39;

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v43 = [(CAMFullscreenViewfinder *)self _layout];
    v44 = [(CAMFullscreenViewfinder *)self isSystemOverlayVisible];
    if (v43)
    {
      [v43 geometryForElapsedTimeView:v30 viewportFrame:a3 orientation:v44 systemOverlayVisible:{v20, v22, v24, v26}];
    }

    else
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
    }

    if (v42)
    {
      v91 = v97;
      v92 = v98;
      v93 = v99;
      v94 = v100;
      v89 = v95;
      v90 = v96;
      CAMViewSetGeometry(v30, &v89);
    }

    [(CAMFullscreenViewfinder *)self _geometryForBadgeTray];
    CAMViewSetGeometry(v64, &v89);
    [(CAMFullscreenViewfinder *)self _geometryForLandscapeLightingBadge];
    CAMViewSetGeometry(v27, &v89);
    [(CAMFullscreenViewfinder *)self _geometryForBottomCenteredView:v28];
    CAMViewSetGeometry(v28, &v89);
    [(CAMFullscreenViewfinder *)self _geometryForSmartStyleNameBadge:v29];
    CAMViewSetGeometry(v29, &v89);
    [(CAMFullscreenViewfinder *)self _geometryForMRCButton];
    CAMViewSetGeometry(v63, &v89);
    [(CAMFullscreenViewfinder *)self _layoutSemanticStyleMaskedBadges];
    if (v39)
    {
      v91 = v97;
      v92 = v98;
      v93 = v99;
      v94 = v100;
      v45 = v95;
      v46 = v96;
    }

    else
    {
      v91 = *&CAMViewGeometryZero[32];
      v92 = *&CAMViewGeometryZero[48];
      v93 = *&CAMViewGeometryZero[64];
      v94 = *&CAMViewGeometryZero[80];
      v45 = *CAMViewGeometryZero;
      v46 = *&CAMViewGeometryZero[16];
    }

    v89 = v45;
    v90 = v46;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v47 = [(CAMFullscreenViewfinder *)self _createdPrimaryInstructionLabels];
    v48 = [v47 countByEnumeratingWithState:&v85 objects:v115 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v86;
      do
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v86 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = *(*(&v85 + 1) + 8 * j);
          v78[3] = *&CAMViewGeometryZero[48];
          v78[4] = *&CAMViewGeometryZero[64];
          v78[5] = *&CAMViewGeometryZero[80];
          memset(v78, 0, 48);
          v74 = v91;
          v75 = v92;
          v76 = v93;
          v77 = v94;
          v72 = v89;
          v73 = v90;
          [(CAMFullscreenViewfinder *)self _geometryForInstructionLabel:v52 belowInstructionLabelGeometry:v78 elapsedTimeViewGeometry:&v72];
          CAMViewSetGeometry(v52, &v79);
        }

        v49 = [v47 countByEnumeratingWithState:&v85 objects:v115 count:16];
      }

      while (v49);
    }

    v53 = [(CAMFullscreenViewfinder *)self _visibleInstructionLabelForInstructionLabelValue:[(CAMFullscreenViewfinder *)self visibleInstructionLabel]];
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    CAMViewGetGeometry(v53, &v79);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v54 = [(CAMFullscreenViewfinder *)self _createdSecondaryInstructionLabels];
    v55 = [v54 countByEnumeratingWithState:&v68 objects:v114 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v69;
      do
      {
        for (k = 0; k != v56; ++k)
        {
          if (*v69 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = *(*(&v68 + 1) + 8 * k);
          v74 = v81;
          v75 = v82;
          v76 = v83;
          v77 = v84;
          v72 = v79;
          v73 = v80;
          v67[2] = v91;
          v67[3] = v92;
          v67[4] = v93;
          v67[5] = v94;
          v67[0] = v89;
          v67[1] = v90;
          [(CAMFullscreenViewfinder *)self _geometryForInstructionLabel:v59 belowInstructionLabelGeometry:&v72 elapsedTimeViewGeometry:v67];
          CAMViewSetGeometry(v59, v78);
        }

        v56 = [v54 countByEnumeratingWithState:&v68 objects:v114 count:16];
      }

      while (v56);
    }

    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:v5];
  }
}

void __51__CAMFullscreenViewfinder_setOrientation_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) textInteractionInsert];
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 _geometryForTextInteractionInsertWithViewport:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
  }

  CAMViewSetGeometry(v2, &v7);
  [v2 layoutIfNeeded];
  v4 = *(a1 + 80);
  switch(v4)
  {
    case 1:
      v5 = 0.0;
      break;
    case 3:
      v5 = 1.57079633;
      break;
    case 4:
      v5 = -1.57079633;
      break;
    default:
      v5 = 3.14159265;
      if (v4 != 2)
      {
        v5 = 0.0;
      }

      break;
  }

  [*(a1 + 40) setGlyphRotation:{v5, v7, v8, v9, v10, v11, v12}];
  v6 = [v2 actionInfoView];
  if (v6)
  {
    [*(a1 + 32) _frameForActionInfoView];
    [v6 setFrame:?];
  }

  [*(a1 + 32) _applyTextInsertContentInsets];
}

- (void)setDeviceOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_deviceOrientation != a3)
  {
    v5 = a4;
    self->_deviceOrientation = a3;
    v9 = [(CAMFullscreenViewfinder *)self _orientationInstructionView];
    v8 = v5 && [(CAMFullscreenViewfinder *)self isOrientationInstructionVisible];
    [v9 setOrientation:a3 animated:v8];
  }
}

- (void)setShutterControlVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_shutterControlVisible != a3)
  {
    self->_shutterControlVisible = a3;
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:a4];
  }
}

- (void)setFlipButtonVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_flipButtonVisible != a3)
  {
    self->_flipButtonVisible = a3;
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:a4];
  }
}

- (void)setPhotoVideoModeSwitchVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_photoVideoModeSwitchVisible != a3)
  {
    self->_photoVideoModeSwitchVisible = a3;
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:a4];
  }
}

- (void)setSystemOverlayVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_systemOverlayVisible != a3)
  {
    self->_systemOverlayVisible = a3;
    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:a4];
  }
}

- (void)setZoomControlVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_zoomControlVisible != a3)
  {
    v4 = a4;
    if (a4)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_zoomControlVisible = a3;
    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v4];

    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:v4];
  }
}

- (void)setZoomStyle:(unint64_t)a3
{
  if (self->_zoomStyle == a3)
  {
    return;
  }

  self->_zoomStyle = a3;
  if (a3 == 1)
  {
    v7 = [[CAMZoomControl alloc] initWithLayoutStyle:3];
    [(CAMFullscreenViewfinder *)self _setZoomControl:v7];

    self->_zoomControlVisible = 1;
    v8 = [(CAMFullscreenViewfinder *)self _contentViewBelowShutter];
    v9 = [(CAMFullscreenViewfinder *)self zoomControl];
    [v8 addSubview:v9];

    [(CAMFullscreenViewfinder *)self _updateZoomControlForLayoutConflictsAnimated:0];
  }

  else
  {
    if (a3 == 2)
    {
      v4 = [(CAMFullscreenViewfinder *)self zoomControl];
      [v4 removeFromSuperview];

      [(CAMFullscreenViewfinder *)self _setZoomControl:0];
      v5 = [[CAMZoomSlider alloc] initWithLayoutStyle:0];
      [(CAMFullscreenViewfinder *)self _setZoomSlider:v5];

      v12 = [(CAMFullscreenViewfinder *)self _contentView];
      v6 = [(CAMFullscreenViewfinder *)self zoomSlider];
      [v12 addSubview:v6];

      return;
    }

    v10 = [(CAMFullscreenViewfinder *)self zoomControl];
    [v10 removeFromSuperview];

    [(CAMFullscreenViewfinder *)self _setZoomControl:0];
  }

  v11 = [(CAMFullscreenViewfinder *)self zoomSlider];
  [v11 removeFromSuperview];

  [(CAMFullscreenViewfinder *)self _setZoomSlider:0];
}

- (void)_updateZoomControlForLayoutConflictsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMFullscreenViewfinder *)self visibleSuggestionButtonType];
  v6 = [(CAMFullscreenViewfinder *)self isImageAnalysisButtonVisible]|| [(CAMFullscreenViewfinder *)self _showPortraitControls];
  v7 = [(CAMFullscreenViewfinder *)self zoomControl];
  [v7 setHasPlatterConflictLeft:v5 != 0 animated:v3];

  v8 = [(CAMFullscreenViewfinder *)self zoomControl];
  [v8 setHasPlatterConflictRight:v6 animated:v3];
}

- (void)setVisiblePreviewSuggestionButton:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_visibleSuggestionButtonType != a3)
  {
    self->_visibleSuggestionButtonType = a3;
    [(CAMFullscreenViewfinder *)self _updateZoomControlForLayoutConflictsAnimated:a4];
  }
}

- (void)setElapsedTimeViewVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_elapsedTimeViewVisible != a3)
  {
    v4 = a4;
    if (a3)
    {
      v7 = [(CAMFullscreenViewfinder *)self elapsedTimeView];
      if (v7)
      {
      }

      else if ([(CAMFullscreenViewfinder *)self canCreateElapsedTimeView])
      {
        v8 = objc_alloc_init(CAMElapsedTimeView);
        elapsedTimeView = self->_elapsedTimeView;
        self->_elapsedTimeView = v8;

        [(CAMElapsedTimeView *)self->_elapsedTimeView setDelegate:self];
        v10 = [(CAMFullscreenViewfinder *)self _modulatingContentView];
        [v10 addSubview:self->_elapsedTimeView];

        if (v4)
        {
          [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:0];
        }
      }

      [(CAMFullscreenViewfinder *)self frameForReticleViewport];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [(CAMFullscreenViewfinder *)self elapsedTimeView];
      v20 = [(CAMFullscreenViewfinder *)self _layout];
      v21 = self->_elapsedTimeView;
      v22 = [(CAMFullscreenViewfinder *)self orientation];
      v23 = [(CAMFullscreenViewfinder *)self isSystemOverlayVisible];
      if (v20)
      {
        [v20 geometryForElapsedTimeView:v21 viewportFrame:v22 orientation:v23 systemOverlayVisible:{v12, v14, v16, v18}];
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
      }

      CAMViewSetGeometry(v19, &v24);
    }

    if (v4)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_elapsedTimeViewVisible = a3;
    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v4, v24, v25, v26, v27, v28, v29];
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:v4];
  }
}

- (void)createTimerIndicatorView
{
  v4 = objc_alloc_init(CAMTimerIndicatorView);
  [(CAMTimerIndicatorView *)v4 setOrientation:[(CAMFullscreenViewfinder *)self orientation] animated:0];
  v3 = [(CAMFullscreenViewfinder *)self _contentView];
  [v3 addSubview:v4];

  [(CAMFullscreenViewfinder *)self _setTimerIndicator:v4];
}

- (void)setTimerIndicatorVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_timerIndicatorVisible != a3)
  {
    v4 = a4;
    if (a4)
    {
      [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:0];
    }

    self->_timerIndicatorVisible = a3;

    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:v4];
  }
}

- (void)setPreviewAlignmentGuideVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_previewAlignmentGuideVisible != a3)
  {
    v4 = a4;
    if (a3 && !self->_previewAlignmentGuide)
    {
      v7 = objc_alloc_init(CAMPreviewAlignmentGuide);
      [(CAMFullscreenViewfinder *)self _setPreviewAlignmentGuide:v7];
      v8 = [(CAMFullscreenViewfinder *)self _contentView];
      [v8 addSubview:v7];

      if (v4)
      {
        [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:0];
      }
    }

    self->_previewAlignmentGuideVisible = a3;

    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:v4];
  }
}

- (void)setPreviewView:(id)a3
{
  v5 = a3;
  previewView = self->_previewView;
  if (previewView != v5)
  {
    v13 = v5;
    v7 = [(CAMPreviewView *)previewView superview];

    if (v7 == self)
    {
      [(CAMPreviewView *)self->_previewView removeFromSuperview];
    }

    objc_storeStrong(&self->_previewView, a3);
    v8 = [(CAMFullscreenViewfinder *)self interfaceModulation];
    v9 = [(CAMPreviewView *)self->_previewView overlayContainerView];
    [v9 setInterfaceModulation:v8];

    v10 = [(CAMPreviewView *)v13 videoPreviewLayer];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    [(CAMFullscreenViewfinder *)self _setOverCapturePreviewLayer:v11];
    v12 = [(CAMFullscreenViewfinder *)self _previewContainerView];
    [v12 addSubview:v13];

    [(CAMFullscreenViewfinder *)self _updateReticle];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setPanoramaView:(id)a3
{
  v5 = a3;
  panoramaView = self->_panoramaView;
  if (panoramaView != v5)
  {
    v9 = v5;
    v7 = [(CAMPanoramaView *)panoramaView superview];

    if (v7 == self)
    {
      [(CAMPanoramaView *)self->_panoramaView removeFromSuperview];
    }

    objc_storeStrong(&self->_panoramaView, a3);
    v8 = [(CAMFullscreenViewfinder *)self _modulatingContentView];
    [v8 addSubview:v9];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setPanoramaCaptureSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CAMFullscreenViewfinder *)self panoramaView];
  [v6 setPanoramaCaptureSize:{width, height}];

  [(CAMFullscreenViewfinder *)self setNeedsLayout];
}

- (CGSize)panoramaCaptureSize
{
  v2 = [(CAMFullscreenViewfinder *)self panoramaView];
  [v2 panoramaCaptureSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setTrueVideoState:(unint64_t)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_trueVideoState != a3)
  {
    self->_trueVideoState = a3;
    if (a3 > 3)
    {
      v3 = 0;
    }

    else
    {
      v3 = off_1E76F79F8[a3];
    }

    v4 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "True Video state updated to: %{public}@", &v5, 0xCu);
    }
  }
}

- (void)setFlipAspectRatioButtonVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_flipAspectRatioButtonVisible != a3)
  {
    v4 = a4;
    if (a4)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_flipAspectRatioButtonVisible = a3;
    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v4];
    v7 = [(CAMFullscreenViewfinder *)self flipAspectRatioButton];

    if (v7)
    {

      [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:v4];
    }

    else
    {
      v10 = objc_alloc_init(CAMFlipAspectRatioButton);
      [(CAMFullscreenViewfinder *)self _setFlipAspectRatioButton:?];
      v8 = [(CAMFullscreenViewfinder *)self delegate];
      [v8 fullScreenViewfinderDidCreateFlipAspectRatioButton:self];

      if (v4)
      {
        [(CAMFlipAspectRatioButton *)v10 setAlpha:0.0];
      }

      [(CAMFlipAspectRatioButton *)v10 setOrientation:[(CAMFullscreenViewfinder *)self orientation]];
      v9 = [(CAMFullscreenViewfinder *)self _contentView];
      [v9 addSubview:v10];

      [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:v4];
    }
  }
}

- (void)setOffsetZoomButtonForFlipAspectRatioButton:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_offsetZoomButtonForFlipAspectRatioButton != a3)
  {
    v4 = a4;
    if (a4)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_offsetZoomButtonForFlipAspectRatioButton = a3;

    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v4];
  }
}

- (void)setChromeView:(id)a3
{
  v5 = a3;
  if (self->_chromeView != v5)
  {
    v8 = v5;
    v6 = [(CAMFullscreenViewfinder *)self _chromeContentView];
    v7 = [(UIView *)self->_chromeView superview];

    if (v7 == v6)
    {
      [(UIView *)self->_chromeView removeFromSuperview];
    }

    objc_storeStrong(&self->_chromeView, a3);
    [v6 addSubview:v8];
    [(CAMFullscreenViewfinder *)self setNeedsLayout];

    v5 = v8;
  }
}

- (void)setExternalChromeShutterButtonFrame:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_externalChromeShutterButtonFrame = &self->_externalChromeShutterButtonFrame;
  if (!CGRectEqualToRect(self->_externalChromeShutterButtonFrame, a3))
  {
    v11 = [(CAMFullscreenViewfinder *)self _isValidExternalChromeShutterButtonFrame]& v4;
    if (v11 == 1)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    p_externalChromeShutterButtonFrame->origin.x = x;
    p_externalChromeShutterButtonFrame->origin.y = y;
    p_externalChromeShutterButtonFrame->size.width = width;
    p_externalChromeShutterButtonFrame->size.height = height;

    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v11];
  }
}

- (void)setExternalChromeSmartStyleControlsVisible:(BOOL)a3
{
  if (self->_externalChromeSmartStyleControlsVisible != a3)
  {
    self->_externalChromeSmartStyleControlsVisible = a3;
    [CAMFullscreenViewfinder _setSmartStyleControlsVisible:"_setSmartStyleControlsVisible:animated:notifyDelegate:" animated:? notifyDelegate:?];
  }
}

- (void)setExternalChromeSemanticStyleControlsVisible:(BOOL)a3
{
  if (self->_externalChromeSemanticStyleControlsVisible != a3)
  {
    self->_externalChromeSemanticStyleControlsVisible = a3;
    [CAMFullscreenViewfinder _updateForSemanticStyleControlsDidChangeVisibility:"_updateForSemanticStyleControlsDidChangeVisibility:animated:" animated:?];
  }
}

- (void)setExternalChromeFilterScrubberVisible:(BOOL)a3
{
  if (self->_externalChromeFilterScrubberVisible != a3)
  {
    self->_externalChromeFilterScrubberVisible = a3;
    [(CAMFullscreenViewfinder *)self _loadFilterControlsIfNeeded];

    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:1];
  }
}

- (void)setExternalChromeTopInset:(double)a3 animated:(BOOL)a4
{
  if (self->_externalChromeTopInset != a3)
  {
    v5 = a4;
    if (a4)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_externalChromeTopInset = a3;

    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:v5];
  }
}

- (void)setDescriptionOverlayView:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAMFullscreenViewfinder *)self _descriptionOverlayViewByKey];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9 != v6)
  {
    v11 = [v9 superview];

    if (v11 == self)
    {
      v12 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__CAMFullscreenViewfinder_setDescriptionOverlayView_forKey___block_invoke;
      block[3] = &unk_1E76F7938;
      v14 = v8;
      v15 = v7;
      v16 = v10;
      dispatch_after(v12, MEMORY[0x1E69E96A0], block);
    }

    [v8 setObject:v6 forKeyedSubscript:v7];
    [v6 setOrientation:{-[CAMFullscreenViewfinder orientation](self, "orientation")}];
    [v6 setBlackoutFrameVisible:0];
    [(CAMFullscreenViewfinder *)self _insertBackgroundSubview:v6];
  }
}

void __60__CAMFullscreenViewfinder_setDescriptionOverlayView_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 48);

  if (v2 != v3)
  {
    v4 = *(a1 + 48);

    [v4 removeFromSuperview];
  }
}

- (id)descriptionOverlayViewForKey:(id)a3
{
  v4 = a3;
  v5 = [(CAMFullscreenViewfinder *)self _descriptionOverlayViewByKey];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)setDisabledModeOverlayView:(id)a3
{
  v5 = a3;
  disabledModeOverlayView = self->_disabledModeOverlayView;
  if (disabledModeOverlayView != v5)
  {
    v8 = v5;
    v7 = [(CAMDisabledModeOverlayView *)disabledModeOverlayView superview];

    if (v7 == self)
    {
      [(CAMDisabledModeOverlayView *)self->_disabledModeOverlayView removeFromSuperview];
    }

    objc_storeStrong(&self->_disabledModeOverlayView, a3);
    [(CAMDisabledModeOverlayView *)self->_disabledModeOverlayView setOrientation:[(CAMFullscreenViewfinder *)self orientation]];
    disabledModeOverlayView = [(CAMFullscreenViewfinder *)self _insertBackgroundSubview:v8];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](disabledModeOverlayView, v5);
}

- (void)setMaterial:(int64_t)a3 withDuration:(double)a4
{
  if (self->_material != a3)
  {
    self->_material = a3;
    v8 = [(CAMFullscreenViewfinder *)self _reticleView];
    [v8 setMaterial:a3 withDuration:a4];

    v9 = [(CAMFullscreenViewfinder *)self semanticStylePicker];
    [v9 setMaterial:a3 withDuration:a4];

    v10 = [(CAMFullscreenViewfinder *)self smartStylePicker];
    [v10 setMaterial:a3 withDuration:a4];

    [(CAMFullscreenViewfinder *)self _updateLightingControlClipping];
  }
}

- (unint64_t)interfaceModulation
{
  v2 = [(CAMFullscreenViewfinder *)self _modulatingContentView];
  v3 = [v2 interfaceModulation];

  return v3;
}

- (void)setInterfaceModulation:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(CAMFullscreenViewfinder *)self _modulatingContentView];
  v8 = v7;
  if (a3 - 1 <= 1 && !v7)
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CAMFullscreenViewfinder setInterfaceModulation:v9 animated:?];
    }
  }

  [v8 setInterfaceModulation:a3 animated:v4];
  v10 = [(CAMFullscreenViewfinder *)self previewView];
  v11 = [v10 overlayContainerView];
  [v11 setInterfaceModulation:a3 animated:v4];
}

- (void)setImageAnalysisButtonVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_imageAnalysisButtonVisible != a3)
  {
    v4 = a4;
    self->_imageAnalysisButtonVisible = a3;
    [(CAMFullscreenViewfinder *)self _updateZoomControlForLayoutConflictsAnimated:a4];
    v6 = [(CAMFullscreenViewfinder *)self imageAnalysisButton];

    if (v6)
    {

      [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:v4];
    }
  }
}

- (void)setImageAnalysisButton:(id)a3
{
  v11 = a3;
  v5 = self;
  imageAnalysisButton = v5->_imageAnalysisButton;
  if (imageAnalysisButton == v11)
  {
    v7 = [(CAMImageAnalysisButton *)v11 superview];

    if (v7 == v5)
    {
      goto LABEL_9;
    }

    imageAnalysisButton = v5->_imageAnalysisButton;
  }

  v8 = [(CAMImageAnalysisButton *)imageAnalysisButton superview];
  if (v8 == v5)
  {
    v9 = v5->_imageAnalysisButton;

    if (v9 != v11)
    {
      [(CAMImageAnalysisButton *)v5->_imageAnalysisButton removeFromSuperview];
    }
  }

  else
  {
  }

  objc_storeStrong(&v5->_imageAnalysisButton, a3);
  [(VKImageAnalysisButton *)v5->_imageAnalysisButton setInhibitGlassMaterial:1];
  v10 = [MEMORY[0x1E69DC888] clearColor];
  [(VKImageAnalysisButton *)v5->_imageAnalysisButton setCameraModeBackgroundColor:v10];

  [(VKImageAnalysisButton *)v5->_imageAnalysisButton setFunction:1];
  [(CAMFullscreenViewfinder *)v5 addSubview:v11];
  [(CAMFullscreenViewfinder *)v5 _updateSubviewsVisibilityAnimated:0];
LABEL_9:
}

- (void)setTextInteractionInsert:(id)a3
{
  v4 = a3;
  textInteractionInsert = self->_textInteractionInsert;
  if (textInteractionInsert != v4)
  {
    [(VKTextLiftingView *)textInteractionInsert removeFromSuperview];
    self->_textInteractionInsert = v4;
    v6 = self;
    v7 = [(CAMFullscreenViewfinder *)v6 imageAnalysisButton];
    if (v4)
    {
      [(CAMFullscreenViewfinder *)v6 insertSubview:v4 belowSubview:v7];
      [(CAMFullscreenViewfinder *)v6 frameForReticleViewport];
      [(CAMFullscreenViewfinder *)v6 _geometryForTextInteractionInsertWithViewport:?];
      CAMViewSetGeometry(v4, &v9);
      [v7 backgroundDiameter];
      [(VKTextLiftingView *)v4 setPreferredQuickActionButtonHeight:?];
      v8 = [(VKTextLiftingView *)v4 actionInfoView];
      if (v8)
      {
        [(CAMFullscreenViewfinder *)v6 _frameForActionInfoView];
        [v8 setFrame:?];
      }

      [(CAMFullscreenViewfinder *)v6 _applyTextInsertContentInsets];
    }
  }
}

- (void)adoptMachineReadableCodeButton:(id)a3 fromOriginalParent:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(CAMFullscreenViewfinder *)self machineReadableCodeButton];
  v11 = v10;
  if (v10 == v8)
  {
    v13 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CAMFullscreenViewfinder adoptMachineReadableCodeButton:v13 fromOriginalParent:? animated:?];
    }
  }

  else
  {
    if (v10)
    {
      [(CAMFullscreenViewfinder *)self dismissMachineReadableCodeButtonAnimated:v5];
    }

    [(CAMFullscreenViewfinder *)self _setMachineReadableCodeButton:v8];
    if (v9)
    {
      v12 = v5;
    }

    else
    {
      v12 = 0;
    }

    v13 = [(CAMFullscreenViewfinder *)self _modulatingContentView];
    if (v12)
    {
      [v8 center];
      [v9 convertPoint:v13 toView:?];
      [v8 setCenter:?];
    }

    else if (v5)
    {
      [v8 setAlpha:0.0];
    }

    [v8 setDismissable:1];
    [v8 setDelegate:self];
    [v13 addSubview:v8];
    if (v12)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __86__CAMFullscreenViewfinder_adoptMachineReadableCodeButton_fromOriginalParent_animated___block_invoke;
      v17[3] = &unk_1E76F77B0;
      v17[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v17 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
    }

    else if (v5)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __86__CAMFullscreenViewfinder_adoptMachineReadableCodeButton_fromOriginalParent_animated___block_invoke_2;
      v14[3] = &unk_1E76F7960;
      v15 = v8;
      v16 = self;
      [CAMView animateIfNeededWithDuration:v14 animations:0.3];
    }
  }
}

uint64_t __86__CAMFullscreenViewfinder_adoptMachineReadableCodeButton_fromOriginalParent_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 _updateSubviewsVisibilityAnimated:0];
}

- (void)dismissMachineReadableCodeButtonAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMFullscreenViewfinder *)self machineReadableCodeButton];
  if (v5)
  {
    [(CAMFullscreenViewfinder *)self _setMachineReadableCodeButton:0];
    if (v3)
    {
      v6 = 0.3;
    }

    else
    {
      v6 = 0.0;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__CAMFullscreenViewfinder_dismissMachineReadableCodeButtonAnimated___block_invoke;
    v12[3] = &unk_1E76F77B0;
    v13 = v5;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __68__CAMFullscreenViewfinder_dismissMachineReadableCodeButtonAnimated___block_invoke_2;
    v10 = &unk_1E76F7988;
    v11 = v13;
    [CAMView animateIfNeededWithDuration:v12 animations:&v7 completion:v6];
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:v3, v7, v8, v9, v10];
  }
}

- (void)machineReadableCodeButtonDidTapDismiss:(id)a3
{
  v4 = a3;
  v5 = [(CAMFullscreenViewfinder *)self machineReadableCodeButton];

  if (v5 == v4)
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Tapped to dismiss MRC button", v7, 2u);
    }

    [(CAMFullscreenViewfinder *)self dismissMachineReadableCodeButtonAnimated:1];
  }
}

- (void)removeInflightBlurAnimations
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(CAMFullscreenViewfinder *)self _previewContainerView];
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
  v2 = [(CAMFullscreenViewfinder *)self _previewContainerView];
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

- (id)touchingRecognizersToCancel
{
  v2 = [(CAMFullscreenViewfinder *)self controlDrawer];
  v3 = [v2 touchingRecognizersToCancel];

  return v3;
}

- (void)_iterateViewsForHUDManager:(id)a3 withItemFoundBlock:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [a3 locationOfAccessibilityGestureInView:self];
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x1E695DF70] array];
  if ([(CAMFullscreenViewfinder *)self isFlipButtonVisible])
  {
    v12 = [(CAMFullscreenViewfinder *)self flipButton];

    if (v12)
    {
      v13 = [(CAMFullscreenViewfinder *)self flipButton];
      [v11 addObject:v13];
    }
  }

  if ([(CAMFullscreenViewfinder *)self _showControlDrawer])
  {
    v14 = [(CAMFullscreenViewfinder *)self controlDrawer];

    if (v14)
    {
      v15 = [(CAMFullscreenViewfinder *)self controlDrawer];
      [v11 addObject:v15];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v22 + 1) + 8 * i);
        [v21 bounds];
        [(CAMFullscreenViewfinder *)self convertRect:v21 fromView:?];
        v28.x = v8;
        v28.y = v10;
        if (CGRectContainsPoint(v29, v28))
        {
          v6[2](v6, v21);
          goto LABEL_17;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

- (id)hudItemForAccessibilityHUDManager:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__CAMFullscreenViewfinder_hudItemForAccessibilityHUDManager___block_invoke;
  v8[3] = &unk_1E76F79B0;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(CAMFullscreenViewfinder *)self _iterateViewsForHUDManager:v5 withItemFoundBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __61__CAMFullscreenViewfinder_hudItemForAccessibilityHUDManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hudItemForAccessibilityHUDManager:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (void)selectedByAccessibilityHUDManager:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__CAMFullscreenViewfinder_selectedByAccessibilityHUDManager___block_invoke;
  v6[3] = &unk_1E76F79D8;
  v7 = v4;
  v5 = v4;
  [(CAMFullscreenViewfinder *)self _iterateViewsForHUDManager:v5 withItemFoundBlock:v6];
}

- (BOOL)shouldAccessibilityGestureBeginForHUDManager:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__CAMFullscreenViewfinder_shouldAccessibilityGestureBeginForHUDManager___block_invoke;
  v7[3] = &unk_1E76F79B0;
  v9 = &v10;
  v5 = v4;
  v8 = v5;
  [(CAMFullscreenViewfinder *)self _iterateViewsForHUDManager:v5 withItemFoundBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __72__CAMFullscreenViewfinder_shouldAccessibilityGestureBeginForHUDManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = v3 != 0;
  v4 = v3;
  if (objc_opt_respondsToSelector())
  {
    *(*(*(a1 + 40) + 8) + 24) = [v4 shouldAccessibilityGestureBeginForHUDManager:*(a1 + 32)];
  }
}

- (CAMFullscreenViewfinderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

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

- (CGRect)_viewportAnimatorViewportFrame
{
  x = self->__viewportAnimatorViewportFrame.origin.x;
  y = self->__viewportAnimatorViewportFrame.origin.y;
  width = self->__viewportAnimatorViewportFrame.size.width;
  height = self->__viewportAnimatorViewportFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)requestPreviewUpdateForSemanticStyleAnimated:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A3640000, log, OS_LOG_TYPE_ERROR, "Expecting a CAMSemanticStyle", buf, 2u);
}

- (void)setInterfaceModulation:(uint64_t)a1 animated:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Attempted to apply interface modulation to %{public}@ without configuring properly during initialization", &v5, 0xCu);
}

@end