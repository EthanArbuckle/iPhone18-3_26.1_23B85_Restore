@interface CUCaptureController
- (BOOL)_canBeginCaptureCheckAvailability:(BOOL)availability error:(id *)error;
- (BOOL)_internalCaptureStillImageWithRequest:(id)request error:(id *)error;
- (BOOL)_internalStartCapturingVideoWithRequest:(id)request error:(id *)error;
- (BOOL)_kvoDidEndForChange:(id)change;
- (BOOL)_kvoDidStartForChange:(id)change;
- (BOOL)_shouldLockWhiteBalanceForActiveVideoRequest;
- (BOOL)_shouldLockWhiteBalanceForCTMVideoRequest:(id)request;
- (BOOL)_shouldLockWhiteBalanceForVideoCaptureRequest:(id)request;
- (BOOL)_shouldMonitorSystemPressureState;
- (BOOL)_shouldPlaySystemSound;
- (BOOL)_shouldResetFocusAndExposureAfterCapture;
- (BOOL)_shouldTrackInflightCountForRequest:(id)request;
- (BOOL)_stopCapturingVideoAndDisableCaptureAvailabilityWhileStopping:(BOOL)stopping;
- (BOOL)_wantsImageAnalysisForGraphConfiguration:(id)configuration;
- (BOOL)_wantsMachineReadableCodesForGraphConfiguration:(id)configuration;
- (BOOL)captureStillImageWithRequest:(id)request error:(id *)error;
- (BOOL)hasActiveCTMVideoCaptures;
- (BOOL)initiateCTMCaptureWithSettings:(id)settings error:(id *)error;
- (BOOL)intervalometer:(id)intervalometer didGenerateCaptureRequest:(id)request;
- (BOOL)isCapturingBurst;
- (BOOL)isCapturingCTMVideo;
- (BOOL)isCapturingLivePhotoVideo;
- (BOOL)isCapturingNightModeImage;
- (BOOL)isCapturingPanorama;
- (BOOL)isCapturingStandardVideo;
- (BOOL)isCapturingStillImage;
- (BOOL)isCapturingVideo;
- (BOOL)isInterrupted;
- (BOOL)pauseCapturingVideo;
- (BOOL)resumeCaptureVideo;
- (BOOL)shouldAllowUserToChangeFocusAndExposure;
- (BOOL)startCapturingBurstWithRequest:(id)request error:(id *)error;
- (BOOL)startCapturingPanoramaWithRequest:(id)request error:(id *)error;
- (BOOL)startCapturingVideoWithRequest:(id)request error:(id *)error;
- (BOOL)stopCapturingPanoramaInterrupted:(BOOL)interrupted;
- (CAMAvailabilityDelegate)availabilityDelegate;
- (CAMBurstDelegate)burstDelegate;
- (CAMCaptureControllerAudioCuePlaybackDelegate)audioCuePlaybackDelegate;
- (CAMCaptureControllerSystemPressureStateDelegate)systemPressureStateDelegate;
- (CAMCaptureInterruptionDelegate)interruptionDelegate;
- (CAMCaptureRecoveryDelegate)recoveryDelegate;
- (CAMCaptureResultDelegate)resultDelegate;
- (CAMCaptureRunningDelegate)runningDelegate;
- (CAMConfigurationDelegate)configurationDelegate;
- (CAMConstituentDeviceDelegate)constituentDeviceDelegate;
- (CAMControlsDelegate)controlsDelegate;
- (CAMDocumentSceneResultDelegate)documentSceneResultDelegate;
- (CAMExposureDelegate)exposureDelegate;
- (CAMFacesDelegate)facesDelegate;
- (CAMFocusDelegate)focusDelegate;
- (CAMHistogramDelegate)histogramDelegate;
- (CAMLensPositionDelegate)lensPositionDelegate;
- (CAMLensSmudgeStatusDelegate)lensSmudgeStatusDelegate;
- (CAMMachineReadableCodeDelegate)machineReadableCodeDelegate;
- (CAMPanoramaChangeDelegate)panoramaChangeDelegate;
- (CAMPanoramaPreviewView)panoramaPreviewView;
- (CAMPreviewLayerOverCaptureStatusDelegate)previewLayerOverCaptureStatusDelegate;
- (CAMRecommendedSmartFramingDelegate)recommendedSmartFramingDelegate;
- (CAMShallowDepthOfFieldStatusDelegate)shallowDepthOfFieldStatusDelegate;
- (CAMStereoCaptureStatusDelegate)stereoCaptureStatusDelegate;
- (CAMStillImageCapturingVideoDelegate)stillImageCapturingVideoDelegate;
- (CAMSuggestionDelegate)suggestionDelegate;
- (CAMTextRegionResultDelegate)textRegionResultDelegate;
- (CAMThumbnailGenerator)_responseThumbnailGenerator;
- (CAMZoomDelegate)zoomDelegate;
- (CUCaptureController)initWithCaptureConfiguration:(id)configuration zoomFactor:(double)factor outputToExternalStorage:(BOOL)storage engineOptions:(int64_t)options locationController:(id)controller motionController:(id)motionController burstController:(id)burstController protectionController:(id)self0 powerController:(id)self1 irisVideoController:(id)self2 remoteShutterController:(id)self3;
- (id)_availabilityKeyPaths;
- (id)_commandForChangeToGraphConfiguration:(id)configuration zoomFactor:(double)factor minimumExecutionTime:(double)time outputToExternalStorage:(BOOL)storage outRequestID:(int *)d;
- (id)_commandForConfiguration:(id)configuration zoomFactor:(double)factor outputToExternalStorage:(BOOL)storage outRequestID:(int *)d;
- (id)_commandForLockingExposureIncludingFocus:(BOOL)focus;
- (id)_commandForResetFocus:(BOOL)focus resetExposure:(BOOL)exposure resetExposureTargetBias:(BOOL)bias resetSecondaryDevice:(BOOL)device;
- (id)_exposureKVOKeyPaths;
- (id)_focusKVOKeyPaths;
- (id)_lensPositionKVOKeyPaths;
- (id)_realtimeMetadataCommandsForMode:(int64_t)mode videoConfiguration:(int64_t)configuration capturing:(BOOL)capturing wantsMachineReadableCodes:(BOOL)codes wantsImageAnalysis:(BOOL)analysis;
- (id)_sanitizePanoramaRequest:(id)request;
- (id)_sanitizeStillImageRequest:(id)request;
- (id)_sanitizeVideoRequest:(id)request;
- (id)_suggestionKeyPaths;
- (id)_systemPressureStateMonitoringKeyPaths;
- (id)_textAnalysisImageFromStillImageResult:(id)result imageOrientation:(int64_t)orientation;
- (id)_thumbnailImageFromStillImageCaptureResult:(id)result imageOrientation:(int64_t)orientation;
- (id)_thumbnailImageFromVideoCaptureResult:(id)result previewOrientation:(int64_t)orientation previewImage:(id *)image;
- (id)_updateFocusAndExposureForStartBurstCapture;
- (id)_updateFocusAndExposureForStartPanorama;
- (id)_zoomMonitoringKeyPaths;
- (int)applyCaptureConfiguration:(id)configuration zoomFactor:(double)factor outputToExternalStorage:(BOOL)storage;
- (int)changeToGraphConfiguration:(id)configuration zoomFactor:(double)factor minimumExecutionTime:(double)time outputToExternalStorage:(BOOL)storage;
- (int64_t)_cinematicMetadataObjectIDForMetadataObject:(id)object;
- (int64_t)_constituentDeviceTypeFromDevice:(id)device;
- (int64_t)_primaryConstituentDeviceTypeFromDevice:(id)device;
- (unint64_t)_maximumNumberOfStillImageRequestsDuringBurst;
- (unint64_t)currentBurstCount;
- (void)_availabilityResultChangedForKeyPath:(id)path ofObject:(id)object change:(id)change;
- (void)_beginTrackingCTMVideoRecordingForIdentifier:(id)identifier;
- (void)_beginTrackingLivePhotoVideoRecordingForIdentifier:(id)identifier;
- (void)_cameraLensSmudgeDetectionStatusChangedForKeyPath:(id)path ofObject:(id)object change:(id)change;
- (void)_documentScanningChangedForKeyPath:(id)path ofObject:(id)object change:(id)change;
- (void)_endCaptureSignpostIntervalForPersistenceUUID:(id)d;
- (void)_endTrackingCTMVideoRecordingForIdentifier:(id)identifier;
- (void)_endTrackingLivePhotoVideoRecordingForIdentifier:(id)identifier;
- (void)_exposureResultChangedForEngineKeyPath:(id)path withDevice:(id)device change:(id)change;
- (void)_exposureResultChangedForKeyPath:(id)path ofObject:(id)object change:(id)change;
- (void)_focusResultChangedForEngineKeyPath:(id)path withDevice:(id)device change:(id)change;
- (void)_focusResultChangedForKeyPath:(id)path ofObject:(id)object change:(id)change;
- (void)_handleCaptureEngineExecutionNotification:(id)notification;
- (void)_handleShallowDepthOfFieldStatusChangedNotification:(id)notification;
- (void)_handleSystemPressureState:(id)state;
- (void)_lensPositionChangedForKeyPath:(id)path ofObject:(id)object change:(id)change;
- (void)_notifyDelegateOfCaptureAvailabilityChanged:(BOOL)changed;
- (void)_notifyDelegateOfConfigurationAvailabilityChanged:(BOOL)changed;
- (void)_overCapturePreviewStatusChangedForKeyPath:(id)path ofObject:(id)object change:(id)change;
- (void)_processCapturedBurstRequest:(id)request withResult:(id)result;
- (void)_processPendingVideoCaptureRequest:(id)request;
- (void)_recommendedSmartFramingChangedForKeyPath:(id)path ofObject:(id)object change:(id)change;
- (void)_resetCapturingVideoState;
- (void)_resetFocusAndExposureAfterCapture;
- (void)_resetFocusAndExposureAfterCaptureForType:(int64_t)type;
- (void)_resetFocusAndExposureIfAppropriateForReason:(int64_t)reason;
- (void)_scheduleFocusAndExposureResetAfterCaptureIfNecessaryForType:(int64_t)type;
- (void)_setCaptureAvailable:(BOOL)available;
- (void)_setCapturingCTMVideoRequest:(id)request;
- (void)_setCapturingVideoRequest:(id)request;
- (void)_setCurrentCameraSystemPressureState:(id)state;
- (void)_setupAvailabilityMonitoring;
- (void)_setupDocumentScanningMonitoring;
- (void)_setupExposureMonitoring;
- (void)_setupFocusAndExposureMonitoring;
- (void)_setupFocusMonitoring;
- (void)_setupKVOMonitoringForKeyPaths:(id)paths context:(void *)context options:(unint64_t)options;
- (void)_setupLensPositionMonitoring;
- (void)_setupLensSmudgeDetectionMonitoring;
- (void)_setupOverCapturePreviewMonitoring;
- (void)_setupRecommendedSmartFramingMonitoring;
- (void)_setupStereoCaptureStatusMonitoring;
- (void)_setupSuggestionMonitoring;
- (void)_setupSystemPressureStateMonitoring;
- (void)_setupZoomMonitoring;
- (void)_setupZoomPIPMonitoring;
- (void)_startCaptureSignpostIntervalForPersistenceUUID:(id)d;
- (void)_stereoCaptureStatusChangedForKeyPath:(id)path ofObject:(id)object change:(id)change;
- (void)_suggestionResultChangedForKeyPath:(id)path ofObject:(id)object change:(id)change;
- (void)_systemPressureStateMonitoringChangedForKeyPath:(id)path ofObject:(id)object change:(id)change;
- (void)_tearDownDocumentScanningMonitoring;
- (void)_tearDownOverCapturePreviewMonitoring;
- (void)_teardownAvailabilityMonitoring;
- (void)_teardownFocusAndExposureMonitoring;
- (void)_teardownKVOMonitoringForKeyPaths:(id)paths context:(void *)context;
- (void)_teardownLensPositionMonitoring;
- (void)_teardownLensSmudgeDetectionMonitoring;
- (void)_teardownRecommendedSmartFramingMonitoring;
- (void)_teardownStereoCaptureStatusMonitoring;
- (void)_teardownSuggestionMonitoring;
- (void)_teardownSystemPressureStateMonitoring;
- (void)_teardownZoomMonitoring;
- (void)_teardownZoomPIPMonitoring;
- (void)_updateAvailabilityAfterCapturedRequest:(id)request;
- (void)_updateAvailabilityAfterEnqueuedRequest:(id)request;
- (void)_updateAvailabilityAfterStopCapturingForRequest:(id)request;
- (void)_updateAvailabilityForRequestType:(int64_t)type;
- (void)_updateAvailabilityWhenPreparingToStopCapturingForRequest:(id)request;
- (void)_updateMaximumNumberOfStillImageRequestsAfterBurst;
- (void)_updateMaximumNumberOfStillImageRequestsAfterCapturedRequestIfNecessary:(id)necessary;
- (void)_updateMaximumNumberOfStillImageRequestsAfterEnqueuingRequest:(id)request;
- (void)_zoomPIPChangedForKeyPath:(id)path ofObject:(id)object change:(id)change;
- (void)_zoomResultChangedForKeyPath:(id)path ofObject:(id)object change:(id)change;
- (void)attemptToEndInterruptions;
- (void)cancelAutoResumeAfterDate:(id)date;
- (void)cancelCTMCaptureForSettings:(id)settings;
- (void)cancelDelayedFocusAndExposureReset;
- (void)changeExposureTargetBias:(float)bias;
- (void)changeToAspectRatioCrop:(int64_t)crop;
- (void)changeToFlashMode:(int64_t)mode;
- (void)changeToLockedExposure;
- (void)changeToLockedFocusAndExposure;
- (void)changeToNightMode:(int64_t)mode;
- (void)changeToPanoramaDirection:(int64_t)direction;
- (void)changeToPanoramaEncodingBehavior:(int64_t)behavior;
- (void)changeToPortraitAperture:(double)aperture;
- (void)changeToPortraitLightingEffectStrength:(double)strength;
- (void)changeToPreviewConfiguration:(unint64_t)configuration;
- (void)changeToPreviewDisabled;
- (void)changeToPreviewEnabledWithConfiguration:(unint64_t)configuration;
- (void)changeToPreviewFilters:(id)filters captureMode:(int64_t)mode;
- (void)changeToSmartFramingFieldOfView:(int64_t)view mode:(int64_t)mode videoConfiguration:(int64_t)configuration devicePosition:(int64_t)position;
- (void)changeToSmartStyle:(id)style;
- (void)changeToTimelapseCaptureRate:(float)rate;
- (void)changeToTorchLevel:(float)level;
- (void)changeToTorchMode:(int64_t)mode;
- (void)changeToVideoHDRSuspended:(BOOL)suspended;
- (void)changeToVideoRecordingCaptureOrientation:(int64_t)orientation;
- (void)changeToVideoZoomFactor:(double)factor graphConfiguration:(id)configuration;
- (void)dealloc;
- (void)endCTMVideoCapture;
- (void)focusAndExposeAtPoint:(CGPoint)point lockFocus:(BOOL)focus rectSize:(int64_t)size resetExposureTargetBias:(BOOL)bias;
- (void)focusAtCenterForVideoRecording;
- (void)focusAtPoint:(CGPoint)point lockFocus:(BOOL)focus rectSize:(int64_t)size;
- (void)forceDisableSubjectAreaChangeMonitoring;
- (void)handleSessionDidStopRunning;
- (void)handleSessionInterruptionForReason:(int64_t)reason;
- (void)intervalometer:(id)intervalometer didReachMaximumCountWithRequest:(id)request;
- (void)invalidateController;
- (void)lockFocusAtLensPosition:(float)position completionBlock:(id)block;
- (void)logCaptureAvailabilityDescription;
- (void)metadataWasRecognized:(id)recognized forMetadataObjectTypes:(id)types deviceFormat:(id)format;
- (void)notifyTimelapseControllerFinishedUpdatingWithLocation;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)panoramaConfigurationDidChangeWithImageQueue:(_CAImageQueue *)queue direction:(int64_t)direction;
- (void)panoramaRequest:(id)request didCompleteCaptureWithResult:(id)result;
- (void)panoramaRequest:(id)request didReceiveNotification:(int64_t)notification;
- (void)panoramaRequestDidStartCapturing:(id)capturing;
- (void)panoramaRequestDidStopCapturing:(id)capturing interrupted:(BOOL)interrupted;
- (void)pauseCapturingStillImagePairedVideo;
- (void)prepareDeferredProcessingWithStillImageRequest:(id)request;
- (void)preparePhotoOutputForExpectedPhotoResolution:(int64_t)resolution;
- (void)prepareToCaptureStillImageAtSystemTime:(int64_t)time;
- (void)queryTimelapseDimensionsWithCompletionBlock:(id)block;
- (void)queryVideoDimensionsWithCompletionBlock:(id)block;
- (void)registerCaptureService:(id)service;
- (void)registerEffectsPreviewSampleBufferDelegate:(id)delegate;
- (void)registerVideoThumbnailContentsDelegate:(id)delegate;
- (void)resetFocusAndExposure;
- (void)resumeCapturingStillImagePairedVideo;
- (void)setAutoSmartFramingEnabledFieldOfViews:(id)views;
- (void)setBurstDelegate:(id)delegate;
- (void)setCapturingTimelapse:(BOOL)timelapse forDevicePosition:(int64_t)position;
- (void)setCinematicFocusForMetadataObject:(id)object atPoint:(CGPoint)point useFixedOpticalFocus:(BOOL)focus useHardFocus:(BOOL)hardFocus;
- (void)setFallbackPrimaryConstituentDeviceSelection:(int64_t)selection;
- (void)setMultiCamPictureInPictureMetrics:(id)metrics;
- (void)setPrimaryConstituentDeviceSwitchingBehavior:(int64_t)behavior restrictedSwitchingConditions:(unint64_t)conditions;
- (void)setSmartFramingMonitorEnabled:(BOOL)enabled;
- (void)startCaptureSessionWithRetryCount:(unint64_t)count retryInterval:(double)interval logReason:(id)reason completion:(id)completion;
- (void)startRampToVideoZoomFactor:(double)factor withDuration:(double)duration zoomRampTuning:(int64_t)tuning graphConfiguration:(id)configuration;
- (void)startRampToVideoZoomFactor:(double)factor withRate:(float)rate graphConfiguration:(id)configuration;
- (void)stillImageRequest:(id)request didCompleteStillImageCaptureWithResult:(id)result;
- (void)stillImageRequest:(id)request didCompleteVideoCaptureWithResult:(id)result;
- (void)stillImageRequest:(id)request didStopCapturingCTMVideoForCoordinationInfo:(id)info;
- (void)stillImageRequest:(id)request didStopCapturingLivePhotoVideoForCoordinationInfo:(id)info;
- (void)stillImageRequestDidBeginCaptureBeforeResolvingSettings:(id)settings;
- (void)stillImageRequestDidCompleteCapture:(id)capture error:(id)error;
- (void)stillImageRequestDidStartCapturing:(id)capturing resolvedSettings:(id)settings;
- (void)stillImageRequestDidStopCapturingStillImage:(id)image;
- (void)stillImageRequestDidUnblockResponsiveCapture:(id)capture;
- (void)stillImageRequestWillStartCapturingVideo:(id)video;
- (void)stopCaptureSessionWithCompletion:(id)completion;
- (void)stopCapturingBurst;
- (void)stopMonitoringForAccidentalLaunch;
- (void)stopRampToVideoZoomFactor;
- (void)unregisterCaptureService:(id)service;
- (void)unregisterEffectsPreviewSampleBufferDelegate:(id)delegate;
- (void)unregisterVideoThumbnailContentsDelegate:(id)delegate;
- (void)updateCaptureButtonControlsForCaptureMode:(int64_t)mode devicePosition:(int64_t)position isRecording:(BOOL)recording depthSuggestionEnabled:(BOOL)enabled;
- (void)updateRealtimeMetadataConfigurationForGraphConfiguration:(id)configuration isCapturing:(BOOL)capturing;
- (void)videoRequest:(id)request didCompleteCaptureWithResult:(id)result;
- (void)videoRequestDidPauseCapturing:(id)capturing;
- (void)videoRequestDidResumeCapturing:(id)capturing;
- (void)videoRequestDidStartCapturing:(id)capturing;
- (void)videoRequestDidStopCapturing:(id)capturing;
- (void)willPerformRecoveryFromRuntimeError:(id)error;
@end

@implementation CUCaptureController

- (void)_setupFocusAndExposureMonitoring
{
  [(CUCaptureController *)self _setupFocusMonitoring];
  [(CUCaptureController *)self _setupExposureMonitoring];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__subjectAreaDidChange_ name:*MEMORY[0x1E69868F8] object:0];
}

- (void)_setupFocusMonitoring
{
  v19 = *MEMORY[0x1E69E9840];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  objc_initWeak(&location, self);
  v4 = [CAMKeyValueCoalescer alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__CUCaptureController__setupFocusMonitoring__block_invoke;
  v15[3] = &unk_1E76FC270;
  objc_copyWeak(&v16, &location);
  v5 = [(CAMKeyValueCoalescer *)v4 initWithInterval:v15 handler:0.05];
  focusCoalescer = self->__focusCoalescer;
  self->__focusCoalescer = v5;

  [(CUCaptureController *)self _focusKVOKeyPaths];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v7 = v12 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v18 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [_captureEngine addObserver:self forKeyPath:*(*(&v11 + 1) + 8 * v10++) options:3 context:{CAMFocusResultContext, v11}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v18 count:16];
    }

    while (v8);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (id)_focusKVOKeyPaths
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"currentCameraDevice.focusMode";
  v4[1] = @"currentCameraDevice.focusPointOfInterest";
  v4[2] = @"currentCameraDevice.adjustingFocus";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

- (void)_setupExposureMonitoring
{
  v19 = *MEMORY[0x1E69E9840];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  objc_initWeak(&location, self);
  v4 = [CAMKeyValueCoalescer alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__CUCaptureController__setupExposureMonitoring__block_invoke;
  v15[3] = &unk_1E76FC270;
  objc_copyWeak(&v16, &location);
  v5 = [(CAMKeyValueCoalescer *)v4 initWithInterval:v15 handler:0.05];
  exposureCoalescer = self->__exposureCoalescer;
  self->__exposureCoalescer = v5;

  [(CUCaptureController *)self _exposureKVOKeyPaths];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v7 = v12 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v18 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [_captureEngine addObserver:self forKeyPath:*(*(&v11 + 1) + 8 * v10++) options:3 context:{CAMExposureResultContext, v11}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v18 count:16];
    }

    while (v8);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (id)_exposureKVOKeyPaths
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"currentCameraDevice.exposureMode";
  v4[1] = @"currentCameraDevice.exposurePointOfInterest";
  v4[2] = @"currentCameraDevice.exposureTargetBias";
  v4[3] = @"currentCameraDevice.adjustingExposure";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];

  return v2;
}

- (void)_setupSuggestionMonitoring
{
  v14 = *MEMORY[0x1E69E9840];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  _suggestionKeyPaths = [(CUCaptureController *)self _suggestionKeyPaths];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [_suggestionKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(_suggestionKeyPaths);
        }

        [_captureEngine addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) options:3 context:CAMSuggestionResultContext];
      }

      while (v6 != v8);
      v6 = [_suggestionKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_suggestionKeyPaths
{
  v4[7] = *MEMORY[0x1E69E9840];
  v4[0] = @"currentCameraDevice.flashActive";
  v4[1] = @"currentCameraDevice.torchActive";
  v4[2] = @"currentStillImageOutput.digitalFlashStatus";
  v4[3] = @"currentStillImageOutput.digitalFlashExposureTimes";
  v4[4] = @"currentCameraDevice.activePrimaryConstituentDevice";
  v4[5] = @"currentCameraDevice.preferredPrimaryConstituentDevice";
  v4[6] = @"currentCameraDevice";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:7];

  return v2;
}

- (void)_setupAvailabilityMonitoring
{
  v14 = *MEMORY[0x1E69E9840];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  _availabilityKeyPaths = [(CUCaptureController *)self _availabilityKeyPaths];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [_availabilityKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(_availabilityKeyPaths);
        }

        [_captureEngine addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) options:3 context:CAMAvailabilityResultContext];
      }

      while (v6 != v8);
      v6 = [_availabilityKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_availabilityKeyPaths
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"currentCameraDevice.flashAvailable";
  v7[1] = @"currentCameraDevice.torchAvailable";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v3 = +[CAMCaptureCapabilities capabilities];
  isFlashMitigationSupported = [v3 isFlashMitigationSupported];

  if (isFlashMitigationSupported)
  {
    v5 = [v2 arrayByAddingObject:@"currentCameraDevice.degradedCaptureQualityFactors"];

    v2 = v5;
  }

  return v2;
}

- (void)_setupZoomMonitoring
{
  v14 = *MEMORY[0x1E69E9840];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  _zoomMonitoringKeyPaths = [(CUCaptureController *)self _zoomMonitoringKeyPaths];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [_zoomMonitoringKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(_zoomMonitoringKeyPaths);
        }

        [_captureEngine addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) options:1 context:CAMZoomResultContext];
      }

      while (v6 != v8);
      v6 = [_zoomMonitoringKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_zoomMonitoringKeyPaths
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"currentCameraDevice.videoZoomFactor";
  v4[1] = @"currentCameraDevice.minAvailableVideoZoomFactor";
  v4[2] = @"currentCameraDevice.rampingVideoZoom";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

- (void)_setupSystemPressureStateMonitoring
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CUCaptureController *)self _shouldMonitorSystemPressureState])
  {
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    _systemPressureStateMonitoringKeyPaths = [(CUCaptureController *)self _systemPressureStateMonitoringKeyPaths];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [_systemPressureStateMonitoringKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(_systemPressureStateMonitoringKeyPaths);
          }

          [_captureEngine addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) options:5 context:CAMSystemPressureStateMonitoringContext];
        }

        while (v6 != v8);
        v6 = [_systemPressureStateMonitoringKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (BOOL)_shouldMonitorSystemPressureState
{
  v2 = +[CAMCaptureCapabilities capabilities];
  if ([v2 isBackPortraitModeSupported])
  {
    isFrontPortraitModeSupported = 1;
  }

  else
  {
    isFrontPortraitModeSupported = [v2 isFrontPortraitModeSupported];
  }

  v4 = isFrontPortraitModeSupported | [v2 isFrontRearSimultaneousVideoSupported];

  return v4 & 1;
}

- (BOOL)isCapturingVideo
{
  if ([(CUCaptureController *)self isCapturingStandardVideo])
  {
    return 1;
  }

  return [(CUCaptureController *)self isCapturingCTMVideo];
}

- (BOOL)isCapturingBurst
{
  currentBurstIntervalometer = [(CUCaptureController *)self currentBurstIntervalometer];
  v3 = currentBurstIntervalometer != 0;

  return v3;
}

- (void)pauseCapturingStillImagePairedVideo
{
  _needsInitialPairedVideoUpdate = [(CUCaptureController *)self _needsInitialPairedVideoUpdate];
  if (![(CUCaptureController *)self _isCapturingPairedVideoPaused]|| _needsInitialPairedVideoUpdate)
  {
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    v5 = [[CAMPausePairedVideoRecordingCommand alloc] initWithRecordingPaused:1];
    [_captureEngine enqueueCommand:v5];
    [(CUCaptureController *)self _setCapturingPairedVideoPaused:1];
    [(CUCaptureController *)self _setNeedsInitialPairedVideoUpdate:0];
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Paused live photo video capture", v7, 2u);
    }
  }
}

- (BOOL)isCapturingPanorama
{
  _capturingPanoramaRequest = [(CUCaptureController *)self _capturingPanoramaRequest];
  v3 = _capturingPanoramaRequest != 0;

  return v3;
}

- (BOOL)isInterrupted
{
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  isInterrupted = [_captureEngine isInterrupted];

  return isInterrupted;
}

