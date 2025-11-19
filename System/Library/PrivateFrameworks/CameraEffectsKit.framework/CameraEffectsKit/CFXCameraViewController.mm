@interface CFXCameraViewController
+ (void)initialize;
+ (void)preheatWithWindow:(id)a3 captureMode:(int64_t)a4 devicePosition:(int64_t)a5 aspectRatioCrop:(int64_t)a6;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)noteOutputFrameWithTimestamp:(SEL)a3;
- (BOOL)allowLandscapeForEffectBrowserViewController:(id)a3;
- (BOOL)isEffectsPickerHidden;
- (BOOL)shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:(id)a3;
- (CFXCameraViewController)initWithCaptureMode:(int64_t)a3 devicePosition:(int64_t)a4 flashMode:(int64_t)a5 aspectRatioCrop:(int64_t)a6;
- (CFXCameraViewControllerDelegate)delegate;
- (CGRect)externalContentRect;
- (CGRect)externalPresentationRect;
- (UIColor)animojiOnlyBackgroundColor;
- (UIView)effectsPickerDrawer;
- (double)effectBrowserViewController:(id)a3 screenTopBarHeightForWindowBounds:(CGRect)a4 orientation:(int64_t)a5;
- (double)userInterfaceAlpha;
- (id)animojiEffectID;
- (id)localizedPromptForHidingAnimojiForEffectBrowserViewController:(id)a3;
- (id)selectedAnimojiIdentifierForEffectBrowserViewController:(id)a3;
- (id)selectedFilterIdentifierForEffectBrowserViewController:(id)a3;
- (int64_t)devicePosition;
- (int64_t)effectsState;
- (int64_t)flashMode;
- (void)CFX_automationAddEffectWithEffectTypeIdentifier:(id)a3 identifier:(id)a4 string:(id)a5;
- (void)JFX_exitAnalytics;
- (void)captureViewController:(id)a3 didCaptureMediaItem:(id)a4;
- (void)captureViewController:(id)a3 didChangeEffectComposition:(id)a4;
- (void)captureViewController:(id)a3 didRenderFrame:(id)a4;
- (void)captureViewController:(id)a3 presentationRectWasPinchedWithState:(int64_t)a4 scale:(double)a5 velocity:(double)a6;
- (void)captureViewControllerCameraFlipButtonWasTapped:(id)a3;
- (void)captureViewControllerDidStartVideoRecording:(id)a3;
- (void)captureViewControllerDoneButtonWasTapped:(id)a3;
- (void)captureViewControllerEffectsButtonWasTapped:(id)a3;
- (void)captureViewControllerPresentationRectWasDoubleTapped:(id)a3;
- (void)dealloc;
- (void)effectBrowserViewController:(id)a3 didDropOverlayEffect:(id)a4 atScreenLocation:(CGPoint)a5 atScreenSize:(CGSize)a6 rotationAngle:(double)a7;
- (void)effectBrowserViewController:(id)a3 didRemoveAllEffectsOfType:(id)a4;
- (void)effectBrowserViewController:(id)a3 didSelectAppWithIdentifier:(id)a4;
- (void)effectBrowserViewController:(id)a3 didSelectEffect:(id)a4;
- (void)effectBrowserViewController:(id)a3 willChangeDockHeight:(double)a4;
- (void)loadView;
- (void)noteInputFrameWithTimestamp:(double)a3;
- (void)remoteCommandServer:(id)a3 didReceiveAddStickerCommandWithData:(id)a4 offset:(CGPoint)a5 scale:(double)a6 rotation:(double)a7;
- (void)remoteCommandServer:(id)a3 didReceiveAddStickerCommandWithIdentifier:(id)a4 offset:(CGPoint)a5 scale:(double)a6 rotation:(double)a7;
- (void)remoteCommandServer:(id)a3 didReceiveRemoveEffectsCommandWithTypeIdentifiers:(id)a4;
- (void)remoteCommandServer:(id)a3 didReceiveSetFilterCommandWithIdentifier:(id)a4;
- (void)remoteCommandServer:(id)a3 didReceiveSetMemojiCommandWithContentsOfFile:(id)a4;
- (void)removeAllEffects;
- (void)renderFrameWithImageData:(id)a3 orientation:(int64_t)a4 presentationRect:(CGRect)a5 contentsRect:(CGRect)a6;
- (void)renderFrameWithImageDataArchive:(id)a3 imagePixelBuffer:(__CVBuffer *)a4 depthPixelBuffer:(__CVBuffer *)a5 orientation:(int64_t)a6 presentationRect:(CGRect)a7 contentsRect:(CGRect)a8;
- (void)resign;
- (void)setAnimojiOnlyBackgroundColor:(id)a3;
- (void)setAnimojiOnlyEffectID:(id)a3;
- (void)setEffectsPickerDrawer:(id)a3;
- (void)setEffectsPickerHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setExternalCaptureSessionCameraPosition:(int64_t)a3;
- (void)setShowsViewfinder:(BOOL)a3;
- (void)setTransitionState:(int64_t)a3 animated:(BOOL)a4;
- (void)setUserInterfaceAlpha:(double)a3;
- (void)setUsesInternalCaptureSession:(BOOL)a3;
- (void)showMemojiPicker:(id)a3;
- (void)stageManagerWarningDoneButtonWasTapped:(id)a3;
- (void)startCaptureSession;
- (void)stopCaptureSession;
- (void)updateUIForVideoRecording:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation CFXCameraViewController

+ (void)initialize
{
  v7[1] = *MEMORY[0x277D85DE8];
  +[CFXApplicationState beginMonitoringApplicationState];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 addSuiteNamed:@"com.apple.MobileSMS"];

  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = *MEMORY[0x277D416D8];
  v7[0] = &unk_28556D098;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 registerDefaults:v4];

  +[CFXEffect setupFactoryDelegate];
  v5 = +[CFXMediaSettings sharedInstance];
  [JFXMediaSettings setProviderDelegate:v5];
}

