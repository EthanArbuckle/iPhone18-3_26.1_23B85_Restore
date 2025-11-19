uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(NCCompanionCamera);
  v2 = +[NSRunLoop mainRunLoop];
  [v2 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_100001948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001974(uint64_t a1)
{
  v2 = sub_100014634();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_10002481C();
  }

  v3 = +[ViewfinderReliability sharedInstance];
  [v3 logEvent:15];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cameraPreviewIDSSocketCreationFailed];
}

void sub_100001F40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }

  v5 = objc_alloc_init(NCOpenCameraResponse);
  [(NCOpenCameraResponse *)v5 setOpenState:2];
  v6 = [*(a1 + 32) response];
  [v6 setPbResponse:v5];

  v7 = [*(a1 + 32) response];
  [v7 setFireAndForget:1];

  v8 = [*(a1 + 32) response];
  [v8 send];
}

void sub_10000200C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) actionQ];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000020B4;
  v4[3] = &unk_100034580;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void sub_1000020B4(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchCurrentCameraStateIncludingSupportedCaptureModes:1];
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending open state response.", buf, 2u);
  }

  v4 = objc_alloc_init(NCOpenCameraResponse);
  [(NCOpenCameraResponse *)v4 setOpenState:0];
  [(NCOpenCameraResponse *)v4 setInternalState:v2];
  v5 = [*(a1 + 40) response];
  [v5 setPbResponse:v4];

  v6 = [*(a1 + 40) response];
  [v6 setFireAndForget:1];

  v7 = [*(a1 + 40) response];
  [v7 send];

  v8 = [*(*(a1 + 32) + 8) connectedDevice];
  if (!v8 || (v9 = v8, [v8 operatingSystemVersion], v9, v10 <= 2))
  {
    [*(a1 + 32) _sendCurrentCameraState];
  }
}

void sub_100002204(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[ViewfinderReliability sharedInstance];
  v6 = v5;
  if (v4)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  [v5 logEvent:v7];

  v8 = [*(*(a1 + 32) + 8) actionQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000022F0;
  block[3] = &unk_1000345A8;
  v9 = *(a1 + 32);
  v12 = v4;
  v13 = v9;
  v14 = *(a1 + 40);
  v10 = v4;
  dispatch_async(v8, block);
}

void sub_1000022F0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = sub_1000145AC();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000248C4(v2, v5, v6, v7, v8, v9, v10, v11);
    }

    [*(a1 + 40) _sendOpenStateChange:2 withInternalState:0];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
      v13 = 134217984;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Success opening com.apple.camera (in %.2fs)", &v13, 0xCu);
    }
  }
}

void sub_1000025B4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }
}

void sub_100002608(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }
}

void sub_10000281C(uint64_t a1, uint64_t a2)
{
  v7 = objc_alloc_init(NCPressShutterResponse);
  [(NCPressShutterResponse *)v7 setSuccess:a2];
  v4 = [*(a1 + 32) response];
  [v4 setPbResponse:v7];

  v5 = [*(a1 + 32) response];
  [v5 setFireAndForget:1];

  v6 = [*(a1 + 32) response];
  [v6 send];
}

void sub_1000028C4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }
}

void sub_100002B4C(uint64_t a1, uint64_t a2)
{
  v7 = objc_alloc_init(NCBeginBurstCaptureResponse);
  [(NCBeginBurstCaptureResponse *)v7 setSuccess:a2];
  v4 = [*(a1 + 32) response];
  [v4 setPbResponse:v7];

  v5 = [*(a1 + 32) response];
  [v5 setFireAndForget:1];

  v6 = [*(a1 + 32) response];
  [v6 send];
}

void sub_100002BF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100002EB8(uint64_t a1, uint64_t a2)
{
  v7 = objc_alloc_init(NCEndBurstCaptureResponse);
  [(NCEndBurstCaptureResponse *)v7 setSuccess:a2];
  [(NCEndBurstCaptureResponse *)v7 setNumberOfPhotos:*(a1 + 40)];
  v4 = [*(a1 + 32) response];
  [v4 setPbResponse:v7];

  v5 = [*(a1 + 32) response];
  [v5 setFireAndForget:1];

  v6 = [*(a1 + 32) response];
  [v6 send];
}

void sub_100002F6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000030E0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }
}

void sub_1000033AC(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NCSetCaptureDeviceResponse);
  [(NCSetCaptureDeviceResponse *)v4 setSuccess:a2];
  if (a2)
  {
    v5 = [*(a1 + 32) _fetchCurrentCameraStateIncludingSupportedCaptureModes:0];
    [(NCSetCaptureDeviceResponse *)v4 setInternalState:v5];
  }

  v6 = [*(a1 + 40) response];
  [v6 setPbResponse:v4];

  v7 = [*(a1 + 40) response];
  [v7 setFireAndForget:1];

  v8 = [*(a1 + 40) response];
  [v8 send];

  v9 = [*(*(a1 + 32) + 8) connectedDevice];
  if (!v9 || (v10 = v9, [v9 operatingSystemVersion], v10, v11 <= 3))
  {
    [*(a1 + 32) _sendCurrentCameraState];
  }
}

void sub_1000034B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000037B4(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NCSetCaptureModeResponse);
  [(NCSetCaptureModeResponse *)v4 setSuccess:a2];
  if (a2)
  {
    v5 = [*(a1 + 32) _fetchCurrentCameraStateIncludingSupportedCaptureModes:0];
    [(NCSetCaptureModeResponse *)v4 setInternalState:v5];
  }

  v6 = [*(*(a1 + 32) + 8) connectedDevice];
  if (v6)
  {
    v7 = v6;
    [v6 operatingSystemVersion];

    if (v17 > 3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  v8 = [(NCSetCaptureModeResponse *)v4 internalState];
  if (!v8)
  {
    v8 = [*(a1 + 32) _fetchCurrentCameraStateIncludingSupportedCaptureModes:0];
  }

  -[NCSetCaptureModeResponse setCaptureMode:](v4, "setCaptureMode:", [v8 captureMode]);

LABEL_10:
  v9 = [*(a1 + 40) response];
  [v9 setPbResponse:v4];

  v10 = [*(a1 + 40) response];
  [v10 setFireAndForget:1];

  v11 = [*(a1 + 40) response];
  [v11 send];

  v12 = [*(*(a1 + 32) + 8) connectedDevice];
  if (v12)
  {
    v13 = v12;
    [v12 operatingSystemVersion];

    if (v14 > 3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  [*(a1 + 32) _sendCurrentCameraState];
LABEL_15:
}

void sub_10000393C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100003C2C(uint64_t a1, uint64_t a2)
{
  v7 = objc_alloc_init(NCStartCaptureResponse);
  [(NCStartCaptureResponse *)v7 setSuccess:a2];
  v4 = [*(a1 + 32) response];
  [v4 setPbResponse:v7];

  v5 = [*(a1 + 32) response];
  [v5 setFireAndForget:1];

  v6 = [*(a1 + 32) response];
  [v6 send];
}

void sub_100003CD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100003F8C(uint64_t a1, uint64_t a2)
{
  v7 = objc_alloc_init(NCPauseCaptureResponse);
  [(NCPauseCaptureResponse *)v7 setSuccess:a2];
  v4 = [*(a1 + 32) response];
  [v4 setPbResponse:v7];

  v5 = [*(a1 + 32) response];
  [v5 setFireAndForget:1];

  v6 = [*(a1 + 32) response];
  [v6 send];
}

void sub_100004034(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000042EC(uint64_t a1, uint64_t a2)
{
  v7 = objc_alloc_init(NCResumeCaptureResponse);
  [(NCResumeCaptureResponse *)v7 setSuccess:a2];
  v4 = [*(a1 + 32) response];
  [v4 setPbResponse:v7];

  v5 = [*(a1 + 32) response];
  [v5 setFireAndForget:1];

  v6 = [*(a1 + 32) response];
  [v6 send];
}

void sub_100004394(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000464C(uint64_t a1, uint64_t a2)
{
  v7 = objc_alloc_init(NCStopCaptureResponse);
  [(NCStopCaptureResponse *)v7 setSuccess:a2];
  v4 = [*(a1 + 32) response];
  [v4 setPbResponse:v7];

  v5 = [*(a1 + 32) response];
  [v5 setFireAndForget:1];

  v6 = [*(a1 + 32) response];
  [v6 send];
}

void sub_1000046F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000048F8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }
}

void sub_100004BB0(uint64_t a1, int a2, float a3)
{
  if (a2)
  {
    v5 = objc_alloc_init(NCSetZoomResponse);
    *&v6 = a3;
    [(NCSetZoomResponse *)v5 setZoomAmount:v6];
    v7 = [*(a1 + 32) response];
    [v7 setPbResponse:v5];
  }

  v8 = [*(a1 + 32) response];
  [v8 setFireAndForget:1];

  v9 = [*(a1 + 32) response];
  [v9 send];
}

void sub_100004C6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }

  (*(*(a1 + 32) + 16))(0.0);
}

void sub_100004F5C(uint64_t a1, int a2, float a3)
{
  if (a2)
  {
    v5 = objc_alloc_init(NCSetZoomMagnificationResponse);
    *&v6 = a3;
    [(NCSetZoomMagnificationResponse *)v5 setZoomMagnificationAmount:v6];
    v7 = [*(a1 + 32) response];
    [v7 setPbResponse:v5];
  }

  v8 = [*(a1 + 32) response];
  [v8 setFireAndForget:1];

  v9 = [*(a1 + 32) response];
  [v9 send];
}

void sub_100005018(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000145AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }

  (*(*(a1 + 32) + 16))(0.0);
}

