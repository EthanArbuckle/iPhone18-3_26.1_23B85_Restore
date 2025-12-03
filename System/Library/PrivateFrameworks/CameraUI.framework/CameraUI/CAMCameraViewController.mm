@interface CAMCameraViewController
- (BOOL)automaticallyAdjustsApplicationIdleTimer;
- (BOOL)capturePhoto;
- (BOOL)isCapturingLivePhoto;
- (BOOL)isCapturingPhoto;
- (BOOL)isDisablingAdditionalCaptures;
- (BOOL)isDisablingMultipleCaptureFeatures;
- (BOOL)isPreventingAdditionalCaptures;
- (BOOL)isRecording;
- (BOOL)startRecording;
- (BOOL)stopRecording;
- (CAMCameraCaptureDelegate)captureDelegate;
- (CAMCameraConfigurationDelegate)configurationDelegate;
- (CAMCameraViewController)initWithCoder:(id)coder;
- (CAMCameraViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CAMCameraViewController)initWithOverrides:(id)overrides initialLayoutStyle:(int64_t)style privateOptions:(int64_t)options;
- (CAMCameraViewController)initWithOverrides:(id)overrides usingEmulationMode:(int64_t)mode;
- (CAMCameraViewControllerCameraSessionDelegate)cameraSessionDelegate;
- (CAMCameraViewControllerPresentationDelegate)presentationDelegate;
- (PAImageConversionServiceClient)_imageConversionClient;
- (PAVideoConversionServiceClient)_videoConversionClient;
- (id)_behaviorDefinedDestinationURLForRequest:(id)request withLocalDestinationURL:(id)l linkedDestinationURL:(id)rL;
- (id)_clientPropertiesForLivePhotoVideoURL:(id)l duration:(id *)duration stillDisplayTime:(id *)time error:(id)error;
- (id)_clientPropertiesForPhotoProperties:(id)properties withFilteredImageURL:(id)l conversionOutputInfo:(id)info error:(id)error;
- (id)_clientPropertiesForStillImageWithURL:(id)l captureMode:(int64_t)mode captureOrientation:(int64_t)orientation previewSurface:(void *)surface previewOrientation:(int64_t)previewOrientation uniqueIdentifier:(id)identifier savedToPhotoLibrary:(BOOL)library captureResult:(id)self0;
- (id)_clientPropertiesForVideoURL:(id)l renderedURL:(id)rL duration:(id *)duration size:(CGSize)size creationDate:(id)date captureOrientation:(int64_t)orientation previewOrientation:(int64_t)previewOrientation adjustments:(id)self0 uniqueIdentifier:(id)self1 savedToPhotoLibrary:(BOOL)self2;
- (id)_exportPropertiesForClientProperties:(id)properties;
- (id)_mediaConversionOptionsForAdjustments:(id)adjustments mediaType:(int64_t)type description:(id)description;
- (id)_previewImageFromVideoURL:(id)l;
- (id)_resultQueueSafeImageFromSurface:(void *)surface imageOrientation:(int64_t)orientation;
- (id)_resultQueue_getOrCreateStillImageResultCoordinatorForRequest:(id)request captureTimeExpectedResultSpecifiers:(id)specifiers isExpectingPairedVideo:(BOOL)video isDisablingMultipleCaptures:(BOOL)captures isGeneratingFilteredMedia:(BOOL)media;
- (id)_resultQueue_getStillImageResultCoordinatorForRequest:(id)request;
- (id)reviewButton;
- (int64_t)captureDevice;
- (int64_t)captureMode;
- (int64_t)flashMode;
- (int64_t)hdrMode;
- (int64_t)livePhotoMode;
- (int64_t)messagesTransitionState;
- (int64_t)photoModeAspectRatioCrop;
- (int64_t)timerDuration;
- (int64_t)torchMode;
- (unint64_t)_capturePersistenceBehaviorForViewfinderPersistenceBehavior:(unint64_t)behavior;
- (unint64_t)_viewfinderPersistenceBehaviorForCapturePersistenceBehavior:(unint64_t)behavior;
- (unint64_t)persistenceBehavior;
- (void)_commonCAMCameraViewControllerInitializationWithOverrides:(id)overrides usingEmulationMode:(int64_t)mode initialLayoutStyle:(int64_t)style privateOptions:(int64_t)options;
- (void)_handleCTMVideoLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request;
- (void)_handleCTMVideoLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request size:(CGSize)size videoURL:(id)l renderedToURL:(id)rL renderedAdjustments:(id)adjustments;
- (void)_handleLivePhotoVideoLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request;
- (void)_handlePhotoProperties:(id)properties videoProperties:(id)videoProperties unfilteredPhotoProperties:(id)photoProperties unfilteredVideoProperties:(id)unfilteredVideoProperties assetAdjustments:(id)adjustments attemptPairingVideo:(BOOL)video error:(id)error;
- (void)_handleVideoLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request;
- (void)_notifyCaptureDelegateOfCompletedCaptureOfLivePhoto:(id)photo withProperties:(id)properties error:(id)error;
- (void)_notifyCaptureDelegateOfCompletedCaptureOfPhoto:(id)photo withProperties:(id)properties error:(id)error;
- (void)_notifyCaptureDelegateOfCompletedCaptureOfVideo:(id)video withProperties:(id)properties error:(id)error;
- (void)_renderLivePhotoWithCoordinator:(id)coordinator specifiers:(unint64_t)specifiers photoProperties:(id)properties videoProperties:(id)videoProperties adjustments:(id)adjustments;
- (void)_resultQueue_forceCompletionIfPossibleForRequest:(id)request;
- (void)_resultQueue_removeStillImageResultCoordinatorForIdentifier:(id)identifier;
- (void)_startShutterButtonSpinning:(id)spinning;
- (void)_stopShutterButtonSpinning;
- (void)captureController:(id)controller didGenerateStillImageCaptureResult:(id)result fromRequest:(id)request;
- (void)configureForCaptureMode:(int64_t)mode captureDevice:(int64_t)device;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)handleReviewButtonReleased:(id)released;
- (void)loadView;
- (void)persistenceController:(id)controller didCompleteAllLocalPersistenceForRequest:(id)request;
- (void)persistenceController:(id)controller didGenerateStillImageLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request;
- (void)persistenceController:(id)controller didGenerateVideoLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request;
- (void)resumeCameraSession;
- (void)setAutomaticallyAdjustsApplicationIdleTimer:(BOOL)timer;
- (void)setConfigurationDelegate:(id)delegate;
- (void)setDisablingAdditionalCaptures:(BOOL)captures;
- (void)setDisablingMultipleCaptureFeatures:(BOOL)features;
- (void)setFlashMode:(int64_t)mode;
- (void)setHDRMode:(int64_t)mode;
- (void)setLivePhotoMode:(int64_t)mode;
- (void)setMessagesTransitionState:(int64_t)state animated:(BOOL)animated;
- (void)setPersistenceBehavior:(unint64_t)behavior;
- (void)setPhotoModeAspectRatioCrop:(int64_t)crop;
- (void)setTimerDuration:(int64_t)duration;
- (void)setTorchMode:(int64_t)mode;
- (void)stillImagePersistenceCoordinator:(id)coordinator requestsDispatchForResultSpecifiers:(unint64_t)specifiers photoProperties:(id)properties videoProperties:(id)videoProperties unfilteredPhotoProperties:(id)photoProperties unfilteredVideoProperties:(id)unfilteredVideoProperties assetAdjustments:(id)adjustments error:(id)self0;
- (void)suspendCameraSession;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewfinderViewControllerDidCompleteStillImageCapture:(id)capture;
@end

@implementation CAMCameraViewController

- (void)_commonCAMCameraViewControllerInitializationWithOverrides:(id)overrides usingEmulationMode:(int64_t)mode initialLayoutStyle:(int64_t)style privateOptions:(int64_t)options
{
  overridesCopy = overrides;
  v58 = +[CAMCaptureCapabilities capabilities];
  if ([v58 hasSystemTelephonyOfAnyKind])
  {
    v62 = objc_alloc_init(CAMCallStatusMonitor);
  }

  else
  {
    v62 = 0;
  }

  v45 = mode - 1;
  v10 = +[CAMUserPreferences preferences];
  [v10 readPreferencesWithOverrides:overridesCopy emulationMode:mode callActive:-[CAMCallStatusMonitor isCallActive](v62 shouldResetCaptureConfiguration:{"isCallActive"), 0}];

  captureConfiguration = [v10 captureConfiguration];
  conflictingControlConfiguration = [v10 conflictingControlConfiguration];
  v12 = objc_alloc_init(CAMMotionController);
  v13 = 0;
  optionsCopy = options;
  modeCopy = mode;
  if (!(options & 1 | mode))
  {
    v13 = objc_alloc_init(CAMLocationController);
  }

  v14 = objc_alloc_init(CAMPowerController);
  v15 = objc_alloc_init(CAMProtectionController);
  v49 = objc_alloc_init(CAMKeepAliveController);
  v59 = objc_alloc_init(CAMNebulaDaemonProxyManager);
  v16 = [[CAMBurstController alloc] initWithProtectionController:v15 powerController:v14 remoteShutterController:0];
  v17 = [[CAMPersistenceController alloc] initWithLocationController:v13 burstController:v16 protectionController:v15 powerController:v14 irisVideoController:0];
  [(CAMBurstController *)v16 setPersistenceController:v17];
  v56 = [CAMCaptureConfiguration captureGraphConfigurationUsingConfiguration:captureConfiguration outputToExternalStorage:0 captureOrientation:[(CAMMotionController *)v12 captureOrientation]];
  v57 = v10;
  [v10 defaultZoomFactorForGraphConfiguration:v56 captureOrientation:-[CAMMotionController captureOrientation](v12 outputToExternalStorage:{"captureOrientation"), 0}];
  v54 = v15;
  v60 = captureConfiguration;
  v19 = [[CUCaptureController alloc] initWithCaptureConfiguration:captureConfiguration zoomFactor:0 outputToExternalStorage:1 engineOptions:v13 locationController:v12 motionController:v16 burstController:v18 protectionController:v15 powerController:v14 irisVideoController:0 remoteShutterController:0];
  v20 = objc_alloc_init(CAMStorageController);
  v21 = 0;
  if (v45 >= 2)
  {
    v21 = [[CAMTimelapseController alloc] initWithCaptureController:v19 locationController:v13 motionController:v12 persistenceController:v17 storageController:v20 librarySelectionController:0 nebulaDaemonProxyManager:v59];
  }

  v55 = v20;
  v22 = [[CAMViewfinderViewController alloc] initWithCaptureController:v19 captureConfiguration:v60 conflictingControlConfiguration:conflictingControlConfiguration locationController:v13 motionController:v12 timelapseController:v21 keepAliveController:0 remoteShutterController:0 powerController:v14 cameraRollController:0 librarySelectionController:0 callStatusMonitor:v62 storageController:v20 usingEmulationMode:modeCopy initialLayoutStyle:style options:(optionsCopy >> 2) & 1];
  viewfinderViewController = self->_viewfinderViewController;
  self->_viewfinderViewController = v22;
  v24 = v22;

  captureController = self->_captureController;
  self->_captureController = v19;
  v26 = v19;

  timelapseController = self->_timelapseController;
  self->_timelapseController = v21;
  v28 = v21;

  persistenceController = self->_persistenceController;
  self->_persistenceController = v17;
  v30 = v17;

  motionController = self->_motionController;
  self->_motionController = v12;
  v53 = v12;

  locationController = self->_locationController;
  self->_locationController = v13;
  v51 = v13;

  powerController = self->_powerController;
  self->_powerController = v14;
  v48 = v14;

  burstController = self->_burstController;
  self->_burstController = v16;
  v46 = v16;

  keepAliveController = self->_keepAliveController;
  self->_keepAliveController = v49;
  v36 = v49;

  protectionController = self->_protectionController;
  self->_protectionController = v54;
  v38 = v54;

  nebulaDaemonProxyManager = self->_nebulaDaemonProxyManager;
  self->_nebulaDaemonProxyManager = v59;
  v40 = v59;

  [(CAMTimelapseController *)v28 restoreConfiguration];
  [(CUCaptureController *)v26 registerCaptureService:v30];
  [(CAMViewfinderViewController *)v24 setPersistenceBehavior:1];
  [(CAMViewfinderViewController *)v24 setReviewButtonSource:self];
  [(CAMViewfinderViewController *)v24 setPresentationDelegate:self];
  [(CAMViewfinderViewController *)v24 setCaptureDelegate:self];
  [(CUCaptureController *)v26 setResultDelegate:self];
  [(CAMPersistenceController *)v30 setResultDelegate:self];
  v41 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v42 = dispatch_queue_create("com.apple.camera-ui.camera-view-controller.result-queue", v41);
  resultProcessingQueue = self->__resultProcessingQueue;
  self->__resultProcessingQueue = v42;

  v44 = self->__resultProcessingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __138__CAMCameraViewController__commonCAMCameraViewControllerInitializationWithOverrides_usingEmulationMode_initialLayoutStyle_privateOptions___block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_async(v44, block);
  [(CAMCameraViewController *)self setPreferredContentSize:320.0, 568.0];
  self->_automaticallyManagesCameraSession = 1;
}

