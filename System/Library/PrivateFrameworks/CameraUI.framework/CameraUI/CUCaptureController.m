@interface CUCaptureController
- (BOOL)_canBeginCaptureCheckAvailability:(BOOL)a3 error:(id *)a4;
- (BOOL)_internalCaptureStillImageWithRequest:(id)a3 error:(id *)a4;
- (BOOL)_internalStartCapturingVideoWithRequest:(id)a3 error:(id *)a4;
- (BOOL)_kvoDidEndForChange:(id)a3;
- (BOOL)_kvoDidStartForChange:(id)a3;
- (BOOL)_shouldLockWhiteBalanceForActiveVideoRequest;
- (BOOL)_shouldLockWhiteBalanceForCTMVideoRequest:(id)a3;
- (BOOL)_shouldLockWhiteBalanceForVideoCaptureRequest:(id)a3;
- (BOOL)_shouldMonitorSystemPressureState;
- (BOOL)_shouldPlaySystemSound;
- (BOOL)_shouldResetFocusAndExposureAfterCapture;
- (BOOL)_shouldTrackInflightCountForRequest:(id)a3;
- (BOOL)_stopCapturingVideoAndDisableCaptureAvailabilityWhileStopping:(BOOL)a3;
- (BOOL)_wantsImageAnalysisForGraphConfiguration:(id)a3;
- (BOOL)_wantsMachineReadableCodesForGraphConfiguration:(id)a3;
- (BOOL)captureStillImageWithRequest:(id)a3 error:(id *)a4;
- (BOOL)hasActiveCTMVideoCaptures;
- (BOOL)initiateCTMCaptureWithSettings:(id)a3 error:(id *)a4;
- (BOOL)intervalometer:(id)a3 didGenerateCaptureRequest:(id)a4;
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
- (BOOL)startCapturingBurstWithRequest:(id)a3 error:(id *)a4;
- (BOOL)startCapturingPanoramaWithRequest:(id)a3 error:(id *)a4;
- (BOOL)startCapturingVideoWithRequest:(id)a3 error:(id *)a4;
- (BOOL)stopCapturingPanoramaInterrupted:(BOOL)a3;
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
- (CUCaptureController)initWithCaptureConfiguration:(id)a3 zoomFactor:(double)a4 outputToExternalStorage:(BOOL)a5 engineOptions:(int64_t)a6 locationController:(id)a7 motionController:(id)a8 burstController:(id)a9 protectionController:(id)a10 powerController:(id)a11 irisVideoController:(id)a12 remoteShutterController:(id)a13;
- (id)_availabilityKeyPaths;
- (id)_commandForChangeToGraphConfiguration:(id)a3 zoomFactor:(double)a4 minimumExecutionTime:(double)a5 outputToExternalStorage:(BOOL)a6 outRequestID:(int *)a7;
- (id)_commandForConfiguration:(id)a3 zoomFactor:(double)a4 outputToExternalStorage:(BOOL)a5 outRequestID:(int *)a6;
- (id)_commandForLockingExposureIncludingFocus:(BOOL)a3;
- (id)_commandForResetFocus:(BOOL)a3 resetExposure:(BOOL)a4 resetExposureTargetBias:(BOOL)a5 resetSecondaryDevice:(BOOL)a6;
- (id)_exposureKVOKeyPaths;
- (id)_focusKVOKeyPaths;
- (id)_lensPositionKVOKeyPaths;
- (id)_realtimeMetadataCommandsForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 capturing:(BOOL)a5 wantsMachineReadableCodes:(BOOL)a6 wantsImageAnalysis:(BOOL)a7;
- (id)_sanitizePanoramaRequest:(id)a3;
- (id)_sanitizeStillImageRequest:(id)a3;
- (id)_sanitizeVideoRequest:(id)a3;
- (id)_suggestionKeyPaths;
- (id)_systemPressureStateMonitoringKeyPaths;
- (id)_textAnalysisImageFromStillImageResult:(id)a3 imageOrientation:(int64_t)a4;
- (id)_thumbnailImageFromStillImageCaptureResult:(id)a3 imageOrientation:(int64_t)a4;
- (id)_thumbnailImageFromVideoCaptureResult:(id)a3 previewOrientation:(int64_t)a4 previewImage:(id *)a5;
- (id)_updateFocusAndExposureForStartBurstCapture;
- (id)_updateFocusAndExposureForStartPanorama;
- (id)_zoomMonitoringKeyPaths;
- (int)applyCaptureConfiguration:(id)a3 zoomFactor:(double)a4 outputToExternalStorage:(BOOL)a5;
- (int)changeToGraphConfiguration:(id)a3 zoomFactor:(double)a4 minimumExecutionTime:(double)a5 outputToExternalStorage:(BOOL)a6;
- (int64_t)_cinematicMetadataObjectIDForMetadataObject:(id)a3;
- (int64_t)_constituentDeviceTypeFromDevice:(id)a3;
- (int64_t)_primaryConstituentDeviceTypeFromDevice:(id)a3;
- (unint64_t)_maximumNumberOfStillImageRequestsDuringBurst;
- (unint64_t)currentBurstCount;
- (void)_availabilityResultChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5;
- (void)_beginTrackingCTMVideoRecordingForIdentifier:(id)a3;
- (void)_beginTrackingLivePhotoVideoRecordingForIdentifier:(id)a3;
- (void)_cameraLensSmudgeDetectionStatusChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5;
- (void)_documentScanningChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5;
- (void)_endCaptureSignpostIntervalForPersistenceUUID:(id)a3;
- (void)_endTrackingCTMVideoRecordingForIdentifier:(id)a3;
- (void)_endTrackingLivePhotoVideoRecordingForIdentifier:(id)a3;
- (void)_exposureResultChangedForEngineKeyPath:(id)a3 withDevice:(id)a4 change:(id)a5;
- (void)_exposureResultChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5;
- (void)_focusResultChangedForEngineKeyPath:(id)a3 withDevice:(id)a4 change:(id)a5;
- (void)_focusResultChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5;
- (void)_handleCaptureEngineExecutionNotification:(id)a3;
- (void)_handleShallowDepthOfFieldStatusChangedNotification:(id)a3;
- (void)_handleSystemPressureState:(id)a3;
- (void)_lensPositionChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5;
- (void)_notifyDelegateOfCaptureAvailabilityChanged:(BOOL)a3;
- (void)_notifyDelegateOfConfigurationAvailabilityChanged:(BOOL)a3;
- (void)_overCapturePreviewStatusChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5;
- (void)_processCapturedBurstRequest:(id)a3 withResult:(id)a4;
- (void)_processPendingVideoCaptureRequest:(id)a3;
- (void)_recommendedSmartFramingChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5;
- (void)_resetCapturingVideoState;
- (void)_resetFocusAndExposureAfterCapture;
- (void)_resetFocusAndExposureAfterCaptureForType:(int64_t)a3;
- (void)_resetFocusAndExposureIfAppropriateForReason:(int64_t)a3;
- (void)_scheduleFocusAndExposureResetAfterCaptureIfNecessaryForType:(int64_t)a3;
- (void)_setCaptureAvailable:(BOOL)a3;
- (void)_setCapturingCTMVideoRequest:(id)a3;
- (void)_setCapturingVideoRequest:(id)a3;
- (void)_setCurrentCameraSystemPressureState:(id)a3;
- (void)_setupAvailabilityMonitoring;
- (void)_setupDocumentScanningMonitoring;
- (void)_setupExposureMonitoring;
- (void)_setupFocusAndExposureMonitoring;
- (void)_setupFocusMonitoring;
- (void)_setupKVOMonitoringForKeyPaths:(id)a3 context:(void *)a4 options:(unint64_t)a5;
- (void)_setupLensPositionMonitoring;
- (void)_setupLensSmudgeDetectionMonitoring;
- (void)_setupOverCapturePreviewMonitoring;
- (void)_setupRecommendedSmartFramingMonitoring;
- (void)_setupStereoCaptureStatusMonitoring;
- (void)_setupSuggestionMonitoring;
- (void)_setupSystemPressureStateMonitoring;
- (void)_setupZoomMonitoring;
- (void)_setupZoomPIPMonitoring;
- (void)_startCaptureSignpostIntervalForPersistenceUUID:(id)a3;
- (void)_stereoCaptureStatusChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5;
- (void)_suggestionResultChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5;
- (void)_systemPressureStateMonitoringChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5;
- (void)_tearDownDocumentScanningMonitoring;
- (void)_tearDownOverCapturePreviewMonitoring;
- (void)_teardownAvailabilityMonitoring;
- (void)_teardownFocusAndExposureMonitoring;
- (void)_teardownKVOMonitoringForKeyPaths:(id)a3 context:(void *)a4;
- (void)_teardownLensPositionMonitoring;
- (void)_teardownLensSmudgeDetectionMonitoring;
- (void)_teardownRecommendedSmartFramingMonitoring;
- (void)_teardownStereoCaptureStatusMonitoring;
- (void)_teardownSuggestionMonitoring;
- (void)_teardownSystemPressureStateMonitoring;
- (void)_teardownZoomMonitoring;
- (void)_teardownZoomPIPMonitoring;
- (void)_updateAvailabilityAfterCapturedRequest:(id)a3;
- (void)_updateAvailabilityAfterEnqueuedRequest:(id)a3;
- (void)_updateAvailabilityAfterStopCapturingForRequest:(id)a3;
- (void)_updateAvailabilityForRequestType:(int64_t)a3;
- (void)_updateAvailabilityWhenPreparingToStopCapturingForRequest:(id)a3;
- (void)_updateMaximumNumberOfStillImageRequestsAfterBurst;
- (void)_updateMaximumNumberOfStillImageRequestsAfterCapturedRequestIfNecessary:(id)a3;
- (void)_updateMaximumNumberOfStillImageRequestsAfterEnqueuingRequest:(id)a3;
- (void)_zoomPIPChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5;
- (void)_zoomResultChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5;
- (void)attemptToEndInterruptions;
- (void)cancelAutoResumeAfterDate:(id)a3;
- (void)cancelCTMCaptureForSettings:(id)a3;
- (void)cancelDelayedFocusAndExposureReset;
- (void)changeExposureTargetBias:(float)a3;
- (void)changeToAspectRatioCrop:(int64_t)a3;
- (void)changeToFlashMode:(int64_t)a3;
- (void)changeToLockedExposure;
- (void)changeToLockedFocusAndExposure;
- (void)changeToNightMode:(int64_t)a3;
- (void)changeToPanoramaDirection:(int64_t)a3;
- (void)changeToPanoramaEncodingBehavior:(int64_t)a3;
- (void)changeToPortraitAperture:(double)a3;
- (void)changeToPortraitLightingEffectStrength:(double)a3;
- (void)changeToPreviewConfiguration:(unint64_t)a3;
- (void)changeToPreviewDisabled;
- (void)changeToPreviewEnabledWithConfiguration:(unint64_t)a3;
- (void)changeToPreviewFilters:(id)a3 captureMode:(int64_t)a4;
- (void)changeToSmartFramingFieldOfView:(int64_t)a3 mode:(int64_t)a4 videoConfiguration:(int64_t)a5 devicePosition:(int64_t)a6;
- (void)changeToSmartStyle:(id)a3;
- (void)changeToTimelapseCaptureRate:(float)a3;
- (void)changeToTorchLevel:(float)a3;
- (void)changeToTorchMode:(int64_t)a3;
- (void)changeToVideoHDRSuspended:(BOOL)a3;
- (void)changeToVideoRecordingCaptureOrientation:(int64_t)a3;
- (void)changeToVideoZoomFactor:(double)a3 graphConfiguration:(id)a4;
- (void)dealloc;
- (void)endCTMVideoCapture;
- (void)focusAndExposeAtPoint:(CGPoint)a3 lockFocus:(BOOL)a4 rectSize:(int64_t)a5 resetExposureTargetBias:(BOOL)a6;
- (void)focusAtCenterForVideoRecording;
- (void)focusAtPoint:(CGPoint)a3 lockFocus:(BOOL)a4 rectSize:(int64_t)a5;
- (void)forceDisableSubjectAreaChangeMonitoring;
- (void)handleSessionDidStopRunning;
- (void)handleSessionInterruptionForReason:(int64_t)a3;
- (void)intervalometer:(id)a3 didReachMaximumCountWithRequest:(id)a4;
- (void)invalidateController;
- (void)lockFocusAtLensPosition:(float)a3 completionBlock:(id)a4;
- (void)logCaptureAvailabilityDescription;
- (void)metadataWasRecognized:(id)a3 forMetadataObjectTypes:(id)a4 deviceFormat:(id)a5;
- (void)notifyTimelapseControllerFinishedUpdatingWithLocation;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)panoramaConfigurationDidChangeWithImageQueue:(_CAImageQueue *)a3 direction:(int64_t)a4;
- (void)panoramaRequest:(id)a3 didCompleteCaptureWithResult:(id)a4;
- (void)panoramaRequest:(id)a3 didReceiveNotification:(int64_t)a4;
- (void)panoramaRequestDidStartCapturing:(id)a3;
- (void)panoramaRequestDidStopCapturing:(id)a3 interrupted:(BOOL)a4;
- (void)pauseCapturingStillImagePairedVideo;
- (void)prepareDeferredProcessingWithStillImageRequest:(id)a3;
- (void)preparePhotoOutputForExpectedPhotoResolution:(int64_t)a3;
- (void)prepareToCaptureStillImageAtSystemTime:(int64_t)a3;
- (void)queryTimelapseDimensionsWithCompletionBlock:(id)a3;
- (void)queryVideoDimensionsWithCompletionBlock:(id)a3;
- (void)registerCaptureService:(id)a3;
- (void)registerEffectsPreviewSampleBufferDelegate:(id)a3;
- (void)registerVideoThumbnailContentsDelegate:(id)a3;
- (void)resetFocusAndExposure;
- (void)resumeCapturingStillImagePairedVideo;
- (void)setAutoSmartFramingEnabledFieldOfViews:(id)a3;
- (void)setBurstDelegate:(id)a3;
- (void)setCapturingTimelapse:(BOOL)a3 forDevicePosition:(int64_t)a4;
- (void)setCinematicFocusForMetadataObject:(id)a3 atPoint:(CGPoint)a4 useFixedOpticalFocus:(BOOL)a5 useHardFocus:(BOOL)a6;
- (void)setFallbackPrimaryConstituentDeviceSelection:(int64_t)a3;
- (void)setMultiCamPictureInPictureMetrics:(id)a3;
- (void)setPrimaryConstituentDeviceSwitchingBehavior:(int64_t)a3 restrictedSwitchingConditions:(unint64_t)a4;
- (void)setSmartFramingMonitorEnabled:(BOOL)a3;
- (void)startCaptureSessionWithRetryCount:(unint64_t)a3 retryInterval:(double)a4 logReason:(id)a5 completion:(id)a6;
- (void)startRampToVideoZoomFactor:(double)a3 withDuration:(double)a4 zoomRampTuning:(int64_t)a5 graphConfiguration:(id)a6;
- (void)startRampToVideoZoomFactor:(double)a3 withRate:(float)a4 graphConfiguration:(id)a5;
- (void)stillImageRequest:(id)a3 didCompleteStillImageCaptureWithResult:(id)a4;
- (void)stillImageRequest:(id)a3 didCompleteVideoCaptureWithResult:(id)a4;
- (void)stillImageRequest:(id)a3 didStopCapturingCTMVideoForCoordinationInfo:(id)a4;
- (void)stillImageRequest:(id)a3 didStopCapturingLivePhotoVideoForCoordinationInfo:(id)a4;
- (void)stillImageRequestDidBeginCaptureBeforeResolvingSettings:(id)a3;
- (void)stillImageRequestDidCompleteCapture:(id)a3 error:(id)a4;
- (void)stillImageRequestDidStartCapturing:(id)a3 resolvedSettings:(id)a4;
- (void)stillImageRequestDidStopCapturingStillImage:(id)a3;
- (void)stillImageRequestDidUnblockResponsiveCapture:(id)a3;
- (void)stillImageRequestWillStartCapturingVideo:(id)a3;
- (void)stopCaptureSessionWithCompletion:(id)a3;
- (void)stopCapturingBurst;
- (void)stopMonitoringForAccidentalLaunch;
- (void)stopRampToVideoZoomFactor;
- (void)unregisterCaptureService:(id)a3;
- (void)unregisterEffectsPreviewSampleBufferDelegate:(id)a3;
- (void)unregisterVideoThumbnailContentsDelegate:(id)a3;
- (void)updateCaptureButtonControlsForCaptureMode:(int64_t)a3 devicePosition:(int64_t)a4 isRecording:(BOOL)a5 depthSuggestionEnabled:(BOOL)a6;
- (void)updateRealtimeMetadataConfigurationForGraphConfiguration:(id)a3 isCapturing:(BOOL)a4;
- (void)videoRequest:(id)a3 didCompleteCaptureWithResult:(id)a4;
- (void)videoRequestDidPauseCapturing:(id)a3;
- (void)videoRequestDidResumeCapturing:(id)a3;
- (void)videoRequestDidStartCapturing:(id)a3;
- (void)videoRequestDidStopCapturing:(id)a3;
- (void)willPerformRecoveryFromRuntimeError:(id)a3;
@end

