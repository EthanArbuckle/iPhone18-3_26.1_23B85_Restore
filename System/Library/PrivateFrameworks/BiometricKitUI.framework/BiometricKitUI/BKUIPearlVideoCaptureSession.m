@interface BKUIPearlVideoCaptureSession
- (BKUIPearlVideoCaptureSession)init;
- (BKUIVideoCaptureSesssionDelegate)delegate;
- (BOOL)_synchronizedCaptureSessionInterrupted;
- (id)_frontCamera;
- (void)_captureSessionInterrupted:(id)a3;
- (void)_captureSessionStarted:(id)a3;
- (void)_captureSessionStopped:(id)a3;
- (void)_setupCaptureStack;
- (void)_stopSessionAndTearDown;
- (void)dealloc;
- (void)endCapture;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)startCapture;
- (void)supportMultitaskingCameraAccess;
@end

@implementation BKUIPearlVideoCaptureSession

- (BKUIPearlVideoCaptureSession)init
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8.receiver = self;
  v8.super_class = BKUIPearlVideoCaptureSession;
  v3 = [(BKUIPearlVideoCaptureSession *)&v8 init];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v5 = dispatch_queue_create("com.apple.biometrickitui.pearlVideoCaptureSessionQueue", v4);
    captureQueue = v3->_captureQueue;
    v3->_captureQueue = v5;

    v3->_additionalPreviewScalingAllowedByCameraFormat = 1.0;
    [(BKUIPearlVideoCaptureSession *)v3 _setupCaptureStack];
  }

  return v3;
}

- (void)dealloc
{
  [(BKUIPearlVideoCaptureSession *)self _stopSessionAndTearDown];
  v3.receiver = self;
  v3.super_class = BKUIPearlVideoCaptureSession;
  [(BKUIPearlVideoCaptureSession *)&v3 dealloc];
}

- (id)_frontCamera
{
  v9[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_captureQueue);
  v2 = MEMORY[0x277CE5AD0];
  v9[0] = *MEMORY[0x277CE5878];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v4 = [v2 discoverySessionWithDeviceTypes:v3 mediaType:*MEMORY[0x277CE5EA8] position:2];

  v5 = [v4 devices];
  v6 = [v5 firstObject];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)endCapture
{
  captureQueue = self->_captureQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__BKUIPearlVideoCaptureSession_endCapture__block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(captureQueue, block);
}

- (void)startCapture
{
  captureQueue = self->_captureQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__BKUIPearlVideoCaptureSession_startCapture__block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(captureQueue, block);
}

uint64_t __44__BKUIPearlVideoCaptureSession_startCapture__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) isRunning];
  if ((result & 1) == 0)
  {
    v3 = _BKUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "+++++++++ BKUIPearl: Starting Capture Session", v4, 2u);
    }

    [*(*(a1 + 32) + 8) addObserver:*(a1 + 32) forKeyPath:@"running" options:1 context:@"PSCaptureSessionActiveContext"];
    return [*(*(a1 + 32) + 8) startRunning];
  }

  return result;
}

- (void)_stopSessionAndTearDown
{
  if (self->_captureSession)
  {
    v3 = _BKUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "--------- BKUIPearl: Stopping Capture Session", v9, 2u);
    }

    captureSession = self->_captureSession;
    v5 = self->_deviceInput;
    v6 = captureSession;
    [(AVCaptureSession *)v6 removeInput:v5];
    [(AVCaptureSession *)v6 stopRunning];
    [(AVCaptureSession *)self->_captureSession removeObserver:self forKeyPath:@"running" context:@"PSCaptureSessionActiveContext"];
    v7 = self->_captureSession;
    self->_captureSession = 0;

    deviceInput = self->_deviceInput;
    self->_deviceInput = 0;
  }
}

- (void)_setupCaptureStack
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "BKUIPearl: Setup Capture Stack", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277CE5B38]);
  captureSession = self->_captureSession;
  self->_captureSession = v4;

  [(BKUIPearlVideoCaptureSession *)self supportMultitaskingCameraAccess];
  v6 = _BKUILoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "_setupCaptureStack: PreviewLayer will be setup", buf, 2u);
  }

  v7 = [objc_alloc(MEMORY[0x277CE5B68]) initWithSession:self->_captureSession];
  previewLayer = self->_previewLayer;
  self->_previewLayer = v7;

  v9 = [(BKUIPearlVideoCaptureSession *)self previewLayer];
  [v9 setVideoGravity:*MEMORY[0x277CE5DD8]];

  v10 = [(BKUIPearlVideoCaptureSession *)self previewLayer];
  [v10 setOpacity:0.0];

  v11 = _BKUILoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v11, OS_LOG_TYPE_DEFAULT, "_setupCaptureStack: PreviewLayer did setup", buf, 2u);
  }

  captureQueue = self->_captureQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(captureQueue, block);
  v13 = _BKUILoggingFacility();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v13, OS_LOG_TYPE_DEFAULT, "BKUIPearl: Setup Capture Stack finished sync work", buf, 2u);
  }
}

