@interface CFXCameraViewController
+ (void)initialize;
+ (void)preheatWithWindow:(id)window captureMode:(int64_t)mode devicePosition:(int64_t)position aspectRatioCrop:(int64_t)crop;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)noteOutputFrameWithTimestamp:(SEL)timestamp;
- (BOOL)allowLandscapeForEffectBrowserViewController:(id)controller;
- (BOOL)isEffectsPickerHidden;
- (BOOL)shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:(id)controller;
- (CFXCameraViewController)initWithCaptureMode:(int64_t)mode devicePosition:(int64_t)position flashMode:(int64_t)flashMode aspectRatioCrop:(int64_t)crop;
- (CFXCameraViewControllerDelegate)delegate;
- (CGRect)externalContentRect;
- (CGRect)externalPresentationRect;
- (UIColor)animojiOnlyBackgroundColor;
- (UIView)effectsPickerDrawer;
- (double)effectBrowserViewController:(id)controller screenTopBarHeightForWindowBounds:(CGRect)bounds orientation:(int64_t)orientation;
- (double)userInterfaceAlpha;
- (id)animojiEffectID;
- (id)localizedPromptForHidingAnimojiForEffectBrowserViewController:(id)controller;
- (id)selectedAnimojiIdentifierForEffectBrowserViewController:(id)controller;
- (id)selectedFilterIdentifierForEffectBrowserViewController:(id)controller;
- (int64_t)devicePosition;
- (int64_t)effectsState;
- (int64_t)flashMode;
- (void)CFX_automationAddEffectWithEffectTypeIdentifier:(id)identifier identifier:(id)a4 string:(id)string;
- (void)JFX_exitAnalytics;
- (void)captureViewController:(id)controller didCaptureMediaItem:(id)item;
- (void)captureViewController:(id)controller didChangeEffectComposition:(id)composition;
- (void)captureViewController:(id)controller didRenderFrame:(id)frame;
- (void)captureViewController:(id)controller presentationRectWasPinchedWithState:(int64_t)state scale:(double)scale velocity:(double)velocity;
- (void)captureViewControllerCameraFlipButtonWasTapped:(id)tapped;
- (void)captureViewControllerDidStartVideoRecording:(id)recording;
- (void)captureViewControllerDoneButtonWasTapped:(id)tapped;
- (void)captureViewControllerEffectsButtonWasTapped:(id)tapped;
- (void)captureViewControllerPresentationRectWasDoubleTapped:(id)tapped;
- (void)dealloc;
- (void)effectBrowserViewController:(id)controller didDropOverlayEffect:(id)effect atScreenLocation:(CGPoint)location atScreenSize:(CGSize)size rotationAngle:(double)angle;
- (void)effectBrowserViewController:(id)controller didRemoveAllEffectsOfType:(id)type;
- (void)effectBrowserViewController:(id)controller didSelectAppWithIdentifier:(id)identifier;
- (void)effectBrowserViewController:(id)controller didSelectEffect:(id)effect;
- (void)effectBrowserViewController:(id)controller willChangeDockHeight:(double)height;
- (void)loadView;
- (void)noteInputFrameWithTimestamp:(double)timestamp;
- (void)remoteCommandServer:(id)server didReceiveAddStickerCommandWithData:(id)data offset:(CGPoint)offset scale:(double)scale rotation:(double)rotation;
- (void)remoteCommandServer:(id)server didReceiveAddStickerCommandWithIdentifier:(id)identifier offset:(CGPoint)offset scale:(double)scale rotation:(double)rotation;
- (void)remoteCommandServer:(id)server didReceiveRemoveEffectsCommandWithTypeIdentifiers:(id)identifiers;
- (void)remoteCommandServer:(id)server didReceiveSetFilterCommandWithIdentifier:(id)identifier;
- (void)remoteCommandServer:(id)server didReceiveSetMemojiCommandWithContentsOfFile:(id)file;
- (void)removeAllEffects;
- (void)renderFrameWithImageData:(id)data orientation:(int64_t)orientation presentationRect:(CGRect)rect contentsRect:(CGRect)contentsRect;
- (void)renderFrameWithImageDataArchive:(id)archive imagePixelBuffer:(__CVBuffer *)buffer depthPixelBuffer:(__CVBuffer *)pixelBuffer orientation:(int64_t)orientation presentationRect:(CGRect)rect contentsRect:(CGRect)contentsRect;
- (void)resign;
- (void)setAnimojiOnlyBackgroundColor:(id)color;
- (void)setAnimojiOnlyEffectID:(id)d;
- (void)setEffectsPickerDrawer:(id)drawer;
- (void)setEffectsPickerHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setExternalCaptureSessionCameraPosition:(int64_t)position;
- (void)setShowsViewfinder:(BOOL)viewfinder;
- (void)setTransitionState:(int64_t)state animated:(BOOL)animated;
- (void)setUserInterfaceAlpha:(double)alpha;
- (void)setUsesInternalCaptureSession:(BOOL)session;
- (void)showMemojiPicker:(id)picker;
- (void)stageManagerWarningDoneButtonWasTapped:(id)tapped;
- (void)startCaptureSession;
- (void)stopCaptureSession;
- (void)updateUIForVideoRecording:(BOOL)recording;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation CFXCameraViewController

+ (void)initialize
{
  v7[1] = *MEMORY[0x277D85DE8];
  +[CFXApplicationState beginMonitoringApplicationState];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults addSuiteNamed:@"com.apple.MobileSMS"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = *MEMORY[0x277D416D8];
  v7[0] = &unk_28556D098;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [standardUserDefaults2 registerDefaults:v4];

  +[CFXEffect setupFactoryDelegate];
  v5 = +[CFXMediaSettings sharedInstance];
  [JFXMediaSettings setProviderDelegate:v5];
}

+ (void)preheatWithWindow:(id)window captureMode:(int64_t)mode devicePosition:(int64_t)position aspectRatioCrop:(int64_t)crop
{
  v25 = *MEMORY[0x277D85DE8];
  [JFXOrientationMonitor initializeWithKeyWindow:window];
  v9 = CFXCanonicalAspectRatioCropForCaptureModeAndDesiredAspectRatioCrop(mode, crop);
  v10 = JFXLog_camera();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromCFXAspectRatioCrop(crop);
    v12 = NSStringFromCFXAspectRatioCrop(v9);
    v17 = 134218754;
    positionCopy = position;
    v19 = 2048;
    modeCopy = mode;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEFAULT, "devicePosition: %ld, captureMode: %ld, aspectRatioCrop: %{public}@, canonicalAspectRatioCrop: %{public}@", &v17, 0x2Au);
  }

  v13 = JFXCameraModeForCaptureModeAndAspectRatioCrop(mode, v9);
  v14 = +[CFXEffectHostAppDelegate sharedInstance];
  [v14 setColorSpaceDelegate:0];

  v15 = +[JFXVideoCameraController sharedInstance];
  [v15 prepareCameraForMode:v13 position:2 completion:&__block_literal_global_2];

  v16 = +[JFXVideoCameraController sharedInstance];
  [v16 setOwnerName:@"Generated in Camera Effects"];
}

- (CFXCameraViewController)initWithCaptureMode:(int64_t)mode devicePosition:(int64_t)position flashMode:(int64_t)flashMode aspectRatioCrop:(int64_t)crop
{
  v51 = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = CFXCameraViewController;
  v10 = [(CFXCameraViewController *)&v40 initWithNibName:0 bundle:0];
  if (v10)
  {
    v11 = CFXCanonicalAspectRatioCropForCaptureModeAndDesiredAspectRatioCrop(mode, crop);
    v12 = dispatch_get_global_queue(25, 0);
    dispatch_async(v12, &__block_literal_global_12);

    v13 = JFXLog_camera();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromCFXAspectRatioCrop(crop);
      v15 = NSStringFromCFXAspectRatioCrop(v11);
      *buf = 134219010;
      positionCopy = position;
      v43 = 2048;
      flashModeCopy = flashMode;
      v45 = 2048;
      modeCopy = mode;
      v47 = 2114;
      v48 = v14;
      v49 = 2114;
      v50 = v15;
      _os_log_impl(&dword_242A3B000, v13, OS_LOG_TYPE_DEFAULT, "devicePosition: %ld, flashMode: %ld, captureMode: %ld, aspectRatioCrop: %{public}@, canonicalAspectRatioCrop: %{public}@", buf, 0x34u);
    }

    v10->_aspectRatioCrop = v11;
    v10->_captureMode = mode;
    v10->_cameraPosition = 2;
    v10->_initialFlashMode = flashMode;
    v10->_showsViewfinder = 1;
    v10->_usesInternalCaptureSession = 1;
    v10->_cameraControlsShown = 1;
    v16 = JFXCreateDispatchQueue(v10, @"externalCaptureSessionInputDeserializationQueue", 0);
    externalCaptureSessionInputDeserializationQueue = v10->_externalCaptureSessionInputDeserializationQueue;
    v10->_externalCaptureSessionInputDeserializationQueue = v16;

    v18 = JFXCreateDispatchQueue(v10, @"externalCaptureSessionInputProcessingQueue ", 0);
    externalCaptureSessionInputProcessingQueue = v10->_externalCaptureSessionInputProcessingQueue;
    v10->_externalCaptureSessionInputProcessingQueue = v18;

    v20 = JFXCreateDispatchQueue(v10, @"externalCaptureSessionOutputProcessingQueue", 0);
    externalCaptureSessionOutputProcessingQueue = v10->_externalCaptureSessionOutputProcessingQueue;
    v10->_externalCaptureSessionOutputProcessingQueue = v20;

    v10->_externalCaptureSessionCameraPosition = 0;
    v10->_externalCaptureSessionCameraPositionSet = 0;
    v22 = objc_opt_new();
    externalCaptureSessionInputFrameTimestamps = v10->_externalCaptureSessionInputFrameTimestamps;
    v10->_externalCaptureSessionInputFrameTimestamps = v22;

    v24 = [[JFXRemoteCommandServer alloc] initWithDelegate:v10];
    remoteCommandServer = v10->_remoteCommandServer;
    v10->_remoteCommandServer = v24;

    v26 = objc_alloc_init(CFXThermalPolicyManager);
    thermalPolicyManager = v10->_thermalPolicyManager;
    v10->_thermalPolicyManager = v26;

    v28 = v10->_thermalPolicyManager;
    v29 = +[JFXVideoCameraController sharedInstance];
    [v29 setThermalDelegate:v28];

    v30 = objc_opt_new();
    metadataValidator = v10->_metadataValidator;
    v10->_metadataValidator = v30;

    v32 = *MEMORY[0x277CBF3A8];
    v33 = *(MEMORY[0x277CBF3A8] + 8);
    v34 = +[CFXMediaSettings sharedInstance];
    [v34 setFrameSize:{v32, v33}];

    v35 = +[CFXMediaSettings sharedInstance];
    [v35 setRenderSize:{v32, v33}];

    v36 = +[CFXAnalyticsManager sharedInstance];
    [v36 startTrackingTimeIntervalEventWithName:@"activetime"];

    if (isStreamingMode([(CFXCameraViewController *)v10 captureMode]))
    {
      v37 = [[CFXCameraStreamBufferQueue alloc] initWithMaxCapacity:90];
      outputBufferQueue = v10->_outputBufferQueue;
      v10->_outputBufferQueue = v37;
    }

    v10->_isEffectsAnalyticsRunning = 0;
  }

  return v10;
}

uint64_t __88__CFXCameraViewController_initWithCaptureMode_devicePosition_flashMode_aspectRatioCrop___block_invoke()
{
  +[CFXEffect initEffectRegistry];

  return +[CFXEffect preWarmShaderCache];
}