+ (void)preheatWithWindow:(id)a3 captureMode:(int64_t)a4 devicePosition:(int64_t)a5 aspectRatioCrop:(int64_t)a6
{
  v25 = *MEMORY[0x277D85DE8];
  [JFXOrientationMonitor initializeWithKeyWindow:a3];
  v9 = CFXCanonicalAspectRatioCropForCaptureModeAndDesiredAspectRatioCrop(a4, a6);
  v10 = JFXLog_camera();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromCFXAspectRatioCrop(a6);
    v12 = NSStringFromCFXAspectRatioCrop(v9);
    v17 = 134218754;
    v18 = a5;
    v19 = 2048;
    v20 = a4;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEFAULT, "devicePosition: %ld, captureMode: %ld, aspectRatioCrop: %{public}@, canonicalAspectRatioCrop: %{public}@", &v17, 0x2Au);
  }

  v13 = JFXCameraModeForCaptureModeAndAspectRatioCrop(a4, v9);
  v14 = +[CFXEffectHostAppDelegate sharedInstance];
  [v14 setColorSpaceDelegate:0];

  v15 = +[JFXVideoCameraController sharedInstance];
  [v15 prepareCameraForMode:v13 position:2 completion:&__block_literal_global_2];

  v16 = +[JFXVideoCameraController sharedInstance];
  [v16 setOwnerName:@"Generated in Camera Effects"];
}

- (CFXCameraViewController)initWithCaptureMode:(int64_t)a3 devicePosition:(int64_t)a4 flashMode:(int64_t)a5 aspectRatioCrop:(int64_t)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = CFXCameraViewController;
  v10 = [(CFXCameraViewController *)&v40 initWithNibName:0 bundle:0];
  if (v10)
  {
    v11 = CFXCanonicalAspectRatioCropForCaptureModeAndDesiredAspectRatioCrop(a3, a6);
    v12 = dispatch_get_global_queue(25, 0);
    dispatch_async(v12, &__block_literal_global_12);

    v13 = JFXLog_camera();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromCFXAspectRatioCrop(a6);
      v15 = NSStringFromCFXAspectRatioCrop(v11);
      *buf = 134219010;
      v42 = a4;
      v43 = 2048;
      v44 = a5;
      v45 = 2048;
      v46 = a3;
      v47 = 2114;
      v48 = v14;
      v49 = 2114;
      v50 = v15;
      _os_log_impl(&dword_242A3B000, v13, OS_LOG_TYPE_DEFAULT, "devicePosition: %ld, flashMode: %ld, captureMode: %ld, aspectRatioCrop: %{public}@, canonicalAspectRatioCrop: %{public}@", buf, 0x34u);
    }

    v10->_aspectRatioCrop = v11;
    v10->_captureMode = a3;
    v10->_cameraPosition = 2;
    v10->_initialFlashMode = a5;
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
  v3 = [(CFXCameraViewController *)self captureViewController];
  [v3 cameraDidStop];

  v4 = [(CFXCameraViewController *)self captureViewController];
  [v4 removeAllEffectsAnimated:0];

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
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
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
    v5 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v5 userInterfaceIdiom] == 0;
  }

  v122 = v3;
  if (v3 | !+[JFXOrientationMonitor initialized])
  {
    [JFXOrientationMonitor initializeWithViewController:self];
  }

  v6 = MEMORY[0x277D75AC8];
  v7 = [MEMORY[0x277CCA8D8] jfxBundle];
  v8 = [v6 storyboardWithName:@"CFXCaptureViewController" bundle:v7];
  v9 = [v8 instantiateViewControllerWithIdentifier:@"CFXCaptureViewController"];
  [(CFXCameraViewController *)self setCaptureViewController:v9];

  v10 = [(CFXCameraViewController *)self captureViewController];
  [v10 setDelegate:self];

  v11 = [(CFXCameraViewController *)self captureMode];
  v12 = [(CFXCameraViewController *)self captureViewController];
  [v12 setCaptureMode:v11];

  [JFXEffectEditingUtilities setStreamingMode:isStreamingMode([(CFXCameraViewController *)self captureMode])];
  v13 = [(CFXCameraViewController *)self captureViewController];
  [v13 setAspectRatioCrop:{-[CFXCameraViewController aspectRatioCrop](self, "aspectRatioCrop")}];

  if ((CFXCaptureCapabilitiesIsCTMSupported() & 1) == 0)
  {
    v14 = [(CFXCameraViewController *)self captureViewController];
    [v14 setFlashMode:{-[CFXCameraViewController initialFlashMode](self, "initialFlashMode")}];
  }

  v15 = [(CFXCameraViewController *)self captureViewController];
  [v15 updateUIForDevicePosition:2];

  if (v4)
  {
    v16 = [(CFXCameraViewController *)self captureViewController];
    v17 = [v16 cameraControls];
    v18 = [v17 controlsContainerViewTopConstraint];
    v19 = [(CFXCameraViewController *)self captureViewController];
    [v19 setCaptureControlsContainerTopConstraint:v18];

    v20 = [(CFXCameraViewController *)self captureViewController];
    v21 = [v20 cameraControls];
    v22 = [v21 controlsContainerViewLeadingConstraint];
    v23 = [(CFXCameraViewController *)self captureViewController];
    [v23 setCaptureControlsContainerLeadingConstraint:v22];

    v24 = [(CFXCameraViewController *)self captureViewController];
    v25 = [v24 cameraControls];
    v26 = [v25 controlsContainerViewTrailingConstraint];
    v27 = [(CFXCameraViewController *)self captureViewController];
    [v27 setCaptureControlsContainerTrailingConstraint:v26];

    v28 = [(CFXCameraViewController *)self captureViewController];
    v29 = [v28 cameraControls];
    v30 = [v29 controlsContainerViewWidthConstraint];
    v31 = [(CFXCameraViewController *)self captureViewController];
    [v31 setCaptureControlsContainerWidthConstraint:v30];

    v32 = [(CFXCameraViewController *)self captureViewController];
    v33 = [v32 cameraControls];
    v34 = [v33 controlsContainerViewHeightConstraint];
    v35 = [(CFXCameraViewController *)self captureViewController];
    [v35 setCaptureControlsContainerHeightConstraint:v34];
  }

  v36 = [CFXCameraControlsViewController alloc];
  v37 = [(CFXCameraViewController *)self captureViewController];
  v38 = [(CFXCameraControlsViewController *)v36 initWithDelegate:v37 captureMode:[(CFXCameraViewController *)self captureMode]];
  [(CFXCameraViewController *)self setCameraControlsViewController:v38];

  if ([(CFXCameraViewController *)self captureMode]== 2)
  {
    v39 = [MEMORY[0x277D75348] clearColor];
    v40 = [(CFXCameraViewController *)self cameraControlsViewController];
    [v40 setBackgroundColor:v39];
  }

  else
  {
    v39 = [MEMORY[0x277D75348] blackColor];
    v40 = [v39 colorWithAlphaComponent:1.0];
    v41 = [(CFXCameraViewController *)self cameraControlsViewController];
    [v41 setBackgroundColor:v40];
  }

  v42 = [(CFXCameraViewController *)self captureViewController];
  v43 = [v42 cameraControls];

  if (!v4)
  {
    v44 = [v43 controlsContainerViewWidthConstraint];
    [v44 setActive:0];

    v45 = [v43 controlsContainerViewHeightConstraint];
    [v45 setActive:0];

    v46 = [v43 controlsContainerViewTopConstraint];
    LODWORD(v47) = 1144750080;
    [v46 setPriority:v47];
  }

  v48 = [v43 view];
  v49 = [v43 controlsContainerView];
  v50 = [(CFXCameraViewController *)self captureViewController];
  v51 = [v50 effectBrowserContentPresenterViewController];

  v52 = [[CFXEffectBrowserViewController alloc] initWithDelegate:self contentPresenter:v51];
  [(CFXCameraViewController *)self setEffectBrowserViewController:v52];

  v53 = [(CFXCameraViewController *)self effectBrowserViewController];
  [v53 setContentPresenterDelegate:v51];

  [v51 setDelegate:self];
  if (CFXCaptureCapabilitiesIsCTMSupported())
  {
    v54 = [(CFXCameraViewController *)self captureMode];
    if (v54 == 2)
    {
      v55 = 0;
    }

    else
    {
      if (v54)
      {
        goto LABEL_21;
      }

      v55 = [(CFXCameraViewController *)self aspectRatioCrop]!= 1;
    }

    v56 = [(CFXCameraViewController *)self effectBrowserViewController];
    [v56 setShowAppIconBorders:v55];
  }

