@interface JFXVideoCameraController
+ (BOOL)allowsDepthFromDualBackCamera;
+ (double)cameraZoomFactorForUIZoomFactor:(double)factor captureDeviceType:(id)type;
+ (id)sharedInstance;
+ (void)initialize;
- ($2825F4736939C4A6D3AD43837233062D)depthDimensions;
- (BOOL)ARKitEnabled;
- (BOOL)JFX_buildCaptureSessionGraphError:(id *)error;
- (BOOL)JFX_configureCaptureSessionForCaptureDevice:(id)device error:(id *)error;
- (BOOL)JFX_configureCaptureSesstionForPosition:(int64_t)position applyFFCZoom:(BOOL)zoom configureLockedCamera:(id)camera error:(id *)error;
- (BOOL)JFX_configureLockedCaptureDeviceCustomFormat:(id)format applyFFCZoom:(BOOL)zoom;
- (BOOL)JFX_isARKitEnabledCaptureSessionQueue;
- (BOOL)JFX_isUsingInternalMicCaptureSessionQueue;
- (BOOL)JFX_setupCaptureSessionAudioError:(id *)error;
- (BOOL)JFX_setupCaptureSessionDepthError:(id *)error;
- (BOOL)JFX_setupCaptureSessionPhotoError:(id *)error;
- (BOOL)JFX_setupCaptureSessionVideoDataOutputError:(id *)error;
- (BOOL)allowARMetadata;
- (BOOL)audioEnabled;
- (BOOL)cameraSessionRunning;
- (BOOL)depthEnabled;
- (BOOL)faceTrackingEnabled;
- (BOOL)hasFFCZoomEnabled;
- (BOOL)hasValidFaceData;
- (BOOL)isFlashScene;
- (BOOL)sessionRequiresFaceTracking;
- (BOOL)skipARProcessingWhenNoFaceDataIsPresent;
- (CGSize)cameraFrameResolution_dataOutSynchQueue;
- (JFXARMetadata)mostRecentARMetadata;
- (JFXFaceAnchor)JFX_processPixelBufferForFaceTransform:(double)transform cameraIntrinsics:(float)intrinsics forNormalizedFaceRect:(CGFloat)rect withRollAngle:(CGFloat)angle withTimestamp:(CGFloat)timestamp andDuration:(CGFloat)duration detectionOrientation:(float)orientation interfaceOrientation:(uint64_t)self0 needsMirroring:(__CVBuffer *)self1;
- (JFXFaceAnchor)stillImageFaceAnchor;
- (JFXVideoCameraController)init;
- (VCPCaptureAnalysisSession)vcpAnalyzer;
- (__n128)setCameraDeviceIntrinsics_dataOutSynchQueue:(__n128)queue;
- (double)zoomFactor;
- (id)JFX_createPVFrameSetFromPixelBuffer:(__CVBuffer *)buffer withMetadata:(id)metadata timeInterval:(double)interval error:(id *)error;
- (id)JFX_currentAVMetadataFaceObject:(id)object;
- (id)JFX_getFormatForCaptureDevice:(id)device previewDimensions:(id)dimensions colorSpace:(int64_t)space;
- (id)JFX_updateCurrentlyTrackedFaceID:(id)d;
- (id)cameraType;
- (id)createLivePlayerCameraSource;
- (id)debugFrameRateLabel;
- (id)updateCurrentlyTrackedFaceID:(id)d;
- (int64_t)cameraColorSpace;
- (int64_t)cameraMode;
- (int64_t)cameraPosition;
- (int64_t)captureVideoOrientation;
- (void)JFX_audioSessionRouteChangeNotification:(id)notification;
- (void)JFX_captureSessionDidStartRunningNotification:(id)notification;
- (void)JFX_captureSessionDidStopRunningNotification:(id)notification;
- (void)JFX_captureSessionInterruptionEndedNotification:(id)notification;
- (void)JFX_captureSessionRuntimeErrorNotification:(id)notification;
- (void)JFX_captureSessionWasInterruptedNotification:(id)notification;
- (void)JFX_configureCaptureSessionDataOutputSynchronizer;
- (void)JFX_configureCaptureSessionEnableCameraIntrinsicMatrixDelivery;
- (void)JFX_configureCaptureSessionMetadataForCaptureDevice:(id)device;
- (void)JFX_configureCaptureSessionMicrophoneForOmnidirectionalPattern;
- (void)JFX_configureCaptureSessionMicrophoneForPosition:(int64_t)position;
- (void)JFX_configureCaptureSessionPhotoOrientationFromInterfaceOrientation:(int64_t)orientation;
- (void)JFX_configureCaptureSessionPreset;
- (void)JFX_configureCaptureSessionVideoDataOutput;
- (void)JFX_configureLockedCaptureDevice:(id)device;
- (void)JFX_configureLockedCaptureDevice:(id)device minFrameRate:(int)rate maxFrameRate:(int)frameRate;
- (void)JFX_configureLockedCaptureDeviceExposure:(id)exposure exposurePoint:(CGPoint)point;
- (void)JFX_configureLockedCaptureDeviceFocus:(id)focus focusPoint:(CGPoint)point;
- (void)JFX_configureLockedCaptureDeviceForDepth:(id)depth;
- (void)JFX_configureLockedCaptureDeviceFrameRate:(id)rate;
- (void)JFX_notifyVideoDelegatesOfDroppedFrameWithTimeStamp:(id *)stamp;
- (void)JFX_notifyVideoDelegatesOfFrameSetDataOutSynchQueue:(id)queue;
- (void)JFX_observeCaptureSessionNotifications:(id)notifications;
- (void)JFX_orientationMonitorDeviceInterfaceOrientationNotification:(id)notification;
- (void)JFX_processMetadataObjectsDataOutSynchQueue:(id)queue;
- (void)JFX_rampToZoom:(double)zoom rate:(double)rate durationCaptureSessionQueue:(double)queue;
- (void)JFX_resetSessionCaptureSessionQueue;
- (void)JFX_setCaptureDeviceType:(id)type captureDevicePositionCaptureSessionQueue:(int64_t)queue;
- (void)JFX_setIsFlashScene:(BOOL)scene;
- (void)JFX_setZoomFactor_captureSessionQueue:(double)queue;
- (void)JFX_setupARCameraSessionController;
- (void)JFX_startARCameraSessionController;
- (void)JFX_thermalPolicyOrLevelChangedNotification:(id)notification;
- (void)addAudioRenderDelegate:(id)delegate;
- (void)addVideoRenderDelegate:(id)delegate;
- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)capturePhotoWithFlash:(int64_t)flash completion:(id)completion;
- (void)clear;
- (void)dataOutputSynchronizer:(id)synchronizer didOutputSynchronizedDataCollection:(id)collection;
- (void)dealloc;
- (void)didUpdateFrame:(id)frame;
- (void)enableRecordingMovieMode:(BOOL)mode completion:(id)completion;
- (void)minFrameRate:(int *)rate maxFrameRate:(int *)frameRate;
- (void)notifyExternalARKitFaceTrackedImageData:(id)data completion:(id)completion;
- (void)notifyExternalImageData:(id)data completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)preProcessFrameWithPixelBuffer:(__CVBuffer *)buffer metadata:(id)metadata timestamp:(double)timestamp completion:(id)completion;
- (void)prepareCameraForMode:(int64_t)mode position:(int64_t)position completion:(id)completion;
- (void)rampToZoom:(double)zoom duration:(double)duration;
- (void)rampToZoom:(double)zoom rate:(double)rate;
- (void)removeAudioRenderDelegate:(id)delegate async:(BOOL)async;
- (void)removeLivePlayerCameraSource:(id)source;
- (void)removeVideoRenderDelegate:(id)delegate async:(BOOL)async;
- (void)saveToPhotoLibrary:(id)library;
- (void)scaleCurrentZoomFactor:(double)factor;
- (void)setAllowARMetadata:(BOOL)metadata;
- (void)setCameraZoomFactorForUIZoomFactor:(double)factor;
- (void)setCaptureTorchMode:(int64_t)mode completion:(id)completion;
- (void)setFFCZoom:(BOOL)zoom completion:(id)completion;
- (void)setFocusAndExposurePoint:(CGPoint)point;
- (void)setHasValidFaceData:(BOOL)data;
- (void)setMinFrameRate:(int)rate maxFrameRate:(int)frameRate;
- (void)setMostRecentARMetadata:(id)metadata;
- (void)setSessionRequiresFaceTracking:(BOOL)tracking;
- (void)setSkipARProcessingWhenNoFaceDataIsPresent:(BOOL)present;
- (void)setThermalDelegate:(id)delegate;
- (void)setZoomFactor:(double)factor;
- (void)startCameraSession:(id)session;
- (void)stopCameraSession:(id)session;
- (void)stopRampToZoom:(id)zoom;
- (void)supportedFlashModes:(id)modes;
- (void)switchCamera:(id)camera;
- (void)switchCameraToPosition:(int64_t)position applyFFCZoom:(BOOL)zoom configureLockedCamera:(id)camera completion:(id)completion;
- (void)switchCameraToPosition:(int64_t)position completion:(id)completion;
- (void)turnOffMicrophone;
- (void)turnOnMicrophone;
- (void)videoAndAudioOutputSettings:(id)settings;
@end

@implementation JFXVideoCameraController

+ (void)initialize
{
  if (JFX_getFrontAndBackCameras_onceToken != -1)
  {
    +[JFXVideoCameraController initialize];
  }
}

- (JFXVideoCameraController)init
{
  v36.receiver = self;
  v36.super_class = JFXVideoCameraController;
  v2 = [(JFXVideoCameraController *)&v36 init];
  v2->_captureSessionRunning_queryDataQueue = 0;
  v2->_cameraMode_dataOutSynchQueue = 0;
  v2->_cameraMode_queryDataQueue = 0;
  v2->_cameraMode_captureSessionQueue = 0;
  v2->_currentCameraPosition_dataOutSynchQueue = 0;
  v2->_currentCameraPosition_queryDataQueue = 0;
  v2->_currentCameraPosition_captureSessionQueue = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&v2->_cameraVideoZoomFactor_queryDataQueue = _Q0;
  v2->_skipARProcessingWhenNoFaceData_queryDataQueue = 1;
  v2->_runningARKit_dataOutSynchQueue = 0;
  v8 = [MEMORY[0x277CBEB58] set];
  videoDelegates = v2->_videoDelegates;
  v2->_videoDelegates = v8;

  v10 = [MEMORY[0x277CBEB58] set];
  audioDelegates = v2->_audioDelegates;
  v2->_audioDelegates = v10;

  v12 = [MEMORY[0x277CBEB58] set];
  livePlayerSources = v2->_livePlayerSources;
  v2->_livePlayerSources = v12;

  v14 = dispatch_queue_create("com.apple.clips.JFXVideoCameraController.captureSession", 0);
  captureSessionQueue = v2->_captureSessionQueue;
  v2->_captureSessionQueue = v14;

  v16 = dispatch_queue_create("com.apple.clips.JFXVideoCameraController.audioOutput", 0);
  audioOutQueue = v2->_audioOutQueue;
  v2->_audioOutQueue = v16;

  v18 = dispatch_queue_create("com.apple.clips.JFXVideoCameraController.dataOutSync", 0);
  dataOutSynchQueue = v2->_dataOutSynchQueue;
  v2->_dataOutSynchQueue = v18;

  v20 = dispatch_queue_create("com.apple.clips.JFXVideoCameraController.queryDataQueue", MEMORY[0x277D85CD8]);
  queryDataQueue = v2->_queryDataQueue;
  v2->_queryDataQueue = v20;

  v22 = dispatch_queue_create("com.apple.clips.JFXVideoCameraController.videoDelegate", 0);
  videoDelegateQueue = v2->_videoDelegateQueue;
  v2->_videoDelegateQueue = v22;

  v24 = dispatch_queue_create("com.apple.clips.JFXVideoCameraController.audioDelegate", 0);
  audioDelegateQueue = v2->_audioDelegateQueue;
  v2->_audioDelegateQueue = v24;

  v26 = dispatch_queue_create("com.apple.clips.JFXVideoCameraController.livePlayerSource", 0);
  livePlayerSourceQueue = v2->_livePlayerSourceQueue;
  v2->_livePlayerSourceQueue = v26;

  ownerName = v2->_ownerName;
  v2->_ownerName = 0;

  v2->_isRecordingMovie_captureSessionQueue = 0;
  v2->_cachedMovieRecordingTorchMode = 0;
  thermalDelegate = v2->_thermalDelegate;
  v2->_thermalDelegate = 0;

  v2->_allowARMetadata_queryDataQueue = 1;
  v30 = objc_opt_new();
  callObserver = v2->_callObserver;
  v2->_callObserver = v30;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel_JFX_thermalPolicyOrLevelChangedNotification_ name:@"JFXThermalMonitorLevelChangedNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:v2 selector:sel_JFX_thermalPolicyOrLevelChangedNotification_ name:@"JFXThermalPolicyChangedNotification" object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:v2 selector:sel_JFX_orientationMonitorDeviceInterfaceOrientationNotification_ name:@"kJFXOrientationMonitorDeviceInterfaceOrientationNotification" object:0];

  return v2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (context == sAVCapturePhotoOutputIsFlashScene)
  {
    v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    bOOLValue = [v14 BOOLValue];

    [(JFXVideoCameraController *)self JFX_setIsFlashScene:bOOLValue];
  }

  else if (context == sAVCaptureDeviceSystemPressureState)
  {
    [(JFXVideoCameraController *)self JFX_thermalPolicyOrLevelChangedNotification:0];
  }

  else if (context == &sAVCaptureDeviceVideoZoomFactor)
  {
    v16 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    [v16 doubleValue];
    v18 = v17;

    queryDataQueue = self->_queryDataQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__JFXVideoCameraController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_278D7A118;
    block[4] = self;
    block[5] = v18;
    dispatch_barrier_async(queryDataQueue, block);
  }

  else
  {
    v20.receiver = self;
    v20.super_class = JFXVideoCameraController;
    [(JFXVideoCameraController *)&v20 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = JFXVideoCameraController;
  [(JFXVideoCameraController *)&v2 dealloc];
}

- (VCPCaptureAnalysisSession)vcpAnalyzer
{
  vcpAnalyzer = self->_vcpAnalyzer;
  if (!vcpAnalyzer)
  {
    v4 = JFXLog_DebugCamera();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [JFXVideoCameraController vcpAnalyzer];
    }

    v5 = *(MEMORY[0x277CBF2C0] + 16);
    v9[0] = *MEMORY[0x277CBF2C0];
    v9[1] = v5;
    v9[2] = *(MEMORY[0x277CBF2C0] + 32);
    v6 = [MEMORY[0x277D267D8] analyzerForAnalysisTypes:2 withPreferredTransform:v9 properties:0];
    v7 = self->_vcpAnalyzer;
    self->_vcpAnalyzer = v6;

    vcpAnalyzer = self->_vcpAnalyzer;
  }

  return vcpAnalyzer;
}

- (void)clear
{
  dataOutSynchQueue = self->_dataOutSynchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__JFXVideoCameraController_clear__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(dataOutSynchQueue, block);
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__JFXVideoCameraController_clear__block_invoke_2;
  v5[3] = &unk_278D79D20;
  v5[4] = self;
  dispatch_barrier_async(queryDataQueue, v5);
}

uint64_t __33__JFXVideoCameraController_clear__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentFrameSet_dataOutSynchQueue:0];
  v2 = *(a1 + 32);

  return [v2 setCapturedPhotoFrameSet_dataOutSynchQueue:0];
}

uint64_t __33__JFXVideoCameraController_clear__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setMostRecentARMetadata_queryDataQueue:0];
  [*(a1 + 32) setStillImageFaceAnchor_queryDataQueue:0];
  v2 = *(a1 + 32);

  return [v2 setHasValidFaceData_queryDataQueue:0];
}

- (int64_t)cameraMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__JFXVideoCameraController_cameraMode__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryDataQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__JFXVideoCameraController_cameraMode__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cameraMode_queryDataQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)cameraSessionRunning
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__JFXVideoCameraController_cameraSessionRunning__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryDataQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __48__JFXVideoCameraController_cameraSessionRunning__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) captureSessionRunning_queryDataQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)cameraColorSpace
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__JFXVideoCameraController_cameraColorSpace__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryDataQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __44__JFXVideoCameraController_cameraColorSpace__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cameraColorSpace_queryDataQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)audioEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  captureSessionQueue = self->_captureSessionQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__JFXVideoCameraController_audioEnabled__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(captureSessionQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__JFXVideoCameraController_audioEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) JFX_isAudioEnabledCaptureSessionQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)depthEnabled
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  jfx_hasDepthCapableCamera = [currentDevice jfx_hasDepthCapableCamera];

  if (jfx_hasDepthCapableCamera)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    captureSessionQueue = self->_captureSessionQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__JFXVideoCameraController_depthEnabled__block_invoke;
    v8[3] = &unk_278D79C60;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(captureSessionQueue, v8);
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __40__JFXVideoCameraController_depthEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) JFX_isDepthEnabledCaptureSessionQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)hasFFCZoomEnabled
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  jfx_hasTrueDepthFrontCameraCustomZoomFormat = [currentDevice jfx_hasTrueDepthFrontCameraCustomZoomFormat];

  if (jfx_hasTrueDepthFrontCameraCustomZoomFormat)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    captureSessionQueue = self->_captureSessionQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__JFXVideoCameraController_hasFFCZoomEnabled__block_invoke;
    v8[3] = &unk_278D7A3E0;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(captureSessionQueue, v8);
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void __45__JFXVideoCameraController_hasFFCZoomEnabled__block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 24) device];
  if ([v3 jfx_trueDepthCamera])
  {
    v2 = [*(*(a1 + 32) + 8) sessionPreset];
    *(*(*(a1 + 40) + 8) + 24) = [v2 isEqualToString:*MEMORY[0x277CE5990]];
  }
}

- (BOOL)isFlashScene
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__JFXVideoCameraController_isFlashScene__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryDataQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__JFXVideoCameraController_isFlashScene__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isFlashScene_queryDataQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- ($2825F4736939C4A6D3AD43837233062D)depthDimensions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2810000000;
  v9 = "";
  v10 = 0;
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__JFXVideoCameraController_depthDimensions__block_invoke;
  block[3] = &unk_278D7A3E0;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(captureSessionQueue, block);
  v3 = v7[4];
  _Block_object_dispose(&v6, 8);
  return v3;
}

CMVideoDimensions __43__JFXVideoCameraController_depthDimensions__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) JFX_isDepthEnabledCaptureSessionQueue];
  if (result.width)
  {
    v3 = [*(*(a1 + 32) + 24) device];
    v4 = [v3 activeDepthDataFormat];
    v5 = [v4 formatDescription];

    result = CMVideoFormatDescriptionGetDimensions(v5);
    *(*(*(a1 + 40) + 8) + 32) = result;
  }

  return result;
}

- (double)zoomFactor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__JFXVideoCameraController_zoomFactor__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryDataQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__JFXVideoCameraController_zoomFactor__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cameraVideoZoomFactor_queryDataQueue];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)setZoomFactor:(double)factor
{
  captureSessionQueue = self->_captureSessionQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__JFXVideoCameraController_setZoomFactor___block_invoke;
  v4[3] = &unk_278D7A118;
  *&v4[5] = factor;
  v4[4] = self;
  dispatch_async(captureSessionQueue, v4);
}

uint64_t __42__JFXVideoCameraController_setZoomFactor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  [*(a1 + 32) cameraVideoMaxZoomFactor_captureSessionQueue];
  if (v2 > v3)
  {
    [*(a1 + 32) cameraVideoMaxZoomFactor_captureSessionQueue];
    v2 = v4;
  }

  v5 = *(a1 + 32);

  return [v5 JFX_setZoomFactor_captureSessionQueue:v2];
}

- (void)setThermalDelegate:(id)delegate
{
  delegateCopy = delegate;
  captureSessionQueue = self->_captureSessionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__JFXVideoCameraController_setThermalDelegate___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(captureSessionQueue, v7);
}

- (BOOL)ARKitEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  captureSessionQueue = self->_captureSessionQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__JFXVideoCameraController_ARKitEnabled__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(captureSessionQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__JFXVideoCameraController_ARKitEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) JFX_isARKitEnabledCaptureSessionQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setMostRecentARMetadata:(id)metadata
{
  metadataCopy = metadata;
  queryDataQueue = self->_queryDataQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__JFXVideoCameraController_setMostRecentARMetadata___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = metadataCopy;
  v6 = metadataCopy;
  dispatch_barrier_async(queryDataQueue, v7);
}

_BYTE *__52__JFXVideoCameraController_setMostRecentARMetadata___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[188] == 1)
  {
    return [result setMostRecentARMetadata_queryDataQueue:*(a1 + 40)];
  }

  return result;
}

