@interface CAMFullscreenViewfinder
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForBadgeTray;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForBottomCenteredView:(SEL)view margins:(id)margins;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForBottomCenteredView:(SEL)view margins:(id)margins aroundFrame:(CGSize)frame;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForFilterNameBadge:(SEL)badge;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForInstructionLabel:(SEL)label belowInstructionLabelGeometry:(id)geometry elapsedTimeViewGeometry:(id *)viewGeometry;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForLandscapeLightingBadge;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForMRCButton;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForSmartStyleNameBadge:(SEL)badge;
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForTextInteractionInsertWithViewport:(SEL)viewport;
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
- (BOOL)isControlDrawerPresentedModallyWithControlType:(int64_t)type;
- (BOOL)isExposureSliderVisible;
- (BOOL)isIntensitySliderVisible;
- (BOOL)isNightModeSliderVisible;
- (BOOL)isReticleAnimating;
- (BOOL)isSmartStylePickerVisible;
- (BOOL)overCaptureGradientVisible;
- (BOOL)requestPreviewUpdateForSemanticStyleAnimated:(BOOL)animated;
- (BOOL)shouldAccessibilityGestureBeginForHUDManager:(id)manager;
- (CAMFullscreenViewfinder)initWithMetalContext:(id)context;
- (CAMFullscreenViewfinderDelegate)delegate;
- (CEKFluidBehaviorSettings)_viewportSettings;
- (CGRect)_frameForActionInfoView;
- (CGRect)_frameForContentClippingContainer;
- (CGRect)_frameForControlDrawer;
- (CGRect)_frameForExternalChromeTopBar;
- (CGRect)_frameForFlipButton;
- (CGRect)_frameForLightingControl;
- (CGRect)_frameForPreviewOverlaysInViewport:(CGRect)viewport;
- (CGRect)_frameForPreviewView;
- (CGRect)_frameForSpatialRecordingIndicatorWithElapsedTimeViewGeometry:(id *)geometry orientation:(int64_t)orientation;
- (CGRect)_frameForSpotlightControlPanel;
- (CGRect)_imageAnalysisButtonAlignmentRectForCenterY:(double)y;
- (CGRect)_imageAnalysisButtonFrameForCenterY:(double)y;
- (CGRect)_imageAnalysisButtonFrameForZoomControl:(id)control zoomSlider:(id)slider;
- (CGRect)_viewportAnimatorRectPresentationValue;
- (CGRect)_viewportAnimatorRectValue;
- (CGRect)_viewportAnimatorViewportFrame;
- (CGRect)currentFourThreeViewportFrame;
- (CGRect)externalChromeShutterButtonFrame;
- (CGRect)frameForReticleViewport;
- (CGSize)panoramaCaptureSize;
- (double)_additionalBottomPaddingForLightingControl;
- (double)_centerYForZoomControl:(id)control zoomSlider:(id)slider;
- (double)_referenceYForControlsAboveShutterButton;
- (double)_trueVideoAnimationDuration;
- (double)_viewportAnimatorPercentComplete;
- (double)overCaptureGradientHeight;
- (double)previewAspectRatio;
- (id)_visibleInstructionLabelForInstructionLabelValue:(int64_t)value;
- (id)descriptionOverlayViewForKey:(id)key;
- (id)hudItemForAccessibilityHUDManager:(id)manager;
- (id)touchingRecognizersToCancel;
- (int64_t)_viewportAspectRatioForControlsOverPreview;
- (unint64_t)_badgeFontStyle;
- (unint64_t)interfaceModulation;
- (void)_animateQuietUIActive:(BOOL)active animations:(id)animations completion:(id)completion;
- (void)_applyTextInsertContentInsets;
- (void)_createViewIfNeededForInstructionLabel:(int64_t)label isPrimary:(BOOL)primary;
- (void)_didFinishChangingPreviewGeometry;
- (void)_ensureBlurFilterForContentView:(id)view;
- (void)_insertBackgroundSubview:(id)subview;
- (void)_insertStylePicker:(id)picker;
- (void)_iterateViewsForHUDManager:(id)manager withItemFoundBlock:(id)block;
- (void)_layoutPanoramaView;
- (void)_layoutSemanticStyleMaskedBadges;
- (void)_layoutSmartStyleNameBadge;
- (void)_layoutViewportWithFrame:(CGRect)frame previewFrame:(CGRect)previewFrame;
- (void)_layoutViewportWithFrame:(CGRect)frame previewFrame:(CGRect)previewFrame trueVideoTransitionPercentComplete:(double)complete smartFramingTransitionPercentComplete:(double)percentComplete;
- (void)_layoutZoomControlForExternalChrome;
- (void)_layoutZoomControls;
- (void)_layoutZoomSliderForExternalChrome;
- (void)_loadFilterControlsIfNeeded;
- (void)_loadPortraitControlsIfNeeded;
- (void)_loadSemanticStyleControlsIfNeeded;
- (void)_loadSmartStyleControlsIfNeeded;
- (void)_setNeedsLayoutAnimated:(BOOL)animated;
- (void)_setSmartStyleControlsVisible:(BOOL)visible animated:(BOOL)animated notifyDelegate:(BOOL)delegate;
- (void)_setViewportAnimatorFrame:(CGRect)frame withDuration:(double)duration timingCurve:(id)curve;
- (void)_setViewportAnimatorRectValue:(CGRect)value;
- (void)_transitionView:(id)view fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation;
- (void)_transitionView:(id)view isFlippingInPlace:(BOOL)place;
- (void)_updateContentView:(id)view forQuietUIActive:(BOOL)active;
- (void)_updateDisabledModeOverlayViewportFrame:(CGRect)frame;
- (void)_updateForLayoutCompleted;
- (void)_updateForSemanticStyleControlsDidChangeVisibility:(BOOL)visibility animated:(BOOL)animated;
- (void)_updateGeometryForElapsedTimeAndInstructionLabels;
- (void)_updateLightingControlClipping;
- (void)_updatePortraitControlsHighlightAnimated:(BOOL)animated;
- (void)_updatePreviewAlignmentGuideForViewportFrame:(CGRect)frame;
- (void)_updatePreviewLayerForPreviewFrame:(CGRect)frame viewportFrame:(CGRect)viewportFrame trueVideoTransitionPercentComplete:(double)complete smartFramingTransitionPercentComplete:(double)percentComplete;
- (void)_updateQuietUIAnimated:(BOOL)animated;
- (void)_updateReticle;
- (void)_updateReticleForViewportFrame:(CGRect)frame;
- (void)_updateSemanticStylePicker:(id)picker forViewportFrame:(CGRect)frame;
- (void)_updateSubviewsVisibilityAnimated:(BOOL)animated;
- (void)_updateTintColors;
- (void)_updateViewportVectorAnimatorWithInitialViewportFrame:(CGRect)frame destinationViewportFrame:(CGRect)viewportFrame response:(double)response;
- (void)_updateZoomControlForLayoutConflictsAnimated:(BOOL)animated;
- (void)adoptMachineReadableCodeButton:(id)button fromOriginalParent:(id)parent animated:(BOOL)animated;
- (void)animator:(id)animator didUpdateValuesForKeys:(id)keys;
- (void)controlDrawer:(id)drawer didChangeExpanded:(BOOL)expanded forControlType:(int64_t)type animated:(BOOL)animated updatePreferredDrawerControl:(BOOL)control;
- (void)createTimerIndicatorView;
- (void)dismissMachineReadableCodeButtonAnimated:(BOOL)animated;
- (void)dismissModalControlDrawerIfNeededForReason:(int64_t)reason;
- (void)layoutSubviews;
- (void)machineReadableCodeButtonDidTapDismiss:(id)dismiss;
- (void)prepareForResumingUsingCrossfade;
- (void)presentControlDrawerModally:(BOOL)modally forReason:(int64_t)reason controlType:(int64_t)type;
- (void)reloadSemanticStyleBadgesDelayIfNeeded:(BOOL)needed;
- (void)removeInflightBlurAnimations;
- (void)selectedByAccessibilityHUDManager:(id)manager;
- (void)semanticStylePickerDidChangeSelectedStyle:(id)style;
- (void)semanticStylePickerDidScroll:(id)scroll;
- (void)setChromeView:(id)view;
- (void)setControlDrawerExpanded:(BOOL)expanded forReason:(int64_t)reason animated:(BOOL)animated;
- (void)setControlDrawerVisible:(BOOL)visible modeUIVisible:(BOOL)iVisible animated:(BOOL)animated;
- (void)setDescriptionOverlayView:(id)view forKey:(id)key;
- (void)setDeviceOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setDisabledModeOverlayView:(id)view;
- (void)setElapsedTimeViewVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setExternalChromeFilterScrubberVisible:(BOOL)visible;
- (void)setExternalChromeSemanticStyleControlsVisible:(BOOL)visible;
- (void)setExternalChromeShutterButtonFrame:(CGRect)frame animated:(BOOL)animated;
- (void)setExternalChromeSmartStyleControlsVisible:(BOOL)visible;
- (void)setExternalChromeTopInset:(double)inset animated:(BOOL)animated;
- (void)setFlipAspectRatioButtonVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setFlipButtonVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setImageAnalysisButton:(id)button;
- (void)setImageAnalysisButtonVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setInterfaceModulation:(unint64_t)modulation animated:(BOOL)animated;
- (void)setLightingNameBadgesHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setMaterial:(int64_t)material withDuration:(double)duration;
- (void)setOffsetZoomButtonForFlipAspectRatioButton:(BOOL)button animated:(BOOL)animated;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setOrientationInstructionBackgroundBlurred:(BOOL)blurred animated:(BOOL)animated;
- (void)setOrientationInstructionVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setOverCaptureGradientHeight:(double)height animated:(BOOL)animated;
- (void)setOverCaptureGradientVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setPanoramaCaptureSize:(CGSize)size;
- (void)setPanoramaView:(id)view;
- (void)setPhotoVideoModeSwitchVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setPortraitControlsAllowed:(BOOL)allowed animated:(BOOL)animated;
- (void)setPreviewAlignmentGuideVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setPreviewView:(id)view;
- (void)setShallowDepthOfFieldStatus:(int64_t)status animated:(BOOL)animated;
- (void)setShowingStandardControls:(BOOL)controls;
- (void)setShutterControlVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setSmartFramingFieldOfView:(int64_t)view useTransition:(BOOL)transition animated:(BOOL)animated;
- (void)setSpatialCaptureRecordingIndicatorVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setSpotlightControl:(int64_t)control animated:(BOOL)animated;
- (void)setStereoCaptureStatus:(int64_t)status animated:(BOOL)animated;
- (void)setStereoCaptureStatus:(int64_t)status useHoldStillStereoLowLightInstruction:(BOOL)instruction animated:(BOOL)animated;
- (void)setSystemOverlayVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setTextInteractionInsert:(id)insert;
- (void)setTimerIndicatorVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setTrueVideoState:(unint64_t)state;
- (void)setUseHoldStillStereoLowLightInstruction:(BOOL)instruction;
- (void)setViewportAspectRatio:(int64_t)ratio animated:(BOOL)animated;
- (void)setVisibleInstructionLabel:(int64_t)label animated:(BOOL)animated;
- (void)setVisibleInstructionLabel:(int64_t)label visibleSecondaryInstructionLabel:(int64_t)instructionLabel animated:(BOOL)animated;
- (void)setVisiblePreviewSuggestionButton:(int64_t)button animated:(BOOL)animated;
- (void)setWantsSmartStylePicker:(BOOL)picker animated:(BOOL)animated;
- (void)setZoomControlVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setZoomStyle:(unint64_t)style;
@end

@implementation CAMFullscreenViewfinder

- (CAMFullscreenViewfinder)initWithMetalContext:(id)context
{
  v46[1] = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = CAMFullscreenViewfinder;
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = [(CAMFullscreenViewfinder *)&v45 initWithFrame:context, *MEMORY[0x1E695F058], v4, v5, v6];
  v8 = v7;
  if (v7)
  {
    v7->_showingStandardControls = 1;
    v7->_canCreateElapsedTimeView = 1;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(CAMFullscreenViewfinder *)v8 setBackgroundColor:blackColor];

    v8->_controlDrawerVisible = 1;
    v8->_modeUIVisible = 1;
    v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v3, v4, v5, v6}];
    previewContainerView = v8->__previewContainerView;
    v8->__previewContainerView = v10;

    v12 = v8->__previewContainerView;
    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v12 setBackgroundColor:blackColor2];

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
  _overCapturePreviewLayer = [(CAMFullscreenViewfinder *)self _overCapturePreviewLayer];
  if (_overCapturePreviewLayer)
  {
    isShowingStandardControls = [(CAMFullscreenViewfinder *)self isShowingStandardControls];
  }

  else
  {
    isShowingStandardControls = 0;
  }

  return isShowingStandardControls;
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

