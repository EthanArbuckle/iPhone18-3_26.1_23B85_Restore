@interface CRDefaultCaptureSessionManager
- (AVCaptureInputPort)inputPortFormatSender;
- (AVCaptureMetadataOutputObjectsDelegate)captureSessionMetadataDelegate;
- (AVCaptureVideoDataOutputSampleBufferDelegate)captureSessionDelegate;
- (BOOL)isAdjustingFocus;
- (BOOL)isFocusPointOfInterestSupported;
- (BOOL)isPreviewVideoMirrored;
- (BOOL)isRearCamera;
- (BOOL)isRunning;
- (BOOL)switchToCamera:(int64_t)a3;
- (BOOL)switchToCameraWithDeviceID:(id)a3;
- (BOOL)toggleCamera;
- (CGPoint)convertCameraPoint:(CGPoint)a3 fromLayer:(id)a4;
- (CGPoint)convertCameraPoint:(CGPoint)a3 toLayer:(id)a4;
- (CGPoint)convertCameraPoint:(CGPoint)a3 toLayer:(id)a4 flipped:(BOOL)a5;
- (CGPoint)convertCameraPointOCR:(CGPoint)a3 toLayer:(id)a4 flipped:(BOOL)a5;
- (CGPoint)focusPointOfInterest;
- (CGRect)convertCameraRect:(CGRect)a3 fromLayer:(id)a4;
- (CGRect)previewVisibleRect;
- (CGSize)cameraResolution;
- (id)captureDeviceWithIdentifier:(id)a3;
- (id)captureDeviceWithPosition:(int64_t)a3;
- (unint64_t)cameraCount;
- (void)_refocusOnPoint:(CGPoint)a3 focusMode:(int64_t)a4 exposure:(BOOL)a5;
- (void)cacheCameraResolution:(id)a3;
- (void)cameraSessionWasInterrupted:(id)a3;
- (void)changeCameraConfiguration;
- (void)highISOAdjustExposure;
- (void)refocusOnPoint:(CGPoint)a3 exposure:(BOOL)a4;
- (void)resetFocus;
- (void)setPreviewOrientation:(int64_t)a3;
- (void)setupCameraSession;
- (void)setupCameraSessionWithCaptureDevice:(id)a3;
- (void)setupHighISO:(id)a3;
- (void)startRunning;
- (void)stopRunning;
- (void)teardownCameraSession;
@end

@implementation CRDefaultCaptureSessionManager

- (void)stopRunning
{
  v3 = [(CRDefaultCaptureSessionManager *)self inputPortFormatObserver];

  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = [(CRDefaultCaptureSessionManager *)self inputPortFormatObserver];
    v6 = *MEMORY[0x277CE58B0];
    v7 = [(CRDefaultCaptureSessionManager *)self inputPortFormatSender];
    [v4 removeObserver:v5 name:v6 object:v7];

    [(CRDefaultCaptureSessionManager *)self setInputPortFormatObserver:0];
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:self name:*MEMORY[0x277CE59C8] object:0];

  v9 = [(CRDefaultCaptureSessionManager *)self captureSession];
  [v9 stopRunning];
}

- (void)cacheCameraResolution:(id)a3
{
  v4 = [a3 formatDescription];
  if (v4)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(v4);

    [(CRDefaultCaptureSessionManager *)self setCameraResolution:Dimensions.width, Dimensions.height];
  }
}