- (JFXARMetadata)mostRecentARMetadata
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__JFXVideoCameraController_mostRecentARMetadata__block_invoke;
  v5[3] = &unk_278D7A3E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryDataQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

_BYTE *__48__JFXVideoCameraController_mostRecentARMetadata__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[188] == 1)
  {
    *(*(*(a1 + 40) + 8) + 40) = [result mostRecentARMetadata_queryDataQueue];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setSessionRequiresFaceTracking:(BOOL)tracking
{
  queryDataQueue = self->_queryDataQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__JFXVideoCameraController_setSessionRequiresFaceTracking___block_invoke;
  v4[3] = &unk_278D79E38;
  v4[4] = self;
  trackingCopy = tracking;
  dispatch_barrier_async(queryDataQueue, v4);
}

- (BOOL)sessionRequiresFaceTracking
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__JFXVideoCameraController_sessionRequiresFaceTracking__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryDataQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __55__JFXVideoCameraController_sessionRequiresFaceTracking__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) sessionRequiresFaceTracking_queryDataQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setSkipARProcessingWhenNoFaceDataIsPresent:(BOOL)present
{
  queryDataQueue = self->_queryDataQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__JFXVideoCameraController_setSkipARProcessingWhenNoFaceDataIsPresent___block_invoke;
  v4[3] = &unk_278D79E38;
  v4[4] = self;
  presentCopy = present;
  dispatch_barrier_async(queryDataQueue, v4);
}

- (BOOL)skipARProcessingWhenNoFaceDataIsPresent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__JFXVideoCameraController_skipARProcessingWhenNoFaceDataIsPresent__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryDataQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __67__JFXVideoCameraController_skipARProcessingWhenNoFaceDataIsPresent__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) skipARProcessingWhenNoFaceData_queryDataQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (JFXFaceAnchor)stillImageFaceAnchor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__JFXVideoCameraController_stillImageFaceAnchor__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryDataQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__JFXVideoCameraController_stillImageFaceAnchor__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) stillImageFaceAnchor_queryDataQueue];

  return MEMORY[0x2821F96F8]();
}

- (void)setAllowARMetadata:(BOOL)metadata
{
  queryDataQueue = self->_queryDataQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__JFXVideoCameraController_setAllowARMetadata___block_invoke;
  v4[3] = &unk_278D79E38;
  v4[4] = self;
  metadataCopy = metadata;
  dispatch_barrier_async(queryDataQueue, v4);
}

void __47__JFXVideoCameraController_setAllowARMetadata___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAllowARMetadata_queryDataQueue:*(a1 + 40)];
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 384);
    *(v2 + 384) = 0;
  }
}

- (BOOL)allowARMetadata
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__JFXVideoCameraController_allowARMetadata__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryDataQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __43__JFXVideoCameraController_allowARMetadata__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) allowARMetadata_queryDataQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setHasValidFaceData:(BOOL)data
{
  queryDataQueue = self->_queryDataQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__JFXVideoCameraController_setHasValidFaceData___block_invoke;
  v4[3] = &unk_278D79E38;
  v4[4] = self;
  dataCopy = data;
  dispatch_barrier_async(queryDataQueue, v4);
}

- (BOOL)hasValidFaceData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__JFXVideoCameraController_hasValidFaceData__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryDataQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __44__JFXVideoCameraController_hasValidFaceData__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hasValidFaceData_queryDataQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)JFX_observeCaptureSessionNotifications:(id)notifications
{
  v4 = MEMORY[0x277CCAB98];
  notificationsCopy = notifications;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter addObserver:self selector:sel_JFX_captureSessionDidStartRunningNotification_ name:*MEMORY[0x277CE5930] object:notificationsCopy];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_JFX_captureSessionDidStopRunningNotification_ name:*MEMORY[0x277CE5938] object:notificationsCopy];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_JFX_captureSessionWasInterruptedNotification_ name:*MEMORY[0x277CE59C8] object:notificationsCopy];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_JFX_captureSessionInterruptionEndedNotification_ name:*MEMORY[0x277CE5948] object:notificationsCopy];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel_JFX_captureSessionRuntimeErrorNotification_ name:*MEMORY[0x277CE59C0] object:notificationsCopy];
}

- (void)JFX_captureSessionDidStartRunningNotification:(id)notification
{
  notificationCopy = notification;
  v5 = JFXLog_DebugCamera();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [JFXVideoCameraController JFX_captureSessionDidStartRunningNotification:];
  }

  queryDataQueue = self->_queryDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__JFXVideoCameraController_JFX_captureSessionDidStartRunningNotification___block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_barrier_async(queryDataQueue, block);
}

- (void)JFX_captureSessionDidStopRunningNotification:(id)notification
{
  notificationCopy = notification;
  v5 = JFXLog_DebugCamera();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [JFXVideoCameraController JFX_captureSessionDidStopRunningNotification:];
  }

  queryDataQueue = self->_queryDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__JFXVideoCameraController_JFX_captureSessionDidStopRunningNotification___block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_barrier_async(queryDataQueue, block);
}

- (void)JFX_captureSessionWasInterruptedNotification:(id)notification
{
  v30 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE5950]];
  integerValue = [v6 integerValue];

  userInfo2 = [notificationCopy userInfo];
  v9 = *MEMORY[0x277CE5958];
  v10 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CE5958]];

  v11 = 0;
  if (integerValue <= 2)
  {
    if (integerValue == 1)
    {
      v14 = kCaptureSessionInterruptionVideoDeviceNotAvailableInBackground;
    }

    else
    {
      if (integerValue != 2)
      {
        goto LABEL_13;
      }

      v14 = kCaptureSessionInterruptionAudioDeviceInUseByAnotherClient;
    }

    goto LABEL_12;
  }

  switch(integerValue)
  {
    case 3:
      v14 = kCaptureSessionInterruptionVideoDeviceInUseByAnotherClient;
LABEL_12:
      v11 = *v14;
      break;
    case 4:
      v14 = kCaptureSessionInterruptionVideoDeviceNotAvailableWithMultipleForegroundApps;
      goto LABEL_12;
    case 5:
      userInfo3 = [notificationCopy userInfo];
      v13 = [userInfo3 objectForKeyedSubscript:v9];

      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@)", @"VideoDeviceNotAvailableDueToSystemPressure", v13];

      break;
  }

LABEL_13:
  v15 = JFXLog_camera();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = notificationCopy;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_242A3B000, v15, OS_LOG_TYPE_DEFAULT, "AVCaptureSessionWasInterruptedNotification: %@\tReason: %@\tAVCaptureSystemPressureState: %@", buf, 0x20u);
  }

  v16 = +[JFXAnalyticsManager sharedInstance];
  [v16 trackEventWithName:v11];

  queryDataQueue = self->_queryDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__JFXVideoCameraController_JFX_captureSessionWasInterruptedNotification___block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_barrier_async(queryDataQueue, block);
  v22[0] = @"JTCaptureSessionInterruptedKey";
  v22[1] = @"JTCaptureSessionReasonInterruptedKey";
  v23[0] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
  v23[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"JTCaptureSessionInterruptedNotification" object:self userInfo:v19];
}

- (void)JFX_captureSessionInterruptionEndedNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = JFXLog_camera();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = notificationCopy;
    _os_log_impl(&dword_242A3B000, v5, OS_LOG_TYPE_DEFAULT, "AVCaptureSessionInterruptionEndedNotification: %@", buf, 0xCu);
  }

  queryDataQueue = self->_queryDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__JFXVideoCameraController_JFX_captureSessionInterruptionEndedNotification___block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_barrier_async(queryDataQueue, block);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = @"JTCaptureSessionInterruptedKey";
  v11 = MEMORY[0x277CBEC28];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [defaultCenter postNotificationName:@"JTCaptureSessionInterruptedNotification" object:self userInfo:v8];
}

- (void)JFX_captureSessionRuntimeErrorNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = JFXLog_camera();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = notificationCopy;
    _os_log_impl(&dword_242A3B000, v5, OS_LOG_TYPE_DEFAULT, "AVCaptureSessionRuntimeErrorNotification: %@", buf, 0xCu);
  }

  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE5940]];
  captureSessionQueue = self->_captureSessionQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__JFXVideoCameraController_JFX_captureSessionRuntimeErrorNotification___block_invoke;
  v11[3] = &unk_278D79C88;
  v12 = v7;
  selfCopy = self;
  v9 = v7;
  v10 = captureSessionQueue;
  dispatch_async(v10, v11);
}

void __71__JFXVideoCameraController_JFX_captureSessionRuntimeErrorNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) code];
  v3 = *(a1 + 40);
  if (v2 == -11819)
  {
    v4 = v3[1];

    [v4 startRunning];
  }

  else
  {
    v5 = [v3 cameraMode_captureSessionQueue];
    v6 = [*(a1 + 40) currentCameraPosition_captureSessionQueue];
    v7 = [MEMORY[0x277CBEB98] setWithSet:*(*(a1 + 40) + 136)];
    v8 = [MEMORY[0x277CBEB98] setWithSet:*(*(a1 + 40) + 152)];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__JFXVideoCameraController_JFX_captureSessionRuntimeErrorNotification___block_invoke_2;
    v11[3] = &unk_278D7B7D8;
    v14 = v5;
    v15 = v6;
    v12 = v7;
    v13 = v8;
    v9 = v8;
    v10 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

void __71__JFXVideoCameraController_JFX_captureSessionRuntimeErrorNotification___block_invoke_2(uint64_t a1)
{
  v2 = +[JFXVideoCameraController sharedInstance];
  [v2 prepareCameraForMode:0 position:0 completion:0];

  v3 = +[JFXVideoCameraController sharedInstance];
  [v3 prepareCameraForMode:*(a1 + 48) position:*(a1 + 56) completion:0];

  [*(a1 + 32) enumerateObjectsUsingBlock:&__block_literal_global_42];
  [*(a1 + 40) enumerateObjectsUsingBlock:&__block_literal_global_69_0];
  v4 = +[JFXVideoCameraController sharedInstance];
  [v4 startCameraSession:&__block_literal_global_72];
}

void __71__JFXVideoCameraController_JFX_captureSessionRuntimeErrorNotification___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[JFXVideoCameraController sharedInstance];
  [v3 addVideoRenderDelegate:v2];
}

void __71__JFXVideoCameraController_JFX_captureSessionRuntimeErrorNotification___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[JFXVideoCameraController sharedInstance];
  [v3 addAudioRenderDelegate:v2];
}

void __71__JFXVideoCameraController_JFX_captureSessionRuntimeErrorNotification___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = JFXLog_DebugCamera();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __71__JFXVideoCameraController_JFX_captureSessionRuntimeErrorNotification___block_invoke_5_cold_1();
  }
}

- (void)JFX_thermalPolicyOrLevelChangedNotification:(id)notification
{
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__JFXVideoCameraController_JFX_thermalPolicyOrLevelChangedNotification___block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(captureSessionQueue, block);
}

void __72__JFXVideoCameraController_JFX_thermalPolicyOrLevelChangedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) device];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__JFXVideoCameraController_JFX_thermalPolicyOrLevelChangedNotification___block_invoke_2;
  v3[3] = &unk_278D7B800;
  v3[4] = *(a1 + 32);
  JFX_configureCaptureDevice(v2, v3);
}

- (void)JFX_orientationMonitorDeviceInterfaceOrientationNotification:(id)notification
{
  v4 = +[JFXOrientationMonitor deviceInterfaceOrientation];
  captureSessionQueue = self->_captureSessionQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__JFXVideoCameraController_JFX_orientationMonitorDeviceInterfaceOrientationNotification___block_invoke;
  v6[3] = &unk_278D7A118;
  v6[4] = self;
  v6[5] = v4;
  dispatch_async(captureSessionQueue, v6);
}

void __89__JFXVideoCameraController_JFX_orientationMonitorDeviceInterfaceOrientationNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __89__JFXVideoCameraController_JFX_orientationMonitorDeviceInterfaceOrientationNotification___block_invoke_2;
  v4[3] = &unk_278D7B828;
  v3 = *(a1 + 40);
  v4[4] = v1;
  v4[5] = v3;
  JFX_configureCaptureSession(v2, v4);
}

- (void)JFX_audioSessionRouteChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CB8220]];
  integerValue = [v5 integerValue];

  captureSessionQueue = self->_captureSessionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__JFXVideoCameraController_JFX_audioSessionRouteChangeNotification___block_invoke;
  v8[3] = &unk_278D7A118;
  v8[4] = self;
  v8[5] = integerValue;
  dispatch_async(captureSessionQueue, v8);
}

void __68__JFXVideoCameraController_JFX_audioSessionRouteChangeNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__JFXVideoCameraController_JFX_audioSessionRouteChangeNotification___block_invoke_2;
  v4[3] = &unk_278D7B828;
  v3 = *(a1 + 40);
  v4[4] = v1;
  v4[5] = v3;
  JFX_configureCaptureSession(v2, v4);
}

void __68__JFXVideoCameraController_JFX_audioSessionRouteChangeNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) JFX_isUsingInternalMicCaptureSessionQueue];
  v5 = *(a1 + 40);
  if (v5 == 2)
  {
    if (v4)
    {
      v7 = JFXLog_DebugCamera();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __68__JFXVideoCameraController_JFX_audioSessionRouteChangeNotification___block_invoke_2_cold_1();
      }

      [*(a1 + 32) JFX_configureCaptureSessionMicrophoneForOmnidirectionalPattern];
    }
  }

  else if (v5 == 1 && (v4 & 1) == 0)
  {
    v6 = JFXLog_DebugCamera();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __68__JFXVideoCameraController_JFX_audioSessionRouteChangeNotification___block_invoke_2_cold_2();
    }

    [v3 setAutomaticallyConfiguresApplicationAudioSession:1];
  }
}

+ (BOOL)allowsDepthFromDualBackCamera
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice jfx_hasDualBackCamera])
  {
    v4 = [standardUserDefaults BOOLForKey:@"allowsDepthDualBackCamera"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[JFXVideoCameraController sharedInstance];
  }

  [s_sharedInstanceLock lock];
  if (!s_sharedInstance)
  {
    v2 = objc_alloc_init(JFXVideoCameraController);
    v3 = s_sharedInstance;
    s_sharedInstance = v2;
  }

  [s_sharedInstanceLock unlock];
  v4 = s_sharedInstance;

  return v4;
}

uint64_t __42__JFXVideoCameraController_sharedInstance__block_invoke()
{
  s_sharedInstanceLock = objc_alloc_init(MEMORY[0x277CCAAF8]);

  return MEMORY[0x2821F96F8]();
}

- (void)prepareCameraForMode:(int64_t)mode position:(int64_t)position completion:(id)completion
{
  completionCopy = completion;
  captureSessionQueue = self->_captureSessionQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__JFXVideoCameraController_prepareCameraForMode_position_completion___block_invoke;
  v14[3] = &unk_278D7B850;
  if (mode)
  {
    v10 = position == 0;
  }

  else
  {
    v10 = 1;
  }

  modeCopy = mode;
  positionCopy = position;
  v11 = v10;
  if (v10)
  {
    v12 = MEMORY[0x277D85DA0];
  }

  else
  {
    v12 = MEMORY[0x277D85D58];
  }

  v14[4] = self;
  v15 = completionCopy;
  v18 = v11;
  v13 = completionCopy;
  v12(captureSessionQueue, v14);
}

void __69__JFXVideoCameraController_prepareCameraForMode_position_completion___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) cameraMode_captureSessionQueue] == *(a1 + 48) && objc_msgSend(*(a1 + 32), "currentCameraPosition_captureSessionQueue") == *(a1 + 56))
  {
LABEL_5:
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = MEMORY[0x277D85CD0];

      dispatch_async(v4, v3);
    }

    return;
  }

  [*(a1 + 32) JFX_resetSessionCaptureSessionQueue];
  if (*(a1 + 64) == 1)
  {
    [s_sharedInstanceLock lock];
    v2 = s_sharedInstance;
    s_sharedInstance = 0;

    [s_sharedInstanceLock unlock];
    goto LABEL_5;
  }

  [*(a1 + 32) setCameraMode_captureSessionQueue:*(a1 + 48)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 112);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__JFXVideoCameraController_prepareCameraForMode_position_completion___block_invoke_3;
  block[3] = &unk_278D7A118;
  v7 = *(a1 + 48);
  block[4] = v5;
  block[5] = v7;
  dispatch_barrier_async(v6, block);
  v8 = *(a1 + 32);
  v9 = *(v8 + 104);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __69__JFXVideoCameraController_prepareCameraForMode_position_completion___block_invoke_4;
  v27[3] = &unk_278D7A118;
  v10 = *(a1 + 48);
  v27[4] = v8;
  v27[5] = v10;
  dispatch_async(v9, v27);
  v11 = *(a1 + 32);
  v26 = 0;
  v12 = [v11 JFX_buildCaptureSessionGraphError:&v26];
  v13 = v26;
  v14 = v13;
  if (!v12)
  {
    v18 = v13;
LABEL_14:
    v20 = JFXLog_camera();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromJFXCameraMode(*(a1 + 48));
      v24 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
      *buf = 138412802;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      v33 = 2112;
      v34 = v18;
      _os_log_error_impl(&dword_242A3B000, v20, OS_LOG_TYPE_ERROR, "error building capture graph for camera mode %@ position: %@\n\t%@", buf, 0x20u);
    }

    [s_sharedInstanceLock lock];
    v21 = s_sharedInstance;
    s_sharedInstance = 0;

    [s_sharedInstanceLock unlock];
    v19 = v18;
    goto LABEL_17;
  }

  v15 = *(a1 + 32);
  v16 = *(a1 + 56);
  v25 = v14;
  v17 = [v15 JFX_configureCaptureSesstionForPosition:v16 applyFFCZoom:1 configureLockedCamera:0 error:&v25];
  v18 = v25;

  if (!v17)
  {
    goto LABEL_14;
  }

  v19 = 0;
  if (v18)
  {
    goto LABEL_14;
  }

LABEL_17:
  v22 = *(a1 + 40);
  if (v22)
  {
    dispatch_async(MEMORY[0x277D85CD0], v22);
  }
}

- (void)startCameraSession:(id)session
{
  sessionCopy = session;
  kdebug_trace();
  captureSessionQueue = self->_captureSessionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__JFXVideoCameraController_startCameraSession___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(captureSessionQueue, v7);
}

void __47__JFXVideoCameraController_startCameraSession___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 8) isRunning] & 1) == 0)
  {
    [*(a1 + 32) JFX_startARCameraSessionController];
    kdebug_trace();
    [*(*(a1 + 32) + 8) startRunning];
    kdebug_trace();
  }

  v2 = +[JTMotionData sharedInstance];
  [v2 startMotion];

  kdebug_trace();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__JFXVideoCameraController_startCameraSession___block_invoke_2;
  block[3] = &unk_278D7A168;
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)stopCameraSession:(id)session
{
  sessionCopy = session;
  kdebug_trace();
  captureSessionQueue = self->_captureSessionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__JFXVideoCameraController_stopCameraSession___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(captureSessionQueue, v7);
}

void __46__JFXVideoCameraController_stopCameraSession___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) isRunning])
  {
    kdebug_trace();
    [*(*(a1 + 32) + 8) stopRunning];
    kdebug_trace();
  }

  v2 = +[JTMotionData sharedInstance];
  [v2 stopMotion];

  v3 = [*(a1 + 32) arCameraSessionController];
  [v3 stopARSession];

  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__JFXVideoCameraController_stopCameraSession___block_invoke_2;
    block[3] = &unk_278D7A168;
    v5 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __46__JFXVideoCameraController_stopCameraSession___block_invoke_2(uint64_t a1)
{
  kdebug_trace();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (id)cameraType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__JFXVideoCameraController_cameraType__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryDataQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __38__JFXVideoCameraController_cameraType__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) cameraType_queryDataQueue];

  return MEMORY[0x2821F96F8]();
}

- (int64_t)cameraPosition
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__JFXVideoCameraController_cameraPosition__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryDataQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __42__JFXVideoCameraController_cameraPosition__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) currentCameraPosition_queryDataQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)captureVideoOrientation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__JFXVideoCameraController_captureVideoOrientation__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryDataQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __51__JFXVideoCameraController_captureVideoOrientation__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) captureVideoOrientation_queryDataQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)switchCamera:(id)camera
{
  cameraCopy = camera;
  captureSessionQueue = self->_captureSessionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__JFXVideoCameraController_switchCamera___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = cameraCopy;
  v6 = cameraCopy;
  dispatch_async(captureSessionQueue, v7);
}

void __41__JFXVideoCameraController_switchCamera___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) currentCameraPosition_captureSessionQueue] == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__JFXVideoCameraController_switchCamera___block_invoke_2;
  v4[3] = &unk_278D7B878;
  v6 = v2;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 switchCameraToPosition:v2 completion:v4];
}

uint64_t __41__JFXVideoCameraController_switchCamera___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v5 = *(a1 + 40);
    if (a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    return (*(result + 16))(result, v6, a2);
  }

  return result;
}