@implementation CUCaptureController

- (void)_setupFocusAndExposureMonitoring
{
  [(CUCaptureController *)self _setupFocusMonitoring];
  [(CUCaptureController *)self _setupExposureMonitoring];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__subjectAreaDidChange_ name:*MEMORY[0x1E69868F8] object:0];
}

- (void)_setupFocusMonitoring
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(CUCaptureController *)self _captureEngine];
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

        [v3 addObserver:self forKeyPath:*(*(&v11 + 1) + 8 * v10++) options:3 context:{CAMFocusResultContext, v11}];
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
  v3 = [(CUCaptureController *)self _captureEngine];
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

        [v3 addObserver:self forKeyPath:*(*(&v11 + 1) + 8 * v10++) options:3 context:{CAMExposureResultContext, v11}];
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
  v3 = [(CUCaptureController *)self _captureEngine];
  v4 = [(CUCaptureController *)self _suggestionKeyPaths];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) options:3 context:CAMSuggestionResultContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(CUCaptureController *)self _captureEngine];
  v4 = [(CUCaptureController *)self _availabilityKeyPaths];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) options:3 context:CAMAvailabilityResultContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v4 = [v3 isFlashMitigationSupported];

  if (v4)
  {
    v5 = [v2 arrayByAddingObject:@"currentCameraDevice.degradedCaptureQualityFactors"];

    v2 = v5;
  }

  return v2;
}

- (void)_setupZoomMonitoring
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(CUCaptureController *)self _captureEngine];
  v4 = [(CUCaptureController *)self _zoomMonitoringKeyPaths];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) options:1 context:CAMZoomResultContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    v3 = [(CUCaptureController *)self _captureEngine];
    v4 = [(CUCaptureController *)self _systemPressureStateMonitoringKeyPaths];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v4);
          }

          [v3 addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) options:5 context:CAMSystemPressureStateMonitoringContext];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    v3 = 1;
  }

  else
  {
    v3 = [v2 isFrontPortraitModeSupported];
  }

  v4 = v3 | [v2 isFrontRearSimultaneousVideoSupported];

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
  v2 = [(CUCaptureController *)self currentBurstIntervalometer];
  v3 = v2 != 0;

  return v3;
}

- (void)pauseCapturingStillImagePairedVideo
{
  v3 = [(CUCaptureController *)self _needsInitialPairedVideoUpdate];
  if (![(CUCaptureController *)self _isCapturingPairedVideoPaused]|| v3)
  {
    v4 = [(CUCaptureController *)self _captureEngine];
    v5 = [[CAMPausePairedVideoRecordingCommand alloc] initWithRecordingPaused:1];
    [v4 enqueueCommand:v5];
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
  v2 = [(CUCaptureController *)self _capturingPanoramaRequest];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isInterrupted
{
  v2 = [(CUCaptureController *)self _captureEngine];
  v3 = [v2 isInterrupted];

  return v3;
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
  v2 = [(CUCaptureController *)self _numberOfInflightRequestsByType];
  v3 = [v2 countForObject:&unk_1F16C7F40] != 0;

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
  v3 = [(CUCaptureController *)self _protectionController];
  [v3 abortOutstandingNebulaDaemonWriteProtectionsForReason:@"Capture session stopped running"];

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

- (CUCaptureController)initWithCaptureConfiguration:(id)a3 zoomFactor:(double)a4 outputToExternalStorage:(BOOL)a5 engineOptions:(int64_t)a6 locationController:(id)a7 motionController:(id)a8 burstController:(id)a9 protectionController:(id)a10 powerController:(id)a11 irisVideoController:(id)a12 remoteShutterController:(id)a13
{
  v41 = a6;
  v42 = a5;
  v18 = a3;
  v48 = a7;
  v47 = a8;
  v46 = a9;
  v45 = a10;
  v19 = a11;
  v44 = a12;
  v43 = a13;
  v49.receiver = self;
  v49.super_class = CUCaptureController;
  v20 = [(CUCaptureController *)&v49 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->__locationController, a7);
    objc_storeStrong(&v21->__motionController, a8);
    objc_storeStrong(&v21->__burstController, a9);
    objc_storeStrong(&v21->__protectionController, a10);
    objc_storeStrong(&v21->__powerController, a11);
    objc_storeStrong(&v21->__irisVideoController, a12);
    objc_storeStrong(&v21->__remoteShutterController, a13);
    v22 = v19;
    v23 = [[CAMCaptureEngine alloc] initWithPowerController:v19 captureController:v21 options:v41];
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
    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 addObserver:v21 selector:sel__handleCaptureEngineExecutionNotification_ name:@"CAMCaptureEngineExecutedCommandWithContextNotification" object:v21->__captureEngine];
    v26 = +[CAMCaptureCapabilities capabilities];
    if (([v26 isBackPortraitModeSupported] & 1) != 0 || objc_msgSend(v26, "isFrontPortraitModeSupported"))
    {
      [v25 addObserver:v21 selector:sel__handleShallowDepthOfFieldStatusChangedNotification_ name:@"AVCaptureDeviceShallowDepthOfFieldStatusChangedNotification" object:{0, v41}];
    }

    v27 = [(CUCaptureController *)v21 _commandForConfiguration:v18 zoomFactor:v42 outputToExternalStorage:0 outRequestID:a4, v41];
    [(CAMCaptureEngine *)v21->__captureEngine enqueueCommand:v27];
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

    v19 = v22;
  }

  return v21;
}

- (void)dealloc
{
  [(CUCaptureController *)self invalidateController];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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

- (int)applyCaptureConfiguration:(id)a3 zoomFactor:(double)a4 outputToExternalStorage:(BOOL)a5
{
  v5 = self;
  v8 = 0;
  v6 = [(CUCaptureController *)self _commandForConfiguration:a3 zoomFactor:a5 outputToExternalStorage:&v8 outRequestID:a4];
  [(CAMCaptureEngine *)v5->__captureEngine enqueueCommand:v6];
  LODWORD(v5) = v8;

  return v5;
}

- (void)_setupOverCapturePreviewMonitoring
{
  v4 = [(CUCaptureController *)self _captureEngine];
  v3 = [v4 overCaptureVideoPreviewLayer];

  if (v3)
  {
    [v4 addObserver:self forKeyPath:@"overCaptureVideoPreviewLayer.overCaptureStatus" options:1 context:CAMOverCapturePreviewContext];
  }
}

- (void)_tearDownOverCapturePreviewMonitoring
{
  v4 = [(CUCaptureController *)self _captureEngine];
  v3 = [v4 overCaptureVideoPreviewLayer];

  if (v3)
  {
    [v4 removeObserver:self forKeyPath:@"overCaptureVideoPreviewLayer.overCaptureStatus" context:CAMOverCapturePreviewContext];
  }
}

- (void)_overCapturePreviewStatusChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 overCaptureVideoPreviewLayer];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && [v7 isEqualToString:@"overCaptureVideoPreviewLayer.overCaptureStatus"])
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

- (id)_thumbnailImageFromStillImageCaptureResult:(id)a3 imageOrientation:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 stillImageFilteredPreviewSurface];
  if (!v7)
  {
    v7 = [v6 stillImageUnfilteredPreviewSurface];
  }

  v8 = [(CUCaptureController *)self _responseThumbnailGenerator];
  v9 = [v8 newBGRAImageOfFormat:objc_msgSend(MEMORY[0x1E69BF160] inOrientation:"masterThumbnailFormat") usingSurface:a4, v7];
  v10 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v9];
  CGImageRelease(v9);

  return v10;
}

- (id)_thumbnailImageFromVideoCaptureResult:(id)a3 previewOrientation:(int64_t)a4 previewImage:(id *)a5
{
  v8 = [a3 videoPreviewPixelBuffer];
  v9 = [objc_alloc(MEMORY[0x1E69DCAB8]) _initWithIOSurface:CVPixelBufferGetIOSurface(v8) imageOrientation:a4];
  v10 = [(CUCaptureController *)self _responseThumbnailGenerator];
  v11 = [v10 newBGRAImageOfFormat:objc_msgSend(MEMORY[0x1E69BF160] inOrientation:"masterThumbnailFormat") usingPixelBuffer:a4, v8];
  v12 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v11];
  CGImageRelease(v11);
  if (a5 && v9)
  {
    v13 = v9;
    *a5 = v9;
  }

  return v12;
}

- (id)_textAnalysisImageFromStillImageResult:(id)a3 imageOrientation:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 stillImageFilteredPreviewSurface];
  if (!v7)
  {
    v7 = [v6 stillImageUnfilteredPreviewSurface];
  }

  v8 = [(CUCaptureController *)self _responseThumbnailGenerator];
  v9 = [v8 newBGRAImageInOrientation:a4 usingSurface:v7];

  v10 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v11 scale];
  v12 = [v10 initWithCGImage:v9 scale:0 orientation:?];

  CGImageRelease(v9);

  return v12;
}

- (BOOL)initiateCTMCaptureWithSettings:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CUCaptureController *)self _canBeginCaptureCheckAvailability:1 error:a4];
  if (v7)
  {
    v8 = [v6 persistenceUUID];
    [(CUCaptureController *)self _startCaptureSignpostIntervalForPersistenceUUID:v8];

    v9 = [(CUCaptureController *)self _sanitizeStillImageRequest:v6];
    v10 = [[CAMCTMInitiateCaptureCommand alloc] initWithSettings:v9];
    v11 = [(CUCaptureController *)self _captureEngine];
    [v11 enqueueCommand:v10];
  }

  return v7;
}

- (void)endCTMVideoCapture
{
  v3 = [(CUCaptureController *)self _capturingCTMVideoRequest];
  if (v3)
  {
    [(CUCaptureController *)self _setCapturingCTMVideoRequest:0];
    v4 = [v3 persistenceUUID];
    v5 = [[CAMCTMEndCaptureCommand alloc] initWithPersistenceUUID:v4];
    v6 = [(CUCaptureController *)self _captureEngine];
    [v6 enqueueCommand:v5];
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

- (void)cancelCTMCaptureForSettings:(id)a3
{
  if (a3)
  {
    v7 = [a3 persistenceUUID];
    v4 = [[CAMCTMCancelMomentCaptureCommand alloc] initWithPersistenceUUID:v7];
    v5 = [(CUCaptureController *)self _captureEngine];
    [v5 enqueueCommand:v4];
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

- (id)_sanitizeStillImageRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  if (!self->_capturingTimelapse)
  {
    v6 = [(CUCaptureController *)self _motionController];
    [v5 setCaptureOrientation:{objc_msgSend(v6, "captureOrientation")}];
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
      v9 = [(CUCaptureController *)self _burstController];
      v10 = [v9 currentBurstIdentifier];
      [v5 setBurstIdentifier:v10];

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

  v11 = [(CUCaptureController *)self _irisVideoController];
  v12 = [v11 shouldHandleLivePhotoRenderingForRequest:v5];

  v36 = [v5 shouldPersistToIncomingDirectory];
  Current = CFAbsoluteTimeGetCurrent();
  v14 = [MEMORY[0x1E696AAE8] mainBundle];
  v15 = [v14 bundleIdentifier];

  v16 = [v4 irisMode] - 3;
  v17 = [v5 irisVideoPersistenceUUIDForEV0:0];
  v18 = [v4 irisLocalVideoDestinationURLForEV0:0];
  v19 = v18;
  if (v16 >= 0xFFFFFFFFFFFFFFFELL && !v18)
  {
    if (v12)
    {
      [CAMIrisDiskUtilities videoDestinationPathForStillImageRequest:v5 captureTime:0 isEV0ForHDR:v15 bundleIdentifier:Current];
    }

    else
    {
      [CAMPersistenceController uniquePathForAssetWithUUID:v17 captureTime:@"MOV" extension:v36 usingIncomingDirectory:Current];
    }
    v20 = ;
    v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:v20];
    [v5 setLocalVideoDestinationURL:v19];
  }

  v21 = [v5 irisVideoPersistenceUUIDForEV0:1];
  v22 = [v4 irisLocalVideoDestinationURLForEV0:1];
  v23 = v22;
  if (v16 >= 0xFFFFFFFFFFFFFFFELL && !v22)
  {
    v24 = v17;
    if (v12)
    {
      [CAMIrisDiskUtilities videoDestinationPathForStillImageRequest:v5 captureTime:1 isEV0ForHDR:v15 bundleIdentifier:Current];
    }

    else
    {
      [CAMPersistenceController uniquePathForAssetWithUUID:v21 captureTime:@"MOV" extension:v36 usingIncomingDirectory:Current];
    }
    v25 = ;
    v23 = [MEMORY[0x1E695DFF8] fileURLWithPath:v25];
    [v5 setEV0LocalVideoDestinationURL:v23];

    v17 = v24;
  }

  if ([v4 isCTMVideo])
  {
    v26 = [v4 localCTMVideoDestinationURL];
    if (!v26)
    {
      v34 = v17;
      v27 = CFAbsoluteTimeGetCurrent();
      v28 = [v5 persistenceUUID];
      if (v12)
      {
        v29 = v28;
        [CAMIrisDiskUtilities videoDestinationPathForStillImageRequest:v5 captureTime:0 isEV0ForHDR:v15 bundleIdentifier:v27];
      }

      else
      {
        v29 = v28;
        [CAMPersistenceController uniquePathForAssetWithUUID:v28 captureTime:@"MOV" extension:v36 usingIncomingDirectory:v27];
      }
      v30 = ;
      v26 = [MEMORY[0x1E695DFF8] fileURLWithPath:{v30, v34}];
      [v5 setLocalCTMVideoDestinationURL:v26];

      v17 = v35;
    }
  }

  if (![v5 assertionIdentifier])
  {
    v31 = [(CUCaptureController *)self _powerController];
    [v5 setAssertionIdentifier:{objc_msgSend(v31, "generateAssertionIdentifier")}];
  }

  v32 = [v5 copy];

  return v32;
}

- (BOOL)captureStillImageWithRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v7 = [(CUCaptureController *)self _internalCaptureStillImageWithRequest:v6 error:&v13];
  v8 = v13;
  if (!v7)
  {
    v9 = [v6 persistenceUUID];
    [(CUCaptureController *)self _endCaptureSignpostIntervalForPersistenceUUID:v9];

    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController captureStillImageWithRequest:v6 error:v8];
    }
  }

  if (a4)
  {
    v11 = v8;
    *a4 = v8;
  }

  return v7;
}

- (BOOL)_canBeginCaptureCheckAvailability:(BOOL)a3 error:(id *)a4
{
  if (a3 && ![(CUCaptureController *)self isCaptureAvailable])
  {
    if (a4)
    {
      v6 = -22100;
      goto LABEL_14;
    }

    return 0;
  }

  if ([(CUCaptureController *)self _isFailedConfigurationPreventingCapture])
  {
    if (a4)
    {
      v6 = -22102;
LABEL_14:
      v7 = CAMCaptureControllerError(v6, 0);
      v8 = v7;
      result = 0;
      *a4 = v7;
      return result;
    }

    return 0;
  }

  if (![(CUCaptureController *)self _didCompleteInitialConfiguration])
  {
    if (a4)
    {
      v6 = -22103;
      goto LABEL_14;
    }

    return 0;
  }

  if ([(CUCaptureController *)self isInterrupted])
  {
    if (a4)
    {
      v6 = -22101;
      goto LABEL_14;
    }

    return 0;
  }

  return 1;
}

- (BOOL)_internalCaptureStillImageWithRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CUCaptureController *)self _canBeginCaptureCheckAvailability:1 error:a4];
  if (v7)
  {
    v8 = [(CUCaptureController *)self _sanitizeStillImageRequest:v6];

    v9 = [MEMORY[0x1E695DF70] array];
    if ([v8 isCTMVideo])
    {
      [(CUCaptureController *)self _setCapturingCTMVideoRequest:v8];
      v10 = [(CAMCaptureCommand *)[CAMUpdateFocusAndExposureForStartVideoRecordingCommand alloc] initWithSubcommands:0];
      [v9 addObject:v10];
      if ([(CUCaptureController *)self _shouldLockWhiteBalanceForCTMVideoRequest:v8])
      {
        v11 = [[CAMWhiteBalanceCommand alloc] initWithWhiteBalanceMode:0];
        [v9 addObject:v11];
      }
    }

    else if ([v8 nightMode])
    {
      [(CUCaptureController *)self _setCapturingNightModeStillImageRequest:v8];
    }

    v12 = [[CAMStillImageCaptureCommand alloc] initWithRequest:v8];
    [v9 addObject:v12];
    v13 = [[CAMCaptureCommand alloc] initWithSubcommands:v9];
    v14 = [(CUCaptureController *)self _captureEngine];
    [v14 enqueueCommand:v13];
    v15 = [(CUCaptureController *)self _powerController];
    [v15 addAssertionForIndentifier:objc_msgSend(v8 withReason:{"assertionIdentifier"), 1}];
    v16 = [v8 burstIdentifier];

    if (v16)
    {
      v17 = [(CUCaptureController *)self _burstController];
      [v17 processEnqueuedRequest:v8];
    }

    [(CUCaptureController *)self _updateMaximumNumberOfStillImageRequestsAfterEnqueuingRequest:v8];
    [(CUCaptureController *)self _updateAvailabilityAfterEnqueuedRequest:v8];
  }

  else
  {
    v8 = v6;
  }

  return v7;
}

- (void)resumeCapturingStillImagePairedVideo
{
  v3 = [(CUCaptureController *)self _needsInitialPairedVideoUpdate];
  if ([(CUCaptureController *)self _isCapturingPairedVideoPaused]|| v3)
  {
    v4 = [(CUCaptureController *)self _captureEngine];
    v5 = [[CAMPausePairedVideoRecordingCommand alloc] initWithRecordingPaused:0];
    [v4 enqueueCommand:v5];
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

- (void)prepareToCaptureStillImageAtSystemTime:(int64_t)a3
{
  v5 = [[CAMPrepareStillImageCaptureCommand alloc] initWithSystemTime:a3];
  v4 = [(CUCaptureController *)self _captureEngine];
  [v4 enqueueCommand:v5];
}

- (void)prepareDeferredProcessingWithStillImageRequest:(id)a3
{
  v4 = a3;
  v7 = [(CUCaptureController *)self _deferredProcessingCoordinator];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69BE2E8]);
    [(CUCaptureController *)self _setDeferredProcessingCoordinator:?];
  }

  v5 = [[CAMPrepareDeferredProcessingCommand alloc] initWithRequest:v4 coordinator:v7];

  v6 = [(CUCaptureController *)self _captureEngine];
  [v6 enqueueCommand:v5];
}

- (void)preparePhotoOutputForExpectedPhotoResolution:(int64_t)a3
{
  if (![(CUCaptureController *)self isCapturingBurst])
  {
    v6 = [[CAMUltraHighResolutionZeroShutterLagEnabledCommand alloc] initWithEnabled:a3 == 3];
    v5 = [(CUCaptureController *)self _captureEngine];
    [v5 enqueueCommand:v6];
  }
}

- (void)changeToSmartFramingFieldOfView:(int64_t)a3 mode:(int64_t)a4 videoConfiguration:(int64_t)a5 devicePosition:(int64_t)a6
{
  v8 = [[CAMDynamicAspectRatioCommand alloc] initWithSmartFramingFieldOfView:a3 videoDynamicAspectRatio:0 mode:a4 videoConfiguration:a5 devicePosition:a6];
  v7 = [(CUCaptureController *)self _captureEngine];
  [v7 enqueueCommand:v8];
}

- (void)setAutoSmartFramingEnabledFieldOfViews:(id)a3
{
  v4 = a3;
  v6 = [[CAMAutoSmartFramingEnabledFieldOfViewsCommand alloc] initWithSmartFramingEnabledFieldOfViews:v4];

  v5 = [(CUCaptureController *)self _captureEngine];
  [v5 enqueueCommand:v6];
}

- (void)setSmartFramingMonitorEnabled:(BOOL)a3
{
  v5 = [[CAMAutoSmartFramingMonitorCommand alloc] initWithSmartFramingMonitorEnabled:a3];
  v4 = [(CUCaptureController *)self _captureEngine];
  [v4 enqueueCommand:v5];
}

- (void)stillImageRequestWillStartCapturingVideo:(id)a3
{
  v4 = a3;
  [v4 isCTMVideo];
  v5 = [(CUCaptureController *)self _identifierForPendingVideoForStillImageRequest:v4];
  if ([v4 shouldProtectPersistenceForVideo])
  {
    v6 = [(CUCaptureController *)self _protectionController];
    [v6 startProtectingPersistenceForRequest:v4];
  }

  v7 = [(CUCaptureController *)self _protectionController];
  [v7 startProtectingNebulaDaemonWritesForIdentifier:v5];

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

- (void)stillImageRequestDidBeginCaptureBeforeResolvingSettings:(id)a3
{
  v4 = a3;
  v3 = v4;
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

- (void)stillImageRequestDidStartCapturing:(id)a3 resolvedSettings:(id)a4
{
  v7 = a3;
  v8 = a4;
  v5 = v8;
  v6 = v7;
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

- (void)stillImageRequestDidStopCapturingStillImage:(id)a3
{
  v4 = a3;
  v3 = v4;
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

- (void)stillImageRequestDidUnblockResponsiveCapture:(id)a3
{
  v4 = a3;
  v3 = v4;
  pl_dispatch_async();
}

uint64_t __68__CUCaptureController_stillImageRequestDidUnblockResponsiveCapture___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateAvailabilityAfterCapturedRequest:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateMaximumNumberOfStillImageRequestsAfterCapturedRequestIfNecessary:v3];
}

- (void)stillImageRequest:(id)a3 didCompleteStillImageCaptureWithResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 burstIdentifier];
  if (v8)
  {
    [(CUCaptureController *)self _processCapturedBurstRequest:v6 withResult:v7];
  }

  v9 = [v7 error];
  v10 = [(CUCaptureController *)self resultDelegate];
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 captureController:self didGenerateStillImageCaptureResult:v7 fromRequest:v6];
  }

  v11 = [(CUCaptureController *)self _capturingNightModeStillImageRequest];

  if (v11 == v6)
  {
    pl_dispatch_async();
  }

  v12 = [(CUCaptureController *)self _responseQueue];
  v16 = v6;
  v17 = v7;
  v13 = v9;
  v14 = v7;
  v15 = v6;
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

- (void)stillImageRequest:(id)a3 didStopCapturingLivePhotoVideoForCoordinationInfo:(id)a4
{
  v6 = a3;
  if ([a4 isFinalExpectedVideoResult])
  {
    v8 = [(CUCaptureController *)self _identifierForPendingVideoForStillImageRequest:v6];
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

- (void)stillImageRequest:(id)a3 didStopCapturingCTMVideoForCoordinationInfo:(id)a4
{
  v6 = a3;
  if ([a4 isFinalExpectedVideoResult])
  {
    v7 = [(CUCaptureController *)self _identifierForPendingVideoForStillImageRequest:v6];
    v9 = v6;
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

- (void)stillImageRequest:(id)a3 didCompleteVideoCaptureWithResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 isCTMVideo];
  v9 = [(CUCaptureController *)self _identifierForPendingVideoForStillImageRequest:v6];
  v10 = [v7 coordinationInfo];
  if ([v10 isFinalExpectedVideoResult])
  {
    v11 = [(CUCaptureController *)self _protectionController];
    [v11 stopProtectingNebulaDaemonWritesForIdentifier:v9];
  }

  if (v8)
  {
    v21 = v6;
    pl_dispatch_async();
  }

  v12 = [v7 error];

  if (v12)
  {
    v13 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController stillImageRequest:v7 didCompleteVideoCaptureWithResult:?];
    }
  }

  v14 = [(CUCaptureController *)self resultDelegate];
  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v14 captureController:self didGenerateVideoCaptureResult:v7 fromRequest:v6];
  }

  v15 = [(CUCaptureController *)self _responseQueue];
  v19 = v7;
  v20 = v6;
  v16 = v10;
  v17 = v6;
  v18 = v7;
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

- (void)stillImageRequestDidCompleteCapture:(id)a3 error:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
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

- (void)_beginTrackingLivePhotoVideoRecordingForIdentifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v4)
  {
    v5 = [(CUCaptureController *)self _identifiersForActiveLivePhotoVideoCaptures];
    v6 = [v5 count];
    [v5 addObject:v4];
    v7 = [v5 count];
    if (!v6 && v7)
    {
      v8 = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v8 stillImageRequestsWillStartCapturingLivePhotoVideo];
      }
    }
  }

  else
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController _beginTrackingLivePhotoVideoRecordingForIdentifier:];
    }
  }
}

- (void)_endTrackingLivePhotoVideoRecordingForIdentifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v4)
  {
    v5 = [(CUCaptureController *)self _identifiersForActiveLivePhotoVideoCaptures];
    v6 = [v5 count];
    [v5 removeObject:v4];
    v7 = [v5 count];
    if (v6 && !v7)
    {
      v8 = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v8 stillImageRequestsDidCompleteCapturingLivePhotoVideo];
      }
    }
  }

  else
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController _endTrackingLivePhotoVideoRecordingForIdentifier:];
    }
  }
}

- (BOOL)isCapturingLivePhotoVideo
{
  v2 = [(CUCaptureController *)self _identifiersForActiveLivePhotoVideoCaptures];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_beginTrackingCTMVideoRecordingForIdentifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v4)
  {
    v5 = [(CUCaptureController *)self _identifiersForActiveCTMVideoCaptures];
    v6 = [v5 count];
    [v5 addObject:v4];
    if ([v5 count])
    {
      v7 = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v7 stillImageRequestWillStartCapturingCTMVideoWithCaptureInFlight:v6 != 0];
      }
    }
  }

  else
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController _beginTrackingCTMVideoRecordingForIdentifier:];
    }
  }
}

- (void)_endTrackingCTMVideoRecordingForIdentifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v4)
  {
    v5 = [(CUCaptureController *)self _identifiersForActiveCTMVideoCaptures];
    v6 = [v5 count];
    [v5 removeObject:v4];
    v7 = [v5 count];
    if (v6 && !v7)
    {
      v8 = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v8 stillImageRequestsDidStopCapturingCTMVideo];
      }
    }
  }

  else
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController _endTrackingCTMVideoRecordingForIdentifier:];
    }
  }
}

- (BOOL)isCapturingCTMVideo
{
  v2 = [(CUCaptureController *)self _capturingCTMVideoRequest];
  v3 = v2 != 0;

  return v3;
}

- (void)_setCapturingCTMVideoRequest:(id)a3
{
  v5 = a3;
  if (self->__capturingCTMVideoRequest != v5)
  {
    v15 = v5;
    v6 = [(CUCaptureController *)self isCapturingCTMVideo];
    objc_storeStrong(&self->__capturingCTMVideoRequest, a3);
    v7 = [(CUCaptureController *)self isCapturingCTMVideo];
    v8 = v7;
    if (!v7 || v6)
    {
      if (v7 || !v6)
      {
        goto LABEL_10;
      }

      v12 = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
        goto LABEL_10;
      }

      v11 = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      [v11 stillImageRequestsWillRequestCTMVideoCaptureEnd];
    }

    else
    {
      v9 = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      v10 = objc_opt_respondsToSelector();

      if ((v10 & 1) == 0)
      {
LABEL_10:
        v14 = [(CUCaptureController *)self _remoteShutterController];
        [v14 setCapturingVideo:v8];

        v5 = v15;
        goto LABEL_11;
      }

      v11 = [(CUCaptureController *)self stillImageCapturingVideoDelegate];
      [v11 stillImageRequestsWillRequestCTMVideoCaptureStart];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (BOOL)hasActiveCTMVideoCaptures
{
  v2 = [(CUCaptureController *)self _identifiersForActiveCTMVideoCaptures];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)isCapturingNightModeImage
{
  v2 = [(CUCaptureController *)self _capturingNightModeStillImageRequest];
  v3 = v2 != 0;

  return v3;
}

- (void)changeToNightMode:(int64_t)a3
{
  v5 = [[CAMNightModeCommand alloc] initWithNightMode:a3];
  v4 = [(CUCaptureController *)self _captureEngine];
  [v4 enqueueCommand:v5];
}

- (BOOL)isCapturingStandardVideo
{
  v2 = [(CUCaptureController *)self _capturingVideoRequest];
  v3 = v2 != 0;

  return v3;
}

- (id)_sanitizeVideoRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [(CUCaptureController *)self _motionController];
  [v5 setCaptureOrientation:{objc_msgSend(v6, "captureOrientation")}];
  v7 = [v4 localDestinationURL];
  if (!v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v9 = [v5 persistenceUUID];
    v10 = +[CAMPersistenceController uniquePathForAssetWithUUID:captureTime:extension:usingIncomingDirectory:](CAMPersistenceController, "uniquePathForAssetWithUUID:captureTime:extension:usingIncomingDirectory:", v9, @"MOV", [v5 shouldPersistToIncomingDirectory], Current);
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
    [v5 setLocalDestinationURL:v7];
  }

  if ([MEMORY[0x1E69DC668] isRunningInStoreDemoMode])
  {
    [v5 setMaximumRecordedDuration:120.0];
  }

  v11 = +[CAMCaptureCapabilities capabilities];
  v12 = [v11 maximumRecordedFileSize];
  if (v12 >= 1)
  {
    v13 = v12;
    if (v12 < [v5 maximumRecordedFileSize])
    {
      [v5 setMaximumRecordedFileSize:v13];
    }
  }

  v14 = [MEMORY[0x1E69BF208] freeDiskSpaceThreshold];
  v15 = [v4 remainingDiskUsageThreshold];
  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  [v5 setRemainingDiskUsageThreshold:v16];
  if (![v5 assertionIdentifier])
  {
    v17 = [(CUCaptureController *)self _powerController];
    [v5 setAssertionIdentifier:{objc_msgSend(v17, "generateAssertionIdentifier")}];
  }

  v18 = [v5 copy];

  return v18;
}

- (void)_processPendingVideoCaptureRequest:(id)a3
{
  v18[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CUCaptureController *)self _locationController];
  [v5 setEnabled:0];
  v6 = -[CAMTorchCommand initWithTorchMode:]([CAMTorchCommand alloc], "initWithTorchMode:", [v4 torchMode]);
  v7 = +[CAMUserPreferences preferences];
  v8 = -[CAMVideoRecordingCameraSelectionBehaviorCommand initWithCameraSwitchingEnabled:]([CAMVideoRecordingCameraSelectionBehaviorCommand alloc], "initWithCameraSwitchingEnabled:", [v7 shouldDisableCameraSwitchingDuringVideoRecordingForMode:{objc_msgSend(v4, "captureMode")}] ^ 1);
  v9 = [[CAMStartVideoRecordingCommand alloc] initWithRequest:v4];
  v10 = objc_alloc(MEMORY[0x1E695DF70]);
  v18[0] = v6;
  v18[1] = v8;
  v18[2] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v12 = [v10 initWithArray:v11];

  if (([v4 trueVideoEnabled] & 1) == 0)
  {
    v13 = -[CUCaptureController _realtimeMetadataCommandsForMode:videoConfiguration:capturing:wantsMachineReadableCodes:wantsImageAnalysis:](self, "_realtimeMetadataCommandsForMode:videoConfiguration:capturing:wantsMachineReadableCodes:wantsImageAnalysis:", [v4 captureMode], objc_msgSend(v4, "captureVideoConfiguration"), 1, 0, 0);
    [v12 insertObject:v13 atIndex:0];
  }

  if (-[CUCaptureController _shouldManageFocusForMode:](self, "_shouldManageFocusForMode:", [v4 captureMode]))
  {
    v14 = [(CAMCaptureCommand *)[CAMUpdateFocusAndExposureForStartVideoRecordingCommand alloc] initWithSubcommands:0];
    [v12 insertObject:v14 atIndex:0];
  }

  if ([(CUCaptureController *)self _shouldLockWhiteBalanceForVideoCaptureRequest:v4])
  {
    v15 = [[CAMWhiteBalanceCommand alloc] initWithWhiteBalanceMode:0];
    [v12 insertObject:v15 atIndex:0];
  }

  v16 = [[CAMCaptureCommand alloc] initWithSubcommands:v12];
  v17 = [(CUCaptureController *)self _captureEngine];
  [v17 enqueueCommand:v16];
  [(CUCaptureController *)self _setPendingVideoCaptureRequest:0];
}