- (void)_insertBackgroundSubview:(id)subview
{
  if (subview)
  {
    subviewCopy = subview;
    _previewContainerView = [(CAMFullscreenViewfinder *)self _previewContainerView];
    [(CAMFullscreenViewfinder *)self insertSubview:subviewCopy aboveSubview:_previewContainerView];
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
  elapsedTimeView = [(CAMFullscreenViewfinder *)self elapsedTimeView];
  if (elapsedTimeView)
  {
    isElapsedTimeViewVisible = [(CAMFullscreenViewfinder *)self isElapsedTimeViewVisible];
  }

  else
  {
    isElapsedTimeViewVisible = 0;
  }

  _layout = [(CAMFullscreenViewfinder *)self _layout];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  orientation = [(CAMFullscreenViewfinder *)self orientation];
  isSystemOverlayVisible = [(CAMFullscreenViewfinder *)self isSystemOverlayVisible];
  if (_layout)
  {
    [_layout geometryForElapsedTimeView:elapsedTimeView viewportFrame:orientation orientation:isSystemOverlayVisible systemOverlayVisible:{v4, v6, v8, v10}];
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

  if (isElapsedTimeViewVisible)
  {
    v67 = v73;
    v68 = v74;
    v69 = v75;
    v70 = v76;
    v65 = v71;
    v66 = v72;
    CAMViewSetGeometry(elapsedTimeView, &v65);
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
  _createdPrimaryInstructionLabels = [(CAMFullscreenViewfinder *)self _createdPrimaryInstructionLabels];
  v19 = [_createdPrimaryInstructionLabels countByEnumeratingWithState:&v61 objects:v78 count:16];
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
          objc_enumerationMutation(_createdPrimaryInstructionLabels);
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

      v20 = [_createdPrimaryInstructionLabels countByEnumeratingWithState:&v61 objects:v78 count:16];
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
  _createdSecondaryInstructionLabels = [(CAMFullscreenViewfinder *)self _createdSecondaryInstructionLabels];
  v27 = [_createdSecondaryInstructionLabels countByEnumeratingWithState:&v39 objects:v77 count:16];
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
          objc_enumerationMutation(_createdSecondaryInstructionLabels);
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

      v28 = [_createdSecondaryInstructionLabels countByEnumeratingWithState:&v39 objects:v77 count:16];
    }

    while (v28);
  }
}

- (void)_layoutViewportWithFrame:(CGRect)frame previewFrame:(CGRect)previewFrame
{
  height = previewFrame.size.height;
  width = previewFrame.size.width;
  y = previewFrame.origin.y;
  x = previewFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  trueVideoState = [(CAMFullscreenViewfinder *)self trueVideoState];
  v14 = 0.0;
  if (trueVideoState == 2)
  {
    v14 = 1.0;
  }

  [(CAMFullscreenViewfinder *)self _layoutViewportWithFrame:v11 previewFrame:v10 trueVideoTransitionPercentComplete:v9 smartFramingTransitionPercentComplete:v8, x, y, width, height, *&v14, 0];
}

- (void)_layoutViewportWithFrame:(CGRect)frame previewFrame:(CGRect)previewFrame trueVideoTransitionPercentComplete:(double)complete smartFramingTransitionPercentComplete:(double)percentComplete
{
  width = previewFrame.size.width;
  height = previewFrame.size.height;
  y = previewFrame.origin.y;
  x = previewFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  [(CAMFullscreenViewfinder *)self _updateReticleForViewportFrame:?];
  [(CAMFullscreenViewfinder *)self _updatePreviewLayerForPreviewFrame:x viewportFrame:y trueVideoTransitionPercentComplete:width smartFramingTransitionPercentComplete:height, v11, v10, v9, v8, *&complete, *&percentComplete];
  [(CAMFullscreenViewfinder *)self _updatePreviewAlignmentGuideForViewportFrame:v11, v10, v9, v8];
  semanticStylePicker = [(CAMFullscreenViewfinder *)self semanticStylePicker];
  [(CAMFullscreenViewfinder *)self _updateSemanticStylePicker:semanticStylePicker forViewportFrame:v11, v10, v9, v8];

  smartStylePicker = [(CAMFullscreenViewfinder *)self smartStylePicker];
  [(CAMFullscreenViewfinder *)self _updateSemanticStylePicker:smartStylePicker forViewportFrame:v11, v10, v9, v8];

  [(CAMFullscreenViewfinder *)self _updateDisabledModeOverlayViewportFrame:v11, v10, v9, v8];
  _overCapturePreviewLayer = [(CAMFullscreenViewfinder *)self _overCapturePreviewLayer];
  if (!_overCapturePreviewLayer)
  {
    previewView = [(CAMFullscreenViewfinder *)self previewView];
    [previewView bounds];
    v11 = v17;
    v10 = v18;
    v9 = v19;
    v8 = v20;
  }

  previewView2 = [(CAMFullscreenViewfinder *)self previewView];
  [previewView2 setViewportFrame:{v11, v10, v9, v8}];

  _descriptionOverlayViewByKey = [(CAMFullscreenViewfinder *)self _descriptionOverlayViewByKey];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __138__CAMFullscreenViewfinder__layoutViewportWithFrame_previewFrame_trueVideoTransitionPercentComplete_smartFramingTransitionPercentComplete___block_invoke;
  v25[3] = &__block_descriptor_64_e55_v32__0___NSCopying__8__CAMDescriptionOverlayView_16_B24l;
  *&v25[4] = v11;
  *&v25[5] = v10;
  *&v25[6] = v9;
  *&v25[7] = v8;
  [_descriptionOverlayViewByKey enumerateKeysAndObjectsUsingBlock:v25];
}

- (void)layoutSubviews
{
  [(CAMFullscreenViewfinder *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  shutterControl = [(CAMFullscreenViewfinder *)self shutterControl];
  _layout = [(CAMFullscreenViewfinder *)self _layout];
  if (!_layout)
  {
    v230.origin.x = v4;
    v230.origin.y = v6;
    v230.size.width = v8;
    v230.size.height = v10;
    if (CGRectIsEmpty(v230))
    {
      _layout = 0;
    }

    else
    {
      v13 = [CAMFullscreenViewfinderLayout alloc];
      [shutterControl intrinsicContentSize];
      _layout = [(CAMFullscreenViewfinderLayout *)v13 initWithReferenceBounds:v4 shutterIntrinsicSize:v6, v8, v10, v14, v15];
      objc_storeStrong(&self->__layout, _layout);
    }
  }

  [(CAMFullscreenViewfinderLayout *)_layout setReferenceBounds:v4, v6, v8, v10];
  [shutterControl intrinsicContentSize];
  [(CAMFullscreenViewfinderLayout *)_layout setShutterIntrinsicSize:?];
  window = [(CAMFullscreenViewfinder *)self window];
  screen = [window screen];
  [screen scale];
  [(CAMFullscreenViewfinderLayout *)_layout setScreenScale:?];

  chromeView = [(CAMFullscreenViewfinder *)self chromeView];
  [chromeView setFrame:{v4, v6, v8, v10}];

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
  _previewContainerView = [(CAMFullscreenViewfinder *)self _previewContainerView];
  [_previewContainerView setFrame:{v4, v6, v8, v10}];

  [(CAMFullscreenViewfinder *)self _frameForContentClippingContainer];
  v215 = v6;
  v216 = v4;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  _contentClippingContainer = [(CAMFullscreenViewfinder *)self _contentClippingContainer];
  [_contentClippingContainer setFrame:{v31, v33, v35, v37}];

  _modulatingContentView = [(CAMFullscreenViewfinder *)self _modulatingContentView];
  superview = [_modulatingContentView superview];
  [(CAMFullscreenViewfinder *)self convertRect:superview toView:v216, v215, v8, v10];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  _modulatingContentView2 = [(CAMFullscreenViewfinder *)self _modulatingContentView];
  [_modulatingContentView2 setFrame:{v42, v44, v46, v48}];

  _contentView = [(CAMFullscreenViewfinder *)self _contentView];
  [_contentView setBounds:{v216, v215, v8, v10}];

  UIRectGetCenter();
  v52 = v51;
  v54 = v53;
  _contentView2 = [(CAMFullscreenViewfinder *)self _contentView];
  [_contentView2 setCenter:{v52, v54}];

  _contentViewBelowShutter = [(CAMFullscreenViewfinder *)self _contentViewBelowShutter];
  [_contentViewBelowShutter setBounds:{v216, v215, v8, v10}];

  UIRectGetCenter();
  v58 = v57;
  v60 = v59;
  _contentViewBelowShutter2 = [(CAMFullscreenViewfinder *)self _contentViewBelowShutter];
  [_contentViewBelowShutter2 setCenter:{v58, v60}];

  _chromeContentView = [(CAMFullscreenViewfinder *)self _chromeContentView];
  [_chromeContentView setBounds:{v216, v215, v8, v10}];

  UIRectGetCenter();
  v64 = v63;
  v66 = v65;
  _chromeContentView2 = [(CAMFullscreenViewfinder *)self _chromeContentView];
  [_chromeContentView2 setCenter:{v64, v66}];

  UIRectGetCenter();
  v69 = v68;
  v71 = v70;
  previewView = [(CAMFullscreenViewfinder *)self previewView];
  [previewView setCenter:{v69, v71}];

  v73 = *MEMORY[0x1E695EFF8];
  v74 = *(MEMORY[0x1E695EFF8] + 8);
  previewView2 = [(CAMFullscreenViewfinder *)self previewView];
  v205 = v22;
  [previewView2 setBounds:{v73, v74, v22, v24}];

  [(CAMFullscreenViewfinder *)self _frameForFlipButton];
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  flipButton = [(CAMFullscreenViewfinder *)self flipButton];
  [flipButton setFrame:{v77, v79, v81, v83}];

  badgeTray = [(CAMFullscreenViewfinder *)self badgeTray];
  [(CAMFullscreenViewfinder *)self _geometryForBadgeTray];
  CAMViewSetGeometry(badgeTray, &v224);

  _reticleView = [(CAMFullscreenViewfinder *)self _reticleView];
  [_reticleView setFrame:{v216, v215, v8, v10}];

  timerIndicator = [(CAMFullscreenViewfinder *)self timerIndicator];
  v88 = v211;
  CAMViewGeometryForOrientedFrame(1, &v224, v212, v214, v213, v211);
  CAMViewSetGeometry(timerIndicator, &v224);

  [(CAMFullscreenViewfinder *)self externalChromeTopInset];
  if (v214 <= v89)
  {
    timerIndicator2 = [(CAMFullscreenViewfinder *)self timerIndicator];
    UIRectInsetEdges();
    CAMViewGeometryForOrientedFrame(1, &v224, v91, v92, v93, v94);
    CAMViewSetGeometry(timerIndicator2, &v224);
  }

  _descriptionOverlayViewByKey = [(CAMFullscreenViewfinder *)self _descriptionOverlayViewByKey];
  v223[0] = MEMORY[0x1E69E9820];
  v223[1] = 3221225472;
  v223[2] = __41__CAMFullscreenViewfinder_layoutSubviews__block_invoke;
  v223[3] = &__block_descriptor_64_e55_v32__0___NSCopying__8__CAMDescriptionOverlayView_16_B24l;
  *&v223[4] = v216;
  *&v223[5] = v215;
  *&v223[6] = v8;
  *&v223[7] = v10;
  [_descriptionOverlayViewByKey enumerateKeysAndObjectsUsingBlock:v223];

  flipButton2 = [(CAMFullscreenViewfinder *)self flipButton];
  [flipButton2 center];
  [shutterControl setLockButtonCenterRightInset:v8 - v97];

  _layout2 = [(CAMFullscreenViewfinder *)self _layout];
  [_layout2 alignmentRectForBottomRightControlOfSize:{42.0, 42.0}];
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;

  v231.origin.x = v100;
  v231.origin.y = v102;
  v231.size.width = v104;
  v231.size.height = v106;
  v107 = v212;
  [shutterControl setPauseResumeButtonCenterLeftInset:v8 - CGRectGetMidX(v231)];
  [(CAMFullscreenViewfinderLayout *)_layout frameForShutterControl:shutterControl];
  [shutterControl setFrame:?];
  if (![(CAMFullscreenViewfinder *)self isReticleAnimating])
  {
    [(CAMFullscreenViewfinder *)self _layoutViewportWithFrame:v212 previewFrame:v214, v213, v211, v209, v207, v205, v24];
  }

  previewView3 = [(CAMFullscreenViewfinder *)self previewView];
  [(CAMFullscreenViewfinder *)self _frameForPreviewOverlaysInViewport:v212, v214, v213, v211];
  [previewView3 convertRect:self fromView:?];
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v116 = v115;
  previewView4 = [(CAMFullscreenViewfinder *)self previewView];
  [previewView4 setOverlayFrame:{v110, v112, v114, v116}];

  [(CAMFullscreenViewfinder *)self _layoutZoomControls];
  imageAnalysisButton = [(CAMFullscreenViewfinder *)self imageAnalysisButton];
  zoomSlider = [(CAMFullscreenViewfinder *)self zoomSlider];
  zoomControl = [(CAMFullscreenViewfinder *)self zoomControl];
  traitCollection = [(CAMFullscreenViewfinder *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [CAMZoomButton circleDiameterForContentSize:preferredContentSizeCategory];
  v124 = v123;

  [imageAnalysisButton setBackgroundDiameter:v124];
  if (objc_opt_respondsToSelector())
  {
    [imageAnalysisButton setGlyphScale:0.8];
  }

  [(CAMFullscreenViewfinder *)self _imageAnalysisButtonFrameForZoomControl:zoomControl zoomSlider:zoomSlider];
  [imageAnalysisButton setFrame:?];
  flipAspectRatioButton = [(CAMFullscreenViewfinder *)self flipAspectRatioButton];

  if (flipAspectRatioButton)
  {
    [(CAMFullscreenViewfinder *)self _centerYForZoomControl:zoomControl zoomSlider:zoomSlider];
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

    flipAspectRatioButton2 = [(CAMFullscreenViewfinder *)self flipAspectRatioButton];
    [flipAspectRatioButton2 setFrame:{v130, y, width, height}];

    v88 = v211;
    v107 = v212;
  }

  v206 = zoomControl;
  v208 = zoomSlider;
  v210 = shutterControl;
  _textInteractionBackground = [(CAMFullscreenViewfinder *)self _textInteractionBackground];
  [_textInteractionBackground setFrame:{v216, v215, v8, v10}];

  textInteractionInsert = [(CAMFullscreenViewfinder *)self textInteractionInsert];
  [(CAMFullscreenViewfinder *)self _geometryForTextInteractionInsertWithViewport:v107, v214, v213, v88];
  CAMViewSetGeometry(textInteractionInsert, &v224);
  [imageAnalysisButton backgroundDiameter];
  [textInteractionInsert setPreferredQuickActionButtonHeight:?];
  actionInfoView = [textInteractionInsert actionInfoView];
  if (actionInfoView)
  {
    [(CAMFullscreenViewfinder *)self _frameForActionInfoView];
    [actionInfoView setFrame:?];
  }

  [(CAMFullscreenViewfinder *)self _applyTextInsertContentInsets];
  machineReadableCodeButton = [(CAMFullscreenViewfinder *)self machineReadableCodeButton];
  if (machineReadableCodeButton)
  {
    UIEdgeInsetsMakeWithEdges();
    [machineReadableCodeButton setHitTestInsets:?];
    [(CAMFullscreenViewfinder *)self _geometryForMRCButton];
    CAMViewSetGeometry(machineReadableCodeButton, &v224);
  }

  controlDrawer = [(CAMFullscreenViewfinder *)self controlDrawer];
  if (controlDrawer)
  {
    [(CAMFullscreenViewfinder *)self _frameForControlDrawer];
    [controlDrawer setFrame:?];
  }

  [(CAMFullscreenViewfinder *)self _updateGeometryForElapsedTimeAndInstructionLabels];
  [(CAMFullscreenViewfinder *)self _frameForSpotlightControlPanel];
  v138 = v137;
  v140 = v139;
  v142 = v141;
  v144 = v143;
  spotlightControlPanel = [(CAMFullscreenViewfinder *)self spotlightControlPanel];
  [spotlightControlPanel setFrame:{v138, v140, v142, v144}];

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
    lightingControl = [(CAMFullscreenViewfinder *)self lightingControl];
    [lightingControl setAdditionalBottomPadding:v157];

    lightingControl2 = [(CAMFullscreenViewfinder *)self lightingControl];
    [lightingControl2 setFrame:{v147, v149, v152, v155}];

    zoomControl2 = [(CAMFullscreenViewfinder *)self zoomControl];
    zoomSlider2 = [(CAMFullscreenViewfinder *)self zoomSlider];
    [(CAMFullscreenViewfinder *)self _centerYForZoomControl:zoomControl2 zoomSlider:zoomSlider2];
    v163 = v162;

    v234.origin.x = v147;
    v234.origin.y = v149;
    v234.size.width = v152;
    v234.size.height = v155;
    v88 = v153;
    v107 = v150;
    v164 = CGRectGetMaxY(v234) - v163;
    lightingControl3 = [(CAMFullscreenViewfinder *)self lightingControl];
    [lightingControl3 setCollapsedSelectionCenterPointBottomInset:v164];

    v228 = 0u;
    v229 = 0u;
    v226 = 0u;
    v227 = 0u;
    v224 = 0u;
    v225 = 0u;
    [(CAMFullscreenViewfinder *)self _geometryForLandscapeLightingBadge];
    lightingNameBadge = [(CAMFullscreenViewfinder *)self lightingNameBadge];
    v219 = v226;
    v220 = v227;
    v221 = v228;
    v222 = v229;
    v217 = v224;
    v218 = v225;
    CAMApplyAnimationSensitiveGeometryToView(&v217, lightingNameBadge);
  }

  filterNameBadge = [(CAMFullscreenViewfinder *)self filterNameBadge];

  if (filterNameBadge)
  {
    filterNameBadge2 = [(CAMFullscreenViewfinder *)self filterNameBadge];
    v228 = 0u;
    v229 = 0u;
    v226 = 0u;
    v227 = 0u;
    v224 = 0u;
    v225 = 0u;
    [(CAMFullscreenViewfinder *)self _geometryForFilterNameBadge:filterNameBadge2];
    v219 = v226;
    v220 = v227;
    v221 = v228;
    v222 = v229;
    v217 = v224;
    v218 = v225;
    CAMApplyAnimationSensitiveGeometryToView(&v217, filterNameBadge2);
  }

  [(CAMFullscreenViewfinder *)self _layoutSemanticStyleMaskedBadges];
  panoramaView = [(CAMFullscreenViewfinder *)self panoramaView];

  if (panoramaView)
  {
    [(CAMFullscreenViewfinder *)self _layoutPanoramaView];
  }

  _orientationInstructionView = [(CAMFullscreenViewfinder *)self _orientationInstructionView];

  if (_orientationInstructionView)
  {
    _orientationInstructionView2 = [(CAMFullscreenViewfinder *)self _orientationInstructionView];
    [_orientationInstructionView2 setFrame:{v107, v214, v213, v88}];
  }

  spatialCaptureRecordingIndicator = [(CAMFullscreenViewfinder *)self spatialCaptureRecordingIndicator];
  if (spatialCaptureRecordingIndicator)
  {
    v173 = spatialCaptureRecordingIndicator;
    isSpatialCaptureRecordingIndicatorVisible = [(CAMFullscreenViewfinder *)self isSpatialCaptureRecordingIndicatorVisible];

    if (isSpatialCaptureRecordingIndicatorVisible)
    {
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v224 = 0u;
      v225 = 0u;
      _layout3 = [(CAMFullscreenViewfinder *)self _layout];
      elapsedTimeView = [(CAMFullscreenViewfinder *)self elapsedTimeView];
      orientation = [(CAMFullscreenViewfinder *)self orientation];
      isSystemOverlayVisible = [(CAMFullscreenViewfinder *)self isSystemOverlayVisible];
      if (_layout3)
      {
        [_layout3 geometryForElapsedTimeView:elapsedTimeView viewportFrame:orientation orientation:isSystemOverlayVisible systemOverlayVisible:{v107, v214, v213, v88}];
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

      orientation2 = [(CAMFullscreenViewfinder *)self orientation];
      v219 = v226;
      v220 = v227;
      v221 = v228;
      v222 = v229;
      v217 = v224;
      v218 = v225;
      [(CAMFullscreenViewfinder *)self _frameForSpatialRecordingIndicatorWithElapsedTimeViewGeometry:&v217 orientation:orientation2];
      v181 = v180;
      v183 = v182;
      v185 = v184;
      v187 = v186;
      spatialCaptureRecordingIndicator2 = [(CAMFullscreenViewfinder *)self spatialCaptureRecordingIndicator];
      [spatialCaptureRecordingIndicator2 setFrame:{v181, v183, v185, v187}];
    }
  }

  [(CAMFullscreenViewfinder *)self _frameForFlipButton];
  v190 = v189;
  v192 = v191;
  v194 = v193;
  v196 = v195;
  _layout4 = [(CAMFullscreenViewfinder *)self _layout];
  [_layout4 alignmentRectForShutterControl];
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
  photoVideoModeSwitch = [(CAMFullscreenViewfinder *)self photoVideoModeSwitch];
  [photoVideoModeSwitch setFrame:{x, v201, v202, v203}];

  [(CAMFullscreenViewfinder *)self _layoutSmartStyleNameBadge];
  [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:0];
  [(CAMFullscreenViewfinder *)self _updateTintColors];
}

- (void)_setViewportAnimatorFrame:(CGRect)frame withDuration:(double)duration timingCurve:(id)curve
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  curveCopy = curve;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (!CGRectIsEmpty(v17))
  {
    v11 = +[CAMCaptureCapabilities capabilities];
    isViewportSpringAnimationSupported = [v11 isViewportSpringAnimationSupported];

    if (isViewportSpringAnimationSupported)
    {
      if (duration > 0.0)
      {
        [(CAMFullscreenViewfinder *)self _viewportAnimatorViewportFrame];
        [CAMFullscreenViewfinder _updateViewportVectorAnimatorWithInitialViewportFrame:"_updateViewportVectorAnimatorWithInitialViewportFrame:destinationViewportFrame:response:" destinationViewportFrame:*&duration response:?];
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

      _viewportAnimator = [(CAMFullscreenViewfinder *)self _viewportAnimator];
      [_viewportAnimator setValue:@"CAMViewfinderAnimatorViewportOriginXKey" forKey:curveCopy duration:x timingCurve:duration];
      [_viewportAnimator setValue:@"CAMViewfinderAnimatorViewportOriginYKey" forKey:curveCopy duration:y timingCurve:duration];
      [_viewportAnimator setValue:@"CAMViewfinderAnimatorViewportWidthKey" forKey:curveCopy duration:width timingCurve:duration];
      [_viewportAnimator setValue:@"CAMViewfinderAnimatorViewportHeightKey" forKey:curveCopy duration:height timingCurve:duration];
      [_viewportAnimator setValue:@"CAMViewfinderAnimatorTrueVideoTransitionPercentCompleteKey" forKey:curveCopy duration:v13 timingCurve:duration];
      if ([(CAMFullscreenViewfinder *)self _useSmartFramingTransition])
      {
        [_viewportAnimator setValue:@"CAMViewfinderAnimatorSmartFramingTransitionPercentCompleteKey" forKey:curveCopy duration:1.0 timingCurve:duration];
      }
    }
  }
}

- (void)animator:(id)animator didUpdateValuesForKeys:(id)keys
{
  animatorCopy = animator;
  [animatorCopy valueForKey:@"CAMViewfinderAnimatorViewportOriginXKey"];
  UIRoundToViewScale();
  v7 = v6;
  [animatorCopy valueForKey:@"CAMViewfinderAnimatorViewportOriginYKey"];
  UIRoundToViewScale();
  v9 = v8;
  [animatorCopy valueForKey:@"CAMViewfinderAnimatorViewportWidthKey"];
  UIRoundToViewScale();
  v11 = v10;
  [animatorCopy valueForKey:@"CAMViewfinderAnimatorViewportHeightKey"];
  UIRoundToViewScale();
  v13 = v12;
  [animatorCopy valueForKey:@"CAMViewfinderAnimatorTrueVideoTransitionPercentCompleteKey"];
  v15 = v14;
  [animatorCopy valueForKey:@"CAMViewfinderAnimatorSmartFramingTransitionPercentCompleteKey"];
  v17 = v16;

  [MEMORY[0x1E6979518] begin];
  [(CAMFullscreenViewfinder *)self _frameForPreviewView];
  [(CAMFullscreenViewfinder *)self _layoutViewportWithFrame:v7 previewFrame:v9 trueVideoTransitionPercentComplete:v11 smartFramingTransitionPercentComplete:v13, v18, v19, v20, v21, v15, v17];
  previewView = [(CAMFullscreenViewfinder *)self previewView];
  [previewView layoutIfNeeded];

  v23 = MEMORY[0x1E6979518];

  [v23 commit];
}

- (void)_didFinishChangingPreviewGeometry
{
  [(CAMFullscreenViewfinder *)self set_useSmartFramingTransition:0];
  delegate = [(CAMFullscreenViewfinder *)self delegate];
  [delegate fullscreenViewfinderDidFinishChangingPreviewGeometry:self];
}

- (BOOL)isReticleAnimating
{
  v3 = +[CAMCaptureCapabilities capabilities];
  isViewportSpringAnimationSupported = [v3 isViewportSpringAnimationSupported];

  if (isViewportSpringAnimationSupported)
  {
    _viewportVectorAnimator = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
    if (_viewportVectorAnimator)
    {
      _viewportVectorAnimator2 = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
      LODWORD(self) = [_viewportVectorAnimator2 isInvalidated] ^ 1;
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  else
  {
    _viewportVectorAnimator = [(CAMFullscreenViewfinder *)self _viewportAnimator];
    LOBYTE(self) = [_viewportVectorAnimator isAnimating];
  }

  return self;
}

- (void)_updateViewportVectorAnimatorWithInitialViewportFrame:(CGRect)frame destinationViewportFrame:(CGRect)viewportFrame response:(double)response
{
  height = viewportFrame.size.height;
  width = viewportFrame.size.width;
  y = viewportFrame.origin.y;
  x = viewportFrame.origin.x;
  v9 = frame.size.height;
  v10 = frame.size.width;
  v11 = frame.origin.y;
  v12 = frame.origin.x;
  _viewportVectorAnimator = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
  if (!_viewportVectorAnimator || (v15 = _viewportVectorAnimator, -[CAMFullscreenViewfinder _viewportVectorAnimator](self, "_viewportVectorAnimator"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isInvalidated], v16, v15, v17))
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

  _viewportSettings = [(CAMFullscreenViewfinder *)self _viewportSettings];
  [_viewportSettings setResponse:response];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __115__CAMFullscreenViewfinder__updateViewportVectorAnimatorWithInitialViewportFrame_destinationViewportFrame_response___block_invoke_2;
  v21[3] = &unk_1E76F7768;
  v21[4] = self;
  *&v21[5] = x;
  *&v21[6] = y;
  *&v21[7] = width;
  *&v21[8] = height;
  [MEMORY[0x1E69DD250] cek_animateWithSettings:_viewportSettings mode:3 animations:v21 completion:0];
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

- (void)_setViewportAnimatorRectValue:(CGRect)value
{
  height = value.size.height;
  width = value.size.width;
  y = value.origin.y;
  x = value.origin.x;
  _viewportVectorAnimator = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__CAMFullscreenViewfinder__setViewportAnimatorRectValue___block_invoke;
  v8[3] = &__block_descriptor_64_e9_v16__0_d8l;
  *&v8[4] = x;
  *&v8[5] = y;
  *&v8[6] = width;
  *&v8[7] = height;
  [_viewportVectorAnimator _mutateValue:v8];
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
  _viewportVectorAnimator = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
  _value = [_viewportVectorAnimator _value];

  v4 = *_value;
  v5 = _value[1];
  v6 = _value[2];
  v7 = _value[3];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_viewportAnimatorRectPresentationValue
{
  _viewportVectorAnimator = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
  _presentationValue = [_viewportVectorAnimator _presentationValue];

  v4 = *_presentationValue;
  v5 = _presentationValue[1];
  v6 = _presentationValue[2];
  v7 = _presentationValue[3];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (double)_viewportAnimatorPercentComplete
{
  _viewportVectorAnimator = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
  _presentationValue = [_viewportVectorAnimator _presentationValue];

  return *(_presentationValue + 32);
}

- (BOOL)_isViewportAnimatorVelocityZero
{
  _viewportVectorAnimator = [(CAMFullscreenViewfinder *)self _viewportVectorAnimator];
  [_viewportVectorAnimator _velocity];

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

- (void)_setNeedsLayoutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(CAMFullscreenViewfinder *)self setNeedsLayout];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__CAMFullscreenViewfinder__setNeedsLayoutAnimated___block_invoke;
  aBlock[3] = &unk_1E76F77B0;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (animatedCopy)
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
    selfCopy = self;
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
  useSlowerTrueVideoTransitionAnimationDuration = [(CAMFullscreenViewfinder *)self useSlowerTrueVideoTransitionAnimationDuration];
  trueVideoState = [(CAMFullscreenViewfinder *)self trueVideoState];
  if (trueVideoState == 1)
  {
    [(CAMFullscreenViewfinder *)self _trueVideoModeSwitchToCaptureAnimationDurationOverride];
    v6 = !useSlowerTrueVideoTransitionAnimationDuration;
    v7 = 0.7;
    v8 = 0.966;
  }

  else
  {
    result = 0.0;
    if (trueVideoState != 3)
    {
      return result;
    }

    [(CAMFullscreenViewfinder *)self _trueVideoModeSwitchFromCaptureAnimationDurationOverride];
    v6 = !useSlowerTrueVideoTransitionAnimationDuration;
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
    controlDrawer = [(CAMFullscreenViewfinder *)self controlDrawer];
    [controlDrawer collapseExpandableButtonsAnimated:0 updatePreferredDrawerControl:0];
  }
}

- (CGRect)currentFourThreeViewportFrame
{
  _layout = [(CAMFullscreenViewfinder *)self _layout];
  [_layout viewportFrameForAspectRatio:0 accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
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
  _overCapturePreviewLayer = [(CAMFullscreenViewfinder *)self _overCapturePreviewLayer];

  if (!_overCapturePreviewLayer)
  {
    viewportAspectRatio = [(CAMFullscreenViewfinder *)self viewportAspectRatio];
    if ((viewportAspectRatio - 2) >= 3)
    {
      v13 = viewportAspectRatio;
    }

    else
    {
      v13 = 0;
    }

    _layout = [(CAMFullscreenViewfinder *)self _layout];
    [_layout viewportFrameForAspectRatio:v13 accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
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

- (CGRect)_frameForPreviewOverlaysInViewport:(CGRect)viewport
{
  height = viewport.size.height;
  width = viewport.size.width;
  y = viewport.origin.y;
  x = viewport.origin.x;
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

- (void)_updatePreviewLayerForPreviewFrame:(CGRect)frame viewportFrame:(CGRect)viewportFrame trueVideoTransitionPercentComplete:(double)complete smartFramingTransitionPercentComplete:(double)percentComplete
{
  height = viewportFrame.size.height;
  width = viewportFrame.size.width;
  y = viewportFrame.origin.y;
  x = viewportFrame.origin.x;
  v10 = frame.size.height;
  v11 = frame.size.width;
  v12 = frame.origin.y;
  v13 = frame.origin.x;
  _overCapturePreviewLayer = [(CAMFullscreenViewfinder *)self _overCapturePreviewLayer];
  if (_overCapturePreviewLayer)
  {
    v27 = _overCapturePreviewLayer;
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

    trueVideoState = [(CAMFullscreenViewfinder *)self trueVideoState];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [(CAMFullscreenViewfinder *)self _useSmartFramingTransition]&& !trueVideoState)
    {
      delegate2 = [CAMCaptureConversions AVCaptureSmartFramingFieldOfViewForCAMCaptureSmartFramingFieldOfView:[(CAMFullscreenViewfinder *)self smartFramingFieldOfView]];
      [v27 setPrimaryCaptureRectAspectRatio:delegate2 centerPoint:height / width smartFramingTransitionPercentComplete:v19 smartFramingTransitionTargetFieldOfView:{v18, percentComplete}];
      delegate = [(CAMFullscreenViewfinder *)self delegate];
      [delegate fullscreenViewfinder:self didChangePreviewGeometryWithViewportFrame:{x, y, width, height}];
    }

    else
    {
      _overCapturePreviewLayer = v27;
      if (!v21)
      {
        goto LABEL_14;
      }

      [v27 setPrimaryCaptureRectAspectRatio:height / width centerPoint:v19 trueVideoTransitionPercentComplete:{v18, complete}];
      delegate2 = [(CAMFullscreenViewfinder *)self delegate];
      [delegate2 fullscreenViewfinder:self didChangePreviewGeometryWithViewportFrame:{x, y, width, height}];
    }

    _overCapturePreviewLayer = v27;
  }

LABEL_14:
}

- (double)previewAspectRatio
{
  _overCapturePreviewLayer = [(CAMFullscreenViewfinder *)self _overCapturePreviewLayer];
  [_overCapturePreviewLayer primaryCaptureRectAspectRatio];
  v4 = 1.0 / v3;

  return v4;
}

- (BOOL)requestPreviewUpdateForSemanticStyleAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v60 = *MEMORY[0x1E69E9840];
  v5 = +[CAMCaptureCapabilities capabilities];
  smartStylesSupported = [v5 smartStylesSupported];

  if (smartStylesSupported)
  {
    return 0;
  }

  delegate = [(CAMFullscreenViewfinder *)self delegate];
  v8 = [delegate fullscreenViewfinderCanUpdatePreviewSemanticStyles:self];

  if (!v8)
  {
    return 0;
  }

  _overCapturePreviewLayer = [(CAMFullscreenViewfinder *)self _overCapturePreviewLayer];
  isSemanticStyleControlVisible = [(CAMFullscreenViewfinder *)self isSemanticStyleControlVisible];
  delegate2 = [(CAMFullscreenViewfinder *)self delegate];
  v12 = delegate2;
  if (isSemanticStyleControlVisible)
  {
    v13 = [delegate2 fullscreenViewfinderSemanticStyleList:self];

    semanticStylePicker = [(CAMFullscreenViewfinder *)self semanticStylePicker];
    selectedStyleIndex = [semanticStylePicker selectedStyleIndex];

    if (selectedStyleIndex <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = selectedStyleIndex;
    }

    v17 = v16 - 1;
    v52 = v13;
    v18 = [v13 count];
    if (selectedStyleIndex + 1 < (v18 - 1))
    {
      v19 = selectedStyleIndex + 1;
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
        semanticStylePicker2 = [(CAMFullscreenViewfinder *)self semanticStylePicker];
        [semanticStylePicker2 presentatationStyleRectAtIndex:v23];

        semanticStylePicker3 = [(CAMFullscreenViewfinder *)self semanticStylePicker];
        [semanticStylePicker3 bounds];
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
    if ([_overCapturePreviewLayer isSemanticStyleRenderingEnabled])
    {
      v51 = _overCapturePreviewLayer;
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
              avSemanticStyle = [v44 avSemanticStyle];
              [v38 addObject:avSemanticStyle];
            }

            else
            {
              avSemanticStyle = os_log_create("com.apple.camera", "Camera");
              if (os_log_type_enabled(avSemanticStyle, OS_LOG_TYPE_ERROR))
              {
                [(CAMFullscreenViewfinder *)&buf requestPreviewUpdateForSemanticStyleAnimated:v54, avSemanticStyle];
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
      _overCapturePreviewLayer = v51;
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
    v48 = [delegate2 fullscreenViewfinderSelectedSemanticStyle:self];

    if ([_overCapturePreviewLayer isSemanticStyleRenderingEnabled])
    {
      if (!v48 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        avSemanticStyle2 = [v48 avSemanticStyle];
        [_overCapturePreviewLayer setSemanticStyle:avSemanticStyle2 animated:animatedCopy];
      }
    }
  }

  return 1;
}

- (void)_updateReticleForViewportFrame:(CGRect)frame
{
  height = frame.size.height;
  y = frame.origin.y;
  [(CAMFullscreenViewfinder *)self bounds:frame.origin.x];
  v7 = v6 - (y + height);
  _reticleView = [(CAMFullscreenViewfinder *)self _reticleView];
  [_reticleView setViewportTopInset:0 bottomInset:y animated:v7];
  [_reticleView layoutIfNeeded];
}

- (void)_updatePreviewAlignmentGuideForViewportFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  previewAlignmentGuide = [(CAMFullscreenViewfinder *)self previewAlignmentGuide];
  [previewAlignmentGuide setFrame:{x, y, width, height}];

  previewAlignmentGuide2 = [(CAMFullscreenViewfinder *)self previewAlignmentGuide];
  [previewAlignmentGuide2 layoutIfNeeded];
}

- (void)_updateSemanticStylePicker:(id)picker forViewportFrame:(CGRect)frame
{
  if (picker)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    pickerCopy = picker;
    [pickerCopy setFrame:{x, y, width, height}];
    [(CAMFullscreenViewfinder *)self frameForReticleViewport];
    v10 = v9;
    v12 = v11;
    [(CAMFullscreenViewfinder *)self externalChromeShutterButtonFrame];
    [pickerCopy setContentBottomMargin:v10 + v12 - CGRectGetMinY(v15) + 15.0];
    [pickerCopy layoutIfNeeded];
  }
}

- (CGRect)_frameForSpotlightControlPanel
{
  _viewportAspectRatioForControlsOverPreview = [(CAMFullscreenViewfinder *)self _viewportAspectRatioForControlsOverPreview];
  isControlDrawerExpanded = [(CAMFullscreenViewfinder *)self isControlDrawerExpanded];
  _layout = [(CAMFullscreenViewfinder *)self _layout];
  [_layout viewportFrameForAspectRatio:_viewportAspectRatioForControlsOverPreview accessoryAreaExpanded:isControlDrawerExpanded smartStyleControlsExpanded:{-[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  _layout2 = [(CAMFullscreenViewfinder *)self _layout];
  [_layout2 viewportFrameForAspectRatio:1 accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
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
  viewportAspectRatio = [(CAMFullscreenViewfinder *)self viewportAspectRatio];
  _layout = [(CAMFullscreenViewfinder *)self _layout];
  [_layout viewportFrameForAspectRatio:viewportAspectRatio accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
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
  _layout = [(CAMFullscreenViewfinder *)self _layout];
  [_layout frameForContentClippingContainer];
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

- (void)_updateDisabledModeOverlayViewportFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  disabledModeOverlayView = [(CAMFullscreenViewfinder *)self disabledModeOverlayView];
  [disabledModeOverlayView setViewportFrame:{x, y, width, height}];

  [(CAMFullscreenViewfinder *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  disabledModeOverlayView2 = [(CAMFullscreenViewfinder *)self disabledModeOverlayView];
  [disabledModeOverlayView2 setFrame:{v10, v12, v14, v16}];

  disabledModeOverlayView3 = [(CAMFullscreenViewfinder *)self disabledModeOverlayView];
  [disabledModeOverlayView3 layoutIfNeeded];
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
    traitCollection = [(CAMFullscreenViewfinder *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    [CAMZoomButton circleDiameterForContentSize:preferredContentSizeCategory];
    v5 = -(v8 * 0.5 + 3.0);
  }

  zoomControl = [(CAMFullscreenViewfinder *)self zoomControl];
  [(CAMFullscreenViewfinder *)self bounds];
  [CAMZoomControlUtilities layoutForExternalChromeZoomControl:"layoutForExternalChromeZoomControl:bounds:viewportFrame:referenceYForControlsAboveShutterButton:xOffset:" bounds:zoomControl viewportFrame:v4 referenceYForControlsAboveShutterButton:*&v5 xOffset:?];
}

- (void)_layoutZoomSliderForExternalChrome
{
  zoomSlider = [(CAMFullscreenViewfinder *)self zoomSlider];

  if (zoomSlider)
  {
    zoomSlider2 = [(CAMFullscreenViewfinder *)self zoomSlider];
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
    [CAMZoomSliderUtilities layoutZoomSlider:zoomSlider2 forLayoutStyle:0 bottomBarAlignmentRect:0 bottomBarTransparent:*MEMORY[0x1E695F058] shutterButtonAlignmentRect:*(MEMORY[0x1E695F058] + 8) previewViewAlignmentRect:*(MEMORY[0x1E695F058] + 16) viewfinderViewAlignmentRect:*(MEMORY[0x1E695F058] + 24), v5, v7, v9, v11, v13, v15, v17, v19, v20, v21, v22, v23];
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
  _viewportAspectRatioForControlsOverPreview = [(CAMFullscreenViewfinder *)self _viewportAspectRatioForControlsOverPreview];
  +[CAMChromeViewSpec shutterTopPadding];
  [CAMZoomControlUtilities referenceYForControlsAboveShutterButtonFrame:_viewportAspectRatioForControlsOverPreview viewportFrame:v4 aspectRatio:v6 shutterTopPadding:v8, v10, v12, v14, v16, v18, v20];
  return result;
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForBadgeTray
{
  [(CAMFullscreenViewfinder *)self frameForReticleViewport];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  orientation = [(CAMFullscreenViewfinder *)self orientation];
  v14 = MEMORY[0x1E695F058];
  isElapsedTimeViewVisible = [(CAMFullscreenViewfinder *)self isElapsedTimeViewVisible];
  v16 = [(CAMFullscreenViewfinder *)self _visibleInstructionLabelForInstructionLabelValue:[(CAMFullscreenViewfinder *)self visibleInstructionLabel]];
  v17 = [(CAMFullscreenViewfinder *)self _visibleInstructionLabelForInstructionLabelValue:[(CAMFullscreenViewfinder *)self visibleSecondaryInstructionLabel]];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  _layout = [(CAMFullscreenViewfinder *)self _layout];
  elapsedTimeView = [(CAMFullscreenViewfinder *)self elapsedTimeView];
  orientation2 = [(CAMFullscreenViewfinder *)self orientation];
  isSystemOverlayVisible = [(CAMFullscreenViewfinder *)self isSystemOverlayVisible];
  if (_layout)
  {
    [_layout geometryForElapsedTimeView:elapsedTimeView viewportFrame:orientation2 orientation:isSystemOverlayVisible systemOverlayVisible:{v6, v8, v10, v12}];
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
  if (isElapsedTimeViewVisible)
  {
    v61 = v67;
    v62 = v68;
    v63 = v69;
    v64 = v70;
    v59 = v65;
    v60 = v66;
    if (!(v16 | v17))
    {
      if (orientation - 3 > 1)
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
  if (orientation >= 3)
  {
    if (orientation == 3)
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
      if (!(isElapsedTimeViewVisible | ![(CAMFullscreenViewfinder *)self isSystemOverlayVisible]) && [(CAMFullscreenViewfinder *)self visibleInstructionLabel])
      {
        v6 = v6 + -28.0;
      }
    }

    else
    {
      if (orientation != 4)
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
  CAMViewGeometryForOrientedFrame(orientation, retstr, v6, v8, v10, v12);

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
  _layout = [(CAMFullscreenViewfinder *)self _layout];
  [_layout alignmentRectForShutterControl];
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
  _layout = [(CAMFullscreenViewfinder *)self _layout];
  flipButton = [(CAMFullscreenViewfinder *)self flipButton];
  [_layout frameForBottomRightControl:flipButton];
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
  machineReadableCodeButton = [(CAMFullscreenViewfinder *)self machineReadableCodeButton];
  orientation = [(CAMFullscreenViewfinder *)self orientation];
  zoomControl = [(CAMFullscreenViewfinder *)self zoomControl];
  zoomSlider = [(CAMFullscreenViewfinder *)self zoomSlider];
  [(CAMFullscreenViewfinder *)self _centerYForZoomControl:zoomControl zoomSlider:zoomSlider];
  MidX = v8;

  [(CAMFullscreenViewfinder *)self _imageAnalysisButtonAlignmentRectForCenterY:MidX];
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  v38 = CGRectInset(v37, -5.0, -5.0);
  if (orientation - 3 > 1)
  {
    v29 = v38.origin.x;
    [(CAMFullscreenViewfinder *)self bounds];
    v28 = v30 - v29;
    v27 = 15.0;
  }

  else
  {
    v33 = v38.origin.y;
    _viewportAspectRatioForControlsOverPreview = [(CAMFullscreenViewfinder *)self _viewportAspectRatioForControlsOverPreview];
    _layout = [(CAMFullscreenViewfinder *)self _layout];
    [_layout viewportFrameForAspectRatio:_viewportAspectRatioForControlsOverPreview accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
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
  [(CAMFullscreenViewfinder *)self _geometryForBottomCenteredView:machineReadableCodeButton margins:v28, v27];
  if (orientation >= 3)
  {
    if (orientation != 4)
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
  lightingControl = [(CAMFullscreenViewfinder *)self lightingControl];

  if (!lightingControl)
  {
    return 0;
  }

  return [(CAMFullscreenViewfinder *)self _isValidExternalChromeShutterButtonFrame];
}

- (CGRect)_frameForLightingControl
{
  lightingControl = [(CAMFullscreenViewfinder *)self lightingControl];
  viewportAspectRatio = [(CAMFullscreenViewfinder *)self viewportAspectRatio];
  if (viewportAspectRatio == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = viewportAspectRatio;
  }

  _layout = [(CAMFullscreenViewfinder *)self _layout];
  [_layout viewportFrameForAspectRatio:v5 accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
  v8 = v7;
  v10 = v9;

  [lightingControl contentHeightForWidth:v10];
  v12 = v11;
  [(CAMFullscreenViewfinder *)self _referenceYForControlsAboveShutterButton];
  [lightingControl frameForAlignmentRect:{v8, v13 - v12, v10, v12}];
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
  _layout = [(CAMFullscreenViewfinder *)self _layout];
  [_layout viewportFrameForAspectRatio:-[CAMFullscreenViewfinder viewportAspectRatio](self accessoryAreaExpanded:"viewportAspectRatio") smartStyleControlsExpanded:{-[CAMFullscreenViewfinder isControlDrawerExpanded](self, "isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
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
    viewportAspectRatio = [(CAMFullscreenViewfinder *)self viewportAspectRatio];
    if (viewportAspectRatio <= 6)
    {
      v3 = 0x6Du >> viewportAspectRatio;
    }

    else
    {
      v3 = 0;
    }
  }

  lightingControl = [(CAMFullscreenViewfinder *)self lightingControl];
  [lightingControl setClipsToBounds:v3 & 1];
}

- (CGRect)_imageAnalysisButtonFrameForZoomControl:(id)control zoomSlider:(id)slider
{
  [(CAMFullscreenViewfinder *)self _centerYForZoomControl:control zoomSlider:slider];

  [(CAMFullscreenViewfinder *)self _imageAnalysisButtonFrameForCenterY:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (double)_centerYForZoomControl:(id)control zoomSlider:(id)slider
{
  controlCopy = control;
  sliderCopy = slider;
  v8 = sliderCopy;
  if (controlCopy)
  {
    traitCollection = [(CAMFullscreenViewfinder *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    [CAMZoomButton circleDiameterForContentSize:preferredContentSizeCategory];
    v12 = v11;

    [controlCopy frame];
    v14 = v13;
    [controlCopy zoomButtonMaxYWhenContracted];
    MidY = v15 + v14 + v12 * -0.5;
  }

  else if (sliderCopy)
  {
    [sliderCopy frame];
    MidY = CGRectGetMidY(v18);
  }

  else
  {
    MidY = 0.0;
  }

  return MidY;
}

- (CGRect)_imageAnalysisButtonAlignmentRectForCenterY:(double)y
{
  traitCollection = [(CAMFullscreenViewfinder *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [CAMZoomButton circleDiameterForContentSize:preferredContentSizeCategory];
  v7 = v6;

  _layout = [(CAMFullscreenViewfinder *)self _layout];
  [_layout alignmentRectForBottomRightControlOfSize:{v7, v7}];

  UIRoundToViewScale();
  UIRectCenteredXInRectScale();
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)_imageAnalysisButtonFrameForCenterY:(double)y
{
  [(CAMFullscreenViewfinder *)self _imageAnalysisButtonAlignmentRectForCenterY:y];
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

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForInstructionLabel:(SEL)label belowInstructionLabelGeometry:(id)geometry elapsedTimeViewGeometry:(id *)viewGeometry
{
  geometryCopy = geometry;
  [(CAMFullscreenViewfinder *)self frameForReticleViewport];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  orientation = [(CAMFullscreenViewfinder *)self orientation];
  v20 = orientation;
  *retstr = *CAMViewGeometryZero;
  v21 = orientation - 3;
  if ((orientation - 3) >= 2)
  {
    v22 = v18;
  }

  else
  {
    v22 = v16;
  }

  if ((orientation - 3) >= 2)
  {
    v23 = v16;
  }

  else
  {
    v23 = v18;
  }

  [geometryCopy sizeThatFits:{v23 + -25.0, v22 + -25.0}];
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
      semanticStylePicker = [(CAMFullscreenViewfinder *)self semanticStylePicker];
    }

    else
    {
      if (![(CAMFullscreenViewfinder *)self _showSmartStylePicker])
      {
        goto LABEL_13;
      }

      semanticStylePicker = [(CAMFullscreenViewfinder *)self smartStylePicker];
    }

    v33 = semanticStylePicker;
    [semanticStylePicker spacerWidth];
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
  v46 = *&viewGeometry->var2.a;
  var1 = viewGeometry->var1;
  v92 = v46;
  v47 = *&viewGeometry->var2.tx;
  v93 = *&viewGeometry->var2.c;
  v94 = v47;
  v48 = viewGeometry->var0.size;
  origin = viewGeometry->var0.origin;
  v90 = v48;
  v85 = *&CAMViewGeometryZero[32];
  v86 = *&CAMViewGeometryZero[48];
  v87 = *&CAMViewGeometryZero[64];
  v88 = *&CAMViewGeometryZero[80];
  v83 = *CAMViewGeometryZero;
  v84 = *&CAMViewGeometryZero[16];
  v49 = CAMViewGeometryIsEqualToViewGeometry(&origin, &v83);
  v50 = *&viewGeometry->var2.a;
  var1 = viewGeometry->var1;
  v92 = v50;
  v51 = *&viewGeometry->var2.tx;
  v93 = *&viewGeometry->var2.c;
  v94 = v51;
  v52 = viewGeometry->var0.size;
  origin = viewGeometry->var0.origin;
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
  lightingNameBadge = [(CAMFullscreenViewfinder *)self lightingNameBadge];
  v6 = lightingNameBadge;
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  retstr->var1 = 0u;
  *&retstr->var2.a = 0u;
  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;
  if (lightingNameBadge)
  {
    CAMViewGetGeometry(lightingNameBadge, retstr);
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

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForBottomCenteredView:(SEL)view margins:(id)margins
{
  height = a5.height;
  width = a5.width;
  marginsCopy = margins;
  _viewportAspectRatioForControlsOverPreview = [(CAMFullscreenViewfinder *)self _viewportAspectRatioForControlsOverPreview];
  _layout = [(CAMFullscreenViewfinder *)self _layout];
  [_layout viewportFrameForAspectRatio:_viewportAspectRatioForControlsOverPreview accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(CAMFullscreenViewfinder *)self _geometryForBottomCenteredView:marginsCopy margins:width aroundFrame:height, v11, v13, v15, v17];

  return result;
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForBottomCenteredView:(SEL)view margins:(id)margins aroundFrame:(CGSize)frame
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = frame.height;
  v11 = frame.width;
  marginsCopy = margins;
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v44 = CGRectInset(v43, v11, v10);
  v15 = v44.origin.x;
  v16 = v44.origin.y;
  v32 = v44.size.width;
  v33 = v44.size.height;
  orientation = [(CAMFullscreenViewfinder *)self orientation];
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  CAMOrientationTransform(orientation, &v40);
  [marginsCopy sizeThatFits:{vmlaq_n_f64(vmulq_n_f64(v41, v33), v40, v32)}];
  v19 = v18;
  v21 = v20;

  UIRectGetCenter();
  v38 = v22;
  v39 = v23;
  if (orientation >= 3)
  {
    v24 = v32;
    v25 = v33;
    if (orientation == 3)
    {
      v29 = v15;
      v30 = v16;
      v28 = v21 * 0.5 + CGRectGetMinX(*(&v24 - 2));
    }

    else
    {
      if (orientation != 4)
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

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForTextInteractionInsertWithViewport:(SEL)viewport
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
  orientation = [(CAMFullscreenViewfinder *)self orientation];

  CAMViewGeometryForOrientedFrame(orientation, retstr, x, y, width, height);
  return result;
}

- (void)_applyTextInsertContentInsets
{
  textInteractionInsert = [(CAMFullscreenViewfinder *)self textInteractionInsert];
  [textInteractionInsert contentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  orientation = [(CAMFullscreenViewfinder *)self orientation];
  imageAnalysisInstructionLabel = [(CAMFullscreenViewfinder *)self imageAnalysisInstructionLabel];

  if (imageAnalysisInstructionLabel)
  {
    imageAnalysisInstructionLabel2 = [(CAMFullscreenViewfinder *)self imageAnalysisInstructionLabel];
    [imageAnalysisInstructionLabel2 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    imageAnalysisInstructionLabel3 = [(CAMFullscreenViewfinder *)self imageAnalysisInstructionLabel];
    superview = [imageAnalysisInstructionLabel3 superview];
    [textInteractionInsert convertRect:superview fromView:{v15, v17, v19, v21}];
    v25 = v24;
    v27 = v26;

    if (orientation == 2)
    {
      [textInteractionInsert bounds];
      v8 = v28 + v29 - v25 + 8.0;
      [(CAMFullscreenViewfinder *)self _frameForActionInfoView];
      v32 = v31;
LABEL_5:
      v34 = v32 + v30;
      [textInteractionInsert bounds];
      v4 = v34 - v35 + 8.0;
      goto LABEL_8;
    }

    [textInteractionInsert bounds];
    v4 = v25 + v27 - v36 + 8.0;
    [(CAMFullscreenViewfinder *)self _frameForActionInfoView];
    v32 = v37;
  }

  else
  {
    [(CAMFullscreenViewfinder *)self _frameForActionInfoView];
    v32 = v33;
    if (orientation == 2)
    {
      goto LABEL_5;
    }
  }

  [textInteractionInsert bounds];
  v8 = v38 + v39 - v32 + 8.0;
LABEL_8:
  [textInteractionInsert setContentInsets:{v4, v6, v8, v10}];
}

- (CGRect)_frameForActionInfoView
{
  imageAnalysisButton = [(CAMFullscreenViewfinder *)self imageAnalysisButton];
  textInteractionInsert = [(CAMFullscreenViewfinder *)self textInteractionInsert];
  [imageAnalysisButton bounds];
  [textInteractionInsert convertRect:imageAnalysisButton fromView:?];
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  v9 = CGRectGetWidth(v37);
  [imageAnalysisButton backgroundDiameter];
  v36 = (v9 - v10) * 0.5;
  [textInteractionInsert bounds];
  v11 = CGRectGetWidth(v38);
  [imageAnalysisButton backgroundDiameter];
  v13 = v12;
  imageInteraction = [textInteractionInsert imageInteraction];
  [imageInteraction actionInfoEdgeInsets];
  v16 = v15;

  orientation = [(CAMFullscreenViewfinder *)self orientation];
  if (orientation > 2)
  {
    if (orientation == 3)
    {
      [textInteractionInsert bounds];
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

    if (orientation != 4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (orientation >= 2)
  {
    if (orientation != 2)
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
  panoramaView = [(CAMFullscreenViewfinder *)self panoramaView];
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v4 = [(CAMFullscreenViewfinder *)self previewView:CAMTransformCorrectingForOrientation([(CAMFullscreenViewfinder *)self previewViewOrientation]];
  window = [(CAMFullscreenViewfinder *)self window];
  screen = [window screen];
  [screen _referenceBounds];

  [panoramaView panoramaCaptureSize];
  [CAMPanoramaUtilities panoramaViewSizeForCaptureSize:3 referenceBounds:*MEMORY[0x1E695F058] chromeSidebarFrame:*(MEMORY[0x1E695F058] + 8) layoutStyle:*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  v10 = v9;
  [v4 center];
  v12 = v11;
  v14 = v13;
  [panoramaView setBounds:{0.0, 0.0, v8, v10}];
  [panoramaView setCenter:{v12, v14}];
  v51[0] = v52;
  v51[1] = v53;
  v51[2] = v54;
  [panoramaView setTransform:v51];
  zoomControl = [(CAMFullscreenViewfinder *)self zoomControl];
  if (zoomControl)
  {
    v16 = zoomControl;
    isZoomControlVisible = [(CAMFullscreenViewfinder *)self isZoomControlVisible];

    if (isZoomControlVisible)
    {
      panoramaView2 = [(CAMFullscreenViewfinder *)self panoramaView];
      [panoramaView2 layoutIfNeeded];

      zoomControl2 = [(CAMFullscreenViewfinder *)self zoomControl];
      [zoomControl2 buttonPlatterDefaultFrame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      zoomControl3 = [(CAMFullscreenViewfinder *)self zoomControl];
      [(CAMFullscreenViewfinder *)self convertRect:zoomControl3 fromView:v21, v23, v25, v27];
      v30 = v29;

      panoramaView3 = [(CAMFullscreenViewfinder *)self panoramaView];
      instructionView = [panoramaView3 instructionView];
      [instructionView frame];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      panoramaView4 = [(CAMFullscreenViewfinder *)self panoramaView];
      [(CAMFullscreenViewfinder *)self convertRect:panoramaView4 fromView:v34, v36, v38, v40];
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
        [panoramaView setCenter:{v12, v14 - v50}];
      }
    }
  }
}

- (CGRect)_frameForSpatialRecordingIndicatorWithElapsedTimeViewGeometry:(id *)geometry orientation:(int64_t)orientation
{
  width = geometry->var0.size.width;
  height = geometry->var0.size.height;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  CAMOrientationTransform(orientation, v15);
  CAMViewGeometryMake(v15, &v16, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 0.0, 0.0, height, height);
  if (orientation >= 3)
  {
    v8 = height * 0.5 + width * 0.5 + 10.0;
    if (orientation == 3)
    {
      x = geometry->var1.x;
      v10 = v8 + geometry->var1.y;
    }

    else
    {
      if (orientation != 4)
      {
        goto LABEL_8;
      }

      x = geometry->var1.x;
      v10 = geometry->var1.y - v8;
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
  smartStyleNameBadge = [(CAMFullscreenViewfinder *)self smartStyleNameBadge];
  if (smartStyleNameBadge)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    [(CAMFullscreenViewfinder *)self _geometryForSmartStyleNameBadge:smartStyleNameBadge];
    v4[2] = v7;
    v4[3] = v8;
    v4[4] = v9;
    v4[5] = v10;
    v4[0] = v5;
    v4[1] = v6;
    CAMApplyAnimationSensitiveGeometryToView(v4, smartStyleNameBadge);
  }
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForSmartStyleNameBadge:(SEL)badge
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
    smartStylePicker = [(CAMFullscreenViewfinder *)self smartStylePicker];
    [smartStylePicker spacerWidth];
    v9 = v6 + v8;

    [(CAMFullscreenViewfinder *)self frameForReticleViewport];
    [(CAMFullscreenViewfinder *)self _geometryForBottomCenteredView:v15 margins:v9 aroundFrame:v9, v10, v11, v12, v13];
  }

  return result;
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForFilterNameBadge:(SEL)badge
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
    zoomControl = [(CAMFullscreenViewfinder *)self zoomControl];
    zoomSlider = [(CAMFullscreenViewfinder *)self zoomSlider];
    [(CAMFullscreenViewfinder *)self _centerYForZoomControl:zoomControl zoomSlider:zoomSlider];
    retstr->var1.y = v8;
  }

  return result;
}

- (void)setSmartFramingFieldOfView:(int64_t)view useTransition:(BOOL)transition animated:(BOOL)animated
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_smartFramingFieldOfView != view)
  {
    animatedCopy = animated;
    transitionCopy = transition;
    self->_smartFramingFieldOfView = view;
    v9 = os_log_create("com.apple.camera", "SmartFraming");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (transitionCopy)
      {
        v10 = @"YES";
      }

      v11 = v10;
      v13 = 134349314;
      viewCopy = view;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Setting smartFramingFieldOfView to: %{public}ld using transition: %{public}@", &v13, 0x16u);
    }

    if (transitionCopy)
    {
      _viewportAnimator = [(CAMFullscreenViewfinder *)self _viewportAnimator];
      [_viewportAnimator setValue:@"CAMViewfinderAnimatorSmartFramingTransitionPercentCompleteKey" forKey:0.0];

      [(CAMFullscreenViewfinder *)self set_useSmartFramingTransition:1];
      [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animatedCopy];
    }
  }
}

- (void)setOverCaptureGradientVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  _reticleView = [(CAMFullscreenViewfinder *)self _reticleView];
  [_reticleView setOverCaptureGradientVisible:visibleCopy animated:animatedCopy];
}

- (BOOL)overCaptureGradientVisible
{
  _reticleView = [(CAMFullscreenViewfinder *)self _reticleView];
  overCaptureGradientVisible = [_reticleView overCaptureGradientVisible];

  return overCaptureGradientVisible;
}

- (void)setOverCaptureGradientHeight:(double)height animated:(BOOL)animated
{
  animatedCopy = animated;
  _reticleView = [(CAMFullscreenViewfinder *)self _reticleView];
  [_reticleView setOverCaptureGradientHeight:animatedCopy animated:height];
}

- (double)overCaptureGradientHeight
{
  _reticleView = [(CAMFullscreenViewfinder *)self _reticleView];
  [_reticleView overCaptureGradientHeight];
  v4 = v3;

  return v4;
}

- (void)setPortraitControlsAllowed:(BOOL)allowed animated:(BOOL)animated
{
  if (self->_portraitControlsAllowed != allowed)
  {
    animatedCopy = animated;
    [(CAMFullscreenViewfinder *)self _loadPortraitControlsIfNeeded];
    if (animatedCopy)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_portraitControlsAllowed = allowed;
    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animatedCopy];

    [(CAMFullscreenViewfinder *)self _updateZoomControlForLayoutConflictsAnimated:animatedCopy];
  }
}

- (void)setShallowDepthOfFieldStatus:(int64_t)status animated:(BOOL)animated
{
  if (self->_shallowDepthOfFieldStatus != status)
  {
    animatedCopy = animated;
    if (animated)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_shallowDepthOfFieldStatus = status;
    portraitInstructionLabel = [(CAMFullscreenViewfinder *)self portraitInstructionLabel];
    [portraitInstructionLabel setShallowDepthOfFieldStatus:status];

    [(CAMFullscreenViewfinder *)self _updatePortraitControlsHighlightAnimated:animatedCopy];

    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animatedCopy];
  }
}

- (void)setLightingNameBadgesHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (self->_lightingNameBadgesHidden != hidden)
  {
    self->_lightingNameBadgesHidden = hidden;
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animated];
  }
}

- (void)_loadPortraitControlsIfNeeded
{
  lightingControl = [(CAMFullscreenViewfinder *)self lightingControl];

  if (!lightingControl)
  {
    _contentView = [(CAMFullscreenViewfinder *)self _contentView];
    _contentViewBelowShutter = [(CAMFullscreenViewfinder *)self _contentViewBelowShutter];
    v5 = objc_alloc_init(MEMORY[0x1E6993868]);
    lightingControl = self->_lightingControl;
    self->_lightingControl = v5;

    [(CEKLightingControl *)self->_lightingControl setNameBadgeFontStyle:[(CAMFullscreenViewfinder *)self _badgeFontStyle]];
    [(CEKLightingControl *)self->_lightingControl setMaxContentWidth:1.79769313e308];
    [(CEKLightingControl *)self->_lightingControl setOrientation:[(CAMFullscreenViewfinder *)self orientation]];
    [(CEKLightingControl *)self->_lightingControl preloadEffectChangeAnimation];
    [(CEKLightingControl *)self->_lightingControl setNameBadgeHidden:([(CAMFullscreenViewfinder *)self orientation]- 3) < 2];
    v7 = self->_lightingControl;
    zoomControl = [(CAMFullscreenViewfinder *)self zoomControl];
    [CAMView view:_contentViewBelowShutter insertSubview:v7 belowSubview:zoomControl];

    v9 = objc_alloc_init(MEMORY[0x1E6993878]);
    lightingNameBadge = self->_lightingNameBadge;
    self->_lightingNameBadge = v9;

    [(CEKLightingNameBadge *)self->_lightingNameBadge setUserInteractionEnabled:0];
    [(CEKLightingNameBadge *)self->_lightingNameBadge setFontStyle:[(CAMFullscreenViewfinder *)self _badgeFontStyle]];
    [(CEKLightingNameBadge *)self->_lightingNameBadge setDelegate:self];
    [_contentView addSubview:self->_lightingNameBadge];
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:0];
    [(CAMFullscreenViewfinder *)self _updatePortraitControlsHighlightAnimated:0];
    [(CAMFullscreenViewfinder *)self _updateLightingControlClipping];
    delegate = [(CAMFullscreenViewfinder *)self delegate];
    [delegate fullscreenViewfinderDidCreatePortraitControls:self];
  }
}

- (void)_updatePortraitControlsHighlightAnimated:(BOOL)animated
{
  animatedCopy = animated;
  shallowDepthOfFieldStatus = [(CAMFullscreenViewfinder *)self shallowDepthOfFieldStatus];
  v6 = shallowDepthOfFieldStatus < 0xF;
  v7 = 0x6202u >> shallowDepthOfFieldStatus;
  lightingControl = [(CAMFullscreenViewfinder *)self lightingControl];
  [lightingControl setHighlighted:v6 & v7 animated:animatedCopy];

  lightingNameBadge = [(CAMFullscreenViewfinder *)self lightingNameBadge];
  [lightingNameBadge setHighlighted:v6 & v7];
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
    _contentView = [(CAMFullscreenViewfinder *)self _contentView];
    [_contentView addSubview:self->_filterNameBadge];
  }
}

- (void)setWantsSmartStylePicker:(BOOL)picker animated:(BOOL)animated
{
  if (self->_wantsSmartStylePicker != picker)
  {
    self->_wantsSmartStylePicker = picker;
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animated];
  }
}

- (BOOL)isSmartStylePickerVisible
{
  smartStyleControlsVisible = [(CAMFullscreenViewfinder *)self smartStyleControlsVisible];
  if (smartStyleControlsVisible)
  {

    LOBYTE(smartStyleControlsVisible) = [(CAMFullscreenViewfinder *)self wantsSmartStylePicker];
  }

  return smartStyleControlsVisible;
}

- (void)_setSmartStyleControlsVisible:(BOOL)visible animated:(BOOL)animated notifyDelegate:(BOOL)delegate
{
  if (self->_smartStyleControlsVisible != visible)
  {
    delegateCopy = delegate;
    animatedCopy = animated;
    visibleCopy = visible;
    if (visible)
    {
      [(CAMFullscreenViewfinder *)self _loadSmartStyleControlsIfNeeded];
    }

    if (animatedCopy)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_smartStyleControlsVisible = visibleCopy;
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animatedCopy];
    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animatedCopy];
    if (delegateCopy)
    {
      delegate = [(CAMFullscreenViewfinder *)self delegate];
      [delegate fullscreenViewfinder:self didChangeSmartStyleControlsVisibility:visibleCopy animated:animatedCopy];
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
    _contentView = [(CAMFullscreenViewfinder *)self _contentView];
    [_contentView addSubview:self->_smartStyleNameBadge];

    v6 = objc_alloc_init(CAMSemanticStylePicker);
    smartStylePicker = self->_smartStylePicker;
    self->_smartStylePicker = v6;

    [(CAMSemanticStylePicker *)self->_smartStylePicker setScrollEnabled:0];
    [(CAMSemanticStylePicker *)self->_smartStylePicker setScrollViewUserInteractionEnabled:0];
    [(CAMSemanticStylePicker *)self->_smartStylePicker setDelegate:self];
    [(CAMSemanticStylePicker *)self->_smartStylePicker setExpanded:0];
    [(CAMSemanticStylePicker *)self->_smartStylePicker setMaterial:[(CAMFullscreenViewfinder *)self material]];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(CAMSemanticStylePicker *)self->_smartStylePicker setMaterialColor:blackColor];

    [(CAMSemanticStylePicker *)self->_smartStylePicker setPageControlMaxNumberOfDots:5];
    [(CAMFullscreenViewfinder *)self _insertStylePicker:self->_smartStylePicker];
    [(CAMSmartStyleNameBadge *)self->_smartStyleNameBadge setAlpha:0.0];
    delegate = [(CAMFullscreenViewfinder *)self delegate];
    [delegate fullscreenViewfinderDidCreateSmartStyleControls:self];

    v10 = self->_smartStylePicker;
    [(CAMFullscreenViewfinder *)self frameForReticleViewport];
    [(CAMFullscreenViewfinder *)self _updateSemanticStylePicker:v10 forViewportFrame:?];

    [(CAMFullscreenViewfinder *)self setNeedsLayout];
  }
}

- (void)_insertStylePicker:(id)picker
{
  pickerCopy = picker;
  chromeView = [(CAMFullscreenViewfinder *)self chromeView];
  v6 = chromeView;
  if (chromeView)
  {
    _reticleView = chromeView;
  }

  else
  {
    _reticleView = [(CAMFullscreenViewfinder *)self _reticleView];
  }

  v8 = _reticleView;

  [CAMView view:self insertSubview:pickerCopy belowSubview:v8];
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
    delegate = [(CAMFullscreenViewfinder *)self delegate];
    v9 = [delegate fullscreenViewfinderSemanticStyleList:self];

    -[CAMSemanticStylePicker setNumberOfStyles:](self->_semanticStylePicker, "setNumberOfStyles:", [v9 count]);
    [(CAMSemanticStylePicker *)self->_semanticStylePicker setExpanded:0];
    [(CAMSemanticStylePicker *)self->_semanticStylePicker setMaterial:[(CAMFullscreenViewfinder *)self material]];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(CAMSemanticStylePicker *)self->_semanticStylePicker setMaterialColor:blackColor];

    [(CAMFullscreenViewfinder *)self _insertStylePicker:self->_semanticStylePicker];
    v7 = self->_semanticStylePicker;
    [(CAMFullscreenViewfinder *)self frameForReticleViewport];
    [(CAMFullscreenViewfinder *)self _updateSemanticStylePicker:v7 forViewportFrame:?];
    delegate2 = [(CAMFullscreenViewfinder *)self delegate];
    [delegate2 fullscreenViewfinderDidCreateSemanticStyleControls:self];
  }
}

- (void)reloadSemanticStyleBadgesDelayIfNeeded:(BOOL)needed
{
  delegate = [(CAMFullscreenViewfinder *)self delegate];
  v6 = [delegate fullscreenViewfinderSemanticStyleList:self];

  if (!self->__semanticStyleBadges)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    semanticStyleBadges = self->__semanticStyleBadges;
    self->__semanticStyleBadges = v7;
  }

  while (1)
  {
    _semanticStyleBadges = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
    v13 = [_semanticStyleBadges count];
    v14 = [v6 count];

    if (v13 <= v14)
    {
      break;
    }

    _semanticStyleBadges2 = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
    lastObject = [_semanticStyleBadges2 lastObject];

    [lastObject removeFromSuperview];
    _semanticStyleBadges3 = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
    [_semanticStyleBadges3 removeLastObject];
  }

  _semanticStyleBadges4 = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
  v16 = [_semanticStyleBadges4 count];
  v17 = [v6 count];

  if (v16 < v17)
  {
    do
    {
      v18 = objc_alloc_init(CAMSemanticStyleMaskedBadge);
      badgeView = [(CAMSemanticStyleMaskedBadge *)v18 badgeView];
      [badgeView setDelegate:self];

      _badgeFontStyle = [(CAMFullscreenViewfinder *)self _badgeFontStyle];
      badgeView2 = [(CAMSemanticStyleMaskedBadge *)v18 badgeView];
      [badgeView2 setFontStyle:_badgeFontStyle];

      _semanticStyleBadges5 = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
      [_semanticStyleBadges5 addObject:v18];

      _contentView = [(CAMFullscreenViewfinder *)self _contentView];
      [_contentView addSubview:v18];

      _semanticStyleBadges6 = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
      v25 = [_semanticStyleBadges6 count];
      v26 = [v6 count];
    }

    while (v25 < v26);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __66__CAMFullscreenViewfinder_reloadSemanticStyleBadgesDelayIfNeeded___block_invoke;
  v27[3] = &unk_1E76F7800;
  v27[4] = self;
  neededCopy = needed;
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

- (void)semanticStylePickerDidChangeSelectedStyle:(id)style
{
  styleCopy = style;
  semanticStylePicker = [(CAMFullscreenViewfinder *)self semanticStylePicker];

  if (semanticStylePicker == styleCopy)
  {
    delegate = [(CAMFullscreenViewfinder *)self delegate];
    [delegate fullscreenViewfinderDidChangeSemanticStyle:self];
  }

  else
  {
    smartStylePicker = [(CAMFullscreenViewfinder *)self smartStylePicker];

    v6 = styleCopy;
    if (smartStylePicker != styleCopy)
    {
      goto LABEL_6;
    }

    delegate = [(CAMFullscreenViewfinder *)self delegate];
    [delegate fullscreenViewfinderDidChangeSelectedSmartStyle:self];
  }

  v6 = styleCopy;
LABEL_6:
}

- (void)semanticStylePickerDidScroll:(id)scroll
{
  scrollCopy = scroll;
  semanticStylePicker = [(CAMFullscreenViewfinder *)self semanticStylePicker];

  if (semanticStylePicker == scrollCopy)
  {
    [(CAMFullscreenViewfinder *)self _layoutSemanticStyleMaskedBadges];

    [(CAMFullscreenViewfinder *)self requestPreviewUpdateForSemanticStyleAnimated:0];
  }
}

- (void)_layoutSemanticStyleMaskedBadges
{
  _viewportAspectRatioForControlsOverPreview = [(CAMFullscreenViewfinder *)self _viewportAspectRatioForControlsOverPreview];
  _layout = [(CAMFullscreenViewfinder *)self _layout];
  [_layout viewportFrameForAspectRatio:_viewportAspectRatioForControlsOverPreview accessoryAreaExpanded:-[CAMFullscreenViewfinder isControlDrawerExpanded](self smartStyleControlsExpanded:{"isControlDrawerExpanded"), -[CAMFullscreenViewfinder smartStyleControlsVisible](self, "smartStyleControlsVisible")}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  orientation = [(CAMFullscreenViewfinder *)self orientation];
  if (orientation >= 3)
  {
    v24 = v8;
    v25 = v6;
    if (orientation - 3 >= 2)
    {
      v27 = 0.0;
    }

    else
    {
      semanticStylePicker = [(CAMFullscreenViewfinder *)self semanticStylePicker];
      [semanticStylePicker spacerWidth];
      v27 = 10.0 + 15.0 + v29;
    }
  }

  else
  {
    semanticStylePicker2 = [(CAMFullscreenViewfinder *)self semanticStylePicker];
    semanticStylePicker3 = [(CAMFullscreenViewfinder *)self semanticStylePicker];
    pageControl = [semanticStylePicker3 pageControl];
    [pageControl frame];
    [semanticStylePicker2 convertRect:self toView:?];
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

  _semanticStyleBadges = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
  *&rect.origin.y = MEMORY[0x1E69E9820];
  *&rect.size.width = 3221225472;
  *&rect.size.height = __59__CAMFullscreenViewfinder__layoutSemanticStyleMaskedBadges__block_invoke;
  v32 = &unk_1E76F7828;
  selfCopy = self;
  v34 = v27;
  v35 = v27;
  v36 = v25;
  v37 = v24;
  v38 = v10;
  v39 = v12;
  [_semanticStyleBadges enumerateObjectsUsingBlock:&rect.origin.y];
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

- (void)setViewportAspectRatio:(int64_t)ratio animated:(BOOL)animated
{
  if (self->_viewportAspectRatio != ratio)
  {
    animatedCopy = animated;
    if (animated)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_viewportAspectRatio = ratio;
    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animatedCopy];

    [(CAMFullscreenViewfinder *)self _updateLightingControlClipping];
  }
}

- (void)setControlDrawerExpanded:(BOOL)expanded forReason:(int64_t)reason animated:(BOOL)animated
{
  if (self->_controlDrawerExpanded == expanded)
  {
    return;
  }

  animatedCopy = animated;
  expandedCopy = expanded;
  controlDrawer = [(CAMFullscreenViewfinder *)self controlDrawer];

  if (!controlDrawer && expandedCopy)
  {
    v10 = [[CAMControlDrawer alloc] initWithLayoutStyle:3];
    [(CAMFullscreenViewfinder *)self _setControlDrawer:v10];

    orientation = [(CAMFullscreenViewfinder *)self orientation];
    controlDrawer2 = [(CAMFullscreenViewfinder *)self controlDrawer];
    [controlDrawer2 setOrientation:orientation];

    controlDrawer3 = [(CAMFullscreenViewfinder *)self controlDrawer];
    [controlDrawer3 setPresentationDelegate:self];

    _contentView = [(CAMFullscreenViewfinder *)self _contentView];
    controlDrawer4 = [(CAMFullscreenViewfinder *)self controlDrawer];
    [_contentView addSubview:controlDrawer4];

    delegate = [(CAMFullscreenViewfinder *)self delegate];
    [delegate fullscreenViewfinderDidCreateControlDrawer:self];
  }

  controlDrawer5 = [(CAMFullscreenViewfinder *)self controlDrawer];
  v33 = controlDrawer5;
  if ((reason & 0xFFFFFFFFFFFFFFFBLL) != 0 || !expandedCopy)
  {
    v18 = -1;
  }

  else
  {
    v18 = -1;
    if ([controlDrawer5 expandedControlType] == -1)
    {
      delegate2 = [(CAMFullscreenViewfinder *)self delegate];
      v20 = [delegate2 expandedControlTypeForExpandingDrawerInFullscreenViewfinder:self];

      visibleControlTypes = [v33 visibleControlTypes];
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
      v23 = [visibleControlTypes containsObject:v22];

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

  if (animatedCopy)
  {
    [(CAMFullscreenViewfinder *)self layoutIfNeeded];
  }

  self->_controlDrawerExpanded = expandedCopy;
  [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animatedCopy];
  [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animatedCopy];
  if (!expandedCopy)
  {
    [(CAMFullscreenViewfinder *)self _setControlDrawerPresentedModally:0];
LABEL_22:
    [(CAMFullscreenViewfinder *)self _setSmartStyleControlsVisible:expandedCopy animated:animatedCopy notifyDelegate:1];
    goto LABEL_23;
  }

  visibleControlTypes2 = [v33 visibleControlTypes];
  v25 = [visibleControlTypes2 count];

  if (v25 == 1)
  {
    visibleControlTypes3 = [v33 visibleControlTypes];
    firstObject = [visibleControlTypes3 firstObject];
    integerValue = [firstObject integerValue];

    v29 = v33;
    v30 = integerValue;
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
    v31 = animatedCopy;
  }

  [v29 expandControlForType:v30 animated:v31 updatePreferredDrawerControl:0];
LABEL_21:
  if ([v33 expandedControlType] == 11)
  {
    goto LABEL_22;
  }

LABEL_23:
  delegate3 = [(CAMFullscreenViewfinder *)self delegate];
  [delegate3 fullscreenViewfinder:self didChangeControlDrawerVisibility:expandedCopy animated:animatedCopy forReason:reason];
}

- (void)presentControlDrawerModally:(BOOL)modally forReason:(int64_t)reason controlType:(int64_t)type
{
  modallyCopy = modally;
  isControlDrawerExpanded = [(CAMFullscreenViewfinder *)self isControlDrawerExpanded];
  _isControlDrawerPresentedModally = [(CAMFullscreenViewfinder *)self _isControlDrawerPresentedModally];
  if (modallyCopy && (_isControlDrawerPresentedModally || !isControlDrawerExpanded))
  {
    delegate = [(CAMFullscreenViewfinder *)self delegate];
    [delegate fullscreenViewFinder:self willPresentControlDrawerModallyForControlType:type reason:reason];

    [(CAMFullscreenViewfinder *)self setControlDrawerExpanded:1 forReason:reason animated:1];
    controlDrawer = [(CAMFullscreenViewfinder *)self controlDrawer];
    [controlDrawer expandControlForType:type animated:isControlDrawerExpanded updatePreferredDrawerControl:reason == 1];

    [(CAMFullscreenViewfinder *)self _setControlDrawerPresentedModally:1];
  }

  else
  {
    [(CAMFullscreenViewfinder *)self setControlDrawerExpanded:1 forReason:reason animated:1];
    controlDrawer2 = [(CAMFullscreenViewfinder *)self controlDrawer];
    [controlDrawer2 expandControlForType:type animated:isControlDrawerExpanded updatePreferredDrawerControl:reason == 1];
  }
}

- (BOOL)isControlDrawerPresentedModallyWithControlType:(int64_t)type
{
  if (![(CAMFullscreenViewfinder *)self isControlDrawerExpanded]|| ![(CAMFullscreenViewfinder *)self _isControlDrawerPresentedModally])
  {
    return 0;
  }

  controlDrawer = [(CAMFullscreenViewfinder *)self controlDrawer];
  v6 = [controlDrawer isControlExpandedForType:type];

  return v6;
}

- (void)dismissModalControlDrawerIfNeededForReason:(int64_t)reason
{
  if ([(CAMFullscreenViewfinder *)self _isControlDrawerPresentedModally])
  {
    [(CAMFullscreenViewfinder *)self _setControlDrawerPresentedModally:0];
    controlDrawer = [(CAMFullscreenViewfinder *)self controlDrawer];
    expandedControl = [controlDrawer expandedControl];

    if (expandedControl)
    {
      delegate = [(CAMFullscreenViewfinder *)self delegate];
      [delegate fullscreenViewFinder:self willDismissControlDrawerModallyForControlType:objc_msgSend(expandedControl reason:{"controlType"), reason}];
    }

    [(CAMFullscreenViewfinder *)self setControlDrawerExpanded:0 forReason:reason animated:1];
  }
}

- (void)controlDrawer:(id)drawer didChangeExpanded:(BOOL)expanded forControlType:(int64_t)type animated:(BOOL)animated updatePreferredDrawerControl:(BOOL)control
{
  controlCopy = control;
  animatedCopy = animated;
  expandedCopy = expanded;
  drawerCopy = drawer;
  if (!expandedCopy)
  {
    [(CAMFullscreenViewfinder *)self _setControlDrawerPresentedModally:0];
  }

  switch(type)
  {
    case 4:
      [(CAMFullscreenViewfinder *)self _loadFilterControlsIfNeeded];
      [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:1];
      break;
    case 11:
      [(CAMFullscreenViewfinder *)self _loadSmartStyleControlsIfNeeded];
      [(CAMFullscreenViewfinder *)self _setSmartStyleControlsVisible:expandedCopy animated:expandedCopy | animatedCopy notifyDelegate:1];
      break;
    case 10:
      [(CAMFullscreenViewfinder *)self _updateForSemanticStyleControlsDidChangeVisibility:expandedCopy animated:animatedCopy];
      break;
  }

  delegate = [(CAMFullscreenViewfinder *)self delegate];
  [delegate fullscreenViewfinder:self didChangeExpanded:expandedCopy forDrawerControlOfType:type animated:animatedCopy updatePreferredDrawerControl:controlCopy];

  if (!expandedCopy)
  {
    visibleControlTypes = [drawerCopy visibleControlTypes];
    v14 = [visibleControlTypes count];

    if (v14 == 1)
    {
      [(CAMFullscreenViewfinder *)self setControlDrawerExpanded:0 forReason:8 animated:1];
    }
  }
}

- (void)_updateForSemanticStyleControlsDidChangeVisibility:(BOOL)visibility animated:(BOOL)animated
{
  animatedCopy = animated;
  visibilityCopy = visibility;
  [(CAMFullscreenViewfinder *)self _loadSemanticStyleControlsIfNeeded];
  [(CAMFullscreenViewfinder *)self requestPreviewUpdateForSemanticStyleAnimated:0];
  [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animatedCopy];
  delegate = [(CAMFullscreenViewfinder *)self delegate];
  [delegate fullscreenViewfinder:self didChangeExpanded:visibilityCopy forDrawerControlOfType:10 animated:animatedCopy updatePreferredDrawerControl:0];
}

- (BOOL)isApertureSliderVisible
{
  isControlDrawerExpanded = [(CAMFullscreenViewfinder *)self isControlDrawerExpanded];
  if (isControlDrawerExpanded)
  {
    controlDrawer = [(CAMFullscreenViewfinder *)self controlDrawer];
    isApertureSliderExpanded = [controlDrawer isApertureSliderExpanded];

    LOBYTE(isControlDrawerExpanded) = isApertureSliderExpanded;
  }

  return isControlDrawerExpanded;
}

- (BOOL)isIntensitySliderVisible
{
  isControlDrawerExpanded = [(CAMFullscreenViewfinder *)self isControlDrawerExpanded];
  if (isControlDrawerExpanded)
  {
    controlDrawer = [(CAMFullscreenViewfinder *)self controlDrawer];
    isIntensitySliderExpanded = [controlDrawer isIntensitySliderExpanded];

    LOBYTE(isControlDrawerExpanded) = isIntensitySliderExpanded;
  }

  return isControlDrawerExpanded;
}

- (BOOL)isNightModeSliderVisible
{
  isControlDrawerExpanded = [(CAMFullscreenViewfinder *)self isControlDrawerExpanded];
  if (isControlDrawerExpanded)
  {
    controlDrawer = [(CAMFullscreenViewfinder *)self controlDrawer];
    isNightModeSliderExpanded = [controlDrawer isNightModeSliderExpanded];

    LOBYTE(isControlDrawerExpanded) = isNightModeSliderExpanded;
  }

  return isControlDrawerExpanded;
}

- (BOOL)isExposureSliderVisible
{
  isControlDrawerExpanded = [(CAMFullscreenViewfinder *)self isControlDrawerExpanded];
  if (isControlDrawerExpanded)
  {
    controlDrawer = [(CAMFullscreenViewfinder *)self controlDrawer];
    isExposureSliderExpanded = [controlDrawer isExposureSliderExpanded];

    LOBYTE(isControlDrawerExpanded) = isExposureSliderExpanded;
  }

  return isControlDrawerExpanded;
}

- (void)setSpotlightControl:(int64_t)control animated:(BOOL)animated
{
  if (self->_spotlightControl != control)
  {
    animatedCopy = animated;
    spotlightControlPanel = [(CAMFullscreenViewfinder *)self spotlightControlPanel];
    v8 = [(CAMFullscreenViewfinder *)self _wantsSpotlightControlPanelForControl:control];
    v9 = v8;
    if (!spotlightControlPanel && v8)
    {
      spotlightControlPanel = objc_alloc_init(CAMSpotlightControlPanel);
      [(CAMSpotlightControlPanel *)spotlightControlPanel setOrientation:[(CAMFullscreenViewfinder *)self orientation]];
      _contentView = [(CAMFullscreenViewfinder *)self _contentView];
      [_contentView addSubview:spotlightControlPanel];

      [(CAMFullscreenViewfinder *)self _setSpotlightControlPanel:spotlightControlPanel];
      delegate = [(CAMFullscreenViewfinder *)self delegate];
      [delegate fullscreenViewfinderDidCreateSpotlightControlPanel:self];
    }

    if (v9)
    {
      v12 = [(CAMFullscreenViewfinder *)self _wantsSpotlightControlPanelForControl:self->_spotlightControl];
      spotlightControlPanel2 = [(CAMFullscreenViewfinder *)self spotlightControlPanel];
      [spotlightControlPanel2 setSpotlightControl:control animated:v12];
    }

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:control];
    _badgesForSpotlightControls = [(CAMFullscreenViewfinder *)self _badgesForSpotlightControls];
    v16 = [_badgesForSpotlightControls objectForKeyedSubscript:v14];

    if (v16)
    {
      if (animatedCopy)
      {
LABEL_9:
        [(CAMFullscreenViewfinder *)self layoutIfNeeded];
        self->_spotlightControl = control;
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
      if (control == 2)
      {
        v16 = objc_alloc_init(CAMFocusLockBadge);
        [(CAMFocusLockBadge *)v16 setFocusLockType:2];
      }

      else if (control == 3)
      {
        v16 = objc_alloc_init(CAMShallowDepthOfFieldBadge);
        [(CAMFocusLockBadge *)v16 setShallowDepthOfFieldStatus:1];
      }

      else
      {
        v16 = 0;
      }

      _contentView2 = [(CAMFullscreenViewfinder *)self _contentView];
      [_contentView2 addSubview:v16];

      _badgesForSpotlightControls2 = [(CAMFullscreenViewfinder *)self _badgesForSpotlightControls];
      [_badgesForSpotlightControls2 setObject:v16 forKeyedSubscript:v14];

      if (animatedCopy)
      {
        goto LABEL_9;
      }
    }

    self->_spotlightControl = control;
    [(CAMFullscreenViewfinder *)self setNeedsLayout];
    [(CAMFullscreenViewfinder *)self _updateQuietUIAnimated:0];
    goto LABEL_17;
  }
}

- (void)_updateQuietUIAnimated:(BOOL)animated
{
  animatedCopy = animated;
  spotlightControl = [(CAMFullscreenViewfinder *)self spotlightControl];
  if (spotlightControl == 1)
  {
    _contentView = [(CAMFullscreenViewfinder *)self _contentView];
    [(CAMFullscreenViewfinder *)self _ensureBlurFilterForContentView:_contentView];

    _contentViewBelowShutter = [(CAMFullscreenViewfinder *)self _contentViewBelowShutter];
    [(CAMFullscreenViewfinder *)self _ensureBlurFilterForContentView:_contentViewBelowShutter];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__CAMFullscreenViewfinder__updateQuietUIAnimated___block_invoke;
  v10[3] = &unk_1E76F7850;
  v10[4] = self;
  v11 = spotlightControl == 1;
  v8 = _Block_copy(v10);
  v9 = v8;
  if (animatedCopy)
  {
    [(CAMFullscreenViewfinder *)self _animateQuietUIActive:spotlightControl == 1 animations:v8 completion:0];
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

- (void)_animateQuietUIActive:(BOOL)active animations:(id)animations completion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x1E69DD280];
  animationsCopy = animations;
  if (active)
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
  v16 = completionCopy;
  v14 = completionCopy;
  [v13 _animateUsingSpringBehavior:v12 tracking:0 animations:animationsCopy completion:v15];
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

- (void)_ensureBlurFilterForContentView:(id)view
{
  v9[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  subviews = [viewCopy subviews];
  v5 = [subviews count];

  if (v5)
  {
    layer = [viewCopy layer];
    v7 = [layer valueForKeyPath:@"filters.gaussianBlur"];
    if (!v7)
    {
      v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
      [v7 setName:@"gaussianBlur"];
      v9[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      [layer setFilters:v8];
    }
  }
}

- (void)_updateContentView:(id)view forQuietUIActive:(BOOL)active
{
  activeCopy = active;
  viewCopy = view;
  subviews = [viewCopy subviews];
  v7 = [subviews count];

  if (v7)
  {
    if (activeCopy)
    {
      v8 = 1.03;
    }

    else
    {
      v8 = 1.0;
    }

    if (activeCopy)
    {
      v9 = 10.0;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = !activeCopy;
    layer = [viewCopy layer];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    [layer setValue:v12 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    CGAffineTransformMakeScale(&v14, v8, v8);
    v13 = v14;
    [viewCopy setTransform:&v13];
    [viewCopy setAlpha:v10];
  }
}

- (BOOL)_shouldShowSpatialCaptureRecordingIndicator
{
  isSpatialCaptureRecordingIndicatorVisible = [(CAMFullscreenViewfinder *)self isSpatialCaptureRecordingIndicatorVisible];
  orientation = [(CAMFullscreenViewfinder *)self orientation];
  v5 = orientation == 3;
  result = orientation != 3 && isSpatialCaptureRecordingIndicatorVisible;
  if (v5 && isSpatialCaptureRecordingIndicatorVisible)
  {
    return ![(CAMFullscreenViewfinder *)self isSystemOverlayVisible];
  }

  return result;
}

- (void)setSpatialCaptureRecordingIndicatorVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_spatialCaptureRecordingIndicatorVisible != visible)
  {
    v16 = v7;
    v17 = v6;
    v18 = v5;
    v19 = v4;
    animatedCopy = animated;
    self->_spatialCaptureRecordingIndicatorVisible = visible;
    if (visible)
    {
      spatialCaptureRecordingIndicator = [(CAMFullscreenViewfinder *)self spatialCaptureRecordingIndicator];

      if (!spatialCaptureRecordingIndicator)
      {
        v13 = objc_alloc_init(CAMSpatialCaptureRecordingIndicator);
        [(CAMSpatialCaptureRecordingIndicator *)v13 setOrientation:[(CAMFullscreenViewfinder *)self orientation]];
        _modulatingContentView = [(CAMFullscreenViewfinder *)self _modulatingContentView];
        [_modulatingContentView addSubview:v13];

        if (animatedCopy)
        {
          [(CAMSpatialCaptureRecordingIndicator *)v13 setAlpha:0.0];
        }

        [(CAMFullscreenViewfinder *)self _setSpatialCaptureRecordingIndicator:v13, v16, v17, v18, v19, v8];
      }

      v15 = [(CAMFullscreenViewfinder *)self spatialCaptureRecordingIndicator:v16];
      [v15 setOrientation:-[CAMFullscreenViewfinder orientation](self animated:{"orientation"), 0}];

      [(CAMFullscreenViewfinder *)self setNeedsLayout];
    }

    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animatedCopy];
  }
}

- (void)setOrientationInstructionVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_orientationInstructionVisible != visible)
  {
    animatedCopy = animated;
    self->_orientationInstructionVisible = visible;
    if (visible)
    {
      _orientationInstructionView = [(CAMFullscreenViewfinder *)self _orientationInstructionView];

      if (!_orientationInstructionView)
      {
        v8 = objc_alloc_init(CAMOrientationInstructionView);
        [(CAMOrientationInstructionView *)v8 setOrientation:[(CAMFullscreenViewfinder *)self deviceOrientation]];
        [(CAMOrientationInstructionView *)v8 setHasBlurredBackground:[(CAMFullscreenViewfinder *)self isOrientationInstructionBackgroundBlurred] animated:0];
        [(CAMFullscreenViewfinder *)self _insertBackgroundSubview:v8];
        [(CAMFullscreenViewfinder *)self _setOrientationInstructionView:v8];
        if (animatedCopy)
        {
          [(CAMOrientationInstructionView *)v8 setAlpha:0.0];
        }
      }
    }

    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animatedCopy];
  }
}

- (void)setOrientationInstructionBackgroundBlurred:(BOOL)blurred animated:(BOOL)animated
{
  if (self->_orientationInstructionBackgroundBlurred != blurred)
  {
    animatedCopy = animated;
    blurredCopy = blurred;
    self->_orientationInstructionBackgroundBlurred = blurred;
    _orientationInstructionView = [(CAMFullscreenViewfinder *)self _orientationInstructionView];
    [_orientationInstructionView setHasBlurredBackground:blurredCopy animated:animatedCopy];
  }
}

- (void)setStereoCaptureStatus:(int64_t)status animated:(BOOL)animated
{
  if (self->_stereoCaptureStatus != status)
  {
    animatedCopy = animated;
    self->_stereoCaptureStatus = status;
    spatialCaptureInstructionLabel = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];

    if (spatialCaptureInstructionLabel)
    {
      if (animatedCopy)
      {
        [(CAMFullscreenViewfinder *)self layoutIfNeeded];
      }

      spatialCaptureInstructionLabel2 = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];
      [spatialCaptureInstructionLabel2 setStereoCaptureStatus:status];

      [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animatedCopy];
    }
  }
}

- (void)setUseHoldStillStereoLowLightInstruction:(BOOL)instruction
{
  instructionCopy = instruction;
  stereoCaptureStatus = [(CAMFullscreenViewfinder *)self stereoCaptureStatus];

  [(CAMFullscreenViewfinder *)self setStereoCaptureStatus:stereoCaptureStatus useHoldStillStereoLowLightInstruction:instructionCopy animated:0];
}

- (void)setStereoCaptureStatus:(int64_t)status useHoldStillStereoLowLightInstruction:(BOOL)instruction animated:(BOOL)animated
{
  animatedCopy = animated;
  instructionCopy = instruction;
  if (self->_stereoCaptureStatus != status || self->_useHoldStillStereoLowLightInstruction != instruction)
  {
    self->_stereoCaptureStatus = status;
    self->_useHoldStillStereoLowLightInstruction = instruction;
    spatialCaptureInstructionLabel = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];

    if (spatialCaptureInstructionLabel)
    {
      if (animatedCopy)
      {
        [(CAMFullscreenViewfinder *)self layoutIfNeeded];
      }

      spatialCaptureInstructionLabel2 = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];
      [spatialCaptureInstructionLabel2 setStereoCaptureStatus:status];

      spatialCaptureInstructionLabel3 = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];
      [spatialCaptureInstructionLabel3 setUseHoldStillLowLightInstruction:instructionCopy];

      [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animatedCopy];
    }
  }
}

- (void)setShowingStandardControls:(BOOL)controls
{
  if (self->_showingStandardControls != controls)
  {
    self->_showingStandardControls = controls;
    [(CAMFullscreenViewfinder *)self _updateReticle];
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:0];

    [(CAMFullscreenViewfinder *)self setNeedsLayout];
  }
}

- (BOOL)_showControlDrawer
{
  if ([(CAMFullscreenViewfinder *)self isControlDrawerVisible])
  {
    isControlDrawerExpanded = [(CAMFullscreenViewfinder *)self isControlDrawerExpanded];
  }

  else
  {
    isControlDrawerExpanded = 0;
  }

  return [(CAMFullscreenViewfinder *)self _shouldShowControls]&& isControlDrawerExpanded;
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
    machineReadableCodeButton = [(CAMFullscreenViewfinder *)self machineReadableCodeButton];
    if (machineReadableCodeButton && ([(CAMFullscreenViewfinder *)self orientation]- 3) >= 2)
    {
      zoomControl = [(CAMFullscreenViewfinder *)self zoomControl];
      [zoomControl edgeMargin];
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
  spotlightControl = [(CAMFullscreenViewfinder *)self spotlightControl];
  isSmartStylePickerVisible = [(CAMFullscreenViewfinder *)self isSmartStylePickerVisible];
  v5 = spotlightControl != 1 && isSmartStylePickerVisible;
  return v5 & [(CAMFullscreenViewfinder *)self _shouldShowControls];
}

- (void)_updateSubviewsVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (animated)
  {
    v5 = 0.3;
  }

  else
  {
    v5 = 0.0;
  }

  _showControlDrawer = [(CAMFullscreenViewfinder *)self _showControlDrawer];
  _showModeView = [(CAMFullscreenViewfinder *)self _showModeView];
  controlDrawer = [(CAMFullscreenViewfinder *)self controlDrawer];
  v33 = controlDrawer;
  if (animatedCopy && _showControlDrawer != _showModeView)
  {
    if (_showControlDrawer)
    {
      v9 = controlDrawer;
    }

    else
    {
      v9 = 0;
    }

    if (_showControlDrawer)
    {
      v10 = 0;
    }

    else
    {
      v10 = controlDrawer;
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
    v41 = controlDrawer;
    v42 = _showControlDrawer;
    [CAMView animateIfNeededWithDuration:v40 animations:v5];
    v14 = v41;
  }

  machineReadableCodeButton = [(CAMFullscreenViewfinder *)self machineReadableCodeButton];

  if (machineReadableCodeButton)
  {
    v18 = ([(CAMFullscreenViewfinder *)self orientation]- 5) < 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v18 = 1;
  }

  lightingControl = [(CAMFullscreenViewfinder *)self lightingControl];
  _showPortraitControls = [(CAMFullscreenViewfinder *)self _showPortraitControls];
  v21 = [(CAMFullscreenViewfinder *)self _showLandscapeLightingBadge]&& v18;
  if (_showPortraitControls)
  {
    v22 = (v21 & 1) != 0 || [(CAMFullscreenViewfinder *)self lightingNameBadgesHidden];
    [lightingControl setNameBadgeHidden:v22 animated:animatedCopy];
  }

  spotlightControl = [(CAMFullscreenViewfinder *)self spotlightControl];
  _showSemanticStylePicker = [(CAMFullscreenViewfinder *)self _showSemanticStylePicker];
  semanticStylePicker = [(CAMFullscreenViewfinder *)self semanticStylePicker];
  [semanticStylePicker setExpanded:_showSemanticStylePicker animated:animatedCopy];

  _showSmartStylePicker = [(CAMFullscreenViewfinder *)self _showSmartStylePicker];
  v27 = spotlightControl == 1;
  v28 = spotlightControl == 1 || animatedCopy;
  smartStylePicker = [(CAMFullscreenViewfinder *)self smartStylePicker];
  [smartStylePicker setExpanded:_showSmartStylePicker animated:v28];

  _reticleView = [(CAMFullscreenViewfinder *)self _reticleView];
  [_reticleView setCornersVisible:!_showSemanticStylePicker && !_showSmartStylePicker && !v27 animated:animatedCopy];

  _shouldShowControls = [(CAMFullscreenViewfinder *)self _shouldShowControls];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __61__CAMFullscreenViewfinder__updateSubviewsVisibilityAnimated___block_invoke_4;
  v34[3] = &unk_1E76F78A0;
  v36 = _shouldShowControls;
  v37 = v21;
  v38 = _showSemanticStylePicker;
  v34[4] = self;
  v35 = lightingControl;
  v39 = _showPortraitControls;
  v32 = lightingControl;
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
  controlDrawer = [(CAMFullscreenViewfinder *)self controlDrawer];
  v7[2](v7, controlDrawer);

  flipButton = [(CAMFullscreenViewfinder *)self flipButton];
  v7[2](v7, flipButton);
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

- (void)setVisibleInstructionLabel:(int64_t)label animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleSecondaryInstructionLabel = [(CAMFullscreenViewfinder *)self visibleSecondaryInstructionLabel];

  [(CAMFullscreenViewfinder *)self setVisibleInstructionLabel:label visibleSecondaryInstructionLabel:visibleSecondaryInstructionLabel animated:animatedCopy];
}

- (void)_createViewIfNeededForInstructionLabel:(int64_t)label isPrimary:(BOOL)primary
{
  primaryCopy = primary;
  _modulatingContentView = [(CAMFullscreenViewfinder *)self _modulatingContentView];
  if (label <= 5)
  {
    v43 = _modulatingContentView;
    if (label <= 2)
    {
      if (label == 1)
      {
        portraitInstructionLabel = [(CAMFullscreenViewfinder *)self portraitInstructionLabel];

        if (portraitInstructionLabel)
        {
          goto LABEL_39;
        }

        v22 = objc_alloc_init(CAMPortraitModeInstructionLabel);
        [(CAMFullscreenViewfinder *)self _setPortraitInstructionLabel:v22];

        shallowDepthOfFieldStatus = [(CAMFullscreenViewfinder *)self shallowDepthOfFieldStatus];
        portraitInstructionLabel2 = [(CAMFullscreenViewfinder *)self portraitInstructionLabel];
        [portraitInstructionLabel2 setShallowDepthOfFieldStatus:shallowDepthOfFieldStatus];

        portraitInstructionLabel3 = [(CAMFullscreenViewfinder *)self portraitInstructionLabel];
      }

      else
      {
        if (label != 2)
        {
          goto LABEL_40;
        }

        qrCodeInstructionLabel = [(CAMFullscreenViewfinder *)self qrCodeInstructionLabel];

        if (qrCodeInstructionLabel)
        {
          goto LABEL_39;
        }

        v17 = objc_alloc_init(CAMQRCodeInstructionLabel);
        [(CAMFullscreenViewfinder *)self _setQRCodeInstructionLabel:v17];

        portraitInstructionLabel3 = [(CAMFullscreenViewfinder *)self qrCodeInstructionLabel];
      }
    }

    else if (label == 3)
    {
      nightModeInstructionLabel = [(CAMFullscreenViewfinder *)self nightModeInstructionLabel];

      if (nightModeInstructionLabel)
      {
        goto LABEL_39;
      }

      v28 = objc_alloc_init(CAMNightModeInstructionLabel);
      [(CAMFullscreenViewfinder *)self _setNightModeInstructionLabel:v28];

      portraitInstructionLabel3 = [(CAMFullscreenViewfinder *)self nightModeInstructionLabel];
    }

    else
    {
      if (label != 4)
      {
        imageAnalysisInstructionLabel = [(CAMFullscreenViewfinder *)self imageAnalysisInstructionLabel];

        if (!imageAnalysisInstructionLabel)
        {
          v9 = objc_alloc_init(CAMImageAnalysisInstructionLabel);
          [(CAMFullscreenViewfinder *)self _setImageAnalysisInstructionLabel:v9];

          imageAnalysisInstructionLabel2 = [(CAMFullscreenViewfinder *)self imageAnalysisInstructionLabel];
          selfCopy = self;

          v12 = 0;
          v43 = selfCopy;
          goto LABEL_34;
        }

LABEL_39:
        _modulatingContentView = v43;
        goto LABEL_40;
      }

      flashCompromisedInstructionLabel = [(CAMFullscreenViewfinder *)self flashCompromisedInstructionLabel];

      if (flashCompromisedInstructionLabel)
      {
        goto LABEL_39;
      }

      v36 = objc_alloc_init(CAMFlashCompromisedInstructionLabel);
      [(CAMFullscreenViewfinder *)self _setFlashCompromisedInstructionLabel:v36];

      portraitInstructionLabel3 = [(CAMFullscreenViewfinder *)self flashCompromisedInstructionLabel];
    }

    goto LABEL_33;
  }

  if (label <= 7)
  {
    v43 = _modulatingContentView;
    if (label == 6)
    {
      freeResourcesInstructionLabel = [(CAMFullscreenViewfinder *)self freeResourcesInstructionLabel];

      if (freeResourcesInstructionLabel)
      {
        goto LABEL_39;
      }

      v26 = objc_alloc_init(CAMFreeResourcesInstructionLabel);
      [(CAMFullscreenViewfinder *)self _setFreeResourcesInstructionLabel:v26];

      freeResourcesInstructionLabel2 = [(CAMFullscreenViewfinder *)self freeResourcesInstructionLabel];
      goto LABEL_24;
    }

    deviceTooHotInstructionLabel = [(CAMFullscreenViewfinder *)self deviceTooHotInstructionLabel];

    if (deviceTooHotInstructionLabel)
    {
      goto LABEL_39;
    }

    v20 = objc_alloc_init(CAMDeviceTooHotInstructionLabel);
    [(CAMFullscreenViewfinder *)self _setDeviceTooHotInstructionLabel:v20];

    portraitInstructionLabel3 = [(CAMFullscreenViewfinder *)self deviceTooHotInstructionLabel];
LABEL_33:
    imageAnalysisInstructionLabel2 = portraitInstructionLabel3;
    v12 = 0;
LABEL_34:
    if (imageAnalysisInstructionLabel2)
    {
      [imageAnalysisInstructionLabel2 setUserInteractionEnabled:v12];
      [imageAnalysisInstructionLabel2 setStyle:1];
      [imageAnalysisInstructionLabel2 setDelegate:self];
      [(CAMFullscreenViewfinder *)v43 addSubview:imageAnalysisInstructionLabel2];
      _instructionLabelByValue = [(CAMFullscreenViewfinder *)self _instructionLabelByValue];
      v40 = [MEMORY[0x1E696AD98] numberWithInteger:label];
      [_instructionLabelByValue setObject:imageAnalysisInstructionLabel2 forKeyedSubscript:v40];

      if (primaryCopy)
      {
        [(CAMFullscreenViewfinder *)self _createdPrimaryInstructionLabels];
      }

      else
      {
        [(CAMFullscreenViewfinder *)self _createdSecondaryInstructionLabels];
      }
      v41 = ;
      [v41 addObject:imageAnalysisInstructionLabel2];

      delegate = [(CAMFullscreenViewfinder *)self delegate];
      [delegate fullscreenViewfinder:self didCreateInstructionLabel:label];
    }

    goto LABEL_39;
  }

  if (label == 8)
  {
    v43 = _modulatingContentView;
    spatialCaptureInstructionLabel = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];

    if (spatialCaptureInstructionLabel)
    {
      goto LABEL_39;
    }

    v30 = objc_alloc_init(CAMSpatialCaptureInstructionLabel);
    [(CAMFullscreenViewfinder *)self _setSpatialCaptureInstructionLabel:v30];

    stereoCaptureStatus = [(CAMFullscreenViewfinder *)self stereoCaptureStatus];
    spatialCaptureInstructionLabel2 = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];
    [spatialCaptureInstructionLabel2 setStereoCaptureStatus:stereoCaptureStatus];

    useHoldStillStereoLowLightInstruction = [(CAMFullscreenViewfinder *)self useHoldStillStereoLowLightInstruction];
    spatialCaptureInstructionLabel3 = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];
    [spatialCaptureInstructionLabel3 setUseHoldStillLowLightInstruction:useHoldStillStereoLowLightInstruction];

    portraitInstructionLabel3 = [(CAMFullscreenViewfinder *)self spatialCaptureInstructionLabel];
    goto LABEL_33;
  }

  if (label == 9)
  {
    if (self->_smartStyleCategoryInstructionLabel)
    {
      goto LABEL_40;
    }

    v43 = _modulatingContentView;
    v37 = objc_alloc_init(CAMSmartStyleCategoryInstructionLabel);
    smartStyleCategoryInstructionLabel = self->_smartStyleCategoryInstructionLabel;
    self->_smartStyleCategoryInstructionLabel = v37;

    portraitInstructionLabel3 = self->_smartStyleCategoryInstructionLabel;
    goto LABEL_33;
  }

  if (label == 10 && !self->_cleanLensesInstructionLabel)
  {
    v43 = _modulatingContentView;
    v13 = objc_alloc_init(CAMCleanLensesInstructionLabel);
    cleanLensesInstructionLabel = self->_cleanLensesInstructionLabel;
    self->_cleanLensesInstructionLabel = v13;

    freeResourcesInstructionLabel2 = self->_cleanLensesInstructionLabel;
LABEL_24:
    imageAnalysisInstructionLabel2 = freeResourcesInstructionLabel2;
    v12 = 1;
    goto LABEL_34;
  }

LABEL_40:
}

- (id)_visibleInstructionLabelForInstructionLabelValue:(int64_t)value
{
  _instructionLabelByValue = [(CAMFullscreenViewfinder *)self _instructionLabelByValue];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  v6 = [_instructionLabelByValue objectForKeyedSubscript:v5];

  return v6;
}

- (void)setVisibleInstructionLabel:(int64_t)label visibleSecondaryInstructionLabel:(int64_t)instructionLabel animated:(BOOL)animated
{
  animatedCopy = animated;
  if (*&self->_visibleInstructionLabel != __PAIR128__(instructionLabel, label))
  {
    [(CAMFullscreenViewfinder *)self _createViewIfNeededForInstructionLabel:label isPrimary:1];
    [(CAMFullscreenViewfinder *)self _createViewIfNeededForInstructionLabel:instructionLabel isPrimary:0];
    if (animatedCopy)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    visibleInstructionLabel = self->_visibleInstructionLabel;
    visibleSecondaryInstructionLabel = self->_visibleSecondaryInstructionLabel;
    self->_visibleInstructionLabel = label;
    self->_visibleSecondaryInstructionLabel = instructionLabel;
    if (label && !visibleInstructionLabel || instructionLabel && !visibleSecondaryInstructionLabel)
    {
      [(CAMFullscreenViewfinder *)self _updateGeometryForElapsedTimeAndInstructionLabels];
    }

    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animatedCopy];
  }
}

- (unint64_t)_badgeFontStyle
{
  v2 = +[CAMCaptureCapabilities capabilities];
  sfCameraFontSupported = [v2 sfCameraFontSupported];

  return sfCameraFontSupported;
}

- (void)_transitionView:(id)view fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation
{
  if (view)
  {
    v5 = ((toOrientation - 1) | (orientation - 1)) < 2;
    viewCopy = view;
    v8 = CAMSnapshotForFadingOrientationTransition(viewCopy, v5);
    superview = [viewCopy superview];

    [superview addSubview:v8];
  }
}

- (void)_transitionView:(id)view isFlippingInPlace:(BOOL)place
{
  if (view)
  {
    placeCopy = place;
    viewCopy = view;
    v7 = CAMSnapshotForFadingOrientationTransition(viewCopy, placeCopy);
    superview = [viewCopy superview];

    [superview addSubview:v7];
  }
}

- (void)setControlDrawerVisible:(BOOL)visible modeUIVisible:(BOOL)iVisible animated:(BOOL)animated
{
  animatedCopy = animated;
  if (self->_controlDrawerVisible != visible || self->_modeUIVisible != iVisible)
  {
    if (animated)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_controlDrawerVisible = visible;
    self->_modeUIVisible = iVisible;

    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animatedCopy];
  }
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  v117 = *MEMORY[0x1E69E9840];
  orientation = self->_orientation;
  if (orientation != orientation)
  {
    animatedCopy = animated;
    if (animated)
    {
      v8 = 0.3;
    }

    else
    {
      v8 = 0.0;
    }

    self->_orientation = orientation;
    controlDrawer = [(CAMFullscreenViewfinder *)self controlDrawer];
    [controlDrawer setOrientation:orientation animated:animatedCopy];

    shutterControl = [(CAMFullscreenViewfinder *)self shutterControl];
    [shutterControl setOrientation:orientation animated:animatedCopy];

    timerIndicator = [(CAMFullscreenViewfinder *)self timerIndicator];
    [timerIndicator setOrientation:orientation animated:animatedCopy];

    spotlightControlPanel = [(CAMFullscreenViewfinder *)self spotlightControlPanel];
    [spotlightControlPanel setOrientation:orientation animated:animatedCopy];

    flipAspectRatioButton = [(CAMFullscreenViewfinder *)self flipAspectRatioButton];
    [flipAspectRatioButton setOrientation:orientation animated:animatedCopy];

    lightingControl = [(CAMFullscreenViewfinder *)self lightingControl];
    [lightingControl setOrientation:orientation];

    photoVideoModeSwitch = [(CAMFullscreenViewfinder *)self photoVideoModeSwitch];
    [photoVideoModeSwitch setOrientation:orientation animated:animatedCopy];

    _descriptionOverlayViewByKey = [(CAMFullscreenViewfinder *)self _descriptionOverlayViewByKey];
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = __51__CAMFullscreenViewfinder_setOrientation_animated___block_invoke;
    v112[3] = &__block_descriptor_41_e55_v32__0___NSCopying__8__CAMDescriptionOverlayView_16_B24l;
    v112[4] = orientation;
    v113 = animatedCopy;
    [_descriptionOverlayViewByKey enumerateKeysAndObjectsUsingBlock:v112];

    disabledModeOverlayView = [(CAMFullscreenViewfinder *)self disabledModeOverlayView];
    [disabledModeOverlayView setOrientation:orientation animated:animatedCopy];

    imageAnalysisButton = [(CAMFullscreenViewfinder *)self imageAnalysisButton];
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
    v60 = imageAnalysisButton;
    v106 = v60;
    orientationCopy = orientation;
    [CAMView animateIfNeededWithDuration:v105 animations:v8];
    badgeTray = [(CAMFullscreenViewfinder *)self badgeTray];
    lightingNameBadge = [(CAMFullscreenViewfinder *)self lightingNameBadge];
    filterNameBadge = [(CAMFullscreenViewfinder *)self filterNameBadge];
    smartStyleNameBadge = [(CAMFullscreenViewfinder *)self smartStyleNameBadge];
    elapsedTimeView = [(CAMFullscreenViewfinder *)self elapsedTimeView];
    [(CAMFullscreenViewfinder *)self machineReadableCodeButton];
    v63 = v62 = lightingNameBadge;
    v61 = elapsedTimeView;
    if (animatedCopy)
    {
      [(CAMFullscreenViewfinder *)self _transitionView:badgeTray fromOrientation:orientation toOrientation:orientation];
      if ([(CAMFullscreenViewfinder *)self isElapsedTimeViewVisible])
      {
        [(CAMFullscreenViewfinder *)self _transitionView:elapsedTimeView fromOrientation:orientation toOrientation:orientation];
      }

      v31 = [(CAMFullscreenViewfinder *)self _visibleInstructionLabelForInstructionLabelValue:[(CAMFullscreenViewfinder *)self visibleInstructionLabel]];
      if (v31)
      {
        [(CAMFullscreenViewfinder *)self _transitionView:v31 fromOrientation:orientation toOrientation:orientation];
      }

      v32 = [(CAMFullscreenViewfinder *)self _visibleInstructionLabelForInstructionLabelValue:[(CAMFullscreenViewfinder *)self visibleSecondaryInstructionLabel]];
      if (v32)
      {
        [(CAMFullscreenViewfinder *)self _transitionView:v32 fromOrientation:orientation toOrientation:orientation];
      }

      if ([(CAMFullscreenViewfinder *)self _showFilterNameBadge])
      {
        [(CAMFullscreenViewfinder *)self _transitionView:filterNameBadge fromOrientation:orientation toOrientation:orientation];
      }

      if ([(CAMFullscreenViewfinder *)self _showSmartStyleNameBadge])
      {
        [(CAMFullscreenViewfinder *)self _transitionView:smartStyleNameBadge fromOrientation:orientation toOrientation:orientation];
      }

      if ([(CAMFullscreenViewfinder *)self _showSemanticStylePicker])
      {
        v65 = smartStyleNameBadge;
        v66 = filterNameBadge;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        _semanticStyleBadges = [(CAMFullscreenViewfinder *)self _semanticStyleBadges];
        v34 = [_semanticStyleBadges countByEnumeratingWithState:&v101 objects:v116 count:16];
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
                objc_enumerationMutation(_semanticStyleBadges);
              }

              [(CAMFullscreenViewfinder *)self _transitionView:*(*(&v101 + 1) + 8 * i) fromOrientation:orientation toOrientation:orientation];
            }

            v35 = [_semanticStyleBadges countByEnumeratingWithState:&v101 objects:v116 count:16];
          }

          while (v35);
        }

        elapsedTimeView = v61;
        lightingNameBadge = v62;
        filterNameBadge = v66;
        smartStyleNameBadge = v65;
      }

      if (v63)
      {
        [(CAMFullscreenViewfinder *)self _transitionView:v63 fromOrientation:orientation toOrientation:orientation];
      }

      _showLandscapeLightingBadge = [(CAMFullscreenViewfinder *)self _showLandscapeLightingBadge];
      if (((orientation - 3) | (orientation - 3)) <= 1 && _showLandscapeLightingBadge)
      {
        [(CAMFullscreenViewfinder *)self _transitionView:lightingNameBadge fromOrientation:orientation toOrientation:orientation];
      }
    }

    isElapsedTimeViewVisible = [(CAMFullscreenViewfinder *)self isElapsedTimeViewVisible];
    layer = [elapsedTimeView layer];
    v41 = [layer animationForKey:@"opacity"];
    v42 = v41 == 0 || isElapsedTimeViewVisible;

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    _layout = [(CAMFullscreenViewfinder *)self _layout];
    isSystemOverlayVisible = [(CAMFullscreenViewfinder *)self isSystemOverlayVisible];
    if (_layout)
    {
      [_layout geometryForElapsedTimeView:elapsedTimeView viewportFrame:orientation orientation:isSystemOverlayVisible systemOverlayVisible:{v20, v22, v24, v26}];
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
      CAMViewSetGeometry(elapsedTimeView, &v89);
    }

    [(CAMFullscreenViewfinder *)self _geometryForBadgeTray];
    CAMViewSetGeometry(badgeTray, &v89);
    [(CAMFullscreenViewfinder *)self _geometryForLandscapeLightingBadge];
    CAMViewSetGeometry(lightingNameBadge, &v89);
    [(CAMFullscreenViewfinder *)self _geometryForBottomCenteredView:filterNameBadge];
    CAMViewSetGeometry(filterNameBadge, &v89);
    [(CAMFullscreenViewfinder *)self _geometryForSmartStyleNameBadge:smartStyleNameBadge];
    CAMViewSetGeometry(smartStyleNameBadge, &v89);
    [(CAMFullscreenViewfinder *)self _geometryForMRCButton];
    CAMViewSetGeometry(v63, &v89);
    [(CAMFullscreenViewfinder *)self _layoutSemanticStyleMaskedBadges];
    if (isElapsedTimeViewVisible)
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
    _createdPrimaryInstructionLabels = [(CAMFullscreenViewfinder *)self _createdPrimaryInstructionLabels];
    v48 = [_createdPrimaryInstructionLabels countByEnumeratingWithState:&v85 objects:v115 count:16];
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
            objc_enumerationMutation(_createdPrimaryInstructionLabels);
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

        v49 = [_createdPrimaryInstructionLabels countByEnumeratingWithState:&v85 objects:v115 count:16];
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
    _createdSecondaryInstructionLabels = [(CAMFullscreenViewfinder *)self _createdSecondaryInstructionLabels];
    v55 = [_createdSecondaryInstructionLabels countByEnumeratingWithState:&v68 objects:v114 count:16];
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
            objc_enumerationMutation(_createdSecondaryInstructionLabels);
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

        v56 = [_createdSecondaryInstructionLabels countByEnumeratingWithState:&v68 objects:v114 count:16];
      }

      while (v56);
    }

    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animatedCopy];
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

- (void)setDeviceOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_deviceOrientation != orientation)
  {
    animatedCopy = animated;
    self->_deviceOrientation = orientation;
    _orientationInstructionView = [(CAMFullscreenViewfinder *)self _orientationInstructionView];
    v8 = animatedCopy && [(CAMFullscreenViewfinder *)self isOrientationInstructionVisible];
    [_orientationInstructionView setOrientation:orientation animated:v8];
  }
}

- (void)setShutterControlVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_shutterControlVisible != visible)
  {
    self->_shutterControlVisible = visible;
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animated];
  }
}

- (void)setFlipButtonVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_flipButtonVisible != visible)
  {
    self->_flipButtonVisible = visible;
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animated];
  }
}

- (void)setPhotoVideoModeSwitchVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_photoVideoModeSwitchVisible != visible)
  {
    self->_photoVideoModeSwitchVisible = visible;
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animated];
  }
}

- (void)setSystemOverlayVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_systemOverlayVisible != visible)
  {
    self->_systemOverlayVisible = visible;
    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animated];
  }
}

- (void)setZoomControlVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_zoomControlVisible != visible)
  {
    animatedCopy = animated;
    if (animated)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_zoomControlVisible = visible;
    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animatedCopy];

    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animatedCopy];
  }
}

- (void)setZoomStyle:(unint64_t)style
{
  if (self->_zoomStyle == style)
  {
    return;
  }

  self->_zoomStyle = style;
  if (style == 1)
  {
    v7 = [[CAMZoomControl alloc] initWithLayoutStyle:3];
    [(CAMFullscreenViewfinder *)self _setZoomControl:v7];

    self->_zoomControlVisible = 1;
    _contentViewBelowShutter = [(CAMFullscreenViewfinder *)self _contentViewBelowShutter];
    zoomControl = [(CAMFullscreenViewfinder *)self zoomControl];
    [_contentViewBelowShutter addSubview:zoomControl];

    [(CAMFullscreenViewfinder *)self _updateZoomControlForLayoutConflictsAnimated:0];
  }

  else
  {
    if (style == 2)
    {
      zoomControl2 = [(CAMFullscreenViewfinder *)self zoomControl];
      [zoomControl2 removeFromSuperview];

      [(CAMFullscreenViewfinder *)self _setZoomControl:0];
      v5 = [[CAMZoomSlider alloc] initWithLayoutStyle:0];
      [(CAMFullscreenViewfinder *)self _setZoomSlider:v5];

      _contentView = [(CAMFullscreenViewfinder *)self _contentView];
      zoomSlider = [(CAMFullscreenViewfinder *)self zoomSlider];
      [_contentView addSubview:zoomSlider];

      return;
    }

    zoomControl3 = [(CAMFullscreenViewfinder *)self zoomControl];
    [zoomControl3 removeFromSuperview];

    [(CAMFullscreenViewfinder *)self _setZoomControl:0];
  }

  zoomSlider2 = [(CAMFullscreenViewfinder *)self zoomSlider];
  [zoomSlider2 removeFromSuperview];

  [(CAMFullscreenViewfinder *)self _setZoomSlider:0];
}

- (void)_updateZoomControlForLayoutConflictsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  visibleSuggestionButtonType = [(CAMFullscreenViewfinder *)self visibleSuggestionButtonType];
  _showPortraitControls = [(CAMFullscreenViewfinder *)self isImageAnalysisButtonVisible]|| [(CAMFullscreenViewfinder *)self _showPortraitControls];
  zoomControl = [(CAMFullscreenViewfinder *)self zoomControl];
  [zoomControl setHasPlatterConflictLeft:visibleSuggestionButtonType != 0 animated:animatedCopy];

  zoomControl2 = [(CAMFullscreenViewfinder *)self zoomControl];
  [zoomControl2 setHasPlatterConflictRight:_showPortraitControls animated:animatedCopy];
}

- (void)setVisiblePreviewSuggestionButton:(int64_t)button animated:(BOOL)animated
{
  if (self->_visibleSuggestionButtonType != button)
  {
    self->_visibleSuggestionButtonType = button;
    [(CAMFullscreenViewfinder *)self _updateZoomControlForLayoutConflictsAnimated:animated];
  }
}

- (void)setElapsedTimeViewVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_elapsedTimeViewVisible != visible)
  {
    animatedCopy = animated;
    if (visible)
    {
      elapsedTimeView = [(CAMFullscreenViewfinder *)self elapsedTimeView];
      if (elapsedTimeView)
      {
      }

      else if ([(CAMFullscreenViewfinder *)self canCreateElapsedTimeView])
      {
        v8 = objc_alloc_init(CAMElapsedTimeView);
        elapsedTimeView = self->_elapsedTimeView;
        self->_elapsedTimeView = v8;

        [(CAMElapsedTimeView *)self->_elapsedTimeView setDelegate:self];
        _modulatingContentView = [(CAMFullscreenViewfinder *)self _modulatingContentView];
        [_modulatingContentView addSubview:self->_elapsedTimeView];

        if (animatedCopy)
        {
          [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:0];
        }
      }

      [(CAMFullscreenViewfinder *)self frameForReticleViewport];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      elapsedTimeView2 = [(CAMFullscreenViewfinder *)self elapsedTimeView];
      _layout = [(CAMFullscreenViewfinder *)self _layout];
      v21 = self->_elapsedTimeView;
      orientation = [(CAMFullscreenViewfinder *)self orientation];
      isSystemOverlayVisible = [(CAMFullscreenViewfinder *)self isSystemOverlayVisible];
      if (_layout)
      {
        [_layout geometryForElapsedTimeView:v21 viewportFrame:orientation orientation:isSystemOverlayVisible systemOverlayVisible:{v12, v14, v16, v18}];
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

      CAMViewSetGeometry(elapsedTimeView2, &v24);
    }

    if (animatedCopy)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_elapsedTimeViewVisible = visible;
    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animatedCopy, v24, v25, v26, v27, v28, v29];
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animatedCopy];
  }
}

- (void)createTimerIndicatorView
{
  v4 = objc_alloc_init(CAMTimerIndicatorView);
  [(CAMTimerIndicatorView *)v4 setOrientation:[(CAMFullscreenViewfinder *)self orientation] animated:0];
  _contentView = [(CAMFullscreenViewfinder *)self _contentView];
  [_contentView addSubview:v4];

  [(CAMFullscreenViewfinder *)self _setTimerIndicator:v4];
}

- (void)setTimerIndicatorVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_timerIndicatorVisible != visible)
  {
    animatedCopy = animated;
    if (animated)
    {
      [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:0];
    }

    self->_timerIndicatorVisible = visible;

    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animatedCopy];
  }
}

- (void)setPreviewAlignmentGuideVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_previewAlignmentGuideVisible != visible)
  {
    animatedCopy = animated;
    if (visible && !self->_previewAlignmentGuide)
    {
      v7 = objc_alloc_init(CAMPreviewAlignmentGuide);
      [(CAMFullscreenViewfinder *)self _setPreviewAlignmentGuide:v7];
      _contentView = [(CAMFullscreenViewfinder *)self _contentView];
      [_contentView addSubview:v7];

      if (animatedCopy)
      {
        [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:0];
      }
    }

    self->_previewAlignmentGuideVisible = visible;

    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animatedCopy];
  }
}

- (void)setPreviewView:(id)view
{
  viewCopy = view;
  previewView = self->_previewView;
  if (previewView != viewCopy)
  {
    v13 = viewCopy;
    superview = [(CAMPreviewView *)previewView superview];

    if (superview == self)
    {
      [(CAMPreviewView *)self->_previewView removeFromSuperview];
    }

    objc_storeStrong(&self->_previewView, view);
    interfaceModulation = [(CAMFullscreenViewfinder *)self interfaceModulation];
    overlayContainerView = [(CAMPreviewView *)self->_previewView overlayContainerView];
    [overlayContainerView setInterfaceModulation:interfaceModulation];

    videoPreviewLayer = [(CAMPreviewView *)v13 videoPreviewLayer];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = videoPreviewLayer;
    }

    else
    {
      v11 = 0;
    }

    [(CAMFullscreenViewfinder *)self _setOverCapturePreviewLayer:v11];
    _previewContainerView = [(CAMFullscreenViewfinder *)self _previewContainerView];
    [_previewContainerView addSubview:v13];

    [(CAMFullscreenViewfinder *)self _updateReticle];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setPanoramaView:(id)view
{
  viewCopy = view;
  panoramaView = self->_panoramaView;
  if (panoramaView != viewCopy)
  {
    v9 = viewCopy;
    superview = [(CAMPanoramaView *)panoramaView superview];

    if (superview == self)
    {
      [(CAMPanoramaView *)self->_panoramaView removeFromSuperview];
    }

    objc_storeStrong(&self->_panoramaView, view);
    _modulatingContentView = [(CAMFullscreenViewfinder *)self _modulatingContentView];
    [_modulatingContentView addSubview:v9];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setPanoramaCaptureSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  panoramaView = [(CAMFullscreenViewfinder *)self panoramaView];
  [panoramaView setPanoramaCaptureSize:{width, height}];

  [(CAMFullscreenViewfinder *)self setNeedsLayout];
}

- (CGSize)panoramaCaptureSize
{
  panoramaView = [(CAMFullscreenViewfinder *)self panoramaView];
  [panoramaView panoramaCaptureSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setTrueVideoState:(unint64_t)state
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_trueVideoState != state)
  {
    self->_trueVideoState = state;
    if (state > 3)
    {
      v3 = 0;
    }

    else
    {
      v3 = off_1E76F79F8[state];
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

- (void)setFlipAspectRatioButtonVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_flipAspectRatioButtonVisible != visible)
  {
    animatedCopy = animated;
    if (animated)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_flipAspectRatioButtonVisible = visible;
    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animatedCopy];
    flipAspectRatioButton = [(CAMFullscreenViewfinder *)self flipAspectRatioButton];

    if (flipAspectRatioButton)
    {

      [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animatedCopy];
    }

    else
    {
      v10 = objc_alloc_init(CAMFlipAspectRatioButton);
      [(CAMFullscreenViewfinder *)self _setFlipAspectRatioButton:?];
      delegate = [(CAMFullscreenViewfinder *)self delegate];
      [delegate fullScreenViewfinderDidCreateFlipAspectRatioButton:self];

      if (animatedCopy)
      {
        [(CAMFlipAspectRatioButton *)v10 setAlpha:0.0];
      }

      [(CAMFlipAspectRatioButton *)v10 setOrientation:[(CAMFullscreenViewfinder *)self orientation]];
      _contentView = [(CAMFullscreenViewfinder *)self _contentView];
      [_contentView addSubview:v10];

      [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animatedCopy];
    }
  }
}

- (void)setOffsetZoomButtonForFlipAspectRatioButton:(BOOL)button animated:(BOOL)animated
{
  if (self->_offsetZoomButtonForFlipAspectRatioButton != button)
  {
    animatedCopy = animated;
    if (animated)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_offsetZoomButtonForFlipAspectRatioButton = button;

    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animatedCopy];
  }
}

- (void)setChromeView:(id)view
{
  viewCopy = view;
  if (self->_chromeView != viewCopy)
  {
    v8 = viewCopy;
    _chromeContentView = [(CAMFullscreenViewfinder *)self _chromeContentView];
    superview = [(UIView *)self->_chromeView superview];

    if (superview == _chromeContentView)
    {
      [(UIView *)self->_chromeView removeFromSuperview];
    }

    objc_storeStrong(&self->_chromeView, view);
    [_chromeContentView addSubview:v8];
    [(CAMFullscreenViewfinder *)self setNeedsLayout];

    viewCopy = v8;
  }
}

- (void)setExternalChromeShutterButtonFrame:(CGRect)frame animated:(BOOL)animated
{
  animatedCopy = animated;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_externalChromeShutterButtonFrame = &self->_externalChromeShutterButtonFrame;
  if (!CGRectEqualToRect(self->_externalChromeShutterButtonFrame, frame))
  {
    v11 = [(CAMFullscreenViewfinder *)self _isValidExternalChromeShutterButtonFrame]& animatedCopy;
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

- (void)setExternalChromeSmartStyleControlsVisible:(BOOL)visible
{
  if (self->_externalChromeSmartStyleControlsVisible != visible)
  {
    self->_externalChromeSmartStyleControlsVisible = visible;
    [CAMFullscreenViewfinder _setSmartStyleControlsVisible:"_setSmartStyleControlsVisible:animated:notifyDelegate:" animated:? notifyDelegate:?];
  }
}

- (void)setExternalChromeSemanticStyleControlsVisible:(BOOL)visible
{
  if (self->_externalChromeSemanticStyleControlsVisible != visible)
  {
    self->_externalChromeSemanticStyleControlsVisible = visible;
    [CAMFullscreenViewfinder _updateForSemanticStyleControlsDidChangeVisibility:"_updateForSemanticStyleControlsDidChangeVisibility:animated:" animated:?];
  }
}

- (void)setExternalChromeFilterScrubberVisible:(BOOL)visible
{
  if (self->_externalChromeFilterScrubberVisible != visible)
  {
    self->_externalChromeFilterScrubberVisible = visible;
    [(CAMFullscreenViewfinder *)self _loadFilterControlsIfNeeded];

    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:1];
  }
}

- (void)setExternalChromeTopInset:(double)inset animated:(BOOL)animated
{
  if (self->_externalChromeTopInset != inset)
  {
    animatedCopy = animated;
    if (animated)
    {
      [(CAMFullscreenViewfinder *)self layoutIfNeeded];
    }

    self->_externalChromeTopInset = inset;

    [(CAMFullscreenViewfinder *)self _setNeedsLayoutAnimated:animatedCopy];
  }
}

- (void)setDescriptionOverlayView:(id)view forKey:(id)key
{
  viewCopy = view;
  keyCopy = key;
  _descriptionOverlayViewByKey = [(CAMFullscreenViewfinder *)self _descriptionOverlayViewByKey];
  v9 = [_descriptionOverlayViewByKey objectForKeyedSubscript:keyCopy];
  v10 = v9;
  if (v9 != viewCopy)
  {
    superview = [v9 superview];

    if (superview == self)
    {
      v12 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__CAMFullscreenViewfinder_setDescriptionOverlayView_forKey___block_invoke;
      block[3] = &unk_1E76F7938;
      v14 = _descriptionOverlayViewByKey;
      v15 = keyCopy;
      v16 = v10;
      dispatch_after(v12, MEMORY[0x1E69E96A0], block);
    }

    [_descriptionOverlayViewByKey setObject:viewCopy forKeyedSubscript:keyCopy];
    [viewCopy setOrientation:{-[CAMFullscreenViewfinder orientation](self, "orientation")}];
    [viewCopy setBlackoutFrameVisible:0];
    [(CAMFullscreenViewfinder *)self _insertBackgroundSubview:viewCopy];
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

- (id)descriptionOverlayViewForKey:(id)key
{
  keyCopy = key;
  _descriptionOverlayViewByKey = [(CAMFullscreenViewfinder *)self _descriptionOverlayViewByKey];
  v6 = [_descriptionOverlayViewByKey objectForKeyedSubscript:keyCopy];

  return v6;
}

- (void)setDisabledModeOverlayView:(id)view
{
  viewCopy = view;
  disabledModeOverlayView = self->_disabledModeOverlayView;
  if (disabledModeOverlayView != viewCopy)
  {
    v8 = viewCopy;
    superview = [(CAMDisabledModeOverlayView *)disabledModeOverlayView superview];

    if (superview == self)
    {
      [(CAMDisabledModeOverlayView *)self->_disabledModeOverlayView removeFromSuperview];
    }

    objc_storeStrong(&self->_disabledModeOverlayView, view);
    [(CAMDisabledModeOverlayView *)self->_disabledModeOverlayView setOrientation:[(CAMFullscreenViewfinder *)self orientation]];
    disabledModeOverlayView = [(CAMFullscreenViewfinder *)self _insertBackgroundSubview:v8];
    viewCopy = v8;
  }

  MEMORY[0x1EEE66BB8](disabledModeOverlayView, viewCopy);
}

- (void)setMaterial:(int64_t)material withDuration:(double)duration
{
  if (self->_material != material)
  {
    self->_material = material;
    _reticleView = [(CAMFullscreenViewfinder *)self _reticleView];
    [_reticleView setMaterial:material withDuration:duration];

    semanticStylePicker = [(CAMFullscreenViewfinder *)self semanticStylePicker];
    [semanticStylePicker setMaterial:material withDuration:duration];

    smartStylePicker = [(CAMFullscreenViewfinder *)self smartStylePicker];
    [smartStylePicker setMaterial:material withDuration:duration];

    [(CAMFullscreenViewfinder *)self _updateLightingControlClipping];
  }
}

- (unint64_t)interfaceModulation
{
  _modulatingContentView = [(CAMFullscreenViewfinder *)self _modulatingContentView];
  interfaceModulation = [_modulatingContentView interfaceModulation];

  return interfaceModulation;
}

- (void)setInterfaceModulation:(unint64_t)modulation animated:(BOOL)animated
{
  animatedCopy = animated;
  _modulatingContentView = [(CAMFullscreenViewfinder *)self _modulatingContentView];
  v8 = _modulatingContentView;
  if (modulation - 1 <= 1 && !_modulatingContentView)
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CAMFullscreenViewfinder setInterfaceModulation:v9 animated:?];
    }
  }

  [v8 setInterfaceModulation:modulation animated:animatedCopy];
  previewView = [(CAMFullscreenViewfinder *)self previewView];
  overlayContainerView = [previewView overlayContainerView];
  [overlayContainerView setInterfaceModulation:modulation animated:animatedCopy];
}

- (void)setImageAnalysisButtonVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_imageAnalysisButtonVisible != visible)
  {
    animatedCopy = animated;
    self->_imageAnalysisButtonVisible = visible;
    [(CAMFullscreenViewfinder *)self _updateZoomControlForLayoutConflictsAnimated:animated];
    imageAnalysisButton = [(CAMFullscreenViewfinder *)self imageAnalysisButton];

    if (imageAnalysisButton)
    {

      [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animatedCopy];
    }
  }
}