uint64_t __138__CAMCameraViewController__commonCAMCameraViewControllerInitializationWithOverrides_usingEmulationMode_initialLayoutStyle_privateOptions___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 1120);
  *(v3 + 1120) = v2;

  v5 = objc_alloc_init(CAMThumbnailGenerator);
  v6 = *(a1 + 32);
  v7 = *(v6 + 1128);
  *(v6 + 1128) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (CAMCameraViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = CAMCameraViewController;
  v4 = [(CAMCameraViewController *)&v9 initWithNibName:name bundle:bundle];
  if (v4)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

    [(CAMCameraViewController *)v4 _commonCAMCameraViewControllerInitializationWithOverrides:0 usingEmulationMode:0 initialLayoutStyle:cam_initialLayoutStyle privateOptions:0];
    v7 = v4;
  }

  return v4;
}

- (CAMCameraViewController)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CAMCameraViewController;
  v3 = [(CAMCameraViewController *)&v8 initWithCoder:coder];
  if (v3)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

    [(CAMCameraViewController *)v3 _commonCAMCameraViewControllerInitializationWithOverrides:0 usingEmulationMode:0 initialLayoutStyle:cam_initialLayoutStyle privateOptions:0];
    v6 = v3;
  }

  return v3;
}

- (CAMCameraViewController)initWithOverrides:(id)overrides usingEmulationMode:(int64_t)mode
{
  overridesCopy = overrides;
  v12.receiver = self;
  v12.super_class = CAMCameraViewController;
  v7 = [(CAMCameraViewController *)&v12 initWithNibName:0 bundle:0];
  if (v7)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

    [(CAMCameraViewController *)v7 _commonCAMCameraViewControllerInitializationWithOverrides:overridesCopy usingEmulationMode:mode initialLayoutStyle:cam_initialLayoutStyle privateOptions:0];
    v10 = v7;
  }

  return v7;
}

- (CAMCameraViewController)initWithOverrides:(id)overrides initialLayoutStyle:(int64_t)style privateOptions:(int64_t)options
{
  overridesCopy = overrides;
  v13.receiver = self;
  v13.super_class = CAMCameraViewController;
  v9 = [(CAMCameraViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    [(CAMCameraViewController *)v9 _commonCAMCameraViewControllerInitializationWithOverrides:overridesCopy usingEmulationMode:0 initialLayoutStyle:style privateOptions:options];
    v11 = v10;
  }

  return v10;
}

- (void)dealloc
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController suspendCameraSessionWithCompletion:0];

  v4.receiver = self;
  v4.super_class = CAMCameraViewController;
  [(CAMCameraViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = [CAMCameraViewControllerContainerView alloc];
  v6 = [(CAMCameraViewControllerContainerView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [(CAMCameraViewController *)self addChildViewController:viewfinderViewController];
  view = [viewfinderViewController view];
  [(CAMCameraViewControllerContainerView *)v6 setViewfinderView:view];
  [viewfinderViewController didMoveToParentViewController:self];
  [(CAMCameraViewController *)self setView:v6];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CAMCameraViewController;
  [(CAMCameraViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CAMCameraViewController;
  [(CAMCameraViewController *)&v5 viewWillAppear:appear];
  navigationController = [(CAMCameraViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1];

  if ([(CAMCameraViewController *)self automaticallyManagesCameraSession])
  {
    [(CAMCameraViewController *)self resumeCameraSession];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CAMCameraViewController;
  [(CAMCameraViewController *)&v4 viewDidDisappear:disappear];
  if ([(CAMCameraViewController *)self automaticallyManagesCameraSession])
  {
    [(CAMCameraViewController *)self suspendCameraSession];
  }
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = CAMCameraViewController;
  [(CAMCameraViewController *)&v2 didReceiveMemoryWarning];
}

- (int64_t)captureMode
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  currentCaptureMode = [viewfinderViewController currentCaptureMode];

  return currentCaptureMode;
}

- (int64_t)captureDevice
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  currentCaptureDevice = [viewfinderViewController currentCaptureDevice];

  return currentCaptureDevice;
}

- (void)configureForCaptureMode:(int64_t)mode captureDevice:(int64_t)device
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController changeToMode:mode device:device animated:1];
}

- (int64_t)flashMode
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  flashMode = [viewfinderViewController flashMode];

  return flashMode;
}

- (void)setFlashMode:(int64_t)mode
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setFlashMode:mode];
}

- (int64_t)torchMode
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  torchMode = [viewfinderViewController torchMode];

  return torchMode;
}

- (void)setTorchMode:(int64_t)mode
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setTorchMode:mode];
}

- (int64_t)hdrMode
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  hdrMode = [viewfinderViewController hdrMode];

  return hdrMode;
}

- (void)setHDRMode:(int64_t)mode
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setHDRMode:mode];
}

- (int64_t)timerDuration
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  timerDuration = [viewfinderViewController timerDuration];

  return timerDuration;
}

- (void)setTimerDuration:(int64_t)duration
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setTimerDuration:duration];
}

- (int64_t)livePhotoMode
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  livePhotoMode = [viewfinderViewController livePhotoMode];

  return livePhotoMode;
}

- (void)setLivePhotoMode:(int64_t)mode
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setLivePhotoMode:mode];
}

- (int64_t)photoModeAspectRatioCrop
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  photoModeAspectRatioCrop = [viewfinderViewController photoModeAspectRatioCrop];

  return photoModeAspectRatioCrop;
}

- (void)setPhotoModeAspectRatioCrop:(int64_t)crop
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setPhotoModeAspectRatioCrop:crop];
}

- (BOOL)isCapturingPhoto
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  isCapturingPhoto = [viewfinderViewController isCapturingPhoto];

  return isCapturingPhoto;
}

- (BOOL)isCapturingLivePhoto
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  isCapturingLivePhoto = [viewfinderViewController isCapturingLivePhoto];

  return isCapturingLivePhoto;
}

- (BOOL)isRecording
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  isRecording = [viewfinderViewController isRecording];

  return isRecording;
}

- (BOOL)capturePhoto
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  capturePhoto = [viewfinderViewController capturePhoto];

  return capturePhoto;
}

- (BOOL)startRecording
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  startRecording = [viewfinderViewController startRecording];

  return startRecording;
}

- (BOOL)stopRecording
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  stopRecording = [viewfinderViewController stopRecording];

  return stopRecording;
}

- (void)suspendCameraSession
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  cameraSessionDelegate = [(CAMCameraViewController *)self cameraSessionDelegate];
  objc_initWeak(&location, cameraSessionDelegate);

  v5 = objc_loadWeakRetained(&location);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__CAMCameraViewController_suspendCameraSession__block_invoke;
    aBlock[3] = &unk_1E76F7DC0;
    objc_copyWeak(&v9, &location);
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    objc_destroyWeak(&v9);
  }

  else
  {
    v7 = 0;
  }

  [viewfinderViewController suspendCameraSessionWithCompletion:v7];
  objc_destroyWeak(&location);
}

void __47__CAMCameraViewController_suspendCameraSession__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v3, (a1 + 40));
  pl_dispatch_async();

  objc_destroyWeak(&v3);
}

void __47__CAMCameraViewController_suspendCameraSession__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cameraViewControllerDidSuspendCameraSession:*(a1 + 32)];
}

- (void)resumeCameraSession
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  cameraSessionDelegate = [(CAMCameraViewController *)self cameraSessionDelegate];
  objc_initWeak(&location, cameraSessionDelegate);

  v5 = objc_loadWeakRetained(&location);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__CAMCameraViewController_resumeCameraSession__block_invoke;
    aBlock[3] = &unk_1E76F7DC0;
    objc_copyWeak(&v9, &location);
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    objc_destroyWeak(&v9);
  }

  else
  {
    v7 = 0;
  }

  [viewfinderViewController resumeCameraSessionWithCompletion:v7];
  objc_destroyWeak(&location);
}

void __46__CAMCameraViewController_resumeCameraSession__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v3, (a1 + 40));
  pl_dispatch_async();

  objc_destroyWeak(&v3);
}

void __46__CAMCameraViewController_resumeCameraSession__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cameraViewControllerDidResumeCameraSession:*(a1 + 32)];
}

- (int64_t)messagesTransitionState
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  messagesTransitionState = [viewfinderViewController messagesTransitionState];

  return messagesTransitionState;
}

- (void)setMessagesTransitionState:(int64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setMessagesTransitionState:state animated:animatedCopy];
}

- (BOOL)isDisablingMultipleCaptureFeatures
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  isDisablingMultipleCaptureFeatures = [viewfinderViewController isDisablingMultipleCaptureFeatures];

  return isDisablingMultipleCaptureFeatures;
}

- (void)setDisablingMultipleCaptureFeatures:(BOOL)features
{
  featuresCopy = features;
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setDisablingMultipleCaptureFeatures:featuresCopy];
}

- (BOOL)isDisablingAdditionalCaptures
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  isDisablingAdditionalCaptures = [viewfinderViewController isDisablingAdditionalCaptures];

  return isDisablingAdditionalCaptures;
}

- (void)setDisablingAdditionalCaptures:(BOOL)captures
{
  capturesCopy = captures;
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setDisablingAdditionalCaptures:capturesCopy];
}

- (BOOL)isPreventingAdditionalCaptures
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  isPreventingAdditionalCaptures = [viewfinderViewController isPreventingAdditionalCaptures];

  return isPreventingAdditionalCaptures;
}

- (unint64_t)persistenceBehavior
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  v4 = -[CAMCameraViewController _capturePersistenceBehaviorForViewfinderPersistenceBehavior:](self, "_capturePersistenceBehaviorForViewfinderPersistenceBehavior:", [viewfinderViewController persistenceBehavior]);

  return v4;
}

- (void)setPersistenceBehavior:(unint64_t)behavior
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setPersistenceBehavior:{-[CAMCameraViewController _viewfinderPersistenceBehaviorForCapturePersistenceBehavior:](self, "_viewfinderPersistenceBehaviorForCapturePersistenceBehavior:", behavior)}];
  keepAliveController = [(CAMCameraViewController *)self keepAliveController];
  v6 = keepAliveController;
  if (behavior - 1 >= 2)
  {
    if (!behavior)
    {
      [keepAliveController startKeepAliveSession];
    }
  }

  else
  {
    [keepAliveController stopKeepAliveSession];
  }
}

- (BOOL)automaticallyAdjustsApplicationIdleTimer
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  automaticallyAdjustsApplicationIdleTimer = [viewfinderViewController automaticallyAdjustsApplicationIdleTimer];

  return automaticallyAdjustsApplicationIdleTimer;
}

- (void)setAutomaticallyAdjustsApplicationIdleTimer:(BOOL)timer
{
  timerCopy = timer;
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setAutomaticallyAdjustsApplicationIdleTimer:timerCopy];
}

