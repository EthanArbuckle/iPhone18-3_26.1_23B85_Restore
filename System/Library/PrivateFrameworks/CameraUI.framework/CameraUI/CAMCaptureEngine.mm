@interface CAMCaptureEngine
+ (void)preheatCaptureResources;
- ($42FF7B9720B8FFE93045C4EB8F3F13A3)_previewFilterSetForRequest:(SEL)a3 photo:(id)a4;
- ($42FF7B9720B8FFE93045C4EB8F3F13A3)_previewFilterSetForRequest:(SEL)a3 previewSize:(id)a4;
- (BOOL)_isSessionModificationRequiredByCommand:(id)a3 logReason:(id *)a4 minimumExecutionTime:(double *)a5;
- (BOOL)_lockAllEngineManagedDevices;
- (BOOL)_lockManagedCapturedDevice:(id)a3;
- (BOOL)_updatePanoramaSubgraphForEnteringBackground:(BOOL)a3;
- (CAMCaptureEngine)initWithPowerController:(id)a3 captureController:(id)a4 options:(int64_t)a5;
- (CUCaptureController)_captureController;
- (NSDate)_lastTapToRadarTime;
- (__CVBuffer)_createOutputPixelBufferWithSize:(CGSize)a3 matchingInputPixelBuffer:(__CVBuffer *)a4;
- (__CVBuffer)_newFilteredPixelBufferFromPixelBuffer:(__CVBuffer *)a3 metadata:(id)a4 filters:(id)a5;
- (double)_delayForRecoveryAttempt:(unint64_t)a3;
- (id)_TTRKeywordIDsFromCaptureRequest:(id)a3;
- (id)_accumulatedUserInfoFromCommand:(id)a3;
- (id)_captureEngineDeviceForDeviceType:(id)a3 position:(int64_t)a4;
- (id)_coordinationInfoForCTMVideoRequest:(id)a3 videoOutputURL:(id)a4 resolvedMomentCaptureMovieSettings:(id)a5;
- (id)_coordinationInfoForRequest:(id)a3 photo:(id)a4;
- (id)_coordinationInfoForRequest:(id)a3 resolvedSettings:(id)a4 videoComplementURL:(id)a5 isFiltered:(BOOL)a6;
- (id)_currentNotificationCenter;
- (id)_expectedResultSpecifiersForResolvedMomentCaptureMovieSettings:(id)a3;
- (id)_expectedResultSpecifiersForResolvedPhotoSettings:(id)a3;
- (id)_newStylePickerWithStyles:(id)a3;
- (id)_photoOutputFromSession:(id)a3;
- (id)_previewFiltersForFilterSet:(id *)a3;
- (id)_secondaryVideoDeviceInputFromSession:(id)a3;
- (id)_validateVideoAtURL:(id)a3 forCaptureRequest:(id)a4 captureID:(int64_t)a5 captureError:(id)a6 isVideoComplement:(BOOL)a7 stillImageDisplayTime:(id *)a8 reportedDuration:(id *)a9 outActualDuration:(id *)a10 outVideoRecordingStoppedReason:(int64_t *)a11 outSlowWriterFrameDrops:(BOOL *)a12;
- (id)_videoDeviceInputFromSession:(id)a3;
- (id)audioCaptureDevice;
- (id)audioCaptureDeviceInput;
- (id)cachedMomentCaptureSettingsForIdentifier:(id)a3;
- (id)colorBiasSlider;
- (id)creativeStylePickerWithStyles:(id)a3;
- (id)effectsPreviewVideoDataOutput;
- (id)intensitySlider;
- (id)metadataOutput;
- (id)movieFileOutput;
- (id)panoramaVideoDataOutput;
- (id)prewarmedAudioDeviceInput:(id)a3 device:(id)a4;
- (id)prewarmedCaptureSession;
- (id)prewarmedVideoDeviceInput:(id)a3 position:(int64_t)a4 device:(id)a5;
- (id)stillImageOutput;
- (id)systemPreferredCameraDevice;
- (id)systemStylePicker;
- (id)toneBiasSlider;
- (id)videoThumbnailOutput;
- (int64_t)_notificationForError:(__CFString *)a3;
- (void)_beginSessionConfigurationIfRequiredByCommand:(id)a3 withContext:(id)a4 logReason:(id *)a5 minimumExecutionTime:(double *)a6;
- (void)_cancelDelayedSessionNonstartRecovery;
- (void)_captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 forVideoCaptureRequest:(id)a6 videoZoomFactor:(double)a7 error:(id)a8;
- (void)_checkCallbacksForUniqueID:(int64_t)a3 afterDelay:(double)a4 startTime:(double)a5;
- (void)_commitSessionConfigurationIfNecessaryWithLogReason:(id)a3;
- (void)_didFinishStillImageCaptureForUniqueID:(int64_t)a3 error:(id)a4;
- (void)_ensureApertureSliderForGraphConfiguration:(id)a3;
- (void)_ensureEmulatedZoomSliderForGraphConfiguration:(id)a3;
- (void)_enumerateCaptureServicesUsingBlock:(id)a3 completion:(id)a4;
- (void)_executeCommand:(id)a3 withContext:(id)a4;
- (void)_handleApplicationDidEnterBackground:(id)a3;
- (void)_handleApplicationWillEnterForeground:(id)a3;
- (void)_handleCaptureOutputDidFinishCapturingPhoto:(id)a3 deferredPhotoProxy:(id)a4 error:(id)a5;
- (void)_handleFailedSessionRecoveryAttemptAfterDelay:(BOOL)a3;
- (void)_handleSessionDidStartRunning:(id)a3;
- (void)_handleSessionDidStopRunning:(id)a3;
- (void)_handleSessionInterruption:(id)a3;
- (void)_handleSessionInterruptionEnded:(id)a3;
- (void)_handleSessionRuntimeError:(id)a3;
- (void)_handleSessionWasPrewarmed:(id)a3;
- (void)_notifyServicesOfPanoramaConfigurationChangeWithImageQueue:(_CAImageQueue *)a3 direction:(int64_t)a4;
- (void)_panoramaSampleBufferQueue_stopPanoramaCaptureIfNecessaryInterrupted:(BOOL)a3;
- (void)_performSessionNonstartRecoveryIfNeeded;
- (void)_performSessionRuntimeRecovery:(id)a3;
- (void)_recoverFromSessionRuntimeError;
- (void)_resetPerformingRecoveryState;
- (void)_resultsQueue_logReceivedCallbacksForID:(int64_t)a3 withIntroString:(id)a4;
- (void)_resultsQueue_performPostprocessingForPreviewBuffer:(__CVBuffer *)a3 metadata:(id)a4 filters:(id *)a5 stillImageCaptureRequestKey:(id)a6 completionHandler:(id)a7;
- (void)_scheduleDelayedRecoveryCheckIfNecessary;
- (void)_scheduleDelayedSessionNonstartRecovery;
- (void)_sessionQueuePanoramaSetup;
- (void)_sessionQueuePanoramaTeardown;
- (void)_sessionQueue_startWithRetryCount:(unint64_t)a3 retryInterval:(double)a4 logReason:(id)a5 completion:(id)a6;
- (void)_setPanoramaImageQueue:(_CAImageQueue *)a3;
- (void)_showAccidentalLaunchNotificationIfNecessary;
- (void)_subgraphQueueCreatePanoramaImageQueueIfNecessary;
- (void)_subgraphQueueCreatePanoramaProcessorIfNecessaryWithEncodingBehavior:(int64_t)a3;
- (void)_subgraphQueueHandlePanoramaErrorNotification:(__CFString *)a3;
- (void)_subgraphQueueHandlePanoramaStatusNotification:(__CFString *)a3;
- (void)_subgraphQueueHandlePanoramaWarningNotification:(__CFString *)a3;
- (void)_unlockAllEngineManagedDevices;
- (void)_unlockManagedCaptureDevice:(id)a3;
- (void)_updateContext:(id)a3;
- (void)_updateCurrentlyConfiguredObjects;
- (void)_updateEffectsSubgraph;
- (void)_updateVideoThumbnailSubgraph;
- (void)_validateSessionRecovery;
- (void)cacheMomentCaptureSettings:(id)a3 forIdentifier:(id)a4;
- (void)cancelAutoResumeAfterDate:(id)a3;
- (void)captureEngineDevice:(id)a3 didChangeLensSelectorZoomFactor:(float)a4;
- (void)captureEngineDevice:(id)a3 didChangeSystemExposureTargetBias:(float)a4;
- (void)captureOutput:(id)a3 didBeginMovieCaptureForResolvedSettings:(id)a4;
- (void)captureOutput:(id)a3 didCapturePhotoForResolvedSettings:(id)a4;
- (void)captureOutput:(id)a3 didDropSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)captureOutput:(id)a3 didFinishCaptureForResolvedSettings:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 didFinishCapturingDeferredPhotoProxy:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 didFinishMovieCaptureForResolvedSettings:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 didFinishProcessingLivePhotoToMovieFileAtURL:(id)a4 duration:(id *)a5 photoDisplayTime:(id *)a6 metadataIdentifiers:(id)a7 resolvedSettings:(id)a8 error:(id)a9;
- (void)captureOutput:(id)a3 didFinishProcessingLivePhotoToMovieFileAtURL:(id)a4 duration:(id *)a5 photoDisplayTime:(id *)a6 resolvedSettings:(id)a7 error:(id)a8;
- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 didFinishRecordingLivePhotoMovieForEventualFileAtURL:(id)a4 resolvedSettings:(id)a5;
- (void)captureOutput:(id)a3 didFinishRecordingMovie:(id)a4;
- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6;
- (void)captureOutput:(id)a3 didFinishWritingMovie:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 forMetadataObjectTypes:(id)a5 fromConnection:(id)a6;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)captureOutput:(id)a3 didPauseRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5;
- (void)captureOutput:(id)a3 didResumeRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5;
- (void)captureOutput:(id)a3 didStartRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5;
- (void)captureOutput:(id)a3 readyForClientCompositingForOutputFileAtURL:(id)a4 compositingData:(id)a5;
- (void)captureOutput:(id)a3 readyForClientCompositingForResolvedSettings:(id)a4 compositingData:(id)a5;
- (void)captureOutput:(id)a3 readyForResponsiveRequestAfterResolvedSettings:(id)a4;
- (void)captureOutput:(id)a3 willBeginCaptureBeforeResolvingSettingsForUniqueID:(int64_t)a4;
- (void)captureOutput:(id)a3 willBeginCaptureForResolvedSettings:(id)a4;
- (void)captureOutput:(id)a3 willCapturePhotoForResolvedSettings:(id)a4;
- (void)changePanoramaEncodingBehaviorIfNeeded:(int64_t)a3;
- (void)changeToPanoramaDirection:(int64_t)a3;
- (void)clearCachedMomentCaptureSettingsForIdentifier:(id)a3;
- (void)currentInflightCapturesStringWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)enqueueCommand:(id)a3;
- (void)enqueueCommands:(id)a3;
- (void)panoramaProcessor:(id)a3 didProcessSampleBuffer:(opaqueCMSampleBuffer *)a4 withStatus:(int)a5 forRequest:(id)a6;
- (void)registerCaptureService:(id)a3;
- (void)registerEffectsPreviewSampleBufferDelegate:(id)a3;
- (void)registerStillImageCaptureRequest:(id)a3 withSettings:(id)a4;
- (void)registerVideoCaptureRequest:(id)a3;
- (void)registerVideoEndZoomFactor:(double)a3;
- (void)registerVideoThumbnailContentsDelegate:(id)a3;
- (void)requestCurrentCameraDeviceWithHandler:(id)a3;
- (void)session:(id)a3 controlsDidChangeAutoFocusLocked:(BOOL)a4;
- (void)session:(id)a3 didChangeActiveControl:(id)a4;
- (void)sessionControlsDidBecomeActive:(id)a3;
- (void)sessionControlsDidBecomeInactive:(id)a3;
- (void)sessionControlsWillEnterFullscreenAppearance:(id)a3;
- (void)sessionControlsWillExitFullscreenAppearance:(id)a3;
- (void)setMultiCamPictureInPictureMetrics:(id)a3;
- (void)setMultiCamPictureInPictureMotionBlurDisabled:(BOOL)a3;
- (void)setupLayoutMonitor;
- (void)startPanoramaCaptureWithRequest:(id)a3;
- (void)startWithRetryCount:(unint64_t)a3 retryInterval:(double)a4 logReason:(id)a5 completion:(id)a6;
- (void)stopMonitoringForAccidentalLaunch;
- (void)stopPanoramaCaptureInterrupted:(BOOL)a3;
- (void)stopRecording;
- (void)stopWithCompletion:(id)a3;
- (void)systemPreferredCameraDevice;
- (void)unregisterCaptureService:(id)a3;
- (void)unregisterEffectsPreviewSampleBufferDelegate:(id)a3;
- (void)unregisterVideoThumbnailContentsDelegate:(id)a3;
- (void)videoThumbnailOutput:(id)a3 willBeginRenderingThumbnailsWithContents:(id)a4;
@end

@implementation CAMCaptureEngine

+ (void)preheatCaptureResources
{
  if (preheatCaptureResources_onceToken != -1)
  {
    +[CAMCaptureEngine preheatCaptureResources];
  }
}

void __43__CAMCaptureEngine_preheatCaptureResources__block_invoke()
{
  v0 = FigDispatchQueueCreateWithPriority();
  v1 = prewarmedCaptureSessionQueue;
  prewarmedCaptureSessionQueue = v0;

  dispatch_async(prewarmedCaptureSessionQueue, &__block_literal_global_60);
  dispatch_async(prewarmedCaptureSessionQueue, &__block_literal_global_62);
  v2 = prewarmedCaptureSessionQueue;

  dispatch_async(v2, &__block_literal_global_64);
}

- (id)prewarmedCaptureSession
{
  v2 = _prewarmAVCaptureSession();
  v3 = prewarmedAVCaptureSession;
  prewarmedAVCaptureSession = 0;

  return v2;
}

void __43__CAMCaptureEngine_preheatCaptureResources__block_invoke_3()
{
  if (_prewarmAudioVideoDeviceTypes_onceToken != -1)
  {
    __43__CAMCaptureEngine_preheatCaptureResources__block_invoke_3_cold_1();
  }
}

void __43__CAMCaptureEngine_preheatCaptureResources__block_invoke_4()
{
  if (_prewarmAudioVideoDevices_onceToken != -1)
  {
    _prewarmAudioVideoDevices_cold_1();
  }
}

- (id)stillImageOutput
{
  stillImageOutput = self->_stillImageOutput;
  if (!stillImageOutput)
  {
    v4 = NSStringFromSelector(a2);
    [(CAMCaptureEngine *)self willChangeValueForKey:v4];
    v5 = objc_alloc_init(MEMORY[0x1E69870F0]);
    v6 = self->_stillImageOutput;
    self->_stillImageOutput = v5;

    v7 = [MEMORY[0x1E6987100] photoSettings];
    [(AVCapturePhotoOutput *)self->_stillImageOutput setPhotoSettingsForSceneMonitoring:v7];
    [(AVCapturePhotoOutput *)self->_stillImageOutput setPrivatePhotoDimensionsEnabled:1];
    [(CAMCaptureEngine *)self didChangeValueForKey:v4];

    stillImageOutput = self->_stillImageOutput;
  }

  return stillImageOutput;
}

- (BOOL)_lockAllEngineManagedDevices
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  captureEngineDeviceCache = self->__captureEngineDeviceCache;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CAMCaptureEngine__lockAllEngineManagedDevices__block_invoke;
  v7[3] = &unk_1E76FD348;
  v7[4] = self;
  v7[5] = &v8;
  [(CAMMemoizationCache *)captureEngineDeviceCache enumerateKeysAndObjectsUsingBlock:v7];
  v4 = [(CAMCaptureEngine *)self _lockManagedCapturedDevice:self->_audioCameraDevice];
  v5 = v9[3] & v4;
  [(CAMCaptureEngine *)self setManagedDevicesLockedForConfiguration:v5 & 1];
  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

- (id)videoThumbnailOutput
{
  videoThumbnailOutput = self->_videoThumbnailOutput;
  if (!videoThumbnailOutput)
  {
    v4 = NSStringFromSelector(a2);
    [(CAMCaptureEngine *)self willChangeValueForKey:v4];
    v5 = objc_alloc_init(MEMORY[0x1E6987188]);
    v6 = self->_videoThumbnailOutput;
    self->_videoThumbnailOutput = v5;

    [(CAMCaptureEngine *)self didChangeValueForKey:v4];
    videoThumbnailOutput = self->_videoThumbnailOutput;
  }

  return videoThumbnailOutput;
}

- (id)metadataOutput
{
  metadataOutput = self->_metadataOutput;
  if (!metadataOutput)
  {
    v4 = NSStringFromSelector(a2);
    [(CAMCaptureEngine *)self willChangeValueForKey:v4];
    v5 = objc_alloc_init(MEMORY[0x1E69870D0]);
    v6 = self->_metadataOutput;
    self->_metadataOutput = v5;

    [(CAMCaptureEngine *)self didChangeValueForKey:v4];
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("com.apple.camera.capture-engine.metadata-queue", v7);
    metadataObjectsQueue = self->__metadataObjectsQueue;
    self->__metadataObjectsQueue = v8;

    v10 = self->_metadataOutput;
    v11 = [(CAMCaptureEngine *)self _metadataObjectsQueue];
    [(AVCaptureMetadataOutput *)v10 setMetadataObjectsDelegate:self queue:v11];

    metadataOutput = self->_metadataOutput;
  }

  return metadataOutput;
}

- (void)_unlockAllEngineManagedDevices
{
  captureEngineDeviceCache = self->__captureEngineDeviceCache;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__CAMCaptureEngine__unlockAllEngineManagedDevices__block_invoke;
  v4[3] = &unk_1E76FD370;
  v4[4] = self;
  [(CAMMemoizationCache *)captureEngineDeviceCache enumerateKeysAndObjectsUsingBlock:v4];
  [(CAMCaptureEngine *)self _unlockManagedCaptureDevice:self->_audioCameraDevice];
  [(CAMCaptureEngine *)self setManagedDevicesLockedForConfiguration:0];
}

void __50__CAMCaptureEngine__unlockAllEngineManagedDevices__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 captureDevice];
  [*(a1 + 32) _unlockManagedCaptureDevice:v4];
}

- (void)_updateEffectsSubgraph
{
  v10 = [(AVCaptureSession *)self->__captureSession outputs];
  v3 = [v10 containsObject:self->_effectsPreviewVideoDataOutput];
  v4 = [(AVCaptureVideoDataOutput *)self->_effectsPreviewVideoDataOutput sampleBufferDelegate];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = [(CAMCaptureEngine *)self effectsPreviewVideoDataOutput];
    v9 = [(CAMCaptureEngine *)self _effectsPreviewSampleBufferQueue];
    [v8 setSampleBufferDelegate:self queue:v9];
  }

  else
  {
    if (v4)
    {
      v7 = v3;
    }

    else
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      [(AVCaptureVideoDataOutput *)self->_effectsPreviewVideoDataOutput setSampleBufferDelegate:0 queue:0];
    }
  }
}

- (void)_updateVideoThumbnailSubgraph
{
  v3 = [(CAMCaptureEngine *)self _captureSessionQueue];
  dispatch_assert_queue_V2(v3);

  v10 = [(AVCaptureSession *)self->__captureSession outputs];
  v4 = [v10 containsObject:self->_videoThumbnailOutput];
  v5 = [(AVCaptureVideoThumbnailOutput *)self->_videoThumbnailOutput thumbnailContentsDelegate];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = [(CAMCaptureEngine *)self videoThumbnailOutput];
    [v9 setThumbnailContentsDelegate:self];
  }

  else
  {
    if (v5)
    {
      v8 = v4;
    }

    else
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      [(AVCaptureVideoThumbnailOutput *)self->_videoThumbnailOutput setThumbnailContentsDelegate:0];
    }
  }
}

- (void)_scheduleDelayedSessionNonstartRecovery
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__CAMCaptureEngine__scheduleDelayedSessionNonstartRecovery__block_invoke;
  v2[3] = &unk_1E76F77B0;
  v2[4] = self;
  cam_perform_on_main_asap(v2);
}

uint64_t __59__CAMCaptureEngine__scheduleDelayedSessionNonstartRecovery__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelDelayedSessionNonstartRecovery];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel__performSessionNonstartRecoveryIfNeeded withObject:0 afterDelay:5.0];
}

- (void)_cancelDelayedSessionNonstartRecovery
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__CAMCaptureEngine__cancelDelayedSessionNonstartRecovery__block_invoke;
  v2[3] = &unk_1E76F77B0;
  v2[4] = self;
  cam_perform_on_main_asap(v2);
}

- (void)_scheduleDelayedRecoveryCheckIfNecessary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CAMCaptureEngine *)self _recoveryMutexQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CAMCaptureEngine__scheduleDelayedRecoveryCheckIfNecessary__block_invoke;
  block[3] = &unk_1E76FAFF0;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(v3, block);

  if (*(v7 + 24) == 1)
  {
    dispatch_time(0, 250000000);
    v4 = [(CAMCaptureEngine *)self _captureSessionQueue];
    pl_dispatch_after();
  }

  _Block_object_dispose(&v6, 8);
}

uint64_t __60__CAMCaptureEngine__scheduleDelayedRecoveryCheckIfNecessary__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isPerformingRecovery];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __48__CAMCaptureEngine__lockAllEngineManagedDevices__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 captureDevice];
  if (([*(a1 + 32) _lockManagedCapturedDevice:?] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (void)_performSessionNonstartRecoveryIfNeeded
{
  v3 = [(CAMCaptureEngine *)self _captureSession];
  v4 = [v3 isRunning];
  v5 = [v3 isInterrupted];
  if ((v4 & 1) == 0 && (v5 & 1) == 0)
  {
    v6 = [(CAMCaptureEngine *)self _recoveryMutexQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__CAMCaptureEngine__performSessionNonstartRecoveryIfNeeded__block_invoke;
    block[3] = &unk_1E76F77B0;
    block[4] = self;
    dispatch_sync(v6, block);

    [(CAMCaptureEngine *)self _handleFailedSessionRecoveryAttemptAfterDelay:0];
  }
}

- (void)_sessionQueuePanoramaTeardown
{
  v3 = [(CAMCaptureEngine *)self panoramaVideoDataOutput];
  [v3 setSampleBufferDelegate:0 queue:0];
  v4 = self;
  v5 = [(CAMCaptureEngine *)v4 _panoramaSampleBufferQueue];
  pl_dispatch_async();
}

- (id)panoramaVideoDataOutput
{
  v10[1] = *MEMORY[0x1E69E9840];
  panoramaVideoDataOutput = self->_panoramaVideoDataOutput;
  if (!panoramaVideoDataOutput)
  {
    v4 = NSStringFromSelector(a2);
    [(CAMCaptureEngine *)self willChangeValueForKey:v4];
    v5 = [[CAMPanoramaOutput alloc] initWithEngine:self];
    v6 = self->_panoramaVideoDataOutput;
    self->_panoramaVideoDataOutput = v5;

    v9 = *MEMORY[0x1E6966130];
    v10[0] = &unk_1F16C8618;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [(AVCaptureVideoDataOutput *)self->_panoramaVideoDataOutput setVideoSettings:v7];
    [(AVCaptureVideoDataOutput *)self->_panoramaVideoDataOutput setAlwaysDiscardsLateVideoFrames:0];
    [(AVCaptureVideoDataOutput *)self->_panoramaVideoDataOutput setAutomaticallyConfiguresOutputBufferDimensions:0];
    [(AVCaptureVideoDataOutput *)self->_panoramaVideoDataOutput setDeliversPreviewSizedOutputBuffers:0];
    [(CAMCaptureEngine *)self didChangeValueForKey:v4];

    panoramaVideoDataOutput = self->_panoramaVideoDataOutput;
  }

  return panoramaVideoDataOutput;
}

void __49__CAMCaptureEngine__sessionQueuePanoramaTeardown__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _panoramaSampleBufferQueue_stopPanoramaCaptureIfNecessaryInterrupted:1];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26;
  v10 = __Block_byref_object_dispose__26;
  v11 = 0;
  v2 = [*(a1 + 32) _panoramaSubgraphQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__CAMCaptureEngine__sessionQueuePanoramaTeardown__block_invoke_2;
  v5[3] = &unk_1E76FAFF0;
  v5[4] = *(a1 + 32);
  v5[5] = &v6;
  dispatch_sync(v2, v5);

  [v7[5] invalidate];
  v3 = v7[5];
  v7[5] = 0;

  [*(a1 + 32) _notifyServicesOfPanoramaConfigurationChangeWithImageQueue:0 direction:0];
  if (v3)
  {
    v4 = [*(a1 + 32) _powerController];
    [v4 removeAssertionForIdentifier:objc_msgSend(*(a1 + 32) withReason:{"_panoramaAssertionIdentifier"), 8}];
  }

  _Block_object_dispose(&v6, 8);
}

void __49__CAMCaptureEngine__sessionQueuePanoramaTeardown__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _panoramaProcessor];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) _setPanoramaProcessor:0];
  [*(a1 + 32) _setPanoramaImageQueue:0];
  v5 = *(a1 + 32);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, v5, *MEMORY[0x1E6985F40], 0);
  v7 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v7, v5, *MEMORY[0x1E6985F58], 0);
  v8 = CFNotificationCenterGetLocalCenter();
  v9 = *MEMORY[0x1E6985EB8];

  CFNotificationCenterRemoveObserver(v8, v5, v9, 0);
}

- (id)prewarmedVideoDeviceInput:(id)a3 position:(int64_t)a4 device:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (_prewarmAudioVideoDeviceTypes_onceToken != -1)
  {
    __43__CAMCaptureEngine_preheatCaptureResources__block_invoke_3_cold_1();
  }

  if (prewarmedVideoDeviceType != v7 || prewarmedVideoDevicePosition != a4)
  {
    goto LABEL_11;
  }

  if (_prewarmAudioVideoDevices_onceToken != -1)
  {
    _prewarmAudioVideoDevices_cold_1();
  }

  if (prewarmedVideoDevice == v8)
  {
    v10 = prewarmedVideoDeviceInput;
    v12 = prewarmedVideoDeviceInput;
    prewarmedVideoDeviceInput = 0;
  }

  else
  {
LABEL_11:
    v10 = 0;
  }

  return v10;
}

- (id)prewarmedAudioDeviceInput:(id)a3 device:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (_prewarmAudioVideoDeviceTypes_onceToken != -1)
  {
    __43__CAMCaptureEngine_preheatCaptureResources__block_invoke_3_cold_1();
  }

  if (prewarmedAudioDeviceType != v5)
  {
    goto LABEL_7;
  }

  if (_prewarmAudioVideoDevices_onceToken != -1)
  {
    _prewarmAudioVideoDevices_cold_1();
  }

  if (prewarmedAudioDevice == v6)
  {
    v7 = prewarmedAudioDeviceInput;
    v9 = prewarmedAudioDeviceInput;
    prewarmedAudioDeviceInput = 0;
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  return v7;
}