- (BOOL)startCapturingVideoWithRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v7 = [(CUCaptureController *)self _internalStartCapturingVideoWithRequest:v6 error:&v12];
  v8 = v12;
  if (!v7)
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController startCapturingVideoWithRequest:v6 error:v8];
    }
  }

  if (a4)
  {
    v10 = v8;
    *a4 = v8;
  }

  return v7;
}

- (BOOL)_internalStartCapturingVideoWithRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(CUCaptureController *)self _canBeginCaptureCheckAvailability:0 error:a4])
  {
    v7 = [(CUCaptureController *)self isCapturingStandardVideo];
    if (v7)
    {
      if (a4)
      {
        *a4 = CAMCaptureControllerError(-22100, 0);
      }

      v8 = v6;
    }

    else
    {
      v8 = [(CUCaptureController *)self _sanitizeVideoRequest:v6];

      [(CUCaptureController *)self _setPendingVideoCaptureRequest:v8];
      [(CUCaptureController *)self _setCapturingVideoRequest:v8];
      [(CUCaptureController *)self setWaitingForRecordingToStart:1];
      v10 = [(CUCaptureController *)self _powerController];
      [v10 addAssertionForIndentifier:objc_msgSend(v8 withReason:{"assertionIdentifier"), 2}];

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

    v9 = !v7;
    v6 = v8;
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

- (BOOL)_stopCapturingVideoAndDisableCaptureAvailabilityWhileStopping:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  if ([(CUCaptureController *)self isCapturingStandardVideo])
  {
    v5 = [(CUCaptureController *)self _capturingVideoRequest];
    if (v3)
    {
      [(CUCaptureController *)self _setVideoCaptureAvailable:0];
      [(CUCaptureController *)self _updateAvailabilityWhenPreparingToStopCapturingForRequest:v5];
    }

    v6 = [(CUCaptureController *)self _pendingVideoCaptureRequest];
    [(CUCaptureController *)self _resetCapturingVideoState];
    v7 = v6 == 0;
    if (v6)
    {
      v8 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v6;
        _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Stopped capturing a video before the recording sound finished playing; pending request: %{public}@", buf, 0xCu);
      }

      [(CUCaptureController *)self videoRequestDidStopCapturing:v6];
      v9 = CAMVideoCaptureRequestError(-28000, 0);
      v10 = [CAMVideoCaptureResult alloc];
      *buf = *MEMORY[0x1E6960C70];
      v18 = *(MEMORY[0x1E6960C70] + 16);
      v15 = *buf;
      v16 = v18;
      LOBYTE(v14) = 0;
      v11 = [(CAMVideoCaptureResult *)v10 initWithURL:0 filteredLocalDestinationURL:0 duration:buf stillDisplayTime:&v15 dimensions:0 metadata:0 videoZoomFactor:1.0 reason:0 videoPreviewPixelBuffer:0 coordinationInfo:0 error:v9 slowWriterFrameDrops:v14];
      [(CUCaptureController *)self videoRequest:v6 didCompleteCaptureWithResult:v11];
    }

    else
    {
      v9 = objc_alloc_init(CAMStopVideoRecordingCommand);
      v12 = [(CUCaptureController *)self _captureEngine];
      [v12 enqueueCommand:v9];
    }
  }

  else
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring request to stop capturing video, because we aren't recording.", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)_setCapturingVideoRequest:(id)a3
{
  v5 = a3;
  if (self->__capturingVideoRequest != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->__capturingVideoRequest, a3);
    v6 = [(CUCaptureController *)self isCapturingVideo];
    v7 = [(CUCaptureController *)self _remoteShutterController];
    [v7 setCapturingVideo:v6];

    v5 = v8;
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

- (void)changeToVideoRecordingCaptureOrientation:(int64_t)a3
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

  if (a3)
  {
    v6 = [[CAMSetVideoOrientationCommand alloc] initWithCaptureOrientation:a3];
    v7 = [(CUCaptureController *)self _captureEngine];
    [v7 enqueueCommand:v6];
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
        v9 = [(CUCaptureController *)self _captureEngine];
        [v9 enqueueCommand:v8];

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
        v9 = [(CUCaptureController *)self _captureEngine];
        [v9 enqueueCommand:v8];

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

- (void)videoRequestDidStartCapturing:(id)a3
{
  v4 = a3;
  if ([v4 shouldProtectPersistence])
  {
    v5 = [(CUCaptureController *)self _protectionController];
    [v5 startProtectingPersistenceForRequest:v4];
    v6 = [v4 persistenceUUID];
    [v5 startProtectingNebulaDaemonWritesForIdentifier:v6];
  }

  v7 = v4;
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

- (void)videoRequestDidStopCapturing:(id)a3
{
  v4 = a3;
  if ([v4 shouldProtectPersistence])
  {
    v5 = [v4 persistenceUUID];
    v6 = [(CUCaptureController *)self _protectionController];
    [v6 stopProtectingNebulaDaemonWritesForIdentifier:v5];
  }

  v7 = v4;
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

- (void)videoRequest:(id)a3 didCompleteCaptureWithResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  pl_dispatch_async();
  v9 = [(CUCaptureController *)self resultDelegate];
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v9 captureController:self didGenerateVideoCaptureResult:v7 fromRequest:v8];
  }

  v10 = [(CUCaptureController *)self _responseQueue];
  v13 = v7;
  v11 = v8;
  v12 = v7;
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

- (void)videoRequestDidResumeCapturing:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "CAMCaptureController videoRequestDidResumeCapturing:", buf, 2u);
  }

  v5 = v3;
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

- (void)videoRequestDidPauseCapturing:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "CAMCaptureController videoRequestDidPauseCapturing:", buf, 2u);
  }

  v5 = v3;
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

- (void)setMultiCamPictureInPictureMetrics:(id)a3
{
  v4 = a3;
  v5 = [(CUCaptureController *)self _captureEngine];
  [v5 setMultiCamPictureInPictureMetrics:v4];
}

- (id)_sanitizePanoramaRequest:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [(CUCaptureController *)self _motionController];
  [v4 setCaptureOrientation:{objc_msgSend(v5, "panoramaCaptureOrientation")}];
  if (![v4 assertionIdentifier])
  {
    v6 = [(CUCaptureController *)self _powerController];
    [v4 setAssertionIdentifier:{objc_msgSend(v6, "generateAssertionIdentifier")}];
  }

  v7 = [v4 copy];

  return v7;
}

- (BOOL)startCapturingPanoramaWithRequest:(id)a3 error:(id *)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(CUCaptureController *)self _canBeginCaptureCheckAvailability:0 error:a4])
  {
    v7 = [(CUCaptureController *)self isCapturingPanorama];
    if (v7)
    {
      if (a4)
      {
        *a4 = CAMCaptureControllerError(-22100, 0);
      }

      v8 = v6;
    }

    else
    {
      v8 = [(CUCaptureController *)self _sanitizePanoramaRequest:v6];

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

      v10 = [(CUCaptureController *)self _updateFocusAndExposureForStartPanorama];
      v11 = [[CAMStartPanoramaCommand alloc] initWithRequest:v8];
      v12 = [CAMCaptureCommand alloc];
      v19[0] = v10;
      v19[1] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
      v14 = [(CAMCaptureCommand *)v12 initWithSubcommands:v13];

      v15 = [(CUCaptureController *)self _captureEngine];
      [v15 enqueueCommand:v14];
      v16 = [(CUCaptureController *)self _powerController];
      [v16 addAssertionForIndentifier:objc_msgSend(v8 withReason:{"assertionIdentifier"), 4}];
      [(CUCaptureController *)self _updateAvailabilityAfterEnqueuedRequest:v8];
    }

    v9 = !v7;
    v6 = v8;
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

- (BOOL)stopCapturingPanoramaInterrupted:(BOOL)a3
{
  v3 = a3;
  v5 = [(CUCaptureController *)self isCapturingPanorama];
  if (v5)
  {
    [(CUCaptureController *)self _setCapturingPanoramaRequest:0];
    if ([(CUCaptureController *)self _shouldPlaySystemSound])
    {
      AudioServicesPlaySystemSound(0x45Eu);
    }

    v6 = [(CUCaptureController *)self _captureEngine];
    v7 = [[CAMStopPanoramaCommand alloc] initWithInterrupted:v3];
    [v6 enqueueCommand:v7];
  }

  return v5;
}

- (void)changeToPanoramaDirection:(int64_t)a3
{
  v7 = [[CAMPanoramaDirectionCommand alloc] initWithDirection:a3];
  v5 = [(CUCaptureController *)self _captureEngine];
  v6 = [(CUCaptureController *)self _remoteShutterController];
  [v6 setPanoramaDirection:a3];

  [v5 enqueueCommand:v7];
}

- (void)changeToPanoramaEncodingBehavior:(int64_t)a3
{
  v5 = [[CAMPanoramaEncodingCommand alloc] initWithPhotoEncodingBehavior:a3];
  v4 = [(CUCaptureController *)self _captureEngine];
  [v4 enqueueCommand:v5];
}

- (void)panoramaRequestDidStartCapturing:(id)a3
{
  v4 = a3;
  v3 = v4;
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

- (void)panoramaRequestDidStopCapturing:(id)a3 interrupted:(BOOL)a4
{
  v5 = a3;
  v4 = v5;
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

- (void)panoramaRequest:(id)a3 didCompleteCaptureWithResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = v6;
  pl_dispatch_async();
  v8 = [(CUCaptureController *)self _responseQueue];
  v11 = v7;
  v9 = v12;
  v10 = v7;
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

- (void)panoramaRequest:(id)a3 didReceiveNotification:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if ((a4 + 6001) <= 1)
  {
    v7 = v5;
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

- (void)panoramaConfigurationDidChangeWithImageQueue:(_CAImageQueue *)a3 direction:(int64_t)a4
{
  if (a3)
  {
    CFRetain(a3);
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

- (void)setBurstDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_burstDelegate, v4);
  v5 = [(CUCaptureController *)self _burstController];
  [v5 setBurstDelegate:v4];
}

- (unint64_t)currentBurstCount
{
  v2 = [(CUCaptureController *)self _burstController];
  v3 = [v2 currentBurstCount];

  return v3;
}

- (BOOL)startCapturingBurstWithRequest:(id)a3 error:(id *)a4
{
  v33[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CUCaptureController *)self _canBeginCaptureCheckAvailability:1 error:a4];
  if (v7)
  {
    v8 = [v6 captureRequest];
    v9 = [v8 captureDevice];
    v10 = [v8 captureMode];
    v11 = +[CAMCaptureCapabilities capabilities];
    v12 = [v11 isBurstSupportedForMode:v10 device:v9];
    v13 = [(CUCaptureController *)self _updateFocusAndExposureForStartBurstCapture];
    v14 = [[CAMBlinkAndSmileDetectionCommand alloc] initWithBlinkDetection:1 smileDetection:1];
    v15 = [CAMCaptureCommand alloc];
    v30 = v13;
    v32 = v14;
    v33[0] = v13;
    v33[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v17 = [(CAMCaptureCommand *)v15 initWithSubcommands:v16];

    v18 = [(CUCaptureController *)self _captureEngine];
    v31 = v17;
    [v18 enqueueCommand:v17];
    v19 = v12;
    if (v12)
    {
      v20 = [(CUCaptureController *)self _burstController];
      v21 = [v8 persistenceUUID];
      v22 = [v20 startBurstCaptureWithPersistenceUUID:v21];

      v23 = [v11 maximumBurstLength];
      v24 = [v6 maximumBurstLength];
      if (v24 >= v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = v24;
      }

      if (v24 > 0)
      {
        v23 = v25;
      }
    }

    else
    {
      v23 = [v6 maximumBurstLength];
    }

    [v11 captureIntervalForDevice:v9];
    v27 = [[CAMCaptureRequestIntervalometer alloc] initWithDelegate:self interval:v23 delay:v26 maximumCount:v26];
    [(CAMCaptureRequestIntervalometer *)v27 setPrototypeRequest:v8];
    [(CAMCaptureRequestIntervalometer *)v27 startGeneratingRequests];
    [(CUCaptureController *)self _setCurrentBurstIntervalometer:v27];
    if (v19)
    {
      AudioServicesStartSystemSound();
    }

    v28 = [(CUCaptureController *)self burstDelegate];
    if (v28 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v28 captureControllerWillStartCapturingBurst:self];
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
  v4 = [v3 captureOnTouchDown];

  v5 = [[CAMFocusCommand alloc] initWithFocusMode:v4];
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
    v3 = [(CUCaptureController *)self currentBurstIntervalometer];
    v4 = [v3 prototypeRequest];
    v5 = [v4 captureDevice];
    v6 = +[CAMCaptureCapabilities capabilities];
    v7 = [v6 isBurstSupportedForMode:objc_msgSend(v4 device:{"captureMode"), v5}];

    if (v7)
    {
      v8 = [(CUCaptureController *)self _burstController];
      [v8 finishBurstCaptureForDevice:v5];

      [v3 stopGeneratingRequests];
      [(CUCaptureController *)self _setCurrentBurstIntervalometer:0];
      AudioServicesStopSystemSound();
      if ([(CUCaptureController *)self _shouldPlaySystemSound])
      {
        v9 = [(CUCaptureController *)self burstDelegate];
        if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v9 captureControllerWillStartPlayingBurstEndSound:self];
        }

        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __41__CUCaptureController_stopCapturingBurst__block_invoke;
        v17 = &unk_1E76F7960;
        v18 = v9;
        v19 = self;
        v10 = v9;
        AudioServicesPlaySystemSoundWithCompletion(0x462u, &v14);
      }
    }

    else
    {
      [v3 stopGeneratingRequests];
      [(CUCaptureController *)self _setCurrentBurstIntervalometer:0];
    }

    [(CUCaptureController *)self _resetFocusAndExposureAfterCaptureForType:2, v14, v15, v16, v17];
    v11 = [[CAMBlinkAndSmileDetectionCommand alloc] initWithBlinkDetection:0 smileDetection:0];
    v12 = [(CUCaptureController *)self _captureEngine];
    [v12 enqueueCommand:v11];
    v13 = [(CUCaptureController *)self burstDelegate];
    if (v13)
    {
      if (objc_opt_respondsToSelector())
      {
        [v13 captureControllerDidStopCapturingBurst:self];
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

- (void)_processCapturedBurstRequest:(id)a3 withResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CUCaptureController *)self _burstController];
  [v8 processCapturedRequest:v7 withResult:v6];
}

- (BOOL)intervalometer:(id)a3 didGenerateCaptureRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CUCaptureController *)self currentBurstIntervalometer];

  v9 = v8 == v7 && ![v6 type] && -[CUCaptureController captureStillImageWithRequest:error:](self, "captureStillImageWithRequest:error:", v6, 0);
  return v9;
}

- (void)intervalometer:(id)a3 didReachMaximumCountWithRequest:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = [v5 maximumCount];
    _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Reached maximum burst count: %ld", &v8, 0xCu);
  }

  AudioServicesStopSystemSound();
  v7 = [(CUCaptureController *)self burstDelegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 captureControllerDidReachMaximumBurstLength:self];
  }
}

- (void)changeToSmartStyle:(id)a3
{
  v4 = a3;
  v6 = [[CAMSessionSmartStyleCommand alloc] initWithSmartStyle:v4];

  v5 = [(CUCaptureController *)self _captureEngine];
  [v5 enqueueCommand:v6];
}

