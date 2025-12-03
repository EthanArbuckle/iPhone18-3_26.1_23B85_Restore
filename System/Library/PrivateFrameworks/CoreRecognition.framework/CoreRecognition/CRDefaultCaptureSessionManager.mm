@interface CRDefaultCaptureSessionManager
- (AVCaptureInputPort)inputPortFormatSender;
- (AVCaptureMetadataOutputObjectsDelegate)captureSessionMetadataDelegate;
- (AVCaptureVideoDataOutputSampleBufferDelegate)captureSessionDelegate;
- (BOOL)isAdjustingFocus;
- (BOOL)isFocusPointOfInterestSupported;
- (BOOL)isPreviewVideoMirrored;
- (BOOL)isRearCamera;
- (BOOL)isRunning;
- (BOOL)switchToCamera:(int64_t)camera;
- (BOOL)switchToCameraWithDeviceID:(id)d;
- (BOOL)toggleCamera;
- (CGPoint)convertCameraPoint:(CGPoint)point fromLayer:(id)layer;
- (CGPoint)convertCameraPoint:(CGPoint)point toLayer:(id)layer;
- (CGPoint)convertCameraPoint:(CGPoint)point toLayer:(id)layer flipped:(BOOL)flipped;
- (CGPoint)convertCameraPointOCR:(CGPoint)r toLayer:(id)layer flipped:(BOOL)flipped;
- (CGPoint)focusPointOfInterest;
- (CGRect)convertCameraRect:(CGRect)rect fromLayer:(id)layer;
- (CGRect)previewVisibleRect;
- (CGSize)cameraResolution;
- (id)captureDeviceWithIdentifier:(id)identifier;
- (id)captureDeviceWithPosition:(int64_t)position;
- (unint64_t)cameraCount;
- (void)_refocusOnPoint:(CGPoint)point focusMode:(int64_t)mode exposure:(BOOL)exposure;
- (void)cacheCameraResolution:(id)resolution;
- (void)cameraSessionWasInterrupted:(id)interrupted;
- (void)changeCameraConfiguration;
- (void)highISOAdjustExposure;
- (void)refocusOnPoint:(CGPoint)point exposure:(BOOL)exposure;
- (void)resetFocus;
- (void)setPreviewOrientation:(int64_t)orientation;
- (void)setupCameraSession;
- (void)setupCameraSessionWithCaptureDevice:(id)device;
- (void)setupHighISO:(id)o;
- (void)startRunning;
- (void)stopRunning;
- (void)teardownCameraSession;
@end

@implementation CRDefaultCaptureSessionManager

- (void)stopRunning
{
  inputPortFormatObserver = [(CRDefaultCaptureSessionManager *)self inputPortFormatObserver];

  if (inputPortFormatObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    inputPortFormatObserver2 = [(CRDefaultCaptureSessionManager *)self inputPortFormatObserver];
    v6 = *MEMORY[0x277CE58B0];
    inputPortFormatSender = [(CRDefaultCaptureSessionManager *)self inputPortFormatSender];
    [defaultCenter removeObserver:inputPortFormatObserver2 name:v6 object:inputPortFormatSender];

    [(CRDefaultCaptureSessionManager *)self setInputPortFormatObserver:0];
  }

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277CE59C8] object:0];

  captureSession = [(CRDefaultCaptureSessionManager *)self captureSession];
  [captureSession stopRunning];
}

- (void)cacheCameraResolution:(id)resolution
{
  formatDescription = [resolution formatDescription];
  if (formatDescription)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(formatDescription);

    [(CRDefaultCaptureSessionManager *)self setCameraResolution:Dimensions.width, Dimensions.height];
  }
}

- (void)startRunning
{
  v31 = *MEMORY[0x277D85DE8];
  inputPortFormatObserver = [(CRDefaultCaptureSessionManager *)self inputPortFormatObserver];

  v4 = MEMORY[0x277CE58B0];
  if (inputPortFormatObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    inputPortFormatObserver2 = [(CRDefaultCaptureSessionManager *)self inputPortFormatObserver];
    v7 = *v4;
    inputPortFormatSender = [(CRDefaultCaptureSessionManager *)self inputPortFormatSender];
    [defaultCenter removeObserver:inputPortFormatObserver2 name:v7 object:inputPortFormatSender];

    [(CRDefaultCaptureSessionManager *)self setInputPortFormatObserver:0];
  }

  [(CRDefaultCaptureSessionManager *)self changeCameraConfiguration];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_cameraSessionWasInterrupted_ name:*MEMORY[0x277CE59C8] object:0];

  captureSession = [(CRDefaultCaptureSessionManager *)self captureSession];
  [captureSession startRunning];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  ports = [deviceInput ports];

  v13 = [ports countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    v16 = *MEMORY[0x277CE5EA8];
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(ports);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        mediaType = [v18 mediaType];
        v20 = [mediaType isEqualToString:v16];

        if (v20)
        {
          [(CRDefaultCaptureSessionManager *)self cacheCameraResolution:v18];
          [(CRDefaultCaptureSessionManager *)self setInputPortFormatSender:v18];
          defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
          v22 = *MEMORY[0x277CE58B0];
          mainQueue = [MEMORY[0x277CCABD8] mainQueue];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __46__CRDefaultCaptureSessionManager_startRunning__block_invoke;
          v25[3] = &unk_278EAAAD0;
          v25[4] = self;
          v25[5] = v18;
          v24 = [defaultCenter3 addObserverForName:v22 object:v18 queue:mainQueue usingBlock:v25];
          [(CRDefaultCaptureSessionManager *)self setInputPortFormatObserver:v24];

          goto LABEL_13;
        }
      }

      v14 = [ports countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (BOOL)isRunning
{
  captureSession = [(CRDefaultCaptureSessionManager *)self captureSession];
  isRunning = [captureSession isRunning];

  return isRunning;
}

- (void)setupCameraSession
{
  if ([(CRDefaultCaptureSessionManager *)self cameraPosition])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(CRDefaultCaptureSessionManager *)self captureDeviceWithPosition:v3];
  if (!v4)
  {
    v4 = [(CRDefaultCaptureSessionManager *)self captureDeviceWithPosition:0];
  }

  v5 = v4;
  [(CRDefaultCaptureSessionManager *)self setupCameraSessionWithCaptureDevice:v4];
}