- (CAMCaptureEngine)initWithPowerController:(id)a3 captureController:(id)a4 options:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v92.receiver = self;
  v92.super_class = CAMCaptureEngine;
  v11 = [(CAMCaptureEngine *)&v92 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->__captureController, v10);
    objc_storeStrong(&v12->__powerController, a3);
    v12->__engineOptions = a5;
    v13 = +[CAMCaptureCapabilities capabilities];
    v14 = [(CAMCaptureEngine *)v12 prewarmedCaptureSession];
    captureSession = v12->__captureSession;
    v12->__captureSession = v14;

    if (!v12->__captureSession)
    {
      v16 = [v13 useMultiCamSession];
      v17 = 0x1E69870E0;
      if (!v16)
      {
        v17 = 0x1E6987110;
      }

      v18 = objc_alloc_init(*v17);
      v19 = v12->__captureSession;
      v12->__captureSession = v18;
    }

    AVCaptureSessionSetAuthorizedToUseCameraInMultipleForegroundAppLayout();
    if (([v13 isSpatialOverCaptureSupported] & 1) != 0 || objc_msgSend(v13, "isAspectRatioCropSupported"))
    {
      v20 = [objc_alloc(MEMORY[0x1E6987220]) initWithSession:v12->__captureSession];
      overCaptureVideoPreviewLayer = v12->__overCaptureVideoPreviewLayer;
      v12->__overCaptureVideoPreviewLayer = v20;

      objc_storeStrong(&v12->__videoPreviewLayer, v12->__overCaptureVideoPreviewLayer);
      if (objc_opt_respondsToSelector())
      {
        [(AVSpatialOverCaptureVideoPreviewLayer *)v12->__overCaptureVideoPreviewLayer setAutomaticallyDimsOverCaptureRegion:0];
      }
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x1E6987180]) initWithSession:v12->__captureSession];
      videoPreviewLayer = v12->__videoPreviewLayer;
      v12->__videoPreviewLayer = v22;
    }

    if ([v13 isFrontRearSimultaneousVideoSupported])
    {
      v24 = objc_alloc_init(MEMORY[0x1E6987180]);
      secondaryVideoPreviewLayer = v12->__secondaryVideoPreviewLayer;
      v12->__secondaryVideoPreviewLayer = v24;
    }

    v26 = [[CAMMemoizationCache alloc] initWithMemoizesNil:0];
    captureEngineDeviceCache = v12->__captureEngineDeviceCache;
    v12->__captureEngineDeviceCache = v26;

    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v12 selector:sel__handleSessionDidStartRunning_ name:*MEMORY[0x1E6986A90] object:v12->__captureSession];
    [v28 addObserver:v12 selector:sel__handleSessionDidStopRunning_ name:*MEMORY[0x1E6986A98] object:v12->__captureSession];
    [v28 addObserver:v12 selector:sel__handleSessionRuntimeError_ name:*MEMORY[0x1E6986B20] object:v12->__captureSession];
    [v28 addObserver:v12 selector:sel__handleSessionInterruption_ name:*MEMORY[0x1E6986B28] object:v12->__captureSession];
    [v28 addObserver:v12 selector:sel__handleSessionInterruptionEnded_ name:*MEMORY[0x1E6986AA8] object:v12->__captureSession];
    v29 = +[CAMCaptureCapabilities capabilities];
    v30 = [v29 isInternalInstall];

    if (v30)
    {
      [v28 addObserver:v12 selector:sel__handleSessionWasPrewarmed_ name:@"AVCaptureSessionWasPrewarmedNotification" object:v12->__captureSession];
    }

    v76 = v28;
    v31 = +[CAMPriorityNotificationCenter defaultCenter];
    [v31 addObserver:v12 selector:sel__handleApplicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
    v75 = v31;
    [v31 addObserver:v12 selector:sel__handleApplicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
    objc_storeStrong(&v12->__captureSessionQueue, prewarmedCaptureSessionQueue);
    captureSessionQueue = v12->__captureSessionQueue;
    if (!captureSessionQueue)
    {
      v33 = FigDispatchQueueCreateWithPriority();
      v34 = v12->__captureSessionQueue;
      v12->__captureSessionQueue = v33;

      captureSessionQueue = v12->__captureSessionQueue;
    }

    v78 = v10;
    [(AVCaptureSession *)v12->__captureSession setControlsDelegate:v12 queue:captureSessionQueue];
    v87 = MEMORY[0x1E69E9820];
    v88 = 3221225472;
    v89 = __70__CAMCaptureEngine_initWithPowerController_captureController_options___block_invoke;
    v90 = &unk_1E76F77B0;
    v35 = v12;
    v91 = v35;
    pl_dispatch_async();
    v36 = FigDispatchQueueCreateWithPriority();
    captureResultsQueue = v35->__captureResultsQueue;
    v35->__captureResultsQueue = v36;

    v82 = MEMORY[0x1E69E9820];
    v83 = 3221225472;
    v84 = __70__CAMCaptureEngine_initWithPowerController_captureController_options___block_invoke_2;
    v85 = &unk_1E76F77B0;
    v38 = v35;
    v86 = v38;
    pl_dispatch_async();
    v74 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v39 = dispatch_queue_create("com.apple.camera.capture-engine.services-queue", v74);
    captureServicesQueue = v38->__captureServicesQueue;
    v38->__captureServicesQueue = v39;

    v41 = v38->__captureServicesQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__CAMCaptureEngine_initWithPowerController_captureController_options___block_invoke_3;
    block[3] = &unk_1E76F77B0;
    v42 = v38;
    v81 = v42;
    dispatch_sync(v41, block);
    v43 = dispatch_queue_create("com.apple.camera.capture-engine.recovery-queue", 0);
    recoveryMutexQueue = v42->__recoveryMutexQueue;
    v42->__recoveryMutexQueue = v43;

    if ([v13 isFrontRearSimultaneousVideoSupported])
    {
      v45 = -[CAMMultiCamPIPCompositor initWithPictureInPictureRotationAngle:]([CAMMultiCamPIPCompositor alloc], "initWithPictureInPictureRotationAngle:", [v13 frontCameraRotationAngle]);
      multiCamPIPCompositingQueue_multiCamPIPCompositor = v42->__multiCamPIPCompositingQueue_multiCamPIPCompositor;
      v42->__multiCamPIPCompositingQueue_multiCamPIPCompositor = v45;

      v47 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v48 = dispatch_queue_create("com.apple.camera.capture-engine.multicam-pip-compositing-queue", v47);
      multiCamPIPCompositingQueue = v42->__multiCamPIPCompositingQueue;
      v42->__multiCamPIPCompositingQueue = v48;
    }

    v77 = v13;
    v79 = v9;
    v73 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v50 = dispatch_queue_create("com.apple.camera.capture-engine.panorama-first-image-semaphore-queue", v73);
    panoramaFirstImageQueueUpdateSemaphoreQueue = v42->__panoramaFirstImageQueueUpdateSemaphoreQueue;
    v42->__panoramaFirstImageQueueUpdateSemaphoreQueue = v50;

    v52 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v53 = dispatch_queue_create("com.apple.camera.capture-engine.effects-sample-buffer-queue", v52);
    effectsPreviewSampleBufferQueue = v42->__effectsPreviewSampleBufferQueue;
    v42->__effectsPreviewSampleBufferQueue = v53;

    v55 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v56 = dispatch_queue_create("com.apple.camera.capture-engine.panorama-subgraph-queue", v55);
    panoramaSubgraphQueue = v42->__panoramaSubgraphQueue;
    v42->__panoramaSubgraphQueue = v56;

    v58 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v59 = dispatch_queue_create("com.apple.camera.capture-engine.panorama-sample-buffer-queue", v58);
    panoramaSampleBufferQueue = v42->__panoramaSampleBufferQueue;
    v42->__panoramaSampleBufferQueue = v59;

    v61 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v62 = dispatch_queue_create("com.apple.camera.capture-engine.signpost-mutex-queue", v61);
    signpostMutexQueue = v42->__signpostMutexQueue;
    v42->__signpostMutexQueue = v62;

    v64 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:8];
    didEmitCaptureIntervalStartedSignpostsForUniqueID = v42->__didEmitCaptureIntervalStartedSignpostsForUniqueID;
    v42->__didEmitCaptureIntervalStartedSignpostsForUniqueID = v64;

    v66 = +[CAMCaptureCapabilities capabilities];
    if ([v66 hostProcess])
    {
      v67 = +[CAMCaptureCapabilities capabilities];
      v68 = [v67 hostProcess] == 4;
    }

    else
    {
      v68 = 1;
    }

    v69 = +[CAMCaptureCapabilities capabilities];
    v70 = [v69 shouldEnableUserNotifications];

    if (v70 && v68)
    {
      [(CAMCaptureEngine *)v42 setupLayoutMonitor];
    }

    v71 = v42;

    v10 = v78;
    v9 = v79;
  }

  return v12;
}

uint64_t __70__CAMCaptureEngine_initWithPowerController_captureController_options___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 272);
  *(v3 + 272) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __70__CAMCaptureEngine_initWithPowerController_captureController_options___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;

  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 264);
  *(v6 + 264) = v5;

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = *(a1 + 32);
  v10 = *(v9 + 280);
  *(v9 + 280) = v8;

  return MEMORY[0x1EEE66BB8](v8, v10);
}

uint64_t __70__CAMCaptureEngine_initWithPowerController_captureController_options___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 328);
  *(v3 + 328) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setupLayoutMonitor
{
  v3 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "setupLayoutMonitor as enabled", buf, 2u);
  }

  v4 = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
  [v4 setNeedsUserInteractivePriority:1];
  objc_initWeak(buf, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__CAMCaptureEngine_setupLayoutMonitor__block_invoke;
  v6[3] = &unk_1E76FD128;
  objc_copyWeak(&v7, buf);
  [v4 setTransitionHandler:v6];
  v5 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:v4];
  [(CAMCaptureEngine *)self set_layoutMonitor:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __38__CAMCaptureEngine_setupLayoutMonitor__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CAMCaptureEngine_setupLayoutMonitor__block_invoke_2;
  v7[3] = &unk_1E76F7960;
  v8 = v4;
  v9 = WeakRetained;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __38__CAMCaptureEngine_setupLayoutMonitor__block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v1 = [*(a1 + 32) elements];
  v2 = [v1 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v26;
    v6 = @"com.apple.camera";
    v7 = "com.apple.camera";
    v8 = "Camera";
    *&v3 = 138412802;
    v22 = v3;
    do
    {
      v9 = 0;
      v23 = v4;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [v10 identifier];
        if ([v11 isEqual:v6])
        {
          v12 = [v10 layoutRole];

          if (v12 == 6)
          {
            v13 = os_log_create(v7, v8);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = [v10 description];
              v15 = v6;
              v16 = v5;
              v17 = v1;
              v18 = v8;
              v19 = v7;
              v20 = [v10 sb_isTransitioning];
              v21 = [*(a1 + 40) _cameraTransitionInProcess];
              *buf = v22;
              v30 = v14;
              v31 = 1024;
              v32 = v20;
              v7 = v19;
              v8 = v18;
              v1 = v17;
              v5 = v16;
              v6 = v15;
              v4 = v23;
              v33 = 1024;
              v34 = v21;
              _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "transitionHandler Camera was foreground transitionHandler %@, sb_isTransitioning %i, _cameraTransitionInProccess %i", buf, 0x18u);
            }

            [*(a1 + 40) set_cameraTransitionInProcess:{objc_msgSend(v10, "sb_isTransitioning")}];
          }
        }

        else
        {
        }

        ++v9;
      }

      while (v4 != v9);
      v4 = [v1 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v4);
  }
}

- (void)dealloc
{
  v3 = [(CAMCaptureEngine *)self _layoutMonitor];
  [v3 invalidate];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5 = +[CAMPriorityNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = CAMCaptureEngine;
  [(CAMCaptureEngine *)&v6 dealloc];
}

- (void)startWithRetryCount:(unint64_t)a3 retryInterval:(double)a4 logReason:(id)a5 completion:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = [(CAMCaptureEngine *)self _captureSessionQueue];
  v13 = v9;
  v11 = v9;
  v12 = v8;
  pl_dispatch_async();
}

- (void)_sessionQueue_startWithRetryCount:(unint64_t)a3 retryInterval:(double)a4 logReason:(id)a5 completion:(id)a6
{
  *&v27[13] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = [(CAMCaptureEngine *)self _captureSessionQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(CAMCaptureEngine *)self _captureSession];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMCaptureEngine start (id=%ld: \"%@\"", ++_sessionQueue_startWithRetryCount_retryInterval_logReason_completion__uniqueID, v10];
  LODWORD(v12) = [v13 isRunning];
  v15 = os_log_create("com.apple.camera", "CaptureSession");
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v16)
    {
      *buf = 138543362;
      v25 = v14;
      _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Session is already running. Skipping call to [AVCaptureSession startRunning].", buf, 0xCu);
    }
  }

  else
  {
    if (v16)
    {
      *buf = 138543362;
      v25 = v14;
      _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Session is not running. Calling [AVCaptureSession startRunning].", buf, 0xCu);
    }

    [(CAMCaptureEngine *)self _scheduleDelayedSessionNonstartRecovery];
    Current = CFAbsoluteTimeGetCurrent();
    if (a3 == -1)
    {
LABEL_7:
      v18 = CFAbsoluteTimeGetCurrent();
      v15 = os_log_create("com.apple.camera", "CaptureSession");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v13 isInterrupted];
        *buf = 138543874;
        v25 = v14;
        v26 = 1024;
        *v27 = v19;
        v27[2] = 2048;
        *&v27[3] = v18 - Current;
        _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [AVCaptureSession startRunning] finished with failure - session could not be started after retries. isInterrupted=%d (took %.3f seconds)", buf, 0x1Cu);
      }
    }

    else
    {
      for (i = 2; ; ++i)
      {
        CAMSignpostWithIDAndArgs(4, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
        CAMSignpostWithIDAndArgs(15, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
        [v13 startRunning];
        CAMSignpostWithIDAndArgs(16, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
        if ([v13 isRunning])
        {
          break;
        }

        if (i - a3 == 2)
        {
          goto LABEL_7;
        }

        v21 = os_log_create("com.apple.camera", "CaptureSession");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v25 = v14;
          v26 = 2048;
          *v27 = a4;
          _os_log_impl(&dword_1A3640000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [AVCaptureSession startRunning] finished with failure. Waiting %.3f seconds for retry.", buf, 0x16u);
        }

        [MEMORY[0x1E696AF00] sleepForTimeInterval:a4];
        v22 = os_log_create("com.apple.camera", "CaptureSession");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v25 = v14;
          v26 = 2048;
          *v27 = i;
          _os_log_impl(&dword_1A3640000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling [AVCaptureSession startRunning] for attempt #%ld", buf, 0x16u);
        }
      }

      v23 = CFAbsoluteTimeGetCurrent();
      v15 = os_log_create("com.apple.camera", "CaptureSession");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v25 = v14;
        v26 = 2048;
        *v27 = v23 - Current;
        _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [AVCaptureSession startRunning] finished with success. (took %.3f seconds)", buf, 0x16u);
      }
    }
  }

  if (v11)
  {
    v11[2](v11);
  }
}

- (void)stopWithCompletion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CAMCaptureEngine *)self _cancelDelayedSessionNonstartRecovery];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(CAMCaptureEngine *)self _recoveryMutexQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CAMCaptureEngine_stopWithCompletion___block_invoke;
  block[3] = &unk_1E76FAFF0;
  block[4] = self;
  block[5] = &v12;
  dispatch_sync(v5, block);

  if (*(v13 + 24) == 1)
  {
    v6 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138543362;
      v17 = v7;
      v8 = v7;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clearing performing recovery flag due to calling stopWithCompletion: ", buf, 0xCu);
    }

    [(CAMCaptureEngine *)self _resetPerformingRecoveryState];
  }

  v9 = [(CAMCaptureEngine *)self _captureSessionQueue];
  v10 = v4;
  pl_dispatch_async();

  _Block_object_dispose(&v12, 8);
}

uint64_t __39__CAMCaptureEngine_stopWithCompletion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isPerformingRecovery];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __39__CAMCaptureEngine_stopWithCompletion___block_invoke_112(uint64_t a1)
{
  v2 = os_log_create("com.apple.camera", "CaptureSession");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "Servicing an explicit request to stop the session using [AVCaptureSession stopRunning] regardless of whether it is running or not", v5, 2u);
  }

  v3 = [*(a1 + 32) _captureSession];
  [*(a1 + 32) _cancelDelayedSessionNonstartRecovery];
  CAMSignpostWithIDAndArgs(8, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  CAMSignpostWithIDAndArgs(17, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  [v3 stopRunning];
  CAMSignpostWithIDAndArgs(18, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

- (void)cancelAutoResumeAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureEngine *)self _captureSessionQueue];
  v6 = v4;
  pl_dispatch_async();
}

void __46__CAMCaptureEngine_cancelAutoResumeAfterDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _captureSession];
  [v2 cancelForegroundAutoResumeAfterDate:*(a1 + 40)];
}

- (void)_handleSessionDidStartRunning:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.camera", "CaptureSession");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v5 = v9;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] AVCaptureSession started running!", buf, 0xCu);
  }

  v6 = [(CAMCaptureEngine *)self _captureResultsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CAMCaptureEngine__handleSessionDidStartRunning___block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_async(v6, block);

  [(CAMCaptureEngine *)self _scheduleDelayedRecoveryCheckIfNecessary];
  [(CAMCaptureEngine *)self _enumerateCaptureServicesUsingBlock:&__block_literal_global_115];
}

void __50__CAMCaptureEngine__handleSessionDidStartRunning___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 handleSessionDidStartRunning];
  }
}

- (void)_handleSessionDidStopRunning:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.camera", "CaptureSession");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v6 = *(&buf + 4);
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got AVCaptureSession did stop running notification", &buf, 0xCu);
  }

  [(CAMCaptureEngine *)self _enumerateCaptureServicesUsingBlock:&__block_literal_global_119];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v10 = 0x2020000000;
  v11 = 0;
  v7 = [(CAMCaptureEngine *)self _recoveryMutexQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__CAMCaptureEngine__handleSessionDidStopRunning___block_invoke_2;
  v8[3] = &unk_1E76FAFF0;
  v8[4] = self;
  v8[5] = &buf;
  dispatch_sync(v7, v8);

  if (*(*(&buf + 1) + 24) == 1 && ![(CAMCaptureEngine *)self isInterrupted])
  {
    [(CAMCaptureEngine *)self _recoverFromSessionRuntimeError];
  }

  _Block_object_dispose(&buf, 8);
}

void __49__CAMCaptureEngine__handleSessionDidStopRunning___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 handleSessionDidStopRunning];
  }
}

uint64_t __49__CAMCaptureEngine__handleSessionDidStopRunning___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _isPerformingRecovery];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_handleSessionRuntimeError:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E6986AA0]];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v7 = [(CAMCaptureEngine *)self _recoveryMutexQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __47__CAMCaptureEngine__handleSessionRuntimeError___block_invoke;
  v18[3] = &unk_1E76FAFF0;
  v18[4] = self;
  v18[5] = &v19;
  dispatch_sync(v7, v18);

  if (*(v20 + 24))
  {
    v8 = @"during recovery ";
  }

  else
  {
    v8 = &stru_1F1660A30;
  }

  v9 = v8;
  v10 = os_log_create("com.apple.camera", "CaptureSession");
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      *buf = 138543874;
      v24 = v12;
      v25 = 2114;
      v26 = v9;
      v27 = 2114;
      v28 = v6;
      v13 = v12;
      _os_log_error_impl(&dword_1A3640000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Received a session runtime error notification %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    *buf = 138543874;
    v24 = v14;
    v25 = 2114;
    v26 = v9;
    v27 = 2114;
    v28 = v4;
    v15 = v14;
    _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received a session runtime error notification %{public}@without an explicit error: %{public}@", buf, 0x20u);
  }

  if (*(v20 + 24) == 1)
  {
    v16 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      [(CAMCaptureEngine *)v17 _handleSessionRuntimeError:v6, buf];
    }
  }

  else
  {
    [(CAMCaptureEngine *)self _performSessionRuntimeRecovery:v6];
  }

  _Block_object_dispose(&v19, 8);
}

uint64_t __47__CAMCaptureEngine__handleSessionRuntimeError___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isPerformingRecovery];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __59__CAMCaptureEngine__performSessionNonstartRecoveryIfNeeded__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isPerformingRecovery];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) _setPerformingRecovery:1];
    v3 = *(a1 + 32);

    return [v3 _setNumberOfRecoveryAttempts:0];
  }

  return result;
}

- (void)_performSessionRuntimeRecovery:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.camera", "CaptureSession");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CAMCaptureEngine _performSessionRuntimeRecovery:];
  }

  v6 = [(CAMCaptureEngine *)self _recoveryMutexQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CAMCaptureEngine__performSessionRuntimeRecovery___block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(v6, block);

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __51__CAMCaptureEngine__performSessionRuntimeRecovery___block_invoke_2;
  v11 = &unk_1E76FD198;
  v12 = v4;
  v7 = v4;
  [(CAMCaptureEngine *)self _enumerateCaptureServicesUsingBlock:&v8];
  [(CAMCaptureEngine *)self _recoverFromSessionRuntimeError:v8];
}

void __51__CAMCaptureEngine__performSessionRuntimeRecovery___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 willPerformRecoveryFromRuntimeError:*(a1 + 32)];
  }
}

- (void)_handleSessionInterruption:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CAMCaptureEngine *)self _panoramaSampleBufferQueue];
  block[5] = MEMORY[0x1E69E9820];
  block[6] = 3221225472;
  block[7] = __47__CAMCaptureEngine__handleSessionInterruption___block_invoke;
  block[8] = &unk_1E76F77B0;
  block[9] = self;
  pl_dispatch_async();

  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x1E6986AB0]];
  v8 = [v7 integerValue];
  v9 = v8;
  if (v8 > 3)
  {
    switch(v8)
    {
      case 4:
        v12 = @"VideoDeviceNotAvailableWithMultipleForegroundApps";
        break;
      case 5:
        v13 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6986AB8]];
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VideoDeviceNotAvailableDueToSystemPressure(%@)", v13];

        break;
      case 6:
        v12 = @"SensitiveContentMitigationActivated";
        break;
      default:
        v12 = 0;
        break;
    }
  }

  else
  {
    v10 = @"AudioDeviceInUseByAnotherClient";
    v11 = @"VideoDeviceInUseByAnotherClient";
    if (v8 != 3)
    {
      v11 = 0;
    }

    if (v8 != 2)
    {
      v10 = v11;
    }

    if (v8 == 1)
    {
      v12 = @"VideoDeviceNotAvailableInBackground";
    }

    else
    {
      v12 = v10;
    }
  }

  v14 = os_log_create("com.apple.camera", "CaptureSession");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v20 = objc_opt_class();
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = v4;
    v15 = v20;
    _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] AVCaptureSession was interrupted for %{public}@! (%{public}@)", buf, 0x20u);
  }

  [(CAMCaptureEngine *)self _setInterrupted:1];
  v16 = [(CAMCaptureEngine *)self _recoveryMutexQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CAMCaptureEngine__handleSessionInterruption___block_invoke_148;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(v16, block);

  [(CAMCaptureEngine *)self _cancelDelayedSessionNonstartRecovery];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47__CAMCaptureEngine__handleSessionInterruption___block_invoke_149;
  v17[3] = &__block_descriptor_40_e29_v16__0___CAMCaptureService__8l;
  v17[4] = v9;
  [(CAMCaptureEngine *)self _enumerateCaptureServicesUsingBlock:v17];
}

uint64_t __47__CAMCaptureEngine__handleSessionInterruption___block_invoke_148(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _isPerformingRecovery];
  if (result)
  {
    v3 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = objc_opt_class();
      v4 = v6;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clearing performing recovery flag due to interruptions ", &v5, 0xCu);
    }

    [*(a1 + 32) _setPerformingRecovery:0];
    return [*(a1 + 32) _setNumberOfRecoveryAttempts:0];
  }

  return result;
}

void __47__CAMCaptureEngine__handleSessionInterruption___block_invoke_149(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 handleSessionInterruptionForReason:*(a1 + 32)];
  }
}

- (void)_handleSessionInterruptionEnded:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.camera", "CaptureSession");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v5 = v7;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] AVCaptureSession interruption ended!", &v6, 0xCu);
  }

  [(CAMCaptureEngine *)self _setInterrupted:0];
  [(CAMCaptureEngine *)self _enumerateCaptureServicesUsingBlock:&__block_literal_global_154];
}

void __52__CAMCaptureEngine__handleSessionInterruptionEnded___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 handleSessionInterruptionEnded];
  }
}

- (double)_delayForRecoveryAttempt:(unint64_t)a3
{
  v3 = 4;
  if (a3 < 4)
  {
    v3 = a3;
  }

  return _delayForRecoveryAttempt__delayForAttempt[v3];
}

- (void)_recoverFromSessionRuntimeError
{
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_resetPerformingRecoveryState
{
  v3 = [(CAMCaptureEngine *)self _recoveryMutexQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CAMCaptureEngine__resetPerformingRecoveryState__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __49__CAMCaptureEngine__resetPerformingRecoveryState__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setPerformingRecovery:0];
  v2 = *(a1 + 32);

  return [v2 _setNumberOfRecoveryAttempts:0];
}

- (void)_handleFailedSessionRecoveryAttemptAfterDelay:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v5 = [(CAMCaptureEngine *)self _recoveryMutexQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CAMCaptureEngine__handleFailedSessionRecoveryAttemptAfterDelay___block_invoke;
  block[3] = &unk_1E76FAFF0;
  block[4] = self;
  block[5] = &v21;
  dispatch_sync(v5, block);

  if (v22[3])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v6 = [(CAMCaptureEngine *)self _recoveryMutexQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__CAMCaptureEngine__handleFailedSessionRecoveryAttemptAfterDelay___block_invoke_2;
    v15[3] = &unk_1E76FAFF0;
    v15[4] = self;
    v15[5] = &v16;
    dispatch_sync(v6, v15);

    v7 = v17[3];
    if (v7 == 5)
    {
      v8 = os_log_create("com.apple.camera", "CaptureSession");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        objc_opt_class();
        [CAMCaptureEngine _handleFailedSessionRecoveryAttemptAfterDelay:];
      }
    }

    else
    {
      if (v7 < 6)
      {
        if (v3)
        {
          [(CAMCaptureEngine *)self _delayForRecoveryAttempt:?];
          v10 = v9;
          v11 = os_log_create("com.apple.camera", "CaptureSession");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = objc_opt_class();
            [(CAMCaptureEngine *)v12 _handleFailedSessionRecoveryAttemptAfterDelay:v25, v10];
          }

          dispatch_time(0, (v10 * 1000000000.0));
          v13 = [(CAMCaptureEngine *)self _captureSessionQueue];
          pl_dispatch_after();
        }

        else
        {
          v14 = [(CAMCaptureEngine *)self _captureSessionQueue];
          pl_dispatch_async();
        }

        goto LABEL_15;
      }

      v8 = os_log_create("com.apple.camera", "CaptureSession");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        objc_opt_class();
        [CAMCaptureEngine _handleFailedSessionRecoveryAttemptAfterDelay:];
      }
    }

LABEL_15:
    _Block_object_dispose(&v16, 8);
  }

  _Block_object_dispose(&v21, 8);
}

uint64_t __66__CAMCaptureEngine__handleFailedSessionRecoveryAttemptAfterDelay___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isPerformingRecovery];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __66__CAMCaptureEngine__handleFailedSessionRecoveryAttemptAfterDelay___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _numberOfRecoveryAttempts] + 1;
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 40) + 8) + 24);

  return [v2 _setNumberOfRecoveryAttempts:v3];
}