- (unint64_t)_viewfinderPersistenceBehaviorForCapturePersistenceBehavior:(unint64_t)behavior
{
  v3 = 1;
  if (behavior == 1)
  {
    v3 = 2;
  }

  if (behavior == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)_capturePersistenceBehaviorForViewfinderPersistenceBehavior:(unint64_t)behavior
{
  if (behavior == 3)
  {
    return 2;
  }

  else
  {
    return behavior == 2;
  }
}

- (CAMCameraConfigurationDelegate)configurationDelegate
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  configurationDelegate = [viewfinderViewController configurationDelegate];

  return configurationDelegate;
}

- (void)setConfigurationDelegate:(id)delegate
{
  delegateCopy = delegate;
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setConfigurationDelegate:delegateCopy];
}

- (id)_resultQueueSafeImageFromSurface:(void *)surface imageOrientation:(int64_t)orientation
{
  if (surface)
  {
    _resultQueueThumbnailGenerator = [(CAMCameraViewController *)self _resultQueueThumbnailGenerator];
    v7 = [_resultQueueThumbnailGenerator newBGRAImageInOrientation:0 usingSurface:surface];
    v8 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v7 scale:orientation orientation:1.0];
    CGImageRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_previewImageFromVideoURL:(id)l
{
  if (l)
  {
    path = [l path];
    PLPreviewImageAndDurationForVideoAtPath();
    v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_notifyCaptureDelegateOfCompletedCaptureOfPhoto:(id)photo withProperties:(id)properties error:(id)error
{
  photoCopy = photo;
  propertiesCopy = properties;
  errorCopy = error;
  captureDelegate = [(CAMCameraViewController *)self captureDelegate];
  if (captureDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [captureDelegate cameraViewController:self didCapturePhoto:photoCopy withProperties:propertiesCopy error:errorCopy];
  }

  [(CAMCameraViewController *)self _stopShutterButtonSpinning];
}

- (void)_notifyCaptureDelegateOfCompletedCaptureOfLivePhoto:(id)photo withProperties:(id)properties error:(id)error
{
  photoCopy = photo;
  propertiesCopy = properties;
  errorCopy = error;
  captureDelegate = [(CAMCameraViewController *)self captureDelegate];
  if (captureDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [captureDelegate cameraViewController:self didCaptureLivePhoto:photoCopy withProperties:propertiesCopy error:errorCopy];
  }

  [(CAMCameraViewController *)self _stopShutterButtonSpinning];
}

- (void)_notifyCaptureDelegateOfCompletedCaptureOfVideo:(id)video withProperties:(id)properties error:(id)error
{
  videoCopy = video;
  propertiesCopy = properties;
  errorCopy = error;
  v11 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerAdjustments"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  objc_initWeak(&location, self);
  v14 = [objc_alloc(MEMORY[0x1E69C08F8]) initWithVideoAsset:videoCopy videoAdjustments:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__CAMCameraViewController__notifyCaptureDelegateOfCompletedCaptureOfVideo_withProperties_error___block_invoke;
  v16[3] = &unk_1E76FF018;
  objc_copyWeak(&v18, &location);
  v16[4] = self;
  v15 = propertiesCopy;
  v17 = v15;
  [v14 requestAVAssetWithResultHandler:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __96__CAMCameraViewController__notifyCaptureDelegateOfCompletedCaptureOfVideo_withProperties_error___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__CAMCameraViewController__notifyCaptureDelegateOfCompletedCaptureOfVideo_withProperties_error___block_invoke_2;
  v15[3] = &unk_1E76FEFF0;
  objc_copyWeak(&v20, (a1 + 48));
  v11 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v8;
  v17 = v9;
  v18 = v11;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v15);

  objc_destroyWeak(&v20);
}

void __96__CAMCameraViewController__notifyCaptureDelegateOfCompletedCaptureOfVideo_withProperties_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = [WeakRetained captureDelegate];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 cameraViewController:*(a1 + 32) didCaptureAVAsset:*(a1 + 40) andAudioMix:*(a1 + 48) withProperties:*(a1 + 56) error:*(a1 + 64)];
  }

  v3 = objc_loadWeakRetained((a1 + 72));
  [v3 _stopShutterButtonSpinning];
}

- (id)_exportPropertiesForClientProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerOrientation"];
  v5 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPixelWidth"];
  v6 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPixelHeight"];

  shortValue = [v4 shortValue];
  unsignedIntegerValue = [v5 unsignedIntegerValue];
  unsignedIntegerValue2 = [v6 unsignedIntegerValue];
  v10 = [MEMORY[0x1E69BE640] exportPropertiesWithImageWidth:unsignedIntegerValue imageHeight:unsignedIntegerValue2 exifOrientation:shortValue duration:0.0];

  return v10;
}

- (id)_clientPropertiesForStillImageWithURL:(id)l captureMode:(int64_t)mode captureOrientation:(int64_t)orientation previewSurface:(void *)surface previewOrientation:(int64_t)previewOrientation uniqueIdentifier:(id)identifier savedToPhotoLibrary:(BOOL)library captureResult:(id)self0
{
  lCopy = l;
  identifierCopy = identifier;
  resultCopy = result;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  metadata = [resultCopy metadata];
  captureDate = [resultCopy captureDate];
  modeCopy = mode;
  v20 = identifierCopy;
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:modeCopy];
  [v17 setObject:v21 forKeyedSubscript:@"CAMCameraViewControllerCaptureMode"];

  error = [resultCopy error];
  [v17 setObject:error forKeyedSubscript:@"CAMCameraViewControllerCaptureError"];

  if (v20)
  {
    [v17 setObject:v20 forKey:@"CAMCameraViewControllerUniquePersistenceIdentifier"];
  }

  [v17 setObject:lCopy forKeyedSubscript:@"CAMCameraViewControllerPhotoURL"];
  [v17 setObject:metadata forKeyedSubscript:@"CAMCameraViewControllerPhotoMetadata"];
  if (orientation)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
    [v17 setObject:v23 forKey:@"CAMCameraViewControllerCaptureOrientation"];
  }

  v40 = lCopy;
  v24 = [metadata objectForKey:*MEMORY[0x1E696DE78]];
  v25 = captureDate;
  if (v24)
  {
    [v17 setObject:v24 forKey:@"CAMCameraViewControllerOrientation"];
  }

  v26 = [metadata objectForKey:*MEMORY[0x1E696D9B0]];
  v27 = [v26 objectForKey:*MEMORY[0x1E696DAA8]];
  v28 = [v26 objectForKey:*MEMORY[0x1E696DAB0]];
  v29 = v28;
  if (v27 && v28)
  {
    [v24 shortValue];
    v30 = PLExifOrientationSwapsWidthAndHeight();
    if (v30)
    {
      v31 = v27;
    }

    else
    {
      v31 = v29;
    }

    if (v30)
    {
      v27 = v29;
    }

    [v17 setObject:v27 forKey:@"CAMCameraViewControllerPixelWidth"];
    [v17 setObject:v31 forKey:@"CAMCameraViewControllerPixelHeight"];
    v29 = v31;
    v25 = captureDate;
  }

  if (v25)
  {
    [v17 setObject:v25 forKey:@"CAMCameraViewControllerCaptureDate"];
  }

  v32 = [MEMORY[0x1E696AD98] numberWithBool:library];
  [v17 setObject:v32 forKey:@"CAMCameraViewControllerSavedToPhotoLibrary"];

  if (surface)
  {
    v33 = [(CAMCameraViewController *)self _resultQueueSafeImageFromSurface:surface imageOrientation:previewOrientation];
    if (v33)
    {
      [v17 setObject:v33 forKey:@"CAMCameraViewControllerPreviewImage"];
    }
  }

  if ([objc_opt_class() isEmulatingImagePicker])
  {
    capturePhoto = [resultCopy capturePhoto];
    fileDataRepresentation = [capturePhoto fileDataRepresentation];
    if (fileDataRepresentation)
    {
      v42 = v20;
      [v17 setObject:fileDataRepresentation forKey:@"CAMCameraViewControllerFullsizeImageData"];
      v36 = [MEMORY[0x1E69DCAB8] imageWithData:fileDataRepresentation];
      if (v36)
      {
        [v17 setObject:v36 forKey:@"CAMCameraViewControllerFullsizeImage"];
      }

      v20 = v42;
    }
  }

  v37 = [v17 copy];

  return v37;
}

- (id)_clientPropertiesForPhotoProperties:(id)properties withFilteredImageURL:(id)l conversionOutputInfo:(id)info error:(id)error
{
  errorCopy = error;
  infoCopy = info;
  lCopy = l;
  v12 = [properties mutableCopy];
  v13 = getPAMediaConversionServicePixelWidthKey();
  v14 = [infoCopy objectForKeyedSubscript:v13];
  [v12 setObject:v14 forKeyedSubscript:@"CAMCameraViewControllerPixelWidth"];

  v15 = getPAMediaConversionServicePixelHeightKey();
  v16 = [infoCopy objectForKeyedSubscript:v15];

  [v12 setObject:v16 forKeyedSubscript:@"CAMCameraViewControllerPixelHeight"];
  [v12 setObject:lCopy forKeyedSubscript:@"CAMCameraViewControllerPhotoURL"];

  [v12 setObject:errorCopy forKeyedSubscript:@"CAMCameraViewControllerCaptureError"];
  [v12 setObject:&unk_1F16C88E8 forKeyedSubscript:@"CAMCameraViewControllerOrientation"];
  v17 = [v12 objectForKeyedSubscript:@"CAMCameraViewControllerPhotoMetadata"];
  v18 = [v17 mutableCopy];
  [v12 setObject:v18 forKeyedSubscript:@"CAMCameraViewControllerPhotoMetadata"];

  v19 = [v12 objectForKeyedSubscript:@"CAMCameraViewControllerPhotoMetadata"];
  [v19 setObject:&unk_1F16C88E8 forKeyedSubscript:*MEMORY[0x1E696DE78]];

  return v12;
}

- (id)_clientPropertiesForLivePhotoVideoURL:(id)l duration:(id *)duration stillDisplayTime:(id *)time error:(id)error
{
  lCopy = l;
  if (lCopy)
  {
    v10 = MEMORY[0x1E695DF90];
    errorCopy = error;
    v12 = objc_alloc_init(v10);
    if (duration->var2)
    {
      v17 = *duration;
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&v17)];
      [v12 setObject:v13 forKeyedSubscript:@"CAMCameraViewControllerVideoDuration"];
    }

    if (time->var2)
    {
      v17 = *time;
      v14 = [MEMORY[0x1E696B098] valueWithCMTime:&v17];
      [v12 setObject:v14 forKeyedSubscript:@"CAMCameraViewControllerLivePhotoStillDisplayTime"];
    }

    [v12 setObject:lCopy forKeyedSubscript:@"CAMCameraViewControllerVideoURL"];
    [v12 setObject:errorCopy forKeyedSubscript:@"CAMCameraViewControllerCaptureError"];

    v15 = [v12 copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_clientPropertiesForVideoURL:(id)l renderedURL:(id)rL duration:(id *)duration size:(CGSize)size creationDate:(id)date captureOrientation:(int64_t)orientation previewOrientation:(int64_t)previewOrientation adjustments:(id)self0 uniqueIdentifier:(id)self1 savedToPhotoLibrary:(BOOL)self2
{
  height = size.height;
  width = size.width;
  v19 = MEMORY[0x1E695DF90];
  identifierCopy = identifier;
  adjustmentsCopy = adjustments;
  dateCopy = date;
  rLCopy = rL;
  lCopy = l;
  v25 = objc_alloc_init(v19);
  [v25 setObject:identifierCopy forKeyedSubscript:@"CAMCameraViewControllerUniquePersistenceIdentifier"];

  v26 = [MEMORY[0x1E696AD98] numberWithDouble:width];
  [v25 setObject:v26 forKey:@"CAMCameraViewControllerPixelWidth"];

  v27 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  [v25 setObject:v27 forKey:@"CAMCameraViewControllerPixelHeight"];

  [v25 setObject:dateCopy forKeyedSubscript:@"CAMCameraViewControllerCaptureDate"];
  [v25 setObject:adjustmentsCopy forKeyedSubscript:@"CAMCameraViewControllerAdjustments"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:library];
  [v25 setObject:v28 forKey:@"CAMCameraViewControllerSavedToPhotoLibrary"];

  if (orientation)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
    [v25 setObject:v29 forKey:@"CAMCameraViewControllerCaptureOrientation"];
  }

  if (duration->var2)
  {
    time = *duration;
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&time)];
    [v25 setObject:v30 forKeyedSubscript:@"CAMCameraViewControllerVideoDuration"];
  }

  if (rLCopy)
  {
    v31 = rLCopy;
  }

  else
  {
    v31 = lCopy;
  }

  if (rLCopy)
  {
    v32 = lCopy;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;
  v34 = v31;
  [v25 setObject:v34 forKeyedSubscript:@"CAMCameraViewControllerVideoURL"];
  [v25 setObject:v33 forKeyedSubscript:@"CAMCameraViewControllerUnadjustedVideoURL"];

  v35 = [(CAMCameraViewController *)self _previewImageFromVideoURL:v34];

  [v25 setObject:v35 forKeyedSubscript:@"CAMCameraViewControllerPreviewImage"];
  v36 = [v25 copy];

  return v36;
}