- (void)setupCameraSessionWithCaptureDevice:(id)device
{
  v94 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  targetVideoFormat = [(CRDefaultCaptureSessionManager *)self targetVideoFormat];
  [(CRDefaultCaptureSessionManager *)self stopRunning];
  [(CRDefaultCaptureSessionManager *)self setCameraResolution:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  captureSession = [(CRDefaultCaptureSessionManager *)self captureSession];

  if (!captureSession)
  {
    v7 = objc_alloc_init(MEMORY[0x277CE5B38]);
    [(CRDefaultCaptureSessionManager *)self setCaptureSession:v7];
  }

  captureSession2 = [(CRDefaultCaptureSessionManager *)self captureSession];
  isMultitaskingCameraAccessSupported = [captureSession2 isMultitaskingCameraAccessSupported];

  if (isMultitaskingCameraAccessSupported)
  {
    captureSession3 = [(CRDefaultCaptureSessionManager *)self captureSession];
    [captureSession3 setMultitaskingCameraAccessEnabled:1];
  }

  v91 = 0;
  v11 = [deviceCopy lockForConfiguration:&v91];
  v12 = v91;
  v13 = v12;
  if (!v11)
  {
    NSLog(&cfstr_FailedToObtain.isa, v12);
LABEL_51:
    deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
    device = [deviceInput device];
    -[CRDefaultCaptureSessionManager setCameraPosition:](self, "setCameraPosition:", [device position]);

    deviceInput2 = [(CRDefaultCaptureSessionManager *)self deviceInput];
    device2 = [deviceInput2 device];
    uniqueID = [device2 uniqueID];
    [(CRDefaultCaptureSessionManager *)self setCurrentDeviceID:uniqueID];

    goto LABEL_52;
  }

  v85 = v12;
  captureSession4 = [(CRDefaultCaptureSessionManager *)self captureSession];
  [captureSession4 beginConfiguration];

  captureSession5 = [(CRDefaultCaptureSessionManager *)self captureSession];
  deviceInput3 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  [captureSession5 removeInput:deviceInput3];

  captureSession6 = [(CRDefaultCaptureSessionManager *)self captureSession];
  captureVideoDataOutput = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
  [captureSession6 removeOutput:captureVideoDataOutput];

  v90 = 0;
  v19 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:deviceCopy error:&v90];
  v84 = v90;
  [(CRDefaultCaptureSessionManager *)self setDeviceInput:v19];

  captureSession7 = [(CRDefaultCaptureSessionManager *)self captureSession];
  deviceInput4 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  v22 = [captureSession7 canAddInput:deviceInput4];

  if (v22)
  {
    captureSession8 = [(CRDefaultCaptureSessionManager *)self captureSession];
    deviceInput5 = [(CRDefaultCaptureSessionManager *)self deviceInput];
    [captureSession8 addInput:deviceInput5];
  }

  cameraMode = [(CRDefaultCaptureSessionManager *)self cameraMode];
  v26 = *MEMORY[0x277CE59A8];

  if (cameraMode == v26)
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v83 = deviceCopy;
    formats = [deviceCopy formats];
    v36 = [formats countByEnumeratingWithState:&v86 objects:v93 count:16];
    if (!v36)
    {
      v38 = 0;
LABEL_36:

LABEL_37:
      v52 = v38;
      if (!v52)
      {
        goto LABEL_41;
      }

      activeFormat = v52;
      v38 = v52;
LABEL_39:
      [v83 setActiveFormat:activeFormat];
      Dimensions = CMVideoFormatDescriptionGetDimensions([activeFormat formatDescription]);
      [(CRDefaultCaptureSessionManager *)self setCameraResolution:Dimensions.width, Dimensions.height];
      [v83 setProvidesStortorgetMetadata:1];
      [(CRDefaultCaptureSessionManager *)self setupHighISO:activeFormat];

LABEL_40:
LABEL_41:
      v54 = objc_alloc(MEMORY[0x277CE5B68]);
      captureSession9 = [(CRDefaultCaptureSessionManager *)self captureSession];
      v56 = [v54 initWithSession:captureSession9];
      [(CRDefaultCaptureSessionManager *)self setAvfPreviewLayer:v56];

      v57 = objc_alloc_init(MEMORY[0x277CE5B60]);
      v58 = MEMORY[0x277CBEAC0];
      v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:targetVideoFormat];
      v60 = [v58 dictionaryWithObject:v59 forKey:*MEMORY[0x277CC4E30]];
      [v57 setVideoSettings:v60];

      [v57 setAlwaysDiscardsLateVideoFrames:1];
      [(CRDefaultCaptureSessionManager *)self setCaptureVideoDataOutput:v57];
      v61 = dispatch_queue_create("com.apple.CoreRecognition.videoQueue", 0);
      captureVideoDataOutput2 = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
      captureSessionDelegate = [(CRDefaultCaptureSessionManager *)self captureSessionDelegate];
      [captureVideoDataOutput2 setSampleBufferDelegate:captureSessionDelegate queue:v61];

      deviceCopy = v83;
      if ([(CRDefaultCaptureSessionManager *)self enableMetadataOutput])
      {
        v64 = objc_alloc_init(MEMORY[0x277CE5B00]);
        captureSession10 = [(CRDefaultCaptureSessionManager *)self captureSession];
        v66 = [captureSession10 canAddOutput:v64];

        if (v66)
        {
          captureSession11 = [(CRDefaultCaptureSessionManager *)self captureSession];
          [captureSession11 addOutput:v64];
        }

        captureSessionMetadataDelegate = [(CRDefaultCaptureSessionManager *)self captureSessionMetadataDelegate];
        [v64 setMetadataObjectsDelegate:captureSessionMetadataDelegate queue:v61];

        v92 = *MEMORY[0x277CE5A80];
        v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
        [v64 setMetadataObjectTypes:v69];
      }

      captureSession12 = [(CRDefaultCaptureSessionManager *)self captureSession];
      captureVideoDataOutput3 = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
      v72 = [captureSession12 canAddOutput:captureVideoDataOutput3];

      if (v72)
      {
        captureSession13 = [(CRDefaultCaptureSessionManager *)self captureSession];
        captureVideoDataOutput4 = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
        [captureSession13 addOutput:captureVideoDataOutput4];
      }

      captureVideoDataOutput5 = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
      v76 = [captureVideoDataOutput5 connectionWithMediaType:*MEMORY[0x277CE5EA8]];

      if ([v76 isCameraIntrinsicMatrixDeliverySupported])
      {
        [v76 setCameraIntrinsicMatrixDeliveryEnabled:1];
      }

      else
      {
        NSLog(&cfstr_Cameraintrisic.isa);
      }

      captureSession14 = [(CRDefaultCaptureSessionManager *)self captureSession];
      [captureSession14 commitConfiguration];

      [v83 unlockForConfiguration];
      v13 = v85;
      goto LABEL_51;
    }

    v37 = v36;
    v38 = 0;
    v39 = *v87;
    v82 = *v87;