LABEL_21:
  v57 = [(CFXCameraViewController *)self effectBrowserViewController];
  v58 = [v57 view];

  v59 = [(CFXCameraViewController *)self effectBrowserViewController];
  [v43 addChildViewController:v59];

  if (v4)
  {
    v60 = [v51 view];
    [v48 insertSubview:v58 belowSubview:v60];

    [v43 setEffectsBrowser:v58];
  }

  else
  {
    [v48 addSubview:v58];
  }

  [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
  v61 = [v58 topAnchor];
  v62 = [v49 topAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  v64 = [MEMORY[0x277D75418] currentDevice];
  v65 = [v64 userInterfaceIdiom];

  v121 = v4;
  v119 = v48;
  v120 = v43;
  v117 = v51;
  if (v65)
  {
    v66 = [v58 heightAnchor];
    v67 = [v66 constraintEqualToConstant:44.0];

    v63 = v67;
  }

  v114 = [v58 leadingAnchor];
  [v49 leadingAnchor];
  v69 = v68 = v58;
  v70 = [v114 constraintEqualToAnchor:v69];
  v124[0] = v70;
  v71 = [v68 trailingAnchor];
  v72 = [v49 trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];
  v124[1] = v73;
  v124[2] = v63;
  v115 = v63;
  v116 = v68;
  v74 = [v68 bottomAnchor];
  v118 = v49;
  v75 = [v49 bottomAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];
  v124[3] = v76;
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:4];
  [v113 activateConstraints:v77];

  v78 = [(CFXCameraViewController *)self effectBrowserViewController];
  [v78 didMoveToParentViewController:v120];

  v79 = [(CFXCameraViewController *)self cameraControlsViewController];
  v80 = [v79 view];
  v81 = [(CFXCameraViewController *)self captureViewController];
  [v81 setEffectsPickerDrawer:v80];

  v82 = [(CFXCameraViewController *)self captureViewController];
  [(UIViewController *)self jfxAddChildViewController:v82 constrainRelativeToSafeAreas:0];

  if (v121)
  {
    v83 = [(CFXCameraViewController *)self captureViewController];
    v84 = [v83 cameraControls];
    [(UIViewController *)self jfxAddChildViewController:v84 constrainRelativeToSafeAreas:0];

    v85 = MEMORY[0x277D75AC8];
    v86 = [MEMORY[0x277CCA8D8] jfxBundle];
    v87 = [v85 storyboardWithName:@"CFXNonTransformedLiveCaptureContainerViewController" bundle:v86];
    v88 = [v87 instantiateViewControllerWithIdentifier:@"CFXNonTransformedLiveCaptureContainerViewController"];

    [v88 loadViewIfNeeded];
    v89 = [(CFXCameraViewController *)self thermalPolicyManager];
    v90 = [v88 liveCaptureViewController];
    [v90 setThermalPolicyManager:v89];

    v91 = [MEMORY[0x277D75348] blackColor];
    v92 = [v88 view];
    [v92 setBackgroundColor:v91];

    v93 = [(CFXCameraViewController *)self captureViewController];
    v94 = [v88 liveCaptureViewController];
    [v93 setLiveCaptureViewController:v94];

    [(UIViewController *)self jfxAddChildViewController:v88 constrainRelativeToSafeAreas:0];
    v95 = [(CFXCameraViewController *)self view];
    v96 = [v88 view];
    v97 = [(CFXCameraViewController *)self captureViewController];
    v98 = [v97 view];
    [v95 insertSubview:v96 belowSubview:v98];

    v99 = [(CFXCameraViewController *)self captureViewController];
    v100 = [v99 liveCaptureContainer];
    [v100 removeFromSuperview];

    v101 = [(CFXCameraViewController *)self captureViewController];
    v102 = [v101 liveCaptureContainerContainer];
    [v102 removeFromSuperview];

    v103 = [v88 liveCaptureContainer];
    v104 = [(CFXCameraViewController *)self captureViewController];
    [v104 setLiveCaptureContainer:v103];

    v105 = [v88 liveCaptureContainerContainer];
    v106 = [(CFXCameraViewController *)self captureViewController];
    [v106 setLiveCaptureContainerContainer:v105];

    v107 = [v88 view];
    v108 = [(CFXCameraViewController *)self captureViewController];
    [v108 setNonTransformedContainerView:v107];
  }

  if ([(CFXCameraViewController *)self captureMode]== 1)
  {
    v109 = [(CFXCameraViewController *)self captureViewController];
    [v109 cameraDidStart];
  }

  if (!v122)
  {
    v110 = objc_alloc_init(CFXStageManagerWarningViewController);
    [(CFXCameraViewController *)self setStageManagerWarning:v110];

    v111 = [(CFXCameraViewController *)self stageManagerWarning];
    [v111 setDelegate:self];

    v112 = [(CFXCameraViewController *)self stageManagerWarning];
    [(UIViewController *)self jfxAddChildViewController:v112];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v37.receiver = self;
  v37.super_class = CFXCameraViewController;
  [(CFXCameraViewController *)&v37 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if (!isStreamingMode([(CFXCameraViewController *)self captureMode]))
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (!v9)
    {
      v10 = [(CFXCameraViewController *)self view];
      v11 = [v10 subviews];
      v12 = [(CFXCameraViewController *)self captureViewController];
      v13 = [v12 nonTransformedContainerView];
      v14 = [v11 indexOfObject:v13];

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [(CFXCameraViewController *)self captureViewController];
        v16 = [v15 liveCaptureSnapshot];
        v17 = [(CFXCameraViewController *)self captureViewController];
        v18 = [v17 liveCaptureContainer];
        [v18 center];
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
        [UIViewController displaySnapshot:"displaySnapshot:atCenterPoint:atIndex:forTransitionToSize:fadeOut:withTransitionCoordinator:preTransitionBlock:postTransitionBlock:" atCenterPoint:v16 atIndex:v14 + 1 forTransitionToSize:1 fadeOut:v7 withTransitionCoordinator:v36 preTransitionBlock:v35 postTransitionBlock:?];
      }

      v19 = [(CFXCameraViewController *)self captureViewController];
      v20 = [v19 cameraControls];
      v21 = [v20 effectsPickerSnapshot];

      v22 = [(CFXCameraViewController *)self captureViewController];
      v23 = [v22 cameraControls];
      [v23 effectsPickerCenter];
      v25 = v24;
      v27 = v26;
      v28 = [(CFXCameraViewController *)self view];
      v29 = [v28 subviews];
      v30 = [v29 count];
      v32[4] = self;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __78__CFXCameraViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_5;
      v33[3] = &unk_278D79C88;
      v33[4] = self;
      v34 = v21;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __78__CFXCameraViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_6;
      v32[3] = &unk_278D79D20;
      v31 = v21;
      [(UIViewController *)self displaySnapshot:v31 atCenterPoint:v30 atIndex:0 forTransitionToSize:v7 fadeOut:v33 withTransitionCoordinator:v32 preTransitionBlock:v25 postTransitionBlock:v27, width, height];
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
  v3 = [MEMORY[0x277D75418] currentDevice];
  if (![v3 userInterfaceIdiom] && !isStreamingMode(-[CFXCameraViewController captureMode](self, "captureMode")))
  {
    v4 = [(CFXCameraViewController *)self view];
    v5 = [v4 window];

    if (!v5)
    {
      return;
    }

    v3 = [(CFXCameraViewController *)self captureViewController];
    [v3 applyRotationTransformForPortrait];
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = CFXCameraViewController;
  [(CFXCameraViewController *)&v7 willMoveToParentViewController:a3];
  if ([(CFXCameraViewController *)self captureMode]== 3)
  {
    v4 = [(CFXCameraViewController *)self animojiEffectID];

    if (!v4)
    {
      v5 = +[JFXAnimojiEffect animojiIDs];
      v6 = [v5 firstObject];
      [(CFXCameraViewController *)self setAnimojiOnlyEffectID:v6];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CFXCameraViewController;
  [(CFXCameraViewController *)&v4 viewDidAppear:a3];
  v3 = +[CFXAnalyticsManager sharedInstance];
  [v3 trackEventWithName:@"extensionlaunched"];
}

- (UIView)effectsPickerDrawer
{
  [(CFXCameraViewController *)self loadViewIfNeeded];
  v3 = [(CFXCameraViewController *)self captureViewController];
  v4 = [v3 effectsPickerDrawer];

  return v4;
}

- (void)setEffectsPickerDrawer:(id)a3
{
  v4 = a3;
  [(CFXCameraViewController *)self loadViewIfNeeded];
  v5 = [(CFXCameraViewController *)self captureViewController];
  [v5 setEffectsPickerDrawer:v4];

  if (!v4)
  {
    v6 = [(CFXCameraViewController *)self effectBrowserViewController];

    if (v6)
    {
      v7 = [(CFXCameraViewController *)self effectBrowserViewController];
      [v7 jfxRemoveFromParentViewController];

      [(CFXCameraViewController *)self setEffectBrowserViewController:0];
    }
  }
}

- (int64_t)effectsState
{
  v3 = [(CFXCameraViewController *)self captureViewController];
  v4 = [v3 composition];

  v5 = [(CFXCameraViewController *)self effectBrowserPresentedAppIdentifier];
  v6 = [v5 isEqual:@"com.apple.FunCamera.Filters"];

  v7 = [v4 isEmpty];
  v8 = +[JFXVideoCameraController sharedInstance];
  v9 = [v8 sessionRequiresFaceTracking];

  if (v9)
  {
    v10 = 2;
  }

  else if (v6 & 1 | ((v7 & 1) == 0))
  {
    if ([v4 requiresFaceTracking])
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

- (void)setShowsViewfinder:(BOOL)a3
{
  if (self->_showsViewfinder != a3)
  {
    v4 = a3;
    self->_showsViewfinder = a3;
    [(CFXCameraViewController *)self loadViewIfNeeded];
    v6 = [(CFXCameraViewController *)self captureViewController];
    [v6 setUseLocalCameraViewfinder:v4];
  }
}

- (double)userInterfaceAlpha
{
  [(CFXCameraViewController *)self loadViewIfNeeded];
  v3 = [(CFXCameraViewController *)self captureViewController];
  [v3 userInterfaceAlpha];
  v5 = v4;

  return v5;
}

- (void)setUserInterfaceAlpha:(double)a3
{
  [(CFXCameraViewController *)self loadViewIfNeeded];
  v5 = [(CFXCameraViewController *)self captureViewController];
  [v5 setUserInterfaceAlpha:a3];
}

- (void)setUsesInternalCaptureSession:(BOOL)a3
{
  if (self->_usesInternalCaptureSession != a3)
  {
    if (a3)
    {
      [(CFXCameraViewController *)self startCaptureSession];
    }

    else
    {
      [(CFXCameraViewController *)self stopCaptureSession];
    }

    self->_usesInternalCaptureSession = a3;
  }
}

- (int64_t)flashMode
{
  [(CFXCameraViewController *)self loadViewIfNeeded];
  v3 = [(CFXCameraViewController *)self captureViewController];
  v4 = [v3 flashMode];

  return v4;
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
  v2 = [(CFXCameraViewController *)self captureViewController];
  v3 = [v2 cameraViewController];
  v4 = [v3 animojiBackgroundColor];

  return v4;
}

- (void)setAnimojiOnlyBackgroundColor:(id)a3
{
  v4 = a3;
  v6 = [(CFXCameraViewController *)self captureViewController];
  v5 = [v6 cameraViewController];
  [v5 setAnimojiBackgroundColor:v4];
}

- (id)animojiEffectID
{
  v2 = [(CFXCameraViewController *)self captureViewController];
  v3 = [v2 composition];
  v4 = [v3 jtEffectsForType:7];
  v5 = [v4 firstObject];

  v6 = [v5 effectID];

  return v6;
}

- (void)setAnimojiOnlyEffectID:(id)a3
{
  v4 = a3;
  if ([(CFXCameraViewController *)self captureMode]== 3)
  {
    v5 = [JFXAnimojiEffect createAnimojiEffectForID:v4];
    if (v5)
    {
      v6 = [CFXEffectType effectTypeWithIdentifier:@"Animoji"];
      v7 = [(CFXCameraViewController *)self captureViewController];
      v8 = [v7 composition];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __50__CFXCameraViewController_setAnimojiOnlyEffectID___block_invoke;
      v9[3] = &unk_278D79C88;
      v10 = v5;
      v11 = self;
      [v8 removeAllEffectsOfType:v6 completion:v9];
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

- (void)setExternalCaptureSessionCameraPosition:(int64_t)a3
{
  self->_externalCaptureSessionCameraPosition = a3;
  v3 = a3 == 0;
  v4 = [(CFXCameraViewController *)self captureViewController];
  [v4 setIsExternalCaptureSessionAnExternalCamera:v3];
}

- (BOOL)isEffectsPickerHidden
{
  v2 = [(CFXCameraViewController *)self effectBrowserViewController];
  v3 = [v2 view];
  v4 = [v3 isHidden];

  return v4;
}

- (void)setEffectsPickerHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(CFXCameraViewController *)self effectBrowserViewController:a3];
  v5 = [v6 view];
  [v5 setHidden:v4];
}

- (void)setTransitionState:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = JFXLog_DebugViewerUI();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(CFXCameraViewController *)v4 setTransitionState:a3 animated:v7];
  }

  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        return;
      }

      v10 = [(CFXCameraViewController *)self captureViewController];
      [v10 showLiveCaptureSnapshotBlurred:0 animated:0 completion:0];

      v11 = [(CFXCameraViewController *)self captureViewController];
      [v11 saveLiveCaptureSnapshotForReview];

      v9 = [(CFXCameraViewController *)self cameraControlsViewController];
      [v9 setShutterButtonAlpha:0.0];
      goto LABEL_10;
    }

    if (v4)
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
      v19 = [(CFXCameraViewController *)self captureViewController];
      [v19 showLiveCaptureSnapshotBlurred:1 animated:1 completion:0];
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
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      v8 = [(CFXCameraViewController *)self cameraControlsViewController];
      [v8 setShutterButtonAlpha:0.0];

      v9 = [(CFXCameraViewController *)self captureViewController];
      [v9 removeAnimojiTrackingReticle];
LABEL_10:

      return;
    }

    v12 = [(CFXCameraViewController *)self captureViewController];
    [v12 configureUIForOrientation];

    v13 = [(CFXCameraViewController *)self effectBrowserViewController];
    v14 = [v13 view];
    [v14 setAlpha:1.0];

    v15 = [(CFXCameraViewController *)self cameraControlsViewController];
    [v15 setShutterButtonAlpha:1.0];

    v16 = [(CFXCameraViewController *)self captureViewController];
    [v16 removeLiveCaptureSnapshot];

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
  v3 = [(CFXCameraViewController *)self captureViewController];
  [v3 removeAllEffectsAnimated:0];

  v4 = [(CFXCameraViewController *)self metadataValidator];
  [v4 reset];

  [(CFXCameraViewController *)self setExternalCaptureSessionCameraPosition:0];
  v5 = [(CFXCameraViewController *)self effectsInStreamTimer];
  [v5 invalidate];

  [(CFXCameraViewController *)self setEffectsInStreamTimer:0];
  v6 = CFXLog_action();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CFXCameraViewController *)self captureViewController];
    v8 = [v7 composition];
    v9 = [v8 jtEffects];
    v10 = [CFXActionLogging actionLogAsJSONForEvent:@"stopped effects in stream" atLocation:@"live" withEffectStack:v9];
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&dword_242A3B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", &v14, 0xCu);
  }

  v11 = +[CFXAnalyticsManager sharedInstance];
  [v11 stopTrackingTimeIntervalEventWithName:@"activetime"];

  if ([(CFXCameraViewController *)self captureMode]== 3)
  {
    v12 = +[JFXAnimojiEffect animojiIDs];
    v13 = [v12 firstObject];
    [(CFXCameraViewController *)self setAnimojiOnlyEffectID:v13];
  }
}

