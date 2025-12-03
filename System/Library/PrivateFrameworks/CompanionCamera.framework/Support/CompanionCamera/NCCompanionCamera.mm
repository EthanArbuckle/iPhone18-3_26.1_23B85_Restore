@interface NCCompanionCamera
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NCCompanionCamera)init;
- (void)_cameraPreviewIDSSocketCreationFailed;
- (void)_queue_setCompanionCameraOpenStatePreference:(BOOL)preference;
- (void)_sendCameraStateChangedRequest:(id)request;
- (void)_sendCurrentCameraState;
- (void)_setCompanionCameraOpenStatePreference:(int)preference;
- (void)beginBurstCapture:(id)capture;
- (void)cancelCountdown:(id)countdown;
- (void)checkin;
- (void)closeCamera:(id)camera;
- (void)connectionDidTearDown:(id)down;
- (void)dealloc;
- (void)endBurstCapture:(id)capture;
- (void)messageCenter:(id)center didChangeConnectedState:(BOOL)state;
- (void)openCamera:(id)camera;
- (void)pauseCapture:(id)capture;
- (void)pressShutter:(id)shutter;
- (void)resumeCapture:(id)capture;
- (void)setCaptureDevice:(id)device;
- (void)setCaptureMode:(id)mode;
- (void)setFlashMode:(id)mode;
- (void)setFocusPoint:(id)point;
- (void)setHDRMode:(id)mode;
- (void)setIrisMode:(id)mode;
- (void)setSharedLibraryMode:(id)mode;
- (void)setZoomMagnification:(id)magnification;
- (void)startCapture:(id)capture;
- (void)stopCapture:(id)capture;
- (void)toggleCameraDevice:(id)device;
- (void)userDidTakeScreenshot:(id)screenshot;
- (void)xpc_burstCaptureDidStop;
- (void)xpc_burstCaptureWillStart;
- (void)xpc_captureDeviceDidChange;
- (void)xpc_captureDeviceDidChange:(int64_t)change;
- (void)xpc_captureModeSelected:(int64_t)selected;
- (void)xpc_countdownCanceled;
- (void)xpc_didPauseCaptureTimerWithDate:(id)date;
- (void)xpc_didResumeCaptureTimerWithDate:(id)date;
- (void)xpc_didStartCaptureTimerWithDate:(id)date;
- (void)xpc_didStopCapture;
- (void)xpc_didUpdateShallowDepthOfFieldStatus:(int64_t)status;
- (void)xpc_didUpdateStereoCaptureStatus:(int64_t)status;
- (void)xpc_flashModeDidChange:(int64_t)change;
- (void)xpc_hdrModeDidChange:(int64_t)change;
- (void)xpc_irisModeDidChange:(int64_t)change;
- (void)xpc_orientationChanged:(int64_t)changed;
- (void)xpc_sharedLibraryModeDidChange:(int64_t)change;
- (void)xpc_sharedLibrarySupportDidChange:(int64_t)change;
- (void)xpc_viewfinderSessionStateDidChange:(unint64_t)change;
- (void)xpc_willStartCapturing;
- (void)xpc_zoomChanged:(float)changed;
- (void)zoom:(id)zoom;
@end

@implementation NCCompanionCamera