- (void)dealloc
{
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  [captureViewController cameraDidStop];

  captureViewController2 = [(CFXCameraViewController *)self captureViewController];
  [captureViewController2 removeAllEffectsAnimated:0];

  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  v7 = +[CFXMediaSettings sharedInstance];
  [v7 setFrameSize:{v5, v6}];

  v8 = +[CFXMediaSettings sharedInstance];
  [v8 setRenderSize:{v5, v6}];

  +[JFXOrientationMonitor uninitialize];
  v9.receiver = self;
  v9.super_class = CFXCameraViewController;
  [(CFXCameraViewController *)&v9 dealloc];
}

- (void)loadView
{
  v3 = [JFXPassThroughContainerView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = [(JFXPassThroughContainerView *)v3 initWithFrame:?];

  [(CFXCameraViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v124[4] = *MEMORY[0x277D85DE8];
  v123.receiver = self;
  v123.super_class = CFXCameraViewController;
  [(CFXCameraViewController *)&v123 viewDidLoad];
  v3 = isStreamingMode([(CFXCameraViewController *)self captureMode]);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v4 = [currentDevice userInterfaceIdiom] == 0;
  }

  v122 = v3;
  if (v3 | !+[JFXOrientationMonitor initialized])
  {
    [JFXOrientationMonitor initializeWithViewController:self];
  }

  v6 = MEMORY[0x277D75AC8];
  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  v8 = [v6 storyboardWithName:@"CFXCaptureViewController" bundle:jfxBundle];
  v9 = [v8 instantiateViewControllerWithIdentifier:@"CFXCaptureViewController"];
  [(CFXCameraViewController *)self setCaptureViewController:v9];

  captureViewController = [(CFXCameraViewController *)self captureViewController];
  [captureViewController setDelegate:self];

  captureMode = [(CFXCameraViewController *)self captureMode];
  captureViewController2 = [(CFXCameraViewController *)self captureViewController];
  [captureViewController2 setCaptureMode:captureMode];

  [JFXEffectEditingUtilities setStreamingMode:isStreamingMode([(CFXCameraViewController *)self captureMode])];
  captureViewController3 = [(CFXCameraViewController *)self captureViewController];
  [captureViewController3 setAspectRatioCrop:{-[CFXCameraViewController aspectRatioCrop](self, "aspectRatioCrop")}];

  if ((CFXCaptureCapabilitiesIsCTMSupported() & 1) == 0)
  {
    captureViewController4 = [(CFXCameraViewController *)self captureViewController];
    [captureViewController4 setFlashMode:{-[CFXCameraViewController initialFlashMode](self, "initialFlashMode")}];
  }

  captureViewController5 = [(CFXCameraViewController *)self captureViewController];
  [captureViewController5 updateUIForDevicePosition:2];

  if (v4)
  {
    captureViewController6 = [(CFXCameraViewController *)self captureViewController];
    cameraControls = [captureViewController6 cameraControls];
    controlsContainerViewTopConstraint = [cameraControls controlsContainerViewTopConstraint];
    captureViewController7 = [(CFXCameraViewController *)self captureViewController];
    [captureViewController7 setCaptureControlsContainerTopConstraint:controlsContainerViewTopConstraint];

    captureViewController8 = [(CFXCameraViewController *)self captureViewController];
    cameraControls2 = [captureViewController8 cameraControls];
    controlsContainerViewLeadingConstraint = [cameraControls2 controlsContainerViewLeadingConstraint];
    captureViewController9 = [(CFXCameraViewController *)self captureViewController];
    [captureViewController9 setCaptureControlsContainerLeadingConstraint:controlsContainerViewLeadingConstraint];

    captureViewController10 = [(CFXCameraViewController *)self captureViewController];
    cameraControls3 = [captureViewController10 cameraControls];
    controlsContainerViewTrailingConstraint = [cameraControls3 controlsContainerViewTrailingConstraint];
    captureViewController11 = [(CFXCameraViewController *)self captureViewController];
    [captureViewController11 setCaptureControlsContainerTrailingConstraint:controlsContainerViewTrailingConstraint];

    captureViewController12 = [(CFXCameraViewController *)self captureViewController];
    cameraControls4 = [captureViewController12 cameraControls];
    controlsContainerViewWidthConstraint = [cameraControls4 controlsContainerViewWidthConstraint];
    captureViewController13 = [(CFXCameraViewController *)self captureViewController];
    [captureViewController13 setCaptureControlsContainerWidthConstraint:controlsContainerViewWidthConstraint];

    captureViewController14 = [(CFXCameraViewController *)self captureViewController];
    cameraControls5 = [captureViewController14 cameraControls];
    controlsContainerViewHeightConstraint = [cameraControls5 controlsContainerViewHeightConstraint];
    captureViewController15 = [(CFXCameraViewController *)self captureViewController];
    [captureViewController15 setCaptureControlsContainerHeightConstraint:controlsContainerViewHeightConstraint];
  }

  v36 = [CFXCameraControlsViewController alloc];
  captureViewController16 = [(CFXCameraViewController *)self captureViewController];
  v38 = [(CFXCameraControlsViewController *)v36 initWithDelegate:captureViewController16 captureMode:[(CFXCameraViewController *)self captureMode]];
  [(CFXCameraViewController *)self setCameraControlsViewController:v38];

  if ([(CFXCameraViewController *)self captureMode]== 2)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    cameraControlsViewController = [(CFXCameraViewController *)self cameraControlsViewController];
    [cameraControlsViewController setBackgroundColor:clearColor];
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] blackColor];
    cameraControlsViewController = [clearColor colorWithAlphaComponent:1.0];
    cameraControlsViewController2 = [(CFXCameraViewController *)self cameraControlsViewController];
    [cameraControlsViewController2 setBackgroundColor:cameraControlsViewController];
  }

  captureViewController17 = [(CFXCameraViewController *)self captureViewController];
  cameraControls6 = [captureViewController17 cameraControls];

  if (!v4)
  {
    controlsContainerViewWidthConstraint2 = [cameraControls6 controlsContainerViewWidthConstraint];
    [controlsContainerViewWidthConstraint2 setActive:0];

    controlsContainerViewHeightConstraint2 = [cameraControls6 controlsContainerViewHeightConstraint];
    [controlsContainerViewHeightConstraint2 setActive:0];

    controlsContainerViewTopConstraint2 = [cameraControls6 controlsContainerViewTopConstraint];
    LODWORD(v47) = 1144750080;
    [controlsContainerViewTopConstraint2 setPriority:v47];
  }

  view = [cameraControls6 view];
  controlsContainerView = [cameraControls6 controlsContainerView];
  captureViewController18 = [(CFXCameraViewController *)self captureViewController];
  effectBrowserContentPresenterViewController = [captureViewController18 effectBrowserContentPresenterViewController];

  v52 = [[CFXEffectBrowserViewController alloc] initWithDelegate:self contentPresenter:effectBrowserContentPresenterViewController];
  [(CFXCameraViewController *)self setEffectBrowserViewController:v52];

  effectBrowserViewController = [(CFXCameraViewController *)self effectBrowserViewController];
  [effectBrowserViewController setContentPresenterDelegate:effectBrowserContentPresenterViewController];

  [effectBrowserContentPresenterViewController setDelegate:self];
  if (CFXCaptureCapabilitiesIsCTMSupported())
  {
    captureMode2 = [(CFXCameraViewController *)self captureMode];
    if (captureMode2 == 2)
    {
      v55 = 0;
    }

    else
    {
      if (captureMode2)
      {
        goto LABEL_21;
      }

      v55 = [(CFXCameraViewController *)self aspectRatioCrop]!= 1;
    }

    effectBrowserViewController2 = [(CFXCameraViewController *)self effectBrowserViewController];
    [effectBrowserViewController2 setShowAppIconBorders:v55];
  }