- (void)setCapturingTimelapse:(BOOL)a3 forDevicePosition:(int64_t)a4
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (self->_capturingTimelapse != a3)
  {
    v5 = a3;
    self->_capturingTimelapse = a3;
    v7 = [(CUCaptureController *)self _shouldPlaySystemSound];
    if (v5)
    {
      if (v7)
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
      if (v7)
      {
        AudioServicesPlaySystemSound(0x45Eu);
      }

      v8 = [(CUCaptureController *)self _locationController];
      [v8 setEnabled:1];
      [(CUCaptureController *)self _scheduleFocusAndExposureResetAfterCaptureIfNecessaryForType:3];
    }

    v9 = [(CUCaptureController *)self _captureEngine];
    v10 = [[CAMTimelapseCaptureRateCommand alloc] initWithDefaultTimelapseCaptureRate];
    v11 = [[CAMImageControlModeCommand alloc] initWithCaptureMode:5 capturing:v5];
    v12 = [(CUCaptureController *)self _realtimeMetadataCommandsForMode:5 videoConfiguration:0 capturing:self->_capturingTimelapse wantsMachineReadableCodes:0 wantsImageAnalysis:0];
    v13 = [[CAMUpdateCaptureButtonControlsCommand alloc] initWithRecording:v5 captureMode:5 devicePosition:a4 depthSuggestionEnabled:0];
    v17[0] = v10;
    v17[1] = v11;
    v17[2] = v12;
    v17[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
    [v9 enqueueCommands:v14];

    v15 = [(CUCaptureController *)self _remoteShutterController];
    [v15 setCapturingTimelapse:v5];
  }
}

- (void)changeToTimelapseCaptureRate:(float)a3
{
  v5 = [CAMTimelapseCaptureRateCommand alloc];
  *&v6 = a3;
  v8 = [(CAMTimelapseCaptureRateCommand *)v5 initWithTimelapseCaptureRate:v6];
  v7 = [(CUCaptureController *)self _captureEngine];
  [v7 enqueueCommand:v8];
}

- (void)notifyTimelapseControllerFinishedUpdatingWithLocation
{
  v2 = [(CUCaptureController *)self _locationController];
  [v2 setEnabled:0];
}

- (id)_commandForConfiguration:(id)a3 zoomFactor:(double)a4 outputToExternalStorage:(BOOL)a5 outRequestID:(int *)a6
{
  v7 = a5;
  v23[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [(CUCaptureController *)self _motionController];
  v12 = +[CAMCaptureConfiguration captureGraphConfigurationUsingConfiguration:outputToExternalStorage:captureOrientation:](CAMCaptureConfiguration, "captureGraphConfigurationUsingConfiguration:outputToExternalStorage:captureOrientation:", v10, v7, [v11 captureOrientation]);

  v13 = [v12 mode];
  v14 = 0;
  if (v13 > 7)
  {
    v15 = 0;
  }

  else if (((1 << v13) & 0x51) != 0)
  {
    v15 = [v10 flashMode];
    v14 = 0;
  }

  else
  {
    v15 = 0;
    if (((1 << v13) & 0x86) != 0)
    {
      v14 = [v10 torchMode];
      v15 = 0;
    }
  }

  v16 = [(CUCaptureController *)self _commandForChangeToGraphConfiguration:v12 zoomFactor:v7 minimumExecutionTime:a6 outputToExternalStorage:a4 outRequestID:0.0];
  v17 = [[CAMFlashCommand alloc] initWithFlashMode:v15];
  v18 = [[CAMTorchCommand alloc] initWithTorchMode:v14];
  v19 = [CAMCaptureCommand alloc];
  v23[0] = v16;
  v23[1] = v17;
  v23[2] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v21 = [(CAMCaptureCommand *)v19 initWithSubcommands:v20];

  return v21;
}

- (id)_commandForChangeToGraphConfiguration:(id)a3 zoomFactor:(double)a4 minimumExecutionTime:(double)a5 outputToExternalStorage:(BOOL)a6 outRequestID:(int *)a7
{
  v87 = a6;
  v11 = a3;
  v12 = +[CAMCaptureCapabilities capabilities];
  v13 = [(CUCaptureController *)self _uniqueRequestIDForChangeToModeAndDevice];
  v14 = v13;
  if (a7)
  {
    *a7 = v13;
  }

  v89 = [v11 mode];
  v88 = [v11 device];
  if ([(CUCaptureController *)self isPreviewDisabled])
  {
    v85 = [CAMCaptureGraphConfiguration alloc];
    v83 = [v11 macroMode];
    v82 = [v11 videoConfiguration];
    v81 = [v11 audioConfiguration];
    v80 = [v11 mixAudioWithOthers];
    v79 = [v11 windNoiseRemovalEnabled];
    v78 = [v11 previewSampleBufferVideoFormat];
    v77 = [v11 previewFilters];
    v76 = [v11 videoThumbnailOutputConfiguration];
    v75 = [v11 photoEncodingBehavior];
    v74 = [v11 videoEncodingBehavior];
    v73 = [v11 enableAutoFPSVideo];
    v72 = [v11 isVideoHDRSuspended];
    v15 = [v11 aspectRatioCrop];
    v71 = [v11 photoQualityPrioritization];
    v70 = [v11 isCaptureMirrored];
    v69 = [v11 enableRAWCaptureIfSupported];
    v66 = [v11 semanticStyleSupport];
    v68 = [v11 previewSemanticStyle];
    v67 = [v11 smartStyles];
    v65 = [v11 enableContentAwareDistortionCorrection];
    v64 = [v11 enableResponsiveShutter];
    v63 = [v11 suspendLivePhotoCapture];
    v62 = [v11 videoStabilizationStrength];
    v61 = [v11 maximumPhotoResolution];
    v60 = [v11 colorSpace];
    v59 = [v11 isVideoBinned];
    v58 = [v11 enableDepthSuggestion];
    v57 = [v11 enableZoomPIP];
    v16 = [v11 customLensGroup];
    v17 = [v11 trueVideoEnabled];
    v18 = v14;
    v19 = v12;
    v20 = [v11 prefersHDR10BitVideo];
    BYTE2(v56) = [v11 frontRearSimultaneousVideoEnabled];
    BYTE1(v56) = v20;
    v12 = v19;
    v14 = v18;
    LOBYTE(v56) = v17;
    BYTE2(v55) = v57;
    BYTE1(v55) = v58;
    LOBYTE(v55) = v59;
    BYTE2(v54) = v63;
    BYTE1(v54) = v64;
    LOBYTE(v54) = v65;
    BYTE1(v53) = v69;
    LOBYTE(v53) = v70;
    BYTE1(v52) = v72;
    LOBYTE(v52) = v73;
    LOBYTE(v51) = v79;
    v21 = -[CAMCaptureGraphConfiguration initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:](v85, "initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:", v89, v88, v83, v82, v81, v80, v51, 0, v78, v77, v76, v75, v74, v52, v15, v71, v53, v66, v68, v67, v54, v62, v61, v60, v55, v16, v56, [v11 videoDynamicAspectRatio], objc_msgSend(v11, "smartFramingFieldOfView"));

    v11 = v21;
  }

  v86 = [[CAMModeAndDeviceCommand alloc] initWithGraphConfiguration:v11 minimumExecutionTime:v14 requestID:v87 outputToExternalStorage:a5];
  v22 = [MEMORY[0x1E695DF70] arrayWithObject:?];
  v84 = [[CAMSetVideoZoomFactorCommand alloc] initWithVideoZoomFactor:v11 graphConfiguration:a4];
  [v22 addObject:?];
  if ([v12 dynamicAspectRatioSupported])
  {
    v23 = [v11 mode];
    v24 = [v11 device];
    v25 = [v11 videoEncodingBehavior];
    v26 = self;
    v27 = [v11 videoConfiguration];
    v28 = [v11 prefersHDR10BitVideo];
    LOBYTE(v51) = [v11 frontRearSimultaneousVideoEnabled];
    v29 = [v12 resolvedVideoConfigurationForMode:v23 device:v24 videoEncodingBehavior:v25 videoConfiguration:v27 outputToExternalStorage:v87 prefersHDR10BitVideo:v28 frontRearSimultaneousVideoEnabled:v51];
    v30 = [CAMDynamicAspectRatioCommand alloc];
    v31 = [v11 smartFramingFieldOfView];
    v32 = [v11 videoDynamicAspectRatio];
    v33 = [v11 mode];
    v34 = [v11 devicePosition];
    v35 = v32;
    self = v26;
    v36 = [(CAMDynamicAspectRatioCommand *)v30 initWithSmartFramingFieldOfView:v31 videoDynamicAspectRatio:v35 mode:v33 videoConfiguration:v29 devicePosition:v34];
    [v22 addObject:v36];
  }

  if ([v12 isNightModeSupported])
  {
    v37 = -[CAMNightModeConfigurationCommand initWithNightModeEnabled:]([CAMNightModeConfigurationCommand alloc], "initWithNightModeEnabled:", [v12 isNightModeSupportedForMode:v89 device:v88 zoomFactor:a4]);
    [v22 addObject:v37];
    v38 = [[CAMNightModeCommand alloc] initWithNightMode:0];
    [v22 addObject:v38];
  }

  v39 = -[CUCaptureController _realtimeMetadataCommandsForMode:videoConfiguration:capturing:wantsMachineReadableCodes:wantsImageAnalysis:](self, "_realtimeMetadataCommandsForMode:videoConfiguration:capturing:wantsMachineReadableCodes:wantsImageAnalysis:", v89, [v11 videoConfiguration], 0, -[CUCaptureController _wantsMachineReadableCodesForGraphConfiguration:](self, "_wantsMachineReadableCodesForGraphConfiguration:", v11), -[CUCaptureController _wantsImageAnalysisForGraphConfiguration:](self, "_wantsImageAnalysisForGraphConfiguration:", v11));
  [v22 addObject:v39];
  if ([v12 focalLengthPickerSupported])
  {
    v40 = +[CAMUserPreferences preferences];
    v41 = [v40 customLensGroup];
    v42 = [v11 videoConfiguration];
    v43 = [v11 videoStabilizationStrength];
    v44 = v12;
    v45 = [v11 trueVideoEnabled];
    LOBYTE(v51) = [v11 frontRearSimultaneousVideoEnabled];
    v46 = v45;
    v12 = v44;
    v47 = [CAMZoomControlUtilities exifFocalLengthsByZoomFactorForMode:v89 device:v88 videoConfiguration:v42 videoStabilizationStrength:v43 customLensGroup:v41 isTrueVideo:v46 frontRearSimultaneousVideoEnabled:v51];
    v48 = [[CAMSetExifFocalLengthsByZoomFactorCommand alloc] initWithExifFocalLengthsByZoomFactor:v47];
    [v22 addObject:v48];
  }

  v49 = [[CAMCaptureCommand alloc] initWithSubcommands:v22];

  return v49;
}

- (void)updateRealtimeMetadataConfigurationForGraphConfiguration:(id)a3 isCapturing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CUCaptureController *)self _wantsMachineReadableCodesForGraphConfiguration:v6];
  v8 = [(CUCaptureController *)self _wantsImageAnalysisForGraphConfiguration:v6];
  v9 = [v6 mode];
  v10 = [v6 videoConfiguration];

  v12 = [(CUCaptureController *)self _realtimeMetadataCommandsForMode:v9 videoConfiguration:v10 capturing:v4 wantsMachineReadableCodes:v7 wantsImageAnalysis:v8];
  v11 = [(CUCaptureController *)self _captureEngine];
  [v11 enqueueCommand:v12];
}

- (id)_realtimeMetadataCommandsForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 capturing:(BOOL)a5 wantsMachineReadableCodes:(BOOL)a6 wantsImageAnalysis:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v22[2] = *MEMORY[0x1E69E9840];
  v12 = +[CAMCaptureCapabilities capabilities];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = v13;
  v15 = 1;
  if (a3 <= 4)
  {
    if (a3 > 2)
    {
      if (a3 != 3)
      {
LABEL_14:
        if (v8)
        {
          [v13 addObject:&unk_1F16C7F58];
          [v14 addObject:&unk_1F16C7F70];
        }

        if (!v7)
        {
          goto LABEL_24;
        }

        [v14 addObject:&unk_1F16C7F88];
        goto LABEL_21;
      }

      v15 = 0;
LABEL_21:
      v7 = 0;
      goto LABEL_24;
    }

    if ((a3 - 1) >= 2)
    {
      if (a3)
      {
        goto LABEL_28;
      }

      goto LABEL_14;
    }

LABEL_11:
    if (a5)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v7 = 0;
  if (a3 > 6)
  {
    if (a3 != 7)
    {
      if (a3 != 8)
      {
        if (a3 != 9)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      }

      goto LABEL_11;
    }

    v7 = 1;
LABEL_24:
    [v14 addObject:&unk_1F16C7F40];
    [v14 addObject:&unk_1F16C7FA0];
    [v14 addObject:&unk_1F16C7FB8];
    if (v7)
    {
      [v14 addObject:&unk_1F16C7FD0];
      [v14 addObject:&unk_1F16C7FE8];
      [v14 addObject:&unk_1F16C8000];
      [v14 addObject:&unk_1F16C8018];
      [v14 addObject:&unk_1F16C8030];
    }

    goto LABEL_26;
  }

  if (a3 != 5)
  {
    goto LABEL_24;
  }

  v15 = 0;
LABEL_26:
  if ([v12 isExposureClippingIndicatorSupportedForMode:a3 videoConfiguration:a4])
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

- (BOOL)_wantsMachineReadableCodesForGraphConfiguration:(id)a3
{
  v3 = a3;
  v4 = +[CAMUserPreferences preferences];
  v5 = [v4 shouldShowQRBanners];

  v6 = [v3 device];
  return v5 & ((v6 > 0xB) | (0xFDu >> v6));
}

- (BOOL)_wantsImageAnalysisForGraphConfiguration:(id)a3
{
  v3 = a3;
  v4 = +[CAMUserPreferences preferences];
  v5 = [v4 isImageAnalysisEnabled];

  v6 = +[CAMCaptureCapabilities capabilities];
  v7 = [v3 mode];
  v8 = [v3 devicePosition];

  LOBYTE(v3) = [v6 isImageAnalysisSupportedForMode:v7 devicePosition:v8];
  return v5 & v3;
}

- (int)changeToGraphConfiguration:(id)a3 zoomFactor:(double)a4 minimumExecutionTime:(double)a5 outputToExternalStorage:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
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
  v12 = [(CUCaptureController *)self _commandForChangeToGraphConfiguration:v10 zoomFactor:v6 minimumExecutionTime:&v16 outputToExternalStorage:a4 outRequestID:a5];
  v13 = [(CUCaptureController *)self _captureEngine];
  [v13 enqueueCommand:v12];
  v14 = v16;

  return v14;
}

- (void)changeToFlashMode:(int64_t)a3
{
  v5 = [[CAMFlashCommand alloc] initWithFlashMode:a3];
  v4 = [(CUCaptureController *)self _captureEngine];
  [v4 enqueueCommand:v5];
}

- (void)changeToTorchMode:(int64_t)a3
{
  v5 = [[CAMTorchCommand alloc] initWithTorchMode:a3];
  v4 = [(CUCaptureController *)self _captureEngine];
  [v4 enqueueCommand:v5];
}

- (void)changeToTorchLevel:(float)a3
{
  v5 = [CAMTorchCommand alloc];
  *&v6 = a3;
  v8 = [(CAMTorchCommand *)v5 initWithTorchLevel:v6];
  v7 = [(CUCaptureController *)self _captureEngine];
  [v7 enqueueCommand:v8];
}

- (void)_handleCaptureEngineExecutionNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"CAMModeAndDeviceCommandDesiredConfiguration"];
  v6 = [v4 objectForKey:@"CAMModeAndDeviceCommandResolvedConfiguration"];
  v7 = [v4 objectForKey:@"CAMModeAndDeviceCommandRequestID"];
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
  v11 = [v4 objectForKey:@"CAMModeAndDeviceConfigurationError"];
  if (v11)
  {
    v12 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController _handleCaptureEngineExecutionNotification:];
    }

    v13 = [v11 domain];
    v14 = [v13 isEqualToString:@"CAMModeAndDeviceCommandCannotCaptureErrorDomain"];

    if (!v14)
    {
      goto LABEL_15;
    }

    v15 = self;
    v16 = 1;
  }

  else
  {
    v15 = self;
    v16 = 0;
  }

  [(CUCaptureController *)v15 _setFailedConfigurationPreventingCapture:v16];