- (void)startRunning
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(CRDefaultCaptureSessionManager *)self inputPortFormatObserver];

  v4 = MEMORY[0x277CE58B0];
  if (v3)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = [(CRDefaultCaptureSessionManager *)self inputPortFormatObserver];
    v7 = *v4;
    v8 = [(CRDefaultCaptureSessionManager *)self inputPortFormatSender];
    [v5 removeObserver:v6 name:v7 object:v8];

    [(CRDefaultCaptureSessionManager *)self setInputPortFormatObserver:0];
  }

  [(CRDefaultCaptureSessionManager *)self changeCameraConfiguration];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel_cameraSessionWasInterrupted_ name:*MEMORY[0x277CE59C8] object:0];

  v10 = [(CRDefaultCaptureSessionManager *)self captureSession];
  [v10 startRunning];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  v12 = [v11 ports];

  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [v18 mediaType];
        v20 = [v19 isEqualToString:v16];

        if (v20)
        {
          [(CRDefaultCaptureSessionManager *)self cacheCameraResolution:v18];
          [(CRDefaultCaptureSessionManager *)self setInputPortFormatSender:v18];
          v21 = [MEMORY[0x277CCAB98] defaultCenter];
          v22 = *MEMORY[0x277CE58B0];
          v23 = [MEMORY[0x277CCABD8] mainQueue];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __46__CRDefaultCaptureSessionManager_startRunning__block_invoke;
          v25[3] = &unk_278EAAAD0;
          v25[4] = self;
          v25[5] = v18;
          v24 = [v21 addObserverForName:v22 object:v18 queue:v23 usingBlock:v25];
          [(CRDefaultCaptureSessionManager *)self setInputPortFormatObserver:v24];

          goto LABEL_13;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
  v2 = [(CRDefaultCaptureSessionManager *)self captureSession];
  v3 = [v2 isRunning];

  return v3;
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

- (void)setupCameraSessionWithCaptureDevice:(id)a3
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRDefaultCaptureSessionManager *)self targetVideoFormat];
  [(CRDefaultCaptureSessionManager *)self stopRunning];
  [(CRDefaultCaptureSessionManager *)self setCameraResolution:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v6 = [(CRDefaultCaptureSessionManager *)self captureSession];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CE5B38]);
    [(CRDefaultCaptureSessionManager *)self setCaptureSession:v7];
  }

  v8 = [(CRDefaultCaptureSessionManager *)self captureSession];
  v9 = [v8 isMultitaskingCameraAccessSupported];

  if (v9)
  {
    v10 = [(CRDefaultCaptureSessionManager *)self captureSession];
    [v10 setMultitaskingCameraAccessEnabled:1];
  }

  v91 = 0;
  v11 = [v4 lockForConfiguration:&v91];
  v12 = v91;
  v13 = v12;
  if (!v11)
  {
    NSLog(&cfstr_FailedToObtain.isa, v12);
LABEL_51:
    v78 = [(CRDefaultCaptureSessionManager *)self deviceInput];
    v79 = [v78 device];
    -[CRDefaultCaptureSessionManager setCameraPosition:](self, "setCameraPosition:", [v79 position]);

    v51 = [(CRDefaultCaptureSessionManager *)self deviceInput];
    v80 = [v51 device];
    v81 = [v80 uniqueID];
    [(CRDefaultCaptureSessionManager *)self setCurrentDeviceID:v81];

    goto LABEL_52;
  }

  v85 = v12;
  v14 = [(CRDefaultCaptureSessionManager *)self captureSession];
  [v14 beginConfiguration];

  v15 = [(CRDefaultCaptureSessionManager *)self captureSession];
  v16 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  [v15 removeInput:v16];

  v17 = [(CRDefaultCaptureSessionManager *)self captureSession];
  v18 = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
  [v17 removeOutput:v18];

  v90 = 0;
  v19 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:v4 error:&v90];
  v84 = v90;
  [(CRDefaultCaptureSessionManager *)self setDeviceInput:v19];

  v20 = [(CRDefaultCaptureSessionManager *)self captureSession];
  v21 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  v22 = [v20 canAddInput:v21];

  if (v22)
  {
    v23 = [(CRDefaultCaptureSessionManager *)self captureSession];
    v24 = [(CRDefaultCaptureSessionManager *)self deviceInput];
    [v23 addInput:v24];
  }

  v25 = [(CRDefaultCaptureSessionManager *)self cameraMode];
  v26 = *MEMORY[0x277CE59A8];

  if (v25 == v26)
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v83 = v4;
    v35 = [v4 formats];
    v36 = [v35 countByEnumeratingWithState:&v86 objects:v93 count:16];
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

      v32 = v52;
      v38 = v52;
LABEL_39:
      [v83 setActiveFormat:v32];
      Dimensions = CMVideoFormatDescriptionGetDimensions([v32 formatDescription]);
      [(CRDefaultCaptureSessionManager *)self setCameraResolution:Dimensions.width, Dimensions.height];
      [v83 setProvidesStortorgetMetadata:1];
      [(CRDefaultCaptureSessionManager *)self setupHighISO:v32];