- (NCCompanionCamera)init
{
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v49 = "[NCCompanionCamera init]";
    v50 = 2080;
    v51 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v52 = 1024;
    v53 = 78;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v47.receiver = self;
  v47.super_class = NCCompanionCamera;
  v4 = [(NCCompanionCamera *)&v47 init];
  if (v4)
  {
    v5 = objc_alloc_init(NPSManager);
    npsManager = v4->_npsManager;
    v4->_npsManager = v5;

    v7 = [[NMSMessageCenter alloc] initWithIDSServiceIdentifier:@"com.apple.private.alloy.camera.proxy"];
    messageCenter = v4->_messageCenter;
    v4->_messageCenter = v7;

    [(NMSMessageCenter *)v4->_messageCenter setDelegate:v4];
    v9 = v4->_messageCenter;
    v10 = objc_opt_class();
    [(NMSMessageCenter *)v9 mapPBRequest:v10 toResponse:objc_opt_class() messageID:1];
    v11 = v4->_messageCenter;
    v12 = objc_opt_class();
    [(NMSMessageCenter *)v11 mapPBRequest:v12 toResponse:objc_opt_class() messageID:2];
    v13 = v4->_messageCenter;
    v14 = objc_opt_class();
    [(NMSMessageCenter *)v13 mapPBRequest:v14 toResponse:objc_opt_class() messageID:18];
    v15 = v4->_messageCenter;
    v16 = objc_opt_class();
    [(NMSMessageCenter *)v15 mapPBRequest:v16 toResponse:objc_opt_class() messageID:19];
    v17 = v4->_messageCenter;
    v18 = objc_opt_class();
    [(NMSMessageCenter *)v17 mapPBRequest:v18 toResponse:objc_opt_class() messageID:20];
    v19 = v4->_messageCenter;
    v20 = objc_opt_class();
    [(NMSMessageCenter *)v19 mapPBRequest:v20 toResponse:objc_opt_class() messageID:4];
    v21 = v4->_messageCenter;
    v22 = objc_opt_class();
    [(NMSMessageCenter *)v21 mapPBRequest:v22 toResponse:objc_opt_class() messageID:5];
    v23 = v4->_messageCenter;
    v24 = objc_opt_class();
    [(NMSMessageCenter *)v23 mapPBRequest:v24 toResponse:objc_opt_class() messageID:24];
    v25 = v4->_messageCenter;
    v26 = objc_opt_class();
    [(NMSMessageCenter *)v25 mapPBRequest:v26 toResponse:objc_opt_class() messageID:25];
    v27 = v4->_messageCenter;
    v28 = objc_opt_class();
    [(NMSMessageCenter *)v27 mapPBRequest:v28 toResponse:objc_opt_class() messageID:6];
    [(NMSMessageCenter *)v4->_messageCenter mapPBRequest:objc_opt_class() toResponse:0 messageID:7];
    [(NMSMessageCenter *)v4->_messageCenter mapPBRequest:objc_opt_class() toResponse:0 messageID:8];
    [(NMSMessageCenter *)v4->_messageCenter mapPBRequest:objc_opt_class() toResponse:0 messageID:9];
    [(NMSMessageCenter *)v4->_messageCenter mapPBRequest:objc_opt_class() toResponse:0 messageID:10];
    v29 = v4->_messageCenter;
    v30 = objc_opt_class();
    [(NMSMessageCenter *)v29 mapPBRequest:v30 toResponse:objc_opt_class() messageID:13];
    v31 = v4->_messageCenter;
    v32 = objc_opt_class();
    [(NMSMessageCenter *)v31 mapPBRequest:v32 toResponse:objc_opt_class() messageID:14];
    v33 = v4->_messageCenter;
    v34 = objc_opt_class();
    [(NMSMessageCenter *)v33 mapPBRequest:v34 toResponse:objc_opt_class() messageID:16];
    v35 = v4->_messageCenter;
    v36 = objc_opt_class();
    [(NMSMessageCenter *)v35 mapPBRequest:v36 toResponse:objc_opt_class() messageID:17];
    v37 = v4->_messageCenter;
    v38 = objc_opt_class();
    [(NMSMessageCenter *)v37 mapPBRequest:v38 toResponse:objc_opt_class() messageID:22];
    v39 = v4->_messageCenter;
    v40 = objc_opt_class();
    [(NMSMessageCenter *)v39 mapPBRequest:v40 toResponse:objc_opt_class() messageID:23];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"openCamera:" forMessageID:1];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"pressShutter:" forMessageID:2];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"beginBurstCapture:" forMessageID:18];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"endBurstCapture:" forMessageID:19];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"closeCamera:" forMessageID:11];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"setCaptureDevice:" forMessageID:20];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"setCaptureMode:" forMessageID:4];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"startCapture:" forMessageID:5];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"pauseCapture:" forMessageID:24];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"resumeCapture:" forMessageID:25];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"stopCapture:" forMessageID:6];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"setFocusPoint:" forMessageID:7];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"cancelCountdown:" forMessageID:12];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"zoom:" forMessageID:13];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"setFlashMode:" forMessageID:14];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"setHDRMode:" forMessageID:16];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"setIrisMode:" forMessageID:17];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"setSharedLibraryMode:" forMessageID:22];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"setZoomMagnification:" forMessageID:23];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"toggleCameraDevice:" forMessageID:15];
    [(NMSMessageCenter *)v4->_messageCenter addTarget:v4 action:"userDidTakeScreenshot:" forMessageID:21];
    [(NMSMessageCenter *)v4->_messageCenter resume];
    v41 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.companion.camera"];
    cameraListener = v4->_cameraListener;
    v4->_cameraListener = v41;

    [(NSXPCListener *)v4->_cameraListener setDelegate:v4];
    [(NSXPCListener *)v4->_cameraListener resume];
    objc_initWeak(buf, v4);
    actionQ = [(NMSMessageCenter *)v4->_messageCenter actionQ];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001974;
    handler[3] = &unk_100034530;
    objc_copyWeak(&v46, buf);
    notify_register_dispatch("com.apple.fignero.CameraPreviewIDSSocketCreationFailed", &v4->_cameraPreviewIDSSocketCreationFailedToken, actionQ, handler);

    objc_destroyWeak(&v46);
    objc_destroyWeak(buf);
  }

  return v4;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_cameraListener suspend];
  [(NSXPCListener *)self->_cameraListener invalidate];
  [(NSXPCListener *)self->_cameraListener setDelegate:0];
  v3.receiver = self;
  v3.super_class = NCCompanionCamera;
  [(NCCompanionCamera *)&v3 dealloc];
}