void sub_100005270(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = objc_alloc_init(NCSetFlashModeResponse);
    [(NCSetFlashModeResponse *)v5 setFlashMode:a3];
    v6 = [*(a1 + 32) response];
    [v6 setPbResponse:v5];
  }

  v7 = [*(a1 + 32) response];
  [v7 setFireAndForget:1];

  v8 = [*(a1 + 32) response];
  [v8 send];
}

void sub_100005324(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }
}

void sub_100005544(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = objc_alloc_init(NCSetHDRModeResponse);
    [(NCSetHDRModeResponse *)v5 setHdrMode:a3];
    v6 = [*(a1 + 32) response];
    [v6 setPbResponse:v5];
  }

  v7 = [*(a1 + 32) response];
  [v7 setFireAndForget:1];

  v8 = [*(a1 + 32) response];
  [v8 send];
}

void sub_1000055F8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }
}

void sub_100005818(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = objc_alloc_init(NCSetIrisModeResponse);
    [(NCSetIrisModeResponse *)v5 setIrisMode:a3];
    v6 = [*(a1 + 32) response];
    [v6 setPbResponse:v5];
  }

  v7 = [*(a1 + 32) response];
  [v7 setFireAndForget:1];

  v8 = [*(a1 + 32) response];
  [v8 send];
}

void sub_1000058CC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }
}

void sub_100005AEC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = objc_alloc_init(NCSetSharedLibraryModeResponse);
    [(NCSetSharedLibraryModeResponse *)v5 setSharedLibraryMode:a3];
    v6 = [*(a1 + 32) response];
    [v6 setPbResponse:v5];
  }

  v7 = [*(a1 + 32) response];
  [v7 setFireAndForget:1];

  v8 = [*(a1 + 32) response];
  [v8 send];
}

void sub_100005BA0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }
}

void sub_100005D6C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }
}

id sub_1000072E8(uint64_t a1)
{
  v2 = sub_1000145AC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315650;
    v5 = "[NCCompanionCamera xpc_captureDeviceDidChange]_block_invoke";
    v6 = 2080;
    v7 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/companioncamerad/NCCompanionCamera.m";
    v8 = 1024;
    v9 = 1004;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v4, 0x1Cu);
  }

  return [*(a1 + 32) _sendCurrentCameraState];
}

void sub_1000077A8(uint64_t a1)
{
  v2 = sub_1000145AC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4[8] == 1)
  {
    v5 = [v4 makeRequest:10];
    [v5 setPbRequest:*(a1 + 32)];
    [*(*(a1 + 40) + 8) sendRequest:v5];
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

void sub_100007B0C(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (!*(v3 + 64))
  {
    v8 = v1;
    v9 = v2;
    *(v3 + 64) = 1;
    v5 = sub_1000145AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote side is active. Poking Camera.", v7, 2u);
    }

    v6 = [*(*(a1 + 32) + 40) remoteObjectProxyWithErrorHandler:&stru_1000348B8];
    [v6 xpc_setPreviewEndpoint:@"proxy"];
  }
}

void sub_100007BC0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }
}

void sub_100007C14(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (!*(v3 + 64))
  {
    v6 = v1;
    v7 = v2;
    *(v3 + 64) = 2;
    v4 = sub_1000145AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Remote side is inactive.", v5, 2u);
    }
  }
}

void sub_100007DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007DCC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007DE4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }
}

