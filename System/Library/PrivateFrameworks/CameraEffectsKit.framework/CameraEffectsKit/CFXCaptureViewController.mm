@interface CFXCaptureViewController
- ($76EADD4ED24426C67044446678BAA581)dynamicShutterSettings;
- (BOOL)CFX_isRenderingAnimatedOverlaysThatDontLoop;
- (BOOL)CFX_isZoomAllowed;
- (BOOL)canToggleBetweenZoomFactorsForZoomControl:(id)a3;
- (BOOL)effectEditorView:(id)a3 isEffectAtPoint:(CGPoint)a4 effect:(id)a5;
- (BOOL)effectEditorView:(id)a3 isFaceTrackingDataAvailableForEffect:(id)a4;
- (BOOL)effectEditorView:(id)a3 isFaceTrackingEffect:(id)a4;
- (BOOL)effectEditorView:(id)a3 presentCustomTextEditingUI:(id)a4;
- (BOOL)effectEditorView:(id)a3 shouldEditTextForEffect:(id)a4;
- (BOOL)fullScreenTextEditViewController:(id)a3 shouldDisableEditingAnimationForEffect:(id)a4;
- (BOOL)isEditingEffect;
- (BOOL)isFaceTrackingDataAvailable;
- (BOOL)isMessagesOnPhone;
- (BOOL)livePlayerIsSaturated;
- (BOOL)passThroughContainerView:(id)a3 shouldHandleTouchWithinView:(id)a4 atPoint:(CGPoint)a5;
- (BOOL)presentFullScreenTextEditorForEffect:(id)a3 insertingEffect:(BOOL)a4;
- (BOOL)shouldPerformSegueWithIdentifier:(id)a3 sender:(id)a4;
- (BOOL)shouldShowAnimojiFaceReticle;
- (BOOL)shouldUseFaceTracking;
- (BOOL)useLocalCameraViewfinder;
- (CFXCaptureViewControllerDelegate)delegate;
- (CFXEffectBrowserContentPresenterViewController)effectBrowserContentPresenterViewController;
- (CFXEffectComposition)composition;
- (CGAffineTransform)overlayTransformForLocalViewfinder;
- (CGPoint)effectEditorView:(id)a3 removeButtonPositionForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (CGPoint)effectEditorView:(id)a3 spacingBetweenCenterPointOfEffect:(id)a4 point:(CGPoint)a5 relativeToBounds:(CGRect)a6;
- (CGRect)CFX_cameraViewFinderUncroppedFrame;
- (CGRect)CFX_generateAutoRotationCorrectionFrameWithInterfaceOrientation:(int64_t)a3;
- (CGRect)bottomBarCTMControlsFrameForWindowOrientation:(int64_t)a3 bounds:(CGRect)a4;
- (CGRect)effectEditorView:(id)a3 frameForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (CGRect)effectEditorView:(id)a3 hitAreaBoundingFrameForEffect:(id)a4 adjustForMinimumSize:(BOOL)a5 relativeToBounds:(CGRect)a6;
- (CGRect)externalUncroppedPresentationRect;
- (CGRect)presentationRect;
- (CGRect)zoomControlFrame;
- (CGRect)zoomSliderFrame;
- (UIView)effectsPickerDrawer;
- (double)CFX_maxZoomForCamera;
- (double)userInterfaceAlpha;
- (id)effectEditorView:(id)a3 effectAtPoint:(CGPoint)a4;
- (id)effectEditorView:(id)a3 overlayEffectFrameForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (id)effectEditorView:(id)a3 textEditingPropertiesForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (id)effectEditorView:(id)a3 textForEffect:(id)a4;
- (id)liveCaptureSnapshot;
- (int64_t)CFX_camFlashModeForCaptureFlashMode:(int64_t)a3;
- (int64_t)CFX_captureFlashModeForCAMFlashMode:(int64_t)a3;
- (int64_t)CFX_captureTorchModeForCAMFlashMode:(int64_t)a3;
- (int64_t)flashMode;
- (unint64_t)effectEditorView:(id)a3 maximumTextLengthForEffect:(id)a4;
- (void)CFX_addEffect:(id)a3 allowImmediateTextEditing:(BOOL)a4;
- (void)CFX_adjustOverlaysForCaptureOrientationChanged:(int64_t)a3 oldCaptureOrientation:(int64_t)a4;
- (void)CFX_applyAutoRotationCorrectionToEditorViews;
- (void)CFX_executeBlockAfterNextFrameRendered:(id)a3;
- (void)CFX_getCAMCaptureForPosition:(int64_t)a3 type:(id)a4 captureDevice:(int64_t *)a5 captureDevicePosition:(int64_t *)a6 captureMode:(int64_t *)a7;
- (void)CFX_getCaptureDevice:(int64_t *)a3 captureDevicePosition:(int64_t *)a4 captureMode:(int64_t *)a5;
- (void)CFX_handleZoomPinchGestureRecognizer:(id)a3;
- (void)CFX_hideAppStripUpperBackgroundView:(BOOL)a3;
- (void)CFX_performBackCameraZoomWithPinchGestureRecognizer:(id)a3;
- (void)CFX_performFrontCameraZoomWithPinchGestureRecognizer:(id)a3;
- (void)CFX_respondToShutterPress;
- (void)CFX_setFrameAndRenderSizes;
- (void)CFX_setZoomSliderFromZoomFactor:(double)a3;
- (void)CFX_toggleCaptureUI;
- (void)JFX_capturePhoto;
- (void)JFX_orientationMonitorDeviceInterfaceOrientationNotification:(id)a3;
- (void)JFX_orientationMonitorInterfaceOrientationNotification:(id)a3;
- (void)addEffect:(id)a3 allowImmediateTextEditing:(BOOL)a4;
- (void)addOverlayEffect:(id)a3 atNormalizedPlanePoint:(CGPoint)a4 scale:(double)a5 rotationAngle:(double)a6;
- (void)addOverlayEffect:(id)a3 atScreenLocation:(CGPoint)a4 atScreenSize:(CGSize)a5 rotationAngle:(double)a6;
- (void)applyAutoRotationCorrectionToEditorViewsWithTransitionCoordinator:(id)a3;
- (void)applyRotationTransformForPortrait;
- (void)cameraControlsViewControllerEffectsButtonWasTapped:(id)a3;
- (void)cameraControlsViewControllerSwitchCameraButtonWasTapped:(id)a3;
- (void)cameraDidStart;
- (void)cameraDidStop;
- (void)completedVideoRecordWithURL:(id)a3 metadataURL:(id)a4;
- (void)configureCTMUIForCaptureMode;
- (void)configureCaptureControlsForOrientationWithAnimation:(BOOL)a3;
- (void)configureUIForOrientation;
- (void)configureUIForWindowOrientation:(int64_t)a3 bounds:(CGRect)a4;
- (void)configureWithControlsViewController:(id)a3;
- (void)configureZoomControl;
- (void)controlStatusBar:(id)a3 didCreateIndicatorForType:(unint64_t)a4;
- (void)controlStatusBar:(id)a3 didReceiveTapInIndicatorForType:(unint64_t)a4;
- (void)dealloc;
- (void)displayEffectEditorForEffect:(id)a3 forMode:(unint64_t)a4;
- (void)doneButtonTapped:(id)a3;
- (void)dynamicShutterControlDidShortPress:(id)a3;
- (void)dynamicShutterControlDidStart:(id)a3;
- (void)dynamicShutterControlStopLockedRecording;
- (void)effectCompositionDidChange:(id)a3;
- (void)effectEditorView:(id)a3 didBeginEditingTextForEffect:(id)a4;
- (void)effectEditorView:(id)a3 didEditTextForEffect:(id)a4 newText:(id)a5;
- (void)effectEditorView:(id)a3 didEndEditingTextForEffect:(id)a4 wasCancelled:(BOOL)a5;
- (void)effectEditorView:(id)a3 didMoveEffect:(id)a4 withTouchPoint:(CGPoint)a5;
- (void)effectEditorView:(id)a3 didRemoveEffect:(id)a4;
- (void)effectEditorView:(id)a3 didTransformEffect:(id)a4 transform:(CGAffineTransform *)a5 relativeToBounds:(CGRect)a6;
- (void)effectEditorViewDidBeginEditing:(id)a3;
- (void)effectEditorViewDidEndEditing:(id)a3;
- (void)enableAnimationForOverlayEffect:(id)a3;
- (void)fadeInFaceInViewPromptLabel;
- (void)fadeOutFaceInViewPromptLabel;
- (void)flashModeDidChange;
- (void)fullScreenTextEditViewController:(id)a3 didBeginAnimationBeforeEditingEffect:(id)a4 completion:(id)a5;
- (void)fullScreenTextEditViewController:(id)a3 didBeginEditingEffect:(id)a4;
- (void)fullScreenTextEditViewController:(id)a3 didFinishAnimationAfterEditingEffect:(id)a4 completion:(id)a5;
- (void)fullScreenTextEditViewController:(id)a3 didFinishEditingByRemovingEffect:(id)a4;
- (void)fullScreenTextEditViewController:(id)a3 didFinishEditingEffect:(id)a4 withUpdatedText:(id)a5;
- (void)fullScreenTextEditViewController:(id)a3 willBeginAnimationAfterEditingEffect:(id)a4 updatedText:(id)a5;
- (void)handlePinchGestureRecognizer:(id)a3;
- (void)hideAnimojiFaceReticleForTrackingGain;
- (void)insertCamBottomBar:(id)a3;
- (void)layoutZoomControlForCTM;
- (void)layoutZoomControlRelativeToBottomBarAndPreview:(id)a3;
- (void)layoutZoomSliderRelativeToBottomBarAndPreview;
- (void)layoutZoomUI;
- (void)liveCaptureViewController:(id)a3 didRenderFrame:(id)a4;
- (void)liveCaptureViewController:(id)a3 livePreviewDoubleTappedAtNormalizedCenterPoint:(CGPoint)a4 gesture:(id)a5;
- (void)liveCaptureViewController:(id)a3 livePreviewPannedAtNormalizedPoint:(CGPoint)a4 gesture:(id)a5;
- (void)liveCaptureViewController:(id)a3 livePreviewPinchedAtNormalizedCenterPoint:(CGPoint)a4 gesture:(id)a5;
- (void)liveCaptureViewController:(id)a3 livePreviewRotatedAtNormalizedCenterPoint:(CGPoint)a4 gesture:(id)a5;
- (void)liveCaptureViewController:(id)a3 livePreviewTappedAtNormalizedPoint:(CGPoint)a4;
- (void)prepareForSegue:(id)a3 sender:(id)a4;
- (void)removeAllEffectsAnimated:(BOOL)a3;
- (void)removeAllEffectsOfType:(id)a3 animated:(BOOL)a4;
- (void)removeAnimojiTrackingReticle;
- (void)removeEffectEditorAnimated:(BOOL)a3;
- (void)removeEffectsForCameraSwitch;
- (void)removeLiveCaptureSnapshot;
- (void)returnCTMUIToPhotoMode;
- (void)saveLiveCaptureSnapshotForReview;
- (void)setAspectRatioCrop:(int64_t)a3;
- (void)setCaptureMode:(int64_t)a3;
- (void)setDynamicShutterSettings:(id *)a3;
- (void)setEffectsPickerDrawer:(id)a3;
- (void)setFlashMode:(int64_t)a3;
- (void)setLiveCapturePresentationFrame:(CGRect)a3 withContentRect:(CGRect)a4;
- (void)setLiveCaptureViewController:(id)a3;
- (void)setTorchModeForFlashMode:(int64_t)a3;
- (void)setUseLocalCameraViewfinder:(BOOL)a3;
- (void)setUserInterfaceAlpha:(double)a3;
- (void)setupAnimojiFaceReticleForTrackingLoss;
- (void)setupFaceInViewPromptLabel;
- (void)showAnimojiFaceReticleForTrackingLoss;
- (void)showLiveCaptureSnapshotBlurred:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)startVideoRecording;
- (void)stopVideoRecording:(id)a3;
- (void)toggleBetweenZoomFactorsForZoomControl:(id)a3;
- (void)toggleCTMFlashButton;
- (void)updateAnimojiTrackingReticleAndLabelLayout;
- (void)updateControlVisibilityAnimated:(BOOL)a3;
- (void)updateEffectEditorLayout;
- (void)updateFullScreenTextEditorLayout;
- (void)updateTopBar;
- (void)updateUIForDevicePosition:(int64_t)a3;
- (void)updateUIForDockMagnify:(BOOL)a3 dockHeightDelta:(double)a4;
- (void)updateUIForVideoRecording:(BOOL)a3;
- (void)updateZoomUIForCapturing:(BOOL)a3 animated:(BOOL)a4;
- (void)updateZoomUIVisibility;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willDropCameraFrame;
- (void)zoomControl:(id)a3 didChangeZoomFactor:(double)a4 interactionType:(int64_t)a5;
- (void)zoomSliderDidBeginAutozooming:(id)a3;
- (void)zoomSliderDidEndAutozooming:(id)a3;
- (void)zoomSliderValueDidChange:(id)a3 forEvent:(id)a4;
@end

@implementation CFXCaptureViewController

- (void)viewDidLoad
{
  v114.receiver = self;
  v114.super_class = CFXCaptureViewController;
  [(CFXCaptureViewController *)&v114 viewDidLoad];
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  [(CFXCaptureViewController *)self setZoomControlFrame:*MEMORY[0x277CBF3A0], v4, v5, v6];
  [(CFXCaptureViewController *)self setZoomSliderFrame:v3, v4, v5, v6];
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = [MEMORY[0x277D75418] currentDevice];
  if ([v9 userInterfaceIdiom])
  {
    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 bounds];
    if (v12 <= 811)
    {
      v13 = [MEMORY[0x277D759A0] mainScreen];
      [v13 bounds];
      v10 = v14 > 811;
    }

    else
    {
      v10 = 1;
    }
  }

  IsCTMSupported = CFXCaptureCapabilitiesIsCTMSupported();
  [(CFXCaptureViewController *)self setIsShowingAnimojiReticle:0];
  v16 = [(CFXCaptureViewController *)self view];
  [v16 setDelegate:self];

  [(CFXCaptureViewController *)self setObservingOrientationChanges:0];
  v17 = [MEMORY[0x277D75418] currentDevice];
  v18 = [v17 cam_initialLayoutStyle];

  v19 = [objc_alloc(MEMORY[0x277CF7EA0]) initWithLayoutStyle:v18];
  [(CFXCaptureViewController *)self setFlashButton:v19];

  v20 = [(CFXCaptureViewController *)self flashButton];
  [v20 setAllowsAutomaticFlash:1];

  v21 = [(CFXCaptureViewController *)self flashButton];
  [v21 reloadData];

  v22 = [(CFXCaptureViewController *)self flashButton];
  [v22 addTarget:self action:sel_flashModeDidChange forControlEvents:4096];

  v23 = [(CFXCaptureViewController *)self flashButton];
  [v23 setFlashMode:2];

  v24 = [(CFXCaptureViewController *)self flashButton];
  [v24 setExclusiveTouch:1];

  if (IsCTMSupported)
  {
    v25 = objc_alloc_init(MEMORY[0x277CF7E98]);
    [(CFXCaptureViewController *)self setElapsedTimeView:v25];

    v26 = [(CFXCaptureViewController *)self elapsedTimeView];
    [v26 setBackgroundStyle:3 animated:0];

    v27 = [MEMORY[0x277D3D078] doneButton];
    [(CFXCaptureViewController *)self setDoneButton:v27];

    v28 = [(CFXCaptureViewController *)self doneButton];
    [v28 addTarget:self action:sel_doneButtonTapped_ forControlEvents:64];
  }

  else
  {
    v29 = [objc_alloc(MEMORY[0x277CF7E98]) initWithLayoutStyle:v18];
    [(CFXCaptureViewController *)self setElapsedTimeView:v29];

    v30 = [MEMORY[0x277D3D078] doneButton];
    [(CFXCaptureViewController *)self setDoneButton:v30];

    v31 = [(CFXCaptureViewController *)self doneButton];
    [v31 addTarget:self action:sel_doneButtonTapped_ forControlEvents:64];

    v28 = [(CFXCaptureViewController *)self flashButton];
    v32 = [(CFXCaptureViewController *)self topBar];
    [v32 setFlashButton:v28];
  }

  v33 = [(CFXCaptureViewController *)self doneButton];
  v34 = [(CFXCaptureViewController *)self topBar];
  [v34 setDoneButton:v33];

  if (v8)
  {
    if ([(CFXCaptureViewController *)self captureMode]!= 2)
    {
      goto LABEL_18;
    }

    v35 = [(CFXCaptureViewController *)self elapsedTimeView];
    [v35 intrinsicContentSize];
    v37 = v36;
    v39 = v38;

    v40 = [(CFXCaptureViewController *)self elapsedTimeView];
    [v40 setFrame:{0.0, 23.0, v37, v39}];

    v41 = [(CFXCaptureViewController *)self view];
    v42 = [(CFXCaptureViewController *)self elapsedTimeView];
    [v41 addSubview:v42];

    v43 = [(CFXCaptureViewController *)self elapsedTimeView];
    [v43 setUserInteractionEnabled:0];
  }

  else
  {
    if (IsCTMSupported)
    {
      v43 = [(CFXCaptureViewController *)self view];
      v44 = [(CFXCaptureViewController *)self elapsedTimeView];
      [v43 addSubview:v44];
    }

    else
    {
      v43 = [(CFXCaptureViewController *)self elapsedTimeView];
      v44 = [(CFXCaptureViewController *)self topBar];
      [v44 setElapsedTimeView:v43];
    }
  }

LABEL_18:
  v45 = +[JFXOrientationMonitor keyWindow];
  [v45 bounds];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;

  [MEMORY[0x277D3D080] cameraTopBarFrameForReferenceBounds:{v47, v49, v51, v53}];
  v55 = v54;
  v57 = v54 + v56;
  v58 = [(CFXCaptureViewController *)self topBarContaineHeightConstraint];
  [v58 setConstant:v57];

  if (v10)
  {
    v59 = [(CFXCaptureViewController *)self topBarTopConstraint];
    [v59 setConstant:v55];
  }

  [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:0];
  v60 = dispatch_group_create();
  [(CFXCaptureViewController *)self setEditingOverlayWithGestureGroup:v60];

  v61 = [(CFXCaptureViewController *)self topBar];
  [v61 setOrientation:1];

  v62 = [(CFXCaptureViewController *)self topBar];
  [v62 setVisibilityUpdateDelegate:self];

  if (!isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    v63 = [MEMORY[0x277CF7E78] capabilities];
    if ([v63 zoomControlSupported])
    {
      v64 = [objc_alloc(MEMORY[0x277CF7ED0]) initWithLayoutStyle:v18];
      [(CFXCaptureViewController *)self setZoomControl:v64];

      v65 = [(CFXCaptureViewController *)self zoomControl];
      [v65 setDelegate:self];

      v66 = [(CFXCaptureViewController *)self view];
      [(CFXCaptureViewController *)self zoomControl];
    }

    else
    {
      v67 = [objc_alloc(MEMORY[0x277CF7EE0]) initWithLayoutStyle:v18];
      [(CFXCaptureViewController *)self setZoomSlider:v67];

      v68 = [(CFXCaptureViewController *)self zoomSlider];
      [v68 setDelegate:self];

      v69 = [(CFXCaptureViewController *)self zoomSlider];
      [v69 setExclusiveTouch:1];

      v70 = [(CFXCaptureViewController *)self zoomSlider];
      [v70 setMinimumValue:0.0];

      v71 = [(CFXCaptureViewController *)self zoomSlider];
      LODWORD(v72) = 1.0;
      [v71 setMaximumValue:v72];

      v73 = [(CFXCaptureViewController *)self zoomSlider];
      [v73 addTarget:self action:sel_zoomSliderValueDidChange_forEvent_ forControlEvents:4096];

      v74 = [(CFXCaptureViewController *)self zoomSlider];
      [v74 setAlpha:0.0];

      v66 = [(CFXCaptureViewController *)self view];
      [(CFXCaptureViewController *)self zoomSlider];
    }
    v75 = ;
    [v66 addSubview:v75];

    [(CFXCaptureViewController *)self updateZoomUIVisibility];
  }

  if ([(CFXCaptureViewController *)self isMessagesOnPhone])
  {
    v76 = [(CFXCaptureViewController *)self cameraControls];
    v77 = [v76 effectBrowserContentPresenterViewController];
    [(CFXCaptureViewController *)self setEffectBrowserContentPresenterViewController:v77];
  }

  else
  {
    v78 = [(CFXCaptureViewController *)self effectBrowserContentPresenterViewController];

    if (!v78)
    {
      goto LABEL_30;
    }

    v76 = [(CFXCaptureViewController *)self effectBrowserContentPresenterViewController];
    [(UIViewController *)self jfxAddChildViewController:v76];
  }

LABEL_30:
  v79 = [(CFXCaptureViewController *)self isMessagesOnPhone];
  v80 = [(CFXCaptureViewController *)self cameraControlsContainerView];
  [v80 setHidden:v79];

  [(CFXCaptureViewController *)self setConfiguredForOrientation:0];
  [(CFXCaptureViewController *)self setSwitchedToVideoMode:0];
  if (IsCTMSupported)
  {
    v81 = MTLCreateSystemDefaultDevice();
    v82 = objc_alloc(MEMORY[0x277CF7E90]);
    v83 = [v81 newCommandQueue];
    v84 = [v82 initWithMetalDevice:v81 commandQueue:v83];
    [(CFXCaptureViewController *)self setDynamicShutterControl:v84];

    v85 = [(CFXCaptureViewController *)self dynamicShutterControl];
    [v85 setDelegate:self];

    v86 = *(MEMORY[0x277CF7E60] + 16);
    v110[0] = *MEMORY[0x277CF7E60];
    v110[1] = v86;
    v110[2] = *(MEMORY[0x277CF7E60] + 32);
    v87 = *(MEMORY[0x277CF7E60] + 64);
    v111 = *(MEMORY[0x277CF7E60] + 48);
    v112 = 1;
    v113 = v87;
    [(CFXCaptureViewController *)self setDynamicShutterSettings:v110];
    v88 = objc_alloc_init(JFXPassThroughContainerView);
    [(CFXCaptureViewController *)self setBottomControlsContainer:v88];

    v89 = [(CFXCaptureViewController *)self view];
    v90 = [(CFXCaptureViewController *)self bottomControlsContainer];
    [v89 addSubview:v90];

    v91 = [(CFXCaptureViewController *)self topBar];
    [v91 setHidden:1];

    v92 = objc_alloc_init(MEMORY[0x277CF7E80]);
    [(CFXCaptureViewController *)self setControlStatusBar:v92];

    v93 = [(CFXCaptureViewController *)self controlStatusBar];
    [v93 setDelegate:self];

    v94 = [(CFXCaptureViewController *)self controlStatusBar];
    [v94 setPrimaryDesiredIndicatorTypes:&unk_28556D9C8];

    v95 = [(CFXCaptureViewController *)self controlStatusBar];
    v96 = [v95 flashIndicator];
    [v96 addTarget:self action:sel_flashModeDidChange forControlEvents:4096];

    v97 = *MEMORY[0x277D768C8];
    v98 = *(MEMORY[0x277D768C8] + 8);
    v99 = *(MEMORY[0x277D768C8] + 16);
    v100 = *(MEMORY[0x277D768C8] + 24);
    v101 = [(CFXCaptureViewController *)self doneButton];
    [v101 setTappableEdgeInsets:{v97, v98, v99, v100}];

    v102 = [(CFXCaptureViewController *)self doneButton];
    v103 = [(CFXCaptureViewController *)self controlStatusBar];
    [v103 setSecondaryAccessoryControl:v102];

    v104 = [(CFXCaptureViewController *)self view];
    v105 = [(CFXCaptureViewController *)self controlStatusBar];
    [v104 addSubview:v105];

    [(CFXCaptureViewController *)self configureCTMUIForCaptureMode];
    v106 = [objc_alloc(MEMORY[0x277CF7EC8]) initWithFrame:{v3, v4, v5, v6}];
    [(CFXCaptureViewController *)self setReticleView:v106];

    v107 = [(CFXCaptureViewController *)self view];
    v108 = [(CFXCaptureViewController *)self reticleView];
    [v107 insertSubview:v108 atIndex:0];
  }

  v109 = objc_opt_new();
  [(CFXCaptureViewController *)self setRunOnceAnimatedOverlays:v109];

  [(CFXCaptureViewController *)self setIsExternalCaptureSessionAnExternalCamera:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v26.receiver = self;
  v26.super_class = CFXCaptureViewController;
  [(CFXCaptureViewController *)&v26 viewWillAppear:a3];
  [(CFXCaptureViewController *)self updateTopBar];
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = [v4 initWithSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  [(CFXCaptureViewController *)self setPresentationView:v5];

  v6 = [(CFXCaptureViewController *)self presentationView];
  [v6 setUserInteractionEnabled:0];

  if ([(CFXCaptureViewController *)self isMessagesOnPhone])
  {
    [(CFXCaptureViewController *)self nonTransformedContainerView];
  }

  else
  {
    [(CFXCaptureViewController *)self view];
  }
  v7 = ;
  v8 = [(CFXCaptureViewController *)self presentationView];
  [v7 addSubview:v8];

  v9 = [MEMORY[0x277D75418] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (!v10)
  {
    v11 = +[JFXOrientationMonitor keyWindow];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v27.origin.x = v13;
    v27.origin.y = v15;
    v27.size.width = v17;
    v27.size.height = v19;
    Width = CGRectGetWidth(v27);
    v28.origin.x = v13;
    v28.origin.y = v15;
    v28.size.width = v17;
    v28.size.height = v19;
    Height = CGRectGetHeight(v28);
    v22 = Width >= Height ? Height : Width;
    v23 = Width >= Height ? Width : Height;
    [(CFXCaptureViewController *)self configureUIForWindowOrientation:1 bounds:0.0, 0.0, v22, v23];
    if (CFXCaptureCapabilitiesIsCTMSupported())
    {
      if ([(CFXCaptureViewController *)self needsBlackBackgroundForCTMControls])
      {
        [MEMORY[0x277D75348] blackColor];
      }

      else
      {
        [MEMORY[0x277D75348] clearColor];
      }
      v24 = ;
      v25 = [(CFXCaptureViewController *)self bottomControlsContainer];
      [v25 setBackgroundColor:v24];
    }
  }

  [(CFXCaptureViewController *)self configureCaptureControlsForOrientationWithAnimation:0];
  [(CFXCaptureViewController *)self configureUIForOrientation];
  [(CFXCaptureViewController *)self CFX_applyAutoRotationCorrectionToEditorViews];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CFXCaptureViewController;
  [(CFXCaptureViewController *)&v5 viewWillDisappear:a3];
  v4 = [(CFXCaptureViewController *)self runOnceAnimatedOverlays];
  [v4 removeAllObjects];
}

- (CGRect)CFX_generateAutoRotationCorrectionFrameWithInterfaceOrientation:(int64_t)a3
{
  [(CFXCaptureViewController *)self externalUncroppedPresentationRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CFXCaptureViewController *)self view];
  v14 = [v13 superview];
  [v14 frame];
  v16 = v15;

  switch(a3)
  {
    case 2:
      v25 = [(CFXCaptureViewController *)self view];
      [v25 bounds];
      Width = CGRectGetWidth(v41);
      v42.origin.x = v6;
      v42.origin.y = v8;
      v42.size.width = v10;
      v42.size.height = v12;
      v23 = Width - CGRectGetWidth(v42) - v6;

      v27 = [(CFXCaptureViewController *)self view];
      [v27 bounds];
      Height = CGRectGetHeight(v43);
      v44.origin.x = v6;
      v44.origin.y = v8;
      v44.size.width = v10;
      v44.size.height = v12;
      v19 = Height - CGRectGetHeight(v44) - v8;

      goto LABEL_7;
    case 3:
      v21 = [(CFXCaptureViewController *)self view];
      [v21 bounds];
      v22 = CGRectGetHeight(v37);
      v38.origin.x = v6;
      v38.origin.y = v8;
      v38.size.width = v10;
      v38.size.height = v12;
      v23 = v22 - CGRectGetHeight(v38) - v8;

      v39.origin.x = v6;
      v39.origin.y = v8;
      v39.size.width = v10;
      v39.size.height = v12;
      v24 = CGRectGetHeight(v39);
      v40.origin.x = v6;
      v40.origin.y = v8;
      v40.size.width = v10;
      v40.size.height = v12;
      v12 = CGRectGetWidth(v40);
      v10 = v24;
      v19 = v6;
LABEL_7:
      v8 = v23;
      break;
    case 4:
      v17 = [(CFXCaptureViewController *)self view];
      [v17 bounds];
      v18 = CGRectGetWidth(v33);
      v34.origin.x = v6;
      v34.origin.y = v8;
      v34.size.width = v10;
      v34.size.height = v12;
      v19 = v18 - CGRectGetWidth(v34) - v6 - v16;

      v35.origin.x = v6;
      v35.origin.y = v8;
      v35.size.width = v10;
      v35.size.height = v12;
      v20 = CGRectGetHeight(v35);
      v36.origin.x = v6;
      v36.origin.y = v8;
      v36.size.width = v10;
      v36.size.height = v12;
      v12 = CGRectGetWidth(v36);
      v10 = v20;
      break;
    default:
      v19 = v8;
      v8 = v6;
      break;
  }

  v29 = v8;
  v30 = v19;
  v31 = v10;
  v32 = v12;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)CFX_applyAutoRotationCorrectionToEditorViews
{
  v65 = *MEMORY[0x277D85DE8];
  if (isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    v3 = +[JFXOrientationMonitor interfaceOrientation];
    [(CFXCaptureViewController *)self CFX_generateAutoRotationCorrectionFrameWithInterfaceOrientation:v3];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = 0.0;
    if (v3 != 1)
    {
      if (v3 == 3)
      {
        v12 = 1.57079633;
      }

      else if (v3 == 4)
      {
        v12 = -1.57079633;
      }

      else
      {
        v12 = 3.14159265;
        if (v3 != 2)
        {
          v12 = 0.0;
        }
      }
    }

    memset(&v63.c, 0, 32);
    if ((v3 - 3) >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    *&v63.a = 0uLL;
    CGAffineTransformMakeRotation(&v63, v13);
    v14 = JFXLog_viewerUI();
    v59 = v5;
    v60 = v11;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      switch(v3)
      {
        case 1:
          v15 = @"UIInterfaceOrientationPortrait";
          break;
        case 3:
          v15 = @"UIInterfaceOrientationLandscapeRight";
          break;
        case 4:
          v15 = @"UIInterfaceOrientationLandscapeLeft";
          break;
        case 2:
          v15 = @"UIInterfaceOrientationPortraitUpsideDown";
          break;
        default:
          v15 = 0;
          break;
      }

      [(CFXCaptureViewController *)self externalUncroppedPresentationRect];
      v16 = NSStringFromCGRect(v66);
      v67.origin.x = v5;
      v67.origin.y = v7;
      v67.size.width = v9;
      v67.size.height = v11;
      v17 = NSStringFromCGRect(v67);
      LODWORD(buf.a) = 138413058;
      *(&buf.a + 4) = v15;
      WORD2(buf.b) = 2048;
      *(&buf.b + 6) = v13 / 0.0174532925;
      HIWORD(buf.c) = 2112;
      *&buf.d = v16;
      LOWORD(buf.tx) = 2112;
      *(&buf.tx + 2) = v17;
      _os_log_impl(&dword_242A3B000, v14, OS_LOG_TYPE_DEFAULT, "Updating editor view frames - orientation: %@, rotation: %f, uncroppedPresentationRect: %@, frame: %@", &buf, 0x2Au);
    }

    v18 = v9;
    v58 = v9;

    v19 = [(CFXCaptureViewController *)self view];
    [v19 bounds];
    Width = CGRectGetWidth(v68);

    v21 = [(CFXCaptureViewController *)self view];
    [v21 bounds];
    Height = CGRectGetHeight(v69);

    if (Width >= Height)
    {
      v23 = Height;
    }

    else
    {
      v23 = Width;
    }

    v24 = [(CFXCaptureViewController *)self view];
    [v24 bounds];
    v25 = CGRectGetWidth(v70);

    v26 = [(CFXCaptureViewController *)self view];
    [v26 bounds];
    v27 = CGRectGetHeight(v71);

    if (v25 < v27)
    {
      v25 = v27;
    }

    v28 = *MEMORY[0x277CBF348];
    v29 = *(MEMORY[0x277CBF348] + 8);
    v30 = [(CFXCaptureViewController *)self liveCaptureContainerContainer];
    [v30 setBounds:{v28, v29, v23, v25}];

    v31 = [(CFXCaptureViewController *)self view];
    [v31 center];
    v33 = v32;
    v35 = v34;
    v36 = [(CFXCaptureViewController *)self liveCaptureContainerContainer];
    [v36 setCenter:{v33, v35}];

    v62 = v63;
    v37 = [(CFXCaptureViewController *)self liveCaptureContainerContainer];
    buf = v62;
    [v37 setTransform:&buf];

    v38 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [v38 setFrame:{v59, v7, v18, v60}];

    v39 = [(CFXCaptureViewController *)self effectEditorContainerView];
    [v39 setBounds:{v28, v29, v57, v25}];

    v40 = [(CFXCaptureViewController *)self view];
    [v40 center];
    v42 = v41;
    v44 = v43;
    v45 = [(CFXCaptureViewController *)self effectEditorContainerView];
    [v45 setCenter:{v42, v44}];

    v61 = v63;
    v46 = [(CFXCaptureViewController *)self effectEditorContainerView];
    buf = v61;
    [v46 setTransform:&buf];

    v47 = [(CFXCaptureViewController *)self effectEditor];
    [v47 setFrame:{v59, v7, v58, v60}];

    [(CFXCaptureViewController *)self presentationRect];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = [(CFXCaptureViewController *)self presentationView];
    [v56 setFrame:{v49, v51, v53, v55}];

    [(CFXCaptureViewController *)self updateAnimojiTrackingReticleAndLabelLayout];
  }
}

- (void)applyAutoRotationCorrectionToEditorViewsWithTransitionCoordinator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CFXCaptureViewController *)self effectEditor];
    [v5 setHidden:1];

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __94__CFXCaptureViewController_applyAutoRotationCorrectionToEditorViewsWithTransitionCoordinator___block_invoke;
    v6[3] = &unk_278D7B4B8;
    v6[4] = self;
    [v4 animateAlongsideTransition:0 completion:v6];
  }

  else
  {
    [(CFXCaptureViewController *)self CFX_applyAutoRotationCorrectionToEditorViews];
  }
}

