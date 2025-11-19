@interface CCCameraConnection
- (BOOL)_burstSupport;
- (BOOL)_supportsMomentCapture;
- (BOOL)_supportsZoomMagnification;
- (BOOL)_toggleCameraDeviceSupport;
- (BOOL)_zoomSupport;
- (BOOL)isPreviewConnected;
- (CCCameraConnection)init;
- (CCCameraConnectionDelegate)delegate;
- (double)_currentZoomMagnification;
- (double)_maximumZoomMagnification;
- (double)_minimumZoomMagnification;
- (double)_zoomAmount;
- (id)_significantZoomMagnifications;
- (id)_supportedCaptureDevices;
- (id)_supportedCaptureModes;
- (int64_t)_captureDevice;
- (int64_t)_captureMode;
- (int64_t)_currentOrientation;
- (int64_t)_flashMode;
- (int64_t)_flashSupport;
- (int64_t)_hdrMode;
- (int64_t)_hdrSupport;
- (int64_t)_irisMode;
- (int64_t)_irisSupport;
- (int64_t)_sharedLibraryMode;
- (int64_t)_sharedLibrarySupport;
- (void)_checkin;
- (void)_closePreview;
- (void)_connect;
- (void)_disconnect;
- (void)_handleInterruption;
- (void)_handleInvalidation;
- (void)_openPreview;
- (void)_performPreviewStateTransitionsIfNeeded;
- (void)_zoomTimerFired;
- (void)burstCaptureDidStop;
- (void)burstCaptureNumberOfPhotosDidChange:(unint64_t)a3;
- (void)burstCaptureWillStart;
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4;
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4;
- (void)cameraViewfinderSession:(id)a3 didCapturePhotoWithStatus:(int)a4 thumbnailData:(id)a5 timestamp:(id *)a6;
- (void)cameraViewfinderSessionPreviewStreamDidOpen:(id)a3;
- (void)captureDeviceDidChange;
- (void)captureDeviceDidChange:(int64_t)a3;
- (void)countdownCanceled;
- (void)dealloc;
- (void)didPauseCaptureTimerWithPauseTime:(id)a3;
- (void)didResumeCaptureTimerWithNewStartTime:(id)a3;
- (void)didStartCaptureTimer;
- (void)didStopCapture;
- (void)didUpdateShallowDepthOfFieldStatus:(int64_t)a3;
- (void)didUpdateStereoCaptureStatus:(int64_t)a3;
- (void)flashModeDidChange;
- (void)hdrModeDidChange;
- (void)irisModeDidChange;
- (void)modeSelected:(int64_t)a3;
- (void)open;
- (void)sharedLibraryModeDidChange;
- (void)sharedLibrarySupportDidChange;
- (void)switchedOrientation:(int64_t)a3;
- (void)takePhotoWithCountdown:(unint64_t)a3;
- (void)willStartCapturing;
- (void)xpc_beginBurstCaptureWithReply:(id)a3;
- (void)xpc_cancelCountdown;
- (void)xpc_endBurstCaptureWithReply:(id)a3;
- (void)xpc_ensureSwitchedToOneOfSupportedCaptureModes:(id)a3 reply:(id)a4;
- (void)xpc_fetchCurrentStateIncludingSupportedCaptureModes:(BOOL)a3 reply:(id)a4;
- (void)xpc_pauseCaptureWithReply:(id)a3;
- (void)xpc_resumeCaptureWithReply:(id)a3;
- (void)xpc_setCaptureDevice:(int64_t)a3 reply:(id)a4;
- (void)xpc_setCaptureMode:(int64_t)a3 reply:(id)a4;
- (void)xpc_setFlashMode:(int64_t)a3;
- (void)xpc_setFocusPoint:(id)a3;
- (void)xpc_setHDRMode:(int64_t)a3;
- (void)xpc_setIrisMode:(int64_t)a3;
- (void)xpc_setPreviewEndpoint:(id)a3;
- (void)xpc_setSharedLibraryMode:(int64_t)a3;
- (void)xpc_setZoom:(float)a3 reply:(id)a4;
- (void)xpc_setZoomMagnification:(float)a3 reply:(id)a4;
- (void)xpc_startCaptureWithMode:(int64_t)a3 reply:(id)a4;
- (void)xpc_stopCaptureWithReply:(id)a3;
- (void)xpc_suspend;
- (void)xpc_toggleCameraDevice;
- (void)zoomDidChange:(double)a3;
@end

@implementation CCCameraConnection

