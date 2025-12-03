@interface CFXCaptureViewController
- ($76EADD4ED24426C67044446678BAA581)dynamicShutterSettings;
- (BOOL)CFX_isRenderingAnimatedOverlaysThatDontLoop;
- (BOOL)CFX_isZoomAllowed;
- (BOOL)canToggleBetweenZoomFactorsForZoomControl:(id)control;
- (BOOL)effectEditorView:(id)view isEffectAtPoint:(CGPoint)point effect:(id)effect;
- (BOOL)effectEditorView:(id)view isFaceTrackingDataAvailableForEffect:(id)effect;
- (BOOL)effectEditorView:(id)view isFaceTrackingEffect:(id)effect;
- (BOOL)effectEditorView:(id)view presentCustomTextEditingUI:(id)i;
- (BOOL)effectEditorView:(id)view shouldEditTextForEffect:(id)effect;
- (BOOL)fullScreenTextEditViewController:(id)controller shouldDisableEditingAnimationForEffect:(id)effect;
- (BOOL)isEditingEffect;
- (BOOL)isFaceTrackingDataAvailable;
- (BOOL)isMessagesOnPhone;
- (BOOL)livePlayerIsSaturated;
- (BOOL)passThroughContainerView:(id)view shouldHandleTouchWithinView:(id)withinView atPoint:(CGPoint)point;
- (BOOL)presentFullScreenTextEditorForEffect:(id)effect insertingEffect:(BOOL)insertingEffect;
- (BOOL)shouldPerformSegueWithIdentifier:(id)identifier sender:(id)sender;
- (BOOL)shouldShowAnimojiFaceReticle;
- (BOOL)shouldUseFaceTracking;
- (BOOL)useLocalCameraViewfinder;
- (CFXCaptureViewControllerDelegate)delegate;
- (CFXEffectBrowserContentPresenterViewController)effectBrowserContentPresenterViewController;
- (CFXEffectComposition)composition;
- (CGAffineTransform)overlayTransformForLocalViewfinder;
- (CGPoint)effectEditorView:(id)view removeButtonPositionForEffect:(id)effect relativeToBounds:(CGRect)bounds;
- (CGPoint)effectEditorView:(id)view spacingBetweenCenterPointOfEffect:(id)effect point:(CGPoint)point relativeToBounds:(CGRect)bounds;
- (CGRect)CFX_cameraViewFinderUncroppedFrame;
- (CGRect)CFX_generateAutoRotationCorrectionFrameWithInterfaceOrientation:(int64_t)orientation;
- (CGRect)bottomBarCTMControlsFrameForWindowOrientation:(int64_t)orientation bounds:(CGRect)bounds;
- (CGRect)effectEditorView:(id)view frameForEffect:(id)effect relativeToBounds:(CGRect)bounds;
- (CGRect)effectEditorView:(id)view hitAreaBoundingFrameForEffect:(id)effect adjustForMinimumSize:(BOOL)size relativeToBounds:(CGRect)bounds;
- (CGRect)externalUncroppedPresentationRect;
- (CGRect)presentationRect;
- (CGRect)zoomControlFrame;
- (CGRect)zoomSliderFrame;
- (UIView)effectsPickerDrawer;
- (double)CFX_maxZoomForCamera;
- (double)userInterfaceAlpha;
- (id)effectEditorView:(id)view effectAtPoint:(CGPoint)point;
- (id)effectEditorView:(id)view overlayEffectFrameForEffect:(id)effect relativeToBounds:(CGRect)bounds;
- (id)effectEditorView:(id)view textEditingPropertiesForEffect:(id)effect relativeToBounds:(CGRect)bounds;
- (id)effectEditorView:(id)view textForEffect:(id)effect;
- (id)liveCaptureSnapshot;
- (int64_t)CFX_camFlashModeForCaptureFlashMode:(int64_t)mode;
- (int64_t)CFX_captureFlashModeForCAMFlashMode:(int64_t)mode;
- (int64_t)CFX_captureTorchModeForCAMFlashMode:(int64_t)mode;
- (int64_t)flashMode;
- (unint64_t)effectEditorView:(id)view maximumTextLengthForEffect:(id)effect;
- (void)CFX_addEffect:(id)effect allowImmediateTextEditing:(BOOL)editing;
- (void)CFX_adjustOverlaysForCaptureOrientationChanged:(int64_t)changed oldCaptureOrientation:(int64_t)orientation;
- (void)CFX_applyAutoRotationCorrectionToEditorViews;
- (void)CFX_executeBlockAfterNextFrameRendered:(id)rendered;
- (void)CFX_getCAMCaptureForPosition:(int64_t)position type:(id)type captureDevice:(int64_t *)device captureDevicePosition:(int64_t *)devicePosition captureMode:(int64_t *)mode;
- (void)CFX_getCaptureDevice:(int64_t *)device captureDevicePosition:(int64_t *)position captureMode:(int64_t *)mode;
- (void)CFX_handleZoomPinchGestureRecognizer:(id)recognizer;
- (void)CFX_hideAppStripUpperBackgroundView:(BOOL)view;
- (void)CFX_performBackCameraZoomWithPinchGestureRecognizer:(id)recognizer;
- (void)CFX_performFrontCameraZoomWithPinchGestureRecognizer:(id)recognizer;
- (void)CFX_respondToShutterPress;
- (void)CFX_setFrameAndRenderSizes;
- (void)CFX_setZoomSliderFromZoomFactor:(double)factor;
- (void)CFX_toggleCaptureUI;
- (void)JFX_capturePhoto;
- (void)JFX_orientationMonitorDeviceInterfaceOrientationNotification:(id)notification;
- (void)JFX_orientationMonitorInterfaceOrientationNotification:(id)notification;
- (void)addEffect:(id)effect allowImmediateTextEditing:(BOOL)editing;
- (void)addOverlayEffect:(id)effect atNormalizedPlanePoint:(CGPoint)point scale:(double)scale rotationAngle:(double)angle;
- (void)addOverlayEffect:(id)effect atScreenLocation:(CGPoint)location atScreenSize:(CGSize)size rotationAngle:(double)angle;
- (void)applyAutoRotationCorrectionToEditorViewsWithTransitionCoordinator:(id)coordinator;
- (void)applyRotationTransformForPortrait;
- (void)cameraControlsViewControllerEffectsButtonWasTapped:(id)tapped;
- (void)cameraControlsViewControllerSwitchCameraButtonWasTapped:(id)tapped;
- (void)cameraDidStart;
- (void)cameraDidStop;
- (void)completedVideoRecordWithURL:(id)l metadataURL:(id)rL;
- (void)configureCTMUIForCaptureMode;
- (void)configureCaptureControlsForOrientationWithAnimation:(BOOL)animation;
- (void)configureUIForOrientation;
- (void)configureUIForWindowOrientation:(int64_t)orientation bounds:(CGRect)bounds;
- (void)configureWithControlsViewController:(id)controller;
- (void)configureZoomControl;
- (void)controlStatusBar:(id)bar didCreateIndicatorForType:(unint64_t)type;
- (void)controlStatusBar:(id)bar didReceiveTapInIndicatorForType:(unint64_t)type;
- (void)dealloc;
- (void)displayEffectEditorForEffect:(id)effect forMode:(unint64_t)mode;
- (void)doneButtonTapped:(id)tapped;
- (void)dynamicShutterControlDidShortPress:(id)press;
- (void)dynamicShutterControlDidStart:(id)start;
- (void)dynamicShutterControlStopLockedRecording;
- (void)effectCompositionDidChange:(id)change;
- (void)effectEditorView:(id)view didBeginEditingTextForEffect:(id)effect;
- (void)effectEditorView:(id)view didEditTextForEffect:(id)effect newText:(id)text;
- (void)effectEditorView:(id)view didEndEditingTextForEffect:(id)effect wasCancelled:(BOOL)cancelled;
- (void)effectEditorView:(id)view didMoveEffect:(id)effect withTouchPoint:(CGPoint)point;
- (void)effectEditorView:(id)view didRemoveEffect:(id)effect;
- (void)effectEditorView:(id)view didTransformEffect:(id)effect transform:(CGAffineTransform *)transform relativeToBounds:(CGRect)bounds;
- (void)effectEditorViewDidBeginEditing:(id)editing;
- (void)effectEditorViewDidEndEditing:(id)editing;
- (void)enableAnimationForOverlayEffect:(id)effect;
- (void)fadeInFaceInViewPromptLabel;
- (void)fadeOutFaceInViewPromptLabel;
- (void)flashModeDidChange;
- (void)fullScreenTextEditViewController:(id)controller didBeginAnimationBeforeEditingEffect:(id)effect completion:(id)completion;
- (void)fullScreenTextEditViewController:(id)controller didBeginEditingEffect:(id)effect;
- (void)fullScreenTextEditViewController:(id)controller didFinishAnimationAfterEditingEffect:(id)effect completion:(id)completion;
- (void)fullScreenTextEditViewController:(id)controller didFinishEditingByRemovingEffect:(id)effect;
- (void)fullScreenTextEditViewController:(id)controller didFinishEditingEffect:(id)effect withUpdatedText:(id)text;
- (void)fullScreenTextEditViewController:(id)controller willBeginAnimationAfterEditingEffect:(id)effect updatedText:(id)text;
- (void)handlePinchGestureRecognizer:(id)recognizer;
- (void)hideAnimojiFaceReticleForTrackingGain;
- (void)insertCamBottomBar:(id)bar;
- (void)layoutZoomControlForCTM;
- (void)layoutZoomControlRelativeToBottomBarAndPreview:(id)preview;
- (void)layoutZoomSliderRelativeToBottomBarAndPreview;
- (void)layoutZoomUI;
- (void)liveCaptureViewController:(id)controller didRenderFrame:(id)frame;
- (void)liveCaptureViewController:(id)controller livePreviewDoubleTappedAtNormalizedCenterPoint:(CGPoint)point gesture:(id)gesture;
- (void)liveCaptureViewController:(id)controller livePreviewPannedAtNormalizedPoint:(CGPoint)point gesture:(id)gesture;
- (void)liveCaptureViewController:(id)controller livePreviewPinchedAtNormalizedCenterPoint:(CGPoint)point gesture:(id)gesture;
- (void)liveCaptureViewController:(id)controller livePreviewRotatedAtNormalizedCenterPoint:(CGPoint)point gesture:(id)gesture;
- (void)liveCaptureViewController:(id)controller livePreviewTappedAtNormalizedPoint:(CGPoint)point;
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)removeAllEffectsAnimated:(BOOL)animated;
- (void)removeAllEffectsOfType:(id)type animated:(BOOL)animated;
- (void)removeAnimojiTrackingReticle;
- (void)removeEffectEditorAnimated:(BOOL)animated;
- (void)removeEffectsForCameraSwitch;
- (void)removeLiveCaptureSnapshot;
- (void)returnCTMUIToPhotoMode;
- (void)saveLiveCaptureSnapshotForReview;
- (void)setAspectRatioCrop:(int64_t)crop;
- (void)setCaptureMode:(int64_t)mode;
- (void)setDynamicShutterSettings:(id *)settings;
- (void)setEffectsPickerDrawer:(id)drawer;
- (void)setFlashMode:(int64_t)mode;
- (void)setLiveCapturePresentationFrame:(CGRect)frame withContentRect:(CGRect)rect;
- (void)setLiveCaptureViewController:(id)controller;
- (void)setTorchModeForFlashMode:(int64_t)mode;
- (void)setUseLocalCameraViewfinder:(BOOL)viewfinder;
- (void)setUserInterfaceAlpha:(double)alpha;
- (void)setupAnimojiFaceReticleForTrackingLoss;
- (void)setupFaceInViewPromptLabel;
- (void)showAnimojiFaceReticleForTrackingLoss;
- (void)showLiveCaptureSnapshotBlurred:(BOOL)blurred animated:(BOOL)animated completion:(id)completion;
- (void)startVideoRecording;
- (void)stopVideoRecording:(id)recording;
- (void)toggleBetweenZoomFactorsForZoomControl:(id)control;
- (void)toggleCTMFlashButton;
- (void)updateAnimojiTrackingReticleAndLabelLayout;
- (void)updateControlVisibilityAnimated:(BOOL)animated;
- (void)updateEffectEditorLayout;
- (void)updateFullScreenTextEditorLayout;
- (void)updateTopBar;
- (void)updateUIForDevicePosition:(int64_t)position;
- (void)updateUIForDockMagnify:(BOOL)magnify dockHeightDelta:(double)delta;
- (void)updateUIForVideoRecording:(BOOL)recording;
- (void)updateZoomUIForCapturing:(BOOL)capturing animated:(BOOL)animated;
- (void)updateZoomUIVisibility;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willDropCameraFrame;
- (void)zoomControl:(id)control didChangeZoomFactor:(double)factor interactionType:(int64_t)type;
- (void)zoomSliderDidBeginAutozooming:(id)autozooming;
- (void)zoomSliderDidEndAutozooming:(id)autozooming;
- (void)zoomSliderValueDidChange:(id)change forEvent:(id)event;
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice2 userInterfaceIdiom])
  {
    v10 = 0;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    if (v12 <= 811)
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
      v10 = v14 > 811;
    }

    else
    {
      v10 = 1;
    }
  }

  IsCTMSupported = CFXCaptureCapabilitiesIsCTMSupported();
  [(CFXCaptureViewController *)self setIsShowingAnimojiReticle:0];
  view = [(CFXCaptureViewController *)self view];
  [view setDelegate:self];

  [(CFXCaptureViewController *)self setObservingOrientationChanges:0];
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  cam_initialLayoutStyle = [currentDevice3 cam_initialLayoutStyle];

  v19 = [objc_alloc(MEMORY[0x277CF7EA0]) initWithLayoutStyle:cam_initialLayoutStyle];
  [(CFXCaptureViewController *)self setFlashButton:v19];

  flashButton = [(CFXCaptureViewController *)self flashButton];
  [flashButton setAllowsAutomaticFlash:1];

  flashButton2 = [(CFXCaptureViewController *)self flashButton];
  [flashButton2 reloadData];

  flashButton3 = [(CFXCaptureViewController *)self flashButton];
  [flashButton3 addTarget:self action:sel_flashModeDidChange forControlEvents:4096];

  flashButton4 = [(CFXCaptureViewController *)self flashButton];
  [flashButton4 setFlashMode:2];

  flashButton5 = [(CFXCaptureViewController *)self flashButton];
  [flashButton5 setExclusiveTouch:1];

  if (IsCTMSupported)
  {
    v25 = objc_alloc_init(MEMORY[0x277CF7E98]);
    [(CFXCaptureViewController *)self setElapsedTimeView:v25];

    elapsedTimeView = [(CFXCaptureViewController *)self elapsedTimeView];
    [elapsedTimeView setBackgroundStyle:3 animated:0];

    doneButton = [MEMORY[0x277D3D078] doneButton];
    [(CFXCaptureViewController *)self setDoneButton:doneButton];

    doneButton2 = [(CFXCaptureViewController *)self doneButton];
    [doneButton2 addTarget:self action:sel_doneButtonTapped_ forControlEvents:64];
  }

  else
  {
    v29 = [objc_alloc(MEMORY[0x277CF7E98]) initWithLayoutStyle:cam_initialLayoutStyle];
    [(CFXCaptureViewController *)self setElapsedTimeView:v29];

    doneButton3 = [MEMORY[0x277D3D078] doneButton];
    [(CFXCaptureViewController *)self setDoneButton:doneButton3];

    doneButton4 = [(CFXCaptureViewController *)self doneButton];
    [doneButton4 addTarget:self action:sel_doneButtonTapped_ forControlEvents:64];

    doneButton2 = [(CFXCaptureViewController *)self flashButton];
    topBar = [(CFXCaptureViewController *)self topBar];
    [topBar setFlashButton:doneButton2];
  }

  doneButton5 = [(CFXCaptureViewController *)self doneButton];
  topBar2 = [(CFXCaptureViewController *)self topBar];
  [topBar2 setDoneButton:doneButton5];

  if (userInterfaceIdiom)
  {
    if ([(CFXCaptureViewController *)self captureMode]!= 2)
    {
      goto LABEL_18;
    }

    elapsedTimeView2 = [(CFXCaptureViewController *)self elapsedTimeView];
    [elapsedTimeView2 intrinsicContentSize];
    v37 = v36;
    v39 = v38;

    elapsedTimeView3 = [(CFXCaptureViewController *)self elapsedTimeView];
    [elapsedTimeView3 setFrame:{0.0, 23.0, v37, v39}];

    view2 = [(CFXCaptureViewController *)self view];
    elapsedTimeView4 = [(CFXCaptureViewController *)self elapsedTimeView];
    [view2 addSubview:elapsedTimeView4];

    elapsedTimeView5 = [(CFXCaptureViewController *)self elapsedTimeView];
    [elapsedTimeView5 setUserInteractionEnabled:0];
  }

  else
  {
    if (IsCTMSupported)
    {
      elapsedTimeView5 = [(CFXCaptureViewController *)self view];
      elapsedTimeView6 = [(CFXCaptureViewController *)self elapsedTimeView];
      [elapsedTimeView5 addSubview:elapsedTimeView6];
    }

    else
    {
      elapsedTimeView5 = [(CFXCaptureViewController *)self elapsedTimeView];
      elapsedTimeView6 = [(CFXCaptureViewController *)self topBar];
      [elapsedTimeView6 setElapsedTimeView:elapsedTimeView5];
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
  topBarContaineHeightConstraint = [(CFXCaptureViewController *)self topBarContaineHeightConstraint];
  [topBarContaineHeightConstraint setConstant:v57];

  if (v10)
  {
    topBarTopConstraint = [(CFXCaptureViewController *)self topBarTopConstraint];
    [topBarTopConstraint setConstant:v55];
  }

  [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:0];
  v60 = dispatch_group_create();
  [(CFXCaptureViewController *)self setEditingOverlayWithGestureGroup:v60];

  topBar3 = [(CFXCaptureViewController *)self topBar];
  [topBar3 setOrientation:1];

  topBar4 = [(CFXCaptureViewController *)self topBar];
  [topBar4 setVisibilityUpdateDelegate:self];

  if (!isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    capabilities = [MEMORY[0x277CF7E78] capabilities];
    if ([capabilities zoomControlSupported])
    {
      v64 = [objc_alloc(MEMORY[0x277CF7ED0]) initWithLayoutStyle:cam_initialLayoutStyle];
      [(CFXCaptureViewController *)self setZoomControl:v64];

      zoomControl = [(CFXCaptureViewController *)self zoomControl];
      [zoomControl setDelegate:self];

      view3 = [(CFXCaptureViewController *)self view];
      [(CFXCaptureViewController *)self zoomControl];
    }

    else
    {
      v67 = [objc_alloc(MEMORY[0x277CF7EE0]) initWithLayoutStyle:cam_initialLayoutStyle];
      [(CFXCaptureViewController *)self setZoomSlider:v67];

      zoomSlider = [(CFXCaptureViewController *)self zoomSlider];
      [zoomSlider setDelegate:self];

      zoomSlider2 = [(CFXCaptureViewController *)self zoomSlider];
      [zoomSlider2 setExclusiveTouch:1];

      zoomSlider3 = [(CFXCaptureViewController *)self zoomSlider];
      [zoomSlider3 setMinimumValue:0.0];

      zoomSlider4 = [(CFXCaptureViewController *)self zoomSlider];
      LODWORD(v72) = 1.0;
      [zoomSlider4 setMaximumValue:v72];

      zoomSlider5 = [(CFXCaptureViewController *)self zoomSlider];
      [zoomSlider5 addTarget:self action:sel_zoomSliderValueDidChange_forEvent_ forControlEvents:4096];

      zoomSlider6 = [(CFXCaptureViewController *)self zoomSlider];
      [zoomSlider6 setAlpha:0.0];

      view3 = [(CFXCaptureViewController *)self view];
      [(CFXCaptureViewController *)self zoomSlider];
    }
    v75 = ;
    [view3 addSubview:v75];

    [(CFXCaptureViewController *)self updateZoomUIVisibility];
  }

  if ([(CFXCaptureViewController *)self isMessagesOnPhone])
  {
    cameraControls = [(CFXCaptureViewController *)self cameraControls];
    effectBrowserContentPresenterViewController = [cameraControls effectBrowserContentPresenterViewController];
    [(CFXCaptureViewController *)self setEffectBrowserContentPresenterViewController:effectBrowserContentPresenterViewController];
  }

  else
  {
    effectBrowserContentPresenterViewController2 = [(CFXCaptureViewController *)self effectBrowserContentPresenterViewController];

    if (!effectBrowserContentPresenterViewController2)
    {
      goto LABEL_30;
    }

    cameraControls = [(CFXCaptureViewController *)self effectBrowserContentPresenterViewController];
    [(UIViewController *)self jfxAddChildViewController:cameraControls];
  }

LABEL_30:
  isMessagesOnPhone = [(CFXCaptureViewController *)self isMessagesOnPhone];
  cameraControlsContainerView = [(CFXCaptureViewController *)self cameraControlsContainerView];
  [cameraControlsContainerView setHidden:isMessagesOnPhone];

  [(CFXCaptureViewController *)self setConfiguredForOrientation:0];
  [(CFXCaptureViewController *)self setSwitchedToVideoMode:0];
  if (IsCTMSupported)
  {
    v81 = MTLCreateSystemDefaultDevice();
    v82 = objc_alloc(MEMORY[0x277CF7E90]);
    newCommandQueue = [v81 newCommandQueue];
    v84 = [v82 initWithMetalDevice:v81 commandQueue:newCommandQueue];
    [(CFXCaptureViewController *)self setDynamicShutterControl:v84];

    dynamicShutterControl = [(CFXCaptureViewController *)self dynamicShutterControl];
    [dynamicShutterControl setDelegate:self];

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

    view4 = [(CFXCaptureViewController *)self view];
    bottomControlsContainer = [(CFXCaptureViewController *)self bottomControlsContainer];
    [view4 addSubview:bottomControlsContainer];

    topBar5 = [(CFXCaptureViewController *)self topBar];
    [topBar5 setHidden:1];

    v92 = objc_alloc_init(MEMORY[0x277CF7E80]);
    [(CFXCaptureViewController *)self setControlStatusBar:v92];

    controlStatusBar = [(CFXCaptureViewController *)self controlStatusBar];
    [controlStatusBar setDelegate:self];

    controlStatusBar2 = [(CFXCaptureViewController *)self controlStatusBar];
    [controlStatusBar2 setPrimaryDesiredIndicatorTypes:&unk_28556D9C8];

    controlStatusBar3 = [(CFXCaptureViewController *)self controlStatusBar];
    flashIndicator = [controlStatusBar3 flashIndicator];
    [flashIndicator addTarget:self action:sel_flashModeDidChange forControlEvents:4096];

    v97 = *MEMORY[0x277D768C8];
    v98 = *(MEMORY[0x277D768C8] + 8);
    v99 = *(MEMORY[0x277D768C8] + 16);
    v100 = *(MEMORY[0x277D768C8] + 24);
    doneButton6 = [(CFXCaptureViewController *)self doneButton];
    [doneButton6 setTappableEdgeInsets:{v97, v98, v99, v100}];

    doneButton7 = [(CFXCaptureViewController *)self doneButton];
    controlStatusBar4 = [(CFXCaptureViewController *)self controlStatusBar];
    [controlStatusBar4 setSecondaryAccessoryControl:doneButton7];

    view5 = [(CFXCaptureViewController *)self view];
    controlStatusBar5 = [(CFXCaptureViewController *)self controlStatusBar];
    [view5 addSubview:controlStatusBar5];

    [(CFXCaptureViewController *)self configureCTMUIForCaptureMode];
    v106 = [objc_alloc(MEMORY[0x277CF7EC8]) initWithFrame:{v3, v4, v5, v6}];
    [(CFXCaptureViewController *)self setReticleView:v106];

    view6 = [(CFXCaptureViewController *)self view];
    reticleView = [(CFXCaptureViewController *)self reticleView];
    [view6 insertSubview:reticleView atIndex:0];
  }

  v109 = objc_opt_new();
  [(CFXCaptureViewController *)self setRunOnceAnimatedOverlays:v109];

  [(CFXCaptureViewController *)self setIsExternalCaptureSessionAnExternalCamera:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v26.receiver = self;
  v26.super_class = CFXCaptureViewController;
  [(CFXCaptureViewController *)&v26 viewWillAppear:appear];
  [(CFXCaptureViewController *)self updateTopBar];
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = [v4 initWithSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  [(CFXCaptureViewController *)self setPresentationView:v5];

  presentationView = [(CFXCaptureViewController *)self presentationView];
  [presentationView setUserInteractionEnabled:0];

  if ([(CFXCaptureViewController *)self isMessagesOnPhone])
  {
    [(CFXCaptureViewController *)self nonTransformedContainerView];
  }

  else
  {
    [(CFXCaptureViewController *)self view];
  }
  v7 = ;
  presentationView2 = [(CFXCaptureViewController *)self presentationView];
  [v7 addSubview:presentationView2];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
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
      bottomControlsContainer = [(CFXCaptureViewController *)self bottomControlsContainer];
      [bottomControlsContainer setBackgroundColor:v24];
    }
  }

  [(CFXCaptureViewController *)self configureCaptureControlsForOrientationWithAnimation:0];
  [(CFXCaptureViewController *)self configureUIForOrientation];
  [(CFXCaptureViewController *)self CFX_applyAutoRotationCorrectionToEditorViews];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CFXCaptureViewController;
  [(CFXCaptureViewController *)&v5 viewWillDisappear:disappear];
  runOnceAnimatedOverlays = [(CFXCaptureViewController *)self runOnceAnimatedOverlays];
  [runOnceAnimatedOverlays removeAllObjects];
}

- (CGRect)CFX_generateAutoRotationCorrectionFrameWithInterfaceOrientation:(int64_t)orientation
{
  [(CFXCaptureViewController *)self externalUncroppedPresentationRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view = [(CFXCaptureViewController *)self view];
  superview = [view superview];
  [superview frame];
  v16 = v15;

  switch(orientation)
  {
    case 2:
      view2 = [(CFXCaptureViewController *)self view];
      [view2 bounds];
      Width = CGRectGetWidth(v41);
      v42.origin.x = v6;
      v42.origin.y = v8;
      v42.size.width = v10;
      v42.size.height = v12;
      v23 = Width - CGRectGetWidth(v42) - v6;

      view3 = [(CFXCaptureViewController *)self view];
      [view3 bounds];
      Height = CGRectGetHeight(v43);
      v44.origin.x = v6;
      v44.origin.y = v8;
      v44.size.width = v10;
      v44.size.height = v12;
      v19 = Height - CGRectGetHeight(v44) - v8;

      goto LABEL_7;
    case 3:
      view4 = [(CFXCaptureViewController *)self view];
      [view4 bounds];
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
      view5 = [(CFXCaptureViewController *)self view];
      [view5 bounds];
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

    view = [(CFXCaptureViewController *)self view];
    [view bounds];
    Width = CGRectGetWidth(v68);

    view2 = [(CFXCaptureViewController *)self view];
    [view2 bounds];
    Height = CGRectGetHeight(v69);

    if (Width >= Height)
    {
      v23 = Height;
    }

    else
    {
      v23 = Width;
    }

    view3 = [(CFXCaptureViewController *)self view];
    [view3 bounds];
    v25 = CGRectGetWidth(v70);

    view4 = [(CFXCaptureViewController *)self view];
    [view4 bounds];
    v27 = CGRectGetHeight(v71);

    if (v25 < v27)
    {
      v25 = v27;
    }

    v28 = *MEMORY[0x277CBF348];
    v29 = *(MEMORY[0x277CBF348] + 8);
    liveCaptureContainerContainer = [(CFXCaptureViewController *)self liveCaptureContainerContainer];
    [liveCaptureContainerContainer setBounds:{v28, v29, v23, v25}];

    view5 = [(CFXCaptureViewController *)self view];
    [view5 center];
    v33 = v32;
    v35 = v34;
    liveCaptureContainerContainer2 = [(CFXCaptureViewController *)self liveCaptureContainerContainer];
    [liveCaptureContainerContainer2 setCenter:{v33, v35}];

    v62 = v63;
    liveCaptureContainerContainer3 = [(CFXCaptureViewController *)self liveCaptureContainerContainer];
    buf = v62;
    [liveCaptureContainerContainer3 setTransform:&buf];

    liveCaptureContainer = [(CFXCaptureViewController *)self liveCaptureContainer];
    [liveCaptureContainer setFrame:{v59, v7, v18, v60}];

    effectEditorContainerView = [(CFXCaptureViewController *)self effectEditorContainerView];
    [effectEditorContainerView setBounds:{v28, v29, v57, v25}];

    view6 = [(CFXCaptureViewController *)self view];
    [view6 center];
    v42 = v41;
    v44 = v43;
    effectEditorContainerView2 = [(CFXCaptureViewController *)self effectEditorContainerView];
    [effectEditorContainerView2 setCenter:{v42, v44}];

    v61 = v63;
    effectEditorContainerView3 = [(CFXCaptureViewController *)self effectEditorContainerView];
    buf = v61;
    [effectEditorContainerView3 setTransform:&buf];

    effectEditor = [(CFXCaptureViewController *)self effectEditor];
    [effectEditor setFrame:{v59, v7, v58, v60}];

    [(CFXCaptureViewController *)self presentationRect];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    presentationView = [(CFXCaptureViewController *)self presentationView];
    [presentationView setFrame:{v49, v51, v53, v55}];

    [(CFXCaptureViewController *)self updateAnimojiTrackingReticleAndLabelLayout];
  }
}

- (void)applyAutoRotationCorrectionToEditorViewsWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (coordinatorCopy)
  {
    effectEditor = [(CFXCaptureViewController *)self effectEditor];
    [effectEditor setHidden:1];

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __94__CFXCaptureViewController_applyAutoRotationCorrectionToEditorViewsWithTransitionCoordinator___block_invoke;
    v6[3] = &unk_278D7B4B8;
    v6[4] = self;
    [coordinatorCopy animateAlongsideTransition:0 completion:v6];
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

- (void)CFX_adjustOverlaysForCaptureOrientationChanged:(int64_t)changed oldCaptureOrientation:(int64_t)orientation
{
  v98 = *MEMORY[0x277D85DE8];
  v7 = +[CFXMediaSettings sharedInstance];
  [v7 renderSize];
  v9 = v8;
  v11 = v10;

  v12 = 0.0;
  angle = 0.0;
  if (changed != orientation)
  {
    v13 = 0.0;
    if (changed != 1)
    {
      if (changed == 3)
      {
        v13 = 1.57079633;
      }

      else if (changed == 4)
      {
        v13 = -1.57079633;
      }

      else
      {
        v13 = 3.14159265;
        if (changed != 2)
        {
          v13 = 0.0;
        }
      }
    }

    if (orientation != 1)
    {
      if (orientation == 3)
      {
        v12 = 1.57079633;
      }

      else if (orientation == 4)
      {
        v12 = -1.57079633;
      }

      else
      {
        v12 = 3.14159265;
        if (orientation != 2)
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
    switch(changed)
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
        if (changed != 2)
        {
          v15 = 0;
        }

        break;
    }

    switch(orientation)
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
        if (orientation != 2)
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
  selfCopy = self;
  composition = [(CFXCaptureViewController *)self composition];
  effects = [composition effects];

  v19 = [effects countByEnumeratingWithState:&v86 objects:v97 count:16];
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
          objc_enumerationMutation(effects);
        }

        v31 = *(*(&v86 + 1) + 8 * i);
        jtEffect = [v31 jtEffect];
        type = [jtEffect type];

        if (type == 2)
        {
          jtEffect2 = [v31 jtEffect];
          trackingProps = [jtEffect2 trackingProps];
          trackingType = [trackingProps trackingType];

          if (trackingType == 2)
          {
            if (jtEffect2)
            {
              [jtEffect2 topLevelTransform];
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
            [jtEffect2 setTopLevelTransform:&buf];
          }

          else if (!trackingType)
          {
            *&buf.a = *v28;
            v76 = *&buf.a;
            buf.c = *(v28 + 16);
            c = buf.c;
            [jtEffect2 imageFrameAtTime:&buf forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{0.0, 0.0, v9, v11}];
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
            [v46 addTransformToEffect:jtEffect2 transform:&buf relativeToBounds:&v85 time:0 restrictToBounds:{0.0, 0.0, v9, v11}];
            *&buf.a = v76;
            buf.c = c;
            [jtEffect2 imageFrameAtTime:&buf forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{0.0, 0.0, v9, v11}];
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
            [v56 addTransformToEffect:jtEffect2 transform:&v85 relativeToBounds:&v83 time:0 restrictToBounds:{0.0, 0.0, v9, v11}];
          }
        }
      }

      v20 = [effects countByEnumeratingWithState:&v86 objects:v97 count:16];
    }

    while (v20);
  }

  v62 = CFXLog_action();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    composition2 = [(CFXCaptureViewController *)selfCopy composition];
    jtEffects = [composition2 jtEffects];
    v65 = [CFXActionLogging actionLogAsJSONForEvent:@"device rotated" atLocation:@"live" withEffectStack:jtEffects];
    LODWORD(buf.a) = 138543362;
    *(&buf.a + 4) = v65;
    _os_log_impl(&dword_242A3B000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@", &buf, 0xCu);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v15 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = CFXCaptureViewController;
  [(CFXCaptureViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    [(CFXCaptureViewController *)self applyAutoRotationCorrectionToEditorViewsWithTransitionCoordinator:coordinatorCopy];
  }

  else
  {
    v8 = CFXLog_action();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      composition = [(CFXCaptureViewController *)self composition];
      jtEffects = [composition jtEffects];
      v11 = [CFXActionLogging actionLogAsJSONForEvent:@"device rotated" atLocation:@"live" withEffectStack:jtEffects];
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

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  segueCopy = segue;
  destinationViewController = [segueCopy destinationViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    destinationViewController2 = [segueCopy destinationViewController];
    [(CFXCaptureViewController *)self setLiveCaptureViewController:destinationViewController2];
  }

  destinationViewController3 = [segueCopy destinationViewController];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    destinationViewController4 = [segueCopy destinationViewController];
    [(CFXCaptureViewController *)self setCameraControls:destinationViewController4];
  }
}

- (BOOL)shouldPerformSegueWithIdentifier:(id)identifier sender:(id)sender
{
  if ([identifier isEqualToString:{@"CFXLiveCaptureViewControllerSegue", sender}])
  {
    return ![(CFXCaptureViewController *)self isMessagesOnPhone];
  }

  else
  {
    return 1;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CFXCaptureViewController;
  [(CFXCaptureViewController *)&v5 viewDidAppear:appear];
  [(CFXCaptureViewController *)self layoutZoomUI];
  if ([(CFXCaptureViewController *)self isMessagesOnPhone])
  {
    effectBrowserContentPresenterViewController = [(CFXCaptureViewController *)self effectBrowserContentPresenterViewController];
    [effectBrowserContentPresenterViewController configureEffectBrowserContentPresentationForOrientation:{+[JFXOrientationMonitor interfaceOrientation](JFXOrientationMonitor, "interfaceOrientation")}];
  }
}

- (void)updateTopBar
{
  if (isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    topBar = [(CFXCaptureViewController *)self topBar];
    [topBar setHidden:1];
  }

  else
  {
    if (CFXCaptureCapabilitiesIsCTMSupported())
    {
      return;
    }

    topBar2 = [(CFXCaptureViewController *)self topBar];
    [topBar2 setHidden:0];

    topBar3 = [(CFXCaptureViewController *)self topBar];
    [topBar3 configureForMode:-[CFXCaptureViewController captureMode](self animated:{"captureMode") == 2, 0}];

    topBar = [(CFXCaptureViewController *)self topBar];
    [topBar setStyle:0];
  }
}

- (void)configureCaptureControlsForOrientationWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v7 = +[JFXOrientationMonitor deviceInterfaceOrientation];
    delegate = [(CFXCaptureViewController *)self delegate];
    v17 = [delegate cameraControlsViewControllerForCaptureViewController:self];

    effectButton = [v17 effectButton];
    [effectButton setOrientation:v7 animated:animationCopy];

    flipButton = [v17 flipButton];
    [flipButton setOrientation:v7 animated:animationCopy];

    if (CFXCaptureCapabilitiesIsCTMSupported())
    {
      controlStatusBar = [(CFXCaptureViewController *)self controlStatusBar];
      flashIndicator = [controlStatusBar flashIndicator];
      [flashIndicator setOrientation:v7 animated:animationCopy];
    }

    else
    {
      captureMode = [(CFXCaptureViewController *)self captureMode];
      flashButton = [(CFXCaptureViewController *)self flashButton];
      controlStatusBar = flashButton;
      if (captureMode == 2)
      {
        v15 = 1;
      }

      else
      {
        v15 = v7;
      }

      [flashButton setOrientation:v15 animated:animationCopy];
    }

    zoomControl = [(CFXCaptureViewController *)self zoomControl];
    [zoomControl setOrientation:v7 animated:animationCopy];
  }
}

- (void)configureUIForOrientation
{
  v3 = +[JFXOrientationMonitor interfaceOrientation];
  v4 = +[JFXOrientationMonitor keyWindow];
  [v4 bounds];
  [(CFXCaptureViewController *)self configureUIForWindowOrientation:v3 bounds:?];
}

- (void)configureUIForWindowOrientation:(int64_t)orientation bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(CFXCaptureViewController *)self captureMode]== 1)
  {
    return;
  }

  v10 = 0x277D75000uLL;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

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
  delegate = [(CFXCaptureViewController *)self delegate];
  v27 = [delegate cameraControlsViewControllerForCaptureViewController:self];

  bottomBar = [v27 bottomBar];
  captureMode = [(CFXCaptureViewController *)self captureMode];
  v349 = orientation - 5;
  v352 = x;
  v350 = height;
  if (userInterfaceIdiom)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
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
    captureControlsContainerTopConstraint = [(CFXCaptureViewController *)self captureControlsContainerTopConstraint];
    LODWORD(v46) = 1144750080;
    [captureControlsContainerTopConstraint setPriority:v46];

    captureControlsContainerHeightConstraint = [(CFXCaptureViewController *)self captureControlsContainerHeightConstraint];
    LODWORD(v48) = 1132068864;
    [captureControlsContainerHeightConstraint setPriority:v48];

    if ([(CFXCaptureViewController *)self captureMode]== 2)
    {
      view = [(CFXCaptureViewController *)self view];
      [view frame];
      v343 = v40;
      v346 = v38;
      v50 = CGRectGetWidth(v376) * 0.5;

      elapsedTimeView = [(CFXCaptureViewController *)self elapsedTimeView];
      [elapsedTimeView frame];
      v52 = v50 - CGRectGetWidth(v377) * 0.5;

      elapsedTimeView2 = [(CFXCaptureViewController *)self elapsedTimeView];
      [elapsedTimeView2 frame];
      v336 = v54;
      elapsedTimeView3 = [(CFXCaptureViewController *)self elapsedTimeView];
      [elapsedTimeView3 frame];
      v56 = v42;
      v57 = CGRectGetWidth(v378);
      elapsedTimeView4 = [(CFXCaptureViewController *)self elapsedTimeView];
      [elapsedTimeView4 frame];
      v59 = width;
      v60 = v44;
      v61 = CGRectGetHeight(v379);

      v10 = 0x277D75000uLL;
      elapsedTimeView5 = [(CFXCaptureViewController *)self elapsedTimeView];
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
      [elapsedTimeView5 setFrame:{v63, v336, v64, v65}];
    }

    v66 = bottomBar;
    goto LABEL_57;
  }

  v337 = v19;
  v330 = v21;
  v331 = v23;
  rect = v25;
  v67 = 0.5625;
  if (!captureMode)
  {
    v67 = 0.75;
  }

  [MEMORY[0x277D3D080] cameraContentFrameForContentAspectRatio:v67 referenceBounds:{x, y, width, height}];
  v344 = v69;
  v347 = v68;
  v71 = v70;
  v73 = v72;
  orientationCopy2 = orientation;
  v75 = height;
  v76 = width;
  if ((orientation - 5) >= 0xFFFFFFFFFFFFFFFELL)
  {
    captureMode2 = [(CFXCaptureViewController *)self captureMode];
    orientationCopy2 = orientation;
    v75 = height;
    v76 = width;
    if (!captureMode2)
    {
      orientationCopy2 = 1;
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
  [MEMORY[0x277D3D080] cameraTopBarGeometryForReferenceBounds:orientationCopy2 forContentSize:x withOrientation:{y, v76, v75, v71, v73}];
  topBar = [(CFXCaptureViewController *)self topBar];
  [topBar setCenter:{0.0, 0.0}];

  topBar2 = [(CFXCaptureViewController *)self topBar];
  [topBar2 setBounds:{0.0, 0.0, 0.0, 0.0}];

  captureMode3 = [(CFXCaptureViewController *)self captureMode];
  if (v349 >= 0xFFFFFFFFFFFFFFFELL && captureMode3 == 2)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom])
    {
      v82 = 38.0;
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
      if (v84 == 568)
      {
        v82 = 35.0;
      }

      else
      {
        mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen3 bounds];
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

    topBar3 = [(CFXCaptureViewController *)self topBar];
    [topBar3 setBounds:{v368, 274.0, v82}];

    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if (![currentDevice3 userInterfaceIdiom])
    {
      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 bounds];
      if (v90 == 568)
      {

        v10 = 0x277D75000;
      }

      else
      {
        mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen5 bounds];
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
      currentDevice3 = [(CFXCaptureViewController *)self topBar];
      [currentDevice3 setCenter:{*&v370, v94}];
    }
  }