void __47__CUCaptureController__setupExposureMonitoring__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 cam_compareKey:@"currentCameraDevice.exposureMode" withDictionary:v5];
  v7 = [v4 cam_compareKey:@"currentCameraDevice.exposurePointOfInterest" withDictionary:v5];
  v8 = [v4 cam_compareKey:@"currentCameraDevice.exposureTargetBias" withDictionary:v5];
  v9 = [v4 objectForKeyedSubscript:@"currentCameraDevice.exposureMode"];
  v10 = [v9 integerValue];

  v31 = [CAMCaptureConversions exposureModeForCaptureExposureMode:v10];
  v11 = [v4 objectForKeyedSubscript:@"currentCameraDevice.exposurePointOfInterest"];
  [v11 CGPointValue];
  v13 = v12;
  v15 = v14;

  v16 = [v4 objectForKeyedSubscript:@"currentCameraDevice.exposureTargetBias"];
  [v16 floatValue];
  v18 = v17;

  v19 = [v4 objectForKeyedSubscript:@"currentCameraDevice.adjustingExposure"];
  v20 = [v19 BOOLValue];

  v21 = [v4 objectForKeyedSubscript:@"exposureDidStartKeyPath"];
  v22 = [v21 BOOLValue];

  v23 = [v4 objectForKeyedSubscript:@"exposureDidEndKeyPath"];
  v24 = [v23 BOOLValue];

  v25 = [v4 objectForKeyedSubscript:@"deviceSupportsFocusKeyPath"];
  v26 = [v25 BOOLValue];

  if (!v6 || !v7 || !v8 || (v22 & 1) != 0 || v24)
  {
    v27 = [CAMExposureResult alloc];
    LODWORD(v28) = v18;
    v29 = [(CAMExposureResult *)v27 initWithMode:v31 pointOfInterest:v20 exposureTargetBias:v22 adjusting:v24 exposureDidStart:v26 exposureDidEnd:v13 deviceSupportsFocus:v15, v28];
    v30 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v34, (a1 + 32));
    v33 = v29;
    pl_dispatch_async();

    objc_destroyWeak(&v34);
  }
}

void __44__CUCaptureController__setupFocusMonitoring__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 cam_compareKey:@"currentCameraDevice.focusMode" withDictionary:v5];
  v7 = [v4 cam_compareKey:@"currentCameraDevice.focusPointOfInterest" withDictionary:v5];
  v8 = [v4 objectForKeyedSubscript:@"currentCameraDevice.focusMode"];
  v9 = [v8 integerValue];

  v10 = [CAMCaptureConversions focusModeForCaptureFocusMode:v9];
  v11 = [v4 objectForKeyedSubscript:@"currentCameraDevice.focusPointOfInterest"];
  [v11 CGPointValue];
  v13 = v12;
  v15 = v14;

  v16 = [v4 objectForKeyedSubscript:@"deviceSupportsFocusKeyPath"];
  v17 = [v16 BOOLValue];

  v18 = [v4 objectForKeyedSubscript:@"contrastBasedFocusDidStartKeyPath"];
  v19 = [v18 BOOLValue];

  v20 = [v4 objectForKeyedSubscript:@"contrastBasedFocusDidEndKeyPath"];
  v21 = [v20 BOOLValue];

  v22 = [v4 objectForKeyedSubscript:@"currentCameraDevice.adjustingFocus"];
  v23 = [v22 BOOLValue];

  if (!v6 || !v7 || (v19 & 1) != 0 || v21)
  {
    v24 = [[CAMFocusResult alloc] initWithMode:v10 pointOfInterest:v23 performingContrastDetection:v19 contrastBasedFocusDidStart:v21 contrastBasedFocusDidEnd:v17 deviceSupportsFocus:v13, v15];
    v25 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v28, (a1 + 32));
    v27 = v24;
    pl_dispatch_async();

    objc_destroyWeak(&v28);
  }
}

- (CAMSuggestionDelegate)suggestionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionDelegate);

  return WeakRetained;
}

- (CAMAvailabilityDelegate)availabilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_availabilityDelegate);

  return WeakRetained;
}

void __47__CUCaptureController__setupExposureMonitoring__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained exposureDelegate];
  [v2 captureController:WeakRetained didOutputExposureResult:*(a1 + 32)];
}

- (CAMExposureDelegate)exposureDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_exposureDelegate);

  return WeakRetained;
}

void __44__CUCaptureController__setupFocusMonitoring__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained focusDelegate];
  [v2 captureController:WeakRetained didOutputFocusResult:*(a1 + 32)];
}

- (CAMFocusDelegate)focusDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_focusDelegate);

  return WeakRetained;
}

uint64_t __51__CUCaptureController_handleSessionDidStartRunning__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) runningDelegate];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 captureControllerDidStartRunning:*(a1 + 32)];
    }
  }

  return MEMORY[0x1EEE66C30]();
}

- (CAMCaptureRunningDelegate)runningDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_runningDelegate);

  return WeakRetained;
}

- (CAMConfigurationDelegate)configurationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_configurationDelegate);

  return WeakRetained;
}

- (void)cancelDelayedFocusAndExposureReset
{
  v3 = objc_opt_class();

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel__resetFocusAndExposureAfterCapture object:0];
}

- (CAMCaptureResultDelegate)resultDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resultDelegate);

  return WeakRetained;
}

- (CAMThumbnailGenerator)_responseThumbnailGenerator
{
  responseThumbnailGenerator = self->__responseThumbnailGenerator;
  if (!responseThumbnailGenerator)
  {
    v4 = objc_alloc_init(CAMThumbnailGenerator);
    v5 = self->__responseThumbnailGenerator;
    self->__responseThumbnailGenerator = v4;

    responseThumbnailGenerator = self->__responseThumbnailGenerator;
  }

  return responseThumbnailGenerator;
}

- (BOOL)isCapturingStillImage
{
  _numberOfInflightRequestsByType = [(CUCaptureController *)self _numberOfInflightRequestsByType];
  v3 = [_numberOfInflightRequestsByType countForObject:&unk_1F16C7F40] != 0;

  return v3;
}

- (void)_resetFocusAndExposureAfterCapture
{
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  if ([(CUCaptureController *)self _shouldResetFocusAndExposureAfterCapture])
  {

    [(CUCaptureController *)self _resetFocusAndExposureIfAppropriateForReason:1];
  }

  else
  {
    v3 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Not resetting focus/exposure because still capturing", v4, 2u);
    }
  }
}

- (CAMPanoramaPreviewView)panoramaPreviewView
{
  panoramaPreviewView = self->_panoramaPreviewView;
  if (!panoramaPreviewView)
  {
    v4 = [CAMPanoramaPreviewView alloc];
    v5 = [(CAMPanoramaPreviewView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_panoramaPreviewView;
    self->_panoramaPreviewView = v5;

    panoramaPreviewView = self->_panoramaPreviewView;
  }

  return panoramaPreviewView;
}

- (CAMPanoramaChangeDelegate)panoramaChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_panoramaChangeDelegate);

  return WeakRetained;
}

- (void)handleSessionDidStopRunning
{
  _protectionController = [(CUCaptureController *)self _protectionController];
  [_protectionController abortOutstandingNebulaDaemonWriteProtectionsForReason:@"Capture session stopped running"];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__CUCaptureController_handleSessionDidStopRunning__block_invoke;
  v4[3] = &unk_1E76F77B0;
  v4[4] = self;
  cam_perform_on_main_asap(v4);
}

- (CAMCaptureInterruptionDelegate)interruptionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interruptionDelegate);

  return WeakRetained;
}

uint64_t __50__CUCaptureController_handleSessionDidStopRunning__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCapturingTimelapse] & 1) == 0)
  {
    v2 = [*(a1 + 32) _commandForResetFocus:1 resetExposure:1 resetExposureTargetBias:1 resetSecondaryDevice:0];
    v3 = [*(a1 + 32) _captureEngine];
    [v3 enqueueCommand:v2];

    v4 = [*(a1 + 32) _commandForResetFocus:1 resetExposure:1 resetExposureTargetBias:1 resetSecondaryDevice:1];
    v5 = [*(a1 + 32) _captureEngine];
    [v5 enqueueCommand:v4];
  }

  v6 = [*(a1 + 32) runningDelegate];
  if (v6)
  {
    v8 = v6;
    if (objc_opt_respondsToSelector())
    {
      [v8 captureControllerDidStopRunning:*(a1 + 32)];
    }
  }

  return MEMORY[0x1EEE66C30]();
}

- (CUCaptureController)initWithCaptureConfiguration:(id)configuration zoomFactor:(double)factor outputToExternalStorage:(BOOL)storage engineOptions:(int64_t)options locationController:(id)controller motionController:(id)motionController burstController:(id)burstController protectionController:(id)self0 powerController:(id)self1 irisVideoController:(id)self2 remoteShutterController:(id)self3
{
  optionsCopy = options;
  storageCopy = storage;
  configurationCopy = configuration;
  controllerCopy = controller;
  motionControllerCopy = motionController;
  burstControllerCopy = burstController;
  protectionControllerCopy = protectionController;
  powerControllerCopy = powerController;
  videoControllerCopy = videoController;
  shutterControllerCopy = shutterController;
  v49.receiver = self;
  v49.super_class = CUCaptureController;
  v20 = [(CUCaptureController *)&v49 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->__locationController, controller);
    objc_storeStrong(&v21->__motionController, motionController);
    objc_storeStrong(&v21->__burstController, burstController);
    objc_storeStrong(&v21->__protectionController, protectionController);
    objc_storeStrong(&v21->__powerController, powerController);
    objc_storeStrong(&v21->__irisVideoController, videoController);
    objc_storeStrong(&v21->__remoteShutterController, shutterController);
    v22 = powerControllerCopy;
    v23 = [[CAMCaptureEngine alloc] initWithPowerController:powerControllerCopy captureController:v21 options:optionsCopy];
    captureEngine = v21->__captureEngine;
    v21->__captureEngine = v23;

    [(CAMCaptureEngine *)v21->__captureEngine registerCaptureService:v21];
    [(CUCaptureController *)v21 _setupFocusAndExposureMonitoring];
    [(CUCaptureController *)v21 _setupLensPositionMonitoring];
    [(CUCaptureController *)v21 _setupSuggestionMonitoring];
    [(CUCaptureController *)v21 _setupAvailabilityMonitoring];
    [(CUCaptureController *)v21 _setupZoomMonitoring];
    [(CUCaptureController *)v21 _setupZoomPIPMonitoring];
    [(CUCaptureController *)v21 _setupSystemPressureStateMonitoring];
    [(CUCaptureController *)v21 _setupOverCapturePreviewMonitoring];
    [(CUCaptureController *)v21 _setupDocumentScanningMonitoring];
    [(CUCaptureController *)v21 _setupStereoCaptureStatusMonitoring];
    [(CUCaptureController *)v21 _setupLensSmudgeDetectionMonitoring];
    [(CUCaptureController *)v21 _setupRecommendedSmartFramingMonitoring];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v21 selector:sel__handleCaptureEngineExecutionNotification_ name:@"CAMCaptureEngineExecutedCommandWithContextNotification" object:v21->__captureEngine];
    v26 = +[CAMCaptureCapabilities capabilities];
    if (([v26 isBackPortraitModeSupported] & 1) != 0 || objc_msgSend(v26, "isFrontPortraitModeSupported"))
    {
      [defaultCenter addObserver:v21 selector:sel__handleShallowDepthOfFieldStatusChangedNotification_ name:@"AVCaptureDeviceShallowDepthOfFieldStatusChangedNotification" object:{0, optionsCopy}];
    }

    optionsCopy = [(CUCaptureController *)v21 _commandForConfiguration:configurationCopy zoomFactor:storageCopy outputToExternalStorage:0 outRequestID:factor, optionsCopy];
    [(CAMCaptureEngine *)v21->__captureEngine enqueueCommand:optionsCopy];
    [(CAMCaptureEngine *)v21->__captureEngine startWithRetryCount:0 retryInterval:@"initial configuration" logReason:0 completion:0.0];
    v28 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
    v29 = dispatch_queue_create("com.apple.camera.capture-controller.response-queue", v28);
    responseQueue = v21->__responseQueue;
    v21->__responseQueue = v29;

    v31 = objc_alloc_init(MEMORY[0x1E696AB50]);
    numberOfInflightRequestsByType = v21->__numberOfInflightRequestsByType;
    v21->__numberOfInflightRequestsByType = v31;

    v33 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    identifiersForActiveLivePhotoVideoCaptures = v21->__identifiersForActiveLivePhotoVideoCaptures;
    v21->__identifiersForActiveLivePhotoVideoCaptures = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    identifiersForActiveCTMVideoCaptures = v21->__identifiersForActiveCTMVideoCaptures;
    v21->__identifiersForActiveCTMVideoCaptures = v35;

    v21->__needsInitialPairedVideoUpdate = 1;
    *&v21->_captureAvailable = 16843009;
    v21->_flashCompromise = 0;
    [(CUCaptureController *)v21 _setVideoCaptureAvailable:1];
    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    persistenceUUIDToSignpostID = v21->__persistenceUUIDToSignpostID;
    v21->__persistenceUUIDToSignpostID = v37;

    v21->__nextSignpostID = 1;
    v39 = v21;

    powerControllerCopy = v22;
  }

  return v21;
}

- (void)dealloc
{
  [(CUCaptureController *)self invalidateController];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CUCaptureController;
  [(CUCaptureController *)&v4 dealloc];
}

- (void)invalidateController
{
  [(CUCaptureController *)self _teardownFocusAndExposureMonitoring];
  [(CUCaptureController *)self _teardownLensPositionMonitoring];
  [(CUCaptureController *)self _teardownSuggestionMonitoring];
  [(CUCaptureController *)self _teardownAvailabilityMonitoring];
  [(CUCaptureController *)self _teardownZoomMonitoring];
  [(CUCaptureController *)self _teardownZoomPIPMonitoring];
  [(CUCaptureController *)self _teardownSystemPressureStateMonitoring];
  [(CUCaptureController *)self _tearDownOverCapturePreviewMonitoring];
  [(CUCaptureController *)self _teardownStereoCaptureStatusMonitoring];
  [(CUCaptureController *)self _tearDownDocumentScanningMonitoring];
  [(CUCaptureController *)self _teardownLensSmudgeDetectionMonitoring];
  [(CUCaptureController *)self _teardownRecommendedSmartFramingMonitoring];
  captureEngine = self->__captureEngine;
  self->__captureEngine = 0;
}

- (int)applyCaptureConfiguration:(id)configuration zoomFactor:(double)factor outputToExternalStorage:(BOOL)storage
{
  selfCopy = self;
  v8 = 0;
  v6 = [(CUCaptureController *)self _commandForConfiguration:configuration zoomFactor:storage outputToExternalStorage:&v8 outRequestID:factor];
  [(CAMCaptureEngine *)selfCopy->__captureEngine enqueueCommand:v6];
  LODWORD(selfCopy) = v8;

  return selfCopy;
}

- (void)_setupOverCapturePreviewMonitoring
{
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  overCaptureVideoPreviewLayer = [_captureEngine overCaptureVideoPreviewLayer];

  if (overCaptureVideoPreviewLayer)
  {
    [_captureEngine addObserver:self forKeyPath:@"overCaptureVideoPreviewLayer.overCaptureStatus" options:1 context:CAMOverCapturePreviewContext];
  }
}

- (void)_tearDownOverCapturePreviewMonitoring
{
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  overCaptureVideoPreviewLayer = [_captureEngine overCaptureVideoPreviewLayer];

  if (overCaptureVideoPreviewLayer)
  {
    [_captureEngine removeObserver:self forKeyPath:@"overCaptureVideoPreviewLayer.overCaptureStatus" context:CAMOverCapturePreviewContext];
  }
}

- (void)_overCapturePreviewStatusChangedForKeyPath:(id)path ofObject:(id)object change:(id)change
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  overCaptureVideoPreviewLayer = [objectCopy overCaptureVideoPreviewLayer];
  v11 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  if (v11)
  {
    v12 = overCaptureVideoPreviewLayer == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && [pathCopy isEqualToString:@"overCaptureVideoPreviewLayer.overCaptureStatus"])
  {
    +[CAMCaptureConversions overCapturePreviewStatusForAVPreviewStatus:](CAMCaptureConversions, "overCapturePreviewStatusForAVPreviewStatus:", [v11 integerValue]);
    pl_dispatch_async();
  }
}

void __82__CUCaptureController__overCapturePreviewStatusChangedForKeyPath_ofObject_change___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) previewLayerOverCaptureStatusDelegate];
  [v2 captureController:*(a1 + 32) didOutputOverCapturePreviewStatus:*(a1 + 40)];
}

- (id)_thumbnailImageFromStillImageCaptureResult:(id)result imageOrientation:(int64_t)orientation
{
  resultCopy = result;
  stillImageFilteredPreviewSurface = [resultCopy stillImageFilteredPreviewSurface];
  if (!stillImageFilteredPreviewSurface)
  {
    stillImageFilteredPreviewSurface = [resultCopy stillImageUnfilteredPreviewSurface];
  }

  _responseThumbnailGenerator = [(CUCaptureController *)self _responseThumbnailGenerator];
  v9 = [_responseThumbnailGenerator newBGRAImageOfFormat:objc_msgSend(MEMORY[0x1E69BF160] inOrientation:"masterThumbnailFormat") usingSurface:orientation, stillImageFilteredPreviewSurface];
  v10 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v9];
  CGImageRelease(v9);

  return v10;
}

- (id)_thumbnailImageFromVideoCaptureResult:(id)result previewOrientation:(int64_t)orientation previewImage:(id *)image
{
  videoPreviewPixelBuffer = [result videoPreviewPixelBuffer];
  v9 = [objc_alloc(MEMORY[0x1E69DCAB8]) _initWithIOSurface:CVPixelBufferGetIOSurface(videoPreviewPixelBuffer) imageOrientation:orientation];
  _responseThumbnailGenerator = [(CUCaptureController *)self _responseThumbnailGenerator];
  v11 = [_responseThumbnailGenerator newBGRAImageOfFormat:objc_msgSend(MEMORY[0x1E69BF160] inOrientation:"masterThumbnailFormat") usingPixelBuffer:orientation, videoPreviewPixelBuffer];
  v12 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v11];
  CGImageRelease(v11);
  if (image && v9)
  {
    v13 = v9;
    *image = v9;
  }

  return v12;
}

- (id)_textAnalysisImageFromStillImageResult:(id)result imageOrientation:(int64_t)orientation
{
  resultCopy = result;
  stillImageFilteredPreviewSurface = [resultCopy stillImageFilteredPreviewSurface];
  if (!stillImageFilteredPreviewSurface)
  {
    stillImageFilteredPreviewSurface = [resultCopy stillImageUnfilteredPreviewSurface];
  }

  _responseThumbnailGenerator = [(CUCaptureController *)self _responseThumbnailGenerator];
  v9 = [_responseThumbnailGenerator newBGRAImageInOrientation:orientation usingSurface:stillImageFilteredPreviewSurface];

  v10 = objc_alloc(MEMORY[0x1E69DCAB8]);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v12 = [v10 initWithCGImage:v9 scale:0 orientation:?];

  CGImageRelease(v9);

  return v12;
}

- (BOOL)initiateCTMCaptureWithSettings:(id)settings error:(id *)error
{
  settingsCopy = settings;
  v7 = [(CUCaptureController *)self _canBeginCaptureCheckAvailability:1 error:error];
  if (v7)
  {
    persistenceUUID = [settingsCopy persistenceUUID];
    [(CUCaptureController *)self _startCaptureSignpostIntervalForPersistenceUUID:persistenceUUID];

    v9 = [(CUCaptureController *)self _sanitizeStillImageRequest:settingsCopy];
    v10 = [[CAMCTMInitiateCaptureCommand alloc] initWithSettings:v9];
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    [_captureEngine enqueueCommand:v10];
  }

  return v7;
}

- (void)endCTMVideoCapture
{
  _capturingCTMVideoRequest = [(CUCaptureController *)self _capturingCTMVideoRequest];
  if (_capturingCTMVideoRequest)
  {
    [(CUCaptureController *)self _setCapturingCTMVideoRequest:0];
    persistenceUUID = [_capturingCTMVideoRequest persistenceUUID];
    v5 = [[CAMCTMEndCaptureCommand alloc] initWithPersistenceUUID:persistenceUUID];
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    [_captureEngine enqueueCommand:v5];
  }

  else
  {
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Cannot stop CTM video recording: no capture request found", v8, 2u);
    }
  }
}

- (void)cancelCTMCaptureForSettings:(id)settings
{
  if (settings)
  {
    persistenceUUID = [settings persistenceUUID];
    v4 = [[CAMCTMCancelMomentCaptureCommand alloc] initWithPersistenceUUID:persistenceUUID];
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    [_captureEngine enqueueCommand:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController cancelCTMCaptureForSettings:];
    }
  }
}

- (id)_sanitizeStillImageRequest:(id)request
{
  requestCopy = request;
  v5 = [requestCopy mutableCopy];
  if (!self->_capturingTimelapse)
  {
    _motionController = [(CUCaptureController *)self _motionController];
    [v5 setCaptureOrientation:{objc_msgSend(_motionController, "captureOrientation")}];
  }

  if ([(CUCaptureController *)self isCapturingBurst])
  {
    [v5 setFlashMode:0];
    [v5 setHdrMode:0];
    [v5 setIrisMode:0];
    [v5 setPhotoQualityPrioritization:0];
    [v5 setWantsAutoDualCameraFusion:0];
    v7 = +[CAMCaptureCapabilities capabilities];
    v8 = [v7 isBurstSupportedForMode:objc_msgSend(v5 device:{"captureMode"), objc_msgSend(v5, "captureDevice")}];

    if (v8)
    {
      _burstController = [(CUCaptureController *)self _burstController];
      currentBurstIdentifier = [_burstController currentBurstIdentifier];
      [v5 setBurstIdentifier:currentBurstIdentifier];

      [v5 setDeferredPersistenceOptions:2];
    }
  }

  if ([(CUCaptureController *)self isCapturingVideo])
  {
    [v5 setFlashMode:0];
    [v5 setHdrMode:0];
    [v5 setIrisMode:0];
    [v5 setPhotoQualityPrioritization:{-[CUCaptureController isCapturingCTMVideo](self, "isCapturingCTMVideo") ^ 1}];
    [v5 setPhotoEncodingBehavior:0];
  }

  _irisVideoController = [(CUCaptureController *)self _irisVideoController];
  v12 = [_irisVideoController shouldHandleLivePhotoRenderingForRequest:v5];

  shouldPersistToIncomingDirectory = [v5 shouldPersistToIncomingDirectory];
  Current = CFAbsoluteTimeGetCurrent();
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v16 = [requestCopy irisMode] - 3;
  v17 = [v5 irisVideoPersistenceUUIDForEV0:0];
  v18 = [requestCopy irisLocalVideoDestinationURLForEV0:0];
  v19 = v18;
  if (v16 >= 0xFFFFFFFFFFFFFFFELL && !v18)
  {
    if (v12)
    {
      [CAMIrisDiskUtilities videoDestinationPathForStillImageRequest:v5 captureTime:0 isEV0ForHDR:bundleIdentifier bundleIdentifier:Current];
    }

    else
    {
      [CAMPersistenceController uniquePathForAssetWithUUID:v17 captureTime:@"MOV" extension:shouldPersistToIncomingDirectory usingIncomingDirectory:Current];
    }
    v20 = ;
    v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:v20];
    [v5 setLocalVideoDestinationURL:v19];
  }

  v21 = [v5 irisVideoPersistenceUUIDForEV0:1];
  v22 = [requestCopy irisLocalVideoDestinationURLForEV0:1];
  v23 = v22;
  if (v16 >= 0xFFFFFFFFFFFFFFFELL && !v22)
  {
    v24 = v17;
    if (v12)
    {
      [CAMIrisDiskUtilities videoDestinationPathForStillImageRequest:v5 captureTime:1 isEV0ForHDR:bundleIdentifier bundleIdentifier:Current];
    }

    else
    {
      [CAMPersistenceController uniquePathForAssetWithUUID:v21 captureTime:@"MOV" extension:shouldPersistToIncomingDirectory usingIncomingDirectory:Current];
    }
    v25 = ;
    v23 = [MEMORY[0x1E695DFF8] fileURLWithPath:v25];
    [v5 setEV0LocalVideoDestinationURL:v23];

    v17 = v24;
  }

  if ([requestCopy isCTMVideo])
  {
    localCTMVideoDestinationURL = [requestCopy localCTMVideoDestinationURL];
    if (!localCTMVideoDestinationURL)
    {
      v34 = v17;
      v27 = CFAbsoluteTimeGetCurrent();
      persistenceUUID = [v5 persistenceUUID];
      if (v12)
      {
        v29 = persistenceUUID;
        [CAMIrisDiskUtilities videoDestinationPathForStillImageRequest:v5 captureTime:0 isEV0ForHDR:bundleIdentifier bundleIdentifier:v27];
      }

      else
      {
        v29 = persistenceUUID;
        [CAMPersistenceController uniquePathForAssetWithUUID:persistenceUUID captureTime:@"MOV" extension:shouldPersistToIncomingDirectory usingIncomingDirectory:v27];
      }
      v30 = ;
      localCTMVideoDestinationURL = [MEMORY[0x1E695DFF8] fileURLWithPath:{v30, v34}];
      [v5 setLocalCTMVideoDestinationURL:localCTMVideoDestinationURL];

      v17 = v35;
    }
  }

  if (![v5 assertionIdentifier])
  {
    _powerController = [(CUCaptureController *)self _powerController];
    [v5 setAssertionIdentifier:{objc_msgSend(_powerController, "generateAssertionIdentifier")}];
  }

  v32 = [v5 copy];

  return v32;
}

- (BOOL)captureStillImageWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v13 = 0;
  v7 = [(CUCaptureController *)self _internalCaptureStillImageWithRequest:requestCopy error:&v13];
  v8 = v13;
  if (!v7)
  {
    persistenceUUID = [requestCopy persistenceUUID];
    [(CUCaptureController *)self _endCaptureSignpostIntervalForPersistenceUUID:persistenceUUID];

    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController captureStillImageWithRequest:requestCopy error:v8];
    }
  }

  if (error)
  {
    v11 = v8;
    *error = v8;
  }

  return v7;
}

- (BOOL)_canBeginCaptureCheckAvailability:(BOOL)availability error:(id *)error
{
  if (availability && ![(CUCaptureController *)self isCaptureAvailable])
  {
    if (error)
    {
      v6 = -22100;
      goto LABEL_14;
    }

    return 0;
  }

  if ([(CUCaptureController *)self _isFailedConfigurationPreventingCapture])
  {
    if (error)
    {
      v6 = -22102;
LABEL_14:
      v7 = CAMCaptureControllerError(v6, 0);
      v8 = v7;
      result = 0;
      *error = v7;
      return result;
    }

    return 0;
  }

  if (![(CUCaptureController *)self _didCompleteInitialConfiguration])
  {
    if (error)
    {
      v6 = -22103;
      goto LABEL_14;
    }

    return 0;
  }

  if ([(CUCaptureController *)self isInterrupted])
  {
    if (error)
    {
      v6 = -22101;
      goto LABEL_14;
    }

    return 0;
  }

  return 1;
}