LABEL_21:
  effectBrowserViewController3 = [(CFXCameraViewController *)self effectBrowserViewController];
  view2 = [effectBrowserViewController3 view];

  effectBrowserViewController4 = [(CFXCameraViewController *)self effectBrowserViewController];
  [cameraControls6 addChildViewController:effectBrowserViewController4];

  if (v4)
  {
    view3 = [effectBrowserContentPresenterViewController view];
    [view insertSubview:view2 belowSubview:view3];

    [cameraControls6 setEffectsBrowser:view2];
  }

  else
  {
    [view addSubview:view2];
  }

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [view2 topAnchor];
  topAnchor2 = [controlsContainerView topAnchor];
  v63 = [topAnchor constraintEqualToAnchor:topAnchor2];

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

  v121 = v4;
  v119 = view;
  v120 = cameraControls6;
  v117 = effectBrowserContentPresenterViewController;
  if (userInterfaceIdiom)
  {
    heightAnchor = [view2 heightAnchor];
    v67 = [heightAnchor constraintEqualToConstant:44.0];

    v63 = v67;
  }

  leadingAnchor = [view2 leadingAnchor];
  [controlsContainerView leadingAnchor];
  v69 = v68 = view2;
  v70 = [leadingAnchor constraintEqualToAnchor:v69];
  v124[0] = v70;
  trailingAnchor = [v68 trailingAnchor];
  trailingAnchor2 = [controlsContainerView trailingAnchor];
  v73 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v124[1] = v73;
  v124[2] = v63;
  v115 = v63;
  v116 = v68;
  bottomAnchor = [v68 bottomAnchor];
  v118 = controlsContainerView;
  bottomAnchor2 = [controlsContainerView bottomAnchor];
  v76 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v124[3] = v76;
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:4];
  [v113 activateConstraints:v77];

  effectBrowserViewController5 = [(CFXCameraViewController *)self effectBrowserViewController];
  [effectBrowserViewController5 didMoveToParentViewController:v120];

  cameraControlsViewController3 = [(CFXCameraViewController *)self cameraControlsViewController];
  view4 = [cameraControlsViewController3 view];
  captureViewController19 = [(CFXCameraViewController *)self captureViewController];
  [captureViewController19 setEffectsPickerDrawer:view4];

  captureViewController20 = [(CFXCameraViewController *)self captureViewController];
  [(UIViewController *)self jfxAddChildViewController:captureViewController20 constrainRelativeToSafeAreas:0];

  if (v121)
  {
    captureViewController21 = [(CFXCameraViewController *)self captureViewController];
    cameraControls7 = [captureViewController21 cameraControls];
    [(UIViewController *)self jfxAddChildViewController:cameraControls7 constrainRelativeToSafeAreas:0];

    v85 = MEMORY[0x277D75AC8];
    jfxBundle2 = [MEMORY[0x277CCA8D8] jfxBundle];
    v87 = [v85 storyboardWithName:@"CFXNonTransformedLiveCaptureContainerViewController" bundle:jfxBundle2];
    v88 = [v87 instantiateViewControllerWithIdentifier:@"CFXNonTransformedLiveCaptureContainerViewController"];

    [v88 loadViewIfNeeded];
    thermalPolicyManager = [(CFXCameraViewController *)self thermalPolicyManager];
    liveCaptureViewController = [v88 liveCaptureViewController];
    [liveCaptureViewController setThermalPolicyManager:thermalPolicyManager];

    blackColor = [MEMORY[0x277D75348] blackColor];
    view5 = [v88 view];
    [view5 setBackgroundColor:blackColor];

    captureViewController22 = [(CFXCameraViewController *)self captureViewController];
    liveCaptureViewController2 = [v88 liveCaptureViewController];
    [captureViewController22 setLiveCaptureViewController:liveCaptureViewController2];

    [(UIViewController *)self jfxAddChildViewController:v88 constrainRelativeToSafeAreas:0];
    view6 = [(CFXCameraViewController *)self view];
    view7 = [v88 view];
    captureViewController23 = [(CFXCameraViewController *)self captureViewController];
    view8 = [captureViewController23 view];
    [view6 insertSubview:view7 belowSubview:view8];

    captureViewController24 = [(CFXCameraViewController *)self captureViewController];
    liveCaptureContainer = [captureViewController24 liveCaptureContainer];
    [liveCaptureContainer removeFromSuperview];

    captureViewController25 = [(CFXCameraViewController *)self captureViewController];
    liveCaptureContainerContainer = [captureViewController25 liveCaptureContainerContainer];
    [liveCaptureContainerContainer removeFromSuperview];

    liveCaptureContainer2 = [v88 liveCaptureContainer];
    captureViewController26 = [(CFXCameraViewController *)self captureViewController];
    [captureViewController26 setLiveCaptureContainer:liveCaptureContainer2];

    liveCaptureContainerContainer2 = [v88 liveCaptureContainerContainer];
    captureViewController27 = [(CFXCameraViewController *)self captureViewController];
    [captureViewController27 setLiveCaptureContainerContainer:liveCaptureContainerContainer2];

    view9 = [v88 view];
    captureViewController28 = [(CFXCameraViewController *)self captureViewController];
    [captureViewController28 setNonTransformedContainerView:view9];
  }

  if ([(CFXCameraViewController *)self captureMode]== 1)
  {
    captureViewController29 = [(CFXCameraViewController *)self captureViewController];
    [captureViewController29 cameraDidStart];
  }

  if (!v122)
  {
    v110 = objc_alloc_init(CFXStageManagerWarningViewController);
    [(CFXCameraViewController *)self setStageManagerWarning:v110];

    stageManagerWarning = [(CFXCameraViewController *)self stageManagerWarning];
    [stageManagerWarning setDelegate:self];

    stageManagerWarning2 = [(CFXCameraViewController *)self stageManagerWarning];
    [(UIViewController *)self jfxAddChildViewController:stageManagerWarning2];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v37.receiver = self;
  v37.super_class = CFXCameraViewController;
  [(CFXCameraViewController *)&v37 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (!isStreamingMode([(CFXCameraViewController *)self captureMode]))
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      view = [(CFXCameraViewController *)self view];
      subviews = [view subviews];
      captureViewController = [(CFXCameraViewController *)self captureViewController];
      nonTransformedContainerView = [captureViewController nonTransformedContainerView];
      v14 = [subviews indexOfObject:nonTransformedContainerView];

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        captureViewController2 = [(CFXCameraViewController *)self captureViewController];
        liveCaptureSnapshot = [captureViewController2 liveCaptureSnapshot];
        captureViewController3 = [(CFXCameraViewController *)self captureViewController];
        liveCaptureContainer = [captureViewController3 liveCaptureContainer];
        [liveCaptureContainer center];
        v35[4] = self;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __78__CFXCameraViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
        v36[3] = &unk_278D79D20;
        v36[4] = self;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __78__CFXCameraViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
        v35[3] = &unk_278D79D20;
        [UIViewController displaySnapshot:"displaySnapshot:atCenterPoint:atIndex:forTransitionToSize:fadeOut:withTransitionCoordinator:preTransitionBlock:postTransitionBlock:" atCenterPoint:liveCaptureSnapshot atIndex:v14 + 1 forTransitionToSize:1 fadeOut:coordinatorCopy withTransitionCoordinator:v36 preTransitionBlock:v35 postTransitionBlock:?];
      }

      captureViewController4 = [(CFXCameraViewController *)self captureViewController];
      cameraControls = [captureViewController4 cameraControls];
      effectsPickerSnapshot = [cameraControls effectsPickerSnapshot];

      captureViewController5 = [(CFXCameraViewController *)self captureViewController];
      cameraControls2 = [captureViewController5 cameraControls];
      [cameraControls2 effectsPickerCenter];
      v25 = v24;
      v27 = v26;
      view2 = [(CFXCameraViewController *)self view];
      subviews2 = [view2 subviews];
      v30 = [subviews2 count];
      v32[4] = self;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __78__CFXCameraViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_5;
      v33[3] = &unk_278D79C88;
      v33[4] = self;
      v34 = effectsPickerSnapshot;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __78__CFXCameraViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_6;
      v32[3] = &unk_278D79D20;
      v31 = effectsPickerSnapshot;
      [(UIViewController *)self displaySnapshot:v31 atCenterPoint:v30 atIndex:0 forTransitionToSize:coordinatorCopy fadeOut:v33 withTransitionCoordinator:v32 preTransitionBlock:v25 postTransitionBlock:v27, width, height];
    }
  }
}

void __78__CFXCameraViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) captureViewController];
  v3 = [v2 liveCaptureContainer];
  [v3 setHidden:1];

  v5 = [*(a1 + 32) captureViewController];
  v4 = [v5 liveCaptureContainer];
  [v4 setAlpha:0.0];
}

uint64_t __78__CFXCameraViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) captureViewController];
  v3 = [v2 liveCaptureContainer];
  [v3 setHidden:0];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__CFXCameraViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  v5[3] = &unk_278D79D20;
  v5[4] = *(a1 + 32);
  return [JTAnimation performAnimation:v5 duration:&__block_literal_global_55 completion:0.25];
}

void __78__CFXCameraViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) captureViewController];
  v1 = [v2 liveCaptureContainer];
  [v1 setAlpha:1.0];
}

void __78__CFXCameraViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 subviews];
  v10 = [v3 lastObject];

  v4 = [v10 subviews];
  LODWORD(v3) = [v4 containsObject:*(a1 + 40)];

  if (v3)
  {
    [*(a1 + 32) setEffectsPickerSnapshotContainerView:v10];
  }

  v5 = [*(a1 + 32) captureViewController];
  v6 = [v5 cameraControls];
  v7 = [v6 view];
  [v7 setHidden:1];

  v8 = [*(a1 + 32) captureViewController];
  v9 = [v8 effectsPickerDrawer];
  [v9 setHidden:1];
}

uint64_t __78__CFXCameraViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) captureViewController];
  v3 = [v2 cameraControls];
  v4 = [v3 view];
  [v4 setHidden:0];

  v5 = [*(a1 + 32) captureViewController];
  v6 = [v5 effectsPickerDrawer];
  [v6 setHidden:0];

  v7 = *(a1 + 32);

  return [v7 setEffectsPickerSnapshotContainerView:0];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = CFXCameraViewController;
  [(CFXCameraViewController *)&v6 viewDidLayoutSubviews];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if (![currentDevice userInterfaceIdiom] && !isStreamingMode(-[CFXCameraViewController captureMode](self, "captureMode")))
  {
    view = [(CFXCameraViewController *)self view];
    window = [view window];

    if (!window)
    {
      return;
    }

    currentDevice = [(CFXCameraViewController *)self captureViewController];
    [currentDevice applyRotationTransformForPortrait];
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = CFXCameraViewController;
  [(CFXCameraViewController *)&v7 willMoveToParentViewController:controller];
  if ([(CFXCameraViewController *)self captureMode]== 3)
  {
    animojiEffectID = [(CFXCameraViewController *)self animojiEffectID];

    if (!animojiEffectID)
    {
      v5 = +[JFXAnimojiEffect animojiIDs];
      firstObject = [v5 firstObject];
      [(CFXCameraViewController *)self setAnimojiOnlyEffectID:firstObject];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CFXCameraViewController;
  [(CFXCameraViewController *)&v4 viewDidAppear:appear];
  v3 = +[CFXAnalyticsManager sharedInstance];
  [v3 trackEventWithName:@"extensionlaunched"];
}

- (UIView)effectsPickerDrawer
{
  [(CFXCameraViewController *)self loadViewIfNeeded];
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  effectsPickerDrawer = [captureViewController effectsPickerDrawer];

  return effectsPickerDrawer;
}

- (void)setEffectsPickerDrawer:(id)drawer
{
  drawerCopy = drawer;
  [(CFXCameraViewController *)self loadViewIfNeeded];
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  [captureViewController setEffectsPickerDrawer:drawerCopy];

  if (!drawerCopy)
  {
    effectBrowserViewController = [(CFXCameraViewController *)self effectBrowserViewController];

    if (effectBrowserViewController)
    {
      effectBrowserViewController2 = [(CFXCameraViewController *)self effectBrowserViewController];
      [effectBrowserViewController2 jfxRemoveFromParentViewController];

      [(CFXCameraViewController *)self setEffectBrowserViewController:0];
    }
  }
}

- (int64_t)effectsState
{
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  composition = [captureViewController composition];

  effectBrowserPresentedAppIdentifier = [(CFXCameraViewController *)self effectBrowserPresentedAppIdentifier];
  v6 = [effectBrowserPresentedAppIdentifier isEqual:@"com.apple.FunCamera.Filters"];

  isEmpty = [composition isEmpty];
  v8 = +[JFXVideoCameraController sharedInstance];
  sessionRequiresFaceTracking = [v8 sessionRequiresFaceTracking];

  if (sessionRequiresFaceTracking)
  {
    v10 = 2;
  }

  else if (v6 & 1 | ((isEmpty & 1) == 0))
  {
    if ([composition requiresFaceTracking])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setShowsViewfinder:(BOOL)viewfinder
{
  if (self->_showsViewfinder != viewfinder)
  {
    viewfinderCopy = viewfinder;
    self->_showsViewfinder = viewfinder;
    [(CFXCameraViewController *)self loadViewIfNeeded];
    captureViewController = [(CFXCameraViewController *)self captureViewController];
    [captureViewController setUseLocalCameraViewfinder:viewfinderCopy];
  }
}

- (double)userInterfaceAlpha
{
  [(CFXCameraViewController *)self loadViewIfNeeded];
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  [captureViewController userInterfaceAlpha];
  v5 = v4;

  return v5;
}

- (void)setUserInterfaceAlpha:(double)alpha
{
  [(CFXCameraViewController *)self loadViewIfNeeded];
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  [captureViewController setUserInterfaceAlpha:alpha];
}

- (void)setUsesInternalCaptureSession:(BOOL)session
{
  if (self->_usesInternalCaptureSession != session)
  {
    if (session)
    {
      [(CFXCameraViewController *)self startCaptureSession];
    }

    else
    {
      [(CFXCameraViewController *)self stopCaptureSession];
    }

    self->_usesInternalCaptureSession = session;
  }
}

- (int64_t)flashMode
{
  [(CFXCameraViewController *)self loadViewIfNeeded];
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  flashMode = [captureViewController flashMode];

  return flashMode;
}

- (int64_t)devicePosition
{
  if (isStreamingMode([(CFXCameraViewController *)self captureMode]))
  {

    return [(CFXCameraViewController *)self externalCaptureSessionCameraPosition];
  }

  else
  {

    return [(CFXCameraViewController *)self cameraPosition];
  }
}

- (UIColor)animojiOnlyBackgroundColor
{
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  cameraViewController = [captureViewController cameraViewController];
  animojiBackgroundColor = [cameraViewController animojiBackgroundColor];

  return animojiBackgroundColor;
}

- (void)setAnimojiOnlyBackgroundColor:(id)color
{
  colorCopy = color;
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  cameraViewController = [captureViewController cameraViewController];
  [cameraViewController setAnimojiBackgroundColor:colorCopy];
}

- (id)animojiEffectID
{
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  composition = [captureViewController composition];
  v4 = [composition jtEffectsForType:7];
  firstObject = [v4 firstObject];

  effectID = [firstObject effectID];

  return effectID;
}

- (void)setAnimojiOnlyEffectID:(id)d
{
  dCopy = d;
  if ([(CFXCameraViewController *)self captureMode]== 3)
  {
    v5 = [JFXAnimojiEffect createAnimojiEffectForID:dCopy];
    if (v5)
    {
      v6 = [CFXEffectType effectTypeWithIdentifier:@"Animoji"];
      captureViewController = [(CFXCameraViewController *)self captureViewController];
      composition = [captureViewController composition];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __50__CFXCameraViewController_setAnimojiOnlyEffectID___block_invoke;
      v9[3] = &unk_278D79C88;
      v10 = v5;
      selfCopy = self;
      [composition removeAllEffectsOfType:v6 completion:v9];
    }

    else
    {
      v6 = JFXLog_effects();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CFXCameraViewController setAnimojiOnlyEffectID:];
      }
    }
  }

  else
  {
    v5 = JFXLog_effects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CFXCameraViewController setAnimojiOnlyEffectID:];
    }
  }
}

