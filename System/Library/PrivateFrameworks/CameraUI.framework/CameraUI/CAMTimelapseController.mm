@interface CAMTimelapseController
+ (__IOSurface)_newVideoPreviewSurfaceForTimelapseState:(id)state;
+ (id)createPlaceholderResultForTimelapseState:(id)state;
- (BOOL)_canCapturePhoto;
- (BOOL)_enqueueCaptureRequest;
- (BOOL)startCapturingWithCaptureDevice:(int64_t)device captureSession:(unsigned __int16)session;
- (BOOL)stopCapturingWithReasons:(int64_t)reasons;
- (CAMCaptureGraphConfiguration)_graphConfigurationForCurrentState;
- (CAMTimelapseController)initWithCaptureController:(id)controller locationController:(id)locationController motionController:(id)motionController persistenceController:(id)persistenceController storageController:(id)storageController librarySelectionController:(id)selectionController nebulaDaemonProxyManager:(id)manager;
- (CAMTimelapseControllerDelegate)delegate;
- (NSDate)captureStartTime;
- (id)_createThumbnailImageFromPlaceholderResult:(id)result;
- (id)_stillImageCaptureRequestWithCurrentSettings;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_captureTimerFired;
- (void)_notifyInsufficientDiskSpaceForContinuingCapture;
- (void)_notifyInsufficientDiskSpaceForStartingCaptureWithNeededBytes:(int64_t)bytes availableBytes:(int64_t)availableBytes;
- (void)_prepareForTimelapseCaptureSetModeAndDevice:(BOOL)device;
- (void)_previewStarted:(id)started;
- (void)_reserveDiskSpaceForTimelapseUUID:(id)d preferHEVC:(BOOL)c withCompletionBlock:(id)block;
- (void)_resetIgnoringTimerCallbacksWaitingForCaptureResponse;
- (void)_restoreCaptureStateFromDisk;
- (void)_saveStateToDisk:(id)disk;
- (void)_sessionRuntimeErrored:(id)errored;
- (void)_setBackendRecoveryNeeded:(BOOL)needed;
- (void)_setNewCaptureStateForCaptureDevice:(int64_t)device captureSession:(unsigned __int16)session;
- (void)_setPreviewStarted:(BOOL)started;
- (void)_startCaptureTimer;
- (void)_startCapturingWithCaptureDevice:(int64_t)device captureSession:(unsigned __int16)session;
- (void)_stopCapturingWithReasons:(int64_t)reasons;
- (void)_teardownCaptureTimer;
- (void)_triggerBackendCrashRecoveryIfNeeded;
- (void)_updateFocusAndExposureForStartCapturing;
- (void)_updateFocusLensPosition:(float)position forTimelapseUUID:(id)d forceUpdate:(BOOL)update;
- (void)_updateLocationIfNecessary;
- (void)dealloc;
- (void)forceStopTimelapseCaptureWithReasons:(int64_t)reasons;
- (void)restoreConfiguration;
- (void)setLastFocusResult:(id)result;
- (void)stillImageRequestDidCompleteStillImageCapture:(id)capture withResponse:(id)response error:(id)error;
- (void)stillImageRequestDidCompleteStillImageLocalPersistence:(id)persistence withResponse:(id)response error:(id)error;
@end

@implementation CAMTimelapseController

- (void)restoreConfiguration
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(CAMTimelapseController *)self isCapturing])
  {
    v3 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      timelapseUUID = [(CAMTimelapseState *)self->__state timelapseUUID];
      v7 = 138543362;
      v8 = timelapseUUID;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Resuming timelapse capture for %{public}@", &v7, 0xCu);
    }

    [(CAMTimelapseController *)self _prepareForTimelapseCaptureSetModeAndDevice:1];
    _nebulaDaemonProxyManager = [(CAMTimelapseController *)self _nebulaDaemonProxyManager];
    timelapseUUID2 = [(CAMTimelapseState *)self->__state timelapseUUID];
    [_nebulaDaemonProxyManager resumeTimelapseWithUUID:timelapseUUID2];
  }

  [(CAMTimelapseController *)self _setBackendRecoveryNeeded:1];
}

- (void)_triggerBackendCrashRecoveryIfNeeded
{
  if ([(CAMTimelapseController *)self _backendRecoveryNeeded]&& [(CAMTimelapseController *)self _previewStarted])
  {
    isCapturing = [(CAMTimelapseController *)self isCapturing];
    _nebulaDaemonProxyManager = [(CAMTimelapseController *)self _nebulaDaemonProxyManager];
    [_nebulaDaemonProxyManager performCrashRecoveryIfNeededForceEndLastTimelapseSession:!isCapturing];
    [(CAMTimelapseController *)self _setBackendRecoveryNeeded:0];
  }
}

- (void)_resetIgnoringTimerCallbacksWaitingForCaptureResponse
{
  if (self->__ignoringTimerCallbacksWaitingForCaptureResponse)
  {
    self->__ignoringTimerCallbacksWaitingForCaptureResponse = 0;
    v2 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(CAMTimelapseController *)v2 _resetIgnoringTimerCallbacksWaitingForCaptureResponse:v3];
    }
  }
}

- (CAMTimelapseController)initWithCaptureController:(id)controller locationController:(id)locationController motionController:(id)motionController persistenceController:(id)persistenceController storageController:(id)storageController librarySelectionController:(id)selectionController nebulaDaemonProxyManager:(id)manager
{
  controllerCopy = controller;
  locationControllerCopy = locationController;
  motionControllerCopy = motionController;
  persistenceControllerCopy = persistenceController;
  storageControllerCopy = storageController;
  selectionControllerCopy = selectionController;
  managerCopy = manager;
  v33.receiver = self;
  v33.super_class = CAMTimelapseController;
  v18 = [(CAMTimelapseController *)&v33 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->__captureController, controller);
    objc_storeStrong(&v19->__locationController, locationController);
    objc_storeStrong(&v19->__motionController, motionController);
    objc_storeStrong(&v19->__storageController, storageController);
    objc_storeStrong(&v19->__persistenceController, persistenceController);
    objc_storeStrong(&v19->__librarySelectionController, selectionController);
    objc_storeStrong(&v19->__nebulaDaemonProxyManager, manager);
    [(CAMNebulaDaemonProxyManager *)v19->__nebulaDaemonProxyManager setTimelapseClientDelegate:v19];
    v20 = objc_alloc_init(MEMORY[0x1E696AB50]);
    inFlightTimelapseUUIDs = v19->__inFlightTimelapseUUIDs;
    v19->__inFlightTimelapseUUIDs = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingCompletedStates = v19->__pendingCompletedStates;
    v19->__pendingCompletedStates = v22;

    v19->__greenTeaLogger = ct_green_tea_logger_create();
    videoPreviewLayer = [(CUCaptureController *)v19->__captureController videoPreviewLayer];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v19 selector:sel__deviceStarted_ name:*MEMORY[0x1E69868F0] object:0];
    [defaultCenter addObserver:v19 selector:sel__sessionStarted_ name:*MEMORY[0x1E6986A90] object:0];
    [defaultCenter addObserver:v19 selector:sel__sessionRuntimeErrored_ name:*MEMORY[0x1E6986B20] object:0];
    [defaultCenter addObserver:v19 selector:sel__previewStarted_ name:*MEMORY[0x1E6986B70] object:videoPreviewLayer];
    v26 = +[CAMPriorityNotificationCenter defaultCenter];
    [v26 addObserver:v19 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
    [v26 addObserver:v19 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
  }

  return v19;
}

