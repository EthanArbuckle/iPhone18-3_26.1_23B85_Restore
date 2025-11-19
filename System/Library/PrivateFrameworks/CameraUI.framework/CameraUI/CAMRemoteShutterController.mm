@interface CAMRemoteShutterController
- (BOOL)cameraConnection:(id)a3 setCaptureDevice:(int64_t)a4;
- (BOOL)cameraConnection:(id)a3 setCaptureMode:(int64_t)a4;
- (BOOL)cameraConnectionBeginBurstCapture:(id)a3;
- (BOOL)cameraConnectionBurstSupport:(id)a3;
- (BOOL)cameraConnectionEndBurstCapture:(id)a3;
- (BOOL)cameraConnectionPauseCapture:(id)a3;
- (BOOL)cameraConnectionResumeCapture:(id)a3;
- (BOOL)cameraConnectionStartCapture:(id)a3;
- (BOOL)cameraConnectionStopCapture:(id)a3;
- (BOOL)cameraConnectionSupportsMomentCapture:(id)a3;
- (BOOL)cameraConnectionToggleCameraDeviceSupport:(id)a3;
- (BOOL)cameraConnectionZoomMagnificationSupport:(id)a3;
- (BOOL)cameraConnectionZoomSupport:(id)a3;
- (CAMRemoteShutterController)initWithCaptureConfiguration:(id)a3 motionController:(id)a4;
- (CAMRemoteShutterDelegate)delegate;
- (double)_displayZoomValueForZoomFactor:(double)result;
- (double)_zoomFactorForDisplayZoomValue:(double)result;
- (double)cameraConnectionMaximumZoomMagnification:(id)a3;
- (double)cameraConnectionMinimumZoomMagnification:(id)a3;
- (id)cameraConnectionSupportedCaptureDevices:(id)a3;
- (id)cameraConnectionSupportedCaptureModes:(id)a3;
- (int64_t)_convertCaptureDevice:(int64_t)a3;
- (int64_t)_convertMode:(int64_t)a3;
- (int64_t)_convertPanoramaDirection:(int64_t)a3;
- (int64_t)cameraConnectionFlashMode:(id)a3;
- (int64_t)cameraConnectionFlashSupport:(id)a3;
- (int64_t)cameraConnectionHDRSupport:(id)a3;
- (int64_t)cameraConnectionIrisMode:(id)a3;
- (int64_t)cameraConnectionIrisSupport:(id)a3;
- (int64_t)cameraConnectionOrientation:(id)a3;
- (void)_captureOrientationDidChange:(id)a3;
- (void)_reevaluateConnectionOpenState;
- (void)_refreshZoomMagnificationState;
- (void)_sendMode;
- (void)applyCaptureConfiguration:(id)a3;
- (void)cameraConnection:(id)a3 setFlashMode:(int64_t)a4;
- (void)cameraConnection:(id)a3 setFocusPoint:(CGPoint)a4;
- (void)cameraConnection:(id)a3 setHDRMode:(int64_t)a4;
- (void)cameraConnection:(id)a3 setIrisMode:(int64_t)a4;
- (void)cameraConnection:(id)a3 setSharedLibraryMode:(int64_t)a4;
- (void)cameraConnection:(id)a3 setZoomAmount:(double)a4;
- (void)cameraConnection:(id)a3 setZoomMagnificationAmount:(double)a4;
- (void)cameraConnection:(id)a3 takePhotoWithCountdown:(unint64_t)a4;
- (void)cameraConnectionCancelCountdown:(id)a3;
- (void)cameraConnectionSuspend:(id)a3;
- (void)cameraConnectionToggleCameraDevice:(id)a3;
- (void)createConnectionIfNecessary;
- (void)dealloc;
- (void)sendThumbnailImage:(id)a3 isVideo:(BOOL)a4;
- (void)setCaptureDevice:(int64_t)a3;
- (void)setCaptureMode:(int64_t)a3;
- (void)setFlashMode:(int64_t)a3;
- (void)setHdrMode:(int64_t)a3;
- (void)setIrisMode:(int64_t)a3;
- (void)setPanoramaDirection:(int64_t)a3;
- (void)setShallowDepthOfFieldStatus:(int64_t)a3;
- (void)setSharedLibraryMode:(int64_t)a3;
- (void)setSharedLibrarySupported:(BOOL)a3;
- (void)setShowingPreview:(BOOL)a3;
- (void)setStereoCaptureStatus:(int64_t)a3;
- (void)setZoomAmount:(double)a3;
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