void __50__CFXCameraViewController_setAnimojiOnlyEffectID___block_invoke(uint64_t a1)
{
  v3 = [CFXEffect effectWithJTEffect:*(a1 + 32)];
  v2 = [*(a1 + 40) captureViewController];
  [v2 addEffect:v3];
}

- (void)setExternalCaptureSessionCameraPosition:(int64_t)position
{
  self->_externalCaptureSessionCameraPosition = position;
  v3 = position == 0;
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  [captureViewController setIsExternalCaptureSessionAnExternalCamera:v3];
}

- (BOOL)isEffectsPickerHidden
{
  effectBrowserViewController = [(CFXCameraViewController *)self effectBrowserViewController];
  view = [effectBrowserViewController view];
  isHidden = [view isHidden];

  return isHidden;
}

- (void)setEffectsPickerHidden:(BOOL)hidden animated:(BOOL)animated
{
  hiddenCopy = hidden;
  v6 = [(CFXCameraViewController *)self effectBrowserViewController:hidden];
  view = [v6 view];
  [view setHidden:hiddenCopy];
}

- (void)setTransitionState:(int64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = JFXLog_DebugViewerUI();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(CFXCameraViewController *)animatedCopy setTransitionState:state animated:v7];
  }

  if (state > 1)
  {
    if (state != 2)
    {
      if (state != 3)
      {
        return;
      }

      captureViewController = [(CFXCameraViewController *)self captureViewController];
      [captureViewController showLiveCaptureSnapshotBlurred:0 animated:0 completion:0];

      captureViewController2 = [(CFXCameraViewController *)self captureViewController];
      [captureViewController2 saveLiveCaptureSnapshotForReview];

      cameraControlsViewController = [(CFXCameraViewController *)self cameraControlsViewController];
      [cameraControlsViewController setShutterButtonAlpha:0.0];
      goto LABEL_10;
    }

    if (animatedCopy)
    {
      v17 = 0.25;
    }

    else
    {
      v17 = 0.0;
    }

    v18 = ![(CFXCameraViewController *)self cameraControlsShown];
    if ((v18 & 1) == 0)
    {
      captureViewController3 = [(CFXCameraViewController *)self captureViewController];
      [captureViewController3 showLiveCaptureSnapshotBlurred:1 animated:1 completion:0];
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__CFXCameraViewController_setTransitionState_animated___block_invoke;
    v22[3] = &unk_278D79E38;
    v22[4] = self;
    v23 = v18;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__CFXCameraViewController_setTransitionState_animated___block_invoke_2;
    v20[3] = &unk_278D79E80;
    v20[4] = self;
    v21 = v18;
    [JTAnimation performAnimation:v22 duration:v20 completion:v17];
  }

  else
  {
    if (state)
    {
      if (state != 1)
      {
        return;
      }

      cameraControlsViewController2 = [(CFXCameraViewController *)self cameraControlsViewController];
      [cameraControlsViewController2 setShutterButtonAlpha:0.0];

      cameraControlsViewController = [(CFXCameraViewController *)self captureViewController];
      [cameraControlsViewController removeAnimojiTrackingReticle];
LABEL_10:

      return;
    }

    captureViewController4 = [(CFXCameraViewController *)self captureViewController];
    [captureViewController4 configureUIForOrientation];

    effectBrowserViewController = [(CFXCameraViewController *)self effectBrowserViewController];
    view = [effectBrowserViewController view];
    [view setAlpha:1.0];

    cameraControlsViewController3 = [(CFXCameraViewController *)self cameraControlsViewController];
    [cameraControlsViewController3 setShutterButtonAlpha:1.0];

    captureViewController5 = [(CFXCameraViewController *)self captureViewController];
    [captureViewController5 removeLiveCaptureSnapshot];

    [(CFXCameraViewController *)self setCameraControlsShown:1];
  }
}

void __55__CFXCameraViewController_setTransitionState_animated___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v4 = [*(a1 + 32) effectBrowserViewController];
  v3 = [v4 view];
  [v3 setAlpha:v2];
}

- (void)removeAllEffects
{
  v16 = *MEMORY[0x277D85DE8];
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  [captureViewController removeAllEffectsAnimated:0];

  metadataValidator = [(CFXCameraViewController *)self metadataValidator];
  [metadataValidator reset];

  [(CFXCameraViewController *)self setExternalCaptureSessionCameraPosition:0];
  effectsInStreamTimer = [(CFXCameraViewController *)self effectsInStreamTimer];
  [effectsInStreamTimer invalidate];

  [(CFXCameraViewController *)self setEffectsInStreamTimer:0];
  v6 = CFXLog_action();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    captureViewController2 = [(CFXCameraViewController *)self captureViewController];
    composition = [captureViewController2 composition];
    jtEffects = [composition jtEffects];
    v10 = [CFXActionLogging actionLogAsJSONForEvent:@"stopped effects in stream" atLocation:@"live" withEffectStack:jtEffects];
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&dword_242A3B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", &v14, 0xCu);
  }

  v11 = +[CFXAnalyticsManager sharedInstance];
  [v11 stopTrackingTimeIntervalEventWithName:@"activetime"];

  if ([(CFXCameraViewController *)self captureMode]== 3)
  {
    v12 = +[JFXAnimojiEffect animojiIDs];
    firstObject = [v12 firstObject];
    [(CFXCameraViewController *)self setAnimojiOnlyEffectID:firstObject];
  }
}

- (void)renderFrameWithImageData:(id)data orientation:(int64_t)orientation presentationRect:(CGRect)rect contentsRect:(CGRect)contentsRect
{
  height = contentsRect.size.height;
  width = contentsRect.size.width;
  y = contentsRect.origin.y;
  x = contentsRect.origin.x;
  v10 = rect.size.height;
  v11 = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  dataCopy = data;
  v17 = [(CFXCameraViewController *)self captureMode]!= 3;
  v18 = +[JFXVideoCameraController sharedInstance];
  [v18 setSkipARProcessingWhenNoFaceDataIsPresent:v17];

  captureViewController = [(CFXCameraViewController *)self captureViewController];
  composition = [captureViewController composition];
  isEmpty = [composition isEmpty];

  if ((isEmpty & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke;
    block[3] = &unk_278D79D20;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  [dataCopy timestamp];
  [(CFXCameraViewController *)self noteInputFrameWithTimestamp:?];
  externalCaptureSessionInputProcessingQueue = [(CFXCameraViewController *)self externalCaptureSessionInputProcessingQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_68;
  v24[3] = &unk_278D79EF0;
  selfCopy = self;
  orientationCopy = orientation;
  v25 = dataCopy;
  v28 = v13;
  v29 = v12;
  v30 = v11;
  v31 = v10;
  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  v23 = dataCopy;
  dispatch_async(externalCaptureSessionInputProcessingQueue, v24);
}

void __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) effectsInStreamTimer];

  if (v2)
  {
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
    v3 = [*(a1 + 32) effectsInStreamTimer];
    [v3 setFireDate:v5];
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_2;
    v6[3] = &__block_descriptor_40_e17_v16__0__NSTimer_8l;
    v6[4] = 0x4014000000000000;
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:1 repeats:v6 block:5.0];
    [*(a1 + 32) setEffectsInStreamTimer:v4];
  }
}

void __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = JFXLog_camera();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_242A3B000, v2, OS_LOG_TYPE_DEFAULT, "renderFrameWithImageData - effects applied but rendering hasn't been called in at least %lf seconds.", &v4, 0xCu);
  }
}

void __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_68(uint64_t a1)
{
  v1 = a1;
  v141 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pixelBuffer];
  Width = CVPixelBufferGetWidth(v2);
  Height = CVPixelBufferGetHeight(v2);
  v5 = [*(v1 + 32) cameraPosition];
  if (v5)
  {
    v6 = +[JFXRotationTransforms rotationFromCaptureDevicePosition:captureVideoOrientation:toInterfaceOrientation:](JFXRotationTransforms, "rotationFromCaptureDevicePosition:captureVideoOrientation:toInterfaceOrientation:", [*(v1 + 32) cameraPosition], *(v1 + 48), 1);
    memset(&v134, 0, sizeof(v134));
    if (v6 >= 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = PVCardinalAnglesDouble[v7];
  }

  else
  {
    v9 = +[JFXOrientationMonitor deviceInterfaceOrientation];
    if (v9 > 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = qword_242B5B608[v9 & 7];
    }

    memset(&v134, 0, sizeof(v134));
    v8 = PVCardinalAnglesDouble[v10];
  }

  CGAffineTransformMakeRotation(&v134, v8);
  v131 = *&v134.a;
  v132 = *&v134.c;
  v133 = *&v134.tx;
  v11 = CGSizeApplyAffineTransformWithPositiveResult(&v131, Width, Height);
  v13 = v12;
  v14 = [*(v1 + 40) lastDeviceOrientation];
  v15 = +[JFXOrientationMonitor deviceInterfaceOrientation];
  v16 = 0x278D78000uLL;
  v17 = +[CFXMediaSettings sharedInstance];
  [v17 renderSize];
  v19 = v18;
  v21 = v20;

  v23 = v11 == v19 && v13 == v21 && v14 == v15;
  v114 = v1;
  if (!v23)
  {
    v106 = v5;
    v24 = +[CFXMediaSettings sharedInstance];
    [v24 renderSize];
    v26 = v25;
    v28 = v27;

    v29 = +[CFXMediaSettings sharedInstance];
    [v29 setFrameSize:{v11, v13}];

    v30 = +[CFXMediaSettings sharedInstance];
    [v30 setRenderSize:{v11, v13}];

    v31 = JFXLog_DebugCamera();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_68_cold_1(v1, v31, v11, v13);
    }

    v112 = objc_alloc_init(CFXEffectComposition);
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v32 = [*(v1 + 40) captureViewController];
    v33 = [v32 composition];
    v34 = [v33 effects];

    obj = v34;
    v35 = [v34 countByEnumeratingWithState:&v127 objects:v140 count:16];
    if (v35)
    {
      v36 = v35;
      v110 = *v128;
      if (v106)
      {
        v37 = 1;
      }

      else
      {
        v37 = v14 == v15;
      }

      v38 = v37;
      v39 = v28 / v13;
      if (v26 / v28 >= v11 / v13)
      {
        v40 = v28;
      }

      else
      {
        v40 = v26;
      }

      if (v26 / v28 >= v11 / v13)
      {
        v41 = v13;
      }

      else
      {
        v41 = v11;
      }

      v109 = *MEMORY[0x277CC08F0];
      v42 = *(MEMORY[0x277CC08F0] + 16);
      __asm { FMOV            V2.2D, #1.0 }

      v107 = _Q2;
      v47 = v40 / v41;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v128 != v110)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v127 + 1) + 8 * i);
          v50 = [v49 jtEffect];
          [v50 setRenderSize:{v11, v13}];

          v51 = v47;
          if ((v38 & 1) == 0)
          {
            v52 = [v49 jtEffect];
            v53 = [v52 type];

            v51 = v39;
            if (v53 == 2)
            {
              [*(v114 + 40) lastDeviceOrientation];
              +[JFXOrientationMonitor deviceOrientation];
              v54 = [v49 jtEffect];
              v55 = v54;
              if (v54)
              {
                [v54 topLevelTransform];
              }

              else
              {
                v138 = 0u;
                v139 = 0u;
                v136 = 0u;
                v137 = 0u;
                v135 = 0u;
                memset(&v134, 0, sizeof(v134));
              }

              v131 = 0uLL;
              v132 = v107;
              pv_simd_matrix_rotate();
              v136 = v123;
              v137 = v124;
              v138 = v125;
              v139 = v126;
              v134 = v121;
              v135 = v122;
              [v55 setTopLevelTransform:&v134];

              v51 = v39;
            }
          }

          memset(&v134, 0, sizeof(v134));
          CGAffineTransformMakeScale(&v134, v51, v51);
          v56 = [v49 jtEffect];
          v57 = [*(v114 + 40) captureViewController];
          v58 = [v57 view];
          [v58 frame];
          v131 = *&v134.a;
          v132 = *&v134.c;
          v133 = *&v134.tx;
          v119 = v109;
          v120 = v42;
          [JFXEffectEditingUtilities addTransformToEffect:v56 transform:&v131 relativeToBounds:&v119 time:1 restrictToBounds:?];

          [(CFXEffectComposition *)v112 addEffect:v49 completion:0];
        }

        v36 = [obj countByEnumeratingWithState:&v127 objects:v140 count:16];
      }

      while (v36);
    }

    v1 = v114;
    v59 = [*(v114 + 40) captureViewController];
    [v59 setComposition:v112];

    if (v106)
    {
      v60 = &PVCardinalAnglesComplement + 4 * +[JFXRotationTransforms rotationFromCaptureDevicePosition:captureVideoOrientation:toInterfaceOrientation:](JFXRotationTransforms, "rotationFromCaptureDevicePosition:captureVideoOrientation:toInterfaceOrientation:", [*(v114 + 32) cameraPosition], *(v114 + 48), 1);
      v16 = 0x278D78000;
      v61 = 0x278D78000;
    }

    else
    {
      v61 = 0x278D78000uLL;
      v62 = +[JFXOrientationMonitor deviceInterfaceOrientation];
      v16 = 0x278D78000uLL;
      if (v62 > 4)
      {
        v63 = 0;
        goto LABEL_49;
      }

      v60 = &unk_242B5B710 + 4 * (v62 & 7);
    }

    v63 = *v60;