- (CCCameraConnection)init
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[CCCameraConnection init]";
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v24 = 1024;
    v25 = 89;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v19.receiver = self;
  v19.super_class = CCCameraConnection;
  v4 = [(CCCameraConnection *)&v19 init];
  if (v4)
  {
    v5 = objc_alloc_init(CCCameraConnectionInternal);
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;

    [*(v4 + 1) setParent:v4];
    *(v4 + 25) = -1082130432;
    *(v4 + 112) = 0;
    objc_initWeak(buf, v4);
    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    v8 = *(v4 + 11);
    *(v4 + 11) = v7;

    v9 = *(v4 + 11);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __26__CCCameraConnection_init__block_invoke;
    handler[3] = &unk_278DEF0C0;
    objc_copyWeak(&v18, buf);
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(*(v4 + 11));
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __26__CCCameraConnection_init__block_invoke_2;
    v15[3] = &unk_278DEF0E8;
    objc_copyWeak(&v16, buf);
    notify_register_dispatch("com.apple.companion.camera.device-connected", v4 + 26, MEMORY[0x277D85CD0], v15);

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __26__CCCameraConnection_init__block_invoke_6;
    v13[3] = &unk_278DEF0E8;
    objc_copyWeak(&v14, buf);
    notify_register_dispatch("com.apple.companion.camera.device-disconnected", v4 + 27, MEMORY[0x277D85CD0], v13);

    v10 = +[CCCameraConnectionReliabilityMonitor sharedInstance];
    [v10 incrementInstanceCount];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_connect
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v32 = "[CCCameraConnection _connect]";
    v33 = 2080;
    v34 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v35 = 1024;
    v36 = 147;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  if (!self->_remoteViewfinder)
  {
    v4 = +[ViewfinderReliability sharedInstance];
    [v4 logEvent:8];

    v5 = [MEMORY[0x277CF3B78] cameraViewfinder];
    remoteViewfinder = self->_remoteViewfinder;
    self->_remoteViewfinder = v5;

    [(FigCameraViewfinder *)self->_remoteViewfinder setDelegate:self queue:MEMORY[0x277D85CD0]];
    v7 = self->_remoteViewfinder;
    v29 = *MEMORY[0x277CF3B48];
    v30 = &unk_2856ED530;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [(FigCameraViewfinder *)v7 startWithOptions:v8];

    v9 = +[ViewfinderReliability sharedInstance];
    [v9 logEvent:9];
  }

  if (!self->_xpc)
  {
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856EE960];
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    [v10 setClasses:v13 forSelector:sel_xpc_ensureSwitchedToOneOfSupportedCaptureModes_reply_ argumentIndex:0 ofReply:0];

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    [v10 setClasses:v16 forSelector:sel_xpc_fetchCurrentStateIncludingSupportedCaptureModes_reply_ argumentIndex:0 ofReply:1];

    v17 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.companion.camera" options:4096];
    xpc = self->_xpc;
    self->_xpc = v17;

    [(NSXPCConnection *)self->_xpc setExportedInterface:v10];
    [(NSXPCConnection *)self->_xpc setExportedObject:self->_internal];
    v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856F05E8];
    [(NSXPCConnection *)self->_xpc setRemoteObjectInterface:v19];

    objc_initWeak(&location, self);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __30__CCCameraConnection__connect__block_invoke;
    v26[3] = &unk_278DEF0C0;
    objc_copyWeak(&v27, &location);
    [(NSXPCConnection *)self->_xpc setInterruptionHandler:v26];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __30__CCCameraConnection__connect__block_invoke_2;
    v24[3] = &unk_278DEF0C0;
    objc_copyWeak(&v25, &location);
    [(NSXPCConnection *)self->_xpc setInvalidationHandler:v24];
    [(NSXPCConnection *)self->_xpc resume];
    v20 = nanocamera_log_control();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_xpc;
      *buf = 138412290;
      v32 = v21;
      _os_log_impl(&dword_243CBC000, v20, OS_LOG_TYPE_DEFAULT, "Resumed xpc connection %@", buf, 0xCu);
    }

    [(CCCameraConnection *)self _checkin];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  v22 = +[CCCameraConnectionReliabilityMonitor sharedInstance];
  [v22 didConnect];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)open
{
  if (self->_remoteViewfinderSession)
  {
    self->_remoteViewfinderSessionState = 1;
  }

  [(CCCameraConnection *)self _connect];
}

- (void)_checkin
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[CCCameraConnection _checkin]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v10 = 1024;
    v11 = 196;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v6, 0x1Cu);
  }

  v4 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global];
  [v4 checkin];

  v5 = *MEMORY[0x277D85DE8];
}

void __30__CCCameraConnection__connect__block_invoke_2(uint64_t a1)
{
  v2 = nanocamera_log_control();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243CBC000, v2, OS_LOG_TYPE_DEFAULT, "invalidation", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__CCCameraConnection__connect__block_invoke_91;
  block[3] = &unk_278DEF0C0;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
}

void __26__CCCameraConnection_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _zoomTimerFired];
}

void __26__CCCameraConnection_init__block_invoke_2(uint64_t a1)
{
  v2 = nanocamera_log_control();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_243CBC000, v2, OS_LOG_TYPE_DEFAULT, "Device connected", v6, 2u);
  }

  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 applicationState];

  if (v4 != 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _connect];
  }
}

void __26__CCCameraConnection_init__block_invoke_6(uint64_t a1)
{
  v2 = nanocamera_log_control();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_243CBC000, v2, OS_LOG_TYPE_DEFAULT, "Device disconnected", v6, 2u);
  }

  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 applicationState];

  if (v4 != 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _disconnect];
  }
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v8 = "[CCCameraConnection dealloc]";
    v9 = 2080;
    v10 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v11 = 1024;
    v12 = 124;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  [(CCCameraConnection *)self close];
  notify_cancel(self->_deviceDisconnectedNotificationToken);
  notify_cancel(self->_deviceConnectedNotificationToken);
  v4 = +[CCCameraConnectionReliabilityMonitor sharedInstance];
  [v4 decrementInstanceCount];

  v6.receiver = self;
  v6.super_class = CCCameraConnection;
  [(CCCameraConnection *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

void __30__CCCameraConnection__connect__block_invoke(uint64_t a1)
{
  v2 = nanocamera_log_control();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243CBC000, v2, OS_LOG_TYPE_DEFAULT, "interruption", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__CCCameraConnection__connect__block_invoke_90;
  block[3] = &unk_278DEF0C0;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
}

void __30__CCCameraConnection__connect__block_invoke_90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInterruption];
}

void __30__CCCameraConnection__connect__block_invoke_91(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInvalidation];
}

void __30__CCCameraConnection__checkin__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)_disconnect
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[CCCameraConnection _disconnect]";
    v14 = 2080;
    v15 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v16 = 1024;
    v17 = 216;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v12, 0x1Cu);
  }

  if (self->_burstInProgress)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      v7 = [v6 cameraConnectionEndBurstCapture:self];

      if (v7)
      {
        self->_burstInProgress = 0;
      }
    }
  }

  xpc = self->_xpc;
  if (xpc)
  {
    [(NSXPCConnection *)xpc setInvalidationHandler:0];
    [(NSXPCConnection *)self->_xpc setInterruptionHandler:0];
    [(NSXPCConnection *)self->_xpc invalidate];
    [(CCCameraConnection *)self _handleInvalidation];
  }

  previewEndpoint = self->_previewEndpoint;
  self->_previewEndpoint = 0;

  [(CCCameraConnection *)self _closePreview];
  v10 = +[CCCameraConnectionReliabilityMonitor sharedInstance];
  [v10 didDisconnect];

  v11 = *MEMORY[0x277D85DE8];
}

void __57__CCCameraConnection_didUpdateThumbnailWithData_isVideo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)burstCaptureWillStart
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[CCCameraConnection burstCaptureWillStart]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v10 = 1024;
    v11 = 264;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v6, 0x1Cu);
  }

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v4 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_98];
    [v4 xpc_burstCaptureWillStart];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __43__CCCameraConnection_burstCaptureWillStart__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)burstCaptureNumberOfPhotosDidChange:(unint64_t)a3
{
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v5 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_100];
    [v5 xpc_burstCaptureNumberOfPhotosDidChange:a3];
  }
}