- (void)_validateSessionRecovery
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(CAMCaptureEngine *)self _captureSession];
  if ([v3 isRunning])
  {
    v4 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = objc_opt_class();
      v5 = v7;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] AVCaptureSession is successfully running after error recovery!", &v6, 0xCu);
    }

    [(CAMCaptureEngine *)self _resetPerformingRecoveryState];
  }

  else
  {
    [(CAMCaptureEngine *)self _handleFailedSessionRecoveryAttemptAfterDelay:1];
  }
}

- (void)_handleApplicationWillEnterForeground:(id)a3
{
  v3 = [(CAMCaptureEngine *)self _captureSessionQueue];
  pl_dispatch_async();
}

- (void)_handleApplicationDidEnterBackground:(id)a3
{
  [(CAMCaptureEngine *)self _showAccidentalLaunchNotificationIfNecessary];
  v4 = [(CAMCaptureEngine *)self _captureSessionQueue];
  pl_dispatch_async();
}

- (id)_currentNotificationCenter
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  if ([v3 isEqualToString:@"com.apple.camera.CameraMessagesApp"])
  {
    v4 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:v3];
  }

  else
  {
    v4 = [MEMORY[0x1E6983308] currentNotificationCenter];
  }

  v5 = v4;

  return v5;
}

- (void)_handleSessionWasPrewarmed:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6986A38]];

  v8 = os_log_create("com.apple.camera", "CaptureSession");
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Session was prewarmed for %@", &v11, 0xCu);
    }

    if ([v7 isEqualToString:*MEMORY[0x1E6986A28]])
    {
      [(CAMCaptureEngine *)self _setAccidentalLaunchPrewarmTime:Current];
      [(CAMCaptureEngine *)self _setAccidentalLaunchTimeout:3.0];
      [(CAMCaptureEngine *)self _setAccidentalLaunchPrewarmReason:v7];
    }

    else
    {
      v10 = os_log_create("com.apple.camera", "CaptureSession");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [CAMCaptureEngine _handleSessionWasPrewarmed:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CAMCaptureEngine _handleSessionWasPrewarmed:];
    }
  }
}

- (void)stopMonitoringForAccidentalLaunch
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __53__CAMCaptureEngine_stopMonitoringForAccidentalLaunch__block_invoke;
  v2[3] = &unk_1E76F77B0;
  v2[4] = self;
  cam_perform_on_main_asap(v2);
}

uint64_t __53__CAMCaptureEngine_stopMonitoringForAccidentalLaunch__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setAccidentalLaunchPrewarmTime:0.0];
  [*(a1 + 32) _setAccidentalLaunchTimeout:0.0];
  [*(a1 + 32) _setAccidentalLaunchPrewarmReason:0];
  v2 = *(a1 + 32);

  return [v2 set_cameraTransitionInProcess:0];
}

- (void)_showAccidentalLaunchNotificationIfNecessary
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __64__CAMCaptureEngine__showAccidentalLaunchNotificationIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__CAMCaptureEngine__showAccidentalLaunchNotificationIfNecessary__block_invoke_cold_1(a1, v3);
    }
  }
}

- (NSDate)_lastTapToRadarTime
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->__lastTapToRadarTime)
  {
    v3 = CFPreferencesCopyAppValue(@"lastTapToRadar", @"com.apple.camera");
    lastTapToRadarTime = self->__lastTapToRadarTime;
    self->__lastTapToRadarTime = v3;

    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->__lastTapToRadarTime;
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "TTR: read last fired time: %@", &v13, 0xCu);
    }

    v7 = self->__lastTapToRadarTime;
    if (!v7 || ([(NSDate *)v7 timeIntervalSinceNow], v8 > 0.0))
    {
      v9 = [MEMORY[0x1E695DF00] distantPast];
      v10 = self->__lastTapToRadarTime;
      self->__lastTapToRadarTime = v9;
    }
  }

  v11 = self->__lastTapToRadarTime;

  return v11;
}

- (id)_videoDeviceInputFromSession:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__26;
  v12 = __Block_byref_object_dispose__26;
  v13 = 0;
  v4 = [v3 inputs];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__CAMCaptureEngine__videoDeviceInputFromSession___block_invoke;
  v7[3] = &unk_1E76FD208;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __49__CAMCaptureEngine__videoDeviceInputFromSession___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v12;
  if (isKindOfClass)
  {
    v9 = v12;
    v10 = [v9 device];
    if ([v10 hasMediaType:*MEMORY[0x1E6987608]])
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a4 = 1;
    }

    v8 = v12;
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass, v8);
}

- (id)_secondaryVideoDeviceInputFromSession:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__26;
  v14 = __Block_byref_object_dispose__26;
  v15 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__26;
  v8[4] = __Block_byref_object_dispose__26;
  v9 = 0;
  v4 = [v3 inputs];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CAMCaptureEngine__secondaryVideoDeviceInputFromSession___block_invoke;
  v7[3] = &unk_1E76FD230;
  v7[4] = v8;
  v7[5] = &v10;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = v11[5];

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v10, 8);

  return v5;
}

uint64_t __58__CAMCaptureEngine__secondaryVideoDeviceInputFromSession___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v15;
  if (isKindOfClass)
  {
    v9 = v15;
    v10 = [v9 device];
    if ([v10 hasMediaType:*MEMORY[0x1E6987608]])
    {
      v11 = *(*(a1 + 32) + 8);
      v13 = *(v11 + 40);
      v12 = (v11 + 40);
      if (v13)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        *a4 = 1;
      }

      else
      {
        objc_storeStrong(v12, a2);
      }
    }

    v8 = v15;
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass, v8);
}

- (id)_photoOutputFromSession:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__26;
  v12 = __Block_byref_object_dispose__26;
  v13 = 0;
  v4 = [v3 outputs];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CAMCaptureEngine__photoOutputFromSession___block_invoke;
  v7[3] = &unk_1E76FD258;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __44__CAMCaptureEngine__photoOutputFromSession___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_updateContext:(id)a3
{
  v4 = a3;
  [v4 clear];
  v5 = [(CAMCaptureEngine *)self _captureSession];
  [v4 setCurrentCaptureSession:v5];
  v6 = [v5 inputs];
  v7 = [v5 outputs];
  v8 = [v5 controls];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __35__CAMCaptureEngine__updateContext___block_invoke;
  v46[3] = &unk_1E76FD280;
  v46[4] = self;
  v9 = v4;
  v47 = v9;
  [v6 enumerateObjectsUsingBlock:v46];
  v10 = [(CAMCaptureEngine *)self _videoDeviceInputFromSession:v5];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 device];
    [v9 setCurrentVideoDevice:v12];
    [v12 activeFormat];
    v14 = v13 = v8;
    [v9 setCurrentVideoDeviceFormat:v14];

    v15 = [v12 activeDepthDataFormat];
    [v9 setCurrentDepthDataFormat:v15];

    v16 = [v5 sessionPreset];
    [v9 setCurrentVideoDevicePreset:v16];

    v8 = v13;
    [v9 setCurrentVideoDeviceInput:v11];
  }

  v17 = [(CAMCaptureEngine *)self _secondaryVideoDeviceInputFromSession:v5];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 device];
    [v9 setCurrentSecondaryVideoDevice:v19];
    v20 = [v19 activeFormat];
    [v9 setCurrentSecondaryVideoDeviceFormat:v20];

    [v9 setCurrentSecondaryVideoDeviceInput:v18];
  }

  v35 = v18;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __35__CAMCaptureEngine__updateContext___block_invoke_2;
  v44[3] = &unk_1E76FD2A8;
  v44[4] = self;
  v21 = v9;
  v45 = v21;
  v37 = v7;
  [v7 enumerateObjectsUsingBlock:v44];
  v36 = v11;
  if (v11)
  {
    v22 = [v11 device];
    v23 = [v22 deviceType];
    -[CAMCaptureEngine _captureEngineDeviceForDeviceType:position:](self, "_captureEngineDeviceForDeviceType:position:", v23, [v22 position]);
    v24 = v8;
    v26 = v25 = v6;

    v27 = [v26 systemZoomSlider];
    v28 = [v26 systemLensSelector];
    v29 = [v26 systemExposureSlider];
    [v26 setSystemDeviceActionDelegate:self];

    v6 = v25;
    v8 = v24;
  }

  else
  {
    v29 = 0;
    v28 = 0;
    v27 = 0;
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __35__CAMCaptureEngine__updateContext___block_invoke_3;
  v38[3] = &unk_1E76FD2D0;
  v30 = v27;
  v39 = v30;
  v31 = v21;
  v40 = v31;
  v32 = v28;
  v41 = v32;
  v33 = v29;
  v42 = v33;
  v43 = self;
  [v8 enumerateObjectsUsingBlock:v38];
  [v31 setCurrentVideoPreviewLayer:self->__videoPreviewLayer];
  v34 = [(AVCaptureVideoPreviewLayer *)self->__secondaryVideoPreviewLayer session];

  if (v34 == v5)
  {
    [v31 setCurrentSecondaryVideoPreviewLayer:self->__secondaryVideoPreviewLayer];
  }
}

uint64_t __35__CAMCaptureEngine__updateContext___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(result + 32);
  if (*(v4 + 16) == a2)
  {
    v6 = result;
    [*(result + 40) setCurrentAudioDevice:*(v4 + 8)];
    result = [*(v6 + 40) setCurrentAudioDeviceInput:*(*(v6 + 32) + 16)];
    *a4 = 1;
  }

  return result;
}

void __35__CAMCaptureEngine__updateContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v4[3] == v3)
  {
    [*(a1 + 40) setCurrentStillImageOutput:?];
  }

  else if (v4[4] == v3)
  {
    [*(a1 + 40) setCurrentMovieFileOutput:?];
  }

  else if (v4[5] == v3)
  {
    [*(a1 + 40) setCurrentPanoramaOutput:?];
  }

  else if (v4[6] == v3)
  {
    [*(a1 + 40) setCurrentMetadataOutput:?];
  }

  else if (v4[7] == v3)
  {
    [*(a1 + 40) setCurrentEffectsPreviewOutput:?];
  }

  else
  {
    if (v4[8] != v3)
    {
      goto LABEL_14;
    }

    [*(a1 + 40) setCurrentVideoThumbnailOutput:?];
  }

  v3 = v5;
LABEL_14:
}

void __35__CAMCaptureEngine__updateContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == v3)
  {
    [*(a1 + 40) setSystemZoomSlider:?];
  }

  else if (*(a1 + 48) == v3)
  {
    [*(a1 + 40) setSystemLensSelector:?];
  }

  else if (*(a1 + 56) == v3)
  {
    [*(a1 + 40) setSystemExposureBiasSlider:?];
  }

  else
  {
    v4 = *(a1 + 64);
    if (*(v4 + 72) == v3)
    {
      [*(a1 + 40) setApertureSlider:?];
    }

    else
    {
      if (*(v4 + 88) != v3)
      {
        goto LABEL_12;
      }

      [*(a1 + 40) setEmulatedZoomSlider:?];
    }
  }

  v3 = v5;
LABEL_12:
}

- (BOOL)_isSessionModificationRequiredByCommand:(id)a3 logReason:(id *)a4 minimumExecutionTime:(double *)a5
{
  v8 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = [v8 requiresSessionModification];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__26;
  v24 = __Block_byref_object_dispose__26;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (*(v27 + 24) != 1)
  {
    v12 = [v8 subcommands];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__CAMCaptureEngine__isSessionModificationRequiredByCommand_logReason_minimumExecutionTime___block_invoke;
    v15[3] = &unk_1E76FD2F8;
    v15[4] = self;
    v15[5] = &v26;
    v15[6] = &v20;
    v15[7] = &v16;
    [v12 enumerateObjectsUsingBlock:v15];

    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = [v8 sessionModificationLogReason];
  v10 = v21[5];
  v21[5] = v9;

  [v8 sessionModificationMinimumExecutionTime];
  *(v17 + 3) = v11;
  if (a4)
  {
LABEL_5:
    *a4 = v21[5];
  }

LABEL_6:
  if (a5)
  {
    *a5 = v17[3];
  }

  v13 = *(v27 + 24);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v13;
}

void __91__CAMCaptureEngine__isSessionModificationRequiredByCommand_logReason_minimumExecutionTime___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = a1[7];
  v8 = *(a1[6] + 8);
  obj = 0;
  v9 = [v6 _isSessionModificationRequiredByCommand:a2 logReason:&obj minimumExecutionTime:*(v7 + 8) + 24];
  objc_storeStrong((v8 + 40), obj);
  *(*(a1[5] + 8) + 24) = v9;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

- (id)_accumulatedUserInfoFromCommand:(id)a3
{
  v4 = a3;
  v5 = [v4 subcommands];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __52__CAMCaptureEngine__accumulatedUserInfoFromCommand___block_invoke;
    v15 = &unk_1E76FD320;
    v16 = self;
    v8 = v7;
    v17 = v8;
    [v6 enumerateObjectsUsingBlock:&v12];
    v9 = [v8 count];
    v10 = [v4 userInfo];
    if (v9)
    {
      [v8 addEntriesFromDictionary:v10];

      v10 = v8;
    }
  }

  else
  {
    v10 = [v4 userInfo];
  }

  return v10;
}

uint64_t __52__CAMCaptureEngine__accumulatedUserInfoFromCommand___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _accumulatedUserInfoFromCommand:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 40) addEntriesFromDictionary:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)_beginSessionConfigurationIfRequiredByCommand:(id)a3 withContext:(id)a4 logReason:(id *)a5 minimumExecutionTime:(double *)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v21 = 0;
  v12 = [(CAMCaptureEngine *)self _captureSession];
  v13 = 0;
  if (([v12 isBeingConfigured] & 1) == 0)
  {
    v20 = 0;
    v14 = [(CAMCaptureEngine *)self _isSessionModificationRequiredByCommand:v10 logReason:&v20 minimumExecutionTime:&v21];
    v13 = v20;
    if (v14)
    {
      [v11 setCurrentCaptureSession:v12];
      v15 = os_log_create("com.apple.camera", "CaptureSession");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v13;
        _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling [AVCaptureSession beginConfiguration]", buf, 0xCu);
      }

      Current = CFAbsoluteTimeGetCurrent();
      CAMSignpostWithIDAndArgs(19, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
      [v12 beginConfiguration];
      CAMSignpostWithIDAndArgs(20, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
      v17 = CFAbsoluteTimeGetCurrent();
      v18 = os_log_create("com.apple.camera", "CaptureSession");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v23 = v13;
        v24 = 2048;
        v25 = v17 - Current;
        _os_log_impl(&dword_1A3640000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [AVCaptureSession beginConfiguration] finished. (took %.3f seconds)", buf, 0x16u);
      }
    }
  }

  if (a5)
  {
    v19 = v13;
    *a5 = v13;
  }

  if (a6)
  {
    *a6 = v21;
  }
}

- (void)_commitSessionConfigurationIfNecessaryWithLogReason:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CAMCaptureEngine *)self _captureSession];
  if ([v5 isBeingConfigured])
  {
    v6 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v4;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling [AVCaptureSession commitConfiguration]", buf, 0xCu);
    }

    Current = CFAbsoluteTimeGetCurrent();
    CAMSignpostWithIDAndArgs(21, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
    [v5 commitConfiguration];
    CAMSignpostWithIDAndArgs(22, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
    v8 = CFAbsoluteTimeGetCurrent();
    v9 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = v4;
      v27 = 2048;
      v28 = v8 - Current;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [AVCaptureSession commitConfiguration] finished. (took %.3f seconds)", buf, 0x16u);
    }

    [(CAMCaptureEngine *)self _updateCurrentlyConfiguredObjects];
    v10 = [(CAMCaptureEngine *)self _updatePanoramaSubgraphForEnteringBackground:0];
    [(CAMCaptureEngine *)self _updateEffectsSubgraph];
    [(CAMCaptureEngine *)self _updateVideoThumbnailSubgraph];
    v11 = [v5 isRunning];
    v12 = [v5 isInterrupted];
    v13 = [(CAMCaptureEngine *)self _shouldStartSessionOnConfigurationChanges];
    if (((v12 ^ 1) & v11 & 1) == 0 && v13)
    {
      [(CAMCaptureEngine *)self _sessionQueue_startWithRetryCount:0 retryInterval:@"post commitConfiguration" logReason:0 completion:0.0];
    }

    v14 = [v5 isRunning];
    v15 = [v5 isInterrupted];
    if (v10 && (v15 & 1) == 0 && v14)
    {
      v16 = dispatch_semaphore_create(0);
      v17 = [(CAMCaptureEngine *)self _panoramaFirstImageQueueUpdateSemaphoreQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__CAMCaptureEngine__commitSessionConfigurationIfNecessaryWithLogReason___block_invoke;
      block[3] = &unk_1E76F7960;
      block[4] = self;
      v18 = v16;
      v24 = v18;
      dispatch_sync(v17, block);

      v19 = dispatch_time(0, 4000000000);
      if (dispatch_semaphore_wait(v18, v19))
      {
        v20 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v26 = 0x4010000000000000;
          _os_log_impl(&dword_1A3640000, v20, OS_LOG_TYPE_DEFAULT, "Failed to update panorama image queue in %f seconds. Continuing configuration", buf, 0xCu);
        }
      }

      v21 = [(CAMCaptureEngine *)self _panoramaFirstImageQueueUpdateSemaphoreQueue];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __72__CAMCaptureEngine__commitSessionConfigurationIfNecessaryWithLogReason___block_invoke_221;
      v22[3] = &unk_1E76F77B0;
      v22[4] = self;
      dispatch_sync(v21, v22);
    }
  }
}

- (BOOL)_lockManagedCapturedDevice:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v9 = 0;
    v5 = [v3 lockForConfiguration:&v9];
    v6 = v9;
    if ((v5 & 1) == 0)
    {
      v7 = os_log_create("com.apple.camera", "CaptureSession");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CAMCaptureEngine _lockManagedCapturedDevice:];
      }
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)_unlockManagedCaptureDevice:(id)a3
{
  v3 = a3;
  if ([v3 isLockedForConfiguration])
  {
    [v3 unlockForConfiguration];
  }
}

- (void)_updateCurrentlyConfiguredObjects
{
  v3 = [(CAMCaptureEngine *)self _captureSession];
  v9 = [(CAMCaptureEngine *)self _videoDeviceInputFromSession:v3];

  v4 = [v9 device];
  v5 = [(CAMCaptureEngine *)self _captureSession];
  v6 = [(CAMCaptureEngine *)self _photoOutputFromSession:v5];

  v7 = [(CAMCaptureEngine *)self currentCameraDevice];

  if (v7 != v4)
  {
    [(CAMCaptureEngine *)self setCurrentCameraDevice:v4];
  }

  v8 = [(CAMCaptureEngine *)self currentStillImageOutput];

  if (v8 != v6)
  {
    [(CAMCaptureEngine *)self setCurrentStillImageOutput:v6];
  }
}

- (void)requestCurrentCameraDeviceWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CAMCaptureEngine *)self _captureSessionQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__CAMCaptureEngine_requestCurrentCameraDeviceWithHandler___block_invoke;
    v6[3] = &unk_1E76F83B0;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __58__CAMCaptureEngine_requestCurrentCameraDeviceWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) currentCameraDevice];
  (*(v1 + 16))(v1, v2);
}

- (void)_executeCommand:(id)a3 withContext:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CAMCaptureEngine *)self _captureSessionQueue];
  dispatch_assert_queue_V2(v8);

  [(CAMCaptureEngine *)self _updateContext:v7];
  CAMSignpostWithIDAndArgs(23, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  [v6 executeWithContext:v7];
  CAMSignpostWithIDAndArgs(24, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [v6 subcommands];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(CAMCaptureEngine *)self _executeCommand:*(*(&v14 + 1) + 8 * v13++) withContext:v7];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)enqueueCommand:(id)a3
{
  v4 = [a3 copy];
  v5 = [[CAMCaptureCommandContext alloc] initWithCaptureEngine:self];
  v6 = [(CAMCaptureEngine *)self _captureSessionQueue];
  v9 = v4;
  v7 = v5;
  v8 = v4;
  pl_dispatch_async();
}

void __35__CAMCaptureEngine_enqueueCommand___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v11 = 0;
  v12 = 0.0;
  [*(a1 + 32) _beginSessionConfigurationIfRequiredByCommand:*(a1 + 40) withContext:*(a1 + 48) logReason:&v11 minimumExecutionTime:&v12];
  v3 = v11;
  if ([*(a1 + 32) _lockAllEngineManagedDevices])
  {
    [*(a1 + 32) _executeCommand:*(a1 + 40) withContext:*(a1 + 48)];
    [*(a1 + 32) _unlockAllEngineManagedDevices];
  }

  [*(a1 + 32) _commitSessionConfigurationIfNecessaryWithLogReason:v3];
  v4 = CFAbsoluteTimeGetCurrent() - Current;
  if (v12 > 0.0 && v4 < v12)
  {
    v6 = v12 - v4;
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v14 = v6;
      v15 = 2048;
      v16 = v12;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Sleeping for %.3f seconds to meet minimum mode change time %.3f", buf, 0x16u);
    }

    [MEMORY[0x1E696AF00] sleepForTimeInterval:v6];
  }

  v8 = [*(a1 + 32) _accumulatedUserInfoFromCommand:{*(a1 + 40), v4}];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    pl_dispatch_async();
  }
}

void __35__CAMCaptureEngine_enqueueCommand___block_invoke_224(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"CAMCaptureEngineExecutedCommandWithContextNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (void)enqueueCommands:(id)a3
{
  v4 = a3;
  v5 = [[CAMCaptureCommand alloc] initWithSubcommands:v4];

  [(CAMCaptureEngine *)self enqueueCommand:v5];
}

- (void)registerCaptureService:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureEngine *)self _captureServicesQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CAMCaptureEngine_registerCaptureService___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __43__CAMCaptureEngine_registerCaptureService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _servicesQueueCaptureServices];
  [v2 addObject:*(a1 + 40)];
}

- (void)unregisterCaptureService:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureEngine *)self _captureServicesQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__CAMCaptureEngine_unregisterCaptureService___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __45__CAMCaptureEngine_unregisterCaptureService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _servicesQueueCaptureServices];
  [v2 removeObject:*(a1 + 40)];
}

- (void)_enumerateCaptureServicesUsingBlock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAMCaptureEngine *)self _captureServicesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CAMCaptureEngine__enumerateCaptureServicesUsingBlock_completion___block_invoke;
  block[3] = &unk_1E76FD3C0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __67__CAMCaptureEngine__enumerateCaptureServicesUsingBlock_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _servicesQueueCaptureServices];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__CAMCaptureEngine__enumerateCaptureServicesUsingBlock_completion___block_invoke_2;
  v4[3] = &unk_1E76FD398;
  v5 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v4];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

- (void)registerStillImageCaptureRequest:(id)a3 withSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v11 = v7;
  v9 = v6;
  v10 = v7;
  pl_dispatch_async();
}

uint64_t __66__CAMCaptureEngine_registerStillImageCaptureRequest_withSettings___block_invoke(uint64_t a1)
{
  v2 = [[CAMCaptureRequestInfo alloc] initWithRequest:*(a1 + 48)];
  v3 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequests];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "uniqueID")}];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) uniqueID];
  Current = CFAbsoluteTimeGetCurrent();

  return [v5 _checkCallbacksForUniqueID:v6 afterDelay:5.0 startTime:Current];
}

- (void)_checkCallbacksForUniqueID:(int64_t)a3 afterDelay:(double)a4 startTime:(double)a5
{
  v9 = dispatch_time(0, (a4 * 1000000000.0));
  v10 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CAMCaptureEngine__checkCallbacksForUniqueID_afterDelay_startTime___block_invoke;
  v11[3] = &unk_1E76F9B50;
  v11[4] = self;
  v11[5] = a3;
  *&v11[6] = a5;
  *&v11[7] = a4;
  dispatch_after(v9, v10, v11);
}

void __68__CAMCaptureEngine__checkCallbacksForUniqueID_afterDelay_startTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequests];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"captureID:%lld Have not received final callback in %f seconds. ", *(a1 + 40), CFAbsoluteTimeGetCurrent() - *(a1 + 48)];
    [*(a1 + 32) _resultsQueue_logReceivedCallbacksForID:*(a1 + 40) withIntroString:v5];
    [*(a1 + 32) _checkCallbacksForUniqueID:*(a1 + 40) afterDelay:*(a1 + 56) + 5.0 startTime:*(a1 + 48)];
  }
}

- (void)_resultsQueue_logReceivedCallbacksForID:(int64_t)a3 withIntroString:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(CAMCaptureEngine *)self _captureResultsQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(CAMCaptureEngine *)self _resultsQueueRegisteredStillImageRequests];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v10 = [v8 objectForKey:v9];

  v11 = [MEMORY[0x1E696AD60] stringWithString:v6];
  v12 = [v10 callbackReceipts];
  [v11 appendString:@"Callbacks received:\n"];
  if ([v12 count])
  {
    v27 = v10;
    v28 = v6;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = v12;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      v17 = 0.0;
      do
      {
        v18 = 0;
        v19 = v17;
        do
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v29 + 1) + 8 * v18);
          v21 = [v20 callback];
          if (v21 > 0xC)
          {
            v22 = 0;
          }

          else
          {
            v22 = off_1E76FD7B0[v21];
          }

          [v20 secondsSinceBegin];
          v17 = v23;
          [v11 appendFormat:@"\t%.3fs", *&v23];
          if (v19 == 0.0)
          {
            [v11 appendFormat:@"\t\t\t", v25];
          }

          else
          {
            [v11 appendFormat:@"\t(%.3fs)", v17 - v19];
          }

          [v11 appendFormat:@"\t%@\n", v22];
          ++v18;
          v19 = v17;
        }

        while (v15 != v18);
        v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v15);
    }

    v24 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = v11;
      _os_log_impl(&dword_1A3640000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v10 = v27;
    v6 = v28;
    v12 = v26;
  }

  else
  {
    [v11 appendString:@"None"];
    v24 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = v11;
      _os_log_impl(&dword_1A3640000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

- (void)currentInflightCapturesStringWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v6 = v4;
  pl_dispatch_async();
}

void __71__CAMCaptureEngine_currentInflightCapturesStringWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequests];
  v3 = [v2 allKeys];
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = [*(a1 + 32) _resultsQueueRequestsBeingRecorded];
  v6 = [v5 allKeys];
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([v3 count])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__CAMCaptureEngine_currentInflightCapturesStringWithCompletionHandler___block_invoke_2;
    v13[3] = &unk_1E76FBB58;
    v8 = v4;
    v14 = v8;
    [v3 enumerateObjectsUsingBlock:v13];
  }

  else
  {
    v8 = [MEMORY[0x1E696AD60] stringWithString:@"None"];
  }

  if ([v6 count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__CAMCaptureEngine_currentInflightCapturesStringWithCompletionHandler___block_invoke_3;
    v11[3] = &unk_1E76FD3E8;
    v9 = v7;
    v12 = v9;
    [v6 enumerateObjectsUsingBlock:v11];
    v7 = v12;
  }

  else
  {
    v9 = [MEMORY[0x1E696AD60] stringWithString:@"None"];
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v8, v9, v10);
}

void __71__CAMCaptureEngine_currentInflightCapturesStringWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringValue];
  [v2 appendFormat:@"%@, ", v3];
}

