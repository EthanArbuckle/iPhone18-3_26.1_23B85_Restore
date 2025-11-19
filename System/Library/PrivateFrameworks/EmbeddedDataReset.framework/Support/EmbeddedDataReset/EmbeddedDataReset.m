void sub_100001070(uint64_t a1)
{
  if (objc_opt_class())
  {
    v2 = [*(a1 + 32) resetProgressWindow];

    if (!v2)
    {
      +[CATransaction begin];
      v3 = [[PUIProgressWindow alloc] initWithProgressBarVisibility:*(a1 + 40)];
      [*(a1 + 32) setResetProgressWindow:v3];

      +[CATransaction commit];
    }
  }
}

id sub_1000011DC(uint64_t a1)
{
  +[CATransaction begin];
  v2 = [*(a1 + 32) resetProgressWindow];
  [*(a1 + 32) progress];
  *&v3 = v3;
  [v2 setProgressValue:v3];

  v4 = [*(a1 + 32) resetProgressWindow];
  [v4 setVisible:1];

  return +[CATransaction commit];
}

id sub_100001320(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 >= 0.0 && v2 <= 1.0)
  {
    *(*(a1 + 32) + 16) = v2;
  }

  v4 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained progress];
    v13 = 134218240;
    v14 = v5;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "got progress here: %lf, self.progress: %lf", &v13, 0x16u);
  }

  +[CATransaction begin];
  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 resetProgressWindow];
  v10 = objc_loadWeakRetained((a1 + 40));
  [v10 progress];
  *&v11 = v11;
  [v9 setProgressValue:v11];

  return +[CATransaction commit];
}

void sub_100001ADC(uint64_t a1)
{
  v2 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidating connection in daemon", v4, 2u);
  }

  v3 = [*(a1 + 32) clients];
  [v3 removeObject:*(a1 + 40)];
}

void sub_100001B68(uint64_t a1)
{
  v2 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Interrupting connection in daemon", v4, 2u);
  }

  v3 = [*(a1 + 32) clients];
  [v3 removeObject:*(a1 + 40)];
}

void sub_100001FB0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reset finished in daemon with error: %@", &v4, 0xCu);
  }
}

void sub_100002148(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Broadcast resetWithModeWillBegin to client connection: %@", &v6, 0xCu);
  }

  v5 = [v3 remoteObjectProxy];
  [v5 willBeginDataResetWithMode:*(a1 + 32)];
}

void sub_10000230C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Broad cast resetWithModeDidBegin to client connection: %@", &v6, 0xCu);
  }

  v5 = [v3 remoteObjectProxy];
  [v5 didBeginDataResetWithMode:*(a1 + 32)];
}

void sub_1000027E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100002818(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *(*(a1 + 32) + 48) = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v1 = sub_100002D58(2uLL);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "No error, reboot", v4, 2u);
    }

    v2 = [[FBSShutdownOptions alloc] initWithReason:@"ResetOrRestoreComplete"];
    [v2 setRebootType:1];
    [v2 setSource:1];
    v3 = +[FBSSystemService sharedService];
    [v3 shutdownWithOptions:v2];
  }
}

void sub_100002904(uint64_t a1, void *a2)
{
  ++*(*(*(a1 + 56) + 8) + 24);
  v3 = a2;
  v4 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 56) + 8) + 24);
    *buf = 67109120;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "increament observer to: %d", buf, 8u);
  }

  v6 = [v3 remoteObjectProxy];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002A7C;
  v9[3] = &unk_10000C408;
  v7 = *(a1 + 64);
  v12 = *(a1 + 56);
  v8 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  [v6 didCompleteDataResetMode:v7 withError:v8 completion:v9];
}

void sub_100002A7C(void *a1)
{
  --*(*(a1[6] + 8) + 24);
  v2 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1[6] + 8) + 24);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "decrement observer to: %d", v5, 8u);
  }

  if (!*(*(a1[6] + 8) + 24) && !a1[4])
  {
    v4 = sub_100002D58(2uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Observer count is zero reboot!", v5, 2u);
    }

    (*(a1[5] + 16))();
  }
}