- (void)renderFrameWithImageData:(id)a3 orientation:(int64_t)a4 presentationRect:(CGRect)a5 contentsRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5.size.height;
  v11 = a5.size.width;
  v12 = a5.origin.y;
  v13 = a5.origin.x;
  v16 = a3;
  v17 = [(CFXCameraViewController *)self captureMode]!= 3;
  v18 = +[JFXVideoCameraController sharedInstance];
  [v18 setSkipARProcessingWhenNoFaceDataIsPresent:v17];

  v19 = [(CFXCameraViewController *)self captureViewController];
  v20 = [v19 composition];
  v21 = [v20 isEmpty];

  if ((v21 & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke;
    block[3] = &unk_278D79D20;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  [v16 timestamp];
  [(CFXCameraViewController *)self noteInputFrameWithTimestamp:?];
  v22 = [(CFXCameraViewController *)self externalCaptureSessionInputProcessingQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __94__CFXCameraViewController_renderFrameWithImageData_orientation_presentationRect_contentsRect___block_invoke_68;
  v24[3] = &unk_278D79EF0;
  v26 = self;
  v27 = a4;
  v25 = v16;
  v28 = v13;
  v29 = v12;
  v30 = v11;
  v31 = v10;
  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  v23 = v16;
  dispatch_async(v22, v24);
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
  v4 = [v3 cameraSessionRunning];

  v5 = [(CFXCameraViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__CFXCameraViewController_startCaptureSession__block_invoke;
  v14[3] = &unk_278D79F18;
  v15 = v4;
  v14[4] = self;
  v16 = v6 & 1;
  v7 = MEMORY[0x245D22230](v14);
  v8 = v7;
  if (v4)
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
  v2 = [(CFXCameraViewController *)self captureViewController];
  [v2 resign];
}

- (void)renderFrameWithImageDataArchive:(id)a3 imagePixelBuffer:(__CVBuffer *)a4 depthPixelBuffer:(__CVBuffer *)a5 orientation:(int64_t)a6 presentationRect:(CGRect)a7 contentsRect:(CGRect)a8
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v12 = a7.size.height;
  v13 = a7.size.width;
  v14 = a7.origin.y;
  v15 = a7.origin.x;
  v20 = a3;
  v21 = [(CFXCameraViewController *)self captureViewController];
  v22 = [v21 livePlayerIsSaturated];

  if (v22)
  {
    v23 = [(CFXCameraViewController *)self captureViewController];
    [v23 willDropCameraFrame];

    kdebug_trace();
  }

  else
  {
    CVPixelBufferRetain(a4);
    CVPixelBufferRetain(a5);
    v24 = [(CFXCameraViewController *)self externalCaptureSessionInputDeserializationQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __135__CFXCameraViewController_renderFrameWithImageDataArchive_imagePixelBuffer_depthPixelBuffer_orientation_presentationRect_contentsRect___block_invoke;
    block[3] = &unk_278D79F40;
    v28 = a4;
    v29 = a5;
    v26 = v20;
    v27 = self;
    v30 = a6;
    v31 = v15;
    v32 = v14;
    v33 = v13;
    v34 = v12;
    v35 = x;
    v36 = y;
    v37 = width;
    v38 = height;
    dispatch_async(v24, block);
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

- (void)showMemojiPicker:(id)a3
{
  v4 = a3;
  v5 = [(CFXCameraViewController *)self effectBrowserViewController];

  if (v5)
  {
    v6 = [(CFXCameraViewController *)self effectBrowserViewController];
    [v6 showMemojiPicker:v4];
  }

  else
  {
    v6 = JFXLog_camera();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CFXCameraViewController showMemojiPicker:];
    }
  }
}

- (void)effectBrowserViewController:(id)a3 didDropOverlayEffect:(id)a4 atScreenLocation:(CGPoint)a5 atScreenSize:(CGSize)a6 rotationAngle:(double)a7
{
  height = a6.height;
  width = a6.width;
  y = a5.y;
  x = a5.x;
  v13 = a4;
  v14 = [(CFXCameraViewController *)self captureViewController];
  [v14 addOverlayEffect:v13 atScreenLocation:x atScreenSize:y rotationAngle:{width, height, a7}];
}

- (void)effectBrowserViewController:(id)a3 didSelectAppWithIdentifier:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[CFXAnalyticsManager sharedInstance];
  v9 = v8;
  if (v7)
  {
    [v8 startTrackingPickerWithIdentifier:v7];
  }

  else
  {
    v10 = [(CFXCameraViewController *)self effectBrowserPresentedAppIdentifier];
    [v9 stopTrackingPickerWithIdentifier:v10];
  }

  [(CFXCameraViewController *)self setEffectBrowserPresentedAppIdentifier:v7];
  if (([v7 isEqual:@"com.apple.FunCamera.Filters"] & 1) == 0)
  {
    v11 = +[JFXVideoCameraController sharedInstance];
    [v11 setSessionRequiresFaceTracking:v7 != 0];
  }

  v12 = [(CFXCameraViewController *)self effectsState];
  v13 = JFXLog_pickerUI();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    v18 = v12;
    _os_log_impl(&dword_242A3B000, v13, OS_LOG_TYPE_DEFAULT, "The effect browser has changed - effectsState: %ld", &v17, 0xCu);
  }

  v14 = [(CFXCameraViewController *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(CFXCameraViewController *)self delegate];
    [v16 cameraViewController:self didChangeEffectsState:v12];
  }
}

- (void)effectBrowserViewController:(id)a3 didRemoveAllEffectsOfType:(id)a4
{
  v5 = a4;
  v6 = [(CFXCameraViewController *)self captureViewController];
  [v6 removeAllEffectsOfType:v5 animated:1];

  v7 = [v5 identifier];

  LODWORD(v5) = [v7 isEqualToString:@"Animoji"];
  if (v5)
  {
    v8 = +[CFXAnalyticsManager sharedInstance];
    [v8 didSelectEffectOfType:@"Animoji" effectIsNone:1];
  }
}

- (void)effectBrowserViewController:(id)a3 didSelectEffect:(id)a4
{
  v5 = a4;
  v6 = [(CFXCameraViewController *)self captureViewController];
  [v6 addEffect:v5];

  v7 = [v5 jtEffect];
  v8 = [v7 type];

  v9 = @"Filter";
  if (v8 != 1)
  {
    v9 = 0;
  }

  v10 = v9;
  v12 = +[CFXAnalyticsManager sharedInstance];
  v11 = [v5 isNone];

  [v12 didSelectEffectOfType:v10 effectIsNone:v11];
}

- (id)selectedFilterIdentifierForEffectBrowserViewController:(id)a3
{
  v3 = [(CFXCameraViewController *)self captureViewController];
  v4 = [v3 composition];
  v5 = [v4 jtEffectsForType:1];
  v6 = [v5 firstObject];

  v7 = [v6 effectID];

  return v7;
}

- (id)selectedAnimojiIdentifierForEffectBrowserViewController:(id)a3
{
  v3 = [(CFXCameraViewController *)self captureViewController];
  v4 = [v3 composition];
  v5 = [v4 jtEffectsForType:7];
  v6 = [v5 firstObject];

  v7 = [v6 effectID];

  return v7;
}

- (id)localizedPromptForHidingAnimojiForEffectBrowserViewController:(id)a3
{
  v3 = [(CFXCameraViewController *)self devicePosition];
  if (v3 == 1)
  {
    v4 = @"HIDE_MEMOJI_BACK_CAMERA_PROMPT_DISPLAY Name";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = @"HIDE_MEMOJI_EXTERNAL_CAMERA_PROMPT_DISPLAY Name";
LABEL_5:
    v5 = [MEMORY[0x277CCA8D8] jfxBundle];
    v6 = [v5 localizedStringForKey:v4 value:&stru_28553D028 table:0];

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)effectBrowserViewController:(id)a3 willChangeDockHeight:(double)a4
{
  v6 = a4 > 50.0;
  v7 = [(CFXCameraViewController *)self captureViewController];
  v8 = a4 + -44.0;
  [v7 updateUIForDockMagnify:v6 dockHeightDelta:v8];

  v9 = [(CFXCameraViewController *)self cameraControlsViewController];
  [v9 updateUIForDockMagnify:v6 dockHeightDelta:v8];
}

- (BOOL)shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:(id)a3
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom] == 1 && -[CFXCameraViewController captureMode](self, "captureMode") != 1;

  return v5;
}

- (BOOL)allowLandscapeForEffectBrowserViewController:(id)a3
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  if ([v4 userInterfaceIdiom])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CFXCameraViewController *)self captureMode]!= 1;
  }

  return v5;
}

