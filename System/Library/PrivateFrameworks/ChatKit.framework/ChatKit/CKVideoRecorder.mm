@interface CKVideoRecorder
- (BOOL)startVideoCapture;
- (CKVideoRecorder)init;
- (CKVideoRecorderDelegate)delegate;
- (id)_cameraWithPosition:(int64_t)a3;
- (id)_configureFrontVideoInput;
- (id)_configureRearVideoInput;
- (id)audioDevice;
- (id)frontFacingCamera;
- (id)rearFacingCamera;
- (void)cancel;
- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6;
- (void)dealloc;
- (void)loadView;
- (void)setCameraDevice:(int64_t)a3;
- (void)setupCamera:(id)a3;
- (void)startVideoCapture;
- (void)stopVideoCapture;
- (void)takePicture;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CKVideoRecorder

- (CKVideoRecorder)init
{
  v18.receiver = self;
  v18.super_class = CKVideoRecorder;
  v2 = [(CKVideoRecorder *)&v18 init];
  v3 = v2;
  if (v2)
  {
    [(CKVideoRecorder *)v2 setCanceled:0];
    v4 = dispatch_queue_create("CKVideoMessageSessionQueue", 0);
    avCaptureSessionDispatchQueue = v3->_avCaptureSessionDispatchQueue;
    v3->_avCaptureSessionDispatchQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E6987110]);
    [(CKVideoRecorder *)v3 setSession:v6];
    v7 = [objc_alloc(MEMORY[0x1E6987180]) initWithSession:v6];
    [v7 setVideoGravity:*MEMORY[0x1E69874F0]];
    [(CKVideoRecorder *)v3 setCaptureVideoPreviewLayer:v7];
    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = [v8 objectForKey:@"kCKVideoMessagingCameraDevice"];

    if (v9)
    {
      v10 = [v9 integerValue];
    }

    else
    {
      v10 = 1;
    }

    if (v10 >= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v3->_currentDevice = v11;
    v12 = v3->_avCaptureSessionDispatchQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __23__CKVideoRecorder_init__block_invoke;
    v15[3] = &unk_1E72EB8D0;
    v16 = v6;
    v17 = v3;
    v13 = v6;
    dispatch_async(v12, v15);
  }

  return v3;
}

void __23__CKVideoRecorder_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSessionPreset:*MEMORY[0x1E6986B00]];
  v2 = *(a1 + 40);
  if (v2[124] == 1)
  {
    [v2 _configureFrontVideoInput];
  }

  else
  {
    [v2 _configureRearVideoInput];
  }
  v12 = ;
  v3 = [*(a1 + 40) session];
  v4 = [v3 canAddInput:v12];

  if (v4)
  {
    v5 = [*(a1 + 40) session];
    [v5 addInput:v12];
  }

  v6 = objc_alloc_init(MEMORY[0x1E69870D8]);
  v7 = [v6 connectionWithMediaType:*MEMORY[0x1E6987608]];
  if ([v7 isVideoOrientationSupported])
  {
    [v7 setVideoOrientation:1];
  }

  if ([v7 isVideoStabilizationSupported])
  {
    [v7 setEnablesVideoStabilizationWhenAvailable:1];
  }

  if ([*(a1 + 32) canAddOutput:v6])
  {
    [*(a1 + 32) addOutput:v6];
  }

  [*(a1 + 40) setVideoOutput:v6];
  v8 = objc_alloc_init(MEMORY[0x1E6987128]);
  v9 = objc_alloc(MEMORY[0x1E695DF20]);
  v10 = [v9 initWithObjectsAndKeys:{*MEMORY[0x1E6987CA8], *MEMORY[0x1E6987CB0], 0}];
  [v8 setOutputSettings:v10];
  if ([*(a1 + 32) canAddOutput:v8])
  {
    [*(a1 + 32) addOutput:v8];
  }

  [*(a1 + 40) setStillImageOutput:v8];
  v11 = [*(a1 + 40) session];
  [v11 startRunning];
}

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = CKVideoRecorder;
  [(CKVideoRecorder *)&v15 loadView];
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKVideoRecorder *)self captureVideoPreviewLayer];
  [v12 setFrame:{v5, v7, v9, v11}];
  v13 = [(CKVideoRecorder *)self view];
  v14 = [v13 layer];
  [v14 insertSublayer:v12 atIndex:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  avCaptureSessionDispatchQueue = self->_avCaptureSessionDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CKVideoRecorder_viewWillAppear___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(avCaptureSessionDispatchQueue, block);
  v6.receiver = self;
  v6.super_class = CKVideoRecorder;
  [(CKVideoRecorder *)&v6 viewWillAppear:v3];
}