- (BOOL)_internalCaptureStillImageWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v7 = [(CUCaptureController *)self _canBeginCaptureCheckAvailability:1 error:error];
  if (v7)
  {
    v8 = [(CUCaptureController *)self _sanitizeStillImageRequest:requestCopy];

    array = [MEMORY[0x1E695DF70] array];
    if ([v8 isCTMVideo])
    {
      [(CUCaptureController *)self _setCapturingCTMVideoRequest:v8];
      v10 = [(CAMCaptureCommand *)[CAMUpdateFocusAndExposureForStartVideoRecordingCommand alloc] initWithSubcommands:0];
      [array addObject:v10];
      if ([(CUCaptureController *)self _shouldLockWhiteBalanceForCTMVideoRequest:v8])
      {
        v11 = [[CAMWhiteBalanceCommand alloc] initWithWhiteBalanceMode:0];
        [array addObject:v11];
      }
    }

    else if ([v8 nightMode])
    {
      [(CUCaptureController *)self _setCapturingNightModeStillImageRequest:v8];
    }

    v12 = [[CAMStillImageCaptureCommand alloc] initWithRequest:v8];
    [array addObject:v12];
    v13 = [[CAMCaptureCommand alloc] initWithSubcommands:array];
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    [_captureEngine enqueueCommand:v13];
    _powerController = [(CUCaptureController *)self _powerController];
    [_powerController addAssertionForIndentifier:objc_msgSend(v8 withReason:{"assertionIdentifier"), 1}];
    burstIdentifier = [v8 burstIdentifier];

    if (burstIdentifier)
    {
      _burstController = [(CUCaptureController *)self _burstController];
      [_burstController processEnqueuedRequest:v8];
    }

    [(CUCaptureController *)self _updateMaximumNumberOfStillImageRequestsAfterEnqueuingRequest:v8];
    [(CUCaptureController *)self _updateAvailabilityAfterEnqueuedRequest:v8];
  }

  else
  {
    v8 = requestCopy;
  }

  return v7;
}

- (void)resumeCapturingStillImagePairedVideo
{
  _needsInitialPairedVideoUpdate = [(CUCaptureController *)self _needsInitialPairedVideoUpdate];
  if ([(CUCaptureController *)self _isCapturingPairedVideoPaused]|| _needsInitialPairedVideoUpdate)
  {
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    v5 = [[CAMPausePairedVideoRecordingCommand alloc] initWithRecordingPaused:0];
    [_captureEngine enqueueCommand:v5];
    [(CUCaptureController *)self _setCapturingPairedVideoPaused:0];
    [(CUCaptureController *)self _setNeedsInitialPairedVideoUpdate:0];
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Resumed live photo video capture", v7, 2u);
    }
  }
}

- (void)prepareToCaptureStillImageAtSystemTime:(int64_t)time
{
  v5 = [[CAMPrepareStillImageCaptureCommand alloc] initWithSystemTime:time];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v5];
}

- (void)prepareDeferredProcessingWithStillImageRequest:(id)request
{
  requestCopy = request;
  _deferredProcessingCoordinator = [(CUCaptureController *)self _deferredProcessingCoordinator];
  if (!_deferredProcessingCoordinator)
  {
    _deferredProcessingCoordinator = objc_alloc_init(MEMORY[0x1E69BE2E8]);
    [(CUCaptureController *)self _setDeferredProcessingCoordinator:?];
  }

  v5 = [[CAMPrepareDeferredProcessingCommand alloc] initWithRequest:requestCopy coordinator:_deferredProcessingCoordinator];

  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v5];
}

- (void)preparePhotoOutputForExpectedPhotoResolution:(int64_t)resolution
{
  if (![(CUCaptureController *)self isCapturingBurst])
  {
    v6 = [[CAMUltraHighResolutionZeroShutterLagEnabledCommand alloc] initWithEnabled:resolution == 3];
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    [_captureEngine enqueueCommand:v6];
  }
}

- (void)changeToSmartFramingFieldOfView:(int64_t)view mode:(int64_t)mode videoConfiguration:(int64_t)configuration devicePosition:(int64_t)position
{
  v8 = [[CAMDynamicAspectRatioCommand alloc] initWithSmartFramingFieldOfView:view videoDynamicAspectRatio:0 mode:mode videoConfiguration:configuration devicePosition:position];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v8];
}

- (void)setAutoSmartFramingEnabledFieldOfViews:(id)views
{
  viewsCopy = views;
  v6 = [[CAMAutoSmartFramingEnabledFieldOfViewsCommand alloc] initWithSmartFramingEnabledFieldOfViews:viewsCopy];

  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v6];
}

- (void)setSmartFramingMonitorEnabled:(BOOL)enabled
{
  v5 = [[CAMAutoSmartFramingMonitorCommand alloc] initWithSmartFramingMonitorEnabled:enabled];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v5];
}

- (void)stillImageRequestWillStartCapturingVideo:(id)video
{
  videoCopy = video;
  [videoCopy isCTMVideo];
  v5 = [(CUCaptureController *)self _identifierForPendingVideoForStillImageRequest:videoCopy];
  if ([videoCopy shouldProtectPersistenceForVideo])
  {
    _protectionController = [(CUCaptureController *)self _protectionController];
    [_protectionController startProtectingPersistenceForRequest:videoCopy];
  }

  _protectionController2 = [(CUCaptureController *)self _protectionController];
  [_protectionController2 startProtectingNebulaDaemonWritesForIdentifier:v5];

  v8 = v5;
  pl_dispatch_async();
}

uint64_t __64__CUCaptureController_stillImageRequestWillStartCapturingVideo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 _beginTrackingCTMVideoRecordingForIdentifier:v4];
  }

  else
  {
    return [v3 _beginTrackingLivePhotoVideoRecordingForIdentifier:v4];
  }
}

- (void)stillImageRequestDidBeginCaptureBeforeResolvingSettings:(id)settings
{
  settingsCopy = settings;
  v3 = settingsCopy;
  pl_dispatch_async();
}

void __79__CUCaptureController_stillImageRequestDidBeginCaptureBeforeResolvingSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 stillImageRequestDidBeginCaptureBeforeResolvingSettings:*(a1 + 32)];
  }
}

- (void)stillImageRequestDidStartCapturing:(id)capturing resolvedSettings:(id)settings
{
  capturingCopy = capturing;
  settingsCopy = settings;
  v5 = settingsCopy;
  v6 = capturingCopy;
  pl_dispatch_async();
}

void __75__CUCaptureController_stillImageRequestDidStartCapturing_resolvedSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 stillImageRequestDidStartCapturing:*(a1 + 32) resolvedSettings:*(a1 + 40)];
  }
}

- (void)stillImageRequestDidStopCapturingStillImage:(id)image
{
  imageCopy = image;
  v3 = imageCopy;
  pl_dispatch_async();
}

void __67__CUCaptureController_stillImageRequestDidStopCapturingStillImage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _scheduleFocusAndExposureResetAfterCaptureIfNecessaryForType:0];
  v2 = [*(a1 + 40) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 stillImageRequestDidStopCapturingStillImage:*(a1 + 40)];
  }
}

- (void)stillImageRequestDidUnblockResponsiveCapture:(id)capture
{
  captureCopy = capture;
  v3 = captureCopy;
  pl_dispatch_async();
}

uint64_t __68__CUCaptureController_stillImageRequestDidUnblockResponsiveCapture___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateAvailabilityAfterCapturedRequest:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateMaximumNumberOfStillImageRequestsAfterCapturedRequestIfNecessary:v3];
}

- (void)stillImageRequest:(id)request didCompleteStillImageCaptureWithResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  burstIdentifier = [requestCopy burstIdentifier];
  if (burstIdentifier)
  {
    [(CUCaptureController *)self _processCapturedBurstRequest:requestCopy withResult:resultCopy];
  }

  error = [resultCopy error];
  resultDelegate = [(CUCaptureController *)self resultDelegate];
  if (resultDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [resultDelegate captureController:self didGenerateStillImageCaptureResult:resultCopy fromRequest:requestCopy];
  }

  _capturingNightModeStillImageRequest = [(CUCaptureController *)self _capturingNightModeStillImageRequest];

  if (_capturingNightModeStillImageRequest == requestCopy)
  {
    pl_dispatch_async();
  }

  _responseQueue = [(CUCaptureController *)self _responseQueue];
  v16 = requestCopy;
  v17 = resultCopy;
  v13 = error;
  v14 = resultCopy;
  v15 = requestCopy;
  pl_dispatch_async();
}

void __80__CUCaptureController_stillImageRequest_didCompleteStillImageCaptureWithResult___block_invoke_2(id *a1)
{
  v28 = [a1[4] delegate];
  v26 = [a1[4] sessionIdentifier];
  v2 = [a1[4] burstIdentifier];
  if (v2)
  {
    v3 = [a1[5] _burstController];
    v25 = [v3 estimatedCountForIdentifier:v2];
  }

  else
  {
    v25 = 0;
  }

  v4 = +[CAMOrientationUtilities imageOrientationOfResult:withCaptureDevice:captureOrientation:](CAMOrientationUtilities, "imageOrientationOfResult:withCaptureDevice:captureOrientation:", a1[6], [a1[4] captureDevice], objc_msgSend(a1[4], "captureOrientation"));
  v27 = [a1[5] _thumbnailImageFromStillImageCaptureResult:a1[6] imageOrientation:v4];
  v5 = [a1[6] metadata];
  v6 = [a1[4] textAnalysisIdentifier];

  if (v6)
  {
    v7 = [a1[5] _textAnalysisImageFromStillImageResult:a1[6] imageOrientation:v4];
  }

  else
  {
    v7 = 0;
  }

  +[CAMAspectCropUtilities finalExpectedSizeWithPhotoMetadata:aspectRatio:](CAMAspectCropUtilities, "finalExpectedSizeWithPhotoMetadata:aspectRatio:", v5, [a1[4] aspectRatioCrop]);
  v9 = v8;
  v11 = v10;
  v12 = [a1[6] capturePhoto];
  v13 = [v12 resolvedSettings];
  v14 = [v13 uniqueID];

  v15 = [CAMStillImageCaptureResponse alloc];
  v16 = [a1[6] persistenceUUID];
  v17 = [a1[6] captureDate];
  [a1[6] metadata];
  v18 = v24 = v5;
  v19 = [a1[6] coordinationInfo];
  LOBYTE(v23) = [a1[6] isExpectingPairedVideo];
  v20 = -[CAMStillImageCaptureResponse initWithUUID:captureSession:captureDate:metadata:burstIdentifier:burstRepresentedCount:imageWellImage:textAnalysisImage:coordinationInfo:finalExpectedPixelSize:expectingPairedVideo:captureID:semanticEnhanceScene:](v15, "initWithUUID:captureSession:captureDate:metadata:burstIdentifier:burstRepresentedCount:imageWellImage:textAnalysisImage:coordinationInfo:finalExpectedPixelSize:expectingPairedVideo:captureID:semanticEnhanceScene:", v16, v26, v17, v18, v2, v25, v9, v11, v27, v7, v19, v23, v14, [a1[6] semanticEnhancement]);

  v29 = a1[4];
  v30 = a1[7];
  v21 = v20;
  v22 = v28;
  pl_dispatch_async();
}

uint64_t __80__CUCaptureController_stillImageRequest_didCompleteStillImageCaptureWithResult___block_invoke_3(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    return [v3 stillImageRequestDidCompleteStillImageCapture:v4 withResponse:v5 error:v6];
  }

  return result;
}

- (void)stillImageRequest:(id)request didStopCapturingLivePhotoVideoForCoordinationInfo:(id)info
{
  requestCopy = request;
  if ([info isFinalExpectedVideoResult])
  {
    v8 = [(CUCaptureController *)self _identifierForPendingVideoForStillImageRequest:requestCopy];
    v7 = v8;
    pl_dispatch_async();
  }
}

uint64_t __91__CUCaptureController_stillImageRequest_didStopCapturingLivePhotoVideoForCoordinationInfo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _endTrackingLivePhotoVideoRecordingForIdentifier:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _resetFocusAndExposureAfterCaptureForType:1];
}

- (void)stillImageRequest:(id)request didStopCapturingCTMVideoForCoordinationInfo:(id)info
{
  requestCopy = request;
  if ([info isFinalExpectedVideoResult])
  {
    v7 = [(CUCaptureController *)self _identifierForPendingVideoForStillImageRequest:requestCopy];
    v9 = requestCopy;
    v8 = v7;
    pl_dispatch_async();
  }
}

void __85__CUCaptureController_stillImageRequest_didStopCapturingCTMVideoForCoordinationInfo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _endTrackingCTMVideoRecordingForIdentifier:*(a1 + 40)];
  v5 = [(CAMCaptureCommand *)[CAMUpdateFocusAndExposureForStopVideoRecordingCommand alloc] initWithSubcommands:0];
  v2 = [*(a1 + 32) _captureEngine];
  [v2 enqueueCommand:v5];

  if ([*(a1 + 32) _shouldLockWhiteBalanceForCTMVideoRequest:*(a1 + 48)])
  {
    v3 = [[CAMWhiteBalanceCommand alloc] initWithMatchExposureMode];
    v4 = [*(a1 + 32) _captureEngine];
    [v4 enqueueCommand:v3];
  }

  [*(a1 + 32) _resetFocusAndExposureAfterCaptureForType:3];
}

- (void)stillImageRequest:(id)request didCompleteVideoCaptureWithResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  isCTMVideo = [requestCopy isCTMVideo];
  v9 = [(CUCaptureController *)self _identifierForPendingVideoForStillImageRequest:requestCopy];
  coordinationInfo = [resultCopy coordinationInfo];
  if ([coordinationInfo isFinalExpectedVideoResult])
  {
    _protectionController = [(CUCaptureController *)self _protectionController];
    [_protectionController stopProtectingNebulaDaemonWritesForIdentifier:v9];
  }

  if (isCTMVideo)
  {
    v21 = requestCopy;
    pl_dispatch_async();
  }

  error = [resultCopy error];

  if (error)
  {
    v13 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController stillImageRequest:resultCopy didCompleteVideoCaptureWithResult:?];
    }
  }

  resultDelegate = [(CUCaptureController *)self resultDelegate];
  if (resultDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [resultDelegate captureController:self didGenerateVideoCaptureResult:resultCopy fromRequest:requestCopy];
  }

  _responseQueue = [(CUCaptureController *)self _responseQueue];
  v19 = resultCopy;
  v20 = requestCopy;
  v16 = coordinationInfo;
  v17 = requestCopy;
  v18 = resultCopy;
  pl_dispatch_async();
}

uint64_t __75__CUCaptureController_stillImageRequest_didCompleteVideoCaptureWithResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _capturingCTMVideoRequest];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    [*(a1 + 32) _setCapturingCTMVideoRequest:0];
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _updateAvailabilityAfterCapturedRequest:v5];
}

void __75__CUCaptureController_stillImageRequest_didCompleteVideoCaptureWithResult___block_invoke_278(uint64_t a1)
{
  v2 = [*(a1 + 32) localDestinationURL];
  v3 = [*(a1 + 40) isEV0LocalVideoDestinationURL:v2];
  v4 = *(a1 + 40);
  if (*(a1 + 64) == 1)
  {
    [v4 persistenceUUID];
  }

  else
  {
    [v4 irisVideoPersistenceUUIDForEV0:v3];
  }
  v32 = ;
  v31 = [*(a1 + 40) irisStillImagePersistenceUUIDForEV0:v3];
  v30 = [*(a1 + 32) captureDate];
  v42 = 0uLL;
  v43 = 0;
  v5 = *(a1 + 32);
  if (v5 && ([v5 duration], v6 = *(a1 + 32), v40 = 0uLL, v41 = 0, v6))
  {
    [v6 stillDisplayTime];
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    v40 = 0uLL;
    v41 = 0;
  }

  v8 = [v7 reason];
  [*(a1 + 32) videoZoomFactor];
  v10 = v9;
  v11 = [*(a1 + 32) error];
  v12 = [*(a1 + 40) sessionIdentifier];
  v13 = [CAMOrientationUtilities imageOrientationForVideoRequest:*(a1 + 40)];
  v14 = 0;
  v15 = 0;
  if (*(a1 + 64) == 1 && !v11)
  {
    v16 = *(a1 + 48);
    v17 = *(a1 + 32);
    v39 = 0;
    v15 = [v16 _thumbnailImageFromVideoCaptureResult:v17 previewOrientation:v13 previewImage:&v39];
    v14 = v39;
  }

  +[CAMAspectCropUtilities finalExpectedSizeWithCaptureDimensions:orientation:aspectRatio:](CAMAspectCropUtilities, "finalExpectedSizeWithCaptureDimensions:orientation:aspectRatio:", [*(a1 + 32) dimensions], PLExifOrientationFromImageOrientation(), objc_msgSend(*(a1 + 40), "aspectRatioCrop"));
  v19 = v18;
  v21 = v20;
  v22 = [CAMVideoCaptureResponse alloc];
  v23 = [*(a1 + 40) captureMode];
  v24 = *(a1 + 56);
  v25 = [*(a1 + 32) slowWriterFrameDrops];
  v37 = v42;
  v38 = v43;
  v35 = v40;
  v36 = v41;
  LOBYTE(v29) = v25;
  v26 = [(CAMVideoCaptureResponse *)v22 initWithUUID:v32 captureMode:v23 captureSession:v12 url:v2 captureDate:v30 duration:&v37 stillPersistenceUUID:v10 stillDisplayTime:v19 reason:v21 videoZoomFactor:v31 finalExpectedPixelSize:&v35 imageWellImage:v8 previewImage:v15 coordinationInfo:v14 slowWriterFrameDrops:v24, v29];
  v33 = *(a1 + 40);
  v34 = v26;
  v27 = v11;
  v28 = v26;
  pl_dispatch_async();
}

uint64_t __75__CUCaptureController_stillImageRequest_didCompleteVideoCaptureWithResult___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 stillImageRequestDidCompleteVideoCapture:*(a1 + 32) withResponse:*(a1 + 40) error:*(a1 + 48)];
    }
  }

  return MEMORY[0x1EEE66C40]();
}

- (void)stillImageRequestDidCompleteCapture:(id)capture error:(id)error
{
  captureCopy = capture;
  errorCopy = error;
  v6 = errorCopy;
  v7 = captureCopy;
  pl_dispatch_async();
}

void __65__CUCaptureController_stillImageRequestDidCompleteCapture_error___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) assertionIdentifier];
  if (objc_opt_respondsToSelector())
  {
    [v4 stillImageRequestDidCompleteCapture:*(a1 + 32) error:*(a1 + 40)];
  }

  v3 = [*(a1 + 48) _powerController];
  [v3 removeAssertionForIdentifier:v2 withReason:1];
}

- (void)_beginTrackingLivePhotoVideoRecordingForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (identifierCopy)
  {
    _identifiersForActiveLivePhotoVideoCaptures = [(CUCaptureController *)self _identifiersForActiveLivePhotoVideoCaptures];
    v6 = [_identifiersForActiveLivePhotoVideoCaptures count];
    [_identifiersForActiveLivePhotoVideoCaptures addObject:identifierCopy];
    v7 = [_identifiersForActiveLivePhotoVideoCaptures count];
    if (!v6 && v7)
    {
      stillImageCapturingVideoDelegate = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      if (objc_opt_respondsToSelector())
      {
        [stillImageCapturingVideoDelegate stillImageRequestsWillStartCapturingLivePhotoVideo];
      }
    }
  }

  else
  {
    _identifiersForActiveLivePhotoVideoCaptures = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(_identifiersForActiveLivePhotoVideoCaptures, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController _beginTrackingLivePhotoVideoRecordingForIdentifier:];
    }
  }
}

- (void)_endTrackingLivePhotoVideoRecordingForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (identifierCopy)
  {
    _identifiersForActiveLivePhotoVideoCaptures = [(CUCaptureController *)self _identifiersForActiveLivePhotoVideoCaptures];
    v6 = [_identifiersForActiveLivePhotoVideoCaptures count];
    [_identifiersForActiveLivePhotoVideoCaptures removeObject:identifierCopy];
    v7 = [_identifiersForActiveLivePhotoVideoCaptures count];
    if (v6 && !v7)
    {
      stillImageCapturingVideoDelegate = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      if (objc_opt_respondsToSelector())
      {
        [stillImageCapturingVideoDelegate stillImageRequestsDidCompleteCapturingLivePhotoVideo];
      }
    }
  }

  else
  {
    _identifiersForActiveLivePhotoVideoCaptures = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(_identifiersForActiveLivePhotoVideoCaptures, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController _endTrackingLivePhotoVideoRecordingForIdentifier:];
    }
  }
}

- (BOOL)isCapturingLivePhotoVideo
{
  _identifiersForActiveLivePhotoVideoCaptures = [(CUCaptureController *)self _identifiersForActiveLivePhotoVideoCaptures];
  v3 = [_identifiersForActiveLivePhotoVideoCaptures count] != 0;

  return v3;
}

- (void)_beginTrackingCTMVideoRecordingForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (identifierCopy)
  {
    _identifiersForActiveCTMVideoCaptures = [(CUCaptureController *)self _identifiersForActiveCTMVideoCaptures];
    v6 = [_identifiersForActiveCTMVideoCaptures count];
    [_identifiersForActiveCTMVideoCaptures addObject:identifierCopy];
    if ([_identifiersForActiveCTMVideoCaptures count])
    {
      stillImageCapturingVideoDelegate = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      if (objc_opt_respondsToSelector())
      {
        [stillImageCapturingVideoDelegate stillImageRequestWillStartCapturingCTMVideoWithCaptureInFlight:v6 != 0];
      }
    }
  }

  else
  {
    _identifiersForActiveCTMVideoCaptures = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(_identifiersForActiveCTMVideoCaptures, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController _beginTrackingCTMVideoRecordingForIdentifier:];
    }
  }
}

- (void)_endTrackingCTMVideoRecordingForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (identifierCopy)
  {
    _identifiersForActiveCTMVideoCaptures = [(CUCaptureController *)self _identifiersForActiveCTMVideoCaptures];
    v6 = [_identifiersForActiveCTMVideoCaptures count];
    [_identifiersForActiveCTMVideoCaptures removeObject:identifierCopy];
    v7 = [_identifiersForActiveCTMVideoCaptures count];
    if (v6 && !v7)
    {
      stillImageCapturingVideoDelegate = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      if (objc_opt_respondsToSelector())
      {
        [stillImageCapturingVideoDelegate stillImageRequestsDidStopCapturingCTMVideo];
      }
    }
  }

  else
  {
    _identifiersForActiveCTMVideoCaptures = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(_identifiersForActiveCTMVideoCaptures, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController _endTrackingCTMVideoRecordingForIdentifier:];
    }
  }
}

- (BOOL)isCapturingCTMVideo
{
  _capturingCTMVideoRequest = [(CUCaptureController *)self _capturingCTMVideoRequest];
  v3 = _capturingCTMVideoRequest != 0;

  return v3;
}

- (void)_setCapturingCTMVideoRequest:(id)request
{
  requestCopy = request;
  if (self->__capturingCTMVideoRequest != requestCopy)
  {
    v15 = requestCopy;
    isCapturingCTMVideo = [(CUCaptureController *)self isCapturingCTMVideo];
    objc_storeStrong(&self->__capturingCTMVideoRequest, request);
    isCapturingCTMVideo2 = [(CUCaptureController *)self isCapturingCTMVideo];
    v8 = isCapturingCTMVideo2;
    if (!isCapturingCTMVideo2 || isCapturingCTMVideo)
    {
      if (isCapturingCTMVideo2 || !isCapturingCTMVideo)
      {
        goto LABEL_10;
      }

      stillImageCapturingVideoDelegate = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
        goto LABEL_10;
      }

      stillImageCapturingVideoDelegate2 = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      [stillImageCapturingVideoDelegate2 stillImageRequestsWillRequestCTMVideoCaptureEnd];
    }

    else
    {
      stillImageCapturingVideoDelegate3 = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      v10 = objc_opt_respondsToSelector();

      if ((v10 & 1) == 0)
      {
LABEL_10:
        _remoteShutterController = [(CUCaptureController *)self _remoteShutterController];
        [_remoteShutterController setCapturingVideo:v8];

        requestCopy = v15;
        goto LABEL_11;
      }

      stillImageCapturingVideoDelegate2 = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      [stillImageCapturingVideoDelegate2 stillImageRequestsWillRequestCTMVideoCaptureStart];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (BOOL)hasActiveCTMVideoCaptures
{
  _identifiersForActiveCTMVideoCaptures = [(CUCaptureController *)self _identifiersForActiveCTMVideoCaptures];
  v3 = [_identifiersForActiveCTMVideoCaptures count] != 0;

  return v3;
}

- (BOOL)isCapturingNightModeImage
{
  _capturingNightModeStillImageRequest = [(CUCaptureController *)self _capturingNightModeStillImageRequest];
  v3 = _capturingNightModeStillImageRequest != 0;

  return v3;
}

- (void)changeToNightMode:(int64_t)mode
{
  v5 = [[CAMNightModeCommand alloc] initWithNightMode:mode];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v5];
}

- (BOOL)isCapturingStandardVideo
{
  _capturingVideoRequest = [(CUCaptureController *)self _capturingVideoRequest];
  v3 = _capturingVideoRequest != 0;

  return v3;
}

- (id)_sanitizeVideoRequest:(id)request
{
  requestCopy = request;
  v5 = [requestCopy mutableCopy];
  _motionController = [(CUCaptureController *)self _motionController];
  [v5 setCaptureOrientation:{objc_msgSend(_motionController, "captureOrientation")}];
  localDestinationURL = [requestCopy localDestinationURL];
  if (!localDestinationURL)
  {
    Current = CFAbsoluteTimeGetCurrent();
    persistenceUUID = [v5 persistenceUUID];
    v10 = +[CAMPersistenceController uniquePathForAssetWithUUID:captureTime:extension:usingIncomingDirectory:](CAMPersistenceController, "uniquePathForAssetWithUUID:captureTime:extension:usingIncomingDirectory:", persistenceUUID, @"MOV", [v5 shouldPersistToIncomingDirectory], Current);
    localDestinationURL = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
    [v5 setLocalDestinationURL:localDestinationURL];
  }

  if ([MEMORY[0x1E69DC668] isRunningInStoreDemoMode])
  {
    [v5 setMaximumRecordedDuration:120.0];
  }

  v11 = +[CAMCaptureCapabilities capabilities];
  maximumRecordedFileSize = [v11 maximumRecordedFileSize];
  if (maximumRecordedFileSize >= 1)
  {
    v13 = maximumRecordedFileSize;
    if (maximumRecordedFileSize < [v5 maximumRecordedFileSize])
    {
      [v5 setMaximumRecordedFileSize:v13];
    }
  }

  freeDiskSpaceThreshold = [MEMORY[0x1E69BF208] freeDiskSpaceThreshold];
  remainingDiskUsageThreshold = [requestCopy remainingDiskUsageThreshold];
  if (freeDiskSpaceThreshold <= remainingDiskUsageThreshold)
  {
    v16 = remainingDiskUsageThreshold;
  }

  else
  {
    v16 = freeDiskSpaceThreshold;
  }

  [v5 setRemainingDiskUsageThreshold:v16];
  if (![v5 assertionIdentifier])
  {
    _powerController = [(CUCaptureController *)self _powerController];
    [v5 setAssertionIdentifier:{objc_msgSend(_powerController, "generateAssertionIdentifier")}];
  }

  v18 = [v5 copy];

  return v18;
}

- (void)_processPendingVideoCaptureRequest:(id)request
{
  v18[3] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  _locationController = [(CUCaptureController *)self _locationController];
  [_locationController setEnabled:0];
  v6 = -[CAMTorchCommand initWithTorchMode:]([CAMTorchCommand alloc], "initWithTorchMode:", [requestCopy torchMode]);
  v7 = +[CAMUserPreferences preferences];
  v8 = -[CAMVideoRecordingCameraSelectionBehaviorCommand initWithCameraSwitchingEnabled:]([CAMVideoRecordingCameraSelectionBehaviorCommand alloc], "initWithCameraSwitchingEnabled:", [v7 shouldDisableCameraSwitchingDuringVideoRecordingForMode:{objc_msgSend(requestCopy, "captureMode")}] ^ 1);
  v9 = [[CAMStartVideoRecordingCommand alloc] initWithRequest:requestCopy];
  v10 = objc_alloc(MEMORY[0x1E695DF70]);
  v18[0] = v6;
  v18[1] = v8;
  v18[2] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v12 = [v10 initWithArray:v11];

  if (([requestCopy trueVideoEnabled] & 1) == 0)
  {
    v13 = -[CUCaptureController _realtimeMetadataCommandsForMode:videoConfiguration:capturing:wantsMachineReadableCodes:wantsImageAnalysis:](self, "_realtimeMetadataCommandsForMode:videoConfiguration:capturing:wantsMachineReadableCodes:wantsImageAnalysis:", [requestCopy captureMode], objc_msgSend(requestCopy, "captureVideoConfiguration"), 1, 0, 0);
    [v12 insertObject:v13 atIndex:0];
  }

  if (-[CUCaptureController _shouldManageFocusForMode:](self, "_shouldManageFocusForMode:", [requestCopy captureMode]))
  {
    v14 = [(CAMCaptureCommand *)[CAMUpdateFocusAndExposureForStartVideoRecordingCommand alloc] initWithSubcommands:0];
    [v12 insertObject:v14 atIndex:0];
  }

  if ([(CUCaptureController *)self _shouldLockWhiteBalanceForVideoCaptureRequest:requestCopy])
  {
    v15 = [[CAMWhiteBalanceCommand alloc] initWithWhiteBalanceMode:0];
    [v12 insertObject:v15 atIndex:0];
  }

  v16 = [[CAMCaptureCommand alloc] initWithSubcommands:v12];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v16];
  [(CUCaptureController *)self _setPendingVideoCaptureRequest:0];
}