- (double)effectBrowserViewController:(id)a3 screenTopBarHeightForWindowBounds:(CGRect)a4 orientation:(int64_t)a5
{
  [MEMORY[0x277D3D080] cameraTopBarFrameForReferenceBounds:{a3, a5, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height}];

  return CGRectGetHeight(*&v5);
}

- (void)captureViewController:(id)a3 didCaptureMediaItem:(id)a4
{
  v5 = a4;
  v6 = [(CFXCameraViewController *)self effectBrowserViewController];
  [v6 hideBrowserAnimated:0 completion:0];

  if (!v5)
  {
    v9 = +[JFXVideoCameraController sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__CFXCameraViewController_captureViewController_didCaptureMediaItem___block_invoke;
    v10[3] = &unk_278D79D20;
    v10[4] = self;
    [v9 stopCameraSession:v10];
    goto LABEL_5;
  }

  [(CFXCameraViewController *)self setCapturingFunCamMedia:1];
  v7 = [(CFXCameraViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CFXCameraViewController *)self delegate];
    [v9 cameraViewController:self didCaptureMediaItem:v5];
LABEL_5:
  }
}

- (void)captureViewController:(id)a3 didChangeEffectComposition:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [(CFXCameraViewController *)self effectsState:a3];
  v6 = JFXLog_effects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v5;
    _os_log_impl(&dword_242A3B000, v6, OS_LOG_TYPE_DEFAULT, "The effect composition has changed - effectsState: %ld", &v10, 0xCu);
  }

  v7 = [(CFXCameraViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CFXCameraViewController *)self delegate];
    [v9 cameraViewController:self didChangeEffectsState:v5];
  }
}