void __94__CFXCaptureViewController_applyAutoRotationCorrectionToEditorViewsWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) CFX_applyAutoRotationCorrectionToEditorViews];
  v2 = [*(a1 + 32) effectEditor];
  [v2 setHidden:0];
}

- (void)CFX_adjustOverlaysForCaptureOrientationChanged:(int64_t)a3 oldCaptureOrientation:(int64_t)a4
{
  v98 = *MEMORY[0x277D85DE8];
  v7 = +[CFXMediaSettings sharedInstance];
  [v7 renderSize];
  v9 = v8;
  v11 = v10;

  v12 = 0.0;
  angle = 0.0;
  if (a3 != a4)
  {
    v13 = 0.0;
    if (a3 != 1)
    {
      if (a3 == 3)
      {
        v13 = 1.57079633;
      }

      else if (a3 == 4)
      {
        v13 = -1.57079633;
      }

      else
      {
        v13 = 3.14159265;
        if (a3 != 2)
        {
          v13 = 0.0;
        }
      }
    }

    if (a4 != 1)
    {
      if (a4 == 3)
      {
        v12 = 1.57079633;
      }

      else if (a4 == 4)
      {
        v12 = -1.57079633;
      }

      else
      {
        v12 = 3.14159265;
        if (a4 != 2)
        {
          v12 = 0.0;
        }
      }
    }

    angle = v13 - v12;
  }

  v14 = JFXLog_viewerUI();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    switch(a3)
    {
      case 1:
        v15 = @"UIInterfaceOrientationPortrait";
        break;
      case 3:
        v15 = @"UIInterfaceOrientationLandscapeRight";
        break;
      case 4:
        v15 = @"UIInterfaceOrientationLandscapeLeft";
        break;
      default:
        v15 = @"UIInterfaceOrientationPortraitUpsideDown";
        if (a3 != 2)
        {
          v15 = 0;
        }

        break;
    }

    switch(a4)
    {
      case 1:
        v16 = @"UIInterfaceOrientationPortrait";
        break;
      case 3:
        v16 = @"UIInterfaceOrientationLandscapeRight";
        break;
      case 4:
        v16 = @"UIInterfaceOrientationLandscapeLeft";
        break;
      default:
        v16 = @"UIInterfaceOrientationPortraitUpsideDown";
        if (a4 != 2)
        {
          v16 = 0;
        }

        break;
    }

    LODWORD(buf.a) = 138412802;
    *(&buf.a + 4) = v15;
    WORD2(buf.b) = 2112;
    *(&buf.b + 6) = v16;
    HIWORD(buf.c) = 2048;
    buf.d = angle * 180.0 / 3.14159265;
    _os_log_impl(&dword_242A3B000, v14, OS_LOG_TYPE_DEFAULT, "adjust overlays for capture orientation changed: captureInterfaceOrientation %@ oldCaptureInterfaceOrientation %@ capture rotation angle %f", &buf, 0x20u);
  }

  memset(&v90, 0, sizeof(v90));
  CGAffineTransformMakeRotation(&v90, angle);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v66 = self;
  v17 = [(CFXCaptureViewController *)self composition];
  v18 = [v17 effects];

  v19 = [v18 countByEnumeratingWithState:&v86 objects:v97 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v87;
    v69 = *MEMORY[0x277CBF2C0];
    v70 = *(MEMORY[0x277CBF2C0] + 16);
    v22 = *(MEMORY[0x277CBF2C0] + 40);
    v68 = *(MEMORY[0x277CBF2C0] + 32);
    __asm { FMOV            V0.2D, #1.0 }

    v67 = _Q0;
    v28 = MEMORY[0x277CC08F0];
    v29 = 0x278D78000uLL;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v87 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v31 = *(*(&v86 + 1) + 8 * i);
        v32 = [v31 jtEffect];
        v33 = [v32 type];

        if (v33 == 2)
        {
          v34 = [v31 jtEffect];
          v35 = [v34 trackingProps];
          v36 = [v35 trackingType];

          if (v36 == 2)
          {
            if (v34)
            {
              [v34 topLevelTransform];
            }

            else
            {
              v95 = 0u;
              v96 = 0u;
              v93 = 0u;
              v94 = 0u;
              v92 = 0u;
              memset(&buf, 0, sizeof(buf));
            }

            v85.a = 0.0;
            v85.b = 0.0;
            *&v85.c = v67;
            pv_simd_matrix_rotate();
            v93 = v79;
            v94 = v80;
            v95 = v81;
            v96 = v82;
            buf = v77;
            v92 = v78;
            [v34 setTopLevelTransform:&buf];
          }

          else if (!v36)
          {
            *&buf.a = *v28;
            v76 = *&buf.a;
            buf.c = *(v28 + 16);
            c = buf.c;
            [v34 imageFrameAtTime:&buf forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{0.0, 0.0, v9, v11}];
            CenterPoint = CGRectGetCenterPoint(v38, v39, v40, v41);
            v74 = v42;
            v43 = CGRectGetCenterPoint(0.0, 0.0, v9, v11);
            v45 = v44;
            *&v85.a = v69;
            *&v85.c = v70;
            v85.tx = v68;
            v85.ty = v22;
            CGAffineTransformTranslate(&buf, &v85, v43, v44);
            v85 = buf;
            CGAffineTransformRotate(&buf, &v85, angle);
            v85 = buf;
            CGAffineTransformTranslate(&buf, &v85, -v43, -v45);
            point = vaddq_f64(*&buf.tx, vmlaq_n_f64(vmulq_n_f64(*&buf.c, v74), *&buf.a, CenterPoint));
            v46 = *(v29 + 1320);
            buf = v90;
            *&v85.a = v76;
            v85.c = c;
            [v46 addTransformToEffect:v34 transform:&buf relativeToBounds:&v85 time:0 restrictToBounds:{0.0, 0.0, v9, v11}];
            *&buf.a = v76;
            buf.c = c;
            [v34 imageFrameAtTime:&buf forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{0.0, 0.0, v9, v11}];
            v51 = CGRectGetCenterPoint(v47, v48, v49, v50);
            v53 = v52;
            v54 = point.y - v52;
            v55 = JFXLog_DebugViewerUI();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              v99.x = CenterPoint;
              v99.y = v74;
              v75 = NSStringFromCGPoint(v99);
              v100.x = v51;
              v100.y = v53;
              v57 = NSStringFromCGPoint(v100);
              v58 = NSStringFromCGPoint(point);
              v101.x = point.x - v51;
              v101.y = v54;
              v59 = NSStringFromCGPoint(v101);
              LODWORD(buf.a) = 138413058;
              *(&buf.a + 4) = v75;
              WORD2(buf.b) = 2112;
              *(&buf.b + 6) = v57;
              HIWORD(buf.c) = 2112;
              *&buf.d = v58;
              v60 = v58;
              LOWORD(buf.tx) = 2112;
              *(&buf.tx + 2) = v59;
              v61 = v59;
              _os_log_debug_impl(&dword_242A3B000, v55, OS_LOG_TYPE_DEBUG, "rotated overlays for capture orientation changed: overlayCenterPoint %@ rotatedCenterPoint %@ targetRotatedCenterPoint %@ translation required %@", &buf, 0x2Au);

              v28 = MEMORY[0x277CC08F0];
              v29 = 0x278D78000;
            }

            memset(&buf, 0, sizeof(buf));
            CGAffineTransformMakeTranslation(&buf, point.x - v51, v54);
            v56 = *(v29 + 1320);
            v85 = buf;
            v83 = v76;
            v84 = c;
            [v56 addTransformToEffect:v34 transform:&v85 relativeToBounds:&v83 time:0 restrictToBounds:{0.0, 0.0, v9, v11}];
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v86 objects:v97 count:16];
    }

    while (v20);
  }

  v62 = CFXLog_action();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = [(CFXCaptureViewController *)v66 composition];
    v64 = [v63 jtEffects];
    v65 = [CFXActionLogging actionLogAsJSONForEvent:@"device rotated" atLocation:@"live" withEffectStack:v64];
    LODWORD(buf.a) = 138543362;
    *(&buf.a + 4) = v65;
    _os_log_impl(&dword_242A3B000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@", &buf, 0xCu);
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v15 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CFXCaptureViewController;
  [(CFXCaptureViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if (isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    [(CFXCaptureViewController *)self applyAutoRotationCorrectionToEditorViewsWithTransitionCoordinator:v7];
  }

  else
  {
    v8 = CFXLog_action();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(CFXCaptureViewController *)self composition];
      v10 = [v9 jtEffects];
      v11 = [CFXActionLogging actionLogAsJSONForEvent:@"device rotated" atLocation:@"live" withEffectStack:v10];
      *buf = 138543362;
      v14 = v11;
      _os_log_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

- (void)dealloc
{
  [MEMORY[0x277D41600] flushEngine];
  v3.receiver = self;
  v3.super_class = CFXCaptureViewController;
  [(CFXCaptureViewController *)&v3 dealloc];
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  v11 = a3;
  v5 = [v11 destinationViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v11 destinationViewController];
    [(CFXCaptureViewController *)self setLiveCaptureViewController:v7];
  }

  v8 = [v11 destinationViewController];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    v10 = [v11 destinationViewController];
    [(CFXCaptureViewController *)self setCameraControls:v10];
  }
}

- (BOOL)shouldPerformSegueWithIdentifier:(id)a3 sender:(id)a4
{
  if ([a3 isEqualToString:{@"CFXLiveCaptureViewControllerSegue", a4}])
  {
    return ![(CFXCaptureViewController *)self isMessagesOnPhone];
  }

  else
  {
    return 1;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CFXCaptureViewController;
  [(CFXCaptureViewController *)&v5 viewDidAppear:a3];
  [(CFXCaptureViewController *)self layoutZoomUI];
  if ([(CFXCaptureViewController *)self isMessagesOnPhone])
  {
    v4 = [(CFXCaptureViewController *)self effectBrowserContentPresenterViewController];
    [v4 configureEffectBrowserContentPresentationForOrientation:{+[JFXOrientationMonitor interfaceOrientation](JFXOrientationMonitor, "interfaceOrientation")}];
  }
}

- (void)updateTopBar
{
  if (isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    v5 = [(CFXCaptureViewController *)self topBar];
    [v5 setHidden:1];
  }

  else
  {
    if (CFXCaptureCapabilitiesIsCTMSupported())
    {
      return;
    }

    v3 = [(CFXCaptureViewController *)self topBar];
    [v3 setHidden:0];

    v4 = [(CFXCaptureViewController *)self topBar];
    [v4 configureForMode:-[CFXCaptureViewController captureMode](self animated:{"captureMode") == 2, 0}];

    v5 = [(CFXCaptureViewController *)self topBar];
    [v5 setStyle:0];
  }
}

- (void)configureCaptureControlsForOrientationWithAnimation:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (!v6)
  {
    v7 = +[JFXOrientationMonitor deviceInterfaceOrientation];
    v8 = [(CFXCaptureViewController *)self delegate];
    v17 = [v8 cameraControlsViewControllerForCaptureViewController:self];

    v9 = [v17 effectButton];
    [v9 setOrientation:v7 animated:v3];

    v10 = [v17 flipButton];
    [v10 setOrientation:v7 animated:v3];

    if (CFXCaptureCapabilitiesIsCTMSupported())
    {
      v11 = [(CFXCaptureViewController *)self controlStatusBar];
      v12 = [v11 flashIndicator];
      [v12 setOrientation:v7 animated:v3];
    }

    else
    {
      v13 = [(CFXCaptureViewController *)self captureMode];
      v14 = [(CFXCaptureViewController *)self flashButton];
      v11 = v14;
      if (v13 == 2)
      {
        v15 = 1;
      }

      else
      {
        v15 = v7;
      }

      [v14 setOrientation:v15 animated:v3];
    }

    v16 = [(CFXCaptureViewController *)self zoomControl];
    [v16 setOrientation:v7 animated:v3];
  }
}

- (void)configureUIForOrientation
{
  v3 = +[JFXOrientationMonitor interfaceOrientation];
  v4 = +[JFXOrientationMonitor keyWindow];
  [v4 bounds];
  [(CFXCaptureViewController *)self configureUIForWindowOrientation:v3 bounds:?];
}

- (void)configureUIForWindowOrientation:(int64_t)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if ([(CFXCaptureViewController *)self captureMode]== 1)
  {
    return;
  }

  v10 = 0x277D75000uLL;
  v11 = [MEMORY[0x277D75418] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  IsCTMSupported = CFXCaptureCapabilitiesIsCTMSupported();
  [MEMORY[0x277D3D080] cameraBottomBarFrameForReferenceBounds:{x, y, width, height}];
  v341 = v14;
  v342 = v15;
  v339 = v17;
  v340 = v16;
  [MEMORY[0x277D3D080] reviewScreenControlBarFrameForReferenceBounds:{x, y, width, height}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(CFXCaptureViewController *)self delegate];
  v27 = [v26 cameraControlsViewControllerForCaptureViewController:self];

  v351 = [v27 bottomBar];
  v28 = [(CFXCaptureViewController *)self captureMode];
  v349 = a3 - 5;
  v352 = x;
  v350 = height;
  if (v12)
  {
    v29 = [MEMORY[0x277D759A0] mainScreen];
    [v29 bounds];
    v30 = v374.origin.x;
    v31 = v374.origin.y;
    v32 = v374.size.width;
    v33 = v374.size.height;
    v34 = CGRectGetWidth(v374);
    v375.origin.x = v30;
    v375.origin.y = v31;
    v375.size.width = v32;
    v375.size.height = v33;
    v35 = v34 / CGRectGetHeight(v375);
    v36 = v352;

    [MEMORY[0x277D3D080] cameraContentFrameForContentAspectRatio:v35 referenceBounds:{v352, y, width, height}];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = [(CFXCaptureViewController *)self captureControlsContainerTopConstraint];
    LODWORD(v46) = 1144750080;
    [v45 setPriority:v46];

    v47 = [(CFXCaptureViewController *)self captureControlsContainerHeightConstraint];
    LODWORD(v48) = 1132068864;
    [v47 setPriority:v48];

    if ([(CFXCaptureViewController *)self captureMode]== 2)
    {
      v49 = [(CFXCaptureViewController *)self view];
      [v49 frame];
      v343 = v40;
      v346 = v38;
      v50 = CGRectGetWidth(v376) * 0.5;

      v51 = [(CFXCaptureViewController *)self elapsedTimeView];
      [v51 frame];
      v52 = v50 - CGRectGetWidth(v377) * 0.5;

      v53 = [(CFXCaptureViewController *)self elapsedTimeView];
      [v53 frame];
      v336 = v54;
      v55 = [(CFXCaptureViewController *)self elapsedTimeView];
      [v55 frame];
      v56 = v42;
      v57 = CGRectGetWidth(v378);
      v58 = [(CFXCaptureViewController *)self elapsedTimeView];
      [v58 frame];
      v59 = width;
      v60 = v44;
      v61 = CGRectGetHeight(v379);

      v10 = 0x277D75000uLL;
      v62 = [(CFXCaptureViewController *)self elapsedTimeView];
      v63 = v52;
      v40 = v343;
      v64 = v57;
      v42 = v56;
      v36 = v352;
      height = v350;
      v65 = v61;
      v44 = v60;
      width = v59;
      v38 = v346;
      [v62 setFrame:{v63, v336, v64, v65}];
    }

    v66 = v351;
    goto LABEL_57;
  }

  v337 = v19;
  v330 = v21;
  v331 = v23;
  rect = v25;
  v67 = 0.5625;
  if (!v28)
  {
    v67 = 0.75;
  }

  [MEMORY[0x277D3D080] cameraContentFrameForContentAspectRatio:v67 referenceBounds:{x, y, width, height}];
  v344 = v69;
  v347 = v68;
  v71 = v70;
  v73 = v72;
  v74 = a3;
  v75 = height;
  v76 = width;
  if ((a3 - 5) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v77 = [(CFXCaptureViewController *)self captureMode];
    v74 = a3;
    v75 = height;
    v76 = width;
    if (!v77)
    {
      v74 = 1;
      v75 = width;
      v76 = height;
    }
  }

  v372 = 0u;
  v373 = 0u;
  v370 = 0u;
  v371 = 0u;
  v368 = 0u;
  v369 = 0u;
  v333 = v73;
  v334 = v71;
  [MEMORY[0x277D3D080] cameraTopBarGeometryForReferenceBounds:v74 forContentSize:x withOrientation:{y, v76, v75, v71, v73}];
  v78 = [(CFXCaptureViewController *)self topBar];
  [v78 setCenter:{0.0, 0.0}];

  v79 = [(CFXCaptureViewController *)self topBar];
  [v79 setBounds:{0.0, 0.0, 0.0, 0.0}];

  v80 = [(CFXCaptureViewController *)self captureMode];
  if (v349 >= 0xFFFFFFFFFFFFFFFELL && v80 == 2)
  {
    v81 = [MEMORY[0x277D75418] currentDevice];
    if ([v81 userInterfaceIdiom])
    {
      v82 = 38.0;
    }

    else
    {
      v83 = [MEMORY[0x277D759A0] mainScreen];
      [v83 bounds];
      if (v84 == 568)
      {
        v82 = 35.0;
      }

      else
      {
        v85 = [MEMORY[0x277D759A0] mainScreen];
        [v85 bounds];
        if (v86 == 568)
        {
          v82 = 35.0;
        }

        else
        {
          v82 = 38.0;
        }
      }

      v10 = 0x277D75000uLL;
    }

    v87 = [(CFXCaptureViewController *)self topBar];
    [v87 setBounds:{v368, 274.0, v82}];

    v88 = [MEMORY[0x277D75418] currentDevice];
    if (![v88 userInterfaceIdiom])
    {
      v89 = [MEMORY[0x277D759A0] mainScreen];
      [v89 bounds];
      if (v90 == 568)
      {

        v10 = 0x277D75000;
      }

      else
      {
        v91 = [MEMORY[0x277D759A0] mainScreen];
        [v91 bounds];
        v327 = v92;

        v10 = 0x277D75000uLL;
        if (v327 != 568)
        {
          goto LABEL_28;
        }
      }

      v380.origin.x = v19;
      v380.origin.y = v330;
      v380.size.width = v331;
      v380.size.height = rect;
      v93 = CGRectGetHeight(v380);
      v381.origin.x = v341;
      v381.origin.y = v342;
      v381.size.height = v339;
      v381.size.width = v340;
      v94 = *(&v370 + 1) - (v93 - CGRectGetHeight(v381));
      v88 = [(CFXCaptureViewController *)self topBar];
      [v88 setCenter:{*&v370, v94}];
    }
  }

LABEL_28:
  v365 = v371;
  v366 = v372;
  v367 = v373;
  v95 = [(CFXCaptureViewController *)self topBar];
  v359 = v365;
  v360 = v366;
  v361 = v367;
  [v95 setTransform:&v359];

  v96 = [(CFXCaptureViewController *)self captureControlsContainerTopConstraint];
  v98 = v96;
  v99 = 750.0;
  if (v349 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v100 = 750.0;
  }

  else
  {
    v100 = 250.0;
  }

  if (v349 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v101 = 250.0;
  }

  else
  {
    v101 = 750.0;
  }

  *&v97 = v100;
  [v96 setPriority:v97];

  v102 = [(CFXCaptureViewController *)self captureControlsContainerWidthConstraint];
  *&v103 = v100;
  [v102 setPriority:v103];

  v104 = [(CFXCaptureViewController *)self captureControlsContainerHeightConstraint];
  *&v105 = v101;
  [v104 setPriority:v105];

  v106 = [(CFXCaptureViewController *)self view];
  v107 = v106;
  if (v349 >= 0xFFFFFFFFFFFFFFFELL)
  {
    [v106 frame];
    v111 = v110;
    v113 = v112;
    v115 = v114;
    v117 = v116;

    v383.origin.x = v111;
    v383.origin.y = v113;
    v383.size.width = v115;
    v383.size.height = v117;
    v118 = CGRectGetWidth(v383) - v342;
    v119 = [*(v10 + 1048) currentDevice];
    if ([v119 userInterfaceIdiom])
    {

      v36 = v352;
      v38 = v347;
      v44 = v333;
LABEL_50:
      v134 = [(CFXCaptureViewController *)self captureControlsContainerWidthConstraint];
      [v134 setConstant:v118];

      v135 = [(CFXCaptureViewController *)self captureControlsContainerLeadingConstraint];
      v137 = v135;
      if (a3 == 4)
      {
        *&v136 = 750.0;
      }

      else
      {
        *&v136 = 250.0;
      }

      if (a3 == 4)
      {
        v99 = 250.0;
      }

      [v135 setPriority:v136];

      v66 = v351;
      goto LABEL_56;
    }

    v122 = [MEMORY[0x277D759A0] mainScreen];
    [v122 bounds];
    v36 = v352;
    v38 = v347;
    v44 = v333;
    if (v123 == 568)
    {
    }

    else
    {
      [MEMORY[0x277D759A0] mainScreen];
      v132 = v131 = v10;
      [v132 bounds];
      v329 = v133;

      v10 = v131;
      if (v329 != 568)
      {
        goto LABEL_50;
      }
    }

    v385.origin.x = v337;
    v385.origin.y = v330;
    v385.size.width = v331;
    v385.size.height = rect;
    v118 = CGRectGetHeight(v385);
    goto LABEL_50;
  }

  [v106 bounds];
  v108 = CGRectGetHeight(v382) - v342;

  v109 = [*(v10 + 1048) currentDevice];
  v44 = v333;
  if (![v109 userInterfaceIdiom])
  {
    v120 = [MEMORY[0x277D759A0] mainScreen];
    [v120 bounds];
    if (v121 == 568)
    {

      v66 = v351;
    }

    else
    {
      [MEMORY[0x277D759A0] mainScreen];
      v125 = v124 = v10;
      [v125 bounds];
      v328 = v126;

      v10 = v124;
      v66 = v351;
      if (v328 != 568)
      {
        goto LABEL_45;
      }
    }

    v384.origin.x = v19;
    v384.origin.y = v330;
    v384.size.width = v331;
    v384.size.height = rect;
    v108 = CGRectGetHeight(v384);
    goto LABEL_45;
  }

  v66 = v351;
LABEL_45:
  if ([(CFXCaptureViewController *)self dockIsMagnified])
  {
    [(CFXCaptureViewController *)self dockMagnifiedHeightDelta];
    v108 = v108 + v127;
  }

  v36 = x;
  v128 = [(CFXCaptureViewController *)self captureControlsContainerHeightConstraint];
  [v128 setConstant:v108];

  v129 = [(CFXCaptureViewController *)self captureControlsContainerLeadingConstraint];
  LODWORD(v130) = 1144750080;
  [v129 setPriority:v130];

  v38 = v347;
LABEL_56:
  v138 = [(CFXCaptureViewController *)self captureControlsContainerTrailingConstraint];
  *&v139 = v99;
  [v138 setPriority:v139];

  v40 = v344;
  v42 = v334;
LABEL_57:
  v140 = [(CFXCaptureViewController *)self view];
  [v140 layoutIfNeeded];

  v372 = 0u;
  v373 = 0u;
  v370 = 0u;
  v371 = 0u;
  v368 = 0u;
  v369 = 0u;
  v345 = y;
  v348 = width;
  [MEMORY[0x277D3D080] orientedGeometryForFrame:a3 inBounds:v38 orientation:{v40, v42, v44, v36, y, width, height}];
  v141 = *(&v371 + 1);
  v338 = *&v371;
  v142 = v372;
  v335 = *&v372;
  v143 = v369;
  v144 = [(CFXCaptureViewController *)self view];
  [v144 frame];
  v146 = v145;
  v148 = v147;
  v150 = v149;
  v152 = v151;
  v153 = [(CFXCaptureViewController *)self liveCaptureContainerContainer];
  [v153 setFrame:{v146, v148, v150, v152}];

  if ((IsCTMSupported & 1) == 0)
  {
    v154 = *MEMORY[0x277CBF3A0];
    v155 = *(MEMORY[0x277CBF3A0] + 8);
    v156 = v370;
    v157 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [v157 setCenter:v156];

    v158 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [v158 setBounds:{v154, v155, fabs(v335 * *(&v143 + 1) + v338 * *&v143), fabs(*(&v142 + 1) * *(&v143 + 1) + v141 * *&v143)}];
  }

  v159 = v345;
  v160 = v352;
  if (![(CFXCaptureViewController *)self configuredForOrientation])
  {
    v363 = 0u;
    v364 = 0u;
    v361 = 0u;
    v362 = 0u;
    v359 = 0u;
    v360 = 0u;
    [MEMORY[0x277D3D080] orientedGeometryForFrame:a3 inBounds:v341 orientation:{v342, v340, v339, v352, v345, width, v350}];
    v161 = [*(v10 + 1048) currentDevice];
    if ([v161 userInterfaceIdiom])
    {
      [v27 view];
    }

    else
    {
      [v27 backgroundView];
    }
    v162 = ;

    v163 = [(CFXCaptureViewController *)self view];
    [v163 convertPoint:v162 toView:v361];
    v165 = v164;
    v167 = v166;

    v356 = v362;
    v357 = v363;
    v358 = v364;
    [v66 setTransform:&v356];
    if (IsCTMSupported)
    {
      [(CFXCaptureViewController *)self bottomBarCTMControlsFrameForWindowOrientation:a3 bounds:v352, v345, width, v350];
      v168 = v386.origin.x;
      v169 = v386.origin.y;
      v170 = v386.size.width;
      v171 = v386.size.height;
      MidX = CGRectGetMidX(v386);
      v387.origin.x = v168;
      v387.origin.y = v169;
      v387.size.width = v170;
      v387.size.height = v171;
      [v66 setCenter:{MidX, CGRectGetMidY(v387)}];
      v173 = v169;
      width = v348;
      [v66 setBounds:{v168, v173, v170, v171}];
    }

    else
    {
      v174 = [*(v10 + 1048) currentDevice];
      v175 = [v174 userInterfaceIdiom];
      v177 = *(&v361 + 1);
      v176 = *&v361;
      if (v175)
      {
        v176 = v165;
        v177 = v167;
      }

      [v66 setCenter:{v176, v177}];

      [v66 setBounds:{v359, v360}];
      [(CFXCaptureViewController *)self layoutZoomUI];
    }
  }

  v178 = [(CFXCaptureViewController *)self effectBrowserContentPresenterViewController];
  [v178 configureEffectBrowserContentPresentationForOrientation:{+[JFXOrientationMonitor interfaceOrientation](JFXOrientationMonitor, "interfaceOrientation")}];

  if (IsCTMSupported)
  {
    if (v349 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v388.origin.x = v352;
      v388.origin.y = v345;
      v388.size.width = width;
      v388.size.height = v350;
      v180 = CGRectGetHeight(v388);
      v389.origin.x = v352;
      v389.origin.y = v345;
      v389.size.width = width;
      v389.size.height = v350;
      v179 = CGRectGetWidth(v389);
      v181 = 0.0;
      v160 = 0.0;
    }

    else
    {
      v179 = v350;
      v180 = width;
      v181 = v345;
    }

    v182 = objc_alloc(MEMORY[0x277CF7EB0]);
    v183 = [(CFXCaptureViewController *)self dynamicShutterControl];
    [v183 intrinsicContentSize];
    v186 = [v182 initWithReferenceBounds:v160 shutterIntrinsicSize:{v181, v180, v179, v184, v185}];

    v187 = CFXPreviewAspectRatioForAspectRatioCrop([(CFXCaptureViewController *)self aspectRatioCrop]);
    if (![(CFXCaptureViewController *)self aspectRatioCrop])
    {
      v187 = [(CFXCaptureViewController *)self captureMode]== 2;
    }

    [v186 viewportFrameForAspectRatio:v187 usingAppDrawer:1 accessoryAreaExpanded:0];
    v190 = v189;
    v191 = v188;
    v193 = v192;
    v195 = v194;
    if (v349 >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (a3 == 4)
      {
        v390.origin.x = v352;
        v390.origin.y = v345;
        v390.size.width = width;
        v390.size.height = v350;
        v196 = CGRectGetWidth(v390);
        v391.origin.x = v190;
        v391.origin.y = v191;
        v391.size.width = v193;
        v391.size.height = v195;
        v197 = v196 - (v191 + CGRectGetHeight(v391));
      }

      else
      {
        v197 = v188;
      }

      v392.origin.x = v190;
      v392.origin.y = v191;
      v392.size.width = v193;
      v392.size.height = v195;
      v198 = CGRectGetHeight(v392);
      v393.origin.x = v190;
      v393.origin.y = v191;
      v393.size.width = v193;
      v393.size.height = v195;
      v195 = CGRectGetWidth(v393);
      v191 = 0.0;
      v193 = v198;
      v190 = v197;
      v159 = v345;
    }

    v199 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [v199 setFrame:{v190, v191, v193, v195}];

    if (![(CFXCaptureViewController *)self configuredForOrientation])
    {
      v200 = [(CFXCaptureViewController *)self reticleView];
      [v200 setFrame:{v190, v191, v193, v195}];

      if ([(CFXCaptureViewController *)self aspectRatioCrop]== 2)
      {
        v201 = 3;
      }

      else
      {
        v201 = 0;
      }

      [v186 viewportFrameForAspectRatio:v201 usingAppDrawer:1 accessoryAreaExpanded:0];
      v205 = v204;
      v207 = v206;
      if (v349 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v209 = v202;
        v210 = v203;
        if (a3 == 4)
        {
          v394.origin.x = v352;
          v394.origin.y = v159;
          v394.size.width = width;
          v394.size.height = v350;
          CGRectGetWidth(v394);
          v395.origin.x = v209;
          v395.origin.y = v205;
          v395.size.width = v210;
          v395.size.height = v207;
          CGRectGetHeight(v395);
        }

        v208 = v10;
        v396.origin.x = v209;
        v396.origin.y = v205;
        v396.size.width = v210;
        v396.size.height = v207;
        CGRectGetHeight(v396);
        v397.origin.x = v209;
        v397.origin.y = v205;
        v397.size.width = v210;
        v397.size.height = v207;
        v207 = CGRectGetWidth(v397);
        v205 = 0.0;
      }

      else
      {
        v208 = v10;
      }

      v211 = [(CFXCaptureViewController *)self bottomControlsContainer];
      [v211 setFrame:{0.0, v207 + v205, width, v350 - (v207 + v205)}];

      v212 = [(CFXCaptureViewController *)self dynamicShutterControl];
      [v186 frameForShutterControl:v212];
      v214 = v213;
      v216 = v215;
      v218 = v217;
      v220 = v219;

      v221 = [(CFXCaptureViewController *)self bottomControlsContainer];
      v222 = [(CFXCaptureViewController *)self view];
      [v221 convertRect:v222 fromView:{v214, v216, v218, v220}];
      v224 = v223;
      v226 = v225;
      v228 = v227;
      v230 = v229;

      v231 = [(CFXCaptureViewController *)self dynamicShutterControl];
      [v231 setFrame:{v224, v226, v228, v230}];

      v232 = [(CFXCaptureViewController *)self bottomControlsContainer];
      v233 = [(CFXCaptureViewController *)self dynamicShutterControl];
      [v232 insertSubview:v233 atIndex:0];

      v234 = [v27 effectButton];
      [v186 frameForBottomLeftControl:v234];
      v236 = v235;
      v238 = v237;
      v240 = v239;
      v242 = v241;

      v243 = [(CFXCaptureViewController *)self bottomControlsContainer];
      v244 = [(CFXCaptureViewController *)self view];
      [v243 convertRect:v244 fromView:{v236, v238, v240, v242}];
      v246 = v245;
      v248 = v247;
      v250 = v249;
      v252 = v251;

      v253 = [v27 effectButton];
      [v253 setFrame:{v246, v248, v250, v252}];

      v254 = [(CFXCaptureViewController *)self bottomControlsContainer];
      v255 = [v27 effectButton];
      [v254 addSubview:v255];

      v256 = [v27 flipButton];
      [v186 frameForBottomRightControl:v256];
      v258 = v257;
      v260 = v259;
      v262 = v261;
      v264 = v263;

      v265 = [(CFXCaptureViewController *)self bottomControlsContainer];
      v266 = [(CFXCaptureViewController *)self view];
      [v265 convertRect:v266 fromView:{v258, v260, v262, v264}];
      v268 = v267;
      v270 = v269;
      v272 = v271;
      v274 = v273;

      v275 = [v27 flipButton];
      [v275 setFrame:{v268, v270, v272, v274}];

      v276 = [(CFXCaptureViewController *)self bottomControlsContainer];
      v277 = [v27 flipButton];
      [v276 addSubview:v277];

      [v186 frameForControlStatusBar];
      v279 = v278;
      v281 = v280;
      v283 = v282;
      v285 = v284;
      v286 = [(CFXCaptureViewController *)self controlStatusBar];
      [v286 setFrame:{v279, v281, v283, v285}];

      if ([(CFXCaptureViewController *)self aspectRatioCrop]== 2)
      {
        v287 = [(CFXCaptureViewController *)self bottomControlsContainer];
        [v287 frame];
        [v351 setFrame:?];
      }

      [(CFXCaptureViewController *)self layoutZoomUI];
      v10 = v208;
      v66 = v351;
    }

    [v186 viewportFrameForAspectRatio:v187 usingAppDrawer:1 accessoryAreaExpanded:0];
    v289 = v288;
    v291 = v290;
    v293 = v292;
    v295 = v294;
    v363 = 0u;
    v364 = 0u;
    v361 = 0u;
    v362 = 0u;
    v359 = 0u;
    v360 = 0u;
    v296 = [(CFXCaptureViewController *)self elapsedTimeView];
    if (v186)
    {
      [v186 geometryForElapsedTimeView:v296 viewportFrame:a3 orientation:{v289, v291, v293, v295}];
    }

    else
    {
      v363 = 0u;
      v364 = 0u;
      v361 = 0u;
      v362 = 0u;
      v359 = 0u;
      v360 = 0u;
    }

    v297 = v359;
    v298 = v360;
    v299 = [(CFXCaptureViewController *)self elapsedTimeView];
    [v299 setBounds:{v297, v298}];

    v300 = v361;
    v301 = [(CFXCaptureViewController *)self elapsedTimeView];
    [v301 setCenter:v300];

    v353 = v362;
    v354 = v363;
    v355 = v364;
    v302 = [(CFXCaptureViewController *)self elapsedTimeView];
    v356 = v353;
    v357 = v354;
    v358 = v355;
    [v302 setTransform:&v356];

    v303 = [*(v10 + 1048) currentDevice];
    v304 = [v303 userInterfaceIdiom];

    if (!v304)
    {
      [v186 viewportFrameForAspectRatio:0 usingAppDrawer:1 accessoryAreaExpanded:0];
      MaxY = CGRectGetMaxY(v398);
      v306 = [(CFXCaptureViewController *)self view];
      [v306 frame];
      if (v349 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v311 = CGRectGetWidth(*&v307) - MaxY;

        v313 = [(CFXCaptureViewController *)self captureControlsContainerWidthConstraint];
      }

      else
      {
        v311 = CGRectGetHeight(*&v307) - MaxY;

        if ([(CFXCaptureViewController *)self dockIsMagnified])
        {
          [(CFXCaptureViewController *)self dockMagnifiedHeightDelta];
          v311 = v311 + v312;
        }

        v313 = [(CFXCaptureViewController *)self captureControlsContainerHeightConstraint];
      }

      v314 = v313;
      [v313 setConstant:v311];
    }
  }

  v315 = [(CFXCaptureViewController *)self liveCaptureContainer];
  [v315 frame];
  [(CFXCaptureViewController *)self setPresentationRect:?];

  [(CFXCaptureViewController *)self presentationRect];
  v317 = v316;
  v319 = v318;
  v321 = v320;
  v323 = v322;
  v324 = [(CFXCaptureViewController *)self presentationView];
  [v324 setFrame:{v317, v319, v321, v323}];

  [(CFXCaptureViewController *)self updateAnimojiTrackingReticleAndLabelLayout];
  [(CFXCaptureViewController *)self updateEffectEditorLayout];
  [(CFXCaptureViewController *)self updateFullScreenTextEditorLayout];
  v325 = [*(v10 + 1048) currentDevice];
  v326 = [v325 userInterfaceIdiom];

  if (!v326)
  {
    [(CFXCaptureViewController *)self setConfiguredForOrientation:1];
  }
}

- (void)applyRotationTransformForPortrait
{
  v3 = [(CFXCaptureViewController *)self parentViewController];
  v4 = +[JFXOrientationMonitor keyWindow];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v12;
  v14 = v10;
  v15 = v8;
  v42 = v6;
  if (v3)
  {
    v16 = [v3 view];
    [v16 bounds];
    v6 = v17;
    v15 = v18;
    v14 = v19;
    v13 = v20;
  }

  v21 = +[JFXOrientationMonitor interfaceOrientation];
  v45.origin.x = v6;
  v45.origin.y = v15;
  v45.size.width = v14;
  v45.size.height = v13;
  Width = CGRectGetWidth(v45);
  v46.origin.x = v6;
  v46.origin.y = v15;
  v46.size.width = v14;
  v46.size.height = v13;
  Height = CGRectGetHeight(v46);
  switch(v21)
  {
    case 1:
      v24 = 0.0;
      break;
    case 3:
      v24 = 1.57079633;
      break;
    case 4:
      v24 = -1.57079633;
      break;
    default:
      v24 = 3.14159265;
      if (v21 != 2)
      {
        v24 = 0.0;
      }

      break;
  }

  CGAffineTransformMakeRotation(&v44, -v24);
  v25 = [(CFXCaptureViewController *)self view];
  v43 = v44;
  [v25 setTransform:&v43];

  if (Width >= Height)
  {
    v26 = Height;
  }

  else
  {
    v26 = Width;
  }

  if (Width < Height)
  {
    Width = Height;
  }

  v27 = [(CFXCaptureViewController *)self view];
  [v27 setBounds:{0.0, 0.0, v26, Width}];

  if (v3)
  {
    v28 = [v3 view];
    [v28 bounds];
    [v3 jfxCenterAdjustedForOrientationForPortraitFrame:v21 relativeToParentFrame:0.0 withOrientation:{0.0, v26, Width, v29, v30, v31, v32}];
    v34 = v33;
    v36 = v35;
    v37 = [(CFXCaptureViewController *)self view];
    [v37 setCenter:{v34, v36}];
  }

  else
  {
    [(UIViewController *)self jfxCenterAdjustedForOrientationForPortraitFrame:v21 relativeToParentFrame:0.0 withOrientation:0.0, v26, Width, v42, v8, v10, v12];
    v39 = v38;
    v41 = v40;
    v28 = [(CFXCaptureViewController *)self view];
    [v28 setCenter:{v39, v41}];
  }
}

- (void)setAspectRatioCrop:(int64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = JFXLog_viewerUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromCFXAspectRatioCrop(a3);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_242A3B000, v5, OS_LOG_TYPE_DEFAULT, "aspectRatioCrop: %{public}@", &v7, 0xCu);
  }

  self->_aspectRatioCrop = a3;
}