- (void)openCamera:(id)camera
{
  cameraCopy = camera;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    idsIdentifier = [cameraCopy idsIdentifier];
    *buf = 138412290;
    v41 = idsIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "openCamera. IDS ID %@", buf, 0xCu);
  }

  v7 = +[ViewfinderReliability sharedInstance];
  [v7 logEvent:0];

  self->_remoteCameraState = 1;
  self->_pendingSwitchToSupportedMode = 0;
  pbRequest = [cameraCopy pbRequest];
  v9 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [pbRequest supportedCaptureModesCount]);
  if ([pbRequest supportedCaptureModesCount])
  {
    v10 = 0;
    do
    {
      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", sub_10002477C([pbRequest supportedCaptureModeAtIndex:v10]));
      [v9 addObject:v11];

      ++v10;
    }

    while (v10 < [pbRequest supportedCaptureModesCount]);
  }

  if (![pbRequest supportedCaptureModesCount])
  {
    [v9 addObject:&off_100036718];
  }

  v12 = [v9 copy];
  clientSupportedCaptureModes = self->_clientSupportedCaptureModes;
  self->_clientSupportedCaptureModes = v12;

  if (!self->_activeCamera)
  {
    v19 = objc_alloc_init(NCOpenCameraResponse);
    [(NCOpenCameraResponse *)v19 setOpenState:1];
    response = [cameraCopy response];
    [response setPbResponse:v19];

    response2 = [cameraCopy response];
    [response2 setFireAndForget:1];

    response3 = [cameraCopy response];
    [response3 send];

    self->_pendingSwitchToSupportedMode = 1;
    v33 = 0;
    v23 = SBSGetScreenLockStatus();
    v24 = sub_1000145AC();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v25)
      {
        *buf = 0;
        v26 = "Attempting to open lock screen camera";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
      }
    }

    else if (v25)
    {
      *buf = 0;
      v26 = "Device unlocked. Attempting to launch Camera.app";
      goto LABEL_17;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v28 = SBSCreateOpenApplicationService();
    v38 = FBSOpenApplicationOptionKeyUnlockDevice;
    v39 = &__kCFBooleanTrue;
    v29 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v30 = [FBSOpenApplicationOptions optionsWithDictionary:v29];

    v31 = +[ViewfinderReliability sharedInstance];
    [v31 logEvent:2];

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100002204;
    v32[3] = &unk_1000345D0;
    v32[4] = self;
    *&v32[5] = Current;
    [v28 openApplication:@"com.apple.camera" withOptions:v30 completion:v32];

    goto LABEL_19;
  }

  v14 = sub_1000145AC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Opening connection to already running Camera instance.", buf, 2u);
  }

  activeCamera = self->_activeCamera;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100001F40;
  v36[3] = &unk_100034558;
  v16 = cameraCopy;
  v37 = v16;
  v17 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:v36];
  [v17 xpc_setPreviewEndpoint:@"proxy"];
  v18 = self->_clientSupportedCaptureModes;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10000200C;
  v34[3] = &unk_100034580;
  v34[4] = self;
  v35 = v16;
  [v17 xpc_ensureSwitchedToOneOfSupportedCaptureModes:v18 reply:v34];

  v19 = v37;
LABEL_19:
}

- (void)closeCamera:(id)camera
{
  cameraCopy = camera;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    idsIdentifier = [cameraCopy idsIdentifier];
    *buf = 138412290;
    v16 = idsIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "closeCamera. IDS ID %@", buf, 0xCu);
  }

  v7 = +[ViewfinderReliability sharedInstance];
  [v7 logEvent:1];

  self->_remoteCameraState = 2;
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v9 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:&stru_100034610];
    [v9 xpc_setPreviewEndpoint:0];

    if (!self->_capturing)
    {
      v10 = SBSGetScreenLockStatus();
      v11 = sub_1000145AC();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          *buf = 0;
          v13 = "Device locked";
LABEL_10:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
        }
      }

      else if (v12)
      {
        *buf = 0;
        v13 = "Device unlocked";
        goto LABEL_10;
      }

      v14 = [(NSXPCConnection *)self->_activeCamera remoteObjectProxyWithErrorHandler:&stru_100034630];
      [v14 xpc_suspend];
    }
  }
}

- (void)pressShutter:(id)shutter
{
  shutterCopy = shutter;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[NCCompanionCamera pressShutter:]";
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v17 = 1024;
    v18 = 293;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  self->_shutterLastPressed = CFAbsoluteTimeGetCurrent();
  pbRequest = [shutterCopy pbRequest];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000281C;
  v11[3] = &unk_100034658;
  v7 = shutterCopy;
  v12 = v7;
  v8 = objc_retainBlock(v11);
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v10 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:&stru_100034678];
    [v10 takePhotoWithCountdown:{objc_msgSend(pbRequest, "countdown")}];
  }

  (v8[2])(v8, activeCamera != 0);
}

- (void)beginBurstCapture:(id)capture
{
  captureCopy = capture;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[NCCompanionCamera beginBurstCapture:]";
    v20 = 2080;
    v21 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v22 = 1024;
    v23 = 320;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100002B4C;
  v16[3] = &unk_100034658;
  v6 = captureCopy;
  v17 = v6;
  v7 = objc_retainBlock(v16);
  v8 = v7;
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100002BF4;
    v14[3] = &unk_1000346A0;
    v10 = v7;
    v15 = v10;
    v11 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002C68;
    v12[3] = &unk_1000346C8;
    v13 = v10;
    [v11 xpc_beginBurstCaptureWithReply:v12];
  }

  else
  {
    (v7[2])(v7, 0);
  }
}

- (void)endBurstCapture:(id)capture
{
  captureCopy = capture;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[NCCompanionCamera endBurstCapture:]";
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v24 = 1024;
    v25 = 344;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  lastBurstCaptureNumberOfPhotos = self->_lastBurstCaptureNumberOfPhotos;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100002EB8;
  v17[3] = &unk_1000346F0;
  v19 = lastBurstCaptureNumberOfPhotos;
  v7 = captureCopy;
  v18 = v7;
  v8 = objc_retainBlock(v17);
  v9 = v8;
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100002F6C;
    v15[3] = &unk_1000346A0;
    v11 = v8;
    v16 = v11;
    v12 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100002FE0;
    v13[3] = &unk_1000346C8;
    v14 = v11;
    [v12 xpc_endBurstCaptureWithReply:v13];
  }

  else
  {
    (v8[2])(v8, 0);
  }
}

