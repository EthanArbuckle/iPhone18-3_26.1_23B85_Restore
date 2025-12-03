@interface HRTFEnrollmentSession
- (BOOL)_verifyCaptureDevice:(id)device;
- (HRTFEnrollmentSession)init;
- (HRTFEnrollmentSession)initWithCameraSession:(BOOL)session;
- (HRTFEnrollmentSessionDelegate)delegate;
- (id)getMovFileName;
- (id)getRecordingFolder;
- (id)getRecordingURL;
- (void)dealloc;
- (void)didReceiveVideoData:(id)data colorData:(id)colorData depthData:(id)depthData faceObject:(id)object;
- (void)didStartCaptureSessionWithError:(id)error;
- (void)downloadHRTFAsset:(unint64_t)asset withCompletion:(id)completion;
- (void)downloadHRTFAssetV2:(unint64_t)v2 withCompletion:(id)completion;
- (void)initializeDevice;
- (void)pauseSession;
- (void)requestResultDataAtOffset:(unint64_t)offset forLength:(unint64_t)length withCompletion:(id)completion;
- (void)resumeSession;
- (void)startSession:(BOOL)session then:(id)then;
- (void)startSession:(BOOL)session withAssetPath:(id)path then:(id)then;
- (void)stopSession:(id)session;
- (void)updateResultSize:(unint64_t)size;
- (void)updateState:(unint64_t)state withProgress:(float)progress facePoseStatus:(id)status earPoseStatus:(id)poseStatus errorStatus:(id)errorStatus;
@end

@implementation HRTFEnrollmentSession

- (HRTFEnrollmentSession)init
{
  v15.receiver = self;
  v15.super_class = HRTFEnrollmentSession;
  v2 = [(HRTFEnrollmentSession *)&v15 init];
  if (v2)
  {
    if (init_once != -1)
    {
      [HRTFEnrollmentSession init];
    }

    objc_storeStrong(&v2->_stateInfo, kHRTFIdleStateInfo);
    v2->_paused = 0;
    v3 = dispatch_queue_create("com.apple.HRTFEnrollmentSession", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    *&v2->_preferredPixelFormat = 0x6664657034323066;
    v2->_preferredColorResolution = xmmword_25098F760;
    v2->_preferredDepthResolution = xmmword_25098F770;
    recordingManager = v2->_recordingManager;
    v2->_recordingManager = 0;

    v6 = [HRTFSyncedCaptureSource alloc];
    v7 = v2->_queue;
    v13 = xmmword_25098F780;
    v14 = 0x1E000000280;
    v8 = [(HRTFSyncedCaptureSource *)v6 initWithQueue:v7 options:&v13];
    outputSource = v2->_outputSource;
    v2->_outputSource = v8;

    [(HRTFSyncedCaptureSource *)v2->_outputSource setDelegate:v2];
    Int64 = CFPrefs_GetInt64();
    if (Int64)
    {
      LOBYTE(Int64) = MGGetBoolAnswer();
    }

    v2->_videoCaptureEnabled = Int64;
    assetDownloadPath = v2->_assetDownloadPath;
    v2->_assetDownloadPath = 0;

    [(HRTFEnrollmentSession *)v2 initializeDevice];
  }

  return v2;
}

void __29__HRTFEnrollmentSession_init__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = kHRTFStateInfoStateKey;
  v3[1] = kHRTFStateInfoProgressKey;
  v4[0] = &unk_2862DF2B8;
  v4[1] = &unk_2862DF2D0;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = kHRTFIdleStateInfo;
  kHRTFIdleStateInfo = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (HRTFEnrollmentSession)initWithCameraSession:(BOOL)session
{
  if (session)
  {
    v3 = [(HRTFEnrollmentSession *)self init];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HRTFEnrollmentSession;
    v3 = [(HRTFEnrollmentSession *)&v8 init];
    if (v3)
    {
      if (initWithCameraSession__once != -1)
      {
        [HRTFEnrollmentSession initWithCameraSession:];
      }

      objc_storeStrong(&v3->_stateInfo, kHRTFIdleStateInfo);
      v4 = dispatch_queue_create("com.apple.HRTFEnrollmentSession", 0);
      queue = v3->_queue;
      v3->_queue = v4;
    }
  }

  v6 = v3;

  return v6;
}

void __47__HRTFEnrollmentSession_initWithCameraSession___block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = kHRTFStateInfoStateKey;
  v3[1] = kHRTFStateInfoProgressKey;
  v4[0] = &unk_2862DF2B8;
  v4[1] = &unk_2862DF2D0;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = kHRTFIdleStateInfo;
  kHRTFIdleStateInfo = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (void)initializeDevice
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CE5AD0];
  v25[0] = *MEMORY[0x277CE5868];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v5 = [v3 discoverySessionWithDeviceTypes:v4 mediaType:*MEMORY[0x277CE5EA8] position:2];

  devices = [v5 devices];
  v7 = devices;
  if (!devices || ![devices count])
  {
    if (onceTokenHRTFEnrollmentSession != -1)
    {
      [HRTFEnrollmentSession initializeDevice];
    }

    v8 = logObjHRTFEnrollmentSession;
    if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_250984000, v8, OS_LOG_TYPE_ERROR, "no available device found", buf, 2u);
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [(AVCaptureDevice *)v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
  v11 = v9;
  if (v10)
  {
    v12 = v10;
    v13 = *v20;
LABEL_9:
    v14 = 0;
    while (1)
    {
      if (*v20 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v19 + 1) + 8 * v14);
      if ([(HRTFEnrollmentSession *)self _verifyCaptureDevice:v15, v19])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [(AVCaptureDevice *)v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v12)
        {
          goto LABEL_9;
        }

        v11 = v9;
        goto LABEL_18;
      }
    }

    v16 = v15;

    if (!v16)
    {
      goto LABEL_19;
    }

    device = self->_device;
    self->_device = v16;
    v11 = v16;
  }