- (void)setCaptureMode:(int64_t)a3
{
  self->_captureMode = a3;
  [(CFXCaptureViewController *)self loadViewIfNeeded];
  if ((CFXCaptureCapabilitiesIsCTMSupported() & 1) == 0)
  {
    v4 = isStreamingMode([(CFXCaptureViewController *)self captureMode]);
    v5 = [(CFXCaptureViewController *)self topBar];
    [v5 setHidden:v4];
  }
}

- (UIView)effectsPickerDrawer
{
  [(CFXCaptureViewController *)self loadViewIfNeeded];
  v3 = [(CFXCaptureViewController *)self cameraControls];
  v4 = [v3 effectsPickerDrawer];

  return v4;
}

- (void)setEffectsPickerDrawer:(id)a3
{
  v4 = a3;
  [(CFXCaptureViewController *)self loadViewIfNeeded];
  v5 = [(CFXCaptureViewController *)self cameraControls];
  [v5 setEffectsPickerDrawer:v4];
}

- (BOOL)livePlayerIsSaturated
{
  v2 = [(CFXCaptureViewController *)self cameraViewController];
  v3 = [v2 livePlayerIsSaturated];

  return v3;
}

- (void)willDropCameraFrame
{
  v2 = [(CFXCaptureViewController *)self cameraViewController];
  [v2 willDropCameraFrame];
}

- (void)setUseLocalCameraViewfinder:(BOOL)a3
{
  v3 = a3;
  [(CFXCaptureViewController *)self loadViewIfNeeded];
  v5 = [(CFXCaptureViewController *)self cameraViewController];
  [v5 setUseLocalCameraViewfinder:v3];
}

- (BOOL)useLocalCameraViewfinder
{
  [(CFXCaptureViewController *)self loadViewIfNeeded];
  v3 = [(CFXCaptureViewController *)self cameraViewController];
  v4 = [v3 useLocalCameraViewfinder];

  return v4;
}

- (double)userInterfaceAlpha
{
  v2 = [(CFXCaptureViewController *)self cameraControlsContainerView];
  [v2 alpha];
  v4 = v3;

  return v4;
}

- (void)setUserInterfaceAlpha:(double)a3
{
  v4 = [(CFXCaptureViewController *)self cameraControlsContainerView];
  [v4 setAlpha:a3];
}

- (int64_t)flashMode
{
  [(CFXCaptureViewController *)self loadViewIfNeeded];
  if (CFXCaptureCapabilitiesIsCTMSupported())
  {
    v3 = [(CFXCaptureViewController *)self controlStatusBar];
    v4 = [v3 flashIndicator];
    v5 = [v4 flashMode];
  }

  else
  {
    v6 = [(CFXCaptureViewController *)self flashButton];
    v7 = [v6 isHidden];

    if (v7)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v3 = [(CFXCaptureViewController *)self flashButton];
    v5 = [v3 flashMode];
  }

LABEL_7:

  return [(CFXCaptureViewController *)self CFX_captureFlashModeForCAMFlashMode:v5];
}

- (void)setFlashMode:(int64_t)a3
{
  [(CFXCaptureViewController *)self loadViewIfNeeded];
  v5 = [(CFXCaptureViewController *)self CFX_camFlashModeForCaptureFlashMode:a3];
  v6 = [(CFXCaptureViewController *)self flashButton];
  [v6 setFlashMode:v5];

  [(CFXCaptureViewController *)self flashModeDidChange];
}

- (CFXEffectComposition)composition
{
  v2 = [(CFXCaptureViewController *)self cameraViewController];
  v3 = [v2 composition];

  return v3;
}

- (void)toggleCTMFlashButton
{
  v3 = [(CFXCaptureViewController *)self controlStatusBar];
  v4 = [v3 flashIndicator];
  v5 = [v4 flashMode];

  if (v5 <= 2)
  {
    v6 = qword_242B5BF18[v5];
    v7 = [(CFXCaptureViewController *)self controlStatusBar];
    v8 = [v7 flashIndicator];
    [v8 setFlashMode:v6];

    [(CFXCaptureViewController *)self flashModeDidChange];
  }
}

- (void)setTorchModeForFlashMode:(int64_t)a3
{
  v3 = [(CFXCaptureViewController *)self CFX_captureTorchModeForCAMFlashMode:a3];
  v4 = +[JFXVideoCameraController sharedInstance];
  [v4 setCaptureTorchMode:v3 completion:0];
}

- (void)flashModeDidChange
{
  if ([(CFXCaptureViewController *)self captureMode]== 2)
  {
    if (CFXCaptureCapabilitiesIsCTMSupported())
    {
      v3 = [(CFXCaptureViewController *)self controlStatusBar];
      v4 = [v3 flashIndicator];
      v5 = [v4 flashMode];
    }

    else
    {
      v3 = [(CFXCaptureViewController *)self flashButton];
      v5 = [v3 flashMode];
    }

    [(CFXCaptureViewController *)self setTorchModeForFlashMode:v5];
  }
}

- (void)cameraDidStart
{
  if (![(CFXCaptureViewController *)self observingOrientationChanges])
  {
    [(CFXCaptureViewController *)self setObservingOrientationChanges:1];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel_JFX_orientationMonitorDeviceInterfaceOrientationNotification_ name:@"kJFXOrientationMonitorDeviceInterfaceOrientationNotification" object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel_JFX_orientationMonitorInterfaceOrientationNotification_ name:@"kJFXOrientationMonitorInterfaceOrientationNotification" object:0];
  }

  [(CFXCaptureViewController *)self configureCaptureControlsForOrientationWithAnimation:1];
  if ([(CFXCaptureViewController *)self captureMode]!= 1)
  {
    [(CFXCaptureViewController *)self CFX_setFrameAndRenderSizes];
    if (CFXCaptureCapabilitiesIsCTMSupported())
    {
      v5 = [(CFXCaptureViewController *)self dynamicShutterControl];
      [v5 setEnabled:1];
    }

    else
    {
      v6 = [(CFXCaptureViewController *)self delegate];
      v5 = [v6 cameraControlsViewControllerForCaptureViewController:self];

      [v5 setShutterButtonEnabled:1];
    }
  }

  v7 = [(CFXCaptureViewController *)self cameraViewController];
  [v7 startRenderingCameraFrames];
}

- (void)cameraDidStop
{
  if ([(CFXCaptureViewController *)self observingOrientationChanges])
  {
    [(CFXCaptureViewController *)self setObservingOrientationChanges:0];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self name:@"kJFXOrientationMonitorDeviceInterfaceOrientationNotification" object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self name:@"kJFXOrientationMonitorInterfaceOrientationNotification" object:0];
  }

  v5 = dispatch_semaphore_create(0);
  v6 = [(CFXCaptureViewController *)self cameraViewController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__CFXCaptureViewController_cameraDidStop__block_invoke;
  v8[3] = &unk_278D79D20;
  v9 = v5;
  v7 = v5;
  [v6 stopRenderingCameraFrames:v8];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)effectCompositionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(CFXCaptureViewController *)self delegate];
  [v5 captureViewController:self didChangeEffectComposition:v4];
}

- (void)CFX_addEffect:(id)a3 allowImmediateTextEditing:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(CFXCaptureViewController *)self removeEffectEditorAnimated:1];
  v7 = [v6 jtEffect];
  v8 = +[CFXMediaSettings sharedInstance];
  [v8 renderSize];
  [v7 setRenderSize:?];

  v9 = +[CFXMediaSettings sharedInstance];
  [v9 frameSize];
  [v7 setPlayableAspectRatio:{aspectRatioForSize(v10, v11)}];

  [v7 setPlayableAspectRatioPreservationMode:0];
  v12 = [v7 renderEffect];
  *buf = *kDefaultEffectPreviewAnimationRange;
  v28 = *&kDefaultEffectPreviewAnimationRange[16];
  v29 = *&kDefaultEffectPreviewAnimationRange[32];
  [v12 setEffectRange:buf];

  if (v4 && [JFXEffectEditingUtilities canEditTextForEffect:v7])
  {
    v13 = [v6 jtEffect];
    v14 = 1;
    [v13 setHidden:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = JFXLog_core();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = MEMORY[0x245D22400]();
    *buf = 134349056;
    *&buf[4] = v16;
    _os_log_impl(&dword_242A3B000, v15, OS_LOG_TYPE_DEFAULT, "Available memory: %{iec-bytes,public}zu", buf, 0xCu);
  }

  v17 = [(CFXCaptureViewController *)self cameraViewController];
  [v17 pauseRenderingCameraFrames];

  v18 = [(CFXCaptureViewController *)self cameraViewController];
  [v18 flushRenderer];

  v19 = [(CFXCaptureViewController *)self cameraViewController];
  v20 = [v19 composition];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __68__CFXCaptureViewController_CFX_addEffect_allowImmediateTextEditing___block_invoke;
  v23[3] = &unk_278D7C738;
  v23[4] = self;
  v24 = v7;
  v26 = v14;
  v25 = v6;
  v21 = v6;
  v22 = v7;
  [v20 addEffect:v21 completion:v23];
}

void __68__CFXCaptureViewController_CFX_addEffect_allowImmediateTextEditing___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cameraViewController];
  [v2 resumeRenderingCameraFrames];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __68__CFXCaptureViewController_CFX_addEffect_allowImmediateTextEditing___block_invoke_2;
  v14 = &unk_278D7C738;
  v3 = *(a1 + 40);
  v18 = *(a1 + 56);
  v4 = *(a1 + 32);
  v15 = v3;
  v16 = v4;
  v17 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], &v11);
  v5 = *(a1 + 32);
  v6 = [v5 composition];
  [v5 effectCompositionDidChange:v6];

  v7 = CFXLog_action();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) composition];
    v9 = [v8 jtEffects];
    v10 = [CFXActionLogging actionLogAsJSONForEvent:@"effect added" atLocation:@"live" withEffectStack:v9];
    *buf = 138543362;
    v20 = v10;
    _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

void __68__CFXCaptureViewController_CFX_addEffect_allowImmediateTextEditing___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) type] == 2)
  {
    v2 = *(a1 + 40);
    if (*(a1 + 56) == 1)
    {
      if (([v2 presentFullScreenTextEditorForEffect:*(a1 + 32) insertingEffect:1] & 1) == 0)
      {
        v3 = JFXLog_viewerUI();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_242A3B000, v3, OS_LOG_TYPE_DEFAULT, "Cannot display text editor on insert because its already open", buf, 2u);
        }

        v4 = [*(a1 + 40) cameraViewController];
        v5 = [v4 composition];
        [v5 removeEffect:*(a1 + 48) completion:0];
      }
    }

    else if (isStreamingMode([v2 captureMode]))
    {
      v6 = [*(a1 + 48) jtEffect];
      [*(a1 + 40) enableAnimationForOverlayEffect:v6];
    }
  }
}

- (void)addEffect:(id)a3 allowImmediateTextEditing:(BOOL)a4
{
  v4 = a4;
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = JFXLog_effects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 jtEffect];
    v9 = NSStringFromJFXEffectType([v8 type]);
    v10 = [v6 localizedTitle];
    *buf = 138543874;
    v38 = v9;
    v39 = 2114;
    v40 = v10;
    v41 = 1024;
    v42 = v4;
    _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "Adding effect - type: %{public}@, name: %{public}@, allowImmediateTextEditing: %d", buf, 0x1Cu);
  }

  v11 = [v6 jtEffect];
  v12 = [v11 type];

  if (v12 != 2)
  {
    v18 = [v6 jtEffect];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __64__CFXCaptureViewController_addEffect_allowImmediateTextEditing___block_invoke_2;
    v26[3] = &unk_278D7C788;
    v26[4] = self;
    v27 = v6;
    v28 = v4;
    v19 = v6;
    [v18 loadRenderEffectInBackgroundWithCompletionOnMainQueue:v26];

    goto LABEL_13;
  }

  v13 = 0x3FD6666666666666;
  if (![(CFXCaptureViewController *)self CFX_canApplyFaceTracking])
  {
    goto LABEL_9;
  }

  v14 = +[JFXVideoCameraController sharedInstance];
  v15 = [v14 mostRecentARMetadata];

  v16 = [v15 faceAnchor];

  if (!v16)
  {

LABEL_9:
    v17 = 0;
    v15 = 0;
    goto LABEL_10;
  }

  v17 = 1;
  v13 = 0x3FE399999999999ALL;