- (void)dealloc
{
  ct_green_tea_logger_destroy();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4 = +[CAMPriorityNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  [(CAMTimelapseController *)self _teardownCaptureTimer];
  v5.receiver = self;
  v5.super_class = CAMTimelapseController;
  [(CAMTimelapseController *)&v5 dealloc];
}

- (void)_setBackendRecoveryNeeded:(BOOL)needed
{
  if (self->__backendRecoveryNeeded != needed)
  {
    self->__backendRecoveryNeeded = needed;
    [(CAMTimelapseController *)self _triggerBackendCrashRecoveryIfNeeded];
  }
}

- (void)_setPreviewStarted:(BOOL)started
{
  if (self->__previewStarted != started)
  {
    self->__previewStarted = started;
    if (!started)
    {
      [(CAMTimelapseController *)self _setFocusAndExposureAdjusted:0];
    }

    [(CAMTimelapseController *)self _triggerBackendCrashRecoveryIfNeeded];
  }
}

- (void)_prepareForTimelapseCaptureSetModeAndDevice:(BOOL)device
{
  deviceCopy = device;
  _nebulaDaemonProxyManager = [(CAMTimelapseController *)self _nebulaDaemonProxyManager];
  [_nebulaDaemonProxyManager ensureConnectionToDaemon];
  _captureController = [(CAMTimelapseController *)self _captureController];
  if (deviceCopy)
  {
    _graphConfigurationForCurrentState = [(CAMTimelapseController *)self _graphConfigurationForCurrentState];
    [_captureController changeToGraphConfiguration:_graphConfigurationForCurrentState zoomFactor:0 minimumExecutionTime:1.0 outputToExternalStorage:0.0];
  }

  _graphConfigurationForCurrentState2 = [(CAMTimelapseController *)self _graphConfigurationForCurrentState];
  devicePosition = [_graphConfigurationForCurrentState2 devicePosition];

  [_captureController setCapturingTimelapse:1 forDevicePosition:devicePosition];
  [(CAMTimelapseController *)self _updateFocusAndExposureForStartCapturing];
  [(CAMTimelapseController *)self _startCaptureTimer];
}

- (BOOL)startCapturingWithCaptureDevice:(int64_t)device captureSession:(unsigned __int16)session
{
  sessionCopy = session;
  isCapturing = [(CAMTimelapseController *)self isCapturing];
  if (isCapturing)
  {
    v8 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Error: trying to start timelapse capture when already in progress", v12, 2u);
    }

    captureOrientation = [(CAMTimelapseState *)self->__state captureOrientation];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained timelapseController:self startedWithCaptureOrientation:captureOrientation];
  }

  else
  {
    [(CAMTimelapseController *)self _startCapturingWithCaptureDevice:device captureSession:sessionCopy];
  }

  return !isCapturing;
}

- (BOOL)stopCapturingWithReasons:(int64_t)reasons
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    reasonsCopy = reasons;
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Stopping timelapse capture with reasons %ld", &v9, 0xCu);
  }

  isCapturing = [(CAMTimelapseController *)self isCapturing];
  if (isCapturing)
  {
    [(CAMTimelapseController *)self _stopCapturingWithReasons:reasons];
  }

  else
  {
    v7 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Error: trying to stop timelapse capture when none in progress", &v9, 2u);
    }
  }

  return isCapturing;
}

- (void)_startCapturingWithCaptureDevice:(int64_t)device captureSession:(unsigned __int16)session
{
  [(CAMTimelapseController *)self _setNewCaptureStateForCaptureDevice:device captureSession:session];
  timelapseUUID = [(CAMTimelapseState *)self->__state timelapseUUID];
  _state = [(CAMTimelapseController *)self _state];
  preferHEVC = [_state preferHEVC];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__CAMTimelapseController__startCapturingWithCaptureDevice_captureSession___block_invoke;
  v9[3] = &unk_1E76FC650;
  v9[4] = self;
  v10 = timelapseUUID;
  v8 = timelapseUUID;
  [(CAMTimelapseController *)self _reserveDiskSpaceForTimelapseUUID:v8 preferHEVC:preferHEVC withCompletionBlock:v9];
}

void __74__CAMTimelapseController__startCapturingWithCaptureDevice_captureSession___block_invoke(uint64_t a1, char a2, char a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 32);
    if (a3)
    {
      [v4 _prepareForTimelapseCaptureSetModeAndDevice:0];
      *(*(a1 + 32) + 9) = 0;
      [*(a1 + 32) _greenTeaLogger];
      v5 = getCTGreenTeaOsLogHandle();
      v6 = v5;
      if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_INFO, "Take a video", buf, 2u);
      }

      v7 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        *buf = 138543362;
        v15 = v8;
        _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Starting timelapse capture for %{public}@", buf, 0xCu);
      }

      v9 = [*(a1 + 32) _nebulaDaemonProxyManager];
      [v9 startTimelapseWithUUID:*(a1 + 40)];
      v10 = [*(*(a1 + 32) + 40) captureOrientation];
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
      [WeakRetained timelapseController:*(a1 + 32) startedWithCaptureOrientation:v10];
    }

    else
    {
      v12 = v4[5];
      v4[5] = 0;

      [*(a1 + 32) _invalidateCachedGraphConfiguration];
      v13 = objc_loadWeakRetained((*(a1 + 32) + 24));
      [v13 timelapseControllerStopped:*(a1 + 32)];
    }
  }
}