LABEL_14:
    v40 = 0;
    while (1)
    {
      if (*v87 != v39)
      {
        objc_enumerationMutation(formats);
      }

      v41 = *(*(&v86 + 1) + 8 * v40);
      formatDescription = [v41 formatDescription];
      MediaSubType = CMFormatDescriptionGetMediaSubType(formatDescription);
      v44 = CMVideoFormatDescriptionGetDimensions(formatDescription);
      if (v38 || MediaSubType != targetVideoFormat)
      {
        if (MediaSubType != targetVideoFormat)
        {
          goto LABEL_29;
        }

        if (v44.width > CMVideoFormatDescriptionGetDimensions([v38 formatDescription]).width)
        {
          selfCopy = self;
          v47 = targetVideoFormat;
          v48 = formats;
          v49 = v41;

          v38 = v49;
          formats = v48;
          targetVideoFormat = v47;
          self = selfCopy;
          v39 = v82;
        }
      }

      else
      {
        v38 = v41;
      }

      if (v44 == 0x99000000CC0 && MediaSubType == targetVideoFormat)
      {
        activeFormat = v41;

        if (activeFormat)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

LABEL_29:
      if (v37 == ++v40)
      {
        v37 = [formats countByEnumeratingWithState:&v86 objects:v93 count:16];
        if (v37)
        {
          goto LABEL_14;
        }

        goto LABEL_36;
      }
    }
  }

  captureSession15 = [(CRDefaultCaptureSessionManager *)self captureSession];
  cameraMode2 = [(CRDefaultCaptureSessionManager *)self cameraMode];
  v29 = [captureSession15 canSetSessionPreset:cameraMode2];

  if (v29)
  {
    captureSession16 = [(CRDefaultCaptureSessionManager *)self captureSession];
    cameraMode3 = [(CRDefaultCaptureSessionManager *)self cameraMode];
    [captureSession16 setSessionPreset:cameraMode3];

    v83 = deviceCopy;
    activeFormat = [deviceCopy activeFormat];
    formatDescription2 = [activeFormat formatDescription];
    [(CRDefaultCaptureSessionManager *)self setupHighISO:activeFormat];
    v34 = CMVideoFormatDescriptionGetDimensions(formatDescription2);
    [(CRDefaultCaptureSessionManager *)self setCameraResolution:v34.width, v34.height];
    goto LABEL_40;
  }

  NSLog(&cfstr_NotSupported.isa);
  captureSession17 = [(CRDefaultCaptureSessionManager *)self captureSession];
  [captureSession17 commitConfiguration];

  [deviceCopy unlockForConfiguration];
  deviceInput2 = v84;
  v13 = v85;
LABEL_52:
}

- (void)teardownCameraSession
{
  captureSession = [(CRDefaultCaptureSessionManager *)self captureSession];
  captureVideoDataOutput = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
  [captureSession removeOutput:captureVideoDataOutput];

  captureSession2 = [(CRDefaultCaptureSessionManager *)self captureSession];
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  [captureSession2 removeInput:deviceInput];

  [(CRDefaultCaptureSessionManager *)self setCaptureSession:0];
  [(CRDefaultCaptureSessionManager *)self setAvfPreviewLayer:0];
  if ([(CRDefaultCaptureSessionManager *)self exposure_table])
  {
    free(*[(CRDefaultCaptureSessionManager *)self exposure_table]);
    free([(CRDefaultCaptureSessionManager *)self exposure_table]);

    [(CRDefaultCaptureSessionManager *)self setExposure_table:0];
  }
}

- (void)changeCameraConfiguration
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];

  deviceInput2 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device2 = [deviceInput2 device];
  v11 = 0;
  [device2 lockForConfiguration:&v11];
  v7 = v11;

  if ([device hasTorch] && objc_msgSend(device, "isTorchModeSupported:", -[CRDefaultCaptureSessionManager torchMode](self, "torchMode")) && -[CRDefaultCaptureSessionManager isRearCamera](self, "isRearCamera"))
  {
    [device setTorchMode:{-[CRDefaultCaptureSessionManager torchMode](self, "torchMode")}];
  }

  if ([device isFocusPointOfInterestSupported] && objc_msgSend(device, "isFocusModeSupported:", -[CRDefaultCaptureSessionManager focusMode](self, "focusMode")))
  {
    [device setFocusPointOfInterest:{0.5, 0.5}];
    [device setFocusMode:{-[CRDefaultCaptureSessionManager focusMode](self, "focusMode")}];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [device isAutoFocusRangeRestrictionSupported])
  {
    [device setAutoFocusRangeRestriction:1];
  }

  if ([device isWhiteBalanceModeSupported:{-[CRDefaultCaptureSessionManager whiteBalanceMode](self, "whiteBalanceMode")}])
  {
    [device setWhiteBalanceMode:{-[CRDefaultCaptureSessionManager whiteBalanceMode](self, "whiteBalanceMode")}];
  }

  if ([device isExposurePointOfInterestSupported] && objc_msgSend(device, "isExposureModeSupported:", -[CRDefaultCaptureSessionManager exposureMode](self, "exposureMode")))
  {
    [device setExposurePointOfInterest:{0.5, 0.5}];
    [device setExposureMode:{-[CRDefaultCaptureSessionManager exposureMode](self, "exposureMode")}];
  }

  v8 = *MEMORY[0x277CE5DD8];
  avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer setVideoGravity:v8];

  avfPreviewLayer2 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer2 setOpaque:1];

  [device unlockForConfiguration];
  [MEMORY[0x277CD9FF0] commit];
}