- (void)captureViewController:(id)a3 didRenderFrame:(id)a4
{
  v5 = a4;
  v6 = [(CFXCameraViewController *)self externalCaptureSessionOutputProcessingQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__CFXCameraViewController_captureViewController_didRenderFrame___block_invoke;
  v8[3] = &unk_278D79C88;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
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

- (void)captureViewControllerDoneButtonWasTapped:(id)a3
{
  v4 = [(CFXCameraViewController *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(CFXCameraViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CFXCameraViewController *)self delegate];
      [v8 cameraViewControllerDoneButtonWasTapped:self];
    }
  }
}

- (void)captureViewControllerEffectsButtonWasTapped:(id)a3
{
  v4 = [(CFXCameraViewController *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(CFXCameraViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CFXCameraViewController *)self delegate];
      [v8 cameraViewControllerEffectsButtonWasTapped:self];
    }
  }
}

- (void)captureViewControllerPresentationRectWasDoubleTapped:(id)a3
{
  v4 = [(CFXCameraViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CFXCameraViewController *)self delegate];
    [v6 cameraViewControllerPresentationRectWasDoubleTapped:self];
  }
}

- (void)captureViewController:(id)a3 presentationRectWasPinchedWithState:(int64_t)a4 scale:(double)a5 velocity:(double)a6
{
  v10 = [(CFXCameraViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CFXCameraViewController *)self delegate];
    [v12 cameraViewController:self presentationRectWasPinchedWithState:a4 scale:a5 velocity:a6];
  }
}