- (CAMRemoteShutterController)initWithCaptureConfiguration:(id)a3 motionController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CAMRemoteShutterController;
  v8 = [(CAMRemoteShutterController *)&v13 init];
  if (v8)
  {
    v8->_captureMode = [v6 mode];
    v8->_captureDevice = [v6 device];
    v8->_flashMode = [v6 flashMode];
    v8->_hdrMode = [v6 HDRMode];
    v8->_irisMode = [v6 irisMode];
    v8->_sharedLibraryMode = [v6 sharedLibraryMode];
    v8->_showingPreview = 1;
    v8->_isForeground = [*MEMORY[0x1E69DDA98] applicationState] != 2;
    objc_storeStrong(&v8->__motionController, a4);
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v8 selector:sel__enterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v8 selector:sel__enterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v8 selector:sel__captureOrientationDidChange_ name:@"CAMMotionControllerCaptureOrientationChangedNotification" object:0];

    v8->_stereoCaptureStatus = 1;
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(CCCameraConnection *)self->_connection close];
  v4.receiver = self;
  v4.super_class = CAMRemoteShutterController;
  [(CAMRemoteShutterController *)&v4 dealloc];
}

- (void)applyCaptureConfiguration:(id)a3
{
  v4 = a3;
  -[CAMRemoteShutterController setCaptureMode:](self, "setCaptureMode:", [v4 mode]);
  -[CAMRemoteShutterController setCaptureDevice:](self, "setCaptureDevice:", [v4 device]);
  -[CAMRemoteShutterController setFlashMode:](self, "setFlashMode:", [v4 flashMode]);
  -[CAMRemoteShutterController setHdrMode:](self, "setHdrMode:", [v4 HDRMode]);
  -[CAMRemoteShutterController setIrisMode:](self, "setIrisMode:", [v4 irisMode]);
  v5 = [v4 sharedLibraryMode];

  [(CAMRemoteShutterController *)self setSharedLibraryMode:v5];
}

