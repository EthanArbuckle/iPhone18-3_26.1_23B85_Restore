@interface CAMRemoteShutterController
- (BOOL)cameraConnection:(id)connection setCaptureDevice:(int64_t)device;
- (BOOL)cameraConnection:(id)connection setCaptureMode:(int64_t)mode;
- (BOOL)cameraConnectionBeginBurstCapture:(id)capture;
- (BOOL)cameraConnectionBurstSupport:(id)support;
- (BOOL)cameraConnectionEndBurstCapture:(id)capture;
- (BOOL)cameraConnectionPauseCapture:(id)capture;
- (BOOL)cameraConnectionResumeCapture:(id)capture;
- (BOOL)cameraConnectionStartCapture:(id)capture;
- (BOOL)cameraConnectionStopCapture:(id)capture;
- (BOOL)cameraConnectionSupportsMomentCapture:(id)capture;
- (BOOL)cameraConnectionToggleCameraDeviceSupport:(id)support;
- (BOOL)cameraConnectionZoomMagnificationSupport:(id)support;
- (BOOL)cameraConnectionZoomSupport:(id)support;
- (CAMRemoteShutterController)initWithCaptureConfiguration:(id)configuration motionController:(id)controller;
- (CAMRemoteShutterDelegate)delegate;
- (double)_displayZoomValueForZoomFactor:(double)result;
- (double)_zoomFactorForDisplayZoomValue:(double)result;
- (double)cameraConnectionMaximumZoomMagnification:(id)magnification;
- (double)cameraConnectionMinimumZoomMagnification:(id)magnification;
- (id)cameraConnectionSupportedCaptureDevices:(id)devices;
- (id)cameraConnectionSupportedCaptureModes:(id)modes;
- (int64_t)_convertCaptureDevice:(int64_t)device;
- (int64_t)_convertMode:(int64_t)mode;
- (int64_t)_convertPanoramaDirection:(int64_t)direction;
- (int64_t)cameraConnectionFlashMode:(id)mode;
- (int64_t)cameraConnectionFlashSupport:(id)support;
- (int64_t)cameraConnectionHDRSupport:(id)support;
- (int64_t)cameraConnectionIrisMode:(id)mode;
- (int64_t)cameraConnectionIrisSupport:(id)support;
- (int64_t)cameraConnectionOrientation:(id)orientation;
- (void)_captureOrientationDidChange:(id)change;
- (void)_reevaluateConnectionOpenState;
- (void)_refreshZoomMagnificationState;
- (void)_sendMode;
- (void)applyCaptureConfiguration:(id)configuration;
- (void)cameraConnection:(id)connection setFlashMode:(int64_t)mode;
- (void)cameraConnection:(id)connection setFocusPoint:(CGPoint)point;
- (void)cameraConnection:(id)connection setHDRMode:(int64_t)mode;
- (void)cameraConnection:(id)connection setIrisMode:(int64_t)mode;
- (void)cameraConnection:(id)connection setSharedLibraryMode:(int64_t)mode;
- (void)cameraConnection:(id)connection setZoomAmount:(double)amount;
- (void)cameraConnection:(id)connection setZoomMagnificationAmount:(double)amount;
- (void)cameraConnection:(id)connection takePhotoWithCountdown:(unint64_t)countdown;
- (void)cameraConnectionCancelCountdown:(id)countdown;
- (void)cameraConnectionSuspend:(id)suspend;
- (void)cameraConnectionToggleCameraDevice:(id)device;
- (void)createConnectionIfNecessary;
- (void)dealloc;
- (void)sendThumbnailImage:(id)image isVideo:(BOOL)video;
- (void)setCaptureDevice:(int64_t)device;
- (void)setCaptureMode:(int64_t)mode;
- (void)setFlashMode:(int64_t)mode;
- (void)setHdrMode:(int64_t)mode;
- (void)setIrisMode:(int64_t)mode;
- (void)setPanoramaDirection:(int64_t)direction;
- (void)setShallowDepthOfFieldStatus:(int64_t)status;
- (void)setSharedLibraryMode:(int64_t)mode;
- (void)setSharedLibrarySupported:(BOOL)supported;
- (void)setShowingPreview:(BOOL)preview;
- (void)setStereoCaptureStatus:(int64_t)status;
- (void)setZoomAmount:(double)amount;
@end

