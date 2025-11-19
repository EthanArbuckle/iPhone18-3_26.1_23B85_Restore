@interface HRTFSyncedCaptureSource
- (BOOL)_configureVideoOutputsForDevice:(id)a3 inSession:(id)a4;
- (BOOL)_initialize;
- (BOOL)_verifyCaptureDevice:(id)a3;
- (HRTFSyncedCaptureSource)initWithQueue:(id)a3 options:(id *)a4;
- (HRTFSyncedCaptureSourceDelegate)delegate;
- (void)_handleCaptureSessionNotification:(id)a3;
- (void)dataOutputSynchronizer:(id)a3 didOutputSynchronizedDataCollection:(id)a4;
- (void)startCaptureSession;
- (void)stopCaptureSession;
@end

@implementation HRTFSyncedCaptureSource

- (BOOL)_verifyCaptureDevice:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v5 = [v4 formats];
  v6 = [v5 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v6)
  {
    v7 = v6;
    v50 = v4;
    v51 = 0;
    v8 = 0;
    v9 = *v58;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v58 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v57 + 1) + 8 * i);
        v12 = [v11 supportedDepthDataFormats];
        v13 = [v12 count];

        if (v13)
        {
          v14 = [v11 formatDescription];
          if (CMFormatDescriptionGetMediaSubType(v14) == self->_preferredPixelFormat)
          {
            Dimensions = CMVideoFormatDescriptionGetDimensions(v14);
            v16 = Dimensions;
            if (self->_preferredColorResolutionX >= Dimensions)
            {
              v17 = HIDWORD(Dimensions);
              if (self->_preferredColorResolutionY >= HIDWORD(Dimensions) && Dimensions * HIDWORD(Dimensions) > v8)
              {
                v19 = v11;

                if (self->_preferredColorResolutionX == v16.width)
                {
                  v8 = v16.width * v16.height;
                  v51 = v19;
                  if (self->_preferredColorResolutionY == v17)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {
                  v8 = v16.width * v16.height;
                  v51 = v19;
                }
              }
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v57 objects:v64 count:16];
      v19 = v51;
    }

    while (v7);
LABEL_20:

    v4 = v50;
    if (v19)
    {
      v49 = v19;
      objc_storeStrong(&self->_finalColorFormat, v19);
      if (onceTokenHRTFSyncedCaptureSource != -1)
      {
        [HRTFSyncedCaptureSource _verifyCaptureDevice:];
      }

      v20 = logObjHRTFSyncedCaptureSource;
      if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_INFO))
      {
        finalColorFormat = self->_finalColorFormat;
        v22 = v20;
        v23 = [(AVCaptureDeviceFormat *)finalColorFormat description];
        v24 = [v23 UTF8String];
        *buf = 136315138;
        v63 = v24;
        _os_log_impl(&dword_250984000, v22, OS_LOG_TYPE_INFO, "capture device color format: %s", buf, 0xCu);
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v25 = [v19 supportedDepthDataFormats];
      v26 = [v25 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v26)
      {
        v27 = v26;
        v52 = 0;
        v28 = 0;
        v29 = *v54;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v54 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v53 + 1) + 8 * j);
            v32 = [v31 formatDescription];
            if (CMFormatDescriptionGetMediaSubType(v32) == self->_preferredDepthFormat)
            {
              v33 = CMVideoFormatDescriptionGetDimensions(v32);
              v34 = v33;
              if (self->_preferredDepthResolutionX >= v33)
              {
                v35 = HIDWORD(v33);
                if (self->_preferredDepthResolutionY >= HIDWORD(v33) && v33 * HIDWORD(v33) > v28)
                {
                  v37 = v31;

                  if (self->_preferredDepthResolutionX == v34.width)
                  {
                    v28 = v34.width * v34.height;
                    v52 = v37;
                    if (self->_preferredDepthResolutionY == v35)
                    {
                      goto LABEL_43;
                    }
                  }

                  else
                  {
                    v28 = v34.width * v34.height;
                    v52 = v37;
                  }
                }
              }
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v53 objects:v61 count:16];
          v37 = v52;
        }

        while (v27);