- (int64_t)_convertCaptureDevice:(int64_t)a3
{
  if ((a3 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1A3A69D08[a3 - 1];
  }
}

- (int64_t)_convertMode:(int64_t)a3
{
  if ((a3 - 1) >= 9)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (int64_t)_convertPanoramaDirection:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (void)_sendMode
{
  connection = self->_connection;
  v3 = [(CAMRemoteShutterController *)self _currentMode];

  [(CCCameraConnection *)connection modeSelected:v3];
}

- (void)setShowingPreview:(BOOL)a3
{
  if (self->_showingPreview != a3)
  {
    self->_showingPreview = a3;
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
      v5 = [(CCCameraConnection *)self->_connection isOpen];
      LODWORD(buf) = 67109376;
      HIDWORD(buf) = isForeground;
      v12 = 1024;
      v13 = v5;
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

- (void)setCaptureMode:(int64_t)a3
{
  if (self->_captureMode != a3)
  {
    self->_captureMode = a3;
    [(CAMRemoteShutterController *)self _sendMode];
  }
}

- (void)setCaptureDevice:(int64_t)a3
{
  if (self->_captureDevice != a3)
  {
    self->_captureDevice = a3;
    connection = self->_connection;
    v5 = [(CAMRemoteShutterController *)self _currentCaptureDevice];

    [(CCCameraConnection *)connection captureDeviceDidChange:v5];
  }
}

- (void)setPanoramaDirection:(int64_t)a3
{
  connection = self->_connection;
  v4 = [(CAMRemoteShutterController *)self _convertPanoramaDirection:a3];

  [(CCCameraConnection *)connection panoramaDirectionDidChange:v4];
}

- (void)setFlashMode:(int64_t)a3
{
  if (self->_flashMode != a3)
  {
    self->_flashMode = a3;
    [(CCCameraConnection *)self->_connection flashModeDidChange];
  }
}

- (void)setHdrMode:(int64_t)a3
{
  if (self->_hdrMode != a3)
  {
    self->_hdrMode = a3;
    [(CCCameraConnection *)self->_connection hdrModeDidChange];
  }
}

- (void)setIrisMode:(int64_t)a3
{
  if (self->_irisMode != a3)
  {
    self->_irisMode = a3;
    [(CCCameraConnection *)self->_connection irisModeDidChange];
  }
}

- (void)setSharedLibrarySupported:(BOOL)a3
{
  if (self->_sharedLibrarySupported != a3)
  {
    self->_sharedLibrarySupported = a3;
    [(CCCameraConnection *)self->_connection sharedLibrarySupportDidChange];
  }
}

- (void)setSharedLibraryMode:(int64_t)a3
{
  if (self->_sharedLibraryMode != a3)
  {
    self->_sharedLibraryMode = a3;
    [(CCCameraConnection *)self->_connection sharedLibraryModeDidChange];
  }
}

- (void)setZoomAmount:(double)a3
{
  if (self->_zoomAmount != a3)
  {
    self->_zoomAmount = a3;
    [(CCCameraConnection *)self->_connection zoomDidChange:?];
  }
}

- (void)setShallowDepthOfFieldStatus:(int64_t)a3
{
  if (self->_shallowDepthOfFieldStatus != a3)
  {
    self->_shallowDepthOfFieldStatus = a3;
    if ((a3 - 1) >= 0xF)
    {
      a3 = 0;
    }

    [(CCCameraConnection *)self->_connection didUpdateShallowDepthOfFieldStatus:a3];
  }
}

- (void)setStereoCaptureStatus:(int64_t)a3
{
  if (self->_stereoCaptureStatus != a3)
  {
    self->_stereoCaptureStatus = a3;
    [(CCCameraConnection *)self->_connection didUpdateStereoCaptureStatus:a3 & 7];
  }
}

- (void)sendThumbnailImage:(id)a3 isVideo:(BOOL)a4
{
  v4 = a4;
  image = a3;
  if ([(CCCameraConnection *)self->_connection isOpen])
  {
    v6 = UIImageJPEGRepresentation(image, 0.8);
    [(CAMRemoteShutterController *)self sendThumbnailData:v6 isVideo:v4];
  }
}

- (void)_captureOrientationDidChange:(id)a3
{
  v4 = [(CAMRemoteShutterController *)self _motionController];
  v5 = [v4 captureOrientation];

  connection = self->_connection;

  [(CCCameraConnection *)connection switchedOrientation:v5];
}

- (void)cameraConnection:(id)a3 takePhotoWithCountdown:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self takePhotoWithCountdown:a4];
}

- (void)cameraConnectionCancelCountdown:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutterCancelCountdown:self];
}

- (BOOL)cameraConnectionBeginBurstCapture:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v3) = [WeakRetained remoteShutterBeginBurstCapture:v3];

  return v3;
}

- (BOOL)cameraConnectionEndBurstCapture:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v3) = [WeakRetained remoteShutterEndBurstCapture:v3];

  return v3;
}

- (id)cameraConnectionSupportedCaptureDevices:(id)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = +[CAMCaptureCapabilities capabilities];
  if ([v5 isSupportedMode:self->_captureMode withDevice:0])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMRemoteShutterController _convertCaptureDevice:](self, "_convertCaptureDevice:", 0)}];
    [v4 addObject:v6];
  }

  if ([v5 isSupportedMode:self->_captureMode withDevice:1])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMRemoteShutterController _convertCaptureDevice:](self, "_convertCaptureDevice:", 1)}];
    [v4 addObject:v7];
  }

  v8 = [v4 copy];

  return v8;
}

- (BOOL)cameraConnection:(id)a3 setCaptureDevice:(int64_t)a4
{
  if ([(CAMRemoteShutterController *)self isCapturingVideo]|| [(CAMRemoteShutterController *)self isCapturingTimelapse])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setCaptureDevice:a4 == 1];

  return 1;
}

- (id)cameraConnectionSupportedCaptureModes:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_availableCaptureModes, "count", a3)}];
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

- (BOOL)cameraConnection:(id)a3 setCaptureMode:(int64_t)a4
{
  if ([(CAMRemoteShutterController *)self isCapturingVideo]|| [(CAMRemoteShutterController *)self isCapturingTimelapse])
  {
    return 0;
  }

  if ((a4 - 1) >= 9)
  {
    a4 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setMode:a4];

  return 1;
}