void __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = _BKUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "BKUIPearl: Setup Capture Stack async work", buf, 2u);
  }

  [*(*(a1 + 32) + 8) beginConfiguration];
  v3 = *MEMORY[0x277CE5988];
  if (![*(*(a1 + 32) + 8) canSetSessionPreset:*MEMORY[0x277CE5988]])
  {
    v12 = _BKUILoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke_cold_1(v12);
    }

    v13 = *(a1 + 32);
    v4 = *(v13 + 8);
    *(v13 + 8) = 0;
    goto LABEL_68;
  }

  [*(*(a1 + 32) + 8) setSessionPreset:v3];
  v4 = [*(a1 + 32) _frontCamera];
  if (!v4)
  {
    v14 = _BKUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke_cold_4(v14);
    }

    v15 = *(a1 + 32);
    v6 = *(v15 + 8);
    *(v15 + 8) = 0;
    goto LABEL_67;
  }

  v49 = 0;
  v5 = [objc_alloc(MEMORY[0x277CE5AD8]) initWithDevice:v4 error:&v49];
  v6 = v49;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v5;

  if (v6)
  {
    v9 = _BKUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke_cold_2(v6, v9);
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    *(v10 + 8) = 0;

    goto LABEL_67;
  }

  [*(*(a1 + 32) + 8) addInput:*(*(a1 + 32) + 16)];
  v16 = [MEMORY[0x277D75418] currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (v17 != 1)
  {
    goto LABEL_66;
  }

  v18 = +[BKUIDevice sharedInstance];
  v19 = [v18 isRestrictedToLandscapeEnrollment];

  if (v19)
  {
    v20 = MGGetProductType();
    v21 = [*(a1 + 32) previewLayer];
    v22 = [v21 connection];

    if ([v22 isVideoOrientationSupported])
    {
      [v22 setVideoOrientation:3];
      v23 = _BKUILoggingFacility();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v52 = v20;
        _os_log_impl(&dword_241B0A000, v23, OS_LOG_TYPE_DEFAULT, "Capture orientation: Set to LandscapeRight for model: %ld", buf, 0xCu);
      }
    }

    else
    {
      v23 = _BKUILoggingFacility();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke_cold_3(v20, v23);
      }
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v24 = [v4 formats];
  v25 = [v24 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (!v25)
  {
LABEL_61:

    goto LABEL_63;
  }

  v43 = v4;
  v26 = *v46;
LABEL_25:
  v27 = 0;
  while (1)
  {
    if (*v46 != v26)
    {
      objc_enumerationMutation(v24);
    }

    v28 = *(*(&v45 + 1) + 8 * v27);
    v29 = [v28 formatDescription];
    if (MGGetProductType() == 2023824667 || MGGetProductType() == 3101941570 || MGGetProductType() == 1868379043 || MGGetProductType() == 1373516433 || MGGetProductType() == 746003606 || MGGetProductType() == 1834147427 || MGGetProductType() == 3054476161 || MGGetProductType() == 2628394914 || MGGetProductType() == 3228373941 || MGGetProductType() == 1625227434 || MGGetProductType() == 3361025853 || MGGetProductType() == 2089455188 || (+[BKUIDevice sharedInstance](BKUIDevice, "sharedInstance"), v42 = objc_claimAutoreleasedReturnValue(), v41 = [v42 isRestrictedToLandscapeEnrollment], v42, v41))
    {
      if (CMFormatDescriptionGetMediaType(v29) != 1986618469 || ![v28 isVideoBinned])
      {
        goto LABEL_45;
      }

      Dimensions = CMVideoFormatDescriptionGetDimensions(v29);
      v31 = 0x2D000000500;
    }

    else
    {
      if (CMFormatDescriptionGetMediaType(v29) != 1986618469 || CMFormatDescriptionGetMediaSubType(v29) != 875704438)
      {
        goto LABEL_45;
      }

      Dimensions = CMVideoFormatDescriptionGetDimensions(v29);
      v31 = 0x438000005A0;
    }

    if (Dimensions == v31)
    {
      break;
    }

LABEL_45:
    if (v25 == ++v27)
    {
      v32 = [v24 countByEnumeratingWithState:&v45 objects:v50 count:16];
      v25 = v32;
      if (!v32)
      {
        v4 = v43;
        goto LABEL_61;
      }

      goto LABEL_25;
    }
  }

  v25 = v28;

  if (v25)
  {
    v33 = _BKUILoggingFacility();
    v4 = v43;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v25;
      _os_log_impl(&dword_241B0A000, v33, OS_LOG_TYPE_DEFAULT, "will switch active camera format to %@", buf, 0xCu);
    }

    v44 = 0;
    v34 = [v43 lockForConfiguration:&v44];
    v24 = v44;
    if (v34)
    {
      [v43 setActiveFormat:v25];
      [v43 unlockForConfiguration];
      *(*(a1 + 32) + 64) = 0x3FF5555555555555;
    }

    if (v24)
    {
      v35 = _BKUILoggingFacility();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v24;
        _os_log_impl(&dword_241B0A000, v35, OS_LOG_TYPE_DEFAULT, "lockForConfiguration error %@", buf, 0xCu);
      }
    }

    goto LABEL_61;
  }

  v4 = v43;