void sub_100007E38(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unsigned int a6, void *a7, unsigned int a8, float a9, float a10, float a11, float a12, void *a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned __int8 a27, unsigned __int8 a28, uint64_t a29, uint64_t a30, char a31)
{
  v39 = a2;
  v123 = a4;
  v128 = a7;
  v129 = a13;
  v127 = a18;
  v40 = sub_1000145AC();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = sub_100024740(a3);
    if (v41)
    {
      v42 = a14;
      if (v41)
      {
        v43 = @"Front";
      }

      else
      {
        v43 = [NSString stringWithFormat:@"(unknown: %i)", v41];
      }
    }

    else
    {
      v43 = @"Back";
      v42 = a14;
    }

    v44 = v43;
    v45 = v123;
    if (!*(a1 + 48))
    {
      v45 = @"not-included";
    }

    v114 = v45;
    v46 = sub_100024758(a5);
    if (v46 < 0xD && ((0x1FABu >> v46) & 1) != 0)
    {
      v47 = *(&off_100034A40 + v46);
    }

    else
    {
      v47 = [NSString stringWithFormat:@"(unknown: %i)", v46];
    }

    v122 = v47;
    v48 = sub_1000247F8(v42);
    if (v48 >= 5)
    {
      v49 = [NSString stringWithFormat:@"(unknown: %i)", v48];
    }

    else
    {
      v49 = *(&off_100034AA8 + v48);
    }

    v115 = v49;
    v50 = sub_1000247A0(a19);
    if (v50 >= 3)
    {
      v51 = [NSString stringWithFormat:@"(unknown: %i)", v50];
    }

    else
    {
      v51 = *(&off_100034AF0 + v50);
    }

    v121 = v51;
    v52 = sub_1000247A0(a20);
    if (v52 >= 3)
    {
      v53 = [NSString stringWithFormat:@"(unknown: %i)", v52];
    }

    else
    {
      v53 = *(&off_100034B08 + v52);
    }

    v120 = v53;
    v54 = sub_1000247D0(a21);
    if (v54 >= 4)
    {
      v55 = [NSString stringWithFormat:@"(unknown: %i)", v54];
    }

    else
    {
      v55 = *(&off_100034AD0 + v54);
    }

    v119 = v55;
    v56 = sub_1000247A0(a22);
    if (v56 >= 3)
    {
      v57 = [NSString stringWithFormat:@"(unknown: %i)", v56];
    }

    else
    {
      v57 = *(&off_100034B08 + v56);
    }

    v118 = v57;
    v58 = sub_1000247A0(a23);
    if (v58 >= 3)
    {
      v59 = [NSString stringWithFormat:@"(unknown: %i)", v58];
    }

    else
    {
      v59 = *(&off_100034AF0 + v58);
    }

    v117 = v59;
    v60 = sub_1000247A0(a24);
    if (v60 >= 3)
    {
      v61 = [NSString stringWithFormat:@"(unknown: %i)", v60];
    }

    else
    {
      v61 = *(&off_100034B08 + v60);
    }

    v62 = v61;
    v63 = sub_100024740(a25);
    if (v63)
    {
      if (v63)
      {
        v64 = @"OnOff";
      }

      else
      {
        v64 = [NSString stringWithFormat:@"(unknown: %i)", v63];
      }
    }

    else
    {
      v64 = @"None";
    }

    v113 = v64;
    v65 = sub_100024740(a26);
    if (v65)
    {
      if (v65)
      {
        v66 = @"On";
      }

      else
      {
        v66 = [NSString stringWithFormat:@"(unknown: %i)", v65];
      }
    }

    else
    {
      v66 = @"Off";
    }

    v112 = v66;
    v67 = sub_1000247E0(a30);
    if (v67 >= 0x10)
    {
      v68 = [NSString stringWithFormat:@"(unknown: %i)", v67];
    }

    else
    {
      v68 = *(&off_100034B20 + v67);
    }

    v111 = v68;
    v69 = sub_1000247F0(a31);
    v116 = a5;
    if (v69 < 5 && ((0x17u >> v69) & 1) != 0)
    {
      v70 = v129;
      v71 = *(&off_100034BA0 + v69);
    }

    else
    {
      v70 = v129;
      v71 = [NSString stringWithFormat:@"(unknown: %i)", v69];
    }

    *buf = 138418434;
    v154 = v39;
    v155 = 2112;
    v156 = v44;
    v157 = 2112;
    v158 = v114;
    v159 = 2112;
    v160 = v122;
    v161 = 1024;
    v162 = a6;
    v163 = 2112;
    v164 = v128;
    v165 = 1024;
    v166 = a8;
    v167 = 2112;
    v168 = v70;
    v169 = 2112;
    v170 = v115;
    v171 = 1024;
    v172 = a15;
    v173 = 1024;
    v174 = a16;
    v175 = 2048;
    v176 = a9;
    v177 = 2112;
    v178 = v121;
    v179 = 2112;
    v180 = v120;
    v181 = 2112;
    v182 = v119;
    v183 = 2112;
    v184 = v118;
    v185 = 2112;
    v186 = v117;
    v187 = 2112;
    v188 = v62;
    v189 = 2112;
    v110 = v71;
    v190 = v113;
    v191 = 2112;
    v192 = v112;
    v193 = 1024;
    v194 = a27;
    v195 = 1024;
    v196 = a28;
    v197 = 2048;
    v198 = a29;
    v199 = 2112;
    v200 = v111;
    v201 = 2112;
    v202 = v110;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "supportedCaptureDevice:%@ captureDevice:%@ supportedCaptureModes:%@ captureMode:%@ capturing:%d captureStartDate:%@ capturingPaused:%d capturePauseDate:%@ orientation:%@ toggleCameraDeviceSupport:%d zoomSupport:%d zoomAmount:%f flashSupport:%@ flashMode:%@ hdrSupport:%@ hdrMode:%@ irisSupport:%@ irisMode:%@ sharedLibrarySupport:%@ sharedLibraryMode:%@ supportsMomentCapture:%d burstSupport:%d viewfinderSessionState:%lu shallowDepthOfFieldStatus:%@ stereoCaptureStatus:%@", buf, 0xE4u);

    a5 = v116;
  }

  v72 = objc_alloc_init(NCCameraStateChangedRequest);
  v73 = *(*(a1 + 40) + 8);
  v74 = *(v73 + 40);
  *(v73 + 40) = v72;

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v75 = v39;
  v76 = [v75 countByEnumeratingWithState:&v145 objects:v152 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v146;
    do
    {
      for (i = 0; i != v77; i = i + 1)
      {
        if (*v146 != v78)
        {
          objc_enumerationMutation(v75);
        }

        [*(*(*(a1 + 40) + 8) + 40) addSupportedCaptureDevice:{sub_100024740(objc_msgSend(*(*(&v145 + 1) + 8 * i), "integerValue"))}];
      }

      v77 = [v75 countByEnumeratingWithState:&v145 objects:v152 count:16];
    }

    while (v77);
  }

  [*(*(*(a1 + 40) + 8) + 40) setCaptureDevice:sub_100024740(a3)];
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v80 = v123;
  v81 = [(__CFString *)v80 countByEnumeratingWithState:&v141 objects:v151 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v142;
    do
    {
      for (j = 0; j != v82; j = j + 1)
      {
        if (*v142 != v83)
        {
          objc_enumerationMutation(v80);
        }

        [*(*(*(a1 + 40) + 8) + 40) addSupportedCaptureMode:{sub_100024758(objc_msgSend(*(*(&v141 + 1) + 8 * j), "integerValue"))}];
      }

      v82 = [(__CFString *)v80 countByEnumeratingWithState:&v141 objects:v151 count:16];
    }

    while (v82);
  }

  [*(*(*(a1 + 40) + 8) + 40) setCaptureMode:sub_100024758(a5)];
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v85 = v80;
  v86 = [(__CFString *)v85 countByEnumeratingWithState:&v137 objects:v150 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v138;
    do
    {
      for (k = 0; k != v87; k = k + 1)
      {
        if (*v138 != v88)
        {
          objc_enumerationMutation(v85);
        }

        [*(*(*(a1 + 40) + 8) + 40) addSupportedCaptureMode:{sub_100024758(objc_msgSend(*(*(&v137 + 1) + 8 * k), "integerValue"))}];
      }

      v87 = [(__CFString *)v85 countByEnumeratingWithState:&v137 objects:v150 count:16];
    }

    while (v87);
  }

  [*(*(*(a1 + 40) + 8) + 40) setCaptureMode:sub_100024758(a5)];
  if ((a14 - 1) <= 3)
  {
    [*(*(*(a1 + 40) + 8) + 40) setOrientation:sub_1000247F8(a14)];
  }

  [*(*(*(a1 + 40) + 8) + 40) setCapturing:a6];
  if (v128)
  {
    [v128 timeIntervalSinceReferenceDate];
    [*(*(*(a1 + 40) + 8) + 40) setCaptureStartDate:?];
  }

  [*(*(*(a1 + 40) + 8) + 40) setCapturingPaused:a8];
  if (v129)
  {
    [v129 timeIntervalSinceReferenceDate];
    [*(*(*(a1 + 40) + 8) + 40) setCapturePauseDate:?];
  }

  [*(*(*(a1 + 40) + 8) + 40) setToggleCameraDeviceSupport:a15];
  [*(*(*(a1 + 40) + 8) + 40) setZoomSupport:a16];
  if (a16)
  {
    *&v90 = a9;
    [*(*(*(a1 + 40) + 8) + 40) setZoomAmount:v90];
  }

  [*(*(*(a1 + 40) + 8) + 40) setZoomMagnificationSupport:a17];
  if (a17)
  {
    *&v91 = a10;
    [*(*(*(a1 + 40) + 8) + 40) setMinimumZoomMagnification:v91];
    *&v92 = a11;
    [*(*(*(a1 + 40) + 8) + 40) setMaximumZoomMagnification:v92];
    *&v93 = a12;
    [*(*(*(a1 + 40) + 8) + 40) setCurrentZoomMagnification:v93];
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v94 = v127;
    v95 = [v94 countByEnumeratingWithState:&v133 objects:v149 count:16];
    if (v95)
    {
      v96 = v95;
      v97 = *v134;
      do
      {
        for (m = 0; m != v96; m = m + 1)
        {
          if (*v134 != v97)
          {
            objc_enumerationMutation(v94);
          }

          v99 = *(*(*(a1 + 40) + 8) + 40);
          [*(*(&v133 + 1) + 8 * m) floatValue];
          [v99 addSignificantZoomMagnifications:?];
        }

        v96 = [v94 countByEnumeratingWithState:&v133 objects:v149 count:16];
      }

      while (v96);
    }
  }

  [*(*(*(a1 + 40) + 8) + 40) setFlashSupport:sub_1000247A0(a19)];
  if (a19)
  {
    [*(*(*(a1 + 40) + 8) + 40) setFlashMode:sub_1000247A0(a20)];
  }

  [*(*(*(a1 + 40) + 8) + 40) setHdrSupport:sub_1000247D0(a21)];
  if (a21)
  {
    [*(*(*(a1 + 40) + 8) + 40) setHdrMode:sub_1000247A0(a22)];
  }

  [*(*(*(a1 + 40) + 8) + 40) setIrisSupport:sub_1000247A0(a23)];
  if (a23)
  {
    [*(*(*(a1 + 40) + 8) + 40) setIrisMode:sub_1000247A0(a24)];
    v100 = [*(*(a1 + 32) + 8) connectedDevice];
    if (!v100 || (v101 = v100, [v100 operatingSystemVersion], v101, v132 <= 4))
    {
      if ([*(*(*(a1 + 40) + 8) + 40) irisMode] == 2)
      {
        [*(*(*(a1 + 40) + 8) + 40) setIrisMode:1];
      }
    }
  }

  [*(*(*(a1 + 40) + 8) + 40) setSharedLibrarySupport:sub_100024740(a25)];
  if (a25)
  {
    [*(*(*(a1 + 40) + 8) + 40) setSharedLibraryMode:sub_100024740(a26)];
  }

  [*(*(*(a1 + 40) + 8) + 40) setSupportsMomentCapture:a27];
  [*(*(*(a1 + 40) + 8) + 40) setBurstSupport:a28];
  if (a29)
  {
    [*(*(*(a1 + 40) + 8) + 40) setViewfinderSessionActive:a29 == 1];
  }

  [*(*(*(a1 + 40) + 8) + 40) setShallowDepthOfFieldStatus:sub_1000247E0(a30)];
  [*(*(*(a1 + 40) + 8) + 40) setStereoCaptureStatus:sub_1000247F0(a31)];
  v102 = [*(*(a1 + 32) + 8) connectedDevice];
  if (!v102 || (v103 = v102, [v102 operatingSystemVersion], v103, v131 <= 11))
  {
    if ([*(*(*(a1 + 40) + 8) + 40) captureMode] == 11)
    {
      [*(*(*(a1 + 40) + 8) + 40) setCaptureMode:1];
      [*(*(*(a1 + 40) + 8) + 40) setIsSpatialCapture:1];
    }

    if ([*(*(*(a1 + 40) + 8) + 40) captureMode] == 12)
    {
      [*(*(*(a1 + 40) + 8) + 40) setCaptureMode:0];
      [*(*(*(a1 + 40) + 8) + 40) setIsSpatialCapture:1];
    }

    if ([*(*(*(a1 + 40) + 8) + 40) shallowDepthOfFieldStatus] == 9 || objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "shallowDepthOfFieldStatus") == 13 || objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "shallowDepthOfFieldStatus") == 14)
    {
      [*(*(*(a1 + 40) + 8) + 40) setShallowDepthOfFieldStatus:1];
    }

    if ([*(*(*(a1 + 40) + 8) + 40) shallowDepthOfFieldStatus] == 10)
    {
      [*(*(*(a1 + 40) + 8) + 40) setShallowDepthOfFieldStatus:5];
    }

    if ([*(*(*(a1 + 40) + 8) + 40) shallowDepthOfFieldStatus] == 11 || objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "shallowDepthOfFieldStatus") == 12 || objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "shallowDepthOfFieldStatus") == 15)
    {
      [*(*(*(a1 + 40) + 8) + 40) setShallowDepthOfFieldStatus:0];
    }

    if (([*(*(*(a1 + 40) + 8) + 40) hasViewfinderSessionActive] & 1) == 0)
    {
      [*(*(*(a1 + 40) + 8) + 40) setViewfinderSessionActive:1];
    }
  }

  v104 = [*(*(a1 + 32) + 8) connectedDevice];
  if (!v104 || (v105 = v104, [v104 operatingSystemVersion], v105, v130 <= 3))
  {
    v106 = [*(*(*(a1 + 40) + 8) + 40) viewfinderSessionActive];
    v107 = *(*(*(a1 + 40) + 8) + 40);
    if ((v106 & 1) == 0)
    {
      v109 = 2;
LABEL_128:
      [v107 setCaptureMode:v109];
      goto LABEL_129;
    }

    if ([v107 capturing])
    {
      v108 = [*(*(*(a1 + 40) + 8) + 40) captureMode];
      v107 = *(*(*(a1 + 40) + 8) + 40);
      if (v108 == 1)
      {
        v109 = 4;
      }

      else
      {
        if ([v107 captureMode] != 5)
        {
          goto LABEL_129;
        }

        v107 = *(*(*(a1 + 40) + 8) + 40);
        v109 = 6;
      }

      goto LABEL_128;
    }
  }