- (BOOL)isRearCamera
{
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];
  v4 = [device position] == 1;

  return v4;
}

- (unint64_t)cameraCount
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CE5AD0];
  v3 = *MEMORY[0x277CE5870];
  v9[0] = *MEMORY[0x277CE5878];
  v9[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v5 = [v2 discoverySessionWithDeviceTypes:v4 mediaType:*MEMORY[0x277CE5EA8] position:0];

  devices = [v5 devices];
  v7 = [devices count];

  return v7;
}

- (id)captureDeviceWithPosition:(int64_t)position
{
  v54[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CE5AD0];
  v54[0] = *MEMORY[0x277CE5878];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
  v39 = *MEMORY[0x277CE5EA8];
  v7 = [v5 discoverySessionWithDeviceTypes:v6 mediaType:? position:?];

  v40 = v7;
  [v7 devices];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = v48 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v46;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        position = [v14 position];
        if (!position || position == position)
        {
          if (-[CRDefaultCaptureSessionManager targetFocusDistance](self, "targetFocusDistance") < 1 || (v16 = [v14 minimumFocusDistance], v16 <= -[CRDefaultCaptureSessionManager targetFocusDistance](self, "targetFocusDistance")))
          {
            v20 = CROSLogForCategory(8);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              localizedName = [v14 localizedName];
              *buf = 138412290;
              v52 = localizedName;
              _os_log_impl(&dword_2477E8000, v20, OS_LOG_TYPE_DEFAULT, "Selecting device %@", buf, 0xCu);
            }

            v22 = v14;
            v23 = v40;
            goto LABEL_38;
          }

          v17 = CROSLogForCategory(8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            localizedName2 = [v14 localizedName];
            *buf = 138412290;
            v52 = localizedName2;
            _os_log_impl(&dword_2477E8000, v17, OS_LOG_TYPE_DEFAULT, "%@ does not meet focus requirements", buf, 0xCu);
          }

          v19 = v14;
          v11 = v19;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  v24 = MEMORY[0x277CE5AD0];
  v50 = *MEMORY[0x277CE5870];
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v23 = [v24 discoverySessionWithDeviceTypes:v25 mediaType:v39 position:position];

  devices = [v23 devices];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = devices;
  v27 = [v8 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v42;
    while (2)
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v42 != v29)
        {
          objc_enumerationMutation(v8);
        }

        v31 = *(*(&v41 + 1) + 8 * j);
        position2 = [v31 position];
        if (!position || position2 == position)
        {
          if (-[CRDefaultCaptureSessionManager targetFocusDistance](self, "targetFocusDistance") < 1 || (v33 = [v31 minimumFocusDistance], v33 <= -[CRDefaultCaptureSessionManager targetFocusDistance](self, "targetFocusDistance")))
          {
            if ([v31 isFocusPointOfInterestSupported])
            {
              v36 = CROSLogForCategory(8);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                localizedName3 = [v31 localizedName];
                *buf = 138412290;
                v52 = localizedName3;
                _os_log_impl(&dword_2477E8000, v36, OS_LOG_TYPE_DEFAULT, "Selecting device %@", buf, 0xCu);
              }

              v22 = v31;
              goto LABEL_38;
            }
          }
        }
      }

      v28 = [v8 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  v34 = CROSLogForCategory(8);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    localizedName4 = [v11 localizedName];
    *buf = 138412290;
    v52 = localizedName4;
    _os_log_impl(&dword_2477E8000, v34, OS_LOG_TYPE_DEFAULT, "Falling back to device %@", buf, 0xCu);
  }

  v11 = v11;
  v22 = v11;
LABEL_38:

  return v22;
}