@implementation CAMRemoteShutterController

- (void)createConnectionIfNecessary
{
  if (!self->_connection)
  {
    v9 = v2;
    v10 = v3;
    v5 = os_log_create("com.apple.camera", "RemoteShutter");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "[CAMRemoteShutterController] createConnectionIfNecessary", v8, 2u);
    }

    v6 = objc_alloc_init(NSClassFromString(&cfstr_Cccameraconnec.isa));
    connection = self->_connection;
    self->_connection = v6;

    [(CCCameraConnection *)self->_connection setDelegate:self];
    [(CAMRemoteShutterController *)self _reevaluateConnectionOpenState];
  }
}

- (CAMRemoteShutterController)initWithCaptureConfiguration:(id)configuration motionController:(id)controller
{
  configurationCopy = configuration;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = CAMRemoteShutterController;
  v8 = [(CAMRemoteShutterController *)&v13 init];
  if (v8)
  {
    v8->_captureMode = [configurationCopy mode];
    v8->_captureDevice = [configurationCopy device];
    v8->_flashMode = [configurationCopy flashMode];
    v8->_hdrMode = [configurationCopy HDRMode];
    v8->_irisMode = [configurationCopy irisMode];
    v8->_sharedLibraryMode = [configurationCopy sharedLibraryMode];
    v8->_showingPreview = 1;
    v8->_isForeground = [*MEMORY[0x1E69DDA98] applicationState] != 2;
    objc_storeStrong(&v8->__motionController, controller);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__enterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v8 selector:sel__enterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v8 selector:sel__captureOrientationDidChange_ name:@"CAMMotionControllerCaptureOrientationChangedNotification" object:0];

    v8->_stereoCaptureStatus = 1;
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(CCCameraConnection *)self->_connection close];
  v4.receiver = self;
  v4.super_class = CAMRemoteShutterController;
  [(CAMRemoteShutterController *)&v4 dealloc];
}

- (void)applyCaptureConfiguration:(id)configuration
{
  configurationCopy = configuration;
  -[CAMRemoteShutterController setCaptureMode:](self, "setCaptureMode:", [configurationCopy mode]);
  -[CAMRemoteShutterController setCaptureDevice:](self, "setCaptureDevice:", [configurationCopy device]);
  -[CAMRemoteShutterController setFlashMode:](self, "setFlashMode:", [configurationCopy flashMode]);
  -[CAMRemoteShutterController setHdrMode:](self, "setHdrMode:", [configurationCopy HDRMode]);
  -[CAMRemoteShutterController setIrisMode:](self, "setIrisMode:", [configurationCopy irisMode]);
  sharedLibraryMode = [configurationCopy sharedLibraryMode];

  [(CAMRemoteShutterController *)self setSharedLibraryMode:sharedLibraryMode];
}