- (void)cacheMomentCaptureSettings:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAMCaptureEngine *)self _captureSessionQueue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    v9 = [(CAMCaptureEngine *)self _sessionQueueCachedPhotoInitiationSettings];
    [v9 setObject:v6 forKeyedSubscript:v7];
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CAMCaptureEngine cacheMomentCaptureSettings:forIdentifier:];
    }
  }
}

- (id)cachedMomentCaptureSettingsForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureEngine *)self _captureSessionQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [(CAMCaptureEngine *)self _sessionQueueCachedPhotoInitiationSettings];
    v7 = [v6 objectForKeyedSubscript:v4];
  }

  else
  {
    v8 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CAMCaptureEngine cachedMomentCaptureSettingsForIdentifier:];
    }

    v7 = 0;
  }

  return v7;
}

- (void)clearCachedMomentCaptureSettingsForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureEngine *)self _captureSessionQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [(CAMCaptureEngine *)self _sessionQueueCachedPhotoInitiationSettings];
    [v6 setObject:0 forKeyedSubscript:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CAMCaptureEngine clearCachedMomentCaptureSettingsForIdentifier:];
    }
  }
}

- (void)captureOutput:(id)a3 willBeginCaptureBeforeResolvingSettingsForUniqueID:(int64_t)a4
{
  CAMSignpostWithIDAndArgs(76, a4, a4, 0, 0, 0);
  CAMSignpostWithIDAndArgs(70, a4, a4, 0, 0, 0);
  CAMSignpostWithIDAndArgs(72, a4, a4, 0, 0, 0);
  mach_absolute_time();
  v6 = [(CAMCaptureEngine *)self _signpostMutexQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__CAMCaptureEngine_captureOutput_willBeginCaptureBeforeResolvingSettingsForUniqueID___block_invoke;
  block[3] = &unk_1E76F7A38;
  block[4] = self;
  block[5] = a4;
  dispatch_sync(v6, block);

  v7 = [(CAMCaptureEngine *)self _captureResultsQueue];
  pl_dispatch_async();
}

void __85__CAMCaptureEngine_captureOutput_willBeginCaptureBeforeResolvingSettingsForUniqueID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _didEmitCaptureIntervalStartedSignpostsForUniqueID];
  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  [v3 addObject:v2];
}

void __85__CAMCaptureEngine_captureOutput_willBeginCaptureBeforeResolvingSettingsForUniqueID___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequests];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [v4 request];
  [v4 didReceiveCallback:11 atAbsoluteTime:*(a1 + 48)];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__CAMCaptureEngine_captureOutput_willBeginCaptureBeforeResolvingSettingsForUniqueID___block_invoke_3;
  v8[3] = &unk_1E76FD198;
  v9 = v5;
  v7 = v5;
  [v6 _enumerateCaptureServicesUsingBlock:v8];
  CAMSignpostWithIDAndArgs(77, *(a1 + 40), *(a1 + 40), 0, 0, 0);
}

void __85__CAMCaptureEngine_captureOutput_willBeginCaptureBeforeResolvingSettingsForUniqueID___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 stillImageRequestDidBeginCaptureBeforeResolvingSettings:*(a1 + 32)];
  }
}

- (void)captureOutput:(id)a3 willBeginCaptureForResolvedSettings:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 uniqueID];
  mach_absolute_time();
  CAMSignpostWithIDAndArgs(35, v8, v8, 0, 0, 0);
  [(CAMCaptureEngine *)self stopMonitoringForAccidentalLaunch];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9 = [(CAMCaptureEngine *)self _signpostMutexQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__CAMCaptureEngine_captureOutput_willBeginCaptureForResolvedSettings___block_invoke;
  block[3] = &unk_1E76FCCB8;
  block[5] = &v14;
  block[6] = v8;
  block[4] = self;
  dispatch_sync(v9, block);

  if (*(v15 + 24) == 1)
  {
    CAMSignpostWithIDAndArgs(70, v8, v8, 0, 0, 0);
    CAMSignpostWithIDAndArgs(72, v8, v8, 0, 0, 0);
  }

  if ([v7 cam_isRecordingMovieForLivePhoto])
  {
    v10 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = v8;
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "captureID:%lld captureOutput:willBeginCaptureForResolvedSettings: with video", buf, 0xCu);
    }

    v11 = [(CAMCaptureEngine *)self _captureResultsQueue];
    v12 = v7;
    pl_dispatch_async();
  }

  else
  {
    CAMSignpostWithIDAndArgs(36, v8, v8, 0, 0, 0);
  }

  _Block_object_dispose(&v14, 8);
}

void __70__CAMCaptureEngine_captureOutput_willBeginCaptureForResolvedSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _didEmitCaptureIntervalStartedSignpostsForUniqueID];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
  v4 = [v2 containsObject:v3];

  if (v4)
  {
    v6 = [*(a1 + 32) _didEmitCaptureIntervalStartedSignpostsForUniqueID];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
    [v6 removeObject:v5];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __70__CAMCaptureEngine_captureOutput_willBeginCaptureForResolvedSettings___block_invoke_258(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequests];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "uniqueID")}];
  v4 = [v2 objectForKeyedSubscript:v3];

  [v4 didReceiveCallback:0 atAbsoluteTime:*(a1 + 48)];
  v5 = [v4 request];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__CAMCaptureEngine_captureOutput_willBeginCaptureForResolvedSettings___block_invoke_2;
  v8[3] = &unk_1E76FD198;
  v9 = v5;
  v7 = v5;
  [v6 _enumerateCaptureServicesUsingBlock:v8];
  CAMSignpostWithIDAndArgs(36, *(a1 + 56), *(a1 + 56), 0, 0, 0);
}

void __70__CAMCaptureEngine_captureOutput_willBeginCaptureForResolvedSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 stillImageRequestWillStartCapturingVideo:*(a1 + 32)];
  }
}

- (void)captureOutput:(id)a3 willCapturePhotoForResolvedSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 uniqueID];
  CAMSignpostWithIDAndArgs(37, v8, v8, 0, 0, 0);
  mach_absolute_time();
  v9 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v12 = v7;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  pl_dispatch_async();
}

void __70__CAMCaptureEngine_captureOutput_willCapturePhotoForResolvedSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequests];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "uniqueID")}];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [v4 request];
  if (([v5 isCTMVideo] & 1) == 0)
  {
    [v4 didReceiveCallback:1 atAbsoluteTime:*(a1 + 56)];
    v6 = [*(a1 + 40) isHDREnabled];
    v7 = [*(a1 + 48) isDepthDataDeliveryEnabled];
    v8 = [*(a1 + 40) isAdjustedPhotoFilterRenderingEnabled];
    if (objc_opt_respondsToSelector())
    {
      v9 = [*(a1 + 40) isCaptureBeforeResolvingSettingsEnabled];
    }

    else
    {
      v9 = 0;
    }

    if (([v5 nightMode] - 1) > 1)
    {
      LOBYTE(v26) = 0;
      v27 = 0;
      SRGB = 0;
      v28 = 0.0;
    }

    else
    {
      memset(v39, 0, sizeof(v39));
      v38 = 0u;
      v10 = *(a1 + 40);
      if (v10)
      {
        [v10 photoProcessingTimeRange];
      }

      *&time.value = v38;
      time.epoch = *&v39[0];
      Seconds = CMTimeGetSeconds(&time);
      time = *(v39 + 8);
      v12 = CMTimeGetSeconds(&time) * 0.5;
      v13 = [*(a1 + 40) digitalFlashUserInterfaceRGBEstimate];
      if ([v13 count] < 3)
      {
        SRGB = 0;
      }

      else
      {
        v32 = v7;
        v33 = v6;
        v14 = 1.0;
        if ([v13 count] >= 4)
        {
          v15 = [v13 objectAtIndexedSubscript:3];
          [v15 doubleValue];
          v14 = v16;
        }

        v17 = [v13 objectAtIndexedSubscript:0];
        [v17 doubleValue];
        v19 = v18;
        v20 = [v13 objectAtIndexedSubscript:1];
        [v20 doubleValue];
        v22 = v21;
        v23 = [v13 objectAtIndexedSubscript:2];
        [v23 doubleValue];
        SRGB = CGColorCreateSRGB(v19, v22, v24, v14);

        v7 = v32;
        v6 = v33;
      }

      v28 = Seconds + v12;
      v26 = [*(a1 + 40) digitalFlashUserInterfaceHints];

      v27 = (v26 >> 1) & 1;
    }

    v29 = [[CAMStillImageCaptureResolvedSettings alloc] initWithHDREnabled:v6 portraitEffectEnabled:v8 & v7 nightModeCaptureTime:SRGB nightModePreviewColorEstimate:v26 & 1 nightModeCaptureHasInitialPreviewFeedbackSensitivity:v27 nightModeCaptureHasConstantPreviewFeedbackSensitivity:v9 captureBeforeResolvingSettingsEnabled:v28];
    if (SRGB)
    {
      CGColorRelease(SRGB);
    }

    v30 = *(a1 + 32);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __70__CAMCaptureEngine_captureOutput_willCapturePhotoForResolvedSettings___block_invoke_2;
    v34[3] = &unk_1E76FD410;
    v35 = v5;
    v36 = v29;
    v31 = v29;
    [v30 _enumerateCaptureServicesUsingBlock:v34];
    CAMSignpostWithIDAndArgs(38, *(a1 + 64), *(a1 + 64), 0, 0, 0);
  }
}

void __70__CAMCaptureEngine_captureOutput_willCapturePhotoForResolvedSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 stillImageRequestDidStartCapturing:*(a1 + 32) resolvedSettings:*(a1 + 40)];
  }
}

- (void)captureOutput:(id)a3 didCapturePhotoForResolvedSettings:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 uniqueID];
  CAMSignpostWithIDAndArgs(39, v6, v6, 0, 0, 0);
  CAMSignpostWithIDAndArgs(71, v6, v6, 0, 0, 0);
  v7 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = v6;
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "captureID:%lld captureOutput:didCapturePhotoForResolvedSettings:", buf, 0xCu);
  }

  mach_absolute_time();
  v8 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v9 = v5;
  pl_dispatch_async();
}

void __69__CAMCaptureEngine_captureOutput_didCapturePhotoForResolvedSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequests];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "uniqueID")}];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [v4 request];
  if (([v5 isCTMVideo] & 1) == 0)
  {
    [v4 didReceiveCallback:2 atAbsoluteTime:*(a1 + 48)];
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__CAMCaptureEngine_captureOutput_didCapturePhotoForResolvedSettings___block_invoke_2;
    v7[3] = &unk_1E76FD198;
    v8 = v5;
    [v6 _enumerateCaptureServicesUsingBlock:v7];
    CAMSignpostWithIDAndArgs(40, *(a1 + 56), *(a1 + 56), 0, 0, 0);
  }
}

void __69__CAMCaptureEngine_captureOutput_didCapturePhotoForResolvedSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 stillImageRequestDidStopCapturingStillImage:*(a1 + 32)];
  }
}

- (void)captureOutput:(id)a3 readyForResponsiveRequestAfterResolvedSettings:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a4 uniqueID];
  CAMSignpostWithIDAndArgs(99, v5, v5, 0, 0, 0);
  v6 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v5;
    _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "captureID:%lld captureOutput:readyForResponsiveRequestAfterResolvedSettings:", buf, 0xCu);
  }

  mach_absolute_time();
  v7 = [(CAMCaptureEngine *)self _captureResultsQueue];
  pl_dispatch_async();
}

void __81__CAMCaptureEngine_captureOutput_readyForResponsiveRequestAfterResolvedSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequests];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [v4 request];
  if (([v5 isCTMVideo] & 1) == 0)
  {
    [v4 didReceiveCallback:12 atAbsoluteTime:*(a1 + 48)];
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81__CAMCaptureEngine_captureOutput_readyForResponsiveRequestAfterResolvedSettings___block_invoke_2;
    v7[3] = &unk_1E76FD198;
    v8 = v5;
    [v6 _enumerateCaptureServicesUsingBlock:v7];
    CAMSignpostWithIDAndArgs(100, *(a1 + 40), *(a1 + 40), 0, 0, 0);
  }
}

void __81__CAMCaptureEngine_captureOutput_readyForResponsiveRequestAfterResolvedSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 stillImageRequestDidUnblockResponsiveCapture:*(a1 + 32)];
  }
}

- (void)captureOutput:(id)a3 readyForClientCompositingForResolvedSettings:(id)a4 compositingData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v9 uniqueID];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v11 = [(CAMCaptureEngine *)self _captureResultsQueue];
  pl_dispatch_sync();

  v12 = [(CAMCaptureEngine *)self _multiCamPIPCompositingQueue];
  v13 = v10;
  pl_dispatch_sync();

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
}

void __95__CAMCaptureEngine_captureOutput_readyForClientCompositingForResolvedSettings_compositingData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequests];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  v5 = [v2 objectForKeyedSubscript:v3];

  v4 = [v5 request];
  *(*(*(a1 + 40) + 8) + 24) = [v4 captureOrientation];
  *(*(*(a1 + 48) + 8) + 24) = [v4 isFrontRearSimultaneousCaptureMirrored];
}

void __95__CAMCaptureEngine_captureOutput_readyForClientCompositingForResolvedSettings_compositingData___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _multiCamPIPCompositingQueue_multiCamPIPCompositor];
  [v2 compositeWithCompositingData:*(a1 + 40) strategy:1 captureOrientation:*(*(*(a1 + 48) + 8) + 24) mirrorPIP:*(*(*(a1 + 56) + 8) + 24)];
}

- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = [v8 resolvedSettings];
  v10 = [v9 uniqueID];

  CAMSignpostWithIDAndArgs(41, v10, v10, 0, 0, 0);
  v11 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    v13 = v10;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "captureID:%lld captureOutput:didFinishProcessingPhoto:error:, error=%{public}@", &v12, 0x16u);
  }

  [(CAMCaptureEngine *)self _handleCaptureOutputDidFinishCapturingPhoto:v8 deferredPhotoProxy:0 error:v7];
}

- (void)captureOutput:(id)a3 didFinishCapturingDeferredPhotoProxy:(id)a4 error:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = [v8 resolvedSettings];
  v10 = [v9 uniqueID];

  CAMSignpostWithIDAndArgs(61, v10, v10, 0, 0, 0);
  v11 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    v13 = v10;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "captureID:%lld captureOutput:didFinishCapturingDeferredPhotoProxy:error:, error=%{public}@", &v12, 0x16u);
  }

  [(CAMCaptureEngine *)self _handleCaptureOutputDidFinishCapturingPhoto:0 deferredPhotoProxy:v8 error:v7];
}

- (void)_handleCaptureOutputDidFinishCapturingPhoto:(id)a3 deferredPhotoProxy:(id)a4 error:(id)a5
{
  v26 = self;
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  v12 = [v11 resolvedSettings];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = [v12 photoManifest];
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v31 + 1) + 8 * i) intValue];
        if (v18 > [v11 expectedPhotoProcessingFlags])
        {

          goto LABEL_14;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = [v12 uniqueID];
  CAMSignpostWithIDAndArgs(73, v19, v19, 0, 0, 0);
  CAMSignpostWithIDAndArgs(74, v19, v19, 0, 0, 0);
LABEL_14:
  mach_absolute_time();
  v20 = [(CAMCaptureEngine *)v26 _captureResultsQueue];
  v27 = v11;
  v28 = v9;
  v30 = v8;
  v29 = v7;
  v21 = v8;
  v22 = v7;
  v23 = v9;
  v24 = v11;
  v25 = v12;
  pl_dispatch_async();
}

void __89__CAMCaptureEngine__handleCaptureOutputDidFinishCapturingPhoto_deferredPhotoProxy_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "uniqueID")}];
  v3 = [*(a1 + 40) _resultsQueueRegisteredStillImageRequests];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "uniqueID")}];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v5 request];
  if (([v6 isCTMVideo] & 1) == 0)
  {
    v7 = [*(a1 + 40) _coordinationInfoForRequest:v6 photo:*(a1 + 48)];
    v8 = [v6 adjustmentFilters];
    v30 = v2;
    if (v7 && ([v7 isEV0ForHDREV0Pair] & 1) != 0)
    {
      v9 = [v6 EV0PersistenceUUID];
    }

    else
    {
      v9 = [v6 persistenceUUID];
    }

    v10 = v9;
    v11 = [v7 isUnfilteredImageForFilteredPair];
    v12 = 0;
    v49 = 0uLL;
    if (*(a1 + 56))
    {
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      if ((v11 & 1) == 0)
      {
        v15 = *(a1 + 40);
        if (v15)
        {
          [v15 _previewFilterSetForRequest:v6 photo:*(a1 + 48)];
          v13 = *(&v46 + 1);
          v14 = v46;
          v12 = v48;
        }

        else
        {
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v48 = 0;
          v46 = 0u;
          v47 = 0u;
        }

        v49 = v47;
      }
    }

    if (*(a1 + 64))
    {
      v16 = 3;
    }

    else
    {
      v16 = 4;
    }

    [v5 didReceiveCallback:v16 atAbsoluteTime:*(a1 + 80)];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__CAMCaptureEngine__handleCaptureOutputDidFinishCapturingPhoto_deferredPhotoProxy_error___block_invoke_2;
    aBlock[3] = &unk_1E76FD488;
    v32 = *(a1 + 64);
    v33 = *(a1 + 32);
    v29 = v8;
    v34 = v29;
    v45 = v8 != 0;
    v17 = v10;
    v35 = v17;
    v18 = v7;
    v36 = v18;
    v41 = v14;
    v42 = v13;
    v43 = v49;
    v44 = v12;
    v37 = *(a1 + 56);
    v19 = *(a1 + 72);
    v20 = *(a1 + 40);
    v38 = v19;
    v39 = v20;
    v40 = v6;
    v21 = _Block_copy(aBlock);
    v22 = v21;
    v23 = v14 != 0;
    if (v13)
    {
      ++v23;
    }

    if (v23 | ((v12 - 1) < 0xFFFFFFFFFFFFFFFELL))
    {
      v28 = v17;
      v24 = *(a1 + 40);
      v25 = [*(a1 + 48) previewPixelBuffer];
      v26 = [*(a1 + 48) metadata];
      *&v46 = v14;
      *(&v46 + 1) = v13;
      v47 = v49;
      v48 = v12;
      v27 = v24;
      v17 = v28;
      v2 = v30;
      [v27 _resultsQueue_performPostprocessingForPreviewBuffer:v25 metadata:v26 filters:&v46 stillImageCaptureRequestKey:v30 completionHandler:v22];
    }

    else
    {
      (*(v21 + 2))(v21, 0);
      v2 = v30;
    }
  }
}

void __89__CAMCaptureEngine__handleCaptureOutputDidFinishCapturingPhoto_deferredPhotoProxy_error___block_invoke_2(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  v4 = *(a1 + 32);
  v5 = [CAMStillImageCaptureResult alloc];
  if (v4)
  {
    v6 = -[CAMStillImageCaptureResult initWithCapturePhoto:expectingPairedVideo:adjustmentFilters:filteredPreviewSurface:shouldPersistAdjustmentSidecar:persistenceUUID:coordinationInfo:semanticEnhancement:error:](v5, "initWithCapturePhoto:expectingPairedVideo:adjustmentFilters:filteredPreviewSurface:shouldPersistAdjustmentSidecar:persistenceUUID:coordinationInfo:semanticEnhancement:error:", *(a1 + 32), [*(a1 + 40) cam_isRecordingMovieForLivePhoto], *(a1 + 48), IOSurface, *(a1 + 144), *(a1 + 56), *(a1 + 64), *(a1 + 136), *(a1 + 72));
    v7 = 42;
  }

  else
  {
    v6 = -[CAMStillImageCaptureResult initWithCaptureDeferredPhotoProxy:expectingPairedVideo:adjustmentFilters:filteredPreviewSurface:shouldPersistAdjustmentSidecar:persistenceUUID:coordinationInfo:semanticEnhancement:error:](v5, "initWithCaptureDeferredPhotoProxy:expectingPairedVideo:adjustmentFilters:filteredPreviewSurface:shouldPersistAdjustmentSidecar:persistenceUUID:coordinationInfo:semanticEnhancement:error:", *(a1 + 80), [*(a1 + 40) cam_isRecordingMovieForLivePhoto], *(a1 + 48), IOSurface, *(a1 + 144), *(a1 + 56), *(a1 + 64), *(a1 + 136), *(a1 + 72));
    v7 = 62;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__CAMCaptureEngine__handleCaptureOutputDidFinishCapturingPhoto_deferredPhotoProxy_error___block_invoke_3;
  v10[3] = &unk_1E76FD410;
  v8 = *(a1 + 88);
  v11 = *(a1 + 96);
  v12 = v6;
  v9 = v6;
  [v8 _enumerateCaptureServicesUsingBlock:v10];
  CAMSignpostWithIDAndArgs(v7, [*(a1 + 40) uniqueID], objc_msgSend(*(a1 + 40), "uniqueID"), 0, 0, 0);
}

void __89__CAMCaptureEngine__handleCaptureOutputDidFinishCapturingPhoto_deferredPhotoProxy_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 stillImageRequest:*(a1 + 32) didCompleteStillImageCaptureWithResult:*(a1 + 40)];
  }
}

- (id)_expectedResultSpecifiersForResolvedPhotoSettings:(id)a3
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 photoManifest];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__CAMCaptureEngine__expectedResultSpecifiersForResolvedPhotoSettings___block_invoke;
  v9[3] = &unk_1E76FBB58;
  v7 = v5;
  v10 = v7;
  [v6 enumerateObjectsUsingBlock:v9];

  return v7;
}

void __70__CAMCaptureEngine__expectedResultSpecifiersForResolvedPhotoSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntegerValue];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v3 >> 2) & 2 | (v3 >> 1) & 1];
  [v4 addObject:v5];
}

- (id)_coordinationInfoForRequest:(id)a3 photo:(id)a4
{
  v5 = a4;
  v6 = [v5 resolvedSettings];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"captureID:%lld", objc_msgSend(v6, "uniqueID")];
  v8 = [(CAMCaptureEngine *)self _expectedResultSpecifiersForResolvedPhotoSettings:v6];
  v9 = [v5 expectedPhotoProcessingFlags];

  v10 = [[CAMCaptureCoordinationInfo alloc] initWithIdentifier:v7 allExpectedResultSpecifiers:v8 resultSpecifiers:(v9 >> 2) & 2 | (v9 >> 1) & 1];

  return v10;
}

- (id)_coordinationInfoForRequest:(id)a3 resolvedSettings:(id)a4 videoComplementURL:(id)a5 isFiltered:(BOOL)a6
{
  v6 = a6;
  v10 = MEMORY[0x1E696AEC0];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 stringWithFormat:@"captureID:%lld", objc_msgSend(v12, "uniqueID")];
  v15 = [(CAMCaptureEngine *)self _expectedResultSpecifiersForResolvedPhotoSettings:v12];
  v16 = [v12 isHDREnabled];

  v17 = [v13 isEV0LocalVideoDestinationURL:v11];
  if (v6)
  {
    v18 = v16 & (v17 ^ 1u) | 2;
  }

  else
  {
    v18 = v16 & (v17 ^ 1u);
  }

  v19 = [[CAMCaptureCoordinationInfo alloc] initWithIdentifier:v14 allExpectedResultSpecifiers:v15 resultSpecifiers:v18];

  return v19;
}

- (id)_coordinationInfoForCTMVideoRequest:(id)a3 videoOutputURL:(id)a4 resolvedMomentCaptureMovieSettings:(id)a5
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a5;
  v8 = [v6 stringWithFormat:@"captureID:%lld", objc_msgSend(v7, "uniqueID")];
  v9 = [(CAMCaptureEngine *)self _expectedResultSpecifiersForResolvedMomentCaptureMovieSettings:v7];

  v10 = [[CAMCaptureCoordinationInfo alloc] initWithIdentifier:v8 allExpectedResultSpecifiers:v9 resultSpecifiers:0];

  return v10;
}

- (id)_expectedResultSpecifiersForResolvedMomentCaptureMovieSettings:(id)a3
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 movieURL];

  if (v6)
  {
    [v5 addObject:&unk_1F16C8570];
  }

  return v5;
}

- (void)captureOutput:(id)a3 didFinishRecordingLivePhotoMovieForEventualFileAtURL:(id)a4 resolvedSettings:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [v8 uniqueID];
  CAMSignpostWithIDAndArgs(43, v9, v9, 0, 0, 0);
  v10 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [v8 uniqueID];
    _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "captureID:%lld captureOutput:didFinishRecordingLivePhotoMovieForEventualFileAtURL:resolvedSettings:", buf, 0xCu);
  }

  mach_absolute_time();
  v11 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v14 = v7;
  v12 = v7;
  v13 = v8;
  pl_dispatch_async();
}

void __104__CAMCaptureEngine_captureOutput_didFinishRecordingLivePhotoMovieForEventualFileAtURL_resolvedSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequests];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "uniqueID")}];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [v4 request];
  if (([v5 isCTMVideo] & 1) == 0)
  {
    [v4 didReceiveCallback:6 atAbsoluteTime:*(a1 + 56)];
    v6 = [*(a1 + 32) _coordinationInfoForRequest:v5 resolvedSettings:*(a1 + 40) videoComplementURL:*(a1 + 48) isFiltered:0];
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __104__CAMCaptureEngine_captureOutput_didFinishRecordingLivePhotoMovieForEventualFileAtURL_resolvedSettings___block_invoke_2;
    v9[3] = &unk_1E76FD410;
    v10 = v5;
    v11 = v6;
    v8 = v6;
    [v7 _enumerateCaptureServicesUsingBlock:v9];
    CAMSignpostWithIDAndArgs(44, *(a1 + 64), *(a1 + 64), 0, 0, 0);
  }
}

void __104__CAMCaptureEngine_captureOutput_didFinishRecordingLivePhotoMovieForEventualFileAtURL_resolvedSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 stillImageRequest:*(a1 + 32) didStopCapturingLivePhotoVideoForCoordinationInfo:*(a1 + 40)];
  }
}

- (void)captureOutput:(id)a3 didFinishProcessingLivePhotoToMovieFileAtURL:(id)a4 duration:(id *)a5 photoDisplayTime:(id *)a6 resolvedSettings:(id)a7 error:(id)a8
{
  v9 = *a5;
  v8 = *a6;
  [(CAMCaptureEngine *)self captureOutput:a3 didFinishProcessingLivePhotoToMovieFileAtURL:a4 duration:&v9 photoDisplayTime:&v8 metadataIdentifiers:MEMORY[0x1E695E0F8] resolvedSettings:a7 error:a8];
}

- (void)captureOutput:(id)a3 didFinishProcessingLivePhotoToMovieFileAtURL:(id)a4 duration:(id *)a5 photoDisplayTime:(id *)a6 metadataIdentifiers:(id)a7 resolvedSettings:(id)a8 error:(id)a9
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a7;
  v14 = a8;
  v15 = a9;
  v16 = [v14 uniqueID];
  CAMSignpostWithIDAndArgs(45, v16, v16, 0, 0, 0);
  v17 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v26 = [v14 uniqueID];
    v27 = 2114;
    v28 = v12;
    v29 = 2114;
    v30 = v15;
    _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "captureID:%lld captureOutput:didFinishProcessingLivePhotoToMovieFileAtURL:, url=%{public}@, error: %{public}@", buf, 0x20u);
  }

  mach_absolute_time();
  v18 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v23 = v14;
  v24 = v12;
  v19 = v13;
  v20 = v15;
  v21 = v12;
  v22 = v14;
  pl_dispatch_async();
}