- (id)captureDeviceWithIdentifier:(id)identifier
{
  v21[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = MEMORY[0x277CE5AD0];
  v5 = *MEMORY[0x277CE5870];
  v21[0] = *MEMORY[0x277CE5878];
  v21[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v7 = [v4 discoverySessionWithDeviceTypes:v6 mediaType:*MEMORY[0x277CE5EA8] position:0];

  [v7 devices];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        uniqueID = [v12 uniqueID];
        v14 = [uniqueID isEqualToString:identifierCopy];

        if (v14)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (BOOL)toggleCamera
{
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];
  position = [device position];

  if (position == 1)
  {
    v6 = 2;
  }

  else
  {
    if (position != 2)
    {
      return 0;
    }

    v6 = 1;
  }

  return [(CRDefaultCaptureSessionManager *)self switchToCamera:v6];
}

- (BOOL)switchToCameraWithDeviceID:(id)d
{
  v4 = [(CRDefaultCaptureSessionManager *)self captureDeviceWithIdentifier:d];
  if (v4)
  {
    [(CRDefaultCaptureSessionManager *)self setupCameraSessionWithCaptureDevice:v4];
  }

  return v4 != 0;
}

- (BOOL)switchToCamera:(int64_t)camera
{
  if ([(CRDefaultCaptureSessionManager *)self cameraCount]< 2)
  {
    goto LABEL_5;
  }

  if (camera == 1)
  {
    v5 = objc_alloc(MEMORY[0x277CE5AD8]);
    backFacingCamera = [(CRDefaultCaptureSessionManager *)self backFacingCamera];
    v42 = 0;
    v7 = &v42;
    v8 = &v42;
    goto LABEL_7;
  }

  if (camera != 2)
  {
LABEL_5:
    LOBYTE(v9) = 0;
    return v9;
  }

  v5 = objc_alloc(MEMORY[0x277CE5AD8]);
  backFacingCamera = [(CRDefaultCaptureSessionManager *)self frontFacingCamera];
  v43 = 0;
  v7 = &v43;
  v8 = &v43;
LABEL_7:
  v10 = [v5 initWithDevice:backFacingCamera error:v8];
  v11 = *v7;

  if (v10)
  {
    [(CRDefaultCaptureSessionManager *)self stopRunning];
    device = [v10 device];
    v41 = 0;
    v9 = [device lockForConfiguration:&v41];
    v13 = v41;

    if (v9)
    {
      captureSession = [(CRDefaultCaptureSessionManager *)self captureSession];
      [captureSession beginConfiguration];

      captureSession2 = [(CRDefaultCaptureSessionManager *)self captureSession];
      deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
      [captureSession2 removeInput:deviceInput];

      device2 = [v10 device];
      v18 = *MEMORY[0x277CE5980];
      v19 = [device2 supportsAVCaptureSessionPreset:*MEMORY[0x277CE5980]];

      if ((v19 & 1) != 0 || ([v10 device], v20 = objc_claimAutoreleasedReturnValue(), v18 = *MEMORY[0x277CE5960], v21 = objc_msgSend(v20, "supportsAVCaptureSessionPreset:", *MEMORY[0x277CE5960]), v20, v21))
      {
        captureSession3 = [(CRDefaultCaptureSessionManager *)self captureSession];
        [captureSession3 setSessionPreset:v18];
      }

      if ([(CRDefaultCaptureSessionManager *)self enableMetadataOutput])
      {
        device3 = [v10 device];
        v24 = *MEMORY[0x277CE5960];
        v25 = [device3 supportsAVCaptureSessionPreset:*MEMORY[0x277CE5960]];

        captureSession4 = [(CRDefaultCaptureSessionManager *)self captureSession];
        v27 = captureSession4;
        if (v25)
        {
          v28 = v24;
        }

        else
        {
          v28 = *MEMORY[0x277CE5988];
        }

        [captureSession4 setSessionPreset:v28];
      }

      captureSession5 = [(CRDefaultCaptureSessionManager *)self captureSession];
      v30 = [captureSession5 canAddInput:v10];

      captureSession6 = [(CRDefaultCaptureSessionManager *)self captureSession];
      v32 = captureSession6;
      if (v30)
      {
        [captureSession6 addInput:v10];

        [(CRDefaultCaptureSessionManager *)self setDeviceInput:v10];
      }

      else
      {
        deviceInput2 = [(CRDefaultCaptureSessionManager *)self deviceInput];
        [v32 addInput:deviceInput2];
      }

      device4 = [v10 device];
      activeFormat = [device4 activeFormat];

      [(CRDefaultCaptureSessionManager *)self setupHighISO:activeFormat];
      captureSession7 = [(CRDefaultCaptureSessionManager *)self captureSession];
      [captureSession7 commitConfiguration];

      device5 = [v10 device];
      [device5 unlockForConfiguration];

      deviceInput3 = [(CRDefaultCaptureSessionManager *)self deviceInput];
      device6 = [deviceInput3 device];
      -[CRDefaultCaptureSessionManager setCameraPosition:](self, "setCameraPosition:", [device6 position]);

      [(CRDefaultCaptureSessionManager *)self startRunning];
    }

    else
    {
      NSLog(&cfstr_FailedToObtain.isa, v13);
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)_refocusOnPoint:(CGPoint)point focusMode:(int64_t)mode exposure:(BOOL)exposure
{
  y = point.y;
  x = point.x;
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];

  if (([device isAdjustingFocus] & 1) == 0)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__CRDefaultCaptureSessionManager__refocusOnPoint_focusMode_exposure___block_invoke;
    v12[3] = &unk_278EAAAF8;
    v12[4] = self;
    v13 = device;
    modeCopy = mode;
    v15 = x;
    v16 = y;
    exposureCopy = exposure;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __69__CRDefaultCaptureSessionManager__refocusOnPoint_focusMode_exposure___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceInput];
  v3 = [v2 device];
  v6 = 0;
  v4 = [v3 lockForConfiguration:&v6];
  v5 = v6;

  if (v4)
  {
    if ([*(a1 + 40) isFocusPointOfInterestSupported] && objc_msgSend(*(a1 + 40), "isFocusModeSupported:", *(a1 + 48)))
    {
      [*(a1 + 40) setFocusPointOfInterest:{*(a1 + 56), *(a1 + 64)}];
      [*(a1 + 40) setFocusMode:*(a1 + 48)];
    }

    if (*(a1 + 72) == 1 && [*(a1 + 40) isExposurePointOfInterestSupported] && objc_msgSend(*(a1 + 40), "isExposureModeSupported:", objc_msgSend(*(a1 + 32), "exposureMode")))
    {
      [*(a1 + 40) setExposurePointOfInterest:{*(a1 + 56), *(a1 + 64)}];
      [*(a1 + 40) setExposureMode:{objc_msgSend(*(a1 + 32), "exposureMode")}];
    }

    [*(a1 + 40) unlockForConfiguration];
  }

  else
  {
    NSLog(&cfstr_FailedToLockCo.isa, v5);
  }
}

- (void)refocusOnPoint:(CGPoint)point exposure:(BOOL)exposure
{
  exposureCopy = exposure;
  y = point.y;
  x = point.x;
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];
  isFocusPointOfInterestSupported = [device isFocusPointOfInterestSupported];

  if (isFocusPointOfInterestSupported)
  {
    avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
    [avfPreviewLayer captureDevicePointOfInterestForPoint:{x, y}];
    v13 = v12;
    v15 = v14;

    deviceInput2 = [(CRDefaultCaptureSessionManager *)self deviceInput];
    device2 = [deviceInput2 device];
    [device2 focusPointOfInterest];
    *&v18 = (v19 - v15) * (v19 - v15) + (v18 - v13) * (v18 - v13);
    v20 = sqrtf(*&v18);

    if (v20 <= 0.05)
    {
      deviceInput3 = [(CRDefaultCaptureSessionManager *)self deviceInput];
      device3 = [deviceInput3 device];
      isAdjustingFocus = [device3 isAdjustingFocus];

      if ((isAdjustingFocus & 1) == 0)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __58__CRDefaultCaptureSessionManager_refocusOnPoint_exposure___block_invoke;
        block[3] = &unk_278EAAB20;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }

    else
    {
      focusMode = [(CRDefaultCaptureSessionManager *)self focusMode];

      [(CRDefaultCaptureSessionManager *)self _refocusOnPoint:focusMode focusMode:exposureCopy exposure:v13, v15];
    }
  }
}

void __58__CRDefaultCaptureSessionManager_refocusOnPoint_exposure___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceInput];
  v3 = [v2 device];
  v13 = 0;
  v4 = [v3 lockForConfiguration:&v13];
  v5 = v13;

  if (v4)
  {
    v6 = [*(a1 + 32) deviceInput];
    v7 = [v6 device];
    v8 = [v7 isFocusModeSupported:1];

    if (v8)
    {
      v9 = [*(a1 + 32) deviceInput];
      v10 = [v9 device];
      [v10 setFocusMode:1];
    }

    v11 = [*(a1 + 32) deviceInput];
    v12 = [v11 device];
    [v12 unlockForConfiguration];
  }
}

