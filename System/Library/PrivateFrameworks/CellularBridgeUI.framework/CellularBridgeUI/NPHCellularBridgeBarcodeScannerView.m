@interface NPHCellularBridgeBarcodeScannerView
- (NPHCellularBridgeBarcodeScannerView)initWithDelegate:(id)a3;
- (void)_changeCameraConfiguration;
- (void)autoExposeAtPoint:(CGPoint)a3;
- (void)autoFocusAtPoint:(CGPoint)a3;
- (void)dealloc;
- (void)handleRuntimeError:(id)a3;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setupCameraSession;
- (void)startRunning;
- (void)stopRunning;
@end

@implementation NPHCellularBridgeBarcodeScannerView

- (NPHCellularBridgeBarcodeScannerView)initWithDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = NPHCellularBridgeBarcodeScannerView;
  result = [(NPHCellularBridgeBarcodeScannerView *)&v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (result)
  {
    result->_delegate = a3;
  }

  return result;
}

- (void)dealloc
{
  if (self->_canUseCamera)
  {
    [(AVCaptureSession *)self->_captureSession removeObserver:self forKeyPath:@"running" context:@"NPHCaptureSessionRunningContext"];
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  metadataQueue = self->_metadataQueue;
  self->_metadataQueue = 0;

  v5.receiver = self;
  v5.super_class = NPHCellularBridgeBarcodeScannerView;
  [(NPHCellularBridgeBarcodeScannerView *)&v5 dealloc];
}

- (void)handleRuntimeError:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 userInfo];
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "########### Capture failed because of runtime error (%@)", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NPHCellularBridgeBarcodeScannerView_handleRuntimeError___block_invoke;
  block[3] = &unk_278DAC7B0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __58__NPHCellularBridgeBarcodeScannerView_handleRuntimeError___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__NPHCellularBridgeBarcodeScannerView_handleRuntimeError___block_invoke_2;
  v3[3] = &unk_278DAC7B0;
  v4 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__NPHCellularBridgeBarcodeScannerView_handleRuntimeError___block_invoke_3;
  v2[3] = &unk_278DAC7D8;
  v2[4] = v4;
  return [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v2 completion:0.25];
}

void __58__NPHCellularBridgeBarcodeScannerView_handleRuntimeError___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 408);
  *(v2 + 408) = 0;

  [*(*(a1 + 32) + 432) removeFromSuperlayer];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"NPHCameraHitRuntimeError" object:0];
}

- (void)setupCameraSession
{
  captureSession = self->_captureSession;
  if (!captureSession)
  {
    v4 = objc_alloc_init(MEMORY[0x277CE5B38]);
    v5 = self->_captureSession;
    self->_captureSession = v4;

    captureSession = self->_captureSession;
  }

  [(AVCaptureSession *)captureSession beginConfiguration];
  v6 = *MEMORY[0x277CE5988];
  if ([(AVCaptureSession *)self->_captureSession canSetSessionPreset:*MEMORY[0x277CE5988]])
  {
    [(AVCaptureSession *)self->_captureSession setSessionPreset:v6];
    v7 = [MEMORY[0x277CE5AC8] defaultDeviceWithMediaType:*MEMORY[0x277CE5EA8]];
    v8 = v7;
    if (v7)
    {
      if ([v7 position] != 2)
      {
        v20 = 0;
        v12 = [objc_alloc(MEMORY[0x277CE5AD8]) initWithDevice:v8 error:&v20];
        v9 = v20;
        deviceInput = self->_deviceInput;
        self->_deviceInput = v12;

        if (v9)
        {
          v14 = nph_general_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_243333000, v14, OS_LOG_TYPE_DEFAULT, "failed to get input device", buf, 2u);
          }
        }

        else
        {
          [(AVCaptureSession *)self->_captureSession addInput:self->_deviceInput];
          v15 = dispatch_queue_create("com.apple.CellularBridgeUI.captureSession", 0);
          metadataQueue = self->_metadataQueue;
          self->_metadataQueue = v15;

          v9 = objc_alloc_init(MEMORY[0x277CE5B00]);
          [(AVCaptureSession *)self->_captureSession addOutput:v9];
          [v9 setMetadataObjectTypes:&unk_285615148];
          [v9 setMetadataObjectsDelegate:self->_delegate queue:self->_metadataQueue];
          v17 = [objc_alloc(MEMORY[0x277CE5B68]) initWithSession:self->_captureSession];
          previewLayer = self->_previewLayer;
          self->_previewLayer = v17;

          [(AVCaptureVideoPreviewLayer *)self->_previewLayer setVideoGravity:*MEMORY[0x277CE5DD8]];
          v19 = [(NPHCellularBridgeBarcodeScannerView *)self layer];
          [v19 insertSublayer:self->_previewLayer atIndex:0];

          [(AVCaptureSession *)self->_captureSession commitConfiguration];
          [(AVCaptureSession *)self->_captureSession addObserver:self forKeyPath:@"running" options:1 context:@"NPHCaptureSessionRunningContext"];
          self->_canUseCamera = 1;
        }

        goto LABEL_19;
      }

      v9 = nph_general_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "could only get front camera";
LABEL_13:
        _os_log_impl(&dword_243333000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
      }
    }

    else
    {
      v9 = nph_general_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "failed to get camera";
        goto LABEL_13;
      }
    }