LABEL_28:
  v365 = v371;
  v366 = v372;
  v367 = v373;
  topBar4 = [(CFXCaptureViewController *)self topBar];
  v359 = v365;
  v360 = v366;
  v361 = v367;
  [topBar4 setTransform:&v359];

  captureControlsContainerTopConstraint2 = [(CFXCaptureViewController *)self captureControlsContainerTopConstraint];
  v98 = captureControlsContainerTopConstraint2;
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
  [captureControlsContainerTopConstraint2 setPriority:v97];

  captureControlsContainerWidthConstraint = [(CFXCaptureViewController *)self captureControlsContainerWidthConstraint];
  *&v103 = v100;
  [captureControlsContainerWidthConstraint setPriority:v103];

  captureControlsContainerHeightConstraint2 = [(CFXCaptureViewController *)self captureControlsContainerHeightConstraint];
  *&v105 = v101;
  [captureControlsContainerHeightConstraint2 setPriority:v105];

  view2 = [(CFXCaptureViewController *)self view];
  v107 = view2;
  if (v349 >= 0xFFFFFFFFFFFFFFFELL)
  {
    [view2 frame];
    v111 = v110;
    v113 = v112;
    v115 = v114;
    v117 = v116;

    v383.origin.x = v111;
    v383.origin.y = v113;
    v383.size.width = v115;
    v383.size.height = v117;
    v118 = CGRectGetWidth(v383) - v342;
    currentDevice4 = [*(v10 + 1048) currentDevice];
    if ([currentDevice4 userInterfaceIdiom])
    {

      v36 = v352;
      v38 = v347;
      v44 = v333;
LABEL_50:
      captureControlsContainerWidthConstraint2 = [(CFXCaptureViewController *)self captureControlsContainerWidthConstraint];
      [captureControlsContainerWidthConstraint2 setConstant:v118];

      captureControlsContainerLeadingConstraint = [(CFXCaptureViewController *)self captureControlsContainerLeadingConstraint];
      v137 = captureControlsContainerLeadingConstraint;
      if (orientation == 4)
      {
        *&v136 = 750.0;
      }

      else
      {
        *&v136 = 250.0;
      }

      if (orientation == 4)
      {
        v99 = 250.0;
      }

      [captureControlsContainerLeadingConstraint setPriority:v136];

      v66 = bottomBar;
      goto LABEL_56;
    }

    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 bounds];
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

  [view2 bounds];
  v108 = CGRectGetHeight(v382) - v342;

  currentDevice5 = [*(v10 + 1048) currentDevice];
  v44 = v333;
  if (![currentDevice5 userInterfaceIdiom])
  {
    mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen7 bounds];
    if (v121 == 568)
    {

      v66 = bottomBar;
    }

    else
    {
      [MEMORY[0x277D759A0] mainScreen];
      v125 = v124 = v10;
      [v125 bounds];
      v328 = v126;

      v10 = v124;
      v66 = bottomBar;
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

  v66 = bottomBar;
LABEL_45:
  if ([(CFXCaptureViewController *)self dockIsMagnified])
  {
    [(CFXCaptureViewController *)self dockMagnifiedHeightDelta];
    v108 = v108 + v127;
  }

  v36 = x;
  captureControlsContainerHeightConstraint3 = [(CFXCaptureViewController *)self captureControlsContainerHeightConstraint];
  [captureControlsContainerHeightConstraint3 setConstant:v108];

  captureControlsContainerLeadingConstraint2 = [(CFXCaptureViewController *)self captureControlsContainerLeadingConstraint];
  LODWORD(v130) = 1144750080;
  [captureControlsContainerLeadingConstraint2 setPriority:v130];

  v38 = v347;
LABEL_56:
  captureControlsContainerTrailingConstraint = [(CFXCaptureViewController *)self captureControlsContainerTrailingConstraint];
  *&v139 = v99;
  [captureControlsContainerTrailingConstraint setPriority:v139];

  v40 = v344;
  v42 = v334;
LABEL_57:
  view3 = [(CFXCaptureViewController *)self view];
  [view3 layoutIfNeeded];

  v372 = 0u;
  v373 = 0u;
  v370 = 0u;
  v371 = 0u;
  v368 = 0u;
  v369 = 0u;
  v345 = y;
  v348 = width;
  [MEMORY[0x277D3D080] orientedGeometryForFrame:orientation inBounds:v38 orientation:{v40, v42, v44, v36, y, width, height}];
  v141 = *(&v371 + 1);
  v338 = *&v371;
  v142 = v372;
  v335 = *&v372;
  v143 = v369;
  view4 = [(CFXCaptureViewController *)self view];
  [view4 frame];
  v146 = v145;
  v148 = v147;
  v150 = v149;
  v152 = v151;
  liveCaptureContainerContainer = [(CFXCaptureViewController *)self liveCaptureContainerContainer];
  [liveCaptureContainerContainer setFrame:{v146, v148, v150, v152}];

  if ((IsCTMSupported & 1) == 0)
  {
    v154 = *MEMORY[0x277CBF3A0];
    v155 = *(MEMORY[0x277CBF3A0] + 8);
    v156 = v370;
    liveCaptureContainer = [(CFXCaptureViewController *)self liveCaptureContainer];
    [liveCaptureContainer setCenter:v156];

    liveCaptureContainer2 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [liveCaptureContainer2 setBounds:{v154, v155, fabs(v335 * *(&v143 + 1) + v338 * *&v143), fabs(*(&v142 + 1) * *(&v143 + 1) + v141 * *&v143)}];
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
    [MEMORY[0x277D3D080] orientedGeometryForFrame:orientation inBounds:v341 orientation:{v342, v340, v339, v352, v345, width, v350}];
    currentDevice6 = [*(v10 + 1048) currentDevice];
    if ([currentDevice6 userInterfaceIdiom])
    {
      [v27 view];
    }

    else
    {
      [v27 backgroundView];
    }
    v162 = ;

    view5 = [(CFXCaptureViewController *)self view];
    [view5 convertPoint:v162 toView:v361];
    v165 = v164;
    v167 = v166;

    v356 = v362;
    v357 = v363;
    v358 = v364;
    [v66 setTransform:&v356];
    if (IsCTMSupported)
    {
      [(CFXCaptureViewController *)self bottomBarCTMControlsFrameForWindowOrientation:orientation bounds:v352, v345, width, v350];
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
      currentDevice7 = [*(v10 + 1048) currentDevice];
      userInterfaceIdiom2 = [currentDevice7 userInterfaceIdiom];
      v177 = *(&v361 + 1);
      v176 = *&v361;
      if (userInterfaceIdiom2)
      {
        v176 = v165;
        v177 = v167;
      }

      [v66 setCenter:{v176, v177}];

      [v66 setBounds:{v359, v360}];
      [(CFXCaptureViewController *)self layoutZoomUI];
    }
  }

  effectBrowserContentPresenterViewController = [(CFXCaptureViewController *)self effectBrowserContentPresenterViewController];
  [effectBrowserContentPresenterViewController configureEffectBrowserContentPresentationForOrientation:{+[JFXOrientationMonitor interfaceOrientation](JFXOrientationMonitor, "interfaceOrientation")}];

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
    dynamicShutterControl = [(CFXCaptureViewController *)self dynamicShutterControl];
    [dynamicShutterControl intrinsicContentSize];
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
      if (orientation == 4)
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

    liveCaptureContainer3 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [liveCaptureContainer3 setFrame:{v190, v191, v193, v195}];

    if (![(CFXCaptureViewController *)self configuredForOrientation])
    {
      reticleView = [(CFXCaptureViewController *)self reticleView];
      [reticleView setFrame:{v190, v191, v193, v195}];

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
        if (orientation == 4)
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

      bottomControlsContainer = [(CFXCaptureViewController *)self bottomControlsContainer];
      [bottomControlsContainer setFrame:{0.0, v207 + v205, width, v350 - (v207 + v205)}];

      dynamicShutterControl2 = [(CFXCaptureViewController *)self dynamicShutterControl];
      [v186 frameForShutterControl:dynamicShutterControl2];
      v214 = v213;
      v216 = v215;
      v218 = v217;
      v220 = v219;

      bottomControlsContainer2 = [(CFXCaptureViewController *)self bottomControlsContainer];
      view6 = [(CFXCaptureViewController *)self view];
      [bottomControlsContainer2 convertRect:view6 fromView:{v214, v216, v218, v220}];
      v224 = v223;
      v226 = v225;
      v228 = v227;
      v230 = v229;

      dynamicShutterControl3 = [(CFXCaptureViewController *)self dynamicShutterControl];
      [dynamicShutterControl3 setFrame:{v224, v226, v228, v230}];

      bottomControlsContainer3 = [(CFXCaptureViewController *)self bottomControlsContainer];
      dynamicShutterControl4 = [(CFXCaptureViewController *)self dynamicShutterControl];
      [bottomControlsContainer3 insertSubview:dynamicShutterControl4 atIndex:0];

      effectButton = [v27 effectButton];
      [v186 frameForBottomLeftControl:effectButton];
      v236 = v235;
      v238 = v237;
      v240 = v239;
      v242 = v241;

      bottomControlsContainer4 = [(CFXCaptureViewController *)self bottomControlsContainer];
      view7 = [(CFXCaptureViewController *)self view];
      [bottomControlsContainer4 convertRect:view7 fromView:{v236, v238, v240, v242}];
      v246 = v245;
      v248 = v247;
      v250 = v249;
      v252 = v251;

      effectButton2 = [v27 effectButton];
      [effectButton2 setFrame:{v246, v248, v250, v252}];

      bottomControlsContainer5 = [(CFXCaptureViewController *)self bottomControlsContainer];
      effectButton3 = [v27 effectButton];
      [bottomControlsContainer5 addSubview:effectButton3];

      flipButton = [v27 flipButton];
      [v186 frameForBottomRightControl:flipButton];
      v258 = v257;
      v260 = v259;
      v262 = v261;
      v264 = v263;

      bottomControlsContainer6 = [(CFXCaptureViewController *)self bottomControlsContainer];
      view8 = [(CFXCaptureViewController *)self view];
      [bottomControlsContainer6 convertRect:view8 fromView:{v258, v260, v262, v264}];
      v268 = v267;
      v270 = v269;
      v272 = v271;
      v274 = v273;

      flipButton2 = [v27 flipButton];
      [flipButton2 setFrame:{v268, v270, v272, v274}];

      bottomControlsContainer7 = [(CFXCaptureViewController *)self bottomControlsContainer];
      flipButton3 = [v27 flipButton];
      [bottomControlsContainer7 addSubview:flipButton3];

      [v186 frameForControlStatusBar];
      v279 = v278;
      v281 = v280;
      v283 = v282;
      v285 = v284;
      controlStatusBar = [(CFXCaptureViewController *)self controlStatusBar];
      [controlStatusBar setFrame:{v279, v281, v283, v285}];

      if ([(CFXCaptureViewController *)self aspectRatioCrop]== 2)
      {
        bottomControlsContainer8 = [(CFXCaptureViewController *)self bottomControlsContainer];
        [bottomControlsContainer8 frame];
        [bottomBar setFrame:?];
      }

      [(CFXCaptureViewController *)self layoutZoomUI];
      v10 = v208;
      v66 = bottomBar;
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
    elapsedTimeView6 = [(CFXCaptureViewController *)self elapsedTimeView];
    if (v186)
    {
      [v186 geometryForElapsedTimeView:elapsedTimeView6 viewportFrame:orientation orientation:{v289, v291, v293, v295}];
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
    elapsedTimeView7 = [(CFXCaptureViewController *)self elapsedTimeView];
    [elapsedTimeView7 setBounds:{v297, v298}];

    v300 = v361;
    elapsedTimeView8 = [(CFXCaptureViewController *)self elapsedTimeView];
    [elapsedTimeView8 setCenter:v300];

    v353 = v362;
    v354 = v363;
    v355 = v364;
    elapsedTimeView9 = [(CFXCaptureViewController *)self elapsedTimeView];
    v356 = v353;
    v357 = v354;
    v358 = v355;
    [elapsedTimeView9 setTransform:&v356];

    currentDevice8 = [*(v10 + 1048) currentDevice];
    userInterfaceIdiom3 = [currentDevice8 userInterfaceIdiom];

    if (!userInterfaceIdiom3)
    {
      [v186 viewportFrameForAspectRatio:0 usingAppDrawer:1 accessoryAreaExpanded:0];
      MaxY = CGRectGetMaxY(v398);
      view9 = [(CFXCaptureViewController *)self view];
      [view9 frame];
      if (v349 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v311 = CGRectGetWidth(*&v307) - MaxY;

        captureControlsContainerWidthConstraint3 = [(CFXCaptureViewController *)self captureControlsContainerWidthConstraint];
      }

      else
      {
        v311 = CGRectGetHeight(*&v307) - MaxY;

        if ([(CFXCaptureViewController *)self dockIsMagnified])
        {
          [(CFXCaptureViewController *)self dockMagnifiedHeightDelta];
          v311 = v311 + v312;
        }

        captureControlsContainerWidthConstraint3 = [(CFXCaptureViewController *)self captureControlsContainerHeightConstraint];
      }

      v314 = captureControlsContainerWidthConstraint3;
      [captureControlsContainerWidthConstraint3 setConstant:v311];
    }
  }

  liveCaptureContainer4 = [(CFXCaptureViewController *)self liveCaptureContainer];
  [liveCaptureContainer4 frame];
  [(CFXCaptureViewController *)self setPresentationRect:?];

  [(CFXCaptureViewController *)self presentationRect];
  v317 = v316;
  v319 = v318;
  v321 = v320;
  v323 = v322;
  presentationView = [(CFXCaptureViewController *)self presentationView];
  [presentationView setFrame:{v317, v319, v321, v323}];

  [(CFXCaptureViewController *)self updateAnimojiTrackingReticleAndLabelLayout];
  [(CFXCaptureViewController *)self updateEffectEditorLayout];
  [(CFXCaptureViewController *)self updateFullScreenTextEditorLayout];
  currentDevice9 = [*(v10 + 1048) currentDevice];
  userInterfaceIdiom4 = [currentDevice9 userInterfaceIdiom];

  if (!userInterfaceIdiom4)
  {
    [(CFXCaptureViewController *)self setConfiguredForOrientation:1];
  }
}

- (void)applyRotationTransformForPortrait
{
  parentViewController = [(CFXCaptureViewController *)self parentViewController];
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
  if (parentViewController)
  {
    view = [parentViewController view];
    [view bounds];
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
  view2 = [(CFXCaptureViewController *)self view];
  v43 = v44;
  [view2 setTransform:&v43];

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

  view3 = [(CFXCaptureViewController *)self view];
  [view3 setBounds:{0.0, 0.0, v26, Width}];

  if (parentViewController)
  {
    view4 = [parentViewController view];
    [view4 bounds];
    [parentViewController jfxCenterAdjustedForOrientationForPortraitFrame:v21 relativeToParentFrame:0.0 withOrientation:{0.0, v26, Width, v29, v30, v31, v32}];
    v34 = v33;
    v36 = v35;
    view5 = [(CFXCaptureViewController *)self view];
    [view5 setCenter:{v34, v36}];
  }

  else
  {
    [(UIViewController *)self jfxCenterAdjustedForOrientationForPortraitFrame:v21 relativeToParentFrame:0.0 withOrientation:0.0, v26, Width, v42, v8, v10, v12];
    v39 = v38;
    v41 = v40;
    view4 = [(CFXCaptureViewController *)self view];
    [view4 setCenter:{v39, v41}];
  }
}

- (void)setAspectRatioCrop:(int64_t)crop
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = JFXLog_viewerUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromCFXAspectRatioCrop(crop);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_242A3B000, v5, OS_LOG_TYPE_DEFAULT, "aspectRatioCrop: %{public}@", &v7, 0xCu);
  }

  self->_aspectRatioCrop = crop;
}