- (void)_stopCapturingWithReasons:(int64_t)reasons
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    timelapseUUID = [(CAMTimelapseState *)self->__state timelapseUUID];
    *buf = 138543618;
    v44 = timelapseUUID;
    v45 = 2048;
    reasonsCopy = reasons;
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Stopping timelapse capture for %{public}@, reason %ld", buf, 0x16u);
  }

  [(CAMTimelapseController *)self _teardownCaptureTimer];
  state = self->__state;
  date = [MEMORY[0x1E695DF00] date];
  [(CAMTimelapseState *)state addStopReasons:reasons stopTime:date];

  timelapseUUID2 = [(CAMTimelapseState *)self->__state timelapseUUID];
  v40 = timelapseUUID2;
  if ([(NSCountedSet *)self->__inFlightTimelapseUUIDs countForObject:timelapseUUID2])
  {
    if ([timelapseUUID2 length])
    {
      [(NSMutableSet *)self->__pendingCompletedStates addObject:self->__state];
    }
  }

  else
  {
    [(CAMTimelapseState *)self->__state setAllFramesWritten:1];
  }

  Current = CFAbsoluteTimeGetCurrent();
  v11 = MEMORY[0x1E695DFF8];
  timelapseUUID3 = [(CAMTimelapseState *)self->__state timelapseUUID];
  v13 = [CAMPersistenceController uniqueIncomingPathForAssetWithUUID:timelapseUUID3 captureTime:@"MDATA" extension:Current];
  v38 = [v11 fileURLWithPath:v13];

  _persistenceController = [(CAMTimelapseController *)self _persistenceController];
  _librarySelectionController = [(CAMTimelapseController *)self _librarySelectionController];
  sharedLibraryMode = [_librarySelectionController sharedLibraryMode];
  _librarySelectionController2 = [(CAMTimelapseController *)self _librarySelectionController];
  acquiredSignalResults = [_librarySelectionController2 acquiredSignalResults];
  identitiesInProximity = [acquiredSignalResults identitiesInProximity];
  v19 = CAMLibrarySelectionIdentityContactIdentifiersForIdentities(identitiesInProximity);
  _librarySelectionController3 = [(CAMTimelapseController *)self _librarySelectionController];
  librarySelectionDiagnostics = [_librarySelectionController3 librarySelectionDiagnostics];
  LODWORD(sharedLibraryMode) = [_persistenceController writePrivateMetadataFileToURL:v38 withPrivateClientMetadata:0 sharedLibraryMode:sharedLibraryMode contactIDsInProximity:v19 sharedLibraryDiagnostics:librarySelectionDiagnostics];

  if (sharedLibraryMode)
  {
    [(CAMTimelapseState *)self->__state setLocalPrivateMetadataFileURL:v38];
  }

  [(CAMTimelapseController *)self _saveStateToDisk:self->__state];
  _nebulaDaemonProxyManager = [(CAMTimelapseController *)self _nebulaDaemonProxyManager];
  timelapseUUID4 = [(CAMTimelapseState *)self->__state timelapseUUID];
  [_nebulaDaemonProxyManager updateTimelapseWithUUID:timelapseUUID4];

  timelapseUUID5 = [(CAMTimelapseState *)self->__state timelapseUUID];
  [_nebulaDaemonProxyManager stopTimelapseWithUUID:timelapseUUID5];

  if ([(CAMTimelapseState *)self->__state allFramesWritten])
  {
    [_nebulaDaemonProxyManager closeConnectionToDaemon];
  }

  nextFrameIndex = [(CAMTimelapseState *)self->__state nextFrameIndex];
  sessionIdentifier = [(CAMTimelapseState *)self->__state sessionIdentifier];
  timelapseUUID6 = [(CAMTimelapseState *)self->__state timelapseUUID];
  v28 = self->__state;
  v29 = self->__state;
  self->__state = 0;

  [(CAMTimelapseController *)self _invalidateCachedGraphConfiguration];
  [(CAMTimelapseController *)self _setShouldUpdateFocusAndExposureWhenContrastDetectionCompletes:0];
  _captureController = [(CAMTimelapseController *)self _captureController];
  captureDevice = [(CAMTimelapseState *)v28 captureDevice];
  v32 = 0;
  if ((captureDevice - 1) <= 0xA)
  {
    v32 = qword_1A3A6A3B0[captureDevice - 1];
  }

  [_captureController setCapturingTimelapse:0 forDevicePosition:v32];
  if (nextFrameIndex < 1)
  {
    v35 = 0;
    v33 = 0;
  }

  else
  {
    v33 = [objc_opt_class() createPlaceholderResultForTimelapseState:v28];
    if (v33)
    {
      _persistenceController2 = [(CAMTimelapseController *)self _persistenceController];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __52__CAMTimelapseController__stopCapturingWithReasons___block_invoke;
      v41[3] = &unk_1E76FC678;
      v41[4] = self;
      v33 = v33;
      v42 = v33;
      [_persistenceController2 persistPlaceholderTimelapseVideoWithResult:v33 completionHandler:v41];
      v35 = [(CAMTimelapseController *)self _createThumbnailImageFromPlaceholderResult:v33];
    }

    else
    {
      v35 = 0;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained timelapseController:self generatedPlaceholderResult:v33 withThumbnailImage:v35 forAssetUUID:timelapseUUID6 inCaptureSession:sessionIdentifier];

  v37 = objc_loadWeakRetained(&self->_delegate);
  [v37 timelapseControllerStopped:self];
}

void __52__CAMTimelapseController__stopCapturingWithReasons___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 40);
  v4 = v3;
  pl_dispatch_async();
}

void __52__CAMTimelapseController__stopCapturingWithReasons___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained timelapseController:a1[4] persistedPlaceholderResult:a1[5] error:a1[6]];
}

- (void)_setNewCaptureStateForCaptureDevice:(int64_t)device captureSession:(unsigned __int16)session
{
  sessionCopy = session;
  _motionController = [(CAMTimelapseController *)self _motionController];
  captureOrientation = [_motionController captureOrientation];
  _captureController = [(CAMTimelapseController *)self _captureController];
  v9 = +[CAMUserPreferences preferences];
  v10 = [v9 videoEncodingBehaviorForConfiguration:0 mode:5 desiredProResVideoMode:0 outputToExternalStorage:0 frontRearSimultaneousVideoEnabled:0];
  v11 = 0;
  if ((device - 1) <= 0xA)
  {
    v11 = qword_1A3A6A3B0[device - 1];
  }

  v12 = v10 == 1;
  v13 = [v9 mirrorCameraCapturesForDevicePosition:v11 mode:5];
  v14 = objc_alloc_init(CAMTimelapseState);
  state = self->__state;
  self->__state = v14;

  v16 = self->__state;
  date = [MEMORY[0x1E695DF00] date];
  [(CAMTimelapseState *)v16 setStartTime:date];

  [(CAMTimelapseState *)self->__state setCaptureOrientation:captureOrientation];
  [(CAMTimelapseState *)self->__state setCaptureMirrored:v13];
  [(CAMTimelapseState *)self->__state setCaptureDevice:device];
  [(CAMTimelapseState *)self->__state setSessionIdentifier:sessionCopy];
  [(CAMTimelapseState *)self->__state setPreferHEVC:v12];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __77__CAMTimelapseController__setNewCaptureStateForCaptureDevice_captureSession___block_invoke;
  v19[3] = &unk_1E76FC6A0;
  v19[4] = self;
  [_captureController queryTimelapseDimensionsWithCompletionBlock:v19];
  [(CAMTimelapseController *)self _invalidateCachedGraphConfiguration];
}