void __58__CCCameraConnection_burstCaptureNumberOfPhotosDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)burstCaptureDidStop
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[CCCameraConnection burstCaptureDidStop]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v10 = 1024;
    v11 = 286;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v6, 0x1Cu);
  }

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v4 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_102];
    [v4 xpc_burstCaptureDidStop];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __41__CCCameraConnection_burstCaptureDidStop__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)willStartCapturing
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CCCameraConnection willStartCapturing]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v12 = 1024;
    v13 = 297;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v8, 0x1Cu);
  }

  self->_capturing = 1;
  captureStartDate = self->_captureStartDate;
  self->_captureStartDate = 0;

  self->_capturingPaused = 0;
  capturePauseDate = self->_capturePauseDate;
  self->_capturePauseDate = 0;

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v6 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_104];
    [v6 xpc_willStartCapturing];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __40__CCCameraConnection_willStartCapturing__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)didStartCaptureTimer
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[CCCameraConnection didStartCaptureTimer]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v13 = 1024;
    v14 = 314;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v9, 0x1Cu);
  }

  v4 = [MEMORY[0x277CBEAA8] date];
  captureStartDate = self->_captureStartDate;
  self->_captureStartDate = v4;

  self->_capturingPaused = 0;
  capturePauseDate = self->_capturePauseDate;
  self->_capturePauseDate = 0;

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v7 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_107];
    [v7 xpc_didStartCaptureTimerWithDate:self->_captureStartDate];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __42__CCCameraConnection_didStartCaptureTimer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)didPauseCaptureTimerWithPauseTime:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = nanocamera_log_control();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[CCCameraConnection didPauseCaptureTimerWithPauseTime:]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v13 = 1024;
    v14 = 329;
    _os_log_impl(&dword_243CBC000, v6, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v9, 0x1Cu);
  }

  self->_capturingPaused = 1;
  objc_storeStrong(&self->_capturePauseDate, a3);
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v7 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_109];
    [v7 xpc_didPauseCaptureTimerWithDate:self->_capturePauseDate];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __56__CCCameraConnection_didPauseCaptureTimerWithPauseTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)didResumeCaptureTimerWithNewStartTime:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = nanocamera_log_control();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[CCCameraConnection didResumeCaptureTimerWithNewStartTime:]";
    v12 = 2080;
    v13 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v14 = 1024;
    v15 = 343;
    _os_log_impl(&dword_243CBC000, v6, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v10, 0x1Cu);
  }

  objc_storeStrong(&self->_captureStartDate, a3);
  self->_capturingPaused = 0;
  capturePauseDate = self->_capturePauseDate;
  self->_capturePauseDate = 0;

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v8 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_111];
    [v8 xpc_didResumeCaptureTimerWithDate:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __60__CCCameraConnection_didResumeCaptureTimerWithNewStartTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)didStopCapture
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CCCameraConnection didStopCapture]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v12 = 1024;
    v13 = 358;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v8, 0x1Cu);
  }

  self->_capturing = 0;
  captureStartDate = self->_captureStartDate;
  self->_captureStartDate = 0;

  self->_capturingPaused = 0;
  capturePauseDate = self->_capturePauseDate;
  self->_capturePauseDate = 0;

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v6 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_113];
    [v6 xpc_didStopCapture];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __36__CCCameraConnection_didStopCapture__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)captureDeviceDidChange:(int64_t)a3
{
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CCCameraConnection captureDeviceDidChange:];
  }

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v6 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_115];
    [v6 xpc_captureDeviceDidChange:a3];
  }
}

void __45__CCCameraConnection_captureDeviceDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)modeSelected:(int64_t)a3
{
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CCCameraConnection modeSelected:];
  }

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v6 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_117];
    [v6 xpc_captureModeSelected:a3];
  }
}

void __35__CCCameraConnection_modeSelected___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (int64_t)_currentOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained cameraConnectionOrientation:self];

  return v4;
}

- (void)switchedOrientation:(int64_t)a3
{
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CCCameraConnection *)a3 switchedOrientation:v5];
  }

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v6 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_119];
    [v6 xpc_orientationChanged:a3];
  }
}

void __42__CCCameraConnection_switchedOrientation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)countdownCanceled
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[CCCameraConnection countdownCanceled]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v10 = 1024;
    v11 = 412;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v6, 0x1Cu);
  }

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v4 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_121];
    [v4 xpc_countdownCanceled];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __39__CCCameraConnection_countdownCanceled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)zoomDidChange:(double)a3
{
  if (vabdd_f64(a3, self->_lastSentZoomAmount) >= 0.05 && self->_previewEndpoint)
  {
    v4 = a3;
    self->_pendingZoomAmount = v4;
    zoomTimer = self->_zoomTimer;
    v6 = dispatch_time(0, 50000000);

    dispatch_source_set_timer(zoomTimer, v6, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  }
}

- (void)_zoomTimerFired
{
  dispatch_source_set_timer(self->_zoomTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    self->_lastSentZoomAmount = self->_pendingZoomAmount;
    v4 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_123];
    *&v3 = self->_pendingZoomAmount;
    [v4 xpc_zoomChanged:v3];
  }
}

void __37__CCCameraConnection__zoomTimerFired__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)didUpdateShallowDepthOfFieldStatus:(int64_t)a3
{
  self->_shallowDepthOfFieldStatus = a3;
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v5 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_125];
    [v5 xpc_didUpdateShallowDepthOfFieldStatus:a3];
  }
}

void __57__CCCameraConnection_didUpdateShallowDepthOfFieldStatus___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)didUpdateStereoCaptureStatus:(int64_t)a3
{
  self->_stereoCaptureStatus = a3;
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v5 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_127];
    [v5 xpc_didUpdateStereoCaptureStatus:a3];
  }
}

void __51__CCCameraConnection_didUpdateStereoCaptureStatus___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)captureDeviceDidChange
{
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v3 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_129];
    [v3 xpc_captureDeviceDidChange];
  }
}

void __44__CCCameraConnection_captureDeviceDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)flashModeDidChange
{
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v3 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_131];
    [v3 xpc_flashModeDidChange:{-[CCCameraConnection _flashMode](self, "_flashMode")}];
  }
}

void __40__CCCameraConnection_flashModeDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)hdrModeDidChange
{
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v3 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_133];
    [v3 xpc_hdrModeDidChange:{-[CCCameraConnection _hdrMode](self, "_hdrMode")}];
  }
}

void __38__CCCameraConnection_hdrModeDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)irisModeDidChange
{
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v3 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_135];
    [v3 xpc_irisModeDidChange:{-[CCCameraConnection _irisMode](self, "_irisMode")}];
  }
}

void __39__CCCameraConnection_irisModeDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)sharedLibrarySupportDidChange
{
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v3 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_137];
    [v3 xpc_sharedLibrarySupportDidChange:{-[CCCameraConnection _sharedLibrarySupport](self, "_sharedLibrarySupport")}];
  }
}