- (BOOL)startCapturingVideoWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v12 = 0;
  v7 = [(CUCaptureController *)self _internalStartCapturingVideoWithRequest:requestCopy error:&v12];
  v8 = v12;
  if (!v7)
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController startCapturingVideoWithRequest:requestCopy error:v8];
    }
  }

  if (error)
  {
    v10 = v8;
    *error = v8;
  }

  return v7;
}

- (BOOL)_internalStartCapturingVideoWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if ([(CUCaptureController *)self _canBeginCaptureCheckAvailability:0 error:error])
  {
    isCapturingStandardVideo = [(CUCaptureController *)self isCapturingStandardVideo];
    if (isCapturingStandardVideo)
    {
      if (error)
      {
        *error = CAMCaptureControllerError(-22100, 0);
      }

      v8 = requestCopy;
    }

    else
    {
      v8 = [(CUCaptureController *)self _sanitizeVideoRequest:requestCopy];

      [(CUCaptureController *)self _setPendingVideoCaptureRequest:v8];
      [(CUCaptureController *)self _setCapturingVideoRequest:v8];
      [(CUCaptureController *)self setWaitingForRecordingToStart:1];
      _powerController = [(CUCaptureController *)self _powerController];
      [_powerController addAssertionForIndentifier:objc_msgSend(v8 withReason:{"assertionIdentifier"), 2}];

      v11 = +[CAMCaptureCapabilities capabilities];
      if ((![v8 trueVideoEnabled] || objc_msgSend(v11, "isRegionalShutterSoundEnabled")) && -[CUCaptureController _shouldPlaySystemSound](self, "_shouldPlaySystemSound"))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __69__CUCaptureController__internalStartCapturingVideoWithRequest_error___block_invoke;
        v14[3] = &unk_1E76F7A38;
        *&v14[5] = Current;
        v14[4] = self;
        AudioServicesPlaySystemSoundWithCompletion(0x45Du, v14);
      }

      else
      {
        [(CUCaptureController *)self _didPlayBeginVideoRecordingSound];
      }

      [(CUCaptureController *)self _updateAvailabilityAfterEnqueuedRequest:v8];
    }

    v9 = !isCapturingStandardVideo;
    requestCopy = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __69__CUCaptureController__internalStartCapturingVideoWithRequest_error___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CFAbsoluteTimeGetCurrent() - *(a1 + 40);
  if (v2 > 0.1)
  {
    v3 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = v2;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Begin video recording sound took %.3f seconds", &v5, 0xCu);
    }
  }

  return [*(a1 + 32) _didPlayBeginVideoRecordingSound];
}

- (BOOL)_stopCapturingVideoAndDisableCaptureAvailabilityWhileStopping:(BOOL)stopping
{
  stoppingCopy = stopping;
  v19 = *MEMORY[0x1E69E9840];
  if ([(CUCaptureController *)self isCapturingStandardVideo])
  {
    _capturingVideoRequest = [(CUCaptureController *)self _capturingVideoRequest];
    if (stoppingCopy)
    {
      [(CUCaptureController *)self _setVideoCaptureAvailable:0];
      [(CUCaptureController *)self _updateAvailabilityWhenPreparingToStopCapturingForRequest:_capturingVideoRequest];
    }

    _pendingVideoCaptureRequest = [(CUCaptureController *)self _pendingVideoCaptureRequest];
    [(CUCaptureController *)self _resetCapturingVideoState];
    v7 = _pendingVideoCaptureRequest == 0;
    if (_pendingVideoCaptureRequest)
    {
      v8 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = _pendingVideoCaptureRequest;
        _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Stopped capturing a video before the recording sound finished playing; pending request: %{public}@", buf, 0xCu);
      }

      [(CUCaptureController *)self videoRequestDidStopCapturing:_pendingVideoCaptureRequest];
      v9 = CAMVideoCaptureRequestError(-28000, 0);
      v10 = [CAMVideoCaptureResult alloc];
      *buf = *MEMORY[0x1E6960C70];
      v18 = *(MEMORY[0x1E6960C70] + 16);
      v15 = *buf;
      v16 = v18;
      LOBYTE(v14) = 0;
      v11 = [(CAMVideoCaptureResult *)v10 initWithURL:0 filteredLocalDestinationURL:0 duration:buf stillDisplayTime:&v15 dimensions:0 metadata:0 videoZoomFactor:1.0 reason:0 videoPreviewPixelBuffer:0 coordinationInfo:0 error:v9 slowWriterFrameDrops:v14];
      [(CUCaptureController *)self videoRequest:_pendingVideoCaptureRequest didCompleteCaptureWithResult:v11];
    }

    else
    {
      v9 = objc_alloc_init(CAMStopVideoRecordingCommand);
      _captureEngine = [(CUCaptureController *)self _captureEngine];
      [_captureEngine enqueueCommand:v9];
    }
  }

  else
  {
    _capturingVideoRequest = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(_capturingVideoRequest, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, _capturingVideoRequest, OS_LOG_TYPE_DEFAULT, "Ignoring request to stop capturing video, because we aren't recording.", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)_setCapturingVideoRequest:(id)request
{
  requestCopy = request;
  if (self->__capturingVideoRequest != requestCopy)
  {
    v8 = requestCopy;
    objc_storeStrong(&self->__capturingVideoRequest, request);
    isCapturingVideo = [(CUCaptureController *)self isCapturingVideo];
    _remoteShutterController = [(CUCaptureController *)self _remoteShutterController];
    [_remoteShutterController setCapturingVideo:isCapturingVideo];

    requestCopy = v8;
  }
}

- (void)_resetCapturingVideoState
{
  [(CUCaptureController *)self _setPendingVideoCaptureRequest:0];
  [(CUCaptureController *)self _setCapturingVideoRequest:0];
  [(CUCaptureController *)self setWaitingForRecordingToStart:0];
  [(CUCaptureController *)self _setVideoCapturePaused:0];

  [(CUCaptureController *)self _setWaitingForVideoCapturePauseResume:0];
}

- (void)changeToVideoRecordingCaptureOrientation:(int64_t)orientation
{
  if (![(CUCaptureController *)self isCapturingVideo])
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring request to change the video recording capture orientation because we are not recording.", v8, 2u);
    }
  }

  if (orientation)
  {
    v6 = [[CAMSetVideoOrientationCommand alloc] initWithCaptureOrientation:orientation];
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    [_captureEngine enqueueCommand:v6];
  }
}

- (BOOL)pauseCapturingVideo
{
  if ([(CUCaptureController *)self isCapturingStandardVideo])
  {
    if ([(CUCaptureController *)self videoCapturePaused])
    {
      v3 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v4 = "Ignoring request to pause capturing video because we are already paused.";
        v5 = &v12;
LABEL_7:
        _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      }
    }

    else
    {
      if ([(CUCaptureController *)self waitingForRecordingToStart])
      {
        v3 = os_log_create("com.apple.camera", "Camera");
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        v11 = 0;
        v4 = "Ignoring request to pause capturing video because recording has not started.";
        v5 = &v11;
        goto LABEL_7;
      }

      if (![(CUCaptureController *)self _waitingForVideoCapturePauseResume])
      {
        v6 = 1;
        [(CUCaptureController *)self _setVideoCapturePaused:1];
        [(CUCaptureController *)self _setWaitingForVideoCapturePauseResume:1];
        v8 = objc_alloc_init(CAMPauseVideoRecordingCommand);
        _captureEngine = [(CUCaptureController *)self _captureEngine];
        [_captureEngine enqueueCommand:v8];

        return v6;
      }

      v3 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v4 = "Ignoring request to pause capture, request is already pending";
        v5 = &v10;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v3 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Ignoring request to pause capturing video because we aren't recording.";
      v5 = buf;
      goto LABEL_7;
    }
  }

LABEL_8:

  return 0;
}

- (BOOL)resumeCaptureVideo
{
  if ([(CUCaptureController *)self isCapturingStandardVideo])
  {
    if ([(CUCaptureController *)self videoCapturePaused])
    {
      if (![(CUCaptureController *)self _waitingForVideoCapturePauseResume])
      {
        [(CUCaptureController *)self _setVideoCapturePaused:0];
        v6 = 1;
        [(CUCaptureController *)self _setWaitingForVideoCapturePauseResume:1];
        v8 = objc_alloc_init(CAMResumeVideoRecordingCommand);
        _captureEngine = [(CUCaptureController *)self _captureEngine];
        [_captureEngine enqueueCommand:v8];

        return v6;
      }

      v3 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v4 = "Ignoring request to resume capture, request is already pending";
        v5 = &v10;
LABEL_10:
        _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      }
    }

    else
    {
      v3 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v4 = "Ignoring request to resume capturing video because we are not paused.";
        v5 = buf;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v3 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v4 = "Ignoring request to resume capturing video because we aren't recording.";
      v5 = &v12;
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t __55__CUCaptureController__didPlayBeginVideoRecordingSound__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _pendingVideoCaptureRequest];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 32) _processPendingVideoCaptureRequest:v2];
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (void)videoRequestDidStartCapturing:(id)capturing
{
  capturingCopy = capturing;
  if ([capturingCopy shouldProtectPersistence])
  {
    _protectionController = [(CUCaptureController *)self _protectionController];
    [_protectionController startProtectingPersistenceForRequest:capturingCopy];
    persistenceUUID = [capturingCopy persistenceUUID];
    [_protectionController startProtectingNebulaDaemonWritesForIdentifier:persistenceUUID];
  }

  v7 = capturingCopy;
  pl_dispatch_async();
}

uint64_t __53__CUCaptureController_videoRequestDidStartCapturing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _capturingVideoRequest];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    [*(a1 + 32) setWaitingForRecordingToStart:0];
  }

  v4 = [*(a1 + 40) delegate];
  if (v4)
  {
    v6 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v6 videoRequestDidStartCapturing:*(a1 + 40)];
    }
  }

  return MEMORY[0x1EEE66C30]();
}

- (void)videoRequestDidStopCapturing:(id)capturing
{
  capturingCopy = capturing;
  if ([capturingCopy shouldProtectPersistence])
  {
    persistenceUUID = [capturingCopy persistenceUUID];
    _protectionController = [(CUCaptureController *)self _protectionController];
    [_protectionController stopProtectingNebulaDaemonWritesForIdentifier:persistenceUUID];
  }

  v7 = capturingCopy;
  pl_dispatch_async();
}

void __52__CUCaptureController_videoRequestDidStopCapturing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _capturingVideoRequest];
  v3 = *(a1 + 40);
  v13 = v2;
  if (v2 == v3)
  {
    [*(a1 + 32) _resetCapturingVideoState];
    v3 = *(a1 + 40);
  }

  [*(a1 + 32) _updateAvailabilityAfterStopCapturingForRequest:v3];
  v4 = [*(a1 + 32) _captureEngine];
  if ([*(a1 + 32) _shouldManageFocusForMode:{objc_msgSend(*(a1 + 40), "captureMode")}])
  {
    v5 = [(CAMCaptureCommand *)[CAMUpdateFocusAndExposureForStopVideoRecordingCommand alloc] initWithSubcommands:0];
    [v4 enqueueCommand:v5];
    [*(a1 + 32) _scheduleFocusAndExposureResetAfterCaptureIfNecessaryForType:3];
  }

  if ([*(a1 + 32) _shouldLockWhiteBalanceForVideoCaptureRequest:*(a1 + 40)])
  {
    v6 = [[CAMWhiteBalanceCommand alloc] initWithMatchExposureMode];
    [v4 enqueueCommand:v6];
  }

  v7 = [*(a1 + 40) trueVideoEnabled];
  if ((v7 & 1) == 0)
  {
    v8 = [*(a1 + 32) _realtimeMetadataCommandsForMode:objc_msgSend(*(a1 + 40) videoConfiguration:"captureMode") capturing:objc_msgSend(*(a1 + 40) wantsMachineReadableCodes:"captureVideoConfiguration") wantsImageAnalysis:{0, 0, 0}];
    [v4 enqueueCommand:v8];
  }

  v9 = [*(a1 + 32) _locationController];
  [v9 setEnabled:1];
  v10 = +[CAMCaptureCapabilities capabilities];
  v11 = v10;
  if ((!v7 || [v10 isRegionalShutterSoundEnabled]) && objc_msgSend(*(a1 + 32), "_shouldPlaySystemSound"))
  {
    AudioServicesPlaySystemSound(0x45Eu);
  }

  v12 = [*(a1 + 40) delegate];
  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v12 videoRequestDidStopCapturing:*(a1 + 40)];
  }
}

- (void)videoRequest:(id)request didCompleteCaptureWithResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  v8 = requestCopy;
  pl_dispatch_async();
  resultDelegate = [(CUCaptureController *)self resultDelegate];
  if (resultDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [resultDelegate captureController:self didGenerateVideoCaptureResult:resultCopy fromRequest:v8];
  }

  _responseQueue = [(CUCaptureController *)self _responseQueue];
  v13 = resultCopy;
  v11 = v8;
  v12 = resultCopy;
  pl_dispatch_async();
}

void __65__CUCaptureController_videoRequest_didCompleteCaptureWithResult___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  if (v2)
  {
    v3 = 0;
    v29 = 0;
  }

  else
  {
    v4 = [CAMOrientationUtilities imageOrientationForVideoRequest:*(a1 + 40)];
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v40[0] = 0;
    v29 = [v5 _thumbnailImageFromVideoCaptureResult:v6 previewOrientation:v4 previewImage:v40];
    v3 = v40[0];
  }

  v28 = [*(a1 + 40) persistenceUUID];
  v27 = [*(a1 + 32) localDestinationURL];
  v7 = [*(a1 + 32) captureDate];
  v38 = 0uLL;
  v39 = 0;
  v8 = *(a1 + 32);
  if (v8 && ([v8 duration], v9 = *(a1 + 32), v36 = 0uLL, v37 = 0, v9))
  {
    [v9 stillDisplayTime];
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
    v36 = 0uLL;
    v37 = 0;
  }

  v11 = [v10 reason];
  [*(a1 + 32) videoZoomFactor];
  v13 = v12;
  v14 = [*(a1 + 40) sessionIdentifier];
  [CAMOrientationUtilities imageOrientationForVideoRequest:*(a1 + 40)];
  PLExifOrientationFromImageOrientation();
  [*(a1 + 32) dimensions];
  CAMSizeForDimensions();
  v16 = v15;
  v18 = v17;
  v19 = [CAMVideoCaptureResponse alloc];
  v20 = [*(a1 + 40) captureMode];
  v21 = [*(a1 + 32) coordinationInfo];
  v22 = [*(a1 + 32) slowWriterFrameDrops];
  v34 = v38;
  v35 = v39;
  v32 = v36;
  v33 = v37;
  LOBYTE(v26) = v22;
  v23 = [(CAMVideoCaptureResponse *)v19 initWithUUID:v28 captureMode:v20 captureSession:v14 url:v27 captureDate:v7 duration:&v34 stillPersistenceUUID:v13 stillDisplayTime:v16 reason:v18 videoZoomFactor:0 finalExpectedPixelSize:&v32 imageWellImage:v11 previewImage:v29 coordinationInfo:v3 slowWriterFrameDrops:v21, v26];

  v30 = *(a1 + 40);
  v31 = v23;
  v24 = v2;
  v25 = v23;
  pl_dispatch_async();
}

void __65__CUCaptureController_videoRequest_didCompleteCaptureWithResult___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 videoRequestDidCompleteCapture:*(a1 + 32) withResponse:*(a1 + 40) error:*(a1 + 48)];
  }

  v2 = [*(a1 + 56) _powerController];
  [v2 removeAssertionForIdentifier:objc_msgSend(*(a1 + 32) withReason:{"assertionIdentifier"), 2}];
}

- (void)videoRequestDidResumeCapturing:(id)capturing
{
  capturingCopy = capturing;
  v4 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "CAMCaptureController videoRequestDidResumeCapturing:", buf, 2u);
  }

  v5 = capturingCopy;
  pl_dispatch_async();
}

uint64_t __54__CUCaptureController_videoRequestDidResumeCapturing___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _waitingForVideoCapturePauseResume])
  {
    v2 = [*(a1 + 32) _capturingVideoRequest];
    v3 = *(a1 + 40);

    if (v2 == v3)
    {
      [*(a1 + 32) _setWaitingForVideoCapturePauseResume:0];
    }
  }

  v4 = [*(a1 + 40) delegate];
  if (v4)
  {
    v6 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v6 videoRequestDidResumeCapturing:*(a1 + 40)];
    }
  }

  return MEMORY[0x1EEE66C30]();
}

- (void)videoRequestDidPauseCapturing:(id)capturing
{
  capturingCopy = capturing;
  v4 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "CAMCaptureController videoRequestDidPauseCapturing:", buf, 2u);
  }

  v5 = capturingCopy;
  pl_dispatch_async();
}

void __53__CUCaptureController_videoRequestDidPauseCapturing___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _waitingForVideoCapturePauseResume])
  {
    v2 = [*(a1 + 32) _capturingVideoRequest];
    v3 = *(a1 + 40);

    if (v2 == v3)
    {
      v4 = *(a1 + 32);

      [v4 _setWaitingForVideoCapturePauseResume:0];
    }
  }
}

- (void)setMultiCamPictureInPictureMetrics:(id)metrics
{
  metricsCopy = metrics;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine setMultiCamPictureInPictureMetrics:metricsCopy];
}

- (id)_sanitizePanoramaRequest:(id)request
{
  v4 = [request mutableCopy];
  _motionController = [(CUCaptureController *)self _motionController];
  [v4 setCaptureOrientation:{objc_msgSend(_motionController, "panoramaCaptureOrientation")}];
  if (![v4 assertionIdentifier])
  {
    _powerController = [(CUCaptureController *)self _powerController];
    [v4 setAssertionIdentifier:{objc_msgSend(_powerController, "generateAssertionIdentifier")}];
  }

  v7 = [v4 copy];

  return v7;
}

- (BOOL)startCapturingPanoramaWithRequest:(id)request error:(id *)error
{
  v19[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if ([(CUCaptureController *)self _canBeginCaptureCheckAvailability:0 error:error])
  {
    isCapturingPanorama = [(CUCaptureController *)self isCapturingPanorama];
    if (isCapturingPanorama)
    {
      if (error)
      {
        *error = CAMCaptureControllerError(-22100, 0);
      }

      v8 = requestCopy;
    }

    else
    {
      v8 = [(CUCaptureController *)self _sanitizePanoramaRequest:requestCopy];

      [(CUCaptureController *)self _setCapturingPanoramaRequest:v8];
      if ([(CUCaptureController *)self _shouldPlaySystemSound])
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __63__CUCaptureController_startCapturingPanoramaWithRequest_error___block_invoke;
        v18[3] = &unk_1E76F77B0;
        v18[4] = self;
        AudioServicesPlaySystemSoundWithCompletion(0x45Du, v18);
      }

      _updateFocusAndExposureForStartPanorama = [(CUCaptureController *)self _updateFocusAndExposureForStartPanorama];
      v11 = [[CAMStartPanoramaCommand alloc] initWithRequest:v8];
      v12 = [CAMCaptureCommand alloc];
      v19[0] = _updateFocusAndExposureForStartPanorama;
      v19[1] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
      v14 = [(CAMCaptureCommand *)v12 initWithSubcommands:v13];

      _captureEngine = [(CUCaptureController *)self _captureEngine];
      [_captureEngine enqueueCommand:v14];
      _powerController = [(CUCaptureController *)self _powerController];
      [_powerController addAssertionForIndentifier:objc_msgSend(v8 withReason:{"assertionIdentifier"), 4}];
      [(CUCaptureController *)self _updateAvailabilityAfterEnqueuedRequest:v8];
    }

    v9 = !isCapturingPanorama;
    requestCopy = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_updateFocusAndExposureForStartPanorama
{
  v10[4] = *MEMORY[0x1E69E9840];
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  v2 = [[CAMSubjectAreaChangeMonitoringCommand alloc] initWithSubjectAreaChangeMonitoringEnabled:0];
  v3 = [[CAMFocusCommand alloc] initWithFocusMode:0];
  v4 = [[CAMExposureCommand alloc] initWithExposureMode:0];
  v5 = [[CAMWhiteBalanceCommand alloc] initWithWhiteBalanceMode:0];
  v6 = [CAMCaptureCommand alloc];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v8 = [(CAMCaptureCommand *)v6 initWithSubcommands:v7];

  return v8;
}

- (BOOL)stopCapturingPanoramaInterrupted:(BOOL)interrupted
{
  interruptedCopy = interrupted;
  isCapturingPanorama = [(CUCaptureController *)self isCapturingPanorama];
  if (isCapturingPanorama)
  {
    [(CUCaptureController *)self _setCapturingPanoramaRequest:0];
    if ([(CUCaptureController *)self _shouldPlaySystemSound])
    {
      AudioServicesPlaySystemSound(0x45Eu);
    }

    _captureEngine = [(CUCaptureController *)self _captureEngine];
    v7 = [[CAMStopPanoramaCommand alloc] initWithInterrupted:interruptedCopy];
    [_captureEngine enqueueCommand:v7];
  }

  return isCapturingPanorama;
}

- (void)changeToPanoramaDirection:(int64_t)direction
{
  v7 = [[CAMPanoramaDirectionCommand alloc] initWithDirection:direction];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  _remoteShutterController = [(CUCaptureController *)self _remoteShutterController];
  [_remoteShutterController setPanoramaDirection:direction];

  [_captureEngine enqueueCommand:v7];
}

- (void)changeToPanoramaEncodingBehavior:(int64_t)behavior
{
  v5 = [[CAMPanoramaEncodingCommand alloc] initWithPhotoEncodingBehavior:behavior];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v5];
}

- (void)panoramaRequestDidStartCapturing:(id)capturing
{
  capturingCopy = capturing;
  v3 = capturingCopy;
  pl_dispatch_async();
}

uint64_t __56__CUCaptureController_panoramaRequestDidStartCapturing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 panoramaRequestDidStartCapturing:*(a1 + 32)];
    }
  }

  return MEMORY[0x1EEE66C30]();
}

- (void)panoramaRequestDidStopCapturing:(id)capturing interrupted:(BOOL)interrupted
{
  capturingCopy = capturing;
  v4 = capturingCopy;
  pl_dispatch_async();
}

void __67__CUCaptureController_panoramaRequestDidStopCapturing_interrupted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _capturingPanoramaRequest];
  v3 = *(a1 + 40);
  v5 = v2;
  if (v2 == v3)
  {
    [*(a1 + 32) _setCapturingPanoramaRequest:0];
    v3 = *(a1 + 40);
  }

  [*(a1 + 32) _updateAvailabilityAfterStopCapturingForRequest:v3];
  [*(a1 + 32) _scheduleFocusAndExposureResetAfterCaptureIfNecessaryForType:4];
  v4 = [*(a1 + 40) delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 panoramaRequestDidStopCapturing:*(a1 + 40) interrupted:*(a1 + 48)];
  }
}

- (void)panoramaRequest:(id)request didCompleteCaptureWithResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  v12 = requestCopy;
  pl_dispatch_async();
  _responseQueue = [(CUCaptureController *)self _responseQueue];
  v11 = resultCopy;
  v9 = v12;
  v10 = resultCopy;
  pl_dispatch_async();
}

void __68__CUCaptureController_panoramaRequest_didCompleteCaptureWithResult___block_invoke_2(id *a1)
{
  v21 = [a1[4] error];
  v20 = [a1[5] delegate];
  [a1[5] assertionIdentifier];
  v2 = [a1[6] _thumbnailImageFromStillImageCaptureResult:a1[4] imageOrientation:{+[CAMOrientationUtilities imageOrientationOfResult:withCaptureDevice:captureOrientation:](CAMOrientationUtilities, "imageOrientationOfResult:withCaptureDevice:captureOrientation:", a1[4], objc_msgSend(a1[5], "captureDevice"), objc_msgSend(a1[5], "captureOrientation"))}];
  v3 = [a1[4] capturePhoto];
  v4 = [v3 resolvedSettings];
  v5 = [v4 uniqueID];

  v6 = [CAMStillImageCaptureResponse alloc];
  v7 = [a1[4] persistenceUUID];
  v8 = [a1[5] sessionIdentifier];
  v9 = [a1[4] captureDate];
  v10 = [a1[4] metadata];
  v11 = [a1[4] coordinationInfo];
  v12 = [a1[4] metadata];
  v13 = CAMSizeForPhotoMetadata(v12);
  LOBYTE(v19) = 0;
  v15 = -[CAMStillImageCaptureResponse initWithUUID:captureSession:captureDate:metadata:burstIdentifier:burstRepresentedCount:imageWellImage:textAnalysisImage:coordinationInfo:finalExpectedPixelSize:expectingPairedVideo:captureID:semanticEnhanceScene:](v6, "initWithUUID:captureSession:captureDate:metadata:burstIdentifier:burstRepresentedCount:imageWellImage:textAnalysisImage:coordinationInfo:finalExpectedPixelSize:expectingPairedVideo:captureID:semanticEnhanceScene:", v7, v8, v9, v10, 0, 0, v13, v14, v2, 0, v11, v19, v5, [a1[4] semanticEnhancement]);

  v22 = a1[5];
  v16 = v21;
  v17 = v15;
  v18 = v20;
  pl_dispatch_async();
}

void __68__CUCaptureController_panoramaRequest_didCompleteCaptureWithResult___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 32) panoramaRequestDidCompleteCapture:*(a1 + 40) withResponse:*(a1 + 48) error:*(a1 + 56)];
  }

  v2 = [*(a1 + 64) _powerController];
  [v2 removeAssertionForIdentifier:*(a1 + 72) withReason:4];
}

- (void)panoramaRequest:(id)request didReceiveNotification:(int64_t)notification
{
  requestCopy = request;
  v6 = requestCopy;
  if ((notification + 6001) <= 1)
  {
    v7 = requestCopy;
    pl_dispatch_async();
  }
}

void __62__CUCaptureController_panoramaRequest_didReceiveNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v2 panoramaRequest:*(a1 + 32) didStopWithReason:*(a1 + 48)];
  }

  [*(a1 + 40) stopCapturingPanoramaInterrupted:1];
}

- (void)panoramaConfigurationDidChangeWithImageQueue:(_CAImageQueue *)queue direction:(int64_t)direction
{
  if (queue)
  {
    CFRetain(queue);
  }

  pl_dispatch_async();
}