LABEL_10:
  v20 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v19 = [v20 objectForKey:@"CFX_CaptureEffectInsertionSize"];

  if (v19)
  {
    [v19 doubleValue];
    v13 = v21;
  }

  v22 = [v6 jtEffect];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __64__CFXCaptureViewController_addEffect_allowImmediateTextEditing___block_invoke;
  v29[3] = &unk_278D7C760;
  v34 = v13;
  v35 = v17;
  v30 = v22;
  v31 = v15;
  v32 = self;
  v33 = v6;
  v36 = v4;
  v23 = v6;
  v24 = v15;
  v25 = v22;
  [v25 loadRenderEffectInBackgroundWithCompletionOnMainQueue:v29];

LABEL_13:
}

uint64_t __64__CFXCaptureViewController_addEffect_allowImmediateTextEditing___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = +[JFXOrientationMonitor interfaceOrientation];
  v23 = *MEMORY[0x277CC08F0];
  v26 = *MEMORY[0x277CC08F0];
  v7 = *(MEMORY[0x277CC08F0] + 16);
  *&v27 = v7;
  [JFXEffectEditingUtilities nextNormalizedInsertionPointForOverlay:v4 scaleRelativeToCenterSquare:&v26 atTime:v3 applyTracking:v5 withARMetadata:0 transformAnimation:1 playableMediaContentMode:v2 playableInterfaceOrientation:v6];
  v9 = v8;
  v11 = v10;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  if (v16)
  {
    [v16 overlayTransformForLocalViewfinder];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
  }

  v17 = +[JFXOrientationMonitor interfaceOrientation];
  v18 = +[CFXMediaSettings sharedInstance];
  [v18 frameSize];
  v24 = v23;
  v25 = v7;
  LODWORD(v22) = 1;
  [JFXEffectEditingUtilities configureOverlayForInsertion:v14 atNormalizedPoint:&v24 atTime:1 isPositionRelativeToCenterSquare:1 isPositionRelativeToFace:v13 scaleRelativeToCenterSquare:0 rotationAngle:v9 applyTracking:v11 autoDetectTrackingType:v12 withARMetadata:0.0 previewViewCorrectionTransform:v15 transformAnimation:&v26 playableMediaContentMode:0 playableInterfaceOrientation:v22 playableAspectRatio:v17 playableAspectRatioPreservationMode:aspectRatioForSize(v19, v20), 0];

  return [*(a1 + 48) CFX_addEffect:*(a1 + 56) allowImmediateTextEditing:*(a1 + 73)];
}

- (void)addOverlayEffect:(id)a3 atNormalizedPlanePoint:(CGPoint)a4 scale:(double)a5 rotationAngle:(double)a6
{
  y = a4.y;
  x = a4.x;
  v45 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = JFXLog_effects();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v11 jtEffect];
    v14 = NSStringFromJFXEffectType([v13 type]);
    v15 = [v11 localizedTitle];
    v46.x = x;
    v46.y = y;
    v16 = NSStringFromCGPoint(v46);
    *buf = 138544386;
    v36 = v14;
    v37 = 2114;
    v38 = v15;
    v39 = 2114;
    v40 = v16;
    v41 = 2048;
    v42 = a5;
    v43 = 2048;
    v44 = a6;
    _os_log_impl(&dword_242A3B000, v12, OS_LOG_TYPE_DEFAULT, "Adding effect - type: %{public}@, name: %{public}@, point: %{public}@, scale: %f, rotationAngle: %f", buf, 0x34u);
  }

  if ([(CFXCaptureViewController *)self CFX_canApplyFaceTracking])
  {
    v17 = +[JFXVideoCameraController sharedInstance];
    v18 = [v17 mostRecentARMetadata];

    v19 = [v18 faceAnchor];
    v20 = v19 != 0;

    if (v19)
    {
      v19 = v18;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v21 = [v11 jtEffect];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __88__CFXCaptureViewController_addOverlayEffect_atNormalizedPlanePoint_scale_rotationAngle___block_invoke;
  v25[3] = &unk_278D7C7B0;
  v30 = x;
  v31 = y;
  v32 = a5;
  v33 = a6;
  v34 = v20;
  v26 = v21;
  v27 = v19;
  v28 = self;
  v29 = v11;
  v22 = v11;
  v23 = v19;
  v24 = v21;
  [v24 loadRenderEffectInBackgroundWithCompletionOnMainQueue:v25];
}

uint64_t __88__CFXCaptureViewController_addOverlayEffect_atNormalizedPlanePoint_scale_rotationAngle___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    [v7 overlayTransformForLocalViewfinder];
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  v8 = +[JFXOrientationMonitor interfaceOrientation];
  v9 = +[CFXMediaSettings sharedInstance];
  [v9 frameSize];
  v12 = aspectRatioForSize(v10, v11);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v17 = *MEMORY[0x277CC08F0];
  v18 = *(MEMORY[0x277CC08F0] + 16);
  LODWORD(v16) = 1;
  [JFXEffectEditingUtilities configureOverlayForInsertion:v5 atNormalizedPoint:&v17 atTime:0 isPositionRelativeToCenterSquare:0 isPositionRelativeToFace:v4 scaleRelativeToCenterSquare:0 rotationAngle:v13 applyTracking:v14 autoDetectTrackingType:v2 withARMetadata:v3 previewViewCorrectionTransform:v6 transformAnimation:v19 playableMediaContentMode:0 playableInterfaceOrientation:v16 playableAspectRatio:v8 playableAspectRatioPreservationMode:v12, 0];

  return [*(a1 + 48) CFX_addEffect:*(a1 + 56) allowImmediateTextEditing:1];
}

- (void)addOverlayEffect:(id)a3 atScreenLocation:(CGPoint)a4 atScreenSize:(CGSize)a5 rotationAngle:(double)a6
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  v73 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = JFXLog_effects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v12 jtEffect];
    v15 = NSStringFromJFXEffectType([v14 type]);
    v16 = [v12 localizedTitle];
    v74.x = x;
    v74.y = y;
    v17 = NSStringFromCGPoint(v74);
    v75.width = width;
    v75.height = height;
    v18 = NSStringFromCGSize(v75);
    *buf = 138544386;
    v64 = v15;
    v65 = 2114;
    v66 = v16;
    v67 = 2114;
    v68 = v17;
    v69 = 2114;
    v70 = v18;
    v71 = 2048;
    v72 = a6;
    _os_log_impl(&dword_242A3B000, v13, OS_LOG_TYPE_DEFAULT, "Adding effect - type: %{public}@, name: %{public}@, screenLocation: %{public}@, screenSize: %{public}@, rotationAngle: %f", buf, 0x34u);
  }

  v19 = [v12 jtEffect];
  v20 = [v19 type];

  if (v20 == 2)
  {
    v51 = a6;
    v21 = [(CFXCaptureViewController *)self cameraViewController];
    v22 = [v21 uncroppedCameraViewfinderPlaceholderView];

    [v22 frame];
    v24 = v23;
    v26 = v25;
    +[JFXMediaSettings renderSize];
    v28 = v27;
    v30 = v29;
    [v22 convertPoint:0 fromView:{x, y}];
    v33 = CGPointConvertToCoordinateSpace(2uLL, 0, v31, v32, v24, v26, v28, v30);
    [v22 convertSize:0 fromView:{width, height}];
    v36 = CGRectMakeWithSizeAndCenterPoint(v28 * (v34 / v24), v30 * (v35 / v26), v33);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = [v12 jtEffect];
    if ([(CFXCaptureViewController *)self CFX_canApplyFaceTracking])
    {
      v44 = +[JFXVideoCameraController sharedInstance];
      v45 = [v44 mostRecentARMetadata];

      v46 = [v45 faceAnchor];
      v47 = v46 != 0;

      v48 = v51;
      if (v46)
      {
        v46 = v45;
      }
    }

    else
    {
      v47 = 0;
      v46 = 0;
      v48 = v51;
    }

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __89__CFXCaptureViewController_addOverlayEffect_atScreenLocation_atScreenSize_rotationAngle___block_invoke;
    v52[3] = &unk_278D7C7D8;
    v57 = v36;
    v58 = v38;
    v59 = v40;
    v60 = v42;
    v61 = v48;
    v62 = v47;
    v53 = v43;
    v54 = v46;
    v55 = self;
    v56 = v12;
    v49 = v46;
    v50 = v43;
    [v50 loadRenderEffectInBackgroundWithCompletionOnMainQueue:v52];
  }
}

uint64_t __89__CFXCaptureViewController_addOverlayEffect_atScreenLocation_atScreenSize_rotationAngle___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  if (v6)
  {
    [v6 overlayTransformForLocalViewfinder];
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  v7 = +[JFXOrientationMonitor interfaceOrientation];
  v8 = +[CFXMediaSettings sharedInstance];
  [v8 frameSize];
  v11 = aspectRatioForSize(v9, v10);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v18 = *MEMORY[0x277CC08F0];
  v19 = *(MEMORY[0x277CC08F0] + 16);
  LODWORD(v17) = 1;
  [JFXEffectEditingUtilities configureOverlayForInsertion:v5 inRect:&v18 atTime:v3 rotationAngle:1 applyTracking:v4 autoDetectTrackingType:v20 withARMetadata:v12 previewViewCorrectionTransform:v13 transformAnimation:v14 playableMediaContentMode:v15 playableInterfaceOrientation:v2 playableAspectRatio:0 playableAspectRatioPreservationMode:v17, v7, v11, 0];

  return [*(a1 + 48) CFX_addEffect:*(a1 + 56) allowImmediateTextEditing:1];
}

- (void)removeAllEffectsOfType:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = JFXLog_effects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 identifier];
    *buf = 138543618;
    v13 = v8;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "Removing effects - type: %{public}@, animated: %d", buf, 0x12u);
  }

  [(CFXCaptureViewController *)self removeEffectEditorAnimated:v4];
  v9 = [v6 identifier];

  if (v9 == @"Animoji")
  {
    [(CFXCaptureViewController *)self removeAnimojiTrackingReticle];
  }

  v10 = [(CFXCaptureViewController *)self cameraViewController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__CFXCaptureViewController_removeAllEffectsOfType_animated___block_invoke;
  v11[3] = &unk_278D79D20;
  v11[4] = self;
  [v10 removeAllEffectsOfType:v6 completion:v11];
}

void __60__CFXCaptureViewController_removeAllEffectsOfType_animated___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 composition];
  [v2 effectCompositionDidChange:v3];

  v4 = CFXLog_action();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) composition];
    v6 = [v5 jtEffects];
    v7 = [CFXActionLogging actionLogAsJSONForEvent:@"effects removed" atLocation:@"live" withEffectStack:v6];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_242A3B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
  }
}

- (void)removeAllEffectsAnimated:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v5 = JFXLog_effects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = v3;
    _os_log_impl(&dword_242A3B000, v5, OS_LOG_TYPE_DEFAULT, "Removing all effects - animated: %d", buf, 8u);
  }

  [(CFXCaptureViewController *)self removeAnimojiTrackingReticle];
  [(CFXCaptureViewController *)self removeEffectEditorAnimated:v3];
  v6 = [(CFXCaptureViewController *)self cameraViewController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__CFXCaptureViewController_removeAllEffectsAnimated___block_invoke;
  v7[3] = &unk_278D79D20;
  v7[4] = self;
  [v6 removeAllEffects:v7];
}

void __53__CFXCaptureViewController_removeAllEffectsAnimated___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 composition];
  [v2 effectCompositionDidChange:v3];

  v4 = CFXLog_action();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) composition];
    v6 = [v5 jtEffects];
    v7 = [CFXActionLogging actionLogAsJSONForEvent:@"effects removed" atLocation:@"live" withEffectStack:v6];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_242A3B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
  }
}

- (void)removeEffectsForCameraSwitch
{
  v3 = JFXLog_effects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242A3B000, v3, OS_LOG_TYPE_DEFAULT, "Removing face-tracked effects", buf, 2u);
  }

  v4 = [CFXEffectType effectTypeWithIdentifier:@"Animoji"];
  [(CFXCaptureViewController *)self removeAllEffectsOfType:v4 animated:1];

  v5 = [(CFXCaptureViewController *)self composition];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__CFXCaptureViewController_removeEffectsForCameraSwitch__block_invoke;
  v6[3] = &unk_278D79D20;
  v6[4] = self;
  [v5 removeAllOverlayEffects:v6];
}

void __56__CFXCaptureViewController_removeEffectsForCameraSwitch__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 composition];
  [v2 effectCompositionDidChange:v3];

  v4 = CFXLog_action();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) composition];
    v6 = [v5 jtEffects];
    v7 = [CFXActionLogging actionLogAsJSONForEvent:@"effects removed" atLocation:@"live" withEffectStack:v6];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_242A3B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
  }
}

- (id)liveCaptureSnapshot
{
  v3 = [(CFXCaptureViewController *)self liveCaptureContainer];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CFXCaptureViewController *)self liveCaptureContainerContainer];
  v13 = [v12 resizableSnapshotViewFromRect:0 afterScreenUpdates:v5 withCapInsets:{v7, v9, v11, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v13;
}

- (void)showLiveCaptureSnapshotBlurred:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];

  if (!v9)
  {
    v10 = +[JFXOrientationMonitor interfaceOrientation];
    v11 = objc_alloc(MEMORY[0x277CF7EB8]);
    v12 = [(CFXCaptureViewController *)self liveCaptureContainer];
    v13 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [v13 frame];
    v15 = v14;
    v16 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [v16 frame];
    v18 = [v11 initWithView:v12 desiredAspectRatio:(v15 / v17)];
    [(CFXCaptureViewController *)self setLiveCaptureContainerSnapshot:v18];

    v19 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [v19 origin];
    v21 = v20;
    v23 = v22;
    v24 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [v24 bounds];
    Width = CGRectGetWidth(v38);
    v26 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [v26 bounds];
    Height = CGRectGetHeight(v39);
    v28 = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];
    v29 = v28;
    v30 = -v21;
    v31 = -v23;
    if (v10 == 1)
    {
      v30 = 0.0;
    }

    else
    {
      v31 = 0.0;
    }

    [v28 setFrame:{v30, v31, Width, Height}];

    v32 = [(CFXCaptureViewController *)self liveCaptureContainer];
    v33 = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];
    [v32 addSubview:v33];
  }

  v34 = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __79__CFXCaptureViewController_showLiveCaptureSnapshotBlurred_animated_completion___block_invoke;
  v36[3] = &unk_278D7ADD0;
  v37 = v8;
  v35 = v8;
  [v34 setBlurred:v6 animated:v5 style:0 withCompletionBlock:v36];
}

void __79__CFXCaptureViewController_showLiveCaptureSnapshotBlurred_animated_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    dispatch_async(MEMORY[0x277D85CD0], *(a1 + 32));
  }
}

- (void)saveLiveCaptureSnapshotForReview
{
  v3 = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];

  if (v3)
  {
    v4 = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];
    [CFXPreviewViewController setLiveCaptureSnapshotView:v4];
  }
}

- (void)removeLiveCaptureSnapshot
{
  v3 = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];

  if (v3)
  {
    v4 = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];
    [v4 removeFromSuperview];

    [(CFXCaptureViewController *)self setLiveCaptureContainerSnapshot:0];
  }
}

- (void)setLiveCapturePresentationFrame:(CGRect)a3 withContentRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v46 = *MEMORY[0x277D85DE8];
  v13 = +[JFXOrientationMonitor interfaceOrientation];
  v14 = [(CFXCaptureViewController *)self view];
  v34.origin.x = v11;
  v34.origin.y = v10;
  v34.size.width = v9;
  v34.size.height = v8;
  [v14 convertRect:0 fromView:{v11, v10, v9, v8}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v39 = 1.0 - width;
  v47.origin.x = v16;
  v47.origin.y = v18;
  v47.size.width = v20;
  v47.size.height = v22;
  v35 = width;
  v37 = CGRectGetWidth(v47) / width;
  v48.origin.x = v16;
  v48.origin.y = v18;
  v48.size.width = v20;
  v48.size.height = v22;
  v36 = height;
  v41 = v16 - v37 * x;
  rect.origin.x = x;
  v40 = CGRectGetHeight(v48) / height;
  v49.origin.x = v16;
  v49.origin.y = v18;
  v49.size.width = v20;
  v49.size.height = v22;
  v23 = CGRectGetWidth(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v24 = 1.0 - height;
  v50.size.width = v39;
  v50.size.height = v24;
  v25 = v23 + v37 * CGRectGetWidth(v50);
  v51.origin.x = v16;
  v51.origin.y = v18;
  v51.size.width = v20;
  v51.size.height = v22;
  v38 = CGRectGetHeight(v51);
  v52.origin.x = x;
  v33 = y;
  v52.origin.y = y;
  v52.size.width = v39;
  v52.size.height = v24;
  v26 = v18 - v40 * y;
  v27 = v38 + v40 * CGRectGetHeight(v52);
  [(CFXCaptureViewController *)self setExternalUncroppedPresentationRect:v41, v26, v25, v27];
  [(CFXCaptureViewController *)self setPresentationRect:v16, v18, v20, v22];
  v28 = JFXLog_viewerUI();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    switch(v13)
    {
      case 1:
        v29 = @"UIInterfaceOrientationPortrait";
        break;
      case 3:
        v29 = @"UIInterfaceOrientationLandscapeRight";
        break;
      case 4:
        v29 = @"UIInterfaceOrientationLandscapeLeft";
        break;
      case 2:
        v29 = @"UIInterfaceOrientationPortraitUpsideDown";
        break;
      default:
        v29 = 0;
        break;
    }

    v30 = NSStringFromCGRect(v34);
    v53.origin.x = rect.origin.x;
    v53.origin.y = v33;
    v53.size.width = v35;
    v53.size.height = v36;
    v31 = NSStringFromCGRect(v53);
    v54.origin.x = v41;
    v54.origin.y = v26;
    v54.size.width = v25;
    v54.size.height = v27;
    v32 = NSStringFromCGRect(v54);
    LODWORD(rect.origin.y) = 138413058;
    *(&rect.origin.y + 4) = v29;
    WORD2(rect.size.width) = 2112;
    *(&rect.size.width + 6) = v30;
    HIWORD(rect.size.height) = 2112;
    v43 = v31;
    v44 = 2112;
    v45 = v32;
    _os_log_impl(&dword_242A3B000, v28, OS_LOG_TYPE_DEFAULT, "New presentation rect specified - orientation: %@, presentationRect: %@, contentsRect: %@, uncroppedPresentationRect: %@", &rect.origin.y, 0x2Au);
  }

  [(CFXCaptureViewController *)self setCaptureContainerUncroppedFrameWasCalculatedWithContentRect:1];
  [(CFXCaptureViewController *)self CFX_applyAutoRotationCorrectionToEditorViews];
}

- (void)updateUIForDockMagnify:(BOOL)a3 dockHeightDelta:(double)a4
{
  [(CFXCaptureViewController *)self setDockIsMagnified:a3];
  [(CFXCaptureViewController *)self setDockMagnifiedHeightDelta:a4];

  [(CFXCaptureViewController *)self configureUIForOrientation];
}

- (void)updateUIForDevicePosition:(int64_t)a3
{
  if (a3 == 2)
  {
    if ([(CFXCaptureViewController *)self captureMode]!= 2)
    {
      v5 = [MEMORY[0x277CF7E78] capabilities];
      v6 = [v5 isFrontFlashSupported];
      goto LABEL_7;
    }

LABEL_5:
    v7 = 1;
    goto LABEL_8;
  }

  if (a3 != 1)
  {
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CF7E78] capabilities];
  v6 = [v5 isBackFlashSupported];
LABEL_7:
  v7 = v6 ^ 1u;

LABEL_8:
  v8 = [(CFXCaptureViewController *)self flashButton];
  [v8 setHidden:v7];

  v9 = [(CFXCaptureViewController *)self controlStatusBar];
  v10 = [v9 flashIndicator];
  [v10 setHidden:v7];

  if (!isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    [(CFXCaptureViewController *)self configureZoomControl];
  }

  v11 = +[CFXAnalyticsManager sharedInstance];
  [v11 stopTrackingTimeIntervalEventWithName:@"activefrontcameratime"];

  v12 = +[CFXAnalyticsManager sharedInstance];
  [v12 stopTrackingTimeIntervalEventWithName:@"activebackcameratime"];

  if (a3)
  {
    if (a3 == 1)
    {
      v13 = +[CFXAnalyticsManager sharedInstance];
      v15 = v13;
      v14 = @"activebackcameratime";
    }

    else
    {
      if (a3 != 2)
      {
        return;
      }

      v13 = +[CFXAnalyticsManager sharedInstance];
      v15 = v13;
      v14 = @"activefrontcameratime";
    }
  }

  else
  {
    v13 = +[CFXAnalyticsManager sharedInstance];
    v14 = @"activeexternalcameratime";
    v15 = v13;
  }

  [v13 startTrackingTimeIntervalEventWithName:v14];
}

- (CFXEffectBrowserContentPresenterViewController)effectBrowserContentPresenterViewController
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1 && !self->_effectBrowserContentPresenterViewController && [(CFXCaptureViewController *)self captureMode]!= 1)
  {
    v5 = objc_opt_new();
    effectBrowserContentPresenterViewController = self->_effectBrowserContentPresenterViewController;
    self->_effectBrowserContentPresenterViewController = v5;
  }

  v7 = self->_effectBrowserContentPresenterViewController;

  return v7;
}

- (void)configureWithControlsViewController:(id)a3
{
  v4 = [(CFXCaptureViewController *)self cameraViewController];
  [v4 setDelegate:self];

  v5 = [(CFXCaptureViewController *)self captureMode];
  v6 = [(CFXCaptureViewController *)self cameraViewController];
  [v6 setCaptureMode:v5];
}

- (void)setLiveCaptureViewController:(id)a3
{
  [(CFXCaptureViewController *)self setCameraViewController:a3];
  v4 = [(CFXCaptureViewController *)self cameraViewController];
  [v4 setDelegate:self];

  if (+[JFXAnimojiEffectRenderer isSupported])
  {
    v5 = [(CFXCaptureViewController *)self cameraViewController];
    [v5 setTrackingLossDelegate:self];
  }

  v6 = [(CFXCaptureViewController *)self captureMode];
  v7 = [(CFXCaptureViewController *)self cameraViewController];
  [v7 setCaptureMode:v6];
}

- (void)updateZoomUIVisibility
{
  v3 = [(CFXCaptureViewController *)self CFX_isZoomAllowed];
  v4 = [(CFXCaptureViewController *)self zoomSlider];
  [v4 setHidden:!v3];

  v5 = [(CFXCaptureViewController *)self zoomControl];
  [v5 setHidden:!v3];
}

- (void)updateZoomUIForCapturing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(CFXCaptureViewController *)self captureMode]== 2)
  {
    if (v4)
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }

    v7 = [(CFXCaptureViewController *)self zoomControl];
    [v7 setShouldShowZoomDial:0 animationDuration:v6];
  }

  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__CFXCaptureViewController_updateZoomUIForCapturing_animated___block_invoke;
    v8[3] = &unk_278D79D20;
    v8[4] = self;
    [JTAnimation performAnimation:v8 duration:0 completion:0.3];
  }
}

- (void)configureZoomControl
{
  v3 = [(CFXCaptureViewController *)self zoomControl];
  v37 = 0;
  v38 = 0;
  v36 = 0;
  [(CFXCaptureViewController *)self CFX_getCaptureDevice:&v38 captureDevicePosition:&v37 captureMode:&v36];
  v4 = [MEMORY[0x277CF7E78] capabilities];
  v5 = v37;
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = [(CFXCaptureViewController *)self CFX_isZoomAllowed];
  if (v7 == 1 && v5 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v4 shouldAllowCameraToggleForMode:v36 devicePosition:v37 videoConfiguration:0];
  }

  v11 = v38;
  v12 = v38 < 8;
  v13 = +[JFXVideoCameraController sharedInstance];
  [v13 zoomFactor];
  v15 = v14;

  if (!v8)
  {
    if (!v10)
    {
      goto LABEL_32;
    }

    v29 = 1.0;
    if (v38 <= 4)
    {
      if (v38 == 3)
      {
        v29 = 2.0;
      }

      else if (v38 == 4)
      {
        v30 = v36 == 6;
        v31 = 1.0;
        v29 = 2.0;
LABEL_29:
        if (!v30)
        {
          v29 = v31;
        }
      }

LABEL_31:
      [v3 configureForToggleOnlyWithZoomFactor:1.0 displayZoomFactor:v29];
      goto LABEL_32;
    }

    if (v38 != 6)
    {
      if (v38 == 5)
      {
        v29 = 0.5;
      }

      goto LABEL_31;
    }

    v30 = v36 == 6;
    v31 = 0.5;
    goto LABEL_29;
  }

  [v4 maximumZoomFactorForMode:v36 device:v38 videoConfiguration:0];
  v17 = v16;
  [MEMORY[0x277CF7ED8] zoomControlDisplayValueForZoomFactor:v36 mode:v38 device:0 videoConfiguration:1.0];
  v19 = v18;
  [MEMORY[0x277CF7ED8] zoomControlDisplayValueForZoomFactor:v36 mode:v38 device:0 videoConfiguration:v17];
  v21 = v20;
  if ((v12 & (0x80u >> v11)) != 0)
  {
    [v4 tripleCameraSwitchOverZoomFactorsForDevicePosition:v37];
    v23 = v22;
    v25 = v24;
    [MEMORY[0x277CF7ED8] zoomControlDisplayValueForZoomFactor:v36 mode:v38 device:0 videoConfiguration:?];
    v27 = v26;
    [MEMORY[0x277CF7ED8] zoomControlDisplayValueForZoomFactor:v36 mode:v38 device:0 videoConfiguration:v25];
    [v3 configureForTripleDeviceWithZoomFactor:v15 minimumZoomFactor:1.0 displayMinimumZoomFactor:v19 maximumZoomFactor:v17 displayMaximumZoomFactor:v21 switchOverZoomFactor1:v23 displaySwitchOverZoomFactor1:v27 switchOverZoomFactor2:v25 displaySwitchOverZoomFactor2:v28];
  }

  else
  {
    v32 = v12 & (0x40u >> v11);
    if ((v12 & (0x10u >> v11) | v32) == 1)
    {
      if (v32)
      {
        [v4 wideDualCameraSwitchOverZoomFactorForDevicePosition:v37];
      }

      else
      {
        [v4 dualCameraSwitchOverZoomFactorForDevicePosition:v37];
      }

      v34 = v33;
      [MEMORY[0x277CF7ED8] zoomControlDisplayValueForZoomFactor:v36 mode:v38 device:0 videoConfiguration:?];
      [v3 configureForDualDeviceWithZoomFactor:v15 minimumZoomFactor:1.0 displayMinimumZoomFactor:v19 maximumZoomFactor:v17 displayMaximumZoomFactor:v21 dualCameraSwitchOverZoomFactor:v34 displayDualCameraSwitchOverZoomFactor:v35];
    }

    else if (v5 == 1)
    {
      [v3 configureForZoomSymbolToggle];
      [v3 setZoomButtonSymbol:1 animated:0];
    }

    else
    {
      [v3 configureForSingleCameraPlusToggleWithZoomFactor:v15 minimumZoomFactor:1.0 displayMinimumZoomFactor:v19 maximumZoomFactor:v17 displayMaximumZoomFactor:v20];
    }
  }

LABEL_32:
}

- (BOOL)CFX_isZoomAllowed
{
  if (isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v10 = 0;
  [(CFXCaptureViewController *)self CFX_getCaptureDevice:&v12 captureDevicePosition:&v11 captureMode:&v10];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];
  v5 = v11;

  if (v4 == 1 && v5 == 1)
  {
    return 0;
  }

  v7 = [MEMORY[0x277CF7E78] capabilities];
  v8 = [v7 isZoomAllowedForMode:v10 device:v12 videoConfiguration:0];

  return v8;
}

- (void)CFX_getCaptureDevice:(int64_t *)a3 captureDevicePosition:(int64_t *)a4 captureMode:(int64_t *)a5
{
  v9 = +[JFXVideoCameraController sharedInstance];
  v10 = [v9 cameraPosition];

  v11 = +[JFXVideoCameraController sharedInstance];
  v12 = [v11 cameraType];

  [(CFXCaptureViewController *)self CFX_getCAMCaptureForPosition:v10 type:v12 captureDevice:a3 captureDevicePosition:a4 captureMode:a5];
}