void __51__CCCameraConnection_sharedLibrarySupportDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)sharedLibraryModeDidChange
{
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v3 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_139];
    [v3 xpc_sharedLibraryModeDidChange:{-[CCCameraConnection _sharedLibraryMode](self, "_sharedLibraryMode")}];
  }
}

void __48__CCCameraConnection_sharedLibraryModeDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)xpc_ensureSwitchedToOneOfSupportedCaptureModes:(id)a3 reply:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = nanocamera_log_control();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "[CCCameraConnection xpc_ensureSwitchedToOneOfSupportedCaptureModes:reply:]";
    v17 = 2080;
    v18 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v19 = 1024;
    v20 = 533;
    _os_log_impl(&dword_243CBC000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__CCCameraConnection_xpc_ensureSwitchedToOneOfSupportedCaptureModes_reply___block_invoke;
  block[3] = &unk_278DEF130;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __75__CCCameraConnection_xpc_ensureSwitchedToOneOfSupportedCaptureModes_reply___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _captureMode];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  LOBYTE(v3) = [v3 containsObject:v4];

  if ((v3 & 1) == 0)
  {
    v5 = [*(a1 + 40) mutableCopy];
    v6 = [*(a1 + 32) _supportedCaptureModes];
    [v5 intersectOrderedSet:v6];

    if ([v5 count])
    {
      v7 = [v5 firstObject];
      v8 = [v7 integerValue];

      v9 = nanocamera_log_control();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = _ncCaptureModeFromCCCaptureMode(v8);
        if (v10 < 0xD && ((0x1FABu >> v10) & 1) != 0)
        {
          v11 = off_278DEF290[v10];
        }

        else
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v10];
        }

        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&dword_243CBC000, v9, OS_LOG_TYPE_DEFAULT, "Forcing mode to %@", buf, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = objc_loadWeakRetained((*(a1 + 32) + 160));
        [v14 cameraConnection:*(a1 + 32) setCaptureMode:v8];
      }
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)takePhotoWithCountdown:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v9 = "[CCCameraConnection takePhotoWithCountdown:]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v12 = 1024;
    v13 = 559;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__CCCameraConnection_takePhotoWithCountdown___block_invoke;
  v7[3] = &unk_278DEF158;
  v7[4] = self;
  v7[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __45__CCCameraConnection_takePhotoWithCountdown___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  [WeakRetained cameraConnection:*(a1 + 32) takePhotoWithCountdown:*(a1 + 40)];
}

- (void)xpc_beginBurstCaptureWithReply:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[CCCameraConnection xpc_beginBurstCaptureWithReply:]";
    v12 = 2080;
    v13 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v14 = 1024;
    v15 = 568;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__CCCameraConnection_xpc_beginBurstCaptureWithReply___block_invoke;
  v8[3] = &unk_278DEF180;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __53__CCCameraConnection_xpc_beginBurstCaptureWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    v5 = [v4 cameraConnectionBeginBurstCapture:*(a1 + 32)];

    if (v5)
    {
      *(*(a1 + 32) + 112) = 1;
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)xpc_endBurstCaptureWithReply:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[CCCameraConnection xpc_endBurstCaptureWithReply:]";
    v12 = 2080;
    v13 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v14 = 1024;
    v15 = 586;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__CCCameraConnection_xpc_endBurstCaptureWithReply___block_invoke;
  v8[3] = &unk_278DEF180;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __51__CCCameraConnection_xpc_endBurstCaptureWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    v5 = [v4 cameraConnectionEndBurstCapture:*(a1 + 32)];

    if (v5)
    {
      *(*(a1 + 32) + 112) = 0;
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)xpc_setCaptureDevice:(int64_t)a3 reply:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = nanocamera_log_control();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[CCCameraConnection xpc_setCaptureDevice:reply:]";
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v17 = 1024;
    v18 = 604;
    _os_log_impl(&dword_243CBC000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CCCameraConnection_xpc_setCaptureDevice_reply___block_invoke;
  block[3] = &unk_278DEF1A8;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __49__CCCameraConnection_xpc_setCaptureDevice_reply___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 160));
    [v4 cameraConnection:a1[4] setCaptureDevice:a1[6]];
  }

  result = a1[5];
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)xpc_setCaptureMode:(int64_t)a3 reply:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = nanocamera_log_control();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[CCCameraConnection xpc_setCaptureMode:reply:]";
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v17 = 1024;
    v18 = 619;
    _os_log_impl(&dword_243CBC000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CCCameraConnection_xpc_setCaptureMode_reply___block_invoke;
  block[3] = &unk_278DEF1A8;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __47__CCCameraConnection_xpc_setCaptureMode_reply___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 160));
    [v4 cameraConnection:a1[4] setCaptureMode:a1[6]];
  }

  result = a1[5];
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)xpc_startCaptureWithMode:(int64_t)a3 reply:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = nanocamera_log_control();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[CCCameraConnection xpc_startCaptureWithMode:reply:]";
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v17 = 1024;
    v18 = 634;
    _os_log_impl(&dword_243CBC000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CCCameraConnection_xpc_startCaptureWithMode_reply___block_invoke;
  block[3] = &unk_278DEF1A8;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __53__CCCameraConnection_xpc_startCaptureWithMode_reply___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == [*(a1 + 32) _captureMode])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
      v5 = [v4 cameraConnectionStartCapture:*(a1 + 32)];

      if (v5)
      {
        *(*(a1 + 32) + 113) = 1;
      }
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)xpc_pauseCaptureWithReply:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[CCCameraConnection xpc_pauseCaptureWithReply:]";
    v12 = 2080;
    v13 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v14 = 1024;
    v15 = 653;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__CCCameraConnection_xpc_pauseCaptureWithReply___block_invoke;
  v8[3] = &unk_278DEF180;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __48__CCCameraConnection_xpc_pauseCaptureWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnectionPauseCapture:*(a1 + 32)];
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)xpc_resumeCaptureWithReply:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[CCCameraConnection xpc_resumeCaptureWithReply:]";
    v12 = 2080;
    v13 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v14 = 1024;
    v15 = 668;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__CCCameraConnection_xpc_resumeCaptureWithReply___block_invoke;
  v8[3] = &unk_278DEF180;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __49__CCCameraConnection_xpc_resumeCaptureWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnectionResumeCapture:*(a1 + 32)];
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)xpc_stopCaptureWithReply:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[CCCameraConnection xpc_stopCaptureWithReply:]";
    v12 = 2080;
    v13 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v14 = 1024;
    v15 = 683;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__CCCameraConnection_xpc_stopCaptureWithReply___block_invoke;
  v8[3] = &unk_278DEF180;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __47__CCCameraConnection_xpc_stopCaptureWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    v5 = [v4 cameraConnectionStopCapture:*(a1 + 32)];

    if (v5)
    {
      *(*(a1 + 32) + 113) = 0;
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)xpc_suspend
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v7 = "[CCCameraConnection xpc_suspend]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v10 = 1024;
    v11 = 701;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CCCameraConnection_xpc_suspend__block_invoke;
  block[3] = &unk_278DEF1D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v4 = *MEMORY[0x277D85DE8];
}