- (void)captureViewControllerDidStartVideoRecording:(id)a3
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    v6 = [(CFXCameraViewController *)self effectBrowserViewController];
    [v6 hideBrowserAnimated:1 completion:0];
  }

  [(CFXCameraViewController *)self updateUIForVideoRecording:1];
}

- (void)captureViewControllerCameraFlipButtonWasTapped:(id)a3
{
  v3 = [(CFXCameraViewController *)self effectBrowserViewController];
  [v3 refreshEffectBrowserForCameraFlip];
}

- (void)remoteCommandServer:(id)a3 didReceiveAddStickerCommandWithIdentifier:(id)a4 offset:(CGPoint)a5 scale:(double)a6 rotation:(double)a7
{
  y = a5.y;
  x = a5.x;
  v42 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = [CFXEffectType effectTypeWithIdentifier:@"EmojiStickers"];
  v14 = v12;
  v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v14];
  v16 = v14;
  if (v15)
  {
    if (v14)
    {
LABEL_3:
      v17 = [CFXEffect effectWithIdentifier:v16 forEffectType:v13];
      v18 = JFXLog_automation();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v17 localizedTitle];
        v43.x = x;
        v43.y = y;
        v20 = NSStringFromCGPoint(v43);
        *buf = 138544130;
        v34 = v19;
        v35 = 2114;
        v36 = v20;
        v37 = 2048;
        v38 = a6;
        v39 = 2048;
        v40 = a7;
        _os_log_impl(&dword_242A3B000, v18, OS_LOG_TYPE_DEFAULT, "Adding Emoji Sticker effect - name: %{public}@, offset: %{public}@, scale: %f, rotation: %f", buf, 0x2Au);
      }

      v21 = [(CFXCameraViewController *)self captureViewController];
      [v21 addOverlayEffect:v17 atNormalizedPlanePoint:x scale:y rotationAngle:{a6, a7}];

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
    v16 = [v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v16)
    {
      v28 = self;
      v23 = *v30;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v22);
          }

          v25 = *(*(&v29 + 1) + 8 * i);
          v26 = [v25 localizedTitle];
          v27 = [v26 isEqualToString:v14];

          if (v27)
          {
            v16 = [v25 identifier];
            goto LABEL_16;
          }
        }

        v16 = [v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

LABEL_16:
      self = v28;
    }

    if (v16)
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