void __78__CUCaptureController_panoramaConfigurationDidChangeWithImageQueue_direction___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) panoramaPreviewView];
  [v4 setImageQueue:*(a1 + 40)];
  v2 = [*(a1 + 32) panoramaChangeDelegate];
  [v2 panoramaConfigurationDidChangeWithDirection:*(a1 + 48)];
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }
}

- (void)setBurstDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_burstDelegate, delegateCopy);
  _burstController = [(CUCaptureController *)self _burstController];
  [_burstController setBurstDelegate:delegateCopy];
}

- (unint64_t)currentBurstCount
{
  _burstController = [(CUCaptureController *)self _burstController];
  currentBurstCount = [_burstController currentBurstCount];

  return currentBurstCount;
}

- (BOOL)startCapturingBurstWithRequest:(id)request error:(id *)error
{
  v33[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v7 = [(CUCaptureController *)self _canBeginCaptureCheckAvailability:1 error:error];
  if (v7)
  {
    captureRequest = [requestCopy captureRequest];
    captureDevice = [captureRequest captureDevice];
    captureMode = [captureRequest captureMode];
    v11 = +[CAMCaptureCapabilities capabilities];
    v12 = [v11 isBurstSupportedForMode:captureMode device:captureDevice];
    _updateFocusAndExposureForStartBurstCapture = [(CUCaptureController *)self _updateFocusAndExposureForStartBurstCapture];
    v14 = [[CAMBlinkAndSmileDetectionCommand alloc] initWithBlinkDetection:1 smileDetection:1];
    v15 = [CAMCaptureCommand alloc];
    v30 = _updateFocusAndExposureForStartBurstCapture;
    v32 = v14;
    v33[0] = _updateFocusAndExposureForStartBurstCapture;
    v33[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v17 = [(CAMCaptureCommand *)v15 initWithSubcommands:v16];

    _captureEngine = [(CUCaptureController *)self _captureEngine];
    v31 = v17;
    [_captureEngine enqueueCommand:v17];
    v19 = v12;
    if (v12)
    {
      _burstController = [(CUCaptureController *)self _burstController];
      persistenceUUID = [captureRequest persistenceUUID];
      v22 = [_burstController startBurstCaptureWithPersistenceUUID:persistenceUUID];

      maximumBurstLength = [v11 maximumBurstLength];
      maximumBurstLength2 = [requestCopy maximumBurstLength];
      if (maximumBurstLength2 >= maximumBurstLength)
      {
        v25 = maximumBurstLength;
      }

      else
      {
        v25 = maximumBurstLength2;
      }

      if (maximumBurstLength2 > 0)
      {
        maximumBurstLength = v25;
      }
    }

    else
    {
      maximumBurstLength = [requestCopy maximumBurstLength];
    }

    [v11 captureIntervalForDevice:captureDevice];
    v27 = [[CAMCaptureRequestIntervalometer alloc] initWithDelegate:self interval:maximumBurstLength delay:v26 maximumCount:v26];
    [(CAMCaptureRequestIntervalometer *)v27 setPrototypeRequest:captureRequest];
    [(CAMCaptureRequestIntervalometer *)v27 startGeneratingRequests];
    [(CUCaptureController *)self _setCurrentBurstIntervalometer:v27];
    if (v19)
    {
      AudioServicesStartSystemSound();
    }

    burstDelegate = [(CUCaptureController *)self burstDelegate];
    if (burstDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [burstDelegate captureControllerWillStartCapturingBurst:self];
    }

    [(CAMCaptureRequestIntervalometer *)v27 manuallyGenerateRequest];
  }

  return v7;
}

- (id)_updateFocusAndExposureForStartBurstCapture
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [[CAMSubjectAreaChangeMonitoringCommand alloc] initWithSubjectAreaChangeMonitoringEnabled:0];
  v3 = +[CAMCaptureCapabilities capabilities];
  captureOnTouchDown = [v3 captureOnTouchDown];

  v5 = [[CAMFocusCommand alloc] initWithFocusMode:captureOnTouchDown];
  v6 = [CAMCaptureCommand alloc];
  v10[0] = v2;
  v10[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v8 = [(CAMCaptureCommand *)v6 initWithSubcommands:v7];

  return v8;
}

- (void)stopCapturingBurst
{
  if ([(CUCaptureController *)self isCapturingBurst])
  {
    currentBurstIntervalometer = [(CUCaptureController *)self currentBurstIntervalometer];
    prototypeRequest = [currentBurstIntervalometer prototypeRequest];
    captureDevice = [prototypeRequest captureDevice];
    v6 = +[CAMCaptureCapabilities capabilities];
    v7 = [v6 isBurstSupportedForMode:objc_msgSend(prototypeRequest device:{"captureMode"), captureDevice}];

    if (v7)
    {
      _burstController = [(CUCaptureController *)self _burstController];
      [_burstController finishBurstCaptureForDevice:captureDevice];

      [currentBurstIntervalometer stopGeneratingRequests];
      [(CUCaptureController *)self _setCurrentBurstIntervalometer:0];
      AudioServicesStopSystemSound();
      if ([(CUCaptureController *)self _shouldPlaySystemSound])
      {
        burstDelegate = [(CUCaptureController *)self burstDelegate];
        if (burstDelegate && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [burstDelegate captureControllerWillStartPlayingBurstEndSound:self];
        }

        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __41__CUCaptureController_stopCapturingBurst__block_invoke;
        v17 = &unk_1E76F7960;
        v18 = burstDelegate;
        selfCopy = self;
        v10 = burstDelegate;
        AudioServicesPlaySystemSoundWithCompletion(0x462u, &v14);
      }
    }

    else
    {
      [currentBurstIntervalometer stopGeneratingRequests];
      [(CUCaptureController *)self _setCurrentBurstIntervalometer:0];
    }

    [(CUCaptureController *)self _resetFocusAndExposureAfterCaptureForType:2, v14, v15, v16, v17];
    v11 = [[CAMBlinkAndSmileDetectionCommand alloc] initWithBlinkDetection:0 smileDetection:0];
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    [_captureEngine enqueueCommand:v11];
    burstDelegate2 = [(CUCaptureController *)self burstDelegate];
    if (burstDelegate2)
    {
      if (objc_opt_respondsToSelector())
      {
        [burstDelegate2 captureControllerDidStopCapturingBurst:self];
      }
    }
  }
}

void __41__CUCaptureController_stopCapturingBurst__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__CUCaptureController_stopCapturingBurst__block_invoke_2;
  v4[3] = &unk_1E76F7960;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

uint64_t __41__CUCaptureController_stopCapturingBurst__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);

      return [v3 captureControllerDidStopPlayingBurstEndSound:v4];
    }
  }

  return result;
}

- (void)_processCapturedBurstRequest:(id)request withResult:(id)result
{
  resultCopy = result;
  requestCopy = request;
  _burstController = [(CUCaptureController *)self _burstController];
  [_burstController processCapturedRequest:requestCopy withResult:resultCopy];
}

- (BOOL)intervalometer:(id)intervalometer didGenerateCaptureRequest:(id)request
{
  requestCopy = request;
  intervalometerCopy = intervalometer;
  currentBurstIntervalometer = [(CUCaptureController *)self currentBurstIntervalometer];

  v9 = currentBurstIntervalometer == intervalometerCopy && ![requestCopy type] && -[CUCaptureController captureStillImageWithRequest:error:](self, "captureStillImageWithRequest:error:", requestCopy, 0);
  return v9;
}

- (void)intervalometer:(id)intervalometer didReachMaximumCountWithRequest:(id)request
{
  v10 = *MEMORY[0x1E69E9840];
  intervalometerCopy = intervalometer;
  v6 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    maximumCount = [intervalometerCopy maximumCount];
    _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Reached maximum burst count: %ld", &v8, 0xCu);
  }

  AudioServicesStopSystemSound();
  burstDelegate = [(CUCaptureController *)self burstDelegate];
  if (burstDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [burstDelegate captureControllerDidReachMaximumBurstLength:self];
  }
}

- (void)changeToSmartStyle:(id)style
{
  styleCopy = style;
  v6 = [[CAMSessionSmartStyleCommand alloc] initWithSmartStyle:styleCopy];

  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v6];
}

- (void)setCapturingTimelapse:(BOOL)timelapse forDevicePosition:(int64_t)position
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (self->_capturingTimelapse != timelapse)
  {
    timelapseCopy = timelapse;
    self->_capturingTimelapse = timelapse;
    _shouldPlaySystemSound = [(CUCaptureController *)self _shouldPlaySystemSound];
    if (timelapseCopy)
    {
      if (_shouldPlaySystemSound)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __63__CUCaptureController_setCapturingTimelapse_forDevicePosition___block_invoke;
        v16[3] = &unk_1E76F77B0;
        v16[4] = self;
        AudioServicesPlaySystemSoundWithCompletion(0x45Du, v16);
      }
    }

    else
    {
      if (_shouldPlaySystemSound)
      {
        AudioServicesPlaySystemSound(0x45Eu);
      }

      _locationController = [(CUCaptureController *)self _locationController];
      [_locationController setEnabled:1];
      [(CUCaptureController *)self _scheduleFocusAndExposureResetAfterCaptureIfNecessaryForType:3];
    }

    _captureEngine = [(CUCaptureController *)self _captureEngine];
    initWithDefaultTimelapseCaptureRate = [[CAMTimelapseCaptureRateCommand alloc] initWithDefaultTimelapseCaptureRate];
    v11 = [[CAMImageControlModeCommand alloc] initWithCaptureMode:5 capturing:timelapseCopy];
    v12 = [(CUCaptureController *)self _realtimeMetadataCommandsForMode:5 videoConfiguration:0 capturing:self->_capturingTimelapse wantsMachineReadableCodes:0 wantsImageAnalysis:0];
    v13 = [[CAMUpdateCaptureButtonControlsCommand alloc] initWithRecording:timelapseCopy captureMode:5 devicePosition:position depthSuggestionEnabled:0];
    v17[0] = initWithDefaultTimelapseCaptureRate;
    v17[1] = v11;
    v17[2] = v12;
    v17[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
    [_captureEngine enqueueCommands:v14];

    _remoteShutterController = [(CUCaptureController *)self _remoteShutterController];
    [_remoteShutterController setCapturingTimelapse:timelapseCopy];
  }
}

- (void)changeToTimelapseCaptureRate:(float)rate
{
  v5 = [CAMTimelapseCaptureRateCommand alloc];
  *&v6 = rate;
  v8 = [(CAMTimelapseCaptureRateCommand *)v5 initWithTimelapseCaptureRate:v6];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v8];
}

- (void)notifyTimelapseControllerFinishedUpdatingWithLocation
{
  _locationController = [(CUCaptureController *)self _locationController];
  [_locationController setEnabled:0];
}

- (id)_commandForConfiguration:(id)configuration zoomFactor:(double)factor outputToExternalStorage:(BOOL)storage outRequestID:(int *)d
{
  storageCopy = storage;
  v23[3] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  _motionController = [(CUCaptureController *)self _motionController];
  v12 = +[CAMCaptureConfiguration captureGraphConfigurationUsingConfiguration:outputToExternalStorage:captureOrientation:](CAMCaptureConfiguration, "captureGraphConfigurationUsingConfiguration:outputToExternalStorage:captureOrientation:", configurationCopy, storageCopy, [_motionController captureOrientation]);

  mode = [v12 mode];
  torchMode = 0;
  if (mode > 7)
  {
    flashMode = 0;
  }

  else if (((1 << mode) & 0x51) != 0)
  {
    flashMode = [configurationCopy flashMode];
    torchMode = 0;
  }

  else
  {
    flashMode = 0;
    if (((1 << mode) & 0x86) != 0)
    {
      torchMode = [configurationCopy torchMode];
      flashMode = 0;
    }
  }

  v16 = [(CUCaptureController *)self _commandForChangeToGraphConfiguration:v12 zoomFactor:storageCopy minimumExecutionTime:d outputToExternalStorage:factor outRequestID:0.0];
  v17 = [[CAMFlashCommand alloc] initWithFlashMode:flashMode];
  v18 = [[CAMTorchCommand alloc] initWithTorchMode:torchMode];
  v19 = [CAMCaptureCommand alloc];
  v23[0] = v16;
  v23[1] = v17;
  v23[2] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v21 = [(CAMCaptureCommand *)v19 initWithSubcommands:v20];

  return v21;
}

- (id)_commandForChangeToGraphConfiguration:(id)configuration zoomFactor:(double)factor minimumExecutionTime:(double)time outputToExternalStorage:(BOOL)storage outRequestID:(int *)d
{
  storageCopy = storage;
  configurationCopy = configuration;
  v12 = +[CAMCaptureCapabilities capabilities];
  _uniqueRequestIDForChangeToModeAndDevice = [(CUCaptureController *)self _uniqueRequestIDForChangeToModeAndDevice];
  v14 = _uniqueRequestIDForChangeToModeAndDevice;
  if (d)
  {
    *d = _uniqueRequestIDForChangeToModeAndDevice;
  }

  mode = [configurationCopy mode];
  device = [configurationCopy device];
  if ([(CUCaptureController *)self isPreviewDisabled])
  {
    v85 = [CAMCaptureGraphConfiguration alloc];
    macroMode = [configurationCopy macroMode];
    videoConfiguration = [configurationCopy videoConfiguration];
    audioConfiguration = [configurationCopy audioConfiguration];
    mixAudioWithOthers = [configurationCopy mixAudioWithOthers];
    windNoiseRemovalEnabled = [configurationCopy windNoiseRemovalEnabled];
    previewSampleBufferVideoFormat = [configurationCopy previewSampleBufferVideoFormat];
    previewFilters = [configurationCopy previewFilters];
    videoThumbnailOutputConfiguration = [configurationCopy videoThumbnailOutputConfiguration];
    photoEncodingBehavior = [configurationCopy photoEncodingBehavior];
    videoEncodingBehavior = [configurationCopy videoEncodingBehavior];
    enableAutoFPSVideo = [configurationCopy enableAutoFPSVideo];
    isVideoHDRSuspended = [configurationCopy isVideoHDRSuspended];
    aspectRatioCrop = [configurationCopy aspectRatioCrop];
    photoQualityPrioritization = [configurationCopy photoQualityPrioritization];
    isCaptureMirrored = [configurationCopy isCaptureMirrored];
    enableRAWCaptureIfSupported = [configurationCopy enableRAWCaptureIfSupported];
    semanticStyleSupport = [configurationCopy semanticStyleSupport];
    previewSemanticStyle = [configurationCopy previewSemanticStyle];
    smartStyles = [configurationCopy smartStyles];
    enableContentAwareDistortionCorrection = [configurationCopy enableContentAwareDistortionCorrection];
    enableResponsiveShutter = [configurationCopy enableResponsiveShutter];
    suspendLivePhotoCapture = [configurationCopy suspendLivePhotoCapture];
    videoStabilizationStrength = [configurationCopy videoStabilizationStrength];
    maximumPhotoResolution = [configurationCopy maximumPhotoResolution];
    colorSpace = [configurationCopy colorSpace];
    isVideoBinned = [configurationCopy isVideoBinned];
    enableDepthSuggestion = [configurationCopy enableDepthSuggestion];
    enableZoomPIP = [configurationCopy enableZoomPIP];
    customLensGroup = [configurationCopy customLensGroup];
    trueVideoEnabled = [configurationCopy trueVideoEnabled];
    v18 = v14;
    v19 = v12;
    prefersHDR10BitVideo = [configurationCopy prefersHDR10BitVideo];
    BYTE2(v56) = [configurationCopy frontRearSimultaneousVideoEnabled];
    BYTE1(v56) = prefersHDR10BitVideo;
    v12 = v19;
    v14 = v18;
    LOBYTE(v56) = trueVideoEnabled;
    BYTE2(v55) = enableZoomPIP;
    BYTE1(v55) = enableDepthSuggestion;
    LOBYTE(v55) = isVideoBinned;
    BYTE2(v54) = suspendLivePhotoCapture;
    BYTE1(v54) = enableResponsiveShutter;
    LOBYTE(v54) = enableContentAwareDistortionCorrection;
    BYTE1(v53) = enableRAWCaptureIfSupported;
    LOBYTE(v53) = isCaptureMirrored;
    BYTE1(v52) = isVideoHDRSuspended;
    LOBYTE(v52) = enableAutoFPSVideo;
    LOBYTE(v51) = windNoiseRemovalEnabled;
    v21 = -[CAMCaptureGraphConfiguration initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:](v85, "initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:", mode, device, macroMode, videoConfiguration, audioConfiguration, mixAudioWithOthers, v51, 0, previewSampleBufferVideoFormat, previewFilters, videoThumbnailOutputConfiguration, photoEncodingBehavior, videoEncodingBehavior, v52, aspectRatioCrop, photoQualityPrioritization, v53, semanticStyleSupport, previewSemanticStyle, smartStyles, v54, videoStabilizationStrength, maximumPhotoResolution, colorSpace, v55, customLensGroup, v56, [configurationCopy videoDynamicAspectRatio], objc_msgSend(configurationCopy, "smartFramingFieldOfView"));

    configurationCopy = v21;
  }

  v86 = [[CAMModeAndDeviceCommand alloc] initWithGraphConfiguration:configurationCopy minimumExecutionTime:v14 requestID:storageCopy outputToExternalStorage:time];
  v22 = [MEMORY[0x1E695DF70] arrayWithObject:?];
  v84 = [[CAMSetVideoZoomFactorCommand alloc] initWithVideoZoomFactor:configurationCopy graphConfiguration:factor];
  [v22 addObject:?];
  if ([v12 dynamicAspectRatioSupported])
  {
    mode2 = [configurationCopy mode];
    device2 = [configurationCopy device];
    videoEncodingBehavior2 = [configurationCopy videoEncodingBehavior];
    selfCopy = self;
    videoConfiguration2 = [configurationCopy videoConfiguration];
    prefersHDR10BitVideo2 = [configurationCopy prefersHDR10BitVideo];
    LOBYTE(v51) = [configurationCopy frontRearSimultaneousVideoEnabled];
    v29 = [v12 resolvedVideoConfigurationForMode:mode2 device:device2 videoEncodingBehavior:videoEncodingBehavior2 videoConfiguration:videoConfiguration2 outputToExternalStorage:storageCopy prefersHDR10BitVideo:prefersHDR10BitVideo2 frontRearSimultaneousVideoEnabled:v51];
    v30 = [CAMDynamicAspectRatioCommand alloc];
    smartFramingFieldOfView = [configurationCopy smartFramingFieldOfView];
    videoDynamicAspectRatio = [configurationCopy videoDynamicAspectRatio];
    mode3 = [configurationCopy mode];
    devicePosition = [configurationCopy devicePosition];
    v35 = videoDynamicAspectRatio;
    self = selfCopy;
    v36 = [(CAMDynamicAspectRatioCommand *)v30 initWithSmartFramingFieldOfView:smartFramingFieldOfView videoDynamicAspectRatio:v35 mode:mode3 videoConfiguration:v29 devicePosition:devicePosition];
    [v22 addObject:v36];
  }

  if ([v12 isNightModeSupported])
  {
    v37 = -[CAMNightModeConfigurationCommand initWithNightModeEnabled:]([CAMNightModeConfigurationCommand alloc], "initWithNightModeEnabled:", [v12 isNightModeSupportedForMode:mode device:device zoomFactor:factor]);
    [v22 addObject:v37];
    v38 = [[CAMNightModeCommand alloc] initWithNightMode:0];
    [v22 addObject:v38];
  }

  v39 = -[CUCaptureController _realtimeMetadataCommandsForMode:videoConfiguration:capturing:wantsMachineReadableCodes:wantsImageAnalysis:](self, "_realtimeMetadataCommandsForMode:videoConfiguration:capturing:wantsMachineReadableCodes:wantsImageAnalysis:", mode, [configurationCopy videoConfiguration], 0, -[CUCaptureController _wantsMachineReadableCodesForGraphConfiguration:](self, "_wantsMachineReadableCodesForGraphConfiguration:", configurationCopy), -[CUCaptureController _wantsImageAnalysisForGraphConfiguration:](self, "_wantsImageAnalysisForGraphConfiguration:", configurationCopy));
  [v22 addObject:v39];
  if ([v12 focalLengthPickerSupported])
  {
    v40 = +[CAMUserPreferences preferences];
    customLensGroup2 = [v40 customLensGroup];
    videoConfiguration3 = [configurationCopy videoConfiguration];
    videoStabilizationStrength2 = [configurationCopy videoStabilizationStrength];
    v44 = v12;
    trueVideoEnabled2 = [configurationCopy trueVideoEnabled];
    LOBYTE(v51) = [configurationCopy frontRearSimultaneousVideoEnabled];
    v46 = trueVideoEnabled2;
    v12 = v44;
    v47 = [CAMZoomControlUtilities exifFocalLengthsByZoomFactorForMode:mode device:device videoConfiguration:videoConfiguration3 videoStabilizationStrength:videoStabilizationStrength2 customLensGroup:customLensGroup2 isTrueVideo:v46 frontRearSimultaneousVideoEnabled:v51];
    v48 = [[CAMSetExifFocalLengthsByZoomFactorCommand alloc] initWithExifFocalLengthsByZoomFactor:v47];
    [v22 addObject:v48];
  }

  v49 = [[CAMCaptureCommand alloc] initWithSubcommands:v22];

  return v49;
}

- (void)updateRealtimeMetadataConfigurationForGraphConfiguration:(id)configuration isCapturing:(BOOL)capturing
{
  capturingCopy = capturing;
  configurationCopy = configuration;
  v7 = [(CUCaptureController *)self _wantsMachineReadableCodesForGraphConfiguration:configurationCopy];
  v8 = [(CUCaptureController *)self _wantsImageAnalysisForGraphConfiguration:configurationCopy];
  mode = [configurationCopy mode];
  videoConfiguration = [configurationCopy videoConfiguration];

  v12 = [(CUCaptureController *)self _realtimeMetadataCommandsForMode:mode videoConfiguration:videoConfiguration capturing:capturingCopy wantsMachineReadableCodes:v7 wantsImageAnalysis:v8];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v12];
}

- (id)_realtimeMetadataCommandsForMode:(int64_t)mode videoConfiguration:(int64_t)configuration capturing:(BOOL)capturing wantsMachineReadableCodes:(BOOL)codes wantsImageAnalysis:(BOOL)analysis
{
  analysisCopy = analysis;
  codesCopy = codes;
  v22[2] = *MEMORY[0x1E69E9840];
  v12 = +[CAMCaptureCapabilities capabilities];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = v13;
  v15 = 1;
  if (mode <= 4)
  {
    if (mode > 2)
    {
      if (mode != 3)
      {
LABEL_14:
        if (codesCopy)
        {
          [v13 addObject:&unk_1F16C7F58];
          [v14 addObject:&unk_1F16C7F70];
        }

        if (!analysisCopy)
        {
          goto LABEL_24;
        }

        [v14 addObject:&unk_1F16C7F88];
        goto LABEL_21;
      }

      v15 = 0;
LABEL_21:
      analysisCopy = 0;
      goto LABEL_24;
    }

    if ((mode - 1) >= 2)
    {
      if (mode)
      {
        goto LABEL_28;
      }

      goto LABEL_14;
    }

LABEL_11:
    if (capturing)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  analysisCopy = 0;
  if (mode > 6)
  {
    if (mode != 7)
    {
      if (mode != 8)
      {
        if (mode != 9)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      }

      goto LABEL_11;
    }

    analysisCopy = 1;
LABEL_24:
    [v14 addObject:&unk_1F16C7F40];
    [v14 addObject:&unk_1F16C7FA0];
    [v14 addObject:&unk_1F16C7FB8];
    if (analysisCopy)
    {
      [v14 addObject:&unk_1F16C7FD0];
      [v14 addObject:&unk_1F16C7FE8];
      [v14 addObject:&unk_1F16C8000];
      [v14 addObject:&unk_1F16C8018];
      [v14 addObject:&unk_1F16C8030];
    }

    goto LABEL_26;
  }

  if (mode != 5)
  {
    goto LABEL_24;
  }

  v15 = 0;
LABEL_26:
  if ([v12 isExposureClippingIndicatorSupportedForMode:mode videoConfiguration:configuration])
  {
    [v14 addObject:&unk_1F16C8048];
  }

LABEL_28:
  v16 = [[CAMRealtimeMetadataCommand alloc] initWithTypes:v14];
  v17 = [[CAMFaceDrivenImageProcessingCommand alloc] initWithFaceDrivenImageProcessingEnabled:v15];
  v18 = [CAMCaptureCommand alloc];
  v22[0] = v16;
  v22[1] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v20 = [(CAMCaptureCommand *)v18 initWithSubcommands:v19];

  return v20;
}

- (BOOL)_wantsMachineReadableCodesForGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = +[CAMUserPreferences preferences];
  shouldShowQRBanners = [v4 shouldShowQRBanners];

  device = [configurationCopy device];
  return shouldShowQRBanners & ((device > 0xB) | (0xFDu >> device));
}

- (BOOL)_wantsImageAnalysisForGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = +[CAMUserPreferences preferences];
  isImageAnalysisEnabled = [v4 isImageAnalysisEnabled];

  v6 = +[CAMCaptureCapabilities capabilities];
  mode = [configurationCopy mode];
  devicePosition = [configurationCopy devicePosition];

  LOBYTE(configurationCopy) = [v6 isImageAnalysisSupportedForMode:mode devicePosition:devicePosition];
  return isImageAnalysisEnabled & configurationCopy;
}

- (int)changeToGraphConfiguration:(id)configuration zoomFactor:(double)factor minimumExecutionTime:(double)time outputToExternalStorage:(BOOL)storage
{
  storageCopy = storage;
  configurationCopy = configuration;
  if ([(CUCaptureController *)self isCapturingStandardVideo])
  {
    v11 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Changing graph configuration while capturing video or while waiting for video capture. Attempting to stop video.", buf, 2u);
    }

    [(CUCaptureController *)self _stopCapturingVideoAndDisableCaptureAvailabilityWhileStopping:0];
  }

  v16 = 0;
  v12 = [(CUCaptureController *)self _commandForChangeToGraphConfiguration:configurationCopy zoomFactor:storageCopy minimumExecutionTime:&v16 outputToExternalStorage:factor outRequestID:time];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v12];
  v14 = v16;

  return v14;
}

- (void)changeToFlashMode:(int64_t)mode
{
  v5 = [[CAMFlashCommand alloc] initWithFlashMode:mode];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v5];
}

- (void)changeToTorchMode:(int64_t)mode
{
  v5 = [[CAMTorchCommand alloc] initWithTorchMode:mode];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v5];
}

- (void)changeToTorchLevel:(float)level
{
  v5 = [CAMTorchCommand alloc];
  *&v6 = level;
  v8 = [(CAMTorchCommand *)v5 initWithTorchLevel:v6];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v8];
}

- (void)_handleCaptureEngineExecutionNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:@"CAMModeAndDeviceCommandDesiredConfiguration"];
  v6 = [userInfo objectForKey:@"CAMModeAndDeviceCommandResolvedConfiguration"];
  v7 = [userInfo objectForKey:@"CAMModeAndDeviceCommandRequestID"];
  v8 = v7;
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0)
  {
    goto LABEL_20;
  }

  [(CUCaptureController *)self _setDidCompleteInitialConfiguration:1];
  v11 = [userInfo objectForKey:@"CAMModeAndDeviceConfigurationError"];
  if (v11)
  {
    v12 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController _handleCaptureEngineExecutionNotification:];
    }

    domain = [v11 domain];
    v14 = [domain isEqualToString:@"CAMModeAndDeviceCommandCannotCaptureErrorDomain"];

    if (!v14)
    {
      goto LABEL_15;
    }

    selfCopy2 = self;
    v16 = 1;
  }

  else
  {
    selfCopy2 = self;
    v16 = 0;
  }

  [(CUCaptureController *)selfCopy2 _setFailedConfigurationPreventingCapture:v16];