LABEL_18:

LABEL_19:
  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_verifyCaptureDevice:(id)device
{
  v67 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  formats = [deviceCopy formats];
  v6 = [formats countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v6)
  {
    v7 = v6;
    v54 = deviceCopy;
    v8 = 0;
    v9 = 0;
    v10 = *v60;
    do
    {
      v11 = 0;
      do
      {
        if (*v60 != v10)
        {
          objc_enumerationMutation(formats);
        }

        v12 = *(*(&v59 + 1) + 8 * v11);
        supportedDepthDataFormats = [v12 supportedDepthDataFormats];
        v14 = [supportedDepthDataFormats count];

        if (v14)
        {
          formatDescription = [v12 formatDescription];
          if (CMFormatDescriptionGetMediaSubType(formatDescription) == self->_preferredPixelFormat)
          {
            Dimensions = CMVideoFormatDescriptionGetDimensions(formatDescription);
            width = Dimensions.width;
            if (self->_preferredColorResolution.width >= Dimensions.width)
            {
              height = Dimensions.height;
              v19 = Dimensions.width * Dimensions.height;
              if (self->_preferredColorResolution.height >= Dimensions.height && Dimensions.width * Dimensions.height > v8)
              {
                v21 = v12;

                if (self->_preferredColorResolution.width == width)
                {
                  v8 = v19;
                  v9 = v21;
                  if (self->_preferredColorResolution.height == height)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {
                  v8 = v19;
                  v9 = v21;
                }
              }
            }
          }
        }

        ++v11;
      }

      while (v7 != v11);
      v22 = [formats countByEnumeratingWithState:&v59 objects:v66 count:16];
      v7 = v22;
      v21 = v9;
    }

    while (v22);
LABEL_20:

    deviceCopy = v54;
    if (v21)
    {
      objc_storeStrong(&self->_finalColorFormat, v21);
      if (onceTokenHRTFEnrollmentSession != -1)
      {
        [HRTFEnrollmentSession initializeDevice];
      }

      v23 = logObjHRTFEnrollmentSession;
      if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_INFO))
      {
        finalColorFormat = self->_finalColorFormat;
        v25 = v23;
        v26 = [(AVCaptureDeviceFormat *)finalColorFormat description];
        uTF8String = [v26 UTF8String];
        *buf = 136315138;
        v65 = uTF8String;
        _os_log_impl(&dword_250984000, v25, OS_LOG_TYPE_INFO, "capture device color format: %s", buf, 0xCu);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      supportedDepthDataFormats2 = [v21 supportedDepthDataFormats];
      v29 = [supportedDepthDataFormats2 countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = 0;
        v32 = 0;
        v33 = *v56;
        do
        {
          v34 = 0;
          do
          {
            if (*v56 != v33)
            {
              objc_enumerationMutation(supportedDepthDataFormats2);
            }

            v35 = *(*(&v55 + 1) + 8 * v34);
            formatDescription2 = [v35 formatDescription];
            if (CMFormatDescriptionGetMediaSubType(formatDescription2) == self->_preferredDepthFormat)
            {
              v37 = CMVideoFormatDescriptionGetDimensions(formatDescription2);
              v38 = v37.width;
              if (self->_preferredDepthResolution.width >= v37.width)
              {
                v39 = v37.height;
                v40 = v37.width * v37.height;
                if (self->_preferredDepthResolution.height >= v37.height && v37.width * v37.height > v32)
                {
                  v42 = v35;

                  if (self->_preferredDepthResolution.width == v38)
                  {
                    v32 = v40;
                    v31 = v42;
                    if (self->_preferredDepthResolution.height == v39)
                    {
                      goto LABEL_43;
                    }
                  }

                  else
                  {
                    v32 = v40;
                    v31 = v42;
                  }
                }
              }
            }

            ++v34;
          }

          while (v30 != v34);
          v43 = [supportedDepthDataFormats2 countByEnumeratingWithState:&v55 objects:v63 count:16];
          v30 = v43;
          v42 = v31;
        }

        while (v43);
LABEL_43:

        deviceCopy = v54;
        if (v42)
        {
          objc_storeStrong(&self->_finalDepthFormat, v42);
          if (onceTokenHRTFEnrollmentSession != -1)
          {
            [HRTFEnrollmentSession initializeDevice];
          }

          v44 = logObjHRTFEnrollmentSession;
          if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_INFO))
          {
            finalDepthFormat = self->_finalDepthFormat;
            v46 = v44;
            v47 = [(AVCaptureDeviceFormat *)finalDepthFormat description];
            uTF8String2 = [v47 UTF8String];
            *buf = 136315138;
            v65 = uTF8String2;
            _os_log_impl(&dword_250984000, v46, OS_LOG_TYPE_INFO, "capture device depth format: %s", buf, 0xCu);
          }

          v49 = 1;
LABEL_61:

          goto LABEL_62;
        }
      }

      else
      {
      }

      if (onceTokenHRTFEnrollmentSession != -1)
      {
        [HRTFEnrollmentSession initializeDevice];
      }

      v51 = logObjHRTFEnrollmentSession;
      if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_250984000, v51, OS_LOG_TYPE_ERROR, "failed to verify depth format for capture device", buf, 2u);
      }

      v49 = 0;
      goto LABEL_61;
    }
  }

  else
  {
  }

  if (onceTokenHRTFEnrollmentSession != -1)
  {
    [HRTFEnrollmentSession initializeDevice];
  }

  v50 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_250984000, v50, OS_LOG_TYPE_ERROR, "failed to verify color format for capture device", buf, 2u);
  }

  v49 = 0;