void __33__CCCameraConnection_xpc_suspend__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnectionSuspend:*(a1 + 32)];
  }
}

- (void)xpc_setPreviewEndpoint:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nanocamera_log_preview();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[CCCameraConnection xpc_setPreviewEndpoint:]";
    v12 = 2080;
    v13 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v14 = 1024;
    v15 = 712;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__CCCameraConnection_xpc_setPreviewEndpoint___block_invoke;
  v8[3] = &unk_278DEF1F8;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __45__CCCameraConnection_xpc_setPreviewEndpoint___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2[4])
  {

    return [v2 _openPreview];
  }

  else
  {

    return [v2 _closePreview];
  }
}

- (void)xpc_setFocusPoint:(id)a3
{
  v4 = a3;
  v9 = 0uLL;
  if (!strcmp([v4 objCType], "{CGPoint=dd}"))
  {
    [v4 getValue:&v9];
    v6 = nanocamera_log_control();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(CCCameraConnection *)&v9 xpc_setFocusPoint:v6];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__CCCameraConnection_xpc_setFocusPoint___block_invoke;
    block[3] = &unk_278DEF220;
    block[4] = self;
    v8 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v5 = nanocamera_log_control();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CCCameraConnection xpc_setFocusPoint:];
    }
  }
}

void __40__CCCameraConnection_xpc_setFocusPoint___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnection:*(a1 + 32) setFocusPoint:{*(a1 + 40), *(a1 + 48)}];
  }
}

- (id)_supportedCaptureDevices
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 cameraConnectionSupportedCaptureDevices:self];

    v7 = [MEMORY[0x277CBEB70] orderedSetWithArray:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB70] orderedSetWithObjects:{&unk_2856ED548, &unk_2856ED560, 0}];
  }

  return v7;
}

- (int64_t)_captureDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionCaptureDevice:self];

  return v6;
}

- (id)_supportedCaptureModes
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 cameraConnectionSupportedCaptureModes:self];

    v7 = [MEMORY[0x277CBEB70] orderedSetWithArray:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB70] orderedSetWithObject:&unk_2856ED548];
  }

  return v7;
}

- (int64_t)_captureMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionCaptureMode:self];

  return v6;
}

- (BOOL)_toggleCameraDeviceSupport
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionToggleCameraDeviceSupport:self];

  return v6;
}

- (BOOL)_zoomSupport
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionZoomSupport:self];

  return v6;
}

- (double)_zoomAmount
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 cameraConnectionZoomAmount:self];
    v4 = v6;
  }

  if (v4 > 1.0 || v4 < 0.0)
  {
    return 0.0;
  }

  else
  {
    return v4;
  }
}

- (int64_t)_flashSupport
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionFlashSupport:self];

  return v6;
}

- (int64_t)_flashMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionFlashSupport:self];

  if (!v6)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = [v9 cameraConnectionFlashMode:self];

  return v10;
}

- (int64_t)_hdrSupport
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionHDRSupport:self];

  return v6;
}

- (int64_t)_hdrMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionHDRSupport:self];

  if (!v6)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = [v9 cameraConnectionHDRMode:self];

  return v10;
}

- (int64_t)_irisSupport
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionIrisSupport:self];

  return v6;
}

- (int64_t)_irisMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionIrisSupport:self];

  if (!v6)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = [v9 cameraConnectionIrisMode:self];

  return v10;
}

- (int64_t)_sharedLibrarySupport
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionSharedLibrarySupport:self];

  return v6;
}

- (int64_t)_sharedLibraryMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionSharedLibrarySupport:self];

  if (!v6)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = [v9 cameraConnectionSharedLibraryMode:self];

  return v10;
}

- (BOOL)_supportsZoomMagnification
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionZoomMagnificationSupport:self];

  return v6;
}

- (double)_minimumZoomMagnification
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0.0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 cameraConnectionMinimumZoomMagnification:self];
  v7 = v6;

  return v7;
}

- (double)_maximumZoomMagnification
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0.0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 cameraConnectionMaximumZoomMagnification:self];
  v7 = v6;

  return v7;
}

- (id)_significantZoomMagnifications
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 cameraConnectionSignificantZoomMagnifications:self];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (double)_currentZoomMagnification
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0.0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 cameraConnectionCurrentZoomMagnification:self];
  v7 = v6;

  return v7;
}

- (BOOL)_supportsMomentCapture
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionSupportsMomentCapture:self];

  return v6;
}

- (BOOL)_burstSupport
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionBurstSupport:self];

  return v6;
}