LABEL_15:
  v17 = -[CUCaptureController _shouldManageFocusForMode:](self, "_shouldManageFocusForMode:", [v6 mode]);
  v18 = [(CUCaptureController *)self _commandForResetFocus:v17 resetExposure:1 resetExposureTargetBias:1 resetSecondaryDevice:0];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v18];
  if ([v6 frontRearSimultaneousVideoEnabled])
  {
    v20 = [(CUCaptureController *)self _commandForResetFocus:v17 resetExposure:1 resetExposureTargetBias:1 resetSecondaryDevice:1];
    [_captureEngine enqueueCommand:v20];
  }

  integerValue = [v8 integerValue];
  configurationDelegate = [(CUCaptureController *)self configurationDelegate];
  if (objc_opt_respondsToSelector())
  {
    [configurationDelegate captureController:self didChangeToGraphConfiguration:v6 forDesiredConfiguration:v5 requestID:integerValue];
  }

LABEL_20:
}

- (void)changeToPreviewDisabled
{
  if (!self->_previewDisabled)
  {
    self->_previewDisabled = 1;
    v5 = [[CAMPreviewConfigurationCommand alloc] initWithPreviewConfiguration:0];
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    [_captureEngine enqueueCommand:v5];
  }
}

- (void)changeToPreviewEnabledWithConfiguration:(unint64_t)configuration
{
  if (self->_previewDisabled)
  {
    self->_previewDisabled = 0;
    v6 = [[CAMPreviewConfigurationCommand alloc] initWithPreviewConfiguration:configuration];
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    [_captureEngine enqueueCommand:v6];
  }
}

- (void)changeToPreviewConfiguration:(unint64_t)configuration
{
  if (!self->_previewDisabled)
  {
    v6 = [[CAMPreviewConfigurationCommand alloc] initWithPreviewConfiguration:configuration];
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    [_captureEngine enqueueCommand:v6];
  }
}

- (void)changeToPreviewFilters:(id)filters captureMode:(int64_t)mode
{
  filtersCopy = filters;
  v7 = [[CAMPreviewFiltersCommand alloc] initWithFilters:filtersCopy captureMode:mode];

  [(CAMCaptureEngine *)self->__captureEngine enqueueCommand:v7];
}

- (void)changeToVideoHDRSuspended:(BOOL)suspended
{
  v5 = [[CAMVideoHDRSuspensionCommand alloc] initWithVideoHDRSuspended:suspended];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v5];
}

- (BOOL)shouldAllowUserToChangeFocusAndExposure
{
  if ([(CUCaptureController *)self isCapturingPanorama]|| [(CUCaptureController *)self isCapturingTimelapse])
  {
    return 0;
  }

  else
  {
    return ![(CUCaptureController *)self isCapturingBurst];
  }
}

- (BOOL)_shouldLockWhiteBalanceForActiveVideoRequest
{
  _capturingVideoRequest = [(CUCaptureController *)self _capturingVideoRequest];
  if ([(CUCaptureController *)self _shouldLockWhiteBalanceForVideoCaptureRequest:_capturingVideoRequest])
  {
    v4 = 1;
  }

  else
  {
    _capturingCTMVideoRequest = [(CUCaptureController *)self _capturingCTMVideoRequest];
    v4 = [(CUCaptureController *)self _shouldLockWhiteBalanceForCTMVideoRequest:_capturingCTMVideoRequest];
  }

  return v4;
}

- (BOOL)_shouldLockWhiteBalanceForCTMVideoRequest:(id)request
{
  requestCopy = request;
  v4 = requestCopy;
  if (requestCopy && [requestCopy isCTMVideo])
  {
    wantsWhiteBalanceLockedDuringVideoRecording = [v4 wantsWhiteBalanceLockedDuringVideoRecording];
  }

  else
  {
    wantsWhiteBalanceLockedDuringVideoRecording = 0;
  }

  return wantsWhiteBalanceLockedDuringVideoRecording;
}

- (BOOL)_shouldLockWhiteBalanceForVideoCaptureRequest:(id)request
{
  if (request)
  {
    return [request wantsWhiteBalanceLocked];
  }

  else
  {
    return 0;
  }
}

- (void)_resetFocusAndExposureIfAppropriateForReason:(int64_t)reason
{
  focusDelegate = [(CUCaptureController *)self focusDelegate];
  v13 = focusDelegate;
  if (focusDelegate && ![focusDelegate captureController:self shouldResetFocusAndExposureForReason:reason])
  {
    v10 = 0;
    v6 = 0;
  }

  else
  {
    if ([(CUCaptureController *)self isCapturingVideo])
    {
      v6 = 0;
    }

    else
    {
      v6 = [(CUCaptureController *)self isCapturingTimelapse]^ 1;
    }

    if (![(CUCaptureController *)self isCapturingVideo]|| (WeakRetained = objc_loadWeakRetained(&self->_exposureDelegate), v8 = objc_opt_respondsToSelector(), WeakRetained, (v8 & 1) == 0))
    {
      v10 = 1;
LABEL_11:
      v11 = [(CUCaptureController *)self _commandForResetFocus:v6 resetExposure:v10 resetExposureTargetBias:v10 resetSecondaryDevice:0];
      _captureEngine = [(CUCaptureController *)self _captureEngine];
      [_captureEngine enqueueCommand:v11];

      goto LABEL_14;
    }

    v9 = objc_loadWeakRetained(&self->_exposureDelegate);
    v10 = [v9 captureControllerUserHasAdjustedExposureTargetBiasFromBaseline:self] ^ 1;

    if (v6)
    {
      goto LABEL_11;
    }
  }

  if (v10)
  {
    goto LABEL_11;
  }

LABEL_14:
}

- (id)_commandForResetFocus:(BOOL)focus resetExposure:(BOOL)exposure resetExposureTargetBias:(BOOL)bias resetSecondaryDevice:(BOOL)device
{
  deviceCopy = device;
  biasCopy = bias;
  exposureCopy = exposure;
  focusCopy = focus;
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  if (!deviceCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_focusDelegate);
    [WeakRetained captureController:self willResetFocus:focusCopy exposure:exposureCopy];
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [[CAMSubjectAreaChangeMonitoringCommand alloc] initWithSubjectAreaChangeMonitoringEnabled:0 configureSecondaryDevice:deviceCopy];
  [v12 addObject:v13];
  if (focusCopy)
  {
    v22 = [[CAMFocusCommand alloc] initWithFocusMode:3 atPointOfInterest:0 rectSize:[(CUCaptureController *)self _useSmoothFocus] smooth:deviceCopy configureSecondaryDevice:0.5, 0.5];
    [v12 addObject:v22];

    if (!exposureCopy)
    {
LABEL_5:
      if (!biasCopy)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

  else if (!exposureCopy)
  {
    goto LABEL_5;
  }

  v23 = [[CAMExposureCommand alloc] initWithExposureMode:2 atPointOfInterest:deviceCopy configureSecondaryDevice:0.5, 0.5];
  [v12 addObject:v23];
  if (![(CUCaptureController *)self _shouldLockWhiteBalanceForActiveVideoRequest])
  {
    v24 = [[CAMWhiteBalanceCommand alloc] initWithWhiteBalanceMode:2 configureSecondaryDevice:deviceCopy];
    [v12 addObject:v24];
  }

  if (biasCopy)
  {
LABEL_6:
    exposureDelegate = [(CUCaptureController *)self exposureDelegate];
    [exposureDelegate baselineExposureValueForCaptureController:self];
    v16 = v15;

    if (deviceCopy)
    {
      v16 = 0.0;
    }

    v17 = [CAMExposureTargetBiasCommand alloc];
    *&v18 = v16;
    v19 = [(CAMExposureTargetBiasCommand *)v17 initWithExposureTargetBias:deviceCopy configureSecondaryDevice:v18];
    [v12 addObject:v19];
  }

LABEL_9:
  v20 = [[CAMCaptureCommand alloc] initWithSubcommands:v12];

  return v20;
}

- (void)focusAtPoint:(CGPoint)point lockFocus:(BOOL)focus rectSize:(int64_t)size
{
  focusCopy = focus;
  y = point.y;
  x = point.x;
  v18[2] = *MEMORY[0x1E69E9840];
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  _useSmoothFocus = [(CUCaptureController *)self _useSmoothFocus];
  isCapturingVideo = [(CUCaptureController *)self isCapturingVideo];
  if (focusCopy)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  v13 = [[CAMFocusCommand alloc] initWithFocusMode:v12 atPointOfInterest:size rectSize:_useSmoothFocus smooth:x, y];
  v14 = [[CAMSubjectAreaChangeMonitoringCommand alloc] initWithSubjectAreaChangeMonitoringEnabled:!isCapturingVideo];
  v18[0] = v13;
  v18[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v16 = [[CAMCaptureCommand alloc] initWithSubcommands:v15];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v16];
}

- (void)focusAndExposeAtPoint:(CGPoint)point lockFocus:(BOOL)focus rectSize:(int64_t)size resetExposureTargetBias:(BOOL)bias
{
  biasCopy = bias;
  focusCopy = focus;
  y = point.y;
  x = point.x;
  v28[2] = *MEMORY[0x1E69E9840];
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  _useSmoothFocus = [(CUCaptureController *)self _useSmoothFocus];
  if (focusCopy)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  v14 = [[CAMFocusCommand alloc] initWithFocusMode:v13 atPointOfInterest:size rectSize:_useSmoothFocus smooth:x, y];
  v15 = [[CAMExposureCommand alloc] initWithExposureMode:2 atPointOfInterest:x, y];
  v28[0] = v14;
  v28[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v17 = [v16 mutableCopy];

  if (![(CUCaptureController *)self _shouldLockWhiteBalanceForActiveVideoRequest])
  {
    v18 = [[CAMWhiteBalanceCommand alloc] initWithWhiteBalanceMode:2];
    [v17 addObject:v18];
  }

  if (biasCopy)
  {
    exposureDelegate = [(CUCaptureController *)self exposureDelegate];
    [exposureDelegate baselineExposureValueForCaptureController:self];
    v21 = v20;

    v22 = [CAMExposureTargetBiasCommand alloc];
    LODWORD(v23) = v21;
    v24 = [(CAMExposureTargetBiasCommand *)v22 initWithExposureTargetBias:v23];
    [v17 addObject:v24];
  }

  v25 = [[CAMSubjectAreaChangeMonitoringCommand alloc] initWithSubjectAreaChangeMonitoringEnabled:[(CUCaptureController *)self isCapturingVideo]^ 1];
  [v17 addObject:v25];

  v26 = [[CAMCaptureCommand alloc] initWithSubcommands:v17];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v26];
}

- (id)_commandForLockingExposureIncludingFocus:(BOOL)focus
{
  focusCopy = focus;
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = [[CAMExposureCommand alloc] initWithExposureMode:0];
  v15[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v7 = [v6 mutableCopy];

  if (![(CUCaptureController *)self _shouldLockWhiteBalanceForActiveVideoRequest])
  {
    isFlashActive = [(CUCaptureController *)self isFlashActive];
    v9 = [CAMWhiteBalanceCommand alloc];
    if (isFlashActive)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    v11 = [(CAMWhiteBalanceCommand *)v9 initWithWhiteBalanceMode:v10];
    [v7 addObject:v11];
  }

  if (focusCopy)
  {
    v12 = [[CAMFocusCommand alloc] initWithFocusMode:0];
    [v7 addObject:v12];
  }

  v13 = [[CAMCaptureCommand alloc] initWithSubcommands:v7];

  return v13;
}

- (void)changeToLockedExposure
{
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  v4 = [(CUCaptureController *)self _commandForLockingExposureIncludingFocus:0];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v4];
}

- (void)changeToLockedFocusAndExposure
{
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  v4 = [(CUCaptureController *)self _commandForLockingExposureIncludingFocus:1];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v4];
}

- (void)resetFocusAndExposure
{
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];

  [(CUCaptureController *)self _resetFocusAndExposureIfAppropriateForReason:3];
}

- (void)forceDisableSubjectAreaChangeMonitoring
{
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  v4 = [[CAMSubjectAreaChangeMonitoringCommand alloc] initWithSubjectAreaChangeMonitoringEnabled:0];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v4];
}

- (void)lockFocusAtLensPosition:(float)position completionBlock:(id)block
{
  blockCopy = block;
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  [(CUCaptureController *)self set_pendingLockFocusOnLensPositionCount:[(CUCaptureController *)self _pendingLockFocusOnLensPositionCount]+ 1];
  v7 = [CAMFocusLockWithLensPositionCommand alloc];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __63__CUCaptureController_lockFocusAtLensPosition_completionBlock___block_invoke;
  v15 = &unk_1E76FC248;
  selfCopy = self;
  v17 = blockCopy;
  v8 = blockCopy;
  *&v9 = position;
  v10 = [(CAMFocusLockWithLensPositionCommand *)v7 initWithLensPosition:&v12 completionBlock:v9];
  v11 = [(CUCaptureController *)self _captureEngine:v12];
  [v11 enqueueCommand:v10];
}

void __63__CUCaptureController_lockFocusAtLensPosition_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  pl_dispatch_async();
}

uint64_t __63__CUCaptureController_lockFocusAtLensPosition_completionBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) set_pendingLockFocusOnLensPositionCount:{objc_msgSend(*(a1 + 32), "_pendingLockFocusOnLensPositionCount") - 1}];
  if (([*(a1 + 32) isLockingFocusOnLensPosition] & 1) == 0)
  {
    v3 = [*(a1 + 32) lensPositionDelegate];
    v4 = *(a1 + 32);
    [v4 lastObservedLensPosition];
    [v3 captureController:v4 didOutputLensPosition:?];
  }

  result = *(a1 + 40);
  if (result)
  {
    v2.n128_u32[0] = *(a1 + 48);
    v6 = *(result + 16);

    return v6(v2);
  }

  return result;
}

- (void)focusAtCenterForVideoRecording
{
  if ([(CUCaptureController *)self isCapturingVideo])
  {
    focusDelegate = [(CUCaptureController *)self focusDelegate];
    v8 = focusDelegate;
    if (!focusDelegate || (v4 = [focusDelegate captureController:self shouldResetFocusAndExposureForReason:2], v5 = v8, v4))
    {
      v6 = objc_alloc_init(CAMFocusAtCenterForVideoRecordingCommand);
      _captureEngine = [(CUCaptureController *)self _captureEngine];
      [_captureEngine enqueueCommand:v6];

      v5 = v8;
    }

    MEMORY[0x1EEE66BB8](v4, v5);
  }
}

- (void)setCinematicFocusForMetadataObject:(id)object atPoint:(CGPoint)point useFixedOpticalFocus:(BOOL)focus useHardFocus:(BOOL)hardFocus
{
  hardFocusCopy = hardFocus;
  focusCopy = focus;
  y = point.y;
  x = point.x;
  objectCopy = object;
  v12 = [CAMCinematicFocusCommand alloc];
  v13 = [(CUCaptureController *)self _cinematicMetadataObjectIDForMetadataObject:objectCopy];

  v15 = [(CAMCinematicFocusCommand *)v12 initWithMetadataObjectID:v13 atPointOfInterest:focusCopy useFixedOpticalFocus:hardFocusCopy useHardFocus:x, y];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v15];
}

- (int64_t)_cinematicMetadataObjectIDForMetadataObject:(id)object
{
  if (object)
  {
    underlyingMetadataObject = [object underlyingMetadataObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      faceID = [underlyingMetadataObject faceID];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        faceID = [underlyingMetadataObject bodyID];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = os_log_create("com.apple.camera", "Camera");
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *v8 = 0;
            _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Cinematic: Trying to find ID for Cinematic focus for an unsupported metadata object", v8, 2u);
          }

          v5 = -1;
          goto LABEL_10;
        }

        faceID = [underlyingMetadataObject objectID];
      }
    }

    v5 = faceID;
LABEL_10:

    return v5;
  }

  return -1;
}

- (BOOL)_shouldResetFocusAndExposureAfterCapture
{
  if ([(CUCaptureController *)self isCapturingLivePhotoVideo]|| [(CUCaptureController *)self isCapturingStandardVideo]|| [(CUCaptureController *)self isCapturingBurst]|| [(CUCaptureController *)self isCapturingTimelapse])
  {
    return 0;
  }

  else
  {
    return ![(CUCaptureController *)self hasActiveCTMVideoCaptures];
  }
}

- (void)_scheduleFocusAndExposureResetAfterCaptureIfNecessaryForType:(int64_t)type
{
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  focusDelegate = [(CUCaptureController *)self focusDelegate];
  LODWORD(type) = [focusDelegate captureController:self shouldResetFocusAndExposureAfterCaptureForType:type];

  if (type)
  {
    if ([(CUCaptureController *)self _shouldResetFocusAndExposureAfterCapture])
    {
      WeakRetained = objc_loadWeakRetained(&self->_focusDelegate);
      v7 = objc_opt_respondsToSelector();

      if ((v7 & 1) != 0 && (v8 = objc_loadWeakRetained(&self->_focusDelegate), [v8 captureControllerDelayBeforeResettingFocusAndExposureAfterCapture:self], v10 = v9, v8, v10 > 0.0))
      {

        [(CUCaptureController *)self performSelector:sel__resetFocusAndExposureAfterCapture withObject:0 afterDelay:v10];
      }

      else
      {

        [(CUCaptureController *)self _resetFocusAndExposureAfterCapture];
      }
    }

    else
    {
      v11 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Not scheduling focus/exposure reset because still capturing", v12, 2u);
      }
    }
  }
}

- (void)_resetFocusAndExposureAfterCaptureForType:(int64_t)type
{
  focusDelegate = [(CUCaptureController *)self focusDelegate];
  LODWORD(type) = [focusDelegate captureController:self shouldResetFocusAndExposureAfterCaptureForType:type];

  if (type)
  {

    [(CUCaptureController *)self _resetFocusAndExposureAfterCapture];
  }
}

- (void)changeExposureTargetBias:(float)bias
{
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  v5 = [CAMExposureTargetBiasCommand alloc];
  *&v6 = bias;
  v8 = [(CAMExposureTargetBiasCommand *)v5 initWithExposureTargetBias:v6];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v8];
}

- (void)_setupLensSmudgeDetectionMonitoring
{
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine addObserver:self forKeyPath:@"currentCameraDevice.cameraLensSmudgeDetectionStatus" options:3 context:CAMSmudgeDetectionResultContext];
}

- (void)_teardownLensSmudgeDetectionMonitoring
{
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine removeObserver:self forKeyPath:@"currentCameraDevice.cameraLensSmudgeDetectionStatus" context:CAMSmudgeDetectionResultContext];
}

- (void)_cameraLensSmudgeDetectionStatusChangedForKeyPath:(id)path ofObject:(id)object change:(id)change
{
  v5 = *MEMORY[0x1E696A4F0];
  changeCopy = change;
  v7 = [changeCopy objectForKeyedSubscript:v5];
  v8 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A500]];

  if (v7)
  {
    null = [MEMORY[0x1E695DFB0] null];

    if (v7 != null)
    {
      integerValue = [v7 integerValue];
      if (!v8 || ([MEMORY[0x1E695DFB0] null], v11 = objc_claimAutoreleasedReturnValue(), v11, v8 == v11) || integerValue != objc_msgSend(v8, "integerValue"))
      {
        pl_dispatch_async();
      }
    }
  }
}

void __89__CUCaptureController__cameraLensSmudgeDetectionStatusChangedForKeyPath_ofObject_change___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lensSmudgeStatusDelegate];
  [v2 captureController:*(a1 + 32) didOutputLensSmudgeStatus:*(a1 + 40)];
}

- (void)_teardownFocusAndExposureMonitoring
{
  v25 = *MEMORY[0x1E69E9840];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  _focusKVOKeyPaths = [(CUCaptureController *)self _focusKVOKeyPaths];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [_focusKVOKeyPaths countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(_focusKVOKeyPaths);
        }

        [_captureEngine removeObserver:self forKeyPath:*(*(&v19 + 1) + 8 * v8++) context:CAMFocusResultContext];
      }

      while (v6 != v8);
      v6 = [_focusKVOKeyPaths countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  _exposureKVOKeyPaths = [(CUCaptureController *)self _exposureKVOKeyPaths];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [_exposureKVOKeyPaths countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(_exposureKVOKeyPaths);
        }

        [_captureEngine removeObserver:self forKeyPath:*(*(&v15 + 1) + 8 * v13++) context:CAMExposureResultContext];
      }

      while (v11 != v13);
      v11 = [_exposureKVOKeyPaths countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69868F8] object:0];
}

- (void)_focusResultChangedForKeyPath:(id)path ofObject:(id)object change:(id)change
{
  pathCopy = path;
  changeCopy = change;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__CUCaptureController__focusResultChangedForKeyPath_ofObject_change___block_invoke;
  v12[3] = &unk_1E76FC298;
  v12[4] = self;
  v13 = pathCopy;
  v14 = changeCopy;
  v10 = changeCopy;
  v11 = pathCopy;
  [_captureEngine requestCurrentCameraDeviceWithHandler:v12];
}

- (void)_focusResultChangedForEngineKeyPath:(id)path withDevice:(id)device change:(id)change
{
  pathCopy = path;
  changeCopy = change;
  deviceCopy = device;
  focusMode = [deviceCopy focusMode];
  [deviceCopy focusPointOfInterest];
  v12 = v11;
  v14 = v13;
  isAdjustingFocus = [deviceCopy isAdjustingFocus];
  _focusCoalescer = [(CUCaptureController *)self _focusCoalescer];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:focusMode];
  [_focusCoalescer coalesceValue:v17 forKeyPath:@"currentCameraDevice.focusMode"];

  v18 = [MEMORY[0x1E696B098] valueWithCGPoint:{v12, v14}];
  [_focusCoalescer coalesceValue:v18 forKeyPath:@"currentCameraDevice.focusPointOfInterest"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:isAdjustingFocus];
  [_focusCoalescer coalesceValue:v19 forKeyPath:@"currentCameraDevice.adjustingFocus"];

  v20 = [deviceCopy isFocusModeSupported:2];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:v20];
  [_focusCoalescer coalesceValue:v21 forKeyPath:@"deviceSupportsFocusKeyPath"];

  if ([pathCopy isEqual:@"currentCameraDevice.adjustingFocus"])
  {
    v22 = [(CUCaptureController *)self _kvoDidStartForChange:changeCopy];
  }

  else
  {
    v22 = 0;
  }

  if ([pathCopy isEqual:@"currentCameraDevice.adjustingFocus"])
  {
    v23 = [(CUCaptureController *)self _kvoDidEndForChange:changeCopy];
  }

  else
  {
    v23 = 0;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithBool:v22];
  [_focusCoalescer coalesceValue:v24 forKeyPath:@"contrastBasedFocusDidStartKeyPath"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:v23];
  [_focusCoalescer coalesceValue:v25 forKeyPath:@"contrastBasedFocusDidEndKeyPath"];

  if (v22 || v23)
  {
    [_focusCoalescer flush];
  }
}

- (BOOL)_kvoDidStartForChange:(id)change
{
  v3 = *MEMORY[0x1E696A500];
  changeCopy = change;
  v5 = [changeCopy objectForKeyedSubscript:v3];
  v6 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_10;
  }

  null = [MEMORY[0x1E695DFB0] null];
  v9 = null;
  if (v5 == null)
  {

LABEL_10:
    bOOLValue = 0;
    goto LABEL_11;
  }

  null2 = [MEMORY[0x1E695DFB0] null];

  if (v6 == null2 || ([v5 BOOLValue] & 1) != 0)
  {
    goto LABEL_10;
  }

  bOOLValue = [v6 BOOLValue];
LABEL_11:

  return bOOLValue;
}

- (BOOL)_kvoDidEndForChange:(id)change
{
  v3 = *MEMORY[0x1E696A500];
  changeCopy = change;
  v5 = [changeCopy objectForKeyedSubscript:v3];
  v6 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_10;
  }

  null = [MEMORY[0x1E695DFB0] null];
  v9 = null;
  if (v5 == null)
  {

LABEL_10:
    LOBYTE(v11) = 0;
    goto LABEL_11;
  }

  null2 = [MEMORY[0x1E695DFB0] null];

  if (v6 == null2 || ![v5 BOOLValue])
  {
    goto LABEL_10;
  }

  v11 = [v6 BOOLValue] ^ 1;
LABEL_11:

  return v11;
}

- (void)_exposureResultChangedForKeyPath:(id)path ofObject:(id)object change:(id)change
{
  pathCopy = path;
  changeCopy = change;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__CUCaptureController__exposureResultChangedForKeyPath_ofObject_change___block_invoke;
  v12[3] = &unk_1E76FC298;
  v12[4] = self;
  v13 = pathCopy;
  v14 = changeCopy;
  v10 = changeCopy;
  v11 = pathCopy;
  [_captureEngine requestCurrentCameraDeviceWithHandler:v12];
}

- (void)_exposureResultChangedForEngineKeyPath:(id)path withDevice:(id)device change:(id)change
{
  pathCopy = path;
  changeCopy = change;
  deviceCopy = device;
  exposureMode = [deviceCopy exposureMode];
  [deviceCopy exposurePointOfInterest];
  v12 = v11;
  v14 = v13;
  isAdjustingExposure = [deviceCopy isAdjustingExposure];
  [deviceCopy exposureTargetBias];
  v17 = v16;
  _exposureCoalescer = [(CUCaptureController *)self _exposureCoalescer];
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:exposureMode];
  [_exposureCoalescer coalesceValue:v19 forKeyPath:@"currentCameraDevice.exposureMode"];

  v20 = [MEMORY[0x1E696B098] valueWithCGPoint:{v12, v14}];
  [_exposureCoalescer coalesceValue:v20 forKeyPath:@"currentCameraDevice.exposurePointOfInterest"];

  LODWORD(v21) = v17;
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  [_exposureCoalescer coalesceValue:v22 forKeyPath:@"currentCameraDevice.exposureTargetBias"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:isAdjustingExposure];
  [_exposureCoalescer coalesceValue:v23 forKeyPath:@"currentCameraDevice.adjustingExposure"];

  v24 = [deviceCopy isFocusModeSupported:2];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:v24];
  [_exposureCoalescer coalesceValue:v25 forKeyPath:@"deviceSupportsFocusKeyPath"];

  if ([pathCopy isEqual:@"currentCameraDevice.adjustingExposure"])
  {
    v26 = [(CUCaptureController *)self _kvoDidStartForChange:changeCopy];
  }

  else
  {
    v26 = 0;
  }

  if ([pathCopy isEqual:@"currentCameraDevice.adjustingExposure"])
  {
    v27 = [(CUCaptureController *)self _kvoDidEndForChange:changeCopy];
  }

  else
  {
    v27 = 0;
  }

  v28 = [MEMORY[0x1E696AD98] numberWithBool:v26];
  [_exposureCoalescer coalesceValue:v28 forKeyPath:@"exposureDidStartKeyPath"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:v27];
  [_exposureCoalescer coalesceValue:v29 forKeyPath:@"exposureDidEndKeyPath"];

  if (v26 || v27)
  {
    [_exposureCoalescer flush];
  }
}

- (id)_lensPositionKVOKeyPaths
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"currentCameraDevice.lensPosition";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)_setupLensPositionMonitoring
{
  _lensPositionKVOKeyPaths = [(CUCaptureController *)self _lensPositionKVOKeyPaths];
  [(CUCaptureController *)self _setupKVOMonitoringForKeyPaths:_lensPositionKVOKeyPaths context:CAMLensPositionContext options:5];
}

- (void)_teardownLensPositionMonitoring
{
  _lensPositionKVOKeyPaths = [(CUCaptureController *)self _lensPositionKVOKeyPaths];
  [(CUCaptureController *)self _teardownKVOMonitoringForKeyPaths:_lensPositionKVOKeyPaths context:CAMLensPositionContext];
}