LABEL_62:

  v52 = *MEMORY[0x277D85DE8];
  return v49;
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }

  v5.receiver = self;
  v5.super_class = HRTFEnrollmentSession;
  [(HRTFEnrollmentSession *)&v5 dealloc];
}

- (void)pauseSession
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HRTFEnrollmentSession_pauseSession__block_invoke;
  block[3] = &unk_2796A3C08;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __37__HRTFEnrollmentSession_pauseSession__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 73) = 1;
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
  }

  v1 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_250984000, v1, OS_LOG_TYPE_INFO, "session paused", v2, 2u);
  }
}

- (void)resumeSession
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HRTFEnrollmentSession_resumeSession__block_invoke;
  block[3] = &unk_2796A3C08;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __38__HRTFEnrollmentSession_resumeSession__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 73) = 0;
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
  }

  v1 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_250984000, v1, OS_LOG_TYPE_INFO, "session resumed", v2, 2u);
  }
}

- (id)getMovFileName
{
  v2 = objc_opt_new();
  [v2 setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 stringFromDate:date];

  return v4;
}

- (id)getRecordingFolder
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSTemporaryDirectory();
  v5 = [v3 stringWithFormat:@"%@/testHRTF", v4];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v7 = MEMORY[0x277CCACA8];
  getMovFileName = [(HRTFEnrollmentSession *)self getMovFileName];
  v9 = [v7 stringWithFormat:@"HRTFEnrollmentRecordings/%@", getMovFileName];

  v10 = [v6 URLByAppendingPathComponent:v9];
  path = [v10 path];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [defaultManager fileExistsAtPath:path];

  if ((v13 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager2 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0];
  }

  NSLog(&cfstr_Hrtfenrollment_1.isa, path);
  v15 = path;

  return v15;
}

- (id)getRecordingURL
{
  getMovFileName = [(HRTFEnrollmentSession *)self getMovFileName];
  getRecordingFolder = [(HRTFEnrollmentSession *)self getRecordingFolder];
  if (!getRecordingFolder)
  {
    getRecordingFolder = NSTemporaryDirectory();
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.MOV", getRecordingFolder, getMovFileName];
  NSLog(&cfstr_Hrtfenrollment_2.isa, v5);
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];

  return v6;
}

- (void)startSession:(BOOL)session withAssetPath:(id)path then:(id)then
{
  objc_storeStrong(&self->_assetDownloadPath, path);
  pathCopy = path;
  NSLog(&cfstr_StartsessionWi.isa, self->_assetDownloadPath);

  [(HRTFEnrollmentSession *)self startSession:1 then:&__block_literal_global_75];
}