LABEL_63:
  v36 = _BKUILoggingFacility();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v4 activeFormat];
    *buf = 138412290;
    v52 = v37;
    _os_log_impl(&dword_241B0A000, v36, OS_LOG_TYPE_DEFAULT, "active camera format %@", buf, 0xCu);
  }

LABEL_66:
  [*(*(a1 + 32) + 8) commitConfiguration];
  v38 = [MEMORY[0x277CCAB98] defaultCenter];
  [v38 addObserver:*(a1 + 32) selector:sel__captureSessionStarted_ name:*MEMORY[0x277CE5930] object:0];

  v39 = [MEMORY[0x277CCAB98] defaultCenter];
  [v39 addObserver:*(a1 + 32) selector:sel__captureSessionStopped_ name:*MEMORY[0x277CE5938] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:sel__captureSessionInterrupted_ name:*MEMORY[0x277CE59C8] object:0];
LABEL_67:

LABEL_68:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)supportMultitaskingCameraAccess
{
  if ([(AVCaptureSession *)self->_captureSession isMultitaskingCameraAccessSupported])
  {
    [(AVCaptureSession *)self->_captureSession setMultitaskingCameraAccessEnabled:1];
    v3 = _BKUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v4 = "_setupCaptureStack: Supporting Multitasking Camera Access";
      v5 = &v7;
LABEL_6:
      _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    }
  }

  else
  {
    v3 = _BKUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 0;
      v4 = "_setupCaptureStack: Not supporting Multitasking Camera Access";
      v5 = &v6;
      goto LABEL_6;
    }
  }
}

- (void)_captureSessionStarted:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = _BKUILoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "Capture session started", v7, 2u);
  }

  v5->_captureSessionInterrupted = 0;
  objc_sync_exit(v5);
}

- (void)_captureSessionStopped:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = _BKUILoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "Capture session stopped", v7, 2u);
  }

  v5->_captureSessionInterrupted = 0;
  objc_sync_exit(v5);
}

- (void)_captureSessionInterrupted:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = _BKUILoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "Capture session interrupted", v7, 2u);
  }

  v5->_captureSessionInterrupted = 1;
  objc_sync_exit(v5);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"PSCaptureSessionActiveContext")
  {
    if ([a3 isEqualToString:{@"running", a4, a5}])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v8 = WeakRetained;
      if (WeakRetained)
      {
        if ([WeakRetained expectsRunningVideoCaptureSession:self])
        {
          if (![(AVCaptureSession *)self->_captureSession isRunning]&& ![(BKUIPearlVideoCaptureSession *)self _synchronizedCaptureSessionInterrupted])
          {
            captureSessionRestarts = self->_captureSessionRestarts;
            if (captureSessionRestarts <= 4)
            {
              self->_captureSessionRestarts = captureSessionRestarts + 1;
              v10 = _BKUILoggingFacility();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_241B0A000, v10, OS_LOG_TYPE_DEFAULT, "Capture session suddenly stopped running. mediaserverd crash?", buf, 2u);
              }

              captureQueue = self->_captureQueue;
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __79__BKUIPearlVideoCaptureSession_observeValueForKeyPath_ofObject_change_context___block_invoke;
              block[3] = &unk_278D09978;
              block[4] = self;
              dispatch_async(captureQueue, block);
            }
          }
        }
      }
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = BKUIPearlVideoCaptureSession;
    [(BKUIPearlVideoCaptureSession *)&v12 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (BOOL)_synchronizedCaptureSessionInterrupted
{
  v2 = self;
  objc_sync_enter(v2);
  captureSessionInterrupted = v2->_captureSessionInterrupted;
  objc_sync_exit(v2);

  return captureSessionInterrupted;
}

- (BKUIVideoCaptureSesssionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_241B0A000, a2, OS_LOG_TYPE_FAULT, "BKUIPearl: Failed to get input device, %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __50__BKUIPearlVideoCaptureSession__setupCaptureStack__block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "Capture orientation: Failed to set to LandscapeRight for model: %ld - video orientation unsupported", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end