- (void)resetFocus
{
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];
  isFocusPointOfInterestSupported = [device isFocusPointOfInterestSupported];

  if (isFocusPointOfInterestSupported)
  {
    deviceInput2 = [(CRDefaultCaptureSessionManager *)self deviceInput];
    device2 = [deviceInput2 device];
    [device2 focusPointOfInterest];
    if (v7 == 0.5)
    {
    }

    else
    {
      deviceInput3 = [(CRDefaultCaptureSessionManager *)self deviceInput];
      device3 = [deviceInput3 device];
      [device3 focusPointOfInterest];
      v11 = v10;

      if (v11 != 0.5)
      {
        focusMode = [(CRDefaultCaptureSessionManager *)self focusMode];

        [(CRDefaultCaptureSessionManager *)self _refocusOnPoint:focusMode focusMode:1 exposure:0.5, 0.5];
      }
    }
  }
}

- (void)setPreviewOrientation:(int64_t)orientation
{
  if ((orientation - 1) <= 3)
  {
    avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
    connection = [avfPreviewLayer connection];
    [connection setVideoOrientation:orientation];
  }
}

- (BOOL)isAdjustingFocus
{
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];
  isAdjustingFocus = [device isAdjustingFocus];

  return isAdjustingFocus;
}

- (CGPoint)convertCameraPoint:(CGPoint)point fromLayer:(id)layer
{
  y = point.y;
  x = point.x;
  layerCopy = layer;
  avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer convertPoint:layerCopy fromLayer:{x, y}];
  v10 = v9;
  v12 = v11;

  avfPreviewLayer2 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer2 captureDevicePointOfInterestForPoint:{v10, v12}];
  v15 = v14;
  v17 = v16;

  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v19 = v15 * v18;
  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v21 = v17 * v20;
  v22 = v19;
  result.y = v21;
  result.x = v22;
  return result;
}

- (CGPoint)convertCameraPoint:(CGPoint)point toLayer:(id)layer
{
  [(CRDefaultCaptureSessionManager *)self convertCameraPoint:layer toLayer:0 flipped:point.x, point.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertCameraPoint:(CGPoint)point toLayer:(id)layer flipped:(BOOL)flipped
{
  flippedCopy = flipped;
  y = point.y;
  x = point.x;
  layerCopy = layer;
  if (flippedCopy)
  {
    [(CRDefaultCaptureSessionManager *)self cameraResolution];
    y = v10 - y;
  }

  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v12 = x / v11;
  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v14 = y / v13;
  avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer pointForCaptureDevicePointOfInterest:{v12, v14}];
  v17 = v16;
  v19 = v18;

  avfPreviewLayer2 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer2 convertPoint:layerCopy toLayer:{v17, v19}];
  v22 = v21;
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.y = v26;
  result.x = v25;
  return result;
}