- (void)xpc_fetchCurrentStateIncludingSupportedCaptureModes:(BOOL)a3 reply:(id)a4
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__CCCameraConnection_xpc_fetchCurrentStateIncludingSupportedCaptureModes_reply___block_invoke;
  block[3] = &unk_278DEF248;
  v10 = a3;
  block[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __80__CCCameraConnection_xpc_fetchCurrentStateIncludingSupportedCaptureModes_reply___block_invoke(uint64_t a1)
{
  v145 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _supportedCaptureDevices];
  v84 = [*(a1 + 32) _captureDevice];
  if (*(a1 + 48) == 1)
  {
    v3 = [*(a1 + 32) _supportedCaptureModes];
  }

  else
  {
    v3 = 0;
  }

  v83 = [*(a1 + 32) _captureMode];
  v4 = *(a1 + 32);
  v82 = *(v4 + 113);
  v5 = *(v4 + 120);
  v6 = *(a1 + 32);
  v81 = *(v6 + 128);
  v7 = *(v6 + 136);
  v80 = [*(a1 + 32) _currentOrientation];
  v79 = [*(a1 + 32) _toggleCameraDeviceSupport];
  v78 = [*(a1 + 32) _zoomSupport];
  [*(a1 + 32) _zoomAmount];
  v9 = v8;
  v77 = [*(a1 + 32) _supportsZoomMagnification];
  [*(a1 + 32) _minimumZoomMagnification];
  v11 = v10;
  [*(a1 + 32) _maximumZoomMagnification];
  v13 = v12;
  v14 = [*(a1 + 32) _significantZoomMagnifications];
  [*(a1 + 32) _currentZoomMagnification];
  v16 = v15;
  v76 = [*(a1 + 32) _flashSupport];
  v75 = [*(a1 + 32) _flashMode];
  v74 = [*(a1 + 32) _hdrSupport];
  v73 = [*(a1 + 32) _hdrMode];
  v72 = [*(a1 + 32) _irisSupport];
  v71 = [*(a1 + 32) _irisMode];
  v70 = [*(a1 + 32) _sharedLibrarySupport];
  v69 = [*(a1 + 32) _sharedLibraryMode];
  v68 = [*(a1 + 32) _supportsMomentCapture];
  v17 = [*(a1 + 32) _burstSupport];
  v18 = *(a1 + 32);
  v67 = v18[7];
  v19 = v18[18];
  v20 = v18[19];
  v21 = nanocamera_log_control();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v24 = _ncCaptureDeviceFromCCCaptureDevice(v84);
    if (v24)
    {
      if (v24)
      {
        v25 = @"Front";
      }

      else
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v24];
      }
    }

    else
    {
      v25 = @"Back";
    }

    v59 = v25;
    v26 = @"not-included";
    if (v3)
    {
      v26 = v3;
    }

    v55 = v26;
    v27 = _ncCaptureModeFromCCCaptureMode(v83);
    if (v27 < 0xD && ((0x1FABu >> v27) & 1) != 0)
    {
      v28 = off_278DEF290[v27];
    }

    else
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v27];
    }

    v66 = v28;
    v29 = _ncOrientationFromDeviceOrientation(v80);
    if (v29 >= 5)
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v29];
    }

    else
    {
      v30 = off_278DEF2F8[v29];
    }

    v58 = v30;
    v31 = _ncFlashSupportFromCCFlashSupport(v76);
    if (v31 >= 3)
    {
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v31];
    }

    else
    {
      v32 = off_278DEF340[v31];
    }

    v65 = v32;
    v33 = _ncFlashModeFromCCFlashMode(v75);
    if (v33 >= 3)
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v33];
    }

    else
    {
      v34 = off_278DEF358[v33];
    }

    v64 = v34;
    v35 = _ncHDRSupportFromCCHDRSupport(v74);
    if (v35 >= 4)
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v35];
    }

    else
    {
      v36 = off_278DEF320[v35];
    }

    v63 = v36;
    v37 = _ncHDRModeFromCCHDRMode(v73);
    if (v37 >= 3)
    {
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v37];
    }

    else
    {
      v38 = off_278DEF358[v37];
    }

    v62 = v38;
    v39 = _ncIrisSupportFromCCIrisSupport(v72);
    if (v39 >= 3)
    {
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v39];
    }

    else
    {
      v40 = off_278DEF340[v39];
    }

    v61 = v40;
    v41 = _ncIrisModeFromCCIrisMode(v71);
    if (v41 >= 3)
    {
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v41];
    }

    else
    {
      v42 = off_278DEF358[v41];
    }

    v60 = v42;
    v43 = _ncSharedLibrarySupportFromCCSharedLibrarySupport(v70);
    if (v43)
    {
      if (v43)
      {
        v44 = @"OnOff";
      }

      else
      {
        v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v43];
      }
    }

    else
    {
      v44 = @"None";
    }

    v57 = v44;
    v45 = _ncSharedLibraryModeFromCCSharedLibraryMode(v69);
    if (v45)
    {
      if (v45)
      {
        v46 = @"On";
      }

      else
      {
        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v45];
      }
    }

    else
    {
      v46 = @"Off";
    }

    v56 = v46;
    v47 = _ncShallowDepthOfFieldStatusFromCCShallowDepthOfFieldStatus(v19);
    if (v47 >= 0x10)
    {
      v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v47];
    }

    else
    {
      v48 = off_278DEF370[v47];
    }

    v54 = v48;
    v49 = _ncStereoCaptureStatusFromCCStereoCaptureStatus(v20);
    if (v49 < 5 && ((0x17u >> v49) & 1) != 0)
    {
      v50 = off_278DEF3F0[v49];
    }

    else
    {
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v49];
    }

    v53 = v50;
    *buf = 138419714;
    v86 = v2;
    v87 = 2112;
    v88 = v59;
    v89 = 2112;
    v90 = v55;
    v91 = 2112;
    v92 = v66;
    v93 = 1024;
    v94 = v82;
    v95 = 2112;
    v96 = v5;
    v97 = 1024;
    v98 = v81;
    v99 = 2112;
    v100 = v7;
    v101 = 2112;
    v102 = v58;
    v103 = 1024;
    v104 = v79;
    v105 = 1024;
    v106 = v78;
    v107 = 2048;
    v108 = v9;
    v109 = 1024;
    v110 = v77;
    v111 = 2048;
    v112 = v11;
    v113 = 2048;
    v114 = v13;
    v115 = 2112;
    v116 = v14;
    v117 = 2048;
    v118 = v16;
    v119 = 2112;
    v120 = v65;
    v121 = 2112;
    v122 = v64;
    v123 = 2112;
    v124 = v63;
    v125 = 2112;
    v126 = v62;
    v127 = 2112;
    v128 = v61;
    v129 = 2112;
    v130 = v60;
    v131 = 2112;
    v132 = v57;
    v133 = 2112;
    v134 = v56;
    v135 = 1024;
    v136 = v68;
    v137 = 1024;
    v138 = v17;
    v139 = 2048;
    v140 = v67;
    v141 = 2112;
    v142 = v54;
    v143 = 2112;
    v144 = v50;
    _os_log_debug_impl(&dword_243CBC000, v21, OS_LOG_TYPE_DEBUG, "supportedCaptureDevices:%@ captureDevice:%@ supportedCaptureModes:%@ captureMode:%@ capturing:%d captureStartDate:%@ capturingPaused:%d capturePauseDate:%@ orientation:%@ toggleCameraDeviceSupport:%d zoomSupport:%d zoomAmount:%f zoomMagnificationSupport:%d minimumZoomMagnification:%f maximumZoomMagnification:%f significantZoomMagnifications:%@ currentZoomMagnification:%f flashSupport:%@ flashMode:%@ hdrSupport:%@ hdrMode:%@ irisSupport:%@ irisMode:%@ sharedLibrarySupport:%@ sharedLibraryMode:%@ supportsMomentCapture:%d burstSupport:%d viewfinderSessionState:%lu shallowDepthOfFieldStatus:%@ stereoCaptureStatus:%@", buf, 0x112u);
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    HIBYTE(v52) = v17;
    LOBYTE(v52) = v68;
    BYTE2(v51) = v77;
    BYTE1(v51) = v78;
    LOBYTE(v51) = v79;
    (*(v22 + 16))(v22, v2, v84, v3, v83, v82, v5, v81, v9, v11, v13, v16, v7, v80, v51, v14, v76, v75, v74, v73, v72, v71, v70, v69, v52, v67, v19, v20);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)xpc_cancelCountdown
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CCCameraConnection_xpc_cancelCountdown__block_invoke;
  block[3] = &unk_278DEF1D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__CCCameraConnection_xpc_cancelCountdown__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnectionCancelCountdown:*(a1 + 32)];
  }
}