- (void)_lensPositionChangedForKeyPath:(id)path ofObject:(id)object change:(id)change
{
  changeCopy = change;
  if ([path isEqualToString:@"currentCameraDevice.lensPosition"])
  {
    v7 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (v7)
    {
      null = [MEMORY[0x1E695DFB0] null];

      if (v7 != null)
      {
        [v7 doubleValue];
        pl_dispatch_async();
      }
    }
  }
}

void __70__CUCaptureController__lensPositionChangedForKeyPath_ofObject_change___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 168) = *(a1 + 40);
  v2 = [*(a1 + 32) lensPositionDelegate];
  [v2 captureController:*(a1 + 32) didOutputLensPosition:*(a1 + 40)];
}

- (void)_teardownSuggestionMonitoring
{
  v14 = *MEMORY[0x1E69E9840];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  _suggestionKeyPaths = [(CUCaptureController *)self _suggestionKeyPaths];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [_suggestionKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(_suggestionKeyPaths);
        }

        [_captureEngine removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) context:CAMSuggestionResultContext];
      }

      while (v6 != v8);
      v6 = [_suggestionKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void __71__CUCaptureController__updateActivePrimaryConstituentDeviceFromDevice___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) activePrimaryConstituentDeviceType] != *(a1 + 40))
  {
    [*(a1 + 32) setActivePrimaryConstituentDeviceType:?];
    v2 = [*(a1 + 32) constituentDeviceDelegate];
    [v2 captureController:*(a1 + 32) didUpdateActivePrimaryConstituentDeviceType:*(a1 + 40)];
  }
}

void __74__CUCaptureController__updatePreferredPrimaryConstituentDeviceFromDevice___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) preferredPrimaryConstituentDeviceType] != *(a1 + 40))
  {
    [*(a1 + 32) setPreferredPrimaryConstituentDeviceType:?];
    v2 = [*(a1 + 32) constituentDeviceDelegate];
    [v2 captureController:*(a1 + 32) didUpdatePreferredPrimaryConstituentDeviceType:*(a1 + 40)];
  }
}

- (int64_t)_primaryConstituentDeviceTypeFromDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isVirtualDevice])
  {
    activePrimaryConstituentDevice = [deviceCopy activePrimaryConstituentDevice];
  }

  else
  {
    activePrimaryConstituentDevice = deviceCopy;
  }

  v6 = activePrimaryConstituentDevice;
  v7 = [(CUCaptureController *)self _constituentDeviceTypeFromDevice:activePrimaryConstituentDevice];

  return v7;
}

- (int64_t)_constituentDeviceTypeFromDevice:(id)device
{
  deviceCopy = device;
  deviceType = [deviceCopy deviceType];
  if ([deviceType isEqualToString:*MEMORY[0x1E6986950]])
  {
    v5 = 2;
  }

  else if ([deviceType isEqualToString:*MEMORY[0x1E6986928]])
  {
    v5 = 3;
  }

  else if ([deviceType isEqualToString:*MEMORY[0x1E6986948]])
  {
    v5 = 1;
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController _constituentDeviceTypeFromDevice:];
    }

    v5 = 0;
  }

  return v5;
}

- (void)_suggestionResultChangedForKeyPath:(id)path ofObject:(id)object change:(id)change
{
  pathCopy = path;
  objectCopy = object;
  v10 = [change objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  if ([pathCopy isEqualToString:@"currentCameraDevice.flashActive"] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 BOOLValue];
    v18 = objectCopy;
    pl_dispatch_async();

    goto LABEL_30;
  }

  if ([pathCopy isEqualToString:@"currentCameraDevice.torchActive"] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 BOOLValue];
LABEL_12:
    pl_dispatch_async();
    goto LABEL_30;
  }

  if (![pathCopy isEqualToString:@"currentStillImageOutput.digitalFlashStatus"] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    if ([pathCopy isEqualToString:@"currentStillImageOutput.digitalFlashExposureTimes"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = v10;
      if (v12)
      {
        null = [MEMORY[0x1E695DFB0] null];
        v14 = null;
        if (v12 == null)
        {
        }

        else
        {
          v15 = [v12 count];

          if (v15)
          {
            v16 = [v12 objectForKeyedSubscript:&unk_1F16C7F58];
            [v16 doubleValue];
            v17 = [v12 objectForKeyedSubscript:&unk_1F16C7F70];
            [v17 doubleValue];

            pl_dispatch_async();
          }
        }
      }
    }

    else
    {
      if ([pathCopy isEqual:@"currentCameraDevice.activePrimaryConstituentDevice"])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CUCaptureController *)self _updateActivePrimaryConstituentDeviceFromDevice:v10];
          goto LABEL_30;
        }
      }

      if ([pathCopy isEqual:@"currentCameraDevice.preferredPrimaryConstituentDevice"])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CUCaptureController *)self _updatePreferredPrimaryConstituentDeviceFromDevice:v10];
          goto LABEL_30;
        }
      }

      if (![pathCopy isEqual:@"currentCameraDevice"])
      {
        goto LABEL_30;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_30;
      }

      v12 = v10;
      [(CUCaptureController *)self _updateActivePrimaryConstituentDeviceFromDevice:v12];
      [(CUCaptureController *)self _updatePreferredPrimaryConstituentDeviceFromDevice:v12];
    }

    goto LABEL_30;
  }

  if (v10)
  {
    null2 = [MEMORY[0x1E695DFB0] null];

    if (v10 != null2)
    {
      +[CAMCaptureConversions nightModeStatusForCaptureStatus:](CAMCaptureConversions, "nightModeStatusForCaptureStatus:", [v10 integerValue]);
      goto LABEL_12;
    }
  }

LABEL_30:
}

void __74__CUCaptureController__suggestionResultChangedForKeyPath_ofObject_change___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setFlashActive:*(a1 + 48)];
  v6 = [*(a1 + 32) suggestionDelegate];
  [v6 captureController:*(a1 + 32) didOutputFlashActive:*(a1 + 48)];
  if (([*(a1 + 32) _shouldLockWhiteBalanceForActiveVideoRequest] & 1) == 0)
  {
    v2 = *(a1 + 48);
    v3 = [CAMWhiteBalanceCommand alloc];
    if (v2 == 1)
    {
      v4 = [(CAMWhiteBalanceCommand *)v3 initWithWhiteBalanceMode:2];
    }

    else
    {
      v4 = [(CAMWhiteBalanceCommand *)v3 initWithMatchExposureMode];
    }

    v5 = v4;
    [*(a1 + 40) enqueueCommand:v4];
  }
}

void __74__CUCaptureController__suggestionResultChangedForKeyPath_ofObject_change___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setTorchActive:*(a1 + 40)];
  v2 = [*(a1 + 32) suggestionDelegate];
  [v2 captureController:*(a1 + 32) didOutputTorchActive:*(a1 + 40)];
}

void __74__CUCaptureController__suggestionResultChangedForKeyPath_ofObject_change___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _setNightModeStatus:*(a1 + 40)];
  v2 = [*(a1 + 32) suggestionDelegate];
  [v2 captureController:*(a1 + 32) didOutputNightModeStatus:*(a1 + 40)];
}

void __74__CUCaptureController__suggestionResultChangedForKeyPath_ofObject_change___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) suggestionDelegate];
  [v2 captureController:*(a1 + 32) didOutputNightModeDurationMapping:{*(a1 + 40), *(a1 + 48)}];
}

- (void)_teardownAvailabilityMonitoring
{
  v14 = *MEMORY[0x1E69E9840];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  _availabilityKeyPaths = [(CUCaptureController *)self _availabilityKeyPaths];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [_availabilityKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(_availabilityKeyPaths);
        }

        [_captureEngine removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) context:CAMAvailabilityResultContext];
      }

      while (v6 != v8);
      v6 = [_availabilityKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_availabilityResultChangedForKeyPath:(id)path ofObject:(id)object change:(id)change
{
  v15 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [change objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  if (!v7)
  {
    goto LABEL_12;
  }

  null = [MEMORY[0x1E695DFB0] null];

  if (v7 == null)
  {
    goto LABEL_12;
  }

  v9 = v7;
  if ([pathCopy isEqualToString:@"currentCameraDevice.flashAvailable"] || objc_msgSend(pathCopy, "isEqualToString:", @"currentCameraDevice.torchAvailable"))
  {
    [v9 BOOLValue];
LABEL_8:
    pl_dispatch_async();
    goto LABEL_9;
  }

  if ([pathCopy isEqualToString:@"currentCameraDevice.degradedCaptureQualityFactors"])
  {
    [v9 unsignedIntegerValue];
    goto LABEL_8;
  }

LABEL_9:
  v10 = os_log_create("com.apple.camera", "KVO");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = pathCopy;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Observed availability key path %{public}@ change to %{public}@", buf, 0x16u);
  }

LABEL_12:
}

void __76__CUCaptureController__availabilityResultChangedForKeyPath_ofObject_change___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setFlashAvailable:*(a1 + 40)];
  v2 = [*(a1 + 32) availabilityDelegate];
  [v2 captureController:*(a1 + 32) didOutputFlashAvailability:*(a1 + 40)];
}

void __76__CUCaptureController__availabilityResultChangedForKeyPath_ofObject_change___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setTorchAvailable:*(a1 + 40)];
  v2 = [*(a1 + 32) availabilityDelegate];
  [v2 captureController:*(a1 + 32) didOutputTorchAvailability:*(a1 + 40)];
}

void __76__CUCaptureController__availabilityResultChangedForKeyPath_ofObject_change___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != [*(a1 + 32) flashCompromise])
  {
    [*(a1 + 32) _setFlashCompromise:*(a1 + 40)];
    v3 = [*(a1 + 32) availabilityDelegate];
    [v3 captureController:*(a1 + 32) didOutputFlashCompromise:*(a1 + 40)];
  }
}

- (void)_updateMaximumNumberOfStillImageRequestsAfterEnqueuingRequest:(id)request
{
  requestCopy = request;
  v4 = +[CAMCaptureCapabilities capabilities];
  _maximumNumberOfStillImageRequests = [(CUCaptureController *)self _maximumNumberOfStillImageRequests];
  if (!_maximumNumberOfStillImageRequests)
  {
    _maximumNumberOfStillImageRequests = [v4 maximumNumberOfInflightRequests];
  }

  if ([requestCopy ctmCaptureType] == 2)
  {
    v6 = requestCopy;
  }

  else
  {
    flashMode = [requestCopy flashMode];
    isFlashActive = [(CUCaptureController *)self isFlashActive];
    v6 = requestCopy;
    if (flashMode == 1 || flashMode == 2 && isFlashActive)
    {
      _maximumNumberOfStillImageRequests = 1;
    }
  }

  burstIdentifier = [v6 burstIdentifier];

  if (burstIdentifier)
  {
    _maximumNumberOfStillImageRequests = [(CUCaptureController *)self _maximumNumberOfStillImageRequestsDuringBurst];
  }

  if ([v4 portraitModeOverlappingCapturesSupported])
  {
    v10 = requestCopy;
  }

  else
  {
    adjustmentFilters = [requestCopy adjustmentFilters];
    v12 = [CAMEffectFilterManager isDepthEffectInFilters:adjustmentFilters];

    v10 = requestCopy;
    if (v12)
    {
      _maximumNumberOfStillImageRequests = 1;
    }
  }

  if ([v10 nightMode])
  {
    _maximumNumberOfStillImageRequests = 1;
  }

  if ([requestCopy maximumPhotoResolution] == 3 && !objc_msgSend(v4, "supportsOverlappingCapturesForResolution:", 3))
  {
    _maximumNumberOfStillImageRequests = 1;
  }

  [(CUCaptureController *)self _setMaximumNumberOfStillImageRequests:_maximumNumberOfStillImageRequests];
}

- (void)_updateMaximumNumberOfStillImageRequestsAfterCapturedRequestIfNecessary:(id)necessary
{
  captureRequest = [necessary captureRequest];
  type = [captureRequest type];

  _numberOfInflightRequestsByType = [(CUCaptureController *)self _numberOfInflightRequestsByType];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v7 = [_numberOfInflightRequestsByType countForObject:v6];

  v8 = _numberOfInflightRequestsByType;
  if (v7 <= 0)
  {
    v9 = +[CAMCaptureCapabilities capabilities];
    maximumNumberOfInflightRequests = [v9 maximumNumberOfInflightRequests];

    if ([(CUCaptureController *)self isCapturingBurst])
    {
      maximumNumberOfInflightRequests = [(CUCaptureController *)self _maximumNumberOfStillImageRequestsDuringBurst];
    }

    [(CUCaptureController *)self _setMaximumNumberOfStillImageRequests:maximumNumberOfInflightRequests];
    v8 = _numberOfInflightRequestsByType;
  }
}

- (void)_updateMaximumNumberOfStillImageRequestsAfterBurst
{
  v3 = +[CAMCaptureCapabilities capabilities];
  -[CUCaptureController _setMaximumNumberOfStillImageRequests:](self, "_setMaximumNumberOfStillImageRequests:", [v3 maximumNumberOfInflightRequests]);
}

- (unint64_t)_maximumNumberOfStillImageRequestsDuringBurst
{
  v2 = +[CAMCaptureCapabilities capabilities];
  if ([v2 isPipelinedStillImageProcessingSupported])
  {
    maximumNumberOfInflightRequests = 3;
  }

  else
  {
    v4 = +[CAMCaptureCapabilities capabilities];
    maximumNumberOfInflightRequests = [v4 maximumNumberOfInflightRequests];
  }

  return maximumNumberOfInflightRequests;
}

- (void)_setCaptureAvailable:(BOOL)available
{
  if (self->_captureAvailable != available)
  {
    v11 = v3;
    v12 = v4;
    self->_captureAvailable = available;
    v6 = os_log_create("com.apple.camera", "Camera");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (available)
    {
      if (v7)
      {
        *v9 = 0;
        _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Capture became available", v9, 2u);
      }

      v8 = 64;
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Capture became unavailable", buf, 2u);
      }

      v8 = 63;
    }

    CAMSignpostWithIDAndArgs(v8, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  }
}

- (void)logCaptureAvailabilityDescription
{
  if ([(CUCaptureController *)self isCaptureAvailable])
  {
    v3 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Capture is available", v5, 2u);
    }
  }

  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine currentInflightCapturesStringWithCompletionHandler:&__block_literal_global_39];
}

void __56__CUCaptureController_logCaptureAvailabilityDescription__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Capture unavailable. Still image requests: %@ and / or video requests: %@ are still in flight", a2, a3];
  v4 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

- (void)_updateAvailabilityForRequestType:(int64_t)type
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (type == 1)
  {
    _isVideoCaptureAvailable = [(CUCaptureController *)self _isVideoCaptureAvailable];
  }

  else if (type)
  {
    _isVideoCaptureAvailable = 1;
  }

  else
  {
    _numberOfInflightRequestsByType = [(CUCaptureController *)self _numberOfInflightRequestsByType];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v7 = [_numberOfInflightRequestsByType countForObject:v6];

    _isVideoCaptureAvailable = v7 < [(CUCaptureController *)self _maximumNumberOfStillImageRequests];
  }

  isCaptureAvailable = [(CUCaptureController *)self isCaptureAvailable];
  v10 = _isVideoCaptureAvailable ^ [(CUCaptureController *)self isConfigurationAvailable];
  [(CUCaptureController *)self _setCaptureAvailable:_isVideoCaptureAvailable];
  [(CUCaptureController *)self _setConfigurationAvailable:_isVideoCaptureAvailable];
  if (_isVideoCaptureAvailable != isCaptureAvailable)
  {
    [(CUCaptureController *)self _notifyDelegateOfCaptureAvailabilityChanged:_isVideoCaptureAvailable];
  }

  if (v10)
  {

    [(CUCaptureController *)self _notifyDelegateOfConfigurationAvailabilityChanged:_isVideoCaptureAvailable];
  }
}

- (BOOL)_shouldTrackInflightCountForRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy type])
  {
    v4 = 1;
  }

  else
  {
    v4 = [requestCopy ctmCaptureType] != 2;
  }

  return v4;
}

- (void)_updateAvailabilityAfterEnqueuedRequest:(id)request
{
  requestCopy = request;
  persistenceUUID = [requestCopy persistenceUUID];
  [(CUCaptureController *)self _startCaptureSignpostIntervalForPersistenceUUID:persistenceUUID];

  if ([(CUCaptureController *)self _shouldTrackInflightCountForRequest:requestCopy])
  {
    type = [requestCopy type];
    _numberOfInflightRequestsByType = [(CUCaptureController *)self _numberOfInflightRequestsByType];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [_numberOfInflightRequestsByType addObject:v7];

    [(CUCaptureController *)self _updateAvailabilityForRequestType:type];
  }
}

- (void)_updateAvailabilityWhenPreparingToStopCapturingForRequest:(id)request
{
  type = [request type];

  [(CUCaptureController *)self _updateAvailabilityForRequestType:type];
}

- (void)_updateAvailabilityAfterStopCapturingForRequest:(id)request
{
  type = [request type];

  [(CUCaptureController *)self _updateAvailabilityForRequestType:type];
}

- (void)_updateAvailabilityAfterCapturedRequest:(id)request
{
  requestCopy = request;
  type = [requestCopy type];
  if ([(CUCaptureController *)self _shouldTrackInflightCountForRequest:requestCopy])
  {
    _numberOfInflightRequestsByType = [(CUCaptureController *)self _numberOfInflightRequestsByType];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [_numberOfInflightRequestsByType removeObject:v6];

    if (type != 1)
    {
      goto LABEL_6;
    }
  }

  else if (type != 1)
  {
    goto LABEL_7;
  }

  [(CUCaptureController *)self _setVideoCaptureAvailable:1];
LABEL_6:
  [(CUCaptureController *)self _updateAvailabilityForRequestType:type];
LABEL_7:
  persistenceUUID = [requestCopy persistenceUUID];
  [(CUCaptureController *)self _endCaptureSignpostIntervalForPersistenceUUID:persistenceUUID];
}

- (void)_notifyDelegateOfCaptureAvailabilityChanged:(BOOL)changed
{
  changedCopy = changed;
  availabilityDelegate = [(CUCaptureController *)self availabilityDelegate];
  [availabilityDelegate captureController:self didOutputCaptureAvailability:changedCopy];
}

- (void)_notifyDelegateOfConfigurationAvailabilityChanged:(BOOL)changed
{
  changedCopy = changed;
  availabilityDelegate = [(CUCaptureController *)self availabilityDelegate];
  [availabilityDelegate captureController:self didOutputConfigurationAvailability:changedCopy];
}

- (void)metadataWasRecognized:(id)recognized forMetadataObjectTypes:(id)types deviceFormat:(id)format
{
  v69 = *MEMORY[0x1E69E9840];
  recognizedCopy = recognized;
  typesCopy = types;
  formatCopy = format;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = recognizedCopy;
  v11 = [v10 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (!v11)
  {
    v48 = 0;
    v14 = v51;
    goto LABEL_42;
  }

  v12 = v11;
  v48 = 0;
  v13 = *v61;
  v50 = *MEMORY[0x1E6987010];
  v44 = *MEMORY[0x1E6987020];
  v14 = v51;
  do
  {
    v15 = 0;
    do
    {
      if (*v61 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v60 + 1) + 8 * v15);
      if ([v16 isHumanFace])
      {
        v17 = v16;
        v18 = [[CAMFaceResult alloc] initWithFaceObject:v17];
        v19 = v8;
        goto LABEL_8;
      }

      if (([v16 isPetHead] & 1) != 0 || objc_msgSend(v16, "isHumanHead"))
      {
        v18 = [[CAMHeadObjectResult alloc] initWithHeadObject:v16];
        [v9 addObject:v18];
        goto LABEL_14;
      }

      if (([v16 isPetBody] & 1) != 0 || objc_msgSend(v16, "isHumanBody"))
      {
        v17 = v16;
        v18 = [[CAMBodyObjectResult alloc] initWithBodyObject:v17];
        v19 = v14;
        goto LABEL_8;
      }

      if ([v16 isSalientObject])
      {
        v17 = v16;
        v18 = [[CAMSalientObjectResult alloc] initWithSalientObject:v17];
        v19 = v53;
LABEL_8:
        v20 = v18;
LABEL_9:
        [v19 addObject:v20];
LABEL_10:

        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v16;
        v17 = [[CAMMachineReadableCodeResult alloc] initWithMachineReadableCodeObject:v18];
        mrcType = [(CAMMachineReadableCodeResult *)v17 mrcType];
        if (mrcType == 2)
        {
          v28 = os_log_create("com.apple.camera", "Camera");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v41 = [(CAMFaceResult *)v18 description];
            *buf = 138543362;
            v65 = v41;
            _os_log_impl(&dword_1A3640000, v28, OS_LOG_TYPE_DEFAULT, "Unknown machine readable code type %{public}@", buf, 0xCu);
          }

          v14 = v51;
          goto LABEL_10;
        }

        if (mrcType == 1)
        {
          v19 = v45;
        }

        else
        {
          if (mrcType)
          {
            goto LABEL_10;
          }

          v19 = v46;
        }

        v20 = v17;
        goto LABEL_9;
      }

      type = [v16 type];
      v23 = [type isEqualToString:v50];

      if (v23)
      {
        type3 = v16;
        v18 = [[CAMTextRegionResult alloc] initWithTextRegionObject:type3];
        [v49 addObject:v18];
      }

      else
      {
        type2 = [v16 type];
        v26 = [type2 isEqualToString:v44];

        if (v26)
        {
          v18 = v16;
          v27 = [[CAMHistogramResult alloc] initWithHistogramObject:v18 forDeviceFormat:formatCopy];

          v48 = v27;
          goto LABEL_38;
        }

        v18 = os_log_create("com.apple.camera", "Camera");
        if (!os_log_type_enabled(&v18->super, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        v29 = objc_opt_class();
        type3 = [v16 type];
        *buf = 138543618;
        v65 = v29;
        v66 = 2114;
        v67 = type3;
        _os_log_impl(&dword_1A3640000, &v18->super, OS_LOG_TYPE_DEFAULT, "Unhandled metadata object %{public}@/%{public}@", buf, 0x16u);
      }

LABEL_38:
      v14 = v51;
LABEL_14:

      ++v15;
    }

    while (v12 != v15);
    v30 = [v10 countByEnumeratingWithState:&v60 objects:v68 count:16];
    v12 = v30;
  }

  while (v30);
LABEL_42:

  [typesCopy count];
  [(CUCaptureController *)self _burstController];
  v32 = v31 = v14;
  [v32 processFaceResults:v8];
  v55 = v10;
  v56 = v8;
  v57 = v9;
  v58 = v31;
  v59 = v53;
  v52 = v48;
  v54 = v53;
  v33 = v31;
  v34 = v9;
  v35 = v8;
  v36 = v49;
  v37 = v45;
  v38 = v10;
  v39 = v46;
  v40 = typesCopy;
  pl_dispatch_async();
}

void __81__CUCaptureController_metadataWasRecognized_forMetadataObjectTypes_deviceFormat___block_invoke(uint64_t a1)
{
  if (*(a1 + 120) != 1)
  {
    if ([*(a1 + 40) count])
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = [*(a1 + 48) count] == 0;
    }

    if ([*(a1 + 56) count])
    {
      v5 = 1;
    }

    else
    {
      v5 = [*(a1 + 48) count] == 0;
    }

    if ([*(a1 + 64) count])
    {
      v6 = 1;
    }

    else
    {
      v6 = [*(a1 + 48) count] == 0;
    }

    goto LABEL_17;
  }

  v2 = [*(a1 + 32) containsObject:*MEMORY[0x1E6986FE8]];
  if ([*(a1 + 32) containsObject:*MEMORY[0x1E6986FD0]] & 1) != 0 || (objc_msgSend(*(a1 + 32), "containsObject:", *MEMORY[0x1E6986FC0]))
  {
    v3 = 1;
  }

  else
  {
    v3 = [*(a1 + 32) containsObject:*MEMORY[0x1E6986FF0]];
  }

  v4 = [*(a1 + 32) containsObject:*MEMORY[0x1E6987000]];
  v5 = [*(a1 + 32) containsObject:*MEMORY[0x1E6986FB8]];
  v6 = [*(a1 + 32) containsObject:*MEMORY[0x1E6987010]];
  v7 = [*(a1 + 32) containsObject:*MEMORY[0x1E6987008]];
  if ([*(a1 + 32) containsObject:*MEMORY[0x1E6986FF8]] & 1) != 0 || (objc_msgSend(*(a1 + 32), "containsObject:", *MEMORY[0x1E6986FC8]) & 1) != 0 || (v11 = objc_msgSend(*(a1 + 32), "containsObject:", *MEMORY[0x1E6986FD8]), ((v2 | v3 | v7)) || v11)
  {
LABEL_17:
    v8 = [*(a1 + 72) facesDelegate];
    [v8 captureController:*(a1 + 72) didOutputFaceResults:*(a1 + 80) headResults:*(a1 + 88) bodyResults:*(a1 + 96) salientObjectResults:*(a1 + 104)];

    if ((v4 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_18:
    v9 = [*(a1 + 72) machineReadableCodeDelegate];
    [v9 captureController:*(a1 + 72) didOutputQRCodeResults:*(a1 + 40)];

    if (v5)
    {
      goto LABEL_30;
    }

LABEL_19:
    if (!v6)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v4)
  {
    goto LABEL_18;
  }

LABEL_29:
  if (!v5)
  {
    goto LABEL_19;
  }

LABEL_30:
  v12 = [*(a1 + 72) machineReadableCodeDelegate];
  [v12 captureController:*(a1 + 72) didOutputAppClipCodeResults:*(a1 + 56)];

  if (v6)
  {
LABEL_20:
    v10 = [*(a1 + 72) textRegionResultDelegate];
    [v10 captureController:*(a1 + 72) didOutputTextRegionResults:*(a1 + 64)];
  }

LABEL_21:
  if (*(a1 + 112))
  {
    v13 = [*(a1 + 72) histogramDelegate];
    [v13 captureController:*(a1 + 72) didOutputHistogramResult:*(a1 + 112)];
  }
}

- (void)queryVideoDimensionsWithCompletionBlock:(id)block
{
  blockCopy = block;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  v6 = [CAMQueryVideoDimensionsCommand alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__CUCaptureController_queryVideoDimensionsWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E76FC330;
  v10 = blockCopy;
  v7 = blockCopy;
  v8 = [(CAMQueryVideoDimensionsCommand *)v6 initWithCompletionBlock:v9];
  [_captureEngine enqueueCommand:v8];
}

void __63__CUCaptureController_queryVideoDimensionsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  pl_dispatch_async();
}

uint64_t __63__CUCaptureController_queryVideoDimensionsWithCompletionBlock___block_invoke_2(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, a1[5], a1[6]);
  }

  return result;
}

- (void)queryTimelapseDimensionsWithCompletionBlock:(id)block
{
  blockCopy = block;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  v6 = [CAMQueryTimelapseDimensionsCommand alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__CUCaptureController_queryTimelapseDimensionsWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E76FC380;
  v10 = blockCopy;
  v7 = blockCopy;
  v8 = [(CAMQueryTimelapseDimensionsCommand *)v6 initWithCompletionBlock:v9];
  [_captureEngine enqueueCommand:v8];
}

void __67__CUCaptureController_queryTimelapseDimensionsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  pl_dispatch_async();
}

uint64_t __67__CUCaptureController_queryTimelapseDimensionsWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  }

  return result;
}

- (void)willPerformRecoveryFromRuntimeError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__CUCaptureController_willPerformRecoveryFromRuntimeError___block_invoke;
  v6[3] = &unk_1E76F7960;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  cam_perform_on_main_asap(v6);
}

void __59__CUCaptureController_willPerformRecoveryFromRuntimeError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recoveryDelegate];
  [v2 captureController:*(a1 + 32) willRecoverFromRuntimeError:*(a1 + 40)];
}

- (void)startCaptureSessionWithRetryCount:(unint64_t)count retryInterval:(double)interval logReason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  reasonCopy = reason;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine startWithRetryCount:count retryInterval:reasonCopy logReason:completionCopy completion:interval];
}