- (void)setImageAnalysisButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  imageAnalysisButton = selfCopy->_imageAnalysisButton;
  if (imageAnalysisButton == buttonCopy)
  {
    superview = [(CAMImageAnalysisButton *)buttonCopy superview];

    if (superview == selfCopy)
    {
      goto LABEL_9;
    }

    imageAnalysisButton = selfCopy->_imageAnalysisButton;
  }

  superview2 = [(CAMImageAnalysisButton *)imageAnalysisButton superview];
  if (superview2 == selfCopy)
  {
    v9 = selfCopy->_imageAnalysisButton;

    if (v9 != buttonCopy)
    {
      [(CAMImageAnalysisButton *)selfCopy->_imageAnalysisButton removeFromSuperview];
    }
  }

  else
  {
  }

  objc_storeStrong(&selfCopy->_imageAnalysisButton, button);
  [(VKImageAnalysisButton *)selfCopy->_imageAnalysisButton setInhibitGlassMaterial:1];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(VKImageAnalysisButton *)selfCopy->_imageAnalysisButton setCameraModeBackgroundColor:clearColor];

  [(VKImageAnalysisButton *)selfCopy->_imageAnalysisButton setFunction:1];
  [(CAMFullscreenViewfinder *)selfCopy addSubview:buttonCopy];
  [(CAMFullscreenViewfinder *)selfCopy _updateSubviewsVisibilityAnimated:0];