- (CAMCaptureGraphConfiguration)_graphConfigurationForCurrentState
{
  state = self->__state;
  if (state)
  {
    if (!self->__graphConfigurationForCurrentState)
    {
      captureDevice = [(CAMTimelapseState *)state captureDevice];
      v5 = +[CAMUserPreferences preferences];
      photoEncodingBehavior = [v5 photoEncodingBehavior];
      v7 = [v5 videoEncodingBehaviorForConfiguration:0 mode:5 desiredProResVideoMode:0 outputToExternalStorage:0 frontRearSimultaneousVideoEnabled:0];
      v8 = +[CAMCaptureCapabilities capabilities];
      v9 = v8;
      v10 = 0;
      v11 = captureDevice - 1;
      if ((captureDevice - 1) <= 0xA)
      {
        v10 = qword_1A3A6A3B0[v11];
      }

      v12 = [v8 maxSupportedPhotoQualityPrioritizationForMode:5 devicePosition:v10];

      v13 = +[CAMCaptureCapabilities capabilities];
      v14 = [v13 shouldSuspendVideoHDRForHDRMode:0 captureMode:5];

      v15 = 0;
      if (v11 <= 0xA)
      {
        v15 = qword_1A3A6A3B0[v11];
      }

      BYTE2(v25) = 0;
      LOWORD(v25) = 0;
      BYTE2(v24) = 0;
      LOWORD(v24) = 0;
      BYTE2(v23) = 0;
      LOWORD(v23) = 0;
      LOWORD(v22) = [v5 mirrorCameraCapturesForDevicePosition:v15 mode:5];
      BYTE1(v21) = v14;
      LOBYTE(v21) = 0;
      LOBYTE(v20) = 0;
      v16 = -[CAMCaptureGraphConfiguration initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:]([CAMCaptureGraphConfiguration alloc], "initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:", 5, captureDevice, 0, 0, 0, 0, v20, 1, 0, 0, 0, photoEncodingBehavior, v7, v21, 0, v12, v22, 0, 0, 0, v23, 0, 0, [v5 colorSpaceForMode:5 videoConfiguration:0 videoEncodingBehavior:v7 device:captureDevice preferredProResColorSpace:{objc_msgSend(v5, "explicitProResColorSpace")}], v24, 0, v25, 0, 0);
      graphConfigurationForCurrentState = self->__graphConfigurationForCurrentState;
      self->__graphConfigurationForCurrentState = v16;
    }
  }

  else
  {
    [(CAMTimelapseController *)self _invalidateCachedGraphConfiguration];
  }

  v18 = self->__graphConfigurationForCurrentState;

  return v18;
}

- (void)_restoreCaptureStateFromDisk
{
  v5 = [CAMTimelapseDiskUtilities readSortedStatesFromDiskMergeSecondaryState:1];
  lastObject = [v5 lastObject];
  v4 = lastObject;
  if (lastObject && [lastObject canContinueCapture])
  {
    objc_storeStrong(&self->__state, v4);
    [(CAMTimelapseController *)self _invalidateCachedGraphConfiguration];
  }
}

- (void)_reserveDiskSpaceForTimelapseUUID:(id)d preferHEVC:(BOOL)c withCompletionBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  _captureController = [(CAMTimelapseController *)self _captureController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__CAMTimelapseController__reserveDiskSpaceForTimelapseUUID_preferHEVC_withCompletionBlock___block_invoke;
  v13[3] = &unk_1E76FC6C8;
  v14 = dCopy;
  v15 = blockCopy;
  cCopy = c;
  v13[4] = self;
  v11 = dCopy;
  v12 = blockCopy;
  [_captureController queryTimelapseDimensionsWithCompletionBlock:v13];
}

uint64_t __91__CAMTimelapseController__reserveDiskSpaceForTimelapseUUID_preferHEVC_withCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([*(a1 + 32) isCapturing])
  {
    if (!a4 || !a5)
    {
      v10 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Failed to query video dimensions, falling back to 1080p, assuming no overscan", buf, 2u);
      }

      a4 = 1920;
      a5 = 1080;
    }

    v11 = MEMORY[0x1E69BF208];
    v12 = NSHomeDirectory();
    v13 = [v11 diskSpaceAvailableForPath:v12];

    v14 = +[CAMTimelapseSettings sharedInstance];
    v15 = [v14 minAvailableBytesNeededForCaptureForWidth:a4 height:a5 useHEVC:*(a1 + 56)];

    v17 = v13 < 0 || v15 <= v13;
    if (v17)
    {
      v18 = dispatch_queue_create("com.apple.camera.timelapse", 0);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __91__CAMTimelapseController__reserveDiskSpaceForTimelapseUUID_preferHEVC_withCompletionBlock___block_invoke_220;
      v22[3] = &unk_1E76FAEE0;
      v23 = *(a1 + 40);
      v24 = a2;
      v25 = a3;
      v26 = *(a1 + 56);
      dispatch_async(v18, v22);
    }

    else
    {
      v21 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v28 = v15;
        v29 = 2048;
        v30 = v13;
        _os_log_impl(&dword_1A3640000, v21, OS_LOG_TYPE_DEFAULT, "Not enough storage to start capture: %lld needed, %lld available", buf, 0x16u);
      }

      [*(a1 + 32) _notifyInsufficientDiskSpaceForStartingCaptureWithNeededBytes:v15 availableBytes:v13];
    }

    result = *(a1 + 48);
    if (result)
    {
      return (*(result + 16))(result, 0, v17);
    }
  }

  else
  {
    result = *(a1 + 48);
    if (result)
    {
      v20 = *(result + 16);

      return v20();
    }
  }

  return result;
}

- (NSDate)captureStartTime
{
  if ([(CAMTimelapseController *)self isCapturing])
  {
    startTime = [(CAMTimelapseState *)self->__state startTime];
  }

  else
  {
    startTime = 0;
  }

  return startTime;
}

- (void)_startCaptureTimer
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->__captureTimer)
  {
    [(CAMTimelapseController *)self _teardownCaptureTimer];
  }

  [(CAMTimelapseState *)self->__state captureTimeInterval];
  v4 = v3;
  if (v3 <= 0.0)
  {
    startTime = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(startTime, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = v4;
      _os_log_impl(&dword_1A3640000, startTime, OS_LOG_TYPE_DEFAULT, "Error: invalid captureTimeInterval: %f", buf, 0xCu);
    }
  }

  else
  {
    self->__ignoringTimerCallbacksForTearDown = 0;
    v5 = +[CAMCaptureCapabilities capabilities];
    [v5 timelapseFirstShotDelay];
    v7 = v6;

    startTime = [(CAMTimelapseState *)self->__state startTime];
    v9 = [startTime dateByAddingTimeInterval:v7];
    [v9 timeIntervalSinceNow];
    v11 = v10;
    if (v10 <= 0.0)
    {
      v11 = v4 - fmod(-v10, v4);
    }

    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    captureTimer = self->__captureTimer;
    self->__captureTimer = v12;

    v14 = self->__captureTimer;
    if (v14)
    {
      v15 = dispatch_time(0, (v11 * 1000000000.0));
      dispatch_source_set_timer(v14, v15, (v4 * 1000000000.0), 0);
      v16 = self->__captureTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __44__CAMTimelapseController__startCaptureTimer__block_invoke;
      handler[3] = &unk_1E76F77B0;
      handler[4] = self;
      dispatch_source_set_event_handler(v16, handler);
      dispatch_resume(self->__captureTimer);
    }
  }
}