LABEL_129:
}

void sub_10000943C(id *a1)
{
  v2 = a1[4];
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CCCameraConnectionProtocol];
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  [v3 setClasses:v5 forSelector:"xpc_ensureSwitchedToOneOfSupportedCaptureModes:reply:" argumentIndex:0 ofReply:0];

  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  [v3 setClasses:v7 forSelector:"xpc_fetchCurrentStateIncludingSupportedCaptureModes:reply:" argumentIndex:0 ofReply:1];

  objc_storeStrong(a1[5] + 5, a1[6]);
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CCCameraServerProtocol];
  [*(a1[5] + 5) setExportedInterface:v8];

  [*(a1[5] + 5) setExportedObject:?];
  [*(a1[5] + 5) setRemoteObjectInterface:v3];
  v9 = sub_1000145AC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating connection transation", buf, 2u);
  }

  v10 = os_transaction_create();
  v11 = a1[5];
  v12 = v11[10];
  v11[10] = v10;

  objc_initWeak(buf, a1[5]);
  objc_initWeak(&location, a1[6]);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100009940;
  v28[3] = &unk_100034950;
  objc_copyWeak(&v29, buf);
  objc_copyWeak(&v30, &location);
  [*(a1[5] + 5) setInvalidationHandler:v28];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000099C4;
  v25[3] = &unk_100034950;
  objc_copyWeak(&v26, buf);
  objc_copyWeak(&v27, &location);
  [*(a1[5] + 5) setInterruptionHandler:v25];
  [*(a1[5] + 5) resume];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100009A48;
  v24[3] = &unk_100034898;
  v24[4] = a1[5];
  v13 = objc_retainBlock(v24);
  v14 = a1[5];
  v15 = *(v14 + 8);
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = [*(v14 + 5) remoteObjectProxyWithErrorHandler:&stru_100034970];
      [v16 xpc_setPreviewEndpoint:@"proxy"];
      v17 = a1[5];
      if (*(v17 + 24) == 1)
      {
        v18 = v17[2];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100009B30;
        v22[3] = &unk_100034998;
        v22[4] = v17;
        v23 = v13;
        [v16 xpc_ensureSwitchedToOneOfSupportedCaptureModes:v18 reply:v22];
        *(a1[5] + 24) = 0;
      }

      else
      {
        (v13[2])(v13);
      }
    }

    else
    {
      v20 = sub_1000145AC();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_100024998();
      }

      [a1[5] _setCompanionCameraOpenStatePreference:0];
    }
  }

  else
  {
    v19 = sub_1000145AC();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Remote camera state is unknown.", v21, 2u);
    }

    (v13[2])(v13);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void sub_1000098E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 120));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_100009940(uint64_t a1)
{
  v2 = +[ViewfinderReliability sharedInstance];
  [v2 logEvent:6];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained connectionDidTearDown:v3];
}