void __148__CAMCaptureEngine_captureOutput_didFinishProcessingLivePhotoToMovieFileAtURL_duration_photoDisplayTime_metadataIdentifiers_resolvedSettings_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequests];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "uniqueID")}];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [v4 request];
  if (([v5 isCTMVideo] & 1) == 0)
  {
    [v4 didReceiveCallback:7 atAbsoluteTime:*(a1 + 72)];
    v6 = [*(a1 + 32) _coordinationInfoForRequest:v5 resolvedSettings:*(a1 + 40) videoComplementURL:*(a1 + 48) isFiltered:0];
    v31 = *(a1 + 88);
    v32 = *(a1 + 104);
    v7 = *(a1 + 32);
    v8 = *(a1 + 80);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v29 = *(a1 + 112);
    v30 = *(a1 + 128);
    v27 = *(a1 + 88);
    v28 = *(a1 + 104);
    v11 = [v7 _validateVideoAtURL:v9 forCaptureRequest:v5 captureID:v8 captureError:v10 isVideoComplement:1 stillImageDisplayTime:&v29 reportedDuration:&v27 outActualDuration:&v31 outVideoRecordingStoppedReason:0 outSlowWriterFrameDrops:0];
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 64), "count")}];
    v13 = *(a1 + 64);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __148__CAMCaptureEngine_captureOutput_didFinishProcessingLivePhotoToMovieFileAtURL_duration_photoDisplayTime_metadataIdentifiers_resolvedSettings_error___block_invoke_2;
    v25[3] = &unk_1E76FD4D8;
    v26 = v12;
    v14 = v12;
    [v13 enumerateKeysAndObjectsUsingBlock:v25];
    v15 = [CAMVideoCaptureResult alloc];
    v16 = *(a1 + 48);
    v17 = [*(a1 + 40) livePhotoMovieDimensions];
    v29 = v31;
    v30 = v32;
    v27 = *(a1 + 112);
    v28 = *(a1 + 128);
    LOBYTE(v21) = 0;
    v18 = [(CAMVideoCaptureResult *)v15 initWithURL:v16 filteredLocalDestinationURL:0 duration:&v29 stillDisplayTime:&v27 dimensions:v17 metadata:v14 videoZoomFactor:1.0 reason:0 videoPreviewPixelBuffer:0 coordinationInfo:v6 error:v11 slowWriterFrameDrops:v21];
    v19 = *(a1 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __148__CAMCaptureEngine_captureOutput_didFinishProcessingLivePhotoToMovieFileAtURL_duration_photoDisplayTime_metadataIdentifiers_resolvedSettings_error___block_invoke_3;
    v22[3] = &unk_1E76FD410;
    v23 = v5;
    v24 = v18;
    v20 = v18;
    [v19 _enumerateCaptureServicesUsingBlock:v22];
    CAMSignpostWithIDAndArgs(46, *(a1 + 80), *(a1 + 80), 0, 0, 0);
  }
}

void __148__CAMCaptureEngine_captureOutput_didFinishProcessingLivePhotoToMovieFileAtURL_duration_photoDisplayTime_metadataIdentifiers_resolvedSettings_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E6988050];
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(v5);
  [v8 setKeySpace:*MEMORY[0x1E6987850]];
  [v8 setKey:v7];

  [v8 setValue:v6];
  [*(a1 + 32) addObject:v8];
}

void __148__CAMCaptureEngine_captureOutput_didFinishProcessingLivePhotoToMovieFileAtURL_duration_photoDisplayTime_metadataIdentifiers_resolvedSettings_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 stillImageRequest:*(a1 + 32) didCompleteVideoCaptureWithResult:*(a1 + 40)];
  }
}

- (void)captureOutput:(id)a3 didFinishCaptureForResolvedSettings:(id)a4 error:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = [v7 uniqueID];
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "captureID:%lld captureOutput:didFinishCaptureForResolvedSettings:, error: %{public}@", &v10, 0x16u);
  }

  -[CAMCaptureEngine _didFinishStillImageCaptureForUniqueID:error:](self, "_didFinishStillImageCaptureForUniqueID:error:", [v7 uniqueID], v8);
}

- (void)_didFinishStillImageCaptureForUniqueID:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  CAMSignpostWithIDAndArgs(47, a3, a3, 0, 0, 0);
  mach_absolute_time();
  v7 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v8 = v6;
  pl_dispatch_async();
}

void __65__CAMCaptureEngine__didFinishStillImageCaptureForUniqueID_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
  v3 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequests];
  v4 = [v3 objectForKeyedSubscript:v2];
  v5 = [v4 request];
  [v4 didReceiveCallback:5 atAbsoluteTime:*(a1 + 56)];
  aBlock = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __65__CAMCaptureEngine__didFinishStillImageCaptureForUniqueID_error___block_invoke_2;
  v18 = &unk_1E76F7938;
  v19 = *(a1 + 32);
  v6 = v5;
  v20 = v6;
  v21 = *(a1 + 40);
  v7 = _Block_copy(&aBlock);
  v8 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequestsDispatchedToFilteringQueue];
  v9 = [v8 containsObject:v2];

  if (v9)
  {
    v10 = [*(a1 + 32) _effectsPreviewSurfaceFilteringQueue];
    pl_dispatch_async();
  }

  else
  {
    v7[2](v7);
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"captureID:%lld received final callback. ", v12, aBlock, v16, v17, v18, v19];
  [v11 _resultsQueue_logReceivedCallbacksForID:v12 withIntroString:v13];

  [v3 removeObjectForKey:v2];
  v14 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequestsDispatchedToFilteringQueue];
  [v14 removeObject:v2];

  CAMSignpostWithIDAndArgs(48, *(a1 + 48), *(a1 + 48), 0, 0, 0);
}

void __65__CAMCaptureEngine__didFinishStillImageCaptureForUniqueID_error___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__CAMCaptureEngine__didFinishStillImageCaptureForUniqueID_error___block_invoke_3;
  v3[3] = &unk_1E76FD410;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _enumerateCaptureServicesUsingBlock:v3];
}

void __65__CAMCaptureEngine__didFinishStillImageCaptureForUniqueID_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 stillImageRequestDidCompleteCapture:*(a1 + 32) error:*(a1 + 40)];
  }
}

- (void)captureOutput:(id)a3 didBeginMovieCaptureForResolvedSettings:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 uniqueID];
  CAMSignpostWithIDAndArgs(57, v6, v6, 0, 0, 0);
  v7 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v11 = v6;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "captureID:%lld captureOutput:didBeginMovieCaptureForResolvedSettings:, %{public}@", buf, 0x16u);
  }

  mach_absolute_time();
  [(CAMCaptureEngine *)self stopMonitoringForAccidentalLaunch];
  v8 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v9 = v5;
  pl_dispatch_async();
}

void __74__CAMCaptureEngine_captureOutput_didBeginMovieCaptureForResolvedSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequests];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "uniqueID")}];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [v4 request];
  [v4 didReceiveCallback:8 atAbsoluteTime:*(a1 + 48)];
  [*(a1 + 32) _setResultsQueueLastCompletedVideoZoomFactor:0.0];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CAMCaptureEngine_captureOutput_didBeginMovieCaptureForResolvedSettings___block_invoke_2;
  v8[3] = &unk_1E76FD198;
  v9 = v5;
  v7 = v5;
  [v6 _enumerateCaptureServicesUsingBlock:v8];
  CAMSignpostWithIDAndArgs(58, *(a1 + 56), *(a1 + 56), 0, 0, 0);
}

void __74__CAMCaptureEngine_captureOutput_didBeginMovieCaptureForResolvedSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 stillImageRequestWillStartCapturingVideo:*(a1 + 32)];
  }
}

- (void)captureOutput:(id)a3 didFinishRecordingMovie:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 resolvedSettings];
  v7 = [v6 uniqueID];

  v8 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 outputFileURL];
    *buf = 134218242;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "captureID:%lld captureOutput:didFinishRecordingMovie:, url=%{public}@", buf, 0x16u);
  }

  mach_absolute_time();
  v10 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v11 = v5;
  pl_dispatch_async();
}

void __58__CAMCaptureEngine_captureOutput_didFinishRecordingMovie___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequests];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [v4 request];
  [v4 didReceiveCallback:9 atAbsoluteTime:*(a1 + 56)];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) outputFileURL];
  v8 = [*(a1 + 40) resolvedSettings];
  v9 = [v6 _coordinationInfoForCTMVideoRequest:v5 videoOutputURL:v7 resolvedMomentCaptureMovieSettings:v8];

  v10 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__CAMCaptureEngine_captureOutput_didFinishRecordingMovie___block_invoke_2;
  v13[3] = &unk_1E76FD410;
  v14 = v5;
  v15 = v9;
  v11 = v9;
  v12 = v5;
  [v10 _enumerateCaptureServicesUsingBlock:v13];
}

void __58__CAMCaptureEngine_captureOutput_didFinishRecordingMovie___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 stillImageRequest:*(a1 + 32) didStopCapturingCTMVideoForCoordinationInfo:*(a1 + 40)];
  }
}

- (void)captureOutput:(id)a3 didFinishWritingMovie:(id)a4 error:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [v7 resolvedSettings];
  v10 = [v9 uniqueID];

  CAMSignpostWithIDAndArgs(59, v10, v10, 0, 0, 0);
  v11 = [v7 outputFileURL];
  v12 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "captureID:%lld captureOutput:didFinishWritingMovie:, url=%{public}@, error: %{public}@", buf, 0x20u);
  }

  CVPixelBufferRetain([v7 previewPixelBuffer]);
  mach_absolute_time();
  v13 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v17 = v7;
  v18 = v8;
  v14 = v8;
  v15 = v7;
  v16 = v11;
  pl_dispatch_async();
}

void __62__CAMCaptureEngine_captureOutput_didFinishWritingMovie_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 64)];
  v3 = [*(a1 + 32) _resultsQueueRegisteredStillImageRequests];
  v4 = [v3 objectForKeyedSubscript:v2];

  v5 = [v4 request];
  [v4 didReceiveCallback:10 atAbsoluteTime:*(a1 + 72)];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) resolvedSettings];
  v9 = [v6 _coordinationInfoForCTMVideoRequest:v5 videoOutputURL:v7 resolvedMomentCaptureMovieSettings:v8];

  v55 = 0uLL;
  v56 = 0;
  v10 = *(a1 + 48);
  if (v10)
  {
    [v10 duration];
    v10 = *(a1 + 48);
  }

  v54 = 0;
  v53 = 0;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v14 = *(a1 + 56);
  v13 = *(a1 + 64);
  if (v10)
  {
    [v10 duration];
  }

  else
  {
    v48 = 0uLL;
    *&v49 = 0;
  }

  v51 = *MEMORY[0x1E6960C70];
  v52 = *(MEMORY[0x1E6960C70] + 16);
  v15 = [v11 _validateVideoAtURL:v12 forCaptureRequest:v5 captureID:v13 captureError:v14 isVideoComplement:0 stillImageDisplayTime:&v51 reportedDuration:&v48 outActualDuration:&v55 outVideoRecordingStoppedReason:&v54 outSlowWriterFrameDrops:&v53];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v51 = 0uLL;
  if (!*(a1 + 56))
  {
    Width = CVPixelBufferGetWidth(*(a1 + 80));
    Height = CVPixelBufferGetHeight(*(a1 + 80));
    v21 = *(a1 + 32);
    if (v21)
    {
      [v21 _previewFilterSetForRequest:v5 previewSize:{Width, Height}];
      v17 = *(&v48 + 1);
      v18 = v48;
      v16 = v50;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
    }

    v51 = v49;
  }

  [*(a1 + 32) _resultsQueueLastCompletedVideoZoomFactor];
  v23 = v22;
  [*(a1 + 32) _setResultsQueueLastCompletedVideoZoomFactor:0.0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__CAMCaptureEngine_captureOutput_didFinishWritingMovie_error___block_invoke_2;
  aBlock[3] = &unk_1E76FD528;
  v35 = *(a1 + 40);
  v45 = v55;
  v46 = v56;
  v36 = *(a1 + 48);
  v41 = v23;
  v42 = v54;
  v24 = v9;
  v37 = v24;
  v25 = v15;
  v47 = v53;
  v43 = *(a1 + 80);
  v26 = *(a1 + 32);
  v38 = v25;
  v39 = v26;
  v27 = v5;
  v28 = *(a1 + 64);
  v40 = v27;
  v44 = v28;
  v29 = _Block_copy(aBlock);
  v30 = v29;
  v31 = *(a1 + 80);
  if (!v31)
  {
    goto LABEL_16;
  }

  v32 = v18 != 0;
  if (v17)
  {
    ++v32;
  }

  if (v32 | ((v16 - 1) < 0xFFFFFFFFFFFFFFFELL))
  {
    v33 = *(a1 + 32);
    *&v48 = v18;
    *(&v48 + 1) = v17;
    v49 = v51;
    v50 = v16;
    [v33 _resultsQueue_performPostprocessingForPreviewBuffer:v31 metadata:0 filters:&v48 stillImageCaptureRequestKey:v2 completionHandler:v30];
  }

  else
  {
LABEL_16:
    (*(v29 + 2))(v29);
  }
}

void __62__CAMCaptureEngine_captureOutput_didFinishWritingMovie_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [CAMVideoCaptureResult alloc];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) resolvedSettings];
  v7 = [v6 movieDimensions];
  v8 = [*(a1 + 40) movieMetadata];
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 136);
  v23 = *(a1 + 112);
  v24 = *(a1 + 128);
  v21 = *MEMORY[0x1E6960C70];
  v22 = *(MEMORY[0x1E6960C70] + 16);
  LOBYTE(v17) = v13;
  v14 = [(CAMVideoCaptureResult *)v4 initWithURL:v5 filteredLocalDestinationURL:0 duration:&v23 stillDisplayTime:&v21 dimensions:v7 metadata:v8 videoZoomFactor:v9 reason:v10 videoPreviewPixelBuffer:a2 coordinationInfo:v11 error:v12 slowWriterFrameDrops:v17];

  CVPixelBufferRelease(*(a1 + 96));
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__CAMCaptureEngine_captureOutput_didFinishWritingMovie_error___block_invoke_3;
  v18[3] = &unk_1E76FD410;
  v15 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = v14;
  v16 = v14;
  [v15 _enumerateCaptureServicesUsingBlock:v18];
  CAMSignpostWithIDAndArgs(60, *(a1 + 104), *(a1 + 104), 0, 0, 0);
}

void __62__CAMCaptureEngine_captureOutput_didFinishWritingMovie_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 stillImageRequest:*(a1 + 32) didCompleteVideoCaptureWithResult:*(a1 + 40)];
  }
}

- (void)captureOutput:(id)a3 didFinishMovieCaptureForResolvedSettings:(id)a4 error:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = [v7 uniqueID];
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "captureID:%lld captureOutput:didFinishMovieCaptureForResolvedSettings:, error: %{public}@", &v10, 0x16u);
  }

  -[CAMCaptureEngine _didFinishStillImageCaptureForUniqueID:error:](self, "_didFinishStillImageCaptureForUniqueID:error:", [v7 uniqueID], v8);
}

- ($42FF7B9720B8FFE93045C4EB8F3F13A3)_previewFilterSetForRequest:(SEL)a3 photo:(id)a4
{
  v16 = a5;
  v8 = a4;
  v9 = [v16 resolvedSettings];
  v10 = [v9 previewDimensions];
  v11 = v10;
  v12 = HIDWORD(v10);

  retstr->var3 = 0;
  *&retstr->var0 = 0u;
  retstr->var2 = 0u;
  [(CAMCaptureEngine *)self _previewFilterSetForRequest:v8 previewSize:v11, v12];
  LODWORD(self) = [v8 wantsSemanticSceneFilter];

  if (self)
  {
    v13 = MEMORY[0x1E69C0868];
    v14 = [v16 privateClientMetadata];
    retstr->var3 = [v13 semanticEnhanceSceneForPrivateClientMetadata:v14];
  }

  return result;
}

- ($42FF7B9720B8FFE93045C4EB8F3F13A3)_previewFilterSetForRequest:(SEL)a3 previewSize:(id)a4
{
  height = a5.height;
  width = a5.width;
  v11 = a4;
  retstr->var3 = 0;
  retstr->var1 = [v11 aspectRatioCrop];
  retstr->var2.width = width;
  retstr->var2.height = height;
  v8 = [v11 adjustmentFilters];
  v9 = 0;
  if (!v8)
  {
    v9 = [v11 effectFilterType];
  }

  retstr->var0 = v9;

  return result;
}

- (id)_previewFiltersForFilterSet:(id *)a3
{
  if (a3->var0)
  {
    v4 = (a3->var1 != 0) + 1;
  }

  else
  {
    v4 = a3->var1 != 0;
  }

  if ((a3->var3 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 + 1;
  }

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__CAMCaptureEngine__previewFiltersForFilterSet___block_invoke;
  aBlock[3] = &unk_1E76FD578;
  v7 = v6;
  v22 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [MEMORY[0x1E69C0868] filterForSemanticEnhanceScene:a3->var3];
  if (v9)
  {
    v10 = +[CAMCaptureCapabilities capabilities];
    v11 = [v10 enableSemanticDevelopmentFilterDebugging];

    if (v11)
    {
      v12 = MEMORY[0x1E695F648];
      v13 = [v9 name];
      v14 = [v12 filterWithName:v13 withInputParameters:&unk_1F16C9060];

      v9 = v14;
    }
  }

  v8[2](v8, v9);
  v15 = MEMORY[0x1E695F648];
  v16 = [CAMEffectFilterManager ciFilterNameForFilterType:a3->var0];
  v17 = [v15 filterWithName:v16];
  v8[2](v8, v17);

  v18 = [CAMAspectCropUtilities cropFilterForAspectRatio:a3->var1 imageSize:a3->var2.width, a3->var2.height];
  v8[2](v8, v18);

  v19 = v7;
  return v7;
}

uint64_t __48__CAMCaptureEngine__previewFiltersForFilterSet___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (__CVBuffer)_createOutputPixelBufferWithSize:(CGSize)a3 matchingInputPixelBuffer:(__CVBuffer *)a4
{
  v6 = *MEMORY[0x1E69E9840];
  CVPixelBufferGetPixelFormatType(a4);
  CVPixelBufferGetAttributes();
  FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
  v4 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CAMCaptureEngine _createOutputPixelBufferWithSize:matchingInputPixelBuffer:];
  }

  CVPixelBufferRelease(0);
  return 0;
}

- (__CVBuffer)_newFilteredPixelBufferFromPixelBuffer:(__CVBuffer *)a3 metadata:(id)a4 filters:(id)a5
{
  v47[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v46 = *MEMORY[0x1E695F9E0];
    v47[0] = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  }

  else
  {
    v10 = 0;
  }

  v36 = self;
  v37 = v8;
  v34 = a3;
  v35 = v10;
  v11 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:a3 options:v10];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    v16 = *MEMORY[0x1E695FAB0];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v41 + 1) + 8 * i);
        [v18 setValue:v11 forKey:v16];
        v19 = [v18 outputImage];

        v20 = [v18 name];
        v21 = [v20 isEqualToString:@"CICrop"];

        if (v21)
        {
          v22 = [v18 valueForKey:@"inputRectangle"];
          [v22 CGRectValue];
          CGAffineTransformMakeTranslation(&v40, -v23, -v24);
          v11 = [v19 imageByApplyingTransform:&v40];
        }

        else
        {
          v11 = v19;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v14);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__CAMCaptureEngine__newFilteredPixelBufferFromPixelBuffer_metadata_filters___block_invoke;
  aBlock[3] = &unk_1E76F77B0;
  v25 = v12;
  v39 = v25;
  v26 = _Block_copy(aBlock);
  [v11 extent];
  v29 = [(CAMCaptureEngine *)v36 _createOutputPixelBufferWithSize:v34 matchingInputPixelBuffer:v27, v28];
  if (v29)
  {
    effectsPreviewSurfaceFilteringContext = v36->__effectsPreviewSurfaceFilteringContext;
    if (!effectsPreviewSurfaceFilteringContext)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695F620]);
      v32 = v36->__effectsPreviewSurfaceFilteringContext;
      v36->__effectsPreviewSurfaceFilteringContext = v31;

      effectsPreviewSurfaceFilteringContext = v36->__effectsPreviewSurfaceFilteringContext;
    }

    [(CIContext *)effectsPreviewSurfaceFilteringContext render:v11 toCVPixelBuffer:v29];
  }

  v26[2](v26);

  return v29;
}

- (void)_resultsQueue_performPostprocessingForPreviewBuffer:(__CVBuffer *)a3 metadata:(id)a4 filters:(id *)a5 stillImageCaptureRequestKey:(id)a6 completionHandler:(id)a7
{
  v10 = a4;
  v11 = a7;
  v12 = a6;
  v13 = [(CAMCaptureEngine *)self _captureResultsQueue];
  dispatch_assert_queue_V2(v13);

  v14 = [(CAMCaptureEngine *)self _resultsQueueRegisteredStillImageRequestsDispatchedToFilteringQueue];
  [v14 addObject:v12];

  if (!self->__effectsPreviewSurfaceFilteringQueue)
  {
    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v16 = dispatch_queue_create("com.apple.camera.capture-engine.effects-preview-surface-filtering-queue", v15);
    effectsPreviewSurfaceFilteringQueue = self->__effectsPreviewSurfaceFilteringQueue;
    self->__effectsPreviewSurfaceFilteringQueue = v16;
  }

  v18 = [(CAMCaptureEngine *)self _effectsPreviewSurfaceFilteringQueue];
  v21 = v10;
  v19 = v11;
  v20 = v10;
  pl_dispatch_async();
}

void __135__CAMCaptureEngine__resultsQueue_performPostprocessingForPreviewBuffer_metadata_filters_stillImageCaptureRequestKey_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);
  v6[0] = *(a1 + 56);
  v6[1] = v3;
  v7 = *(a1 + 88);
  v4 = [v2 _previewFiltersForFilterSet:v6];
  v5 = [*(a1 + 32) _newFilteredPixelBufferFromPixelBuffer:*(a1 + 96) metadata:*(a1 + 40) filters:v4];
  (*(*(a1 + 48) + 16))();
  CVPixelBufferRelease(v5);
}

- (void)registerVideoCaptureRequest:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v6 = v4;
  pl_dispatch_async();
}

void __48__CAMCaptureEngine_registerVideoCaptureRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) _resultsQueueRequestsBeingRecorded];
  v3 = [*(a1 + 40) localDestinationURL];
  [v4 setObject:v2 forKeyedSubscript:v3];
}

- (void)registerVideoEndZoomFactor:(double)a3
{
  v3 = [(CAMCaptureEngine *)self _captureResultsQueue];
  pl_dispatch_async();
}

- (void)stopRecording
{
  v3 = [(CAMCaptureEngine *)self movieFileOutput];
  v4 = [v3 outputFileURL];
  v5 = [v3 currentRequest];
  v6 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v10 = v4;
  v11 = v3;
  v7 = v3;
  v8 = v5;
  v9 = v4;
  pl_dispatch_async();
}

void __33__CAMCaptureEngine_stopRecording__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _resultsQueueRequestsBeingRecorded];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (!v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = [*(a1 + 48) localDestinationURL];
    }

    v6 = v5;
    v7 = [*(a1 + 32) _resultsQueueLastCompletedVideoURL];
    v8 = [v7 isEqual:v6];

    if (v8)
    {
      v9 = os_log_create("com.apple.camera", "Capture");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Detected stop-after-completion case for %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v10 = [*(a1 + 56) connections];
      v11 = CAMVideoCaptureRequestError(-28000, 0);
      [v2 setObject:*(a1 + 48) forKey:v6];
      v12 = dispatch_get_global_queue(2, 0);
      v14 = v6;
      v15 = *(a1 + 56);
      v16 = v11;
      v13 = v11;
      v9 = v10;
      pl_dispatch_async();
    }
  }
}

uint64_t __33__CAMCaptureEngine_stopRecording__block_invoke_319(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "Handling stop-before-start for video capture: %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 40) captureOutput:*(a1 + 48) didFinishRecordingToOutputFileAtURL:*(a1 + 32) fromConnections:*(a1 + 56) error:*(a1 + 64)];
}

- (void)setMultiCamPictureInPictureMetrics:(id)a3
{
  v4 = a3;
  v5 = +[CAMCaptureCapabilities capabilities];
  if ([v5 isFrontRearSimultaneousVideoSupported])
  {
    v6 = [(CAMCaptureEngine *)self _multiCamPIPCompositingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__CAMCaptureEngine_setMultiCamPictureInPictureMetrics___block_invoke;
    v7[3] = &unk_1E76F7960;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

void __55__CAMCaptureEngine_setMultiCamPictureInPictureMetrics___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _multiCamPIPCompositingQueue_multiCamPIPCompositor];
  [v2 setPictureInPictureMetrics:*(a1 + 40)];
}

- (void)setMultiCamPictureInPictureMotionBlurDisabled:(BOOL)a3
{
  v5 = +[CAMCaptureCapabilities capabilities];
  if ([v5 isFrontRearSimultaneousVideoSupported])
  {
    v6 = [(CAMCaptureEngine *)self _multiCamPIPCompositingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__CAMCaptureEngine_setMultiCamPictureInPictureMotionBlurDisabled___block_invoke;
    v7[3] = &unk_1E76F7850;
    v7[4] = self;
    v8 = a3;
    dispatch_async(v6, v7);
  }
}

void __66__CAMCaptureEngine_setMultiCamPictureInPictureMotionBlurDisabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _multiCamPIPCompositingQueue_multiCamPIPCompositor];
  [v2 setMotionBlurDisabled:*(a1 + 40)];
}

- (void)captureOutput:(id)a3 didPauseRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5
{
  v6 = a3;
  v7 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "CAMCaptureEngine didPauseRecordingToOutputFileAtURL:", buf, 2u);
  }

  v8 = [v6 currentRequest];

  if ([v8 isFrontRearSimultaneousVideoEnabled])
  {
    v9 = [(CAMCaptureEngine *)self _multiCamPIPCompositingQueue];
    pl_dispatch_async();
  }

  v10 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v11 = v8;
  pl_dispatch_async();
}

void __85__CAMCaptureEngine_captureOutput_didPauseRecordingToOutputFileAtURL_fromConnections___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _multiCamPIPCompositingQueue_multiCamPIPCompositor];
  [v1 resetCompositingState:0];
}

void __85__CAMCaptureEngine_captureOutput_didPauseRecordingToOutputFileAtURL_fromConnections___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __85__CAMCaptureEngine_captureOutput_didPauseRecordingToOutputFileAtURL_fromConnections___block_invoke_3;
  v2[3] = &unk_1E76FD198;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _enumerateCaptureServicesUsingBlock:v2];
}

void __85__CAMCaptureEngine_captureOutput_didPauseRecordingToOutputFileAtURL_fromConnections___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 videoRequestDidPauseCapturing:*(a1 + 32)];
  }
}

- (void)captureOutput:(id)a3 didResumeRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5
{
  v6 = a3;
  v7 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "CAMCaptureEngine didResumeRecordingToOutputFileAtURL:", buf, 2u);
  }

  v8 = [v6 currentRequest];

  v9 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v10 = v8;
  pl_dispatch_async();
}