void __34__CKVideoRecorder_viewWillAppear___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) session];
  [v8 beginConfiguration];
  v2 = objc_alloc(MEMORY[0x1E69870B0]);
  v3 = [*(a1 + 32) audioDevice];
  v4 = [v2 initWithDevice:v3 error:0];

  if ([v8 canAddInput:v4])
  {
    [v8 addInput:v4];
  }

  [*(a1 + 32) setAudioInput:v4];
  v5 = *(a1 + 32);
  if (v5[124] == 1)
  {
    v6 = [v5 _configureRearVideoInput];
  }

  else
  {
    v7 = [v5 _configureFrontVideoInput];
  }

  [v8 commitConfiguration];
}

- (void)cancel
{
  [(CKVideoRecorder *)self setCanceled:1];
  avCaptureSessionDispatchQueue = self->_avCaptureSessionDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__CKVideoRecorder_cancel__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(avCaptureSessionDispatchQueue, block);
  v4 = [(CKVideoRecorder *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKVideoRecorder *)self delegate];
    [v6 ckVideoRecorderRecordingCanceled:self];
  }
}

void __25__CKVideoRecorder_cancel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) session];
  [v1 stopRunning];
}

- (void)stopVideoCapture
{
  v2 = [(CKVideoRecorder *)self videoOutput];
  [v2 stopRecording];
}

- (BOOL)startVideoCapture
{
  v3 = CKAttachmentTmpFileURL(@"VideoMessage.mov");
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 URLByDeletingLastPathComponent];
  v14 = 0;
  v6 = [v4 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v14];
  v7 = v14;

  if ((v6 & 1) == 0)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CKVideoRecorder *)v3 startVideoCapture];
    }
  }

  [(CKVideoRecorder *)self setOutputFileURL:v3];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [(CKVideoRecorder *)self outputFileURL];
  [v9 removeItemAtURL:v10 error:0];

  v11 = [(CKVideoRecorder *)self videoOutput];
  v12 = [(CKVideoRecorder *)self outputFileURL];
  [v11 startRecordingToOutputFileURL:v12 recordingDelegate:self];

  return 1;
}

- (void)takePicture
{
  if (![(CKVideoRecorder *)self canceled])
  {
    v3 = [(CKVideoRecorder *)self stillImageOutput];
    v4 = [v3 connectionWithMediaType:*MEMORY[0x1E6987608]];

    v5 = [(CKVideoRecorder *)self stillImageOutput];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __30__CKVideoRecorder_takePicture__block_invoke;
    v6[3] = &unk_1E72F0CD0;
    v6[4] = self;
    [v5 captureStillImageAsynchronouslyFromConnection:v4 completionHandler:v6];
  }
}

void __30__CKVideoRecorder_takePicture__block_invoke(uint64_t a1, uint64_t a2)
{
  if (([*(a1 + 32) canceled] & 1) == 0)
  {
    [*(a1 + 32) cancel];
    if (a2)
    {
      v7 = [MEMORY[0x1E6987128] jpegStillImageNSDataRepresentation:a2];
      v4 = [*(a1 + 32) delegate];
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        v6 = [*(a1 + 32) delegate];
        [v6 ckVideoRecorder:*(a1 + 32) imageDataCaptured:v7 error:0];
      }
    }
  }
}

- (void)dealloc
{
  [(AVCaptureVideoPreviewLayer *)self->_captureVideoPreviewLayer setSession:0];
  [(CKVideoRecorder *)self removeFromParentViewController];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(CKVideoRecorder *)self outputFileURL];
  [v3 removeItemAtURL:v4 error:0];

  v5.receiver = self;
  v5.super_class = CKVideoRecorder;
  [(CKVideoRecorder *)&v5 dealloc];
}

- (id)_cameraWithPosition:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69870A0] devicesWithMediaType:*MEMORY[0x1E6987608]];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 position] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)audioDevice
{
  v2 = [MEMORY[0x1E69870A0] devicesWithMediaType:*MEMORY[0x1E69875A0]];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)frontFacingCamera
{
  frontFacingCamera = self->_frontFacingCamera;
  if (!frontFacingCamera)
  {
    v4 = [(CKVideoRecorder *)self _cameraWithPosition:2];
    v5 = self->_frontFacingCamera;
    self->_frontFacingCamera = v4;

    [(CKVideoRecorder *)self setupCamera:self->_frontFacingCamera];
    frontFacingCamera = self->_frontFacingCamera;
  }

  return frontFacingCamera;
}