- (void)captureController:(id)controller didGenerateStillImageCaptureResult:(id)result fromRequest:(id)request
{
  resultCopy = result;
  requestCopy = request;
  captureOrientation = [requestCopy captureOrientation];
  v10 = +[CAMOrientationUtilities imageOrientationOfResult:withCaptureDevice:captureOrientation:](CAMOrientationUtilities, "imageOrientationOfResult:withCaptureDevice:captureOrientation:", resultCopy, [requestCopy captureDevice], objc_msgSend(requestCopy, "captureOrientation"));
  persistenceUUID = [requestCopy persistenceUUID];
  captureMode = [requestCopy captureMode];
  persistenceOptions = [requestCopy persistenceOptions];

  if (!persistenceOptions)
  {
    _resultProcessingQueue = [(CAMCameraViewController *)self _resultProcessingQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __92__CAMCameraViewController_captureController_didGenerateStillImageCaptureResult_fromRequest___block_invoke;
    v15[3] = &unk_1E76FF040;
    v16 = resultCopy;
    selfCopy = self;
    v19 = captureMode;
    v20 = captureOrientation;
    v21 = v10;
    v18 = persistenceUUID;
    dispatch_async(_resultProcessingQueue, v15);
  }
}

void __92__CAMCameraViewController_captureController_didGenerateStillImageCaptureResult_fromRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stillImageFilteredPreviewSurface];
  if (!v2)
  {
    v2 = [*(a1 + 32) stillImageUnfilteredPreviewSurface];
  }

  LOBYTE(v9) = 0;
  v3 = [*(a1 + 40) _clientPropertiesForStillImageWithURL:0 captureMode:*(a1 + 56) captureOrientation:*(a1 + 64) previewSurface:v2 previewOrientation:*(a1 + 72) uniqueIdentifier:*(a1 + 48) savedToPhotoLibrary:v9 captureResult:*(a1 + 32)];
  v4 = [v3 objectForKey:@"CAMCameraViewControllerPreviewImage"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__CAMCameraViewController_captureController_didGenerateStillImageCaptureResult_fromRequest___block_invoke_2;
  block[3] = &unk_1E76F8230;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = v5;
  v12 = v6;
  v13 = v4;
  v14 = v3;
  v7 = v3;
  v8 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __92__CAMCameraViewController_captureController_didGenerateStillImageCaptureResult_fromRequest___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  [*(a1 + 40) _notifyCaptureDelegateOfCompletedCaptureOfPhoto:*(a1 + 48) withProperties:*(a1 + 56) error:v2];
}

- (id)_behaviorDefinedDestinationURLForRequest:(id)request withLocalDestinationURL:(id)l linkedDestinationURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  requestCopy = request;
  persistenceOptions = [requestCopy persistenceOptions];
  temporaryPersistenceOptions = [requestCopy temporaryPersistenceOptions];

  if ((persistenceOptions - 1) <= 1)
  {
    v12 = lCopy;
    if (temporaryPersistenceOptions < 2)
    {
LABEL_5:
      v13 = v12;
      goto LABEL_7;
    }

    if (temporaryPersistenceOptions == 2)
    {
      v12 = rLCopy;
      goto LABEL_5;
    }
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (void)persistenceController:(id)controller didGenerateStillImageLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request
{
  resultCopy = result;
  captureResultCopy = captureResult;
  requestCopy = request;
  if (![requestCopy conformsToProtocol:&unk_1F1759AD8] || (objc_msgSend(requestCopy, "timelapseIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    isDisablingMultipleCaptureFeatures = [(CAMCameraViewController *)self isDisablingMultipleCaptureFeatures];
    isRecording = [(CAMCameraViewController *)self isRecording];
    if (!isDisablingMultipleCaptureFeatures || !isRecording)
    {
      if ([requestCopy type])
      {
        v15 = 0;
      }

      else
      {
        v15 = requestCopy;
      }

      v16 = v15;
      localDestinationURL = [resultCopy localDestinationURL];
      linkedDestinationURL = [resultCopy linkedDestinationURL];
      v36 = [(CAMCameraViewController *)self _behaviorDefinedDestinationURLForRequest:requestCopy withLocalDestinationURL:localDestinationURL linkedDestinationURL:linkedDestinationURL];

      captureMode = [requestCopy captureMode];
      captureOrientation = [requestCopy captureOrientation];
      v19 = +[CAMOrientationUtilities imageOrientationOfResult:withCaptureDevice:captureOrientation:](CAMOrientationUtilities, "imageOrientationOfResult:withCaptureDevice:captureOrientation:", captureResultCopy, [requestCopy captureDevice], objc_msgSend(requestCopy, "captureOrientation"));
      localPersistenceUUID = [resultCopy localPersistenceUUID];
      HIDWORD(v28) = [requestCopy shouldPersistToIncomingDirectory];
      if ([v16 hasAdjustments])
      {
        adjustmentFilters = [v16 adjustmentFilters];
        LODWORD(v28) = [adjustmentFilters count] == 0;
      }

      else
      {
        LODWORD(v28) = 0;
      }

      v37 = v16;
      stillImageFilteredPreviewSurface = [captureResultCopy stillImageFilteredPreviewSurface];
      if (!stillImageFilteredPreviewSurface)
      {
        stillImageFilteredPreviewSurface = [captureResultCopy stillImageUnfilteredPreviewSurface];
      }

      coordinationInfo = [captureResultCopy coordinationInfo];
      resultSpecifiers = [coordinationInfo resultSpecifiers];
      allExpectedResultSpecifiers = [coordinationInfo allExpectedResultSpecifiers];
      _resultProcessingQueue = [(CAMCameraViewController *)self _resultProcessingQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __122__CAMCameraViewController_persistenceController_didGenerateStillImageLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke;
      block[3] = &unk_1E76FF0B8;
      block[4] = self;
      v47 = captureOrientation;
      v48 = stillImageFilteredPreviewSurface;
      v49 = v19;
      v46 = captureMode;
      v39 = v36;
      v40 = localPersistenceUUID;
      v51 = v30;
      v41 = captureResultCopy;
      v42 = v37;
      v43 = requestCopy;
      v52 = v29;
      v50 = resultSpecifiers;
      v44 = resultCopy;
      v45 = allExpectedResultSpecifiers;
      v53 = isDisablingMultipleCaptureFeatures;
      v33 = allExpectedResultSpecifiers;
      v25 = v37;
      v26 = localPersistenceUUID;
      v27 = v36;
      dispatch_async(_resultProcessingQueue, block);
    }
  }
}

void __122__CAMCameraViewController_persistenceController_didGenerateStillImageLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  LOBYTE(v42) = *(a1 + 136);
  v2 = [*(a1 + 32) _clientPropertiesForStillImageWithURL:*(a1 + 40) captureMode:*(a1 + 96) captureOrientation:*(a1 + 104) previewSurface:*(a1 + 112) previewOrientation:*(a1 + 120) uniqueIdentifier:*(a1 + 48) savedToPhotoLibrary:v42 captureResult:*(a1 + 56)];
  v3 = [*(a1 + 32) _exportPropertiesForClientProperties:v2];
  if ([*(a1 + 64) wantsSemanticSceneFilter])
  {
    v4 = MEMORY[0x1E69C0688];
    v5 = [*(a1 + 56) capturePhoto];
    v6 = [v5 privateClientMetadata];
    v60 = 0;
    v7 = [v4 deserializedMetadataFromPrivateClientMetadata:v6 error:&v60];
    v8 = v60;

    if (v8)
    {
      v9 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __122__CAMCameraViewController_persistenceController_didGenerateStillImageLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke_cold_1(a1);
      }
    }

    v10 = [MEMORY[0x1E69C0868] semanticEnhanceSceneForCameraMetadata:v7 ignoreCameraSetting:1];
    v12 = v11;
    [v7 setSemanticEnhanceScene:v10];
    [v7 setSemanticEnhanceSceneConfidence:v12];
    v13 = (v10 - 1) < 0xFFFFFFFFFFFFFFFELL;
    v14 = MEMORY[0x1E69BE498];
    v15 = [*(a1 + 80) adjustmentsData];
    v16 = [v14 assetAdjustmentsFromCameraAdjustmentData:v15 cameraMetadata:v7 exportProperties:v3 applySemanticEnhance:v13 assetType:0];
  }

  else
  {
    v13 = MEMORY[0x1E69BE498];
    v17 = [*(a1 + 80) adjustmentsData];
    v16 = [v13 assetAdjustmentsFromCameraAdjustmentData:v17 exportProperties:v3];

    LOBYTE(v13) = 0;
  }

  v18 = [*(a1 + 56) isExpectingPairedVideo];
  if ((v13 & 1) == 0 && !*(a1 + 137))
  {
    goto LABEL_10;
  }

  v20 = v16 != 0;
  if ((v20 & v18) == 1)
  {
    if (*(a1 + 137))
    {
LABEL_10:
      v19 = 0;
      v20 = 0;
LABEL_11:
      v21 = 0;
      v22 = 0;
      v23 = *(a1 + 128) | 2;
      goto LABEL_21;
    }
  }

  else
  {
    if (v16)
    {
      v19 = *(a1 + 137);
    }

    else
    {
      v19 = 0;
    }

    if (!v16 || (*(a1 + 137) & 1) != 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(a1 + 128);
  v21 = 1;
  v19 = *(a1 + 137);
  v22 = 1;
  v20 = 1;
LABEL_21:
  v24 = [*(a1 + 32) _resultQueue_getOrCreateStillImageResultCoordinatorForRequest:*(a1 + 72) captureTimeExpectedResultSpecifiers:*(a1 + 88) isExpectingPairedVideo:v18 isDisablingMultipleCaptures:*(a1 + 138) isGeneratingFilteredMedia:v19];
  v25 = v24;
  if ((v22 & 1) == 0)
  {
    [v24 updatePhotoProperties:v2 assetAdjustments:v16 forResultSpecifiers:*(a1 + 128)];
  }

  if (v20)
  {
    v47 = v21;
    v48 = v3;
    v26 = [*(a1 + 72) persistenceUUID];
    v27 = *(a1 + 128);
    if ((v27 & 2) != 0)
    {
      v28 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      if ((v27 & 1) == 0)
      {
LABEL_29:
        v49 = v2;
        if (![(__CFString *)v28 length])
        {

          v28 = @"None";
        }

        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"persistenceUUID %@ %@ still image", v26, v28];;
        v31 = *MEMORY[0x1E69C00D0];
        v32 = [*(a1 + 40) pathExtension];
        v33 = [v31 stringByAppendingPathExtension:v32];

        v34 = [*(a1 + 40) URLByDeletingPathExtension];
        v45 = v33;
        v35 = [v34 URLByAppendingPathExtension:v33];

        v44 = [getPAMediaConversionServiceResourceURLCollectionClass() collectionWithMainResourceURL:*(a1 + 40)];
        v43 = [getPAMediaConversionServiceResourceURLCollectionClass() collectionWithMainResourceURL:v35];
        v46 = v30;
        v36 = [*(a1 + 32) _mediaConversionOptionsForAdjustments:v16 mediaType:1 description:v30];
        v37 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v62 = v26;
          v63 = 2114;
          v64 = v28;
          _os_log_impl(&dword_1A3640000, v37, OS_LOG_TYPE_DEFAULT, "CVC %{public}@: Rendering image for specifier %{public}@", buf, 0x16u);
        }

        [v25 delayForcedDispatchForPhotoResultSpecifiers:v23];
        Current = CFAbsoluteTimeGetCurrent();
        v39 = [*(a1 + 32) _imageConversionClient];
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __122__CAMCameraViewController_persistenceController_didGenerateStillImageLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke_174;
        v50[3] = &unk_1E76FF090;
        v56 = Current;
        v50[4] = *(a1 + 32);
        v51 = v26;
        v52 = v35;
        v57 = *(a1 + 128);
        v2 = v49;
        v53 = v49;
        v59 = v47;
        v54 = v16;
        v55 = v25;
        v58 = v23;
        v40 = v35;
        v41 = v26;
        [v39 convertImageAtSourceURLCollection:v44 toDestinationURLCollection:v43 options:v36 completionHandler:v50];

        v3 = v48;
        goto LABEL_34;
      }
    }

    else
    {
      v28 = &stru_1F1660A30;
      if ((v27 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v29 = [(__CFString *)v28 stringByAppendingString:@"HDR"];

    v28 = v29;
    goto LABEL_29;
  }

LABEL_34:
}

void __122__CAMCameraViewController_persistenceController_didGenerateStillImageLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke_174(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = CFAbsoluteTimeGetCurrent() - *(a1 + 80);
  v10 = [*(a1 + 32) _resultProcessingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__CAMCameraViewController_persistenceController_didGenerateStillImageLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke_2;
  block[3] = &unk_1E76FF068;
  v22 = v8;
  v28 = a2;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v29 = *(a1 + 88);
  v30 = v9;
  v20 = *(a1 + 32);
  v13 = *(a1 + 56);
  *&v14 = v20;
  *(&v14 + 1) = v13;
  *&v15 = v11;
  *(&v15 + 1) = v12;
  v23 = v15;
  v24 = v14;
  v25 = v7;
  v32 = *(a1 + 104);
  v26 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a1 + 96);
  v27 = v16;
  v31 = v17;
  v18 = v7;
  v19 = v8;
  dispatch_async(v10, block);
}

void __122__CAMCameraViewController_persistenceController_didGenerateStillImageLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32) && *(a1 + 96) == 1)
  {
    v2 = os_log_create("com.apple.camera", "Camera");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v3 = *(a1 + 40);
    v4 = *(a1 + 104);
    if ((v4 & 2) != 0)
    {
      v5 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      if ((v4 & 1) == 0)
      {
LABEL_15:
        if (![(__CFString *)v5 length])
        {

          v5 = @"None";
        }

        v9 = *(a1 + 112);
        v10 = 138543874;
        v11 = v3;
        v12 = 2114;
        v13 = v5;
        v14 = 2048;
        v15 = v9;
        _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "CVC %{public}@: Finished rendering image for specifier %{public}@ (took %.3f seconds)", &v10, 0x20u);

        goto LABEL_9;
      }
    }

    else
    {
      v5 = &stru_1F1660A30;
      if ((v4 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v8 = [(__CFString *)v5 stringByAppendingString:@"HDR"];

    v5 = v8;
    goto LABEL_15;
  }

  v2 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __122__CAMCameraViewController_persistenceController_didGenerateStillImageLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke_2_cold_1(a1);
  }

LABEL_9:

  v6 = [*(a1 + 56) _clientPropertiesForPhotoProperties:*(a1 + 64) withFilteredImageURL:*(a1 + 48) conversionOutputInfo:*(a1 + 72) error:*(a1 + 32)];
  if (*(a1 + 128))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + 80);
  }

  [*(a1 + 88) updatePhotoProperties:v6 assetAdjustments:v7 forResultSpecifiers:*(a1 + 120)];
}

- (void)persistenceController:(id)controller didGenerateVideoLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request
{
  resultCopy = result;
  captureResultCopy = captureResult;
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = requestCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if ([v12 isCTMVideo])
  {
    [(CAMCameraViewController *)self _handleCTMVideoLocalPersistenceResult:resultCopy forCaptureResult:captureResultCopy fromRequest:v12];
  }

  else if (v12)
  {
    [(CAMCameraViewController *)self _handleLivePhotoVideoLocalPersistenceResult:resultCopy forCaptureResult:captureResultCopy fromRequest:v12];
  }

  else
  {
    [(CAMCameraViewController *)self _handleVideoLocalPersistenceResult:resultCopy forCaptureResult:captureResultCopy fromRequest:requestCopy];
  }
}

- (void)_handleLivePhotoVideoLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request
{
  resultCopy = result;
  captureResultCopy = captureResult;
  requestCopy = request;
  coordinationInfo = [captureResultCopy coordinationInfo];
  resultSpecifiers = [coordinationInfo resultSpecifiers];
  allExpectedResultSpecifiers = [coordinationInfo allExpectedResultSpecifiers];
  isDisablingMultipleCaptureFeatures = [(CAMCameraViewController *)self isDisablingMultipleCaptureFeatures];
  _resultProcessingQueue = [(CAMCameraViewController *)self _resultProcessingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__CAMCameraViewController__handleLivePhotoVideoLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke;
  block[3] = &unk_1E76FF0E0;
  block[4] = self;
  v21 = requestCopy;
  v26 = isDisablingMultipleCaptureFeatures;
  v22 = allExpectedResultSpecifiers;
  v23 = resultCopy;
  v24 = captureResultCopy;
  v25 = resultSpecifiers;
  v16 = captureResultCopy;
  v17 = resultCopy;
  v18 = allExpectedResultSpecifiers;
  v19 = requestCopy;
  dispatch_async(_resultProcessingQueue, block);
}

void __100__CAMCameraViewController__handleLivePhotoVideoLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultQueue_getOrCreateStillImageResultCoordinatorForRequest:*(a1 + 40) captureTimeExpectedResultSpecifiers:*(a1 + 48) isExpectingPairedVideo:1 isDisablingMultipleCaptures:*(a1 + 80) isGeneratingFilteredMedia:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 56) localDestinationURL];
  v6 = [*(a1 + 56) linkedDestinationURL];
  v7 = [v3 _behaviorDefinedDestinationURLForRequest:v4 withLocalDestinationURL:v5 linkedDestinationURL:v6];

  v21 = 0uLL;
  v22 = 0;
  v8 = *(a1 + 56);
  if (v8 && ([v8 duration], v9 = *(a1 + 56), v19 = 0uLL, v20 = 0, v9))
  {
    [v9 stillDisplayTime];
  }

  else
  {
    v19 = 0uLL;
    v20 = 0;
  }

  v10 = *(a1 + 32);
  v11 = [*(a1 + 64) error];
  v17 = v21;
  v18 = v22;
  v15 = v19;
  v16 = v20;
  v12 = [v10 _clientPropertiesForLivePhotoVideoURL:v7 duration:&v17 stillDisplayTime:&v15 error:v11];

  v13 = [*(a1 + 40) adjustmentFilters];
  v14 = [CAMEffectFilterManager isDepthEffectInFilters:v13];

  [v2 updateVideoProperties:v12 forResultSpecifiers:*(a1 + 72) wantsDepthRenderedForStill:v14];
}