LABEL_49:
    v64 = [[JFXPixelRotationSession alloc] initWithRotation:v63 mirror:0];
    [*(v114 + 40) setExternalCaptureSessionRotationSession:v64];

    [*(v114 + 40) setLastDeviceOrientation:{objc_msgSend(*(v61 + 1616), "deviceInterfaceOrientation")}];
  }

  if (CGRectIsEmpty(*(v1 + 56)) || CGRectHasNan())
  {
    v65 = JFXLog_camera();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_68_cold_2();
    }

    v66 = [MEMORY[0x277D759A0] mainScreen];
    [v66 bounds];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
  }

  else
  {
    v68 = *(v1 + 56);
    v70 = *(v1 + 64);
    v72 = *(v1 + 72);
    v74 = *(v1 + 80);
  }

  if (CGRectIsEmpty(*(v1 + 88)) || CGRectHasNan())
  {
    v75 = JFXLog_camera();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_68_cold_3();
    }

    v113 = 0.0;
    v111 = 1.0;
    v76 = 1.0;
    v77 = 0.0;
  }

  else
  {
    v77 = *(v1 + 88);
    v76 = *(v1 + 104);
    v111 = *(v1 + 112);
    v113 = *(v1 + 96);
  }

  [*(v1 + 40) externalPresentationRect];
  v145.origin.x = v68;
  v145.origin.y = v70;
  v145.size.width = v72;
  v145.size.height = v74;
  if (!CGRectEqualToRect(v143, v145) || ([*(v1 + 40) externalContentRect], v146.origin.x = v77, v146.size.height = v111, v146.origin.y = v113, v146.size.width = v76, !CGRectEqualToRect(v144, v146)))
  {
    v1 = v114;
    [*(v114 + 40) setExternalPresentationRect:{v68, v70, v72, v74}];
    [*(v114 + 40) setExternalContentRect:{v77, v113, v76, v111}];
    v78 = JFXLog_camera();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
    {
      v103 = NSStringFromCGRect(*(v114 + 56));
      v104 = NSStringFromCGRect(*(v114 + 88));
      v142.width = v11;
      v142.height = v13;
      v105 = NSStringFromCGSize(v142);
      LODWORD(v134.a) = 138412802;
      *(&v134.a + 4) = v103;
      WORD2(v134.b) = 2112;
      *(&v134.b + 6) = v104;
      HIWORD(v134.c) = 2112;
      *&v134.d = v105;
      _os_log_debug_impl(&dword_242A3B000, v78, OS_LOG_TYPE_DEBUG, "renderFrameWithImageData presentationRect  %@ contentRect %@ renderSize %@", &v134, 0x20u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_72;
    block[3] = &unk_278D79EC8;
    block[4] = *(v114 + 40);
    *&block[5] = v68;
    *&block[6] = v70;
    *&block[7] = v72;
    *&block[8] = v74;
    *&block[9] = v77;
    *&block[10] = v113;
    *&block[11] = v76;
    *&block[12] = v111;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v79 = [*(v1 + 32) captureFramesPerSecond];
  v80 = [*(v16 + 848) sharedInstance];
  [v80 setFrameRate:v79];

  v81 = [*(v1 + 32) captureFramesPerSecond];
  v82 = [*(v16 + 848) sharedInstance];
  [v82 setTimeScale:v81];

  [*(v1 + 32) setMirrored:useMirroredFrontCameraInStreamMode()];
  v83 = [*(v1 + 32) cameraPosition];
  if (v83 != [*(v1 + 40) externalCaptureSessionCameraPosition] || (objc_msgSend(*(v1 + 40), "externalCaptureSessionCameraPositionSet") & 1) == 0)
  {
    [*(v1 + 40) setExternalCaptureSessionCameraPositionSet:1];
    v84 = CFXLog_action();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v85 = [*(v1 + 40) captureViewController];
      v86 = [v85 composition];
      v87 = [v86 jtEffects];
      v88 = [CFXActionLogging actionLogAsJSONForEvent:@"camera flipped" atLocation:@"live" withEffectStack:v87];
      LODWORD(v134.a) = 138543362;
      *(&v134.a + 4) = v88;
      _os_log_impl(&dword_242A3B000, v84, OS_LOG_TYPE_DEFAULT, "%{public}@", &v134, 0xCu);
    }

    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 3221225472;
    v116[2] = __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_73;
    v116[3] = &unk_278D79C88;
    v115 = *(v1 + 32);
    v89 = v115.i64[0];
    v117 = vextq_s8(v115, v115, 8uLL);
    dispatch_async(MEMORY[0x277D85CD0], v116);
    if (([*(v1 + 40) isEffectsAnalyticsRunning] & 1) == 0)
    {
      [*(v1 + 40) setIsEffectsAnalyticsRunning:1];
      v90 = CFXLog_action();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        v91 = [*(v1 + 40) captureViewController];
        v92 = [v91 composition];
        v93 = [v92 jtEffects];
        v94 = [CFXActionLogging actionLogAsJSONForEvent:@"started effects in stream" atLocation:@"live" withEffectStack:v93];
        LODWORD(v134.a) = 138543362;
        *(&v134.a + 4) = v94;
        _os_log_impl(&dword_242A3B000, v90, OS_LOG_TYPE_DEFAULT, "%{public}@", &v134, 0xCu);
      }

      v95 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_76);
    }

    v96 = +[JFXVideoCameraController sharedInstance];
    [v96 setMostRecentARMetadata:0];

    [*(v1 + 40) setExternalCaptureSessionCameraPosition:{objc_msgSend(*(v1 + 32), "cameraPosition")}];
  }

  v97 = [*(v1 + 32) faceData];

  if (!v97)
  {
    v98 = JFXLog_camera();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_68_cold_4();
    }
  }

  v99 = *(v1 + 48);
  v100 = *(v1 + 32);
  v101 = [*(v1 + 40) captureViewController];
  v102 = [v101 composition];
  [CFXCameraStreamAdapter notifyExternalImageData:v100 orientation:v99 effectComposition:v102];
}

void __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_72(uint64_t a1)
{
  v2 = [*(a1 + 32) captureViewController];
  [v2 setLiveCapturePresentationFrame:*(a1 + 40) withContentRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
}

void __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_73(uint64_t a1)
{
  v2 = [*(a1 + 32) captureViewController];
  [v2 removeEffectsForCameraSwitch];

  v3 = [*(a1 + 40) cameraPosition];
  if (v3 == 2)
  {
    v4 = +[CFXAnalyticsManager sharedInstance];
    [v4 stopTrackingTimeIntervalEventWithName:@"activeexternalcameratime"];

    v5 = +[CFXAnalyticsManager sharedInstance];
    [v5 stopTrackingTimeIntervalEventWithName:@"activebackcameratime"];

    v6 = +[CFXAnalyticsManager sharedInstance];
    [v6 startTrackingTimeIntervalEventWithName:@"activefrontcameratime"];
  }

  else if (v3 != 1)
  {
    if (v3)
    {
      return;
    }

    goto LABEL_8;
  }

  v7 = +[CFXAnalyticsManager sharedInstance];
  [v7 stopTrackingTimeIntervalEventWithName:@"activeexternalcameratime"];

  v8 = +[CFXAnalyticsManager sharedInstance];
  [v8 stopTrackingTimeIntervalEventWithName:@"activefrontcameratime"];

  v9 = +[CFXAnalyticsManager sharedInstance];
  [v9 startTrackingTimeIntervalEventWithName:@"activebackcameratime"];

LABEL_8:
  v10 = +[CFXAnalyticsManager sharedInstance];
  [v10 stopTrackingTimeIntervalEventWithName:@"activebackcameratime"];

  v11 = +[CFXAnalyticsManager sharedInstance];
  [v11 stopTrackingTimeIntervalEventWithName:@"activefrontcameratime"];

  v12 = +[CFXAnalyticsManager sharedInstance];
  [v12 startTrackingTimeIntervalEventWithName:@"activeexternalcameratime"];
}

void __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_74()
{
  v0 = +[CFXAnalyticsManager sharedInstance];
  [v0 startTrackingTimeIntervalEventWithName:@"activetime"];
}

- (void)startCaptureSession
{
  if (![(CFXCameraViewController *)self usesInternalCaptureSession])
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE660];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s called on %@ not configured to run internally see usesInternalCaptureSession", "-[CFXCameraViewController startCaptureSession]", self];;
    v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];

    objc_exception_throw(v13);
  }

  [(CFXCameraViewController *)self setCapturingFunCamMedia:0];
  v3 = +[JFXVideoCameraController sharedInstance];
  cameraSessionRunning = [v3 cameraSessionRunning];

  delegate = [(CFXCameraViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__CFXCameraViewController_startCaptureSession__block_invoke;
  v14[3] = &unk_278D79F18;
  v15 = cameraSessionRunning;
  v14[4] = self;
  v16 = v6 & 1;
  v7 = MEMORY[0x245D22230](v14);
  v8 = v7;
  if (cameraSessionRunning)
  {
    (*(v7 + 16))(v7, 0);
  }

  else
  {
    v9 = +[JFXVideoCameraController sharedInstance];
    [v9 startCameraSession:v8];
  }
}

void __46__CFXCameraViewController_startCaptureSession__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ((*(a1 + 40) & 1) == 0)
  {
    if ([*(a1 + 32) captureMode] == 2)
    {
      if ([*(a1 + 32) initialFlashMode] == 2)
      {
        v3 = 2;
      }

      else
      {
        v3 = [*(a1 + 32) initialFlashMode] == 1;
      }

      v4 = +[JFXVideoCameraController sharedInstance];
      [v4 setCaptureTorchMode:v3 completion:0];
    }

    v5 = [*(a1 + 32) captureViewController];
    [v5 cameraDidStart];
  }

  if (*(a1 + 41) == 1)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 cameraViewControllerDidStartCaptureSession:*(a1 + 32)];
  }
}