uint64_t sub_100002BB4(uint64_t a1)
{
  v2 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "5s elapsed to reboot.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_100002D58(unint64_t a1)
{
  if (a1 >= 4)
  {
    sub_100004940();
  }

  if (qword_100011838 != -1)
  {
    sub_10000492C();
  }

  v2 = qword_100011818[a1];

  return v2;
}

void sub_100002DB8(id a1)
{
  v1 = os_log_create("com.apple.devicedatareset.xpcserviceworker", "DeviceDataResetDefault");
  v2 = qword_100011818[0];
  qword_100011818[0] = v1;

  v3 = os_log_create("com.apple.devicedatareset.xpcserviceworker", "DeviceDataResetProgress");
  v4 = qword_100011820;
  qword_100011820 = v3;

  v5 = os_log_create("com.apple.devicedatareset.daemon", "DeviceDataResetDaemon");
  v6 = qword_100011828;
  qword_100011828 = v5;

  qword_100011830 = os_log_create("com.apple.devicedatareset.framework", "DeviceDataResetFramework");

  _objc_release_x1();
}

void sub_1000031F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_100003228(uint64_t a1)
{
  v2 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DeviceDataResetWorker connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetConnection];
}

void sub_1000032AC(uint64_t a1)
{
  v2 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DeviceDataResetWorker connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetConnection];
}

void sub_100003498(id *a1)
{
  v2 = [a1[4] delegate];
  [v2 resetWithModeWillBegin:{objc_msgSend(a1[5], "mode")}];

  if ([a1[5] mode] >= 4)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    [v3 setObject:kObliterationTypeMarkStart forKeyedSubscript:kObliterationTypeKey];
    v4 = [a1[5] options];
    v5 = [v4 exclusionPaths];
    [v3 setObject:v5 forKeyedSubscript:kObliterationExclusionPathsKey];

    Mobile_Obliterate();
  }

  v6 = [a1[5] reason];
  [a1[4] setReason:v6];

  v7 = [a1[5] options];
  [a1[4] setDisallowProximitySetup:{objc_msgSend(v7, "disallowProximitySetup")}];

  v8 = [a1[5] options];
  v9 = [v8 exclusionPaths];
  [a1[4] setExclusionPaths:v9];

  v10 = [a1[5] options];
  v11 = [v10 revertToSnapshotName];
  [a1[4] setRevertToSnapshotName:v11];

  v12 = [a1[5] options];
  v13 = [v12 bootstrapToken];
  [a1[4] setBootstrapToken:v13];

  v14 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "calling data reset in daemon", buf, 2u);
  }

  v15 = [a1[4] layoutManager];
  [v15 startLayout];

  v16 = [a1[5] options];
  v17 = [v16 hideProgress];

  if ((v17 & 1) == 0)
  {
    v18 = [a1[4] uiPresenter];
    [v18 setProgressBarVisible:1];
  }

  v19 = [a1[4] uiPresenter];
  [v19 show];

  v20 = [a1[4] dataResetWorkerConnection];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100003804;
  v30[3] = &unk_10000C510;
  v21 = a1[5];
  v30[4] = a1[4];
  v31 = v21;
  v22 = [v20 remoteObjectProxyWithErrorHandler:v30];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000038EC;
  v27[3] = &unk_10000C538;
  v23 = a1[5];
  v24 = a1[6];
  v25 = a1[4];
  v26 = a1[5];
  v29 = v24;
  v27[4] = v25;
  v28 = v26;
  [v22 resetDataWithRequest:v23 completion:v27];
}

void sub_100003804(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Data reset failed with error: %@", &v6, 0xCu);
  }

  v5 = [*(a1 + 32) delegate];
  [v5 resetWithModeDidFinish:objc_msgSend(*(a1 + 40) error:{"mode"), v3}];
}

void sub_1000038EC(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }

  [*(a1 + 32) finishResetOfMode:objc_msgSend(*(a1 + 40) withError:{"mode"), v4}];
}

uint64_t start()
{
  v0 = objc_alloc_init(DDRServer);
  [(DDRServer *)v0 start];

  return 0;
}

void sub_1000045D0(uint64_t a1)
{
  v2 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidating connection in DDRObserverServer", v4, 2u);
  }

  v3 = [*(a1 + 32) clients];
  [v3 removeObject:*(a1 + 40)];
}

void sub_10000465C(uint64_t a1)
{
  v2 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Interrupting connection in DDRObserverServer", v4, 2u);
  }

  v3 = [*(a1 + 32) clients];
  [v3 removeObject:*(a1 + 40)];
}

void sub_10000496C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Data reset failed with error: %@", &v2, 0xCu);
}

void sub_1000049E4(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "unsupported mode (%ld) for _obliterateDeviceWithMode", &v2, 0xCu);
}