- (void)remoteCommandServer:(id)a3 didReceiveAddStickerCommandWithData:(id)a4 offset:(CGPoint)a5 scale:(double)a6 rotation:(double)a7
{
  y = a5.y;
  x = a5.x;
  v46[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  if (v12)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v14 UUIDString];
    v16 = [v13 stringWithFormat:@"CommanderAvatar_%@.png", v15];

    v17 = MEMORY[0x277CBEBC0];
    v18 = NSTemporaryDirectory();
    v19 = [v18 stringByAppendingPathComponent:v16];
    v20 = [v17 fileURLWithPath:v19];

    if ([v12 writeToURL:v20 atomically:0])
    {
      v45 = *MEMORY[0x277D41AD0];
      v21 = [v20 path];
      v46[0] = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];

      v23 = +[JFXEffectFactory sharedInstance];
      v24 = [v23 createEffectForType:2 fromID:*MEMORY[0x277D418E8] withProperties:v22];

      v25 = [CFXEffect effectWithJTEffect:v24];
      v26 = JFXLog_automation();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v25 jtEffect];
        v27 = NSStringFromJFXEffectType([v31 type]);
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
        v42 = a6;
        v43 = 2048;
        v44 = a7;
        _os_log_impl(&dword_242A3B000, v26, OS_LOG_TYPE_DEFAULT, "Adding effect - type: %{public}@, name: %{public}@, url: %{public}@, offset: %{public}@, scale: %f, rotation: %f", buf, 0x3Eu);

        self = v32;
      }

      v30 = [(CFXCameraViewController *)self captureViewController];
      [v30 addOverlayEffect:v25 atNormalizedPlanePoint:x scale:y rotationAngle:{a6, a7}];
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

- (void)remoteCommandServer:(id)a3 didReceiveRemoveEffectsCommandWithTypeIdentifiers:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = JFXLog_automation();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v5;
    _os_log_impl(&dword_242A3B000, v6, OS_LOG_TYPE_DEFAULT, "Removing effects - types: %{public}@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
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
        v13 = [(CFXCameraViewController *)self captureViewController];
        [v13 removeAllEffectsOfType:v12 animated:1];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)remoteCommandServer:(id)a3 didReceiveSetMemojiCommandWithContentsOfFile:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];

  v8 = [JFXAnimojiEffect createMemojiEffectWithContentsOfFile:v5 identifier:v7];
  v9 = [CFXEffect effectWithJTEffect:v8];
  v10 = JFXLog_automation();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEFAULT, "Adding Memoji at path: %{public}@, identifier: %{public}@", &v12, 0x16u);
  }

  v11 = [(CFXCameraViewController *)self captureViewController];
  [v11 addEffect:v9 allowImmediateTextEditing:1];
}

- (void)remoteCommandServer:(id)a3 didReceiveSetFilterCommandWithIdentifier:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [CFXEffectType effectTypeWithIdentifier:@"Filter"];
  v7 = v5;
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
  v9 = v7;
  if (v8)
  {
    if (v7)
    {
LABEL_3:
      [(CFXCameraViewController *)self CFX_automationAddEffectWithEffectTypeIdentifier:@"Filter" identifier:v9 string:0];
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
    v9 = v7;
    if (v11)
    {
      v12 = v11;
      v19 = self;
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
          v16 = [v15 localizedTitle];
          v17 = [v16 isEqualToString:v7];

          if (v17)
          {
            v9 = [v15 identifier];

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

      v9 = v7;
LABEL_14:
      self = v19;
      v6 = v20;
    }

    if (v9)
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

- (void)CFX_automationAddEffectWithEffectTypeIdentifier:(id)a3 identifier:(id)a4 string:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [CFXEffectType effectTypeWithIdentifier:v8];
  v12 = [CFXEffect effectWithIdentifier:v9 forEffectType:v11];
  v13 = v12;
  if (@"Text" == v8)
  {
    v14 = [v12 jtEffect];
    [JFXEffectEditingUtilities updateEffectText:v14 newText:v10];
  }

  else
  {
    if (@"Animoji" != v8)
    {
      goto LABEL_6;
    }

    v14 = [JFXAnimojiEffect createAnimojiEffectForID:v9];
    v15 = [CFXEffect effectWithJTEffect:v14];

    v13 = v15;
  }

LABEL_6:
  v16 = JFXLog_automation();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v13 jtEffect];
    NSStringFromJFXEffectType([v17 type]);
    v18 = v23 = self;
    v19 = [v13 localizedTitle];
    v20 = v19;
    *buf = 138544130;
    v21 = &stru_28553D028;
    v25 = v18;
    if (v10)
    {
      v21 = v10;
    }

    v26 = 2114;
    v27 = v19;
    v28 = 2114;
    v29 = v9;
    v30 = 2114;
    v31 = v21;
    _os_log_impl(&dword_242A3B000, v16, OS_LOG_TYPE_DEFAULT, "Adding effect - type: %{public}@, name: %{public}@, identifier: %{public}@, string: %{public}@", buf, 0x2Au);

    self = v23;
  }

  v22 = [(CFXCameraViewController *)self captureViewController];
  [v22 addEffect:v13 allowImmediateTextEditing:@"Text"];
}

- (void)stageManagerWarningDoneButtonWasTapped:(id)a3
{
  v4 = [(CFXCameraViewController *)self delegate];

  if (v4)
  {
    v5 = [(CFXCameraViewController *)self delegate];
    [v5 cameraViewControllerDoneButtonWasTapped:self];
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

- (void)noteInputFrameWithTimestamp:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v5 = [v4 stringValue];

  memset(&v10, 0, sizeof(v10));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v10, HostTimeClock);
  v9 = v10;
  v7 = [MEMORY[0x277CCAE60] valueWithCMTime:&v9];
  v8 = [(CFXCameraViewController *)self externalCaptureSessionInputFrameTimestamps];
  [v8 setValue:v7 forKey:v5];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)noteOutputFrameWithTimestamp:(SEL)a3
{
  memset(&v18, 0, sizeof(v18));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v18, HostTimeClock);
  time = *a4;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:CMTimeGetSeconds(&time)];
  v9 = [v8 stringValue];

  memset(&time, 0, sizeof(time));
  v10 = [(CFXCameraViewController *)self externalCaptureSessionInputFrameTimestamps];
  v11 = [v10 valueForKey:v9];
  v12 = v11;
  if (v11)
  {
    [v11 CMTimeValue];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v13 = [(CFXCameraViewController *)self externalCaptureSessionInputFrameTimestamps];
  [v13 removeObjectForKey:v9];

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  lhs = v18;
  v15 = time;
  CMTimeSubtract(retstr, &lhs, &v15);

  return result;
}

- (void)updateUIForVideoRecording:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__CFXCameraViewController_updateUIForVideoRecording___block_invoke;
  v3[3] = &unk_278D79E38;
  v3[4] = self;
  v4 = a3;
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