- (void)CFX_getCAMCaptureForPosition:(int64_t)a3 type:(id)a4 captureDevice:(int64_t *)a5 captureDevicePosition:(int64_t *)a6 captureMode:(int64_t *)a7
{
  v17 = a4;
  if (CFX_getCAMCaptureForPosition_type_captureDevice_captureDevicePosition_captureMode__onceToken != -1)
  {
    [CFXCaptureViewController CFX_getCAMCaptureForPosition:type:captureDevice:captureDevicePosition:captureMode:];
  }

  v12 = a3 == 2;
  v13 = &CFX_getCAMCaptureForPosition_type_captureDevice_captureDevicePosition_captureMode__frontCameraLookup;
  if (a3 != 2)
  {
    v13 = &CFX_getCAMCaptureForPosition_type_captureDevice_captureDevicePosition_captureMode__backCameraLookup;
  }

  v14 = *v13;
  v15 = [v14 objectForKeyedSubscript:v17];
  v16 = [v15 integerValue];

  *a5 = v16;
  *a6 = v12;
  *a7 = [(CFXCaptureViewController *)self captureMode]!= 0;
}

void __110__CFXCaptureViewController_CFX_getCAMCaptureForPosition_type_captureDevice_captureDevicePosition_captureMode___block_invoke()
{
  v11[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CE5878];
  v10[0] = *MEMORY[0x277CE5868];
  v10[1] = v0;
  v11[0] = &unk_28556D488;
  v11[1] = &unk_28556D4A0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v2 = CFX_getCAMCaptureForPosition_type_captureDevice_captureDevicePosition_captureMode__frontCameraLookup;
  CFX_getCAMCaptureForPosition_type_captureDevice_captureDevicePosition_captureMode__frontCameraLookup = v1;

  v3 = *MEMORY[0x277CE5848];
  v8[0] = *MEMORY[0x277CE5860];
  v8[1] = v3;
  v9[0] = &unk_28556D4B8;
  v9[1] = &unk_28556D4D0;
  v4 = *MEMORY[0x277CE5870];
  v8[2] = *MEMORY[0x277CE5840];
  v8[3] = v4;
  v9[2] = &unk_28556D4E8;
  v9[3] = &unk_28556D500;
  v5 = *MEMORY[0x277CE5850];
  v8[4] = v0;
  v8[5] = v5;
  v9[4] = &unk_28556D518;
  v9[5] = &unk_28556D530;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:6];
  v7 = CFX_getCAMCaptureForPosition_type_captureDevice_captureDevicePosition_captureMode__backCameraLookup;
  CFX_getCAMCaptureForPosition_type_captureDevice_captureDevicePosition_captureMode__backCameraLookup = v6;
}

- (void)layoutZoomControlRelativeToBottomBarAndPreview:(id)a3
{
  v4 = a3;
  v5 = [(CFXCaptureViewController *)self delegate];
  v11 = [v5 cameraControlsViewControllerForCaptureViewController:self];

  v6 = MEMORY[0x277CF7ED8];
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 cam_initialLayoutStyle];
  v9 = [v11 bottomBar];
  v10 = [(CFXCaptureViewController *)self liveCaptureContainer];
  [v6 layoutZoomControl:v4 forLayoutStyle:v8 bottomBar:v9 previewView:v10];
}

- (void)layoutZoomSliderRelativeToBottomBarAndPreview
{
  v3 = [(CFXCaptureViewController *)self delegate];
  v98 = [v3 cameraControlsViewControllerForCaptureViewController:self];

  v4 = [v98 bottomBar];
  v5 = [(CFXCaptureViewController *)self zoomSlider];
  v6 = [v5 superview];

  v7 = [v4 backgroundStyle];
  [v4 layoutIfNeeded];
  v8 = [v4 shutterButton];
  [v8 frame];
  [v8 alignmentRectForFrame:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v8 superview];
  [v17 convertRect:v6 toView:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  if (CFXCaptureCapabilitiesIsCTMSupported())
  {
    v26 = [MEMORY[0x277CF7E78] capabilities];
    v27 = [v26 zoomControlSupported];

    if ((v27 & 1) == 0)
    {
      v28 = [(CFXCaptureViewController *)self dynamicShutterControl];
      v29 = [v28 superview];
      v30 = [(CFXCaptureViewController *)self dynamicShutterControl];
      [v30 frame];
      [v29 convertRect:v6 toView:?];
      v19 = v31;
      v21 = v32;
      v23 = v33;
      v25 = v34;
    }
  }

  v93 = v23;
  [v4 bounds];
  [v4 convertRect:v6 toView:?];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = [MEMORY[0x277D75418] currentDevice];
  v92 = v25;
  v44 = v21;
  if (![v43 userInterfaceIdiom])
  {
    v46 = [MEMORY[0x277D759A0] mainScreen];
    [v46 bounds];
    v45 = v19;
    if (v47 == 568)
    {
    }

    else
    {
      v48 = [MEMORY[0x277D759A0] mainScreen];
      [v48 bounds];
      v50 = v49;

      if (v50 != 568)
      {
        goto LABEL_10;
      }
    }

    v36 = 0.0;
    *&v42 = 141.0;
    *&v40 = 320.0;
    *&v38 = 427.0;
    goto LABEL_10;
  }

  v45 = v19;

LABEL_10:
  v94 = *&v38;
  v95 = *&v40;
  v96 = *&v42;
  v97 = v36;
  v51 = [(CFXCaptureViewController *)self liveCaptureContainer];
  v52 = [(CFXCaptureViewController *)self liveCaptureContainer];
  [v52 bounds];
  [v51 convertRect:v6 toView:?];
  v90 = v54;
  v91 = v53;
  v89 = v55;
  v57 = v56;

  v58 = [(CFXCaptureViewController *)self view];
  [v58 bounds];
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;

  v100.origin.x = v60;
  v100.origin.y = v62;
  v100.size.width = v64;
  v100.size.height = v66;
  Width = CGRectGetWidth(v100);
  v101.origin.x = v60;
  v101.origin.y = v62;
  v101.size.width = v64;
  v101.size.height = v66;
  if (Width > CGRectGetHeight(v101))
  {
    v68 = [MEMORY[0x277D75418] currentDevice];
    v69 = [v68 userInterfaceIdiom];

    if (!v69)
    {
      v102.origin.x = v60;
      v102.origin.y = v62;
      v102.size.width = v64;
      v102.size.height = v66;
      Height = CGRectGetHeight(v102);
      v103.origin.x = v60;
      v103.origin.y = v62;
      v103.size.width = v64;
      v103.size.height = v66;
      v66 = CGRectGetWidth(v103);
      v64 = Height;
    }
  }

  [v6 frame];
  v71 = CGRectGetWidth(v104);
  [v6 frame];
  if (v71 <= CGRectGetHeight(v105))
  {
    v73 = v45;
    goto LABEL_17;
  }

  v72 = [MEMORY[0x277D75418] currentDevice];
  v73 = v45;
  if ([v72 userInterfaceIdiom])
  {

LABEL_17:
    v74 = v44;
    v75 = v93;
    goto LABEL_18;
  }

  v79 = [MEMORY[0x277D75418] currentDevice];
  v74 = v44;
  if ([v79 userInterfaceIdiom])
  {

    v75 = v93;
LABEL_23:
    [v4 frame];
    v96 = v81;
    v97 = v80;
    v94 = v82;
    v95 = v83;
    goto LABEL_18;
  }

  v84 = [MEMORY[0x277D759A0] mainScreen];
  [v84 bounds];
  v75 = v93;
  if (v85 == 568)
  {
  }

  else
  {
    v86 = [MEMORY[0x277D759A0] mainScreen];
    [v86 bounds];
    v88 = v87;

    if (v88 != 568)
    {
      goto LABEL_23;
    }
  }

LABEL_18:
  v76 = MEMORY[0x277CF7EE8];
  v77 = [(CFXCaptureViewController *)self zoomSlider];
  v78 = [MEMORY[0x277D75418] currentDevice];
  [v76 layoutZoomSlider:v77 forLayoutStyle:objc_msgSend(v78 bottomBarAlignmentRect:"cam_initialLayoutStyle") bottomBarTransparent:v7 == 1 shutterButtonAlignmentRect:v97 previewViewAlignmentRect:v94 viewfinderViewAlignmentRect:{v95, v96, v73, v74, v75, v92, v91, v90, v89, v57, *&v60, *&v62, *&v64, *&v66}];
}

- (void)layoutZoomControlForCTM
{
  v3 = [(CFXCaptureViewController *)self zoomControl];
  v39 = [v3 superview];

  v4 = [(CFXCaptureViewController *)self delegate];
  v5 = [v4 cameraControlsViewControllerForCaptureViewController:self];
  v6 = [v5 bottomBar];

  [v6 bounds];
  [v6 convertRect:v39 toView:?];
  v37 = v8;
  v38 = v7;
  v35 = v10;
  v36 = v9;
  v11 = [(CFXCaptureViewController *)self dynamicShutterControl];
  v12 = [v11 superview];
  v13 = [(CFXCaptureViewController *)self dynamicShutterControl];
  [v13 frame];
  [v12 convertRect:v39 toView:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(CFXCaptureViewController *)self liveCaptureContainer];
  v23 = [(CFXCaptureViewController *)self liveCaptureContainer];
  [v23 bounds];
  [v22 convertRect:v39 toView:?];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = MEMORY[0x277CF7ED8];
  v33 = [(CFXCaptureViewController *)self zoomControl];
  v34 = [MEMORY[0x277D75418] currentDevice];
  [v32 layoutZoomControl:v33 forLayoutStyle:objc_msgSend(v34 bottomBarAlignmentRect:"cam_initialLayoutStyle") bottomBarTransparent:0 shutterButtonAlignmentRect:v38 previewViewAlignmentRect:{v37, v36, v35, v15, v17, v19, v21, v25, v27, v29, v31}];
}

- (void)layoutZoomUI
{
  v3 = [MEMORY[0x277CF7E78] capabilities];
  v4 = [v3 isBackDualSupported];
  v5 = [v3 zoomControlSupported];
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (!v7)
  {
    v14 = +[JFXOrientationMonitor keyWindow];
    [v14 bounds];

    +[JFXOrientationMonitor interfaceOrientation];
    IsCTMSupported = CFXCaptureCapabilitiesIsCTMSupported();
    if ((v4 | IsCTMSupported))
    {
      v16 = IsCTMSupported;
      [(CFXCaptureViewController *)self zoomControlFrame];
      v57.origin.x = v17;
      v57.origin.y = v18;
      v57.size.width = v19;
      v57.size.height = v20;
      if (CGRectEqualToRect(*MEMORY[0x277CBF3A0], v57))
      {
        if (v16)
        {
          if (v5)
          {
            [(CFXCaptureViewController *)self layoutZoomControlForCTM];
          }

          else
          {
            [(CFXCaptureViewController *)self layoutZoomSliderRelativeToBottomBarAndPreview];
          }
        }

        else
        {
          v41 = [(CFXCaptureViewController *)self zoomControl];
          [(CFXCaptureViewController *)self layoutZoomControlRelativeToBottomBarAndPreview:v41];
        }

        v25 = [(CFXCaptureViewController *)self zoomControl];
        [v25 frame];
        [(CFXCaptureViewController *)self setZoomControlFrame:?];
        goto LABEL_19;
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v26 = MEMORY[0x277D3D080];
      [(CFXCaptureViewController *)self zoomControlFrame];
      [v26 orientedGeometryForFrame:1 inBounds:? orientation:?];
      v48 = v54;
      v49 = v55;
      v50 = v56;
      v27 = [(CFXCaptureViewController *)self zoomControl];
      v45 = v48;
      v46 = v49;
      v47 = v50;
      [v27 setTransform:&v45];

      v29 = *(&v53 + 1);
      v28 = *&v53;
      v30 = [(CFXCaptureViewController *)self zoomControl];
      [v30 setCenter:{v28, v29}];

      v32 = *(&v51 + 1);
      v31 = *&v51;
      v34 = *(&v52 + 1);
      v33 = *&v52;
      v35 = [(CFXCaptureViewController *)self zoomControl];
    }

    else
    {
      [(CFXCaptureViewController *)self zoomSliderFrame];
      v58.origin.x = v21;
      v58.origin.y = v22;
      v58.size.width = v23;
      v58.size.height = v24;
      if (CGRectEqualToRect(*MEMORY[0x277CBF3A0], v58))
      {
        [(CFXCaptureViewController *)self layoutZoomSliderRelativeToBottomBarAndPreview];
        v25 = [(CFXCaptureViewController *)self zoomSlider];
        [v25 frame];
        [(CFXCaptureViewController *)self setZoomSliderFrame:?];
LABEL_19:

        goto LABEL_20;
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v36 = MEMORY[0x277D3D080];
      [(CFXCaptureViewController *)self zoomSliderFrame];
      [v36 orientedGeometryForFrame:1 inBounds:? orientation:?];
      v42 = v54;
      v43 = v55;
      v44 = v56;
      v37 = [(CFXCaptureViewController *)self zoomSlider];
      v45 = v42;
      v46 = v43;
      v47 = v44;
      [v37 setTransform:&v45];

      v39 = *(&v53 + 1);
      v38 = *&v53;
      v40 = [(CFXCaptureViewController *)self zoomSlider];
      [v40 setCenter:{v38, v39}];

      v32 = *(&v51 + 1);
      v31 = *&v51;
      v34 = *(&v52 + 1);
      v33 = *&v52;
      v35 = [(CFXCaptureViewController *)self zoomSlider];
    }

    v12 = v35;
    [v35 setBounds:{v31, v32, v33, v34}];
    goto LABEL_15;
  }

  if (v5)
  {
    v8 = [(CFXCaptureViewController *)self view];
    [v8 bounds];
    v10 = v9 * 0.5;

    v11 = MEMORY[0x277CF7ED8];
    v12 = [(CFXCaptureViewController *)self zoomControl];
    v13 = [MEMORY[0x277D75418] currentDevice];
    [v11 layoutZoomControl:v12 layoutSide:1 forLayoutStyle:objc_msgSend(v13 width:"cam_initialLayoutStyle") marginForZoomButtonFromEdge:375.0 marginForZoomDialFromEdge:20.5 zoomDialContentMaskingHeight:0.0 centerOfZoomControlInContainerView:{0.0, -82.5, v10}];

LABEL_15:
    goto LABEL_20;
  }

  [(CFXCaptureViewController *)self layoutZoomSliderRelativeToBottomBarAndPreview];
LABEL_20:
}

- (void)handlePinchGestureRecognizer:(id)a3
{
  v11 = a3;
  if (!isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    [(CFXCaptureViewController *)self CFX_handleZoomPinchGestureRecognizer:v11];
  }

  v4 = [(CFXCaptureViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CFXCaptureViewController *)self delegate];
    v7 = [v11 state];
    [v11 scale];
    v9 = v8;
    [v11 velocity];
    [v6 captureViewController:self presentationRectWasPinchedWithState:v7 scale:v9 velocity:v10];
  }
}

- (double)CFX_maxZoomForCamera
{
  v7 = 0;
  v8 = 1;
  v6 = 0;
  [(CFXCaptureViewController *)self CFX_getCaptureDevice:&v8 captureDevicePosition:&v7 captureMode:&v6];
  v2 = [MEMORY[0x277CF7E78] capabilities];
  [v2 maximumZoomFactorForMode:v6 device:v8 videoConfiguration:0];
  v4 = v3;

  return v4;
}

- (void)zoomSliderValueDidChange:(id)a3 forEvent:(id)a4
{
  v10 = a3;
  if (([v10 isAutozooming] & 1) == 0)
  {
    [v10 value];
    v6 = v5;
    [(CFXCaptureViewController *)self CFX_maxZoomForCamera];
    v8 = pow(v7, v6);
    v9 = +[JFXVideoCameraController sharedInstance];
    [v9 rampToZoom:v8 duration:0.25];
  }
}

- (void)zoomSliderDidBeginAutozooming:(id)a3
{
  v4 = 1.0;
  if (([a3 isMinimumAutozooming] & 1) == 0)
  {
    [(CFXCaptureViewController *)self CFX_maxZoomForCamera];
    *&v5 = v5;
    v4 = *&v5;
  }

  v6 = [(CFXCaptureViewController *)self isRecording];
  v7 = +[JFXVideoCameraController sharedInstance];
  v9 = v7;
  v8 = 0.75;
  if (!v6)
  {
    v8 = 1.5;
  }

  [v7 rampToZoom:v4 rate:v8];
}

- (void)zoomSliderDidEndAutozooming:(id)a3
{
  v4 = +[JFXVideoCameraController sharedInstance];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__CFXCaptureViewController_zoomSliderDidEndAutozooming___block_invoke;
  v5[3] = &unk_278D7C800;
  v5[4] = self;
  [v4 stopRampToZoom:v5];
}

- (void)CFX_setZoomSliderFromZoomFactor:(double)a3
{
  [(CFXCaptureViewController *)self CFX_maxZoomForCamera];
  v6 = v5;
  v7 = log(a3);
  *&v7 = v7 / log(v6);
  v9 = [(CFXCaptureViewController *)self zoomSlider];
  LODWORD(v8) = LODWORD(v7);
  [v9 setValue:v8];
}

- (void)zoomControl:(id)a3 didChangeZoomFactor:(double)a4 interactionType:(int64_t)a5
{
  v9 = JFXLog_DebugCapture();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CFXCaptureViewController zoomControl:a2 didChangeZoomFactor:v9 interactionType:a4];
  }

  if (a5 == 1)
  {
    v17 = 0;
    v15 = 0;
    v16 = 0;
    [(CFXCaptureViewController *)self CFX_getCaptureDevice:&v17 captureDevicePosition:&v16 captureMode:&v15];
    v12 = ((v17 & 0xFFFFFFFFFFFFFFFDLL) == 5 || v17 == 6) && a4 == 1.0;
    v13 = 0.1;
    v14[1] = 3221225472;
    v14[0] = MEMORY[0x277D85DD0];
    v14[2] = __76__CFXCaptureViewController_zoomControl_didChangeZoomFactor_interactionType___block_invoke;
    v14[3] = &unk_278D7B8F0;
    if (v12)
    {
      v13 = 0.2;
    }

    v14[4] = self;
    *&v14[5] = a4;
    *&v14[6] = v13;
    [JTAnimation performAnimation:v14 duration:0 completion:0.15];
  }

  else if (!a5)
  {
    v10 = +[JFXVideoCameraController sharedInstance];
    [v10 rampToZoom:a4 duration:0.25];
  }
}

void __76__CFXCaptureViewController_zoomControl_didChangeZoomFactor_interactionType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutZoomUI];
  v2 = +[JFXVideoCameraController sharedInstance];
  [v2 rampToZoom:*(a1 + 40) duration:*(a1 + 48)];
}

- (BOOL)canToggleBetweenZoomFactorsForZoomControl:(id)a3
{
  v6 = 0;
  v7 = 1;
  v5 = 0;
  [(CFXCaptureViewController *)self CFX_getCaptureDevice:&v7 captureDevicePosition:&v6 captureMode:&v5];
  result = [(CFXCaptureViewController *)self CFX_isZoomAllowed];
  if (v7 != 9)
  {
    return 0;
  }

  return result;
}

- (void)toggleBetweenZoomFactorsForZoomControl:(id)a3
{
  v4 = a3;
  if (![(CFXCaptureViewController *)self cameraIsFlipping])
  {
    [(CFXCaptureViewController *)self setCameraIsFlipping:1];
    v10 = 0;
    v11 = 0;
    v9 = 0;
    [(CFXCaptureViewController *)self CFX_getCaptureDevice:&v11 captureDevicePosition:&v10 captureMode:&v9];
    v5 = [v4 zoomButtonSymbol];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__CFXCaptureViewController_toggleBetweenZoomFactorsForZoomControl___block_invoke;
    v6[3] = &unk_278D7C118;
    v8 = v5 == 0;
    v6[4] = self;
    v7 = v4;
    [(CFXCaptureViewController *)self showLiveCaptureSnapshotBlurred:1 animated:1 completion:v6];
  }
}

void __67__CFXCaptureViewController_toggleBetweenZoomFactorsForZoomControl___block_invoke(uint64_t a1)
{
  v2 = +[JFXVideoCameraController sharedInstance];
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__CFXCaptureViewController_toggleBetweenZoomFactorsForZoomControl___block_invoke_2;
  v5[3] = &unk_278D7C118;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v7 = v3;
  v6 = v4;
  [v2 setFFCZoom:v3 completion:v5];
}

void __67__CFXCaptureViewController_toggleBetweenZoomFactorsForZoomControl___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cameraViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__CFXCaptureViewController_toggleBetweenZoomFactorsForZoomControl___block_invoke_3;
  v5[3] = &unk_278D7C118;
  v8 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 executeAfterNextFrameIsRendered:v5];
}

uint64_t __67__CFXCaptureViewController_toggleBetweenZoomFactorsForZoomControl___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setZoomButtonSymbol:*(a1 + 48) animated:1];
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__CFXCaptureViewController_toggleBetweenZoomFactorsForZoomControl___block_invoke_4;
  v4[3] = &unk_278D79D20;
  v4[4] = v2;
  return [v2 showLiveCaptureSnapshotBlurred:0 animated:1 completion:v4];
}

uint64_t __67__CFXCaptureViewController_toggleBetweenZoomFactorsForZoomControl___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) removeLiveCaptureSnapshot];
  v2 = *(a1 + 32);

  return [v2 setCameraIsFlipping:0];
}

- (void)cameraControlsViewControllerEffectsButtonWasTapped:(id)a3
{
  v4 = [(CFXCaptureViewController *)self delegate];
  [v4 captureViewControllerEffectsButtonWasTapped:self];
}

- (void)cameraControlsViewControllerSwitchCameraButtonWasTapped:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  if (![(CFXCaptureViewController *)self cameraIsFlipping])
  {
    [(CFXCaptureViewController *)self setCameraIsFlipping:1];
    v4 = [(CFXCaptureViewController *)self zoomControl];
    [v4 setHidden:1];

    v5 = [(CFXCaptureViewController *)self zoomSlider];
    [v5 setHidden:1];

    [(CFXCaptureViewController *)self removeEffectEditorAnimated:0];
    v6 = [CFXViewfinderFlipTransition alloc];
    v7 = [(CFXCaptureViewController *)self cameraViewController];
    v8 = [v7 containerView];
    v9 = [(CFXViewfinderFlipTransition *)v6 initWithViewfinderView:v8];
    [(CFXCaptureViewController *)self setViewfinderFlipTransition:v9];

    v10 = +[JFXVideoCameraController sharedInstance];
    v11 = [v10 cameraPosition];

    v12 = v11 == 2;
    if (v11 == 2)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = JFXLog_viewerUI();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = v11;
      _os_log_impl(&dword_242A3B000, v14, OS_LOG_TYPE_DEFAULT, "Starting switch camera transition from: %ld", buf, 0xCu);
    }

    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    v16 = [(CFXCaptureViewController *)self viewfinderFlipTransition];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __84__CFXCaptureViewController_cameraControlsViewControllerSwitchCameraButtonWasTapped___block_invoke;
    v27[3] = &unk_278D79D20;
    v17 = v15;
    v28 = v17;
    [v16 performFlipTransitionWithDirection:v12 completionHandler:v27];

    v18 = [(CFXCaptureViewController *)self cameraViewController];
    [v18 stopRenderingCameraFrames];

    v19 = +[JFXOrientationMonitor deviceInterfaceOrientation];
    dispatch_group_enter(v17);
    v20 = +[JFXVideoCameraController sharedInstance];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __84__CFXCaptureViewController_cameraControlsViewControllerSwitchCameraButtonWasTapped___block_invoke_2;
    v26[3] = &unk_278D7B988;
    v26[4] = self;
    v26[5] = v13;
    v26[6] = v19;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __84__CFXCaptureViewController_cameraControlsViewControllerSwitchCameraButtonWasTapped___block_invoke_3;
    v23[3] = &unk_278D7C828;
    v24 = v17;
    v25 = v13;
    v23[4] = self;
    v21 = v17;
    [v20 switchCameraToPosition:v13 applyFFCZoom:1 configureLockedCamera:v26 completion:v23];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__CFXCaptureViewController_cameraControlsViewControllerSwitchCameraButtonWasTapped___block_invoke_4;
    block[3] = &unk_278D7A118;
    block[4] = self;
    block[5] = v13;
    dispatch_group_notify(v21, MEMORY[0x277D85CD0], block);
  }
}

void __84__CFXCaptureViewController_cameraControlsViewControllerSwitchCameraButtonWasTapped___block_invoke_2(void *a1, void *a2)
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v5 deviceType];
  [v3 CFX_getCAMCaptureForPosition:v4 type:v6 captureDevice:&v12 captureDevicePosition:&v11 captureMode:&v10];

  v7 = [MEMORY[0x277CF7E78] capabilities];
  [v7 defaultZoomFactorForMode:v10 device:v12 videoConfiguration:0 captureOrientation:a1[6]];
  v9 = v8;

  [v5 setVideoZoomFactor:v9];
}

void __84__CFXCaptureViewController_cameraControlsViewControllerSwitchCameraButtonWasTapped___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeEffectsForCameraSwitch];
  v2 = [*(a1 + 32) delegate];
  [v2 captureViewController:*(a1 + 32) switchedToCameraPosition:*(a1 + 48)];

  v3 = [*(a1 + 32) cameraViewController];
  [v3 startRenderingCameraFrames];

  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

void __84__CFXCaptureViewController_cameraControlsViewControllerSwitchCameraButtonWasTapped___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) cameraViewController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __84__CFXCaptureViewController_cameraControlsViewControllerSwitchCameraButtonWasTapped___block_invoke_5;
  v4[3] = &unk_278D7A118;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v4[5] = v3;
  [v2 executeAfterNextFrameIsRendered:v4];
}

void __84__CFXCaptureViewController_cameraControlsViewControllerSwitchCameraButtonWasTapped___block_invoke_5(uint64_t a1)
{
  v2 = +[JFXVideoCameraController sharedInstance];
  [v2 zoomFactor];
  v4 = v3;

  v5 = [*(a1 + 32) zoomControl];
  [v5 setZoomFactor:v4];

  [*(a1 + 32) updateUIForDevicePosition:*(a1 + 40)];
  v6 = [*(a1 + 32) viewfinderFlipTransition];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__CFXCaptureViewController_cameraControlsViewControllerSwitchCameraButtonWasTapped___block_invoke_6;
  v8[3] = &unk_278D7A118;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v8[5] = v7;
  [v6 completeTransitionToLivePreviewWithCompletionHandler:v8];
}

uint64_t __84__CFXCaptureViewController_cameraControlsViewControllerSwitchCameraButtonWasTapped___block_invoke_6(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = JFXLog_viewerUI();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v10 = 134217984;
    v11 = v3;
    _os_log_impl(&dword_242A3B000, v2, OS_LOG_TYPE_DEFAULT, "Finished switch camera transition to: %ld", &v10, 0xCu);
  }

  v4 = CFXLog_action();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) composition];
    v6 = [v5 jtEffects];
    v7 = [CFXActionLogging actionLogAsJSONForEvent:@"camera flipped" atLocation:@"live" withEffectStack:v6];
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_242A3B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v10, 0xCu);
  }

  [*(a1 + 32) updateZoomUIVisibility];
  v8 = [*(a1 + 32) delegate];
  [v8 captureViewControllerCameraFlipButtonWasTapped:*(a1 + 32)];

  return [*(a1 + 32) setCameraIsFlipping:0];
}

- (void)insertCamBottomBar:(id)a3
{
  v4 = a3;
  v6 = [(CFXCaptureViewController *)self view];
  v5 = [(CFXCaptureViewController *)self topBar];
  [v6 insertSubview:v4 above:v5];
}

- (CGRect)bottomBarCTMControlsFrameForWindowOrientation:(int64_t)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if ((a3 - 3) > 1)
  {
    v9 = a4.size.width;
  }

  else
  {
    v9 = CGRectGetHeight(a4);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    height = CGRectGetWidth(v21);
    x = 0.0;
    y = 0.0;
  }

  v10 = objc_alloc(MEMORY[0x277CF7EB0]);
  v11 = [(CFXCaptureViewController *)self dynamicShutterControl];
  [v11 intrinsicContentSize];
  v14 = [v10 initWithReferenceBounds:x shutterIntrinsicSize:{y, v9, height, v12, v13}];

  [v14 viewportFrameForAspectRatio:0 usingAppDrawer:1 accessoryAreaExpanded:0];
  MaxY = CGRectGetMaxY(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = v9;
  v23.size.height = height;
  v16 = CGRectGetWidth(v23);

  v17 = 0.0;
  v18 = MaxY;
  v19 = v16;
  v20 = height - MaxY;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)liveCaptureViewController:(id)a3 didRenderFrame:(id)a4
{
  v5 = a4;
  v6 = [(CFXCaptureViewController *)self delegate];
  [v6 captureViewController:self didRenderFrame:v5];

  if ([(CFXCaptureViewController *)self CFX_isRenderingAnimatedOverlaysThatDontLoop])
  {
    v7 = objc_opt_new();
    v8 = [(CFXCaptureViewController *)self runOnceAnimatedOverlays];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __69__CFXCaptureViewController_liveCaptureViewController_didRenderFrame___block_invoke;
    v14 = &unk_278D7C850;
    v15 = v5;
    v16 = v7;
    v9 = v7;
    [v8 enumerateObjectsUsingBlock:&v11];

    [JFXEffectEditingUtilities disableAnimationForEffects:v9, v11, v12, v13, v14];
    v10 = [(CFXCaptureViewController *)self runOnceAnimatedOverlays];
    [v10 removeObjectsInArray:v9];
  }
}