- (void)startSession:(BOOL)session then:(id)then
{
  thenCopy = then;
  if (self->_videoCaptureEnabled)
  {
    getRecordingURL = [(HRTFEnrollmentSession *)self getRecordingURL];
    absoluteString = [getRecordingURL absoluteString];
    NSLog(&cfstr_HrtfappHrtfman.isa, absoluteString);

    v9 = objc_opt_new();
    v10 = MEMORY[0x277CCACA8];
    framework = [v9 framework];
    v12 = [framework objectForKeyedSubscript:@"version"];
    v13 = [v10 stringWithFormat:@"HRTFEnrollment-Visage-%@", v12];

    v14 = [[RecordingManager alloc] initWithFileURL:getRecordingURL expectedFrameRate:@"AVCaptureDeviceTypeBuiltInWideAngleCamera.2" colorStreamId:@"AVCaptureDeviceTypeBuiltInTrueDepthCamera.2" depthStreamId:v13 appName:30.0];
    recordingManager = self->_recordingManager;
    self->_recordingManager = v14;

    [(RecordingManager *)self->_recordingManager setDelegate:self];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HRTFEnrollmentSession_startSession_then___block_invoke;
  block[3] = &unk_2796A3C78;
  block[4] = self;
  v17 = thenCopy;
  sessionCopy = session;
  v19 = v17;
  v20 = &v22;
  dispatch_sync(queue, block);
  if (v17 && (v23[3] & 1) != 0)
  {
    (*(v17 + 2))(v17, 0);
  }

  _Block_object_dispose(&v22, 8);
}

void __43__HRTFEnrollmentSession_startSession_then___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.HRTFEnrollmentService"];
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2862E2690];
    [*(*(a1 + 32) + 32) setRemoteObjectInterface:v5];

    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2862E10F8];
    [*(*(a1 + 32) + 32) setExportedInterface:v6];

    [*(*(a1 + 32) + 32) setExportedObject:?];
    objc_initWeak(&location, *(a1 + 32));
    v7 = *(*(a1 + 32) + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __43__HRTFEnrollmentSession_startSession_then___block_invoke_2;
    v17[3] = &unk_2796A3C50;
    objc_copyWeak(&v18, &location);
    [v7 setInterruptionHandler:v17];
    v8 = *(*(a1 + 32) + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __43__HRTFEnrollmentSession_startSession_then___block_invoke_2_179;
    v15[3] = &unk_2796A3C50;
    objc_copyWeak(&v16, &location);
    [v8 setInvalidationHandler:v15];
    [*(*(a1 + 32) + 32) resume];
    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    if (*(v9 + 152))
    {
      v11 = [v10 remoteObjectProxy];
      [v11 startSessionWithTerminationCallback:*(*(a1 + 32) + 152) withCallback:&__block_literal_global_182];
    }

    else
    {
      v11 = [v10 remoteObjectProxy];
      [v11 startSessionWithTerminationCallback:&__block_literal_global_185];
    }

    v12 = MEMORY[0x253065810](*(a1 + 40));
    v13 = *(a1 + 32);
    v14 = *(v13 + 56);
    *(v13 + 56) = v12;

    *(*(a1 + 32) + 16) = *(*(a1 + 32) + 16) & 0xFE | *(a1 + 56);
    *(*(a1 + 32) + 16) |= 1u;
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __43__HRTFEnrollmentSession_startSession_then___block_invoke_2(uint64_t a1)
{
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
  }

  v2 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_250984000, v2, OS_LOG_TYPE_ERROR, "service connection interrupted", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[6];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__HRTFEnrollmentSession_startSession_then___block_invoke_177;
    block[3] = &unk_2796A3C08;
    v7 = WeakRetained;
    dispatch_async(v5, block);
  }
}

void __43__HRTFEnrollmentSession_startSession_then___block_invoke_177(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v3 = objc_alloc(MEMORY[0x277CCA9B8]);
    v4 = [v3 initWithDomain:kHRTFEnrollmentErrorDomain code:1 userInfo:0];
    [*(a1 + 32) updateState:5 withProgress:0 facePoseStatus:0 earPoseStatus:v4 errorStatus:0.0];
  }
}

void __43__HRTFEnrollmentSession_startSession_then___block_invoke_2_179(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__HRTFEnrollmentSession_startSession_then___block_invoke_3;
    block[3] = &unk_2796A3C08;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

void __43__HRTFEnrollmentSession_startSession_then___block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    if (onceTokenHRTFEnrollmentSession != -1)
    {
      HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
    }

    v2 = logObjHRTFEnrollmentSession;
    if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_250984000, v2, OS_LOG_TYPE_FAULT, "service connection invalidated", v5, 2u);
    }

    v3 = objc_alloc(MEMORY[0x277CCA9B8]);
    v4 = [v3 initWithDomain:kHRTFEnrollmentErrorDomain code:1 userInfo:0];
    [*(a1 + 32) updateState:5 withProgress:0 facePoseStatus:0 earPoseStatus:v4 errorStatus:0.0];
  }
}

void __43__HRTFEnrollmentSession_startSession_then___block_invoke_180()
{
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
  }

  v0 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_250984000, v0, OS_LOG_TYPE_INFO, "session terminated", v1, 2u);
  }
}

void __43__HRTFEnrollmentSession_startSession_then___block_invoke_183()
{
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
  }

  v0 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_250984000, v0, OS_LOG_TYPE_INFO, "session terminated", v1, 2u);
  }
}

- (void)downloadHRTFAssetV2:(unint64_t)v2 withCompletion:(id)completion
{
  completionCopy = completion;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HRTFEnrollmentSession_downloadHRTFAssetV2_withCompletion___block_invoke;
  v9[3] = &unk_2796A3CF0;
  v9[4] = self;
  v2Copy = v2;
  v8 = completionCopy;
  v10 = v8;
  v11 = &v13;
  dispatch_async(queue, v9);
  if (v8 && (v14[3] & 1) != 0)
  {
    (*(v8 + 2))(v8, 0, 0, 0, 0);
  }

  _Block_object_dispose(&v13, 8);
}