void sub_1000099C4(uint64_t a1)
{
  v2 = +[ViewfinderReliability sharedInstance];
  [v2 logEvent:7];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained connectionDidTearDown:v3];
}

void sub_100009A48(uint64_t a1)
{
  v2 = sub_1000145AC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending open state change.", v4, 2u);
  }

  v3 = [*(a1 + 32) _fetchCurrentCameraStateIncludingSupportedCaptureModes:1];
  [*(a1 + 32) _sendOpenStateChange:0 withInternalState:v3];
}

void sub_100009ADC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002485C();
  }
}

void sub_100009B30(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) actionQ];
  dispatch_async(v2, *(a1 + 40));
}

void *sub_100009CE4(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result;
    v3 = result[5];
    v4 = *(v3 + 40);
    if (v1 == v4)
    {
      *(v3 + 40) = 0;

      v5 = sub_1000145AC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Releasing connection transation", buf, 2u);
      }

      v6 = v2[5];
      v7 = *(v6 + 80);
      *(v6 + 80) = 0;

      v8 = sub_1000145AC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(connectionDidTearDown) Companion camera closed, sending open state change", v9, 2u);
      }

      return [v2[5] _sendOpenStateChange:2 withInternalState:0];
    }
  }

  return result;
}

void *sub_100009E4C(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_10003F2D0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100009F8C;
    v5[4] = &unk_100034A20;
    v5[5] = v5;
    v6 = off_100034A08;
    v7 = 0;
    qword_10003F2D0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_10003F2D0;
    if (qword_10003F2D0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_10003F2D0;
LABEL_5:
  result = dlsym(v2, "AudioServicesPlaySystemSound");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10003F2C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100009F8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10003F2D0 = result;
  return result;
}

void sub_10000A000(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000A028(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t sub_10000A100(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000A4C4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000AC50(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(NCCameraStateChangedRequest);
        objc_storeStrong((a1 + 8), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !sub_10000E0FC(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 16) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000E0FC(uint64_t a1, void *a2)
{
  v4 = a2;
  while (1)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v207) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v207 & 0x7F) << v6;
      if ((v207 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if ([a2 hasError])
    {
      break;
    }

    v14 = v13 & 7;
    if (v14 == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 176) |= 0x2000u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v207 & 0x7F) << v15;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
LABEL_306:
            v180 = 140;
            goto LABEL_345;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

        goto LABEL_306;
      case 3u:
        *(a1 + 176) |= 0x40000u;
        LODWORD(v207) = 0;
        v102 = [a2 position] + 4;
        if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 4, v103 <= objc_msgSend(a2, "length")))
        {
          v203 = [a2 data];
          [v203 getBytes:&v207 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v197 = v207;
        v198 = 160;
        goto LABEL_385;
      case 4u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 176) |= 0x40u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v207 & 0x7F) << v76;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v12 = v77++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_294;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v78;
        }

LABEL_294:
        v180 = 112;
        goto LABEL_345;
      case 5u:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        *(a1 + 176) |= 0x20u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v133 = [a2 position] + 1;
          if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
          {
            v135 = [a2 data];
            [v135 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v132 |= (v207 & 0x7F) << v130;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v12 = v131++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_324;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v132;
        }

LABEL_324:
        v180 = 108;
        goto LABEL_345;
      case 6u:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *(a1 + 176) |= 0x100u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            v141 = [a2 data];
            [v141 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (v207 & 0x7F) << v136;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v12 = v137++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_328;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v138;
        }

LABEL_328:
        v180 = 120;
        goto LABEL_345;
      case 7u:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 176) |= 0x80u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v207 & 0x7F) << v88;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v12 = v89++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_300;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v90;
        }

LABEL_300:
        v180 = 116;
        goto LABEL_345;
      case 8u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 176) |= 0x400u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v107 = [a2 position] + 1;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
          {
            v109 = [a2 data];
            [v109 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v106 |= (v207 & 0x7F) << v104;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v12 = v105++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_310;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v106;
        }

LABEL_310:
        v180 = 128;
        goto LABEL_345;
      case 9u:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 176) |= 0x200u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v113 = [a2 position] + 1;
          if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
          {
            v115 = [a2 data];
            [v115 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v112 |= (v207 & 0x7F) << v110;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v12 = v111++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_314;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v112;
        }

LABEL_314:
        v180 = 124;
        goto LABEL_345;
      case 0xAu:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        *(a1 + 176) |= 0x80000u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            v153 = [a2 data];
            [v153 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (v207 & 0x7F) << v148;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v12 = v149++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_334;
          }
        }

        v42 = (v150 != 0) & ~[a2 hasError];
LABEL_334:
        v181 = 164;
        goto LABEL_348;
      case 0xBu:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 176) |= 8u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            v147 = [a2 data];
            [v147 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v144 |= (v207 & 0x7F) << v142;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v12 = v143++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_332;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v144;
        }

LABEL_332:
        v180 = 100;
        goto LABEL_345;
      case 0xCu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 176) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v207 & 0x7F) << v49;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_284;
          }
        }

        v42 = (v51 != 0) & ~[a2 hasError];
LABEL_284:
        v181 = 169;
        goto LABEL_348;
      case 0xDu:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 176) |= 0x8000000u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v207 & 0x7F) << v94;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v12 = v95++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_302;
          }
        }

        v42 = (v96 != 0) & ~[a2 hasError];