- (int64_t)_convertCaptureDevice:(int64_t)device
{
  if ((device - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1A3A69D08[device - 1];
  }
}

- (int64_t)_convertMode:(int64_t)mode
{
  if ((mode - 1) >= 9)
  {
    return 0;
  }

  else
  {
    return mode;
  }
}

- (int64_t)_convertPanoramaDirection:(int64_t)direction
{
  if (direction == 2)
  {
    return 2;
  }

  else
  {
    return direction == 1;
  }
}

- (void)_sendMode
{
  connection = self->_connection;
  _currentMode = [(CAMRemoteShutterController *)self _currentMode];

  [(CCCameraConnection *)connection modeSelected:_currentMode];
}

- (void)setShowingPreview:(BOOL)preview
{
  if (self->_showingPreview != preview)
  {
    self->_showingPreview = preview;
    [(CCCameraConnection *)self->_connection showingLivePreviewDidChange];
  }
}

- (void)_reevaluateConnectionOpenState
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_connection)
  {
    v3 = os_log_create("com.apple.camera", "RemoteShutter");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      isForeground = self->_isForeground;
      isOpen = [(CCCameraConnection *)self->_connection isOpen];
      LODWORD(buf) = 67109376;
      HIDWORD(buf) = isForeground;
      v12 = 1024;
      v13 = isOpen;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "[ConnectionOpenStateEval] isForeground=%d, isOpen=%d", &buf, 0xEu);
    }

    if (self->_isForeground)
    {
      v6 = os_log_create("com.apple.camera", "RemoteShutter");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "[ConnectionOpenStateEval] Scheduling evaluation when settled into foreground state", &buf, 2u);
      }

      objc_initWeak(&buf, self);
      v7 = dispatch_time(0, 120000000);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __60__CAMRemoteShutterController__reevaluateConnectionOpenState__block_invoke;
      v9[3] = &unk_1E76F7DC0;
      objc_copyWeak(&v10, &buf);
      v9[4] = self;
      dispatch_after(v7, MEMORY[0x1E69E96A0], v9);
      objc_destroyWeak(&v10);
      objc_destroyWeak(&buf);
    }

    else if ([(CCCameraConnection *)self->_connection isOpen])
    {
      v8 = os_log_create("com.apple.camera", "RemoteShutter");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "[ConnectionOpenStateEval] Closing", &buf, 2u);
      }

      [(CCCameraConnection *)self->_connection close];
    }
  }
}

void __60__CAMRemoteShutterController__reevaluateConnectionOpenState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[14])
    {
      v4 = [WeakRetained connection];
      v5 = [v4 isOpen];

      if ((v5 & 1) == 0)
      {
        v6 = os_log_create("com.apple.camera", "RemoteShutter");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "[ConnectionOpenStateEval] Opening", v8, 2u);
        }

        [*(*(a1 + 32) + 120) open];
      }
    }

    else
    {
      v7 = os_log_create("com.apple.camera", "RemoteShutter");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "[ConnectionOpenStateEval] evaluation No longer in foreground, will not open", buf, 2u);
      }
    }
  }
}

- (void)setCaptureMode:(int64_t)mode
{
  if (self->_captureMode != mode)
  {
    self->_captureMode = mode;
    [(CAMRemoteShutterController *)self _sendMode];
  }
}

- (void)setCaptureDevice:(int64_t)device
{
  if (self->_captureDevice != device)
  {
    self->_captureDevice = device;
    connection = self->_connection;
    _currentCaptureDevice = [(CAMRemoteShutterController *)self _currentCaptureDevice];

    [(CCCameraConnection *)connection captureDeviceDidChange:_currentCaptureDevice];
  }
}

- (void)setPanoramaDirection:(int64_t)direction
{
  connection = self->_connection;
  v4 = [(CAMRemoteShutterController *)self _convertPanoramaDirection:direction];

  [(CCCameraConnection *)connection panoramaDirectionDidChange:v4];
}

- (void)setFlashMode:(int64_t)mode
{
  if (self->_flashMode != mode)
  {
    self->_flashMode = mode;
    [(CCCameraConnection *)self->_connection flashModeDidChange];
  }
}

- (void)setHdrMode:(int64_t)mode
{
  if (self->_hdrMode != mode)
  {
    self->_hdrMode = mode;
    [(CCCameraConnection *)self->_connection hdrModeDidChange];
  }
}

- (void)setIrisMode:(int64_t)mode
{
  if (self->_irisMode != mode)
  {
    self->_irisMode = mode;
    [(CCCameraConnection *)self->_connection irisModeDidChange];
  }
}