- (void)setCaptureMode:(int64_t)mode
{
  self->_captureMode = mode;
  [(CFXCaptureViewController *)self loadViewIfNeeded];
  if ((CFXCaptureCapabilitiesIsCTMSupported() & 1) == 0)
  {
    v4 = isStreamingMode([(CFXCaptureViewController *)self captureMode]);
    topBar = [(CFXCaptureViewController *)self topBar];
    [topBar setHidden:v4];
  }
}

- (UIView)effectsPickerDrawer
{
  [(CFXCaptureViewController *)self loadViewIfNeeded];
  cameraControls = [(CFXCaptureViewController *)self cameraControls];
  effectsPickerDrawer = [cameraControls effectsPickerDrawer];

  return effectsPickerDrawer;
}

- (void)setEffectsPickerDrawer:(id)drawer
{
  drawerCopy = drawer;
  [(CFXCaptureViewController *)self loadViewIfNeeded];
  cameraControls = [(CFXCaptureViewController *)self cameraControls];
  [cameraControls setEffectsPickerDrawer:drawerCopy];
}

- (BOOL)livePlayerIsSaturated
{
  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  livePlayerIsSaturated = [cameraViewController livePlayerIsSaturated];

  return livePlayerIsSaturated;
}

- (void)willDropCameraFrame
{
  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  [cameraViewController willDropCameraFrame];
}

- (void)setUseLocalCameraViewfinder:(BOOL)viewfinder
{
  viewfinderCopy = viewfinder;
  [(CFXCaptureViewController *)self loadViewIfNeeded];
  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  [cameraViewController setUseLocalCameraViewfinder:viewfinderCopy];
}

- (BOOL)useLocalCameraViewfinder
{
  [(CFXCaptureViewController *)self loadViewIfNeeded];
  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  useLocalCameraViewfinder = [cameraViewController useLocalCameraViewfinder];

  return useLocalCameraViewfinder;
}

- (double)userInterfaceAlpha
{
  cameraControlsContainerView = [(CFXCaptureViewController *)self cameraControlsContainerView];
  [cameraControlsContainerView alpha];
  v4 = v3;

  return v4;
}

- (void)setUserInterfaceAlpha:(double)alpha
{
  cameraControlsContainerView = [(CFXCaptureViewController *)self cameraControlsContainerView];
  [cameraControlsContainerView setAlpha:alpha];
}

- (int64_t)flashMode
{
  [(CFXCaptureViewController *)self loadViewIfNeeded];
  if (CFXCaptureCapabilitiesIsCTMSupported())
  {
    controlStatusBar = [(CFXCaptureViewController *)self controlStatusBar];
    flashIndicator = [controlStatusBar flashIndicator];
    flashMode = [flashIndicator flashMode];
  }

  else
  {
    flashButton = [(CFXCaptureViewController *)self flashButton];
    isHidden = [flashButton isHidden];

    if (isHidden)
    {
      flashMode = 0;
      goto LABEL_7;
    }

    controlStatusBar = [(CFXCaptureViewController *)self flashButton];
    flashMode = [controlStatusBar flashMode];
  }

LABEL_7:

  return [(CFXCaptureViewController *)self CFX_captureFlashModeForCAMFlashMode:flashMode];
}

- (void)setFlashMode:(int64_t)mode
{
  [(CFXCaptureViewController *)self loadViewIfNeeded];
  v5 = [(CFXCaptureViewController *)self CFX_camFlashModeForCaptureFlashMode:mode];
  flashButton = [(CFXCaptureViewController *)self flashButton];
  [flashButton setFlashMode:v5];

  [(CFXCaptureViewController *)self flashModeDidChange];
}

- (CFXEffectComposition)composition
{
  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  composition = [cameraViewController composition];

  return composition;
}

- (void)toggleCTMFlashButton
{
  controlStatusBar = [(CFXCaptureViewController *)self controlStatusBar];
  flashIndicator = [controlStatusBar flashIndicator];
  flashMode = [flashIndicator flashMode];

  if (flashMode <= 2)
  {
    v6 = qword_242B5BF18[flashMode];
    controlStatusBar2 = [(CFXCaptureViewController *)self controlStatusBar];
    flashIndicator2 = [controlStatusBar2 flashIndicator];
    [flashIndicator2 setFlashMode:v6];

    [(CFXCaptureViewController *)self flashModeDidChange];
  }
}

- (void)setTorchModeForFlashMode:(int64_t)mode
{
  v3 = [(CFXCaptureViewController *)self CFX_captureTorchModeForCAMFlashMode:mode];
  v4 = +[JFXVideoCameraController sharedInstance];
  [v4 setCaptureTorchMode:v3 completion:0];
}