- (void)switchCameraToPosition:(int64_t)position completion:(id)completion
{
  completionCopy = completion;
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__JFXVideoCameraController_switchCameraToPosition_completion___block_invoke;
  block[3] = &unk_278D7B440;
  v10 = completionCopy;
  positionCopy = position;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(captureSessionQueue, block);
}

void __62__JFXVideoCameraController_switchCameraToPosition_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) currentCameraPosition_captureSessionQueue] == *(a1 + 48))
  {
    if (*(a1 + 40))
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__JFXVideoCameraController_switchCameraToPosition_completion___block_invoke_2;
      block[3] = &unk_278D7A168;
      v4 = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    v2 = *(a1 + 32);

    [v2 switchCameraToPosition:? applyFFCZoom:? configureLockedCamera:? completion:?];
  }
}

- (void)switchCameraToPosition:(int64_t)position applyFFCZoom:(BOOL)zoom configureLockedCamera:(id)camera completion:(id)completion
{
  cameraCopy = camera;
  completionCopy = completion;
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__JFXVideoCameraController_switchCameraToPosition_applyFFCZoom_configureLockedCamera_completion___block_invoke;
  block[3] = &unk_278D7B8A0;
  zoomCopy = zoom;
  block[4] = self;
  v16 = cameraCopy;
  v17 = completionCopy;
  positionCopy = position;
  v13 = completionCopy;
  v14 = cameraCopy;
  dispatch_async(captureSessionQueue, block);
}

void __97__JFXVideoCameraController_switchCameraToPosition_applyFFCZoom_configureLockedCamera_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v17 = 0;
  v6 = [v4 JFX_configureCaptureSesstionForPosition:v2 applyFFCZoom:v3 configureLockedCamera:v5 error:&v17];
  v7 = v17;
  v8 = JFXLog_DebugCamera();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    *buf = 138413058;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v7;
    _os_log_debug_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEBUG, "[JFX_configureCaptureSesstionForPosition:%@ applyFFCZoom:%@ configureLockedCamera:error:] result: %@, error: %@", buf, 0x2Au);
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  if (v9 == 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__JFXVideoCameraController_switchCameraToPosition_applyFFCZoom_configureLockedCamera_completion___block_invoke_83;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = *(a1 + 56);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  [*(a1 + 32) setMostRecentARMetadata:0];
  if (*(a1 + 48))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __97__JFXVideoCameraController_switchCameraToPosition_applyFFCZoom_configureLockedCamera_completion___block_invoke_2;
    v13[3] = &unk_278D7ACB0;
    v15 = *(a1 + 48);
    v14 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }
}

void __97__JFXVideoCameraController_switchCameraToPosition_applyFFCZoom_configureLockedCamera_completion___block_invoke_83(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setInteger:*(a1 + 32) forKey:@"JTLastCameraPositionDefault"];
}

+ (double)cameraZoomFactorForUIZoomFactor:(double)factor captureDeviceType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:*MEMORY[0x277CE5860]] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CE5848]))
  {
    factor = factor + factor;
  }

  return factor;
}

- (void)setCameraZoomFactorForUIZoomFactor:(double)factor
{
  captureSessionQueue = self->_captureSessionQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__JFXVideoCameraController_setCameraZoomFactorForUIZoomFactor___block_invoke;
  v4[3] = &unk_278D7A118;
  v4[4] = self;
  *&v4[5] = factor;
  dispatch_async(captureSessionQueue, v4);
}

void __63__JFXVideoCameraController_setCameraZoomFactorForUIZoomFactor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) device];
  v3 = [v2 deviceType];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__JFXVideoCameraController_setCameraZoomFactorForUIZoomFactor___block_invoke_2;
  block[3] = &unk_278D7A458;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  block[4] = v4;
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __63__JFXVideoCameraController_setCameraZoomFactorForUIZoomFactor___block_invoke_2(uint64_t a1)
{
  [objc_opt_class() cameraZoomFactorForUIZoomFactor:*(a1 + 40) captureDeviceType:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 setZoomFactor:?];
}

- (void)scaleCurrentZoomFactor:(double)factor
{
  [(JFXVideoCameraController *)self zoomFactor];
  v6 = v5 * factor;

  [(JFXVideoCameraController *)self setZoomFactor:v6];
}

- (void)setFFCZoom:(BOOL)zoom completion:(id)completion
{
  zoomCopy = zoom;
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__JFXVideoCameraController_setFFCZoom_completion___block_invoke;
  v8[3] = &unk_278D7B8C8;
  v9 = completionCopy;
  v7 = completionCopy;
  [(JFXVideoCameraController *)self switchCameraToPosition:2 applyFFCZoom:zoomCopy configureLockedCamera:0 completion:v8];
}

- (void)rampToZoom:(double)zoom rate:(double)rate
{
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__JFXVideoCameraController_rampToZoom_rate___block_invoke;
  block[3] = &unk_278D7B8F0;
  block[4] = self;
  *&block[5] = zoom;
  *&block[6] = rate;
  dispatch_async(captureSessionQueue, block);
}

- (void)rampToZoom:(double)zoom duration:(double)duration
{
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__JFXVideoCameraController_rampToZoom_duration___block_invoke;
  block[3] = &unk_278D7B8F0;
  block[4] = self;
  *&block[5] = zoom;
  *&block[6] = duration;
  dispatch_async(captureSessionQueue, block);
}

- (void)stopRampToZoom:(id)zoom
{
  zoomCopy = zoom;
  captureSessionQueue = self->_captureSessionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__JFXVideoCameraController_stopRampToZoom___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = zoomCopy;
  v6 = zoomCopy;
  dispatch_async(captureSessionQueue, v7);
}

void __43__JFXVideoCameraController_stopRampToZoom___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) device];
  JFX_configureCaptureDevice(v2, &__block_literal_global_86);

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__JFXVideoCameraController_stopRampToZoom___block_invoke_3;
  v4[3] = &unk_278D7A140;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

uint64_t __43__JFXVideoCameraController_stopRampToZoom___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) zoomFactor];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)minFrameRate:(int *)rate maxFrameRate:(int *)frameRate
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3810000000;
  v18 = "";
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3810000000;
  v11 = "";
  v12 = 0;
  v13 = 0;
  v14 = 0;
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__JFXVideoCameraController_minFrameRate_maxFrameRate___block_invoke;
  block[3] = &unk_278D7B938;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v8;
  dispatch_sync(captureSessionQueue, block);
  *rate = *(v9 + 10) / v9[4];
  *frameRate = *(v16 + 10) / v16[4];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v15, 8);
}

void __54__JFXVideoCameraController_minFrameRate_maxFrameRate___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) device];
  v3 = v2;
  if (v2)
  {
    [v2 activeVideoMinFrameDuration];
  }

  else
  {
    v10 = 0uLL;
    v11 = 0;
  }

  v4 = *(a1[5] + 8);
  *(v4 + 32) = v10;
  *(v4 + 48) = v11;

  v5 = [*(a1[4] + 24) device];
  v6 = v5;
  if (v5)
  {
    [v5 activeVideoMaxFrameDuration];
  }

  else
  {
    v8 = 0uLL;
    v9 = 0;
  }

  v7 = *(a1[6] + 8);
  *(v7 + 32) = v8;
  *(v7 + 48) = v9;
}

- (void)setMinFrameRate:(int)rate maxFrameRate:(int)frameRate
{
  captureSessionQueue = self->_captureSessionQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__JFXVideoCameraController_setMinFrameRate_maxFrameRate___block_invoke;
  v5[3] = &unk_278D7A118;
  v5[4] = self;
  rateCopy = rate;
  frameRateCopy = frameRate;
  dispatch_async(captureSessionQueue, v5);
}

void __57__JFXVideoCameraController_setMinFrameRate_maxFrameRate___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) device];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__JFXVideoCameraController_setMinFrameRate_maxFrameRate___block_invoke_2;
  v3[3] = &unk_278D7B960;
  v3[4] = *(a1 + 32);
  v3[5] = *(a1 + 40);
  JFX_configureCaptureDevice(v2, v3);
}

- (void)setFocusAndExposurePoint:(CGPoint)point
{
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__JFXVideoCameraController_setFocusAndExposurePoint___block_invoke;
  block[3] = &unk_278D7B8F0;
  block[4] = self;
  pointCopy = point;
  dispatch_async(captureSessionQueue, block);
}

void __53__JFXVideoCameraController_setFocusAndExposurePoint___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) device];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__JFXVideoCameraController_setFocusAndExposurePoint___block_invoke_2;
  v3[3] = &unk_278D7B988;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  JFX_configureCaptureDevice(v2, v3);
}

void __53__JFXVideoCameraController_setFocusAndExposurePoint___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  [v3 JFX_configureLockedCaptureDeviceFocus:v6 focusPoint:{v4, v5}];
  [*(a1 + 32) JFX_configureLockedCaptureDeviceExposure:v6 exposurePoint:{*(a1 + 40), *(a1 + 48)}];
}

- (id)debugFrameRateLabel
{
  v7 = 0;
  [(JFXVideoCameraController *)self minFrameRate:&v7 + 4 maxFrameRate:&v7];
  if (HIDWORD(v7) == v7)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithInt:?];
    stringValue = [v2 stringValue];
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    v2 = [MEMORY[0x277CCABB0] numberWithInt:?];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    stringValue = [v4 stringWithFormat:@"%@-%@", v2, v5];
  }

  return stringValue;
}

- (void)videoAndAudioOutputSettings:(id)settings
{
  settingsCopy = settings;
  captureSessionQueue = self->_captureSessionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__JFXVideoCameraController_videoAndAudioOutputSettings___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = settingsCopy;
  v6 = settingsCopy;
  dispatch_async(captureSessionQueue, v7);
}

void __56__JFXVideoCameraController_videoAndAudioOutputSettings___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CE5DA8];
  v3 = [*(*(a1 + 32) + 40) recommendedVideoSettingsForAssetWriterWithOutputFileType:*MEMORY[0x277CE5DA8]];
  v4 = [*(*(a1 + 32) + 48) recommendedAudioSettingsForAssetWriterWithOutputFileType:v2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__JFXVideoCameraController_videoAndAudioOutputSettings___block_invoke_2;
  block[3] = &unk_278D7A320;
  v5 = *(a1 + 40);
  v10 = v4;
  v11 = v5;
  v9 = v3;
  v6 = v4;
  v7 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)setCaptureTorchMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__JFXVideoCameraController_setCaptureTorchMode_completion___block_invoke;
  block[3] = &unk_278D7B440;
  v10 = completionCopy;
  modeCopy = mode;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(captureSessionQueue, block);
}

void __59__JFXVideoCameraController_setCaptureTorchMode_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) device];
  if ([v2 hasTorch])
  {
    v3 = [v2 isTorchModeSupported:*(a1 + 48)];
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    if (v3)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __59__JFXVideoCameraController_setCaptureTorchMode_completion___block_invoke_2;
      v8[3] = &unk_278D7B9B0;
      v4 = *(a1 + 48);
      v8[4] = &v9;
      v8[5] = v4;
      JFX_configureCaptureDevice(v2, v8);
    }
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
  }

  if (*(a1 + 40))
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__JFXVideoCameraController_setCaptureTorchMode_completion___block_invoke_3;
    v5[3] = &unk_278D7B9D8;
    v6 = *(a1 + 40);
    v7 = &v9;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __59__JFXVideoCameraController_setCaptureTorchMode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 setTorchMode:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

- (void)enableRecordingMovieMode:(BOOL)mode completion:(id)completion
{
  completionCopy = completion;
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__JFXVideoCameraController_enableRecordingMovieMode_completion___block_invoke;
  block[3] = &unk_278D7BA20;
  modeCopy = mode;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(captureSessionQueue, block);
}

void __64__JFXVideoCameraController_enableRecordingMovieMode_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == [*(a1 + 32) isRecordingMovie_captureSessionQueue])
  {
    if (*(a1 + 40))
    {
      v2 = *(a1 + 40);
      v3 = MEMORY[0x277D85CD0];

      dispatch_async(v3, v2);
    }
  }

  else
  {
    [*(a1 + 32) setIsRecordingMovie_captureSessionQueue:?];
    v4 = [*(*(a1 + 32) + 24) device];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__JFXVideoCameraController_enableRecordingMovieMode_completion___block_invoke_2;
    v10[3] = &__block_descriptor_33_e25_v16__0__AVCaptureDevice_8l;
    v11 = *(a1 + 48);
    JFX_configureCaptureDevice(v4, v10);
    v5 = [v4 torchMode];
    v6 = *(a1 + 32);
    if (*(a1 + 48) == 1)
    {
      [v6 setCachedMovieRecordingTorchMode:v5];
      if (v5 == 2)
      {
        if ([*(*(a1 + 32) + 72) isFlashScene])
        {
          v5 = 1;
        }

        else
        {
          v5 = 2;
        }
      }
    }

    else
    {
      v5 = [v6 cachedMovieRecordingTorchMode];
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__JFXVideoCameraController_enableRecordingMovieMode_completion___block_invoke_3;
    v8[3] = &unk_278D7ADD0;
    v7 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v7 setCaptureTorchMode:v5 completion:v8];
  }
}

void __64__JFXVideoCameraController_enableRecordingMovieMode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isSmoothAutoFocusSupported])
  {
    [v4 setSmoothAutoFocusEnabled:*(a1 + 32)];
    v3 = [v4 focusMode];
    if ([v4 isFocusModeSupported:v3])
    {
      [v4 setFocusMode:v3];
    }
  }
}

void __64__JFXVideoCameraController_enableRecordingMovieMode_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    dispatch_async(MEMORY[0x277D85CD0], *(a1 + 32));
  }
}

- (void)supportedFlashModes:(id)modes
{
  modesCopy = modes;
  captureSessionQueue = self->_captureSessionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__JFXVideoCameraController_supportedFlashModes___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = modesCopy;
  v6 = modesCopy;
  dispatch_async(captureSessionQueue, v7);
}

void __48__JFXVideoCameraController_supportedFlashModes___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) supportedFlashModes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__JFXVideoCameraController_supportedFlashModes___block_invoke_2;
  v5[3] = &unk_278D7ACB0;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (void)capturePhotoWithFlash:(int64_t)flash completion:(id)completion
{
  completionCopy = completion;
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__JFXVideoCameraController_capturePhotoWithFlash_completion___block_invoke;
  block[3] = &unk_278D7B440;
  block[4] = self;
  v10 = completionCopy;
  flashCopy = flash;
  v8 = completionCopy;
  dispatch_async(captureSessionQueue, block);
}

void __61__JFXVideoCameraController_capturePhotoWithFlash_completion___block_invoke(uint64_t a1)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) JFX_isARKitEnabledCaptureSessionQueue];
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__JFXVideoCameraController_capturePhotoWithFlash_completion___block_invoke_2;
  block[3] = &unk_278D79E38;
  v36 = v2;
  block[4] = v3;
  dispatch_barrier_async(v4, block);
  v5 = *(a1 + 32);
  v6 = *(v5 + 104);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __61__JFXVideoCameraController_capturePhotoWithFlash_completion___block_invoke_3;
  v34[3] = &unk_278D79D20;
  v34[4] = v5;
  dispatch_async(v6, v34);
  v7 = MEMORY[0x245D22230](*(a1 + 40));
  v8 = *(a1 + 32);
  v9 = *(v8 + 128);
  *(v8 + 128) = v7;

  v10 = *MEMORY[0x277CE6310];
  v44[0] = *MEMORY[0x277CE6300];
  v44[1] = v10;
  [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = v33 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v31 != v14)
      {
        objc_enumerationMutation(v11);
      }

      objc_storeStrong((*(a1 + 32) + 120), *(*(&v30 + 1) + 8 * v15));
      v16 = [*(*(a1 + 32) + 72) availablePhotoCodecTypes];
      v17 = [v16 containsObject:*(*(a1 + 32) + 120)];

      if (v17)
      {
        break;
      }

      v18 = *(a1 + 32);
      v19 = *(v18 + 120);
      *(v18 + 120) = 0;

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v30 objects:v43 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v23 = MEMORY[0x277CE5B30];
    v24 = *(*(a1 + 32) + 120);
    v41 = *MEMORY[0x277CE62C8];
    v42 = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v22 = [v23 photoSettingsWithFormat:v25];

    if (!v22)
    {
      goto LABEL_15;
    }

    v26 = [*(a1 + 32) ownerName];

    if (v26)
    {
      v39 = *MEMORY[0x277CD3038];
      v37 = *MEMORY[0x277CD2FF8];
      v27 = [*(a1 + 32) ownerName];
      v38 = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v40 = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      [v22 setMetadata:v29];
    }

    [v22 setMaxPhotoDimensions:{objc_msgSend(*(*(a1 + 32) + 72), "maxPhotoDimensions")}];
    [v22 setFlashMode:*(a1 + 48)];
    [*(*(a1 + 32) + 72) capturePhotoWithSettings:v22 delegate:?];
  }

  else
  {
LABEL_9:
    v20 = *(a1 + 32);
    v21 = *(v20 + 120);
    *(v20 + 120) = 0;

    v22 = v11;
  }

LABEL_15:
}

void __61__JFXVideoCameraController_capturePhotoWithFlash_completion___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v4 = [*(a1 + 32) mostRecentARMetadata_queryDataQueue];
    v3 = [v4 faceAnchor];
    [*(a1 + 32) setStillImageFaceAnchor_queryDataQueue:v3];
  }
}

void __61__JFXVideoCameraController_capturePhotoWithFlash_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) currentFrameSet_dataOutSynchQueue];
  [*(a1 + 32) setCapturedPhotoFrameSet_dataOutSynchQueue:v2];
}

- (id)createLivePlayerCameraSource
{
  v3 = objc_alloc_init(MEMORY[0x277D41678]);
  livePlayerSourceQueue = self->_livePlayerSourceQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__JFXVideoCameraController_createLivePlayerCameraSource__block_invoke;
  v9[3] = &unk_278D79C88;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_async(livePlayerSourceQueue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)removeLivePlayerCameraSource:(id)source
{
  sourceCopy = source;
  livePlayerSourceQueue = self->_livePlayerSourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__JFXVideoCameraController_removeLivePlayerCameraSource___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = sourceCopy;
  v6 = sourceCopy;
  dispatch_async(livePlayerSourceQueue, v7);
}

- (void)addVideoRenderDelegate:(id)delegate
{
  delegateCopy = delegate;
  videoDelegateQueue = self->_videoDelegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__JFXVideoCameraController_addVideoRenderDelegate___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(videoDelegateQueue, v7);
}

- (void)removeVideoRenderDelegate:(id)delegate async:(BOOL)async
{
  asyncCopy = async;
  delegateCopy = delegate;
  v7 = delegateCopy;
  videoDelegateQueue = self->_videoDelegateQueue;
  if (asyncCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__JFXVideoCameraController_removeVideoRenderDelegate_async___block_invoke;
    block[3] = &unk_278D79C88;
    block[4] = self;
    v9 = &v13;
    v13 = delegateCopy;
    dispatch_async(videoDelegateQueue, block);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__JFXVideoCameraController_removeVideoRenderDelegate_async___block_invoke_2;
    v10[3] = &unk_278D79C88;
    v10[4] = self;
    v9 = &v11;
    v11 = delegateCopy;
    dispatch_sync(videoDelegateQueue, v10);
  }
}

- (void)addAudioRenderDelegate:(id)delegate
{
  delegateCopy = delegate;
  audioDelegateQueue = self->_audioDelegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__JFXVideoCameraController_addAudioRenderDelegate___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(audioDelegateQueue, v7);
}

- (void)removeAudioRenderDelegate:(id)delegate async:(BOOL)async
{
  asyncCopy = async;
  delegateCopy = delegate;
  v7 = delegateCopy;
  audioDelegateQueue = self->_audioDelegateQueue;
  if (asyncCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__JFXVideoCameraController_removeAudioRenderDelegate_async___block_invoke;
    block[3] = &unk_278D79C88;
    block[4] = self;
    v9 = &v13;
    v13 = delegateCopy;
    dispatch_async(audioDelegateQueue, block);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__JFXVideoCameraController_removeAudioRenderDelegate_async___block_invoke_2;
    v10[3] = &unk_278D79C88;
    v10[4] = self;
    v9 = &v11;
    v11 = delegateCopy;
    dispatch_sync(audioDelegateQueue, v10);
  }
}

- (void)saveToPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (libraryCopy)
  {
    v4 = dispatch_semaphore_create(0);
    v5 = JFXLog_DebugCamera();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [JFXVideoCameraController saveToPhotoLibrary:];
    }

    mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedPhotoLibrary];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__JFXVideoCameraController_saveToPhotoLibrary___block_invoke;
    v11[3] = &unk_278D79D20;
    v12 = libraryCopy;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__JFXVideoCameraController_saveToPhotoLibrary___block_invoke_2;
    v8[3] = &unk_278D7BA48;
    v9 = v12;
    v10 = v4;
    v7 = v4;
    [mEMORY[0x277CD9948] performChanges:v11 completionHandler:v8];

    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __47__JFXVideoCameraController_saveToPhotoLibrary___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CD97B0] creationRequestForAssetFromVideoAtFileURL:*(a1 + 32)];
}