- (void)setSharedLibrarySupported:(BOOL)supported
{
  if (self->_sharedLibrarySupported != supported)
  {
    self->_sharedLibrarySupported = supported;
    [(CCCameraConnection *)self->_connection sharedLibrarySupportDidChange];
  }
}

- (void)setSharedLibraryMode:(int64_t)mode
{
  if (self->_sharedLibraryMode != mode)
  {
    self->_sharedLibraryMode = mode;
    [(CCCameraConnection *)self->_connection sharedLibraryModeDidChange];
  }
}

- (void)setZoomAmount:(double)amount
{
  if (self->_zoomAmount != amount)
  {
    self->_zoomAmount = amount;
    [(CCCameraConnection *)self->_connection zoomDidChange:?];
  }
}

- (void)setShallowDepthOfFieldStatus:(int64_t)status
{
  if (self->_shallowDepthOfFieldStatus != status)
  {
    self->_shallowDepthOfFieldStatus = status;
    if ((status - 1) >= 0xF)
    {
      status = 0;
    }

    [(CCCameraConnection *)self->_connection didUpdateShallowDepthOfFieldStatus:status];
  }
}

- (void)setStereoCaptureStatus:(int64_t)status
{
  if (self->_stereoCaptureStatus != status)
  {
    self->_stereoCaptureStatus = status;
    [(CCCameraConnection *)self->_connection didUpdateStereoCaptureStatus:status & 7];
  }
}

- (void)sendThumbnailImage:(id)image isVideo:(BOOL)video
{
  videoCopy = video;
  image = image;
  if ([(CCCameraConnection *)self->_connection isOpen])
  {
    v6 = UIImageJPEGRepresentation(image, 0.8);
    [(CAMRemoteShutterController *)self sendThumbnailData:v6 isVideo:videoCopy];
  }
}

- (void)_captureOrientationDidChange:(id)change
{
  _motionController = [(CAMRemoteShutterController *)self _motionController];
  captureOrientation = [_motionController captureOrientation];

  connection = self->_connection;

  [(CCCameraConnection *)connection switchedOrientation:captureOrientation];
}

- (void)cameraConnection:(id)connection takePhotoWithCountdown:(unint64_t)countdown
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self takePhotoWithCountdown:countdown];
}

- (void)cameraConnectionCancelCountdown:(id)countdown
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutterCancelCountdown:self];
}

- (BOOL)cameraConnectionBeginBurstCapture:(id)capture
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained remoteShutterBeginBurstCapture:selfCopy];

  return selfCopy;
}

- (BOOL)cameraConnectionEndBurstCapture:(id)capture
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained remoteShutterEndBurstCapture:selfCopy];

  return selfCopy;
}

- (id)cameraConnectionSupportedCaptureDevices:(id)devices
{
  array = [MEMORY[0x1E695DF70] array];
  v5 = +[CAMCaptureCapabilities capabilities];
  if ([v5 isSupportedMode:self->_captureMode withDevice:0])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMRemoteShutterController _convertCaptureDevice:](self, "_convertCaptureDevice:", 0)}];
    [array addObject:v6];
  }

  if ([v5 isSupportedMode:self->_captureMode withDevice:1])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMRemoteShutterController _convertCaptureDevice:](self, "_convertCaptureDevice:", 1)}];
    [array addObject:v7];
  }

  v8 = [array copy];

  return v8;
}

- (BOOL)cameraConnection:(id)connection setCaptureDevice:(int64_t)device
{
  if ([(CAMRemoteShutterController *)self isCapturingVideo]|| [(CAMRemoteShutterController *)self isCapturingTimelapse])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setCaptureDevice:device == 1];

  return 1;
}