- (CGPoint)convertCameraPointOCR:(CGPoint)r toLayer:(id)layer flipped:(BOOL)flipped
{
  x = r.x;
  if (flipped)
  {
    y = 1.0 - r.y;
  }

  else
  {
    y = r.y;
  }

  layerCopy = layer;
  avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer pointForCaptureDevicePointOfInterest:{x, y}];
  v11 = v10;
  v13 = v12;

  avfPreviewLayer2 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer2 convertPoint:layerCopy toLayer:{v11, v13}];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGRect)convertCameraRect:(CGRect)rect fromLayer:(id)layer
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layerCopy = layer;
  avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [avfPreviewLayer convertRect:layerCopy fromLayer:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v35.origin.x = v12;
  v35.origin.y = v14;
  v35.size.width = v16;
  v35.size.height = v18;
  if (!CGRectIsEmpty(v35))
  {
    avfPreviewLayer2 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
    [avfPreviewLayer2 metadataOutputRectOfInterestForRect:{v12, v14, v16, v18}];
    v12 = v20;
    v14 = v21;
    v16 = v22;
    v18 = v23;
  }

  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v25 = v12 * v24;
  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v27 = v14 * v26;
  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v29 = v16 * v28;
  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v31 = v18 * v30;
  v32 = v25;
  v33 = v27;
  v34 = v29;
  result.size.height = v31;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)setupHighISO:(id)o
{
  v76 = *MEMORY[0x277D85DE8];
  oCopy = o;
  [oCopy maxISO];
  [(CRDefaultCaptureSessionManager *)self setMaxISO:?];
  [oCopy minISO];
  [(CRDefaultCaptureSessionManager *)self setMinISO:?];
  CMTimeMakeWithSeconds(&v60, 0.00207900208, 1000000000);
  *values = *&v60.value;
  *&v72 = v60.epoch;
  [(CRDefaultCaptureSessionManager *)self setHighISOThresholdDuration:values];
  v5 = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  *values = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  *v66 = 0u;
  v6 = *MEMORY[0x277CBECE8];
  v7 = &gDefaultExposureTable;
  do
  {
    values[v5] = CFNumberCreate(v6, kCFNumberDoubleType, v7);
    v66[v5++] = CFNumberCreate(v6, kCFNumberDoubleType, v7 + 80);
    v7 += 8;
  }

  while (v5 != 10);
  v8 = MEMORY[0x277CBF128];
  v9 = CFArrayCreate(v6, values, 10, MEMORY[0x277CBF128]);
  v10 = CFArrayCreate(v6, v66, 10, v8);
  *keys = xmmword_278EAAB40;
  v64[0] = v9;
  v64[1] = v10;
  v11 = CFDictionaryCreate(v6, keys, v64, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if ([(CRDefaultCaptureSessionManager *)self exposure_table])
  {
    free(*[(CRDefaultCaptureSessionManager *)self exposure_table]);
    free([(CRDefaultCaptureSessionManager *)self exposure_table]);
    [(CRDefaultCaptureSessionManager *)self setExposure_table:0];
  }

  [(CRDefaultCaptureSessionManager *)self setExposure_table:malloc_type_malloc(0x20uLL, 0x1020040A02120EAuLL)];
  exposure_table = [(CRDefaultCaptureSessionManager *)self exposure_table];
  *&exposure_table->var2 = xmmword_24783F5C0;
  p_var2 = &exposure_table->var2;
  Value = CFDictionaryGetValue(v11, @"ExposureDelta");
  if (Value)
  {
    v15 = Value;
    v16 = CFGetTypeID(Value);
    if (v16 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v15, kCFNumberDoubleType, p_var2);
      if (*p_var2 > 1.0)
      {
        *p_var2 = 1.0 / *p_var2;
      }
    }
  }

  v17 = CFDictionaryGetValue(v11, @"StabilityZone");
  if (v17)
  {
    v18 = v17;
    v19 = CFGetTypeID(v17);
    if (v19 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v18, kCFNumberDoubleType, &exposure_table->var3);
      var3 = exposure_table->var3;
      if (var3 > 1.0)
      {
        exposure_table->var3 = 1.0 / var3;
      }
    }
  }

  v21 = CFDictionaryGetValue(v11, @"IntegrationTime");
  if (v21 && (v22 = v21, v23 = CFGetTypeID(v21), v23 == CFArrayGetTypeID()))
  {
    v24 = CFDictionaryGetValue(v11, @"MaxGain");
    if (v24 && (v25 = v24, v26 = CFGetTypeID(v24), v26 == CFArrayGetTypeID()))
    {
      Count = CFArrayGetCount(v22);
      v28 = CFArrayGetCount(v25);
      if (Count == v28)
      {
        theArray = v25;
        v59 = Count;
        v56 = 2 * Count;
        v29 = malloc_type_calloc(0x18uLL, 2 * Count, 0x6150010CuLL);
        ValueAtIndex = CFArrayGetValueAtIndex(v22, 0);
        v31 = CFGetTypeID(ValueAtIndex);
        if (v31 == CFNumberGetTypeID())
        {
          valuePtr = 0.0;
          CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
          if (valuePtr > 1.0)
          {
            valuePtr = 1.0 / valuePtr;
          }

          v54 = v10;
          v55 = v9;
          if (v59 < 1)
          {
            v49 = -1;
LABEL_52:
            exposure_table->var0 = exposure_table_create_lookup_table(v29, v56, exposure_table->var2);
            exposure_table->var1 = v49;
            v10 = v54;
            v9 = v55;
          }

          else
          {
            v32 = 0;
            v33 = 0;
            v57 = v29;
            while (1)
            {
              v61 = 0.0;
              v62 = 0.0;
              v34 = CFArrayGetValueAtIndex(v22, v32);
              v35 = CFGetTypeID(v34);
              if (v35 != CFNumberGetTypeID())
              {
                v9 = v55;
                NSLog(&cfstr_ExposuretableI.isa, v32);
                goto LABEL_55;
              }

              v36 = CFArrayGetValueAtIndex(theArray, v32);
              v37 = CFGetTypeID(v34);
              if (v37 != CFNumberGetTypeID())
              {
                break;
              }

              CFNumberGetValue(v34, kCFNumberDoubleType, &v62);
              CFNumberGetValue(v36, kCFNumberDoubleType, &v61);
              v38 = v62;
              v39 = 1.0;
              if (v62 > 1.0)
              {
                v38 = 1.0 / v62;
              }

              v40 = *p_var2 + 1.0;
              if (v33 >= 1)
              {
                v41 = v33;
                do
                {
                  v39 = v40 * v39;
                  --v41;
                }

                while (v41);
              }

              v42 = v61;
              v43 = valuePtr / v38 * v39;
              if (v33 <= 4095)
              {
                v44 = 4095;
              }

              else
              {
                v44 = v33;
              }

              v45 = v33 + 1;
              v46 = v33;
              v29 = v57;
              do
              {
                if (v46 == v44)
                {
                  v49 = -1;
                  goto LABEL_42;
                }

                v47 = v43;
                v48 = 1.0;
                v49 = v46;
                if ((v46 & 0x80000000) == 0)
                {
                  v50 = v45;
                  do
                  {
                    v48 = v40 * v48;
                    --v50;
                  }

                  while (v50);
                }

                v46 = v49 + 1;
                v43 = valuePtr / v38 * v48;
                ++v45;
              }

              while (v43 < v61);
              if (v61 - v47 >= v43 - v61)
              {
                ++v49;
              }

LABEL_42:
              v51 = v57 + 48 * v32;
              *v51 = v33;
              *(v51 + 4) = 0;
              *(v51 + 8) = v38;
              *(v51 + 16) = v42;
              v52 = v57 + 24 * ((2 * v32) | 1);
              *v52 = v49;
              *(v52 + 4) = 0;
              *(v52 + 8) = v38;
              *(v52 + 16) = v42;
              v33 = v49 + 1;
              if (++v32 == v59)
              {
                goto LABEL_52;
              }
            }

            v9 = v55;
            NSLog(&cfstr_ExposuretableM.isa, v32);
LABEL_55:
            v10 = v54;
            v29 = v57;
          }
        }

        else
        {
          NSLog(&cfstr_ExposuretableI.isa, 0);
        }

        if (v29)
        {
          free(v29);
        }
      }

      else
      {
        NSLog(&cfstr_ExposuretableT.isa, Count, v28);
      }
    }

    else
    {
      NSLog(&cfstr_ExposuretableN_0.isa);
    }
  }

  else
  {
    NSLog(&cfstr_ExposuretableN.isa);
  }

  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v10);
  for (i = 0; i != 10; ++i)
  {
    CFRelease(values[i]);
    CFRelease(v66[i]);
  }
}