- (void)_handleCTMVideoLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request
{
  resultCopy = result;
  captureResultCopy = captureResult;
  requestCopy = request;
  localDestinationURL = [resultCopy localDestinationURL];
  linkedDestinationURL = [resultCopy linkedDestinationURL];
  v13 = [(CAMCameraViewController *)self _behaviorDefinedDestinationURLForRequest:requestCopy withLocalDestinationURL:localDestinationURL linkedDestinationURL:linkedDestinationURL];

  if ([requestCopy hasAdjustments])
  {
    adjustmentsData = [resultCopy adjustmentsData];
    v15 = adjustmentsData != 0;
  }

  else
  {
    v15 = 0;
  }

  _resultProcessingQueue = [(CAMCameraViewController *)self _resultProcessingQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __94__CAMCameraViewController__handleCTMVideoLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke;
  v21[3] = &unk_1E76FF130;
  v22 = requestCopy;
  v23 = captureResultCopy;
  v27 = v15;
  v24 = resultCopy;
  v25 = v13;
  selfCopy = self;
  v17 = v13;
  v18 = resultCopy;
  v19 = captureResultCopy;
  v20 = requestCopy;
  dispatch_async(_resultProcessingQueue, v21);
}

void __94__CAMCameraViewController__handleCTMVideoLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  [CAMOrientationUtilities videoTrackOrientationForVideoRequest:*(a1 + 32)];
  v2 = PLExifOrientationFromImageOrientation();
  [*(a1 + 40) dimensions];
  CAMSizeForDimensions();
  v4 = v3;
  v6 = v5;
  if (*(a1 + 72) == 1)
  {
    v7 = [*(a1 + 32) persistenceUUID];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"persistenceUUID %@ CTM Video", v7];;
    v9 = MEMORY[0x1E69BE640];
    v10 = *(a1 + 48);
    if (v10)
    {
      [v10 duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v16 = [v9 exportPropertiesWithImageWidth:v4 imageHeight:v6 exifOrientation:v2 duration:CMTimeGetSeconds(&time)];
    v17 = MEMORY[0x1E69BE498];
    v18 = [*(a1 + 48) adjustmentsData];
    v19 = [v17 assetAdjustmentsFromCameraAdjustmentData:v18 exportProperties:v16];

    v20 = MEMORY[0x1E695DFF8];
    v21 = MEMORY[0x1E69BF178];
    v22 = [*(a1 + 56) path];
    v23 = [v21 filteredVideoPathForRecordedLivePhotoVideoPath:v22];
    v24 = [v20 fileURLWithPath:v23];

    v25 = [*(a1 + 64) _mediaConversionOptionsForAdjustments:v19 mediaType:2 description:v8];
    v26 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v7;
      _os_log_impl(&dword_1A3640000, v26, OS_LOG_TYPE_DEFAULT, "CVC %{public}@: Rendering CTM video", &time, 0xCu);
    }

    v27 = [*(a1 + 64) _videoConversionClient];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __94__CAMCameraViewController__handleCTMVideoLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke_183;
    v33[3] = &unk_1E76FF108;
    v34 = v7;
    v35 = v24;
    v28 = *(a1 + 56);
    v36 = *(a1 + 64);
    v37 = *(a1 + 48);
    v38 = *(a1 + 40);
    v39 = *(a1 + 32);
    v42 = v4;
    v43 = v6;
    v40 = *(a1 + 56);
    v41 = v19;
    v29 = v19;
    v30 = v24;
    v31 = v7;
    v32 = [v27 convertVideoAtSourceURL:v28 toDestinationURL:v30 options:v25 completionHandler:v33];
  }

  else
  {
    v12 = *(a1 + 56);
    v11 = *(a1 + 64);
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = *(a1 + 48);

    [v11 _handleCTMVideoLocalPersistenceResult:v15 forCaptureResult:v13 fromRequest:v14 size:v12 videoURL:0 renderedToURL:0 renderedAdjustments:?];
  }
}