- (void)stopCaptureSession
{
  if ([(CFXCameraViewController *)self usesInternalCaptureSession])
  {
    v3 = +[JFXVideoCameraController sharedInstance];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __45__CFXCameraViewController_stopCaptureSession__block_invoke;
    v4[3] = &unk_278D79D20;
    v4[4] = self;
    [v3 stopCameraSession:v4];
  }
}

void __45__CFXCameraViewController_stopCaptureSession__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__CFXCameraViewController_stopCaptureSession__block_invoke_2;
    block[3] = &unk_278D79D20;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __45__CFXCameraViewController_stopCaptureSession__block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) capturingFunCamMedia] & 1) == 0)
  {
    v2 = +[JFXVideoCameraController sharedInstance];
    [v2 prepareCameraForMode:0 position:0 completion:0];

    [*(a1 + 32) JFX_exitAnalytics];
    [*(a1 + 32) setIsEffectsAnalyticsRunning:0];
  }

  v3 = [*(a1 + 32) captureViewController];
  [v3 cameraDidStop];

  v4 = [*(a1 + 32) delegate];
  [v4 cameraViewControllerDidStopCaptureSession:*(a1 + 32)];
}

- (void)resign
{
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  [captureViewController resign];
}

- (void)renderFrameWithImageDataArchive:(id)archive imagePixelBuffer:(__CVBuffer *)buffer depthPixelBuffer:(__CVBuffer *)pixelBuffer orientation:(int64_t)orientation presentationRect:(CGRect)rect contentsRect:(CGRect)contentsRect
{
  height = contentsRect.size.height;
  width = contentsRect.size.width;
  y = contentsRect.origin.y;
  x = contentsRect.origin.x;
  v12 = rect.size.height;
  v13 = rect.size.width;
  v14 = rect.origin.y;
  v15 = rect.origin.x;
  archiveCopy = archive;
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  livePlayerIsSaturated = [captureViewController livePlayerIsSaturated];

  if (livePlayerIsSaturated)
  {
    captureViewController2 = [(CFXCameraViewController *)self captureViewController];
    [captureViewController2 willDropCameraFrame];

    kdebug_trace();
  }

  else
  {
    CVPixelBufferRetain(buffer);
    CVPixelBufferRetain(pixelBuffer);
    externalCaptureSessionInputDeserializationQueue = [(CFXCameraViewController *)self externalCaptureSessionInputDeserializationQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __135__CFXCameraViewController_renderFrameWithImageDataArchive_imagePixelBuffer_depthPixelBuffer_orientation_presentationRect_contentsRect___block_invoke;
    block[3] = &unk_278D79F40;
    bufferCopy = buffer;
    pixelBufferCopy = pixelBuffer;
    v26 = archiveCopy;
    selfCopy = self;
    orientationCopy = orientation;
    v31 = v15;
    v32 = v14;
    v33 = v13;
    v34 = v12;
    v35 = x;
    v36 = y;
    v37 = width;
    v38 = height;
    dispatch_async(externalCaptureSessionInputDeserializationQueue, block);
  }
}

void __135__CFXCameraViewController_renderFrameWithImageDataArchive_imagePixelBuffer_depthPixelBuffer_orientation_presentationRect_contentsRect___block_invoke(uint64_t a1)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v20 = *MEMORY[0x277CC08F0];
  *&time.value = *MEMORY[0x277CC08F0];
  v2 = *(MEMORY[0x277CC08F0] + 16);
  time.epoch = v2;
  CMTimeGetSeconds(&time);
  kdebug_trace();
  v3 = MEMORY[0x277CCAAC8];
  v4 = MEMORY[0x277CBEB98];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v6 = [v4 setWithArray:v5];
  v7 = [v3 unarchivedObjectOfClasses:v6 fromData:*(a1 + 32) error:0];

  if (v7)
  {
    [v7 timestamp];
    CMTimeMakeWithSeconds(&v21, v8, 1000000000);
    time = v21;
    CMTimeGetSeconds(&time);
    kdebug_trace();
    [v7 setPixelBuffer:*(a1 + 48)];
    v9 = [v7 depthData];
    if (v9)
    {
      v10 = *(a1 + 56);

      if (v10)
      {
        v11 = [v7 depthData];
        v12 = [v11 depthDataByReplacingDepthDataMapWithPixelBuffer:*(a1 + 56) error:0];
        [v7 setDepthData:v12];
      }
    }

    v13 = [*(a1 + 40) metadataValidator];
    [v13 validateARImageData:v7];

    v14 = [BufferWithTimestamp alloc];
    v15 = *(a1 + 48);
    [v7 timestamp];
    v16 = [(BufferWithTimestamp *)v14 initWithBuffer:v15 timstamp:?];
    v17 = [*(a1 + 40) outputBufferQueue];
    v18 = [v17 enqueue:v16];

    if (v18)
    {
      CVPixelBufferRetain(*(a1 + 48));
    }

    else
    {
      v19 = JFXLog_camera();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __135__CFXCameraViewController_renderFrameWithImageDataArchive_imagePixelBuffer_depthPixelBuffer_orientation_presentationRect_contentsRect___block_invoke_cold_1();
      }
    }

    [*(a1 + 40) renderFrameWithImageData:v7 orientation:*(a1 + 64) presentationRect:*(a1 + 72) contentsRect:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
  }

  else
  {
    *&time.value = v20;
    time.epoch = v2;
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  CVPixelBufferRelease(*(a1 + 48));
  CVPixelBufferRelease(*(a1 + 56));
}

- (void)showMemojiPicker:(id)picker
{
  pickerCopy = picker;
  effectBrowserViewController = [(CFXCameraViewController *)self effectBrowserViewController];

  if (effectBrowserViewController)
  {
    effectBrowserViewController2 = [(CFXCameraViewController *)self effectBrowserViewController];
    [effectBrowserViewController2 showMemojiPicker:pickerCopy];
  }

  else
  {
    effectBrowserViewController2 = JFXLog_camera();
    if (os_log_type_enabled(effectBrowserViewController2, OS_LOG_TYPE_ERROR))
    {
      [CFXCameraViewController showMemojiPicker:];
    }
  }
}

- (void)effectBrowserViewController:(id)controller didDropOverlayEffect:(id)effect atScreenLocation:(CGPoint)location atScreenSize:(CGSize)size rotationAngle:(double)angle
{
  height = size.height;
  width = size.width;
  y = location.y;
  x = location.x;
  effectCopy = effect;
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  [captureViewController addOverlayEffect:effectCopy atScreenLocation:x atScreenSize:y rotationAngle:{width, height, angle}];
}

- (void)effectBrowserViewController:(id)controller didSelectAppWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierCopy = identifier;
  v8 = +[CFXAnalyticsManager sharedInstance];
  v9 = v8;
  if (identifierCopy)
  {
    [v8 startTrackingPickerWithIdentifier:identifierCopy];
  }

  else
  {
    effectBrowserPresentedAppIdentifier = [(CFXCameraViewController *)self effectBrowserPresentedAppIdentifier];
    [v9 stopTrackingPickerWithIdentifier:effectBrowserPresentedAppIdentifier];
  }

  [(CFXCameraViewController *)self setEffectBrowserPresentedAppIdentifier:identifierCopy];
  if (([identifierCopy isEqual:@"com.apple.FunCamera.Filters"] & 1) == 0)
  {
    v11 = +[JFXVideoCameraController sharedInstance];
    [v11 setSessionRequiresFaceTracking:identifierCopy != 0];
  }

  effectsState = [(CFXCameraViewController *)self effectsState];
  v13 = JFXLog_pickerUI();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    v18 = effectsState;
    _os_log_impl(&dword_242A3B000, v13, OS_LOG_TYPE_DEFAULT, "The effect browser has changed - effectsState: %ld", &v17, 0xCu);
  }

  delegate = [(CFXCameraViewController *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    delegate2 = [(CFXCameraViewController *)self delegate];
    [delegate2 cameraViewController:self didChangeEffectsState:effectsState];
  }
}

- (void)effectBrowserViewController:(id)controller didRemoveAllEffectsOfType:(id)type
{
  typeCopy = type;
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  [captureViewController removeAllEffectsOfType:typeCopy animated:1];

  identifier = [typeCopy identifier];

  LODWORD(typeCopy) = [identifier isEqualToString:@"Animoji"];
  if (typeCopy)
  {
    v8 = +[CFXAnalyticsManager sharedInstance];
    [v8 didSelectEffectOfType:@"Animoji" effectIsNone:1];
  }
}

- (void)effectBrowserViewController:(id)controller didSelectEffect:(id)effect
{
  effectCopy = effect;
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  [captureViewController addEffect:effectCopy];

  jtEffect = [effectCopy jtEffect];
  type = [jtEffect type];

  v9 = @"Filter";
  if (type != 1)
  {
    v9 = 0;
  }

  v10 = v9;
  v12 = +[CFXAnalyticsManager sharedInstance];
  isNone = [effectCopy isNone];

  [v12 didSelectEffectOfType:v10 effectIsNone:isNone];
}

- (id)selectedFilterIdentifierForEffectBrowserViewController:(id)controller
{
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  composition = [captureViewController composition];
  v5 = [composition jtEffectsForType:1];
  firstObject = [v5 firstObject];

  effectID = [firstObject effectID];

  return effectID;
}

- (id)selectedAnimojiIdentifierForEffectBrowserViewController:(id)controller
{
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  composition = [captureViewController composition];
  v5 = [composition jtEffectsForType:7];
  firstObject = [v5 firstObject];

  effectID = [firstObject effectID];

  return effectID;
}

- (id)localizedPromptForHidingAnimojiForEffectBrowserViewController:(id)controller
{
  devicePosition = [(CFXCameraViewController *)self devicePosition];
  if (devicePosition == 1)
  {
    v4 = @"HIDE_MEMOJI_BACK_CAMERA_PROMPT_DISPLAY Name";
    goto LABEL_5;
  }

  if (!devicePosition)
  {
    v4 = @"HIDE_MEMOJI_EXTERNAL_CAMERA_PROMPT_DISPLAY Name";
LABEL_5:
    jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
    v6 = [jfxBundle localizedStringForKey:v4 value:&stru_28553D028 table:0];

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)effectBrowserViewController:(id)controller willChangeDockHeight:(double)height
{
  v6 = height > 50.0;
  captureViewController = [(CFXCameraViewController *)self captureViewController];
  v8 = height + -44.0;
  [captureViewController updateUIForDockMagnify:v6 dockHeightDelta:v8];

  cameraControlsViewController = [(CFXCameraViewController *)self cameraControlsViewController];
  [cameraControlsViewController updateUIForDockMagnify:v6 dockHeightDelta:v8];
}

- (BOOL)shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:(id)controller
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v5 = [currentDevice userInterfaceIdiom] == 1 && -[CFXCameraViewController captureMode](self, "captureMode") != 1;

  return v5;
}