- (void)cancelCountdown:(id)countdown
{
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[NCCompanionCamera cancelCountdown:]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v10 = 1024;
    v11 = 371;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v6, 0x1Cu);
  }

  v5 = [(NSXPCConnection *)self->_activeCamera remoteObjectProxyWithErrorHandler:&stru_100034710];
  [v5 xpc_cancelCountdown];
}

- (void)setCaptureDevice:(id)device
{
  deviceCopy = device;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v22 = "[NCCompanionCamera setCaptureDevice:]";
    v23 = 2080;
    v24 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v25 = 1024;
    v26 = 380;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  pbRequest = [deviceCopy pbRequest];
  captureDevice = [pbRequest captureDevice];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000033AC;
  v19[3] = &unk_100034738;
  v19[4] = self;
  v8 = deviceCopy;
  v20 = v8;
  v9 = objc_retainBlock(v19);
  v10 = v9;
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000034B8;
    v17[3] = &unk_1000346A0;
    v12 = v9;
    v18 = v12;
    v13 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:v17];
    v14 = sub_10002474C(captureDevice);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000352C;
    v15[3] = &unk_1000346C8;
    v16 = v12;
    [v13 xpc_setCaptureDevice:v14 reply:v15];
  }

  else
  {
    (v9[2])(v9, 0);
  }
}

- (void)setCaptureMode:(id)mode
{
  modeCopy = mode;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v22 = "[NCCompanionCamera setCaptureMode:]";
    v23 = 2080;
    v24 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v25 = 1024;
    v26 = 417;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  pbRequest = [modeCopy pbRequest];
  captureMode = [pbRequest captureMode];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000037B4;
  v19[3] = &unk_100034738;
  v19[4] = self;
  v8 = modeCopy;
  v20 = v8;
  v9 = objc_retainBlock(v19);
  v10 = v9;
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000393C;
    v17[3] = &unk_1000346A0;
    v12 = v9;
    v18 = v12;
    v13 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:v17];
    v14 = sub_10002477C(captureMode);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000039B0;
    v15[3] = &unk_1000346C8;
    v16 = v12;
    [v13 xpc_setCaptureMode:v14 reply:v15];
  }

  else
  {
    (v9[2])(v9, 0);
  }
}

- (void)startCapture:(id)capture
{
  captureCopy = capture;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[NCCompanionCamera startCapture:]";
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v24 = 1024;
    v25 = 463;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  pbRequest = [captureCopy pbRequest];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100003C2C;
  v18[3] = &unk_100034658;
  v7 = captureCopy;
  v19 = v7;
  v8 = objc_retainBlock(v18);
  v9 = v8;
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100003CD4;
    v16[3] = &unk_1000346A0;
    v11 = v8;
    v17 = v11;
    v12 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:v16];
    v13 = sub_10002477C([pbRequest captureMode]);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003D48;
    v14[3] = &unk_1000346C8;
    v15 = v11;
    [v12 xpc_startCaptureWithMode:v13 reply:v14];
  }

  else
  {
    (v8[2])(v8, 0);
  }
}

- (void)pauseCapture:(id)capture
{
  captureCopy = capture;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[NCCompanionCamera pauseCapture:]";
    v20 = 2080;
    v21 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v22 = 1024;
    v23 = 489;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100003F8C;
  v16[3] = &unk_100034658;
  v6 = captureCopy;
  v17 = v6;
  v7 = objc_retainBlock(v16);
  v8 = v7;
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100004034;
    v14[3] = &unk_1000346A0;
    v10 = v7;
    v15 = v10;
    v11 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000040A8;
    v12[3] = &unk_1000346C8;
    v13 = v10;
    [v11 xpc_pauseCaptureWithReply:v12];
  }

  else
  {
    (v7[2])(v7, 0);
  }
}

- (void)resumeCapture:(id)capture
{
  captureCopy = capture;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[NCCompanionCamera resumeCapture:]";
    v20 = 2080;
    v21 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v22 = 1024;
    v23 = 513;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000042EC;
  v16[3] = &unk_100034658;
  v6 = captureCopy;
  v17 = v6;
  v7 = objc_retainBlock(v16);
  v8 = v7;
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100004394;
    v14[3] = &unk_1000346A0;
    v10 = v7;
    v15 = v10;
    v11 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100004408;
    v12[3] = &unk_1000346C8;
    v13 = v10;
    [v11 xpc_resumeCaptureWithReply:v12];
  }

  else
  {
    (v7[2])(v7, 0);
  }
}

- (void)stopCapture:(id)capture
{
  captureCopy = capture;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[NCCompanionCamera stopCapture:]";
    v20 = 2080;
    v21 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v22 = 1024;
    v23 = 537;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000464C;
  v16[3] = &unk_100034658;
  v6 = captureCopy;
  v17 = v6;
  v7 = objc_retainBlock(v16);
  v8 = v7;
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000046F4;
    v14[3] = &unk_1000346A0;
    v10 = v7;
    v15 = v10;
    v11 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100004768;
    v12[3] = &unk_1000346C8;
    v13 = v10;
    [v11 xpc_stopCaptureWithReply:v12];
  }

  else
  {
    (v7[2])(v7, 0);
  }
}