void __47__JFXVideoCameraController_saveToPhotoLibrary___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = JFXLog_DebugCamera();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = @"Success";
    if (!a2)
    {
      v8 = v5;
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_debug_impl(&dword_242A3B000, v6, OS_LOG_TYPE_DEBUG, "Finished saving %@. %@", &v9, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)preProcessFrameWithPixelBuffer:(__CVBuffer *)buffer metadata:(id)metadata timestamp:(double)timestamp completion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  CMTimeMakeWithSeconds(&v20, timestamp, 1000000000);
  time = v20;
  CMTimeGetSeconds(&time);
  kdebug_trace();
  CVPixelBufferRetain(buffer);
  dataOutSynchQueue = self->_dataOutSynchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__JFXVideoCameraController_preProcessFrameWithPixelBuffer_metadata_timestamp_completion___block_invoke;
  v15[3] = &unk_278D7BA70;
  v15[4] = self;
  v16 = metadataCopy;
  timestampCopy = timestamp;
  v17 = completionCopy;
  bufferCopy = buffer;
  v13 = completionCopy;
  v14 = metadataCopy;
  dispatch_async(dataOutSynchQueue, v15);
}

void __89__JFXVideoCameraController_preProcessFrameWithPixelBuffer_metadata_timestamp_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v11 = 0;
  v6 = [v3 JFX_createPVFrameSetFromPixelBuffer:v2 withMetadata:v4 timeInterval:&v11 error:v5];
  v7 = v11;
  CVPixelBufferRelease(*(a1 + 56));
  CMTimeMakeWithSeconds(&v10, *(a1 + 64), 1000000000);
  time = v10;
  CMTimeGetSeconds(&time);
  kdebug_trace();
  if (v7)
  {
    v8 = JFXLog_camera();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __89__JFXVideoCameraController_preProcessFrameWithPixelBuffer_metadata_timestamp_completion___block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) JFX_notifyVideoDelegatesOfFrameSetDataOutSynchQueue:v6];
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v7);
  }
}

- (void)notifyExternalARKitFaceTrackedImageData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  [dataCopy cameraIntrinsics];
  dataOutSynchQueue = self->_dataOutSynchQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__JFXVideoCameraController_notifyExternalARKitFaceTrackedImageData_completion___block_invoke;
  v17[3] = &unk_278D7BA98;
  selfCopy = self;
  v27 = dataCopy;
  v18 = v9;
  v17[4] = v10;
  v19 = 0;
  v21 = v11;
  v20 = v12;
  v22 = 0;
  v24 = v13;
  v23 = v14;
  v25 = 0;
  v28 = completionCopy;
  v15 = completionCopy;
  v16 = dataCopy;
  dispatch_async(dataOutSynchQueue, v17);
}

uint64_t __79__JFXVideoCameraController_notifyExternalARKitFaceTrackedImageData_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 80) setCaptureVideoOrientation_dataOutSynchQueue:{objc_msgSend(*(a1 + 88), "orientation")}];
  [*(a1 + 80) setCameraDeviceIntrinsics_dataOutSynchQueue:{*(a1 + 32), *(a1 + 48), *(a1 + 64)}];
  Width = CVPixelBufferGetWidth([*(a1 + 88) pixelBuffer]);
  [*(a1 + 80) setCameraFrameResolution_dataOutSynchQueue:{Width, CVPixelBufferGetHeight(objc_msgSend(*(a1 + 88), "pixelBuffer"))}];
  [*(a1 + 80) JFX_setCaptureDeviceType:0 captureDevicePositionCaptureSessionQueue:{objc_msgSend(*(a1 + 88), "cameraPosition")}];
  if ([*(a1 + 88) hasValidFaceData])
  {
    v3 = [*(a1 + 80) faceTrackingEnabled];
  }

  else
  {
    v3 = 0;
  }

  [*(a1 + 80) setHasValidFaceData:v3];
  if ([*(a1 + 80) sessionRequiresFaceTracking])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(a1 + 88) requiresFaceTracking];
  }

  v5 = [*(a1 + 80) skipARProcessingWhenNoFaceDataIsPresent];
  v6 = *(a1 + 80);
  if (!v5 || (v3 & v4 & 1) != 0)
  {
    if (([*(a1 + 80) JFX_isARKitEnabledCaptureSessionQueue] & 1) == 0)
    {
      [*(a1 + 80) JFX_setupARCameraSessionController];
    }

    [*(a1 + 80) JFX_startARCameraSessionController];
    result = *(a1 + 96);
    if (result)
    {
      v9 = *(result + 16);

      return v9();
    }
  }

  else
  {
    v7 = [*(a1 + 88) pixelBuffer];
    [*(a1 + 88) timestamp];

    return [v6 preProcessFrameWithPixelBuffer:v7 metadata:0 timestamp:0 completion:?];
  }

  return result;
}

- (void)notifyExternalImageData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  [dataCopy cameraIntrinsics];
  dataOutSynchQueue = self->_dataOutSynchQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__JFXVideoCameraController_notifyExternalImageData_completion___block_invoke;
  v17[3] = &unk_278D7BA98;
  selfCopy = self;
  v27 = dataCopy;
  v18 = v9;
  v17[4] = v10;
  v19 = 0;
  v21 = v11;
  v20 = v12;
  v22 = 0;
  v24 = v13;
  v23 = v14;
  v25 = 0;
  v28 = completionCopy;
  v15 = completionCopy;
  v16 = dataCopy;
  dispatch_async(dataOutSynchQueue, v17);
}

void __63__JFXVideoCameraController_notifyExternalImageData_completion___block_invoke(uint64_t a1)
{
  v42[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 80) setCaptureVideoOrientation_dataOutSynchQueue:{objc_msgSend(*(a1 + 88), "orientation")}];
  [*(a1 + 80) setCameraDeviceIntrinsics_dataOutSynchQueue:{*(a1 + 32), *(a1 + 48), *(a1 + 64)}];
  Width = CVPixelBufferGetWidth([*(a1 + 88) pixelBuffer]);
  [*(a1 + 80) setCameraFrameResolution_dataOutSynchQueue:{Width, CVPixelBufferGetHeight(objc_msgSend(*(a1 + 88), "pixelBuffer"))}];
  [*(a1 + 80) JFX_setCaptureDeviceType:0 captureDevicePositionCaptureSessionQueue:{objc_msgSend(*(a1 + 88), "cameraPosition")}];
  if ([*(a1 + 88) hasValidFaceData])
  {
    v3 = [*(a1 + 80) faceTrackingEnabled];
  }

  else
  {
    v3 = 0;
  }

  [*(a1 + 80) setHasValidFaceData:v3];
  if ([*(a1 + 80) sessionRequiresFaceTracking])
  {
    if (!v3)
    {
LABEL_6:
      v4 = 0;
      goto LABEL_10;
    }
  }

  else if ((v3 & [*(a1 + 88) requiresFaceTracking] & 1) == 0)
  {
    goto LABEL_6;
  }

  [*(a1 + 88) normalizedFaceRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [*(a1 + 88) rollAngle];
  memset(&v40, 0, sizeof(v40));
  [*(a1 + 88) timestamp];
  CMTimeMakeWithSeconds(&v40, v13, 1000000);
  memset(&v39, 0, sizeof(v39));
  CMTimeMake(&v39, 1, [*(a1 + 88) captureFramesPerSecond]);
  v43.origin.x = v6;
  v43.origin.y = v8;
  v43.size.width = v10;
  v43.size.height = v12;
  v4 = 0;
  if (!CGRectEqualToRect(v43, *MEMORY[0x277CBF3A0]))
  {
    v14 = *(a1 + 80);
    v15 = [*(a1 + 88) pixelBuffer];
    [*(a1 + 88) cameraIntrinsics];
    v38 = v40;
    v37 = v39;
    v4 = [v14 JFX_processPixelBufferForFaceTransform:v15 cameraIntrinsics:&v38 forNormalizedFaceRect:&v37 withRollAngle:4 withTimestamp:1 andDuration:1 detectionOrientation:? interfaceOrientation:? needsMirroring:?];
  }

LABEL_10:
  [*(a1 + 88) cameraIntrinsics];
  HIDWORD(v16) = 0;
  HIDWORD(v17) = 0;
  v33 = v17;
  v34 = v16;
  HIDWORD(v18) = 0;
  v32 = v18;
  v19 = [JFXARMetadata alloc];
  v20 = v19;
  if (v4)
  {
    v21 = [(JFXARMetadata *)v19 initWithFaceAnchor:v4 cameraIntrinsics:*&v34, *&v33, *&v32];
  }

  else
  {
    [*(a1 + 80) cameraFrameResolution_dataOutSynchQueue];
    v21 = [(JFXARMetadata *)v20 initWithAnchorTransform:*MEMORY[0x277D860B8] cameraTransform:*(MEMORY[0x277D860B8] + 16) cameraIntrinsics:*(MEMORY[0x277D860B8] + 32) cameraImageResolution:*(MEMORY[0x277D860B8] + 48), *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48), v34, v33, v32, v22, v23];
  }

  v24 = v21;
  v25 = *(a1 + 80);
  v26 = [*(a1 + 88) pixelBuffer];
  v41 = @"PVFrameSetMetadataARMetadataKey";
  v42[0] = v24;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  [*(a1 + 88) timestamp];
  v29 = v28;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __63__JFXVideoCameraController_notifyExternalImageData_completion___block_invoke_2;
  v35[3] = &unk_278D7BAC0;
  v35[4] = *(a1 + 80);
  v30 = v24;
  v36 = v30;
  [v25 preProcessFrameWithPixelBuffer:v26 metadata:v27 timestamp:v35 completion:v29];

  v31 = *(a1 + 96);
  if (v31)
  {
    (*(v31 + 16))();
  }
}

uint64_t __63__JFXVideoCameraController_notifyExternalImageData_completion___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) setMostRecentARMetadata:*(result + 40)];
  }

  return result;
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  CFRetain(buffer);
  audioDelegateQueue = self->_audioDelegateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__JFXVideoCameraController_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke;
  v8[3] = &unk_278D7A118;
  v8[4] = self;
  v8[5] = buffer;
  dispatch_async(audioDelegateQueue, v8);
}

void __79__JFXVideoCameraController_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 152) allObjects];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__JFXVideoCameraController_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke_2;
  v5[3] = &unk_278D7BAE8;
  v6 = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = *(*(a1 + 32) + 160);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__JFXVideoCameraController_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke_4;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 40);
  dispatch_async(v3, block);
}

void __79__JFXVideoCameraController_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 160);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__JFXVideoCameraController_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke_3;
  v7[3] = &unk_278D7A118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)dataOutputSynchronizer:(id)synchronizer didOutputSynchronizedDataCollection:(id)collection
{
  collectionCopy = collection;
  v6 = [collectionCopy objectForKeyedSubscript:self->_videoOutput];

  if (!v6)
  {
    goto LABEL_61;
  }

  kdebug_trace();
  v7 = [collectionCopy objectForKeyedSubscript:self->_videoOutput];
  sampleBufferWasDropped = [v7 sampleBufferWasDropped];
  sampleBuffer = [v7 sampleBuffer];
  v10 = sampleBuffer;
  if (sampleBufferWasDropped)
  {
    v11 = CMGetAttachment(sampleBuffer, *MEMORY[0x277CC06C8], 0);
    v12 = v11;
    if (v11 && !CFEqual(v11, *MEMORY[0x277CC0770]) && !CFEqual(v12, *MEMORY[0x277CC0778]))
    {
      CFEqual(v12, *MEMORY[0x277CC0768]);
    }

    kdebug_trace();
    v13 = JFXLog_DebugCamera();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [JFXVideoCameraController dataOutputSynchronizer:didOutputSynchronizedDataCollection:];
    }

    memset(&v81, 0, sizeof(v81));
    CMSampleBufferGetPresentationTimeStamp(&v81, v10);
    v80 = v81;
    [(JFXVideoCameraController *)self JFX_notifyVideoDelegatesOfDroppedFrameWithTimeStamp:&v80];
    v10 = 0;
  }

  if (self->_depthOutput)
  {
    v14 = [collectionCopy objectForKeyedSubscript:?];
    if ([v14 depthDataWasDropped])
    {
      [v14 droppedReason];
      kdebug_trace();
      v15 = JFXLog_DebugCamera();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [JFXVideoCameraController dataOutputSynchronizer:v14 didOutputSynchronizedDataCollection:?];
      }

      depthData = 0;
      LOBYTE(sampleBufferWasDropped) = 1;
    }

    else
    {
      depthData = [v14 depthData];
    }
  }

  else
  {
    depthData = 0;
  }

  [(JFXVideoCameraController *)self setPvDetectedFacesArray_dataOutSynchQueue:0];
  [(JFXVideoCameraController *)self setMetadataFaceObjectsArray_dataOutSynchQueue:0];
  [(JFXVideoCameraController *)self setMetadataTrackedFacesArray_dataOutSynchQueue:0];
  v17 = [collectionCopy objectForKeyedSubscript:self->_metadataOutput];
  metadataObjectTypes = [(AVCaptureMetadataOutput *)self->_metadataOutput metadataObjectTypes];
  v76 = metadataObjectTypes;
  if (v17)
  {
    metadataObjects = [v17 metadataObjects];
    [(JFXVideoCameraController *)self JFX_processMetadataObjectsDataOutSynchQueue:metadataObjects];
LABEL_26:

    goto LABEL_27;
  }

  if ([metadataObjectTypes containsObject:*MEMORY[0x277CE5A88]])
  {
    metadataObjects = JFXLog_DebugCamera();
    if (os_log_type_enabled(metadataObjects, OS_LOG_TYPE_DEBUG))
    {
      [JFXVideoCameraController dataOutputSynchronizer:didOutputSynchronizedDataCollection:];
    }

    LOBYTE(sampleBufferWasDropped) = 1;
    goto LABEL_26;
  }

LABEL_27:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  pvDetectedFacesArray_dataOutSynchQueue = [(JFXVideoCameraController *)self pvDetectedFacesArray_dataOutSynchQueue];
  v22 = [pvDetectedFacesArray_dataOutSynchQueue count];

  if (v22)
  {
    pvDetectedFacesArray_dataOutSynchQueue2 = [(JFXVideoCameraController *)self pvDetectedFacesArray_dataOutSynchQueue];
    v24 = [pvDetectedFacesArray_dataOutSynchQueue2 copy];
    [dictionary setObject:v24 forKeyedSubscript:*MEMORY[0x277D41A60]];
  }

  if ((sampleBufferWasDropped & 1) == 0)
  {
    v25 = [objc_alloc(MEMORY[0x277D415D8]) initWithSampleBuffer:v10];
    if (depthData)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v27 = [standardUserDefaults BOOLForKey:@"JFXDepthPreQuantization"];

      if (v27)
      {
        depthDataMap = [depthData depthDataMap];
        if (depthDataMap)
        {
          v29 = v25;
          v30 = copySimulatedL010RoundtripImage(depthDataMap);
          if (v30)
          {
            v31 = v30;
            v79 = 0;
            v32 = [depthData depthDataByReplacingDepthDataMapWithPixelBuffer:v30 error:&v79];
            v74 = v79;
            if (v74)
            {
              v72 = v32;
              v33 = JFXLog_camera();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                [JFXVideoCameraController dataOutputSynchronizer:didOutputSynchronizedDataCollection:];
              }

              v32 = v72;
            }

            else
            {

              depthData = v32;
            }

            CVPixelBufferRelease(v31);
          }

          v25 = v29;
        }
      }
    }

    v75 = v25;
    v34 = [objc_alloc(MEMORY[0x277D41608]) initWithColorBuffer:v25 depthData:depthData metadata:dictionary];
    if (self->_runningARKit_dataOutSynchQueue)
    {
      if ([v76 containsObject:*MEMORY[0x277CE5A88]])
      {
        metadataTrackedFacesArray_dataOutSynchQueue = [(JFXVideoCameraController *)self metadataTrackedFacesArray_dataOutSynchQueue];
        v36 = [metadataTrackedFacesArray_dataOutSynchQueue count];

        if (v36)
        {
          arCameraSessionController = [(JFXVideoCameraController *)self arCameraSessionController];
          metadataTrackedFacesArray_dataOutSynchQueue2 = [(JFXVideoCameraController *)self metadataTrackedFacesArray_dataOutSynchQueue];
          v39 = [metadataTrackedFacesArray_dataOutSynchQueue2 copy];
          array = [MEMORY[0x277CBEA60] array];
          [arCameraSessionController provideSensorFrameSet:v34 trackedFacesMetadata:v39 faceObjectsMetadata:array];
        }

        else
        {
          v68 = JFXLog_DebugCamera();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            [JFXVideoCameraController dataOutputSynchronizer:didOutputSynchronizedDataCollection:];
          }
        }
      }
    }

    else
    {
      if ([(JFXVideoCameraController *)self faceTrackingEnabled])
      {
        v69 = v34;
        metadataFaceObjectsArray_dataOutSynchQueue = [(JFXVideoCameraController *)self metadataFaceObjectsArray_dataOutSynchQueue];
        v42 = [metadataFaceObjectsArray_dataOutSynchQueue copy];
        v43 = [(JFXVideoCameraController *)self JFX_currentAVMetadataFaceObject:v42];

        v44 = 0.0;
        if ([v43 hasRollAngle])
        {
          [v43 rollAngle];
          v44 = v45;
        }

        [(JFXVideoCameraController *)self cameraDeviceIntrinsics_dataOutSynchQueue];
        HIDWORD(v46) = 0;
        HIDWORD(v47) = 0;
        v71 = v47;
        v73 = v46;
        HIDWORD(v48) = 0;
        v70 = v48;
        [v43 bounds];
        x = v82.origin.x;
        y = v82.origin.y;
        width = v82.size.width;
        height = v82.size.height;
        if (CGRectEqualToRect(v82, *MEMORY[0x277CBF3A0]) || (ImageBuffer = CMSampleBufferGetImageBuffer(v10), memset(&v81, 0, sizeof(v81)), CMSampleBufferGetPresentationTimeStamp(&v81, v10), memset(&v80, 0, sizeof(v80)), CMSampleBufferGetDuration(&v80, v10), v54 = +[JFXOrientationMonitor interfaceOrientation], v55 = [(JFXVideoCameraController *)self captureVideoOrientation_dataOutSynchQueue], v78 = v81, v77 = v80, *&v56 = v44, [(JFXVideoCameraController *)self JFX_processPixelBufferForFaceTransform:ImageBuffer cameraIntrinsics:&v78 forNormalizedFaceRect:&v77 withRollAngle:v55 withTimestamp:v54 andDuration:1 detectionOrientation:*&v73 interfaceOrientation:*&v71 needsMirroring:*&v70, x, y, width, height, v56], (v57 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v60 = [JFXARMetadata alloc];
          [(JFXVideoCameraController *)self cameraFrameResolution_dataOutSynchQueue];
          v59 = [(JFXARMetadata *)v60 initWithAnchorTransform:*MEMORY[0x277D860B8] cameraTransform:*(MEMORY[0x277D860B8] + 16) cameraIntrinsics:*(MEMORY[0x277D860B8] + 32) cameraImageResolution:*(MEMORY[0x277D860B8] + 48), *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48), v73, v71, v70, v61, v62];
        }

        else
        {
          v58 = v57;
          v59 = [[JFXARMetadata alloc] initWithFaceAnchor:v57 cameraIntrinsics:*&v73, *&v71, *&v70];
        }

        [dictionary setObject:v59 forKeyedSubscript:@"PVFrameSetMetadataARMetadataKey"];
        [(JFXVideoCameraController *)self setMostRecentARMetadata:v59];

        v34 = v69;
      }

      v63 = CMSampleBufferGetImageBuffer(v10);
      v64 = CVBufferCopyAttachments(v63, kCVAttachmentMode_ShouldPropagate);
      Value = CFDictionaryGetValue(v64, *MEMORY[0x277CC4C00]);
      v66 = CFDictionaryGetValue(v64, *MEMORY[0x277CC4CC0]);
      if (!Value || !v66)
      {
        rec709GammaColorSpace = [MEMORY[0x277D415E0] rec709GammaColorSpace];
        [rec709GammaColorSpace jfx_attachColorSpaceToPixelBuffer:v63];
      }

      if (v64)
      {
        CFRelease(v64);
      }

      [v34 setMetadataDict:dictionary];
      [(JFXVideoCameraController *)self JFX_notifyVideoDelegatesOfFrameSetDataOutSynchQueue:v34];
    }
  }

  kdebug_trace();

LABEL_61:
}

- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error
{
  photoCopy = photo;
  errorCopy = error;
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__JFXVideoCameraController_captureOutput_didFinishProcessingPhoto_error___block_invoke;
  block[3] = &unk_278D7A600;
  block[4] = self;
  v13 = errorCopy;
  v14 = photoCopy;
  v10 = photoCopy;
  v11 = errorCopy;
  dispatch_async(captureSessionQueue, block);
}

void __73__JFXVideoCameraController_captureOutput_didFinishProcessingPhoto_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  v4 = v3 == *MEMORY[0x277CE6300];
  *(v2 + 120) = 0;

  v5 = MEMORY[0x245D22230](*(*(a1 + 32) + 128));
  v6 = *(a1 + 32);
  v7 = *(v6 + 128);
  *(v6 + 128) = 0;

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 104);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__JFXVideoCameraController_captureOutput_didFinishProcessingPhoto_error___block_invoke_2;
  block[3] = &unk_278D7BB10;
  block[4] = v9;
  v13 = v8;
  v16 = v4;
  v14 = *(a1 + 48);
  v15 = v5;
  v11 = v5;
  dispatch_async(v10, block);
}

void __73__JFXVideoCameraController_captureOutput_didFinishProcessingPhoto_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) capturedPhotoFrameSet_dataOutSynchQueue];
  [*(a1 + 32) setCapturedPhotoFrameSet_dataOutSynchQueue:0];
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__JFXVideoCameraController_captureOutput_didFinishProcessingPhoto_error___block_invoke_3;
  block[3] = &unk_278D7BB10;
  v6 = v2;
  v7 = *(a1 + 40);
  v10 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v4 = v2;
  dispatch_async(v3, block);
}

void __73__JFXVideoCameraController_captureOutput_didFinishProcessingPhoto_error___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v3;
LABEL_5:

    v5 = 0;
    v2 = 0;
    goto LABEL_6;
  }

  v11 = 0;
  v5 = [JFXMediaURLManager capturedPhotoURL:&v11 isHEIF:*(a1 + 64)];
  v6 = v11;
  if (v6)
  {
    v4 = v6;

    goto LABEL_5;
  }

  v7 = [*(a1 + 48) fileDataRepresentation];
  v10 = 0;
  v8 = [v7 writeToURL:v5 options:1 error:&v10];
  v9 = v10;
  v4 = v9;
  if (!v8 || v9)
  {

    v5 = 0;
    v2 = 0;
  }

LABEL_6:
  (*(*(a1 + 56) + 16))();
}

- (void)JFX_processMetadataObjectsDataOutSynchQueue:(id)queue
{
  queueCopy = queue;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__16;
  v36 = __Block_byref_object_dispose__16;
  v37 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __72__JFXVideoCameraController_JFX_processMetadataObjectsDataOutSynchQueue___block_invoke;
  v25[3] = &unk_278D7BB60;
  v8 = array2;
  v26 = v8;
  selfCopy = self;
  v9 = array;
  v28 = v9;
  v30 = v38;
  v31 = &v32;
  v10 = array3;
  v29 = v10;
  [queueCopy enumerateObjectsUsingBlock:v25];
  if ([(JFXVideoCameraController *)self currentCameraPosition_dataOutSynchQueue]== 2)
  {
    v11 = v33[5];
    if (v11)
    {
      [v11 bounds];
      x = v40.origin.x;
      y = v40.origin.y;
      width = v40.size.width;
      height = v40.size.height;
      MidX = CGRectGetMidX(v40);
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = width;
      v41.size.height = height;
      MidY = CGRectGetMidY(v41);
      captureSessionQueue = self->_captureSessionQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__JFXVideoCameraController_JFX_processMetadataObjectsDataOutSynchQueue___block_invoke_3;
      block[3] = &unk_278D7B8F0;
      block[4] = self;
      *&block[5] = MidX;
      *&block[6] = MidY;
      dispatch_async(captureSessionQueue, block);
    }
  }

  queryDataQueue = self->_queryDataQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __72__JFXVideoCameraController_JFX_processMetadataObjectsDataOutSynchQueue___block_invoke_5;
  v23[3] = &unk_278D7A3E0;
  v23[4] = self;
  v23[5] = v38;
  dispatch_barrier_async(queryDataQueue, v23);
  v20 = [v9 copy];
  [(JFXVideoCameraController *)self setPvDetectedFacesArray_dataOutSynchQueue:v20];

  v21 = [v8 copy];
  [(JFXVideoCameraController *)self setMetadataFaceObjectsArray_dataOutSynchQueue:v21];

  v22 = [v10 copy];
  [(JFXVideoCameraController *)self setMetadataTrackedFacesArray_dataOutSynchQueue:v22];

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(v38, 8);
}

void __72__JFXVideoCameraController_JFX_processMetadataObjectsDataOutSynchQueue___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 type];
  v6 = [v5 isEqualToString:*MEMORY[0x277CE5A50]];

  v7 = [v4 type];
  v8 = [v7 isEqualToString:*MEMORY[0x277CE5A88]];

  if (v6)
  {
    v9 = v4;
    [*(a1 + 32) addObject:v9];
    v10 = MakePVFaceDetection(v9, [*(a1 + 40) captureVideoOrientation_dataOutSynchQueue]);
    [*(a1 + 48) addObject:v10];
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v11 = *(*(a1 + 72) + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    if (!v13)
    {
      objc_storeStrong(v12, a2);
    }
  }

  else if (v8)
  {
    v14 = v4;
    [*(a1 + 56) addObject:v14];
    v15 = [v14 payload];
    if ([v15 count])
    {
      v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277CECEE0]];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __72__JFXVideoCameraController_JFX_processMetadataObjectsDataOutSynchQueue___block_invoke_2;
      v17[3] = &unk_278D7BB38;
      v17[4] = *(a1 + 64);
      [v16 enumerateObjectsUsingBlock:v17];
    }
  }
}

void __72__JFXVideoCameraController_JFX_processMetadataObjectsDataOutSynchQueue___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *MEMORY[0x277CECE60];
  v11 = v6;
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CECE60]];

  if (v8)
  {
    v9 = [v11 objectForKeyedSubscript:v7];
    v10 = [v9 intValue];

    *(*(*(a1 + 32) + 8) + 24) = v10 == 0;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __72__JFXVideoCameraController_JFX_processMetadataObjectsDataOutSynchQueue___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) device];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__JFXVideoCameraController_JFX_processMetadataObjectsDataOutSynchQueue___block_invoke_4;
  v3[3] = &unk_278D7B988;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  JFX_configureCaptureDevice(v2, v3);
}

- (void)JFX_notifyVideoDelegatesOfDroppedFrameWithTimeStamp:(id *)stamp
{
  videoDelegateQueue = self->_videoDelegateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfDroppedFrameWithTimeStamp___block_invoke;
  v4[3] = &unk_278D7A078;
  v4[4] = self;
  v5 = *stamp;
  dispatch_async(videoDelegateQueue, v4);
}

void __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfDroppedFrameWithTimeStamp___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 136) allObjects];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfDroppedFrameWithTimeStamp___block_invoke_2;
  v3[3] = &unk_278D7BB88;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  [v2 enumerateObjectsUsingBlock:v3];
}

void __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfDroppedFrameWithTimeStamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 144);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfDroppedFrameWithTimeStamp___block_invoke_3;
  v6[3] = &unk_278D7A078;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfDroppedFrameWithTimeStamp___block_invoke_3(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    return [v3 droppedVideoFrame:&v4];
  }

  return result;
}

- (void)JFX_notifyVideoDelegatesOfFrameSetDataOutSynchQueue:(id)queue
{
  queueCopy = queue;
  cameraPosition = [(JFXVideoCameraController *)self cameraPosition];
  v6 = +[JFXOrientationMonitor interfaceOrientation];
  v7 = +[JFXOrientationMonitor deviceInterfaceOrientation];
  if ([(JFXVideoCameraController *)self cameraMode])
  {
    v8 = v6;
  }

  else
  {
    v7 = 1;
    v8 = UIInterfaceOrientationPortrait;
  }

  v9 = +[JTMotionData sharedInstance];
  [v9 currentOrientation];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v9 rollRadians];
  v19 = v18;
  captureVideoOrientation_dataOutSynchQueue = [(JFXVideoCameraController *)self captureVideoOrientation_dataOutSynchQueue];
  v38.x = v11;
  v38.y = v13;
  v38.z = v15;
  v38.w = v17;
  v21 = MakePVCameraFrameMetadata(cameraPosition, v38, v19, v8, captureVideoOrientation_dataOutSynchQueue);
  [queueCopy setMetadataObject:v21 forKey:*MEMORY[0x277D41A00]];
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  [queueCopy setMetadataObject:v22 forKey:@"PVFrameSetMetadataDeviceOrientationkey"];

  colorImageBuffer = [queueCopy colorImageBuffer];
  [colorImageBuffer size];
  v25 = v24;
  v27 = v26;

  v37[0] = v25;
  v37[1] = v27;
  v28 = [MEMORY[0x277CCAE60] valueWithBytes:v37 objCType:"{CGSize=dd}"];
  [queueCopy setMetadataObject:v28 forKey:@"PVFrameSetMetadataOriginalBufferSizeKey"];

  [(JFXVideoCameraController *)self setCurrentFrameSet_dataOutSynchQueue:queueCopy];
  videoDelegateQueue = self->_videoDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfFrameSetDataOutSynchQueue___block_invoke;
  block[3] = &unk_278D79C88;
  block[4] = self;
  v30 = queueCopy;
  v36 = v30;
  dispatch_async(videoDelegateQueue, block);
  livePlayerSourceQueue = self->_livePlayerSourceQueue;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfFrameSetDataOutSynchQueue___block_invoke_4;
  v33[3] = &unk_278D79C88;
  v33[4] = self;
  v34 = v30;
  v32 = v30;
  dispatch_async(livePlayerSourceQueue, v33);
}

void __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfFrameSetDataOutSynchQueue___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 136) allObjects];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfFrameSetDataOutSynchQueue___block_invoke_2;
  v4[3] = &unk_278D7BBB0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 enumerateObjectsUsingBlock:v4];
}

void __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfFrameSetDataOutSynchQueue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 144);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfFrameSetDataOutSynchQueue___block_invoke_3;
  v6[3] = &unk_278D79C88;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfFrameSetDataOutSynchQueue___block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) allObjects];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfFrameSetDataOutSynchQueue___block_invoke_5;
  v4[3] = &unk_278D7BBD8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 enumerateObjectsUsingBlock:v4];
}

void __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfFrameSetDataOutSynchQueue___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 176);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__JFXVideoCameraController_JFX_notifyVideoDelegatesOfFrameSetDataOutSynchQueue___block_invoke_6;
  v6[3] = &unk_278D79C88;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)didUpdateFrame:(id)frame
{
  frameCopy = frame;
  [frameCopy timestamp];
  CMTimeMakeWithSeconds(&v26, v5, 1000000000);
  time = v26;
  CMTimeGetSeconds(&time);
  kdebug_trace();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = +[JFXOrientationMonitor deviceInterfaceOrientation];
  v8 = +[JFXOrientationMonitor interfaceOrientation];
  v9 = JFX_adjustFaceAnchorCaptureInterfaceOrientationForDevice(v8);
  if (![(JFXVideoCameraController *)self cameraMode])
  {
    v9 = 1;
  }

  [JFXFaceTrackingUtilities faceRectScaleFactorForInterfaceOrientation:v8 andDeviceInterfaceOrientation:v7];
  v10 = [JFXFaceAnchor faceAnchorWithARFrame:frameCopy captureInterfaceOrientation:v9 withFaceRectScaleFactor:?];
  if (!JFXIsVideoCameraMode([(JFXVideoCameraController *)self cameraMode_dataOutSynchQueue]) && [(JFXVideoCameraController *)self cameraMode_dataOutSynchQueue]&& [(JFXVideoCameraController *)self currentCameraPosition_dataOutSynchQueue]== 2 && v10)
  {
    [v10 normalizedFaceRect];
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    MidX = CGRectGetMidX(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    MidY = CGRectGetMidY(v29);
    captureSessionQueue = self->_captureSessionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__JFXVideoCameraController_didUpdateFrame___block_invoke;
    block[3] = &unk_278D7B8F0;
    block[4] = self;
    *&block[5] = MidX;
    *&block[6] = MidY;
    dispatch_async(captureSessionQueue, block);
  }

  v18 = [[JFXARMetadata alloc] initWithARFrame:frameCopy faceAnchor:v10];
  [dictionary setObject:v18 forKeyedSubscript:@"PVFrameSetMetadataARMetadataKey"];
  capturedImage = [frameCopy capturedImage];
  [frameCopy timestamp];
  v21 = v20;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __43__JFXVideoCameraController_didUpdateFrame___block_invoke_3;
  v23[3] = &unk_278D7BAC0;
  v23[4] = self;
  v24 = v18;
  v22 = v18;
  [(JFXVideoCameraController *)self preProcessFrameWithPixelBuffer:capturedImage metadata:dictionary timestamp:v23 completion:v21];
}

void __43__JFXVideoCameraController_didUpdateFrame___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) device];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__JFXVideoCameraController_didUpdateFrame___block_invoke_2;
  v3[3] = &unk_278D7B988;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  JFX_configureCaptureDevice(v2, v3);
}

uint64_t __43__JFXVideoCameraController_didUpdateFrame___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) setMostRecentARMetadata:*(result + 40)];
  }

  return result;
}

- (BOOL)faceTrackingEnabled
{
  v3 = isFaceTrackingEnabledOnBackCamera();
  if ([(JFXVideoCameraController *)self cameraPosition]!= 1)
  {
    return [(JFXVideoCameraController *)self cameraPosition]!= 0;
  }

  return v3;
}

- (id)updateCurrentlyTrackedFaceID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  dataOutSynchQueue = self->_dataOutSynchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__JFXVideoCameraController_updateCurrentlyTrackedFaceID___block_invoke;
  block[3] = &unk_278D7A230;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(dataOutSynchQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __57__JFXVideoCameraController_updateCurrentlyTrackedFaceID___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) JFX_updateCurrentlyTrackedFaceID:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)JFX_buildCaptureSessionGraphError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CE5B38]);
  captureSession = self->_captureSession;
  self->_captureSession = v5;

  v7 = objc_alloc_init(MEMORY[0x277CE5B38]);
  audioSession = self->_audioSession;
  self->_audioSession = v7;

  if ([(JFXVideoCameraController *)self cameraMode_captureSessionQueue]== 1)
  {
    v9 = 1;
  }

  else
  {
    callObserver = [(JFXVideoCameraController *)self callObserver];
    v9 = [callObserver callCount] > 0;
  }

  v11 = [(JFXVideoCameraController *)self JFX_setupCaptureSessionVideoDataOutputError:error];
  if (v11)
  {
    v11 = [(JFXVideoCameraController *)self JFX_setupCaptureSessionPhotoError:error];
    if (v9 || !v11)
    {
      if (!v11)
      {
        return v11;
      }
    }

    else if (![(JFXVideoCameraController *)self JFX_setupCaptureSessionAudioError:error])
    {
      LOBYTE(v11) = 0;
      return v11;
    }

    [(JFXVideoCameraController *)self JFX_observeCaptureSessionNotifications:self->_captureSession];
    LOBYTE(v11) = 1;
  }

  return v11;
}

- (BOOL)JFX_setupCaptureSessionVideoDataOutputError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CE5B60]);
  videoOutput = self->_videoOutput;
  self->_videoOutput = v5;

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [standardUserDefaults BOOLForKey:@"alwaysDiscardsLateVideoFrames"];

  v9 = JFXLog_DebugCamera();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [JFXVideoCameraController JFX_setupCaptureSessionVideoDataOutputError:];
  }

  [(AVCaptureVideoDataOutput *)self->_videoOutput setAlwaysDiscardsLateVideoFrames:v8];
  v10 = [(AVCaptureSession *)self->_captureSession canAddOutput:self->_videoOutput];
  if (v10)
  {
    [(AVCaptureSession *)self->_captureSession addOutput:self->_videoOutput];
  }

  else if (*error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5DC0] code:-11861 userInfo:0];
  }

  return v10;
}

- (BOOL)JFX_setupCaptureSessionPhotoError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CE5B28]);
  photoOutput = self->_photoOutput;
  self->_photoOutput = v5;

  photoSettings = [MEMORY[0x277CE5B30] photoSettings];
  [photoSettings setFlashMode:2];
  [(AVCapturePhotoOutput *)self->_photoOutput setPhotoSettingsForSceneMonitoring:photoSettings];
  [(JFXVideoCameraController *)self JFX_setIsFlashScene:[(AVCapturePhotoOutput *)self->_photoOutput isFlashScene]];
  [(AVCapturePhotoOutput *)self->_photoOutput addObserver:self forKeyPath:@"isFlashScene" options:1 context:sAVCapturePhotoOutputIsFlashScene];
  v8 = [(AVCaptureSession *)self->_captureSession canAddOutput:self->_photoOutput];
  if (v8)
  {
    [(AVCaptureSession *)self->_captureSession addOutput:self->_photoOutput];
  }

  else if (*error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5DC0] code:-11861 userInfo:0];
  }

  return v8;
}

- (BOOL)JFX_setupCaptureSessionDepthError:(id *)error
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  jfx_hasDepthCapableCamera = [currentDevice jfx_hasDepthCapableCamera];

  if (jfx_hasDepthCapableCamera)
  {
    v6 = objc_alloc_init(MEMORY[0x277CE5AC0]);
    depthOutput = self->_depthOutput;
    self->_depthOutput = v6;

    [(AVCaptureDepthDataOutput *)self->_depthOutput setAlwaysDiscardsLateDepthData:1];
    [(AVCaptureDepthDataOutput *)self->_depthOutput setFilteringEnabled:0];
    if ([(AVCaptureSession *)self->_captureSession canAddOutput:self->_depthOutput])
    {
      [(AVCaptureSession *)self->_captureSession addOutput:self->_depthOutput];
      return 1;
    }

    v9 = self->_depthOutput;
    self->_depthOutput = 0;

    v10 = JFXLog_DebugCamera();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [JFXVideoCameraController JFX_setupCaptureSessionDepthError:];
    }
  }

  return 0;
}

- (BOOL)JFX_setupCaptureSessionAudioError:(id *)error
{
  v5 = *MEMORY[0x277CE5DC0];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5DC0] code:-11814 userInfo:0];
  v7 = [MEMORY[0x277CE5AC8] defaultDeviceWithMediaType:*MEMORY[0x277CE5E48]];
  if (v7)
  {
    v22 = 0;
    v8 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:v7 error:&v22];
    v9 = v22;
    audioInput = self->_audioInput;
    self->_audioInput = v8;

    if (v9)
    {
      if (error)
      {
        v11 = v9;
        *error = v9;
      }

      v12 = 0;
      v13 = self->_audioInput;
      self->_audioInput = 0;
      goto LABEL_18;
    }

    v15 = self->_captureSession;
    v13 = v15;
    if (self->_audioInput && [(AVCaptureSession *)v15 canAddInput:?])
    {
      [(AVCaptureDeviceInput *)v13 addInput:self->_audioInput];
      v16 = objc_alloc_init(MEMORY[0x277CE5AA0]);
      audioOutput = self->_audioOutput;
      self->_audioOutput = v16;

      if (([(AVCaptureDeviceInput *)v13 canAddOutput:self->_audioOutput]& 1) != 0)
      {
        [(AVCaptureDeviceInput *)v13 addOutput:self->_audioOutput];
        [(AVCaptureAudioDataOutput *)self->_audioOutput setSampleBufferDelegate:self queue:self->_audioOutQueue];
        v12 = 1;
LABEL_18:

        goto LABEL_19;
      }

      [(AVCaptureDeviceInput *)v13 removeInput:self->_audioInput];
      v19 = self->_audioInput;
      self->_audioInput = 0;

      v20 = self->_audioOutput;
      self->_audioOutput = 0;

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:-11861 userInfo:0];
        *error = v12 = 0;
        goto LABEL_18;
      }
    }

    else if (error)
    {
      v18 = v6;
      v12 = 0;
      *error = v6;
      goto LABEL_18;
    }

    v12 = 0;
    goto LABEL_18;
  }

  if (*error)
  {
    v14 = v6;
    v12 = 0;
    *error = v6;
  }

  else
  {
    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (void)turnOnMicrophone
{
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__JFXVideoCameraController_turnOnMicrophone__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(captureSessionQueue, block);
}

- (void)turnOffMicrophone
{
  captureSessionQueue = self->_captureSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__JFXVideoCameraController_turnOffMicrophone__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(captureSessionQueue, block);
}

- (BOOL)JFX_configureCaptureSesstionForPosition:(int64_t)position applyFFCZoom:(BOOL)zoom configureLockedCamera:(id)camera error:(id *)error
{
  cameraCopy = camera;
  v44 = 0;
  v45[0] = 0;
  v43 = 0;
  JFX_getFrontAndBackCameras(v45, &v44, &v43);
  v10 = v45[0];
  v11 = v44;
  v12 = v43;
  v13 = v12;
  if (position == 2)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14;
  if ([v15 jfx_trueDepthCamera])
  {
    jfx_supportsDepth = [v15 jfx_supportsDepth];
  }

  else
  {
    jfx_supportsDepth = 0;
  }

  self->_rgbOnlyMemoji = JFXRGBOnlyMemoji(v11);
  if ([v15 jfx_trueDepthCamera] && (objc_msgSend(v15, "jfx_supportsDepth") & 1) == 0)
  {
    v17 = JFXLog_camera();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [JFXVideoCameraController JFX_configureCaptureSesstionForPosition:applyFFCZoom:configureLockedCamera:error:];
    }
  }

  dataOutSynchQueue = self->_dataOutSynchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__JFXVideoCameraController_JFX_configureCaptureSesstionForPosition_applyFFCZoom_configureLockedCamera_error___block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_sync(dataOutSynchQueue, block);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 1;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__16;
  v36 = __Block_byref_object_dispose__16;
  v37 = 0;
  captureSession = self->_captureSession;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __109__JFXVideoCameraController_JFX_configureCaptureSesstionForPosition_applyFFCZoom_configureLockedCamera_error___block_invoke_2;
  v25[3] = &unk_278D7BC28;
  v25[4] = self;
  v28 = &v38;
  v20 = v15;
  v26 = v20;
  v29 = &v32;
  v30 = jfx_supportsDepth;
  zoomCopy = zoom;
  v21 = cameraCopy;
  v27 = v21;
  JFX_configureCaptureSession(captureSession, v25);
  if (error)
  {
    *error = v33[5];
  }

  v22 = *(v39 + 24);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v22;
}