void __69__CFXCaptureViewController_liveCaptureViewController_didRenderFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 renderEffect];
  v5 = v4;
  if (v4)
  {
    [v4 effectRange];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
  }

  *&v19.value = v16;
  v19.epoch = v17;

  time1 = v19;
  *&time2.value = CFXEffectPreviewStartAtNextRenderTime;
  time2.epoch = 0;
  if (CMTimeCompare(&time1, &time2))
  {
    memset(&time1, 0, sizeof(time1));
    v6 = *(a1 + 32);
    if (v6)
    {
      [v6 requestTime];
    }

    v7 = [v3 renderEffect];
    v8 = v7;
    if (v7)
    {
      [v7 effectRange];
    }

    else
    {
      memset(v13, 0, sizeof(v13));
      v12 = 0u;
    }

    time2 = *(v13 + 8);

    memset(&v11, 0, sizeof(v11));
    lhs = time1;
    v9 = v19;
    CMTimeSubtract(&v11, &lhs, &v9);
    lhs = v11;
    v9 = time2;
    if ((CMTimeCompare(&lhs, &v9) & 0x80000000) == 0)
    {
      [*(a1 + 40) addObject:v3];
    }
  }
}

- (BOOL)CFX_isRenderingAnimatedOverlaysThatDontLoop
{
  v2 = [(CFXCaptureViewController *)self runOnceAnimatedOverlays];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)liveCaptureViewController:(id)a3 livePreviewTappedAtNormalizedPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(CFXCaptureViewController *)self cameraViewController];
  v8 = [v7 isCapturing];

  if ((v8 & 1) == 0)
  {
    v9 = [(CFXCaptureViewController *)self composition];
    v10 = [v9 jtEffectsForType:2];

    if ([v10 count])
    {
      v11 = [(CFXCaptureViewController *)self cameraViewController];
      [v11 normalizedMinimumHitTestArea];
      v13 = v12;
      v15 = v14;

      v17 = *MEMORY[0x277CC08F0];
      v18 = *(MEMORY[0x277CC08F0] + 16);
      v16 = [JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:v10 atNormalizedPoint:&v17 atTime:1 adjustForMinimumSize:x normalizedMinimumSize:y, v13, v15];
      if (v16)
      {
        [(CFXCaptureViewController *)self displayEffectEditorForEffect:v16 forMode:0];
      }
    }
  }
}

- (void)liveCaptureViewController:(id)a3 livePreviewPannedAtNormalizedPoint:(CGPoint)a4 gesture:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  if ([v8 state] == 1)
  {
    v9 = [(CFXCaptureViewController *)self cameraViewController];
    v10 = [v9 isCapturing];

    if (v10)
    {
      goto LABEL_49;
    }
  }

  v11 = [v8 state];
  if ((v11 - 3) >= 2)
  {
    if (v11 != 2)
    {
      if (v11 != 1)
      {
        goto LABEL_49;
      }

      v12 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [CFXCaptureViewController liveCaptureViewController:livePreviewPannedAtNormalizedPoint:gesture:];
      }

      if ([(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures])
      {
        v13 = [(CFXCaptureViewController *)self effectEditor];
        v14 = [v13 editEffect];

        v15 = [v14 jtEffect];
        v16 = CFXLog_DebugEffectEditingUI();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

        if (v17)
        {
          v18 = CFXLog_DebugEffectEditingUI();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [CFXCaptureViewController liveCaptureViewController:livePreviewPannedAtNormalizedPoint:gesture:];
          }
        }

        if (v15)
        {
          goto LABEL_42;
        }
      }

      v19 = [(CFXCaptureViewController *)self composition];
      v20 = [v19 jtEffectsForType:2];

      if ([v20 count] && (-[CFXCaptureViewController cameraViewController](self, "cameraViewController"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "normalizedMinimumHitTestArea"), v23 = v22, v25 = v24, v21, v39 = *MEMORY[0x277CC08F0], v40 = *(MEMORY[0x277CC08F0] + 16), +[JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:atNormalizedPoint:atTime:adjustForMinimumSize:normalizedMinimumSize:](JFXEffectEditingUtilities, "hitTestOverlaysAtPosterFrame:atNormalizedPoint:atTime:adjustForMinimumSize:normalizedMinimumSize:", v20, &v39, 1, x, y, v23, v25), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v15 = v26;
        v27 = CFXLog_DebugEffectEditingUI();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);

        if (!v28)
        {
LABEL_41:

LABEL_42:
          if ([v15 type] == 2)
          {
            v36 = [(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures];
            [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:v36 | 1];
            [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:v36 | 1];
            if (![(CFXCaptureViewController *)self isEditingEffect])
            {
              [(CFXCaptureViewController *)self displayEffectEditorForEffect:v15 forMode:1];
            }

            v37 = CFXLog_DebugEffectEditingUI();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [CFXCaptureViewController liveCaptureViewController:livePreviewPannedAtNormalizedPoint:gesture:];
            }

            v38 = [(CFXCaptureViewController *)self effectEditor];
            [v38 handlePanGesture:v8];
          }

          goto LABEL_49;
        }

        v29 = CFXLog_DebugEffectEditingUI();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [CFXCaptureViewController liveCaptureViewController:livePreviewPannedAtNormalizedPoint:gesture:];
        }
      }

      else
      {
        v29 = CFXLog_DebugEffectEditingUI();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [CFXCaptureViewController liveCaptureViewController:livePreviewPannedAtNormalizedPoint:gesture:];
        }

        v15 = 0;
      }

      goto LABEL_41;
    }

    if (([(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures]& 1) != 0 && [(CFXCaptureViewController *)self isEditingEffect])
    {
      v35 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [CFXCaptureViewController liveCaptureViewController:livePreviewPannedAtNormalizedPoint:gesture:];
      }

      v34 = [(CFXCaptureViewController *)self effectEditor];
      [v34 handlePanGesture:v8];
    }

    else
    {
      v34 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [CFXCaptureViewController liveCaptureViewController:livePreviewPannedAtNormalizedPoint:gesture:];
      }
    }

LABEL_36:

    goto LABEL_49;
  }

  if (([(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures]& 1) == 0 || ![(CFXCaptureViewController *)self isEditingEffect])
  {
    v34 = CFXLog_DebugEffectEditingUI();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [CFXCaptureViewController liveCaptureViewController:livePreviewPannedAtNormalizedPoint:gesture:];
    }

    goto LABEL_36;
  }

  v30 = CFXLog_DebugEffectEditingUI();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [CFXCaptureViewController liveCaptureViewController:livePreviewPannedAtNormalizedPoint:gesture:];
  }

  v31 = [(CFXCaptureViewController *)self effectEditor];
  [v31 handlePanGesture:v8];

  v32 = [(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures];
  [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:v32 & 0xFFFFFFFFFFFFFFFELL];
  [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:v32 & 0xFFFFFFFFFFFFFFFELL];
  if (![(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures])
  {
    v33 = CFXLog_DebugEffectEditingUI();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [CFXCaptureViewController liveCaptureViewController:livePreviewPannedAtNormalizedPoint:gesture:];
    }

    [(CFXCaptureViewController *)self removeEffectEditorAnimated:1];
  }

LABEL_49:
}

- (void)liveCaptureViewController:(id)a3 livePreviewPinchedAtNormalizedCenterPoint:(CGPoint)a4 gesture:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  if ([v8 state] == 1)
  {
    v9 = [(CFXCaptureViewController *)self cameraViewController];
    v10 = [v9 isCapturing];

    if (v10)
    {
      goto LABEL_45;
    }
  }

  v11 = [v8 state];
  if ((v11 - 3) < 2)
  {
    if (([(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures]& 2) != 0 && [(CFXCaptureViewController *)self isEditingEffect])
    {
      v30 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [CFXCaptureViewController liveCaptureViewController:livePreviewPinchedAtNormalizedCenterPoint:gesture:];
      }

      v31 = [(CFXCaptureViewController *)self effectEditor];
      [v31 handlePinchGesture:v8];

      v32 = [(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures];
      [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:v32 & 0xFFFFFFFFFFFFFFFDLL];
      [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:v32 & 0xFFFFFFFFFFFFFFFDLL];
      if (![(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures])
      {
        v33 = CFXLog_DebugEffectEditingUI();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [CFXCaptureViewController liveCaptureViewController:livePreviewPinchedAtNormalizedCenterPoint:gesture:];
        }

        [(CFXCaptureViewController *)self removeEffectEditorAnimated:1];
      }
    }
  }

  else
  {
    if (v11 != 2)
    {
      if (v11 != 1)
      {
        goto LABEL_44;
      }

      v12 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [CFXCaptureViewController liveCaptureViewController:livePreviewPinchedAtNormalizedCenterPoint:gesture:];
      }

      if ([(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures])
      {
        v13 = [(CFXCaptureViewController *)self effectEditor];
        v14 = [v13 editEffect];

        v15 = [v14 jtEffect];
        v16 = CFXLog_DebugEffectEditingUI();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

        if (v17)
        {
          v18 = CFXLog_DebugEffectEditingUI();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [CFXCaptureViewController liveCaptureViewController:livePreviewPinchedAtNormalizedCenterPoint:gesture:];
          }
        }

        if (v15)
        {
          goto LABEL_37;
        }
      }

      v19 = [(CFXCaptureViewController *)self composition];
      v20 = [v19 jtEffectsForType:2];

      if ([v20 count] && (-[CFXCaptureViewController cameraViewController](self, "cameraViewController"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "normalizedMinimumHitTestArea"), v23 = v22, v25 = v24, v21, v38 = *MEMORY[0x277CC08F0], v39 = *(MEMORY[0x277CC08F0] + 16), +[JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:atNormalizedPoint:atTime:adjustForMinimumSize:normalizedMinimumSize:](JFXEffectEditingUtilities, "hitTestOverlaysAtPosterFrame:atNormalizedPoint:atTime:adjustForMinimumSize:normalizedMinimumSize:", v20, &v38, 1, x, y, v23, v25), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v15 = v26;
        v27 = CFXLog_DebugEffectEditingUI();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);

        if (!v28)
        {
LABEL_36:

LABEL_37:
          if ([v15 type] == 2)
          {
            v35 = [(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures];
            [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:v35 | 2];
            [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:v35 | 2];
            if (![(CFXCaptureViewController *)self isEditingEffect])
            {
              [(CFXCaptureViewController *)self displayEffectEditorForEffect:v15 forMode:1];
            }

            v36 = CFXLog_DebugEffectEditingUI();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              [CFXCaptureViewController liveCaptureViewController:livePreviewPinchedAtNormalizedCenterPoint:gesture:];
            }

            v37 = [(CFXCaptureViewController *)self effectEditor];
            [v37 handlePinchGesture:v8];
          }

LABEL_43:

          goto LABEL_44;
        }

        v29 = CFXLog_DebugEffectEditingUI();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [CFXCaptureViewController liveCaptureViewController:livePreviewPinchedAtNormalizedCenterPoint:gesture:];
        }
      }

      else
      {
        v29 = CFXLog_DebugEffectEditingUI();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [CFXCaptureViewController liveCaptureViewController:livePreviewPinchedAtNormalizedCenterPoint:gesture:];
        }

        v15 = 0;
      }

      goto LABEL_36;
    }

    if (([(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures]& 2) != 0 && [(CFXCaptureViewController *)self isEditingEffect])
    {
      v34 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [CFXCaptureViewController liveCaptureViewController:livePreviewPinchedAtNormalizedCenterPoint:gesture:];
      }

      v15 = [(CFXCaptureViewController *)self effectEditor];
      [v15 handlePinchGesture:v8];
      goto LABEL_43;
    }
  }

LABEL_44:
  if (([(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures]& 2) == 0)
  {
LABEL_45:
    [(CFXCaptureViewController *)self handlePinchGestureRecognizer:v8];
  }
}

- (void)liveCaptureViewController:(id)a3 livePreviewRotatedAtNormalizedCenterPoint:(CGPoint)a4 gesture:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  if ([v8 state] == 1)
  {
    v9 = [(CFXCaptureViewController *)self cameraViewController];
    v10 = [v9 isCapturing];

    if (v10)
    {
      goto LABEL_44;
    }
  }

  v11 = [v8 state];
  if ((v11 - 3) < 2)
  {
    if (([(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures]& 4) != 0 && [(CFXCaptureViewController *)self isEditingEffect])
    {
      v30 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [CFXCaptureViewController liveCaptureViewController:livePreviewRotatedAtNormalizedCenterPoint:gesture:];
      }

      v31 = [(CFXCaptureViewController *)self effectEditor];
      [v31 handleRotateGesture:v8];

      v32 = [(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures];
      [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:v32 & 0xFFFFFFFFFFFFFFFBLL];
      [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:v32 & 0xFFFFFFFFFFFFFFFBLL];
      if (![(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures])
      {
        v33 = CFXLog_DebugEffectEditingUI();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [CFXCaptureViewController liveCaptureViewController:livePreviewRotatedAtNormalizedCenterPoint:gesture:];
        }

        [(CFXCaptureViewController *)self removeEffectEditorAnimated:1];
      }
    }
  }

  else
  {
    if (v11 != 2)
    {
      if (v11 != 1)
      {
        goto LABEL_44;
      }

      v12 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [CFXCaptureViewController liveCaptureViewController:livePreviewRotatedAtNormalizedCenterPoint:gesture:];
      }

      if ([(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures])
      {
        v13 = [(CFXCaptureViewController *)self effectEditor];
        v14 = [v13 editEffect];

        v15 = [v14 jtEffect];
        v16 = CFXLog_DebugEffectEditingUI();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

        if (v17)
        {
          v18 = CFXLog_DebugEffectEditingUI();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [CFXCaptureViewController liveCaptureViewController:livePreviewRotatedAtNormalizedCenterPoint:gesture:];
          }
        }

        if (v15)
        {
          goto LABEL_37;
        }
      }

      v19 = [(CFXCaptureViewController *)self composition];
      v20 = [v19 jtEffectsForType:2];

      if ([v20 count] && (-[CFXCaptureViewController cameraViewController](self, "cameraViewController"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "normalizedMinimumHitTestArea"), v23 = v22, v25 = v24, v21, v39 = *MEMORY[0x277CC08F0], v40 = *(MEMORY[0x277CC08F0] + 16), +[JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:atNormalizedPoint:atTime:adjustForMinimumSize:normalizedMinimumSize:](JFXEffectEditingUtilities, "hitTestOverlaysAtPosterFrame:atNormalizedPoint:atTime:adjustForMinimumSize:normalizedMinimumSize:", v20, &v39, 1, x, y, v23, v25), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v15 = v26;
        v27 = CFXLog_DebugEffectEditingUI();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);

        if (!v28)
        {
LABEL_36:

LABEL_37:
          if ([v15 type] == 2)
          {
            v36 = [(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures];
            [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:v36 | 4];
            [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:v36 | 4];
            if (![(CFXCaptureViewController *)self isEditingEffect])
            {
              [(CFXCaptureViewController *)self displayEffectEditorForEffect:v15 forMode:1];
            }

            v37 = CFXLog_DebugEffectEditingUI();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [CFXCaptureViewController liveCaptureViewController:livePreviewRotatedAtNormalizedCenterPoint:gesture:];
            }

            v38 = [(CFXCaptureViewController *)self effectEditor];
            [v38 handleRotateGesture:v8];
          }

          goto LABEL_44;
        }

        v29 = CFXLog_DebugEffectEditingUI();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [CFXCaptureViewController liveCaptureViewController:livePreviewRotatedAtNormalizedCenterPoint:gesture:];
        }
      }

      else
      {
        v29 = CFXLog_DebugEffectEditingUI();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [CFXCaptureViewController liveCaptureViewController:livePreviewRotatedAtNormalizedCenterPoint:gesture:];
        }

        v15 = 0;
      }

      goto LABEL_36;
    }

    if (([(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures]& 4) != 0 && [(CFXCaptureViewController *)self isEditingEffect])
    {
      v34 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [CFXCaptureViewController liveCaptureViewController:livePreviewRotatedAtNormalizedCenterPoint:gesture:];
      }

      v35 = [(CFXCaptureViewController *)self effectEditor];
      [v35 handleRotateGesture:v8];
    }
  }

LABEL_44:
}

- (void)liveCaptureViewController:(id)a3 livePreviewDoubleTappedAtNormalizedCenterPoint:(CGPoint)a4 gesture:(id)a5
{
  v6 = [(CFXCaptureViewController *)self delegate:a3];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CFXCaptureViewController *)self delegate];
    [v8 captureViewControllerPresentationRectWasDoubleTapped:self];
  }
}

- (void)setupAnimojiFaceReticleForTrackingLoss
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CFXCaptureViewController_setupAnimojiFaceReticleForTrackingLoss__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__CFXCaptureViewController_setupAnimojiFaceReticleForTrackingLoss__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isShowingAnimojiReticle] & 1) == 0)
  {
    v2 = [[CFXFaceReticleView alloc] initWithFrame:1 reticleType:0.0, 0.0, 180.0, 180.0];
    [*(a1 + 32) setAnimojiTrackingLossReticle:v2];

    v3 = [*(a1 + 32) animojiTrackingLossReticle];
    [v3 setUserInteractionEnabled:0];

    v4 = [*(a1 + 32) presentationView];
    v5 = [*(a1 + 32) animojiTrackingLossReticle];
    [v4 addSubview:v5];

    v6 = [*(a1 + 32) presentationView];
    [v6 bounds];
    CenterPoint = CGRectGetCenterPoint(v7, v8, v9, v10);
    v13 = v12;
    v14 = [*(a1 + 32) animojiTrackingLossReticle];
    [v14 setCenter:{CenterPoint, v13}];

    v15 = [*(a1 + 32) animojiReticleFacePromptView];

    if (!v15)
    {
      v16 = *(a1 + 32);

      [v16 setupFaceInViewPromptLabel];
    }
  }
}

- (void)setupFaceInViewPromptLabel
{
  v64[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(CFXCaptureViewController *)self setAnimojiReticleFacePromptView:v3];

  v4 = [MEMORY[0x277D75348] blackColor];
  v5 = [v4 colorWithAlphaComponent:0.5];
  v6 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [v6 setBackgroundColor:v5];

  v7 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  v8 = [v7 layer];
  [v8 setCornerRadius:2.0];

  v9 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [v9 setAlpha:0.0];

  v10 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [v10 setUserInteractionEnabled:0];

  v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithSize:{0.0, 0.0}];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = objc_alloc_init(MEMORY[0x277D74258]);
  v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.75];
  [v13 setShadowColor:v14];

  [v13 setShadowOffset:{0.0, 0.0}];
  v59 = v13;
  [v13 setShadowBlurRadius:3.0];
  v15 = objc_alloc_init(MEMORY[0x277D74240]);
  [v15 setAlignment:1];
  v60 = v15;
  [v15 setLineBreakMode:0];
  v61 = [MEMORY[0x277D74300] systemFontOfSize:*MEMORY[0x277D743B8] weight:14.0 design:*MEMORY[0x277D74418]];
  v62 = [MEMORY[0x277D75348] whiteColor];
  v16 = v12;
  [v12 setObject:v62 forKeyedSubscript:*MEMORY[0x277D740C0]];
  [v12 setObject:v61 forKeyedSubscript:*MEMORY[0x277D740A8]];
  [v12 setObject:v15 forKeyedSubscript:*MEMORY[0x277D74118]];
  v58 = v12;
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x277D74138]];
  v17 = objc_alloc(MEMORY[0x277CCA898]);
  v18 = [MEMORY[0x277CCA8D8] jfxBundle];
  v19 = [v18 localizedStringForKey:@"BRING_FACE_INTO_VIEW_PROMPT_DISPLAY Name" value:&stru_28553D028 table:0];
  v57 = [v17 initWithString:v19 attributes:v16];

  [v11 setAttributedText:v57];
  [v11 sizeToFit];
  v20 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [v20 addSubview:v11];

  v21 = [(CFXCaptureViewController *)self presentationView];
  v22 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [v21 addSubview:v22];

  v23 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  v25 = [v24 topAnchor];
  v26 = [(CFXCaptureViewController *)self presentationView];
  v27 = [v26 topAnchor];
  v28 = [v25 constraintEqualToAnchor:v27 constant:10.0];
  [(CFXCaptureViewController *)self setFacePromptLabelYConstraint:v28];

  v29 = MEMORY[0x277CCAAD0];
  v30 = [(CFXCaptureViewController *)self facePromptLabelYConstraint];
  v64[0] = v30;
  v31 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  v32 = [v31 centerXAnchor];
  v33 = [(CFXCaptureViewController *)self presentationView];
  v34 = [v33 centerXAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  v64[1] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
  [v29 activateConstraints:v36];

  v37 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v49 = MEMORY[0x277CCAAD0];
  v55 = [v11 leftAnchor];
  v56 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  v54 = [v56 leftAnchor];
  v53 = [v55 constraintEqualToAnchor:v54 constant:10.0];
  v63[0] = v53;
  v50 = [v11 rightAnchor];
  v51 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  v48 = [v51 rightAnchor];
  v47 = [v50 constraintEqualToAnchor:v48 constant:-10.0];
  v63[1] = v47;
  v52 = v11;
  v38 = [v11 topAnchor];
  v39 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  v40 = [v39 topAnchor];
  v41 = [v38 constraintEqualToAnchor:v40 constant:3.0];
  v63[2] = v41;
  v42 = [v37 bottomAnchor];
  v43 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  v44 = [v43 bottomAnchor];
  v45 = [v42 constraintEqualToAnchor:v44 constant:-3.0];
  v63[3] = v45;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
  [v49 activateConstraints:v46];

  [(CFXCaptureViewController *)self updateAnimojiTrackingReticleAndLabelLayout];
}

- (void)showAnimojiFaceReticleForTrackingLoss
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CFXCaptureViewController_showAnimojiFaceReticleForTrackingLoss__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__CFXCaptureViewController_showAnimojiFaceReticleForTrackingLoss__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isShowingAnimojiReticle] & 1) == 0)
  {
    [*(a1 + 32) setIsShowingAnimojiReticle:1];
    [*(a1 + 32) fadeInFaceInViewPromptLabel];
    v2 = [*(a1 + 32) animojiTrackingLossReticle];
    [v2 showAndAnimateAnimojiFaceReticle];
  }
}

- (void)hideAnimojiFaceReticleForTrackingGain
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CFXCaptureViewController_hideAnimojiFaceReticleForTrackingGain__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__CFXCaptureViewController_hideAnimojiFaceReticleForTrackingGain__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isShowingAnimojiReticle])
  {
    [*(a1 + 32) setIsShowingAnimojiReticle:0];
    v2 = [*(a1 + 32) animojiTrackingLossReticle];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __65__CFXCaptureViewController_hideAnimojiFaceReticleForTrackingGain__block_invoke_2;
    v4[3] = &unk_278D79D20;
    v5 = v2;
    v3 = v2;
    [v3 hideAnimojiFaceReticleAnimatedWithCompletion:v4];
    [*(a1 + 32) fadeOutFaceInViewPromptLabel];
  }
}

- (BOOL)shouldShowAnimojiFaceReticle
{
  if ([(CFXCaptureViewController *)self isShowingAnimojiReticle])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(CFXCaptureViewController *)self cameraViewController];
    v3 = [v4 isCapturing] ^ 1;
  }

  return v3;
}

- (void)fadeInFaceInViewPromptLabel
{
  v3 = objc_alloc(MEMORY[0x277D75D40]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__CFXCaptureViewController_fadeInFaceInViewPromptLabel__block_invoke;
  v5[3] = &unk_278D79D20;
  v5[4] = self;
  v4 = [v3 initWithDuration:0 curve:v5 animations:0.5];
  [v4 startAnimationAfterDelay:0.5];
}

void __55__CFXCaptureViewController_fadeInFaceInViewPromptLabel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) animojiReticleFacePromptView];
  [v1 setAlpha:1.0];
}

- (void)fadeOutFaceInViewPromptLabel
{
  v3 = objc_alloc(MEMORY[0x277D75D40]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__CFXCaptureViewController_fadeOutFaceInViewPromptLabel__block_invoke;
  v5[3] = &unk_278D79D20;
  v5[4] = self;
  v4 = [v3 initWithDuration:0 curve:v5 animations:0.2];
  [v4 startAnimation];
}

void __56__CFXCaptureViewController_fadeOutFaceInViewPromptLabel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) animojiReticleFacePromptView];
  [v1 setAlpha:0.0];
}

- (void)removeAnimojiTrackingReticle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CFXCaptureViewController_removeAnimojiTrackingReticle__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__CFXCaptureViewController_removeAnimojiTrackingReticle__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) animojiTrackingLossReticle];
  if (v2)
  {
  }

  else
  {
    v3 = [*(a1 + 32) animojiReticleFacePromptView];

    if (!v3)
    {
      return;
    }
  }

  v4 = [*(a1 + 32) animojiTrackingLossReticle];
  [v4 removeFromSuperview];

  v5 = [*(a1 + 32) animojiReticleFacePromptView];
  [v5 removeFromSuperview];

  [*(a1 + 32) setAnimojiTrackingLossReticle:0];
  [*(a1 + 32) setAnimojiReticleFacePromptView:0];
  v6 = *(a1 + 32);

  [v6 setIsShowingAnimojiReticle:0];
}

- (void)updateAnimojiTrackingReticleAndLabelLayout
{
  v3 = [(CFXCaptureViewController *)self captureMode];
  v4 = (+[JFXOrientationMonitor interfaceOrientation]- 3) < 2;
  v5 = v3 == 2 && v4;
  if (v3 == 2)
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom] == 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CFXCaptureViewController *)self animojiTrackingLossReticle];

  if (v8)
  {
    v9 = [(CFXCaptureViewController *)self presentationView];
    [v9 bounds];
    CenterPoint = CGRectGetCenterPoint(v10, v11, v12, v13);
    v16 = v15;
    v17 = [(CFXCaptureViewController *)self animojiTrackingLossReticle];
    [v17 setCenter:{CenterPoint, v16}];
  }

  if (v5 || v7)
  {
    v18 = [(CFXCaptureViewController *)self elapsedTimeView];
    [v18 bounds];
    v20 = v19 + 23.0 + 10.0;
    v21 = [(CFXCaptureViewController *)self facePromptLabelYConstraint];
    [v21 setConstant:v20];
  }

  else
  {
    v18 = [(CFXCaptureViewController *)self facePromptLabelYConstraint];
    [v18 setConstant:10.0];
  }

  v22 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [v22 setNeedsUpdateConstraints];

  v23 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [v23 updateConstraintsIfNeeded];
}