LABEL_40:
LABEL_41:
      v54 = objc_alloc(MEMORY[0x277CE5B68]);
      v55 = [(CRDefaultCaptureSessionManager *)self captureSession];
      v56 = [v54 initWithSession:v55];
      [(CRDefaultCaptureSessionManager *)self setAvfPreviewLayer:v56];

      v57 = objc_alloc_init(MEMORY[0x277CE5B60]);
      v58 = MEMORY[0x277CBEAC0];
      v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
      v60 = [v58 dictionaryWithObject:v59 forKey:*MEMORY[0x277CC4E30]];
      [v57 setVideoSettings:v60];

      [v57 setAlwaysDiscardsLateVideoFrames:1];
      [(CRDefaultCaptureSessionManager *)self setCaptureVideoDataOutput:v57];
      v61 = dispatch_queue_create("com.apple.CoreRecognition.videoQueue", 0);
      v62 = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
      v63 = [(CRDefaultCaptureSessionManager *)self captureSessionDelegate];
      [v62 setSampleBufferDelegate:v63 queue:v61];

      v4 = v83;
      if ([(CRDefaultCaptureSessionManager *)self enableMetadataOutput])
      {
        v64 = objc_alloc_init(MEMORY[0x277CE5B00]);
        v65 = [(CRDefaultCaptureSessionManager *)self captureSession];
        v66 = [v65 canAddOutput:v64];

        if (v66)
        {
          v67 = [(CRDefaultCaptureSessionManager *)self captureSession];
          [v67 addOutput:v64];
        }

        v68 = [(CRDefaultCaptureSessionManager *)self captureSessionMetadataDelegate];
        [v64 setMetadataObjectsDelegate:v68 queue:v61];

        v92 = *MEMORY[0x277CE5A80];
        v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
        [v64 setMetadataObjectTypes:v69];
      }

      v70 = [(CRDefaultCaptureSessionManager *)self captureSession];
      v71 = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
      v72 = [v70 canAddOutput:v71];

      if (v72)
      {
        v73 = [(CRDefaultCaptureSessionManager *)self captureSession];
        v74 = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
        [v73 addOutput:v74];
      }

      v75 = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
      v76 = [v75 connectionWithMediaType:*MEMORY[0x277CE5EA8]];

      if ([v76 isCameraIntrinsicMatrixDeliverySupported])
      {
        [v76 setCameraIntrinsicMatrixDeliveryEnabled:1];
      }

      else
      {
        NSLog(&cfstr_Cameraintrisic.isa);
      }

      v77 = [(CRDefaultCaptureSessionManager *)self captureSession];
      [v77 commitConfiguration];

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
        objc_enumerationMutation(v35);
      }

      v41 = *(*(&v86 + 1) + 8 * v40);
      v42 = [v41 formatDescription];
      MediaSubType = CMFormatDescriptionGetMediaSubType(v42);
      v44 = CMVideoFormatDescriptionGetDimensions(v42);
      if (v38 || MediaSubType != v5)
      {
        if (MediaSubType != v5)
        {
          goto LABEL_29;
        }

        if (v44.width > CMVideoFormatDescriptionGetDimensions([v38 formatDescription]).width)
        {
          v46 = self;
          v47 = v5;
          v48 = v35;
          v49 = v41;

          v38 = v49;
          v35 = v48;
          v5 = v47;
          self = v46;
          v39 = v82;
        }
      }

      else
      {
        v38 = v41;
      }

      if (v44 == 0x99000000CC0 && MediaSubType == v5)
      {
        v32 = v41;

        if (v32)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

LABEL_29:
      if (v37 == ++v40)
      {
        v37 = [v35 countByEnumeratingWithState:&v86 objects:v93 count:16];
        if (v37)
        {
          goto LABEL_14;
        }

        goto LABEL_36;
      }
    }
  }

  v27 = [(CRDefaultCaptureSessionManager *)self captureSession];
  v28 = [(CRDefaultCaptureSessionManager *)self cameraMode];
  v29 = [v27 canSetSessionPreset:v28];

  if (v29)
  {
    v30 = [(CRDefaultCaptureSessionManager *)self captureSession];
    v31 = [(CRDefaultCaptureSessionManager *)self cameraMode];
    [v30 setSessionPreset:v31];

    v83 = v4;
    v32 = [v4 activeFormat];
    v33 = [v32 formatDescription];
    [(CRDefaultCaptureSessionManager *)self setupHighISO:v32];
    v34 = CMVideoFormatDescriptionGetDimensions(v33);
    [(CRDefaultCaptureSessionManager *)self setCameraResolution:v34.width, v34.height];
    goto LABEL_40;
  }

  NSLog(&cfstr_NotSupported.isa);
  v50 = [(CRDefaultCaptureSessionManager *)self captureSession];
  [v50 commitConfiguration];

  [v4 unlockForConfiguration];
  v51 = v84;
  v13 = v85;