- (void)highISOAdjustExposure
{
  memset(&v40, 0, sizeof(v40));
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];

  [device ISO];
  v6 = v5;
  memset(&v39, 0, sizeof(v39));
  if (device)
  {
    [device exposureDuration];
  }

  time = v39;
  Seconds = CMTimeGetSeconds(&time);
  [device exposureTargetOffset];
  v9 = v8;
  [device lensAperture];
  v11 = v10;
  if ([(CRDefaultCaptureSessionManager *)self exposureAdjustmentInProgress])
  {
    [(CRDefaultCaptureSessionManager *)self setExposureAdjustmentInProgressTimeoutCount:[(CRDefaultCaptureSessionManager *)self exposureAdjustmentInProgressTimeoutCount]- 1];
    if (![(CRDefaultCaptureSessionManager *)self exposureAdjustmentInProgressTimeoutCount])
    {
      [(CRDefaultCaptureSessionManager *)self setExposureAdjustmentInProgress:0];
    }
  }

  if ([(CRDefaultCaptureSessionManager *)self exposureAdjustmentInProgress])
  {
    goto LABEL_15;
  }

  [(CRDefaultCaptureSessionManager *)self highISOThresholdDuration];
  time1 = v39;
  if (CMTimeCompare(&time1, &time) < 0)
  {
    if ([(CRDefaultCaptureSessionManager *)self runningManualExposure])
    {
      v36 = 0;
      [device lockForConfiguration:&v36];
      v24 = v36;
      [device setExposureMode:2];
      [(CRDefaultCaptureSessionManager *)self setRunningManualExposure:0];
LABEL_24:
      [device unlockForConfiguration];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = v11 * v11;
  v13 = log2(v12 / (v6 / 100.0 * Seconds));
  v14 = v13 + v9;
  if (vabdd_f64(v13, v14) <= [(CRDefaultCaptureSessionManager *)self exposure_table][24])
  {
LABEL_15:
    v24 = 0;
    goto LABEL_16;
  }

  [(CRDefaultCaptureSessionManager *)self minISO];
  v16 = v15;
  v17 = *[(CRDefaultCaptureSessionManager *)self exposure_table];
  v18 = v17 + 24 * [(CRDefaultCaptureSessionManager *)self exposure_table][8];
  v19 = log2(v12 / (*(v17 + 8) * ((*(v17 + 16) * v16) / 100.0)));
  v20 = (*v17 + (v14 - v19) * ((*(v18 - 24) - *v17) / (log2(v12 / (*(v18 - 16) * ((*(v18 - 8) * v16) / 100.0))) - v19)) + 0.5);
  if (v20 < 0)
  {
    [(CRDefaultCaptureSessionManager *)self minISO];
    v26 = v12 / (exp2(v14) * (v25 / 100.0));
    v23 = 1.0;
    v22 = 0.00001;
    if (v26 >= 0.00001)
    {
      v22 = v26;
    }
  }

  else
  {
    if ([(CRDefaultCaptureSessionManager *)self exposure_table][8] <= v20)
    {
      v20 = [(CRDefaultCaptureSessionManager *)self exposure_table][8] - 1;
    }

    v21 = *[(CRDefaultCaptureSessionManager *)self exposure_table]+ 24 * v20;
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
  }

  CMTimeMakeWithSeconds(&v40, v22, 1000000000);
  [(CRDefaultCaptureSessionManager *)self maxISO];
  v28 = v27;
  [(CRDefaultCaptureSessionManager *)self minISO];
  if (v23 * v29 <= v28)
  {
    [(CRDefaultCaptureSessionManager *)self minISO];
    v31 = v23 * v32;
  }

  else
  {
    [(CRDefaultCaptureSessionManager *)self maxISO];
    v31 = v30;
  }

  v35 = 0;
  v33 = [device lockForConfiguration:&v35];
  v24 = v35;
  if (v33)
  {
    [(CRDefaultCaptureSessionManager *)self setExposureAdjustmentInProgressTimeoutCount:10];
    [(CRDefaultCaptureSessionManager *)self setExposureAdjustmentInProgress:1];
    [(CRDefaultCaptureSessionManager *)self setRunningManualExposure:1];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __55__CRDefaultCaptureSessionManager_highISOAdjustExposure__block_invoke;
    v34[3] = &unk_278EAAB58;
    v34[4] = self;
    time = v40;
    [device setExposureModeCustomWithDuration:&time ISO:v34 completionHandler:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v40.value), LODWORD(v31)))}];
    goto LABEL_24;
  }

LABEL_16:
}

- (BOOL)isFocusPointOfInterestSupported
{
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];
  isFocusPointOfInterestSupported = [device isFocusPointOfInterestSupported];

  return isFocusPointOfInterestSupported;
}

- (CGPoint)focusPointOfInterest
{
  deviceInput = [(CRDefaultCaptureSessionManager *)self deviceInput];
  device = [deviceInput device];
  [device focusPointOfInterest];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (BOOL)isPreviewVideoMirrored
{
  avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  connection = [avfPreviewLayer connection];
  isVideoMirrored = [connection isVideoMirrored];

  return isVideoMirrored;
}

- (CGRect)previewVisibleRect
{
  avfPreviewLayer = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  previewLayer = [(CRDefaultCaptureSessionManager *)self previewLayer];
  [previewLayer bounds];
  [avfPreviewLayer metadataOutputRectOfInterestForRect:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)cameraSessionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  name = [interruptedCopy name];
  v4 = [name isEqualToString:*MEMORY[0x277CE59C8]];

  if (v4)
  {
    userInfo = [interruptedCopy userInfo];
    v6 = [userInfo valueForKey:*MEMORY[0x277CE5950]];
    integerValue = [v6 integerValue];

    if ((integerValue - 1) > 3)
    {
      v8 = @"CoreRecogntion: Unable to display camera view due to connection inturrupted notification %@";
    }

    else
    {
      v8 = off_278EAAB78[integerValue - 1];
    }

    NSLog(&v8->isa, interruptedCopy);
  }
}

- (AVCaptureVideoDataOutputSampleBufferDelegate)captureSessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_captureSessionDelegate);

  return WeakRetained;
}

- (AVCaptureMetadataOutputObjectsDelegate)captureSessionMetadataDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_captureSessionMetadataDelegate);

  return WeakRetained;
}

- (CGSize)cameraResolution
{
  objc_copyStruct(v4, &self->_cameraResolution, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (AVCaptureInputPort)inputPortFormatSender
{
  WeakRetained = objc_loadWeakRetained(&self->_inputPortFormatSender);

  return WeakRetained;
}

@end