- (void)flashModeDidChange
{
  if ([(CFXCaptureViewController *)self captureMode]== 2)
  {
    if (CFXCaptureCapabilitiesIsCTMSupported())
    {
      controlStatusBar = [(CFXCaptureViewController *)self controlStatusBar];
      flashIndicator = [controlStatusBar flashIndicator];
      flashMode = [flashIndicator flashMode];
    }

    else
    {
      controlStatusBar = [(CFXCaptureViewController *)self flashButton];
      flashMode = [controlStatusBar flashMode];
    }

    [(CFXCaptureViewController *)self setTorchModeForFlashMode:flashMode];
  }
}

- (void)cameraDidStart
{
  if (![(CFXCaptureViewController *)self observingOrientationChanges])
  {
    [(CFXCaptureViewController *)self setObservingOrientationChanges:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_JFX_orientationMonitorDeviceInterfaceOrientationNotification_ name:@"kJFXOrientationMonitorDeviceInterfaceOrientationNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_JFX_orientationMonitorInterfaceOrientationNotification_ name:@"kJFXOrientationMonitorInterfaceOrientationNotification" object:0];
  }

  [(CFXCaptureViewController *)self configureCaptureControlsForOrientationWithAnimation:1];
  if ([(CFXCaptureViewController *)self captureMode]!= 1)
  {
    [(CFXCaptureViewController *)self CFX_setFrameAndRenderSizes];
    if (CFXCaptureCapabilitiesIsCTMSupported())
    {
      dynamicShutterControl = [(CFXCaptureViewController *)self dynamicShutterControl];
      [dynamicShutterControl setEnabled:1];
    }

    else
    {
      delegate = [(CFXCaptureViewController *)self delegate];
      dynamicShutterControl = [delegate cameraControlsViewControllerForCaptureViewController:self];

      [dynamicShutterControl setShutterButtonEnabled:1];
    }
  }

  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  [cameraViewController startRenderingCameraFrames];
}

- (void)cameraDidStop
{
  if ([(CFXCaptureViewController *)self observingOrientationChanges])
  {
    [(CFXCaptureViewController *)self setObservingOrientationChanges:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"kJFXOrientationMonitorDeviceInterfaceOrientationNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:@"kJFXOrientationMonitorInterfaceOrientationNotification" object:0];
  }

  v5 = dispatch_semaphore_create(0);
  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__CFXCaptureViewController_cameraDidStop__block_invoke;
  v8[3] = &unk_278D79D20;
  v9 = v5;
  v7 = v5;
  [cameraViewController stopRenderingCameraFrames:v8];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)effectCompositionDidChange:(id)change
{
  changeCopy = change;
  delegate = [(CFXCaptureViewController *)self delegate];
  [delegate captureViewController:self didChangeEffectComposition:changeCopy];
}

- (void)CFX_addEffect:(id)effect allowImmediateTextEditing:(BOOL)editing
{
  editingCopy = editing;
  v30 = *MEMORY[0x277D85DE8];
  effectCopy = effect;
  [(CFXCaptureViewController *)self removeEffectEditorAnimated:1];
  jtEffect = [effectCopy jtEffect];
  v8 = +[CFXMediaSettings sharedInstance];
  [v8 renderSize];
  [jtEffect setRenderSize:?];

  v9 = +[CFXMediaSettings sharedInstance];
  [v9 frameSize];
  [jtEffect setPlayableAspectRatio:{aspectRatioForSize(v10, v11)}];

  [jtEffect setPlayableAspectRatioPreservationMode:0];
  renderEffect = [jtEffect renderEffect];
  *buf = *kDefaultEffectPreviewAnimationRange;
  v28 = *&kDefaultEffectPreviewAnimationRange[16];
  v29 = *&kDefaultEffectPreviewAnimationRange[32];
  [renderEffect setEffectRange:buf];

  if (editingCopy && [JFXEffectEditingUtilities canEditTextForEffect:jtEffect])
  {
    jtEffect2 = [effectCopy jtEffect];
    v14 = 1;
    [jtEffect2 setHidden:1];
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

  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  [cameraViewController pauseRenderingCameraFrames];

  cameraViewController2 = [(CFXCaptureViewController *)self cameraViewController];
  [cameraViewController2 flushRenderer];

  cameraViewController3 = [(CFXCaptureViewController *)self cameraViewController];
  composition = [cameraViewController3 composition];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __68__CFXCaptureViewController_CFX_addEffect_allowImmediateTextEditing___block_invoke;
  v23[3] = &unk_278D7C738;
  v23[4] = self;
  v24 = jtEffect;
  v26 = v14;
  v25 = effectCopy;
  v21 = effectCopy;
  v22 = jtEffect;
  [composition addEffect:v21 completion:v23];
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

- (void)addEffect:(id)effect allowImmediateTextEditing:(BOOL)editing
{
  editingCopy = editing;
  v43 = *MEMORY[0x277D85DE8];
  effectCopy = effect;
  v7 = JFXLog_effects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    jtEffect = [effectCopy jtEffect];
    v9 = NSStringFromJFXEffectType([jtEffect type]);
    localizedTitle = [effectCopy localizedTitle];
    *buf = 138543874;
    v38 = v9;
    v39 = 2114;
    v40 = localizedTitle;
    v41 = 1024;
    v42 = editingCopy;
    _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "Adding effect - type: %{public}@, name: %{public}@, allowImmediateTextEditing: %d", buf, 0x1Cu);
  }

  jtEffect2 = [effectCopy jtEffect];
  type = [jtEffect2 type];

  if (type != 2)
  {
    jtEffect3 = [effectCopy jtEffect];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __64__CFXCaptureViewController_addEffect_allowImmediateTextEditing___block_invoke_2;
    v26[3] = &unk_278D7C788;
    v26[4] = self;
    v27 = effectCopy;
    v28 = editingCopy;
    v19 = effectCopy;
    [jtEffect3 loadRenderEffectInBackgroundWithCompletionOnMainQueue:v26];

    goto LABEL_13;
  }

  v13 = 0x3FD6666666666666;
  if (![(CFXCaptureViewController *)self CFX_canApplyFaceTracking])
  {
    goto LABEL_9;
  }

  v14 = +[JFXVideoCameraController sharedInstance];
  mostRecentARMetadata = [v14 mostRecentARMetadata];

  faceAnchor = [mostRecentARMetadata faceAnchor];

  if (!faceAnchor)
  {

LABEL_9:
    v17 = 0;
    mostRecentARMetadata = 0;
    goto LABEL_10;
  }

  v17 = 1;
  v13 = 0x3FE399999999999ALL;
LABEL_10:
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v19 = [standardUserDefaults objectForKey:@"CFX_CaptureEffectInsertionSize"];

  if (v19)
  {
    [v19 doubleValue];
    v13 = v21;
  }

  jtEffect4 = [effectCopy jtEffect];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __64__CFXCaptureViewController_addEffect_allowImmediateTextEditing___block_invoke;
  v29[3] = &unk_278D7C760;
  v34 = v13;
  v35 = v17;
  v30 = jtEffect4;
  v31 = mostRecentARMetadata;
  selfCopy = self;
  v33 = effectCopy;
  v36 = editingCopy;
  v23 = effectCopy;
  v24 = mostRecentARMetadata;
  v25 = jtEffect4;
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

- (void)addOverlayEffect:(id)effect atNormalizedPlanePoint:(CGPoint)point scale:(double)scale rotationAngle:(double)angle
{
  y = point.y;
  x = point.x;
  v45 = *MEMORY[0x277D85DE8];
  effectCopy = effect;
  v12 = JFXLog_effects();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    jtEffect = [effectCopy jtEffect];
    v14 = NSStringFromJFXEffectType([jtEffect type]);
    localizedTitle = [effectCopy localizedTitle];
    v46.x = x;
    v46.y = y;
    v16 = NSStringFromCGPoint(v46);
    *buf = 138544386;
    v36 = v14;
    v37 = 2114;
    v38 = localizedTitle;
    v39 = 2114;
    v40 = v16;
    v41 = 2048;
    scaleCopy = scale;
    v43 = 2048;
    angleCopy = angle;
    _os_log_impl(&dword_242A3B000, v12, OS_LOG_TYPE_DEFAULT, "Adding effect - type: %{public}@, name: %{public}@, point: %{public}@, scale: %f, rotationAngle: %f", buf, 0x34u);
  }

  if ([(CFXCaptureViewController *)self CFX_canApplyFaceTracking])
  {
    v17 = +[JFXVideoCameraController sharedInstance];
    mostRecentARMetadata = [v17 mostRecentARMetadata];

    faceAnchor = [mostRecentARMetadata faceAnchor];
    v20 = faceAnchor != 0;

    if (faceAnchor)
    {
      faceAnchor = mostRecentARMetadata;
    }
  }

  else
  {
    faceAnchor = 0;
    v20 = 0;
  }

  jtEffect2 = [effectCopy jtEffect];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __88__CFXCaptureViewController_addOverlayEffect_atNormalizedPlanePoint_scale_rotationAngle___block_invoke;
  v25[3] = &unk_278D7C7B0;
  v30 = x;
  v31 = y;
  scaleCopy2 = scale;
  angleCopy2 = angle;
  v34 = v20;
  v26 = jtEffect2;
  v27 = faceAnchor;
  selfCopy = self;
  v29 = effectCopy;
  v22 = effectCopy;
  v23 = faceAnchor;
  v24 = jtEffect2;
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

- (void)addOverlayEffect:(id)effect atScreenLocation:(CGPoint)location atScreenSize:(CGSize)size rotationAngle:(double)angle
{
  height = size.height;
  width = size.width;
  y = location.y;
  x = location.x;
  v73 = *MEMORY[0x277D85DE8];
  effectCopy = effect;
  v13 = JFXLog_effects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    jtEffect = [effectCopy jtEffect];
    v15 = NSStringFromJFXEffectType([jtEffect type]);
    localizedTitle = [effectCopy localizedTitle];
    v74.x = x;
    v74.y = y;
    v17 = NSStringFromCGPoint(v74);
    v75.width = width;
    v75.height = height;
    v18 = NSStringFromCGSize(v75);
    *buf = 138544386;
    v64 = v15;
    v65 = 2114;
    v66 = localizedTitle;
    v67 = 2114;
    v68 = v17;
    v69 = 2114;
    v70 = v18;
    v71 = 2048;
    angleCopy = angle;
    _os_log_impl(&dword_242A3B000, v13, OS_LOG_TYPE_DEFAULT, "Adding effect - type: %{public}@, name: %{public}@, screenLocation: %{public}@, screenSize: %{public}@, rotationAngle: %f", buf, 0x34u);
  }

  jtEffect2 = [effectCopy jtEffect];
  type = [jtEffect2 type];

  if (type == 2)
  {
    angleCopy2 = angle;
    cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
    uncroppedCameraViewfinderPlaceholderView = [cameraViewController uncroppedCameraViewfinderPlaceholderView];

    [uncroppedCameraViewfinderPlaceholderView frame];
    v24 = v23;
    v26 = v25;
    +[JFXMediaSettings renderSize];
    v28 = v27;
    v30 = v29;
    [uncroppedCameraViewfinderPlaceholderView convertPoint:0 fromView:{x, y}];
    v33 = CGPointConvertToCoordinateSpace(2uLL, 0, v31, v32, v24, v26, v28, v30);
    [uncroppedCameraViewfinderPlaceholderView convertSize:0 fromView:{width, height}];
    v36 = CGRectMakeWithSizeAndCenterPoint(v28 * (v34 / v24), v30 * (v35 / v26), v33);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    jtEffect3 = [effectCopy jtEffect];
    if ([(CFXCaptureViewController *)self CFX_canApplyFaceTracking])
    {
      v44 = +[JFXVideoCameraController sharedInstance];
      mostRecentARMetadata = [v44 mostRecentARMetadata];

      faceAnchor = [mostRecentARMetadata faceAnchor];
      v47 = faceAnchor != 0;

      v48 = angleCopy2;
      if (faceAnchor)
      {
        faceAnchor = mostRecentARMetadata;
      }
    }

    else
    {
      v47 = 0;
      faceAnchor = 0;
      v48 = angleCopy2;
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
    v53 = jtEffect3;
    v54 = faceAnchor;
    selfCopy = self;
    v56 = effectCopy;
    v49 = faceAnchor;
    v50 = jtEffect3;
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

- (void)removeAllEffectsOfType:(id)type animated:(BOOL)animated
{
  animatedCopy = animated;
  v16 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v7 = JFXLog_effects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [typeCopy identifier];
    *buf = 138543618;
    v13 = identifier;
    v14 = 1024;
    v15 = animatedCopy;
    _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "Removing effects - type: %{public}@, animated: %d", buf, 0x12u);
  }

  [(CFXCaptureViewController *)self removeEffectEditorAnimated:animatedCopy];
  identifier2 = [typeCopy identifier];

  if (identifier2 == @"Animoji")
  {
    [(CFXCaptureViewController *)self removeAnimojiTrackingReticle];
  }

  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__CFXCaptureViewController_removeAllEffectsOfType_animated___block_invoke;
  v11[3] = &unk_278D79D20;
  v11[4] = self;
  [cameraViewController removeAllEffectsOfType:typeCopy completion:v11];
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

- (void)removeAllEffectsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v10 = *MEMORY[0x277D85DE8];
  v5 = JFXLog_effects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = animatedCopy;
    _os_log_impl(&dword_242A3B000, v5, OS_LOG_TYPE_DEFAULT, "Removing all effects - animated: %d", buf, 8u);
  }

  [(CFXCaptureViewController *)self removeAnimojiTrackingReticle];
  [(CFXCaptureViewController *)self removeEffectEditorAnimated:animatedCopy];
  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__CFXCaptureViewController_removeAllEffectsAnimated___block_invoke;
  v7[3] = &unk_278D79D20;
  v7[4] = self;
  [cameraViewController removeAllEffects:v7];
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

  composition = [(CFXCaptureViewController *)self composition];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__CFXCaptureViewController_removeEffectsForCameraSwitch__block_invoke;
  v6[3] = &unk_278D79D20;
  v6[4] = self;
  [composition removeAllOverlayEffects:v6];
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
  liveCaptureContainer = [(CFXCaptureViewController *)self liveCaptureContainer];
  [liveCaptureContainer frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  liveCaptureContainerContainer = [(CFXCaptureViewController *)self liveCaptureContainerContainer];
  v13 = [liveCaptureContainerContainer resizableSnapshotViewFromRect:0 afterScreenUpdates:v5 withCapInsets:{v7, v9, v11, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v13;
}

- (void)showLiveCaptureSnapshotBlurred:(BOOL)blurred animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  blurredCopy = blurred;
  completionCopy = completion;
  liveCaptureContainerSnapshot = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];

  if (!liveCaptureContainerSnapshot)
  {
    v10 = +[JFXOrientationMonitor interfaceOrientation];
    v11 = objc_alloc(MEMORY[0x277CF7EB8]);
    liveCaptureContainer = [(CFXCaptureViewController *)self liveCaptureContainer];
    liveCaptureContainer2 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [liveCaptureContainer2 frame];
    v15 = v14;
    liveCaptureContainer3 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [liveCaptureContainer3 frame];
    v18 = [v11 initWithView:liveCaptureContainer desiredAspectRatio:(v15 / v17)];
    [(CFXCaptureViewController *)self setLiveCaptureContainerSnapshot:v18];

    liveCaptureContainer4 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [liveCaptureContainer4 origin];
    v21 = v20;
    v23 = v22;
    liveCaptureContainer5 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [liveCaptureContainer5 bounds];
    Width = CGRectGetWidth(v38);
    liveCaptureContainer6 = [(CFXCaptureViewController *)self liveCaptureContainer];
    [liveCaptureContainer6 bounds];
    Height = CGRectGetHeight(v39);
    liveCaptureContainerSnapshot2 = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];
    v29 = liveCaptureContainerSnapshot2;
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

    [liveCaptureContainerSnapshot2 setFrame:{v30, v31, Width, Height}];

    liveCaptureContainer7 = [(CFXCaptureViewController *)self liveCaptureContainer];
    liveCaptureContainerSnapshot3 = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];
    [liveCaptureContainer7 addSubview:liveCaptureContainerSnapshot3];
  }

  liveCaptureContainerSnapshot4 = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __79__CFXCaptureViewController_showLiveCaptureSnapshotBlurred_animated_completion___block_invoke;
  v36[3] = &unk_278D7ADD0;
  v37 = completionCopy;
  v35 = completionCopy;
  [liveCaptureContainerSnapshot4 setBlurred:blurredCopy animated:animatedCopy style:0 withCompletionBlock:v36];
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
  liveCaptureContainerSnapshot = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];

  if (liveCaptureContainerSnapshot)
  {
    liveCaptureContainerSnapshot2 = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];
    [CFXPreviewViewController setLiveCaptureSnapshotView:liveCaptureContainerSnapshot2];
  }
}

- (void)removeLiveCaptureSnapshot
{
  liveCaptureContainerSnapshot = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];

  if (liveCaptureContainerSnapshot)
  {
    liveCaptureContainerSnapshot2 = [(CFXCaptureViewController *)self liveCaptureContainerSnapshot];
    [liveCaptureContainerSnapshot2 removeFromSuperview];

    [(CFXCaptureViewController *)self setLiveCaptureContainerSnapshot:0];
  }
}

- (void)setLiveCapturePresentationFrame:(CGRect)frame withContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  v46 = *MEMORY[0x277D85DE8];
  v13 = +[JFXOrientationMonitor interfaceOrientation];
  view = [(CFXCaptureViewController *)self view];
  v34.origin.x = v11;
  v34.origin.y = v10;
  v34.size.width = v9;
  v34.size.height = v8;
  [view convertRect:0 fromView:{v11, v10, v9, v8}];
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

- (void)updateUIForDockMagnify:(BOOL)magnify dockHeightDelta:(double)delta
{
  [(CFXCaptureViewController *)self setDockIsMagnified:magnify];
  [(CFXCaptureViewController *)self setDockMagnifiedHeightDelta:delta];

  [(CFXCaptureViewController *)self configureUIForOrientation];
}