void __94__CAMCameraViewController__handleCTMVideoLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke_183(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.camera", "Camera");
  v10 = v9;
  if (a2 != 1 || v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v20 = CAMPAMediaConversionNameForJobStatus(a2);
      v21 = *(a1 + 40);
      v22 = 138544130;
      v23 = v19;
      v24 = 2114;
      v25 = v20;
      v26 = 2114;
      v27 = v21;
      v28 = 2114;
      v29 = v8;
      _os_log_error_impl(&dword_1A3640000, v10, OS_LOG_TYPE_ERROR, "CVC %{public}@: Media conversion status %{public}@ writing filtered video at %{public}@ -- %{public}@", &v22, 0x2Au);
    }

    [*(a1 + 48) _handleCTMVideoLocalPersistenceResult:*(a1 + 56) forCaptureResult:*(a1 + 64) fromRequest:*(a1 + 72) size:*(a1 + 80) videoURL:0 renderedToURL:0 renderedAdjustments:{*(a1 + 96), *(a1 + 104)}];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v22 = 138543362;
      v23 = v11;
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "CVC %{public}@: Finished rendering CTM video", &v22, 0xCu);
    }

    v12 = getPAMediaConversionServicePixelWidthKey();
    v13 = [v7 objectForKeyedSubscript:v12];

    v14 = getPAMediaConversionServicePixelHeightKey();
    v15 = [v7 objectForKeyedSubscript:v14];

    [v13 doubleValue];
    v17 = v16;
    [v15 doubleValue];
    [*(a1 + 48) _handleCTMVideoLocalPersistenceResult:*(a1 + 56) forCaptureResult:*(a1 + 64) fromRequest:*(a1 + 72) size:*(a1 + 80) videoURL:*(a1 + 40) renderedToURL:*(a1 + 88) renderedAdjustments:{v17, v18}];
  }
}

- (void)_handleCTMVideoLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request size:(CGSize)size videoURL:(id)l renderedToURL:(id)rL renderedAdjustments:(id)adjustments
{
  height = size.height;
  width = size.width;
  resultCopy = result;
  captureResultCopy = captureResult;
  requestCopy = request;
  lCopy = l;
  rLCopy = rL;
  adjustmentsCopy = adjustments;
  if (resultCopy)
  {
    [resultCopy duration];
  }

  else
  {
    memset(v32, 0, sizeof(v32));
  }

  creationDate = [resultCopy creationDate];
  captureOrientation = [requestCopy captureOrientation];
  v24 = [CAMOrientationUtilities imageOrientationForVideoRequest:requestCopy];
  localPersistenceUUID = [resultCopy localPersistenceUUID];
  LOBYTE(v30) = [requestCopy shouldPersistToIncomingDirectory];
  v26 = [(CAMCameraViewController *)self _clientPropertiesForVideoURL:lCopy renderedURL:rLCopy duration:v32 size:creationDate creationDate:captureOrientation captureOrientation:v24 previewOrientation:width adjustments:height uniqueIdentifier:adjustmentsCopy savedToPhotoLibrary:localPersistenceUUID, v30];

  if (rLCopy)
  {
    v27 = rLCopy;
  }

  else
  {
    v27 = lCopy;
  }

  v28 = [MEMORY[0x1E6988168] assetWithURL:v27];
  error = [captureResultCopy error];
  [(CAMCameraViewController *)self _notifyCaptureDelegateOfCompletedCaptureOfVideo:v28 withProperties:v26 error:error];
}

- (void)_handleVideoLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request
{
  resultCopy = result;
  captureResultCopy = captureResult;
  requestCopy = request;
  if (resultCopy)
  {
    localDestinationURL = [resultCopy localDestinationURL];
    linkedDestinationURL = [resultCopy linkedDestinationURL];
    v13 = [(CAMCameraViewController *)self _behaviorDefinedDestinationURLForRequest:requestCopy withLocalDestinationURL:localDestinationURL linkedDestinationURL:linkedDestinationURL];

    memset(buf, 0, sizeof(buf));
    v38 = 0;
    [resultCopy duration];
    creationDate = [resultCopy creationDate];
    captureOrientation = [requestCopy captureOrientation];
    localPersistenceUUID = [resultCopy localPersistenceUUID];
    shouldPersistToIncomingDirectory = [requestCopy shouldPersistToIncomingDirectory];
    v17 = captureResultCopy;
    v18 = [requestCopy captureMode] == 2;
    _resultProcessingQueue = [(CAMCameraViewController *)self _resultProcessingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__CAMCameraViewController__handleVideoLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke;
    block[3] = &unk_1E76FF158;
    v26 = v13;
    v35 = v18;
    captureResultCopy = v17;
    v33 = *buf;
    v34 = v38;
    v27 = requestCopy;
    selfCopy = self;
    v32 = captureOrientation;
    v29 = creationDate;
    v30 = localPersistenceUUID;
    v36 = shouldPersistToIncomingDirectory;
    v31 = v17;
    v20 = localPersistenceUUID;
    v21 = creationDate;
    v22 = v13;
    dispatch_async(_resultProcessingQueue, block);
  }

  else
  {
    v23 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "Received nil for CAMVideoLocalPersistenceResult, possibly due to nebulad timeout", buf, 2u);
    }
  }
}

void __91__CAMCameraViewController__handleVideoLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6988168] assetWithURL:*(a1 + 32)];
  v3 = [v2 tracksWithMediaType:*MEMORY[0x1E6987608]];
  v4 = [v3 firstObject];
  [v4 naturalSize];
  v6 = v5;
  v8 = v7;
  if (v4)
  {
    [v4 preferredTransform];
    v9 = *(&v34 + 1);
    v10 = *&v34;
    v11 = *(&v35 + 1);
    v12 = *&v35;
  }

  else
  {
    v11 = 0.0;
    v9 = 0.0;
    v12 = 0.0;
    v10 = 0.0;
  }

  v37.size.width = v8 * v12 + v10 * v6;
  v37.size.height = v8 * v11 + v9 * v6;
  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v38 = CGRectStandardize(v37);
  width = v38.size.width;
  height = v38.size.height;
  v15 = MEMORY[0x1E69C0910];
  [v4 nominalFrameRate];
  [v15 defaultSlowMotionRateForNominalFrameRate:?];
  v17 = 0;
  if (*(a1 + 112) == 1)
  {
    v18 = v16;
    if (v16 > 0.0 && v16 < 1.0)
    {
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v31 = *(a1 + 88);
      *&v32 = *(a1 + 104);
      [MEMORY[0x1E69C0910] defaultSlowMotionTimeRangeForDuration:&v31];
      v20 = objc_alloc(MEMORY[0x1E69C0910]);
      v31 = v34;
      v32 = v35;
      v33 = v36;
      v17 = [v20 initWithSlowMotionTimeRange:&v31 rate:{COERCE_DOUBLE(__PAIR64__(DWORD1(v36), LODWORD(v18)))}];
    }
  }

  v21 = [CAMOrientationUtilities imageOrientationForVideoRequest:*(a1 + 40)];
  v22 = *(a1 + 32);
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  v25 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = *(a1 + 113);
  v34 = *(a1 + 88);
  *&v35 = *(a1 + 104);
  LOBYTE(v30) = v27;
  v28 = [v23 _clientPropertiesForVideoURL:v22 renderedURL:0 duration:&v34 size:v24 creationDate:v25 captureOrientation:v21 previewOrientation:width adjustments:height uniqueIdentifier:v17 savedToPhotoLibrary:{v26, v30}];
  v29 = [*(a1 + 72) error];
  [*(a1 + 48) _notifyCaptureDelegateOfCompletedCaptureOfVideo:v2 withProperties:v28 error:v29];
}

- (void)persistenceController:(id)controller didCompleteAllLocalPersistenceForRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = requestCopy;
    _resultProcessingQueue = [(CAMCameraViewController *)self _resultProcessingQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __90__CAMCameraViewController_persistenceController_didCompleteAllLocalPersistenceForRequest___block_invoke;
    v9[3] = &unk_1E76F7960;
    v9[4] = self;
    v10 = v6;
    v8 = v6;
    dispatch_async(_resultProcessingQueue, v9);
  }
}

- (void)_resultQueue_forceCompletionIfPossibleForRequest:(id)request
{
  requestCopy = request;
  _resultProcessingQueue = [(CAMCameraViewController *)self _resultProcessingQueue];
  dispatch_assert_queue_V2(_resultProcessingQueue);

  if (([requestCopy isCTMVideo] & 1) == 0)
  {
    v6 = [(CAMCameraViewController *)self _resultQueue_getStillImageResultCoordinatorForRequest:requestCopy];
    v7 = v6;
    if (v6)
    {
      [v6 forceRemainingDispatchesIfPossible];
      identifier = [v7 identifier];
      [(CAMCameraViewController *)self _resultQueue_removeStillImageResultCoordinatorForIdentifier:identifier];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__CAMCameraViewController__resultQueue_forceCompletionIfPossibleForRequest___block_invoke;
      block[3] = &unk_1E76F77B0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __76__CAMCameraViewController__resultQueue_forceCompletionIfPossibleForRequest___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E696A578];
  v5[0] = @"Capture failed";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CAMCameraViewControllerErrorDomain" code:0 userInfo:v2];
  [*(a1 + 32) _notifyCaptureDelegateOfCompletedCaptureOfPhoto:0 withProperties:0 error:v3];
}

- (id)_resultQueue_getOrCreateStillImageResultCoordinatorForRequest:(id)request captureTimeExpectedResultSpecifiers:(id)specifiers isExpectingPairedVideo:(BOOL)video isDisablingMultipleCaptures:(BOOL)captures isGeneratingFilteredMedia:(BOOL)media
{
  mediaCopy = media;
  capturesCopy = captures;
  videoCopy = video;
  v37 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  specifiersCopy = specifiers;
  _resultProcessingQueue = [(CAMCameraViewController *)self _resultProcessingQueue];
  dispatch_assert_queue_V2(_resultProcessingQueue);

  persistenceUUID = [requestCopy persistenceUUID];
  _resultQueueStillImageResultCoordinators = [(CAMCameraViewController *)self _resultQueueStillImageResultCoordinators];
  v17 = [_resultQueueStillImageResultCoordinators objectForKeyedSubscript:persistenceUUID];
  if (!v17)
  {
    v18 = specifiersCopy;
    v19 = v18;
    if (mediaCopy)
    {
      v29 = capturesCopy;
      v30 = videoCopy;
      v31 = requestCopy;
      v20 = [v18 mutableCopy];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v21 = v19;
      v22 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v33;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v33 != v24)
            {
              objc_enumerationMutation(v21);
            }

            unsignedIntegerValue = [*(*(&v32 + 1) + 8 * i) unsignedIntegerValue];
            v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue | 2];
            [v20 addObject:v27];
          }

          v23 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v23);
      }

      requestCopy = v31;
      capturesCopy = v29;
      videoCopy = v30;
    }

    else
    {
      v20 = v18;
    }

    v17 = [[CAMCVCStillImageResultCoordinator alloc] initWithDelegate:self identifier:persistenceUUID allExpectedResultSpecifiers:v20 isExpectingPairedVideo:videoCopy allowMultipleCaptures:!capturesCopy shouldReturnFilteredPhotosAsSingleAsset:1];
    [_resultQueueStillImageResultCoordinators setObject:v17 forKeyedSubscript:persistenceUUID];
  }

  return v17;
}

- (id)_resultQueue_getStillImageResultCoordinatorForRequest:(id)request
{
  requestCopy = request;
  _resultProcessingQueue = [(CAMCameraViewController *)self _resultProcessingQueue];
  dispatch_assert_queue_V2(_resultProcessingQueue);

  persistenceUUID = [requestCopy persistenceUUID];

  _resultQueueStillImageResultCoordinators = [(CAMCameraViewController *)self _resultQueueStillImageResultCoordinators];
  v8 = [_resultQueueStillImageResultCoordinators objectForKeyedSubscript:persistenceUUID];

  return v8;
}

- (void)_resultQueue_removeStillImageResultCoordinatorForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _resultProcessingQueue = [(CAMCameraViewController *)self _resultProcessingQueue];
  dispatch_assert_queue_V2(_resultProcessingQueue);

  _resultQueueStillImageResultCoordinators = [(CAMCameraViewController *)self _resultQueueStillImageResultCoordinators];
  [_resultQueueStillImageResultCoordinators setObject:0 forKeyedSubscript:identifierCopy];
}