LABEL_15:
  v17 = -[CUCaptureController _shouldManageFocusForMode:](self, "_shouldManageFocusForMode:", [v6 mode]);
  v18 = [(CUCaptureController *)self _commandForResetFocus:v17 resetExposure:1 resetExposureTargetBias:1 resetSecondaryDevice:0];
  v19 = [(CUCaptureController *)self _captureEngine];
  [v19 enqueueCommand:v18];
  if ([v6 frontRearSimultaneousVideoEnabled])
  {
    v20 = [(CUCaptureController *)self _commandForResetFocus:v17 resetExposure:1 resetExposureTargetBias:1 resetSecondaryDevice:1];
    [v19 enqueueCommand:v20];
  }

  v21 = [v8 integerValue];
  v22 = [(CUCaptureController *)self configurationDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v22 captureController:self didChangeToGraphConfiguration:v6 forDesiredConfiguration:v5 requestID:v21];
  }

LABEL_20:
}

- (void)changeToPreviewDisabled
{
  if (!self->_previewDisabled)
  {
    self->_previewDisabled = 1;
    v5 = [[CAMPreviewConfigurationCommand alloc] initWithPreviewConfiguration:0];
    v4 = [(CUCaptureController *)self _captureEngine];
    [v4 enqueueCommand:v5];
  }
}

- (void)changeToPreviewEnabledWithConfiguration:(unint64_t)a3
{
  if (self->_previewDisabled)
  {
    self->_previewDisabled = 0;
    v6 = [[CAMPreviewConfigurationCommand alloc] initWithPreviewConfiguration:a3];
    v5 = [(CUCaptureController *)self _captureEngine];
    [v5 enqueueCommand:v6];
  }
}

- (void)changeToPreviewConfiguration:(unint64_t)a3
{
  if (!self->_previewDisabled)
  {
    v6 = [[CAMPreviewConfigurationCommand alloc] initWithPreviewConfiguration:a3];
    v5 = [(CUCaptureController *)self _captureEngine];
    [v5 enqueueCommand:v6];
  }
}

- (void)changeToPreviewFilters:(id)a3 captureMode:(int64_t)a4
{
  v6 = a3;
  v7 = [[CAMPreviewFiltersCommand alloc] initWithFilters:v6 captureMode:a4];

  [(CAMCaptureEngine *)self->__captureEngine enqueueCommand:v7];
}

- (void)changeToVideoHDRSuspended:(BOOL)a3
{
  v5 = [[CAMVideoHDRSuspensionCommand alloc] initWithVideoHDRSuspended:a3];
  v4 = [(CUCaptureController *)self _captureEngine];
  [v4 enqueueCommand:v5];
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
  v3 = [(CUCaptureController *)self _capturingVideoRequest];
  if ([(CUCaptureController *)self _shouldLockWhiteBalanceForVideoCaptureRequest:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CUCaptureController *)self _capturingCTMVideoRequest];
    v4 = [(CUCaptureController *)self _shouldLockWhiteBalanceForCTMVideoRequest:v5];
  }

  return v4;
}

- (BOOL)_shouldLockWhiteBalanceForCTMVideoRequest:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 isCTMVideo])
  {
    v5 = [v4 wantsWhiteBalanceLockedDuringVideoRecording];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_shouldLockWhiteBalanceForVideoCaptureRequest:(id)a3
{
  if (a3)
  {
    return [a3 wantsWhiteBalanceLocked];
  }

  else
  {
    return 0;
  }
}

- (void)_resetFocusAndExposureIfAppropriateForReason:(int64_t)a3
{
  v5 = [(CUCaptureController *)self focusDelegate];
  v13 = v5;
  if (v5 && ![v5 captureController:self shouldResetFocusAndExposureForReason:a3])
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
      v12 = [(CUCaptureController *)self _captureEngine];
      [v12 enqueueCommand:v11];

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

- (id)_commandForResetFocus:(BOOL)a3 resetExposure:(BOOL)a4 resetExposureTargetBias:(BOOL)a5 resetSecondaryDevice:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_focusDelegate);
    [WeakRetained captureController:self willResetFocus:v9 exposure:v8];
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [[CAMSubjectAreaChangeMonitoringCommand alloc] initWithSubjectAreaChangeMonitoringEnabled:0 configureSecondaryDevice:v6];
  [v12 addObject:v13];
  if (v9)
  {
    v22 = [[CAMFocusCommand alloc] initWithFocusMode:3 atPointOfInterest:0 rectSize:[(CUCaptureController *)self _useSmoothFocus] smooth:v6 configureSecondaryDevice:0.5, 0.5];
    [v12 addObject:v22];

    if (!v8)
    {
LABEL_5:
      if (!v7)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

  else if (!v8)
  {
    goto LABEL_5;
  }

  v23 = [[CAMExposureCommand alloc] initWithExposureMode:2 atPointOfInterest:v6 configureSecondaryDevice:0.5, 0.5];
  [v12 addObject:v23];
  if (![(CUCaptureController *)self _shouldLockWhiteBalanceForActiveVideoRequest])
  {
    v24 = [[CAMWhiteBalanceCommand alloc] initWithWhiteBalanceMode:2 configureSecondaryDevice:v6];
    [v12 addObject:v24];
  }

  if (v7)
  {
LABEL_6:
    v14 = [(CUCaptureController *)self exposureDelegate];
    [v14 baselineExposureValueForCaptureController:self];
    v16 = v15;

    if (v6)
    {
      v16 = 0.0;
    }

    v17 = [CAMExposureTargetBiasCommand alloc];
    *&v18 = v16;
    v19 = [(CAMExposureTargetBiasCommand *)v17 initWithExposureTargetBias:v6 configureSecondaryDevice:v18];
    [v12 addObject:v19];
  }

LABEL_9:
  v20 = [[CAMCaptureCommand alloc] initWithSubcommands:v12];

  return v20;
}

- (void)focusAtPoint:(CGPoint)a3 lockFocus:(BOOL)a4 rectSize:(int64_t)a5
{
  v6 = a4;
  y = a3.y;
  x = a3.x;
  v18[2] = *MEMORY[0x1E69E9840];
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  v10 = [(CUCaptureController *)self _useSmoothFocus];
  v11 = [(CUCaptureController *)self isCapturingVideo];
  if (v6)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  v13 = [[CAMFocusCommand alloc] initWithFocusMode:v12 atPointOfInterest:a5 rectSize:v10 smooth:x, y];
  v14 = [[CAMSubjectAreaChangeMonitoringCommand alloc] initWithSubjectAreaChangeMonitoringEnabled:!v11];
  v18[0] = v13;
  v18[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v16 = [[CAMCaptureCommand alloc] initWithSubcommands:v15];
  v17 = [(CUCaptureController *)self _captureEngine];
  [v17 enqueueCommand:v16];
}

- (void)focusAndExposeAtPoint:(CGPoint)a3 lockFocus:(BOOL)a4 rectSize:(int64_t)a5 resetExposureTargetBias:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  y = a3.y;
  x = a3.x;
  v28[2] = *MEMORY[0x1E69E9840];
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  v12 = [(CUCaptureController *)self _useSmoothFocus];
  if (v8)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  v14 = [[CAMFocusCommand alloc] initWithFocusMode:v13 atPointOfInterest:a5 rectSize:v12 smooth:x, y];
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

  if (v6)
  {
    v19 = [(CUCaptureController *)self exposureDelegate];
    [v19 baselineExposureValueForCaptureController:self];
    v21 = v20;

    v22 = [CAMExposureTargetBiasCommand alloc];
    LODWORD(v23) = v21;
    v24 = [(CAMExposureTargetBiasCommand *)v22 initWithExposureTargetBias:v23];
    [v17 addObject:v24];
  }

  v25 = [[CAMSubjectAreaChangeMonitoringCommand alloc] initWithSubjectAreaChangeMonitoringEnabled:[(CUCaptureController *)self isCapturingVideo]^ 1];
  [v17 addObject:v25];

  v26 = [[CAMCaptureCommand alloc] initWithSubcommands:v17];
  v27 = [(CUCaptureController *)self _captureEngine];
  [v27 enqueueCommand:v26];
}

- (id)_commandForLockingExposureIncludingFocus:(BOOL)a3
{
  v3 = a3;
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = [[CAMExposureCommand alloc] initWithExposureMode:0];
  v15[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v7 = [v6 mutableCopy];

  if (![(CUCaptureController *)self _shouldLockWhiteBalanceForActiveVideoRequest])
  {
    v8 = [(CUCaptureController *)self isFlashActive];
    v9 = [CAMWhiteBalanceCommand alloc];
    if (v8)
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

  if (v3)
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
  v3 = [(CUCaptureController *)self _captureEngine];
  [v3 enqueueCommand:v4];
}

- (void)changeToLockedFocusAndExposure
{
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  v4 = [(CUCaptureController *)self _commandForLockingExposureIncludingFocus:1];
  v3 = [(CUCaptureController *)self _captureEngine];
  [v3 enqueueCommand:v4];
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
  v3 = [(CUCaptureController *)self _captureEngine];
  [v3 enqueueCommand:v4];
}

- (void)lockFocusAtLensPosition:(float)a3 completionBlock:(id)a4
{
  v6 = a4;
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  [(CUCaptureController *)self set_pendingLockFocusOnLensPositionCount:[(CUCaptureController *)self _pendingLockFocusOnLensPositionCount]+ 1];
  v7 = [CAMFocusLockWithLensPositionCommand alloc];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __63__CUCaptureController_lockFocusAtLensPosition_completionBlock___block_invoke;
  v15 = &unk_1E76FC248;
  v16 = self;
  v17 = v6;
  v8 = v6;
  *&v9 = a3;
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
    v3 = [(CUCaptureController *)self focusDelegate];
    v8 = v3;
    if (!v3 || (v4 = [v3 captureController:self shouldResetFocusAndExposureForReason:2], v5 = v8, v4))
    {
      v6 = objc_alloc_init(CAMFocusAtCenterForVideoRecordingCommand);
      v7 = [(CUCaptureController *)self _captureEngine];
      [v7 enqueueCommand:v6];

      v5 = v8;
    }

    MEMORY[0x1EEE66BB8](v4, v5);
  }
}

- (void)setCinematicFocusForMetadataObject:(id)a3 atPoint:(CGPoint)a4 useFixedOpticalFocus:(BOOL)a5 useHardFocus:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  y = a4.y;
  x = a4.x;
  v11 = a3;
  v12 = [CAMCinematicFocusCommand alloc];
  v13 = [(CUCaptureController *)self _cinematicMetadataObjectIDForMetadataObject:v11];

  v15 = [(CAMCinematicFocusCommand *)v12 initWithMetadataObjectID:v13 atPointOfInterest:v7 useFixedOpticalFocus:v6 useHardFocus:x, y];
  v14 = [(CUCaptureController *)self _captureEngine];
  [v14 enqueueCommand:v15];
}

- (int64_t)_cinematicMetadataObjectIDForMetadataObject:(id)a3
{
  if (a3)
  {
    v3 = [a3 underlyingMetadataObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 faceID];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v3 bodyID];
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

        v4 = [v3 objectID];
      }
    }

    v5 = v4;
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

- (void)_scheduleFocusAndExposureResetAfterCaptureIfNecessaryForType:(int64_t)a3
{
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  v5 = [(CUCaptureController *)self focusDelegate];
  LODWORD(a3) = [v5 captureController:self shouldResetFocusAndExposureAfterCaptureForType:a3];

  if (a3)
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

- (void)_resetFocusAndExposureAfterCaptureForType:(int64_t)a3
{
  v5 = [(CUCaptureController *)self focusDelegate];
  LODWORD(a3) = [v5 captureController:self shouldResetFocusAndExposureAfterCaptureForType:a3];

  if (a3)
  {

    [(CUCaptureController *)self _resetFocusAndExposureAfterCapture];
  }
}

- (void)changeExposureTargetBias:(float)a3
{
  [(CUCaptureController *)self cancelDelayedFocusAndExposureReset];
  v5 = [CAMExposureTargetBiasCommand alloc];
  *&v6 = a3;
  v8 = [(CAMExposureTargetBiasCommand *)v5 initWithExposureTargetBias:v6];
  v7 = [(CUCaptureController *)self _captureEngine];
  [v7 enqueueCommand:v8];
}

- (void)_setupLensSmudgeDetectionMonitoring
{
  v3 = [(CUCaptureController *)self _captureEngine];
  [v3 addObserver:self forKeyPath:@"currentCameraDevice.cameraLensSmudgeDetectionStatus" options:3 context:CAMSmudgeDetectionResultContext];
}

- (void)_teardownLensSmudgeDetectionMonitoring
{
  v3 = [(CUCaptureController *)self _captureEngine];
  [v3 removeObserver:self forKeyPath:@"currentCameraDevice.cameraLensSmudgeDetectionStatus" context:CAMSmudgeDetectionResultContext];
}

- (void)_cameraLensSmudgeDetectionStatusChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5
{
  v5 = *MEMORY[0x1E696A4F0];
  v6 = a5;
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A500]];

  if (v7)
  {
    v9 = [MEMORY[0x1E695DFB0] null];

    if (v7 != v9)
    {
      v10 = [v7 integerValue];
      if (!v8 || ([MEMORY[0x1E695DFB0] null], v11 = objc_claimAutoreleasedReturnValue(), v11, v8 == v11) || v10 != objc_msgSend(v8, "integerValue"))
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
  v3 = [(CUCaptureController *)self _captureEngine];
  v4 = [(CUCaptureController *)self _focusKVOKeyPaths];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 removeObserver:self forKeyPath:*(*(&v19 + 1) + 8 * v8++) context:CAMFocusResultContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v9 = [(CUCaptureController *)self _exposureKVOKeyPaths];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(v9);
        }

        [v3 removeObserver:self forKeyPath:*(*(&v15 + 1) + 8 * v13++) context:CAMExposureResultContext];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 removeObserver:self name:*MEMORY[0x1E69868F8] object:0];
}

- (void)_focusResultChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(CUCaptureController *)self _captureEngine];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__CUCaptureController__focusResultChangedForKeyPath_ofObject_change___block_invoke;
  v12[3] = &unk_1E76FC298;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [v9 requestCurrentCameraDeviceWithHandler:v12];
}

- (void)_focusResultChangedForEngineKeyPath:(id)a3 withDevice:(id)a4 change:(id)a5
{
  v26 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v9 focusMode];
  [v9 focusPointOfInterest];
  v12 = v11;
  v14 = v13;
  v15 = [v9 isAdjustingFocus];
  v16 = [(CUCaptureController *)self _focusCoalescer];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  [v16 coalesceValue:v17 forKeyPath:@"currentCameraDevice.focusMode"];

  v18 = [MEMORY[0x1E696B098] valueWithCGPoint:{v12, v14}];
  [v16 coalesceValue:v18 forKeyPath:@"currentCameraDevice.focusPointOfInterest"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:v15];
  [v16 coalesceValue:v19 forKeyPath:@"currentCameraDevice.adjustingFocus"];

  v20 = [v9 isFocusModeSupported:2];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:v20];
  [v16 coalesceValue:v21 forKeyPath:@"deviceSupportsFocusKeyPath"];

  if ([v26 isEqual:@"currentCameraDevice.adjustingFocus"])
  {
    v22 = [(CUCaptureController *)self _kvoDidStartForChange:v8];
  }

  else
  {
    v22 = 0;
  }

  if ([v26 isEqual:@"currentCameraDevice.adjustingFocus"])
  {
    v23 = [(CUCaptureController *)self _kvoDidEndForChange:v8];
  }

  else
  {
    v23 = 0;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithBool:v22];
  [v16 coalesceValue:v24 forKeyPath:@"contrastBasedFocusDidStartKeyPath"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:v23];
  [v16 coalesceValue:v25 forKeyPath:@"contrastBasedFocusDidEndKeyPath"];

  if (v22 || v23)
  {
    [v16 flush];
  }
}

- (BOOL)_kvoDidStartForChange:(id)a3
{
  v3 = *MEMORY[0x1E696A500];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

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

  v8 = [MEMORY[0x1E695DFB0] null];
  v9 = v8;
  if (v5 == v8)
  {

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = [MEMORY[0x1E695DFB0] null];

  if (v6 == v10 || ([v5 BOOLValue] & 1) != 0)
  {
    goto LABEL_10;
  }

  v11 = [v6 BOOLValue];
LABEL_11:

  return v11;
}

- (BOOL)_kvoDidEndForChange:(id)a3
{
  v3 = *MEMORY[0x1E696A500];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

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

  v8 = [MEMORY[0x1E695DFB0] null];
  v9 = v8;
  if (v5 == v8)
  {

LABEL_10:
    LOBYTE(v11) = 0;
    goto LABEL_11;
  }

  v10 = [MEMORY[0x1E695DFB0] null];

  if (v6 == v10 || ![v5 BOOLValue])
  {
    goto LABEL_10;
  }

  v11 = [v6 BOOLValue] ^ 1;
LABEL_11:

  return v11;
}

- (void)_exposureResultChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(CUCaptureController *)self _captureEngine];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__CUCaptureController__exposureResultChangedForKeyPath_ofObject_change___block_invoke;
  v12[3] = &unk_1E76FC298;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [v9 requestCurrentCameraDeviceWithHandler:v12];
}