- (BOOL)allowLandscapeForEffectBrowserViewController:(id)controller
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CFXCameraViewController *)self captureMode]!= 1;
  }

  return v5;
}

- (double)effectBrowserViewController:(id)controller screenTopBarHeightForWindowBounds:(CGRect)bounds orientation:(int64_t)orientation
{
  [MEMORY[0x277D3D080] cameraTopBarFrameForReferenceBounds:{controller, orientation, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height}];

  return CGRectGetHeight(*&v5);
}

- (void)captureViewController:(id)controller didCaptureMediaItem:(id)item
{
  itemCopy = item;
  effectBrowserViewController = [(CFXCameraViewController *)self effectBrowserViewController];
  [effectBrowserViewController hideBrowserAnimated:0 completion:0];

  if (!itemCopy)
  {
    delegate2 = +[JFXVideoCameraController sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__CFXCameraViewController_captureViewController_didCaptureMediaItem___block_invoke;
    v10[3] = &unk_278D79D20;
    v10[4] = self;
    [delegate2 stopCameraSession:v10];
    goto LABEL_5;
  }

  [(CFXCameraViewController *)self setCapturingFunCamMedia:1];
  delegate = [(CFXCameraViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CFXCameraViewController *)self delegate];
    [delegate2 cameraViewController:self didCaptureMediaItem:itemCopy];
LABEL_5:
  }
}

- (void)captureViewController:(id)controller didChangeEffectComposition:(id)composition
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [(CFXCameraViewController *)self effectsState:controller];
  v6 = JFXLog_effects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v5;
    _os_log_impl(&dword_242A3B000, v6, OS_LOG_TYPE_DEFAULT, "The effect composition has changed - effectsState: %ld", &v10, 0xCu);
  }

  delegate = [(CFXCameraViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CFXCameraViewController *)self delegate];
    [delegate2 cameraViewController:self didChangeEffectsState:v5];
  }
}

- (void)captureViewController:(id)controller didRenderFrame:(id)frame
{
  frameCopy = frame;
  externalCaptureSessionOutputProcessingQueue = [(CFXCameraViewController *)self externalCaptureSessionOutputProcessingQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__CFXCameraViewController_captureViewController_didRenderFrame___block_invoke;
  v8[3] = &unk_278D79C88;
  v8[4] = self;
  v9 = frameCopy;
  v7 = frameCopy;
  dispatch_async(externalCaptureSessionOutputProcessingQueue, v8);
}

void __64__CFXCameraViewController_captureViewController_didRenderFrame___block_invoke(uint64_t a1)
{
  *&v38[5] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    goto LABEL_29;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    [v4 timestamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  v6 = [*(a1 + 32) outputBufferQueue];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [*(a1 + 32) outputBufferQueue];
    if ([v8 count] < 2)
    {
LABEL_13:
    }

    else
    {
      while (1)
      {
        v9 = [*(a1 + 32) outputBufferQueue];
        [v9 headBufferTimestamp];
        v11 = vabdd_f64(Seconds, v10);

        if (v11 <= 0.0001)
        {
          break;
        }

        v12 = [*(a1 + 32) outputBufferQueue];
        v13 = [v12 dequeue];

        v14 = [*(a1 + 32) delegate];
        v15 = objc_opt_respondsToSelector();

        if (v15)
        {
          v16 = [*(a1 + 32) delegate];
          [v16 cameraViewController:*(a1 + 32) didDropFrame:{objc_msgSend(v13, "pixelBuffer")}];
        }

        CVPixelBufferRelease([v13 pixelBuffer]);
        v17 = JFXLog_camera();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __64__CFXCameraViewController_captureViewController_didRenderFrame___block_invoke_cold_1(v37, v13, v38, v17);
        }

        v8 = [*(a1 + 32) outputBufferQueue];
        if ([v8 count] <= 1)
        {
          goto LABEL_13;
        }
      }
    }

    v18 = [*(a1 + 32) outputBufferQueue];
    v19 = [v18 dequeue];
    v20 = [v19 pixelBuffer];

    v21 = [*(a1 + 32) externalCaptureSessionRotationSession];
    v22 = [v21 createRotatedPixelBuffer:objc_msgSend(*(a1 + 40) using:{"pixelBuffer"), v20}];

    v23 = [CFXFrame alloc];
    v24 = *(a1 + 40);
    if (v24)
    {
      [v24 timestamp];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v26 = [(CFXFrame *)v23 initWithPixelBuffer:v22 timestamp:&time];
    CVPixelBufferRelease(v22);
    v28 = *(a1 + 32);
    v27 = *(a1 + 40);
    if (v27)
    {
      [v27 timestamp];
      if (v28)
      {
LABEL_22:
        [v28 noteOutputFrameWithTimestamp:v35];
LABEL_25:
        time = *&v35[3];
        [(CFXFrame *)v26 setLatency:&time];
        if (v26)
        {
          [(CFXFrame *)v26 timestamp];
          [(CFXFrame *)v26 latency];
        }

        else
        {
          memset(&time, 0, sizeof(time));
          memset(&v34, 0, sizeof(v34));
        }

        JFXAutomationLogFrameMetrics(@"jfx_rendered", &time, &v34);
        v29 = [*(a1 + 32) delegate];
        [v29 cameraViewController:*(a1 + 32) didRenderFrame:v26];

LABEL_29:
        v30 = [*(a1 + 32) captureViewController];
        v31 = [v30 composition];
        v32 = [v31 isEmpty];

        if (v32)
        {
          v33 = *(a1 + 40);
          if (v33)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v33 = *(a1 + 40);
          if (v33)
          {
LABEL_33:
            [v33 timestamp];
LABEL_35:
            time = v34;
            CMTimeGetSeconds(&time);
            kdebug_trace();
            return;
          }
        }

        memset(&v34, 0, sizeof(v34));
        goto LABEL_35;
      }
    }

    else
    {
      memset(v35, 0, 24);
      if (v28)
      {
        goto LABEL_22;
      }
    }

    memset(&v35[3], 0, 24);
    goto LABEL_25;
  }

  v25 = JFXLog_camera();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    __64__CFXCameraViewController_captureViewController_didRenderFrame___block_invoke_cold_2();
  }
}

- (void)captureViewControllerDoneButtonWasTapped:(id)tapped
{
  delegate = [(CFXCameraViewController *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(CFXCameraViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(CFXCameraViewController *)self delegate];
      [delegate3 cameraViewControllerDoneButtonWasTapped:self];
    }
  }
}

- (void)captureViewControllerEffectsButtonWasTapped:(id)tapped
{
  delegate = [(CFXCameraViewController *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(CFXCameraViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(CFXCameraViewController *)self delegate];
      [delegate3 cameraViewControllerEffectsButtonWasTapped:self];
    }
  }
}

- (void)captureViewControllerPresentationRectWasDoubleTapped:(id)tapped
{
  delegate = [(CFXCameraViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CFXCameraViewController *)self delegate];
    [delegate2 cameraViewControllerPresentationRectWasDoubleTapped:self];
  }
}

- (void)captureViewController:(id)controller presentationRectWasPinchedWithState:(int64_t)state scale:(double)scale velocity:(double)velocity
{
  delegate = [(CFXCameraViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(CFXCameraViewController *)self delegate];
    [delegate2 cameraViewController:self presentationRectWasPinchedWithState:state scale:scale velocity:velocity];
  }
}

- (void)captureViewControllerDidStartVideoRecording:(id)recording
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    effectBrowserViewController = [(CFXCameraViewController *)self effectBrowserViewController];
    [effectBrowserViewController hideBrowserAnimated:1 completion:0];
  }

  [(CFXCameraViewController *)self updateUIForVideoRecording:1];
}

- (void)captureViewControllerCameraFlipButtonWasTapped:(id)tapped
{
  effectBrowserViewController = [(CFXCameraViewController *)self effectBrowserViewController];
  [effectBrowserViewController refreshEffectBrowserForCameraFlip];
}

- (void)remoteCommandServer:(id)server didReceiveAddStickerCommandWithIdentifier:(id)identifier offset:(CGPoint)offset scale:(double)scale rotation:(double)rotation
{
  y = offset.y;
  x = offset.x;
  v42 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13 = [CFXEffectType effectTypeWithIdentifier:@"EmojiStickers"];
  v14 = identifierCopy;
  v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v14];
  identifier = v14;
  if (v15)
  {
    if (v14)
    {
LABEL_3:
      v17 = [CFXEffect effectWithIdentifier:identifier forEffectType:v13];
      v18 = JFXLog_automation();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        localizedTitle = [v17 localizedTitle];
        v43.x = x;
        v43.y = y;
        v20 = NSStringFromCGPoint(v43);
        *buf = 138544130;
        v34 = localizedTitle;
        v35 = 2114;
        v36 = v20;
        v37 = 2048;
        scaleCopy = scale;
        v39 = 2048;
        rotationCopy = rotation;
        _os_log_impl(&dword_242A3B000, v18, OS_LOG_TYPE_DEFAULT, "Adding Emoji Sticker effect - name: %{public}@, offset: %{public}@, scale: %f, rotation: %f", buf, 0x2Au);
      }

      captureViewController = [(CFXCameraViewController *)self captureViewController];
      [captureViewController addOverlayEffect:v17 atNormalizedPlanePoint:x scale:y rotationAngle:{scale, rotation}];

      goto LABEL_20;
    }
  }

  else
  {

    [v13 effects];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = v32 = 0u;
    identifier = [v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (identifier)
    {
      selfCopy = self;
      v23 = *v30;
      while (2)
      {
        for (i = 0; i != identifier; i = i + 1)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v22);
          }

          v25 = *(*(&v29 + 1) + 8 * i);
          localizedTitle2 = [v25 localizedTitle];
          v27 = [localizedTitle2 isEqualToString:v14];

          if (v27)
          {
            identifier = [v25 identifier];
            goto LABEL_16;
          }
        }

        identifier = [v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (identifier)
        {
          continue;
        }

        break;
      }

LABEL_16:
      self = selfCopy;
    }

    if (identifier)
    {
      goto LABEL_3;
    }
  }

  v17 = JFXLog_automation();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [CFXCameraViewController remoteCommandServer:didReceiveAddStickerCommandWithIdentifier:offset:scale:rotation:];
  }

LABEL_20:
}