- (void)stillImagePersistenceCoordinator:(id)coordinator requestsDispatchForResultSpecifiers:(unint64_t)specifiers photoProperties:(id)properties videoProperties:(id)videoProperties unfilteredPhotoProperties:(id)photoProperties unfilteredVideoProperties:(id)unfilteredVideoProperties assetAdjustments:(id)adjustments error:(id)self0
{
  coordinatorCopy = coordinator;
  propertiesCopy = properties;
  videoPropertiesCopy = videoProperties;
  photoPropertiesCopy = photoProperties;
  unfilteredVideoPropertiesCopy = unfilteredVideoProperties;
  errorCopy = error;
  adjustmentsCopy = adjustments;
  _resultProcessingQueue = [(CAMCameraViewController *)self _resultProcessingQueue];
  dispatch_assert_queue_V2(_resultProcessingQueue);

  isExpectingPairedVideo = [coordinatorCopy isExpectingPairedVideo];
  if (adjustmentsCopy && isExpectingPairedVideo)
  {
    if (photoPropertiesCopy)
    {
      v24 = photoPropertiesCopy;
    }

    else
    {
      v24 = propertiesCopy;
    }

    if (unfilteredVideoPropertiesCopy)
    {
      v25 = unfilteredVideoPropertiesCopy;
    }

    else
    {
      v25 = videoPropertiesCopy;
    }

    [(CAMCameraViewController *)self _renderLivePhotoWithCoordinator:coordinatorCopy specifiers:specifiers photoProperties:v24 videoProperties:v25 adjustments:adjustmentsCopy, isExpectingPairedVideo];
  }

  else
  {
    [(CAMCameraViewController *)self _handlePhotoProperties:propertiesCopy videoProperties:videoPropertiesCopy unfilteredPhotoProperties:photoPropertiesCopy unfilteredVideoProperties:unfilteredVideoPropertiesCopy assetAdjustments:adjustmentsCopy attemptPairingVideo:isExpectingPairedVideo error:errorCopy];
  }
}

- (void)_handlePhotoProperties:(id)properties videoProperties:(id)videoProperties unfilteredPhotoProperties:(id)photoProperties unfilteredVideoProperties:(id)unfilteredVideoProperties assetAdjustments:(id)adjustments attemptPairingVideo:(BOOL)video error:(id)error
{
  videoCopy = video;
  v55[2] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  videoPropertiesCopy = videoProperties;
  unfilteredVideoPropertiesCopy = unfilteredVideoProperties;
  errorCopy = error;
  adjustmentsCopy = adjustments;
  photoPropertiesCopy = photoProperties;
  _resultProcessingQueue = [(CAMCameraViewController *)self _resultProcessingQueue];
  dispatch_assert_queue_V2(_resultProcessingQueue);

  v21 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPhotoURL"];
  v41 = [videoPropertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerVideoURL"];
  v22 = [propertiesCopy mutableCopy];
  v23 = [photoPropertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPhotoURL"];

  [v22 setObject:v23 forKeyedSubscript:@"CAMCameraViewControllerUnadjustedPhotoURL"];
  [v22 setObject:adjustmentsCopy forKeyedSubscript:@"CAMCameraViewControllerAdjustments"];

  if (videoCopy)
  {
    if (v21 && v41)
    {
      v24 = [videoPropertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerLivePhotoStillDisplayTime"];
      memset(buf, 0, sizeof(buf));
      v52 = 0;
      v25 = MEMORY[0x1E6960C70];
      v39 = v24;
      if (v24)
      {
        [v24 CMTimeValue];
      }

      else
      {
        *buf = *MEMORY[0x1E6960C70];
        v52 = *(MEMORY[0x1E6960C70] + 16);
      }

      Current = CFAbsoluteTimeGetCurrent();
      v29 = MEMORY[0x1E69788C8];
      v55[0] = v21;
      v55[1] = v41;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
      v53 = *v25;
      v54 = *(v25 + 2);
      v48 = *buf;
      v49 = v52;
      v50 = 0;
      v26 = [v29 livePhotoWithResourceFileURLs:v30 pairingIdentifier:0 videoDuration:&v53 photoTime:&v48 error:&v50];
      v31 = v50;

      v32 = CFAbsoluteTimeGetCurrent();
      v33 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v53) = 134217984;
        *(&v53 + 4) = v32 - Current;
        _os_log_impl(&dword_1A3640000, v33, OS_LOG_TYPE_DEFAULT, "CAMCameraViewController: Finished loading live photo via livePhotoWithResourceFileURLs (took %.3f seconds)", &v53, 0xCu);
      }

      if (!v26 || v31)
      {
        v34 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v53) = 138543362;
          *(&v53 + 4) = v31;
          _os_log_impl(&dword_1A3640000, v34, OS_LOG_TYPE_DEFAULT, "CAMCameraViewController: attempted to create a live photo but failed – falling back to a normal photo (%{public}@)", &v53, 0xCu);
        }
      }

      else
      {
        [v22 addEntriesFromDictionary:videoPropertiesCopy];
        v34 = [unfilteredVideoPropertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerVideoURL"];
        [v22 setObject:v34 forKeyedSubscript:@"CAMCameraViewControllerUnadjustedVideoURL"];
      }

      v27 = v39;
LABEL_21:

      goto LABEL_22;
    }

    v26 = 0;
    if (v21 && !v41)
    {
      v27 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v27, OS_LOG_TYPE_DEFAULT, "CAMCameraViewController: missing video for live photo – falling back to a normal photo", buf, 2u);
      }

      v26 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v26 = 0;
  }

LABEL_22:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __161__CAMCameraViewController__handlePhotoProperties_videoProperties_unfilteredPhotoProperties_unfilteredVideoProperties_assetAdjustments_attemptPairingVideo_error___block_invoke;
  block[3] = &unk_1E76FD5E8;
  v43 = v26;
  selfCopy = self;
  v45 = v22;
  v46 = errorCopy;
  v47 = propertiesCopy;
  v35 = propertiesCopy;
  v36 = errorCopy;
  v37 = v22;
  v38 = v26;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __161__CAMCameraViewController__handlePhotoProperties_videoProperties_unfilteredPhotoProperties_unfilteredVideoProperties_assetAdjustments_attemptPairingVideo_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    [v2 _notifyCaptureDelegateOfCompletedCaptureOfLivePhoto:? withProperties:? error:?];
  }

  else
  {
    v3 = [*(a1 + 64) objectForKeyedSubscript:@"CAMCameraViewControllerPreviewImage"];
    [*(a1 + 40) _notifyCaptureDelegateOfCompletedCaptureOfPhoto:v3 withProperties:*(a1 + 48) error:*(a1 + 56)];
  }
}

- (PAImageConversionServiceClient)_imageConversionClient
{
  imageConversionClient = self->__imageConversionClient;
  if (!imageConversionClient)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getPAImageConversionServiceClientClass_softClass;
    v13 = getPAImageConversionServiceClientClass_softClass;
    if (!getPAImageConversionServiceClientClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getPAImageConversionServiceClientClass_block_invoke;
      v9[3] = &unk_1E76F8100;
      v9[4] = &v10;
      __getPAImageConversionServiceClientClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->__imageConversionClient;
    self->__imageConversionClient = v6;

    imageConversionClient = self->__imageConversionClient;
  }

  return imageConversionClient;
}

- (PAVideoConversionServiceClient)_videoConversionClient
{
  videoConversionClient = self->__videoConversionClient;
  if (!videoConversionClient)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getPAVideoConversionServiceClientClass_softClass;
    v13 = getPAVideoConversionServiceClientClass_softClass;
    if (!getPAVideoConversionServiceClientClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getPAVideoConversionServiceClientClass_block_invoke;
      v9[3] = &unk_1E76F8100;
      v9[4] = &v10;
      __getPAVideoConversionServiceClientClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->__videoConversionClient;
    self->__videoConversionClient = v6;

    videoConversionClient = self->__videoConversionClient;
  }

  return videoConversionClient;
}

- (id)_mediaConversionOptionsForAdjustments:(id)adjustments mediaType:(int64_t)type description:(id)description
{
  v48[3] = *MEMORY[0x1E69E9840];
  adjustmentsCopy = adjustments;
  descriptionCopy = description;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v8 = getPAMediaConversionServiceAdjustmentDataKeySymbolLoc_ptr;
  v37 = getPAMediaConversionServiceAdjustmentDataKeySymbolLoc_ptr;
  if (!getPAMediaConversionServiceAdjustmentDataKeySymbolLoc_ptr)
  {
    v9 = MediaConversionServiceLibrary();
    v35[3] = dlsym(v9, "PAMediaConversionServiceAdjustmentDataKey");
    getPAMediaConversionServiceAdjustmentDataKeySymbolLoc_ptr = v35[3];
    v8 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v8)
  {
    goto LABEL_22;
  }

  v10 = *v8;
  v46[0] = v10;
  adjustmentData = [adjustmentsCopy adjustmentData];
  v48[0] = adjustmentData;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v12 = getPAMediaConversionServiceAdjustmentFormatIdentifierKeySymbolLoc_ptr;
  v37 = getPAMediaConversionServiceAdjustmentFormatIdentifierKeySymbolLoc_ptr;
  if (!getPAMediaConversionServiceAdjustmentFormatIdentifierKeySymbolLoc_ptr)
  {
    v13 = MediaConversionServiceLibrary();
    v35[3] = dlsym(v13, "PAMediaConversionServiceAdjustmentFormatIdentifierKey");
    getPAMediaConversionServiceAdjustmentFormatIdentifierKeySymbolLoc_ptr = v35[3];
    v12 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v12)
  {
    goto LABEL_22;
  }

  v14 = *v12;
  v46[1] = v14;
  adjustmentFormatIdentifier = [adjustmentsCopy adjustmentFormatIdentifier];
  v48[1] = adjustmentFormatIdentifier;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v16 = getPAMediaConversionServiceAdjustmentFormatVersionKeySymbolLoc_ptr;
  v37 = getPAMediaConversionServiceAdjustmentFormatVersionKeySymbolLoc_ptr;
  if (!getPAMediaConversionServiceAdjustmentFormatVersionKeySymbolLoc_ptr)
  {
    v17 = MediaConversionServiceLibrary();
    v35[3] = dlsym(v17, "PAMediaConversionServiceAdjustmentFormatVersionKey");
    getPAMediaConversionServiceAdjustmentFormatVersionKeySymbolLoc_ptr = v35[3];
    v16 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v16)
  {
    goto LABEL_22;
  }

  v47 = *v16;
  v18 = v47;
  adjustmentFormatVersion = [adjustmentsCopy adjustmentFormatVersion];
  v48[2] = adjustmentFormatVersion;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v46 count:3];

  if (type == 1)
  {
    standardPolicy = [MEMORY[0x1E69C06C0] standardPolicy];
    v21 = getPAMediaConversionServiceOptionAdjustmentInformationKey();
    v38[0] = v21;
    v43[0] = v20;
    v22 = getPAMediaConversionServiceOptionApplyOrientationTransformKey();
    v38[1] = v22;
    v43[1] = MEMORY[0x1E695E118];
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v27 = getPAMediaConversionServiceOptionMetadataPolicyKeySymbolLoc_ptr;
    v37 = getPAMediaConversionServiceOptionMetadataPolicyKeySymbolLoc_ptr;
    if (!getPAMediaConversionServiceOptionMetadataPolicyKeySymbolLoc_ptr)
    {
      v28 = MediaConversionServiceLibrary();
      v35[3] = dlsym(v28, "PAMediaConversionServiceOptionMetadataPolicyKey");
      getPAMediaConversionServiceOptionMetadataPolicyKeySymbolLoc_ptr = v35[3];
      v27 = v35[3];
    }

    _Block_object_dispose(&v34, 8);
    if (v27)
    {
      v39 = *v27;
      v43[2] = standardPolicy;
      descriptionCopy2 = v39;
      v24 = getPAMediaConversionServiceOptionRequestReasonKey();
      v40 = v24;
      descriptionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMCameraViewController: %@", descriptionCopy];
      v43[3] = descriptionCopy;
      v29 = getPAMediaConversionServiceOptionJobPriorityKey();
      v41 = v29;
      v43[4] = &unk_1F16C8900;
      v30 = getPAMediaConversionServiceOptionScaleFactorKey();
      v42 = v30;
      v43[5] = &unk_1F16C88E8;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v38 count:6];

      goto LABEL_17;
    }