void __60__HRTFEnrollmentSession_downloadHRTFAssetV2_withCompletion___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.HRTFEnrollmentService"];
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2862E2690];
    [*(*(a1 + 32) + 32) setRemoteObjectInterface:v5];

    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2862E10F8];
    [*(*(a1 + 32) + 32) setExportedInterface:v6];

    [*(*(a1 + 32) + 32) setExportedObject:?];
    objc_initWeak(&location, *(a1 + 32));
    [*(*(a1 + 32) + 32) setInterruptionHandler:&__block_literal_global_187];
    v7 = *(*(a1 + 32) + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__HRTFEnrollmentSession_downloadHRTFAssetV2_withCompletion___block_invoke_188;
    v13[3] = &unk_2796A3C50;
    objc_copyWeak(&v14, &location);
    [v7 setInvalidationHandler:v13];
    [*(*(a1 + 32) + 32) resume];
    v8 = [*(*(a1 + 32) + 32) remoteObjectProxy];
    v9 = *(a1 + 56);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__HRTFEnrollmentSession_downloadHRTFAssetV2_withCompletion___block_invoke_192;
    v10[3] = &unk_2796A3CC8;
    objc_copyWeak(&v12, &location);
    v11 = *(a1 + 40);
    [v8 downloadAssetV2:v9 withCompletion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __60__HRTFEnrollmentSession_downloadHRTFAssetV2_withCompletion___block_invoke_2()
{
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
  }

  v0 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_250984000, v0, OS_LOG_TYPE_ERROR, "service connection interrupted", v1, 2u);
  }
}

void __60__HRTFEnrollmentSession_downloadHRTFAssetV2_withCompletion___block_invoke_188(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    dispatch_async(WeakRetained[6], &__block_literal_global_191);
    WeakRetained = v2;
  }
}

void __60__HRTFEnrollmentSession_downloadHRTFAssetV2_withCompletion___block_invoke_2_189()
{
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
  }

  v0 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_250984000, v0, OS_LOG_TYPE_FAULT, "service connection invalidated", v1, 2u);
  }
}

void __60__HRTFEnrollmentSession_downloadHRTFAssetV2_withCompletion___block_invoke_192(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = WeakRetained[6];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__HRTFEnrollmentSession_downloadHRTFAssetV2_withCompletion___block_invoke_2_193;
    block[3] = &unk_2796A3CA0;
    v19 = a2;
    v15 = v9;
    v16 = v10;
    v18 = a5;
    v17 = *(a1 + 32);
    dispatch_async(v13, block);
  }
}

uint64_t __60__HRTFEnrollmentSession_downloadHRTFAssetV2_withCompletion___block_invoke_2_193(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
  }

  v2 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 56) - 1;
    if (v6 > 3)
    {
      v7 = "Unknown";
    }

    else
    {
      v7 = off_2796A3E78[v6];
    }

    v10[0] = 67109890;
    v10[1] = v3;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v4;
    v15 = 2080;
    v16 = v7;
    _os_log_impl(&dword_250984000, v2, OS_LOG_TYPE_INFO, "isDownloaded %d status %@ error %@ result %s", v10, 0x26u);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, *(a1 + 64), *(a1 + 32), *(a1 + 40), *(a1 + 56));
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)downloadHRTFAsset:(unint64_t)asset withCompletion:(id)completion
{
  completionCopy = completion;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HRTFEnrollmentSession_downloadHRTFAsset_withCompletion___block_invoke;
  v9[3] = &unk_2796A3CF0;
  v9[4] = self;
  assetCopy = asset;
  v8 = completionCopy;
  v10 = v8;
  v11 = &v13;
  dispatch_async(queue, v9);
  if (v8 && (v14[3] & 1) != 0)
  {
    (*(v8 + 2))(v8, 0, 0, 0);
  }

  _Block_object_dispose(&v13, 8);
}

void __58__HRTFEnrollmentSession_downloadHRTFAsset_withCompletion___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.HRTFEnrollmentService"];
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2862E2690];
    [*(*(a1 + 32) + 32) setRemoteObjectInterface:v5];

    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2862E10F8];
    [*(*(a1 + 32) + 32) setExportedInterface:v6];

    [*(*(a1 + 32) + 32) setExportedObject:?];
    objc_initWeak(&location, *(a1 + 32));
    [*(*(a1 + 32) + 32) setInterruptionHandler:&__block_literal_global_196];
    v7 = *(*(a1 + 32) + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__HRTFEnrollmentSession_downloadHRTFAsset_withCompletion___block_invoke_197;
    v13[3] = &unk_2796A3C50;
    objc_copyWeak(&v14, &location);
    [v7 setInvalidationHandler:v13];
    [*(*(a1 + 32) + 32) resume];
    v8 = [*(*(a1 + 32) + 32) remoteObjectProxy];
    v9 = *(a1 + 56);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__HRTFEnrollmentSession_downloadHRTFAsset_withCompletion___block_invoke_201;
    v10[3] = &unk_2796A3D40;
    objc_copyWeak(&v12, &location);
    v11 = *(a1 + 40);
    [v8 downloadAsset:v9 withCompletion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __58__HRTFEnrollmentSession_downloadHRTFAsset_withCompletion___block_invoke_2()
{
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
  }

  v0 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_250984000, v0, OS_LOG_TYPE_ERROR, "service connection interrupted", v1, 2u);
  }
}

void __58__HRTFEnrollmentSession_downloadHRTFAsset_withCompletion___block_invoke_197(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    dispatch_async(WeakRetained[6], &__block_literal_global_200);
    WeakRetained = v2;
  }
}

void __58__HRTFEnrollmentSession_downloadHRTFAsset_withCompletion___block_invoke_2_198()
{
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
  }

  v0 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_250984000, v0, OS_LOG_TYPE_FAULT, "service connection invalidated", v1, 2u);
  }
}