- (void)cameraConnection:(id)a3 setFocusPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self focusOn:{x, y}];
}

- (BOOL)cameraConnectionStartCapture:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v3) = [WeakRetained remoteShutterStartCapture:v3];

  return v3;
}

- (BOOL)cameraConnectionPauseCapture:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v3) = [WeakRetained remoteShutterPauseCapture:v3];

  return v3;
}

- (BOOL)cameraConnectionResumeCapture:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v3) = [WeakRetained remoteShutterResumeCapture:v3];

  return v3;
}

- (BOOL)cameraConnectionStopCapture:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v3) = [WeakRetained remoteShutterStopCapture:v3];

  return v3;
}

- (void)cameraConnectionSuspend:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained remoteShutterShouldSuspendApp:self];

  v6 = os_log_create("com.apple.camera", "RemoteShutter");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Suspending camera for [CCCameraConnection cameraConnectionSuspend:]", buf, 2u);
    }

    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    [v6 suspend];
  }

  else if (v7)
  {
    *v8 = 0;
    _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring [CCCameraConnection cameraConnectionSuspend:]", v8, 2u);
  }
}

- (int64_t)cameraConnectionOrientation:(id)a3
{
  v3 = [(CAMRemoteShutterController *)self _motionController];
  v4 = [v3 captureOrientation];

  return v4;
}