- (void)xpc_setZoom:(float)a3 reply:(id)a4
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CCCameraConnection_xpc_setZoom_reply___block_invoke;
  block[3] = &unk_278DEF270;
  v10 = a3;
  block[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __40__CCCameraConnection_xpc_setZoom_reply___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 100) = *(a1 + 48);
  v3 = 0.0;
  if ([*(a1 + 32) _zoomSupport])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 160));
      [v6 cameraConnection:*(a1 + 32) setZoomAmount:*(a1 + 48)];

      [*(a1 + 32) _zoomAmount];
      v3 = v2.n128_f64[0];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);
    v2.n128_f32[0] = v3;

    return v8(v2);
  }

  return result;
}

- (void)xpc_setZoomMagnification:(float)a3 reply:(id)a4
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CCCameraConnection_xpc_setZoomMagnification_reply___block_invoke;
  block[3] = &unk_278DEF270;
  v10 = a3;
  block[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __53__CCCameraConnection_xpc_setZoomMagnification_reply___block_invoke(uint64_t a1)
{
  v3 = 0.0;
  if ([*(a1 + 32) _supportsZoomMagnification])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 160));
      [v6 cameraConnection:*(a1 + 32) setZoomMagnificationAmount:*(a1 + 48)];

      [*(a1 + 32) _currentZoomMagnification];
      v3 = v2.n128_f64[0];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);
    v2.n128_f32[0] = v3;

    return v8(v2);
  }

  return result;
}

- (void)xpc_setFlashMode:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__CCCameraConnection_xpc_setFlashMode___block_invoke;
  v3[3] = &unk_278DEF158;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __39__CCCameraConnection_xpc_setFlashMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnection:*(a1 + 32) setFlashMode:*(a1 + 40)];
  }
}

- (void)xpc_setHDRMode:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__CCCameraConnection_xpc_setHDRMode___block_invoke;
  v3[3] = &unk_278DEF158;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __37__CCCameraConnection_xpc_setHDRMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnection:*(a1 + 32) setHDRMode:*(a1 + 40)];
  }
}

- (void)xpc_setIrisMode:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__CCCameraConnection_xpc_setIrisMode___block_invoke;
  v3[3] = &unk_278DEF158;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __38__CCCameraConnection_xpc_setIrisMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnection:*(a1 + 32) setIrisMode:*(a1 + 40)];
  }
}

- (void)xpc_setSharedLibraryMode:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__CCCameraConnection_xpc_setSharedLibraryMode___block_invoke;
  v3[3] = &unk_278DEF158;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __47__CCCameraConnection_xpc_setSharedLibraryMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnection:*(a1 + 32) setSharedLibraryMode:*(a1 + 40)];
  }
}

- (void)xpc_toggleCameraDevice
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CCCameraConnection_xpc_toggleCameraDevice__block_invoke;
  block[3] = &unk_278DEF1D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __44__CCCameraConnection_xpc_toggleCameraDevice__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnectionToggleCameraDevice:*(a1 + 32)];
  }
}

- (void)_openPreview
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_preview();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[CCCameraConnection _openPreview]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v9 = 1024;
    v10 = 1068;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v5, 0x1Cu);
  }

  self->_desiredPreviewState = 2;
  [(CCCameraConnection *)self _performPreviewStateTransitionsIfNeeded];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_closePreview
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_preview();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[CCCameraConnection _closePreview]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v9 = 1024;
    v10 = 1076;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v5, 0x1Cu);
  }

  self->_desiredPreviewState = 0;
  [(CCCameraConnection *)self _performPreviewStateTransitionsIfNeeded];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_performPreviewStateTransitionsIfNeeded
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_preview();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    desiredPreviewState = self->_desiredPreviewState;
    currentPreviewState = self->_currentPreviewState;
    *buf = 67109376;
    *v20 = desiredPreviewState;
    *&v20[4] = 1024;
    *&v20[6] = currentPreviewState;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "Preview desired state: %d, current state: %d", buf, 0xEu);
  }

  v6 = self->_desiredPreviewState;
  if (v6)
  {
    if (v6 == 2 && !self->_currentPreviewState && self->_remoteViewfinderSession && self->_previewEndpoint)
    {
      v7 = nanocamera_log_preview();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        previewEndpoint = self->_previewEndpoint;
        remoteViewfinderSession = self->_remoteViewfinderSession;
        *buf = 138412546;
        *v20 = previewEndpoint;
        *&v20[8] = 2112;
        v21 = remoteViewfinderSession;
        _os_log_impl(&dword_243CBC000, v7, OS_LOG_TYPE_DEFAULT, "Opening preview stream, destination: %@, session:%@", buf, 0x16u);
      }

      v10 = +[ViewfinderReliability sharedInstance];
      [v10 logEvent:12];

      v11 = self->_remoteViewfinderSession;
      v12 = self->_previewEndpoint;
      v17 = *MEMORY[0x277CF3B50];
      v18 = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      [(FigCameraViewfinderSession *)v11 openPreviewStreamWithOptions:v13];

      self->_currentPreviewState = 1;
    }
  }

  else if (self->_currentPreviewState == 2 && self->_remoteViewfinderSession)
  {
    v14 = nanocamera_log_preview();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_remoteViewfinderSession;
      *buf = 138412290;
      *v20 = v15;
      _os_log_impl(&dword_243CBC000, v14, OS_LOG_TYPE_DEFAULT, "Closing preview stream, session:%@", buf, 0xCu);
    }

    [(FigCameraViewfinderSession *)self->_remoteViewfinderSession closePreviewStream];
    self->_currentPreviewState = 3;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPreviewConnected
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_preview();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[CCCameraConnection isPreviewConnected]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v10 = 1024;
    v11 = 1104;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v6, 0x1Cu);
  }

  if (self->_remoteViewfinderSession)
  {
    result = self->_previewEndpoint != 0;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = nanocamera_log_preview();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[CCCameraConnection cameraViewfinder:viewfinderSessionDidBegin:]";
    v13 = 2080;
    v14 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v15 = 1024;
    v16 = 1111;
    _os_log_impl(&dword_243CBC000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v11, 0x1Cu);
  }

  v8 = +[ViewfinderReliability sharedInstance];
  [v8 logEvent:10];

  objc_storeStrong(&self->_remoteViewfinderSession, a4);
  self->_remoteViewfinderSessionState = 1;
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v9 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_228];
    [v9 xpc_viewfinderSessionStateDidChange:self->_remoteViewfinderSessionState];
  }

  self->_currentPreviewState = 0;
  [(CCCameraConnection *)self _performPreviewStateTransitionsIfNeeded];

  v10 = *MEMORY[0x277D85DE8];
}