void __109__JFXVideoCameraController_JFX_configureCaptureSesstionForPosition_applyFFCZoom_configureLockedCamera_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  *(v1 + 80) = 0;
}

void __109__JFXVideoCameraController_JFX_configureCaptureSesstionForPosition_applyFFCZoom_configureLockedCamera_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (v4[7])
  {
    [v4[1] removeOutput:?];
    v6 = *(*v5 + 7);
    *(*v5 + 7) = 0;

    v4 = *v5;
  }

  if (v4[8])
  {
    [v4[1] removeOutput:?];
    v7 = *(*v5 + 8);
    *(*v5 + 8) = 0;

    v4 = *v5;
  }

  v8 = *(a1 + 40);
  v9 = *(*(a1 + 64) + 8);
  v29 = *(v9 + 40);
  v10 = [v4 JFX_configureCaptureSessionForCaptureDevice:v8 error:&v29];
  objc_storeStrong((v9 + 40), v29);
  if (v10)
  {
    if (*(a1 + 72) == 1 && (v11 = *v5, (*(*v5 + 186) & 1) == 0))
    {
      v18 = *(*(a1 + 64) + 8);
      obj = *(v18 + 40);
      v12 = [v11 JFX_setupCaptureSessionDepthError:&obj];
      objc_storeStrong((v18 + 40), obj);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = v12;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v13 = *(a1 + 40);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __109__JFXVideoCameraController_JFX_configureCaptureSesstionForPosition_applyFFCZoom_configureLockedCamera_error___block_invoke_3;
    v22 = &unk_278D7BC00;
    v14 = v3;
    v15 = *(a1 + 32);
    v23 = v14;
    v24 = v15;
    v26 = *(a1 + 73);
    v27 = *(a1 + 72);
    v25 = *(a1 + 48);
    JFX_configureCaptureDevice(v13, &v19);
    [*(a1 + 32) JFX_configureCaptureSessionVideoDataOutput];
    [*(a1 + 32) JFX_configureCaptureSessionPhotoOrientationFromInterfaceOrientation:{+[JFXOrientationMonitor deviceInterfaceOrientation](JFXOrientationMonitor, "deviceInterfaceOrientation")}];
    [*(a1 + 32) JFX_configureCaptureSessionMetadataForCaptureDevice:*(a1 + 40)];
    [*(a1 + 32) JFX_configureCaptureSessionMicrophoneForPosition:{objc_msgSend(*(a1 + 32), "currentCameraPosition_captureSessionQueue")}];
    [*(a1 + 32) JFX_configureCaptureSessionEnableCameraIntrinsicMatrixDelivery];
    v16 = *(a1 + 32);
    if (*(a1 + 72) == 1)
    {
      [v16 JFX_setupARCameraSessionController];
      [*v5 JFX_startARCameraSessionController];
    }

    else
    {
      [v16 setArCameraSessionController:0];
    }

    [*v5 JFX_configureCaptureSessionDataOutputSynchronizer];
    v17 = JFXLog_DebugCamera();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __109__JFXVideoCameraController_JFX_configureCaptureSesstionForPosition_applyFFCZoom_configureLockedCamera_error___block_invoke_2_cold_1(v5);
    }
  }
}

void __109__JFXVideoCameraController_JFX_configureCaptureSesstionForPosition_applyFFCZoom_configureLockedCamera_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setAutomaticallyConfiguresCaptureDeviceForWideColor:0];
  if (([*(a1 + 40) JFX_configureLockedCaptureDeviceCustomFormat:v3 applyFFCZoom:*(a1 + 56)] & 1) == 0)
  {
    [*(a1 + 32) setAutomaticallyConfiguresCaptureDeviceForWideColor:1];
    [*(a1 + 40) JFX_configureCaptureSessionPreset];
  }

  if (*(a1 + 57) == 1)
  {
    [*(a1 + 40) JFX_configureLockedCaptureDeviceForDepth:v3];
  }

  [v3 setSpatialOverCaptureEnabled:0];
  v4 = [v3 activeColorSpace];
  v5 = *(a1 + 40);
  v6 = *(v5 + 112);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __109__JFXVideoCameraController_JFX_configureCaptureSesstionForPosition_applyFFCZoom_configureLockedCamera_error___block_invoke_4;
  v8[3] = &unk_278D7A118;
  v8[4] = v5;
  v8[5] = v4;
  dispatch_barrier_async(v6, v8);
  [*(a1 + 40) JFX_configureLockedCaptureDevice:v3];
  [*(a1 + 40) JFX_configureLockedCaptureDeviceFocus:v3 focusPoint:{3.40282347e38, 3.40282347e38}];
  [*(a1 + 40) JFX_configureLockedCaptureDeviceExposure:v3 exposurePoint:{3.40282347e38, 3.40282347e38}];
  [*(a1 + 40) JFX_configureLockedCaptureDeviceFrameRate:v3];
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (BOOL)JFX_configureCaptureSessionForCaptureDevice:(id)device error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:deviceCopy error:error];
  v8 = v7;
  if (error)
  {
    if (*error)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 == 0;
    }

    if (v9)
    {
      goto LABEL_30;
    }
  }

  else if (!v7)
  {
    goto LABEL_30;
  }

  cameraDeviceInput = self->_cameraDeviceInput;
  if (cameraDeviceInput)
  {
    device = [(AVCaptureDeviceInput *)cameraDeviceInput device];
    [device removeObserver:self forKeyPath:@"systemPressureState" context:sAVCaptureDeviceSystemPressureState];
    [device removeObserver:self forKeyPath:@"videoZoomFactor" context:&sAVCaptureDeviceVideoZoomFactor];
    [(AVCaptureSession *)self->_captureSession removeInput:self->_cameraDeviceInput];
    v12 = self->_cameraDeviceInput;
    self->_cameraDeviceInput = 0;

    [(AVCaptureSession *)self->_captureSession setSessionPreset:*MEMORY[0x277CE5988]];
  }

  v13 = [(AVCaptureSession *)self->_captureSession canAddInput:v8];
  if (v13)
  {
    [deviceCopy addObserver:self forKeyPath:@"systemPressureState" options:1 context:sAVCaptureDeviceSystemPressureState];
    [deviceCopy addObserver:self forKeyPath:@"videoZoomFactor" options:1 context:&sAVCaptureDeviceVideoZoomFactor];
    [(AVCaptureSession *)self->_captureSession addInput:v8];
    objc_storeStrong(&self->_cameraDeviceInput, v8);
    device2 = [v8 device];
    activeFormat = [device2 activeFormat];
    supportedMaxPhotoDimensions = [activeFormat supportedMaxPhotoDimensions];

    if ([supportedMaxPhotoDimensions count])
    {
      firstObject = [supportedMaxPhotoDimensions firstObject];
      cMVideoDimensionsValue = [firstObject CMVideoDimensionsValue];
      v19 = cMVideoDimensionsValue;
      v20 = HIDWORD(cMVideoDimensionsValue);

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = supportedMaxPhotoDimensions;
      v21 = supportedMaxPhotoDimensions;
      v22 = [v21 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v36;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v36 != v24)
            {
              objc_enumerationMutation(v21);
            }

            cMVideoDimensionsValue2 = [*(*(&v35 + 1) + 8 * i) CMVideoDimensionsValue];
            v27 = v19 * v20;
            if (HIDWORD(cMVideoDimensionsValue2) * cMVideoDimensionsValue2 <= (v19 * v20))
            {
              v20 = v20;
            }

            else
            {
              v20 = HIDWORD(cMVideoDimensionsValue2);
            }

            if (HIDWORD(cMVideoDimensionsValue2) * cMVideoDimensionsValue2 > v27)
            {
              v19 = cMVideoDimensionsValue2;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v23);
      }

      [(AVCapturePhotoOutput *)self->_photoOutput setMaxPhotoDimensions:v19 | (v20 << 32)];
      supportedMaxPhotoDimensions = v34;
    }

    deviceType = [deviceCopy deviceType];
    -[JFXVideoCameraController JFX_setCaptureDeviceType:captureDevicePositionCaptureSessionQueue:](self, "JFX_setCaptureDeviceType:captureDevicePositionCaptureSessionQueue:", deviceType, [deviceCopy position]);
    goto LABEL_29;
  }

  if (!error)
  {
LABEL_30:
    LOBYTE(v13) = 0;
    goto LABEL_31;
  }

  v29 = MEMORY[0x277CCA9B8];
  v30 = *MEMORY[0x277CE5DC0];
  v39 = *MEMORY[0x277CE5D30];
  v31 = MEMORY[0x277CCACA8];
  supportedMaxPhotoDimensions = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(deviceCopy, "position")}];
  deviceType = [v31 stringWithFormat:@"AVCaptureDevicePosition:%@", supportedMaxPhotoDimensions];
  v40 = deviceType;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  *error = [v29 errorWithDomain:v30 code:-11814 userInfo:v32];

LABEL_29:
LABEL_31:

  return v13;
}

- (void)JFX_configureCaptureSessionPreset
{
  cameraMode_captureSessionQueue = [(JFXVideoCameraController *)self cameraMode_captureSessionQueue];
  captureSession = self->_captureSession;
  if (cameraMode_captureSessionQueue == 3)
  {
    v5 = MEMORY[0x277CE5968];
LABEL_5:
    v6 = *v5;
    if (![(AVCaptureSession *)captureSession canSetSessionPreset:*v5])
    {
      return;
    }

    goto LABEL_8;
  }

  if (cameraMode_captureSessionQueue == 2)
  {
    v5 = MEMORY[0x277CE5960];
    goto LABEL_5;
  }

  v6 = *MEMORY[0x277CE59A8];
  if (![(AVCaptureSession *)captureSession canSetSessionPreset:*MEMORY[0x277CE59A8]])
  {
    return;
  }

LABEL_8:
  v7 = v6;
  if (v7)
  {
    v8 = v7;
    [(AVCaptureSession *)self->_captureSession setSessionPreset:v7];
  }
}

- (void)JFX_configureCaptureSessionVideoDataOutput
{
  v66 = *MEMORY[0x277D85DE8];
  [(AVCaptureVideoDataOutput *)self->_videoOutput setVideoSettings:0];
  videoSettings = [(AVCaptureVideoDataOutput *)self->_videoOutput videoSettings];
  v52 = [videoSettings mutableCopy];

  cameraMode_captureSessionQueue = [(JFXVideoCameraController *)self cameraMode_captureSessionQueue];
  v5 = JFXMinimumVideoDimensionsForCameraMode(2);
  v6 = JFXMaximumVideoDimensionsForCameraMode(6);
  v7 = JFXMinimumVideoDimensionsForCameraMode(cameraMode_captureSessionQueue);
  v48 = HIDWORD(v7);
  v8 = JFXMaximumVideoDimensionsForCameraMode(cameraMode_captureSessionQueue);
  device = [(AVCaptureDeviceInput *)self->_cameraDeviceInput device];
  activeFormat = [device activeFormat];

  Dimensions = CMVideoFormatDescriptionGetDimensions([activeFormat formatDescription]);
  v12 = HIDWORD(Dimensions);
  log = JFXLog_camera();
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v49 = v8;
    v51 = v5;
    v13 = MEMORY[0x277CCACA8];
    v46 = cameraMode_captureSessionQueue;
    [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
    v14 = v47 = v7;
    [MEMORY[0x277CCABB0] numberWithInt:v12];
    v15 = v50 = v6;
    v45 = [v13 stringWithFormat:@"{%@, %@}", v14, v15];

    v16 = MEMORY[0x277CCACA8];
    v17 = MEMORY[0x277CCABB0];
    v44 = v45;
    v18 = [v17 numberWithInt:v51];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v51)];
    v43 = [v16 stringWithFormat:@"{%@, %@}", v18, v19];

    v20 = MEMORY[0x277CCACA8];
    v21 = MEMORY[0x277CCABB0];
    v42 = v43;
    v22 = [v21 numberWithInt:v50];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v50)];
    v41 = [v20 stringWithFormat:@"{%@, %@}", v22, v23];

    v24 = MEMORY[0x277CCACA8];
    v25 = MEMORY[0x277CCABB0];
    v40 = v41;
    v26 = [v25 numberWithInt:v47];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:v48];
    v28 = [v24 stringWithFormat:@"{%@, %@}", v26, v27];

    v29 = HIDWORD(v8);
    v30 = MEMORY[0x277CCACA8];
    v31 = MEMORY[0x277CCABB0];
    v32 = v28;
    v33 = [v31 numberWithInt:v49];
    v34 = [MEMORY[0x277CCABB0] numberWithInt:v29];
    v35 = [v30 stringWithFormat:@"{%@, %@}", v33, v34];

    v8 = v49;
    *buf = 134219266;
    v55 = v46;
    v56 = 2114;
    v57 = v45;
    v58 = 2114;
    v59 = v43;
    v60 = 2114;
    v61 = v41;
    v62 = 2114;
    v63 = v28;
    v7 = v47;
    v64 = 2114;
    v65 = v35;
    _os_log_impl(&dword_242A3B000, log, OS_LOG_TYPE_DEFAULT, "cameraMode: %ld, videoDimensions: %{public}@, absoluteMinVideoDimensions: %{public}@, absoluteMaxVideoDimensions: %{public}@, cameraModeMinVideoDimensions: %{public}@, cameraModeMaxVideoDimensions: %{public}@", buf, 0x3Eu);

    v5 = v51;
    v6 = v50;
  }

  videoOutput = self->_videoOutput;
  if (Dimensions == v5 || Dimensions == v6 || Dimensions == v7 || Dimensions == v8)
  {
    [(AVCaptureVideoDataOutput *)videoOutput setAutomaticallyConfiguresOutputBufferDimensions:1];
  }

  else
  {
    [(AVCaptureVideoDataOutput *)videoOutput setAutomaticallyConfiguresOutputBufferDimensions:0];
    [(AVCaptureVideoDataOutput *)self->_videoOutput setDeliversPreviewSizedOutputBuffers:0];
    if (v12 && Dimensions)
    {
      v37 = v7 / Dimensions;
      if (v37 >= (v48 / SHIDWORD(Dimensions)))
      {
        v37 = v48 / SHIDWORD(Dimensions);
      }

      if (v37 > 1.0)
      {
        v37 = 1.0;
      }

      if (v37 < 1.0)
      {
        v38 = [MEMORY[0x277CCABB0] numberWithInt:v7];
        [v52 setObject:v38 forKeyedSubscript:*MEMORY[0x277CC4EC8]];

        v39 = [MEMORY[0x277CCABB0] numberWithInt:v48];
        [v52 setObject:v39 forKeyedSubscript:*MEMORY[0x277CC4DD8]];

        [(AVCaptureVideoDataOutput *)self->_videoOutput setVideoSettings:v52];
      }
    }
  }
}

- (void)JFX_configureCaptureSessionPhotoOrientationFromInterfaceOrientation:(int64_t)orientation
{
  v6 = [(AVCapturePhotoOutput *)self->_photoOutput connectionWithMediaType:*MEMORY[0x277CE5EA8]];
  if ([v6 isVideoOrientationSupported])
  {
    if ((orientation - 2) >= 3)
    {
      orientationCopy = 1;
    }

    else
    {
      orientationCopy = orientation;
    }

    [v6 setVideoOrientation:orientationCopy];
  }

  if ([v6 isVideoMirroringSupported])
  {
    [v6 setVideoMirrored:{-[JFXVideoCameraController currentCameraPosition_captureSessionQueue](self, "currentCameraPosition_captureSessionQueue") == 2}];
  }

  if ([v6 isCameraIntrinsicMatrixDeliverySupported])
  {
    [v6 setCameraIntrinsicMatrixDeliveryEnabled:1];
  }
}

- (void)JFX_configureCaptureSessionMetadataForCaptureDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_alloc_init(MEMORY[0x277CE5B00]);
  if ([(AVCaptureSession *)self->_captureSession canAddOutput:v4])
  {
    [(AVCaptureSession *)self->_captureSession addOutput:v4];
    position = [deviceCopy position];
    array = [MEMORY[0x277CBEB18] array];
    if (position == 2)
    {
      if ([deviceCopy jfx_trueDepthCamera])
      {
        jfx_supportsDepth = [deviceCopy jfx_supportsDepth];
        isFaceTrackingSupported = [v4 isFaceTrackingSupported];
        v9 = MEMORY[0x277CE5A50];
        if (isFaceTrackingSupported && jfx_supportsDepth)
        {
          [v4 setFaceTrackingMetadataObjectTypesAvailable:1];
          v9 = MEMORY[0x277CE5A88];
        }

        goto LABEL_9;
      }

      [v4 isFaceTrackingSupported];
    }

    v9 = MEMORY[0x277CE5A50];
LABEL_9:
    [array addObject:*v9];
    [v4 setMetadataObjectTypes:array];
    if ([array count])
    {
      objc_storeStrong(&self->_metadataOutput, v4);
    }

    else
    {
      [(AVCaptureSession *)self->_captureSession removeOutput:v4];
    }
  }
}

- (void)JFX_configureCaptureSessionMicrophoneForPosition:(int64_t)position
{
  if (position == 2)
  {
    if (self->_observingAudioRouteChanges)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:self name:*MEMORY[0x277CB8210] object:0];

      self->_observingAudioRouteChanges = 0;
    }

    captureSession = self->_captureSession;

    [(AVCaptureSession *)captureSession setAutomaticallyConfiguresApplicationAudioSession:1];
  }

  else if (position == 1)
  {

    [(JFXVideoCameraController *)self JFX_configureCaptureSessionMicrophoneForOmnidirectionalPattern];
  }
}