- (void)updateUIForDevicePosition:(int64_t)position
{
  if (position == 2)
  {
    if ([(CFXCaptureViewController *)self captureMode]!= 2)
    {
      capabilities = [MEMORY[0x277CF7E78] capabilities];
      isFrontFlashSupported = [capabilities isFrontFlashSupported];
      goto LABEL_7;
    }

LABEL_5:
    v7 = 1;
    goto LABEL_8;
  }

  if (position != 1)
  {
    goto LABEL_5;
  }

  capabilities = [MEMORY[0x277CF7E78] capabilities];
  isFrontFlashSupported = [capabilities isBackFlashSupported];
LABEL_7:
  v7 = isFrontFlashSupported ^ 1u;

LABEL_8:
  flashButton = [(CFXCaptureViewController *)self flashButton];
  [flashButton setHidden:v7];

  controlStatusBar = [(CFXCaptureViewController *)self controlStatusBar];
  flashIndicator = [controlStatusBar flashIndicator];
  [flashIndicator setHidden:v7];

  if (!isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    [(CFXCaptureViewController *)self configureZoomControl];
  }

  v11 = +[CFXAnalyticsManager sharedInstance];
  [v11 stopTrackingTimeIntervalEventWithName:@"activefrontcameratime"];

  v12 = +[CFXAnalyticsManager sharedInstance];
  [v12 stopTrackingTimeIntervalEventWithName:@"activebackcameratime"];

  if (position)
  {
    if (position == 1)
    {
      v13 = +[CFXAnalyticsManager sharedInstance];
      v15 = v13;
      v14 = @"activebackcameratime";
    }

    else
    {
      if (position != 2)
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1 && !self->_effectBrowserContentPresenterViewController && [(CFXCaptureViewController *)self captureMode]!= 1)
  {
    v5 = objc_opt_new();
    effectBrowserContentPresenterViewController = self->_effectBrowserContentPresenterViewController;
    self->_effectBrowserContentPresenterViewController = v5;
  }

  v7 = self->_effectBrowserContentPresenterViewController;

  return v7;
}

- (void)configureWithControlsViewController:(id)controller
{
  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  [cameraViewController setDelegate:self];

  captureMode = [(CFXCaptureViewController *)self captureMode];
  cameraViewController2 = [(CFXCaptureViewController *)self cameraViewController];
  [cameraViewController2 setCaptureMode:captureMode];
}

- (void)setLiveCaptureViewController:(id)controller
{
  [(CFXCaptureViewController *)self setCameraViewController:controller];
  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  [cameraViewController setDelegate:self];

  if (+[JFXAnimojiEffectRenderer isSupported])
  {
    cameraViewController2 = [(CFXCaptureViewController *)self cameraViewController];
    [cameraViewController2 setTrackingLossDelegate:self];
  }

  captureMode = [(CFXCaptureViewController *)self captureMode];
  cameraViewController3 = [(CFXCaptureViewController *)self cameraViewController];
  [cameraViewController3 setCaptureMode:captureMode];
}

- (void)updateZoomUIVisibility
{
  cFX_isZoomAllowed = [(CFXCaptureViewController *)self CFX_isZoomAllowed];
  zoomSlider = [(CFXCaptureViewController *)self zoomSlider];
  [zoomSlider setHidden:!cFX_isZoomAllowed];

  zoomControl = [(CFXCaptureViewController *)self zoomControl];
  [zoomControl setHidden:!cFX_isZoomAllowed];
}

- (void)updateZoomUIForCapturing:(BOOL)capturing animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CFXCaptureViewController *)self captureMode]== 2)
  {
    if (animatedCopy)
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }

    zoomControl = [(CFXCaptureViewController *)self zoomControl];
    [zoomControl setShouldShowZoomDial:0 animationDuration:v6];
  }

  if (animatedCopy)
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
  zoomControl = [(CFXCaptureViewController *)self zoomControl];
  v37 = 0;
  v38 = 0;
  v36 = 0;
  [(CFXCaptureViewController *)self CFX_getCaptureDevice:&v38 captureDevicePosition:&v37 captureMode:&v36];
  capabilities = [MEMORY[0x277CF7E78] capabilities];
  v5 = v37;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  cFX_isZoomAllowed = [(CFXCaptureViewController *)self CFX_isZoomAllowed];
  if (userInterfaceIdiom == 1 && v5 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = [capabilities shouldAllowCameraToggleForMode:v36 devicePosition:v37 videoConfiguration:0];
  }

  v11 = v38;
  v12 = v38 < 8;
  v13 = +[JFXVideoCameraController sharedInstance];
  [v13 zoomFactor];
  v15 = v14;

  if (!cFX_isZoomAllowed)
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
      [zoomControl configureForToggleOnlyWithZoomFactor:1.0 displayZoomFactor:v29];
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

  [capabilities maximumZoomFactorForMode:v36 device:v38 videoConfiguration:0];
  v17 = v16;
  [MEMORY[0x277CF7ED8] zoomControlDisplayValueForZoomFactor:v36 mode:v38 device:0 videoConfiguration:1.0];
  v19 = v18;
  [MEMORY[0x277CF7ED8] zoomControlDisplayValueForZoomFactor:v36 mode:v38 device:0 videoConfiguration:v17];
  v21 = v20;
  if ((v12 & (0x80u >> v11)) != 0)
  {
    [capabilities tripleCameraSwitchOverZoomFactorsForDevicePosition:v37];
    v23 = v22;
    v25 = v24;
    [MEMORY[0x277CF7ED8] zoomControlDisplayValueForZoomFactor:v36 mode:v38 device:0 videoConfiguration:?];
    v27 = v26;
    [MEMORY[0x277CF7ED8] zoomControlDisplayValueForZoomFactor:v36 mode:v38 device:0 videoConfiguration:v25];
    [zoomControl configureForTripleDeviceWithZoomFactor:v15 minimumZoomFactor:1.0 displayMinimumZoomFactor:v19 maximumZoomFactor:v17 displayMaximumZoomFactor:v21 switchOverZoomFactor1:v23 displaySwitchOverZoomFactor1:v27 switchOverZoomFactor2:v25 displaySwitchOverZoomFactor2:v28];
  }

  else
  {
    v32 = v12 & (0x40u >> v11);
    if ((v12 & (0x10u >> v11) | v32) == 1)
    {
      if (v32)
      {
        [capabilities wideDualCameraSwitchOverZoomFactorForDevicePosition:v37];
      }

      else
      {
        [capabilities dualCameraSwitchOverZoomFactorForDevicePosition:v37];
      }

      v34 = v33;
      [MEMORY[0x277CF7ED8] zoomControlDisplayValueForZoomFactor:v36 mode:v38 device:0 videoConfiguration:?];
      [zoomControl configureForDualDeviceWithZoomFactor:v15 minimumZoomFactor:1.0 displayMinimumZoomFactor:v19 maximumZoomFactor:v17 displayMaximumZoomFactor:v21 dualCameraSwitchOverZoomFactor:v34 displayDualCameraSwitchOverZoomFactor:v35];
    }

    else if (v5 == 1)
    {
      [zoomControl configureForZoomSymbolToggle];
      [zoomControl setZoomButtonSymbol:1 animated:0];
    }

    else
    {
      [zoomControl configureForSingleCameraPlusToggleWithZoomFactor:v15 minimumZoomFactor:1.0 displayMinimumZoomFactor:v19 maximumZoomFactor:v17 displayMaximumZoomFactor:v20];
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  v5 = v11;

  if (userInterfaceIdiom == 1 && v5 == 1)
  {
    return 0;
  }

  capabilities = [MEMORY[0x277CF7E78] capabilities];
  v8 = [capabilities isZoomAllowedForMode:v10 device:v12 videoConfiguration:0];

  return v8;
}

- (void)CFX_getCaptureDevice:(int64_t *)device captureDevicePosition:(int64_t *)position captureMode:(int64_t *)mode
{
  v9 = +[JFXVideoCameraController sharedInstance];
  cameraPosition = [v9 cameraPosition];

  v11 = +[JFXVideoCameraController sharedInstance];
  cameraType = [v11 cameraType];

  [(CFXCaptureViewController *)self CFX_getCAMCaptureForPosition:cameraPosition type:cameraType captureDevice:device captureDevicePosition:position captureMode:mode];
}

- (void)CFX_getCAMCaptureForPosition:(int64_t)position type:(id)type captureDevice:(int64_t *)device captureDevicePosition:(int64_t *)devicePosition captureMode:(int64_t *)mode
{
  typeCopy = type;
  if (CFX_getCAMCaptureForPosition_type_captureDevice_captureDevicePosition_captureMode__onceToken != -1)
  {
    [CFXCaptureViewController CFX_getCAMCaptureForPosition:type:captureDevice:captureDevicePosition:captureMode:];
  }

  v12 = position == 2;
  v13 = &CFX_getCAMCaptureForPosition_type_captureDevice_captureDevicePosition_captureMode__frontCameraLookup;
  if (position != 2)
  {
    v13 = &CFX_getCAMCaptureForPosition_type_captureDevice_captureDevicePosition_captureMode__backCameraLookup;
  }

  v14 = *v13;
  v15 = [v14 objectForKeyedSubscript:typeCopy];
  integerValue = [v15 integerValue];

  *device = integerValue;
  *devicePosition = v12;
  *mode = [(CFXCaptureViewController *)self captureMode]!= 0;
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

- (void)layoutZoomControlRelativeToBottomBarAndPreview:(id)preview
{
  previewCopy = preview;
  delegate = [(CFXCaptureViewController *)self delegate];
  v11 = [delegate cameraControlsViewControllerForCaptureViewController:self];

  v6 = MEMORY[0x277CF7ED8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];
  bottomBar = [v11 bottomBar];
  liveCaptureContainer = [(CFXCaptureViewController *)self liveCaptureContainer];
  [v6 layoutZoomControl:previewCopy forLayoutStyle:cam_initialLayoutStyle bottomBar:bottomBar previewView:liveCaptureContainer];
}

- (void)layoutZoomSliderRelativeToBottomBarAndPreview
{
  delegate = [(CFXCaptureViewController *)self delegate];
  v98 = [delegate cameraControlsViewControllerForCaptureViewController:self];

  bottomBar = [v98 bottomBar];
  zoomSlider = [(CFXCaptureViewController *)self zoomSlider];
  superview = [zoomSlider superview];

  backgroundStyle = [bottomBar backgroundStyle];
  [bottomBar layoutIfNeeded];
  shutterButton = [bottomBar shutterButton];
  [shutterButton frame];
  [shutterButton alignmentRectForFrame:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  superview2 = [shutterButton superview];
  [superview2 convertRect:superview toView:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  if (CFXCaptureCapabilitiesIsCTMSupported())
  {
    capabilities = [MEMORY[0x277CF7E78] capabilities];
    zoomControlSupported = [capabilities zoomControlSupported];

    if ((zoomControlSupported & 1) == 0)
    {
      dynamicShutterControl = [(CFXCaptureViewController *)self dynamicShutterControl];
      superview3 = [dynamicShutterControl superview];
      dynamicShutterControl2 = [(CFXCaptureViewController *)self dynamicShutterControl];
      [dynamicShutterControl2 frame];
      [superview3 convertRect:superview toView:?];
      v19 = v31;
      v21 = v32;
      v23 = v33;
      v25 = v34;
    }
  }

  v93 = v23;
  [bottomBar bounds];
  [bottomBar convertRect:superview toView:?];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v92 = v25;
  v44 = v21;
  if (![currentDevice userInterfaceIdiom])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v45 = v19;
    if (v47 == 568)
    {
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
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
  liveCaptureContainer = [(CFXCaptureViewController *)self liveCaptureContainer];
  liveCaptureContainer2 = [(CFXCaptureViewController *)self liveCaptureContainer];
  [liveCaptureContainer2 bounds];
  [liveCaptureContainer convertRect:superview toView:?];
  v90 = v54;
  v91 = v53;
  v89 = v55;
  v57 = v56;

  view = [(CFXCaptureViewController *)self view];
  [view bounds];
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
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    if (!userInterfaceIdiom)
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

  [superview frame];
  v71 = CGRectGetWidth(v104);
  [superview frame];
  if (v71 <= CGRectGetHeight(v105))
  {
    v73 = v45;
    goto LABEL_17;
  }

  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  v73 = v45;
  if ([currentDevice3 userInterfaceIdiom])
  {

LABEL_17:
    v74 = v44;
    v75 = v93;
    goto LABEL_18;
  }

  currentDevice4 = [MEMORY[0x277D75418] currentDevice];
  v74 = v44;
  if ([currentDevice4 userInterfaceIdiom])
  {

    v75 = v93;
LABEL_23:
    [bottomBar frame];
    v96 = v81;
    v97 = v80;
    v94 = v82;
    v95 = v83;
    goto LABEL_18;
  }

  mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen3 bounds];
  v75 = v93;
  if (v85 == 568)
  {
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 bounds];
    v88 = v87;

    if (v88 != 568)
    {
      goto LABEL_23;
    }
  }

LABEL_18:
  v76 = MEMORY[0x277CF7EE8];
  zoomSlider2 = [(CFXCaptureViewController *)self zoomSlider];
  currentDevice5 = [MEMORY[0x277D75418] currentDevice];
  [v76 layoutZoomSlider:zoomSlider2 forLayoutStyle:objc_msgSend(currentDevice5 bottomBarAlignmentRect:"cam_initialLayoutStyle") bottomBarTransparent:backgroundStyle == 1 shutterButtonAlignmentRect:v97 previewViewAlignmentRect:v94 viewfinderViewAlignmentRect:{v95, v96, v73, v74, v75, v92, v91, v90, v89, v57, *&v60, *&v62, *&v64, *&v66}];
}

- (void)layoutZoomControlForCTM
{
  zoomControl = [(CFXCaptureViewController *)self zoomControl];
  superview = [zoomControl superview];

  delegate = [(CFXCaptureViewController *)self delegate];
  v5 = [delegate cameraControlsViewControllerForCaptureViewController:self];
  bottomBar = [v5 bottomBar];

  [bottomBar bounds];
  [bottomBar convertRect:superview toView:?];
  v37 = v8;
  v38 = v7;
  v35 = v10;
  v36 = v9;
  dynamicShutterControl = [(CFXCaptureViewController *)self dynamicShutterControl];
  superview2 = [dynamicShutterControl superview];
  dynamicShutterControl2 = [(CFXCaptureViewController *)self dynamicShutterControl];
  [dynamicShutterControl2 frame];
  [superview2 convertRect:superview toView:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  liveCaptureContainer = [(CFXCaptureViewController *)self liveCaptureContainer];
  liveCaptureContainer2 = [(CFXCaptureViewController *)self liveCaptureContainer];
  [liveCaptureContainer2 bounds];
  [liveCaptureContainer convertRect:superview toView:?];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = MEMORY[0x277CF7ED8];
  zoomControl2 = [(CFXCaptureViewController *)self zoomControl];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [v32 layoutZoomControl:zoomControl2 forLayoutStyle:objc_msgSend(currentDevice bottomBarAlignmentRect:"cam_initialLayoutStyle") bottomBarTransparent:0 shutterButtonAlignmentRect:v38 previewViewAlignmentRect:{v37, v36, v35, v15, v17, v19, v21, v25, v27, v29, v31}];
}

- (void)layoutZoomUI
{
  capabilities = [MEMORY[0x277CF7E78] capabilities];
  isBackDualSupported = [capabilities isBackDualSupported];
  zoomControlSupported = [capabilities zoomControlSupported];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v14 = +[JFXOrientationMonitor keyWindow];
    [v14 bounds];

    +[JFXOrientationMonitor interfaceOrientation];
    IsCTMSupported = CFXCaptureCapabilitiesIsCTMSupported();
    if ((isBackDualSupported | IsCTMSupported))
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
          if (zoomControlSupported)
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
          zoomControl = [(CFXCaptureViewController *)self zoomControl];
          [(CFXCaptureViewController *)self layoutZoomControlRelativeToBottomBarAndPreview:zoomControl];
        }

        zoomControl2 = [(CFXCaptureViewController *)self zoomControl];
        [zoomControl2 frame];
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
      zoomControl3 = [(CFXCaptureViewController *)self zoomControl];
      v45 = v48;
      v46 = v49;
      v47 = v50;
      [zoomControl3 setTransform:&v45];

      v29 = *(&v53 + 1);
      v28 = *&v53;
      zoomControl4 = [(CFXCaptureViewController *)self zoomControl];
      [zoomControl4 setCenter:{v28, v29}];

      v32 = *(&v51 + 1);
      v31 = *&v51;
      v34 = *(&v52 + 1);
      v33 = *&v52;
      zoomControl5 = [(CFXCaptureViewController *)self zoomControl];
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
        zoomControl2 = [(CFXCaptureViewController *)self zoomSlider];
        [zoomControl2 frame];
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
      zoomSlider = [(CFXCaptureViewController *)self zoomSlider];
      v45 = v42;
      v46 = v43;
      v47 = v44;
      [zoomSlider setTransform:&v45];

      v39 = *(&v53 + 1);
      v38 = *&v53;
      zoomSlider2 = [(CFXCaptureViewController *)self zoomSlider];
      [zoomSlider2 setCenter:{v38, v39}];

      v32 = *(&v51 + 1);
      v31 = *&v51;
      v34 = *(&v52 + 1);
      v33 = *&v52;
      zoomControl5 = [(CFXCaptureViewController *)self zoomSlider];
    }

    zoomControl6 = zoomControl5;
    [zoomControl5 setBounds:{v31, v32, v33, v34}];
    goto LABEL_15;
  }

  if (zoomControlSupported)
  {
    view = [(CFXCaptureViewController *)self view];
    [view bounds];
    v10 = v9 * 0.5;

    v11 = MEMORY[0x277CF7ED8];
    zoomControl6 = [(CFXCaptureViewController *)self zoomControl];
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    [v11 layoutZoomControl:zoomControl6 layoutSide:1 forLayoutStyle:objc_msgSend(currentDevice2 width:"cam_initialLayoutStyle") marginForZoomButtonFromEdge:375.0 marginForZoomDialFromEdge:20.5 zoomDialContentMaskingHeight:0.0 centerOfZoomControlInContainerView:{0.0, -82.5, v10}];

LABEL_15:
    goto LABEL_20;
  }

  [(CFXCaptureViewController *)self layoutZoomSliderRelativeToBottomBarAndPreview];
LABEL_20:
}

- (void)handlePinchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (!isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    [(CFXCaptureViewController *)self CFX_handleZoomPinchGestureRecognizer:recognizerCopy];
  }

  delegate = [(CFXCaptureViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CFXCaptureViewController *)self delegate];
    state = [recognizerCopy state];
    [recognizerCopy scale];
    v9 = v8;
    [recognizerCopy velocity];
    [delegate2 captureViewController:self presentationRectWasPinchedWithState:state scale:v9 velocity:v10];
  }
}

- (double)CFX_maxZoomForCamera
{
  v7 = 0;
  v8 = 1;
  v6 = 0;
  [(CFXCaptureViewController *)self CFX_getCaptureDevice:&v8 captureDevicePosition:&v7 captureMode:&v6];
  capabilities = [MEMORY[0x277CF7E78] capabilities];
  [capabilities maximumZoomFactorForMode:v6 device:v8 videoConfiguration:0];
  v4 = v3;

  return v4;
}

- (void)zoomSliderValueDidChange:(id)change forEvent:(id)event
{
  changeCopy = change;
  if (([changeCopy isAutozooming] & 1) == 0)
  {
    [changeCopy value];
    v6 = v5;
    [(CFXCaptureViewController *)self CFX_maxZoomForCamera];
    v8 = pow(v7, v6);
    v9 = +[JFXVideoCameraController sharedInstance];
    [v9 rampToZoom:v8 duration:0.25];
  }
}

- (void)zoomSliderDidBeginAutozooming:(id)autozooming
{
  v4 = 1.0;
  if (([autozooming isMinimumAutozooming] & 1) == 0)
  {
    [(CFXCaptureViewController *)self CFX_maxZoomForCamera];
    *&v5 = v5;
    v4 = *&v5;
  }

  isRecording = [(CFXCaptureViewController *)self isRecording];
  v7 = +[JFXVideoCameraController sharedInstance];
  v9 = v7;
  v8 = 0.75;
  if (!isRecording)
  {
    v8 = 1.5;
  }

  [v7 rampToZoom:v4 rate:v8];
}

- (void)zoomSliderDidEndAutozooming:(id)autozooming
{
  v4 = +[JFXVideoCameraController sharedInstance];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__CFXCaptureViewController_zoomSliderDidEndAutozooming___block_invoke;
  v5[3] = &unk_278D7C800;
  v5[4] = self;
  [v4 stopRampToZoom:v5];
}

- (void)CFX_setZoomSliderFromZoomFactor:(double)factor
{
  [(CFXCaptureViewController *)self CFX_maxZoomForCamera];
  v6 = v5;
  v7 = log(factor);
  *&v7 = v7 / log(v6);
  zoomSlider = [(CFXCaptureViewController *)self zoomSlider];
  LODWORD(v8) = LODWORD(v7);
  [zoomSlider setValue:v8];
}

- (void)zoomControl:(id)control didChangeZoomFactor:(double)factor interactionType:(int64_t)type
{
  v9 = JFXLog_DebugCapture();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CFXCaptureViewController zoomControl:a2 didChangeZoomFactor:v9 interactionType:factor];
  }

  if (type == 1)
  {
    v17 = 0;
    v15 = 0;
    v16 = 0;
    [(CFXCaptureViewController *)self CFX_getCaptureDevice:&v17 captureDevicePosition:&v16 captureMode:&v15];
    v12 = ((v17 & 0xFFFFFFFFFFFFFFFDLL) == 5 || v17 == 6) && factor == 1.0;
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
    *&v14[5] = factor;
    *&v14[6] = v13;
    [JTAnimation performAnimation:v14 duration:0 completion:0.15];
  }

  else if (!type)
  {
    v10 = +[JFXVideoCameraController sharedInstance];
    [v10 rampToZoom:factor duration:0.25];
  }
}

void __76__CFXCaptureViewController_zoomControl_didChangeZoomFactor_interactionType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutZoomUI];
  v2 = +[JFXVideoCameraController sharedInstance];
  [v2 rampToZoom:*(a1 + 40) duration:*(a1 + 48)];
}

- (BOOL)canToggleBetweenZoomFactorsForZoomControl:(id)control
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