LABEL_9:
}

- (void)setTextInteractionInsert:(id)insert
{
  insertCopy = insert;
  textInteractionInsert = self->_textInteractionInsert;
  if (textInteractionInsert != insertCopy)
  {
    [(VKTextLiftingView *)textInteractionInsert removeFromSuperview];
    self->_textInteractionInsert = insertCopy;
    selfCopy = self;
    imageAnalysisButton = [(CAMFullscreenViewfinder *)selfCopy imageAnalysisButton];
    if (insertCopy)
    {
      [(CAMFullscreenViewfinder *)selfCopy insertSubview:insertCopy belowSubview:imageAnalysisButton];
      [(CAMFullscreenViewfinder *)selfCopy frameForReticleViewport];
      [(CAMFullscreenViewfinder *)selfCopy _geometryForTextInteractionInsertWithViewport:?];
      CAMViewSetGeometry(insertCopy, &v9);
      [imageAnalysisButton backgroundDiameter];
      [(VKTextLiftingView *)insertCopy setPreferredQuickActionButtonHeight:?];
      actionInfoView = [(VKTextLiftingView *)insertCopy actionInfoView];
      if (actionInfoView)
      {
        [(CAMFullscreenViewfinder *)selfCopy _frameForActionInfoView];
        [actionInfoView setFrame:?];
      }

      [(CAMFullscreenViewfinder *)selfCopy _applyTextInsertContentInsets];
    }
  }
}