LABEL_43:

        v4 = v50;
        if (v37)
        {
          objc_storeStrong(&self->_finalDepthFormat, v37);
          if (onceTokenHRTFSyncedCaptureSource != -1)
          {
            [HRTFSyncedCaptureSource _verifyCaptureDevice:];
          }

          v38 = v49;
          v39 = logObjHRTFSyncedCaptureSource;
          if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_INFO))
          {
            finalDepthFormat = self->_finalDepthFormat;
            v41 = v39;
            v42 = [(AVCaptureDeviceFormat *)finalDepthFormat description];
            v43 = [v42 UTF8String];
            *buf = 136315138;
            v63 = v43;
            _os_log_impl(&dword_250984000, v41, OS_LOG_TYPE_INFO, "capture device depth format: %s", buf, 0xCu);
          }

          v44 = 1;
LABEL_61:

          goto LABEL_62;
        }
      }

      else
      {
      }

      if (onceTokenHRTFSyncedCaptureSource != -1)
      {
        [HRTFSyncedCaptureSource _verifyCaptureDevice:];
      }

      v38 = v49;
      v46 = logObjHRTFSyncedCaptureSource;
      if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_250984000, v46, OS_LOG_TYPE_ERROR, "failed to verify depth format for capture device", buf, 2u);
      }

      v44 = 0;
      goto LABEL_61;
    }
  }

  else
  {
  }

  if (onceTokenHRTFSyncedCaptureSource != -1)
  {
    [HRTFSyncedCaptureSource _verifyCaptureDevice:];
  }

  v45 = logObjHRTFSyncedCaptureSource;
  if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_250984000, v45, OS_LOG_TYPE_ERROR, "failed to verify color format for capture device", buf, 2u);
  }

  v44 = 0;
LABEL_62:

  v47 = *MEMORY[0x277D85DE8];
  return v44;
}