- (void)toggleBetweenZoomFactorsForZoomControl:(id)control
{
  controlCopy = control;
  if (![(CFXCaptureViewController *)self cameraIsFlipping])
  {
    [(CFXCaptureViewController *)self setCameraIsFlipping:1];
    v10 = 0;
    v11 = 0;
    v9 = 0;
    [(CFXCaptureViewController *)self CFX_getCaptureDevice:&v11 captureDevicePosition:&v10 captureMode:&v9];
    zoomButtonSymbol = [controlCopy zoomButtonSymbol];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__CFXCaptureViewController_toggleBetweenZoomFactorsForZoomControl___block_invoke;
    v6[3] = &unk_278D7C118;
    v8 = zoomButtonSymbol == 0;
    v6[4] = self;
    v7 = controlCopy;
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

- (void)cameraControlsViewControllerEffectsButtonWasTapped:(id)tapped
{
  delegate = [(CFXCaptureViewController *)self delegate];
  [delegate captureViewControllerEffectsButtonWasTapped:self];
}

- (void)cameraControlsViewControllerSwitchCameraButtonWasTapped:(id)tapped
{
  v31 = *MEMORY[0x277D85DE8];
  if (![(CFXCaptureViewController *)self cameraIsFlipping])
  {
    [(CFXCaptureViewController *)self setCameraIsFlipping:1];
    zoomControl = [(CFXCaptureViewController *)self zoomControl];
    [zoomControl setHidden:1];

    zoomSlider = [(CFXCaptureViewController *)self zoomSlider];
    [zoomSlider setHidden:1];

    [(CFXCaptureViewController *)self removeEffectEditorAnimated:0];
    v6 = [CFXViewfinderFlipTransition alloc];
    cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
    containerView = [cameraViewController containerView];
    v9 = [(CFXViewfinderFlipTransition *)v6 initWithViewfinderView:containerView];
    [(CFXCaptureViewController *)self setViewfinderFlipTransition:v9];

    v10 = +[JFXVideoCameraController sharedInstance];
    cameraPosition = [v10 cameraPosition];

    v12 = cameraPosition == 2;
    if (cameraPosition == 2)
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
      v30 = cameraPosition;
      _os_log_impl(&dword_242A3B000, v14, OS_LOG_TYPE_DEFAULT, "Starting switch camera transition from: %ld", buf, 0xCu);
    }

    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    viewfinderFlipTransition = [(CFXCaptureViewController *)self viewfinderFlipTransition];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __84__CFXCaptureViewController_cameraControlsViewControllerSwitchCameraButtonWasTapped___block_invoke;
    v27[3] = &unk_278D79D20;
    v17 = v15;
    v28 = v17;
    [viewfinderFlipTransition performFlipTransitionWithDirection:v12 completionHandler:v27];

    cameraViewController2 = [(CFXCaptureViewController *)self cameraViewController];
    [cameraViewController2 stopRenderingCameraFrames];

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

- (void)insertCamBottomBar:(id)bar
{
  barCopy = bar;
  view = [(CFXCaptureViewController *)self view];
  topBar = [(CFXCaptureViewController *)self topBar];
  [view insertSubview:barCopy above:topBar];
}

- (CGRect)bottomBarCTMControlsFrameForWindowOrientation:(int64_t)orientation bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ((orientation - 3) > 1)
  {
    v9 = bounds.size.width;
  }

  else
  {
    v9 = CGRectGetHeight(bounds);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    height = CGRectGetWidth(v21);
    x = 0.0;
    y = 0.0;
  }

  v10 = objc_alloc(MEMORY[0x277CF7EB0]);
  dynamicShutterControl = [(CFXCaptureViewController *)self dynamicShutterControl];
  [dynamicShutterControl intrinsicContentSize];
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

- (void)liveCaptureViewController:(id)controller didRenderFrame:(id)frame
{
  frameCopy = frame;
  delegate = [(CFXCaptureViewController *)self delegate];
  [delegate captureViewController:self didRenderFrame:frameCopy];

  if ([(CFXCaptureViewController *)self CFX_isRenderingAnimatedOverlaysThatDontLoop])
  {
    v7 = objc_opt_new();
    runOnceAnimatedOverlays = [(CFXCaptureViewController *)self runOnceAnimatedOverlays];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __69__CFXCaptureViewController_liveCaptureViewController_didRenderFrame___block_invoke;
    v14 = &unk_278D7C850;
    v15 = frameCopy;
    v16 = v7;
    v9 = v7;
    [runOnceAnimatedOverlays enumerateObjectsUsingBlock:&v11];

    [JFXEffectEditingUtilities disableAnimationForEffects:v9, v11, v12, v13, v14];
    runOnceAnimatedOverlays2 = [(CFXCaptureViewController *)self runOnceAnimatedOverlays];
    [runOnceAnimatedOverlays2 removeObjectsInArray:v9];
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
  runOnceAnimatedOverlays = [(CFXCaptureViewController *)self runOnceAnimatedOverlays];
  v3 = [runOnceAnimatedOverlays count] != 0;

  return v3;
}

- (void)liveCaptureViewController:(id)controller livePreviewTappedAtNormalizedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  isCapturing = [cameraViewController isCapturing];

  if ((isCapturing & 1) == 0)
  {
    composition = [(CFXCaptureViewController *)self composition];
    v10 = [composition jtEffectsForType:2];

    if ([v10 count])
    {
      cameraViewController2 = [(CFXCaptureViewController *)self cameraViewController];
      [cameraViewController2 normalizedMinimumHitTestArea];
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

- (void)liveCaptureViewController:(id)controller livePreviewPannedAtNormalizedPoint:(CGPoint)point gesture:(id)gesture
{
  y = point.y;
  x = point.x;
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
    isCapturing = [cameraViewController isCapturing];

    if (isCapturing)
    {
      goto LABEL_49;
    }
  }

  state = [gestureCopy state];
  if ((state - 3) >= 2)
  {
    if (state != 2)
    {
      if (state != 1)
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
        effectEditor = [(CFXCaptureViewController *)self effectEditor];
        editEffect = [effectEditor editEffect];

        jtEffect = [editEffect jtEffect];
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

        if (jtEffect)
        {
          goto LABEL_42;
        }
      }

      composition = [(CFXCaptureViewController *)self composition];
      v20 = [composition jtEffectsForType:2];

      if ([v20 count] && (-[CFXCaptureViewController cameraViewController](self, "cameraViewController"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "normalizedMinimumHitTestArea"), v23 = v22, v25 = v24, v21, v39 = *MEMORY[0x277CC08F0], v40 = *(MEMORY[0x277CC08F0] + 16), +[JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:atNormalizedPoint:atTime:adjustForMinimumSize:normalizedMinimumSize:](JFXEffectEditingUtilities, "hitTestOverlaysAtPosterFrame:atNormalizedPoint:atTime:adjustForMinimumSize:normalizedMinimumSize:", v20, &v39, 1, x, y, v23, v25), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        jtEffect = v26;
        v27 = CFXLog_DebugEffectEditingUI();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);

        if (!v28)
        {
LABEL_41:

LABEL_42:
          if ([jtEffect type] == 2)
          {
            appliedDirectOverlayEditingGestures = [(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures];
            [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:appliedDirectOverlayEditingGestures | 1];
            [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:appliedDirectOverlayEditingGestures | 1];
            if (![(CFXCaptureViewController *)self isEditingEffect])
            {
              [(CFXCaptureViewController *)self displayEffectEditorForEffect:jtEffect forMode:1];
            }

            v37 = CFXLog_DebugEffectEditingUI();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [CFXCaptureViewController liveCaptureViewController:livePreviewPannedAtNormalizedPoint:gesture:];
            }

            effectEditor2 = [(CFXCaptureViewController *)self effectEditor];
            [effectEditor2 handlePanGesture:gestureCopy];
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

        jtEffect = 0;
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

      effectEditor3 = [(CFXCaptureViewController *)self effectEditor];
      [effectEditor3 handlePanGesture:gestureCopy];
    }

    else
    {
      effectEditor3 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(effectEditor3, OS_LOG_TYPE_DEBUG))
      {
        [CFXCaptureViewController liveCaptureViewController:livePreviewPannedAtNormalizedPoint:gesture:];
      }
    }

LABEL_36:

    goto LABEL_49;
  }

  if (([(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures]& 1) == 0 || ![(CFXCaptureViewController *)self isEditingEffect])
  {
    effectEditor3 = CFXLog_DebugEffectEditingUI();
    if (os_log_type_enabled(effectEditor3, OS_LOG_TYPE_DEBUG))
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

  effectEditor4 = [(CFXCaptureViewController *)self effectEditor];
  [effectEditor4 handlePanGesture:gestureCopy];

  appliedDirectOverlayEditingGestures2 = [(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures];
  [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:appliedDirectOverlayEditingGestures2 & 0xFFFFFFFFFFFFFFFELL];
  [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:appliedDirectOverlayEditingGestures2 & 0xFFFFFFFFFFFFFFFELL];
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

- (void)liveCaptureViewController:(id)controller livePreviewPinchedAtNormalizedCenterPoint:(CGPoint)point gesture:(id)gesture
{
  y = point.y;
  x = point.x;
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
    isCapturing = [cameraViewController isCapturing];

    if (isCapturing)
    {
      goto LABEL_45;
    }
  }

  state = [gestureCopy state];
  if ((state - 3) < 2)
  {
    if (([(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures]& 2) != 0 && [(CFXCaptureViewController *)self isEditingEffect])
    {
      v30 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [CFXCaptureViewController liveCaptureViewController:livePreviewPinchedAtNormalizedCenterPoint:gesture:];
      }

      effectEditor = [(CFXCaptureViewController *)self effectEditor];
      [effectEditor handlePinchGesture:gestureCopy];

      appliedDirectOverlayEditingGestures = [(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures];
      [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:appliedDirectOverlayEditingGestures & 0xFFFFFFFFFFFFFFFDLL];
      [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:appliedDirectOverlayEditingGestures & 0xFFFFFFFFFFFFFFFDLL];
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
    if (state != 2)
    {
      if (state != 1)
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
        effectEditor2 = [(CFXCaptureViewController *)self effectEditor];
        editEffect = [effectEditor2 editEffect];

        jtEffect = [editEffect jtEffect];
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

        if (jtEffect)
        {
          goto LABEL_37;
        }
      }

      composition = [(CFXCaptureViewController *)self composition];
      v20 = [composition jtEffectsForType:2];

      if ([v20 count] && (-[CFXCaptureViewController cameraViewController](self, "cameraViewController"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "normalizedMinimumHitTestArea"), v23 = v22, v25 = v24, v21, v38 = *MEMORY[0x277CC08F0], v39 = *(MEMORY[0x277CC08F0] + 16), +[JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:atNormalizedPoint:atTime:adjustForMinimumSize:normalizedMinimumSize:](JFXEffectEditingUtilities, "hitTestOverlaysAtPosterFrame:atNormalizedPoint:atTime:adjustForMinimumSize:normalizedMinimumSize:", v20, &v38, 1, x, y, v23, v25), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        jtEffect = v26;
        v27 = CFXLog_DebugEffectEditingUI();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);

        if (!v28)
        {
LABEL_36:

LABEL_37:
          if ([jtEffect type] == 2)
          {
            appliedDirectOverlayEditingGestures2 = [(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures];
            [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:appliedDirectOverlayEditingGestures2 | 2];
            [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:appliedDirectOverlayEditingGestures2 | 2];
            if (![(CFXCaptureViewController *)self isEditingEffect])
            {
              [(CFXCaptureViewController *)self displayEffectEditorForEffect:jtEffect forMode:1];
            }

            v36 = CFXLog_DebugEffectEditingUI();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              [CFXCaptureViewController liveCaptureViewController:livePreviewPinchedAtNormalizedCenterPoint:gesture:];
            }

            effectEditor3 = [(CFXCaptureViewController *)self effectEditor];
            [effectEditor3 handlePinchGesture:gestureCopy];
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

        jtEffect = 0;
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

      jtEffect = [(CFXCaptureViewController *)self effectEditor];
      [jtEffect handlePinchGesture:gestureCopy];
      goto LABEL_43;
    }
  }

LABEL_44:
  if (([(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures]& 2) == 0)
  {
LABEL_45:
    [(CFXCaptureViewController *)self handlePinchGestureRecognizer:gestureCopy];
  }
}

- (void)liveCaptureViewController:(id)controller livePreviewRotatedAtNormalizedCenterPoint:(CGPoint)point gesture:(id)gesture
{
  y = point.y;
  x = point.x;
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
    isCapturing = [cameraViewController isCapturing];

    if (isCapturing)
    {
      goto LABEL_44;
    }
  }

  state = [gestureCopy state];
  if ((state - 3) < 2)
  {
    if (([(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures]& 4) != 0 && [(CFXCaptureViewController *)self isEditingEffect])
    {
      v30 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [CFXCaptureViewController liveCaptureViewController:livePreviewRotatedAtNormalizedCenterPoint:gesture:];
      }

      effectEditor = [(CFXCaptureViewController *)self effectEditor];
      [effectEditor handleRotateGesture:gestureCopy];

      appliedDirectOverlayEditingGestures = [(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures];
      [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:appliedDirectOverlayEditingGestures & 0xFFFFFFFFFFFFFFFBLL];
      [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:appliedDirectOverlayEditingGestures & 0xFFFFFFFFFFFFFFFBLL];
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
    if (state != 2)
    {
      if (state != 1)
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
        effectEditor2 = [(CFXCaptureViewController *)self effectEditor];
        editEffect = [effectEditor2 editEffect];

        jtEffect = [editEffect jtEffect];
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

        if (jtEffect)
        {
          goto LABEL_37;
        }
      }

      composition = [(CFXCaptureViewController *)self composition];
      v20 = [composition jtEffectsForType:2];

      if ([v20 count] && (-[CFXCaptureViewController cameraViewController](self, "cameraViewController"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "normalizedMinimumHitTestArea"), v23 = v22, v25 = v24, v21, v39 = *MEMORY[0x277CC08F0], v40 = *(MEMORY[0x277CC08F0] + 16), +[JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:atNormalizedPoint:atTime:adjustForMinimumSize:normalizedMinimumSize:](JFXEffectEditingUtilities, "hitTestOverlaysAtPosterFrame:atNormalizedPoint:atTime:adjustForMinimumSize:normalizedMinimumSize:", v20, &v39, 1, x, y, v23, v25), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        jtEffect = v26;
        v27 = CFXLog_DebugEffectEditingUI();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);

        if (!v28)
        {
LABEL_36:

LABEL_37:
          if ([jtEffect type] == 2)
          {
            appliedDirectOverlayEditingGestures2 = [(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures];
            [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:appliedDirectOverlayEditingGestures2 | 4];
            [(CFXCaptureViewController *)self setAppliedDirectOverlayEditingGestures:appliedDirectOverlayEditingGestures2 | 4];
            if (![(CFXCaptureViewController *)self isEditingEffect])
            {
              [(CFXCaptureViewController *)self displayEffectEditorForEffect:jtEffect forMode:1];
            }

            v37 = CFXLog_DebugEffectEditingUI();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [CFXCaptureViewController liveCaptureViewController:livePreviewRotatedAtNormalizedCenterPoint:gesture:];
            }

            effectEditor3 = [(CFXCaptureViewController *)self effectEditor];
            [effectEditor3 handleRotateGesture:gestureCopy];
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

        jtEffect = 0;
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

      effectEditor4 = [(CFXCaptureViewController *)self effectEditor];
      [effectEditor4 handleRotateGesture:gestureCopy];
    }
  }

LABEL_44:
}

- (void)liveCaptureViewController:(id)controller livePreviewDoubleTappedAtNormalizedCenterPoint:(CGPoint)point gesture:(id)gesture
{
  v6 = [(CFXCaptureViewController *)self delegate:controller];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate = [(CFXCaptureViewController *)self delegate];
    [delegate captureViewControllerPresentationRectWasDoubleTapped:self];
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

  blackColor = [MEMORY[0x277D75348] blackColor];
  v5 = [blackColor colorWithAlphaComponent:0.5];
  animojiReticleFacePromptView = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [animojiReticleFacePromptView setBackgroundColor:v5];

  animojiReticleFacePromptView2 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  layer = [animojiReticleFacePromptView2 layer];
  [layer setCornerRadius:2.0];

  animojiReticleFacePromptView3 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [animojiReticleFacePromptView3 setAlpha:0.0];

  animojiReticleFacePromptView4 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [animojiReticleFacePromptView4 setUserInteractionEnabled:0];

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
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v16 = v12;
  [v12 setObject:whiteColor forKeyedSubscript:*MEMORY[0x277D740C0]];
  [v12 setObject:v61 forKeyedSubscript:*MEMORY[0x277D740A8]];
  [v12 setObject:v15 forKeyedSubscript:*MEMORY[0x277D74118]];
  v58 = v12;
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x277D74138]];
  v17 = objc_alloc(MEMORY[0x277CCA898]);
  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  v19 = [jfxBundle localizedStringForKey:@"BRING_FACE_INTO_VIEW_PROMPT_DISPLAY Name" value:&stru_28553D028 table:0];
  v57 = [v17 initWithString:v19 attributes:v16];

  [v11 setAttributedText:v57];
  [v11 sizeToFit];
  animojiReticleFacePromptView5 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [animojiReticleFacePromptView5 addSubview:v11];

  presentationView = [(CFXCaptureViewController *)self presentationView];
  animojiReticleFacePromptView6 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [presentationView addSubview:animojiReticleFacePromptView6];

  animojiReticleFacePromptView7 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [animojiReticleFacePromptView7 setTranslatesAutoresizingMaskIntoConstraints:0];

  animojiReticleFacePromptView8 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  topAnchor = [animojiReticleFacePromptView8 topAnchor];
  presentationView2 = [(CFXCaptureViewController *)self presentationView];
  topAnchor2 = [presentationView2 topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  [(CFXCaptureViewController *)self setFacePromptLabelYConstraint:v28];

  v29 = MEMORY[0x277CCAAD0];
  facePromptLabelYConstraint = [(CFXCaptureViewController *)self facePromptLabelYConstraint];
  v64[0] = facePromptLabelYConstraint;
  animojiReticleFacePromptView9 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  centerXAnchor = [animojiReticleFacePromptView9 centerXAnchor];
  presentationView3 = [(CFXCaptureViewController *)self presentationView];
  centerXAnchor2 = [presentationView3 centerXAnchor];
  v35 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v64[1] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
  [v29 activateConstraints:v36];

  v37 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v49 = MEMORY[0x277CCAAD0];
  leftAnchor = [v11 leftAnchor];
  animojiReticleFacePromptView10 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  leftAnchor2 = [animojiReticleFacePromptView10 leftAnchor];
  v53 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:10.0];
  v63[0] = v53;
  rightAnchor = [v11 rightAnchor];
  animojiReticleFacePromptView11 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  rightAnchor2 = [animojiReticleFacePromptView11 rightAnchor];
  v47 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-10.0];
  v63[1] = v47;
  v52 = v11;
  topAnchor3 = [v11 topAnchor];
  animojiReticleFacePromptView12 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  topAnchor4 = [animojiReticleFacePromptView12 topAnchor];
  v41 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:3.0];
  v63[2] = v41;
  bottomAnchor = [v37 bottomAnchor];
  animojiReticleFacePromptView13 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  bottomAnchor2 = [animojiReticleFacePromptView13 bottomAnchor];
  v45 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-3.0];
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
    cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
    v3 = [cameraViewController isCapturing] ^ 1;
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
  captureMode = [(CFXCaptureViewController *)self captureMode];
  v4 = (+[JFXOrientationMonitor interfaceOrientation]- 3) < 2;
  v5 = captureMode == 2 && v4;
  if (captureMode == 2)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v7 = [currentDevice userInterfaceIdiom] == 1;
  }

  else
  {
    v7 = 0;
  }

  animojiTrackingLossReticle = [(CFXCaptureViewController *)self animojiTrackingLossReticle];

  if (animojiTrackingLossReticle)
  {
    presentationView = [(CFXCaptureViewController *)self presentationView];
    [presentationView bounds];
    CenterPoint = CGRectGetCenterPoint(v10, v11, v12, v13);
    v16 = v15;
    animojiTrackingLossReticle2 = [(CFXCaptureViewController *)self animojiTrackingLossReticle];
    [animojiTrackingLossReticle2 setCenter:{CenterPoint, v16}];
  }

  if (v5 || v7)
  {
    elapsedTimeView = [(CFXCaptureViewController *)self elapsedTimeView];
    [elapsedTimeView bounds];
    v20 = v19 + 23.0 + 10.0;
    facePromptLabelYConstraint = [(CFXCaptureViewController *)self facePromptLabelYConstraint];
    [facePromptLabelYConstraint setConstant:v20];
  }

  else
  {
    elapsedTimeView = [(CFXCaptureViewController *)self facePromptLabelYConstraint];
    [elapsedTimeView setConstant:10.0];
  }

  animojiReticleFacePromptView = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [animojiReticleFacePromptView setNeedsUpdateConstraints];

  animojiReticleFacePromptView2 = [(CFXCaptureViewController *)self animojiReticleFacePromptView];
  [animojiReticleFacePromptView2 updateConstraintsIfNeeded];
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
    liveCaptureContainer = [(CFXCaptureViewController *)self liveCaptureContainer];
    v12 = +[CFXMediaSettings sharedInstance];
    [v12 renderSize];
    v14 = v13;
    v16 = v15;

    [liveCaptureContainer frame];
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

- (void)displayEffectEditorForEffect:(id)effect forMode:(unint64_t)mode
{
  effectCopy = effect;
  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  isCapturing = [cameraViewController isCapturing];

  if ((isCapturing & 1) == 0)
  {
    effectEditor = [(CFXCaptureViewController *)self effectEditor];

    if (effectEditor)
    {
      effectEditor2 = [(CFXCaptureViewController *)self effectEditor];
      if ([effectEditor2 mode] == mode)
      {
        effectEditor3 = [(CFXCaptureViewController *)self effectEditor];
        editEffect = [effectEditor3 editEffect];
        v13 = [editEffect isEqual:effectCopy];

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

    if (mode || ![JFXEffectEditingUtilities canEditTextForEffect:effectCopy])
    {
      v15 = [CFXEffect effectWithJTEffect:effectCopy];
      v16 = [JFXPassThroughContainerView alloc];
      view = [(CFXCaptureViewController *)self view];
      [view frame];
      v18 = [(JFXPassThroughContainerView *)v16 initWithFrame:?];
      [(CFXCaptureViewController *)self setEffectEditorContainerView:v18];

      if ([(CFXCaptureViewController *)self isMessagesOnPhone])
      {
        nonTransformedContainerView = [(CFXCaptureViewController *)self nonTransformedContainerView];
        effectEditorContainerView = [(CFXCaptureViewController *)self effectEditorContainerView];
        [nonTransformedContainerView addSubview:effectEditorContainerView];
      }

      else
      {
        nonTransformedContainerView = [(CFXCaptureViewController *)self view];
        effectEditorContainerView = [(CFXCaptureViewController *)self effectEditorContainerView];
        topBar = [(CFXCaptureViewController *)self topBar];
        [nonTransformedContainerView insertSubview:effectEditorContainerView belowSubview:topBar];
      }

      v22 = [[CFXEffectEditorView alloc] initWithMode:mode delegate:self];
      [(CFXCaptureViewController *)self setEffectEditor:v22];

      [(CFXCaptureViewController *)self CFX_cameraViewFinderUncroppedFrame];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      effectEditor4 = [(CFXCaptureViewController *)self effectEditor];
      [effectEditor4 setFrame:{v24, v26, v28, v30}];

      effectEditorContainerView2 = [(CFXCaptureViewController *)self effectEditorContainerView];
      effectEditor5 = [(CFXCaptureViewController *)self effectEditor];
      [effectEditorContainerView2 addSubview:effectEditor5];

      [(CFXCaptureViewController *)self CFX_applyAutoRotationCorrectionToEditorViews];
      effectEditor6 = [(CFXCaptureViewController *)self effectEditor];
      [effectEditor6 beginEditingEffect:v15];
    }

    else if (![(CFXCaptureViewController *)self presentFullScreenTextEditorForEffect:effectCopy insertingEffect:0])
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
  effectEditor = [(CFXCaptureViewController *)self effectEditor];

  if (effectEditor)
  {
    [(CFXCaptureViewController *)self CFX_cameraViewFinderUncroppedFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    effectEditor2 = [(CFXCaptureViewController *)self effectEditor];
    [effectEditor2 setFrame:{v5, v7, v9, v11}];

    [(CFXCaptureViewController *)self CFX_applyAutoRotationCorrectionToEditorViews];
  }
}

- (void)removeEffectEditorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  effectEditor = [(CFXCaptureViewController *)self effectEditor];

  if (effectEditor)
  {
    effectEditor2 = [(CFXCaptureViewController *)self effectEditor];
    objc_initWeak(&location, effectEditor2);

    effectEditorContainerView = [(CFXCaptureViewController *)self effectEditorContainerView];
    objc_initWeak(&from, effectEditorContainerView);

    [(CFXCaptureViewController *)self setEffectEditor:0];
    [(CFXCaptureViewController *)self setEffectEditorContainerView:0];
    v8 = objc_loadWeakRetained(&location);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__CFXCaptureViewController_removeEffectEditorAnimated___block_invoke;
    v9[3] = &unk_278D7C878;
    objc_copyWeak(&v10, &location);
    objc_copyWeak(&v11, &from);
    [v8 endEditingAnimated:animatedCopy withCompletionBlock:v9];

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
  effectEditor = [(CFXCaptureViewController *)self effectEditor];
  v3 = effectEditor != 0;

  return v3;
}

- (BOOL)presentFullScreenTextEditorForEffect:(id)effect insertingEffect:(BOOL)insertingEffect
{
  insertingEffectCopy = insertingEffect;
  effectCopy = effect;
  view = [(CFXCaptureViewController *)self view];
  [(CFXCaptureViewController *)self CFX_cameraViewFinderUncroppedFrame];
  [view convertRect:0 toView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if ([(CFXCaptureViewController *)self isMessagesOnPhone])
  {
    cameraControls = [(CFXCaptureViewController *)self cameraControls];
    view2 = [cameraControls view];
    [(CFXCaptureViewController *)self CFX_cameraViewFinderUncroppedFrame];
    [view2 convertRect:0 toView:?];
    v9 = v18;
    v11 = v19;
    v13 = v20;
    v15 = v21;
  }

  v22 = [CFXEffect effectWithJTEffect:effectCopy];
  isMessagesOnPhone = [(CFXCaptureViewController *)self isMessagesOnPhone];
  selfCopy = self;
  if (isMessagesOnPhone)
  {
    selfCopy = [(CFXCaptureViewController *)self cameraControls];
  }

  v25 = [CFXFullScreenTextEditViewController displayFullScreenTextEditorForEffect:v22 inViewController:selfCopy delegate:self cameraViewWindowFrame:insertingEffectCopy insertingEffect:v9, v11, v13, v15];
  if (isMessagesOnPhone)
  {
  }

  effectBrowserContentPresenterViewController = [(CFXCaptureViewController *)self effectBrowserContentPresenterViewController];

  if (effectBrowserContentPresenterViewController)
  {
    view3 = [(CFXCaptureViewController *)self view];
    effectBrowserContentPresenterViewController2 = [(CFXCaptureViewController *)self effectBrowserContentPresenterViewController];
    view4 = [effectBrowserContentPresenterViewController2 view];
    [view3 bringSubviewToFront:view4];
  }

  return v25;
}

- (void)updateFullScreenTextEditorLayout
{
  if (+[CFXFullScreenTextEditViewController isFullScreenTextEditorPresented])
  {
    view = [(CFXCaptureViewController *)self view];
    [(CFXCaptureViewController *)self CFX_cameraViewFinderUncroppedFrame];
    [view convertRect:0 toView:?];
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
  faceTrackingEnabled = [v2 faceTrackingEnabled];

  return faceTrackingEnabled;
}

- (BOOL)isFaceTrackingDataAvailable
{
  shouldUseFaceTracking = [(CFXCaptureViewController *)self shouldUseFaceTracking];
  if (shouldUseFaceTracking)
  {

    LOBYTE(shouldUseFaceTracking) = +[JFXEffectEditingUtilities isFaceTrackingDataAvailable];
  }

  return shouldUseFaceTracking;
}

- (void)enableAnimationForOverlayEffect:(id)effect
{
  v19[4] = *MEMORY[0x277D85DE8];
  effectCopy = effect;
  if (([effectCopy forceDisableLooping] & 1) == 0)
  {
    v5 = *MEMORY[0x277D41888];
    v19[0] = *MEMORY[0x277D418E8];
    v19[1] = v5;
    v6 = *MEMORY[0x277D41898];
    v19[2] = *MEMORY[0x277D41890];
    v19[3] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [standardUserDefaults BOOLForKey:@"CFX_DisableFaceTimeAnimationLooping"];

    effectID = [effectCopy effectID];
    v11 = [v7 containsObject:effectID];

    if (!v11 || v9)
    {
      [effectCopy setForceDisableLooping:1];
      v18 = effectCopy;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
      v15 = CFXEffectPreviewStartAtNextRenderTime;
      v16 = 0;
      [JFXEffectEditingUtilities enableAnimationForEffects:v13 animationStartTime:&v15];

      runOnceAnimatedOverlays = [(CFXCaptureViewController *)self runOnceAnimatedOverlays];
      [runOnceAnimatedOverlays addObject:effectCopy];
    }

    else
    {
      [effectCopy setForceDisableLooping:0];
      v17 = effectCopy;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      v15 = CFXEffectPreviewStartAtNextRenderTime;
      v16 = 0;
      [JFXEffectEditingUtilities enableAnimationForEffects:v12 animationStartTime:&v15];

      [effectCopy setParameter:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D41A20]];
    }
  }
}

- (BOOL)passThroughContainerView:(id)view shouldHandleTouchWithinView:(id)withinView atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  withinViewCopy = withinView;
  if (isStreamingMode([(CFXCaptureViewController *)self captureMode]) && [(CFXCaptureViewController *)self appliedDirectOverlayEditingGestures])
  {
    v9 = 1;
  }

  else if (isStreamingMode(-[CFXCaptureViewController captureMode](self, "captureMode")) && (-[CFXCaptureViewController cameraViewController](self, "cameraViewController"), v10 = objc_claimAutoreleasedReturnValue(), [v10 containerView], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11 == withinViewCopy))
  {
    composition = [(CFXCaptureViewController *)self composition];
    v15 = [composition jtEffectsForType:2];

    if ([v15 count])
    {
      liveCaptureContainer = [(CFXCaptureViewController *)self liveCaptureContainer];
      view = [(CFXCaptureViewController *)self view];
      [liveCaptureContainer convertPoint:view fromView:{x, y}];
      v19 = v18;
      v21 = v20;

      liveCaptureContainer2 = [(CFXCaptureViewController *)self liveCaptureContainer];
      [liveCaptureContainer2 bounds];
      v24 = 44.0 / v23;
      v26 = 44.0 / v25;

      liveCaptureContainer3 = [(CFXCaptureViewController *)self liveCaptureContainer];
      [liveCaptureContainer3 bounds];
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
    view2 = [(CFXCaptureViewController *)self view];
    v9 = view2 != withinViewCopy;
  }

  return v9;
}

- (void)updateControlVisibilityAnimated:(BOOL)animated
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
  }

  else
  {
    captureMode = [(CFXCaptureViewController *)self captureMode];

    if (captureMode == 2)
    {
      flashButton = [(CFXCaptureViewController *)self flashButton];
      isExpanded = [flashButton isExpanded];

      elapsedTimeView = [(CFXCaptureViewController *)self elapsedTimeView];
      [elapsedTimeView setHidden:isExpanded];

      doneButton = [(CFXCaptureViewController *)self doneButton];
      [doneButton setHidden:isExpanded];
      goto LABEL_8;
    }
  }

  if ([(CFXCaptureViewController *)self captureMode]== 2)
  {
    topBar = [(CFXCaptureViewController *)self topBar];
    v10 = [topBar shouldHideElapsedTimeViewForGraphConfiguration:0];
    elapsedTimeView2 = [(CFXCaptureViewController *)self elapsedTimeView];
    [elapsedTimeView2 setHidden:v10];
  }

  doneButton = [(CFXCaptureViewController *)self topBar];
  v12 = [doneButton shouldHideDoneButtonForGraphConfiguration:0];
  doneButton2 = [(CFXCaptureViewController *)self doneButton];
  [doneButton2 setHidden:v12];

LABEL_8:
}

- (void)JFX_orientationMonitorDeviceInterfaceOrientationNotification:(id)notification
{
  notificationCopy = notification;
  [(CFXCaptureViewController *)self configureCaptureControlsForOrientationWithAnimation:1];
  v5 = +[JFXOrientationMonitor deviceInterfaceOrientation];
  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:@"kJFXOrientationMonitorDeviceInterfaceOrientationPreviousOrientationUserInfoKey"];
  integerValue = [v7 integerValue];

  if ([(CFXCaptureViewController *)self captureMode]== 1 && ![(CFXCaptureViewController *)self isExternalCaptureSessionAnExternalCamera])
  {

    [(CFXCaptureViewController *)self CFX_adjustOverlaysForCaptureOrientationChanged:v5 oldCaptureOrientation:integerValue];
  }
}

- (void)JFX_orientationMonitorInterfaceOrientationNotification:(id)notification
{
  if ([(CFXCaptureViewController *)self captureMode]!= 1)
  {
    [(CFXCaptureViewController *)self CFX_setFrameAndRenderSizes];
  }

  [(CFXCaptureViewController *)self configureUIForOrientation];
}

- (void)doneButtonTapped:(id)tapped
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = CFXLog_action();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    composition = [(CFXCaptureViewController *)self composition];
    jtEffects = [composition jtEffects];
    v7 = [CFXActionLogging actionLogAsJSONForEvent:@"canceled camera session" atLocation:@"live" withEffectStack:jtEffects];
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_242A3B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v11, 0xCu);
  }

  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  [cameraViewController stopRenderingCameraFrames];

  delegate = [(CFXCaptureViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CFXCaptureViewController *)self delegate];
    [delegate2 captureViewControllerDoneButtonWasTapped:self];
  }
}

- (void)CFX_setFrameAndRenderSizes
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = +[JFXOrientationMonitor interfaceOrientation];
  v4 = +[JFXVideoCameraController sharedInstance];
  cameraMode = [v4 cameraMode];

  [(CFXCaptureViewController *)self captureMode];
  v6 = JFXUncroppedFrameSizeForCameraModeAndOrientation(cameraMode, v3);
  v8 = v7;
  v9 = JFXCroppedFrameSizeForCameraModeAndOrientation(cameraMode, v3);
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
  selfCopy = self;
  composition = [(CFXCaptureViewController *)self composition];
  effects = [composition effects];

  v20 = [effects countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          objc_enumerationMutation(effects);
        }

        v25 = *(*(&v30 + 1) + 8 * i);
        jtEffect = [v25 jtEffect];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          jtEffect2 = [v25 jtEffect];
          *buf = *v23;
          *&buf[16] = *(v23 + 16);
          [jtEffect2 updateRenderSizeMaintainingAppearance:buf withComponentTime:{v9, v11}];
        }

        [(CFXEffectComposition *)v17 addEffect:v25 completion:0];
      }

      v21 = [effects countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v21);
  }

  [(CFXCaptureViewController *)selfCopy setComposition:v17];
}

- (BOOL)isMessagesOnPhone
{
  if ([(CFXCaptureViewController *)self captureMode]== 1)
  {
    return 0;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v2 = [currentDevice userInterfaceIdiom] == 0;

  return v2;
}

- (void)CFX_toggleCaptureUI
{
  cameraControls = [(CFXCaptureViewController *)self cameraControls];
  view = [cameraControls view];
  isHidden = [view isHidden];

  if ((CFXCaptureCapabilitiesIsCTMSupported() & 1) == 0)
  {
    if (isHidden)
    {
      v6 = isStreamingMode([(CFXCaptureViewController *)self captureMode]);
    }

    else
    {
      v6 = 1;
    }

    topBar = [(CFXCaptureViewController *)self topBar];
    [topBar setHidden:v6];
  }

  cameraControls2 = [(CFXCaptureViewController *)self cameraControls];
  view2 = [cameraControls2 view];
  [view2 setHidden:isHidden ^ 1u];
}

- (int64_t)CFX_captureFlashModeForCAMFlashMode:(int64_t)mode
{
  v3 = 1;
  if (mode != 1)
  {
    v3 = 2;
  }

  if (mode)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)CFX_captureTorchModeForCAMFlashMode:(int64_t)mode
{
  v3 = 1;
  if (mode != 1)
  {
    v3 = 2;
  }

  if (mode)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)CFX_camFlashModeForCaptureFlashMode:(int64_t)mode
{
  v3 = 1;
  if (mode != 1)
  {
    v3 = 2;
  }

  if (mode)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)CFX_handleZoomPinchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  [(CFXCaptureViewController *)self CFX_getCaptureDevice:&v11 captureDevicePosition:&v10 captureMode:&v9];
  if (v10 == 1)
  {
    zoomControl = [(CFXCaptureViewController *)self zoomControl];
    v6 = [(CFXCaptureViewController *)self canToggleBetweenZoomFactorsForZoomControl:zoomControl];

    cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
    isCapturing = [cameraViewController isCapturing];

    if (v6 && (isCapturing & 1) == 0)
    {
      [(CFXCaptureViewController *)self CFX_performFrontCameraZoomWithPinchGestureRecognizer:recognizerCopy];
    }
  }

  else if (!v10)
  {
    [(CFXCaptureViewController *)self CFX_performBackCameraZoomWithPinchGestureRecognizer:recognizerCopy];
  }
}

- (void)CFX_performBackCameraZoomWithPinchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  state = [recognizerCopy state];
  if ((state - 3) >= 3)
  {
    if (state == 2)
    {
      [(CFXCaptureViewController *)self zoomFactorAtPinchStart];
      v11 = v10;
      [recognizerCopy scale];
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

      zoomControl = [(CFXCaptureViewController *)self zoomControl];
      [zoomControl setZoomFactor:v15];

      [(CFXCaptureViewController *)self CFX_setZoomSliderFromZoomFactor:v15];
      v6 = +[JFXVideoCameraController sharedInstance];
      [v6 setZoomFactor:v15];
      goto LABEL_7;
    }

    if (state != 1)
    {
      goto LABEL_8;
    }

    v8 = +[JFXVideoCameraController sharedInstance];
    [v8 zoomFactor];
    [(CFXCaptureViewController *)self setZoomFactorAtPinchStart:?];

    zoomSlider = [(CFXCaptureViewController *)self zoomSlider];
    [zoomSlider makeVisibleAnimated:0];

    zoomSlider2 = [(CFXCaptureViewController *)self zoomSlider];
    v6 = zoomSlider2;
    v7 = 1;
  }

  else
  {
    zoomSlider2 = [(CFXCaptureViewController *)self zoomSlider];
    v6 = zoomSlider2;
    v7 = 0;
  }

  [zoomSlider2 setVisibilityTimerSuspended:v7];
LABEL_7:

LABEL_8:
}

- (void)CFX_performFrontCameraZoomWithPinchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v4 = [recognizerCopy state] == 1;
  v5 = recognizerCopy;
  if (v4)
  {
    [recognizerCopy scale];
    if (v6 >= 1.0)
    {
      v8 = 0;
    }

    else
    {
      zoomControl = [(CFXCaptureViewController *)self zoomControl];
      v8 = [zoomControl zoomButtonSymbol] == 1;
    }

    [recognizerCopy scale];
    if (v9 <= 1.0)
    {
      v11 = 0;
    }

    else
    {
      zoomControl2 = [(CFXCaptureViewController *)self zoomControl];
      v11 = [zoomControl2 zoomButtonSymbol] == 0;
    }

    v5 = recognizerCopy;
    if (v8 || v11)
    {
      zoomControl3 = [(CFXCaptureViewController *)self zoomControl];
      [(CFXCaptureViewController *)self toggleBetweenZoomFactorsForZoomControl:zoomControl3];

      v5 = recognizerCopy;
    }
  }
}

- (void)completedVideoRecordWithURL:(id)l metadataURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  composition = [(CFXCaptureViewController *)self composition];
  jtEffects = [composition jtEffects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__CFXCaptureViewController_completedVideoRecordWithURL_metadataURL___block_invoke;
  v12[3] = &unk_278D7C8A0;
  v13 = lCopy;
  v14 = rLCopy;
  selfCopy = self;
  v10 = rLCopy;
  v11 = lCopy;
  [CFXClip createClipWithLocalURL:v11 effectStack:jtEffects isVideo:1 maximumImageDimension:0 completionHandler:v12];
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

- (void)updateUIForVideoRecording:(BOOL)recording
{
  recordingCopy = recording;
  [(CFXCaptureViewController *)self setIsRecording:?];
  v5 = !recordingCopy;
  flashButton = [(CFXCaptureViewController *)self flashButton];
  [flashButton setAlpha:v5];

  doneButton = [(CFXCaptureViewController *)self doneButton];
  [doneButton setAlpha:v5];

  controlStatusBar = [(CFXCaptureViewController *)self controlStatusBar];
  flashIndicator = [controlStatusBar flashIndicator];
  [flashIndicator setAlpha:v5];
}

- (void)CFX_hideAppStripUpperBackgroundView:(BOOL)view
{
  viewCopy = view;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if (![currentDevice userInterfaceIdiom])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    if (v6 == 568)
    {
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
      v9 = v8;

      if (v9 != 568)
      {
        return;
      }
    }

    delegate = [(CFXCaptureViewController *)self delegate];
    currentDevice = [delegate cameraControlsViewControllerForCaptureViewController:self];

    appStripBackgroundView = [currentDevice appStripBackgroundView];
    [appStripBackgroundView setHidden:viewCopy];
  }
}

- (void)startVideoRecording
{
  v18 = *MEMORY[0x277D85DE8];
  [(CFXCaptureViewController *)self removeEffectEditorAnimated:1];
  [(CFXCaptureViewController *)self removeAnimojiTrackingReticle];
  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  [cameraViewController startVideoRecordingWithFlashMode:{-[CFXCaptureViewController flashMode](self, "flashMode")}];

  delegate = [(CFXCaptureViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CFXCaptureViewController *)self delegate];
    [delegate2 captureViewControllerDidStartVideoRecording:self];
  }

  [(CFXCaptureViewController *)self CFX_hideAppStripUpperBackgroundView:1];
  if (CFXCaptureCapabilitiesIsCTMSupported())
  {
    elapsedTimeView = [(CFXCaptureViewController *)self elapsedTimeView];
    [elapsedTimeView setHidden:0];

    elapsedTimeView2 = [(CFXCaptureViewController *)self elapsedTimeView];
    [elapsedTimeView2 setBackgroundStyle:1 animated:1];

    v16 = 0;
    *buf = 0;
    v15 = 0;
    [(CFXCaptureViewController *)self CFX_getCaptureDevice:buf captureDevicePosition:&v16 captureMode:&v15];
    v9 = v16 != 1;
    zoomControl = [(CFXCaptureViewController *)self zoomControl];
    [zoomControl setEnabled:v9];
  }

  v11 = CFXLog_action();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    composition = [(CFXCaptureViewController *)self composition];
    jtEffects = [composition jtEffects];
    v14 = [CFXActionLogging actionLogAsJSONForEvent:@"started video capture" atLocation:@"live" withEffectStack:jtEffects];
    *buf = 138543362;
    *&buf[4] = v14;
    _os_log_impl(&dword_242A3B000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

- (void)stopVideoRecording:(id)recording
{
  recordingCopy = recording;
  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __47__CFXCaptureViewController_stopVideoRecording___block_invoke;
  v12 = &unk_278D7A1B8;
  selfCopy = self;
  v14 = recordingCopy;
  v6 = recordingCopy;
  [cameraViewController stopVideoRecording:&v9];

  if (CFXCaptureCapabilitiesIsCTMSupported())
  {
    v7 = [(CFXCaptureViewController *)self elapsedTimeView:v9];
    [v7 setBackgroundStyle:3 animated:1];

    zoomControl = [(CFXCaptureViewController *)self zoomControl];
    [zoomControl setEnabled:1];
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
  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  flashMode = [(CFXCaptureViewController *)self flashMode];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__CFXCaptureViewController_JFX_capturePhoto__block_invoke;
  v5[3] = &unk_278D7C918;
  v5[4] = self;
  [cameraViewController capturePhotoWithFlashMode:flashMode completion:v5];
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
  editingOverlayWithGestureGroup = [(CFXCaptureViewController *)self editingOverlayWithGestureGroup];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CFXCaptureViewController_CFX_respondToShutterPress__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_group_notify(editingOverlayWithGestureGroup, MEMORY[0x277D85CD0], block);
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
  captureMode = [(CFXCaptureViewController *)self captureMode];
  v4 = captureMode == 2;
  v5 = captureMode != 2;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  [(CFXCaptureViewController *)self dynamicShutterSettings];
  elapsedTimeView = [(CFXCaptureViewController *)self elapsedTimeView];
  [elapsedTimeView setHidden:v5];

  *&v11 = v4;
  *(&v11 + 1) = v5;
  v15 = v4;
  v9[2] = v13;
  v9[3] = v14;
  v10 = v4;
  v9[0] = v11;
  v9[1] = v12;
  [(CFXCaptureViewController *)self setDynamicShutterSettings:v9];
  dynamicShutterControl = [(CFXCaptureViewController *)self dynamicShutterControl];
  [(CFXCaptureViewController *)self dynamicShutterSettings];
  [dynamicShutterControl setSettings:v9 animated:0];

  dynamicShutterControl2 = [(CFXCaptureViewController *)self dynamicShutterControl];
  [dynamicShutterControl2 resetAnimated:0];
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
  delegate = [(CFXCaptureViewController *)self delegate];
  v5 = [delegate cameraControlsViewControllerForCaptureViewController:self];

  flipButton = [v5 flipButton];
  [flipButton setAlpha:1.0];

  [(CFXCaptureViewController *)self CFX_respondToShutterPress];
}

- (void)dynamicShutterControlDidShortPress:(id)press
{
  pressCopy = press;
  if (![(CFXCaptureViewController *)self captureMode])
  {
    [pressCopy setEnabled:0];
  }

  [(CFXCaptureViewController *)self CFX_respondToShutterPress];
}

- (void)dynamicShutterControlDidStart:(id)start
{
  delegate = [(CFXCaptureViewController *)self delegate];
  v8 = [delegate cameraControlsViewControllerForCaptureViewController:self];

  flipButton = [v8 flipButton];
  [flipButton setAlpha:0.0];

  if (![(CFXCaptureViewController *)self captureMode])
  {
    [(CFXCaptureViewController *)self setCaptureMode:2];
    [(CFXCaptureViewController *)self setSwitchedToVideoMode:1];
  }

  controlStatusBar = [(CFXCaptureViewController *)self controlStatusBar];
  flashIndicator = [controlStatusBar flashIndicator];
  -[CFXCaptureViewController setTorchModeForFlashMode:](self, "setTorchModeForFlashMode:", [flashIndicator flashMode]);

  [(CFXCaptureViewController *)self CFX_respondToShutterPress];
}

- (void)controlStatusBar:(id)bar didCreateIndicatorForType:(unint64_t)type
{
  if (!type)
  {
    flashIndicator = [bar flashIndicator];
    [flashIndicator setFlashMode:2];
  }
}

- (void)controlStatusBar:(id)bar didReceiveTapInIndicatorForType:(unint64_t)type
{
  if (!type)
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

- (void)setDynamicShutterSettings:(id *)settings
{
  *&self->_dynamicShutterSettings.tapBehavior = *&settings->var0;
  v4 = *&settings->var4;
  v3 = *&settings->var6;
  v5 = *&settings->var2;
  self->_dynamicShutterSettings.idleColor = settings->var8;
  *&self->_dynamicShutterSettings.allowsZoom = v4;
  *&self->_dynamicShutterSettings.ringStyle = v3;
  *&self->_dynamicShutterSettings.dragRightBehavior = v5;
}

- (void)effectEditorViewDidBeginEditing:(id)editing
{
  editingOverlayWithGestureGroup = [(CFXCaptureViewController *)self editingOverlayWithGestureGroup];
  dispatch_group_enter(editingOverlayWithGestureGroup);
}

- (void)effectEditorViewDidEndEditing:(id)editing
{
  v19 = *MEMORY[0x277D85DE8];
  editingCopy = editing;
  effectEditor = [(CFXCaptureViewController *)self effectEditor];

  if (effectEditor == editingCopy)
  {
    [(CFXCaptureViewController *)self removeEffectEditorAnimated:1];
  }

  if (isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    composition = [(CFXCaptureViewController *)self composition];
    v7 = [composition jtEffectsForType:2];

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

  editingOverlayWithGestureGroup = [(CFXCaptureViewController *)self editingOverlayWithGestureGroup];
  dispatch_group_leave(editingOverlayWithGestureGroup);
}

- (id)effectEditorView:(id)view effectAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  composition = [(CFXCaptureViewController *)self composition];
  v9 = [composition jtEffectsForType:2];

  if ([v9 count])
  {
    [viewCopy bounds];
    v11 = 44.0 / v10;
    v13 = 44.0 / v12;
    [viewCopy bounds];
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

- (BOOL)effectEditorView:(id)view isEffectAtPoint:(CGPoint)point effect:(id)effect
{
  y = point.y;
  x = point.x;
  v27[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  effectCopy = effect;
  jtEffect = [effectCopy jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    jtEffect2 = [effectCopy jtEffect];
    [viewCopy bounds];
    v14 = 44.0 / v13;
    v27[0] = jtEffect2;
    v16 = 44.0 / v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [viewCopy bounds];
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

- (void)effectEditorView:(id)view didEditTextForEffect:(id)effect newText:(id)text
{
  textCopy = text;
  jtEffect = [effect jtEffect];
  [JFXEffectEditingUtilities updateEffectText:jtEffect newText:textCopy];
}

- (void)effectEditorView:(id)view didRemoveEffect:(id)effect
{
  v16 = *MEMORY[0x277D85DE8];
  effectCopy = effect;
  v6 = JFXLog_effects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    jtEffect = [effectCopy jtEffect];
    v8 = NSStringFromJFXEffectType([jtEffect type]);
    localizedTitle = [effectCopy localizedTitle];
    *buf = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = localizedTitle;
    _os_log_impl(&dword_242A3B000, v6, OS_LOG_TYPE_DEFAULT, "Removing effect - type: %{public}@, name: %{public}@", buf, 0x16u);
  }

  composition = [(CFXCaptureViewController *)self composition];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__CFXCaptureViewController_EffectEditingAdditions__effectEditorView_didRemoveEffect___block_invoke;
  v11[3] = &unk_278D79D20;
  v11[4] = self;
  [composition removeEffect:effectCopy completion:v11];
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

- (CGPoint)effectEditorView:(id)view spacingBetweenCenterPointOfEffect:(id)effect point:(CGPoint)point relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = point.y;
  v11 = point.x;
  jtEffect = [effect jtEffect];
  v19 = *MEMORY[0x277CC08F0];
  v20 = *(MEMORY[0x277CC08F0] + 16);
  [JFXEffectEditingUtilities spacingBetweenCenterPointOfEffect:jtEffect point:&v19 relativeToBounds:v11 atTime:v10, x, y, width, height];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)effectEditorView:(id)view didMoveEffect:(id)effect withTouchPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  effectCopy = effect;
  v11 = +[JFXVideoCameraController sharedInstance];
  mostRecentARMetadata = [v11 mostRecentARMetadata];

  jtEffect = [effectCopy jtEffect];
  if ([jtEffect type] == 2 && -[CFXCaptureViewController shouldUseFaceTracking](self, "shouldUseFaceTracking"))
  {
    faceAnchor = [mostRecentARMetadata faceAnchor];

    if (faceAnchor)
    {
      jtEffect2 = [effectCopy jtEffect];
      trackingProps = [jtEffect2 trackingProps];
      trackingType = [trackingProps trackingType];

      [viewCopy bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      faceAnchor2 = [mostRecentARMetadata faceAnchor];
      v27 = +[JFXOrientationMonitor interfaceOrientation];
      playableAspectRatio = [jtEffect2 playableAspectRatio];
      playableAspectRatioPreservationMode = [jtEffect2 playableAspectRatioPreservationMode];
      v37 = *MEMORY[0x277CC08F0];
      v33 = v37;
      v38 = *(MEMORY[0x277CC08F0] + 16);
      v30 = v38;
      v31 = [JFXEffectEditingUtilities trackingTypeForOverlayPointIntersectionWithFaceRect:&v37 atTime:trackingType relativeTo:faceAnchor2 defaultTrackingType:0 faceAnchor:1 transformAnimation:v27 playableMediaContentMode:x playableInterfaceOrientation:y playableAspectRatio:v19 playableAspectRatioPreservationMode:v21, v23, v25, playableAspectRatio, playableAspectRatioPreservationMode];

      v32 = +[JFXOrientationMonitor interfaceOrientation];
      v37 = v33;
      v38 = v30;
      if ([JFXEffectEditingUtilities makeOverlayTrackedMaintainingAppearance:jtEffect2 atTime:&v37 newTrackingType:v31 arMetadata:mostRecentARMetadata playableInterfaceOrientation:v32])
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __98__CFXCaptureViewController_EffectEditingAdditions__effectEditorView_didMoveEffect_withTouchPoint___block_invoke;
        block[3] = &unk_278D79C88;
        v35 = viewCopy;
        v36 = jtEffect2;
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

- (void)effectEditorView:(id)view didTransformEffect:(id)effect transform:(CGAffineTransform *)transform relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  jtEffect = [effect jtEffect];
  v12 = *&transform->c;
  v15[0] = *&transform->a;
  v15[1] = v12;
  v15[2] = *&transform->tx;
  v13 = *MEMORY[0x277CC08F0];
  v14 = *(MEMORY[0x277CC08F0] + 16);
  [JFXEffectEditingUtilities addTransformToEffect:jtEffect transform:v15 relativeToBounds:&v13 time:1 restrictToBounds:x, y, width, height];
}

- (CGRect)effectEditorView:(id)view frameForEffect:(id)effect relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  effectCopy = effect;
  jtEffect = [effectCopy jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    jtEffect2 = [effectCopy jtEffect];
    v25 = *MEMORY[0x277CC08F0];
    v26 = *(MEMORY[0x277CC08F0] + 16);
    [jtEffect2 imageFrameAtTime:&v25 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{x, y, width, height}];
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

- (CGRect)effectEditorView:(id)view hitAreaBoundingFrameForEffect:(id)effect adjustForMinimumSize:(BOOL)size relativeToBounds:(CGRect)bounds
{
  sizeCopy = size;
  effectCopy = effect;
  jtEffect = [effectCopy jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    jtEffect2 = [effectCopy jtEffect];
    cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
    [cameraViewController normalizedMinimumHitTestArea];
    v25 = *MEMORY[0x277CC08F0];
    v26 = *(MEMORY[0x277CC08F0] + 16);
    [jtEffect2 hitAreaBoundingFrameAtTime:&v25 forcePosterFrame:1 includeDropShadow:1 adjustForMinimumSize:sizeCopy normalizedMinimumSize:1 relativeTo:? basisOrigin:?];
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

- (id)effectEditorView:(id)view overlayEffectFrameForEffect:(id)effect relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  jtEffect = [effect jtEffect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *MEMORY[0x277CC08F0];
    v11 = *(MEMORY[0x277CC08F0] + 16);
    height = [JFXOverlayEffectFrame frameWithEffect:jtEffect relativeToSize:1 origin:&v10 time:1 forcePosterFrame:1 includeDropShadow:1 includeTextFrames:width, height];
  }

  else
  {
    height = 0;
  }

  return height;
}

- (CGPoint)effectEditorView:(id)view removeButtonPositionForEffect:(id)effect relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v30 = *MEMORY[0x277D85DE8];
  effectCopy = effect;
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

  jtEffect = [effectCopy jtEffect];
  *&v27.a = *MEMORY[0x277CC08F0];
  v27.c = *(MEMORY[0x277CC08F0] + 16);
  v29 = v28;
  [JFXEffectEditingUtilities removeButtonPositionForEffect:jtEffect atTime:&v27 atPosterFrameRelativeToBounds:&v29 viewCorrectionTransform:x, y, width, height];
  v20 = v19;
  v22 = v21;

  v23 = v20;
  v24 = v22;
  result.y = v24;
  result.x = v23;
  return result;
}

- (id)effectEditorView:(id)view textEditingPropertiesForEffect:(id)effect relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  jtEffect = [effect jtEffect];
  v12 = *MEMORY[0x277CC08F0];
  v13 = *(MEMORY[0x277CC08F0] + 16);
  height = [JFXEffectEditingUtilities newTextEditingPropertiesForEffect:jtEffect relativeTo:&v12 atTime:0 withNewText:x, y, width, height];

  return height;
}

- (id)effectEditorView:(id)view textForEffect:(id)effect
{
  jtEffect = [effect jtEffect];
  v5 = [JFXEffectEditingUtilities textForEffect:jtEffect];

  return v5;
}

- (void)effectEditorView:(id)view didBeginEditingTextForEffect:(id)effect
{
  jtEffect = [effect jtEffect];
  [JFXEffectEditingUtilities beginTextEditingForEffect:jtEffect];
}

- (void)effectEditorView:(id)view didEndEditingTextForEffect:(id)effect wasCancelled:(BOOL)cancelled
{
  effectCopy = effect;
  jtEffect = [effectCopy jtEffect];
  [JFXEffectEditingUtilities updateEffectToDefaultTextIfEmpty:jtEffect];

  jtEffect2 = [effectCopy jtEffect];

  [JFXEffectEditingUtilities endTextEditingForEffect:jtEffect2];
}

- (BOOL)effectEditorView:(id)view shouldEditTextForEffect:(id)effect
{
  jtEffect = [effect jtEffect];
  v5 = [JFXEffectEditingUtilities canEditTextForEffect:jtEffect];

  return v5;
}

- (BOOL)effectEditorView:(id)view presentCustomTextEditingUI:(id)i
{
  jtEffect = [i jtEffect];
  [(CFXCaptureViewController *)self presentFullScreenTextEditorForEffect:jtEffect insertingEffect:0];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__CFXCaptureViewController_EffectEditingAdditions__effectEditorView_presentCustomTextEditingUI___block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  return 1;
}

- (unint64_t)effectEditorView:(id)view maximumTextLengthForEffect:(id)effect
{
  jtEffect = [effect jtEffect];
  v5 = [JFXEffectEditingUtilities maximumTextLengthForEffect:jtEffect];

  return v5;
}

- (BOOL)effectEditorView:(id)view isFaceTrackingDataAvailableForEffect:(id)effect
{
  jtEffect = [effect jtEffect];
  type = [jtEffect type];

  if (type != 2)
  {
    return 0;
  }

  return +[JFXEffectEditingUtilities isFaceTrackingDataAvailable];
}

- (BOOL)effectEditorView:(id)view isFaceTrackingEffect:(id)effect
{
  effectCopy = effect;
  jtEffect = [effectCopy jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    jtEffect2 = [effectCopy jtEffect];
    isCurrentlyTracking = [jtEffect2 isCurrentlyTracking];
  }

  else
  {
    isCurrentlyTracking = 0;
  }

  return isCurrentlyTracking;
}

- (BOOL)fullScreenTextEditViewController:(id)controller shouldDisableEditingAnimationForEffect:(id)effect
{
  memset(&v5[1], 0, sizeof(CGAffineTransform));
  [(CFXCaptureViewController *)self overlayTransformForLocalViewfinder:controller];
  v5[0] = v5[1];
  return !CGAffineTransformIsIdentity(v5);
}

- (void)fullScreenTextEditViewController:(id)controller didBeginAnimationBeforeEditingEffect:(id)effect completion:(id)completion
{
  completionCopy = completion;
  jtEffect = [effect jtEffect];
  [jtEffect setHidden:1];

  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  [cameraViewController executeAfterNextFrameIsRendered:completionCopy];
}

- (void)fullScreenTextEditViewController:(id)controller didBeginEditingEffect:(id)effect
{
  jtEffect = [effect jtEffect];
  [jtEffect setHidden:1];
}

- (void)fullScreenTextEditViewController:(id)controller willBeginAnimationAfterEditingEffect:(id)effect updatedText:(id)text
{
  textCopy = text;
  jtEffect = [effect jtEffect];
  [JFXEffectEditingUtilities updateEffectText:jtEffect newText:textCopy];
}

- (void)fullScreenTextEditViewController:(id)controller didFinishAnimationAfterEditingEffect:(id)effect completion:(id)completion
{
  completionCopy = completion;
  jtEffect = [effect jtEffect];
  [jtEffect setHidden:0];

  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  [cameraViewController executeAfterNextFrameIsRendered:completionCopy];
}

- (void)fullScreenTextEditViewController:(id)controller didFinishEditingEffect:(id)effect withUpdatedText:(id)text
{
  effectCopy = effect;
  textCopy = text;
  jtEffect = [effectCopy jtEffect];
  [JFXEffectEditingUtilities updateEffectText:jtEffect newText:textCopy];

  jtEffect2 = [effectCopy jtEffect];
  [jtEffect2 setHidden:0];

  if (isStreamingMode([(CFXCaptureViewController *)self captureMode]))
  {
    jtEffect3 = [effectCopy jtEffect];
    type = [jtEffect3 type];

    if (type == 2)
    {
      jtEffect4 = [effectCopy jtEffect];
      [(CFXCaptureViewController *)self enableAnimationForOverlayEffect:jtEffect4];
    }
  }
}

- (void)fullScreenTextEditViewController:(id)controller didFinishEditingByRemovingEffect:(id)effect
{
  v20 = *MEMORY[0x277D85DE8];
  effectCopy = effect;
  v6 = JFXLog_effects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    jtEffect = [effectCopy jtEffect];
    v8 = NSStringFromJFXEffectType([jtEffect type]);
    localizedTitle = [effectCopy localizedTitle];
    *buf = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = localizedTitle;
    _os_log_impl(&dword_242A3B000, v6, OS_LOG_TYPE_DEFAULT, "Removing effect - type: %{public}@, name: %{public}@", buf, 0x16u);
  }

  composition = [(CFXCaptureViewController *)self composition];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __118__CFXCaptureViewController_EffectEditingAdditions__fullScreenTextEditViewController_didFinishEditingByRemovingEffect___block_invoke;
  v15[3] = &unk_278D79D20;
  v15[4] = self;
  [composition removeEffect:effectCopy completion:v15];

  v11 = CFXLog_action();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    composition2 = [(CFXCaptureViewController *)self composition];
    jtEffects = [composition2 jtEffects];
    v14 = [CFXActionLogging actionLogAsJSONForEvent:@"effect removed" atLocation:@"live" withEffectStack:jtEffects];
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

- (void)CFX_executeBlockAfterNextFrameRendered:(id)rendered
{
  renderedCopy = rendered;
  cameraViewController = [(CFXCaptureViewController *)self cameraViewController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__CFXCaptureViewController_EffectEditingAdditions__CFX_executeBlockAfterNextFrameRendered___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = renderedCopy;
  v6 = renderedCopy;
  [cameraViewController executeAfterNextFrameIsRendered:v7];
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