LABEL_302:
        v181 = 172;
        goto LABEL_348;
      case 0xEu:
        if (v14 == 2)
        {
          v207 = 0;
          v208 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v63 = [a2 position];
            if (v63 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v64 = 0;
            v65 = 0;
            v66 = 0;
            while (1)
            {
              LOBYTE(v209) = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:&v209 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v209 & 0x7F) << v64;
              if ((v209 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v12 = v65++ >= 9;
              if (v12)
              {
                goto LABEL_108;
              }
            }

            [a2 hasError];
LABEL_108:
            PBRepeatedInt32Add();
          }

LABEL_109:
          PBReaderRecallMark();
        }

        else
        {
          v190 = 0;
          v191 = 0;
          v192 = 0;
          while (1)
          {
            LOBYTE(v207) = 0;
            v193 = [a2 position] + 1;
            if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
            {
              v195 = [a2 data];
              [v195 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v192 |= (v207 & 0x7F) << v190;
            if ((v207 & 0x80) == 0)
            {
              break;
            }

            v190 += 7;
            v12 = v191++ >= 9;
            if (v12)
            {
              goto LABEL_371;
            }
          }

LABEL_370:
          [a2 hasError];
LABEL_371:
          PBRepeatedInt32Add();
        }

LABEL_386:
        v4 = a2;
        break;
      case 0xFu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 176) |= 0x100000u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v207 & 0x7F) << v36;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_282;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_282:
        v181 = 165;
        goto LABEL_348;
      case 0x10u:
        *(a1 + 176) |= 2u;
        v207 = 0;
        v116 = [a2 position] + 8;
        if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 8, v117 <= objc_msgSend(a2, "length")))
        {
          v204 = [a2 data];
          [v204 getBytes:&v207 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v200 = v207;
        v201 = 88;
        goto LABEL_382;
      case 0x11u:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        *(a1 + 176) |= 0x2000000u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v121 = [a2 position] + 1;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
          {
            v123 = [a2 data];
            [v123 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v120 |= (v207 & 0x7F) << v118;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v12 = v119++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_316;
          }
        }

        v42 = (v120 != 0) & ~[a2 hasError];
LABEL_316:
        v181 = 170;
        goto LABEL_348;
      case 0x12u:
        v160 = 0;
        v161 = 0;
        v162 = 0;
        *(a1 + 176) |= 0x4000u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v163 = [a2 position] + 1;
          if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
          {
            v165 = [a2 data];
            [v165 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v162 |= (v207 & 0x7F) << v160;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v12 = v161++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_340;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v162;
        }

LABEL_340:
        v180 = 144;
        goto LABEL_345;
      case 0x13u:
        v154 = 0;
        v155 = 0;
        v156 = 0;
        *(a1 + 176) |= 0x800000u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v157 = [a2 position] + 1;
          if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
          {
            v159 = [a2 data];
            [v159 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v156 |= (v207 & 0x7F) << v154;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v12 = v155++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_336;
          }
        }

        v42 = (v156 != 0) & ~[a2 hasError];
LABEL_336:
        v181 = 168;
        goto LABEL_348;
      case 0x14u:
        if (v14 != 2)
        {
          v182 = 0;
          v183 = 0;
          v184 = 0;
          while (1)
          {
            LOBYTE(v207) = 0;
            v185 = [a2 position] + 1;
            if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
            {
              v187 = [a2 data];
              [v187 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v184 |= (v207 & 0x7F) << v182;
            if ((v207 & 0x80) == 0)
            {
              goto LABEL_370;
            }

            v182 += 7;
            v12 = v183++ >= 9;
            if (v12)
            {
              goto LABEL_371;
            }
          }
        }

        v207 = 0;
        v208 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v23 = [a2 position];
          if (v23 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_109;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            LOBYTE(v209) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v209 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v209 & 0x7F) << v24;
            if ((v209 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v12 = v25++ >= 9;
            if (v12)
            {
              goto LABEL_42;
            }
          }

          [a2 hasError];
LABEL_42:
          PBRepeatedInt32Add();
        }

      case 0x15u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 176) |= 4u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v207 & 0x7F) << v70;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_290;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v72;
        }

LABEL_290:
        v180 = 96;
        goto LABEL_345;
      case 0x16u:
        v166 = 0;
        v167 = 0;
        v168 = 0;
        *(a1 + 176) |= 0x10000u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v169 = [a2 position] + 1;
          if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
          {
            v171 = [a2 data];
            [v171 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v168 |= (v207 & 0x7F) << v166;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v166 += 7;
          v12 = v167++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_344;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v168;
        }

LABEL_344:
        v180 = 152;
        goto LABEL_345;
      case 0x17u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 176) |= 0x8000u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v207 & 0x7F) << v30;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_280;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v32;
        }

LABEL_280:
        v180 = 148;
        goto LABEL_345;
      case 0x18u:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 176) |= 0x4000000u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v207 & 0x7F) << v57;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v12 = v58++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_286;
          }
        }

        v42 = (v59 != 0) & ~[a2 hasError];
LABEL_286:
        v181 = 171;
        goto LABEL_348;
      case 0x19u:
        *(a1 + 176) |= 0x1000u;
        LODWORD(v207) = 0;
        v47 = [a2 position] + 4;
        if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 4, v48 <= objc_msgSend(a2, "length")))
        {
          v196 = [a2 data];
          [v196 getBytes:&v207 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v197 = v207;
        v198 = 136;
        goto LABEL_385;
      case 0x1Au:
        *(a1 + 176) |= 0x800u;
        LODWORD(v207) = 0;
        v100 = [a2 position] + 4;
        if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 4, v101 <= objc_msgSend(a2, "length")))
        {
          v202 = [a2 data];
          [v202 getBytes:&v207 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v197 = v207;
        v198 = 132;
        goto LABEL_385;
      case 0x1Bu:
        if (v14 != 2)
        {
          LODWORD(v207) = 0;
          v188 = [a2 position] + 4;
          if (v188 >= [a2 position] && (v189 = objc_msgSend(a2, "position") + 4, v189 <= objc_msgSend(a2, "length")))
          {
            v206 = [a2 data];
            [v206 getBytes:&v207 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
          goto LABEL_386;
        }

        v207 = 0;
        v208 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v43 = [a2 position];
          if (v43 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v209 = 0;
          v44 = [a2 position] + 4;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 4, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v209 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }

        goto LABEL_109;
      case 0x1Cu:
        *(a1 + 176) |= 0x10u;
        LODWORD(v207) = 0;
        v178 = [a2 position] + 4;
        if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 4, v179 <= objc_msgSend(a2, "length")))
        {
          v205 = [a2 data];
          [v205 getBytes:&v207 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v197 = v207;
        v198 = 104;
LABEL_385:
        *(a1 + v198) = v197;
        goto LABEL_386;
      case 0x1Du:
        v172 = 0;
        v173 = 0;
        v174 = 0;
        *(a1 + 176) |= 0x400000u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v175 = [a2 position] + 1;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
          {
            v177 = [a2 data];
            [v177 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v174 |= (v207 & 0x7F) << v172;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v172 += 7;
          v12 = v173++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_347;
          }
        }

        v42 = (v174 != 0) & ~[a2 hasError];
LABEL_347:
        v181 = 167;
        goto LABEL_348;
      case 0x1Eu:
        *(a1 + 176) |= 1u;
        v207 = 0;
        v55 = [a2 position] + 8;
        if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 8, v56 <= objc_msgSend(a2, "length")))
        {
          v199 = [a2 data];
          [v199 getBytes:&v207 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v200 = v207;
        v201 = 80;
LABEL_382:
        *(a1 + v201) = v200;
        goto LABEL_386;
      case 0x1Fu:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 176) |= 0x200000u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v207 & 0x7F) << v82;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v12 = v83++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_296;
          }
        }

        v42 = (v84 != 0) & ~[a2 hasError];
LABEL_296:
        v181 = 166;