- (BOOL)cameraConnectionZoomSupport:(id)a3
{
  v4 = +[CAMCaptureCapabilities capabilities];
  v5 = 0;
  captureMode = self->_captureMode;
  if (captureMode > 3)
  {
    if (captureMode == 7)
    {
      v5 = [v4 continuousZoomSupportedForCinematicMode];
      goto LABEL_8;
    }

    if (captureMode == 6)
    {
      v5 = [v4 continuousZoomSupportedForPortraitMode];
      goto LABEL_8;
    }

    if (captureMode != 4)
    {
      goto LABEL_8;
    }

LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  if (captureMode < 3)
  {
    goto LABEL_7;
  }

LABEL_8:
  v7 = self->_captureDevice - 1;
  v8 = v7 > 0xA;
  v9 = ((0x781u >> v7) ^ 1) & v5;
  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  return v10 & 1;
}

- (void)cameraConnection:(id)a3 setZoomAmount:(double)a4
{
  self->_zoomAmount = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setZoomAmount:a4];
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

  v7 = [(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration mode];
  v8 = [(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration device];
  v9 = [(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration videoConfiguration];
  v10 = +[CAMCaptureCapabilities capabilities];
  v11 = [v10 resolvedDeviceForDesiredDevice:v8 mode:v7 videoConfiguration:v9 videoStabilizationStrength:-[CAMCaptureGraphConfiguration videoStabilizationStrength](self->_currentGraphConfiguration frontRearSimultaneousVideoEnabled:{"videoStabilizationStrength"), -[CAMCaptureGraphConfiguration frontRearSimultaneousVideoEnabled](self->_currentGraphConfiguration, "frontRearSimultaneousVideoEnabled")}];
  self->_currentResolvedDevice = v11;
  if ([v10 isZoomAllowedForMode:v7 device:v11 videoConfiguration:v9 videoStabilizationStrength:{-[CAMCaptureGraphConfiguration videoStabilizationStrength](self->_currentGraphConfiguration, "videoStabilizationStrength")}])
  {
    currentResolvedDevice = self->_currentResolvedDevice;
    v13 = [(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration videoStabilizationStrength];
    v14 = [(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration frontRearSimultaneousVideoEnabled];
    v35 = 0;
    v36 = 0;
    v15 = [CAMZoomControlUtilities shouldApplyContinuousZoomForMode:v7 device:currentResolvedDevice videoConfiguration:v9 videoStabilizationStrength:v13 frontRearSimultaneousVideoEnabled:v14 zoomFactors:&v36 displayZoomFactors:&v35];
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
      v33 = [CAMZoomControlUtilities shouldEmulateTripleCameraZoomForMode:v7 device:self->_currentResolvedDevice videoConfiguration:v9 videoStabilizationStrength:[(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration videoStabilizationStrength] frontRearSimultaneousVideoEnabled:[(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration frontRearSimultaneousVideoEnabled]];
      v20 = self->_currentResolvedDevice;
      v21 = v17;
      v22 = [(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration videoStabilizationStrength];
      v23 = [(CAMCaptureGraphConfiguration *)self->_currentGraphConfiguration frontRearSimultaneousVideoEnabled];
      v24 = v22;
      v17 = v21;
      self->_currentlyEmulatingMulticam = (v33 | [CAMZoomControlUtilities shouldEmulateWideDualCameraZoomForMode:v7 device:v20 videoConfiguration:v9 videoStabilizationStrength:v24 frontRearSimultaneousVideoEnabled:v23]) & 1;
      v25 = [v10 isCustomLensSupportedForMode:v7 device:self->_currentResolvedDevice isTrueVideo:{-[CAMCaptureGraphConfiguration trueVideoEnabled](self->_currentGraphConfiguration, "trueVideoEnabled")}];
      v19 = v34;
      if (v25)
      {
        v26 = +[CAMUserPreferences preferences];
        v27 = [v26 customLensGroup];
        v28 = [CAMZoomPoint zoomPointsWithFactors:v21 displayZoomFactors:v34 customLensGroup:v27];
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

- (BOOL)cameraConnectionZoomMagnificationSupport:(id)a3
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

- (void)cameraConnection:(id)a3 setZoomMagnificationAmount:(double)a4
{
  [(CAMRemoteShutterController *)self _zoomFactorForDisplayZoomValue:a3, a4];
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setZoomFactor:v6];
}

- (double)cameraConnectionMinimumZoomMagnification:(id)a3
{
  v3 = [(CAMRemoteShutterController *)self currentContinuousDisplayZoomFactors];
  v4 = [v3 firstObject];

  if (v4)
  {
    [v4 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (double)cameraConnectionMaximumZoomMagnification:(id)a3
{
  v3 = [(CAMRemoteShutterController *)self currentContinuousDisplayZoomFactors];
  v4 = [v3 lastObject];

  if (v4)
  {
    [v4 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (int64_t)cameraConnectionFlashSupport:(id)a3
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

- (int64_t)cameraConnectionFlashMode:(id)a3
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

- (int64_t)cameraConnectionHDRSupport:(id)a3
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

- (int64_t)cameraConnectionIrisSupport:(id)a3
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

- (int64_t)cameraConnectionIrisMode:(id)a3
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

- (BOOL)cameraConnectionBurstSupport:(id)a3
{
  v4 = +[CAMCaptureCapabilities capabilities];
  LOBYTE(self) = [v4 isBurstSupportedForMode:-[CAMRemoteShutterController captureMode](self device:{"captureMode"), -[CAMRemoteShutterController captureDevice](self, "captureDevice")}];

  return self;
}

- (BOOL)cameraConnectionSupportsMomentCapture:(id)a3
{
  v4 = +[CAMCaptureCapabilities capabilities];
  LOBYTE(self) = [v4 isCTMVideoCaptureSupportedForMode:{-[CAMRemoteShutterController captureMode](self, "captureMode")}];

  return self;
}

- (BOOL)cameraConnectionToggleCameraDeviceSupport:(id)a3
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
    v8 = [v7 isFrontCameraSupported];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)cameraConnectionToggleCameraDevice:(id)a3
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

- (void)cameraConnection:(id)a3 setFlashMode:(int64_t)a4
{
  v5 = a4 == 1;
  if (a4 == 2)
  {
    v5 = 2;
  }

  self->_flashMode = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setFlashMode:self->_flashMode];
}

- (void)cameraConnection:(id)a3 setHDRMode:(int64_t)a4
{
  self->_hdrMode = (a4 - 1) < 2;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setHDRMode:self->_hdrMode];
}

- (void)cameraConnection:(id)a3 setIrisMode:(int64_t)a4
{
  v5 = a4 == 1;
  if (a4 == 2)
  {
    v5 = 2;
  }

  self->_irisMode = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteShutter:self setIrisMode:self->_irisMode];
}

- (void)cameraConnection:(id)a3 setSharedLibraryMode:(int64_t)a4
{
  v5 = 2 * (a4 == 1);
  if (!a4)
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