void __58__HRTFEnrollmentSession_downloadHRTFAsset_withCompletion___block_invoke_201(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = WeakRetained[6];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__HRTFEnrollmentSession_downloadHRTFAsset_withCompletion___block_invoke_2_202;
    v12[3] = &unk_2796A3D18;
    v16 = a2;
    v13 = v7;
    v14 = v8;
    v15 = *(a1 + 32);
    dispatch_async(v11, v12);
  }
}

uint64_t __58__HRTFEnrollmentSession_downloadHRTFAsset_withCompletion___block_invoke_2_202(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
  }

  v2 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = 67109634;
    v8[1] = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_250984000, v2, OS_LOG_TYPE_INFO, "isDownloaded %d status %@ error %@", v8, 0x1Cu);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, *(a1 + 56), *(a1 + 32), *(a1 + 40));
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stopSession:(id)session
{
  sessionCopy = session;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    [HRTFEnrollmentSession initializeDevice];
  }

  v5 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_250984000, v5, OS_LOG_TYPE_INFO, "session stopped, recordingManager", buf, 2u);
  }

  if (self->_videoCaptureEnabled)
  {
    recordingManager = self->_recordingManager;
    if (recordingManager)
    {
      [(RecordingManager *)recordingManager stopRecording];
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HRTFEnrollmentSession_stopSession___block_invoke;
  block[3] = &unk_2796A3D90;
  block[4] = self;
  v11 = &v13;
  v8 = sessionCopy;
  v10 = v8;
  dispatch_sync(queue, block);
  if (*(v14 + 24) == 1)
  {
    v8[2](v8);
  }

  _Block_object_dispose(&v13, 8);
}

void __37__HRTFEnrollmentSession_stopSession___block_invoke(void *a1)
{
  [*(a1[4] + 40) stopCaptureSession];
  *(a1[4] + 16) &= ~1u;
  v2 = *(a1[4] + 32);
  if (v2)
  {
    v3 = [v2 remoteObjectProxy];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __37__HRTFEnrollmentSession_stopSession___block_invoke_2;
    v5[3] = &unk_2796A3D68;
    v4 = a1[5];
    v5[4] = a1[4];
    v6 = v4;
    [v3 stopSession:v5];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }
}

uint64_t __37__HRTFEnrollmentSession_stopSession___block_invoke_2(uint64_t a1)
{
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
  }

  v2 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_250984000, v2, OS_LOG_TYPE_INFO, "session stopped, invalidating connection", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HRTFEnrollmentSession_stopSession___block_invoke_204;
  block[3] = &unk_2796A3C08;
  block[4] = v3;
  dispatch_sync(v4, block);
  return (*(*(a1 + 40) + 16))();
}

void __37__HRTFEnrollmentSession_stopSession___block_invoke_204(uint64_t a1)
{
  *(*(a1 + 32) + 16) &= ~1u;
  [*(*(a1 + 32) + 32) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  *(*(a1 + 32) + 24) = 0;
  v4 = kHRTFIdleStateInfo;
  v5 = (*(a1 + 32) + 8);

  objc_storeStrong(v5, v4);
}

void __46__HRTFEnrollmentSession_sessionStarted_error___block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x253065810](*(*(a1 + 32) + 56));
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = 0;

  if (*(a1 + 64) == 1)
  {
    if (*(*(a1 + 32) + 16))
    {
      if (onceTokenHRTFEnrollmentSession != -1)
      {
        HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
      }

      v12 = logObjHRTFEnrollmentSession;
      if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_250984000, v12, OS_LOG_TYPE_INFO, "session started", v14, 2u);
      }

      [*(*(a1 + 32) + 40) startCaptureSession];
    }

    else
    {
      if (onceTokenHRTFEnrollmentSession != -1)
      {
        HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
      }

      v7 = logObjHRTFEnrollmentSession;
      if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_250984000, v7, OS_LOG_TYPE_INFO, "session stop requested before started", v14, 2u);
      }
    }
  }

  else
  {
    if (onceTokenHRTFEnrollmentSession != -1)
    {
      HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
    }

    v8 = logObjHRTFEnrollmentSession;
    if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_250984000, v8, OS_LOG_TYPE_ERROR, "session failed to start", v14, 2u);
    }

    v15[0] = kHRTFStateInfoStateKey;
    v15[1] = kHRTFStateInfoProgressKey;
    v16[0] = &unk_2862DF2E8;
    v16[1] = &unk_2862DF2D0;
    v15[2] = kHRTFStateInfoErrorInfoKey;
    v16[2] = *(a1 + 40);
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)requestResultDataAtOffset:(unint64_t)offset forLength:(unint64_t)length withCompletion:(id)completion
{
  completionCopy = completion;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HRTFEnrollmentSession_requestResultDataAtOffset_forLength_withCompletion___block_invoke;
  block[3] = &unk_2796A3DE0;
  block[4] = self;
  v13 = &v16;
  offsetCopy = offset;
  lengthCopy = length;
  v10 = completionCopy;
  v12 = v10;
  dispatch_sync(queue, block);
  if (*(v17 + 24) == 1)
  {
    (*(v10 + 2))(v10, 0);
  }

  _Block_object_dispose(&v16, 8);
}