- (BOOL)_configureVideoOutputsForDevice:(id)a3 inSession:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  [v5 beginConfiguration];
  v6 = objc_alloc_init(MEMORY[0x277CE5B60]);
  [v6 setAlwaysDiscardsLateVideoFrames:1];
  if ([v5 canAddOutput:v6])
  {
    [v5 addOutput:v6];
    v7 = [v6 connectionWithMediaType:*MEMORY[0x277CE5EA8]];
    v8 = v7;
    if (v7)
    {
      [v7 setCameraIntrinsicMatrixDeliveryEnabled:{objc_msgSend(v7, "isCameraIntrinsicMatrixDeliverySupported")}];
      if ([v8 isVideoOrientationSupported])
      {
        [v8 setVideoOrientation:1];
      }

      [v8 setEnabled:1];
    }
  }

  objc_storeStrong(&self->_colorDataOutput, v6);
  v9 = objc_alloc_init(MEMORY[0x277CE5AC0]);
  [v9 setFilteringEnabled:0];
  [v9 setAlwaysDiscardsLateDepthData:1];
  if ([v5 canAddOutput:v9])
  {
    [v5 addOutput:v9];
    v10 = [v9 connectionWithMediaType:*MEMORY[0x277CE5E60]];
    v11 = v10;
    if (v10)
    {
      if ([v10 isVideoOrientationSupported])
      {
        [v11 setVideoOrientation:1];
      }

      [v11 setEnabled:1];
    }
  }

  objc_storeStrong(&self->_depthDataOutput, v9);
  v12 = objc_alloc_init(MEMORY[0x277CE5B00]);
  if ([v5 canAddOutput:v12])
  {
    [v5 addOutput:v12];
    v13 = [(AVCaptureMetadataOutput *)v12 availableMetadataObjectTypes];
    v14 = *MEMORY[0x277CE5A50];
    v15 = [v13 containsObject:*MEMORY[0x277CE5A50]];

    if (v15)
    {
      v25[0] = v14;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      [(AVCaptureMetadataOutput *)v12 setMetadataObjectTypes:v16];
    }
  }

  metadataOutput = self->_metadataOutput;
  self->_metadataOutput = v12;
  v18 = v12;

  [v5 commitConfiguration];
  v19 = objc_alloc(MEMORY[0x277CE5AB8]);
  v20 = [v5 outputs];
  v21 = [v19 initWithDataOutputs:v20];

  [(AVCaptureDataOutputSynchronizer *)v21 setDelegate:self queue:self->_queue];
  outputSynchronizer = self->_outputSynchronizer;
  self->_outputSynchronizer = v21;

  v23 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_initialize
{
  v48[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CE5AD0];
  v48[0] = *MEMORY[0x277CE5868];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
  v5 = [v3 discoverySessionWithDeviceTypes:v4 mediaType:*MEMORY[0x277CE5EA8] position:2];

  v6 = [v5 devices];
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    if (onceTokenHRTFSyncedCaptureSource != -1)
    {
      [HRTFSyncedCaptureSource _verifyCaptureDevice:];
    }

    v14 = logObjHRTFSyncedCaptureSource;
    if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_250984000, v14, OS_LOG_TYPE_ERROR, "no available device found", buf, 2u);
    }

    goto LABEL_26;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = *v42;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v42 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v41 + 1) + 8 * i);
      if ([(HRTFSyncedCaptureSource *)self _verifyCaptureDevice:v13])
      {
        v15 = v13;

        if (!v15)
        {
          goto LABEL_26;
        }

        v40 = 0;
        v16 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:v15 error:&v40];
        v17 = v40;
        if (v16)
        {
          v18 = v17 == 0;
        }

        else
        {
          v18 = 0;
        }

        if (!v18)
        {
          v19 = v17;
          if (onceTokenHRTFSyncedCaptureSource != -1)
          {
            [HRTFSyncedCaptureSource _verifyCaptureDevice:];
          }

          v20 = logObjHRTFSyncedCaptureSource;
          if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_ERROR))
          {
            v21 = v20;
            v22 = [v19 description];
            v23 = [v22 UTF8String];
            *buf = 136315138;
            v46 = v23;
            _os_log_impl(&dword_250984000, v21, OS_LOG_TYPE_ERROR, "failed to create input device: %s", buf, 0xCu);
          }

          v24 = 0;
          goto LABEL_48;
        }

        v27 = objc_alloc_init(MEMORY[0x277CE5B38]);
        [v27 beginConfiguration];
        if ([v27 canAddInput:v16])
        {
          [v27 addInput:v16];
          v39 = 0;
          [v15 lockForConfiguration:&v39];
          v28 = v39;
          if (v28)
          {
            v19 = v28;
            if (onceTokenHRTFSyncedCaptureSource != -1)
            {
              [HRTFSyncedCaptureSource _verifyCaptureDevice:];
            }

            v29 = logObjHRTFSyncedCaptureSource;
            if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_ERROR))
            {
              v30 = v29;
              v31 = [v19 description];
              v32 = [v31 UTF8String];
              *buf = 136315138;
              v46 = v32;
              _os_log_impl(&dword_250984000, v30, OS_LOG_TYPE_ERROR, "failed to lock device for configuration: %s", buf, 0xCu);
            }

            goto LABEL_46;
          }

          [v15 setActiveFormat:self->_finalColorFormat];
          [v15 setActiveDepthDataFormat:self->_finalDepthFormat];
          [v15 unlockForConfiguration];
          v34 = [(HRTFSyncedCaptureSource *)self _configureVideoOutputsForDevice:v15 inSession:v27];
          [v27 commitConfiguration];
          if (v34)
          {
            v35 = [objc_alloc(MEMORY[0x277CE5B68]) initWithSession:v27];
            previewLayer = self->_previewLayer;
            self->_previewLayer = v35;

            objc_storeStrong(&self->_captureSession, v27);
            v37 = HRTFLogObjectForCategory_HRTFSyncedCaptureSource();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_250984000, v37, OS_LOG_TYPE_INFO, "successfully configured capture session", buf, 2u);
            }

            v19 = 0;
            v24 = 1;
            goto LABEL_47;
          }

          v38 = HRTFLogObjectForCategory_HRTFSyncedCaptureSource();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_250984000, v38, OS_LOG_TYPE_ERROR, "failed to config outputs", buf, 2u);
          }
        }

        else
        {
          [v27 commitConfiguration];
          if (onceTokenHRTFSyncedCaptureSource != -1)
          {
            [HRTFSyncedCaptureSource _verifyCaptureDevice:];
          }

          v33 = logObjHRTFSyncedCaptureSource;
          if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_250984000, v33, OS_LOG_TYPE_ERROR, "input device not usable", buf, 2u);
          }
        }

        v19 = 0;
LABEL_46:
        v24 = 0;
LABEL_47:

LABEL_48:
        goto LABEL_27;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_11:

LABEL_26:
  v24 = 0;
LABEL_27:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (HRTFSyncedCaptureSource)initWithQueue:(id)a3 options:(id *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HRTFSyncedCaptureSource;
  v8 = [(HRTFSyncedCaptureSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a3);
    v9->_preferredPixelFormat = a4->var0;
    v9->_preferredDepthFormat = a4->var1;
    v9->_preferredColorResolutionX = a4->var2;
    v9->_preferredColorResolutionY = a4->var3;
    v9->_preferredDepthResolutionX = a4->var4;
    v9->_preferredDepthResolutionY = a4->var5;
    if (![(HRTFSyncedCaptureSource *)v9 _initialize])
    {

      v9 = 0;
    }
  }

  return v9;
}