void __86__CAMCaptureEngine_captureOutput_didResumeRecordingToOutputFileAtURL_fromConnections___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __86__CAMCaptureEngine_captureOutput_didResumeRecordingToOutputFileAtURL_fromConnections___block_invoke_2;
  v2[3] = &unk_1E76FD198;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _enumerateCaptureServicesUsingBlock:v2];
}

void __86__CAMCaptureEngine_captureOutput_didResumeRecordingToOutputFileAtURL_fromConnections___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 videoRequestDidResumeCapturing:*(a1 + 32)];
  }
}

- (void)captureOutput:(id)a3 didStartRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMCaptureEngine *)self stopMonitoringForAccidentalLaunch];
  v10 = [v8 currentRequest];

  [v10 userInitiationTimestamp];
  if (v11 != 0.0)
  {
    v12 = v11;
    v13 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v19 = v7;
      v20 = 2048;
      v21 = Current - v12;
      _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "CAMCaptureEngine captureOutput:didStartRecordingToOutputFileAtURL: url=%{public}@ (after %.3f seconds)", buf, 0x16u);
    }
  }

  v14 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v17 = v7;
  v15 = v7;
  v16 = v10;
  pl_dispatch_async();
}

void __85__CAMCaptureEngine_captureOutput_didStartRecordingToOutputFileAtURL_fromConnections___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _setResultsQueueLastCompletedVideoZoomFactor:0.0];
  v2 = [*(a1 + 40) localDestinationURL];
  v3 = v2;
  if (*(a1 + 40) && ([v2 isEqual:*(a1 + 48)] & 1) != 0)
  {
    if ([*(a1 + 40) shouldGenerateVideoPreviewImage])
    {
      v4 = [MEMORY[0x1E696AD88] defaultCenter];
      objc_initWeak(&location, v4);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v23 = __Block_byref_object_copy__26;
      v24 = __Block_byref_object_dispose__26;
      v25 = 0;
      v5 = [MEMORY[0x1E696ADC8] currentQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __85__CAMCaptureEngine_captureOutput_didStartRecordingToOutputFileAtURL_fromConnections___block_invoke_325;
      v17[3] = &unk_1E76FD610;
      v18 = *(a1 + 40);
      objc_copyWeak(&v20, &location);
      v6 = *MEMORY[0x1E69869A8];
      v19 = buf;
      v7 = [v4 addObserverForName:v6 object:0 queue:v5 usingBlock:v17];
      v8 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v7;

      _Block_object_dispose(buf, 8);
      objc_destroyWeak(&v20);

      objc_destroyWeak(&location);
    }

    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85__CAMCaptureEngine_captureOutput_didStartRecordingToOutputFileAtURL_fromConnections___block_invoke_2;
    v15[3] = &unk_1E76FD198;
    v16 = v9;
    [v10 _enumerateCaptureServicesUsingBlock:v15];
    if ([*(a1 + 40) isFrontRearSimultaneousVideoEnabled])
    {
      v11 = [*(a1 + 32) _multiCamPIPCompositingQueue];
      pl_dispatch_async();
    }

    v12 = v16;
  }

  else
  {
    v12 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      *buf = 138543874;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v3;
      *&buf[22] = 2114;
      v23 = v14;
      _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "Started recording for an unexpected video request %{public}@ (%{public}@, %{public}@)", buf, 0x20u);
    }
  }
}

void __85__CAMCaptureEngine_captureOutput_didStartRecordingToOutputFileAtURL_fromConnections___block_invoke_325(uint64_t a1, void *a2)
{
  v6 = [a2 userInfo];
  v3 = [v6 objectForKey:*MEMORY[0x1E69869C0]];
  v4 = [[CAMIOSurfaceWrapper alloc] initWithIOSurface:v3];
  objc_setAssociatedObject(*(a1 + 32), _associatedVideoPreviewSurfaceKey, v4, 1);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained removeObserver:*(*(*(a1 + 40) + 8) + 40)];
}

void __85__CAMCaptureEngine_captureOutput_didStartRecordingToOutputFileAtURL_fromConnections___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 videoRequestDidStartCapturing:*(a1 + 32)];
  }
}

void __85__CAMCaptureEngine_captureOutput_didStartRecordingToOutputFileAtURL_fromConnections___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) _multiCamPIPCompositingQueue_multiCamPIPCompositor];
  [v1 prepareForCompositing];
}

- (void)_captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 forVideoCaptureRequest:(id)a6 videoZoomFactor:(double)a7 error:(id)a8
{
  v40 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a8;
  v17 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v33 = v14;
    v34 = 2114;
    v35 = v15;
    v36 = 2048;
    v37 = a7;
    v38 = 2114;
    v39 = v16;
    _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "CAMCaptureEngine _captureOutput:didFinishRecordingToOutputFileAtURL:fromConnections:forVideoCaptureRequest:videoZoomFactor:error url=%{public}@, request=%{public}@, videoZoomFactor=%.2f, error=%{public}@", buf, 0x2Au);
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __132__CAMCaptureEngine__captureOutput_didFinishRecordingToOutputFileAtURL_fromConnections_forVideoCaptureRequest_videoZoomFactor_error___block_invoke;
  v30[3] = &unk_1E76FD198;
  v18 = v15;
  v31 = v18;
  [(CAMCaptureEngine *)self _enumerateCaptureServicesUsingBlock:v30];
  v19 = [v13 metadata];
  v20 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v26 = v13;
  v27 = v14;
  v28 = v16;
  v29 = v19;
  v21 = v19;
  v22 = v16;
  v23 = v18;
  v24 = v14;
  v25 = v13;
  pl_dispatch_async();
}

void __132__CAMCaptureEngine__captureOutput_didFinishRecordingToOutputFileAtURL_fromConnections_forVideoCaptureRequest_videoZoomFactor_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 videoRequestDidStopCapturing:*(a1 + 32)];
  }
}

void __132__CAMCaptureEngine__captureOutput_didFinishRecordingToOutputFileAtURL_fromConnections_forVideoCaptureRequest_videoZoomFactor_error___block_invoke_2(uint64_t a1)
{
  v41 = 0uLL;
  v42 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 recordedDuration];
    v2 = *(a1 + 32);
  }

  v40 = 0;
  v39 = 0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  if (v2)
  {
    [v2 recordedDuration];
  }

  else
  {
    v37 = 0uLL;
    v38 = 0;
  }

  v25 = *MEMORY[0x1E6960C70];
  v35 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v36 = v7;
  v8 = [v3 _validateVideoAtURL:v4 forCaptureRequest:v5 captureID:0 captureError:v6 isVideoComplement:0 stillImageDisplayTime:&v35 reportedDuration:&v37 outActualDuration:&v41 outVideoRecordingStoppedReason:&v40 outSlowWriterFrameDrops:&v39];
  if (v8)
  {
    if (*(a1 + 48))
    {
      v9 = [MEMORY[0x1E696AC08] defaultManager];
      v10 = [*(a1 + 48) path];
      v11 = [v9 fileExistsAtPath:v10];

      if (v11)
      {

        v8 = 0;
      }
    }
  }

  v12 = objc_getAssociatedObject(*(a1 + 56), _associatedVideoPreviewSurfaceKey);
  v13 = [v12 surface];
  pixelBufferOut = 0;
  if (v13)
  {
    if (CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v13, 0, &pixelBufferOut))
    {
      v14 = os_log_create("com.apple.camera", "Capture");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __132__CAMCaptureEngine__captureOutput_didFinishRecordingToOutputFileAtURL_fromConnections_forVideoCaptureRequest_videoZoomFactor_error___block_invoke_2_cold_1();
      }

      CVPixelBufferRelease(pixelBufferOut);
      pixelBufferOut = 0;
    }
  }

  else
  {
    v15 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __132__CAMCaptureEngine__captureOutput_didFinishRecordingToOutputFileAtURL_fromConnections_forVideoCaptureRequest_videoZoomFactor_error___block_invoke_2_cold_2();
    }
  }

  v16 = [CAMVideoCaptureResult alloc];
  v17 = *(a1 + 48);
  v18 = *(a1 + 72);
  v19 = *(a1 + 80);
  v37 = v41;
  v38 = v42;
  v35 = v25;
  v36 = v7;
  LOBYTE(v24) = v39;
  v20 = [(CAMVideoCaptureResult *)v16 initWithURL:v17 filteredLocalDestinationURL:0 duration:&v37 stillDisplayTime:&v35 dimensions:0 metadata:v18 videoZoomFactor:v19 reason:v40 videoPreviewPixelBuffer:pixelBufferOut coordinationInfo:0 error:v8 slowWriterFrameDrops:v24];
  objc_setAssociatedObject(*(a1 + 56), _associatedVideoPreviewSurfaceKey, 0, 1);
  CVPixelBufferRelease(pixelBufferOut);
  if ([*(a1 + 56) isFrontRearSimultaneousVideoEnabled])
  {
    v21 = [*(a1 + 40) _multiCamPIPCompositingQueue];
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __132__CAMCaptureEngine__captureOutput_didFinishRecordingToOutputFileAtURL_fromConnections_forVideoCaptureRequest_videoZoomFactor_error___block_invoke_333;
    v32 = &unk_1E76F77B0;
    v33 = *(a1 + 40);
    pl_dispatch_async();
  }

  v22 = *(a1 + 40);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __132__CAMCaptureEngine__captureOutput_didFinishRecordingToOutputFileAtURL_fromConnections_forVideoCaptureRequest_videoZoomFactor_error___block_invoke_2_334;
  v26[3] = &unk_1E76FD410;
  v27 = *(a1 + 56);
  v28 = v20;
  v23 = v20;
  [v22 _enumerateCaptureServicesUsingBlock:v26];
}

void __132__CAMCaptureEngine__captureOutput_didFinishRecordingToOutputFileAtURL_fromConnections_forVideoCaptureRequest_videoZoomFactor_error___block_invoke_333(uint64_t a1)
{
  v1 = [*(a1 + 32) _multiCamPIPCompositingQueue_multiCamPIPCompositor];
  [v1 resetCompositingState:1];
}

void __132__CAMCaptureEngine__captureOutput_didFinishRecordingToOutputFileAtURL_fromConnections_forVideoCaptureRequest_videoZoomFactor_error___block_invoke_2_334(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 videoRequest:*(a1 + 32) didCompleteCaptureWithResult:*(a1 + 40)];
  }
}

- (id)_validateVideoAtURL:(id)a3 forCaptureRequest:(id)a4 captureID:(int64_t)a5 captureError:(id)a6 isVideoComplement:(BOOL)a7 stillImageDisplayTime:(id *)a8 reportedDuration:(id *)a9 outActualDuration:(id *)a10 outVideoRecordingStoppedReason:(int64_t *)a11 outSlowWriterFrameDrops:(BOOL *)a12
{
  v13 = a7;
  v127 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v111 = a4;
  v17 = a6;
  v18 = [v17 code];
  v115 = v17;
  if (!v17)
  {
    v108 = 0;
    v20 = 0;
    v19 = 0;
    goto LABEL_23;
  }

  if (v18 <= -11812)
  {
    if (v18 <= -11905)
    {
      if (v18 != -28000)
      {
        if (v18 == -11911)
        {
          v19 = CAMVideoCaptureRequestError(-28003, v17);
          v108 = 0;
          v20 = 1;
          goto LABEL_23;
        }

        goto LABEL_20;
      }

LABEL_17:
      v19 = v17;
      v20 = 1;
LABEL_21:
      v21 = 5;
      goto LABEL_22;
    }

    if (v18 == -11904)
    {
      goto LABEL_17;
    }

    if (v18 == -11818)
    {
      v19 = v17;
      v20 = 0;
      v21 = 4;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v18 > -11808)
  {
    if (v18 == -11807)
    {
      v20 = 0;
      v19 = 0;
      v21 = 1;
      goto LABEL_22;
    }

    if (v18 == -11805)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (v18 == -11811)
  {
    v20 = 0;
    v19 = 0;
    v21 = 3;
    goto LABEL_22;
  }

  if (v18 != -11810)
  {
LABEL_20:
    v19 = v17;
    v20 = 0;
    goto LABEL_21;
  }

  v20 = 0;
  v19 = 0;
  v21 = 2;
LABEL_22:
  v108 = v21;
LABEL_23:
  var0 = a9->var0;
  var2 = a9->var2;
  var1 = a9->var1;
  var3 = a9->var3;
  flags = var2;
  v23 = var2 & 0x1D;
  Seconds = 0.0;
  if (v23 == 1)
  {
    time.value = a9->var0;
    time.timescale = a9->var1;
    time.flags = var2;
    time.epoch = var3;
    Seconds = CMTimeGetSeconds(&time);
  }

  if (v16)
  {
    v25 = [v16 path];
    v26 = [v25 length] == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = a9->var2;
  v112 = v16;
  if (v23 != 1)
  {
    if (v13)
    {
      v33 = @"Live Photo movie";
    }

    else
    {
      v33 = @"video";
    }

    v110 = v33;
    if (v27)
    {
      v32 = v115;
      goto LABEL_44;
    }

    v30 = 0;
    v31 = @"Invalid";
LABEL_45:
    v32 = v115;
    goto LABEL_46;
  }

  time.value = var0;
  time.timescale = var1;
  time.flags = flags;
  time.epoch = var3;
  v28 = CMTimeGetSeconds(&time);
  if (v13)
  {
    v29 = @"Live Photo movie";
  }

  else
  {
    v29 = @"video";
  }

  v110 = v29;
  v30 = v27 | (v28 == 0.0);
  if (v27)
  {
    v31 = @"Zero";
  }

  else
  {
    v31 = @"Invalid";
  }

  if ((v27 & 1) == 0)
  {
    goto LABEL_45;
  }

  v32 = v115;
  if (v28 != 0.0)
  {
LABEL_44:
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3fs", *&Seconds];
    v30 = 0;
  }

LABEL_46:
  v35 = (v27 & 1) == 0 || v32 != 0;
  v36 = MEMORY[0x1E696AA08];
  v109 = v31;
  if ((v20 | v26) & 1) == 0 && ((v35 | v30))
  {
    v37 = os_log_create("com.apple.camera", "Capture");
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (!v38)
      {
        goto LABEL_58;
      }

      LODWORD(time.value) = 138544130;
      *(&time.value + 4) = v110;
      LOWORD(time.flags) = 2114;
      *(&time.flags + 2) = v31;
      HIWORD(time.epoch) = 2114;
      v122 = v32;
      v123 = 2114;
      v124 = v16;
      v39 = "Encountered an error during %{public}@ recording! (duration: %{public}@ error: %{public}@, file: %{public}@)";
      v40 = v37;
      v41 = 42;
    }

    else
    {
      if (!v38)
      {
        goto LABEL_58;
      }

      LODWORD(time.value) = 138543874;
      *(&time.value + 4) = v110;
      LOWORD(time.flags) = 2114;
      *(&time.flags + 2) = v31;
      HIWORD(time.epoch) = 2114;
      v122 = v16;
      v39 = "Encountered a reported %{public}@ duration of %{public}@! (file: %{public}@)";
      v40 = v37;
      v41 = 32;
    }

    _os_log_error_impl(&dword_1A3640000, v40, OS_LOG_TYPE_ERROR, v39, &time, v41);
LABEL_58:

    v42 = [MEMORY[0x1E696AC08] defaultManager];
    v43 = [v16 path];
    v44 = [v42 fileExistsAtPath:v43];

    if ((v44 & 1) == 0)
    {
      v32 = v115;
      v55 = v115;

      v51 = os_log_create("com.apple.camera", "Capture");
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [CAMCaptureEngine _validateVideoAtURL:forCaptureRequest:captureID:captureError:isVideoComplement:stillImageDisplayTime:reportedDuration:outActualDuration:outVideoRecordingStoppedReason:outSlowWriterFrameDrops:];
      }

      goto LABEL_87;
    }

    if (v115)
    {
      v45 = [v115 userInfo];
      v46 = [v45 objectForKeyedSubscript:*MEMORY[0x1E6987420]];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 BOOLValue];

        if ((v48 & 1) != 0 || !v13)
        {
          v32 = v115;
          if ((v48 & 1) == 0)
          {
            v56 = v115;

            v57 = os_log_create("com.apple.camera", "Capture");
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              [CAMCaptureEngine _validateVideoAtURL:forCaptureRequest:captureID:captureError:isVideoComplement:stillImageDisplayTime:reportedDuration:outActualDuration:outVideoRecordingStoppedReason:outSlowWriterFrameDrops:];
            }

LABEL_105:
            v62 = 0;
LABEL_114:
            v61 = os_log_create("com.apple.camera", "Capture");
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              LODWORD(time.value) = 138543874;
              *(&time.value + 4) = v110;
              LOWORD(time.flags) = 2114;
              *(&time.flags + 2) = v109;
              HIWORD(time.epoch) = 2114;
              v122 = v16;
              _os_log_error_impl(&dword_1A3640000, v61, OS_LOG_TYPE_ERROR, "Encountered a reported %{public}@ duration of %{public}@! (file: %{public}@)", &time, 0x20u);
            }

            goto LABEL_116;
          }

          goto LABEL_66;
        }

        v45 = os_log_create("com.apple.camera", "Capture");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [CAMCaptureEngine _validateVideoAtURL:forCaptureRequest:captureID:captureError:isVideoComplement:stillImageDisplayTime:reportedDuration:outActualDuration:outVideoRecordingStoppedReason:outSlowWriterFrameDrops:];
        }
      }
    }

LABEL_66:
    v49 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      [CAMCaptureEngine _validateVideoAtURL:forCaptureRequest:captureID:captureError:isVideoComplement:stillImageDisplayTime:reportedDuration:outActualDuration:outVideoRecordingStoppedReason:outSlowWriterFrameDrops:];
    }

    v120 = 0;
    v50 = [MEMORY[0x1E69870D8] consolidateMovieFragmentsInFile:v16 error:&v120];
    v51 = v120;
    v52 = os_log_create("com.apple.camera", "Capture");
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
    if (v50)
    {
      if (v53)
      {
        [CAMCaptureEngine _validateVideoAtURL:forCaptureRequest:captureID:captureError:isVideoComplement:stillImageDisplayTime:reportedDuration:outActualDuration:outVideoRecordingStoppedReason:outSlowWriterFrameDrops:];
      }

      v54 = [MEMORY[0x1E6988168] URLAssetWithURL:v16 options:0];
      v19 = v54;
      if (v54)
      {
        [v54 duration];
        flags = time.flags;
        var3 = time.epoch;
      }

      else
      {
        var3 = 0;
        flags = 0;
        memset(&time, 0, sizeof(time));
      }

      v32 = v115;
      var0 = time.value;
      var1 = time.timescale;
      v58 = os_log_create("com.apple.camera", "Capture");
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        time.value = var0;
        time.timescale = var1;
        time.flags = flags;
        time.epoch = var3;
        v98 = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 134218242;
        *(&time.value + 4) = v98;
        LOWORD(time.flags) = 2114;
        *(&time.flags + 2) = v31;
        _os_log_error_impl(&dword_1A3640000, v58, OS_LOG_TYPE_ERROR, "Replaced duration with asset duration %f (reportedDuration was %{public}@)", &time, 0x16u);
      }

      v55 = 0;
    }

    else
    {
      if (v53)
      {
        [CAMCaptureEngine _validateVideoAtURL:forCaptureRequest:captureID:captureError:isVideoComplement:stillImageDisplayTime:reportedDuration:outActualDuration:outVideoRecordingStoppedReason:outSlowWriterFrameDrops:];
      }

      v32 = v115;
      v55 = CAMVideoCaptureRequestError(-28001, v115);
    }

LABEL_87:
    v19 = v55;
  }

  v56 = v19;
  if (v19)
  {
    goto LABEL_101;
  }

  if (!v32 || !v13)
  {
    v59 = flags & 0x1D;
    goto LABEL_98;
  }

  v59 = flags & 0x1D;
  if ((a8->var2 & 1) == 0 || v59 != 1)
  {
LABEL_98:
    if (v59 == 1)
    {
      time.value = var0;
      time.timescale = var1;
      time.flags = flags;
      time.epoch = var3;
      if (CMTimeGetSeconds(&time) > 0.0)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_100;
  }

  time = *a8;
  time2.value = var0;
  time2.timescale = var1;
  time2.flags = flags;
  time2.epoch = var3;
  if (CMTimeCompare(&time, &time2) < 0)
  {
    goto LABEL_106;
  }

  v60 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    time = *a8;
    v99 = CMTimeGetSeconds(&time);
    LODWORD(time.value) = 138543618;
    *(&time.value + 4) = v109;
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = v99;
    _os_log_error_impl(&dword_1A3640000, v60, OS_LOG_TYPE_ERROR, "LivePhoto video complement had duration of %{public}@, which is less than still image time of %.3f", &time, 0x16u);
  }

LABEL_100:
  v56 = CAMVideoCaptureRequestError(-28002, v32);
  if (v56)
  {
LABEL_101:
    if (v56 != v32)
    {
      v61 = os_log_create("com.apple.camera", "Capture");
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        LODWORD(time.value) = 138544130;
        *(&time.value + 4) = v110;
        LOWORD(time.flags) = 2114;
        *(&time.flags + 2) = v109;
        HIWORD(time.epoch) = 2114;
        v122 = v16;
        v123 = 2114;
        v124 = v56;
        _os_log_error_impl(&dword_1A3640000, v61, OS_LOG_TYPE_ERROR, "Encountered an error during %{public}@ recording! (duration: %{public}@, file: %{public}@, error: %{public}@)", &time, 0x2Au);
      }

      v62 = 0;
LABEL_116:

      v64 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F16C8588, &unk_1F16C85A0, &unk_1F16C85B8, &unk_1F16C85D0, &unk_1F16C85E8, 0}];
      v68 = +[CAMCaptureCapabilities capabilities];
      v69 = [v68 shouldEnableUserNotifications];

      v70 = [v32 userInfo];
      v71 = [v70 objectForKeyedSubscript:*v36];

      v72 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v71, "code")}];
      v73 = [v64 containsObject:v72];

      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAMDebugCrashRatherThanTTR", @"com.apple.camera", 0);
      if (AppBooleanValue)
      {
        v75 = 1;
      }

      else
      {
        v75 = v69;
      }

      if (((v20 | v73) & 1) != 0 || !v75)
      {
        v32 = v115;
      }

      else
      {
        v76 = AppBooleanValue;
        v77 = [v115 userInfo];
        v78 = [v77 objectForKeyedSubscript:*MEMORY[0x1E6987418]];

        v104 = v78;
        v79 = [v78 unsignedIntegerValue];
        if (!v62)
        {
          if ((v79 - 2) >= 3)
          {
            v80 = @"Video Error:";
            if (v13)
            {
              v80 = @"Live Photo Error:";
            }

            v62 = v80;
          }

          else
          {
            v62 = off_1E76FD818[v79 - 2];
          }
        }

        v81 = -[__CFString stringByAppendingFormat:](v62, "stringByAppendingFormat:", @" %ld, %ld", [v56 code], objc_msgSend(v71, "code"));
        v82 = [MEMORY[0x1E696AC08] defaultManager];
        v83 = [v112 path];
        v84 = [v82 fileExistsAtPath:v83];

        if (v84)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"An error occurred while recording a %@ (duration:%@). The video has been placed in the Photo Library. Tap to file a Radar and please attach the video.", v110, v109];
        }

        else
        {
          if ([v111 persistenceOptions] == 3)
          {
            v85 = @"An error occurred, the storage drive might have been disconnected. Tap to file a Radar.";
          }

          else
          {
            v102 = v110;
            v85 = @"An error occurred and no %@ was recorded. Tap to file a Radar.";
          }

          [MEMORY[0x1E696AEC0] stringWithFormat:v85, v102, v103];
        }
        v86 = ;
        v105 = v62;
        if (v76)
        {
          [CAMCaptureEngine _validateVideoAtURL:v81 forCaptureRequest:v86 captureID:? captureError:? isVideoComplement:? stillImageDisplayTime:? reportedDuration:? outActualDuration:? outVideoRecordingStoppedReason:? outSlowWriterFrameDrops:?];
          __211__CAMCaptureEngine__validateVideoAtURL_forCaptureRequest_captureID_captureError_isVideoComplement_stillImageDisplayTime_reportedDuration_outActualDuration_outVideoRecordingStoppedReason_outSlowWriterFrameDrops___block_invoke(v100, v101);
          return result;
        }

        v87 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", a5];
        [v87 setObject:v88 forKeyedSubscript:@"captureID"];

        v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld%ld", objc_msgSend(v56, "code"), objc_msgSend(v71, "code")];
        [v87 setObject:v89 forKeyedSubscript:@"error"];

        v90 = [(CAMCaptureEngine *)self _TTRKeywordIDsFromCaptureRequest:v111];
        [v87 setObject:v90 forKeyedSubscript:@"keywordIDs"];

        v91 = [(CAMCaptureEngine *)self _currentNotificationCenter];
        v92 = objc_alloc_init(MEMORY[0x1E6983220]);
        v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"validateVideoURLErrorNotificationID%ld%ld%lld", objc_msgSend(v56, "code"), objc_msgSend(v71, "code"), a5];
        [v92 setTitle:v81];
        [v92 setBody:v86];
        [v92 setUserInfo:v87];
        v94 = [MEMORY[0x1E6983298] requestWithIdentifier:v93 content:v92 trigger:0];
        v116[0] = MEMORY[0x1E69E9820];
        v116[1] = 3221225472;
        v116[2] = __211__CAMCaptureEngine__validateVideoAtURL_forCaptureRequest_captureID_captureError_isVideoComplement_stillImageDisplayTime_reportedDuration_outActualDuration_outVideoRecordingStoppedReason_outSlowWriterFrameDrops___block_invoke;
        v116[3] = &unk_1E76FC678;
        v117 = v81;
        v118 = v86;
        v95 = v86;
        v96 = v81;
        [v91 addNotificationRequest:v94 withCompletionHandler:v116];

        v32 = v115;
        v62 = v105;
      }

      v16 = v112;
      goto LABEL_137;
    }

    goto LABEL_105;
  }

LABEL_106:
  v63 = [v32 userInfo];
  v64 = [v63 objectForKeyedSubscript:*v36];

  v65 = [v64 code];
  if (v65 == -15437)
  {
    v67 = v32;
    if (a12)
    {
      *a12 = 1;
    }

    v62 = @"Frame Drops Reported (Slow Writer):";
    goto LABEL_112;
  }

  if (v65 == -15435)
  {
    v66 = v32;
    v62 = @"Frame Drops Reported:";
LABEL_112:

    if (!v32)
    {
      v56 = 0;
      goto LABEL_138;
    }

    v56 = v32;
    goto LABEL_114;
  }

  v56 = 0;
  v62 = 0;
LABEL_137:

LABEL_138:
  if (a10)
  {
    a10->var0 = var0;
    a10->var1 = var1;
    a10->var2 = flags;
    a10->var3 = var3;
  }

  if (a11)
  {
    *a11 = v108;
  }

  return v56;
}

void __211__CAMCaptureEngine__validateVideoAtURL_forCaptureRequest_captureID_captureError_isVideoComplement_stillImageDisplayTime_reportedDuration_outActualDuration_outVideoRecordingStoppedReason_outSlowWriterFrameDrops___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __211__CAMCaptureEngine__validateVideoAtURL_forCaptureRequest_captureID_captureError_isVideoComplement_stillImageDisplayTime_reportedDuration_outActualDuration_outVideoRecordingStoppedReason_outSlowWriterFrameDrops___block_invoke_cold_1(a1, v3);
    }
  }
}