- (void)setFocusPoint:(id)point
{
  pointCopy = point;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 136315650;
    *&v11[4] = "[NCCompanionCamera setFocusPoint:]";
    *&v11[12] = 2080;
    *&v11[14] = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v12 = 1024;
    v13 = 561;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", v11, 0x1Cu);
  }

  pbRequest = [pointCopy pbRequest];

  if ([pbRequest pointsCount] == 2)
  {
    v7 = *[pbRequest points];
    v8 = *([pbRequest points] + 1);
    *v11 = v7;
    *&v11[8] = v8;
    v9 = [NSValue valueWithBytes:v11 objCType:"{CGPoint=dd}"];
    v10 = [(NSXPCConnection *)self->_activeCamera remoteObjectProxyWithErrorHandler:&stru_100034758];
    [v10 xpc_setFocusPoint:v9];
  }
}

- (void)zoom:(id)zoom
{
  zoomCopy = zoom;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "[NCCompanionCamera zoom:]";
    v24 = 2080;
    v25 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v26 = 1024;
    v27 = 579;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  pbRequest = [zoomCopy pbRequest];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100004BB0;
  v20[3] = &unk_100034780;
  v7 = zoomCopy;
  v21 = v7;
  v8 = objc_retainBlock(v20);
  v9 = v8;
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100004C6C;
    v18[3] = &unk_1000346A0;
    v11 = v8;
    v19 = v11;
    v12 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:v18];
    [pbRequest zoomAmount];
    v14 = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100004CE4;
    v16[3] = &unk_1000347A8;
    v17 = v11;
    LODWORD(v15) = v14;
    [v12 xpc_setZoom:v16 reply:v15];
  }

  else
  {
    (v8[2])(v8, 0, 0.0);
  }
}

- (void)setZoomMagnification:(id)magnification
{
  magnificationCopy = magnification;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "[NCCompanionCamera setZoomMagnification:]";
    v24 = 2080;
    v25 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v26 = 1024;
    v27 = 607;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  pbRequest = [magnificationCopy pbRequest];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100004F5C;
  v20[3] = &unk_100034780;
  v7 = magnificationCopy;
  v21 = v7;
  v8 = objc_retainBlock(v20);
  v9 = v8;
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100005018;
    v18[3] = &unk_1000346A0;
    v11 = v8;
    v19 = v11;
    v12 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:v18];
    [pbRequest zoomMagnificationAmount];
    v14 = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100005090;
    v16[3] = &unk_1000347A8;
    v17 = v11;
    LODWORD(v15) = v14;
    [v12 xpc_setZoomMagnification:v16 reply:v15];
  }

  else
  {
    (v8[2])(v8, 0, 0.0);
  }
}

- (void)setFlashMode:(id)mode
{
  modeCopy = mode;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[NCCompanionCamera setFlashMode:]";
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v17 = 1024;
    v18 = 635;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  pbRequest = [modeCopy pbRequest];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005270;
  v11[3] = &unk_1000347D0;
  v7 = modeCopy;
  v12 = v7;
  v8 = objc_retainBlock(v11);
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v10 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:&stru_1000347F0];
    [v10 xpc_setFlashMode:{sub_1000247B8(objc_msgSend(pbRequest, "flashMode"))}];
  }

  (v8[2])(v8, activeCamera != 0, [pbRequest flashMode]);
}

- (void)setHDRMode:(id)mode
{
  modeCopy = mode;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[NCCompanionCamera setHDRMode:]";
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v17 = 1024;
    v18 = 662;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  pbRequest = [modeCopy pbRequest];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005544;
  v11[3] = &unk_1000347D0;
  v7 = modeCopy;
  v12 = v7;
  v8 = objc_retainBlock(v11);
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v10 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:&stru_100034810];
    [v10 xpc_setHDRMode:{sub_1000247B8(objc_msgSend(pbRequest, "hdrMode"))}];
  }

  (v8[2])(v8, activeCamera != 0, [pbRequest hdrMode]);
}

- (void)setIrisMode:(id)mode
{
  modeCopy = mode;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[NCCompanionCamera setIrisMode:]";
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v17 = 1024;
    v18 = 689;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  pbRequest = [modeCopy pbRequest];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005818;
  v11[3] = &unk_1000347D0;
  v7 = modeCopy;
  v12 = v7;
  v8 = objc_retainBlock(v11);
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v10 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:&stru_100034830];
    [v10 xpc_setIrisMode:{sub_1000247B8(objc_msgSend(pbRequest, "irisMode"))}];
  }

  (v8[2])(v8, activeCamera != 0, [pbRequest irisMode]);
}

- (void)setSharedLibraryMode:(id)mode
{
  modeCopy = mode;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[NCCompanionCamera setSharedLibraryMode:]";
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v17 = 1024;
    v18 = 716;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  pbRequest = [modeCopy pbRequest];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005AEC;
  v11[3] = &unk_1000347D0;
  v7 = modeCopy;
  v12 = v7;
  v8 = objc_retainBlock(v11);
  activeCamera = self->_activeCamera;
  if (activeCamera)
  {
    v10 = [(NSXPCConnection *)activeCamera remoteObjectProxyWithErrorHandler:&stru_100034850];
    [v10 xpc_setSharedLibraryMode:{sub_10002474C(objc_msgSend(pbRequest, "sharedLibraryMode"))}];
  }

  (v8[2])(v8, activeCamera != 0, [pbRequest sharedLibraryMode]);
}