- (void)stopCaptureSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine stopWithCompletion:completionCopy];
}

- (void)cancelAutoResumeAfterDate:(id)date
{
  dateCopy = date;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine cancelAutoResumeAfterDate:dateCopy];
}

- (void)attemptToEndInterruptions
{
  if ([(CUCaptureController *)self isInterrupted])
  {
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    [_captureEngine startWithRetryCount:0 retryInterval:@"attemptToEndInterruptions" logReason:0 completion:0.0];
  }
}

- (void)handleSessionInterruptionForReason:(int64_t)reason
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__CUCaptureController_handleSessionInterruptionForReason___block_invoke;
  v3[3] = &unk_1E76F77B0;
  v3[4] = self;
  cam_perform_on_main_asap(v3);
}

uint64_t __58__CUCaptureController_handleSessionInterruptionForReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interruptionDelegate];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 captureControllerWasInterrupted:*(a1 + 32)];
    }
  }

  return MEMORY[0x1EEE66C30]();
}

uint64_t __53__CUCaptureController_handleSessionInterruptionEnded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interruptionDelegate];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 captureControllerInterruptionEnded:*(a1 + 32)];
    }
  }

  return MEMORY[0x1EEE66C30]();
}

- (void)registerCaptureService:(id)service
{
  serviceCopy = service;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine registerCaptureService:serviceCopy];
}

- (void)unregisterCaptureService:(id)service
{
  serviceCopy = service;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine unregisterCaptureService:serviceCopy];
}

- (void)registerEffectsPreviewSampleBufferDelegate:(id)delegate
{
  delegateCopy = delegate;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine registerEffectsPreviewSampleBufferDelegate:delegateCopy];
}

- (void)unregisterEffectsPreviewSampleBufferDelegate:(id)delegate
{
  delegateCopy = delegate;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine unregisterEffectsPreviewSampleBufferDelegate:delegateCopy];
}

- (void)registerVideoThumbnailContentsDelegate:(id)delegate
{
  delegateCopy = delegate;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine registerVideoThumbnailContentsDelegate:delegateCopy];
}

- (void)unregisterVideoThumbnailContentsDelegate:(id)delegate
{
  delegateCopy = delegate;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine unregisterVideoThumbnailContentsDelegate:delegateCopy];
}

- (void)changeToVideoZoomFactor:(double)factor graphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7 = [[CAMSetVideoZoomFactorCommand alloc] initWithVideoZoomFactor:configurationCopy graphConfiguration:factor];

  [(CAMCaptureEngine *)self->__captureEngine enqueueCommand:v7];
}

- (void)startRampToVideoZoomFactor:(double)factor withRate:(float)rate graphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9 = [CAMRampToVideoZoomFactorCommand alloc];
  *&v10 = rate;
  v11 = [(CAMRampToVideoZoomFactorCommand *)v9 initWithVideoZoomFactor:configurationCopy rate:factor graphConfiguration:v10];

  [(CAMCaptureEngine *)self->__captureEngine enqueueCommand:v11];
}

- (void)startRampToVideoZoomFactor:(double)factor withDuration:(double)duration zoomRampTuning:(int64_t)tuning graphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11 = [[CAMRampToVideoZoomFactorCommand alloc] initWithVideoZoomFactor:tuning duration:configurationCopy zoomRampTuning:factor graphConfiguration:duration];

  [(CAMCaptureEngine *)self->__captureEngine enqueueCommand:v11];
}

- (void)stopRampToVideoZoomFactor
{
  v3 = objc_alloc_init(CAMCancelVideoZoomRampCommand);
  [(CAMCaptureEngine *)self->__captureEngine enqueueCommand:v3];
}

- (void)_teardownZoomMonitoring
{
  v14 = *MEMORY[0x1E69E9840];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  _zoomMonitoringKeyPaths = [(CUCaptureController *)self _zoomMonitoringKeyPaths];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [_zoomMonitoringKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(_zoomMonitoringKeyPaths);
        }

        [_captureEngine removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) context:CAMZoomResultContext];
      }

      while (v6 != v8);
      v6 = [_zoomMonitoringKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_zoomResultChangedForKeyPath:(id)path ofObject:(id)object change:(id)change
{
  pathCopy = path;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"currentCameraDevice.videoZoomFactor"])
  {
    v9 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (!v9)
    {
      goto LABEL_14;
    }

    null = [MEMORY[0x1E695DFB0] null];

    if (v9 == null)
    {
      goto LABEL_14;
    }

    goto LABEL_4;
  }

  if ([pathCopy isEqualToString:@"currentCameraDevice.minAvailableVideoZoomFactor"])
  {
    v9 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (!v9)
    {
      goto LABEL_14;
    }

    null2 = [MEMORY[0x1E695DFB0] null];

    if (v9 == null2)
    {
      goto LABEL_14;
    }

LABEL_4:
    [v9 floatValue];
LABEL_13:
    pl_dispatch_async();
LABEL_14:

    goto LABEL_15;
  }

  if ([pathCopy isEqualToString:@"currentCameraDevice.rampingVideoZoom"])
  {
    v9 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (!v9)
    {
      goto LABEL_14;
    }

    null3 = [MEMORY[0x1E695DFB0] null];

    if (v9 == null3)
    {
      goto LABEL_14;
    }

    -[CUCaptureController setRampingVideoZoom:](self, "setRampingVideoZoom:", [v9 BOOLValue]);
    goto LABEL_13;
  }

LABEL_15:
}

void __68__CUCaptureController__zoomResultChangedForKeyPath_ofObject_change___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
  [WeakRetained captureController:*(a1 + 32) didOutputVideoZoomFactor:*(a1 + 40)];
}

void __68__CUCaptureController__zoomResultChangedForKeyPath_ofObject_change___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
  [WeakRetained captureController:*(a1 + 32) didOutputMinAvailableVideoZoomFactor:*(a1 + 40)];
}

void __68__CUCaptureController__zoomResultChangedForKeyPath_ofObject_change___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
  [WeakRetained captureController:*(a1 + 32) didChangeRampingVideoZoom:{objc_msgSend(*(a1 + 32), "isRampingVideoZoom")}];
}

- (void)_setupZoomPIPMonitoring
{
  v3 = +[CAMCaptureCapabilities capabilities];
  isZoomPIPSupported = [v3 isZoomPIPSupported];

  if (isZoomPIPSupported)
  {
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    videoPreviewLayer = [_captureEngine videoPreviewLayer];

    if (videoPreviewLayer)
    {
      [_captureEngine addObserver:self forKeyPath:@"videoPreviewLayer.zoomPictureInPictureOverlayRect" options:1 context:CAMPreviewZoomPIPContext];
    }
  }
}

- (void)_teardownZoomPIPMonitoring
{
  v3 = +[CAMCaptureCapabilities capabilities];
  isZoomPIPSupported = [v3 isZoomPIPSupported];

  if (isZoomPIPSupported)
  {
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    videoPreviewLayer = [_captureEngine videoPreviewLayer];

    if (videoPreviewLayer)
    {
      [_captureEngine removeObserver:self forKeyPath:@"videoPreviewLayer.zoomPictureInPictureOverlayRect" context:CAMPreviewZoomPIPContext];
    }
  }
}

- (void)_zoomPIPChangedForKeyPath:(id)path ofObject:(id)object change:(id)change
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  videoPreviewLayer = [objectCopy videoPreviewLayer];
  v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  if (v12)
  {
    v13 = videoPreviewLayer == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if ([pathCopy isEqualToString:@"videoPreviewLayer.zoomPictureInPictureOverlayRect"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 CGRectValue];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __65__CUCaptureController__zoomPIPChangedForKeyPath_ofObject_change___block_invoke;
        v18[3] = &unk_1E76F7768;
        v18[4] = self;
        v18[5] = v14;
        v18[6] = v15;
        v18[7] = v16;
        v18[8] = v17;
        cam_perform_on_main_asap(v18);
      }
    }
  }
}

void __65__CUCaptureController__zoomPIPChangedForKeyPath_ofObject_change___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 captureController:*(a1 + 32) didChangePreviewZoomPIPRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)changeToPortraitAperture:(double)aperture
{
  v5 = [[CAMPortraitApertureCommand alloc] initWithAperture:aperture];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v5];
}

- (void)_handleShallowDepthOfFieldStatusChangedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"AVCaptureDeviceShallowDepthOfFieldStatusChangedKeyEffectStatus"];
  +[CAMCaptureConversions shallowDepthOfFieldStatusForCaptureStatus:](CAMCaptureConversions, "shallowDepthOfFieldStatusForCaptureStatus:", [v4 integerValue]);
  v5 = [userInfo objectForKeyedSubscript:@"AVCaptureDeviceShallowDepthOfFieldStatusChangedKeyStagePreviewStatus"];
  +[CAMCaptureConversions stagePreviewStatusForCaptureStatus:](CAMCaptureConversions, "stagePreviewStatusForCaptureStatus:", [v5 integerValue]);
  pl_dispatch_async();
}

void __75__CUCaptureController__handleShallowDepthOfFieldStatusChangedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shallowDepthOfFieldStatusDelegate];
  [v2 captureController:*(a1 + 32) didOutputShallowDepthOfFieldStatus:*(a1 + 40) stagePreviewStatus:*(a1 + 48)];
}

- (void)changeToPortraitLightingEffectStrength:(double)strength
{
  v5 = [[CAMPortraitLightingEffectStrengthCommand alloc] initWithEffectStrength:strength];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v5];
}

- (id)_systemPressureStateMonitoringKeyPaths
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"currentCameraDevice.systemPressureState";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)_teardownSystemPressureStateMonitoring
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CUCaptureController *)self _shouldMonitorSystemPressureState])
  {
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    _systemPressureStateMonitoringKeyPaths = [(CUCaptureController *)self _systemPressureStateMonitoringKeyPaths];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [_systemPressureStateMonitoringKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(_systemPressureStateMonitoringKeyPaths);
          }

          [_captureEngine removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) context:CAMSystemPressureStateMonitoringContext];
        }

        while (v6 != v8);
        v6 = [_systemPressureStateMonitoringKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_systemPressureStateMonitoringChangedForKeyPath:(id)path ofObject:(id)object change:(id)change
{
  pathCopy = path;
  v8 = [change objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  if (v8)
  {
    null = [MEMORY[0x1E695DFB0] null];

    if (v8 != null)
    {
      if ([pathCopy isEqualToString:@"currentCameraDevice.systemPressureState"])
      {
        v10 = v8;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __87__CUCaptureController__systemPressureStateMonitoringChangedForKeyPath_ofObject_change___block_invoke;
        v11[3] = &unk_1E76F7960;
        v12 = v10;
        selfCopy = self;
        cam_perform_on_main_asap(v11);
      }
    }
  }
}

void __87__CUCaptureController__systemPressureStateMonitoringChangedForKeyPath_ofObject_change___block_invoke(uint64_t a1)
{
  v2 = [[CAMSystemPressureState alloc] initWithCaptureSystemPressureState:*(a1 + 32)];
  [*(a1 + 40) _handleSystemPressureState:v2];
}

- (void)_handleSystemPressureState:(id)state
{
  stateCopy = state;
  v4 = +[CAMCaptureCapabilities capabilities];
  v5 = objc_alloc_init(CAMSystemPressureMitigationCommand);
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v5];

  if ([v4 isFrontRearSimultaneousVideoSupported])
  {
    shouldDisablePIPMotionBlur = [stateCopy shouldDisablePIPMotionBlur];
    _captureEngine2 = [(CUCaptureController *)self _captureEngine];
    [_captureEngine2 setMultiCamPictureInPictureMotionBlurDisabled:shouldDisablePIPMotionBlur];
  }

  [(CUCaptureController *)self _setCurrentCameraSystemPressureState:stateCopy];
}

- (void)_setCurrentCameraSystemPressureState:(id)state
{
  stateCopy = state;
  v6 = stateCopy;
  if (self->_currentCameraSystemPressureState != stateCopy)
  {
    v8 = stateCopy;
    stateCopy = [(CAMSystemPressureState *)stateCopy isEqual:?];
    v6 = v8;
    if ((stateCopy & 1) == 0)
    {
      objc_storeStrong(&self->_currentCameraSystemPressureState, state);
      systemPressureStateDelegate = [(CUCaptureController *)self systemPressureStateDelegate];
      [systemPressureStateDelegate captureController:self didChangeCameraSystemPressureState:v8];

      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](stateCopy, v6);
}

- (void)changeToAspectRatioCrop:(int64_t)crop
{
  v5 = [[CAMNonDestructiveCropAspectRatioCommand alloc] initWithAspectRatioCrop:crop];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v5];
}

- (void)setPrimaryConstituentDeviceSwitchingBehavior:(int64_t)behavior restrictedSwitchingConditions:(unint64_t)conditions
{
  v6 = [[CAMPrimaryConstituentDeviceSwitchingBehaviorCommand alloc] initWithBehavior:behavior restrictedSwitchingConditions:conditions];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v6];
}

- (void)setFallbackPrimaryConstituentDeviceSelection:(int64_t)selection
{
  v5 = [[CAMFallbackPrimaryConstituentDeviceCommand alloc] initWithFallbackPrimaryConstituentDeviceSelection:selection];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v5];
}

- (void)_setupStereoCaptureStatusMonitoring
{
  v3 = +[CAMCaptureCapabilities capabilities];
  isSpatialModeSupported = [v3 isSpatialModeSupported];

  if (isSpatialModeSupported)
  {
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    videoPreviewLayer = [_captureEngine videoPreviewLayer];

    if (videoPreviewLayer)
    {
      [_captureEngine addObserver:self forKeyPath:@"currentCameraDevice.stereoCaptureStatus" options:5 context:CAMStereoCaptureStatusContext];
    }
  }
}

- (void)_teardownStereoCaptureStatusMonitoring
{
  v3 = +[CAMCaptureCapabilities capabilities];
  isSpatialModeSupported = [v3 isSpatialModeSupported];

  if (isSpatialModeSupported)
  {
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    videoPreviewLayer = [_captureEngine videoPreviewLayer];

    if (videoPreviewLayer)
    {
      [_captureEngine removeObserver:self forKeyPath:@"currentCameraDevice.stereoCaptureStatus" context:CAMStereoCaptureStatusContext];
    }
  }
}

- (void)_stereoCaptureStatusChangedForKeyPath:(id)path ofObject:(id)object change:(id)change
{
  pathCopy = path;
  v7 = [change objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && [pathCopy isEqualToString:@"currentCameraDevice.stereoCaptureStatus"])
  {
    +[CAMCaptureConversions CAMStereoCaptureStatusForAVStereoCaptureStatus:](CAMCaptureConversions, "CAMStereoCaptureStatusForAVStereoCaptureStatus:", [v7 integerValue]);
    pl_dispatch_async();
  }
}

void __77__CUCaptureController__stereoCaptureStatusChangedForKeyPath_ofObject_change___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stereoCaptureStatusDelegate];
  [v2 captureController:*(a1 + 32) didOutputStereoCaptureStatus:*(a1 + 40)];
}

- (void)_setupRecommendedSmartFramingMonitoring
{
  v3 = +[CAMCaptureCapabilities capabilities];
  isSmartFramingSupported = [v3 isSmartFramingSupported];

  if (isSmartFramingSupported)
  {
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    videoPreviewLayer = [_captureEngine videoPreviewLayer];

    if (videoPreviewLayer)
    {
      [_captureEngine addObserver:self forKeyPath:@"currentCameraDevice.smartFramingMonitor.recommendedFraming" options:5 context:CAMRecommendedFramingContext];
    }
  }
}

- (void)_teardownRecommendedSmartFramingMonitoring
{
  v3 = +[CAMCaptureCapabilities capabilities];
  isSmartFramingSupported = [v3 isSmartFramingSupported];

  if (isSmartFramingSupported)
  {
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    videoPreviewLayer = [_captureEngine videoPreviewLayer];

    if (videoPreviewLayer)
    {
      [_captureEngine removeObserver:self forKeyPath:@"currentCameraDevice.smartFramingMonitor.recommendedFraming" context:CAMRecommendedFramingContext];
    }
  }
}

- (void)_recommendedSmartFramingChangedForKeyPath:(id)path ofObject:(id)object change:(id)change
{
  v13 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [change objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  if (v7)
  {
    null = [MEMORY[0x1E695DFB0] null];
    if (v7 == null || ([pathCopy isEqualToString:@"currentCameraDevice.smartFramingMonitor.recommendedFraming"] & 1) == 0)
    {
LABEL_8:

      goto LABEL_9;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      null = v7;
      v10 = os_log_create("com.apple.camera", "SmartFraming");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = null;
        _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Received new smartFramingMonitor recommendation: %@", buf, 0xCu);
      }

      [CAMCaptureConversions CAMCaptureSmartFramingFieldOfViewForAVCaptureFraming:null];
      pl_dispatch_async();
      goto LABEL_8;
    }
  }

LABEL_9:
}

void __81__CUCaptureController__recommendedSmartFramingChangedForKeyPath_ofObject_change___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recommendedSmartFramingDelegate];
  [v2 captureController:*(a1 + 32) didOutputRecommendedSmartFramingFieldOfView:*(a1 + 40)];
}

- (void)_setupKVOMonitoringForKeyPaths:(id)paths context:(void *)context options:(unint64_t)options
{
  v20 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = pathsCopy;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [_captureEngine addObserver:self forKeyPath:*(*(&v15 + 1) + 8 * v14++) options:options context:{context, v15}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)_teardownKVOMonitoringForKeyPaths:(id)paths context:(void *)context
{
  v18 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = pathsCopy;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [_captureEngine removeObserver:self forKeyPath:*(*(&v13 + 1) + 8 * v12++) context:{context, v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (CAMFocusResultContext == context)
  {
    [(CUCaptureController *)self _focusResultChangedForKeyPath:pathCopy ofObject:objectCopy change:changeCopy];
  }

  else if (CAMExposureResultContext == context)
  {
    [(CUCaptureController *)self _exposureResultChangedForKeyPath:pathCopy ofObject:objectCopy change:changeCopy];
  }

  else if (CAMSuggestionResultContext == context)
  {
    [(CUCaptureController *)self _suggestionResultChangedForKeyPath:pathCopy ofObject:objectCopy change:changeCopy];
  }

  else if (CAMAvailabilityResultContext == context)
  {
    [(CUCaptureController *)self _availabilityResultChangedForKeyPath:pathCopy ofObject:objectCopy change:changeCopy];
  }

  else if (CAMZoomResultContext == context)
  {
    [(CUCaptureController *)self _zoomResultChangedForKeyPath:pathCopy ofObject:objectCopy change:changeCopy];
  }

  else if (CAMSystemPressureStateMonitoringContext == context)
  {
    [(CUCaptureController *)self _systemPressureStateMonitoringChangedForKeyPath:pathCopy ofObject:objectCopy change:changeCopy];
  }

  else if (CAMOverCapturePreviewContext == context)
  {
    [(CUCaptureController *)self _overCapturePreviewStatusChangedForKeyPath:pathCopy ofObject:objectCopy change:changeCopy];
  }

  else if (CAMPreviewZoomPIPContext == context)
  {
    [(CUCaptureController *)self _zoomPIPChangedForKeyPath:pathCopy ofObject:objectCopy change:changeCopy];
  }

  else if (CAMStereoCaptureStatusContext == context)
  {
    [(CUCaptureController *)self _stereoCaptureStatusChangedForKeyPath:pathCopy ofObject:objectCopy change:changeCopy];
  }

  else if (CAMDocumentScanningResultsContext == context)
  {
    [(CUCaptureController *)self _documentScanningChangedForKeyPath:pathCopy ofObject:objectCopy change:changeCopy];
  }

  else if (CAMLensPositionContext == context)
  {
    [(CUCaptureController *)self _lensPositionChangedForKeyPath:pathCopy ofObject:objectCopy change:changeCopy];
  }

  else if (CAMSmudgeDetectionResultContext == context)
  {
    [(CUCaptureController *)self _cameraLensSmudgeDetectionStatusChangedForKeyPath:pathCopy ofObject:objectCopy change:changeCopy];
  }

  else if (CAMRecommendedFramingContext == context)
  {
    [(CUCaptureController *)self _recommendedSmartFramingChangedForKeyPath:pathCopy ofObject:objectCopy change:changeCopy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CUCaptureController;
    [(CUCaptureController *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_startCaptureSignpostIntervalForPersistenceUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    _persistenceUUIDToSignpostID = [(CUCaptureController *)self _persistenceUUIDToSignpostID];
    v6 = [_persistenceUUIDToSignpostID objectForKeyedSubscript:dCopy];

    if (!v6)
    {
      _nextSignpostID = [(CUCaptureController *)self _nextSignpostID];
      [(CUCaptureController *)self _setNextSignpostID:_nextSignpostID + 1];
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:_nextSignpostID];
      [_persistenceUUIDToSignpostID setObject:v8 forKeyedSubscript:dCopy];

      CAMSignpostWithIDAndArgs(66, _nextSignpostID, _nextSignpostID, 0, 0, 0);
    }
  }

  else
  {
    _persistenceUUIDToSignpostID = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(_persistenceUUIDToSignpostID, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController _startCaptureSignpostIntervalForPersistenceUUID:];
    }
  }
}

- (void)_endCaptureSignpostIntervalForPersistenceUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    _persistenceUUIDToSignpostID = [(CUCaptureController *)self _persistenceUUIDToSignpostID];
    v6 = [_persistenceUUIDToSignpostID objectForKeyedSubscript:dCopy];
    if (v6)
    {
      [_persistenceUUIDToSignpostID setObject:0 forKeyedSubscript:dCopy];
      unsignedIntegerValue = [v6 unsignedIntegerValue];
      CAMSignpostWithIDAndArgs(67, unsignedIntegerValue, unsignedIntegerValue, 0, 0, 0);
    }

    else
    {
      v8 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CUCaptureController _endCaptureSignpostIntervalForPersistenceUUID:];
      }
    }
  }

  else
  {
    _persistenceUUIDToSignpostID = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(_persistenceUUIDToSignpostID, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController _startCaptureSignpostIntervalForPersistenceUUID:];
    }
  }
}

- (void)_setupDocumentScanningMonitoring
{
  v4 = +[CAMCaptureCapabilities capabilities];
  if ([v4 isDocumentScanningSupported])
  {
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    [_captureEngine addObserver:self forKeyPath:@"currentCameraDevice.documentSceneConfidence" options:3 context:CAMDocumentScanningResultsContext];
  }
}

- (void)_tearDownDocumentScanningMonitoring
{
  v4 = +[CAMCaptureCapabilities capabilities];
  if ([v4 isDocumentScanningSupported])
  {
    _captureEngine = [(CUCaptureController *)self _captureEngine];
    [_captureEngine removeObserver:self forKeyPath:@"currentCameraDevice.documentSceneConfidence" context:CAMDocumentScanningResultsContext];
  }
}

- (void)_documentScanningChangedForKeyPath:(id)path ofObject:(id)object change:(id)change
{
  v6 = [change objectForKeyedSubscript:{*MEMORY[0x1E696A4F0], object}];
  v7 = objc_opt_respondsToSelector();
  v8 = 0;
  if (v7)
  {
    [v6 floatValue];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__CUCaptureController__documentScanningChangedForKeyPath_ofObject_change___block_invoke;
  v9[3] = &unk_1E76FC3A8;
  v9[4] = self;
  v10 = v8;
  cam_perform_on_main_asap(v9);
}

void __74__CUCaptureController__documentScanningChangedForKeyPath_ofObject_change___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) documentSceneResultDelegate];
  LODWORD(v2) = *(a1 + 40);
  [v3 captureController:*(a1 + 32) didChangeDocumentSceneConfidenceResults:v2];
}

- (void)updateCaptureButtonControlsForCaptureMode:(int64_t)mode devicePosition:(int64_t)position isRecording:(BOOL)recording depthSuggestionEnabled:(BOOL)enabled
{
  v8 = [[CAMUpdateCaptureButtonControlsCommand alloc] initWithRecording:recording captureMode:mode devicePosition:position depthSuggestionEnabled:enabled];
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine enqueueCommand:v8];
}

- (void)stopMonitoringForAccidentalLaunch
{
  _captureEngine = [(CUCaptureController *)self _captureEngine];
  [_captureEngine stopMonitoringForAccidentalLaunch];
}

- (BOOL)_shouldPlaySystemSound
{
  WeakRetained = objc_loadWeakRetained(&self->_audioCuePlaybackDelegate);

  if (!WeakRetained)
  {
    return 1;
  }

  v4 = objc_loadWeakRetained(&self->_audioCuePlaybackDelegate);
  v5 = [v4 captureControllerShouldPlayAudioCue:self];

  return v5;
}

- (CAMPreviewLayerOverCaptureStatusDelegate)previewLayerOverCaptureStatusDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_previewLayerOverCaptureStatusDelegate);

  return WeakRetained;
}

- (CAMStillImageCapturingVideoDelegate)stillImageCapturingVideoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stillImageCapturingVideoDelegate);

  return WeakRetained;
}

- (CAMBurstDelegate)burstDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_burstDelegate);

  return WeakRetained;
}

- (CAMDocumentSceneResultDelegate)documentSceneResultDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_documentSceneResultDelegate);

  return WeakRetained;
}

- (CAMLensPositionDelegate)lensPositionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lensPositionDelegate);

  return WeakRetained;
}

- (CAMLensSmudgeStatusDelegate)lensSmudgeStatusDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lensSmudgeStatusDelegate);

  return WeakRetained;
}

- (CAMShallowDepthOfFieldStatusDelegate)shallowDepthOfFieldStatusDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shallowDepthOfFieldStatusDelegate);

  return WeakRetained;
}

- (CAMFacesDelegate)facesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_facesDelegate);

  return WeakRetained;
}

- (CAMMachineReadableCodeDelegate)machineReadableCodeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_machineReadableCodeDelegate);

  return WeakRetained;
}

- (CAMHistogramDelegate)histogramDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_histogramDelegate);

  return WeakRetained;
}

- (CAMTextRegionResultDelegate)textRegionResultDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textRegionResultDelegate);

  return WeakRetained;
}

- (CAMZoomDelegate)zoomDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_zoomDelegate);

  return WeakRetained;
}

- (CAMControlsDelegate)controlsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_controlsDelegate);

  return WeakRetained;
}

- (CAMConstituentDeviceDelegate)constituentDeviceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_constituentDeviceDelegate);

  return WeakRetained;
}

- (CAMCaptureRecoveryDelegate)recoveryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recoveryDelegate);

  return WeakRetained;
}

- (CAMCaptureControllerSystemPressureStateDelegate)systemPressureStateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_systemPressureStateDelegate);

  return WeakRetained;
}

- (CAMCaptureControllerAudioCuePlaybackDelegate)audioCuePlaybackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_audioCuePlaybackDelegate);

  return WeakRetained;
}

- (CAMStereoCaptureStatusDelegate)stereoCaptureStatusDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stereoCaptureStatusDelegate);

  return WeakRetained;
}

- (CAMRecommendedSmartFramingDelegate)recommendedSmartFramingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recommendedSmartFramingDelegate);

  return WeakRetained;
}

- (void)captureStillImageWithRequest:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)stillImageRequest:(void *)a1 didCompleteVideoCaptureWithResult:.cold.1(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)startCapturingVideoWithRequest:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_handleCaptureEngineExecutionNotification:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A3640000, v0, OS_LOG_TYPE_ERROR, "CAMModeAndDeviceCommand configuration failed! (%{public}@)", v1, 0xCu);
}

- (void)_constituentDeviceTypeFromDevice:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_1A3640000, v1, OS_LOG_TYPE_ERROR, "Unexpected constituent device type %{public}@ for device %{public}@", v2, 0x16u);
}

- (void)_endCaptureSignpostIntervalForPersistenceUUID:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A3640000, v0, OS_LOG_TYPE_ERROR, "No signpostID found for persistenceUUID %{public}@", v1, 0xCu);
}

@end