- (CGRect)CFX_cameraViewFinderUncroppedFrame
{
  if ([(CFXCaptureViewController *)self captureContainerUncroppedFrameWasCalculatedWithContentRect])
  {
    [(CFXCaptureViewController *)self externalUncroppedPresentationRect];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v11 = [(CFXCaptureViewController *)self liveCaptureContainer];
    v12 = +[CFXMediaSettings sharedInstance];
    [v12 renderSize];
    v14 = v13;
    v16 = v15;

    [v11 frame];
    v4 = CGRectFillRectToAspectInRect(v17, v18, v19, v20, 0.0, 0.0, v14, v16);
    v6 = v21;
    v8 = v22;
    v10 = v23;
  }

  v24 = v4;
  v25 = v6;
  v26 = v8;
  v27 = v10;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)displayEffectEditorForEffect:(id)a3 forMode:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CFXCaptureViewController *)self cameraViewController];
  v8 = [v7 isCapturing];

  if ((v8 & 1) == 0)
  {
    v9 = [(CFXCaptureViewController *)self effectEditor];

    if (v9)
    {
      v10 = [(CFXCaptureViewController *)self effectEditor];
      if ([v10 mode] == a4)
      {
        v11 = [(CFXCaptureViewController *)self effectEditor];
        v12 = [v11 editEffect];
        v13 = [v12 isEqual:v6];

        if (v13)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }

      [(CFXCaptureViewController *)self removeEffectEditorAnimated:1];
    }

    if (a4 || ![JFXEffectEditingUtilities canEditTextForEffect:v6])
    {
      v15 = [CFXEffect effectWithJTEffect:v6];
      v16 = [JFXPassThroughContainerView alloc];
      v17 = [(CFXCaptureViewController *)self view];
      [v17 frame];
      v18 = [(JFXPassThroughContainerView *)v16 initWithFrame:?];
      [(CFXCaptureViewController *)self setEffectEditorContainerView:v18];

      if ([(CFXCaptureViewController *)self isMessagesOnPhone])
      {
        v19 = [(CFXCaptureViewController *)self nonTransformedContainerView];
        v20 = [(CFXCaptureViewController *)self effectEditorContainerView];
        [v19 addSubview:v20];
      }

      else
      {
        v19 = [(CFXCaptureViewController *)self view];
        v20 = [(CFXCaptureViewController *)self effectEditorContainerView];
        v21 = [(CFXCaptureViewController *)self topBar];
        [v19 insertSubview:v20 belowSubview:v21];
      }

      v22 = [[CFXEffectEditorView alloc] initWithMode:a4 delegate:self];
      [(CFXCaptureViewController *)self setEffectEditor:v22];

      [(CFXCaptureViewController *)self CFX_cameraViewFinderUncroppedFrame];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = [(CFXCaptureViewController *)self effectEditor];
      [v31 setFrame:{v24, v26, v28, v30}];

      v32 = [(CFXCaptureViewController *)self effectEditorContainerView];
      v33 = [(CFXCaptureViewController *)self effectEditor];
      [v32 addSubview:v33];

      [(CFXCaptureViewController *)self CFX_applyAutoRotationCorrectionToEditorViews];
      v34 = [(CFXCaptureViewController *)self effectEditor];
      [v34 beginEditingEffect:v15];
    }

    else if (![(CFXCaptureViewController *)self presentFullScreenTextEditorForEffect:v6 insertingEffect:0])
    {
      v14 = JFXLog_viewerUI();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_242A3B000, v14, OS_LOG_TYPE_DEFAULT, "Request to display text editor for edit ignored because already open", v35, 2u);
      }
    }
  }

LABEL_18:
}

- (void)updateEffectEditorLayout
{
  v3 = [(CFXCaptureViewController *)self effectEditor];

  if (v3)
  {
    [(CFXCaptureViewController *)self CFX_cameraViewFinderUncroppedFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(CFXCaptureViewController *)self effectEditor];
    [v12 setFrame:{v5, v7, v9, v11}];

    [(CFXCaptureViewController *)self CFX_applyAutoRotationCorrectionToEditorViews];
  }
}

- (void)removeEffectEditorAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CFXCaptureViewController *)self effectEditor];

  if (v5)
  {
    v6 = [(CFXCaptureViewController *)self effectEditor];
    objc_initWeak(&location, v6);

    v7 = [(CFXCaptureViewController *)self effectEditorContainerView];
    objc_initWeak(&from, v7);

    [(CFXCaptureViewController *)self setEffectEditor:0];
    [(CFXCaptureViewController *)self setEffectEditorContainerView:0];
    v8 = objc_loadWeakRetained(&location);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__CFXCaptureViewController_removeEffectEditorAnimated___block_invoke;
    v9[3] = &unk_278D7C878;
    objc_copyWeak(&v10, &location);
    objc_copyWeak(&v11, &from);
    [v8 endEditingAnimated:v3 withCompletionBlock:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __55__CFXCaptureViewController_removeEffectEditorAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeFromSuperview];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 removeFromSuperview];
}

- (BOOL)isEditingEffect
{
  v2 = [(CFXCaptureViewController *)self effectEditor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)presentFullScreenTextEditorForEffect:(id)a3 insertingEffect:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CFXCaptureViewController *)self view];
  [(CFXCaptureViewController *)self CFX_cameraViewFinderUncroppedFrame];
  [v7 convertRect:0 toView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if ([(CFXCaptureViewController *)self isMessagesOnPhone])
  {
    v16 = [(CFXCaptureViewController *)self cameraControls];
    v17 = [v16 view];
    [(CFXCaptureViewController *)self CFX_cameraViewFinderUncroppedFrame];
    [v17 convertRect:0 toView:?];
    v9 = v18;
    v11 = v19;
    v13 = v20;
    v15 = v21;
  }

  v22 = [CFXEffect effectWithJTEffect:v6];
  v23 = [(CFXCaptureViewController *)self isMessagesOnPhone];
  v24 = self;
  if (v23)
  {
    v24 = [(CFXCaptureViewController *)self cameraControls];
  }

  v25 = [CFXFullScreenTextEditViewController displayFullScreenTextEditorForEffect:v22 inViewController:v24 delegate:self cameraViewWindowFrame:v4 insertingEffect:v9, v11, v13, v15];
  if (v23)
  {
  }

  v26 = [(CFXCaptureViewController *)self effectBrowserContentPresenterViewController];

  if (v26)
  {
    v27 = [(CFXCaptureViewController *)self view];
    v28 = [(CFXCaptureViewController *)self effectBrowserContentPresenterViewController];
    v29 = [v28 view];
    [v27 bringSubviewToFront:v29];
  }

  return v25;
}

- (void)updateFullScreenTextEditorLayout
{
  if (+[CFXFullScreenTextEditViewController isFullScreenTextEditorPresented])
  {
    v3 = [(CFXCaptureViewController *)self view];
    [(CFXCaptureViewController *)self CFX_cameraViewFinderUncroppedFrame];
    [v3 convertRect:0 toView:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [CFXFullScreenTextEditViewController notifyCameraViewWindowFrameChanged:v5, v7, v9, v11];
  }
}

- (BOOL)shouldUseFaceTracking
{
  v2 = +[JFXVideoCameraController sharedInstance];
  v3 = [v2 faceTrackingEnabled];

  return v3;
}

- (BOOL)isFaceTrackingDataAvailable
{
  v2 = [(CFXCaptureViewController *)self shouldUseFaceTracking];
  if (v2)
  {

    LOBYTE(v2) = +[JFXEffectEditingUtilities isFaceTrackingDataAvailable];
  }

  return v2;
}

- (void)enableAnimationForOverlayEffect:(id)a3
{
  v19[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 forceDisableLooping] & 1) == 0)
  {
    v5 = *MEMORY[0x277D41888];
    v19[0] = *MEMORY[0x277D418E8];
    v19[1] = v5;
    v6 = *MEMORY[0x277D41898];
    v19[2] = *MEMORY[0x277D41890];
    v19[3] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [v8 BOOLForKey:@"CFX_DisableFaceTimeAnimationLooping"];

    v10 = [v4 effectID];
    v11 = [v7 containsObject:v10];

    if (!v11 || v9)
    {
      [v4 setForceDisableLooping:1];
      v18 = v4;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
      v15 = CFXEffectPreviewStartAtNextRenderTime;
      v16 = 0;
      [JFXEffectEditingUtilities enableAnimationForEffects:v13 animationStartTime:&v15];

      v14 = [(CFXCaptureViewController *)self runOnceAnimatedOverlays];
      [v14 addObject:v4];
    }

    else
    {
      [v4 setForceDisableLooping:0];
      v17 = v4;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      v15 = CFXEffectPreviewStartAtNextRenderTime;
      v16 = 0;
      [JFXEffectEditingUtilities enableAnimationForEffects:v12 animationStartTime:&v15];

      [v4 setParameter:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D41A20]];
    }
  }
}

- (BOOL)passThroughContainerView:(id)a3 shouldHandleTouchWithinView:(id)a4 atPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a4;
  if (isStreamingMode([(CFXCaptureViewController *)self captureMode]) && [(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures])
  {
    v9 = 1;
  }

  else if (isStreamingMode(-[CFXCaptureViewController captureMode](self, "captureMode")) && (-[CFXCaptureViewController cameraViewController](self, "cameraViewController"), v10 = objc_claimAutoreleasedReturnValue(), [v10 containerView], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11 == v8))
  {
    v14 = [(CFXCaptureViewController *)self composition];
    v15 = [v14 jtEffectsForType:2];

    if ([v15 count])
    {
      v16 = [(CFXCaptureViewController *)self liveCaptureContainer];
      v17 = [(CFXCaptureViewController *)self view];
      [v16 convertPoint:v17 fromView:{x, y}];
      v19 = v18;
      v21 = v20;

      v22 = [(CFXCaptureViewController *)self liveCaptureContainer];
      [v22 bounds];
      v24 = 44.0 / v23;
      v26 = 44.0 / v25;

      v27 = [(CFXCaptureViewController *)self liveCaptureContainer];
      [v27 bounds];
      v33 = *MEMORY[0x277CC08F0];
      v34 = *(MEMORY[0x277CC08F0] + 16);
      v32 = [JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:v15 atPoint:&v33 relativeToBounds:1 atTime:v19 adjustForMinimumSize:v21 normalizedMinimumSize:v28, v29, v30, v31, v24, v26];

      v9 = v32 != 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v12 = [(CFXCaptureViewController *)self view];
    v9 = v12 != v8;
  }

  return v9;
}

- (void)updateControlVisibilityAnimated:(BOOL)a3
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  if ([v4 userInterfaceIdiom])
  {
  }

  else
  {
    v5 = [(CFXCaptureViewController *)self captureMode];

    if (v5 == 2)
    {
      v6 = [(CFXCaptureViewController *)self flashButton];
      v7 = [v6 isExpanded];

      v8 = [(CFXCaptureViewController *)self elapsedTimeView];
      [v8 setHidden:v7];

      v14 = [(CFXCaptureViewController *)self doneButton];
      [v14 setHidden:v7];
      goto LABEL_8;
    }
  }

  if ([(CFXCaptureViewController *)self captureMode]== 2)
  {
    v9 = [(CFXCaptureViewController *)self topBar];
    v10 = [v9 shouldHideElapsedTimeViewForGraphConfiguration:0];
    v11 = [(CFXCaptureViewController *)self elapsedTimeView];
    [v11 setHidden:v10];
  }

  v14 = [(CFXCaptureViewController *)self topBar];
  v12 = [v14 shouldHideDoneButtonForGraphConfiguration:0];
  v13 = [(CFXCaptureViewController *)self doneButton];
  [v13 setHidden:v12];

LABEL_8:
}

- (void)JFX_orientationMonitorDeviceInterfaceOrientationNotification:(id)a3
{
  v4 = a3;
  [(CFXCaptureViewController *)self configureCaptureControlsForOrientationWithAnimation:1];
  v5 = +[JFXOrientationMonitor deviceInterfaceOrientation];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:@"kJFXOrientationMonitorDeviceInterfaceOrientationPreviousOrientationUserInfoKey"];
  v8 = [v7 integerValue];

  if ([(CFXCaptureViewController *)self captureMode]== 1 && ![(CFXCaptureViewController *)self isExternalCaptureSessionAnExternalCamera])
  {

    [(CFXCaptureViewController *)self CFX_adjustOverlaysForCaptureOrientationChanged:v5 oldCaptureOrientation:v8];
  }
}

- (void)JFX_orientationMonitorInterfaceOrientationNotification:(id)a3
{
  if ([(CFXCaptureViewController *)self captureMode]!= 1)
  {
    [(CFXCaptureViewController *)self CFX_setFrameAndRenderSizes];
  }

  [(CFXCaptureViewController *)self configureUIForOrientation];
}

- (void)doneButtonTapped:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = CFXLog_action();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CFXCaptureViewController *)self composition];
    v6 = [v5 jtEffects];
    v7 = [CFXActionLogging actionLogAsJSONForEvent:@"canceled camera session" atLocation:@"live" withEffectStack:v6];
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_242A3B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v11, 0xCu);
  }

  v8 = [(CFXCaptureViewController *)self cameraViewController];
  [v8 stopRenderingCameraFrames];

  v9 = [(CFXCaptureViewController *)self delegate];

  if (v9)
  {
    v10 = [(CFXCaptureViewController *)self delegate];
    [v10 captureViewControllerDoneButtonWasTapped:self];
  }
}

- (void)CFX_setFrameAndRenderSizes
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = +[JFXOrientationMonitor interfaceOrientation];
  v4 = +[JFXVideoCameraController sharedInstance];
  v5 = [v4 cameraMode];

  [(CFXCaptureViewController *)self captureMode];
  v6 = JFXUncroppedFrameSizeForCameraModeAndOrientation(v5, v3);
  v8 = v7;
  v9 = JFXCroppedFrameSizeForCameraModeAndOrientation(v5, v3);
  v11 = v10;
  v12 = +[CFXMediaSettings sharedInstance];
  [v12 setRenderSize:{v9, v11}];

  v13 = +[CFXMediaSettings sharedInstance];
  [v13 setFrameSize:{v6, v8}];

  v14 = JFXLog_camera();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v37.width = v6;
    v37.height = v8;
    v15 = NSStringFromCGSize(v37);
    v38.width = v9;
    v38.height = v11;
    v16 = NSStringFromCGSize(v38);
    *buf = 138543618;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = v16;
    _os_log_impl(&dword_242A3B000, v14, OS_LOG_TYPE_DEFAULT, "frameSize: %{public}@, renderSize: %{public}@", buf, 0x16u);
  }

  v17 = objc_alloc_init(CFXEffectComposition);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v29 = self;
  v18 = [(CFXCaptureViewController *)self composition];
  v19 = [v18 effects];

  v20 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    v23 = MEMORY[0x277CC08F0];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v30 + 1) + 8 * i);
        v26 = [v25 jtEffect];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v28 = [v25 jtEffect];
          *buf = *v23;
          *&buf[16] = *(v23 + 16);
          [v28 updateRenderSizeMaintainingAppearance:buf withComponentTime:{v9, v11}];
        }

        [(CFXEffectComposition *)v17 addEffect:v25 completion:0];
      }

      v21 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v21);
  }

  [(CFXCaptureViewController *)v29 setComposition:v17];
}

- (BOOL)isMessagesOnPhone
{
  if ([(CFXCaptureViewController *)self captureMode]== 1)
  {
    return 0;
  }

  v3 = [MEMORY[0x277D75418] currentDevice];
  v2 = [v3 userInterfaceIdiom] == 0;

  return v2;
}

- (void)CFX_toggleCaptureUI
{
  v3 = [(CFXCaptureViewController *)self cameraControls];
  v4 = [v3 view];
  v5 = [v4 isHidden];

  if ((CFXCaptureCapabilitiesIsCTMSupported() & 1) == 0)
  {
    if (v5)
    {
      v6 = isStreamingMode([(CFXCaptureViewController *)self captureMode]);
    }

    else
    {
      v6 = 1;
    }

    v7 = [(CFXCaptureViewController *)self topBar];
    [v7 setHidden:v6];
  }

  v9 = [(CFXCaptureViewController *)self cameraControls];
  v8 = [v9 view];
  [v8 setHidden:v5 ^ 1u];
}

- (int64_t)CFX_captureFlashModeForCAMFlashMode:(int64_t)a3
{
  v3 = 1;
  if (a3 != 1)
  {
    v3 = 2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)CFX_captureTorchModeForCAMFlashMode:(int64_t)a3
{
  v3 = 1;
  if (a3 != 1)
  {
    v3 = 2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)CFX_camFlashModeForCaptureFlashMode:(int64_t)a3
{
  v3 = 1;
  if (a3 != 1)
  {
    v3 = 2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)CFX_handleZoomPinchGestureRecognizer:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  [(CFXCaptureViewController *)self CFX_getCaptureDevice:&v11 captureDevicePosition:&v10 captureMode:&v9];
  if (v10 == 1)
  {
    v5 = [(CFXCaptureViewController *)self zoomControl];
    v6 = [(CFXCaptureViewController *)self canToggleBetweenZoomFactorsForZoomControl:v5];

    v7 = [(CFXCaptureViewController *)self cameraViewController];
    v8 = [v7 isCapturing];

    if (v6 && (v8 & 1) == 0)
    {
      [(CFXCaptureViewController *)self CFX_performFrontCameraZoomWithPinchGestureRecognizer:v4];
    }
  }

  else if (!v10)
  {
    [(CFXCaptureViewController *)self CFX_performBackCameraZoomWithPinchGestureRecognizer:v4];
  }
}

- (void)CFX_performBackCameraZoomWithPinchGestureRecognizer:(id)a3
{
  v17 = a3;
  v4 = [v17 state];
  if ((v4 - 3) >= 3)
  {
    if (v4 == 2)
    {
      [(CFXCaptureViewController *)self zoomFactorAtPinchStart];
      v11 = v10;
      [v17 scale];
      v13 = v11 * v12;
      [(CFXCaptureViewController *)self CFX_maxZoomForCamera];
      if (v13 <= v14)
      {
        v14 = v13;
      }

      if (v14 >= 1.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 1.0;
      }

      v16 = [(CFXCaptureViewController *)self zoomControl];
      [v16 setZoomFactor:v15];

      [(CFXCaptureViewController *)self CFX_setZoomSliderFromZoomFactor:v15];
      v6 = +[JFXVideoCameraController sharedInstance];
      [v6 setZoomFactor:v15];
      goto LABEL_7;
    }

    if (v4 != 1)
    {
      goto LABEL_8;
    }

    v8 = +[JFXVideoCameraController sharedInstance];
    [v8 zoomFactor];
    [(CFXCaptureViewController *)self setZoomFactorAtPinchStart:?];

    v9 = [(CFXCaptureViewController *)self zoomSlider];
    [v9 makeVisibleAnimated:0];

    v5 = [(CFXCaptureViewController *)self zoomSlider];
    v6 = v5;
    v7 = 1;
  }

  else
  {
    v5 = [(CFXCaptureViewController *)self zoomSlider];
    v6 = v5;
    v7 = 0;
  }

  [v5 setVisibilityTimerSuspended:v7];
LABEL_7:

LABEL_8:
}

- (void)CFX_performFrontCameraZoomWithPinchGestureRecognizer:(id)a3
{
  v13 = a3;
  v4 = [v13 state] == 1;
  v5 = v13;
  if (v4)
  {
    [v13 scale];
    if (v6 >= 1.0)
    {
      v8 = 0;
    }

    else
    {
      v7 = [(CFXCaptureViewController *)self zoomControl];
      v8 = [v7 zoomButtonSymbol] == 1;
    }

    [v13 scale];
    if (v9 <= 1.0)
    {
      v11 = 0;
    }

    else
    {
      v10 = [(CFXCaptureViewController *)self zoomControl];
      v11 = [v10 zoomButtonSymbol] == 0;
    }

    v5 = v13;
    if (v8 || v11)
    {
      v12 = [(CFXCaptureViewController *)self zoomControl];
      [(CFXCaptureViewController *)self toggleBetweenZoomFactorsForZoomControl:v12];

      v5 = v13;
    }
  }
}

- (void)completedVideoRecordWithURL:(id)a3 metadataURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CFXCaptureViewController *)self composition];
  v9 = [v8 jtEffects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__CFXCaptureViewController_completedVideoRecordWithURL_metadataURL___block_invoke;
  v12[3] = &unk_278D7C8A0;
  v13 = v6;
  v14 = v7;
  v15 = self;
  v10 = v7;
  v11 = v6;
  [CFXClip createClipWithLocalURL:v11 effectStack:v9 isVideo:1 maximumImageDimension:0 completionHandler:v12];
}

void __68__CFXCaptureViewController_completedVideoRecordWithURL_metadataURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__CFXCaptureViewController_completedVideoRecordWithURL_metadataURL___block_invoke_2;
  v7[3] = &unk_278D7BFE8;
  v8 = v3;
  v9 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __68__CFXCaptureViewController_completedVideoRecordWithURL_metadataURL___block_invoke_2(uint64_t a1)
{
  v2 = +[JFXVideoCameraController sharedInstance];
  v3 = [v2 cameraPosition];

  v4 = +[JFXVideoCameraController sharedInstance];
  v5 = [v4 cameraMode];

  v8 = [[CFXMediaItem alloc] initWithCameraMode:v5 clip:*(a1 + 32) assetMediaURL:*(a1 + 40) assetMetadataURL:*(a1 + 48) cameraPosition:v3];
  v6 = [*(a1 + 56) cameraViewController];
  [v6 stopRenderingCameraFrames];

  v7 = [*(a1 + 56) delegate];
  [v7 captureViewController:*(a1 + 56) didCaptureMediaItem:v8];

  if (CFXCaptureCapabilitiesIsCTMSupported() && [*(a1 + 56) switchedToVideoMode])
  {
    [*(a1 + 56) setCaptureMode:0];
    [*(a1 + 56) setSwitchedToVideoMode:0];
    [*(a1 + 56) configureCTMUIForCaptureMode];
  }
}

- (CGAffineTransform)overlayTransformForLocalViewfinder
{
  result = [(CFXCaptureViewController *)self captureMode];
  if (result == 1)
  {
    v5 = +[JFXOrientationMonitor deviceInterfaceOrientation];
    if (v5 > 4)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_242B5BF30[v5 & 7];
    }

    v9 = PVCardinalAnglesDouble_0[v6];

    return CGAffineTransformMakeRotation(retstr, v9);
  }

  else
  {
    v7 = MEMORY[0x277CBF2C0];
    v8 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v8;
    *&retstr->tx = *(v7 + 32);
  }

  return result;
}

- (void)updateUIForVideoRecording:(BOOL)a3
{
  v3 = a3;
  [(CFXCaptureViewController *)self setIsRecording:?];
  v5 = !v3;
  v6 = [(CFXCaptureViewController *)self flashButton];
  [v6 setAlpha:v5];

  v7 = [(CFXCaptureViewController *)self doneButton];
  [v7 setAlpha:v5];

  v9 = [(CFXCaptureViewController *)self controlStatusBar];
  v8 = [v9 flashIndicator];
  [v8 setAlpha:v5];
}

- (void)CFX_hideAppStripUpperBackgroundView:(BOOL)a3
{
  v3 = a3;
  v12 = [MEMORY[0x277D75418] currentDevice];
  if (![v12 userInterfaceIdiom])
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 bounds];
    if (v6 == 568)
    {
    }

    else
    {
      v7 = [MEMORY[0x277D759A0] mainScreen];
      [v7 bounds];
      v9 = v8;

      if (v9 != 568)
      {
        return;
      }
    }

    v10 = [(CFXCaptureViewController *)self delegate];
    v12 = [v10 cameraControlsViewControllerForCaptureViewController:self];

    v11 = [v12 appStripBackgroundView];
    [v11 setHidden:v3];
  }
}

- (void)startVideoRecording
{
  v18 = *MEMORY[0x277D85DE8];
  [(CFXCaptureViewController *)self removeEffectEditorAnimated:1];
  [(CFXCaptureViewController *)self removeAnimojiTrackingReticle];
  v3 = [(CFXCaptureViewController *)self cameraViewController];
  [v3 startVideoRecordingWithFlashMode:{-[CFXCaptureViewController flashMode](self, "flashMode")}];

  v4 = [(CFXCaptureViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CFXCaptureViewController *)self delegate];
    [v6 captureViewControllerDidStartVideoRecording:self];
  }

  [(CFXCaptureViewController *)self CFX_hideAppStripUpperBackgroundView:1];
  if (CFXCaptureCapabilitiesIsCTMSupported())
  {
    v7 = [(CFXCaptureViewController *)self elapsedTimeView];
    [v7 setHidden:0];

    v8 = [(CFXCaptureViewController *)self elapsedTimeView];
    [v8 setBackgroundStyle:1 animated:1];

    v16 = 0;
    *buf = 0;
    v15 = 0;
    [(CFXCaptureViewController *)self CFX_getCaptureDevice:buf captureDevicePosition:&v16 captureMode:&v15];
    v9 = v16 != 1;
    v10 = [(CFXCaptureViewController *)self zoomControl];
    [v10 setEnabled:v9];
  }

  v11 = CFXLog_action();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(CFXCaptureViewController *)self composition];
    v13 = [v12 jtEffects];
    v14 = [CFXActionLogging actionLogAsJSONForEvent:@"started video capture" atLocation:@"live" withEffectStack:v13];
    *buf = 138543362;
    *&buf[4] = v14;
    _os_log_impl(&dword_242A3B000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

- (void)stopVideoRecording:(id)a3
{
  v4 = a3;
  v5 = [(CFXCaptureViewController *)self cameraViewController];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __47__CFXCaptureViewController_stopVideoRecording___block_invoke;
  v12 = &unk_278D7A1B8;
  v13 = self;
  v14 = v4;
  v6 = v4;
  [v5 stopVideoRecording:&v9];

  if (CFXCaptureCapabilitiesIsCTMSupported())
  {
    v7 = [(CFXCaptureViewController *)self elapsedTimeView:v9];
    [v7 setBackgroundStyle:3 animated:1];

    v8 = [(CFXCaptureViewController *)self zoomControl];
    [v8 setEnabled:1];
  }
}

void __47__CFXCaptureViewController_stopVideoRecording___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__CFXCaptureViewController_stopVideoRecording___block_invoke_2;
  v10[3] = &unk_278D7B068;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __47__CFXCaptureViewController_stopVideoRecording___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = JFXLog_core();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __47__CFXCaptureViewController_stopVideoRecording___block_invoke_2_cold_1(a1, v2, v3);
    }

    [*(a1 + 48) completedVideoRecordWithURL:*(a1 + 32) metadataURL:*(a1 + 40)];
  }

  v4 = [*(a1 + 48) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 48) delegate];
    [v6 captureViewControllerDidStopVideoRecording:*(a1 + 48)];
  }

  [*(a1 + 48) CFX_hideAppStripUpperBackgroundView:0];
  v7 = CFXLog_action();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 48) composition];
    v9 = [v8 jtEffects];
    v10 = [CFXActionLogging actionLogAsJSONForEvent:@"finished video capture" atLocation:@"live" withEffectStack:v9];
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", &v12, 0xCu);
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)JFX_capturePhoto
{
  v3 = [(CFXCaptureViewController *)self cameraViewController];
  v4 = [(CFXCaptureViewController *)self flashMode];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__CFXCaptureViewController_JFX_capturePhoto__block_invoke;
  v5[3] = &unk_278D7C918;
  v5[4] = self;
  [v3 capturePhotoWithFlashMode:v4 completion:v5];
}

void __44__CFXCaptureViewController_JFX_capturePhoto__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __44__CFXCaptureViewController_JFX_capturePhoto__block_invoke_2;
  v24[3] = &unk_278D7C8C8;
  v24[4] = *(a1 + 32);
  v10 = MEMORY[0x245D22230](v24);
  if (!v7 || v9)
  {
    v14 = JFXLog_camera();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __44__CFXCaptureViewController_JFX_capturePhoto__block_invoke_cold_1(v9, v14);
    }

    v10[2](v10, 0);
  }

  else
  {
    v11 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__CFXCaptureViewController_JFX_capturePhoto__block_invoke_139;
    block[3] = &unk_278D7B068;
    v12 = v7;
    v13 = *(a1 + 32);
    v20 = v12;
    v21 = v13;
    v22 = v8;
    v23 = v10;
    dispatch_async(v11, block);
  }

  v15 = CFXLog_action();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 32) composition];
    v17 = [v16 jtEffects];
    v18 = [CFXActionLogging actionLogAsJSONForEvent:@"taken photo" atLocation:@"live" withEffectStack:v17];
    *buf = 138543362;
    v26 = v18;
    _os_log_impl(&dword_242A3B000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

void __44__CFXCaptureViewController_JFX_capturePhoto__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__CFXCaptureViewController_JFX_capturePhoto__block_invoke_3;
  v5[3] = &unk_278D79C88;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __44__CFXCaptureViewController_JFX_capturePhoto__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cameraViewController];
  [v2 stopRenderingCameraFrames];

  v3 = [*(a1 + 32) delegate];
  [v3 captureViewController:*(a1 + 32) didCaptureMediaItem:*(a1 + 40)];
}

void __44__CFXCaptureViewController_JFX_capturePhoto__block_invoke_139(id *a1)
{
  v2 = +[JFXVideoCameraController sharedInstance];
  v3 = [v2 cameraMode];

  v4 = +[JFXVideoCameraController sharedInstance];
  v5 = [v4 cameraPosition];

  v6 = a1[4];
  v7 = [a1[5] composition];
  v8 = [v7 jtEffects];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__CFXCaptureViewController_JFX_capturePhoto__block_invoke_2_140;
  v9[3] = &unk_278D7C8F0;
  v13 = v3;
  v10 = a1[4];
  v11 = a1[6];
  v14 = v5;
  v12 = a1[7];
  [CFXClip createClipWithLocalURL:v6 effectStack:v8 isVideo:0 maximumImageDimension:0 completionHandler:v9];
}

void __44__CFXCaptureViewController_JFX_capturePhoto__block_invoke_2_140(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[CFXMediaItem alloc] initWithCameraMode:a1[7] clip:v3 assetMediaURL:a1[4] assetMetadataURL:a1[5] cameraPosition:a1[8]];

  (*(a1[6] + 16))();
}