void __44__CAMTimelapseController__startCaptureTimer__block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    if ((v2[9] & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v2[9])
  {
LABEL_5:
    v3 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Ignoring timelapse capture because we're waiting for capture response", v4, 2u);
    }

    return;
  }

  [v2 _captureTimerFired];
}

- (void)_teardownCaptureTimer
{
  self->__ignoringTimerCallbacksForTearDown = 1;
  captureTimer = self->__captureTimer;
  if (captureTimer)
  {
    dispatch_source_cancel(captureTimer);
    v4 = self->__captureTimer;
    self->__captureTimer = 0;
  }
}

- (void)_captureTimerFired
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(CAMTimelapseController *)self _updateLocationIfNecessary];
  timelapseUUID = [(CAMTimelapseState *)self->__state timelapseUUID];
  v4 = [CAMTimelapseDiskUtilities readSecondaryStateForTimelapseUUID:timelapseUUID];

  [(CAMTimelapseState *)self->__state mergeSecondaryState:v4];
  if ([(CAMTimelapseState *)self->__state canContinueCapture])
  {
    if ([(CAMTimelapseController *)self _canCapturePhoto])
    {
      self->__ignoringTimerCallbacksWaitingForCaptureResponse = 1;
      if (![(CAMTimelapseController *)self _enqueueCaptureRequest])
      {
        self->__ignoringTimerCallbacksWaitingForCaptureResponse = 0;
        v5 = os_log_create("com.apple.camera", "Nebula");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [(CAMTimelapseController *)v5 _captureTimerFired:v6];
        }
      }
    }

    else
    {
      v13 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "Skipping capture because capture controller not ready!", v17, 2u);
      }

      _storageController = [(CAMTimelapseController *)self _storageController];
      _graphConfigurationForCurrentState = [(CAMTimelapseController *)self _graphConfigurationForCurrentState];
      v16 = [_storageController hasDiskSpaceToAllowCaptureWithConfiguration:_graphConfigurationForCurrentState allowPurging:1];

      if ((v16 & 1) == 0)
      {
        [(CAMTimelapseController *)self _stopCapturingWithReasons:32];
        [(CAMTimelapseController *)self _notifyInsufficientDiskSpaceForContinuingCapture];
      }
    }
  }

  else
  {
    [(CAMTimelapseController *)self _stopCapturingWithReasons:0];
  }
}

- (BOOL)_canCapturePhoto
{
  _captureController = [(CAMTimelapseController *)self _captureController];
  isInterrupted = [_captureController isInterrupted];
  isCaptureAvailable = [_captureController isCaptureAvailable];
  _isFocusAndExposureAdjusted = [(CAMTimelapseController *)self _isFocusAndExposureAdjusted];
  _storageController = [(CAMTimelapseController *)self _storageController];
  _graphConfigurationForCurrentState = [(CAMTimelapseController *)self _graphConfigurationForCurrentState];
  v9 = [_storageController hasDiskSpaceToAllowCaptureWithConfiguration:_graphConfigurationForCurrentState allowPurging:1];

  return (isInterrupted ^ 1) & isCaptureAvailable & _isFocusAndExposureAdjusted & v9;
}