- (void)toggleCameraDevice:(id)device
{
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[NCCompanionCamera toggleCameraDevice:]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v13 = 1024;
    v14 = 743;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v5 = [(NSXPCConnection *)self->_activeCamera remoteObjectProxyWithErrorHandler:&stru_100034870];
  [v5 xpc_toggleCameraDevice];

  v6 = dispatch_time(0, 100000000);
  actionQ = [(NMSMessageCenter *)self->_messageCenter actionQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005DC0;
  block[3] = &unk_100034898;
  block[4] = self;
  dispatch_after(v6, actionQ, block);
}

- (void)userDidTakeScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[NCCompanionCamera userDidTakeScreenshot:]";
    *&buf[12] = 2080;
    *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    *&buf[22] = 1024;
    LODWORD(v11) = 757;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v5 = off_10003F2C8;
  v9 = off_10003F2C8;
  if (!off_10003F2C8)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100009E4C;
    v11 = &unk_1000349E8;
    v12 = &v6;
    sub_100009E4C(buf);
    v5 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v5)
  {
    sub_100024934();
    __break(1u);
  }

  v5(1108);
}

- (void)_cameraPreviewIDSSocketCreationFailed
{
  v2 = sub_100014634();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100024958();
  }
}

- (void)checkin
{
  v2 = sub_1000145AC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315650;
    v4 = "[NCCompanionCamera checkin]";
    v5 = 2080;
    v6 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v7 = 1024;
    v8 = 856;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v3, 0x1Cu);
  }
}

- (void)xpc_willStartCapturing
{
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[NCCompanionCamera xpc_willStartCapturing]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v9 = 1024;
    v10 = 861;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v5, 0x1Cu);
  }

  self->_capturing = 1;
  v4 = objc_alloc_init(NCCameraStateChangedRequest);
  [(NCCameraStateChangedRequest *)v4 setCapturing:1];
  [(NCCameraStateChangedRequest *)v4 setCapturingPaused:0];
  [(NCCompanionCamera *)self _sendCameraStateChangedRequest:v4];
}

- (void)xpc_didStartCaptureTimerWithDate:(id)date
{
  dateCopy = date;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[NCCompanionCamera xpc_didStartCaptureTimerWithDate:]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v13 = 1024;
    v14 = 873;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v9, 0x1Cu);
  }

  v6 = objc_alloc_init(NCCameraStateChangedRequest);
  [dateCopy timeIntervalSinceReferenceDate];
  v8 = v7;

  [(NCCameraStateChangedRequest *)v6 setCaptureStartDate:v8];
  [(NCCameraStateChangedRequest *)v6 setCapturingPaused:0];
  [(NCCompanionCamera *)self _sendCameraStateChangedRequest:v6];
}

- (void)xpc_didPauseCaptureTimerWithDate:(id)date
{
  dateCopy = date;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[NCCompanionCamera xpc_didPauseCaptureTimerWithDate:]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v13 = 1024;
    v14 = 883;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v9, 0x1Cu);
  }

  v6 = objc_alloc_init(NCCameraStateChangedRequest);
  [dateCopy timeIntervalSinceReferenceDate];
  v8 = v7;

  [(NCCameraStateChangedRequest *)v6 setCapturePauseDate:v8];
  [(NCCameraStateChangedRequest *)v6 setCapturingPaused:1];
  [(NCCompanionCamera *)self _sendCameraStateChangedRequest:v6];
}

- (void)xpc_didResumeCaptureTimerWithDate:(id)date
{
  dateCopy = date;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[NCCompanionCamera xpc_didResumeCaptureTimerWithDate:]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v13 = 1024;
    v14 = 893;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v9, 0x1Cu);
  }

  v6 = objc_alloc_init(NCCameraStateChangedRequest);
  [dateCopy timeIntervalSinceReferenceDate];
  v8 = v7;

  [(NCCameraStateChangedRequest *)v6 setCaptureStartDate:v8];
  [(NCCameraStateChangedRequest *)v6 setCapturingPaused:0];
  [(NCCompanionCamera *)self _sendCameraStateChangedRequest:v6];
}

- (void)xpc_didStopCapture
{
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[NCCompanionCamera xpc_didStopCapture]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v9 = 1024;
    v10 = 903;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v5, 0x1Cu);
  }

  self->_capturing = 0;
  v4 = objc_alloc_init(NCCameraStateChangedRequest);
  [(NCCameraStateChangedRequest *)v4 setCapturing:0];
  [(NCCameraStateChangedRequest *)v4 setCapturingPaused:0];
  [(NCCompanionCamera *)self _sendCameraStateChangedRequest:v4];
}

- (void)xpc_burstCaptureWillStart
{
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315650;
    v5 = "[NCCompanionCamera xpc_burstCaptureWillStart]";
    v6 = 2080;
    v7 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v8 = 1024;
    v9 = 915;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v4, 0x1Cu);
  }

  self->_lastBurstCaptureNumberOfPhotos = 0;
}