void __76__HRTFEnrollmentSession_requestResultDataAtOffset_forLength_withCompletion___block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  if (v2)
  {
    v4 = [v2 remoteObjectProxy];
    [v4 requestDataWithOffset:a1[7] length:a1[8] withCompletion:a1[5]];
  }

  else
  {
    if (onceTokenHRTFEnrollmentSession != -1)
    {
      HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
    }

    v3 = logObjHRTFEnrollmentSession;
    if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_250984000, v3, OS_LOG_TYPE_ERROR, "attempting to retrieve result data without an active session", buf, 2u);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (void)updateState:(unint64_t)state withProgress:(float)progress facePoseStatus:(id)status earPoseStatus:(id)poseStatus errorStatus:(id)errorStatus
{
  v34[2] = *MEMORY[0x277D85DE8];
  statusCopy = status;
  poseStatusCopy = poseStatus;
  errorStatusCopy = errorStatus;
  v15 = objc_alloc(MEMORY[0x277CBEB38]);
  v33[0] = kHRTFStateInfoStateKey;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  v33[1] = kHRTFStateInfoProgressKey;
  v34[0] = v16;
  *&v17 = progress;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v34[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v20 = [v15 initWithDictionary:v19];

  if (state == 5)
  {
    v21 = kHRTFStateInfoErrorInfoKey;
    v22 = v20;
    v23 = errorStatusCopy;
LABEL_8:
    [v22 setObject:v23 forKeyedSubscript:v21];
    goto LABEL_9;
  }

  if (state - 1 <= 1)
  {
    if (statusCopy)
    {
      [v20 setObject:statusCopy forKeyedSubscript:kHRTFStateInfoFacePoseStatusKey];
    }

    if (poseStatusCopy)
    {
      leftStatus = [poseStatusCopy leftStatus];
      [v20 setObject:leftStatus forKeyedSubscript:kHRTFStateInfoLeftEarPoseStatusKey];

      rightStatus = [poseStatusCopy rightStatus];
      [v20 setObject:rightStatus forKeyedSubscript:kHRTFStateInfoRightEarPoseStatusKey];

      v21 = kHRTFStateInfoEarPoseStatusKey;
      v22 = v20;
      v23 = poseStatusCopy;
      goto LABEL_8;
    }
  }

LABEL_9:
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__HRTFEnrollmentSession_updateState_withProgress_facePoseStatus_earPoseStatus_errorStatus___block_invoke;
  block[3] = &unk_2796A3E08;
  block[4] = self;
  v27 = v20;
  v32 = v27;
  dispatch_async(queue, block);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v29 = objc_loadWeakRetained(&self->_delegate);
    [v29 didReceiveStateUpdateForSession:self stateInfo:v27];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)updateResultSize:(unint64_t)size
{
  v10 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HRTFEnrollmentSession_updateResultSize___block_invoke;
  v7[3] = &unk_2796A3E30;
  v7[4] = self;
  v7[5] = size;
  dispatch_sync(queue, v7);
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    [HRTFEnrollmentSession initializeDevice];
  }

  v5 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    sizeCopy = size;
    _os_log_impl(&dword_250984000, v5, OS_LOG_TYPE_INFO, "result data has a size of %lu", buf, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didStartCaptureSessionWithError:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HRTFEnrollmentSession_didStartCaptureSessionWithError___block_invoke;
  block[3] = &unk_2796A3E58;
  v8 = errorCopy;
  v6 = errorCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __57__HRTFEnrollmentSession_didStartCaptureSessionWithError___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (onceTokenHRTFEnrollmentSession != -1)
    {
      HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
    }

    v2 = logObjHRTFEnrollmentSession;
    if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_250984000, v2, OS_LOG_TYPE_INFO, "Failed to start AVCaptureSession with error:%@", &v8, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = WeakRetained;
    if (WeakRetained && (WeakRetained[16] & 1) != 0)
    {
      [WeakRetained updateState:5 withProgress:0 facePoseStatus:0 earPoseStatus:*(a1 + 32) errorStatus:0.0];
    }
  }

  else
  {
    if (onceTokenHRTFEnrollmentSession != -1)
    {
      HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
    }

    v6 = logObjHRTFEnrollmentSession;
    if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_250984000, v6, OS_LOG_TYPE_INFO, "AVCaptureSession started\n", &v8, 2u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveVideoData:(id)data colorData:(id)colorData depthData:(id)depthData faceObject:(id)object
{
  dataCopy = data;
  colorDataCopy = colorData;
  depthDataCopy = depthData;
  objectCopy = object;
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
  }

  v14 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_250984000, v14, OS_LOG_TYPE_DEBUG, "video frame arrived", buf, 2u);
  }

  sampleBuffer = [colorDataCopy sampleBuffer];
  ImageBuffer = CMSampleBufferGetImageBuffer(sampleBuffer);
  if (ImageBuffer)
  {
    v17 = ImageBuffer;
    v62 = objectCopy;
    depthData = [depthDataCopy depthData];
    depthDataMap = [depthData depthDataMap];
    v61 = dataCopy;
    if (!depthDataMap)
    {
      if (onceTokenHRTFEnrollmentSession != -1)
      {
        [HRTFEnrollmentSession initializeDevice];
      }

      v32 = logObjHRTFEnrollmentSession;
      if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_250984000, v32, OS_LOG_TYPE_ERROR, "depth data is absent", buf, 2u);
      }

      goto LABEL_47;
    }

    v20 = depthDataMap;
    cameraCalibrationData = [depthData cameraCalibrationData];
    if (!cameraCalibrationData)
    {
      if (onceTokenHRTFEnrollmentSession != -1)
      {
        [HRTFEnrollmentSession initializeDevice];
      }

      objectCopy = v62;
      v33 = logObjHRTFEnrollmentSession;
      if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_250984000, v33, OS_LOG_TYPE_ERROR, "lense calibration data is absent", buf, 2u);
      }

      goto LABEL_46;
    }

    v22 = CMGetAttachment(sampleBuffer, *MEMORY[0x277CC06B0], 0);
    v23 = v22;
    if (!v22)
    {
      objectCopy = v62;
      if (onceTokenHRTFEnrollmentSession != -1)
      {
        [HRTFEnrollmentSession initializeDevice];
      }

      v34 = logObjHRTFEnrollmentSession;
      if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_250984000, v34, OS_LOG_TYPE_ERROR, "color instrinsics data is absent", buf, 2u);
      }

      goto LABEL_45;
    }

    v24 = *(MEMORY[0x277D860B0] + 16);
    *buf = *MEMORY[0x277D860B0];
    v67 = v24;
    *v68 = *(MEMORY[0x277D860B0] + 32);
    v25 = v22;
    [v22 getBytes:buf length:48];
    memset(&v65, 0, sizeof(v65));
    if (colorDataCopy)
    {
      [colorDataCopy timestamp];
    }

    time = v65;
    Seconds = CMTimeGetSeconds(&time);
    if (!self->_videoCaptureEnabled || !self->_recordingManager)
    {
LABEL_35:
      [cameraCalibrationData intrinsicMatrix];
      v57 = v38;
      logb = v37;
      v56 = v39;
      [cameraCalibrationData intrinsicMatrixReferenceDimensions];
      v41 = v40;
      v43 = v42;
      [cameraCalibrationData lensDistortionCenter];
      v45 = v44;
      v47 = v46;
      v48 = [HRTFSerializableCaptureData alloc];
      lensDistortionLookupTable = [cameraCalibrationData lensDistortionLookupTable];
      log = [(HRTFSerializableCaptureData *)v48 initWithColorPixelBuffer:v17 depthPixelBuffer:v20 colorIntrinsics:lensDistortionLookupTable depthIntrinsics:*buf distortionLookupTable:*&v67 referenceDimensions:v68[0] distortionCenter:logb timestamp:v57, v56, v41, v43, v45, v47, *&Seconds];

      if (v62)
      {
        v50 = [[HRTFSerializableFaceData alloc] initWithFaceObject:v62];
      }

      else
      {
        v50 = 0;
      }

      if (!self->_paused)
      {
        remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
        [remoteObjectProxy processCaptureData:log withFaceData:v50];
      }

      if (*&self->_flags)
      {
        v52 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:v17];
        v53 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:v20];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);

        if (WeakRetained)
        {
          v55 = objc_loadWeakRetained(&self->_delegate);
          [v55 didReceiveCaptureVideo:v61 colorImage:v52 depthImage:v53 faceObject:v62];
        }
      }

      objectCopy = v62;
      v23 = v25;