- (BOOL)_enqueueCaptureRequest
{
  timelapseUUID = [(CAMTimelapseState *)self->__state timelapseUUID];
  if ([timelapseUUID length])
  {
    _stillImageCaptureRequestWithCurrentSettings = [(CAMTimelapseController *)self _stillImageCaptureRequestWithCurrentSettings];
    [_stillImageCaptureRequestWithCurrentSettings setTimelapseIdentifier:timelapseUUID];
    [(NSCountedSet *)self->__inFlightTimelapseUUIDs addObject:timelapseUUID];
    _captureController = [(CAMTimelapseController *)self _captureController];
    v15 = 0;
    v6 = [_captureController captureStillImageWithRequest:_stillImageCaptureRequestWithCurrentSettings error:&v15];
  }

  else
  {
    _stillImageCaptureRequestWithCurrentSettings = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(_stillImageCaptureRequestWithCurrentSettings, OS_LOG_TYPE_ERROR))
    {
      [(CAMTimelapseController *)_stillImageCaptureRequestWithCurrentSettings _enqueueCaptureRequest:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (id)_stillImageCaptureRequestWithCurrentSettings
{
  captureOrientation = [(CAMTimelapseState *)self->__state captureOrientation];
  captureDevice = [(CAMTimelapseState *)self->__state captureDevice];
  v5 = +[CAMUserPreferences preferences];
  filePathForNextFrameIndex = [(CAMTimelapseState *)self->__state filePathForNextFrameIndex];
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:filePathForNextFrameIndex];
  v8 = +[CAMCaptureCapabilities capabilities];
  v9 = v8;
  v10 = captureDevice - 1;
  if ((captureDevice - 1) > 0xA)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1A3A6A3B0[v10];
  }

  v12 = [v8 maxSupportedPhotoQualityPrioritizationForMode:5 devicePosition:v11];

  v13 = objc_alloc_init(CAMMutableStillImageCaptureRequest);
  [(CAMMutableStillImageCaptureRequest *)v13 setDelegate:self];
  [(CAMMutableStillImageCaptureRequest *)v13 setPersistenceOptions:1];
  [(CAMMutableStillImageCaptureRequest *)v13 setLocalDestinationURL:v7];
  [(CAMMutableStillImageCaptureRequest *)v13 setCaptureOrientation:captureOrientation];
  if (v10 > 0xA)
  {
    v14 = 0;
  }

  else
  {
    v14 = qword_1A3A6A3B0[v10];
  }

  -[CAMMutableStillImageCaptureRequest setCaptureMirrored:](v13, "setCaptureMirrored:", [v5 mirrorCameraCapturesForDevicePosition:v14 mode:5]);
  [(CAMMutableStillImageCaptureRequest *)v13 setCaptureDevice:captureDevice];
  [(CAMMutableStillImageCaptureRequest *)v13 setFlashMode:0];
  [(CAMMutableStillImageCaptureRequest *)v13 setHdrMode:0];
  [(CAMMutableStillImageCaptureRequest *)v13 setIrisMode:0];
  [(CAMMutableStillImageCaptureRequest *)v13 setPhotoQualityPrioritization:v12];
  [(CAMMutableStillImageCaptureRequest *)v13 setWantsAudioForCapture:0];
  [(CAMMutableStillImageCaptureRequest *)v13 setWantsHighResolutionStills:0];
  [(CAMMutableStillImageCaptureRequest *)v13 setStillDuringVideo:0];
  [(CAMMutableStillImageCaptureRequest *)v13 setWantsSemanticSceneFilter:0];
  [(CAMMutableStillImageCaptureRequest *)v13 setPhotoEncodingBehavior:0];
  _locationController = [(CAMTimelapseController *)self _locationController];
  currentLocation = [_locationController currentLocation];
  if (currentLocation)
  {
    [(CAMMutableStillImageCaptureRequest *)v13 setLocation:currentLocation];
  }

  if ([v5 sharedLibraryEnabled])
  {
    _librarySelectionController = [(CAMTimelapseController *)self _librarySelectionController];
    -[CAMMutableStillImageCaptureRequest setSharedLibraryMode:](v13, "setSharedLibraryMode:", [_librarySelectionController sharedLibraryMode]);

    v18 = +[CAMCaptureCapabilities capabilities];
    isInternalInstall = [v18 isInternalInstall];

    if (isInternalInstall)
    {
      _librarySelectionController2 = [(CAMTimelapseController *)self _librarySelectionController];
      librarySelectionDiagnostics = [_librarySelectionController2 librarySelectionDiagnostics];
      [(CAMMutableStillImageCaptureRequest *)v13 setSharedLibraryDiagnostics:librarySelectionDiagnostics];
    }

    v22 = +[CAMCaptureCapabilities capabilities];
    peopleProximityPersistenceSupported = [v22 peopleProximityPersistenceSupported];

    if (peopleProximityPersistenceSupported)
    {
      _librarySelectionController3 = [(CAMTimelapseController *)self _librarySelectionController];
      acquiredSignalResults = [_librarySelectionController3 acquiredSignalResults];

      identitiesInProximity = [acquiredSignalResults identitiesInProximity];
      v27 = CAMLibrarySelectionIdentityContactIdentifiersForIdentities(identitiesInProximity);
      [(CAMMutableStillImageCaptureRequest *)v13 setContactIDsInProximity:v27];
    }
  }

  return v13;
}

- (void)setLastFocusResult:(id)result
{
  resultCopy = result;
  v5 = resultCopy;
  if (self->_lastFocusResult != resultCopy)
  {
    self->_lastFocusResult = resultCopy;
    v6 = resultCopy;
    resultCopy = [(CAMTimelapseController *)self _shouldUpdateFocusAndExposureWhenContrastDetectionCompletes];
    v5 = v6;
    if (resultCopy)
    {
      [(CAMTimelapseController *)self _setShouldUpdateFocusAndExposureWhenContrastDetectionCompletes:0];
      resultCopy = [(CAMTimelapseController *)self _updateFocusAndExposureForStartCapturing];
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](resultCopy, v5);
}

- (void)_updateFocusAndExposureForStartCapturing
{
  v27 = *MEMORY[0x1E69E9840];
  [(CAMTimelapseController *)self _setFocusAndExposureAdjusted:0];
  lastFocusResult = [(CAMTimelapseController *)self lastFocusResult];
  if (![lastFocusResult isPerformingContrastDetection])
  {
    _captureController = [(CAMTimelapseController *)self _captureController];
    [(CAMTimelapseState *)self->__state focusLensPosition];
    v6 = v5;
    timelapseUUID = [(CAMTimelapseState *)self->__state timelapseUUID];
    v8 = [timelapseUUID copy];

    +[CUCaptureController focusLensPositionCurrentSentinel];
    v10 = v6 == v9;
    objc_initWeak(&location, self);
    +[CUCaptureController focusLensPositionCurrentSentinel];
    v12 = v11;
    v13 = os_log_create("com.apple.camera", "Nebula");
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v6 == v12)
    {
      if (v14)
      {
        *buf = 0;
        v15 = "Locking focus at current position";
        v16 = v13;
        v17 = 2;
LABEL_8:
        _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }

    else if (v14)
    {
      *buf = 134217984;
      v26 = v6;
      v15 = "Locking focus at position %.3f";
      v16 = v13;
      v17 = 12;
      goto LABEL_8;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__CAMTimelapseController__updateFocusAndExposureForStartCapturing__block_invoke;
    v20[3] = &unk_1E76FC6F0;
    objc_copyWeak(&v22, &location);
    v18 = v8;
    v21 = v18;
    v23 = v10;
    *&v19 = v6;
    [_captureController lockFocusAtLensPosition:v20 completionBlock:v19];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);

    goto LABEL_10;
  }

  [(CAMTimelapseController *)self _setShouldUpdateFocusAndExposureWhenContrastDetectionCompletes:1];
LABEL_10:
}

void __66__CAMTimelapseController__updateFocusAndExposureForStartCapturing__block_invoke(uint64_t a1, float a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a2;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "Locked focus at position %.3f", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setFocusAndExposureAdjusted:1];

  v6 = objc_loadWeakRetained((a1 + 40));
  *&v7 = a2;
  [v6 _updateFocusLensPosition:*(a1 + 32) forTimelapseUUID:*(a1 + 48) forceUpdate:v7];
}

- (void)_updateFocusLensPosition:(float)position forTimelapseUUID:(id)d forceUpdate:(BOOL)update
{
  state = self->__state;
  dCopy = d;
  timelapseUUID = [(CAMTimelapseState *)state timelapseUUID];
  v10 = [timelapseUUID isEqualToString:dCopy];

  if (v10)
  {
    +[CUCaptureController focusLensPositionCurrentSentinel];
    v12 = v11;
    [(CAMTimelapseState *)self->__state focusLensPosition];
    if (v13 == v12)
    {
      [(CAMTimelapseState *)self->__state focusLensPosition];
      if (*&v14 != position)
      {
        *&v14 = position;
        [(CAMTimelapseState *)self->__state setFocusLensPosition:v14];
        [(CAMTimelapseController *)self _saveStateToDisk:self->__state];
        _nebulaDaemonProxyManager = [(CAMTimelapseController *)self _nebulaDaemonProxyManager];
        timelapseUUID2 = [(CAMTimelapseState *)self->__state timelapseUUID];
        [_nebulaDaemonProxyManager updateTimelapseWithUUID:timelapseUUID2];
      }
    }
  }
}

- (void)_saveStateToDisk:(id)disk
{
  diskCopy = disk;
  timelapseUUID = [diskCopy timelapseUUID];
  if ([timelapseUUID length])
  {
    if ([diskCopy canContinueCapture])
    {
      v6 = [CAMTimelapseDiskUtilities readSecondaryStateForTimelapseUUID:timelapseUUID];
      [diskCopy mergeSecondaryState:v6];
      canContinueCapture = [diskCopy canContinueCapture];

      [CAMTimelapseDiskUtilities writeStateToDisk:diskCopy createDirectoryIfNeeded:1];
      if ((canContinueCapture & 1) == 0)
      {
        [(CAMTimelapseController *)self _stopCapturingWithReasons:0];
      }
    }

    else
    {
      [CAMTimelapseDiskUtilities writeStateToDisk:diskCopy createDirectoryIfNeeded:1];
    }
  }

  else
  {
    v8 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Error: cannot save state without timelapseUUID", v9, 2u);
    }
  }
}