- (void)remoteCommandServer:(id)server didReceiveAddStickerCommandWithData:(id)data offset:(CGPoint)offset scale:(double)scale rotation:(double)rotation
{
  y = offset.y;
  x = offset.x;
  v46[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    v13 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v16 = [v13 stringWithFormat:@"CommanderAvatar_%@.png", uUIDString];

    v17 = MEMORY[0x277CBEBC0];
    v18 = NSTemporaryDirectory();
    v19 = [v18 stringByAppendingPathComponent:v16];
    v20 = [v17 fileURLWithPath:v19];

    if ([dataCopy writeToURL:v20 atomically:0])
    {
      v45 = *MEMORY[0x277D41AD0];
      path = [v20 path];
      v46[0] = path;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];

      v23 = +[JFXEffectFactory sharedInstance];
      v24 = [v23 createEffectForType:2 fromID:*MEMORY[0x277D418E8] withProperties:v22];

      v25 = [CFXEffect effectWithJTEffect:v24];
      v26 = JFXLog_automation();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        jtEffect = [v25 jtEffect];
        v27 = NSStringFromJFXEffectType([jtEffect type]);
        [v25 localizedTitle];
        v28 = v32 = self;
        v47.x = x;
        v47.y = y;
        v29 = NSStringFromCGPoint(v47);
        *buf = 138544642;
        v34 = v27;
        v35 = 2114;
        v36 = v28;
        v37 = 2114;
        v38 = v20;
        v39 = 2114;
        v40 = v29;
        v41 = 2048;
        scaleCopy = scale;
        v43 = 2048;
        rotationCopy = rotation;
        _os_log_impl(&dword_242A3B000, v26, OS_LOG_TYPE_DEFAULT, "Adding effect - type: %{public}@, name: %{public}@, url: %{public}@, offset: %{public}@, scale: %f, rotation: %f", buf, 0x3Eu);

        self = v32;
      }

      captureViewController = [(CFXCameraViewController *)self captureViewController];
      [captureViewController addOverlayEffect:v25 atNormalizedPlanePoint:x scale:y rotationAngle:{scale, rotation}];
    }

    else
    {
      v22 = JFXLog_automation();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CFXCameraViewController remoteCommandServer:didReceiveAddStickerCommandWithData:offset:scale:rotation:];
      }
    }
  }

  else
  {
    v16 = JFXLog_automation();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CFXCameraViewController remoteCommandServer:v16 didReceiveAddStickerCommandWithData:? offset:? scale:? rotation:?];
    }
  }
}

- (void)remoteCommandServer:(id)server didReceiveRemoveEffectsCommandWithTypeIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v6 = JFXLog_automation();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = identifiersCopy;
    _os_log_impl(&dword_242A3B000, v6, OS_LOG_TYPE_DEFAULT, "Removing effects - types: %{public}@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = identifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [CFXEffectType effectTypeWithIdentifier:*(*(&v14 + 1) + 8 * v11), v14];
        captureViewController = [(CFXCameraViewController *)self captureViewController];
        [captureViewController removeAllEffectsOfType:v12 animated:1];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)remoteCommandServer:(id)server didReceiveSetMemojiCommandWithContentsOfFile:(id)file
{
  v16 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v8 = [JFXAnimojiEffect createMemojiEffectWithContentsOfFile:fileCopy identifier:uUIDString];
  v9 = [CFXEffect effectWithJTEffect:v8];
  v10 = JFXLog_automation();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = fileCopy;
    v14 = 2114;
    v15 = uUIDString;
    _os_log_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEFAULT, "Adding Memoji at path: %{public}@, identifier: %{public}@", &v12, 0x16u);
  }

  captureViewController = [(CFXCameraViewController *)self captureViewController];
  [captureViewController addEffect:v9 allowImmediateTextEditing:1];
}

- (void)remoteCommandServer:(id)server didReceiveSetFilterCommandWithIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = [CFXEffectType effectTypeWithIdentifier:@"Filter"];
  v7 = identifierCopy;
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
  identifier = v7;
  if (v8)
  {
    if (v7)
    {
LABEL_3:
      [(CFXCameraViewController *)self CFX_automationAddEffectWithEffectTypeIdentifier:@"Filter" identifier:identifier string:0];
      goto LABEL_19;
    }
  }

  else
  {
    [v6 effects];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v24 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    identifier = v7;
    if (v11)
    {
      v12 = v11;
      selfCopy = self;
      v20 = v6;
      v13 = *v22;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          localizedTitle = [v15 localizedTitle];
          v17 = [localizedTitle isEqualToString:v7];

          if (v17)
          {
            identifier = [v15 identifier];

            goto LABEL_14;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      identifier = v7;
LABEL_14:
      self = selfCopy;
      v6 = v20;
    }

    if (identifier)
    {
      goto LABEL_3;
    }
  }

  v18 = JFXLog_automation();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [CFXCameraViewController remoteCommandServer:didReceiveSetFilterCommandWithIdentifier:];
  }

LABEL_19:
}

- (void)CFX_automationAddEffectWithEffectTypeIdentifier:(id)identifier identifier:(id)a4 string:(id)string
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v9 = a4;
  stringCopy = string;
  v11 = [CFXEffectType effectTypeWithIdentifier:identifierCopy];
  v12 = [CFXEffect effectWithIdentifier:v9 forEffectType:v11];
  v13 = v12;
  if (@"Text" == identifierCopy)
  {
    jtEffect = [v12 jtEffect];
    [JFXEffectEditingUtilities updateEffectText:jtEffect newText:stringCopy];
  }

  else
  {
    if (@"Animoji" != identifierCopy)
    {
      goto LABEL_6;
    }

    jtEffect = [JFXAnimojiEffect createAnimojiEffectForID:v9];
    v15 = [CFXEffect effectWithJTEffect:jtEffect];

    v13 = v15;
  }

LABEL_6:
  v16 = JFXLog_automation();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    jtEffect2 = [v13 jtEffect];
    NSStringFromJFXEffectType([jtEffect2 type]);
    v18 = v23 = self;
    localizedTitle = [v13 localizedTitle];
    v20 = localizedTitle;
    *buf = 138544130;
    v21 = &stru_28553D028;
    v25 = v18;
    if (stringCopy)
    {
      v21 = stringCopy;
    }

    v26 = 2114;
    v27 = localizedTitle;
    v28 = 2114;
    v29 = v9;
    v30 = 2114;
    v31 = v21;
    _os_log_impl(&dword_242A3B000, v16, OS_LOG_TYPE_DEFAULT, "Adding effect - type: %{public}@, name: %{public}@, identifier: %{public}@, string: %{public}@", buf, 0x2Au);

    self = v23;
  }

  captureViewController = [(CFXCameraViewController *)self captureViewController];
  [captureViewController addEffect:v13 allowImmediateTextEditing:@"Text"];
}

- (void)stageManagerWarningDoneButtonWasTapped:(id)tapped
{
  delegate = [(CFXCameraViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CFXCameraViewController *)self delegate];
    [delegate2 cameraViewControllerDoneButtonWasTapped:self];
  }
}

- (void)JFX_exitAnalytics
{
  v2 = +[CFXAnalyticsManager sharedInstance];
  [v2 stopTrackingTimeIntervalEventWithName:@"activefrontcameratime"];

  v3 = +[CFXAnalyticsManager sharedInstance];
  [v3 stopTrackingTimeIntervalEventWithName:@"activebackcameratime"];

  v4 = +[CFXAnalyticsManager sharedInstance];
  [v4 stopTrackingTimeIntervalEventWithName:@"activetime"];
}

- (void)noteInputFrameWithTimestamp:(double)timestamp
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:timestamp];
  stringValue = [v4 stringValue];

  memset(&v10, 0, sizeof(v10));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v10, HostTimeClock);
  v9 = v10;
  v7 = [MEMORY[0x277CCAE60] valueWithCMTime:&v9];
  externalCaptureSessionInputFrameTimestamps = [(CFXCameraViewController *)self externalCaptureSessionInputFrameTimestamps];
  [externalCaptureSessionInputFrameTimestamps setValue:v7 forKey:stringValue];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)noteOutputFrameWithTimestamp:(SEL)timestamp
{
  memset(&v18, 0, sizeof(v18));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v18, HostTimeClock);
  time = *a4;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:CMTimeGetSeconds(&time)];
  stringValue = [v8 stringValue];

  memset(&time, 0, sizeof(time));
  externalCaptureSessionInputFrameTimestamps = [(CFXCameraViewController *)self externalCaptureSessionInputFrameTimestamps];
  v11 = [externalCaptureSessionInputFrameTimestamps valueForKey:stringValue];
  v12 = v11;
  if (v11)
  {
    [v11 CMTimeValue];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  externalCaptureSessionInputFrameTimestamps2 = [(CFXCameraViewController *)self externalCaptureSessionInputFrameTimestamps];
  [externalCaptureSessionInputFrameTimestamps2 removeObjectForKey:stringValue];

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  lhs = v18;
  v15 = time;
  CMTimeSubtract(retstr, &lhs, &v15);

  return result;
}

- (void)updateUIForVideoRecording:(BOOL)recording
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__CFXCameraViewController_updateUIForVideoRecording___block_invoke;
  v3[3] = &unk_278D79E38;
  v3[4] = self;
  recordingCopy = recording;
  [JTAnimation performAnimation:v3 duration:0 completion:0.25];
}

void __53__CFXCameraViewController_updateUIForVideoRecording___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) captureViewController];
  [v2 updateUIForVideoRecording:*(a1 + 40)];

  v3 = [*(a1 + 32) cameraControlsViewController];
  [v3 updateUIForVideoRecording:*(a1 + 40)];

  v4 = (*(a1 + 40) ^ 1u);
  v6 = [*(a1 + 32) effectBrowserViewController];
  v5 = [v6 view];
  [v5 setAlpha:v4];
}

- (CFXCameraViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)externalPresentationRect
{
  x = self->_externalPresentationRect.origin.x;
  y = self->_externalPresentationRect.origin.y;
  width = self->_externalPresentationRect.size.width;
  height = self->_externalPresentationRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)externalContentRect
{
  x = self->_externalContentRect.origin.x;
  y = self->_externalContentRect.origin.y;
  width = self->_externalContentRect.size.width;
  height = self->_externalContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setAnimojiOnlyEffectID:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setAnimojiOnlyEffectID:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setTransitionState:(os_log_t)log animated:.cold.1(char a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a2;
  v5 = 1024;
  v6 = a1 & 1;
  _os_log_debug_impl(&dword_242A3B000, log, OS_LOG_TYPE_DEBUG, "transitionState: %ld, animated: %d", &v3, 0x12u);
}

void __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_68_cold_1(uint64_t a1, NSObject *a2, CGFloat a3, CGFloat a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = NSStringFromCGRect(*(a1 + 56));
  v9 = NSStringFromCGRect(*(a1 + 88));
  v18.width = a3;
  v18.height = a4;
  v10 = NSStringFromCGSize(v18);
  v11 = 138412802;
  v12 = v8;
  v13 = 2112;
  v14 = v9;
  v15 = 2112;
  v16 = v10;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "renderFrameWithImageData presentationRect  %@ contentRect %@ renderSize %@", &v11, 0x20u);
}

void __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_68_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_68_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __135__CFXCameraViewController_renderFrameWithImageDataArchive_imagePixelBuffer_depthPixelBuffer_orientation_presentationRect_contentsRect___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)showMemojiPicker:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__CFXCameraViewController_captureViewController_didRenderFrame___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  [a2 timestamp];
  *a1 = 134217984;
  *a3 = v7;
  _os_log_error_impl(&dword_242A3B000, a4, OS_LOG_TYPE_ERROR, "Frame dropped, timestamp: %f", a1, 0xCu);
}

void __64__CFXCameraViewController_captureViewController_didRenderFrame___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)remoteCommandServer:didReceiveAddStickerCommandWithIdentifier:offset:scale:rotation:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)remoteCommandServer:didReceiveAddStickerCommandWithData:offset:scale:rotation:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)remoteCommandServer:(NSObject *)a1 didReceiveAddStickerCommandWithData:offset:scale:rotation:.cold.2(NSObject *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromJFXEffectType(2);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_242A3B000, a1, OS_LOG_TYPE_ERROR, "Adding effect failed - type: %{public}@, reason: No sticker data", v3, 0xCu);
}

- (void)remoteCommandServer:didReceiveSetFilterCommandWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end