LABEL_45:

LABEL_46:
LABEL_47:

      dataCopy = v61;
      goto LABEL_48;
    }

    v27 = CMGetAttachment([colorDataCopy sampleBuffer], @"{Exif}", 0);
    v28 = [v27 valueForKey:@"ExposureTime"];
    v29 = v28;
    if (v28)
    {
      [v28 doubleValue];
    }

    else
    {
      device = self->_device;
      if (!device)
      {
        loga = HRTFLogObjectForCategory_HRTFEnrollmentSession();
        if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
        {
          LOWORD(time.value) = 0;
          _os_log_impl(&dword_250984000, loga, OS_LOG_TYPE_ERROR, "cannot retrieve exposure time", &time, 2u);
        }

        v36 = 0.0;
        goto LABEL_34;
      }

      memset(&time, 0, sizeof(time));
      [(AVCaptureDevice *)device exposureDuration];
      v63 = time;
      v30 = CMTimeGetSeconds(&v63);
    }

    v36 = v30;
LABEL_34:
    [(RecordingManager *)self->_recordingManager process:v17 depthFrame:v20 faceObject:v62 timestamp:cameraCalibrationData intrinsics:Seconds calibration:*buf exposureTime:*&v67, v68[0], v36];

    goto LABEL_35;
  }

  if (onceTokenHRTFEnrollmentSession != -1)
  {
    [HRTFEnrollmentSession initializeDevice];
  }

  v31 = logObjHRTFEnrollmentSession;
  if (os_log_type_enabled(logObjHRTFEnrollmentSession, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_250984000, v31, OS_LOG_TYPE_ERROR, "color data is absent", buf, 2u);
  }

LABEL_48:
}

- (HRTFEnrollmentSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end