- (void)JFX_configureCaptureSessionMicrophoneForOmnidirectionalPattern
{
  v61 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  if ([(JFXVideoCameraController *)self JFX_isUsingInternalMicCaptureSessionQueue])
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    availableInputs = [mEMORY[0x277CB83F8] availableInputs];
    v5 = [availableInputs countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v56;
      v8 = *MEMORY[0x277CB8190];
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v56 != v7)
          {
            objc_enumerationMutation(availableInputs);
          }

          v10 = *(*(&v55 + 1) + 8 * i);
          portType = [v10 portType];
          v12 = [portType isEqualToString:v8];

          if (v12)
          {
            v13 = v10;
            goto LABEL_14;
          }
        }

        v6 = [availableInputs countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_14:

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    dataSources = [v13 dataSources];
    v16 = [dataSources countByEnumeratingWithState:&v51 objects:v59 count:16];
    v17 = MEMORY[0x277CB80F8];
    if (v16)
    {
      v18 = v16;
      selfCopy = self;
      v19 = mEMORY[0x277CB83F8];
      v20 = v13;
      v21 = *v52;
      v22 = *MEMORY[0x277CB80F8];
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v52 != v21)
          {
            objc_enumerationMutation(dataSources);
          }

          v24 = *(*(&v51 + 1) + 8 * j);
          orientation = [v24 orientation];
          v26 = [orientation isEqual:v22];

          if (v26)
          {
            v27 = v24;
            goto LABEL_24;
          }
        }

        v18 = [dataSources countByEnumeratingWithState:&v51 objects:v59 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v27 = 0;
LABEL_24:
      v13 = v20;
      mEMORY[0x277CB83F8] = v19;
      self = selfCopy;
      v17 = MEMORY[0x277CB80F8];
    }

    else
    {
      v27 = 0;
    }

    supportedPolarPatterns = [v27 supportedPolarPatterns];
    v29 = *MEMORY[0x277CB8138];
    v30 = [supportedPolarPatterns containsObject:*MEMORY[0x277CB8138]];

    if (!v30)
    {
      v14 = 0;
LABEL_52:

      goto LABEL_53;
    }

    selectedDataSource = [v13 selectedDataSource];
    orientation2 = [selectedDataSource orientation];
    v33 = orientation2;
    if (orientation2 == *v17)
    {
      selectedPolarPattern = [selectedDataSource selectedPolarPattern];

      if (selectedPolarPattern == v29)
      {
        v14 = 0;
LABEL_51:

        goto LABEL_52;
      }
    }

    else
    {
    }

    [(AVCaptureSession *)self->_captureSession setAutomaticallyConfiguresApplicationAudioSession:0];
    if (v27)
    {
      v50 = 0;
      v35 = [v13 setPreferredDataSource:v27 error:&v50];
      v36 = v50;
      v37 = v36;
      if (v35)
      {
        v49 = v36;
        v38 = [v27 setPreferredPolarPattern:v29 error:&v49];
        v39 = v49;

        if (v38)
        {
          v48 = v39;
          v40 = [mEMORY[0x277CB83F8] setPreferredInput:v13 error:&v48];
          v37 = v48;

          if (v40)
          {
            v47 = v37;
            v41 = [mEMORY[0x277CB83F8] setActive:1 error:&v47];
            v14 = v47;

            if (v41)
            {
              if (!self->_observingAudioRouteChanges)
              {
                defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
                [defaultCenter addObserver:self selector:sel_JFX_audioSessionRouteChangeNotification_ name:*MEMORY[0x277CB8210] object:mEMORY[0x277CB83F8]];

                self->_observingAudioRouteChanges = 1;
              }
            }

            else
            {
              v45 = JFXLog_camera();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
              {
                [JFXVideoCameraController JFX_configureCaptureSessionMicrophoneForOmnidirectionalPattern];
              }
            }

            goto LABEL_51;
          }

          v43 = JFXLog_DebugCamera();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            [JFXVideoCameraController JFX_configureCaptureSessionMicrophoneForOmnidirectionalPattern];
          }
        }

        else
        {
          v43 = JFXLog_DebugCamera();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            [JFXVideoCameraController JFX_configureCaptureSessionMicrophoneForOmnidirectionalPattern];
          }

          v37 = v39;
        }
      }

      else
      {
        v43 = JFXLog_DebugCamera();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [JFXVideoCameraController JFX_configureCaptureSessionMicrophoneForOmnidirectionalPattern];
        }
      }

      v14 = v37;
    }

    else
    {
      v14 = 0;
    }

    v44 = JFXLog_DebugCamera();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      [JFXVideoCameraController JFX_configureCaptureSessionMicrophoneForOmnidirectionalPattern];
    }

    [(AVCaptureSession *)self->_captureSession setAutomaticallyConfiguresApplicationAudioSession:1];
    goto LABEL_51;
  }

  v14 = JFXLog_DebugCamera();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [JFXVideoCameraController JFX_configureCaptureSessionMicrophoneForOmnidirectionalPattern];
  }

LABEL_53:
}

- (void)JFX_configureCaptureSessionEnableCameraIntrinsicMatrixDelivery
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(JFXVideoCameraController *)self JFX_isDepthEnabledCaptureSessionQueue])
  {
    depthOutput = self->_depthOutput;
    videoOutput = self->_videoOutput;
    v10 = depthOutput;
    v4 = MEMORY[0x277CBEA60];
    p_videoOutput = &videoOutput;
    v6 = 2;
  }

  else
  {
    v8 = self->_videoOutput;
    v4 = MEMORY[0x277CBEA60];
    p_videoOutput = &v8;
    v6 = 1;
  }

  v7 = [v4 arrayWithObjects:p_videoOutput count:{v6, v8, videoOutput, v10}];
  [v7 enumerateObjectsUsingBlock:&__block_literal_global_146];
}

void __90__JFXVideoCameraController_JFX_configureCaptureSessionEnableCameraIntrinsicMatrixDelivery__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 connectionWithMediaType:*MEMORY[0x277CE5EA8]];
  if ([v2 isCameraIntrinsicMatrixDeliverySupported])
  {
    [v2 setCameraIntrinsicMatrixDeliveryEnabled:1];
  }
}

- (void)JFX_configureCaptureSessionDataOutputSynchronizer
{
  v37 = *MEMORY[0x277D85DE8];
  jFX_isDepthEnabledCaptureSessionQueue = [(JFXVideoCameraController *)self JFX_isDepthEnabledCaptureSessionQueue];
  array = [MEMORY[0x277CBEB18] array];
  v5 = array;
  if (self->_videoOutput)
  {
    [array addObject:?];
  }

  if (jFX_isDepthEnabledCaptureSessionQueue)
  {
    [v5 addObject:self->_depthOutput];
  }

  if (self->_metadataOutput)
  {
    [v5 addObject:?];
  }

  v6 = [(AVCaptureVideoDataOutput *)self->_videoOutput connectionWithMediaType:*MEMORY[0x277CE5EA8]];
  videoOrientation = [v6 videoOrientation];
  device = [(AVCaptureDeviceInput *)self->_cameraDeviceInput device];
  activeFormat = [device activeFormat];
  Dimensions = CMVideoFormatDescriptionGetDimensions([activeFormat formatDescription]);
  v11 = Dimensions;
  v12 = HIDWORD(Dimensions);
  [activeFormat videoFieldOfView];
  pv_intrinsics_from_fov_side_and_resolution();
  v38.columns[0].i32[3] = 0;
  v38.columns[1].i32[3] = 0;
  v20 = v38.columns[1];
  v21 = v38.columns[0];
  v38.columns[2].i32[3] = 0;
  v19 = v38.columns[2];
  JFX_logCameraIntrinsics(v38);
  dataOutSynchQueue = self->_dataOutSynchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__JFXVideoCameraController_JFX_configureCaptureSessionDataOutputSynchronizer__block_invoke;
  block[3] = &unk_278D7BC70;
  selfCopy = self;
  v27 = videoOrientation;
  v30 = jFX_isDepthEnabledCaptureSessionQueue;
  v23 = v21;
  v24 = v20;
  v25 = v19;
  v28 = v11;
  v29 = v12;
  dispatch_async(dataOutSynchQueue, block);
  v14 = [objc_alloc(MEMORY[0x277CE5AB8]) initWithDataOutputs:v5];
  dataOutputSynchronizer = self->_dataOutputSynchronizer;
  self->_dataOutputSynchronizer = v14;

  [(AVCaptureDataOutputSynchronizer *)self->_dataOutputSynchronizer setDelegate:self queue:self->_dataOutSynchQueue];
  v16 = JFXLog_DebugCamera();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = self->_dataOutputSynchronizer;
    v18 = self->_dataOutSynchQueue;
    *buf = 138412802;
    v32 = v17;
    v33 = 2112;
    v34 = v5;
    v35 = 2112;
    v36 = v18;
    _os_log_debug_impl(&dword_242A3B000, v16, OS_LOG_TYPE_DEBUG, "created %@ with capture outputs %@ and placing on Q %@", buf, 0x20u);
  }
}

uint64_t __77__JFXVideoCameraController_JFX_configureCaptureSessionDataOutputSynchronizer__block_invoke(uint64_t a1)
{
  [*(a1 + 80) setCaptureVideoOrientation_dataOutSynchQueue:*(a1 + 88)];
  v2 = *(a1 + 80);
  v3 = *(v2 + 112);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__JFXVideoCameraController_JFX_configureCaptureSessionDataOutputSynchronizer__block_invoke_2;
  v8[3] = &unk_278D7A118;
  v4 = *(a1 + 88);
  v8[4] = v2;
  v8[5] = v4;
  dispatch_barrier_async(v3, v8);
  v5 = *(a1 + 80);
  if (*(a1 + 104))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v5 + 186);
  }

  *(v5 + 185) = v6 & 1;
  [*(a1 + 80) setCameraDeviceIntrinsics_dataOutSynchQueue:{*(a1 + 32), *(a1 + 48), *(a1 + 64)}];
  return [*(a1 + 80) setCameraFrameResolution_dataOutSynchQueue:{*(a1 + 96), *(a1 + 100)}];
}

- (BOOL)JFX_configureLockedCaptureDeviceCustomFormat:(id)format applyFFCZoom:(BOOL)zoom
{
  zoomCopy = zoom;
  formatCopy = format;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (JFXLowResolutionDevice())
  {
    v9 = 1;
  }

  else
  {
    v9 = JFXMediumResolutionDevice();
  }

  jfx_trueDepthCamera = [formatCopy jfx_trueDepthCamera];
  cameraMode_captureSessionQueue = [(JFXVideoCameraController *)self cameraMode_captureSessionQueue];
  v12 = JFXIsCTMCameraMode(cameraMode_captureSessionQueue);
  jfx_hasTrueDepthFrontCameraCustomZoomFormat = 0;
  if (zoomCopy && !userInterfaceIdiom && (v9 & 1) == 0 && jfx_trueDepthCamera && v12)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    jfx_hasTrueDepthFrontCameraCustomZoomFormat = [currentDevice2 jfx_hasTrueDepthFrontCameraCustomZoomFormat];
  }

  switch(cameraMode_captureSessionQueue)
  {
    case 4:
      v16 = 0x2D000000000;
      v17 = 2;
      v15 = 1280;
      break;
    case 5:
      v16 = 0x43800000000;
      v17 = 2;
      v15 = 1920;
      break;
    case 7:
      v15 = 3088;
      if (!jfx_hasTrueDepthFrontCameraCustomZoomFormat)
      {
        v15 = 1920;
      }

      v16 = 0x5A000000000;
      if (jfx_hasTrueDepthFrontCameraCustomZoomFormat)
      {
        v16 = 0x90C00000000;
      }

      v17 = 2;
      break;
    default:
      if (!jfx_hasTrueDepthFrontCameraCustomZoomFormat)
      {
        v19 = 0;
        goto LABEL_23;
      }

      v16 = 0x90C00000000;
      v17 = 1;
      v15 = 3088;
      break;
  }

  v18 = [(JFXVideoCameraController *)self JFX_getFormatForCaptureDevice:formatCopy previewDimensions:v16 | v15 colorSpace:v17];
  [formatCopy setActiveFormat:v18];
  [formatCopy setActiveColorSpace:v17];

  v19 = 1;
LABEL_23:

  return v19;
}

- (void)JFX_configureLockedCaptureDeviceForDepth:(id)depth
{
  depthCopy = depth;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__16;
  v13 = __Block_byref_object_dispose__16;
  v14 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2810000000;
  v8[3] = "";
  v8[4] = 0;
  activeFormat = [depthCopy activeFormat];
  supportedDepthDataFormats = [activeFormat supportedDepthDataFormats];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__JFXVideoCameraController_JFX_configureLockedCaptureDeviceForDepth___block_invoke;
  v7[3] = &unk_278D7BC98;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = v8;
  [supportedDepthDataFormats enumerateObjectsUsingBlock:v7];
  if (v10[5])
  {
    [depthCopy setActiveDepthDataFormat:?];
  }

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);
}

void __69__JFXVideoCameraController_JFX_configureLockedCaptureDeviceForDepth___block_invoke(void *a1, void *a2)
{
  v13 = a2;
  v4 = [v13 formatDescription];
  Dimensions = CMVideoFormatDescriptionGetDimensions(v4);
  v6 = Dimensions;
  v7 = HIDWORD(Dimensions);
  v8 = *(a1[4] + 200);
  if ((!v8 || [v8 intValue] >= v6 && objc_msgSend(*(a1[4] + 200), "intValue") >= v7) && CMFormatDescriptionGetMediaSubType(v4) == 1717855600)
  {
    v9 = *(a1[5] + 8);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    if (!v11 || *(*(a1[6] + 8) + 32) < v6)
    {
      objc_storeStrong(v10, a2);
      v12 = *(a1[6] + 8);
      *(v12 + 32) = v6;
      *(v12 + 36) = v7;
    }
  }
}

- (void)JFX_configureLockedCaptureDevice:(id)device
{
  deviceCopy = device;
  [deviceCopy setVideoZoomFactor:1.0];
  activeFormat = [deviceCopy activeFormat];
  [activeFormat videoMaxZoomFactor];
  [(JFXVideoCameraController *)self setCameraVideoMaxZoomFactor_captureSessionQueue:?];

  if ([deviceCopy isSmoothAutoFocusSupported])
  {
    [deviceCopy setSmoothAutoFocusEnabled:0];
  }

  if ([deviceCopy position] == 2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [deviceCopy performSelector:sel_setFaceDetectionDrivenImageProcessingEnabled_ withObject:MEMORY[0x277CBEC38]];
  }
}

- (void)JFX_configureLockedCaptureDeviceFocus:(id)focus focusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  focusCopy = focus;
  if ([focusCopy isFocusPointOfInterestSupported])
  {
    v14.origin.x = 0.0;
    v14.origin.y = 0.0;
    v14.size.width = 1.0;
    v14.size.height = 1.0;
    v13.x = x;
    v13.y = y;
    v6 = CGRectContainsPoint(v14, v13);
    v7 = 0.5;
    if (v6)
    {
      v8 = y;
    }

    else
    {
      v8 = 0.5;
    }

    if (v6)
    {
      v7 = x;
    }

    [focusCopy setFocusPointOfInterest:{v7, v8}];
  }

  focusMode = [focusCopy focusMode];
  v10 = 2;
  if (([focusCopy isFocusModeSupported:2] & 1) == 0)
  {
    if ([focusCopy isFocusModeSupported:1])
    {
      v10 = 1;
    }

    else
    {
      v10 = focusMode;
    }
  }

  if ([focusCopy isFocusModeSupported:v10])
  {
    [focusCopy setFocusMode:v10];
  }
}

- (void)JFX_configureLockedCaptureDeviceExposure:(id)exposure exposurePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  exposureCopy = exposure;
  if ([exposureCopy isExposurePointOfInterestSupported])
  {
    v15.origin.x = 0.0;
    v15.origin.y = 0.0;
    v15.size.width = 1.0;
    v15.size.height = 1.0;
    v14.x = x;
    v14.y = y;
    v7 = CGRectContainsPoint(v15, v14);
    v8 = 0.5;
    if (v7)
    {
      v9 = y;
    }

    else
    {
      v9 = 0.5;
    }

    if (v7)
    {
      v8 = x;
    }

    [exposureCopy setExposurePointOfInterest:{v8, v9}];
  }

  v12 = *MEMORY[0x277CC0898];
  v13 = *(MEMORY[0x277CC0898] + 16);
  [exposureCopy setActiveMaxExposureDuration:&v12];
  exposureMode = [exposureCopy exposureMode];
  v11 = 2;
  if (([exposureCopy isExposureModeSupported:2] & 1) == 0)
  {
    if ([exposureCopy isExposureModeSupported:1])
    {
      v11 = 1;
    }

    else
    {
      v11 = exposureMode;
    }
  }

  if ([exposureCopy isExposureModeSupported:v11])
  {
    [exposureCopy setExposureMode:v11];
  }
}

- (void)JFX_configureLockedCaptureDeviceFrameRate:(id)rate
{
  v18 = *MEMORY[0x277D85DE8];
  rateCopy = rate;
  thermalDelegate = [(JFXVideoCameraController *)self thermalDelegate];

  if (thermalDelegate)
  {
    v6 = +[JFXThermalMonitor sharedInstance];
    thermalLevel = [v6 thermalLevel];

    v11 = 0;
    thermalDelegate2 = [(JFXVideoCameraController *)self thermalDelegate];
    deviceType = [rateCopy deviceType];
    [thermalDelegate2 cameraFPSForThermalLevel:thermalLevel deviceType:deviceType minRate:&v11 + 4 maxRate:&v11];

    [(JFXVideoCameraController *)self JFX_configureLockedCaptureDevice:rateCopy minFrameRate:HIDWORD(v11) maxFrameRate:v11];
    v10 = JFXLog_DebugThermals();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      v13 = thermalLevel;
      v14 = 1024;
      v15 = HIDWORD(v11);
      v16 = 1024;
      v17 = v11;
      _os_log_debug_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEBUG, "Thermal Level Changes to %d with throttling [%d - %d]", buf, 0x14u);
    }
  }
}

- (void)JFX_configureLockedCaptureDevice:(id)device minFrameRate:(int)rate maxFrameRate:(int)frameRate
{
  v5 = *&frameRate;
  v51 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  memset(&v38, 0, sizeof(v38));
  CMTimeMake(&v38, 1, v5);
  if (deviceCopy)
  {
    [deviceCopy activeVideoMinFrameDuration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  time2 = v38;
  if (CMTimeCompare(&time1, &time2))
  {
    time1 = v38;
    [deviceCopy setActiveVideoMinFrameDuration:&time1];
  }

  memset(&time2, 0, sizeof(time2));
  CMTimeMake(&time2, 1, rate);
  if (deviceCopy)
  {
    [deviceCopy activeVideoMaxFrameDuration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  rateCopy = rate;
  v36 = time2;
  if (CMTimeCompare(&time1, &v36))
  {
    time1 = time2;
    [deviceCopy setActiveVideoMaxFrameDuration:&time1];
  }

  systemPressureState = [deviceCopy systemPressureState];
  factors = [systemPressureState factors];
  level = [systemPressureState level];
  selfCopy = self;
  if ([deviceCopy jfx_trueDepthCamera] && objc_msgSend(deviceCopy, "jfx_supportsDepth") && self->_depthOutput && (objc_msgSend(deviceCopy, "activeDepthDataFormat"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__JFXVideoCameraController_JFX_configureLockedCaptureDevice_minFrameRate_maxFrameRate___block_invoke;
    block[3] = &unk_278D79D20;
    v13 = deviceCopy;
    v35 = v13;
    if (JFX_configureLockedCaptureDevice_minFrameRate_maxFrameRate__onceToken != -1)
    {
      dispatch_once(&JFX_configureLockedCaptureDevice_minFrameRate_maxFrameRate__onceToken, block);
    }

    v14 = v5;
    if ((factors & 4) != 0)
    {
      v15 = [JFX_configureLockedCaptureDevice_minFrameRate_maxFrameRate__depthSystemPressureLevelFPSLookup objectForKeyedSubscript:level];
      v16 = v15;
      v14 = v5;
      if (v15)
      {
        intValue = [v15 intValue];
        if (intValue >= v5)
        {
          v14 = v5;
        }

        else
        {
          v14 = intValue;
        }
      }
    }

    memset(&time1, 0, sizeof(time1));
    CMTimeMake(&time1, 1, v14);
    if (deviceCopy)
    {
      [v13 activeDepthDataMinFrameDuration];
    }

    else
    {
      memset(&v36, 0, sizeof(v36));
    }

    v33 = time1;
    if (CMTimeCompare(&v36, &v33))
    {
      v36 = time1;
      [v13 setActiveDepthDataMinFrameDuration:&v36];
    }
  }

  else
  {
    v14 = 0;
  }

  deviceType = [deviceCopy deviceType];
  v19 = +[JFXThermalMonitor sharedInstance];
  thermalLevel = [v19 thermalLevel];

  v21 = JFXLog_DebugCamera();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v28 = NSStringFromJFXCameraMode([(JFXVideoCameraController *)selfCopy cameraMode_captureSessionQueue]);
    v27 = [MEMORY[0x277CCABB0] numberWithInt:rateCopy];
    v32 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    v22 = v14;
    if (v14 < 1)
    {
      v30 = &stru_28553D028;
    }

    else
    {
      v23 = MEMORY[0x277CCACA8];
      v26 = [MEMORY[0x277CCABB0] numberWithInt:v22];
      v30 = [v23 stringWithFormat:@" depth %@ fps", v26];
    }

    v24 = [JFXThermalMonitor stringFromThermalPressureLevel:thermalLevel];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:factors];
    LODWORD(time1.value) = 138414082;
    *(&time1.value + 4) = deviceType;
    LOWORD(time1.flags) = 2112;
    *(&time1.flags + 2) = v28;
    HIWORD(time1.epoch) = 2112;
    v40 = v27;
    v41 = 2112;
    v42 = v32;
    v43 = 2112;
    v44 = v30;
    v45 = 2112;
    v46 = v24;
    v47 = 2112;
    v48 = level;
    v49 = 2112;
    v50 = v25;
    _os_log_debug_impl(&dword_242A3B000, v21, OS_LOG_TYPE_DEBUG, "configuring camera %@ (mode: %@) to [%@, %@] fps%@ system thermal: %@ avf thermal: %@ avf thermal factors: %@", &time1, 0x52u);

    if (v22 >= 1)
    {
    }
  }
}

void __87__JFXVideoCameraController_JFX_configureLockedCaptureDevice_minFrameRate_maxFrameRate___block_invoke(uint64_t a1)
{
  v1 = a1;
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 activeDepthDataMinFrameDuration];
    v2 = *(v1 + 32);
    v1 = v21 / v20;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 activeDepthDataFormat];
  v4 = [v3 videoSupportedFrameRateRanges];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        [v9 minFrameRate];
        if (v10 <= v1)
        {
          [v9 minFrameRate];
          v1 = v11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277CE59D0];
  v23[0] = *MEMORY[0x277CE59E0];
  v23[1] = v12;
  v24[0] = &unk_28556D308;
  v24[1] = &unk_28556D320;
  v23[2] = *MEMORY[0x277CE59E8];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:v1];
  v24[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v15 = JFX_configureLockedCaptureDevice_minFrameRate_maxFrameRate__depthSystemPressureLevelFPSLookup;
  JFX_configureLockedCaptureDevice_minFrameRate_maxFrameRate__depthSystemPressureLevelFPSLookup = v14;
}

- (void)JFX_setCaptureDeviceType:(id)type captureDevicePositionCaptureSessionQueue:(int64_t)queue
{
  typeCopy = type;
  [(JFXVideoCameraController *)self setCurrentCameraPosition_captureSessionQueue:queue];
  queryDataQueue = self->_queryDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__JFXVideoCameraController_JFX_setCaptureDeviceType_captureDevicePositionCaptureSessionQueue___block_invoke;
  block[3] = &unk_278D7A458;
  block[4] = self;
  v12 = typeCopy;
  queueCopy = queue;
  v8 = typeCopy;
  dispatch_barrier_async(queryDataQueue, block);
  dataOutSynchQueue = self->_dataOutSynchQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__JFXVideoCameraController_JFX_setCaptureDeviceType_captureDevicePositionCaptureSessionQueue___block_invoke_2;
  v10[3] = &unk_278D7A118;
  v10[4] = self;
  v10[5] = queue;
  dispatch_async(dataOutSynchQueue, v10);
}

uint64_t __94__JFXVideoCameraController_JFX_setCaptureDeviceType_captureDevicePositionCaptureSessionQueue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCameraType_queryDataQueue:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setCurrentCameraPosition_queryDataQueue:v2];
}