void __65__CCCameraConnection_cameraViewfinder_viewfinderSessionDidBegin___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = nanocamera_log_preview();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[CCCameraConnection cameraViewfinder:viewfinderSessionDidEnd:]";
    v13 = 2080;
    v14 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v15 = 1024;
    v16 = 1129;
    _os_log_impl(&dword_243CBC000, v6, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v11, 0x1Cu);
  }

  v7 = +[ViewfinderReliability sharedInstance];
  [v7 logEvent:11];

  remoteViewfinderSession = self->_remoteViewfinderSession;
  if (remoteViewfinderSession != v5)
  {
    v9 = nanocamera_log_preview();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CCCameraConnection cameraViewfinder:? viewfinderSessionDidEnd:?];
    }

    goto LABEL_6;
  }

  self->_currentPreviewState = 0;
  self->_remoteViewfinderSession = 0;

  if (self->_remoteViewfinderSessionState)
  {
    self->_remoteViewfinderSessionState = 2;
    if ([(CCCameraConnection *)self _shouldReportEvent])
    {
      v9 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_230];
      [v9 xpc_viewfinderSessionStateDidChange:self->_remoteViewfinderSessionState];
LABEL_6:
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __63__CCCameraConnection_cameraViewfinder_viewfinderSessionDidEnd___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)cameraViewfinderSession:(id)a3 didCapturePhotoWithStatus:(int)a4 thumbnailData:(id)a5 timestamp:(id *)a6
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = nanocamera_log_preview();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CCCameraConnection cameraViewfinderSession:didCapturePhotoWithStatus:thumbnailData:timestamp:]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v12 = 1024;
    v13 = 1154;
    _os_log_impl(&dword_243CBC000, v6, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v8, 0x1Cu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cameraViewfinderSessionPreviewStreamDidOpen:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nanocamera_log_preview();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[CCCameraConnection cameraViewfinderSessionPreviewStreamDidOpen:]";
    v13 = 2080;
    v14 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v15 = 1024;
    v16 = 1159;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v11, 0x1Cu);
  }

  v6 = +[ViewfinderReliability sharedInstance];
  [v6 logEvent:13];

  p_remoteViewfinderSession = &self->_remoteViewfinderSession;
  remoteViewfinderSession = self->_remoteViewfinderSession;
  if (!remoteViewfinderSession || remoteViewfinderSession == v4)
  {
    self->_currentPreviewState = 2;
    [(CCCameraConnection *)self _performPreviewStateTransitionsIfNeeded];
  }

  else
  {
    v9 = nanocamera_log_preview();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CCCameraConnection cameraViewfinderSessionPreviewStreamDidOpen:?];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleInterruption
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CCCameraConnection _handleInterruption]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v12 = 1024;
    v13 = 1194;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v8, 0x1Cu);
  }

  ++self->_interruptionCount;
  v4 = nanocamera_log_control();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    interruptionCount = self->_interruptionCount;
    v8 = 134217984;
    v9 = interruptionCount;
    _os_log_impl(&dword_243CBC000, v4, OS_LOG_TYPE_DEFAULT, "Connection interrupted %lu times", &v8, 0xCu);
  }

  if (self->_interruptionCount < 0xA)
  {
    [(CCCameraConnection *)self _checkin];
  }

  else
  {
    v6 = nanocamera_log_control();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_243CBC000, v6, OS_LOG_TYPE_DEFAULT, "Connection interruption limit reached", &v8, 2u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleInvalidation
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[CCCameraConnection _handleInvalidation]";
    v9 = 2080;
    v10 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v11 = 1024;
    v12 = 1209;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v7, 0x1Cu);
  }

  self->_interruptionCount = 0;
  xpc = self->_xpc;
  self->_xpc = 0;

  previewEndpoint = self->_previewEndpoint;
  self->_previewEndpoint = 0;

  [(CCCameraConnection *)self _closePreview];
  v6 = *MEMORY[0x277D85DE8];
}

- (CCCameraConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __30__CCCameraConnection__checkin__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_243CBC000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateThumbnailWithData:(uint64_t)a3 isVideo:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 16));
  OUTLINED_FUNCTION_4(&dword_243CBC000, a2, a3, "_xpc is %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)captureDeviceDidChange:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_243CBC000, v0, v1, "captureDevice: %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)modeSelected:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_243CBC000, v0, v1, "captureMode: %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)switchedOrientation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ncOrientationFromDeviceOrientation(a1);
  if (v3 > 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v3];
  }

  else
  {
    v4 = off_278DEF2F8[v3];
  }

  *buf = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_243CBC000, a2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)xpc_setFocusPoint:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_243CBC000, v0, v1, "Passed invalid focusPoint parameter %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)xpc_setFocusPoint:(uint64_t *)a1 .cold.2(uint64_t *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v5 = 134218240;
  v6 = v2;
  v7 = 2048;
  v8 = v3;
  _os_log_debug_impl(&dword_243CBC000, a2, OS_LOG_TYPE_DEBUG, "Focus Point: {%.4f, %.4f}", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)cameraViewfinder:(uint64_t *)a1 viewfinderSessionDidEnd:.cold.1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_243CBC000, v2, v3, "[lifecycle] Skipping sessionDidEnd (mismatch) stored=%@ eventSession=%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)cameraViewfinderSessionPreviewStreamDidOpen:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_243CBC000, v2, v3, "[lifecycle] Skipping streamDidOpen (mismatch) stored=%@ eventSession=%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)cameraViewfinderSession:(int)a1 previewStreamDidCloseWithStatus:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_243CBC000, a2, OS_LOG_TYPE_ERROR, "previewStreamDidCloseWithStatus: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)cameraViewfinderSession:(uint64_t *)a1 previewStreamDidCloseWithStatus:.cold.2(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_243CBC000, v2, v3, "[lifecycle] Skipping streamDidCloseWithStatus (mismatch) stored=%@ eventSession=%@");
  v4 = *MEMORY[0x277D85DE8];
}

@end