- (void)stillImageRequestDidCompleteStillImageCapture:(id)capture withResponse:(id)response error:(id)error
{
  captureCopy = capture;
  responseCopy = response;
  errorCopy = error;
  if (self->__ignoringTimerCallbacksWaitingForCaptureResponse)
  {
    self->__ignoringTimerCallbacksWaitingForCaptureResponse = 0;
  }

  v11 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CAMTimelapseController stillImageRequestDidCompleteStillImageCapture:errorCopy withResponse:v11 error:?];
  }

  if (!errorCopy)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__16;
    v41 = __Block_byref_object_dispose__16;
    v42 = 0;
    timelapseIdentifier = [captureCopy timelapseIdentifier];
    if ([timelapseIdentifier length] && (-[CAMTimelapseState timelapseUUID](self->__state, "timelapseUUID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(timelapseIdentifier, "isEqualToString:", v13), v13, v14))
    {
      v15 = v38;
      v16 = self->__state;
      v17 = v15[5];
      v15[5] = v16;
    }

    else
    {
      pendingCompletedStates = self->__pendingCompletedStates;
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __91__CAMTimelapseController_stillImageRequestDidCompleteStillImageCapture_withResponse_error___block_invoke;
      v34 = &unk_1E76FC718;
      v35 = timelapseIdentifier;
      v36 = &v37;
      [(NSMutableSet *)pendingCompletedStates enumerateObjectsUsingBlock:&v31];
      v17 = v35;
    }

    v19 = v38[5];
    if (v19)
    {
      incrementFrameIndex = [v19 incrementFrameIndex];
      v21 = v38;
      if (incrementFrameIndex && v38[5] == self->__state)
      {
        _state = [(CAMTimelapseController *)self _state];
        [_state captureTimeInterval];
        v24 = v23;

        _captureController = [(CAMTimelapseController *)self _captureController];
        v26 = 1.0 / v24;
        *&v26 = 1.0 / v24;
        [_captureController changeToTimelapseCaptureRate:v26];

        [(CAMTimelapseController *)self _startCaptureTimer];
        v21 = v38;
      }

      v27 = v21[5];
      date = [MEMORY[0x1E695DF00] date];
      [v27 setLastFrameResponseTime:date];

      [(CAMTimelapseController *)self _saveStateToDisk:v38[5]];
      _nebulaDaemonProxyManager = [(CAMTimelapseController *)self _nebulaDaemonProxyManager];
      timelapseUUID = [v38[5] timelapseUUID];
      [_nebulaDaemonProxyManager updateTimelapseWithUUID:timelapseUUID];
    }

    _Block_object_dispose(&v37, 8);
  }
}

void __91__CAMTimelapseController_stillImageRequestDidCompleteStillImageCapture_withResponse_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 timelapseUUID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)stillImageRequestDidCompleteStillImageLocalPersistence:(id)persistence withResponse:(id)response error:(id)error
{
  persistenceCopy = persistence;
  responseCopy = response;
  errorCopy = error;
  v11 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CAMTimelapseController stillImageRequestDidCompleteStillImageLocalPersistence:errorCopy withResponse:v11 error:?];
  }

  timelapseIdentifier = [persistenceCopy timelapseIdentifier];
  if ([timelapseIdentifier length])
  {
    [(NSCountedSet *)self->__inFlightTimelapseUUIDs removeObject:timelapseIdentifier];
    _nebulaDaemonProxyManager = [(CAMTimelapseController *)self _nebulaDaemonProxyManager];
    [_nebulaDaemonProxyManager finishCaptureForTimelapseWithUUID:timelapseIdentifier];
    if (![(NSCountedSet *)self->__inFlightTimelapseUUIDs countForObject:timelapseIdentifier])
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy__16;
      v30 = __Block_byref_object_dispose__16;
      v31 = 0;
      pendingCompletedStates = self->__pendingCompletedStates;
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __100__CAMTimelapseController_stillImageRequestDidCompleteStillImageLocalPersistence_withResponse_error___block_invoke;
      v23 = &unk_1E76FC718;
      v24 = timelapseIdentifier;
      v25 = &v26;
      [(NSMutableSet *)pendingCompletedStates enumerateObjectsUsingBlock:&v20];
      v15 = v27[5];
      if (v15)
      {
        [v15 setAllFramesWritten:{1, v20, v21, v22, v23}];
        [(CAMTimelapseController *)self _saveStateToDisk:v27[5]];
        _nebulaDaemonProxyManager2 = [(CAMTimelapseController *)self _nebulaDaemonProxyManager];
        timelapseUUID = [v27[5] timelapseUUID];
        [_nebulaDaemonProxyManager2 updateTimelapseWithUUID:timelapseUUID];

        [_nebulaDaemonProxyManager2 closeConnectionToDaemon];
        [(NSMutableSet *)self->__pendingCompletedStates removeObject:v27[5]];
      }

      _Block_object_dispose(&v26, 8);
    }
  }

  v18 = [(CAMTimelapseController *)self _storageController:v20];
  _graphConfigurationForCurrentState = [(CAMTimelapseController *)self _graphConfigurationForCurrentState];
  [v18 hasDiskSpaceToAllowCaptureWithConfiguration:_graphConfigurationForCurrentState allowPurging:1];
}