- (id)JFX_getFormatForCaptureDevice:(id)device previewDimensions:(id)dimensions colorSpace:(int64_t)space
{
  deviceCopy = device;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  formats = [deviceCopy formats];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__JFXVideoCameraController_JFX_getFormatForCaptureDevice_previewDimensions_colorSpace___block_invoke;
  v11[3] = &unk_278D7BCC0;
  v11[5] = space;
  v11[6] = dimensions;
  v11[4] = &v12;
  [formats enumerateObjectsUsingBlock:v11];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

void __87__JFXVideoCameraController_JFX_getFormatForCaptureDevice_previewDimensions_colorSpace___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [v13 supportedColorSpaces];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a1[5]];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = [v13 formatDescription];
    Dimensions = CMVideoFormatDescriptionGetDimensions(v10);
    MediaSubType = CMFormatDescriptionGetMediaSubType(v10);
    if (a1[6] == Dimensions && MediaSubType != 2016686642)
    {
      objc_storeStrong((*(a1[4] + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

- (void)JFX_setIsFlashScene:(BOOL)scene
{
  [(JFXVideoCameraController *)self willChangeValueForKey:@"isFlashScene"];
  queryDataQueue = self->_queryDataQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__JFXVideoCameraController_JFX_setIsFlashScene___block_invoke;
  v6[3] = &unk_278D79E38;
  v6[4] = self;
  sceneCopy = scene;
  dispatch_barrier_async(queryDataQueue, v6);
}

void __48__JFXVideoCameraController_JFX_setIsFlashScene___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsFlashScene_queryDataQueue:*(a1 + 40)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__JFXVideoCameraController_JFX_setIsFlashScene___block_invoke_2;
  block[3] = &unk_278D79D20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)JFX_resetSessionCaptureSessionQueue
{
  if ([(AVCaptureSession *)self->_captureSession isRunning])
  {
    [(AVCaptureSession *)self->_captureSession stopRunning];
  }

  device = [(AVCaptureDeviceInput *)self->_cameraDeviceInput device];
  [device removeObserver:self forKeyPath:@"systemPressureState" context:sAVCaptureDeviceSystemPressureState];

  device2 = [(AVCaptureDeviceInput *)self->_cameraDeviceInput device];
  [device2 removeObserver:self forKeyPath:@"videoZoomFactor" context:&sAVCaptureDeviceVideoZoomFactor];

  [(AVCapturePhotoOutput *)self->_photoOutput removeObserver:self forKeyPath:@"isFlashScene" context:sAVCapturePhotoOutputIsFlashScene];
  captureSession = self->_captureSession;
  self->_captureSession = 0;

  [(JFXVideoCameraController *)self JFX_setCaptureDeviceType:0 captureDevicePositionCaptureSessionQueue:0];
  cameraDeviceInput = self->_cameraDeviceInput;
  self->_cameraDeviceInput = 0;

  audioInput = self->_audioInput;
  self->_audioInput = 0;

  videoOutput = self->_videoOutput;
  self->_videoOutput = 0;

  photoOutput = self->_photoOutput;
  self->_photoOutput = 0;

  depthOutput = self->_depthOutput;
  self->_depthOutput = 0;

  metadataOutput = self->_metadataOutput;
  self->_metadataOutput = 0;

  [(AVCaptureAudioDataOutput *)self->_audioOutput setSampleBufferDelegate:0 queue:0];
  audioOutput = self->_audioOutput;
  self->_audioOutput = 0;

  dataOutputSynchronizer = self->_dataOutputSynchronizer;
  self->_dataOutputSynchronizer = 0;

  arCameraSessionController = self->_arCameraSessionController;
  self->_arCameraSessionController = 0;

  dataOutSynchQueue = self->_dataOutSynchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__JFXVideoCameraController_JFX_resetSessionCaptureSessionQueue__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(dataOutSynchQueue, block);
  queryDataQueue = self->_queryDataQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__JFXVideoCameraController_JFX_resetSessionCaptureSessionQueue__block_invoke_2;
  v17[3] = &unk_278D79D20;
  v17[4] = self;
  dispatch_barrier_async(queryDataQueue, v17);
}

uint64_t __63__JFXVideoCameraController_JFX_resetSessionCaptureSessionQueue__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 185) = 0;
  [*(a1 + 32) setPvDetectedFacesArray_dataOutSynchQueue:0];
  [*(a1 + 32) setMetadataFaceObjectsArray_dataOutSynchQueue:0];
  v2 = *(a1 + 32);

  return [v2 setMetadataTrackedFacesArray_dataOutSynchQueue:0];
}

uint64_t __63__JFXVideoCameraController_JFX_resetSessionCaptureSessionQueue__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCaptureSessionRunning_queryDataQueue:0];
  [*(a1 + 32) setMostRecentARMetadata_queryDataQueue:0];
  v2 = *(a1 + 32);

  return [v2 setStillImageFaceAnchor_queryDataQueue:0];
}

- (void)JFX_setZoomFactor_captureSessionQueue:(double)queue
{
  currentCameraPosition_captureSessionQueue = [(JFXVideoCameraController *)self currentCameraPosition_captureSessionQueue];
  if (queue >= 1.0 && currentCameraPosition_captureSessionQueue == 1)
  {
    [(JFXVideoCameraController *)self cameraVideoMaxZoomFactor_captureSessionQueue];
    if (v7 >= queue)
    {
      device = [(AVCaptureDeviceInput *)self->_cameraDeviceInput device];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __66__JFXVideoCameraController_JFX_setZoomFactor_captureSessionQueue___block_invoke;
      v9[3] = &__block_descriptor_40_e25_v16__0__AVCaptureDevice_8l;
      *&v9[4] = queue;
      JFX_configureCaptureDevice(device, v9);
    }
  }
}

- (void)JFX_rampToZoom:(double)zoom rate:(double)rate durationCaptureSessionQueue:(double)queue
{
  device = [(AVCaptureDeviceInput *)self->_cameraDeviceInput device];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__JFXVideoCameraController_JFX_rampToZoom_rate_durationCaptureSessionQueue___block_invoke;
  v9[3] = &__block_descriptor_56_e25_v16__0__AVCaptureDevice_8l;
  *&v9[4] = queue;
  *&v9[5] = zoom;
  *&v9[6] = rate;
  JFX_configureCaptureDevice(device, v9);
}

uint64_t __76__JFXVideoCameraController_JFX_rampToZoom_rate_durationCaptureSessionQueue___block_invoke(double *a1, void *a2)
{
  v2 = a1[5];
  if (a1[4] == 0.0)
  {
    v3 = a1[6];
    *&v3 = v3;
    return [a2 rampToVideoZoomFactor:v2 withRate:v3];
  }

  else
  {
    *&v2 = v2;
    return [a2 rampExponentiallyToVideoZoomFactor:v2 withDuration:?];
  }
}

- (BOOL)JFX_isUsingInternalMicCaptureSessionQueue
{
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  currentRoute = [mEMORY[0x277CB83F8] currentRoute];
  inputs = [currentRoute inputs];
  firstObject = [inputs firstObject];

  portType = [firstObject portType];
  LOBYTE(inputs) = [portType isEqualToString:*MEMORY[0x277CB8190]];

  return inputs;
}

- (BOOL)JFX_isARKitEnabledCaptureSessionQueue
{
  arCameraSessionController = [(JFXVideoCameraController *)self arCameraSessionController];
  v3 = arCameraSessionController != 0;

  return v3;
}

- (void)JFX_setupARCameraSessionController
{
  if (!self->_arCameraSessionController)
  {
    v4 = [JFXARKitCameraSessionController alloc];
    captureSession = self->_captureSession;
    device = [(AVCaptureDeviceInput *)self->_cameraDeviceInput device];
    v7 = [(JFXARKitCameraSessionController *)v4 initWithAVCaptureSession:captureSession captureDevice:device arSessionDelegateQueue:self->_dataOutSynchQueue];
    [(JFXVideoCameraController *)self setArCameraSessionController:v7];

    arCameraSessionController = [(JFXVideoCameraController *)self arCameraSessionController];
    [arCameraSessionController setFrameDelegate:self];
  }
}

- (void)JFX_startARCameraSessionController
{
  jFX_isARKitEnabledCaptureSessionQueue = [(JFXVideoCameraController *)self JFX_isARKitEnabledCaptureSessionQueue];
  arCameraSessionController = [(JFXVideoCameraController *)self arCameraSessionController];
  running = [arCameraSessionController running];

  if (jFX_isARKitEnabledCaptureSessionQueue && (running & 1) == 0)
  {
    v6 = JFXLog_DebugCamera();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [JFXVideoCameraController JFX_startARCameraSessionController];
    }

    arCameraSessionController2 = [(JFXVideoCameraController *)self arCameraSessionController];
    [arCameraSessionController2 startARSession];
  }
}

- (id)JFX_createPVFrameSetFromPixelBuffer:(__CVBuffer *)buffer withMetadata:(id)metadata timeInterval:(double)interval error:(id *)error
{
  metadataCopy = metadata;
  memset(&v27, 0, sizeof(v27));
  CMTimeMakeWithSeconds(&v27, interval, 1000000000);
  v11 = [MEMORY[0x277D41618] imageWithCVPixelBuffer:buffer];
  v12 = +[JFXMediaSettings timeScale];
  v13 = [metadataCopy objectForKeyedSubscript:@"PVFrameSetMetadataARMetadataKey"];
  arFrame = [v13 arFrame];
  v15 = arFrame;
  if (arFrame && !self->_rgbOnlyMemoji)
  {
    capturedDepthData = [arFrame capturedDepthData];
  }

  else
  {
    capturedDepthData = 0;
  }

  memset(&v26, 0, sizeof(v26));
  CMTimeMake(&v26, 1, v12);
  v24 = v27;
  v25 = 0;
  v23 = v26;
  v17 = [MEMORY[0x277D415D8] sampleBufferWithPVImageBuffer:v11 timestamp:&v24 frameDuration:&v23 error:&v25];
  v18 = v25;
  v19 = v18;
  if (error)
  {
    v20 = v18;
    *error = v19;
  }

  if (v19)
  {
    if ([v17 sampleBufferRef])
    {
      memset(&v24, 0, sizeof(v24));
      CMSampleBufferGetPresentationTimeStamp(&v24, [v17 sampleBufferRef]);
      v23 = v24;
      [(JFXVideoCameraController *)self JFX_notifyVideoDelegatesOfDroppedFrameWithTimeStamp:&v23];
    }

    v21 = 0;
  }

  else
  {
    v21 = [objc_alloc(MEMORY[0x277D41608]) initWithColorBuffer:v17 depthData:capturedDepthData metadata:metadataCopy];
  }

  return v21;
}

- (id)JFX_updateCurrentlyTrackedFaceID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  dCopy = d;
  v5 = [dCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(dCopy);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      currentlyTrackedFaceID = [(JFXVideoCameraController *)self currentlyTrackedFaceID];

      if (!currentlyTrackedFaceID)
      {
        [(JFXVideoCameraController *)self setCurrentlyTrackedFaceID:v9];
      }

      currentlyTrackedFaceID2 = [(JFXVideoCameraController *)self currentlyTrackedFaceID];
      v12 = [v9 isEqual:currentlyTrackedFaceID2];

      if (v12)
      {
        break;
      }

      lastObject = [dCopy lastObject];

      if (v9 == lastObject)
      {
        [(JFXVideoCameraController *)self setCurrentlyTrackedFaceID:v9];
      }

      if (v6 == ++v8)
      {
        v6 = [dCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  currentlyTrackedFaceID3 = [(JFXVideoCameraController *)self currentlyTrackedFaceID];

  return currentlyTrackedFaceID3;
}

- (id)JFX_currentAVMetadataFaceObject:(id)object
{
  objectCopy = object;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objectCopy, "count")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__JFXVideoCameraController_JFX_currentAVMetadataFaceObject___block_invoke;
  v12[3] = &unk_278D7BD28;
  v6 = v5;
  v13 = v6;
  [objectCopy enumerateObjectsUsingBlock:v12];
  v7 = [(JFXVideoCameraController *)self JFX_updateCurrentlyTrackedFaceID:v6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__JFXVideoCameraController_JFX_currentAVMetadataFaceObject___block_invoke_2;
  v11[3] = &unk_278D7BD50;
  v11[4] = self;
  v8 = [objectCopy indexOfObjectPassingTest:v11];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [objectCopy objectAtIndexedSubscript:v8];
  }

  return v9;
}

void __60__JFXVideoCameraController_JFX_currentAVMetadataFaceObject___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a2, "faceID")}];
  [v2 addObject:v3];
}

BOOL __60__JFXVideoCameraController_JFX_currentAVMetadataFaceObject___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 faceID];
  v4 = [*(a1 + 32) currentlyTrackedFaceID];
  v5 = v3 == [v4 integerValue];

  return v5;
}

- (JFXFaceAnchor)JFX_processPixelBufferForFaceTransform:(double)transform cameraIntrinsics:(float)intrinsics forNormalizedFaceRect:(CGFloat)rect withRollAngle:(CGFloat)angle withTimestamp:(CGFloat)timestamp andDuration:(CGFloat)duration detectionOrientation:(float)orientation interfaceOrientation:(uint64_t)self0 needsMirroring:(__CVBuffer *)self1
{
  v86[1] = *MEMORY[0x277D85DE8];
  v25 = *(MEMORY[0x277CBF2C0] + 16);
  *&v80.a = *MEMORY[0x277CBF2C0];
  *&v80.c = v25;
  *&v80.tx = *(MEMORY[0x277CBF2C0] + 32);
  Width = CVPixelBufferGetWidth(mirroring);
  Height = CVPixelBufferGetHeight(mirroring);
  CGAffineTransformMakeTranslation(&v80, Height, 0.0);
  v78 = v80;
  CGAffineTransformRotate(&v79, &v78, 3.14159265);
  v80 = v79;
  v28 = a2 / (intrinsics + intrinsics);
  vcpAnalyzer = [self vcpAnalyzer];

  if (vcpAnalyzer)
  {
    v30 = v28 * Width;
    vcpAnalyzer2 = [self vcpAnalyzer];
    v85 = *MEMORY[0x277D26820];
    v32 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
    v86[0] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:&v85 count:1];
    [vcpAnalyzer2 updatePreferredTransform:&v80 properties:v33];
  }

  else
  {
    vcpAnalyzer2 = JFXLog_camera();
    if (os_log_type_enabled(vcpAnalyzer2, OS_LOG_TYPE_ERROR))
    {
      [JFXVideoCameraController JFX_processPixelBufferForFaceTransform:cameraIntrinsics:forNormalizedFaceRect:withRollAngle:withTimestamp:andDuration:detectionOrientation:interfaceOrientation:needsMirroring:];
    }
  }

  v83[0] = *MEMORY[0x277D26810];
  v88.origin.x = rect;
  v88.origin.y = angle;
  v88.size.width = timestamp;
  v88.size.height = duration;
  v34 = NSStringFromCGRect(v88);
  v82 = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
  v84[0] = v35;
  v83[1] = *MEMORY[0x277D26818];
  *&v36 = orientation;
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
  v81 = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
  v84[1] = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];

  vcpAnalyzer3 = [self vcpAnalyzer];
  *&v79.a = *a12;
  v79.c = *(a12 + 16);
  *&v78.a = *a13;
  v78.c = *(a13 + 16);
  v41 = [vcpAnalyzer3 analyzePixelBuffer:mirroring withTimestamp:&v79 andDuration:&v78 properties:v39 error:0];

  v42 = [v41 objectForKeyedSubscript:*MEMORY[0x277D26808]];
  if ([v42 count])
  {
    firstObject = [v42 firstObject];
    [firstObject transform];
    v75 = v44;
    v70 = v46;
    v71 = v45;
    v69 = v47;
    geometry = [firstObject geometry];
    [geometry vertices];
    durationCopy = duration;
    geometry2 = [firstObject geometry];
    [geometry2 vertices];

    SquareWithSize = CGRectMakeSquareWithSize();
    v66 = v51;
    v67 = SquareWithSize;
    v53 = v52;
    v65 = v54;
    +[JFXFaceTrackingUtilities faceRectScaleFactorForInterfaceOrientation:andDeviceInterfaceOrientation:](JFXFaceTrackingUtilities, "faceRectScaleFactorForInterfaceOrientation:andDeviceInterfaceOrientation:", a15, +[JFXOrientationMonitor deviceInterfaceOrientation]);
    timestampCopy = timestamp;
    v56 = v55;
    angleCopy = angle;
    v59 = v58;
    v60 = JFX_adjustFaceAnchorCaptureInterfaceOrientationForDevice(a15);
    [self cameraFrameResolution_dataOutSynchQueue];
    v63 = [[JFXFaceAnchor alloc] initWithTransform:a16 forFaceRect:v60 needsMirroring:3 withFaceRectScaleFactor:v75 frameImageResolution:v71 captureInterfaceOrientation:v70 preferredAnchorOrientation:v69, v67, v66, v53, v65, v56, v59, v61, v62];
    [(JFXFaceAnchor *)v63 setFocalLength:v28];
    [(JFXFaceAnchor *)v63 setNormalizedFaceRect:rect, angleCopy, timestampCopy, durationCopy];
    if (![JFXFaceTrackingUtilities isFaceAnchorInRange:v63])
    {

      v63 = 0;
    }
  }

  else
  {
    v63 = 0;
  }

  return v63;
}

- (__n128)setCameraDeviceIntrinsics_dataOutSynchQueue:(__n128)queue
{
  result[27] = a2;
  result[28] = queue;
  result[29] = a4;
  return result;
}

- (CGSize)cameraFrameResolution_dataOutSynchQueue
{
  width = self->_cameraFrameResolution_dataOutSynchQueue.width;
  height = self->_cameraFrameResolution_dataOutSynchQueue.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)JFX_captureSessionDidStartRunningNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)JFX_captureSessionDidStopRunningNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __71__JFXVideoCameraController_JFX_captureSessionRuntimeErrorNotification___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)saveToPhotoLibrary:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __89__JFXVideoCameraController_preProcessFrameWithPixelBuffer_metadata_timestamp_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)dataOutputSynchronizer:didOutputSynchronizedDataCollection:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)dataOutputSynchronizer:(void *)a1 didOutputSynchronizedDataCollection:.cold.2(void *a1)
{
  [a1 droppedReason];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)dataOutputSynchronizer:didOutputSynchronizedDataCollection:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)JFX_configureCaptureSesstionForPosition:applyFFCZoom:configureLockedCamera:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __109__JFXVideoCameraController_JFX_configureCaptureSesstionForPosition_applyFFCZoom_configureLockedCamera_error___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(*a1 + 8) sessionPreset];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)JFX_processPixelBufferForFaceTransform:cameraIntrinsics:forNormalizedFaceRect:withRollAngle:withTimestamp:andDuration:detectionOrientation:interfaceOrientation:needsMirroring:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end