- (id)cameraConnectionSupportedCaptureModes:(id)modes
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_availableCaptureModes, "count", modes)}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_availableCaptureModes;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMRemoteShutterController _convertMode:](self, "_convertMode:", objc_msgSend(*(*(&v13 + 1) + 8 * i), "integerValue", v13))}];
        [v4 addObject:v10];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (BOOL)cameraConnection:(id)connection setCaptureMode:(int64_t)mode
{
  if ([(CAMRemoteShutterController *)self isCapturingVideo]|| [(CAMRemoteShutterController *)self isCapturingTimelapse])
  {
    return 0;
  }

  if ((mode - 1) >= 9)
  {
    mode = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setMode:mode];

  return 1;
}

- (void)cameraConnection:(id)connection setFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self focusOn:{x, y}];
}

- (BOOL)cameraConnectionStartCapture:(id)capture
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained remoteShutterStartCapture:selfCopy];

  return selfCopy;
}

- (BOOL)cameraConnectionPauseCapture:(id)capture
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained remoteShutterPauseCapture:selfCopy];

  return selfCopy;
}

- (BOOL)cameraConnectionResumeCapture:(id)capture
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained remoteShutterResumeCapture:selfCopy];

  return selfCopy;
}

- (BOOL)cameraConnectionStopCapture:(id)capture
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained remoteShutterStopCapture:selfCopy];

  return selfCopy;
}

- (void)cameraConnectionSuspend:(id)suspend
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained remoteShutterShouldSuspendApp:self];

  mEMORY[0x1E69DC668] = os_log_create("com.apple.camera", "RemoteShutter");
  v7 = os_log_type_enabled(mEMORY[0x1E69DC668], OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, mEMORY[0x1E69DC668], OS_LOG_TYPE_DEFAULT, "Suspending camera for [CCCameraConnection cameraConnectionSuspend:]", buf, 2u);
    }

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] suspend];
  }

  else if (v7)
  {
    *v8 = 0;
    _os_log_impl(&dword_1A3640000, mEMORY[0x1E69DC668], OS_LOG_TYPE_DEFAULT, "Ignoring [CCCameraConnection cameraConnectionSuspend:]", v8, 2u);
  }
}

- (int64_t)cameraConnectionOrientation:(id)orientation
{
  _motionController = [(CAMRemoteShutterController *)self _motionController];
  captureOrientation = [_motionController captureOrientation];

  return captureOrientation;
}

- (BOOL)cameraConnectionZoomSupport:(id)support
{
  v4 = +[CAMCaptureCapabilities capabilities];
  continuousZoomSupportedForCinematicMode = 0;
  captureMode = self->_captureMode;
  if (captureMode > 3)
  {
    if (captureMode == 7)
    {
      continuousZoomSupportedForCinematicMode = [v4 continuousZoomSupportedForCinematicMode];
      goto LABEL_8;
    }

    if (captureMode == 6)
    {
      continuousZoomSupportedForCinematicMode = [v4 continuousZoomSupportedForPortraitMode];
      goto LABEL_8;
    }

    if (captureMode != 4)
    {
      goto LABEL_8;
    }

LABEL_7:
    continuousZoomSupportedForCinematicMode = 1;
    goto LABEL_8;
  }

  if (captureMode < 3)
  {
    goto LABEL_7;
  }

LABEL_8:
  v7 = self->_captureDevice - 1;
  v8 = v7 > 0xA;
  v9 = ((0x781u >> v7) ^ 1) & continuousZoomSupportedForCinematicMode;
  if (v8)
  {
    v10 = continuousZoomSupportedForCinematicMode;
  }

  else
  {
    v10 = v9;
  }

  return v10 & 1;
}

- (void)cameraConnection:(id)connection setZoomAmount:(double)amount
{
  self->_zoomAmount = amount;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setZoomAmount:amount];
}