void __100__CAMTimelapseController_stillImageRequestDidCompleteStillImageLocalPersistence_withResponse_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 timelapseUUID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)_createThumbnailImageFromPlaceholderResult:(id)result
{
  if ([result previewImageSurface] && (v3 = PLCreateImageFromPreviewImageSurface()) != 0)
  {
    v4 = v3;
    v5 = MEMORY[0x1E69DCAB8];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v7 = [v5 imageWithCGImage:v4 scale:0 orientation:?];

    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)createPlaceholderResultForTimelapseState:(id)state
{
  stateCopy = state;
  v5 = [self _newVideoPreviewSurfaceForTimelapseState:stateCopy];
  if (v5)
  {
    v6 = v5;
    timelapseUUID = [stateCopy timelapseUUID];
    startTime = [stateCopy startTime];
    captureOrientation = [stateCopy captureOrientation];
    v10 = captureOrientation;
    captureDevice = [stateCopy captureDevice];
    [stateCopy nominalIntermediateFrameSize];
    if (captureOrientation > 4)
    {
      v14 = *MEMORY[0x1E695F060];
      v15 = *(MEMORY[0x1E695F060] + 8);
    }

    else
    {
      v14 = v12;
      if (((1 << captureOrientation) & 0x19) != 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = v12;
        v14 = v13;
      }
    }

    startTime2 = [stateCopy startTime];
    stopTime = [stateCopy stopTime];
    if (!stopTime)
    {
      stopTime = [MEMORY[0x1E695DF00] date];
    }

    [stopTime timeIntervalSinceDate:startTime2];
    v20 = v19;
    localPrivateMetadataFileURL = [stateCopy localPrivateMetadataFileURL];
    v16 = -[CAMTimelapsePlaceholderResult initWithAssetUUID:captureSession:creationDate:captureOrientation:captureDevice:videoDimensions:duration:previewImageSurface:localPrivateMetadataFileURL:]([CAMTimelapsePlaceholderResult alloc], "initWithAssetUUID:captureSession:creationDate:captureOrientation:captureDevice:videoDimensions:duration:previewImageSurface:localPrivateMetadataFileURL:", timelapseUUID, [stateCopy sessionIdentifier], startTime, v10, captureDevice, v6, v14, v15, v20, localPrivateMetadataFileURL);
    CFRelease(v6);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (__IOSurface)_newVideoPreviewSurfaceForTimelapseState:(id)state
{
  v26 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v4 = [CAMTimelapseDiskUtilities fileNameForImageFrameIndex:0];
  timelapseUUID = [stateCopy timelapseUUID];
  v6 = [CAMTimelapseDiskUtilities directoryPathForTimelapseUUID:timelapseUUID];

  v7 = [v6 stringByAppendingPathComponent:v4];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [defaultManager fileExistsAtPath:v7];

  if ((v9 & 1) == 0)
  {
    v10 = os_log_create("com.apple.camera", "Nebula");
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:
      v21 = 0;
      goto LABEL_17;
    }

    timelapseUUID2 = [stateCopy timelapseUUID];
    v24 = 138543362;
    v25 = timelapseUUID2;
    _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "First frame not found for timelapse %{public}@", &v24, 0xCu);
LABEL_13:

    goto LABEL_14;
  }

  v10 = [CAMTimelapseJPEGReader newDataFromFilePath:v7];
  if (!v10)
  {
    timelapseUUID2 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(timelapseUUID2, OS_LOG_TYPE_ERROR))
    {
      [(CAMTimelapseController *)stateCopy _newVideoPreviewSurfaceForTimelapseState:timelapseUUID2];
    }

    goto LABEL_13;
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v13 = v12;
  [mainScreen bounds];
  v16 = v15 * v13;
  if (v14 * v13 >= v16)
  {
    v16 = v14 * v13;
  }

  v17 = vcvtpd_s64_f64(v16);
  [stateCopy nominalIntermediateFrameSize];
  v18 = [CAMTimelapseJPEGReader createPixelBufferFromData:v10 applyTransform:1 maxPixelSize:v17 useBGRA:1 cleanApertureSize:?];
  if (v18)
  {
    v19 = v18;
    IOSurface = CVPixelBufferGetIOSurface(v18);
    v21 = IOSurface;
    if (IOSurface)
    {
      CFRetain(IOSurface);
    }

    CVPixelBufferRelease(v19);
  }

  else
  {
    v21 = 0;
  }

LABEL_17:
  return v21;
}

- (void)_sessionRuntimeErrored:(id)errored
{
  userInfo = [errored userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E6986AA0]];

  if (v5)
  {
    [(CAMTimelapseController *)self _resetIgnoringTimerCallbacksWaitingForCaptureResponse];
    [(CAMTimelapseController *)self _setPreviewStarted:0];
  }
}

- (void)_previewStarted:(id)started
{
  [(CAMTimelapseController *)self _setPreviewStarted:1];
  if ([(CAMTimelapseController *)self isCapturing])
  {

    [(CAMTimelapseController *)self _updateFocusAndExposureForStartCapturing];
  }
}

- (void)_notifyInsufficientDiskSpaceForStartingCaptureWithNeededBytes:(int64_t)bytes availableBytes:(int64_t)availableBytes
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = bytes / 0x100000;
  v6 = availableBytes / 0x100000;
  v7 = CAMLocalizedFrameworkString(@"TIMELAPSE_INSUFFICIENT_DISK_SPACE_TO_START_TITLE", 0);
  v8 = MEMORY[0x1E696AEC0];
  v9 = CAMLocalizedFrameworkString(@"TIMELAPSE_INSUFFICIENT_DISK_SPACE_TO_START_MESSAGE_FORMAT_NEEDEDMB_AVAILABLEMB", 0);
  v10 = [v8 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%d%d" error:0, v5, v6];

  v13[0] = @"CAMTimelapseLowDiskSpaceTitleInfo";
  v13[1] = @"CAMTimelapseLowDiskSpaceMessageInfo";
  v14[0] = v7;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CAMTimelapseLowDiskSpaceNotification" object:self userInfo:v11];
}

- (void)_notifyInsufficientDiskSpaceForContinuingCapture
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = CAMLocalizedFrameworkString(@"TIMELAPSE_INSUFFICIENT_DISK_SPACE_TO_CONTINUE_TITLE", 0);
  v4 = CAMLocalizedFrameworkString(@"TIMELAPSE_INSUFFICIENT_DISK_SPACE_TO_CONTINUE_MESSAGE", 0);
  v7[0] = @"CAMTimelapseLowDiskSpaceTitleInfo";
  v7[1] = @"CAMTimelapseLowDiskSpaceMessageInfo";
  v8[0] = v3;
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CAMTimelapseLowDiskSpaceNotification" object:self userInfo:v5];
}

- (void)_applicationDidEnterBackground:(id)background
{
  [(CAMTimelapseController *)self _setPreviewStarted:0];
  if ([(CAMTimelapseController *)self isCapturing])
  {

    [(CAMTimelapseController *)self stopCapturingWithReasons:4];
  }
}

- (void)_updateLocationIfNecessary
{
  state = self->__state;
  if (state)
  {
    startLocation = [(CAMTimelapseState *)state startLocation];
    if (!startLocation)
    {
      _locationController = [(CAMTimelapseController *)self _locationController];
      currentLocation = [_locationController currentLocation];
      if (currentLocation)
      {
        [(CAMTimelapseState *)self->__state setStartLocation:currentLocation];
        [(CAMTimelapseController *)self _saveStateToDisk:self->__state];
        _nebulaDaemonProxyManager = [(CAMTimelapseController *)self _nebulaDaemonProxyManager];
        timelapseUUID = [(CAMTimelapseState *)self->__state timelapseUUID];
        [_nebulaDaemonProxyManager updateTimelapseWithUUID:timelapseUUID];

        _captureController = [(CAMTimelapseController *)self _captureController];
        [_captureController notifyTimelapseControllerFinishedUpdatingWithLocation];
      }

      startLocation = currentLocation;
    }
  }
}

- (void)forceStopTimelapseCaptureWithReasons:(int64_t)reasons
{
  if ([(CAMTimelapseController *)self isCapturing])
  {

    [(CAMTimelapseController *)self stopCapturingWithReasons:reasons];
  }
}

- (CAMTimelapseControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stillImageRequestDidCompleteStillImageCapture:(uint64_t)a1 withResponse:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1A3640000, a2, OS_LOG_TYPE_DEBUG, "Generated timelapse capture response (%{public}@)", &v2, 0xCu);
}

- (void)stillImageRequestDidCompleteStillImageLocalPersistence:(uint64_t)a1 withResponse:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1A3640000, a2, OS_LOG_TYPE_DEBUG, "Finished writing timelapse capture response (%{public}@)", &v2, 0xCu);
}

+ (void)_newVideoPreviewSurfaceForTimelapseState:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 timelapseUUID];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Error creating video preview surface for timelapse %{public}@", &v4, 0xCu);
}

@end