- (void)adoptMachineReadableCodeButton:(id)button fromOriginalParent:(id)parent animated:(BOOL)animated
{
  animatedCopy = animated;
  buttonCopy = button;
  parentCopy = parent;
  machineReadableCodeButton = [(CAMFullscreenViewfinder *)self machineReadableCodeButton];
  v11 = machineReadableCodeButton;
  if (machineReadableCodeButton == buttonCopy)
  {
    _modulatingContentView = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(_modulatingContentView, OS_LOG_TYPE_ERROR))
    {
      [CAMFullscreenViewfinder adoptMachineReadableCodeButton:_modulatingContentView fromOriginalParent:? animated:?];
    }
  }

  else
  {
    if (machineReadableCodeButton)
    {
      [(CAMFullscreenViewfinder *)self dismissMachineReadableCodeButtonAnimated:animatedCopy];
    }

    [(CAMFullscreenViewfinder *)self _setMachineReadableCodeButton:buttonCopy];
    if (parentCopy)
    {
      v12 = animatedCopy;
    }

    else
    {
      v12 = 0;
    }

    _modulatingContentView = [(CAMFullscreenViewfinder *)self _modulatingContentView];
    if (v12)
    {
      [buttonCopy center];
      [parentCopy convertPoint:_modulatingContentView toView:?];
      [buttonCopy setCenter:?];
    }

    else if (animatedCopy)
    {
      [buttonCopy setAlpha:0.0];
    }

    [buttonCopy setDismissable:1];
    [buttonCopy setDelegate:self];
    [_modulatingContentView addSubview:buttonCopy];
    if (v12)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __86__CAMFullscreenViewfinder_adoptMachineReadableCodeButton_fromOriginalParent_animated___block_invoke;
      v17[3] = &unk_1E76F77B0;
      v17[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v17 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
    }

    else if (animatedCopy)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __86__CAMFullscreenViewfinder_adoptMachineReadableCodeButton_fromOriginalParent_animated___block_invoke_2;
      v14[3] = &unk_1E76F7960;
      v15 = buttonCopy;
      selfCopy = self;
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

- (void)dismissMachineReadableCodeButtonAnimated:(BOOL)animated
{
  animatedCopy = animated;
  machineReadableCodeButton = [(CAMFullscreenViewfinder *)self machineReadableCodeButton];
  if (machineReadableCodeButton)
  {
    [(CAMFullscreenViewfinder *)self _setMachineReadableCodeButton:0];
    if (animatedCopy)
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
    v13 = machineReadableCodeButton;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __68__CAMFullscreenViewfinder_dismissMachineReadableCodeButtonAnimated___block_invoke_2;
    v10 = &unk_1E76F7988;
    v11 = v13;
    [CAMView animateIfNeededWithDuration:v12 animations:&v7 completion:v6];
    [(CAMFullscreenViewfinder *)self _updateSubviewsVisibilityAnimated:animatedCopy, v7, v8, v9, v10];
  }
}

- (void)machineReadableCodeButtonDidTapDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  machineReadableCodeButton = [(CAMFullscreenViewfinder *)self machineReadableCodeButton];

  if (machineReadableCodeButton == dismissCopy)
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
  _previewContainerView = [(CAMFullscreenViewfinder *)self _previewContainerView];
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
  _previewContainerView = [(CAMFullscreenViewfinder *)self _previewContainerView];
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

- (id)touchingRecognizersToCancel
{
  controlDrawer = [(CAMFullscreenViewfinder *)self controlDrawer];
  touchingRecognizersToCancel = [controlDrawer touchingRecognizersToCancel];

  return touchingRecognizersToCancel;
}

- (void)_iterateViewsForHUDManager:(id)manager withItemFoundBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  [manager locationOfAccessibilityGestureInView:self];
  v8 = v7;
  v10 = v9;
  array = [MEMORY[0x1E695DF70] array];
  if ([(CAMFullscreenViewfinder *)self isFlipButtonVisible])
  {
    flipButton = [(CAMFullscreenViewfinder *)self flipButton];

    if (flipButton)
    {
      flipButton2 = [(CAMFullscreenViewfinder *)self flipButton];
      [array addObject:flipButton2];
    }
  }

  if ([(CAMFullscreenViewfinder *)self _showControlDrawer])
  {
    controlDrawer = [(CAMFullscreenViewfinder *)self controlDrawer];

    if (controlDrawer)
    {
      controlDrawer2 = [(CAMFullscreenViewfinder *)self controlDrawer];
      [array addObject:controlDrawer2];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = array;
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
          blockCopy[2](blockCopy, v21);
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

- (id)hudItemForAccessibilityHUDManager:(id)manager
{
  managerCopy = manager;
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
  v5 = managerCopy;
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

- (void)selectedByAccessibilityHUDManager:(id)manager
{
  managerCopy = manager;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__CAMFullscreenViewfinder_selectedByAccessibilityHUDManager___block_invoke;
  v6[3] = &unk_1E76F79D8;
  v7 = managerCopy;
  v5 = managerCopy;
  [(CAMFullscreenViewfinder *)self _iterateViewsForHUDManager:v5 withItemFoundBlock:v6];
}

- (BOOL)shouldAccessibilityGestureBeginForHUDManager:(id)manager
{
  managerCopy = manager;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__CAMFullscreenViewfinder_shouldAccessibilityGestureBeginForHUDManager___block_invoke;
  v7[3] = &unk_1E76F79B0;
  v9 = &v10;
  v5 = managerCopy;
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