- (void)xpc_burstCaptureDidStop
{
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315650;
    v5 = "[NCCompanionCamera xpc_burstCaptureDidStop]";
    v6 = 2080;
    v7 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v8 = 1024;
    v9 = 929;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v4, 0x1Cu);
  }

  self->_lastBurstCaptureNumberOfPhotos = 0;
}

- (void)xpc_captureDeviceDidChange:(int64_t)change
{
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[NCCompanionCamera xpc_captureDeviceDidChange:]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v9 = 1024;
    v10 = 936;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v5, 0x1Cu);
  }

  [(NCCompanionCamera *)self _sendCurrentCameraState];
}

- (void)xpc_captureModeSelected:(int64_t)selected
{
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[NCCompanionCamera xpc_captureModeSelected:]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v9 = 1024;
    v10 = 943;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v5, 0x1Cu);
  }

  [(NCCompanionCamera *)self _sendCurrentCameraState];
}

- (void)xpc_orientationChanged:(int64_t)changed
{
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1000247F8(changed);
    if (v6 >= 5)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = *(&off_100034AA8 + v6);
    }

    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "orientation: %@", buf, 0xCu);
  }

  v8 = objc_alloc_init(NCCameraStateChangedRequest);
  [(NCCameraStateChangedRequest *)v8 setOrientation:sub_1000247F8(changed)];
  [(NCCompanionCamera *)self _sendCameraStateChangedRequest:v8];
}

- (void)xpc_countdownCanceled
{
  [(NMSMessageCenter *)self->_messageCenter timeSinceLastDataReceived];
  v4 = v3;
  v5 = sub_1000145AC();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 <= 240.0)
  {
    if (v6)
    {
      v7 = 136315650;
      v8 = "[NCCompanionCamera xpc_countdownCanceled]";
      v9 = 2080;
      v10 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
      v11 = 1024;
      v12 = 964;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v7, 0x1Cu);
    }

    if (self->_remoteCameraState == 1)
    {
      v5 = [(NCCompanionCamera *)self makeRequest:12];
      [(NMSMessageCenter *)self->_messageCenter sendRequest:v5];
    }

    else
    {
      v5 = sub_1000145AC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_100024998();
      }
    }
  }

  else if (v6)
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Too long since last message received, not sending cancel", &v7, 2u);
  }
}

- (void)xpc_zoomChanged:(float)changed
{
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    changedCopy = changed;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%f", &v8, 0xCu);
  }

  v6 = objc_alloc_init(NCCameraStateChangedRequest);
  *&v7 = changed;
  [(NCCameraStateChangedRequest *)v6 setZoomAmount:v7];
  [(NCCompanionCamera *)self _sendCameraStateChangedRequest:v6];
}

- (void)xpc_didUpdateShallowDepthOfFieldStatus:(int64_t)status
{
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1000247E0(status);
    if (v6 >= 0x10)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = *(&off_100034B20 + v6);
    }

    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v8 = objc_alloc_init(NCCameraStateChangedRequest);
  [(NCCameraStateChangedRequest *)v8 setShallowDepthOfFieldStatus:sub_1000247E0(status)];
  [(NCCompanionCamera *)self _sendCameraStateChangedRequest:v8];
}

- (void)xpc_didUpdateStereoCaptureStatus:(int64_t)status
{
  statusCopy = status;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1000247F0(statusCopy);
    if (v6 < 5 && ((0x17u >> v6) & 1) != 0)
    {
      v7 = *(&off_100034BA0 + v6);
    }

    else
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", v6];
    }

    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v8 = objc_alloc_init(NCCameraStateChangedRequest);
  [(NCCameraStateChangedRequest *)v8 setStereoCaptureStatus:sub_1000247F0(statusCopy)];
  [(NCCompanionCamera *)self _sendCameraStateChangedRequest:v8];
}