LABEL_22:
    [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    __break(1u);
  }

  if (type == 2)
  {
    standardPolicy = getPAMediaConversionServiceOptionAdjustmentInformationKey();
    v44[0] = standardPolicy;
    v45[0] = v20;
    v21 = getPAMediaConversionServiceOptionApplyOrientationTransformKey();
    v44[1] = v21;
    v45[1] = MEMORY[0x1E695E118];
    v22 = getPAMediaConversionServiceOptionRequestReasonKey();
    v44[2] = v22;
    descriptionCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMCameraViewController: %@", descriptionCopy];
    v45[2] = descriptionCopy2;
    v24 = getPAMediaConversionServiceOptionJobPriorityKey();
    v44[3] = v24;
    v45[3] = &unk_1F16C8900;
    descriptionCopy = getPAMediaConversionServiceOptionScaleFactorKey();
    v44[4] = descriptionCopy;
    v45[4] = &unk_1F16C88E8;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:5];
LABEL_17:

    goto LABEL_19;
  }

  v26 = 0;
LABEL_19:

  return v26;
}

- (void)_renderLivePhotoWithCoordinator:(id)coordinator specifiers:(unint64_t)specifiers photoProperties:(id)properties videoProperties:(id)videoProperties adjustments:(id)adjustments
{
  v72 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  propertiesCopy = properties;
  videoPropertiesCopy = videoProperties;
  adjustmentsCopy = adjustments;
  _resultProcessingQueue = [(CAMCameraViewController *)self _resultProcessingQueue];
  dispatch_assert_queue_V2(_resultProcessingQueue);

  v48 = propertiesCopy;
  v16 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerPhotoURL"];
  v17 = *MEMORY[0x1E69C00D0];
  pathExtension = [v16 pathExtension];
  v19 = [v17 stringByAppendingPathExtension:pathExtension];

  uRLByDeletingPathExtension = [v16 URLByDeletingPathExtension];
  v51 = v19;
  v21 = [uRLByDeletingPathExtension URLByAppendingPathExtension:v19];

  v52 = v16;
  v22 = [getPAMediaConversionServiceResourceURLCollectionClass() collectionWithMainResourceURL:v16];
  v23 = [getPAMediaConversionServiceResourceURLCollectionClass() collectionWithMainResourceURL:v21];
  v47 = videoPropertiesCopy;
  v24 = [videoPropertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerVideoURL"];
  specifiersCopy = specifiers;
  v49 = v24;
  v50 = v22;
  if (v24)
  {
    v25 = v24;
    v26 = MEMORY[0x1E695DFF8];
    v27 = MEMORY[0x1E69BF178];
    specifiers = [v24 path];
    v28 = [v27 filteredVideoPathForRecordedLivePhotoVideoPath:specifiers];
    v29 = [v26 fileURLWithPath:v28];

    LOBYTE(specifiers) = specifiersCopy;
    v30 = getPAMediaConversionResourceRoleVideoComplement();
    [v22 setResourceURL:v25 forRole:v30];

    v31 = getPAMediaConversionResourceRoleVideoComplement();
    v32 = v23;
    [v23 setResourceURL:v29 forRole:v31];

    v33 = @"live photo";
  }

  else
  {
    v32 = v23;
    v29 = 0;
    v33 = @"photo (live photo fallback)";
  }

  identifier = [coordinatorCopy identifier];
  if ((specifiers & 2) != 0)
  {
    v35 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
    if ((specifiers & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v35 = &stru_1F1660A30;
  if (specifiers)
  {
LABEL_8:
    v36 = [(__CFString *)v35 stringByAppendingString:@"HDR"];

    v35 = v36;
  }

LABEL_9:
  if (![(__CFString *)v35 length])
  {

    v35 = @"None";
  }

  v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"coordinator %@ %@ %@", identifier, v35, v33];;
  v45 = [(CAMCameraViewController *)self _mediaConversionOptionsForAdjustments:adjustmentsCopy mediaType:1 description:?];
  v37 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v67 = identifier;
    v68 = 2114;
    v69 = v33;
    v70 = 2114;
    v71 = v35;
    _os_log_impl(&dword_1A3640000, v37, OS_LOG_TYPE_DEFAULT, "CVC %{public}@: Rendering %{public}@ for specifier %{public}@", buf, 0x20u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  _imageConversionClient = [(CAMCameraViewController *)self _imageConversionClient];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __114__CAMCameraViewController__renderLivePhotoWithCoordinator_specifiers_photoProperties_videoProperties_adjustments___block_invoke;
  v56[3] = &unk_1E76FF108;
  v64 = Current;
  v56[4] = self;
  v57 = identifier;
  v58 = v33;
  v59 = v48;
  v65 = specifiersCopy;
  v60 = v47;
  v61 = v29;
  v62 = v21;
  v63 = adjustmentsCopy;
  v55 = adjustmentsCopy;
  v40 = v21;
  v41 = v29;
  v42 = v47;
  v43 = v48;
  v44 = identifier;
  [_imageConversionClient convertImageAtSourceURLCollection:v50 toDestinationURLCollection:v32 options:v45 completionHandler:v56];
}

void __114__CAMCameraViewController__renderLivePhotoWithCoordinator_specifiers_photoProperties_videoProperties_adjustments___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = CFAbsoluteTimeGetCurrent() - *(a1 + 96);
  v10 = [*(a1 + 32) _resultProcessingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__CAMCameraViewController__renderLivePhotoWithCoordinator_specifiers_photoProperties_videoProperties_adjustments___block_invoke_2;
  block[3] = &unk_1E76FF180;
  v22 = v8;
  v30 = a2;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v20 = *(a1 + 32);
  v13 = *(a1 + 56);
  *&v14 = v20;
  *(&v14 + 1) = v13;
  *&v15 = v11;
  *(&v15 + 1) = v12;
  v23 = v15;
  v24 = v14;
  v16 = *(a1 + 64);
  v17 = *(a1 + 104);
  v25 = v16;
  v31 = v17;
  v32 = v9;
  v26 = *(a1 + 72);
  v27 = *(a1 + 80);
  v28 = v7;
  v29 = *(a1 + 88);
  v18 = v7;
  v19 = v8;
  dispatch_async(v10, block);
}

void __114__CAMCameraViewController__renderLivePhotoWithCoordinator_specifiers_photoProperties_videoProperties_adjustments___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32) && *(a1 + 112) == 1)
  {
    v2 = os_log_create("com.apple.camera", "Camera");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 120);
    if ((v5 & 2) != 0)
    {
      v6 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      if ((v5 & 1) == 0)
      {
LABEL_12:
        if (![(__CFString *)v6 length])
        {

          v6 = @"None";
        }

        v9 = *(a1 + 128);
        *buf = 138544130;
        *&buf[4] = v4;
        *&buf[12] = 2114;
        *&buf[14] = v3;
        *&buf[22] = 2114;
        v19 = v6;
        v20 = 2048;
        v21 = v9;
        _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "CVC %{public}@: Finished rendering %{public}@ for specifier %{public}@ (took %.3f seconds)", buf, 0x2Au);

LABEL_15:
        v10 = [*(a1 + 72) objectForKeyedSubscript:@"CAMCameraViewControllerVideoDuration"];
        v11 = [*(a1 + 72) objectForKeyedSubscript:@"CAMCameraViewControllerLivePhotoStillDisplayTime"];
        v12 = v11;
        v13 = *(a1 + 56);
        v14 = *(a1 + 80);
        if (v10)
        {
          [v10 CMTimeValue];
          if (v12)
          {
LABEL_17:
            [v12 CMTimeValue];
LABEL_20:
            v15 = [v13 _clientPropertiesForLivePhotoVideoURL:v14 duration:buf stillDisplayTime:v17 error:*(a1 + 32)];
            v16 = [*(a1 + 56) _clientPropertiesForPhotoProperties:*(a1 + 64) withFilteredImageURL:*(a1 + 88) conversionOutputInfo:*(a1 + 96) error:*(a1 + 32)];
            [*(a1 + 56) _handlePhotoProperties:v16 videoProperties:v15 unfilteredPhotoProperties:*(a1 + 64) unfilteredVideoProperties:*(a1 + 72) assetAdjustments:*(a1 + 104) attemptPairingVideo:1 error:*(a1 + 32)];

            return;
          }
        }

        else
        {
          memset(buf, 0, sizeof(buf));
          if (v11)
          {
            goto LABEL_17;
          }
        }

        memset(v17, 0, sizeof(v17));
        goto LABEL_20;
      }
    }

    else
    {
      v6 = &stru_1F1660A30;
      if ((v5 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v8 = [(__CFString *)v6 stringByAppendingString:@"HDR"];

    v6 = v8;
    goto LABEL_12;
  }

  v7 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __114__CAMCameraViewController__renderLivePhotoWithCoordinator_specifiers_photoProperties_videoProperties_adjustments___block_invoke_2_cold_1(a1);
  }

  [*(a1 + 56) _handlePhotoProperties:*(a1 + 64) videoProperties:*(a1 + 72) unfilteredPhotoProperties:0 unfilteredVideoProperties:0 assetAdjustments:0 attemptPairingVideo:1 error:0];
}

- (void)handleReviewButtonReleased:(id)released
{
  presentationDelegate = [(CAMCameraViewController *)self presentationDelegate];
  if (presentationDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [presentationDelegate cameraViewControllerRequestedDismissal:self];
  }

  else
  {
    presentingViewController = [(CAMCameraViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)reviewButton
{
  reviewButton = self->__reviewButton;
  if (!reviewButton)
  {
    v4 = [CAMReviewButton alloc];
    v5 = [(CAMReviewButton *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->__reviewButton;
    self->__reviewButton = v5;

    [(CAMReviewButton *)self->__reviewButton addTarget:self action:sel_handleReviewButtonReleased_ forControlEvents:64];
    reviewButton = self->__reviewButton;
  }

  return reviewButton;
}

- (void)viewfinderViewControllerDidCompleteStillImageCapture:(id)capture
{
  captureCopy = capture;
  v4 = +[CAMCaptureCapabilities capabilities];
  hostProcess = [v4 hostProcess];

  if (hostProcess == 2)
  {
    [(CAMCameraViewController *)self _startShutterButtonSpinning:captureCopy];
  }
}

- (void)_startShutterButtonSpinning:(id)spinning
{
  spinningCopy = spinning;
  objc_initWeak(&location, self);
  if ([spinningCopy isShutterButtonSpinning])
  {
    [spinningCopy setShutterButtonSpinning:1];
  }

  else
  {
    v5 = MEMORY[0x1E695DFF0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__CAMCameraViewController__startShutterButtonSpinning___block_invoke;
    v7[3] = &unk_1E76FF1A8;
    objc_copyWeak(&v9, &location);
    v8 = spinningCopy;
    v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:1.0];
    [(CAMCameraViewController *)self set_spinnerTimer:v6];

    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

void __55__CAMCameraViewController__startShutterButtonSpinning___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _spinnerTimer];

  if (v5 == v3)
  {
    [*(a1 + 32) setShutterButtonSpinning:1];
    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 set_spinnerTimer:0];
  }
}

- (void)_stopShutterButtonSpinning
{
  _spinnerTimer = [(CAMCameraViewController *)self _spinnerTimer];
  [_spinnerTimer invalidate];

  [(CAMCameraViewController *)self set_spinnerTimer:0];
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setShutterButtonSpinning:0];
}

- (CAMCameraCaptureDelegate)captureDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_captureDelegate);

  return WeakRetained;
}

- (CAMCameraViewControllerPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (CAMCameraViewControllerCameraSessionDelegate)cameraSessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraSessionDelegate);

  return WeakRetained;
}

void __122__CAMCameraViewController_persistenceController_didGenerateStillImageLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke_cold_1(uint64_t a1)
{
  v6 = [*(a1 + 72) persistenceUUID];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __122__CAMCameraViewController_persistenceController_didGenerateStillImageLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = CAMPAMediaConversionNameForJobStatus(*(a1 + 96));
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void __114__CAMCameraViewController__renderLivePhotoWithCoordinator_specifiers_photoProperties_videoProperties_adjustments___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = CAMPAMediaConversionNameForJobStatus(*(a1 + 112));
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

@end