LABEL_52:
}

- (void)teardownCameraSession
{
  v3 = [(CRDefaultCaptureSessionManager *)self captureSession];
  v4 = [(CRDefaultCaptureSessionManager *)self captureVideoDataOutput];
  [v3 removeOutput:v4];

  v5 = [(CRDefaultCaptureSessionManager *)self captureSession];
  v6 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  [v5 removeInput:v6];

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
  v3 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  v4 = [v3 device];

  v5 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  v6 = [v5 device];
  v11 = 0;
  [v6 lockForConfiguration:&v11];
  v7 = v11;

  if ([v4 hasTorch] && objc_msgSend(v4, "isTorchModeSupported:", -[CRDefaultCaptureSessionManager torchMode](self, "torchMode")) && -[CRDefaultCaptureSessionManager isRearCamera](self, "isRearCamera"))
  {
    [v4 setTorchMode:{-[CRDefaultCaptureSessionManager torchMode](self, "torchMode")}];
  }

  if ([v4 isFocusPointOfInterestSupported] && objc_msgSend(v4, "isFocusModeSupported:", -[CRDefaultCaptureSessionManager focusMode](self, "focusMode")))
  {
    [v4 setFocusPointOfInterest:{0.5, 0.5}];
    [v4 setFocusMode:{-[CRDefaultCaptureSessionManager focusMode](self, "focusMode")}];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 isAutoFocusRangeRestrictionSupported])
  {
    [v4 setAutoFocusRangeRestriction:1];
  }

  if ([v4 isWhiteBalanceModeSupported:{-[CRDefaultCaptureSessionManager whiteBalanceMode](self, "whiteBalanceMode")}])
  {
    [v4 setWhiteBalanceMode:{-[CRDefaultCaptureSessionManager whiteBalanceMode](self, "whiteBalanceMode")}];
  }

  if ([v4 isExposurePointOfInterestSupported] && objc_msgSend(v4, "isExposureModeSupported:", -[CRDefaultCaptureSessionManager exposureMode](self, "exposureMode")))
  {
    [v4 setExposurePointOfInterest:{0.5, 0.5}];
    [v4 setExposureMode:{-[CRDefaultCaptureSessionManager exposureMode](self, "exposureMode")}];
  }

  v8 = *MEMORY[0x277CE5DD8];
  v9 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [v9 setVideoGravity:v8];

  v10 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [v10 setOpaque:1];

  [v4 unlockForConfiguration];
  [MEMORY[0x277CD9FF0] commit];
}

- (BOOL)isRearCamera
{
  v2 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  v3 = [v2 device];
  v4 = [v3 position] == 1;

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

  v6 = [v5 devices];
  v7 = [v6 count];

  return v7;
}

- (id)captureDeviceWithPosition:(int64_t)a3
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
        v15 = [v14 position];
        if (!a3 || v15 == a3)
        {
          if (-[CRDefaultCaptureSessionManager targetFocusDistance](self, "targetFocusDistance") < 1 || (v16 = [v14 minimumFocusDistance], v16 <= -[CRDefaultCaptureSessionManager targetFocusDistance](self, "targetFocusDistance")))
          {
            v20 = CROSLogForCategory(8);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v14 localizedName];
              *buf = 138412290;
              v52 = v21;
              _os_log_impl(&dword_2477E8000, v20, OS_LOG_TYPE_DEFAULT, "Selecting device %@", buf, 0xCu);
            }

            v22 = v14;
            v23 = v40;
            goto LABEL_38;
          }

          v17 = CROSLogForCategory(8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v14 localizedName];
            *buf = 138412290;
            v52 = v18;
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
  v23 = [v24 discoverySessionWithDeviceTypes:v25 mediaType:v39 position:a3];

  v26 = [v23 devices];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = v26;
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
        v32 = [v31 position];
        if (!a3 || v32 == a3)
        {
          if (-[CRDefaultCaptureSessionManager targetFocusDistance](self, "targetFocusDistance") < 1 || (v33 = [v31 minimumFocusDistance], v33 <= -[CRDefaultCaptureSessionManager targetFocusDistance](self, "targetFocusDistance")))
          {
            if ([v31 isFocusPointOfInterestSupported])
            {
              v36 = CROSLogForCategory(8);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v37 = [v31 localizedName];
                *buf = 138412290;
                v52 = v37;
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
    v35 = [v11 localizedName];
    *buf = 138412290;
    v52 = v35;
    _os_log_impl(&dword_2477E8000, v34, OS_LOG_TYPE_DEFAULT, "Falling back to device %@", buf, 0xCu);
  }

  v11 = v11;
  v22 = v11;
LABEL_38:

  return v22;
}

- (id)captureDeviceWithIdentifier:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
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
        v13 = [v12 uniqueID];
        v14 = [v13 isEqualToString:v3];

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
  v3 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  v4 = [v3 device];
  v5 = [v4 position];

  if (v5 == 1)
  {
    v6 = 2;
  }

  else
  {
    if (v5 != 2)
    {
      return 0;
    }

    v6 = 1;
  }

  return [(CRDefaultCaptureSessionManager *)self switchToCamera:v6];
}