- (id)_TTRKeywordIDsFromCaptureRequest:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 videoEncodingBehavior] == 2)
  {
    [v4 addObject:&unk_1F16C8600];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (v8)
        {
          v11 = [v8 stringByAppendingFormat:@", %@", *(*(&v13 + 1) + 8 * i)];

          v8 = v11;
        }

        else
        {
          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", *(*(&v13 + 1) + 8 * i)];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CAMCaptureEngine *)self _captureResultsQueue];
  v19 = v11;
  v20 = v13;
  v21 = v12;
  v15 = v12;
  v16 = v10;
  v17 = v13;
  v18 = v11;
  pl_dispatch_async();
}

void __92__CAMCaptureEngine_captureOutput_didFinishRecordingToOutputFileAtURL_fromConnections_error___block_invoke(id *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138543618;
    v25 = v3;
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "CAMCaptureEngine captureOutput:didFinishRecordingToOutputFileAtURL:fromConnections:error url=%{public}@, error=%{public}@", buf, 0x16u);
  }

  v5 = [a1[6] _resultsQueueRequestsBeingRecorded];
  v6 = [v5 objectForKey:a1[4]];
  if (!v6)
  {
    v7 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v25 = v8;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "CAMCaptureEngine could not find CAMVideoCaptureRequest for url=%{public}@, using the current capture request", buf, 0xCu);
    }

    v6 = [a1[7] currentRequest];
  }

  v9 = [a1[6] _resultsQueueLastCompletedVideoURL];
  v10 = [v9 isEqual:a1[4]];

  if (v10)
  {
    v11 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[4];
      v13 = a1[5];
      *buf = 138543874;
      v25 = v12;
      v26 = 2114;
      v27 = v6;
      v28 = 2114;
      v29 = v13;
      v14 = "Skipping duplicate handling for %{public}@, %{public}@, %{public}@";
      v15 = v11;
      v16 = 32;
LABEL_14:
      _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (!v6)
  {
    v11 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = a1[4];
      *buf = 138543362;
      v25 = v18;
      v14 = "Finished recording for an unexpected video URL %{public}@";
      v15 = v11;
      v16 = 12;
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  [v5 removeObjectForKey:a1[4]];
  [a1[6] _setResultsQueueLastCompletedVideoURL:a1[4]];
  [a1[6] _resultsQueueLastCompletedVideoZoomFactor];
  [a1[6] _setResultsQueueLastCompletedVideoZoomFactor:0.0];
  v17 = dispatch_get_global_queue(2, 0);
  v19 = a1[7];
  v20 = a1[4];
  v21 = a1[8];
  v22 = v6;
  v23 = a1[5];
  pl_dispatch_async();

LABEL_16:
}

- (void)captureOutput:(id)a3 readyForClientCompositingForOutputFileAtURL:(id)a4 compositingData:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(CAMCaptureEngine *)self _multiCamPIPCompositingQueue];
  v12 = v8;
  v10 = v8;
  v11 = v7;
  pl_dispatch_sync();
}

void __94__CAMCaptureEngine_captureOutput_readyForClientCompositingForOutputFileAtURL_compositingData___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) currentRequest];
  v2 = [v5 captureOrientation];
  v3 = [v5 isFrontRearSimultaneousVideoMirrored];
  v4 = [*(a1 + 40) _multiCamPIPCompositingQueue_multiCamPIPCompositor];
  [v4 compositeWithCompositingData:*(a1 + 48) strategy:0 captureOrientation:v2 mirrorPIP:v3];
}

- (void)_setPanoramaImageQueue:(_CAImageQueue *)a3
{
  panoramaImageQueue = self->__panoramaImageQueue;
  if (panoramaImageQueue)
  {
    CFRelease(panoramaImageQueue);
  }

  self->__panoramaImageQueue = a3;
  if (a3)
  {

    CFRetain(a3);
  }
}

- (void)_subgraphQueueHandlePanoramaStatusNotification:(__CFString *)a3
{
  if (CFEqual(a3, *MEMORY[0x1E6985EA8]))
  {
    v4 = [(CAMCaptureEngine *)self _panoramaProcessor];
    v5 = [v4 request];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__CAMCaptureEngine__subgraphQueueHandlePanoramaStatusNotification___block_invoke;
    v7[3] = &unk_1E76FD198;
    v8 = v5;
    v6 = v5;
    [(CAMCaptureEngine *)self _enumerateCaptureServicesUsingBlock:v7];
  }
}

uint64_t __67__CAMCaptureEngine__subgraphQueueHandlePanoramaStatusNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v5 panoramaRequestDidStartCapturing:*(a1 + 32)];
    }
  }

  return MEMORY[0x1EEE66C30]();
}

- (void)_subgraphQueueHandlePanoramaWarningNotification:(__CFString *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = a3;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "Received panorama warning %{public}@", &v5, 0xCu);
  }
}

- (int64_t)_notificationForError:(__CFString *)a3
{
  if (CFEqual(a3, *MEMORY[0x1E6985EE0]))
  {
    return -6000;
  }

  if (CFEqual(a3, *MEMORY[0x1E6985F50]))
  {
    return -6001;
  }

  return 0;
}

- (void)_subgraphQueueHandlePanoramaErrorNotification:(__CFString *)a3
{
  v5 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CAMCaptureEngine _subgraphQueueHandlePanoramaErrorNotification:];
  }

  v6 = [(CAMCaptureEngine *)self _panoramaProcessor];
  v7 = [v6 request];
  v8 = [(CAMCaptureEngine *)self _notificationForError:a3];
  if (v8)
  {
    v9 = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__CAMCaptureEngine__subgraphQueueHandlePanoramaErrorNotification___block_invoke;
    v10[3] = &unk_1E76FD638;
    v11 = v7;
    v12 = v9;
    [(CAMCaptureEngine *)self _enumerateCaptureServicesUsingBlock:v10];
  }
}

uint64_t __66__CAMCaptureEngine__subgraphQueueHandlePanoramaErrorNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v5 panoramaRequest:*(a1 + 32) didReceiveNotification:*(a1 + 40)];
    }
  }

  return MEMORY[0x1EEE66C38]();
}

- (BOOL)_updatePanoramaSubgraphForEnteringBackground:(BOOL)a3
{
  v5 = [(AVCaptureSession *)self->__captureSession outputs];
  v6 = self->_panoramaVideoDataOutput;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__CAMCaptureEngine__updatePanoramaSubgraphForEnteringBackground___block_invoke;
  v15[3] = &unk_1E76FD660;
  v7 = v6;
  v16 = v7;
  v8 = [v5 indexOfObjectPassingTest:v15];
  v9 = [(AVCaptureVideoDataOutput *)v7 sampleBufferDelegate];
  v10 = v9;
  if (a3 || (v8 == 0x7FFFFFFFFFFFFFFFLL ? (v11 = v9 == 0) : (v11 = 1), !v11))
  {
    [(CAMCaptureEngine *)self _sessionQueuePanoramaTeardown];
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v9 != 0)
  {
    goto LABEL_14;
  }

  [(CAMCaptureEngine *)self _sessionQueuePanoramaSetup];
  v13 = 1;
LABEL_15:

  return v13;
}

- (void)_sessionQueuePanoramaSetup
{
  v3 = [(CAMCaptureEngine *)self panoramaVideoDataOutput];
  v4 = [v3 photoEncodingBehavior];
  v5 = [(CAMCaptureEngine *)self _panoramaSampleBufferQueue];
  v8 = MEMORY[0x1E69E9820];
  pl_dispatch_async();

  v6 = [(CAMCaptureEngine *)self panoramaVideoDataOutput:v8];
  v7 = [(CAMCaptureEngine *)self _panoramaSampleBufferQueue];
  [v6 setSampleBufferDelegate:self queue:v7];
}

void __46__CAMCaptureEngine__sessionQueuePanoramaSetup__block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [*(a1 + 32) _panoramaSubgraphQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__CAMCaptureEngine__sessionQueuePanoramaSetup__block_invoke_2;
  v5[3] = &unk_1E76FD460;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v5[5] = &v10;
  v5[6] = &v6;
  v5[7] = v3;
  dispatch_sync(v2, v5);

  [*(a1 + 32) _notifyServicesOfPanoramaConfigurationChangeWithImageQueue:v11[3] direction:v7[3]];
  v4 = v11[3];
  if (v4)
  {
    CFRelease(v4);
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

void __46__CAMCaptureEngine__sessionQueuePanoramaSetup__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _panoramaProcessor];

  if (!v2)
  {
    v3 = [*(a1 + 32) _powerController];
    [v3 addAssertionForIndentifier:objc_msgSend(*(a1 + 32) withReason:{"_panoramaAssertionIdentifier"), 8}];
  }

  [*(a1 + 32) _subgraphQueueCreatePanoramaProcessorIfNecessaryWithEncodingBehavior:*(a1 + 56)];
  [*(a1 + 32) _subgraphQueueCreatePanoramaImageQueueIfNecessary];
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _panoramaImageQueue];
  v4 = *(*(*(a1 + 40) + 8) + 24);
  if (v4)
  {
    CFRetain(v4);
  }

  v7 = [*(a1 + 32) _panoramaProcessor];
  *(*(*(a1 + 48) + 8) + 24) = [v7 direction];
  v5 = *(a1 + 32);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, v5, _PanoramaNotificationCallback, *MEMORY[0x1E6985F40], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, v5, _PanoramaNotificationCallback, *MEMORY[0x1E6985F58], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, v5, _PanoramaNotificationCallback, *MEMORY[0x1E6985EB8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_notifyServicesOfPanoramaConfigurationChangeWithImageQueue:(_CAImageQueue *)a3 direction:(int64_t)a4
{
  if (a3)
  {
    CFRetain(a3);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__CAMCaptureEngine__notifyServicesOfPanoramaConfigurationChangeWithImageQueue_direction___block_invoke;
  v8[3] = &__block_descriptor_48_e29_v16__0___CAMCaptureService__8l;
  v8[4] = a3;
  v8[5] = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__CAMCaptureEngine__notifyServicesOfPanoramaConfigurationChangeWithImageQueue_direction___block_invoke_2;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = a3;
  [(CAMCaptureEngine *)self _enumerateCaptureServicesUsingBlock:v8 completion:v7];
}

void __89__CAMCaptureEngine__notifyServicesOfPanoramaConfigurationChangeWithImageQueue_direction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 panoramaConfigurationDidChangeWithImageQueue:*(a1 + 32) direction:*(a1 + 40)];
  }
}

void __89__CAMCaptureEngine__notifyServicesOfPanoramaConfigurationChangeWithImageQueue_direction___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (void)_subgraphQueueCreatePanoramaProcessorIfNecessaryWithEncodingBehavior:(int64_t)a3
{
  if (!self->__panoramaProcessor)
  {
    v5 = [[CAMPanoramaProcessor alloc] initWithDelegate:self encodingBehavior:a3];
    panoramaProcessor = self->__panoramaProcessor;
    self->__panoramaProcessor = v5;

    MEMORY[0x1EEE66BB8](v5, panoramaProcessor);
  }
}

- (void)_subgraphQueueCreatePanoramaImageQueueIfNecessary
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)changeToPanoramaDirection:(int64_t)a3
{
  v3 = [(CAMCaptureEngine *)self _panoramaSampleBufferQueue];
  pl_dispatch_async();
}

void __46__CAMCaptureEngine_changeToPanoramaDirection___block_invoke(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__26;
  v8 = __Block_byref_object_dispose__26;
  v9 = 0;
  v2 = [*(a1 + 32) _panoramaSubgraphQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__CAMCaptureEngine_changeToPanoramaDirection___block_invoke_2;
  v3[3] = &unk_1E76FAFF0;
  v3[4] = *(a1 + 32);
  v3[5] = &v4;
  dispatch_sync(v2, v3);

  [v5[5] setDirection:*(a1 + 40)];
  _Block_object_dispose(&v4, 8);
}

uint64_t __46__CAMCaptureEngine_changeToPanoramaDirection___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _panoramaProcessor];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)changePanoramaEncodingBehaviorIfNeeded:(int64_t)a3
{
  v3 = [(CAMCaptureEngine *)self _panoramaSampleBufferQueue];
  pl_dispatch_async();
}

void __59__CAMCaptureEngine_changePanoramaEncodingBehaviorIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _panoramaSubgraphQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__CAMCaptureEngine_changePanoramaEncodingBehaviorIfNeeded___block_invoke_2;
  v4[3] = &unk_1E76F7A38;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v4[5] = v3;
  dispatch_sync(v2, v4);
}

void __59__CAMCaptureEngine_changePanoramaEncodingBehaviorIfNeeded___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _panoramaProcessor];
  v3 = v2;
  if (v2 && [v2 photoEncodingBehavior] != *(a1 + 40))
  {
    v4 = [*(a1 + 32) _captureSessionQueue];
    pl_dispatch_async();
  }
}

uint64_t __59__CAMCaptureEngine_changePanoramaEncodingBehaviorIfNeeded___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _sessionQueuePanoramaTeardown];
  v2 = *(a1 + 32);

  return [v2 _sessionQueuePanoramaSetup];
}

- (void)startPanoramaCaptureWithRequest:(id)a3
{
  v4 = a3;
  [(CAMCaptureEngine *)self stopMonitoringForAccidentalLaunch];
  v5 = [(CAMCaptureEngine *)self _panoramaSampleBufferQueue];
  v6 = v4;
  pl_dispatch_async();
}

void __52__CAMCaptureEngine_startPanoramaCaptureWithRequest___block_invoke(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__26;
  v8 = __Block_byref_object_dispose__26;
  v9 = 0;
  v2 = [*(a1 + 32) _panoramaSubgraphQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__CAMCaptureEngine_startPanoramaCaptureWithRequest___block_invoke_2;
  v3[3] = &unk_1E76FAFF0;
  v3[4] = *(a1 + 32);
  v3[5] = &v4;
  dispatch_sync(v2, v3);

  [v5[5] startPanoramaCaptureWithRequest:*(a1 + 40)];
  _Block_object_dispose(&v4, 8);
}

uint64_t __52__CAMCaptureEngine_startPanoramaCaptureWithRequest___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _panoramaProcessor];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)stopPanoramaCaptureInterrupted:(BOOL)a3
{
  v3 = [(CAMCaptureEngine *)self _panoramaSampleBufferQueue];
  pl_dispatch_async();
}

- (void)_panoramaSampleBufferQueue_stopPanoramaCaptureIfNecessaryInterrupted:(BOOL)a3
{
  v5 = [(CAMCaptureEngine *)self _panoramaSampleBufferQueue];
  dispatch_assert_queue_V2(v5);

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__26;
  v23 = __Block_byref_object_dispose__26;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__26;
  v17 = __Block_byref_object_dispose__26;
  v18 = 0;
  v6 = [(CAMCaptureEngine *)self _panoramaSubgraphQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__CAMCaptureEngine__panoramaSampleBufferQueue_stopPanoramaCaptureIfNecessaryInterrupted___block_invoke;
  block[3] = &unk_1E76FCEE8;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v19;
  dispatch_sync(v6, block);

  if ([v14[5] isCapturingPanorama])
  {
    [v14[5] stopPanoramaCapture];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __89__CAMCaptureEngine__panoramaSampleBufferQueue_stopPanoramaCaptureIfNecessaryInterrupted___block_invoke_2;
    v10[3] = &unk_1E76FD6A8;
    v10[4] = &v19;
    v11 = a3;
    [(CAMCaptureEngine *)self _enumerateCaptureServicesUsingBlock:v10];
    v7 = v14[5];
    v8 = v20[5];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __89__CAMCaptureEngine__panoramaSampleBufferQueue_stopPanoramaCaptureIfNecessaryInterrupted___block_invoke_3;
    v9[3] = &unk_1E76FD6F8;
    v9[4] = self;
    v9[5] = &v19;
    [v7 processPanoramaCaptureWithRequest:v8 completionHandler:v9];
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
}

uint64_t __89__CAMCaptureEngine__panoramaSampleBufferQueue_stopPanoramaCaptureIfNecessaryInterrupted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _panoramaProcessor];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(*(a1 + 40) + 8) + 40) request];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

uint64_t __89__CAMCaptureEngine__panoramaSampleBufferQueue_stopPanoramaCaptureIfNecessaryInterrupted___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v5 panoramaRequestDidStopCapturing:*(*(*(a1 + 32) + 8) + 40) interrupted:*(a1 + 40)];
    }
  }

  return MEMORY[0x1EEE66C38]();
}

void __89__CAMCaptureEngine__panoramaSampleBufferQueue_stopPanoramaCaptureIfNecessaryInterrupted___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__CAMCaptureEngine__panoramaSampleBufferQueue_stopPanoramaCaptureIfNecessaryInterrupted___block_invoke_4;
  v7[3] = &unk_1E76FD6D0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 _enumerateCaptureServicesUsingBlock:v7];
}

void __89__CAMCaptureEngine__panoramaSampleBufferQueue_stopPanoramaCaptureIfNecessaryInterrupted___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 panoramaRequest:*(*(*(a1 + 40) + 8) + 40) didCompleteCaptureWithResult:*(a1 + 32)];
  }
}

- (void)panoramaProcessor:(id)a3 didProcessSampleBuffer:(opaqueCMSampleBuffer *)a4 withStatus:(int)a5 forRequest:(id)a6
{
  v9 = a3;
  v10 = a6;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v11 = [(CAMCaptureEngine *)self _panoramaSubgraphQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__CAMCaptureEngine_panoramaProcessor_didProcessSampleBuffer_withStatus_forRequest___block_invoke;
  block[3] = &unk_1E76FAFF0;
  block[4] = self;
  block[5] = &v49;
  dispatch_sync(v11, block);

  if (v50[3])
  {
    CAImageQueueCollect();
  }

  if (a4)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a4);
    v13 = ImageBuffer;
    if (ImageBuffer)
    {
      if (CVPixelBufferGetIOSurface(ImageBuffer) && v50[3] && CAImageQueueRegisterIOSurfaceBuffer())
      {
        CAImageQueueInsertImage();
      }

      v14 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], v13, 1u);
      Value = CFDictionaryGetValue(v14, *MEMORY[0x1E6985F38]);
      if (Value)
      {
        v16 = [Value integerValue];
      }

      else
      {
        v16 = 0.0;
      }

      v17 = +[CAMPanoramaConfiguration sharedInstance];
      v18 = [v17 sampleBufferWidth];

      if (v18)
      {
        v19 = v16 / v18;
      }

      else
      {
        v19 = 0.0;
      }

      v20 = *(MEMORY[0x1E695F058] + 16);
      rect.origin = *MEMORY[0x1E695F058];
      rect.size = v20;
      v21 = CFDictionaryGetValue(v14, *MEMORY[0x1E6985F00]);
      if (v21)
      {
        CGRectMakeWithDictionaryRepresentation(v21, &rect);
      }

      v22 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v22 scale];
      v33 = 1.0 / v23;

      rect.origin = vmulq_n_f64(rect.origin, v33);
      rect.size = vmulq_n_f64(rect.size, v33);
      v24 = CFDictionaryGetValue(v14, *MEMORY[0x1E6985F10]);
      if (v24)
      {
        [v24 doubleValue];
        v26 = v25;
      }

      else
      {
        v26 = 0.0;
      }

      v27 = [CAMPanoramaPaintingStatus alloc];
      v28 = [(CAMPanoramaPaintingStatus *)v27 initWithSpeed:v26 cropRectangle:rect.origin.x normalizedBaselineOffset:rect.origin.y, rect.size.width, rect.size.height, v19];
      v29 = MEMORY[0x1E69E96A0];
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __83__CAMCaptureEngine_panoramaProcessor_didProcessSampleBuffer_withStatus_forRequest___block_invoke_2;
      v44 = &unk_1E76F7960;
      v45 = v10;
      v30 = v28;
      v46 = v30;
      pl_dispatch_async();

      CFRelease(v14);
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__26;
      v39 = __Block_byref_object_dispose__26;
      v40 = 0;
      v31 = [(CAMCaptureEngine *)self _panoramaFirstImageQueueUpdateSemaphoreQueue];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __83__CAMCaptureEngine_panoramaProcessor_didProcessSampleBuffer_withStatus_forRequest___block_invoke_3;
      v34[3] = &unk_1E76FAFF0;
      v34[4] = self;
      v34[5] = &v35;
      dispatch_sync(v31, v34);

      v32 = v36[5];
      if (v32)
      {
        dispatch_semaphore_signal(v32);
      }

      _Block_object_dispose(&v35, 8);
    }
  }

  _Block_object_dispose(&v49, 8);
}

uint64_t __83__CAMCaptureEngine_panoramaProcessor_didProcessSampleBuffer_withStatus_forRequest___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _panoramaImageQueue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __83__CAMCaptureEngine_panoramaProcessor_didProcessSampleBuffer_withStatus_forRequest___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 panoramaRequest:*(a1 + 32) didGeneratePaintingStatus:*(a1 + 40)];
    }
  }

  return MEMORY[0x1EEE66C38]();
}

uint64_t __83__CAMCaptureEngine_panoramaProcessor_didProcessSampleBuffer_withStatus_forRequest___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _panoramaFirstImageQueueUpdateSemaphore];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)registerEffectsPreviewSampleBufferDelegate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CAMCaptureEngine *)self _effectsPreviewSampleBufferQueue];
    v6 = v4;
    pl_dispatch_async();
  }
}

uint64_t __63__CAMCaptureEngine_registerEffectsPreviewSampleBufferDelegate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 416);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 416);
    *(v4 + 416) = v3;

    v2 = *(*(a1 + 32) + 416);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)unregisterEffectsPreviewSampleBufferDelegate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CAMCaptureEngine *)self _effectsPreviewSampleBufferQueue];
    v6 = v4;
    pl_dispatch_async();
  }
}

- (void)registerVideoThumbnailContentsDelegate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    videoThumbnailContentsDelegates = self->__videoThumbnailContentsDelegates;
    v9 = v5;
    if (!videoThumbnailContentsDelegates)
    {
      v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v8 = self->__videoThumbnailContentsDelegates;
      self->__videoThumbnailContentsDelegates = v7;

      videoThumbnailContentsDelegates = self->__videoThumbnailContentsDelegates;
    }

    v4 = [(NSHashTable *)videoThumbnailContentsDelegates addObject:v9];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)unregisterVideoThumbnailContentsDelegate:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->__videoThumbnailContentsDelegates removeObject:?];
  }
}

- (void)videoThumbnailOutput:(id)a3 willBeginRenderingThumbnailsWithContents:(id)a4
{
  v5 = a4;
  v4 = v5;
  pl_dispatch_async();
}

void __82__CAMCaptureEngine_videoThumbnailOutput_willBeginRenderingThumbnailsWithContents___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _videoThumbnailContentsDelegates];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) videoThumbnailOutputWillBeginRenderingThumbnailsWithContents:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __67__CAMCaptureEngine_videoThumbnailOutputWillEndRenderingThumbnails___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) _videoThumbnailContentsDelegates];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) videoThumbnailOutputWillEndRenderingThumbnails];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (self->_panoramaVideoDataOutput == v8)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__26;
    v25 = __Block_byref_object_dispose__26;
    v26 = 0;
    v14 = [(CAMCaptureEngine *)self _panoramaSubgraphQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__CAMCaptureEngine_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke;
    block[3] = &unk_1E76FAFF0;
    block[4] = self;
    block[5] = &v21;
    dispatch_sync(v14, block);

    if (a4)
    {
      v15 = v22[5];
      if (v15)
      {
        [v15 processSampleBuffer:a4];
      }
    }

    _Block_object_dispose(&v21, 8);
  }

  else if (self->_effectsPreviewVideoDataOutput == v8)
  {
    v10 = [(CAMCaptureEngine *)self _effectsPreviewSampleBufferDelegates];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v27 count:16];
    if (v11)
    {
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v16 + 1) + 8 * v13++) effectsPreviewVideoDataOutputDidOutputSampleBuffer:a4];
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v27 count:16];
      }

      while (v11);
    }
  }
}

uint64_t __71__CAMCaptureEngine_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _panoramaProcessor];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)captureOutput:(id)a3 didDropSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_effectsPreviewVideoDataOutput == a3)
  {
    v6 = [(CAMCaptureEngine *)self _effectsPreviewSampleBufferDelegates];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) effectsPreviewVideoDataOutputDidDropSampleBuffer:a4];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 forMetadataObjectTypes:(id)a5 fromConnection:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = [(CAMCaptureEngine *)self _captureSessionQueue];
  v13 = v9;
  v11 = v9;
  v12 = v8;
  pl_dispatch_async();
}

void __97__CAMCaptureEngine_captureOutput_didOutputMetadataObjects_forMetadataObjectTypes_fromConnection___block_invoke(id *a1)
{
  v2 = [a1[4] currentCameraDevice];
  v3 = [v2 activeFormat];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __97__CAMCaptureEngine_captureOutput_didOutputMetadataObjects_forMetadataObjectTypes_fromConnection___block_invoke_2;
  v6[3] = &unk_1E76FD720;
  v4 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = v3;
  v5 = v3;
  [v4 _enumerateCaptureServicesUsingBlock:v6];
}

void __97__CAMCaptureEngine_captureOutput_didOutputMetadataObjects_forMetadataObjectTypes_fromConnection___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 metadataWasRecognized:a1[4] forMetadataObjectTypes:a1[5] deviceFormat:a1[6]];
  }
}

- (id)_captureEngineDeviceForDeviceType:(id)a3 position:(int64_t)a4
{
  v6 = a3;
  v7 = [(CAMCaptureEngine *)self _captureEngineDeviceCache];
  v8 = [objc_opt_class() _cacheKeyForDeviceType:v6 position:a4];
  v9 = +[CAMCaptureCapabilities capabilities];
  v10 = [v9 featureDevelopmentEmulateSuperWide];

  if (v10)
  {
    if (*MEMORY[0x1E6986938] == v6 || *MEMORY[0x1E6986908] == v6)
    {
      v12 = +[CAMCaptureCapabilities capabilities];
      v13 = [v12 isBackDualSupported];

      v14 = MEMORY[0x1E6986950];
      if (v13)
      {
        v14 = MEMORY[0x1E6986900];
      }
    }

    else
    {
      if (*MEMORY[0x1E6986948] != v6)
      {
        goto LABEL_13;
      }

      v14 = MEMORY[0x1E6986950];
    }

    v15 = *v14;

    v6 = v15;
  }

LABEL_13:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__CAMCaptureEngine__captureEngineDeviceForDeviceType_position___block_invoke;
  v19[3] = &unk_1E76FD748;
  v21 = self;
  v22 = a4;
  v20 = v6;
  v16 = v6;
  v17 = [v7 objectForKey:v8 memoizationBlock:v19];

  return v17;
}

CAMCaptureEngineDevice *__63__CAMCaptureEngine__captureEngineDeviceForDeviceType_position___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = (a1 + 48);
  v4 = [MEMORY[0x1E69870A0] defaultDeviceWithDeviceType:*(a1 + 32) mediaType:*MEMORY[0x1E6987608] position:*(a1 + 48)];
  if (v4)
  {
    v5 = [[CAMCaptureEngineDevice alloc] initWithEngine:*(a1 + 40) captureDevice:v4];
    if ([*(a1 + 40) areManagedDevicesLockedForConfiguration])
    {
      [*(a1 + 40) _lockManagedCapturedDevice:v4];
    }
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __63__CAMCaptureEngine__captureEngineDeviceForDeviceType_position___block_invoke_cold_1(v2, v3, v6);
    }

    v7 = +[CAMCaptureCapabilities capabilities];
    v8 = [v7 fallbackCameraSupported];

    if (v8)
    {
      v9 = +[CAMUserPreferences preferences];
      [v9 writeAvailableDevicesWithCompletion:&__block_literal_global_456];
    }

    v5 = 0;
  }

  return v5;
}