- (void)_refreshZoomMagnificationState
{
  *&self->_currentZoomMagnificationAllowed = 0;
  p_currentContinuousZoomFactors = &self->_currentContinuousZoomFactors;
  currentContinuousZoomFactors = self->_currentContinuousZoomFactors;
  self->_currentContinuousZoomFactors = 0;

  p_currentContinuousDisplayZoomFactors = &self->_currentContinuousDisplayZoomFactors;
  currentContinuousDisplayZoomFactors = self->_currentContinuousDisplayZoomFactors;
  self->_currentContinuousDisplayZoomFactors = 0;

  mode = [(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration mode];
  device = [(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration device];
  videoConfiguration = [(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration videoConfiguration];
  v10 = +[CAMCaptureCapabilities capabilities];
  v11 = [v10 resolvedDeviceForDesiredDevice:device mode:mode videoConfiguration:videoConfiguration videoStabilizationStrength:-[CAMCaptureGraphConfiguration videoStabilizationStrength](self->_currentGraphConfiguration frontRearSimultaneousVideoEnabled:{"videoStabilizationStrength"), -[CAMCaptureGraphConfiguration frontRearSimultaneousVideoEnabled](self->_currentGraphConfiguration, "frontRearSimultaneousVideoEnabled")}];
  self->_currentResolvedDevice = v11;
  if ([v10 isZoomAllowedForMode:mode device:v11 videoConfiguration:videoConfiguration videoStabilizationStrength:{-[CAMCaptureGraphConfiguration videoStabilizationStrength](self->_currentGraphConfiguration, "videoStabilizationStrength")}])
  {
    currentResolvedDevice = self->_currentResolvedDevice;
    videoStabilizationStrength = [(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration videoStabilizationStrength];
    frontRearSimultaneousVideoEnabled = [(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration frontRearSimultaneousVideoEnabled];
    v35 = 0;
    v36 = 0;
    v15 = [CAMZoomControlUtilities shouldApplyContinuousZoomForMode:mode device:currentResolvedDevice videoConfiguration:videoConfiguration videoStabilizationStrength:videoStabilizationStrength frontRearSimultaneousVideoEnabled:frontRearSimultaneousVideoEnabled zoomFactors:&v36 displayZoomFactors:&v35];
    v16 = v36;
    v17 = v36;
    v18 = v35;
    v19 = v35;
    if (v15)
    {
      self->_currentZoomMagnificationAllowed = 1;
      v34 = v19;
      objc_storeStrong(p_currentContinuousZoomFactors, v16);
      objc_storeStrong(&self->_currentContinuousDisplayZoomFactors, v18);
      v33 = [CAMZoomControlUtilities shouldEmulateTripleCameraZoomForMode:mode device:self->_currentResolvedDevice videoConfiguration:videoConfiguration videoStabilizationStrength:[(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration videoStabilizationStrength] frontRearSimultaneousVideoEnabled:[(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration frontRearSimultaneousVideoEnabled]];
      v20 = self->_currentResolvedDevice;
      v21 = v17;
      videoStabilizationStrength2 = [(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration videoStabilizationStrength];
      frontRearSimultaneousVideoEnabled2 = [(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration frontRearSimultaneousVideoEnabled];
      v24 = videoStabilizationStrength2;
      v17 = v21;
      self->_currentlyEmulatingMulticam = (v33 | [CAMZoomControlUtilities shouldEmulateWideDualCameraZoomForMode:mode device:v20 videoConfiguration:videoConfiguration videoStabilizationStrength:v24 frontRearSimultaneousVideoEnabled:frontRearSimultaneousVideoEnabled2]) & 1;
      v25 = [v10 isCustomLensSupportedForMode:mode device:self->_currentResolvedDevice isTrueVideo:{-[CAMCaptureGraphConfiguration trueVideoEnabled](self->_currentGraphConfiguration, "trueVideoEnabled")}];
      v19 = v34;
      if (v25)
      {
        v26 = +[CAMUserPreferences preferences];
        customLensGroup = [v26 customLensGroup];
        v28 = [CAMZoomPoint zoomPointsWithFactors:v21 displayZoomFactors:v34 customLensGroup:customLensGroup];
        v29 = [CAMZoomPoint zoomFactorsFromZoomPoints:v28];
        v30 = *p_currentContinuousZoomFactors;
        *p_currentContinuousZoomFactors = v29;

        v31 = [CAMZoomPoint displayZoomFactorsFromZoomPoints:v28];
        v32 = *p_currentContinuousDisplayZoomFactors;
        *p_currentContinuousDisplayZoomFactors = v31;

        v19 = v34;
      }
    }
  }
}

- (double)_displayZoomValueForZoomFactor:(double)result
{
  if (self->_currentContinuousZoomFactors)
  {
    if (self->_currentContinuousDisplayZoomFactors)
    {
      [CAMZoomControlUtilities piecewiseLinearMappingForX:"piecewiseLinearMappingForX:fromXValues:toYValues:" fromXValues:result toYValues:?];
    }
  }

  return result;
}

- (double)_zoomFactorForDisplayZoomValue:(double)result
{
  if (self->_currentContinuousZoomFactors)
  {
    if (self->_currentContinuousDisplayZoomFactors)
    {
      [CAMZoomControlUtilities piecewiseLinearMappingForX:"piecewiseLinearMappingForX:fromXValues:toYValues:" fromXValues:result toYValues:?];
    }
  }

  return result;
}

- (BOOL)cameraConnectionZoomMagnificationSupport:(id)support
{
  [(CAMRemoteShutterController *)self _refreshZoomMagnificationState];
  v4 = +[CAMCaptureCapabilities capabilities];
  if (![v4 zoomControlSupported])
  {
    goto LABEL_13;
  }

  v5 = 0;
  captureMode = self->_captureMode;
  if (captureMode > 5)
  {
    if (captureMode == 6)
    {
      if ([v4 continuousZoomSupportedForPortraitMode])
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (captureMode != 7)
      {
        goto LABEL_15;
      }

      if ([v4 continuousZoomSupportedForCinematicMode])
      {
        goto LABEL_11;
      }
    }

LABEL_13:
    v5 = 0;
    goto LABEL_15;
  }

  if (captureMode < 2 || captureMode == 4)
  {
LABEL_11:
    v7 = self->_currentResolvedDevice - 1;
    if (v7 >= 0xB || ((0x781u >> v7) & 1) == 0)
    {
      v5 = !self->_currentlyEmulatingMulticam;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_15:

  return v5;
}

- (void)cameraConnection:(id)connection setZoomMagnificationAmount:(double)amount
{
  [(CAMRemoteShutterController *)self _zoomFactorForDisplayZoomValue:connection, amount];
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setZoomFactor:v6];
}

- (double)cameraConnectionMinimumZoomMagnification:(id)magnification
{
  currentContinuousDisplayZoomFactors = [(CAMRemoteShutterController *)self currentContinuousDisplayZoomFactors];
  firstObject = [currentContinuousDisplayZoomFactors firstObject];

  if (firstObject)
  {
    [firstObject floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (double)cameraConnectionMaximumZoomMagnification:(id)magnification
{
  currentContinuousDisplayZoomFactors = [(CAMRemoteShutterController *)self currentContinuousDisplayZoomFactors];
  lastObject = [currentContinuousDisplayZoomFactors lastObject];

  if (lastObject)
  {
    [lastObject floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (int64_t)cameraConnectionFlashSupport:(id)support
{
  captureMode = self->_captureMode;
  v4 = captureMode > 7;
  v5 = (1 << captureMode) & 0xD7;
  if (v4 || v5 == 0)
  {
    return 0;
  }

  v8 = +[CAMCaptureCapabilities capabilities];
  v9 = v8;
  v10 = self->_captureDevice - 1;
  if (v10 > 0xA)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1A3A69D08[v10];
  }

  if ([v8 isFlashOrTorchSupportedForMode:self->_captureMode devicePosition:v11])
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)cameraConnectionFlashMode:(id)mode
{
  flashMode = self->_flashMode;
  if (flashMode == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (flashMode != 0);
  }
}

- (int64_t)cameraConnectionHDRSupport:(id)support
{
  v4 = +[CAMCaptureCapabilities capabilities];
  if (([v4 isHDRSettingAllowed] & 1) == 0 && (objc_msgSend(v4, "isModernHDRSupported") & 1) != 0 || ((captureMode = self->_captureMode, v6 = captureMode > 9, v7 = (1 << captureMode) & 0x211, !v6) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    v11 = 0;
  }

  else
  {
    v9 = self->_captureDevice - 1;
    if (v9 > 0xA)
    {
      v10 = 0;
    }

    else
    {
      v10 = qword_1A3A69D08[v9];
    }

    v11 = [v4 isHDROnSupportedForDevicePosition:v10];
  }

  return v11;
}

- (int64_t)cameraConnectionIrisSupport:(id)support
{
  v4 = +[CAMCaptureCapabilities capabilities];
  v5 = v4;
  v6 = self->_captureDevice - 1;
  if (v6 > 0xA)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_1A3A69D08[v6];
  }

  if ([v4 isLivePhotoSupportedForMode:self->_captureMode devicePosition:v7])
  {
    if ([v5 isLivePhotoAutoModeSupported])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)cameraConnectionIrisMode:(id)mode
{
  irisMode = self->_irisMode;
  if (irisMode == 2)
  {
    return 2;
  }

  else
  {
    return irisMode == 1;
  }
}

- (BOOL)cameraConnectionBurstSupport:(id)support
{
  v4 = +[CAMCaptureCapabilities capabilities];
  LOBYTE(self) = [v4 isBurstSupportedForMode:-[CAMRemoteShutterController captureMode](self device:{"captureMode"), -[CAMRemoteShutterController captureDevice](self, "captureDevice")}];

  return self;
}

- (BOOL)cameraConnectionSupportsMomentCapture:(id)capture
{
  v4 = +[CAMCaptureCapabilities capabilities];
  LOBYTE(self) = [v4 isCTMVideoCaptureSupportedForMode:{-[CAMRemoteShutterController captureMode](self, "captureMode")}];

  return self;
}

- (BOOL)cameraConnectionToggleCameraDeviceSupport:(id)support
{
  captureMode = self->_captureMode;
  v4 = captureMode > 5;
  v5 = (1 << captureMode) & 0x33;
  if (v4 || v5 == 0)
  {
    return 0;
  }

  v7 = +[CAMCaptureCapabilities capabilities];
  if ([v7 isBackCameraSupported])
  {
    isFrontCameraSupported = [v7 isFrontCameraSupported];
  }

  else
  {
    isFrontCameraSupported = 0;
  }

  return isFrontCameraSupported;
}

- (void)cameraConnectionToggleCameraDevice:(id)device
{
  v4 = self->_captureDevice - 1;
  if (v4 > 0xA)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_1A3A69D60[v4];
  }

  self->_captureDevice = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setCaptureDevice:self->_captureDevice];
}

- (void)cameraConnection:(id)connection setFlashMode:(int64_t)mode
{
  v5 = mode == 1;
  if (mode == 2)
  {
    v5 = 2;
  }

  self->_flashMode = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setFlashMode:self->_flashMode];
}

- (void)cameraConnection:(id)connection setHDRMode:(int64_t)mode
{
  self->_hdrMode = (mode - 1) < 2;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setHDRMode:self->_hdrMode];
}

- (void)cameraConnection:(id)connection setIrisMode:(int64_t)mode
{
  v5 = mode == 1;
  if (mode == 2)
  {
    v5 = 2;
  }

  self->_irisMode = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setIrisMode:self->_irisMode];
}

- (void)cameraConnection:(id)connection setSharedLibraryMode:(int64_t)mode
{
  v5 = 2 * (mode == 1);
  if (!mode)
  {
    v5 = 3;
  }

  self->_sharedLibraryMode = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setSharedLibraryMode:self->_sharedLibraryMode];
}

- (CAMRemoteShutterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end