- (void)dataOutputSynchronizer:(id)a3 didOutputSynchronizedDataCollection:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:self->_colorDataOutput];
  v7 = [v5 objectForKeyedSubscript:self->_depthDataOutput];
  v8 = [v5 objectForKeyedSubscript:self->_metadataOutput];
  v9 = v8;
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    v11 = [v8 metadataObjects];
    if (!v11)
    {
      goto LABEL_17;
    }

    v12 = v11;
    v13 = [v9 metadataObjects];
    v14 = [v13 count];

    if (v14)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = [v9 metadataObjects];
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v16)
      {
        v28 = v6;
        v17 = *v30;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v30 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v29 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              colorDataOutput = self->_colorDataOutput;
              v21 = *MEMORY[0x277CE5EA8];
              v22 = v19;
              v23 = [(AVCaptureVideoDataOutput *)colorDataOutput connectionWithMediaType:v21];
              v16 = [(AVCaptureVideoDataOutput *)self->_colorDataOutput transformedMetadataObjectForMetadataObject:v22 connection:v23];

              goto LABEL_19;
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

LABEL_19:
        v6 = v28;
      }
    }

    else
    {
LABEL_17:
      v16 = 0;
    }

    if (onceTokenHRTFSyncedCaptureSource != -1)
    {
      [HRTFSyncedCaptureSource _verifyCaptureDevice:];
    }

    v24 = logObjHRTFSyncedCaptureSource;
    if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v34 = v16 != 0;
      _os_log_impl(&dword_250984000, v24, OS_LOG_TYPE_DEBUG, "received synced output frame, has face object: %u", buf, 8u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v26 = objc_loadWeakRetained(&self->_delegate);
      [v26 didReceiveVideoData:self->_previewLayer colorData:v6 depthData:v7 faceObject:v16];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handleCaptureSessionNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:*MEMORY[0x277CE5930]];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 didStartCaptureSessionWithError:0];
    }
  }

  else
  {
    v9 = [v4 name];
    v10 = [v9 isEqualToString:*MEMORY[0x277CE59C0]];

    if (v10)
    {
      v11 = [v4 userInfo];
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CE5940]];

      if (onceTokenHRTFSyncedCaptureSource != -1)
      {
        HRTFLogObjectForCategory_HRTFSyncedCaptureSource_cold_1();
      }

      v13 = logObjHRTFSyncedCaptureSource;
      if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v12;
        _os_log_impl(&dword_250984000, v13, OS_LOG_TYPE_INFO, "received AVCaptureSessionRuntimeErrorNotification: %@", &v17, 0xCu);
      }

      if (v12)
      {
        v14 = objc_loadWeakRetained(&self->_delegate);

        if (v14)
        {
          v15 = objc_loadWeakRetained(&self->_delegate);
          [v15 didStartCaptureSessionWithError:v12];
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startCaptureSession
{
  if (onceTokenHRTFSyncedCaptureSource != -1)
  {
    HRTFLogObjectForCategory_HRTFSyncedCaptureSource_cold_1();
  }

  v3 = logObjHRTFSyncedCaptureSource;
  if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_250984000, v3, OS_LOG_TYPE_INFO, "starting capture session\n", v6, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__handleCaptureSessionNotification_ name:*MEMORY[0x277CE5930] object:self->_captureSession];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__handleCaptureSessionNotification_ name:*MEMORY[0x277CE59C0] object:self->_captureSession];

  [(AVCaptureSession *)self->_captureSession startRunning];
}

- (void)stopCaptureSession
{
  if ([(AVCaptureSession *)self->_captureSession isRunning])
  {
    if (onceTokenHRTFSyncedCaptureSource != -1)
    {
      HRTFLogObjectForCategory_HRTFSyncedCaptureSource_cold_1();
    }

    v3 = logObjHRTFSyncedCaptureSource;
    if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_250984000, v3, OS_LOG_TYPE_INFO, "stopping capture session\n", v6, 2u);
    }

    [(AVCaptureSession *)self->_captureSession stopRunning];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x277CE5930] object:self->_captureSession];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:self name:*MEMORY[0x277CE59C0] object:self->_captureSession];
  }
}

- (HRTFSyncedCaptureSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end