LABEL_348:
        *(a1 + v181) = v42;
        goto LABEL_386;
      case 0x20u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 176) |= 0x20000u;
        while (1)
        {
          LOBYTE(v207) = 0;
          v127 = [a2 position] + 1;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
          {
            v129 = [a2 data];
            [v129 getBytes:&v207 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v126 |= (v207 & 0x7F) << v124;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v12 = v125++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_320;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v126;
        }

LABEL_320:
        v180 = 156;
LABEL_345:
        *(a1 + v180) = v21;
        goto LABEL_386;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_386;
        }

        return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001294C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_44;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_44:
        *(a1 + 8) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_40;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_40:
        *(a1 + 12) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100013540(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v7 = [a2 position] + 1;
        if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
        {
          v9 = [a2 data];
          [v9 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v6 |= (v27[0] & 0x7F) << v4;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v4 += 7;
        v10 = v5++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        if ((v11 & 7) == 2)
        {
          v27[0] = 0;
          v27[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v13 = [a2 position];
            if (v13 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v28 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v28 & 0x7F) << v14;
              if ((v28 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v10 = v15++ >= 9;
              if (v10)
              {
                goto LABEL_32;
              }
            }

            [a2 hasError];
LABEL_32:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v27[0] & 0x7F) << v20;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v10 = v21++ >= 9;
            if (v10)
            {
              goto LABEL_46;
            }
          }

          [a2 hasError];
LABEL_46:
          PBRepeatedInt32Add();
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100013E78(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(NCCameraStateChangedRequest);
        objc_storeStrong((a1 + 8), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !sub_10000E0FC(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 16) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_100014524()
{
  if (qword_10003F2E0 != -1)
  {
    sub_1000249CC();
  }

  v1 = qword_10003F2D8;

  return v1;
}

void sub_100014568(id a1)
{
  qword_10003F2D8 = os_log_create("com.apple.NanoCamera", "app");

  _objc_release_x1();
}

id sub_1000145AC()
{
  if (qword_10003F2F0 != -1)
  {
    sub_1000249E0();
  }

  v1 = qword_10003F2E8;

  return v1;
}

void sub_1000145F0(id a1)
{
  qword_10003F2E8 = os_log_create("com.apple.NanoCamera", "control");

  _objc_release_x1();
}

id sub_100014634()
{
  if (qword_10003F300 != -1)
  {
    sub_1000249F4();
  }

  v1 = qword_10003F2F8;

  return v1;
}

void sub_100014678(id a1)
{
  qword_10003F2F8 = os_log_create("com.apple.NanoCamera", "preview");

  _objc_release_x1();
}

void *sub_100014C2C(uint64_t a1)
{
  [*(a1 + 32) _checkConnectedDevice];
  result = *(a1 + 32);
  if (!result[9])
  {

    return [result _notifyDidChangeConnectedState];
  }

  return result;
}

void sub_10001541C(uint64_t a1)
{
  v29 = [*(a1 + 32) messageID];
  v30 = [*(a1 + 32) priority];
  v2 = [*(a1 + 32) data];
  v3 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v2 length] + 3);

  [v3 appendBytes:&v29 length:3];
  v4 = [*(a1 + 32) data];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [*(a1 + 32) data];
    [v3 appendData:v6];
  }

  v7 = [*(a1 + 32) priority];
  v8 = 300;
  if (v7 == 1)
  {
    v8 = 200;
  }

  if (v7 == 2)
  {
    v9 = 100;
  }

  else
  {
    v9 = v8;
  }

  v10 = +[NSMutableDictionary dictionary];
  [*(a1 + 32) sendTimeout];
  if (v11 > 0.0)
  {
    [*(a1 + 32) sendTimeout];
    v12 = [NSNumber numberWithDouble:?];
    [v10 setObject:v12 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
  }

  v13 = [*(a1 + 32) responseHandler];

  if (v13)
  {
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];
  }

  if ([*(a1 + 32) doNotCompress])
  {
    [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionCompressPayloadKey];
  }

  if ([*(a1 + 32) fireAndForget])
  {
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
  }

  if ([*(a1 + 32) queueOnly1])
  {
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%hu", [*(a1 + 32) messageID]);
    [v10 setObject:v14 forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
  }

  v15 = *(*(a1 + 40) + 16);
  v16 = [v15 accounts];
  v17 = [v16 anyObject];
  v18 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v27 = 0;
  v28 = 0;
  [v15 sendData:v3 fromAccount:v17 toDestinations:v18 priority:v9 options:v10 identifier:&v28 error:&v27];
  v19 = v28;
  v20 = v27;

  [*(a1 + 32) setMessageCenter:*(a1 + 40)];
  [*(a1 + 32) setIdsIdentifier:v19];
  v21 = sub_1000145AC();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*(a1 + 32) messageID];
    v23 = [v3 length];
    *buf = 67109634;
    v32 = v22;
    v33 = 2048;
    v34 = v23;
    v35 = 2112;
    v36 = v19;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sent request ID %hu of size %tu. IDS Identifier %@", buf, 0x1Cu);
  }

  if (v19)
  {
    [*(*(a1 + 40) + 32) setObject:*(a1 + 32) forKeyedSubscript:v19];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      v26 = objc_loadWeakRetained((*(a1 + 40) + 64));
      [v26 messageCenter:*(a1 + 40) didResolveIDSIdentifierForRequest:*(a1 + 32)];
    }
  }

  if (v20)
  {
    [*(a1 + 40) _handleError:v20 forRequest:*(a1 + 32)];
  }

  else
  {
    [*(a1 + 32) startReplyTimer];
  }
}

void sub_100015A98(id *a1)
{
  v2 = [a1[4] request];
  v28 = [v2 messageID];

  v3 = [a1[4] data];
  v4 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v3 length] + 2);

  [v4 appendBytes:&v28 length:2];
  v5 = [a1[4] data];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [a1[4] data];
    [v4 appendData:v7];
  }

  v8 = [a1[4] priority];
  v9 = 300;
  if (v8 == 1)
  {
    v9 = 200;
  }

  if (v8 == 2)
  {
    v10 = 100;
  }

  else
  {
    v10 = v9;
  }

  v11 = +[NSMutableDictionary dictionary];
  [a1[4] sendTimeout];
  if (v12 > 0.0)
  {
    [a1[4] sendTimeout];
    v13 = [NSNumber numberWithDouble:?];
    [v11 setObject:v13 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
  }

  v14 = [a1[5] idsIdentifier];
  [v11 setObject:v14 forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];

  if ([a1[4] doNotCompress])
  {
    [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionCompressPayloadKey];
  }

  if ([a1[4] fireAndForget])
  {
    [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
  }

  v15 = *(a1[6] + 2);
  v16 = [v15 accounts];
  v17 = [v16 anyObject];
  v18 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v26 = 0;
  v27 = 0;
  [v15 sendData:v4 fromAccount:v17 toDestinations:v18 priority:v10 options:v11 identifier:&v27 error:&v26];
  v19 = v27;
  v20 = v26;

  [a1[4] setIdsIdentifier:v19];
  v21 = sub_1000145AC();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [a1[4] request];
    v23 = [v22 messageID];
    v24 = [v4 length];
    v25 = [a1[5] idsIdentifier];
    *buf = 67109890;
    v30 = v23;
    v31 = 2048;
    v32 = v24;
    v33 = 2112;
    v34 = v25;
    v35 = 2112;
    v36 = v19;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sent response ID %hu of size %tu to %@. IDS Identifier %@", buf, 0x26u);
  }

  if (v19)
  {
    [*(a1[6] + 5) setObject:a1[5] forKeyedSubscript:v19];
  }

  if (v20)
  {
    [a1[6] _handleError:v20 forResponse:a1[4]];
  }
}

double sub_100016724()
{
  if (qword_10003F308 != -1)
  {
    sub_100024DE0();
  }

  return *&qword_10003F310 * mach_absolute_time();
}

void sub_1000167FC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [*(a1 + 40) idsIdentifier];
  [v1 removeObjectForKey:v2];
}

id sub_1000168FC(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 32) allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) invalidateReplyTimer];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 32) removeAllObjects];
  return [*(*(a1 + 32) + 40) removeAllObjects];
}

void sub_100016ED4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _replyTimerDidTimeout];
}

void sub_1000170C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000170DC(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained messageCenter];
  v5 = [v4 _pbMappingForMessageID:{objc_msgSend(WeakRetained, "messageID")}];
  v6 = [v5 responseClass];

  if (!v6)
  {
    v9 = [WeakRetained messageCenter];
    NSLog(@"%@: Unmapped PB request/response pairing for messageID: %hu", v9, [WeakRetained messageID]);

    v10 = [WeakRetained errorHandler];

    if (!v10)
    {
      goto LABEL_11;
    }

    v7 = [WeakRetained errorHandler];
    v11 = [NSError errorWithDomain:@"NMSErrorDomain" code:5 userInfo:0];
    v7[2](v7, v11);
    goto LABEL_9;
  }

  v7 = [[v6 alloc] initWithData:v14];
  if (v7)
  {
    v8 = WeakRetained[2];
    if (v8)
    {
      (*(v8 + 16))(v8, v7);
    }

    goto LABEL_10;
  }

  v12 = [WeakRetained errorHandler];

  if (v12)
  {
    v11 = [WeakRetained errorHandler];
    v13 = [NSError errorWithDomain:@"NMSErrorDomain" code:4 userInfo:0];
    (v11)[2](v11, v13);

LABEL_9:
  }