LABEL_19:

    return;
  }

  v11 = nph_general_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_DEFAULT, "failed to set session preset", buf, 2u);
  }

  [(AVCaptureSession *)self->_captureSession commitConfiguration];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NPHCellularBridgeBarcodeScannerView;
  [(NPHCellularBridgeBarcodeScannerView *)&v4 layoutSubviews];
  v3 = [(AVCaptureVideoPreviewLayer *)self->_previewLayer superlayer];
  [v3 bounds];
  [(AVCaptureVideoPreviewLayer *)self->_previewLayer setFrame:?];
}

- (void)startRunning
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_handleRuntimeError_ name:*MEMORY[0x277CE59C0] object:0];

  if (self->_canUseCamera)
  {
    [(NPHCellularBridgeBarcodeScannerView *)self _changeCameraConfiguration];
    captureSession = self->_captureSession;

    [(AVCaptureSession *)captureSession startRunning];
  }
}

- (void)stopRunning
{
  if (self->_canUseCamera)
  {
    [(AVCaptureSession *)self->_captureSession stopRunning];
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CE59C0] object:0];
}

- (void)autoFocusAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AVCaptureDeviceInput *)self->_deviceInput device];
  if ([v6 isFocusPointOfInterestSupported] && objc_msgSend(v6, "isFocusModeSupported:", 1))
  {
    [(AVCaptureVideoPreviewLayer *)self->_previewLayer captureDevicePointOfInterestForPoint:x, y];
    v8 = v7;
    v10 = v9;
    v13 = 0;
    if ([v6 lockForConfiguration:&v13])
    {
      [v6 setFocusPointOfInterest:{v8, v10}];
      [v6 setFocusMode:1];
      [v6 unlockForConfiguration];
    }

    else
    {
      v11 = nph_general_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_DEFAULT, "failed to focus at point", v12, 2u);
      }
    }
  }
}

- (void)autoExposeAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AVCaptureDeviceInput *)self->_deviceInput device];
  if ([v6 isFocusPointOfInterestSupported] && objc_msgSend(v6, "isExposureModeSupported:", 2))
  {
    [(AVCaptureVideoPreviewLayer *)self->_previewLayer captureDevicePointOfInterestForPoint:x, y];
    v8 = v7;
    v10 = v9;
    v13 = 0;
    if ([v6 lockForConfiguration:&v13])
    {
      [v6 setExposurePointOfInterest:{v8, v10}];
      [v6 setExposureMode:2];
      [v6 unlockForConfiguration];
    }

    else
    {
      v11 = nph_general_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_DEFAULT, "failed to expose at point", v12, 2u);
      }
    }
  }
}

- (void)_changeCameraConfiguration
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v3 = [(AVCaptureDeviceInput *)self->_deviceInput device];
  v5 = 0;
  [v3 lockForConfiguration:&v5];
  v4 = v5;
  if ([v3 isFocusModeSupported:2])
  {
    [v3 setFocusPointOfInterest:{0.5, 0.5}];
    [v3 setFocusMode:2];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 isAutoFocusRangeRestrictionSupported])
  {
    [v3 setAutoFocusRangeRestriction:1];
  }

  if ([v3 isWhiteBalanceModeSupported:2])
  {
    [v3 setWhiteBalanceMode:2];
  }

  if ([v3 isExposureModeSupported:2])
  {
    [v3 setExposurePointOfInterest:{0.5, 0.5}];
    [v3 setExposureMode:2];
  }

  [v3 unlockForConfiguration];
  [MEMORY[0x277CD9FF0] commit];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (a6 == @"NPHCaptureSessionRunningContext")
  {
    if ([a3 isEqual:@"running"])
    {
      delegate = self->_delegate;
      if (objc_opt_respondsToSelector())
      {
        v12 = self->_delegate;
        v13 = [v10 objectForKey:*MEMORY[0x277CCA2F0]];
        -[NPHCellularBridgeBarcodeScannerCaptureDelegate captureSession:isRunning:](v12, "captureSession:isRunning:", self, [v13 BOOLValue]);
      }
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = NPHCellularBridgeBarcodeScannerView;
    [(NPHCellularBridgeBarcodeScannerView *)&v14 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
  }
}

@end