void __63__CAMCaptureEngine__captureEngineDeviceForDeviceType_position___block_invoke_453(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.camera", "CaptureSession");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Failed to get device writing fallback completed with success %i", v4, 8u);
  }
}

- (id)systemPreferredCameraDevice
{
  v3 = [MEMORY[0x1E69870A0] systemPreferredCamera];
  if (v3)
  {
    v4 = [[CAMCaptureEngineDevice alloc] initWithEngine:self captureDevice:v3];
    if ([(CAMCaptureEngine *)self areManagedDevicesLockedForConfiguration])
    {
      [(CAMCaptureEngine *)self _lockManagedCapturedDevice:v3];
    }
  }

  else
  {
    v5 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CAMCaptureEngine systemPreferredCameraDevice];
    }

    v4 = 0;
  }

  return v4;
}

- (id)audioCaptureDevice
{
  audioCameraDevice = self->_audioCameraDevice;
  if (!audioCameraDevice)
  {
    v4 = NSStringFromSelector(a2);
    [(CAMCaptureEngine *)self willChangeValueForKey:v4];
    v5 = [MEMORY[0x1E69870A0] defaultDeviceWithMediaType:*MEMORY[0x1E69875A0]];
    v6 = self->_audioCameraDevice;
    self->_audioCameraDevice = v5;

    [(CAMCaptureEngine *)self didChangeValueForKey:v4];
    if ([(CAMCaptureEngine *)self areManagedDevicesLockedForConfiguration])
    {
      [(CAMCaptureEngine *)self _lockManagedCapturedDevice:self->_audioCameraDevice];
    }

    audioCameraDevice = self->_audioCameraDevice;
  }

  return audioCameraDevice;
}

- (id)audioCaptureDeviceInput
{
  audioCaptureDeviceInput = self->_audioCaptureDeviceInput;
  if (!audioCaptureDeviceInput)
  {
    v5 = [(CAMCaptureEngine *)self audioCaptureDevice];
    v6 = NSStringFromSelector(a2);
    [(CAMCaptureEngine *)self willChangeValueForKey:v6];
    v7 = [v5 deviceType];
    v8 = [(CAMCaptureEngine *)self prewarmedAudioDeviceInput:v7 device:v5];
    v9 = self->_audioCaptureDeviceInput;
    self->_audioCaptureDeviceInput = v8;

    if (!self->_audioCaptureDeviceInput)
    {
      v15 = 0;
      v10 = [MEMORY[0x1E69870B0] deviceInputWithDevice:v5 error:&v15];
      v11 = v15;
      v12 = self->_audioCaptureDeviceInput;
      self->_audioCaptureDeviceInput = v10;

      if (v11)
      {
        v13 = os_log_create("com.apple.camera", "CaptureSession");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [CAMCaptureEngine audioCaptureDeviceInput];
        }
      }
    }

    [(CAMCaptureEngine *)self didChangeValueForKey:v6];

    audioCaptureDeviceInput = self->_audioCaptureDeviceInput;
  }

  return audioCaptureDeviceInput;
}

- (id)movieFileOutput
{
  movieFileOutput = self->_movieFileOutput;
  if (!movieFileOutput)
  {
    v4 = NSStringFromSelector(a2);
    [(CAMCaptureEngine *)self willChangeValueForKey:v4];
    v5 = [[CAMCaptureMovieFileOutput alloc] initWithEngine:self];
    v6 = self->_movieFileOutput;
    self->_movieFileOutput = v5;

    [(CAMCaptureEngine *)self didChangeValueForKey:v4];
    movieFileOutput = self->_movieFileOutput;
  }

  return movieFileOutput;
}

- (id)effectsPreviewVideoDataOutput
{
  effectsPreviewVideoDataOutput = self->_effectsPreviewVideoDataOutput;
  if (!effectsPreviewVideoDataOutput)
  {
    v4 = NSStringFromSelector(a2);
    [(CAMCaptureEngine *)self willChangeValueForKey:v4];
    v5 = objc_alloc_init(MEMORY[0x1E6987178]);
    v6 = self->_effectsPreviewVideoDataOutput;
    self->_effectsPreviewVideoDataOutput = v5;

    [(AVCaptureVideoDataOutput *)self->_effectsPreviewVideoDataOutput setAlwaysDiscardsLateVideoFrames:1];
    [(AVCaptureVideoDataOutput *)self->_effectsPreviewVideoDataOutput setVideoSettings:0];
    [(CAMCaptureEngine *)self didChangeValueForKey:v4];

    effectsPreviewVideoDataOutput = self->_effectsPreviewVideoDataOutput;
  }

  return effectsPreviewVideoDataOutput;
}

- (id)systemStylePicker
{
  systemStylePicker = self->_systemStylePicker;
  if (!systemStylePicker)
  {
    v4 = [MEMORY[0x1E6993890] defaultStylesIncludingSystemStyles:1 systemStylePlaceholder:0 creativeStyles:0];
    v5 = [(CAMCaptureEngine *)self _newStylePickerWithStyles:v4];
    v6 = self->_systemStylePicker;
    self->_systemStylePicker = v5;

    systemStylePicker = self->_systemStylePicker;
  }

  return systemStylePicker;
}

- (id)creativeStylePickerWithStyles:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    p_creativeStylePicker = &self->_creativeStylePicker;
    goto LABEL_7;
  }

  if (([v4 isEqualToArray:self->_cachedStylesForCreativeStylePicker] & 1) == 0)
  {
    creativeStylePicker = self->_creativeStylePicker;
    self->_creativeStylePicker = 0;

    cachedStylesForCreativeStylePicker = self->_cachedStylesForCreativeStylePicker;
    self->_cachedStylesForCreativeStylePicker = 0;
  }

  p_creativeStylePicker = &self->_creativeStylePicker;
  v8 = self->_creativeStylePicker;
  if (!v8)
  {
    v10 = [(CAMCaptureEngine *)self _newStylePickerWithStyles:v5];
    v11 = self->_creativeStylePicker;
    self->_creativeStylePicker = v10;

    v12 = [v5 copy];
    v13 = self->_cachedStylesForCreativeStylePicker;
    self->_cachedStylesForCreativeStylePicker = v12;

LABEL_7:
    v8 = *p_creativeStylePicker;
  }

  v14 = v8;

  return v8;
}

- (id)_newStylePickerWithStyles:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [CAMCaptureConversions AVCaptureSmartStyleForCEKSmartStyle:*(*(&v19 + 1) + 8 * v9)];
        if (v10)
        {
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v11 = [(CAMCaptureEngine *)self _captureSession];
  v12 = [(CAMCaptureEngine *)self _captureController];
  objc_initWeak(&location, v12);

  v13 = objc_alloc(MEMORY[0x1E6987160]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__CAMCaptureEngine__newStylePickerWithStyles___block_invoke;
  v16[3] = &unk_1E76FD770;
  objc_copyWeak(&v17, &location);
  v14 = [v13 initWithSession:v11 styles:v5 action:v16];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v14;
}

void __46__CAMCaptureEngine__newStylePickerWithStyles___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [CAMCaptureConversions CEKSmartStyleForAVCaptureSmartStyle:v3];

  v5 = [WeakRetained controlsDelegate];
  [v5 captureController:WeakRetained receivedOverlayChangeSmartStyle:v4];
}

- (id)toneBiasSlider
{
  toneBiasSlider = self->_toneBiasSlider;
  if (!toneBiasSlider)
  {
    v4 = NSStringFromSelector(a2);
    [(CAMCaptureEngine *)self willChangeValueForKey:v4];
    v5 = [(CAMCaptureEngine *)self _captureSession];
    v6 = [(CAMCaptureEngine *)self _captureController];
    objc_initWeak(&location, v6);

    v7 = objc_alloc(MEMORY[0x1E6987168]);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __34__CAMCaptureEngine_toneBiasSlider__block_invoke;
    v14 = &unk_1E76FD770;
    objc_copyWeak(&v15, &location);
    v8 = [v7 initWithSession:v5 parameter:2 action:&v11];
    v9 = self->_toneBiasSlider;
    self->_toneBiasSlider = v8;

    [(CAMCaptureEngine *)self didChangeValueForKey:v4, v11, v12, v13, v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);

    toneBiasSlider = self->_toneBiasSlider;
  }

  return toneBiasSlider;
}

void __34__CAMCaptureEngine_toneBiasSlider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [CAMCaptureConversions CEKSmartStyleForAVCaptureSmartStyle:v3];

  v5 = [WeakRetained controlsDelegate];
  [v5 captureController:WeakRetained receivedOverlayUpdateSmartStyle:v4];
}

- (id)colorBiasSlider
{
  colorBiasSlider = self->_colorBiasSlider;
  if (!colorBiasSlider)
  {
    v4 = NSStringFromSelector(a2);
    [(CAMCaptureEngine *)self willChangeValueForKey:v4];
    v5 = [(CAMCaptureEngine *)self _captureSession];
    v6 = [(CAMCaptureEngine *)self _captureController];
    objc_initWeak(&location, v6);

    v7 = objc_alloc(MEMORY[0x1E6987168]);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __35__CAMCaptureEngine_colorBiasSlider__block_invoke;
    v14 = &unk_1E76FD770;
    objc_copyWeak(&v15, &location);
    v8 = [v7 initWithSession:v5 parameter:1 action:&v11];
    v9 = self->_colorBiasSlider;
    self->_colorBiasSlider = v8;

    [(CAMCaptureEngine *)self didChangeValueForKey:v4, v11, v12, v13, v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);

    colorBiasSlider = self->_colorBiasSlider;
  }

  return colorBiasSlider;
}

void __35__CAMCaptureEngine_colorBiasSlider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [CAMCaptureConversions CEKSmartStyleForAVCaptureSmartStyle:v3];

  v5 = [WeakRetained controlsDelegate];
  [v5 captureController:WeakRetained receivedOverlayUpdateSmartStyle:v4];
}

- (id)intensitySlider
{
  intensitySlider = self->_intensitySlider;
  if (!intensitySlider)
  {
    v4 = NSStringFromSelector(a2);
    [(CAMCaptureEngine *)self willChangeValueForKey:v4];
    v5 = [(CAMCaptureEngine *)self _captureSession];
    v6 = [(CAMCaptureEngine *)self _captureController];
    objc_initWeak(&location, v6);

    v7 = objc_alloc(MEMORY[0x1E6987168]);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __35__CAMCaptureEngine_intensitySlider__block_invoke;
    v14 = &unk_1E76FD770;
    objc_copyWeak(&v15, &location);
    v8 = [v7 initWithSession:v5 parameter:0 action:&v11];
    v9 = self->_intensitySlider;
    self->_intensitySlider = v8;

    [(CAMCaptureEngine *)self didChangeValueForKey:v4, v11, v12, v13, v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);

    intensitySlider = self->_intensitySlider;
  }

  return intensitySlider;
}

void __35__CAMCaptureEngine_intensitySlider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [CAMCaptureConversions CEKSmartStyleForAVCaptureSmartStyle:v3];

  v5 = [WeakRetained controlsDelegate];
  [v5 captureController:WeakRetained receivedOverlayUpdateSmartStyle:v4];
}

- (void)_ensureApertureSliderForGraphConfiguration:(id)a3
{
  v4 = a3;
  v5 = +[CAMCaptureCapabilities capabilities];
  if ([v5 isDepthEffectApertureSupported])
  {
    v6 = self->_apertureSlider;
    v7 = [v4 mode];
    v8 = [v4 device];
    if ((v8 - 1) > 0xA)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_1A3A6A7A8[v8 - 1];
    }

    if ([v5 isDepthEffectApertureSupportedForMode:v7 devicePosition:v9 depthSuggestionEnabled:{objc_msgSend(v4, "enableDepthSuggestion")}])
    {
      v10 = v7;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    [v5 minimumDepthEffectApertureForMode:v10 device:v8];
    v12 = v11;
    [v5 maximumDepthEffectApertureForMode:v10 device:v8];
    v14 = v13;
    v15 = [MEMORY[0x1E6993828] indexOfClosestValidValueForAperture:v12];
    v16 = [MEMORY[0x1E6993828] indexOfClosestValidValueForAperture:v14] - v15;
    v17 = [MEMORY[0x1E6993828] validApertureValues];
    v18 = [v17 subarrayWithRange:{v15, v16 + 1}];

    [v5 defaultZoomFactorForGraphConfiguration:v4 captureOrientation:1 customLens:0 outputToExternalStorage:0 overrodeWithForcedZoomValue:0];
    [v5 defaultDepthEffectApertureForMode:v10 device:v8 zoomFactor:?];
    v20 = v19;
    if (v6 && ([v18 isEqualToArray:self->_apertureSliderValues] & 1) != 0)
    {
      v22 = v6;
    }

    else
    {
      v23 = [(CAMCaptureEngine *)self _captureController];
      objc_initWeak(&location, v23);

      v24 = objc_alloc(MEMORY[0x1E6987118]);
      v25 = CAMLocalizedFrameworkString(@"CAMERA_OVERLAY_APERTURE_SLIDER_TITLE", 0);
      v22 = [v24 initWithLocalizedTitle:v25 symbolName:@"f.cursive" values:v18];

      v26 = CAMLocalizedFrameworkString(@"CAMERA_OVERLAY_APERTURE_SLIDER_VALUE_FORMAT", 0);
      [(AVCaptureSlider *)v22 setLocalizedValueFormat:v26];

      captureSessionQueue = self->__captureSessionQueue;
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __63__CAMCaptureEngine__ensureApertureSliderForGraphConfiguration___block_invoke;
      v32 = &unk_1E76F7E68;
      objc_copyWeak(&v33, &location);
      [(AVCaptureSlider *)v22 setActionQueue:captureSessionQueue action:&v29];
      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }

    *&v21 = v20;
    [(AVCaptureSlider *)v22 setValue:v21, v29, v30, v31, v32];
    [(AVCaptureSlider *)v22 setProminentValues:&unk_1F16C9C80];
    if (v22 != self->_apertureSlider)
    {
      v28 = NSStringFromSelector(sel_apertureSlider);
      [(CAMCaptureEngine *)self willChangeValueForKey:v28];
      objc_storeStrong(&self->_apertureSlider, v22);
      objc_storeStrong(&self->_apertureSliderValues, v18);
      [(CAMCaptureEngine *)self didChangeValueForKey:v28];
    }
  }
}

void __63__CAMCaptureEngine__ensureApertureSliderForGraphConfiguration___block_invoke(uint64_t a1, float a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__CAMCaptureEngine__ensureApertureSliderForGraphConfiguration___block_invoke_2;
  v3[3] = &unk_1E76F8790;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __63__CAMCaptureEngine__ensureApertureSliderForGraphConfiguration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained controlsDelegate];
  LODWORD(v3) = *(a1 + 40);
  [v2 captureController:WeakRetained receivedOverlaySimulatedAperture:v3];
}

- (void)_ensureEmulatedZoomSliderForGraphConfiguration:(id)a3
{
  v4 = a3;
  emulatedZoomSlider = self->_emulatedZoomSlider;
  if (emulatedZoomSlider)
  {
    self->_emulatedZoomSlider = 0;
  }

  v21 = 0;
  v6 = +[CAMZoomControlUtilities shouldApplyContinuousZoomForMode:device:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:zoomFactors:displayZoomFactors:](CAMZoomControlUtilities, "shouldApplyContinuousZoomForMode:device:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:zoomFactors:displayZoomFactors:", [v4 mode], objc_msgSend(v4, "device"), objc_msgSend(v4, "videoConfiguration"), objc_msgSend(v4, "videoStabilizationStrength"), objc_msgSend(v4, "frontRearSimultaneousVideoEnabled"), &v21, 0);
  v7 = v21;
  v8 = v7;
  if (v6 && [v7 count])
  {
    v9 = [v8 firstObject];
    [v9 floatValue];
    v11 = v10;

    v12 = [v8 lastObject];
    [v12 floatValue];
    v14 = v13;

    v15 = objc_alloc(MEMORY[0x1E6987118]);
    v16 = CAMLocalizedFrameworkString(@"ZOOM", 0);
    LODWORD(v17) = v11;
    LODWORD(v18) = v14;
    v19 = [v15 initWithLocalizedTitle:v16 symbolName:@"magnifyingglass" minValue:v17 maxValue:v18];
    v20 = self->_emulatedZoomSlider;
    self->_emulatedZoomSlider = v19;

    [(AVCaptureSlider *)self->_emulatedZoomSlider setProminentValues:v8];
    [(AVCaptureSlider *)self->_emulatedZoomSlider setActionQueue:MEMORY[0x1E69E96A0] action:&__block_literal_global_499];
  }
}

- (void)sessionControlsDidBecomeActive:(id)a3
{
  v3 = [(CAMCaptureEngine *)self _captureController];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CAMCaptureEngine_sessionControlsDidBecomeActive___block_invoke;
  block[3] = &unk_1E76F77B0;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__CAMCaptureEngine_sessionControlsDidBecomeActive___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) controlsDelegate];
  [v2 captureController:*(a1 + 32) receivedOverlayVisible:1];
}

- (void)sessionControlsDidBecomeInactive:(id)a3
{
  v3 = [(CAMCaptureEngine *)self _captureController];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CAMCaptureEngine_sessionControlsDidBecomeInactive___block_invoke;
  block[3] = &unk_1E76F77B0;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __53__CAMCaptureEngine_sessionControlsDidBecomeInactive___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) controlsDelegate];
  [v2 captureController:*(a1 + 32) receivedOverlayVisible:0];
}

- (void)sessionControlsWillEnterFullscreenAppearance:(id)a3
{
  v3 = [(CAMCaptureEngine *)self _captureController];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CAMCaptureEngine_sessionControlsWillEnterFullscreenAppearance___block_invoke;
  block[3] = &unk_1E76F77B0;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65__CAMCaptureEngine_sessionControlsWillEnterFullscreenAppearance___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) controlsDelegate];
  [v2 captureController:*(a1 + 32) receivedQuietUIActive:1];
}

- (void)sessionControlsWillExitFullscreenAppearance:(id)a3
{
  v3 = [(CAMCaptureEngine *)self _captureController];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CAMCaptureEngine_sessionControlsWillExitFullscreenAppearance___block_invoke;
  block[3] = &unk_1E76F77B0;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __64__CAMCaptureEngine_sessionControlsWillExitFullscreenAppearance___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) controlsDelegate];
  [v2 captureController:*(a1 + 32) receivedQuietUIActive:0];
}

- (void)session:(id)a3 controlsDidChangeAutoFocusLocked:(BOOL)a4
{
  v5 = [(CAMCaptureEngine *)self _captureController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CAMCaptureEngine_session_controlsDidChangeAutoFocusLocked___block_invoke;
  v7[3] = &unk_1E76F7850;
  v8 = v5;
  v9 = a4;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __61__CAMCaptureEngine_session_controlsDidChangeAutoFocusLocked___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) controlsDelegate];
  [v2 captureController:*(a1 + 32) receivedFocusLocked:*(a1 + 40)];
}

- (void)session:(id)a3 didChangeActiveControl:(id)a4
{
  v5 = a4;
  v6 = [(CAMCaptureEngine *)self _captureController];
  if (v5)
  {
    v7 = [(CAMCaptureEngine *)self creativeStylePicker];
    if (v7 == v5)
    {
      v12 = 1;
    }

    else
    {
      v8 = [(CAMCaptureEngine *)self systemStylePicker];
      if (v8 == v5)
      {
        v12 = 1;
      }

      else
      {
        v9 = [(CAMCaptureEngine *)self intensitySlider];
        if (v9 == v5)
        {
          v12 = 1;
        }

        else
        {
          v10 = [(CAMCaptureEngine *)self colorBiasSlider];
          if (v10 == v5)
          {
            v12 = 1;
          }

          else
          {
            v11 = [(CAMCaptureEngine *)self toneBiasSlider];
            v12 = v11 == v5;
          }
        }
      }
    }

    v14 = [(CAMCaptureEngine *)self apertureSlider];
    v13 = v14 == v5;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__CAMCaptureEngine_session_didChangeActiveControl___block_invoke;
  v16[3] = &unk_1E76F9818;
  v17 = v6;
  v18 = v12;
  v19 = v13;
  v15 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v16);
}

void __51__CAMCaptureEngine_session_didChangeActiveControl___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) controlsDelegate];
  [v2 captureController:*(a1 + 32) receivedOverlayStyleControlActive:*(a1 + 40)];

  v3 = [*(a1 + 32) controlsDelegate];
  [v3 captureController:*(a1 + 32) receivedOverlayApertureControlActive:*(a1 + 41)];
}

- (void)captureEngineDevice:(id)a3 didChangeSystemExposureTargetBias:(float)a4
{
  v5 = [(CAMCaptureEngine *)self _captureController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__CAMCaptureEngine_captureEngineDevice_didChangeSystemExposureTargetBias___block_invoke;
  v7[3] = &unk_1E76FC3A8;
  v8 = v5;
  v9 = a4;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __74__CAMCaptureEngine_captureEngineDevice_didChangeSystemExposureTargetBias___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) controlsDelegate];
  [v2 captureController:*(a1 + 32) receivedSystemOverlayUpdateExposureBias:*(a1 + 40)];
}

- (void)captureEngineDevice:(id)a3 didChangeLensSelectorZoomFactor:(float)a4
{
  v5 = [(CAMCaptureEngine *)self _captureController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__CAMCaptureEngine_captureEngineDevice_didChangeLensSelectorZoomFactor___block_invoke;
  v7[3] = &unk_1E76FC3A8;
  v8 = v5;
  v9 = a4;
  v6 = v5;
  cam_perform_on_main_asap(v7);
}

void __72__CAMCaptureEngine_captureEngineDevice_didChangeLensSelectorZoomFactor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) controlsDelegate];
  [v2 captureController:*(a1 + 32) receivedSystemOverlayLensSelectorZoomFactor:*(a1 + 40)];
}

- (CUCaptureController)_captureController
{
  WeakRetained = objc_loadWeakRetained(&self->__captureController);

  return WeakRetained;
}

- (void)_handleSessionRuntimeError:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  v4 = a1;
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v5, v6, v7, v8, a3, 0x16u);
}

- (void)_performSessionRuntimeRecovery:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_handleFailedSessionRecoveryAttemptAfterDelay:(double)a3 .cold.1(void *a1, uint64_t a2, double a3)
{
  *a2 = 138543618;
  *(a2 + 4) = a1;
  *(a2 + 12) = 2048;
  *(a2 + 14) = a3;
  v4 = a1;
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v5, v6, v7, v8, a2, 0x16u);
}

- (void)_handleFailedSessionRecoveryAttemptAfterDelay:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_0(v1, v2, v3, 5.8383e-34);
  *(v5 + 22) = v6;
  *(v5 + 24) = 5;
  v7 = v4;
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v8, v9, v10, v11, v0, 0x20u);
}

- (void)_handleFailedSessionRecoveryAttemptAfterDelay:.cold.3()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v5, v6, v7, v8, v0, 0x16u);
}

- (void)_handleSessionWasPrewarmed:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1A3640000, v0, OS_LOG_TYPE_DEBUG, "Ignoring prewarm reason %@", v1, 0xCu);
}

- (void)_handleSessionWasPrewarmed:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__CAMCaptureEngine__showAccidentalLaunchNotificationIfNecessary__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) title];
  v5 = [*(a1 + 32) body];
  [a2 code];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

- (void)_lockManagedCapturedDevice:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)cacheMomentCaptureSettings:forIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)cachedMomentCaptureSettingsForIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)clearCachedMomentCaptureSettingsForIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createOutputPixelBufferWithSize:matchingInputPixelBuffer:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_createOutputPixelBufferWithSize:matchingInputPixelBuffer:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_createOutputPixelBufferWithSize:matchingInputPixelBuffer:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __132__CAMCaptureEngine__captureOutput_didFinishRecordingToOutputFileAtURL_fromConnections_forVideoCaptureRequest_videoZoomFactor_error___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __132__CAMCaptureEngine__captureOutput_didFinishRecordingToOutputFileAtURL_fromConnections_forVideoCaptureRequest_videoZoomFactor_error___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_validateVideoAtURL:forCaptureRequest:captureID:captureError:isVideoComplement:stillImageDisplayTime:reportedDuration:outActualDuration:outVideoRecordingStoppedReason:outSlowWriterFrameDrops:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_validateVideoAtURL:forCaptureRequest:captureID:captureError:isVideoComplement:stillImageDisplayTime:reportedDuration:outActualDuration:outVideoRecordingStoppedReason:outSlowWriterFrameDrops:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_validateVideoAtURL:forCaptureRequest:captureID:captureError:isVideoComplement:stillImageDisplayTime:reportedDuration:outActualDuration:outVideoRecordingStoppedReason:outSlowWriterFrameDrops:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_validateVideoAtURL:forCaptureRequest:captureID:captureError:isVideoComplement:stillImageDisplayTime:reportedDuration:outActualDuration:outVideoRecordingStoppedReason:outSlowWriterFrameDrops:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_validateVideoAtURL:forCaptureRequest:captureID:captureError:isVideoComplement:stillImageDisplayTime:reportedDuration:outActualDuration:outVideoRecordingStoppedReason:outSlowWriterFrameDrops:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_validateVideoAtURL:(uint64_t)a1 forCaptureRequest:(uint64_t)a2 captureID:captureError:isVideoComplement:stillImageDisplayTime:reportedDuration:outActualDuration:outVideoRecordingStoppedReason:outSlowWriterFrameDrops:.cold.7(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Forcing a crash rather than prompting to open Tap-to-Radar...\n%@\n%@", a1, a2];
  v4 = [objc_claimAutoreleasedReturnValue() UTF8String];
  v5 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136381187;
    v9 = v4;
    v10 = 2113;
    v11 = a1;
    v12 = 2113;
    v13 = a2;
    _os_log_debug_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEBUG, "%{private}s...\nTitle: %{private}@\nDescription: %{private}@", buf, 0x20u);
  }

  v6 = abort_with_reason();
  __211__CAMCaptureEngine__validateVideoAtURL_forCaptureRequest_captureID_captureError_isVideoComplement_stillImageDisplayTime_reportedDuration_outActualDuration_outVideoRecordingStoppedReason_outSlowWriterFrameDrops___block_invoke_cold_1(v6, v7);
}

void __211__CAMCaptureEngine__validateVideoAtURL_forCaptureRequest_captureID_captureError_isVideoComplement_stillImageDisplayTime_reportedDuration_outActualDuration_outVideoRecordingStoppedReason_outSlowWriterFrameDrops___block_invoke_cold_1(uint64_t a1, void *a2)
{
  [a2 code];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_subgraphQueueHandlePanoramaErrorNotification:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __63__CAMCaptureEngine__captureEngineDeviceForDeviceType_position___block_invoke_cold_1(void *a1, void *a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *a1;
  *&v3[12] = 2048;
  *&v3[14] = *a2;
  OUTLINED_FUNCTION_4(&dword_1A3640000, a2, a3, "Failed to get device from [AVCaptureDevice defaultDeviceWithDeviceType:%{public}@]", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)systemPreferredCameraDevice
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end