- (void)_exposureResultChangedForEngineKeyPath:(id)a3 withDevice:(id)a4 change:(id)a5
{
  v30 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v9 exposureMode];
  [v9 exposurePointOfInterest];
  v12 = v11;
  v14 = v13;
  v15 = [v9 isAdjustingExposure];
  [v9 exposureTargetBias];
  v17 = v16;
  v18 = [(CUCaptureController *)self _exposureCoalescer];
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  [v18 coalesceValue:v19 forKeyPath:@"currentCameraDevice.exposureMode"];

  v20 = [MEMORY[0x1E696B098] valueWithCGPoint:{v12, v14}];
  [v18 coalesceValue:v20 forKeyPath:@"currentCameraDevice.exposurePointOfInterest"];

  LODWORD(v21) = v17;
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  [v18 coalesceValue:v22 forKeyPath:@"currentCameraDevice.exposureTargetBias"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:v15];
  [v18 coalesceValue:v23 forKeyPath:@"currentCameraDevice.adjustingExposure"];

  v24 = [v9 isFocusModeSupported:2];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:v24];
  [v18 coalesceValue:v25 forKeyPath:@"deviceSupportsFocusKeyPath"];

  if ([v30 isEqual:@"currentCameraDevice.adjustingExposure"])
  {
    v26 = [(CUCaptureController *)self _kvoDidStartForChange:v8];
  }

  else
  {
    v26 = 0;
  }

  if ([v30 isEqual:@"currentCameraDevice.adjustingExposure"])
  {
    v27 = [(CUCaptureController *)self _kvoDidEndForChange:v8];
  }

  else
  {
    v27 = 0;
  }

  v28 = [MEMORY[0x1E696AD98] numberWithBool:v26];
  [v18 coalesceValue:v28 forKeyPath:@"exposureDidStartKeyPath"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:v27];
  [v18 coalesceValue:v29 forKeyPath:@"exposureDidEndKeyPath"];

  if (v26 || v27)
  {
    [v18 flush];
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
  v3 = [(CUCaptureController *)self _lensPositionKVOKeyPaths];
  [(CUCaptureController *)self _setupKVOMonitoringForKeyPaths:v3 context:CAMLensPositionContext options:5];
}

- (void)_teardownLensPositionMonitoring
{
  v3 = [(CUCaptureController *)self _lensPositionKVOKeyPaths];
  [(CUCaptureController *)self _teardownKVOMonitoringForKeyPaths:v3 context:CAMLensPositionContext];
}

- (void)_lensPositionChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5
{
  v6 = a5;
  if ([a3 isEqualToString:@"currentCameraDevice.lensPosition"])
  {
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (v7)
    {
      v8 = [MEMORY[0x1E695DFB0] null];

      if (v7 != v8)
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
  v3 = [(CUCaptureController *)self _captureEngine];
  v4 = [(CUCaptureController *)self _suggestionKeyPaths];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) context:CAMSuggestionResultContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (int64_t)_primaryConstituentDeviceTypeFromDevice:(id)a3
{
  v4 = a3;
  if ([v4 isVirtualDevice])
  {
    v5 = [v4 activePrimaryConstituentDevice];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  v7 = [(CUCaptureController *)self _constituentDeviceTypeFromDevice:v5];

  return v7;
}

- (int64_t)_constituentDeviceTypeFromDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceType];
  if ([v4 isEqualToString:*MEMORY[0x1E6986950]])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6986928]])
  {
    v5 = 3;
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E6986948]])
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

- (void)_suggestionResultChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  if ([v8 isEqualToString:@"currentCameraDevice.flashActive"] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 BOOLValue];
    v18 = v9;
    pl_dispatch_async();

    goto LABEL_30;
  }

  if ([v8 isEqualToString:@"currentCameraDevice.torchActive"] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 BOOLValue];
LABEL_12:
    pl_dispatch_async();
    goto LABEL_30;
  }

  if (![v8 isEqualToString:@"currentStillImageOutput.digitalFlashStatus"] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    if ([v8 isEqualToString:@"currentStillImageOutput.digitalFlashExposureTimes"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = v10;
      if (v12)
      {
        v13 = [MEMORY[0x1E695DFB0] null];
        v14 = v13;
        if (v12 == v13)
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
      if ([v8 isEqual:@"currentCameraDevice.activePrimaryConstituentDevice"])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CUCaptureController *)self _updateActivePrimaryConstituentDeviceFromDevice:v10];
          goto LABEL_30;
        }
      }

      if ([v8 isEqual:@"currentCameraDevice.preferredPrimaryConstituentDevice"])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CUCaptureController *)self _updatePreferredPrimaryConstituentDeviceFromDevice:v10];
          goto LABEL_30;
        }
      }

      if (![v8 isEqual:@"currentCameraDevice"])
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
    v11 = [MEMORY[0x1E695DFB0] null];

    if (v10 != v11)
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
  v3 = [(CUCaptureController *)self _captureEngine];
  v4 = [(CUCaptureController *)self _availabilityKeyPaths];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) context:CAMAvailabilityResultContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_availabilityResultChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a5 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = [MEMORY[0x1E695DFB0] null];

  if (v7 == v8)
  {
    goto LABEL_12;
  }

  v9 = v7;
  if ([v6 isEqualToString:@"currentCameraDevice.flashAvailable"] || objc_msgSend(v6, "isEqualToString:", @"currentCameraDevice.torchAvailable"))
  {
    [v9 BOOLValue];
LABEL_8:
    pl_dispatch_async();
    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"currentCameraDevice.degradedCaptureQualityFactors"])
  {
    [v9 unsignedIntegerValue];
    goto LABEL_8;
  }

LABEL_9:
  v10 = os_log_create("com.apple.camera", "KVO");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = v6;
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

- (void)_updateMaximumNumberOfStillImageRequestsAfterEnqueuingRequest:(id)a3
{
  v13 = a3;
  v4 = +[CAMCaptureCapabilities capabilities];
  v5 = [(CUCaptureController *)self _maximumNumberOfStillImageRequests];
  if (!v5)
  {
    v5 = [v4 maximumNumberOfInflightRequests];
  }

  if ([v13 ctmCaptureType] == 2)
  {
    v6 = v13;
  }

  else
  {
    v7 = [v13 flashMode];
    v8 = [(CUCaptureController *)self isFlashActive];
    v6 = v13;
    if (v7 == 1 || v7 == 2 && v8)
    {
      v5 = 1;
    }
  }

  v9 = [v6 burstIdentifier];

  if (v9)
  {
    v5 = [(CUCaptureController *)self _maximumNumberOfStillImageRequestsDuringBurst];
  }

  if ([v4 portraitModeOverlappingCapturesSupported])
  {
    v10 = v13;
  }

  else
  {
    v11 = [v13 adjustmentFilters];
    v12 = [CAMEffectFilterManager isDepthEffectInFilters:v11];

    v10 = v13;
    if (v12)
    {
      v5 = 1;
    }
  }

  if ([v10 nightMode])
  {
    v5 = 1;
  }

  if ([v13 maximumPhotoResolution] == 3 && !objc_msgSend(v4, "supportsOverlappingCapturesForResolution:", 3))
  {
    v5 = 1;
  }

  [(CUCaptureController *)self _setMaximumNumberOfStillImageRequests:v5];
}

- (void)_updateMaximumNumberOfStillImageRequestsAfterCapturedRequestIfNecessary:(id)a3
{
  v4 = [a3 captureRequest];
  v5 = [v4 type];

  v11 = [(CUCaptureController *)self _numberOfInflightRequestsByType];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v7 = [v11 countForObject:v6];

  v8 = v11;
  if (v7 <= 0)
  {
    v9 = +[CAMCaptureCapabilities capabilities];
    v10 = [v9 maximumNumberOfInflightRequests];

    if ([(CUCaptureController *)self isCapturingBurst])
    {
      v10 = [(CUCaptureController *)self _maximumNumberOfStillImageRequestsDuringBurst];
    }

    [(CUCaptureController *)self _setMaximumNumberOfStillImageRequests:v10];
    v8 = v11;
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
    v3 = 3;
  }

  else
  {
    v4 = +[CAMCaptureCapabilities capabilities];
    v3 = [v4 maximumNumberOfInflightRequests];
  }

  return v3;
}

- (void)_setCaptureAvailable:(BOOL)a3
{
  if (self->_captureAvailable != a3)
  {
    v11 = v3;
    v12 = v4;
    self->_captureAvailable = a3;
    v6 = os_log_create("com.apple.camera", "Camera");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a3)
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

  v4 = [(CUCaptureController *)self _captureEngine];
  [v4 currentInflightCapturesStringWithCompletionHandler:&__block_literal_global_39];
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

- (void)_updateAvailabilityForRequestType:(int64_t)a3
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (a3 == 1)
  {
    v8 = [(CUCaptureController *)self _isVideoCaptureAvailable];
  }

  else if (a3)
  {
    v8 = 1;
  }

  else
  {
    v5 = [(CUCaptureController *)self _numberOfInflightRequestsByType];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v7 = [v5 countForObject:v6];

    v8 = v7 < [(CUCaptureController *)self _maximumNumberOfStillImageRequests];
  }

  v9 = [(CUCaptureController *)self isCaptureAvailable];
  v10 = v8 ^ [(CUCaptureController *)self isConfigurationAvailable];
  [(CUCaptureController *)self _setCaptureAvailable:v8];
  [(CUCaptureController *)self _setConfigurationAvailable:v8];
  if (v8 != v9)
  {
    [(CUCaptureController *)self _notifyDelegateOfCaptureAvailabilityChanged:v8];
  }

  if (v10)
  {

    [(CUCaptureController *)self _notifyDelegateOfConfigurationAvailabilityChanged:v8];
  }
}

- (BOOL)_shouldTrackInflightCountForRequest:(id)a3
{
  v3 = a3;
  if ([v3 type])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 ctmCaptureType] != 2;
  }

  return v4;
}

- (void)_updateAvailabilityAfterEnqueuedRequest:(id)a3
{
  v8 = a3;
  v4 = [v8 persistenceUUID];
  [(CUCaptureController *)self _startCaptureSignpostIntervalForPersistenceUUID:v4];

  if ([(CUCaptureController *)self _shouldTrackInflightCountForRequest:v8])
  {
    v5 = [v8 type];
    v6 = [(CUCaptureController *)self _numberOfInflightRequestsByType];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    [v6 addObject:v7];

    [(CUCaptureController *)self _updateAvailabilityForRequestType:v5];
  }
}

- (void)_updateAvailabilityWhenPreparingToStopCapturingForRequest:(id)a3
{
  v4 = [a3 type];

  [(CUCaptureController *)self _updateAvailabilityForRequestType:v4];
}

- (void)_updateAvailabilityAfterStopCapturingForRequest:(id)a3
{
  v4 = [a3 type];

  [(CUCaptureController *)self _updateAvailabilityForRequestType:v4];
}

- (void)_updateAvailabilityAfterCapturedRequest:(id)a3
{
  v8 = a3;
  v4 = [v8 type];
  if ([(CUCaptureController *)self _shouldTrackInflightCountForRequest:v8])
  {
    v5 = [(CUCaptureController *)self _numberOfInflightRequestsByType];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    [v5 removeObject:v6];

    if (v4 != 1)
    {
      goto LABEL_6;
    }
  }

  else if (v4 != 1)
  {
    goto LABEL_7;
  }

  [(CUCaptureController *)self _setVideoCaptureAvailable:1];
LABEL_6:
  [(CUCaptureController *)self _updateAvailabilityForRequestType:v4];
LABEL_7:
  v7 = [v8 persistenceUUID];
  [(CUCaptureController *)self _endCaptureSignpostIntervalForPersistenceUUID:v7];
}

- (void)_notifyDelegateOfCaptureAvailabilityChanged:(BOOL)a3
{
  v3 = a3;
  v5 = [(CUCaptureController *)self availabilityDelegate];
  [v5 captureController:self didOutputCaptureAvailability:v3];
}

- (void)_notifyDelegateOfConfigurationAvailabilityChanged:(BOOL)a3
{
  v3 = a3;
  v5 = [(CUCaptureController *)self availabilityDelegate];
  [v5 captureController:self didOutputConfigurationAvailability:v3];
}

- (void)metadataWasRecognized:(id)a3 forMetadataObjectTypes:(id)a4 deviceFormat:(id)a5
{
  v69 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v43 = a4;
  v47 = a5;
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
  v10 = v7;
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
        v21 = [(CAMMachineReadableCodeResult *)v17 mrcType];
        if (v21 == 2)
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

        if (v21 == 1)
        {
          v19 = v45;
        }

        else
        {
          if (v21)
          {
            goto LABEL_10;
          }

          v19 = v46;
        }

        v20 = v17;
        goto LABEL_9;
      }

      v22 = [v16 type];
      v23 = [v22 isEqualToString:v50];

      if (v23)
      {
        v24 = v16;
        v18 = [[CAMTextRegionResult alloc] initWithTextRegionObject:v24];
        [v49 addObject:v18];
      }

      else
      {
        v25 = [v16 type];
        v26 = [v25 isEqualToString:v44];

        if (v26)
        {
          v18 = v16;
          v27 = [[CAMHistogramResult alloc] initWithHistogramObject:v18 forDeviceFormat:v47];

          v48 = v27;
          goto LABEL_38;
        }

        v18 = os_log_create("com.apple.camera", "Camera");
        if (!os_log_type_enabled(&v18->super, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        v29 = objc_opt_class();
        v24 = [v16 type];
        *buf = 138543618;
        v65 = v29;
        v66 = 2114;
        v67 = v24;
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

  [v43 count];
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
  v40 = v43;
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

- (void)queryVideoDimensionsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(CUCaptureController *)self _captureEngine];
  v6 = [CAMQueryVideoDimensionsCommand alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__CUCaptureController_queryVideoDimensionsWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E76FC330;
  v10 = v4;
  v7 = v4;
  v8 = [(CAMQueryVideoDimensionsCommand *)v6 initWithCompletionBlock:v9];
  [v5 enqueueCommand:v8];
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

- (void)queryTimelapseDimensionsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(CUCaptureController *)self _captureEngine];
  v6 = [CAMQueryTimelapseDimensionsCommand alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__CUCaptureController_queryTimelapseDimensionsWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E76FC380;
  v10 = v4;
  v7 = v4;
  v8 = [(CAMQueryTimelapseDimensionsCommand *)v6 initWithCompletionBlock:v9];
  [v5 enqueueCommand:v8];
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

- (void)willPerformRecoveryFromRuntimeError:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__CUCaptureController_willPerformRecoveryFromRuntimeError___block_invoke;
  v6[3] = &unk_1E76F7960;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  cam_perform_on_main_asap(v6);
}

void __59__CUCaptureController_willPerformRecoveryFromRuntimeError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recoveryDelegate];
  [v2 captureController:*(a1 + 32) willRecoverFromRuntimeError:*(a1 + 40)];
}

- (void)startCaptureSessionWithRetryCount:(unint64_t)a3 retryInterval:(double)a4 logReason:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [(CUCaptureController *)self _captureEngine];
  [v12 startWithRetryCount:a3 retryInterval:v11 logReason:v10 completion:a4];
}

- (void)stopCaptureSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CUCaptureController *)self _captureEngine];
  [v5 stopWithCompletion:v4];
}

- (void)cancelAutoResumeAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(CUCaptureController *)self _captureEngine];
  [v5 cancelAutoResumeAfterDate:v4];
}

- (void)attemptToEndInterruptions
{
  if ([(CUCaptureController *)self isInterrupted])
  {
    v3 = [(CUCaptureController *)self _captureEngine];
    [v3 startWithRetryCount:0 retryInterval:@"attemptToEndInterruptions" logReason:0 completion:0.0];
  }
}

- (void)handleSessionInterruptionForReason:(int64_t)a3
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

- (void)registerCaptureService:(id)a3
{
  v4 = a3;
  v5 = [(CUCaptureController *)self _captureEngine];
  [v5 registerCaptureService:v4];
}