- (void)xpc_captureDeviceDidChange
{
  actionQ = [(NMSMessageCenter *)self->_messageCenter actionQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000072E8;
  block[3] = &unk_100034898;
  block[4] = self;
  dispatch_async(actionQ, block);
}

- (void)xpc_flashModeDidChange:(int64_t)change
{
  v5 = objc_alloc_init(NCCameraStateChangedRequest);
  [(NCCameraStateChangedRequest *)v5 setFlashMode:sub_1000247A0(change)];
  [(NCCompanionCamera *)self _sendCameraStateChangedRequest:v5];
}

- (void)xpc_hdrModeDidChange:(int64_t)change
{
  v5 = objc_alloc_init(NCCameraStateChangedRequest);
  [(NCCameraStateChangedRequest *)v5 setHdrMode:sub_1000247A0(change)];
  [(NCCompanionCamera *)self _sendCameraStateChangedRequest:v5];
}

- (void)xpc_irisModeDidChange:(int64_t)change
{
  v5 = objc_alloc_init(NCCameraStateChangedRequest);
  [(NCCameraStateChangedRequest *)v5 setIrisMode:sub_1000247A0(change)];
  connectedDevice = [(NMSMessageCenter *)self->_messageCenter connectedDevice];
  if (!connectedDevice || (v7 = connectedDevice, [connectedDevice operatingSystemVersion], v7, v8 <= 4))
  {
    if ([(NCCameraStateChangedRequest *)v5 irisMode]== 2)
    {
      [(NCCameraStateChangedRequest *)v5 setIrisMode:1];
    }
  }

  [(NCCompanionCamera *)self _sendCameraStateChangedRequest:v5];
}

- (void)xpc_sharedLibrarySupportDidChange:(int64_t)change
{
  v5 = objc_alloc_init(NCCameraStateChangedRequest);
  [(NCCameraStateChangedRequest *)v5 setSharedLibrarySupport:sub_100024740(change)];
  [(NCCompanionCamera *)self _sendCameraStateChangedRequest:v5];
}

- (void)xpc_sharedLibraryModeDidChange:(int64_t)change
{
  v5 = objc_alloc_init(NCCameraStateChangedRequest);
  [(NCCameraStateChangedRequest *)v5 setSharedLibraryMode:sub_100024740(change)];
  [(NCCompanionCamera *)self _sendCameraStateChangedRequest:v5];
}

- (void)xpc_viewfinderSessionStateDidChange:(unint64_t)change
{
  v5 = objc_alloc_init(NCCameraStateChangedRequest);
  v6 = v5;
  if (change)
  {
    [(NCCameraStateChangedRequest *)v5 setViewfinderSessionActive:change == 1];
  }

  connectedDevice = [(NMSMessageCenter *)self->_messageCenter connectedDevice];
  if (!connectedDevice || (v8 = connectedDevice, [connectedDevice operatingSystemVersion], v8, v9 <= 11))
  {
    if (![(NCCameraStateChangedRequest *)v6 hasViewfinderSessionActive])
    {
      [(NCCameraStateChangedRequest *)v6 setViewfinderSessionActive:1];
    }
  }

  [(NCCompanionCamera *)self _sendCameraStateChangedRequest:v6];
}

- (void)_sendCameraStateChangedRequest:(id)request
{
  requestCopy = request;
  actionQ = [(NMSMessageCenter *)self->_messageCenter actionQ];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000077A8;
  v7[3] = &unk_100034580;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(actionQ, v7);
}

- (void)_sendCurrentCameraState
{
  if (self->_remoteCameraState == 1)
  {
    v5 = [(NCCompanionCamera *)self _fetchCurrentCameraStateIncludingSupportedCaptureModes:0];
    v3 = [(NCCompanionCamera *)self makeRequest:10];
    [v3 setPbRequest:v5];
    [(NMSMessageCenter *)self->_messageCenter sendRequest:v3];
  }

  else
  {
    v4 = sub_1000145AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100024998();
    }
  }
}

- (void)_setCompanionCameraOpenStatePreference:(int)preference
{
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = preference == 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting NPS companion camera open state preference: %{BOOL}d", buf, 8u);
  }

  v6 = preference == 0;

  v7 = dispatch_get_global_queue(25, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100009040;
  v8[3] = &unk_100034928;
  v8[4] = self;
  v9 = v6;
  dispatch_async(v7, v8);
}

- (void)_queue_setCompanionCameraOpenStatePreference:(BOOL)preference
{
  preferenceCopy = preference;
  v5 = &kCFBooleanFalse;
  if (preference)
  {
    v5 = &kCFBooleanTrue;
  }

  CFPreferencesSetAppValue(@"CompanionCameraApplicationOpen", *v5, @"com.apple.NanoCamera");
  if (preferenceCopy)
  {
    CFPreferencesSetAppValue(@"CompanionCameraApplicationLastOpenDate", +[NSDate date], @"com.apple.NanoCamera");
  }

  CFPreferencesAppSynchronize(@"com.apple.NanoCamera");
  npsManager = self->_npsManager;
  v11[0] = @"CompanionCameraApplicationOpen";
  v11[1] = @"CompanionCameraApplicationLastOpenDate";
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [NSSet setWithArray:v7];
  [(NPSManager *)npsManager synchronizeUserDefaultsDomain:@"com.apple.NanoCamera" keys:v8];

  v9 = sub_1000145AC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = preferenceCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Completed setting NPS companion camera open state preference: %{BOOL}d", v10, 8u);
  }
}

- (void)messageCenter:(id)center didChangeConnectedState:(BOOL)state
{
  stateCopy = state;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = stateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "isConnected: %d", v7, 8u);
  }

  if (stateCopy)
  {
    v6 = "com.apple.companion.camera.device-connected";
  }

  else
  {
    v6 = "com.apple.companion.camera.device-disconnected";
  }

  notify_post(v6);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = sub_1000145AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[NCCompanionCamera listener:shouldAcceptNewConnection:]";
    v19 = 2080;
    v20 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v21 = 1024;
    v22 = 1326;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v7 = +[ViewfinderReliability sharedInstance];
  [v7 logEvent:5];

  v8 = os_transaction_create();
  actionQ = [(NMSMessageCenter *)self->_messageCenter actionQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000943C;
  block[3] = &unk_1000349C0;
  v14 = v8;
  selfCopy = self;
  v16 = connectionCopy;
  v10 = connectionCopy;
  v11 = v8;
  dispatch_async(actionQ, block);

  return 1;
}

- (void)connectionDidTearDown:(id)down
{
  downCopy = down;
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "[NCCompanionCamera connectionDidTearDown:]";
    v13 = 2080;
    v14 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v15 = 1024;
    v16 = 1396;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  actionQ = [(NMSMessageCenter *)self->_messageCenter actionQ];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100009CE4;
  v8[3] = &unk_100034580;
  v9 = downCopy;
  selfCopy = self;
  v7 = downCopy;
  dispatch_async(actionQ, v8);
}

@end