LABEL_10:

LABEL_11:
}

void sub_100017CF0(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&qword_10003F310 = v1 / v2 * 0.000000001;
}

void sub_100017D3C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_fault_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0xCu);
}

void sub_100017D5C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

uint64_t sub_100017F18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return AnalyticsSendEventLazy();
}

id sub_100017F98(uint64_t a1)
{
  v6[0] = @"code";
  v2 = [NSNumber numberWithInteger:*(a1 + 32)];
  v6[1] = @"status";
  v7[0] = v2;
  v3 = [NSNumber numberWithInt:*(a1 + 40)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void sub_1000180E0(id a1)
{
  qword_10003F318 = os_log_create("com.apple.NanoCamera", "ViewfinderErrorReporter");

  _objc_release_x1();
}

uint64_t sub_100018408(uint64_t a1)
{
  qword_10003F328 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

const __CFString *sub_100018644(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return @"OpenCameraMessageReceived";
  }

  else
  {
    return *(&off_100034F78 + a1 - 1);
  }
}

void sub_100018800(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100018824(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reset];
}

void sub_100018864(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _print];
}

void sub_100018D50(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t sub_100019048(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001964C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100019C68(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001A3AC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001AAEC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001B124(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(NCCameraStateChangedRequest);
        objc_storeStrong((a1 + 8), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !sub_10000E0FC(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_34;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_34:
        *(a1 + 16) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001BB90(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001C488(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = objc_alloc_init(NCCameraStateChangedRequest);
        objc_storeStrong((a1 + 16), v28);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !sub_10000E0FC(v28, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v31[0] & 0x7F) << v21;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_44;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_44:
        *(a1 + 24) = v27;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_48:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001CFF8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001D720(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001DDFC(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        LOBYTE(v21[0]) = 0;
        v7 = [a2 position] + 1;
        if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
        {
          v9 = [a2 data];
          [v9 getBytes:v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v6 |= (v21[0] & 0x7F) << v4;
        if ((v21[0] & 0x80) == 0)
        {
          break;
        }

        v4 += 7;
        if (v5++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        if ((v11 & 7) == 2)
        {
          v21[0] = 0;
          v21[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v13 = [a2 position];
            if (v13 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v22 = 0;
            v14 = [a2 position] + 4;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
            {
              v16 = [a2 data];
              [v16 getBytes:&v22 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedFloatAdd();
          }

          PBReaderRecallMark();
        }

        else
        {
          LODWORD(v21[0]) = 0;
          v17 = [a2 position] + 4;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v21 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001E684(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001EDAC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001F4D4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001FBFC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10002031C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100020A3C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100021020(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v18 = 0;
        v13 = [a2 position] + 4;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100021638(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v18 = 0;
        v13 = [a2 position] + 4;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100021C50(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v18 = 0;
        v13 = [a2 position] + 4;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100022268(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v18 = 0;
        v13 = [a2 position] + 4;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100022AA0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100023084(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000237D8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100023EC0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v30 = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v30 & 0x7F) << v18;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            LOBYTE(v24) = 0;
            goto LABEL_36;
          }
        }

        v24 = (v20 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v24;
      }

      else if (v13 == 2)
      {
        *(a1 + 28) |= 1u;
        v28 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v28 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v28;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100024758(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_10002AD70[a1 - 1];
  }
}

uint64_t sub_10002477C(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_10002AD98[a1 - 1];
  }
}

uint64_t sub_1000247A0(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t sub_1000247B8(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t sub_1000247D0(uint64_t result)
{
  if ((result - 1) < 3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000247E0(uint64_t result)
{
  if ((result - 1) < 0xF)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000247F8(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_10002AE00[a1 - 1];
  }
}

uint64_t sub_100024934()
{
  dlerror();
  v0 = abort_report_np();
  return sub_100024958(v0);
}

void sub_100024A08(const char *a1)
{
  NSStringFromSelector(a1);
  objc_claimAutoreleasedReturnValue();
  sub_100017D84();
  v2 = [NSString stringWithFormat:@"Cannot use %@ after using -resume"];
  sub_100017D78();
  sub_100017D3C(&_mh_execute_header, v3, v4, "NMSMisuseException: %@", v5, v6, v7, v8, v9, v10, v11);
}

void sub_100024AB8(const char *a1)
{
  NSStringFromSelector(a1);
  objc_claimAutoreleasedReturnValue();
  sub_100017D84();
  v2 = [NSString stringWithFormat:@"Target must respond to selector %@"];
  sub_100017D78();
  sub_100017D3C(&_mh_execute_header, v3, v4, "NMSMisuseException: %@", v5, v6, v7, v8, v9, v10, v11);
}

void sub_100024B68(const char *a1)
{
  NSStringFromSelector(a1);
  objc_claimAutoreleasedReturnValue();
  sub_100017D84();
  v2 = [NSString stringWithFormat:@"Cannot use %@ after until -resume is used"];
  sub_100017D78();
  sub_100017D3C(&_mh_execute_header, v3, v4, "NMSMisuseException: %@", v5, v6, v7, v8, v9, v10, v11);
}

void sub_100024C18()
{
  v0 = [NSString stringWithFormat:@"You cannot call sendRequest twice for the same request object"];
  sub_10000A01C();
  sub_100017D5C(&_mh_execute_header, v1, v2, "NMSMisuseException: %@", v3);
}

void sub_100024CB0()
{
  v0 = [NSString stringWithFormat:@"Response's request needs an idsIdentifier"];
  sub_10000A01C();
  sub_100017D5C(&_mh_execute_header, v1, v2, "NMSMisuseException: %@", v3);
}

void sub_100024D48()
{
  v0 = [NSString stringWithFormat:@"You cannot call send twice for the same response object"];
  sub_10000A01C();
  sub_100017D5C(&_mh_execute_header, v1, v2, "NMSMisuseException: %@", v3);
}

void sub_100024DF4()
{
  v0 = [NSString stringWithFormat:@"Must not forget about an NMSIncomingRequest without first responding to it."];
  sub_10000A01C();
  sub_100017D5C(&_mh_execute_header, v1, v2, "NMSMisuseException: %@", v3);
}

void sub_100024E8C(unsigned __int16 *a1)
{
  v8 = *a1;
  v1 = [NSString stringWithFormat:@"Can't access -pbRequest without a mapping for messageID: %hu"];
  sub_100017D78();
  sub_100017D3C(&_mh_execute_header, v2, v3, "NMSMisuseException: %@", v4, v5, v6, v7, v8, v9, v10);
}

void sub_100024F2C(void *a1)
{
  NSStringFromClass([a1 responseClass]);
  objc_claimAutoreleasedReturnValue();
  sub_100017D84();
  v2 = [NSString stringWithFormat:@"pbResponse needs to be of type %@"];
  sub_100017D78();
  sub_100017D3C(&_mh_execute_header, v3, v4, "NMSMisuseException: %@", v5, v6, v7, v8, v9, v10, v11);
}

void sub_100024FE0(unsigned __int16 *a1)
{
  v8 = *a1;
  v1 = [NSString stringWithFormat:@"Can't access -pbResponse without a mapping for messageID: %hu"];
  sub_100017D78();
  sub_100017D3C(&_mh_execute_header, v2, v3, "NMSMisuseException: %@", v4, v5, v6, v7, v8, v9, v10);
}

void sub_100025094(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 loggingDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Reporting error %@", &v5, 0xCu);
}

void sub_10002513C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_100018644(a2);
  sub_100018D50(&_mh_execute_header, v5, v6, "Unexpected event: %@", v7, v8, v9, v10, 2u);
}

void sub_1000251D4(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_100018644(a2);
  sub_100018D50(&_mh_execute_header, v5, v6, "Repeated event: %@", v7, v8, v9, v10, 2u);
}