- (void)unregisterCaptureService:(id)a3
{
  v4 = a3;
  v5 = [(CUCaptureController *)self _captureEngine];
  [v5 unregisterCaptureService:v4];
}

- (void)registerEffectsPreviewSampleBufferDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CUCaptureController *)self _captureEngine];
  [v5 registerEffectsPreviewSampleBufferDelegate:v4];
}

- (void)unregisterEffectsPreviewSampleBufferDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CUCaptureController *)self _captureEngine];
  [v5 unregisterEffectsPreviewSampleBufferDelegate:v4];
}

- (void)registerVideoThumbnailContentsDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CUCaptureController *)self _captureEngine];
  [v5 registerVideoThumbnailContentsDelegate:v4];
}

- (void)unregisterVideoThumbnailContentsDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CUCaptureController *)self _captureEngine];
  [v5 unregisterVideoThumbnailContentsDelegate:v4];
}

- (void)changeToVideoZoomFactor:(double)a3 graphConfiguration:(id)a4
{
  v6 = a4;
  v7 = [[CAMSetVideoZoomFactorCommand alloc] initWithVideoZoomFactor:v6 graphConfiguration:a3];

  [(CAMCaptureEngine *)self->__captureEngine enqueueCommand:v7];
}

- (void)startRampToVideoZoomFactor:(double)a3 withRate:(float)a4 graphConfiguration:(id)a5
{
  v8 = a5;
  v9 = [CAMRampToVideoZoomFactorCommand alloc];
  *&v10 = a4;
  v11 = [(CAMRampToVideoZoomFactorCommand *)v9 initWithVideoZoomFactor:v8 rate:a3 graphConfiguration:v10];

  [(CAMCaptureEngine *)self->__captureEngine enqueueCommand:v11];
}

- (void)startRampToVideoZoomFactor:(double)a3 withDuration:(double)a4 zoomRampTuning:(int64_t)a5 graphConfiguration:(id)a6
{
  v10 = a6;
  v11 = [[CAMRampToVideoZoomFactorCommand alloc] initWithVideoZoomFactor:a5 duration:v10 zoomRampTuning:a3 graphConfiguration:a4];

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
  v3 = [(CUCaptureController *)self _captureEngine];
  v4 = [(CUCaptureController *)self _zoomMonitoringKeyPaths];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) context:CAMZoomResultContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_zoomResultChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 isEqualToString:@"currentCameraDevice.videoZoomFactor"])
  {
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = [MEMORY[0x1E695DFB0] null];

    if (v9 == v10)
    {
      goto LABEL_14;
    }

    goto LABEL_4;
  }

  if ([v7 isEqualToString:@"currentCameraDevice.minAvailableVideoZoomFactor"])
  {
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (!v9)
    {
      goto LABEL_14;
    }

    v11 = [MEMORY[0x1E695DFB0] null];

    if (v9 == v11)
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

  if ([v7 isEqualToString:@"currentCameraDevice.rampingVideoZoom"])
  {
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (!v9)
    {
      goto LABEL_14;
    }

    v12 = [MEMORY[0x1E695DFB0] null];

    if (v9 == v12)
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
  v4 = [v3 isZoomPIPSupported];

  if (v4)
  {
    v6 = [(CUCaptureController *)self _captureEngine];
    v5 = [v6 videoPreviewLayer];

    if (v5)
    {
      [v6 addObserver:self forKeyPath:@"videoPreviewLayer.zoomPictureInPictureOverlayRect" options:1 context:CAMPreviewZoomPIPContext];
    }
  }
}

- (void)_teardownZoomPIPMonitoring
{
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 isZoomPIPSupported];

  if (v4)
  {
    v6 = [(CUCaptureController *)self _captureEngine];
    v5 = [v6 videoPreviewLayer];

    if (v5)
    {
      [v6 removeObserver:self forKeyPath:@"videoPreviewLayer.zoomPictureInPictureOverlayRect" context:CAMPreviewZoomPIPContext];
    }
  }
}

- (void)_zoomPIPChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 videoPreviewLayer];
  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if ([v8 isEqualToString:@"videoPreviewLayer.zoomPictureInPictureOverlayRect"])
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

- (void)changeToPortraitAperture:(double)a3
{
  v5 = [[CAMPortraitApertureCommand alloc] initWithAperture:a3];
  v4 = [(CUCaptureController *)self _captureEngine];
  [v4 enqueueCommand:v5];
}

- (void)_handleShallowDepthOfFieldStatusChangedNotification:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"AVCaptureDeviceShallowDepthOfFieldStatusChangedKeyEffectStatus"];
  +[CAMCaptureConversions shallowDepthOfFieldStatusForCaptureStatus:](CAMCaptureConversions, "shallowDepthOfFieldStatusForCaptureStatus:", [v4 integerValue]);
  v5 = [v3 objectForKeyedSubscript:@"AVCaptureDeviceShallowDepthOfFieldStatusChangedKeyStagePreviewStatus"];
  +[CAMCaptureConversions stagePreviewStatusForCaptureStatus:](CAMCaptureConversions, "stagePreviewStatusForCaptureStatus:", [v5 integerValue]);
  pl_dispatch_async();
}

void __75__CUCaptureController__handleShallowDepthOfFieldStatusChangedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shallowDepthOfFieldStatusDelegate];
  [v2 captureController:*(a1 + 32) didOutputShallowDepthOfFieldStatus:*(a1 + 40) stagePreviewStatus:*(a1 + 48)];
}

- (void)changeToPortraitLightingEffectStrength:(double)a3
{
  v5 = [[CAMPortraitLightingEffectStrengthCommand alloc] initWithEffectStrength:a3];
  v4 = [(CUCaptureController *)self _captureEngine];
  [v4 enqueueCommand:v5];
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
    v3 = [(CUCaptureController *)self _captureEngine];
    v4 = [(CUCaptureController *)self _systemPressureStateMonitoringKeyPaths];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v4);
          }

          [v3 removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) context:CAMSystemPressureStateMonitoringContext];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_systemPressureStateMonitoringChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5
{
  v7 = a3;
  v8 = [a5 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];

    if (v8 != v9)
    {
      if ([v7 isEqualToString:@"currentCameraDevice.systemPressureState"])
      {
        v10 = v8;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __87__CUCaptureController__systemPressureStateMonitoringChangedForKeyPath_ofObject_change___block_invoke;
        v11[3] = &unk_1E76F7960;
        v12 = v10;
        v13 = self;
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

- (void)_handleSystemPressureState:(id)a3
{
  v9 = a3;
  v4 = +[CAMCaptureCapabilities capabilities];
  v5 = objc_alloc_init(CAMSystemPressureMitigationCommand);
  v6 = [(CUCaptureController *)self _captureEngine];
  [v6 enqueueCommand:v5];

  if ([v4 isFrontRearSimultaneousVideoSupported])
  {
    v7 = [v9 shouldDisablePIPMotionBlur];
    v8 = [(CUCaptureController *)self _captureEngine];
    [v8 setMultiCamPictureInPictureMotionBlurDisabled:v7];
  }

  [(CUCaptureController *)self _setCurrentCameraSystemPressureState:v9];
}

- (void)_setCurrentCameraSystemPressureState:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_currentCameraSystemPressureState != v5)
  {
    v8 = v5;
    v5 = [(CAMSystemPressureState *)v5 isEqual:?];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_currentCameraSystemPressureState, a3);
      v7 = [(CUCaptureController *)self systemPressureStateDelegate];
      [v7 captureController:self didChangeCameraSystemPressureState:v8];

      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)changeToAspectRatioCrop:(int64_t)a3
{
  v5 = [[CAMNonDestructiveCropAspectRatioCommand alloc] initWithAspectRatioCrop:a3];
  v4 = [(CUCaptureController *)self _captureEngine];
  [v4 enqueueCommand:v5];
}

- (void)setPrimaryConstituentDeviceSwitchingBehavior:(int64_t)a3 restrictedSwitchingConditions:(unint64_t)a4
{
  v6 = [[CAMPrimaryConstituentDeviceSwitchingBehaviorCommand alloc] initWithBehavior:a3 restrictedSwitchingConditions:a4];
  v5 = [(CUCaptureController *)self _captureEngine];
  [v5 enqueueCommand:v6];
}

- (void)setFallbackPrimaryConstituentDeviceSelection:(int64_t)a3
{
  v5 = [[CAMFallbackPrimaryConstituentDeviceCommand alloc] initWithFallbackPrimaryConstituentDeviceSelection:a3];
  v4 = [(CUCaptureController *)self _captureEngine];
  [v4 enqueueCommand:v5];
}

- (void)_setupStereoCaptureStatusMonitoring
{
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 isSpatialModeSupported];

  if (v4)
  {
    v6 = [(CUCaptureController *)self _captureEngine];
    v5 = [v6 videoPreviewLayer];

    if (v5)
    {
      [v6 addObserver:self forKeyPath:@"currentCameraDevice.stereoCaptureStatus" options:5 context:CAMStereoCaptureStatusContext];
    }
  }
}

- (void)_teardownStereoCaptureStatusMonitoring
{
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 isSpatialModeSupported];

  if (v4)
  {
    v6 = [(CUCaptureController *)self _captureEngine];
    v5 = [v6 videoPreviewLayer];

    if (v5)
    {
      [v6 removeObserver:self forKeyPath:@"currentCameraDevice.stereoCaptureStatus" context:CAMStereoCaptureStatusContext];
    }
  }
}

- (void)_stereoCaptureStatusChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5
{
  v6 = a3;
  v7 = [a5 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && [v6 isEqualToString:@"currentCameraDevice.stereoCaptureStatus"])
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
  v4 = [v3 isSmartFramingSupported];

  if (v4)
  {
    v6 = [(CUCaptureController *)self _captureEngine];
    v5 = [v6 videoPreviewLayer];

    if (v5)
    {
      [v6 addObserver:self forKeyPath:@"currentCameraDevice.smartFramingMonitor.recommendedFraming" options:5 context:CAMRecommendedFramingContext];
    }
  }
}

- (void)_teardownRecommendedSmartFramingMonitoring
{
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 isSmartFramingSupported];

  if (v4)
  {
    v6 = [(CUCaptureController *)self _captureEngine];
    v5 = [v6 videoPreviewLayer];

    if (v5)
    {
      [v6 removeObserver:self forKeyPath:@"currentCameraDevice.smartFramingMonitor.recommendedFraming" context:CAMRecommendedFramingContext];
    }
  }
}

- (void)_recommendedSmartFramingChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a5 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    if (v7 == v8 || ([v6 isEqualToString:@"currentCameraDevice.smartFramingMonitor.recommendedFraming"] & 1) == 0)
    {
LABEL_8:

      goto LABEL_9;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = v7;
      v10 = os_log_create("com.apple.camera", "SmartFraming");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v8;
        _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Received new smartFramingMonitor recommendation: %@", buf, 0xCu);
      }

      [CAMCaptureConversions CAMCaptureSmartFramingFieldOfViewForAVCaptureFraming:v8];
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

- (void)_setupKVOMonitoringForKeyPaths:(id)a3 context:(void *)a4 options:(unint64_t)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(CUCaptureController *)self _captureEngine];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v8;
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

        [v9 addObserver:self forKeyPath:*(*(&v15 + 1) + 8 * v14++) options:a5 context:{a4, v15}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)_teardownKVOMonitoringForKeyPaths:(id)a3 context:(void *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CUCaptureController *)self _captureEngine];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v6;
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

        [v7 removeObserver:self forKeyPath:*(*(&v13 + 1) + 8 * v12++) context:{a4, v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (CAMFocusResultContext == a6)
  {
    [(CUCaptureController *)self _focusResultChangedForKeyPath:v10 ofObject:v11 change:v12];
  }

  else if (CAMExposureResultContext == a6)
  {
    [(CUCaptureController *)self _exposureResultChangedForKeyPath:v10 ofObject:v11 change:v12];
  }

  else if (CAMSuggestionResultContext == a6)
  {
    [(CUCaptureController *)self _suggestionResultChangedForKeyPath:v10 ofObject:v11 change:v12];
  }

  else if (CAMAvailabilityResultContext == a6)
  {
    [(CUCaptureController *)self _availabilityResultChangedForKeyPath:v10 ofObject:v11 change:v12];
  }

  else if (CAMZoomResultContext == a6)
  {
    [(CUCaptureController *)self _zoomResultChangedForKeyPath:v10 ofObject:v11 change:v12];
  }

  else if (CAMSystemPressureStateMonitoringContext == a6)
  {
    [(CUCaptureController *)self _systemPressureStateMonitoringChangedForKeyPath:v10 ofObject:v11 change:v12];
  }

  else if (CAMOverCapturePreviewContext == a6)
  {
    [(CUCaptureController *)self _overCapturePreviewStatusChangedForKeyPath:v10 ofObject:v11 change:v12];
  }

  else if (CAMPreviewZoomPIPContext == a6)
  {
    [(CUCaptureController *)self _zoomPIPChangedForKeyPath:v10 ofObject:v11 change:v12];
  }

  else if (CAMStereoCaptureStatusContext == a6)
  {
    [(CUCaptureController *)self _stereoCaptureStatusChangedForKeyPath:v10 ofObject:v11 change:v12];
  }

  else if (CAMDocumentScanningResultsContext == a6)
  {
    [(CUCaptureController *)self _documentScanningChangedForKeyPath:v10 ofObject:v11 change:v12];
  }

  else if (CAMLensPositionContext == a6)
  {
    [(CUCaptureController *)self _lensPositionChangedForKeyPath:v10 ofObject:v11 change:v12];
  }

  else if (CAMSmudgeDetectionResultContext == a6)
  {
    [(CUCaptureController *)self _cameraLensSmudgeDetectionStatusChangedForKeyPath:v10 ofObject:v11 change:v12];
  }

  else if (CAMRecommendedFramingContext == a6)
  {
    [(CUCaptureController *)self _recommendedSmartFramingChangedForKeyPath:v10 ofObject:v11 change:v12];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CUCaptureController;
    [(CUCaptureController *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)_startCaptureSignpostIntervalForPersistenceUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CUCaptureController *)self _persistenceUUIDToSignpostID];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (!v6)
    {
      v7 = [(CUCaptureController *)self _nextSignpostID];
      [(CUCaptureController *)self _setNextSignpostID:v7 + 1];
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
      [v5 setObject:v8 forKeyedSubscript:v4];

      CAMSignpostWithIDAndArgs(66, v7, v7, 0, 0, 0);
    }
  }

  else
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CUCaptureController _startCaptureSignpostIntervalForPersistenceUUID:];
    }
  }
}

- (void)_endCaptureSignpostIntervalForPersistenceUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CUCaptureController *)self _persistenceUUIDToSignpostID];
    v6 = [v5 objectForKeyedSubscript:v4];
    if (v6)
    {
      [v5 setObject:0 forKeyedSubscript:v4];
      v7 = [v6 unsignedIntegerValue];
      CAMSignpostWithIDAndArgs(67, v7, v7, 0, 0, 0);
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
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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
    v3 = [(CUCaptureController *)self _captureEngine];
    [v3 addObserver:self forKeyPath:@"currentCameraDevice.documentSceneConfidence" options:3 context:CAMDocumentScanningResultsContext];
  }
}

- (void)_tearDownDocumentScanningMonitoring
{
  v4 = +[CAMCaptureCapabilities capabilities];
  if ([v4 isDocumentScanningSupported])
  {
    v3 = [(CUCaptureController *)self _captureEngine];
    [v3 removeObserver:self forKeyPath:@"currentCameraDevice.documentSceneConfidence" context:CAMDocumentScanningResultsContext];
  }
}

- (void)_documentScanningChangedForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5
{
  v6 = [a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0], a4}];
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

- (void)updateCaptureButtonControlsForCaptureMode:(int64_t)a3 devicePosition:(int64_t)a4 isRecording:(BOOL)a5 depthSuggestionEnabled:(BOOL)a6
{
  v8 = [[CAMUpdateCaptureButtonControlsCommand alloc] initWithRecording:a5 captureMode:a3 devicePosition:a4 depthSuggestionEnabled:a6];
  v7 = [(CUCaptureController *)self _captureEngine];
  [v7 enqueueCommand:v8];
}

- (void)stopMonitoringForAccidentalLaunch
{
  v2 = [(CUCaptureController *)self _captureEngine];
  [v2 stopMonitoringForAccidentalLaunch];
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