- (void)CFX_respondToShutterPress
{
  [(CFXCaptureViewController *)self removeEffectEditorAnimated:0];
  [(CFXCaptureViewController *)self removeAnimojiTrackingReticle];
  v3 = [(CFXCaptureViewController *)self editingOverlayWithGestureGroup];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CFXCaptureViewController_CFX_respondToShutterPress__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_group_notify(v3, MEMORY[0x277D85CD0], block);
}

void __53__CFXCaptureViewController_CFX_respondToShutterPress__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) captureMode];
  v3 = *(a1 + 32);
  if (v2 == 2)
  {
    v4 = [v3 cameraViewController];
    v5 = [v4 isCapturing];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __53__CFXCaptureViewController_CFX_respondToShutterPress__block_invoke_2;
    v22[3] = &unk_278D79E38;
    v22[4] = *(a1 + 32);
    v23 = v5;
    v6 = MEMORY[0x245D22230](v22);
    v7 = v5 ^ 1;
    v8 = [*(a1 + 32) controlStatusBar];
    v9 = [v8 flashIndicator];
    [v9 setAlpha:v7];

    v10 = [*(a1 + 32) flashButton];
    [v10 setAlpha:v7];

    v11 = [*(a1 + 32) doneButton];
    [v11 setAlpha:v7];

    if (v7)
    {
      inCompletionBlock[0] = MEMORY[0x277D85DD0];
      inCompletionBlock[1] = 3221225472;
      inCompletionBlock[2] = __53__CFXCaptureViewController_CFX_respondToShutterPress__block_invoke_6;
      inCompletionBlock[3] = &unk_278D7A140;
      inCompletionBlock[4] = *(a1 + 32);
      v19 = v6;
      v17 = v6;
      AudioServicesPlaySystemSoundWithCompletion(0x45Du, inCompletionBlock);
      v16 = v19;
    }

    else
    {
      v12 = *(a1 + 32);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __53__CFXCaptureViewController_CFX_respondToShutterPress__block_invoke_4;
      v20[3] = &unk_278D7A168;
      v21 = v6;
      v13 = v6;
      [v12 stopVideoRecording:v20];
      v14 = [*(a1 + 32) elapsedTimeView];
      [v14 resetTimer];

      v15 = [*(a1 + 32) elapsedTimeView];
      [v15 endTimer];

      v16 = v21;
    }
  }

  else
  {

    [v3 JFX_capturePhoto];
  }
}

void __53__CFXCaptureViewController_CFX_respondToShutterPress__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__CFXCaptureViewController_CFX_respondToShutterPress__block_invoke_3;
  v3[3] = &unk_278D79E38;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_after(v2, MEMORY[0x277D85CD0], v3);
}

void __53__CFXCaptureViewController_CFX_respondToShutterPress__block_invoke_4(uint64_t a1)
{
  inCompletionBlock[0] = MEMORY[0x277D85DD0];
  inCompletionBlock[1] = 3221225472;
  inCompletionBlock[2] = __53__CFXCaptureViewController_CFX_respondToShutterPress__block_invoke_5;
  inCompletionBlock[3] = &unk_278D7A168;
  v2 = *(a1 + 32);
  AudioServicesPlaySystemSoundWithCompletion(0x45Eu, inCompletionBlock);
}

void __53__CFXCaptureViewController_CFX_respondToShutterPress__block_invoke_6(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__CFXCaptureViewController_CFX_respondToShutterPress__block_invoke_7;
  v2[3] = &unk_278D7A140;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __53__CFXCaptureViewController_CFX_respondToShutterPress__block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) startVideoRecording];
  v2 = [*(a1 + 32) elapsedTimeView];
  [v2 startTimer];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)configureCTMUIForCaptureMode
{
  v3 = [(CFXCaptureViewController *)self captureMode];
  v4 = v3 == 2;
  v5 = v3 != 2;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  [(CFXCaptureViewController *)self dynamicShutterSettings];
  v6 = [(CFXCaptureViewController *)self elapsedTimeView];
  [v6 setHidden:v5];

  *&v11 = v4;
  *(&v11 + 1) = v5;
  v15 = v4;
  v9[2] = v13;
  v9[3] = v14;
  v10 = v4;
  v9[0] = v11;
  v9[1] = v12;
  [(CFXCaptureViewController *)self setDynamicShutterSettings:v9];
  v7 = [(CFXCaptureViewController *)self dynamicShutterControl];
  [(CFXCaptureViewController *)self dynamicShutterSettings];
  [v7 setSettings:v9 animated:0];

  v8 = [(CFXCaptureViewController *)self dynamicShutterControl];
  [v8 resetAnimated:0];
}

- (void)returnCTMUIToPhotoMode
{
  if (CFXCaptureCapabilitiesIsCTMSupported() && [(CFXCaptureViewController *)self switchedToVideoMode])
  {
    [(CFXCaptureViewController *)self setCaptureMode:0];
    [(CFXCaptureViewController *)self setSwitchedToVideoMode:0];

    [(CFXCaptureViewController *)self configureCTMUIForCaptureMode];
  }
}

- (void)dynamicShutterControlStopLockedRecording
{
  v3 = [(CFXCaptureViewController *)self delegate];
  v5 = [v3 cameraControlsViewControllerForCaptureViewController:self];

  v4 = [v5 flipButton];
  [v4 setAlpha:1.0];

  [(CFXCaptureViewController *)self CFX_respondToShutterPress];
}

- (void)dynamicShutterControlDidShortPress:(id)a3
{
  v4 = a3;
  if (![(CFXCaptureViewController *)self captureMode])
  {
    [v4 setEnabled:0];
  }

  [(CFXCaptureViewController *)self CFX_respondToShutterPress];
}

- (void)dynamicShutterControlDidStart:(id)a3
{
  v4 = [(CFXCaptureViewController *)self delegate];
  v8 = [v4 cameraControlsViewControllerForCaptureViewController:self];

  v5 = [v8 flipButton];
  [v5 setAlpha:0.0];

  if (![(CFXCaptureViewController *)self captureMode])
  {
    [(CFXCaptureViewController *)self setCaptureMode:2];
    [(CFXCaptureViewController *)self setSwitchedToVideoMode:1];
  }

  v6 = [(CFXCaptureViewController *)self controlStatusBar];
  v7 = [v6 flashIndicator];
  -[CFXCaptureViewController setTorchModeForFlashMode:](self, "setTorchModeForFlashMode:", [v7 flashMode]);

  [(CFXCaptureViewController *)self CFX_respondToShutterPress];
}

- (void)controlStatusBar:(id)a3 didCreateIndicatorForType:(unint64_t)a4
{
  if (!a4)
  {
    v5 = [a3 flashIndicator];
    [v5 setFlashMode:2];
  }
}

- (void)controlStatusBar:(id)a3 didReceiveTapInIndicatorForType:(unint64_t)a4
{
  if (!a4)
  {
    [(CFXCaptureViewController *)self toggleCTMFlashButton];
  }
}

- (CFXCaptureViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)zoomControlFrame
{
  x = self->_zoomControlFrame.origin.x;
  y = self->_zoomControlFrame.origin.y;
  width = self->_zoomControlFrame.size.width;
  height = self->_zoomControlFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)zoomSliderFrame
{
  x = self->_zoomSliderFrame.origin.x;
  y = self->_zoomSliderFrame.origin.y;
  width = self->_zoomSliderFrame.size.width;
  height = self->_zoomSliderFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)presentationRect
{
  x = self->_presentationRect.origin.x;
  y = self->_presentationRect.origin.y;
  width = self->_presentationRect.size.width;
  height = self->_presentationRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)externalUncroppedPresentationRect
{
  x = self->_externalUncroppedPresentationRect.origin.x;
  y = self->_externalUncroppedPresentationRect.origin.y;
  width = self->_externalUncroppedPresentationRect.size.width;
  height = self->_externalUncroppedPresentationRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($76EADD4ED24426C67044446678BAA581)dynamicShutterSettings
{
  v3 = *&self[21].var0;
  *&retstr->var4 = *&self[20].var7;
  *&retstr->var6 = v3;
  retstr->var8 = self[21].var2;
  v4 = *&self[20].var5;
  *&retstr->var0 = *&self[20].var3;
  *&retstr->var2 = v4;
  return self;
}

- (void)setDynamicShutterSettings:(id *)a3
{
  *&self->_dynamicShutterSettings.tapBehavior = *&a3->var0;
  v4 = *&a3->var4;
  v3 = *&a3->var6;
  v5 = *&a3->var2;
  self->_dynamicShutterSettings.idleColor = a3->var8;
  *&self->_dynamicShutterSettings.allowsZoom = v4;
  *&self->_dynamicShutterSettings.ringStyle = v3;
  *&self->_dynamicShutterSettings.dragRightBehavior = v5;
}

- (void)effectEditorViewDidBeginEditing:(id)a3
{
  v3 = [(CFXCaptureViewController *)self editingOverlayWithGestureGroup];
  dispatch_group_enter(v3);
}

- (void)effectEditorViewDidEndEditing:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CFXCaptureViewController *)self effectEditor];

  if (v5 == v4)
  {
    [(CFXCaptureViewController *)self removeEffectEditorAnimated:1];
  }

  if (isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    v6 = [(CFXCaptureViewController *)self composition];
    v7 = [v6 jtEffectsForType:2];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(CFXCaptureViewController *)self enableAnimationForOverlayEffect:*(*(&v14 + 1) + 8 * v12++), v14];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  v13 = [(CFXCaptureViewController *)self editingOverlayWithGestureGroup];
  dispatch_group_leave(v13);
}

- (id)effectEditorView:(id)a3 effectAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(CFXCaptureViewController *)self composition];
  v9 = [v8 jtEffectsForType:2];

  if ([v9 count])
  {
    [v7 bounds];
    v11 = 44.0 / v10;
    v13 = 44.0 / v12;
    [v7 bounds];
    v21 = *MEMORY[0x277CC08F0];
    v22 = *(MEMORY[0x277CC08F0] + 16);
    v18 = [JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:v9 atPoint:&v21 relativeToBounds:1 atTime:x adjustForMinimumSize:y normalizedMinimumSize:v14, v15, v16, v17, v11, v13];
    if (v18)
    {
      v19 = [CFXEffect effectWithJTEffect:v18];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)effectEditorView:(id)a3 isEffectAtPoint:(CGPoint)a4 effect:(id)a5
{
  y = a4.y;
  x = a4.x;
  v27[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v9 jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [v9 jtEffect];
    [v8 bounds];
    v14 = 44.0 / v13;
    v27[0] = v12;
    v16 = 44.0 / v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [v8 bounds];
    v25 = *MEMORY[0x277CC08F0];
    v26 = *(MEMORY[0x277CC08F0] + 16);
    v22 = [JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:v17 atPoint:&v25 relativeToBounds:1 atTime:x adjustForMinimumSize:y normalizedMinimumSize:v18, v19, v20, v21, v14, v16];

    v23 = v22 != 0;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)effectEditorView:(id)a3 didEditTextForEffect:(id)a4 newText:(id)a5
{
  v6 = a5;
  v7 = [a4 jtEffect];
  [JFXEffectEditingUtilities updateEffectText:v7 newText:v6];
}

- (void)effectEditorView:(id)a3 didRemoveEffect:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = JFXLog_effects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 jtEffect];
    v8 = NSStringFromJFXEffectType([v7 type]);
    v9 = [v5 localizedTitle];
    *buf = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_242A3B000, v6, OS_LOG_TYPE_DEFAULT, "Removing effect - type: %{public}@, name: %{public}@", buf, 0x16u);
  }

  v10 = [(CFXCaptureViewController *)self composition];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__CFXCaptureViewController_EffectEditingAdditions__effectEditorView_didRemoveEffect___block_invoke;
  v11[3] = &unk_278D79D20;
  v11[4] = self;
  [v10 removeEffect:v5 completion:v11];
}

void __85__CFXCaptureViewController_EffectEditingAdditions__effectEditorView_didRemoveEffect___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 composition];
  [v2 effectCompositionDidChange:v3];

  v4 = CFXLog_action();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) composition];
    v6 = [v5 jtEffects];
    v7 = [CFXActionLogging actionLogAsJSONForEvent:@"effect removed" atLocation:@"live" withEffectStack:v6];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_242A3B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
  }
}

- (CGPoint)effectEditorView:(id)a3 spacingBetweenCenterPointOfEffect:(id)a4 point:(CGPoint)a5 relativeToBounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5.y;
  v11 = a5.x;
  v12 = [a4 jtEffect];
  v19 = *MEMORY[0x277CC08F0];
  v20 = *(MEMORY[0x277CC08F0] + 16);
  [JFXEffectEditingUtilities spacingBetweenCenterPointOfEffect:v12 point:&v19 relativeToBounds:v11 atTime:v10, x, y, width, height];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)effectEditorView:(id)a3 didMoveEffect:(id)a4 withTouchPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v11 = +[JFXVideoCameraController sharedInstance];
  v12 = [v11 mostRecentARMetadata];

  v13 = [v10 jtEffect];
  if ([v13 type] == 2 && -[CFXCaptureViewController shouldUseFaceTracking](self, "shouldUseFaceTracking"))
  {
    v14 = [v12 faceAnchor];

    if (v14)
    {
      v15 = [v10 jtEffect];
      v16 = [v15 trackingProps];
      v17 = [v16 trackingType];

      [v9 bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = [v12 faceAnchor];
      v27 = +[JFXOrientationMonitor interfaceOrientation];
      v28 = [v15 playableAspectRatio];
      v29 = [v15 playableAspectRatioPreservationMode];
      v37 = *MEMORY[0x277CC08F0];
      v33 = v37;
      v38 = *(MEMORY[0x277CC08F0] + 16);
      v30 = v38;
      v31 = [JFXEffectEditingUtilities trackingTypeForOverlayPointIntersectionWithFaceRect:&v37 atTime:v17 relativeTo:v26 defaultTrackingType:0 faceAnchor:1 transformAnimation:v27 playableMediaContentMode:x playableInterfaceOrientation:y playableAspectRatio:v19 playableAspectRatioPreservationMode:v21, v23, v25, v28, v29];

      v32 = +[JFXOrientationMonitor interfaceOrientation];
      v37 = v33;
      v38 = v30;
      if ([JFXEffectEditingUtilities makeOverlayTrackedMaintainingAppearance:v15 atTime:&v37 newTrackingType:v31 arMetadata:v12 playableInterfaceOrientation:v32])
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __98__CFXCaptureViewController_EffectEditingAdditions__effectEditorView_didMoveEffect_withTouchPoint___block_invoke;
        block[3] = &unk_278D79C88;
        v35 = v9;
        v36 = v15;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  else
  {
  }
}

void __98__CFXCaptureViewController_EffectEditingAdditions__effectEditorView_didMoveEffect_withTouchPoint___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) trackingProps];
  [v1 notifyEffectTrackingDidChangeToType:{objc_msgSend(v2, "trackingType")}];
}

- (void)effectEditorView:(id)a3 didTransformEffect:(id)a4 transform:(CGAffineTransform *)a5 relativeToBounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = [a4 jtEffect];
  v12 = *&a5->c;
  v15[0] = *&a5->a;
  v15[1] = v12;
  v15[2] = *&a5->tx;
  v13 = *MEMORY[0x277CC08F0];
  v14 = *(MEMORY[0x277CC08F0] + 16);
  [JFXEffectEditingUtilities addTransformToEffect:v11 transform:v15 relativeToBounds:&v13 time:1 restrictToBounds:x, y, width, height];
}

- (CGRect)effectEditorView:(id)a3 frameForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4;
  v10 = [v9 jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [v9 jtEffect];
    v25 = *MEMORY[0x277CC08F0];
    v26 = *(MEMORY[0x277CC08F0] + 16);
    [v12 imageFrameAtTime:&v25 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{x, y, width, height}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v14 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v20 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)effectEditorView:(id)a3 hitAreaBoundingFrameForEffect:(id)a4 adjustForMinimumSize:(BOOL)a5 relativeToBounds:(CGRect)a6
{
  v6 = a5;
  v8 = a4;
  v9 = [v8 jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [v8 jtEffect];
    v12 = [(CFXCaptureViewController *)self cameraViewController];
    [v12 normalizedMinimumHitTestArea];
    v25 = *MEMORY[0x277CC08F0];
    v26 = *(MEMORY[0x277CC08F0] + 16);
    [v11 hitAreaBoundingFrameAtTime:&v25 forcePosterFrame:1 includeDropShadow:1 adjustForMinimumSize:v6 normalizedMinimumSize:1 relativeTo:? basisOrigin:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v14 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v20 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)effectEditorView:(id)a3 overlayEffectFrameForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  v7 = [a4 jtEffect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *MEMORY[0x277CC08F0];
    v11 = *(MEMORY[0x277CC08F0] + 16);
    v8 = [JFXOverlayEffectFrame frameWithEffect:v7 relativeToSize:1 origin:&v10 time:1 forcePosterFrame:1 includeDropShadow:1 includeTextFrames:width, height];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGPoint)effectEditorView:(id)a3 removeButtonPositionForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v30 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  *&v28.a = *MEMORY[0x277CBF2C0];
  *&v28.c = v11;
  *&v28.tx = *(MEMORY[0x277CBF2C0] + 32);
  v12 = +[JFXOrientationMonitor deviceInterfaceOrientation];
  v13 = +[JFXOrientationMonitor interfaceOrientation];
  if ([(CFXCaptureViewController *)self captureMode]== 1)
  {
    [(CFXCaptureViewController *)self overlayTransformForLocalViewfinder];
  }

  if (v12 != v13)
  {
    v14 = 0.0;
    v15 = 0.0;
    if (v12 != 1)
    {
      if (v12 == 3)
      {
        v15 = 1.57079633;
      }

      else if (v12 == 4)
      {
        v15 = -1.57079633;
      }

      else
      {
        v15 = 3.14159265;
        if (v12 != 2)
        {
          v15 = 0.0;
        }
      }
    }

    if (v13 != 1)
    {
      if (v13 == 3)
      {
        v14 = 1.57079633;
      }

      else if (v13 == 4)
      {
        v14 = -1.57079633;
      }

      else
      {
        v14 = 3.14159265;
        if (v13 != 2)
        {
          v14 = 0.0;
        }
      }
    }

    v16 = v15 - v14;
    v17 = JFXLog_viewerUI();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      switch(v12)
      {
        case 1:
          v25 = @"UIInterfaceOrientationPortrait";
          break;
        case 3:
          v25 = @"UIInterfaceOrientationLandscapeRight";
          break;
        case 4:
          v25 = @"UIInterfaceOrientationLandscapeLeft";
          break;
        default:
          v25 = @"UIInterfaceOrientationPortraitUpsideDown";
          if (v12 != 2)
          {
            v25 = 0;
          }

          break;
      }

      switch(v13)
      {
        case 1:
          v26 = @"UIInterfaceOrientationPortrait";
          break;
        case 3:
          v26 = @"UIInterfaceOrientationLandscapeRight";
          break;
        case 4:
          v26 = @"UIInterfaceOrientationLandscapeLeft";
          break;
        default:
          v26 = @"UIInterfaceOrientationPortraitUpsideDown";
          if (v13 != 2)
          {
            v26 = 0;
          }

          break;
      }

      LODWORD(v29.a) = 138412802;
      *(&v29.a + 4) = v25;
      WORD2(v29.b) = 2112;
      *(&v29.b + 6) = v26;
      HIWORD(v29.c) = 2048;
      v29.d = v16;
      _os_log_debug_impl(&dword_242A3B000, v17, OS_LOG_TYPE_DEBUG, "removeButtonPositionForEffect deviceOrientation %@ windowInterfaceOrientation %@ rotation %f", &v29, 0x20u);
    }

    v27 = v28;
    CGAffineTransformRotate(&v29, &v27, v16);
    v28 = v29;
  }

  v18 = [v10 jtEffect];
  *&v27.a = *MEMORY[0x277CC08F0];
  v27.c = *(MEMORY[0x277CC08F0] + 16);
  v29 = v28;
  [JFXEffectEditingUtilities removeButtonPositionForEffect:v18 atTime:&v27 atPosterFrameRelativeToBounds:&v29 viewCorrectionTransform:x, y, width, height];
  v20 = v19;
  v22 = v21;

  v23 = v20;
  v24 = v22;
  result.y = v24;
  result.x = v23;
  return result;
}

- (id)effectEditorView:(id)a3 textEditingPropertiesForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = [a4 jtEffect];
  v12 = *MEMORY[0x277CC08F0];
  v13 = *(MEMORY[0x277CC08F0] + 16);
  v10 = [JFXEffectEditingUtilities newTextEditingPropertiesForEffect:v9 relativeTo:&v12 atTime:0 withNewText:x, y, width, height];

  return v10;
}

- (id)effectEditorView:(id)a3 textForEffect:(id)a4
{
  v4 = [a4 jtEffect];
  v5 = [JFXEffectEditingUtilities textForEffect:v4];

  return v5;
}

- (void)effectEditorView:(id)a3 didBeginEditingTextForEffect:(id)a4
{
  v4 = [a4 jtEffect];
  [JFXEffectEditingUtilities beginTextEditingForEffect:v4];
}

- (void)effectEditorView:(id)a3 didEndEditingTextForEffect:(id)a4 wasCancelled:(BOOL)a5
{
  v5 = a4;
  v6 = [v5 jtEffect];
  [JFXEffectEditingUtilities updateEffectToDefaultTextIfEmpty:v6];

  v7 = [v5 jtEffect];

  [JFXEffectEditingUtilities endTextEditingForEffect:v7];
}

- (BOOL)effectEditorView:(id)a3 shouldEditTextForEffect:(id)a4
{
  v4 = [a4 jtEffect];
  v5 = [JFXEffectEditingUtilities canEditTextForEffect:v4];

  return v5;
}

- (BOOL)effectEditorView:(id)a3 presentCustomTextEditingUI:(id)a4
{
  v5 = [a4 jtEffect];
  [(CFXCaptureViewController *)self presentFullScreenTextEditorForEffect:v5 insertingEffect:0];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__CFXCaptureViewController_EffectEditingAdditions__effectEditorView_presentCustomTextEditingUI___block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  return 1;
}

- (unint64_t)effectEditorView:(id)a3 maximumTextLengthForEffect:(id)a4
{
  v4 = [a4 jtEffect];
  v5 = [JFXEffectEditingUtilities maximumTextLengthForEffect:v4];

  return v5;
}

- (BOOL)effectEditorView:(id)a3 isFaceTrackingDataAvailableForEffect:(id)a4
{
  v4 = [a4 jtEffect];
  v5 = [v4 type];

  if (v5 != 2)
  {
    return 0;
  }

  return +[JFXEffectEditingUtilities isFaceTrackingDataAvailable];
}

- (BOOL)effectEditorView:(id)a3 isFaceTrackingEffect:(id)a4
{
  v4 = a4;
  v5 = [v4 jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 jtEffect];
    v8 = [v7 isCurrentlyTracking];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)fullScreenTextEditViewController:(id)a3 shouldDisableEditingAnimationForEffect:(id)a4
{
  memset(&v5[1], 0, sizeof(CGAffineTransform));
  [(CFXCaptureViewController *)self overlayTransformForLocalViewfinder:a3];
  v5[0] = v5[1];
  return !CGAffineTransformIsIdentity(v5);
}

- (void)fullScreenTextEditViewController:(id)a3 didBeginAnimationBeforeEditingEffect:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [a4 jtEffect];
  [v8 setHidden:1];

  v9 = [(CFXCaptureViewController *)self cameraViewController];
  [v9 executeAfterNextFrameIsRendered:v7];
}

- (void)fullScreenTextEditViewController:(id)a3 didBeginEditingEffect:(id)a4
{
  v4 = [a4 jtEffect];
  [v4 setHidden:1];
}

- (void)fullScreenTextEditViewController:(id)a3 willBeginAnimationAfterEditingEffect:(id)a4 updatedText:(id)a5
{
  v6 = a5;
  v7 = [a4 jtEffect];
  [JFXEffectEditingUtilities updateEffectText:v7 newText:v6];
}

- (void)fullScreenTextEditViewController:(id)a3 didFinishAnimationAfterEditingEffect:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [a4 jtEffect];
  [v8 setHidden:0];

  v9 = [(CFXCaptureViewController *)self cameraViewController];
  [v9 executeAfterNextFrameIsRendered:v7];
}

- (void)fullScreenTextEditViewController:(id)a3 didFinishEditingEffect:(id)a4 withUpdatedText:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = [v13 jtEffect];
  [JFXEffectEditingUtilities updateEffectText:v8 newText:v7];

  v9 = [v13 jtEffect];
  [v9 setHidden:0];

  if (isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    v10 = [v13 jtEffect];
    v11 = [v10 type];

    if (v11 == 2)
    {
      v12 = [v13 jtEffect];
      [(CFXCaptureViewController *)self enableAnimationForOverlayEffect:v12];
    }
  }
}

- (void)fullScreenTextEditViewController:(id)a3 didFinishEditingByRemovingEffect:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = JFXLog_effects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 jtEffect];
    v8 = NSStringFromJFXEffectType([v7 type]);
    v9 = [v5 localizedTitle];
    *buf = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_242A3B000, v6, OS_LOG_TYPE_DEFAULT, "Removing effect - type: %{public}@, name: %{public}@", buf, 0x16u);
  }

  v10 = [(CFXCaptureViewController *)self composition];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __118__CFXCaptureViewController_EffectEditingAdditions__fullScreenTextEditViewController_didFinishEditingByRemovingEffect___block_invoke;
  v15[3] = &unk_278D79D20;
  v15[4] = self;
  [v10 removeEffect:v5 completion:v15];

  v11 = CFXLog_action();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(CFXCaptureViewController *)self composition];
    v13 = [v12 jtEffects];
    v14 = [CFXActionLogging actionLogAsJSONForEvent:@"effect removed" atLocation:@"live" withEffectStack:v13];
    *buf = 138543362;
    v17 = v14;
    _os_log_impl(&dword_242A3B000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

void __118__CFXCaptureViewController_EffectEditingAdditions__fullScreenTextEditViewController_didFinishEditingByRemovingEffect___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 composition];
  [v1 effectCompositionDidChange:v2];
}

- (void)CFX_executeBlockAfterNextFrameRendered:(id)a3
{
  v4 = a3;
  v5 = [(CFXCaptureViewController *)self cameraViewController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__CFXCaptureViewController_EffectEditingAdditions__CFX_executeBlockAfterNextFrameRendered___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 executeAfterNextFrameIsRendered:v7];
}

void __91__CFXCaptureViewController_EffectEditingAdditions__CFX_executeBlockAfterNextFrameRendered___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cameraViewController];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __91__CFXCaptureViewController_EffectEditingAdditions__CFX_executeBlockAfterNextFrameRendered___block_invoke_2;
  v3[3] = &unk_278D7A168;
  v4 = *(a1 + 40);
  [v2 executeAfterNextFrameIsRendered:v3];
}

void __91__CFXCaptureViewController_EffectEditingAdditions__CFX_executeBlockAfterNextFrameRendered___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__CFXCaptureViewController_EffectEditingAdditions__CFX_executeBlockAfterNextFrameRendered___block_invoke_3;
  block[3] = &unk_278D7A168;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)zoomControl:(const char *)a1 didChangeZoomFactor:(NSObject *)a2 interactionType:(double)a3 .cold.1(const char *a1, NSObject *a2, double a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2();
  v7 = 2048;
  v8 = a3;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "---- %@: actualZoomFactor=%.3f", v6, 0x16u);
}

- (void)liveCaptureViewController:livePreviewPannedAtNormalizedPoint:gesture:.cold.7()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)liveCaptureViewController:livePreviewPannedAtNormalizedPoint:gesture:.cold.8()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)liveCaptureViewController:livePreviewPinchedAtNormalizedCenterPoint:gesture:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)liveCaptureViewController:livePreviewPinchedAtNormalizedCenterPoint:gesture:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)liveCaptureViewController:livePreviewRotatedAtNormalizedCenterPoint:gesture:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)liveCaptureViewController:livePreviewRotatedAtNormalizedCenterPoint:gesture:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __47__CFXCaptureViewController_stopVideoRecording___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = &stru_28553D028;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = &stru_28553D028;
  }

  else
  {
    v6 = @"(ONLY)";
  }

  v7 = *a2;
  if (v5)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\nmetadata written to: %@", v5];
  }

  *buf = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = v4;
  _os_log_debug_impl(&dword_242A3B000, log, OS_LOG_TYPE_DEBUG, "successful video %@ written to %@%@", buf, 0x20u);
  if (v5)
  {
  }
}

void __44__CFXCaptureViewController_JFX_capturePhoto__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_242A3B000, a2, OS_LOG_TYPE_ERROR, "failed to take still: %@{public}", v4, 0xCu);
}

@end