- (id)rearFacingCamera
{
  rearFacingCamera = self->_rearFacingCamera;
  if (!rearFacingCamera)
  {
    v4 = [(CKVideoRecorder *)self _cameraWithPosition:1];
    v5 = self->_rearFacingCamera;
    self->_rearFacingCamera = v4;

    [(CKVideoRecorder *)self setupCamera:self->_rearFacingCamera];
    rearFacingCamera = self->_rearFacingCamera;
  }

  return rearFacingCamera;
}

- (id)_configureFrontVideoInput
{
  v3 = objc_alloc(MEMORY[0x1E69870B0]);
  v4 = [(CKVideoRecorder *)self frontFacingCamera];
  v5 = [v3 initWithDevice:v4 error:0];

  [(CKVideoRecorder *)self setFrontVideoInput:v5];

  return v5;
}

- (id)_configureRearVideoInput
{
  v3 = objc_alloc(MEMORY[0x1E69870B0]);
  v4 = [(CKVideoRecorder *)self rearFacingCamera];
  v5 = [v3 initWithDevice:v4 error:0];

  [(CKVideoRecorder *)self setRearVideoInput:v5];

  return v5;
}

- (void)setCameraDevice:(int64_t)a3
{
  if (![(CKVideoRecorder *)self canceled]&& self->_currentDevice != a3)
  {
    avCaptureSessionDispatchQueue = self->_avCaptureSessionDispatchQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__CKVideoRecorder_setCameraDevice___block_invoke;
    v6[3] = &unk_1E72ED810;
    v6[4] = self;
    v6[5] = a3;
    dispatch_async(avCaptureSessionDispatchQueue, v6);
    self->_currentDevice = a3;
  }
}

void __35__CKVideoRecorder_setCameraDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) session];
  [v2 beginConfiguration];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) session];
  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = [v5 rearVideoInput];
    [v4 removeInput:v6];

    v7 = [*(a1 + 32) session];
    v8 = [*(a1 + 32) frontVideoInput];
    v9 = [v7 canAddInput:v8];

    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = [*(a1 + 32) session];
    v11 = [*(a1 + 32) frontVideoInput];
  }

  else
  {
    v12 = [v5 frontVideoInput];
    [v4 removeInput:v12];

    v13 = [*(a1 + 32) session];
    v14 = [*(a1 + 32) rearVideoInput];
    v15 = [v13 canAddInput:v14];

    if (!v15)
    {
      goto LABEL_7;
    }

    v10 = [*(a1 + 32) session];
    v11 = [*(a1 + 32) rearVideoInput];
  }

  v16 = v11;
  [v10 addInput:v11];

LABEL_7:
  v17 = [*(a1 + 32) session];
  [v17 commitConfiguration];
}

- (void)setupCamera:(id)a3
{
  v3 = a3;
  if ([v3 hasFlash] && objc_msgSend(v3, "lockForConfiguration:", 0))
  {
    if ([v3 isFlashModeSupported:2])
    {
      [v3 setFlashMode:2];
    }

    [v3 unlockForConfiguration];
  }

  if ([v3 hasTorch] && objc_msgSend(v3, "lockForConfiguration:", 0))
  {
    if ([v3 isTorchModeSupported:2])
    {
      [v3 setTorchMode:2];
    }

    [v3 unlockForConfiguration];
  }

  if ([v3 isFocusModeSupported:2] && objc_msgSend(v3, "lockForConfiguration:", 0))
  {
    [v3 setFocusMode:2];
    [v3 unlockForConfiguration];
  }
}

- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6
{
  v12 = a4;
  v8 = a6;
  if (![(CKVideoRecorder *)self canceled])
  {
    v9 = [(CKVideoRecorder *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(CKVideoRecorder *)self delegate];
      [v11 ckVideoRecorder:self videoCaptured:v12 error:v8];
    }
  }
}

- (CKVideoRecorderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startVideoCapture
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 URLByDeletingLastPathComponent];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_19020E000, a3, OS_LOG_TYPE_ERROR, "Failed [NSFileManager createDirectoryAtURL:%@] with error %@", &v6, 0x16u);
}

@end