- (BOOL)switchToCameraWithDeviceID:(id)a3
{
  v4 = [(CRDefaultCaptureSessionManager *)self captureDeviceWithIdentifier:a3];
  if (v4)
  {
    [(CRDefaultCaptureSessionManager *)self setupCameraSessionWithCaptureDevice:v4];
  }

  return v4 != 0;
}

- (BOOL)switchToCamera:(int64_t)a3
{
  if ([(CRDefaultCaptureSessionManager *)self cameraCount]< 2)
  {
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v5 = objc_alloc(MEMORY[0x277CE5AD8]);
    v6 = [(CRDefaultCaptureSessionManager *)self backFacingCamera];
    v42 = 0;
    v7 = &v42;
    v8 = &v42;
    goto LABEL_7;
  }

  if (a3 != 2)
  {
LABEL_5:
    LOBYTE(v9) = 0;
    return v9;
  }

  v5 = objc_alloc(MEMORY[0x277CE5AD8]);
  v6 = [(CRDefaultCaptureSessionManager *)self frontFacingCamera];
  v43 = 0;
  v7 = &v43;
  v8 = &v43;
LABEL_7:
  v10 = [v5 initWithDevice:v6 error:v8];
  v11 = *v7;

  if (v10)
  {
    [(CRDefaultCaptureSessionManager *)self stopRunning];
    v12 = [v10 device];
    v41 = 0;
    v9 = [v12 lockForConfiguration:&v41];
    v13 = v41;

    if (v9)
    {
      v14 = [(CRDefaultCaptureSessionManager *)self captureSession];
      [v14 beginConfiguration];

      v15 = [(CRDefaultCaptureSessionManager *)self captureSession];
      v16 = [(CRDefaultCaptureSessionManager *)self deviceInput];
      [v15 removeInput:v16];

      v17 = [v10 device];
      v18 = *MEMORY[0x277CE5980];
      v19 = [v17 supportsAVCaptureSessionPreset:*MEMORY[0x277CE5980]];

      if ((v19 & 1) != 0 || ([v10 device], v20 = objc_claimAutoreleasedReturnValue(), v18 = *MEMORY[0x277CE5960], v21 = objc_msgSend(v20, "supportsAVCaptureSessionPreset:", *MEMORY[0x277CE5960]), v20, v21))
      {
        v22 = [(CRDefaultCaptureSessionManager *)self captureSession];
        [v22 setSessionPreset:v18];
      }

      if ([(CRDefaultCaptureSessionManager *)self enableMetadataOutput])
      {
        v23 = [v10 device];
        v24 = *MEMORY[0x277CE5960];
        v25 = [v23 supportsAVCaptureSessionPreset:*MEMORY[0x277CE5960]];

        v26 = [(CRDefaultCaptureSessionManager *)self captureSession];
        v27 = v26;
        if (v25)
        {
          v28 = v24;
        }

        else
        {
          v28 = *MEMORY[0x277CE5988];
        }

        [v26 setSessionPreset:v28];
      }

      v29 = [(CRDefaultCaptureSessionManager *)self captureSession];
      v30 = [v29 canAddInput:v10];

      v31 = [(CRDefaultCaptureSessionManager *)self captureSession];
      v32 = v31;
      if (v30)
      {
        [v31 addInput:v10];

        [(CRDefaultCaptureSessionManager *)self setDeviceInput:v10];
      }

      else
      {
        v33 = [(CRDefaultCaptureSessionManager *)self deviceInput];
        [v32 addInput:v33];
      }

      v34 = [v10 device];
      v35 = [v34 activeFormat];

      [(CRDefaultCaptureSessionManager *)self setupHighISO:v35];
      v36 = [(CRDefaultCaptureSessionManager *)self captureSession];
      [v36 commitConfiguration];

      v37 = [v10 device];
      [v37 unlockForConfiguration];

      v38 = [(CRDefaultCaptureSessionManager *)self deviceInput];
      v39 = [v38 device];
      -[CRDefaultCaptureSessionManager setCameraPosition:](self, "setCameraPosition:", [v39 position]);

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

- (void)_refocusOnPoint:(CGPoint)a3 focusMode:(int64_t)a4 exposure:(BOOL)a5
{
  y = a3.y;
  x = a3.x;
  v10 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  v11 = [v10 device];

  if (([v11 isAdjustingFocus] & 1) == 0)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__CRDefaultCaptureSessionManager__refocusOnPoint_focusMode_exposure___block_invoke;
    v12[3] = &unk_278EAAAF8;
    v12[4] = self;
    v13 = v11;
    v14 = a4;
    v15 = x;
    v16 = y;
    v17 = a5;
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

- (void)refocusOnPoint:(CGPoint)a3 exposure:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  v9 = [v8 device];
  v10 = [v9 isFocusPointOfInterestSupported];

  if (v10)
  {
    v11 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
    [v11 captureDevicePointOfInterestForPoint:{x, y}];
    v13 = v12;
    v15 = v14;

    v16 = [(CRDefaultCaptureSessionManager *)self deviceInput];
    v17 = [v16 device];
    [v17 focusPointOfInterest];
    *&v18 = (v19 - v15) * (v19 - v15) + (v18 - v13) * (v18 - v13);
    v20 = sqrtf(*&v18);

    if (v20 <= 0.05)
    {
      v22 = [(CRDefaultCaptureSessionManager *)self deviceInput];
      v23 = [v22 device];
      v24 = [v23 isAdjustingFocus];

      if ((v24 & 1) == 0)
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
      v21 = [(CRDefaultCaptureSessionManager *)self focusMode];

      [(CRDefaultCaptureSessionManager *)self _refocusOnPoint:v21 focusMode:v4 exposure:v13, v15];
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
  v3 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  v4 = [v3 device];
  v5 = [v4 isFocusPointOfInterestSupported];

  if (v5)
  {
    v13 = [(CRDefaultCaptureSessionManager *)self deviceInput];
    v6 = [v13 device];
    [v6 focusPointOfInterest];
    if (v7 == 0.5)
    {
    }

    else
    {
      v8 = [(CRDefaultCaptureSessionManager *)self deviceInput];
      v9 = [v8 device];
      [v9 focusPointOfInterest];
      v11 = v10;

      if (v11 != 0.5)
      {
        v12 = [(CRDefaultCaptureSessionManager *)self focusMode];

        [(CRDefaultCaptureSessionManager *)self _refocusOnPoint:v12 focusMode:1 exposure:0.5, 0.5];
      }
    }
  }
}

- (void)setPreviewOrientation:(int64_t)a3
{
  if ((a3 - 1) <= 3)
  {
    v6 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
    v5 = [v6 connection];
    [v5 setVideoOrientation:a3];
  }
}

- (BOOL)isAdjustingFocus
{
  v2 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  v3 = [v2 device];
  v4 = [v3 isAdjustingFocus];

  return v4;
}

- (CGPoint)convertCameraPoint:(CGPoint)a3 fromLayer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [v8 convertPoint:v7 fromLayer:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [v13 captureDevicePointOfInterestForPoint:{v10, v12}];
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

- (CGPoint)convertCameraPoint:(CGPoint)a3 toLayer:(id)a4
{
  [(CRDefaultCaptureSessionManager *)self convertCameraPoint:a4 toLayer:0 flipped:a3.x, a3.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertCameraPoint:(CGPoint)a3 toLayer:(id)a4 flipped:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  v9 = a4;
  if (v5)
  {
    [(CRDefaultCaptureSessionManager *)self cameraResolution];
    y = v10 - y;
  }

  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v12 = x / v11;
  [(CRDefaultCaptureSessionManager *)self cameraResolution];
  v14 = y / v13;
  v15 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [v15 pointForCaptureDevicePointOfInterest:{v12, v14}];
  v17 = v16;
  v19 = v18;

  v20 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [v20 convertPoint:v9 toLayer:{v17, v19}];
  v22 = v21;
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.y = v26;
  result.x = v25;
  return result;
}

- (CGPoint)convertCameraPointOCR:(CGPoint)a3 toLayer:(id)a4 flipped:(BOOL)a5
{
  x = a3.x;
  if (a5)
  {
    y = 1.0 - a3.y;
  }

  else
  {
    y = a3.y;
  }

  v8 = a4;
  v9 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [v9 pointForCaptureDevicePointOfInterest:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [v14 convertPoint:v8 toLayer:{v11, v13}];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGRect)convertCameraRect:(CGRect)a3 fromLayer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  [v10 convertRect:v9 fromLayer:{x, y, width, height}];
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
    v19 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
    [v19 metadataOutputRectOfInterestForRect:{v12, v14, v16, v18}];
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

- (void)setupHighISO:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 maxISO];
  [(CRDefaultCaptureSessionManager *)self setMaxISO:?];
  [v4 minISO];
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
  v12 = [(CRDefaultCaptureSessionManager *)self exposure_table];
  *&v12->var2 = xmmword_24783F5C0;
  p_var2 = &v12->var2;
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
      CFNumberGetValue(v18, kCFNumberDoubleType, &v12->var3);
      var3 = v12->var3;
      if (var3 > 1.0)
      {
        v12->var3 = 1.0 / var3;
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
            v12->var0 = exposure_table_create_lookup_table(v29, v56, v12->var2);
            v12->var1 = v49;
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
  v3 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  v4 = [v3 device];

  [v4 ISO];
  v6 = v5;
  memset(&v39, 0, sizeof(v39));
  if (v4)
  {
    [v4 exposureDuration];
  }

  time = v39;
  Seconds = CMTimeGetSeconds(&time);
  [v4 exposureTargetOffset];
  v9 = v8;
  [v4 lensAperture];
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
      [v4 lockForConfiguration:&v36];
      v24 = v36;
      [v4 setExposureMode:2];
      [(CRDefaultCaptureSessionManager *)self setRunningManualExposure:0];
LABEL_24:
      [v4 unlockForConfiguration];
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
  v33 = [v4 lockForConfiguration:&v35];
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
    [v4 setExposureModeCustomWithDuration:&time ISO:v34 completionHandler:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v40.value), LODWORD(v31)))}];
    goto LABEL_24;
  }

LABEL_16:
}

- (BOOL)isFocusPointOfInterestSupported
{
  v2 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  v3 = [v2 device];
  v4 = [v3 isFocusPointOfInterestSupported];

  return v4;
}

- (CGPoint)focusPointOfInterest
{
  v2 = [(CRDefaultCaptureSessionManager *)self deviceInput];
  v3 = [v2 device];
  [v3 focusPointOfInterest];
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
  v2 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  v3 = [v2 connection];
  v4 = [v3 isVideoMirrored];

  return v4;
}

- (CGRect)previewVisibleRect
{
  v3 = [(CRDefaultCaptureSessionManager *)self avfPreviewLayer];
  v4 = [(CRDefaultCaptureSessionManager *)self previewLayer];
  [v4 bounds];
  [v3 metadataOutputRectOfInterestForRect:?];
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

- (void)cameraSessionWasInterrupted:(id)a3
{
  v9 = a3;
  v3 = [v9 name];
  v4 = [v3 isEqualToString:*MEMORY[0x277CE59C8]];

  if (v4)
  {
    v5 = [v9 userInfo];
    v6 = [v5 valueForKey:*MEMORY[0x277CE5950]];
    v7 = [v6 integerValue];

    if ((v7 - 1) > 3)
    {
      v8 = @"CoreRecogntion: Unable to display camera view due to connection inturrupted notification %@";
    }

    else
    {
      v8 = off_278EAAB78[v7 - 1];
    }

    NSLog(&v8->isa, v9);
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