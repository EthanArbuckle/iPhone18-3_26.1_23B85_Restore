uint64_t start()
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v0 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v1 = sub_100004064();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10000B564(v1);
    }
  }

  v2 = NSTemporaryDirectory();
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  v4 = qword_100019D70;
  qword_100019D70 = v3;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001824;
  handler[3] = &unk_1000144A8;
  handler[4] = &v11;
  dispatch_source_set_event_handler(qword_100019D70, handler);
  dispatch_resume(qword_100019D70);
  v5 = +[ServerController sharedController];
  [v5 start];

  objc_autoreleasePoolPop(v0);
  while ((v12[3] & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = +[NSRunLoop currentRunLoop];
    v8 = [NSDate dateWithTimeIntervalSinceNow:1.0];
    [v7 runUntilDate:v8];

    objc_autoreleasePoolPop(v6);
  }

  _Block_object_dispose(&v11, 8);
  return 0;
}

void sub_1000013B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000141C(id a1)
{
  qword_100019D60 = objc_alloc_init(ServerController);

  _objc_release_x1();
}

void sub_100001CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001D14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001D2C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  v6 = [v12 clipBundleID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = [v12 clipIpaURL];
    v9 = [v8 absoluteString];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

void sub_10000204C(id a1)
{
  v1 = qword_100019D78;
  qword_100019D78 = &off_100015008;
}

void sub_1000021A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000021C0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([*(a1 + 32) hasPrefix:a2])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_10000239C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  state = xpc_activity_get_state(v2);
  if (state == 2)
  {
    v9 = xpc_activity_set_state(v2, 4);
    v10 = sub_100004064();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Running cleanup activity", buf, 2u);
      }

      v12 = os_transaction_create();
      v13 = dispatch_group_create();
      dispatch_group_enter(v13);
      v14 = +[CPSClipCleanupManager sharedManager];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000027AC;
      v34[3] = &unk_1000145A8;
      v15 = v2;
      v35 = v15;
      v16 = v13;
      v36 = v16;
      [v14 removeFailedClipInstallsWithCompletionHandler:v34];

      dispatch_group_enter(v16);
      v17 = objc_alloc_init(CPSImageStore);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100002950;
      v32[3] = &unk_100014580;
      v18 = v16;
      v33 = v18;
      [v17 purgeOldImagesWithCompletionHandler:v32];

      dispatch_group_enter(v18);
      v19 = +[CPSWebClipStore sharedStore];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000029BC;
      v30[3] = &unk_100014580;
      v20 = v18;
      v31 = v20;
      [v19 purgeDuplicateWebClipsWithCompletionHandler:v30];

      dispatch_group_enter(v20);
      v21 = +[CPSWebClipStore sharedStore];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100002A28;
      v28[3] = &unk_100014580;
      v29 = v20;
      v22 = v20;
      [v21 removeExpiredPoweredByWebClipsWithCompletionHandler:v28];

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002A94;
      block[3] = &unk_1000145A8;
      v26 = v15;
      v27 = v12;
      v23 = v12;
      dispatch_group_notify(v22, &_dispatch_main_q, block);
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100002B04(v11);
      }

      xpc_activity_set_completion_status();
    }
  }

  else
  {
    v4 = state;
    if (state)
    {
      v24 = sub_100004064();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v38 = v4;
        v6 = "Current cleanup activity state is %ld. Not taking any action until the activity state is Run";
        v7 = v24;
        v8 = 12;
        goto LABEL_11;
      }
    }

    else
    {
      v5 = sub_100004064();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v6 = "Checked in cleanup activity";
        v7 = v5;
        v8 = 2;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v6, buf, v8);
      }
    }
  }
}

void sub_1000027AC(uint64_t a1)
{
  v2 = sub_100004064();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished cleaning up failed clip installs", buf, 2u);
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v3 = sub_100004064();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deferring cleanup activity", buf, 2u);
    }

    v4 = *(a1 + 32);
    xpc_activity_set_completion_status();
  }

  else
  {
    v5 = +[CPSClipCleanupManager sharedManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000028E4;
    v6[3] = &unk_100014580;
    v7 = *(a1 + 40);
    [v5 uninstallClipsWithParentAppInstalledWithCompletionHandler:v6];
  }
}

void sub_1000028E4(uint64_t a1)
{
  v2 = sub_100004064();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished cleaning up app clips with installed parent apps", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100002950(uint64_t a1)
{
  v2 = sub_100004064();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished purging image store", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000029BC(uint64_t a1)
{
  v2 = sub_100004064();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished purging duplicate web clips", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100002A28(uint64_t a1)
{
  v2 = sub_100004064();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished removing expired web clips", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_100002A94(uint64_t a1)
{
  v2 = sub_100004064();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Done with cleanup activity", v5, 2u);
  }

  v3 = *(a1 + 32);
  return xpc_activity_set_completion_status();
}

void sub_100002D44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _appForBundleID:*(a1 + 32) createIfNeeded:1];
    v5 = [v4 downloadedURL];
    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = v5;
    v7 = +[NSFileManager defaultManager];
    v8 = [v4 downloadedURL];
    v9 = [v8 path];
    v10 = [v7 fileExistsAtPath:v9];

    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = [v4 bundleID];
      (*(v11 + 16))(v11, v12, 0);
    }

    else
    {
LABEL_5:
      v13 = [NSURLRequest alloc];
      v14 = [v4 ipaLink];
      v12 = [v13 initWithURL:v14 cachePolicy:1 timeoutInterval:20.0];

      v15 = sub_100004064();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = v15;
        v17 = [v4 ipaLink];
        *buf = 138412290;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "start downloading IPA from demo server: URL: %@", buf, 0xCu);
      }

      v18 = +[NSURLSession sharedSession];
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_100002FC0;
      v23 = &unk_1000145D0;
      v25 = *(a1 + 40);
      v24 = v4;
      v19 = [v18 dataTaskWithRequest:v12 completionHandler:&v20];

      [v19 resume];
    }
  }
}

void sub_100002FC0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) bundleID];
    (*(v9 + 16))(v9, v10, v8);
  }

  else
  {
    if (v18)
    {
      v11 = NSTemporaryDirectory();
      v12 = [*(a1 + 32) ipaLink];
      v13 = [v12 lastPathComponent];
      v10 = [v11 stringByAppendingPathComponent:v13];

      if ([v18 writeToFile:v10 atomically:1])
      {
        v14 = [NSURL URLWithString:v10];
        [*(a1 + 32) setDownloadedURL:v14];
      }

      v15 = *(a1 + 40);
      v16 = [*(a1 + 32) bundleID];
      (*(v15 + 16))(v15, v16, 0);
    }

    else
    {
      v17 = *(a1 + 40);
      v10 = [*(a1 + 32) bundleID];
      v16 = [NSError cps_errorWithCode:4];
      (*(v17 + 16))(v17, v10, v16);
    }
  }
}

void sub_100003370(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _appForBundleID:*(a1 + 32) createIfNeeded:1];
    v5 = [v4 downloadedURL];
    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = v5;
    v7 = +[NSFileManager defaultManager];
    v8 = [v4 downloadedURL];
    v9 = [v8 path];
    v10 = [v7 fileExistsAtPath:v9];

    if (v10)
    {
      v11 = v3[5];
      v12 = [v4 bundleID];
      v13 = [v4 downloadedURL];
      v14 = [v13 path];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000035FC;
      v26[3] = &unk_100014648;
      v28 = *(a1 + 48);
      v27 = v4;
      [v11 installDownloadedAppWithBundleID:v12 localFilePath:v14 completionHandler:v26];

      v15 = v28;
    }

    else
    {
LABEL_5:
      v16 = [v4 ipaLink];

      if (!v16)
      {
        v18 = *(a1 + 48);
        v19 = *(a1 + 32);
        v20 = [NSError cps_errorWithCode:4];
        (*(v18 + 16))(v18, v19, v20);

        goto LABEL_9;
      }

      v17 = *(a1 + 32);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000036B4;
      v21[3] = &unk_100014670;
      v21[4] = v3;
      v22 = v17;
      v23 = *(a1 + 40);
      v25 = *(a1 + 48);
      v24 = v4;
      [v3 downloadAppWithBundleID:v22 completionHandler:v21];

      v15 = v22;
    }

LABEL_9:
  }
}

void sub_1000035FC(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) bundleID];
  v5 = v4;
  if (v7)
  {
    v6 = [NSError cps_errorWithCode:6 underlyingError:v7];
    (*(v3 + 16))(v3, v5, v6);
  }

  else
  {
    (*(v3 + 16))(v3, v4, 0);
  }
}

void sub_1000036B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v4 = *(a1 + 64);
    v5 = [*(a1 + 56) bundleID];
    (*(v4 + 16))(v4, v5, v6);
  }

  else
  {
    [*(a1 + 32) _installAppWithBundleID:*(a1 + 40) applicationIconFileURL:*(a1 + 48) completionHandler:*(a1 + 64)];
  }
}

void sub_100003A44(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = sub_100004064();
  if (os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ABRMetaData", "End Fetching ABR metadata", v10, 2u);
  }

  v8 = *(a1 + 32);
  v9 = [v6 clipURL];

  (*(v8 + 16))(v8, v9, v5);
}

void sub_100003C58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004064();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ABRMetaData", "End Fetching ABR metadata", buf, 2u);
  }

  if (v5)
  {
    v8 = sub_100004064();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AppMetaData", "Start Fetching App metadata", buf, 2u);
    }

    v9 = *(*(a1 + 32) + 8);
    v10 = [v5 clipBundleID];
    v11 = *(a1 + 40);
    v12 = *(a1 + 64);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003E28;
    v13[3] = &unk_1000146E8;
    v14 = v5;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    [v9 lookUpClipMetadataByBundleID:v10 sourceBundleID:v11 downloadIconIfNeeded:v12 skipCaching:0 completionHandler:v13];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100003E28(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = sub_100004064();
  if (os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AppMetaData", "End Fetching App metadata", v9, 2u);
  }

  [*(a1 + 32) setClipRequestURL:*(a1 + 40)];
  [*(a1 + 32) _updateWithAMSMetadata:v6];

  v8 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
}

uint64_t sub_100004064()
{
  if (qword_100019D90 != -1)
  {
    sub_1000040E0();
  }

  return qword_100019D88;
}

void sub_10000409C(id a1)
{
  qword_100019D88 = os_log_create("com.apple.ClipServices.clipserviced", "ClipServicesDaemon");

  _objc_release_x1();
}

void sub_1000043F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 - 112));
  _Unwind_Resume(a1);
}

void sub_100004448(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CPSDaemonProtocol];
  v2 = qword_100019D98;
  qword_100019D98 = v1;

  v3 = qword_100019D98;
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v4 = [NSArray arrayWithObjects:v10 count:2];
  v5 = [NSSet setWithArray:v4];
  [v3 setClasses:v5 forSelector:"fetchClipMetadataWithURL:reply:" argumentIndex:1 ofReply:1];

  v6 = qword_100019D98;
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v7 = [NSArray arrayWithObjects:v9 count:2];
  v8 = [NSSet setWithArray:v7];
  [v6 setClasses:v8 forSelector:"uninstallClipsWithBundleIDs:reply:" argumentIndex:1 ofReply:0];
}

void sub_1000045D0(uint64_t a1)
{
  v2 = sub_100004064();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = 134218242;
    v7 = WeakRetained;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): connection interrupted: %@", &v6, 0x16u);
  }
}

void sub_1000046AC(uint64_t a1)
{
  v2 = sub_100004064();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = objc_loadWeakRetained((a1 + 40));
    v7 = 134218242;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): connection invalidated: %@", &v7, 0x16u);
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _remoteClientDisconnected];
}

void sub_100004990(void *a1, uint64_t a2, void *a3)
{
  v4 = [a3 clipBundleID];
  v5 = sub_100004064();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = 134218499;
    v9 = v6;
    v10 = 2117;
    v11 = v7;
    v12 = 2113;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "RemoteClient (%p): isClipURL: %{sensitive}@ resolvedBundleID: %{private}@", &v8, 0x20u);
  }

  (*(a1[6] + 16))(a1[6], [v4 length] != 0);
}

void sub_100004B94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004064();
  if (os_signpost_enabled(v4))
  {
    v5 = v4;
    v6 = [v3 logID];
    *buf = 138543618;
    v15 = v6;
    v16 = 2082;
    v17 = "[begin] prewarmClipWithURL";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ClipPrewarm", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004D30;
  v8[3] = &unk_1000147F0;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v12 = *(a1 + 56);
  v10 = *(a1 + 40);
  v13 = *(a1 + 64);
  v11 = *(a1 + 48);
  v7 = v3;
  [v7 fetchMetadataWithCompletion:v8];
}

void sub_100004D30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clipBundleID];
  if (v4)
  {
    [*(a1 + 40) fetchHeroImage];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000504C;
    v22[3] = &unk_100014580;
    v23 = *(a1 + 40);
    v5 = objc_retainBlock(v22);
    if ([v3 clipIncompatibleWithCurrentDevice] & 1) != 0 || (objc_msgSend(v3, "deviceCapabilitiesDontMatch"))
    {
      (v5[2])(v5);
      v6 = *(a1 + 64);
      v7 = [NSError cps_errorWithCode:11];
      (*(v6 + 16))(v6, v7);

LABEL_20:
      v8 = v23;
      goto LABEL_21;
    }

    if (![v3 hasFullAppInstalledOnSystem])
    {
      if (+[CPSClipURL usesDemoMetadata])
      {
        v10 = [*(*(a1 + 32) + 40) appLinkResolver];
        [v10 saveLinkWithURL:*(a1 + 48) metadata:v3];
      }

      v11 = [*(a1 + 40) configuration];
      v12 = [v11 isInvokedByPhysicalCode] ? objc_msgSend(v3, "canUpdateOnPhysicalInovcation") : 0;

      if (*(a1 + 72) == 1)
      {
        v13 = [v3 invocationPolicy];
        if ([v13 isEligible])
        {
          v14 = [v3 fullAppOnly] | v12;

          if ((v14 & 1) == 0)
          {
            v15 = [*(a1 + 56) clipInstaller];
            v16 = [v3 clipBundleID];
            v17 = *(a1 + 40);
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_100005130;
            v18[3] = &unk_1000147C8;
            v20 = v5;
            v19 = *(a1 + 40);
            v21 = *(a1 + 64);
            [v15 prewarmClipWithBundleID:v16 session:v17 completion:v18];

            goto LABEL_20;
          }
        }

        else
        {
        }
      }
    }

    (v5[2])(v5);
    (*(*(a1 + 64) + 16))();
    goto LABEL_20;
  }

  v8 = [NSError cps_errorWithCode:2];
  v9 = sub_100004064();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10000923C(a1);
  }

  (*(*(a1 + 64) + 16))();
LABEL_21:
}

void sub_10000504C(uint64_t a1)
{
  v2 = sub_100004064();
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 logID];
    v6 = 138543618;
    v7 = v5;
    v8 = 2082;
    v9 = "[end] prewarmClipWithURL";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ClipPrewarm", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", &v6, 0x16u);
  }
}

void sub_100005130(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  if (v3)
  {
    v4 = sub_100004064();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000092BC(a1, v4);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000528C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v4 = [*(a1 + 32) clipInstaller];
    [v4 cancelPrewarmForBundleID:v6 completion:*(a1 + 40)];
  }

  else
  {
    v5 = *(a1 + 40);
    v4 = [NSError cps_errorWithCode:2];
    (*(v5 + 16))(v5, v4);
  }
}

void sub_1000057D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 firstObject];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_100005A60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 configuration];
  v5 = [v4 launchReason];

  v6 = [v3 metadata];
  v7 = [v6 invocationPolicy];
  if ([v7 reason] != 14 || (objc_msgSend(v5, "isEqualToString:", CPSSessionLaunchReasonAppClipCode) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", CPSSessionLaunchReasonQR) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", CPSSessionLaunchReasonNFC) & 1) != 0)
  {
  }

  else
  {
    v24 = [v5 isEqualToString:CPSSessionLaunchReasonMessages];

    if ((v24 & 1) == 0)
    {
      v25 = *(a1 + 48);
      v26 = [NSError cps_errorWithCode:11];
      (*(v25 + 16))(v25, v26);

      goto LABEL_13;
    }
  }

  v8 = [*(a1 + 32) _canSkipShowingAppClipCardOnLaunchForSession:v3];
  v9 = sub_100004064();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = v9;
      v14 = [v3 configuration];
      v15 = [v14 launchReason];
      v27 = 134218755;
      v28 = v11;
      v29 = 2117;
      v30 = v12;
      v31 = 2112;
      v32 = v15;
      v33 = 2048;
      v34 = v3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): Opening clip directly with URL (%{sensitive}@) with launch reason (%@), session (%p)", &v27, 0x2Au);
    }

    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = [v3 launchOptions];
    [v16 _openClipDirectlyWithURL:v17 launchOptions:v18 reply:*(a1 + 48)];
  }

  else
  {
    if (v10)
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v21 = v9;
      v22 = [v3 configuration];
      v23 = [v22 launchReason];
      v27 = 134218755;
      v28 = v19;
      v29 = 2117;
      v30 = v20;
      v31 = 2112;
      v32 = v23;
      v33 = 2048;
      v34 = v3;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): Opening clip with invocation UI for URL (%{sensitive}@) with launch reason (%@), session (%p)", &v27, 0x2Au);
    }

    [*(a1 + 32) _openClipWithInvocationUIWithURL:*(a1 + 40) reply:*(a1 + 48)];
  }

LABEL_13:
}

void sub_100005E18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100004064();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000093EC(a1, v4, v3);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100005F6C(void *a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v4 = sub_100004064();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = 134218243;
      v8 = v5;
      v9 = 2117;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): user did not open clip for url: %{sensitive}@", &v7, 0x16u);
    }

    v3 = [NSError cps_errorWithCode:8];
  }

  (*(a1[6] + 16))();
}

void sub_1000064D0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 metadata];
  v66 = 0;
  v65 = 0;
  v8 = a1[4];
  v9 = [a1[5] predefinedBundleID];
  v10 = [v8 _validateIngestedBundleID:v9 forSession:v5 appInstalled:&v66 + 1 clipRequestsLocationConfirmation:&v66 clipRequestsNotification:&v65];

  if (v10 && ([v7 clipBundleID], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", v10), v11, (v12 & 1) == 0))
  {
    if (v7)
    {
      v14 = sub_100004064();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = a1[4];
        *buf = 134217984;
        v68 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): client ingested bundleID replaced the existing clip bundleID", buf, 0xCu);
      }

      [v7 setClipBundleID:v10];
    }

    else
    {
      v16 = [CPSClipMetadata alloc];
      v72[0] = a1[6];
      v71[0] = CPSClipMetadataKeyClipTargetURL;
      v71[1] = CPSClipMetadataKeyClipURL;
      v17 = [NSURL cps_preIngestedURLWithBundleIdentifier:v10];
      v72[1] = v17;
      v72[2] = v10;
      v71[2] = CPSClipMetadataKeyClipBundleID;
      v71[3] = CPSClipMetadataKeyClipRequestsNotificationPermission;
      v18 = [NSNumber numberWithBool:v65];
      v72[3] = v18;
      v71[4] = CPSClipMetadataKeyClipRequestsLocationConfirmationPermission;
      v19 = [NSNumber numberWithBool:v66];
      v72[4] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:5];
      v7 = [v16 initWithUncheckedDictionary:v20];

      [v5 setPreloadedMetadata:v7];
    }

    v21 = v10;

    v6 = v21;
  }

  else
  {
    buf[0] = 0;
    v13 = [v7 hasUpToDateVersionInstalledOnSystemIsPlaceholder:buf];
    HIBYTE(v66) = v13 & (buf[0] ^ 1);
  }

  v22 = [a1[4] _deducedInstalledFullAppBundleIDForSession:v5];
  if (v22)
  {
    v23 = sub_100004064();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = a1[4];
      *buf = 134218243;
      v68 = v24;
      v69 = 2117;
      v70 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): Obtained deduced full app bundleID: %{sensitive}@", buf, 0x16u);
    }

    v25 = [v5 configuration];
    v26 = [v25 fallbackClipBundleID];

    [v7 hasFullAppInstalledOnSystem];
    v6 = v26;
    goto LABEL_15;
  }

  if ([v7 hasFullAppInstalledOnSystem])
  {
LABEL_15:
    v27 = +[CPSWebClipStore sharedStore];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100006B5C;
    v56[3] = &unk_100014958;
    v57 = v5;
    v58 = a1[5];
    v59 = v7;
    v28 = v22;
    v29 = a1[4];
    v60 = v28;
    v61 = v29;
    v62 = a1[6];
    v64 = a1[8];
    v6 = v6;
    v63 = v6;
    [v27 createOrUpdateExistingWebClipWithMetadata:v59 comletionHandler:v56];

    v30 = v57;
    goto LABEL_16;
  }

  if (v6)
  {
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100006F08;
    v46[3] = &unk_1000149D0;
    v47 = v5;
    v48 = v7;
    v31 = a1[5];
    v32 = a1[4];
    v49 = v31;
    v50 = v32;
    v6 = v6;
    v51 = v6;
    v55 = HIBYTE(v66);
    v52 = a1[6];
    v54 = a1[8];
    v53 = a1[7];
    v33 = objc_retainBlock(v46);
    if ((+[CPSUtilities deviceIsLocked]& 1) != 0)
    {
      v34 = objc_alloc_init(SBSLockScreenService);
      v35 = sub_100004064();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = a1[4];
        *buf = 134218243;
        v68 = v36;
        v69 = 2113;
        v70 = v6;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): attempting device unlock for %{private}@", buf, 0x16u);
      }

      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1000075AC;
      v40[3] = &unk_100014A20;
      v41 = v34;
      v45 = HIBYTE(v66);
      v37 = v6;
      v38 = a1[4];
      v42 = v37;
      v43 = v38;
      v44 = v33;
      v39 = v34;
      [v39 requestPasscodeUnlockUIWithOptions:0 withCompletion:v40];
    }

    else
    {
      (v33[2])(v33);
    }

    v30 = v47;
  }

  else
  {
    v30 = [NSError cps_errorWithCode:2];
    [RemoteClient _didEndOpenAppForURL:a1[6] adamID:0 error:v30 completionHandler:a1[8]];
  }

LABEL_16:
}

void sub_100006B5C(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) updateClipDataForEntryPointWithWebClip:v3 launchOptions:*(a1 + 40)];
  v4 = objc_alloc_init(CPSClipEventsReporter);
  [v4 logClipLaunchEventForSession:*(a1 + 32)];
  v5 = [*(a1 + 48) fullAppBundleID];
  v6 = v5;
  if (!v5)
  {
    v6 = *(a1 + 56);
  }

  v7 = v6;

  v8 = sub_100004064();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 64);
    v10 = *(a1 + 48);
    v11 = v8;
    v12 = [v10 clipLaunchURL];
    v13 = v12;
    if (!v12)
    {
      v13 = *(a1 + 72);
    }

    v14 = *(a1 + 32);
    *buf = 134218755;
    v27 = v9;
    v28 = 2117;
    v29 = v13;
    v30 = 2117;
    v31 = v7;
    v32 = 2048;
    v33 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): Opening URL (%{sensitive}@) in full app (%{sensitive}@), session (%p)", buf, 0x2Au);
  }

  v15 = [*(a1 + 48) clipLaunchURL];
  v16 = v15;
  if (!v15)
  {
    v16 = *(a1 + 72);
  }

  v17 = [*(a1 + 32) configuration];
  v18 = [v17 originIsControlCenter];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100006E4C;
  v24[3] = &unk_100014908;
  v25 = *(a1 + 88);
  [CPSUtilities openURL:v16 inAppWithBundleIdentifier:v7 promptForUnlock:1 originIsControlCenter:v18 completionHandler:v24];

  if (([*(a1 + 48) isPoweredByThirdParty] & 1) == 0)
  {
    v19 = +[CPSWebClipStore sharedStore];
    v20 = [v3 identifier];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100006E5C;
    v22[3] = &unk_100014930;
    v22[4] = *(a1 + 64);
    v23 = v7;
    [v19 removeWebClipWithIdentifier:v20 completionHandler:v22];
  }

  if (*(a1 + 80))
  {
    v21 = *(a1 + 80);
  }

  else
  {
    v21 = v7;
  }

  [*(a1 + 64) _logOpenAppClipEventForBundleID:v21 session:*(a1 + 32) didOpenFullApp:1 requiresAppClipInstall:0];
}

void sub_100006E5C(uint64_t a1)
{
  v2 = sub_100004064();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 134218243;
    v6 = v3;
    v7 = 2113;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): remove an web clip since the app clip is not powered-by, and its parent app (%{private}@) is installed.", &v5, 0x16u);
  }
}

void sub_100006F08(uint64_t a1)
{
  v2 = sub_100004064();
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 logID];
    *buf = 138543618;
    v22 = v5;
    v23 = 2082;
    v24 = "[begin] installing clip";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "InstallClipAction", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
  }

  [*(a1 + 32) setOpeningWebClipFromDaemon:1];
  v6 = +[CPSWebClipStore sharedStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007100;
  v11[3] = &unk_1000149A8;
  v7 = *(a1 + 40);
  v12 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v20 = *(a1 + 96);
  v16 = *(a1 + 40);
  v17 = *(a1 + 72);
  v19 = *(a1 + 88);
  v18 = *(a1 + 80);
  [v6 createOrUpdateExistingWebClipWithMetadata:v7 comletionHandler:v11];
}

void sub_100007100(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 32);
  [*(a1 + 32) updateClipDataForEntryPointWithWebClip:v3 launchOptions:*(a1 + 40)];
  if (([*(a1 + 40) skipsLaunching] & 1) == 0)
  {
    v5 = [v3 identifier];
    v6 = sub_100004064();
    v7 = v6;
    if (v5)
    {
      if (os_signpost_enabled(v6))
      {
        v8 = *v4;
        v9 = v7;
        v10 = [v8 logID];
        *buf = 138543618;
        v31 = v10;
        v32 = 2082;
        v33 = "[begin] opening clip";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "OpenClipAction", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
      }

      v11 = [*(a1 + 32) configuration];
      v12 = [v11 originIsControlCenter];

      [SBSWebClipService launchWebClipWithIdentifier:v5 origin:v12];
      [*(a1 + 48) _logOpenAppClipEventForBundleID:*(a1 + 56) session:*(a1 + 32) didOpenFullApp:0 requiresAppClipInstall:(*(a1 + 96) & 1) == 0];
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000094B8(a1, (a1 + 32));
    }
  }

  v13 = [*v4 configuration];
  if ([v13 isInvokedByPhysicalCode])
  {
    v14 = [*(a1 + 64) canUpdateOnPhysicalInovcation];
  }

  else
  {
    v14 = 0;
  }

  if ((*(a1 + 96) & 1) != 0 || v14)
  {
    v18 = sub_100004064();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 48);
      v20 = *(a1 + 72);
      v21 = *(a1 + 32);
      *buf = 134218499;
      v31 = v19;
      v32 = 2117;
      v33 = v20;
      v34 = 2048;
      v35 = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): Skipping clip install for URL (%{sensitive}@) since bundle already installed or update disallowed, session (%p)", buf, 0x20u);
    }

    [RemoteClient _didEndOpenAppForURL:*(a1 + 72) adamID:0 error:0 completionHandler:*(a1 + 88)];
    v22 = sub_100004064();
    if (os_signpost_enabled(v22))
    {
      v23 = *v4;
      v24 = v22;
      v25 = [v23 logID];
      *buf = 138543618;
      v31 = v25;
      v32 = 2082;
      v33 = "[end] installing clip";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "InstallClipAction", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
    }
  }

  else
  {
    v15 = [*(a1 + 80) clipInstaller];
    v16 = *(a1 + 56);
    v17 = *(a1 + 32);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000074AC;
    v26[3] = &unk_100014980;
    v27 = *(a1 + 72);
    v29 = *(a1 + 88);
    v28 = *(a1 + 32);
    [v15 installClipWithBundleID:v16 session:v17 completion:v26];
  }
}

void sub_1000074AC(void *a1, uint64_t a2)
{
  [RemoteClient _didEndOpenAppForURL:a1[4] adamID:0 error:a2 completionHandler:a1[6]];
  v3 = sub_100004064();
  if (os_signpost_enabled(v3))
  {
    v4 = a1[5];
    v5 = v3;
    v6 = [v4 logID];
    v7 = 138543618;
    v8 = v6;
    v9 = 2082;
    v10 = "[end] installing clip";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "InstallClipAction", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", &v7, 0x16u);
  }
}

void sub_1000075AC(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007694;
  block[3] = &unk_1000149F8;
  v4 = *(a1 + 32);
  v12 = a2;
  v13 = *(a1 + 64);
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v6 = *(&v8 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v11 = v8;
  v10 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100007694(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  if (*(a1 + 64))
  {
    v2 = sub_100004064();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v3 = *(a1 + 48);
      *buf = 134218243;
      v11 = v3;
      v12 = 2113;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): device unlocked, begin installing clip for %{private}@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else if ((*(a1 + 65) & 1) == 0)
  {
    v5 = +[CPSSessionManager sharedManager];
    v6 = [v5 clipInstaller];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100007814;
    v8[3] = &unk_100014930;
    v7 = *(a1 + 40);
    v9 = vextq_s8(v7, v7, 8uLL);
    [v6 cancelPrewarmForBundleID:v7.i64[0] completion:v8];
  }
}

void sub_100007814(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004064();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = v4;
    v8 = [v3 cps_privacyPreservingDescription];
    v9 = 134218499;
    v10 = v5;
    v11 = 2113;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): unlock failed, cancelled prewarm for %{private}@, error: %{public}@", &v9, 0x20u);
  }
}

void sub_100008194(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 32);

    [a2 addRemoteObjectProxy:v3];
  }

  else
  {
    v4 = sub_100004064();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000096A0(a1);
    }

    v5 = [*(a1 + 40) connection];
    v6 = v5;
    if (v5)
    {
      [v5 auditToken];
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v7 = [LSBundleProxy bundleProxyWithAuditToken:&v12 error:0];

    v8 = [v7 bundleIdentifier];
    if ([v8 isEqualToString:@"com.apple.ClipViewService"])
    {
      v9 = sub_100004064();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100009714();
      }

      v10 = *(*(a1 + 40) + 32);
      v11 = [NSError cps_errorWithCode:10, v12, v13];
      [v10 didFinishLoadingWithError:v11];
    }
  }
}

void sub_1000083B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 32);

    [a2 removeRemoteObjectProxy:v3];
  }

  else
  {
    v4 = sub_100004064();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100009754(a1);
    }
  }
}

void sub_1000084F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (v3)
  {
    v5 = [v3 userNotificationGranted];
    v6 = [v5 BOOLValue];
    [v8 lastProxCardLaunchTime];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    (*(v4 + 16))(v4, v6, v7, 0);
  }

  else
  {
    v5 = [NSError cps_errorWithCode:10];
    (*(v4 + 16))(v4, 0, 0, v5);
  }
}

void sub_1000086E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[NSDate now];
    [v3 setLastActivatedTime:v4];

    v5 = +[CPSWebClipStore sharedStore];
    [v5 saveWebClip:v3 completionHandler:0];

    v6 = +[CPSSessionManager sharedManager];
    v7 = [v3 pageURL];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100008860;
    v10[3] = &unk_100014AC0;
    v13 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = v3;
    v14 = *(a1 + 48);
    [v6 getSessionWithURL:v7 completion:v10];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [NSError cps_errorWithCode:2];
    (*(v8 + 16))(v8, v9);
  }
}

void sub_100008860(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100004064();
    if (os_signpost_enabled(v4))
    {
      v5 = v4;
      v6 = [v3 logID];
      v23 = 138543618;
      v24 = v6;
      v25 = 2082;
      v26 = "[end] opening clip enableTelemetry=YES ";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "OpenClipAction", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", &v23, 0x16u);
    }

    if (([v3 isOpeningWebClipFromDaemon] & 1) == 0)
    {
      if ([*(a1 + 32) length])
      {
        v7 = *(a1 + 32);
      }

      else
      {
        v7 = @"com.apple.springboard";
      }

      v10 = [v3 configuration];
      [v10 setReferrerBundleID:v7];

      v11 = +[CPSAnalyticsLogger sharedLogger];
      v12 = [*(a1 + 40) applicationBundleIdentifier];
      v13 = [v3 configuration];
      v14 = [v13 analyticsLaunchReason];
      v15 = [v3 url];
      v16 = [v15 cps_fallbackBundleIdentifier];
      [v11 recordDidOpenAppClipWithBundleID:v12 launchReason:v14 didShowCard:0 didOpenFullApp:0 didInstallAppClip:0 isOutOfBoxURL:v16 != 0];
    }

    [v3 setOpeningWebClipFromDaemon:0];
    v17 = [v3 metadata];
    v18 = [v17 webClipID];

    if (!v18)
    {
      v19 = [*(a1 + 40) bundleIdentifier];
      v20 = [v3 metadata];
      [v20 setWebClipID:v19];
    }

    if ([v3 registeredForTest])
    {
      [v3 didCompleteTestSessionAtTime:*(a1 + 56)];
      v21 = +[CPSSessionManager sharedManager];
      v22 = [*(a1 + 40) pageURL];
      [v21 clearSessionWithURL:v22];
    }

    else
    {
      v21 = +[CPSClipEventsReporter reporter];
      [v21 logClipLaunchEventForSession:v3];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = [NSError cps_errorWithCode:2];
    (*(v8 + 16))(v8, v9);
  }
}

void sub_100008C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [CPSClipLaunchOptions optionsForAppClipRecord:a2];
    (*(v2 + 16))(v2, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }
}

uint64_t sub_100008DF0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 checkAndConsumeShowsAppAttributionBannerLaunchOption];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_1000090D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = sub_100004064();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000097C8(a1, v7, v5);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000091CC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10000923C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100009208();
  sub_1000091EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000092BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 logID];
  sub_1000091CC(&_mh_execute_header, v5, v6, "Fail to prewarm clip download. ID = [%{public}@] Error: %{public}@", v7, v8, v9, v10, 2u);
}

void sub_1000093EC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [a3 cps_privacyPreservingDescription];
  v8 = 134218499;
  v9 = v4;
  v10 = 2117;
  v11 = v5;
  v12 = 2114;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "RemoteClient (%p): unable to open clip url %{sensitive}@ without invocation UI: %{public}@", &v8, 0x20u);
}

void sub_1000094B8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *a2;
  sub_100009208();
  v9 = 2113;
  v10 = v5;
  v11 = 2048;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "RemoteClient (%p): Could not launch clip with bundleId: %{private}@ because there is no corresponding web clip identifier, session (%p)", v8, 0x20u);
}

void sub_100009550(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 cps_privacyPreservingDescription];
  sub_1000091F8();
  sub_1000091CC(&_mh_execute_header, v6, v7, "RemoteClient (%p): error in downloading clip: %{public}@", v8, v9, v10, v11, 2u);
}

void sub_1000095F8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 cps_privacyPreservingDescription];
  sub_1000091F8();
  sub_1000091CC(&_mh_execute_header, v6, v7, "RemoteClient (%p): error in opening clip: %{public}@", v8, v9, v10, v11, 2u);
}

void sub_1000096A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009208();
  sub_1000091EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100009754(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009208();
  sub_1000091EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000097C8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cps_privacyPreservingDescription];
  v7 = 134218242;
  v8 = v4;
  sub_1000091F8();
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "RemoteClient (%p): error fetching AMP diagnostics: %{public}@", &v7, 0x16u);
}

void sub_1000098C4(id a1)
{
  v3 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/clipserviced/"];
  v1 = [NSURL fileURLWithPath:v3 isDirectory:1];
  v2 = qword_100019DA8;
  qword_100019DA8 = v1;
}

void sub_1000099E0(uint64_t a1)
{
  v3 = [*(a1 + 32) daemonLibraryDirectoryURL];
  v1 = [v3 URLByAppendingPathComponent:@"DomainHashFiles" isDirectory:1];
  v2 = qword_100019DB8;
  qword_100019DB8 = v1;
}

void sub_100009AE4(uint64_t a1)
{
  v3 = [*(a1 + 32) daemonLibraryDirectoryURL];
  v1 = [v3 URLByAppendingPathComponent:@"URLLookup.db" isDirectory:1];
  v2 = qword_100019DC8;
  qword_100019DC8 = v1;
}

void sub_100009D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 - 88));
  _Unwind_Resume(a1);
}

void sub_100009D68(id a1)
{
  qword_100019DD8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CPSDaemonProtocolNonEntitled];

  _objc_release_x1();
}

void sub_100009DB0(uint64_t a1)
{
  v2 = sub_100004064();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = 134218242;
    v7 = WeakRetained;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "RemoteClientNotEntitled %p: connection interrupted: %@", &v6, 0x16u);
  }
}

void sub_100009E8C(uint64_t a1)
{
  v2 = sub_100004064();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = 134218242;
    v7 = WeakRetained;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "RemoteClientNotEntitled %p: connection invalidated: %@", &v6, 0x16u);
  }
}

void sub_10000A1DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 applicationBundleIdentifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *(a1 + 32)), v5, (v6 & 1) != 0))
  {
    v7 = +[CPSClipDataSQLiteStore defaultStore];
    v8 = *(a1 + 32);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000A3C4;
    v16[3] = &unk_100014C88;
    v17 = v8;
    v9 = *(a1 + 64);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v22 = v9;
    v18 = v10;
    v19 = v11;
    v20 = v4;
    v21 = *(a1 + 56);
    [v7 getAppClipRecordWithBundleID:v17 completion:v16];

    v12 = v17;
  }

  else
  {
    v13 = sub_100004064();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 138477827;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "The app clip requesting location confirmation or its url is not available. bundleID: %{private}@", buf, 0xCu);
    }

    v15 = *(a1 + 64);
    v12 = [NSError cps_errorWithCode:10];
    (*(v15 + 16))(v15, 0, v12);
  }
}

void sub_10000A3C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v10 = sub_100004064();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138477827;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "The app clip requesting location confirmation was not launched by clipserviced. bundleID: %{private}@", buf, 0xCu);
    }

    v12 = *(a1 + 72);
    v13 = 10;
    goto LABEL_10;
  }

  if (![v3 locationConfirmationState])
  {
    v14 = sub_100004064();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 138477827;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "The app clip was not launch by QR, NFC or app clip code; or the app clip has request location confirmation before. bundleID: %{private}@", buf, 0xCu);
    }

    v12 = *(a1 + 72);
    v13 = 15;
LABEL_10:
    v9 = [NSError cps_errorWithCode:v13];
    (*(v12 + 16))(v12, 0, v9);
    goto LABEL_11;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) applicationBundleIdentifier];
  v8 = [*(a1 + 64) localizedName];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000A60C;
  v16[3] = &unk_100014C60;
  v17 = v4;
  v20 = *(a1 + 72);
  v18 = *(a1 + 32);
  v19 = *(a1 + 48);
  [v5 _requestLocationConsentWithRegion:v6 clipBundleID:v7 appName:v8 record:v17 completion:v16];

  v9 = v17;
LABEL_11:
}

void sub_10000A60C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) locationConfirmationGranted];
    v4 = [v3 BOOLValue];

    if (v4)
    {
      if ([*(a1 + 32) locationConfirmationState])
      {
        v5 = +[CPSLocationProvider sharedProvider];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10000A938;
        v16[3] = &unk_100014C38;
        v6 = *(a1 + 48);
        v17 = *(a1 + 40);
        v18 = *(a1 + 32);
        v19 = *(a1 + 56);
        [v5 confirmCurrentLocationInRegion:v6 completion:v16];

        v7 = v17;
        goto LABEL_14;
      }

      v11 = sub_100004064();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        *buf = 138477827;
        v23 = v14;
        v13 = "This app clip has request location confirmation since launched. bundleID: %{private}@";
        goto LABEL_12;
      }
    }

    else
    {
      v11 = sub_100004064();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        *buf = 138477827;
        v23 = v12;
        v13 = "User has denied location confirmation for bundleID: %{private}@";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
      }
    }

    v15 = *(a1 + 56);
    v7 = [NSError cps_errorWithCode:15];
    (*(v15 + 16))(v15, 0, v7);
    goto LABEL_14;
  }

  v8 = sub_100004064();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User has denied location confirmation on the consent dialog.", buf, 2u);
  }

  [*(a1 + 32) setLocationConfirmationState:0];
  v9 = +[CPSClipDataSQLiteStore defaultStore];
  v10 = *(a1 + 32);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000A8CC;
  v20[3] = &unk_100014BE8;
  v21 = *(a1 + 56);
  [v9 saveAppClipRecord:v10 completion:v20];

  v7 = v21;
LABEL_14:
}

void sub_10000A8CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError cps_errorWithCode:15];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10000A938(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = sub_100004064();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138478083;
    v17 = v7;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Location confirmation request finished. bundleID: %{private}@ error: %@", buf, 0x16u);
  }

  if ([v5 code] != 14)
  {
    [*(a1 + 40) setLocationConfirmationState:0];
  }

  v8 = +[CPSClipDataSQLiteStore defaultStore];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000AAB4;
  v12[3] = &unk_100014C10;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v15 = a2;
  v13 = v5;
  v14 = v10;
  v11 = v5;
  [v8 saveAppClipRecord:v9 completion:v12];
}

void sub_10000AC50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100004064();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cannot get user's current location. Error: %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v8 = [[CPSLocationConfirmationRequest alloc] initWithRequestState:objc_msgSend(*(a1 + 32) clipBundleID:"locationConfirmationState") applicationName:*(a1 + 40) deviceLocation:*(a1 + 48) expectedRegion:{v5, *(a1 + 56)}];
    v9 = +[CPSOpenClipCardPresenter sharedPresenter];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000ADEC;
    v10[3] = &unk_100014CD8;
    v11 = *(a1 + 64);
    [v9 showLocationConfirmationSheetWithRequest:v8 completion:v10];
  }
}

uint64_t sub_10000ADEC(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

LABEL_7:
    v3 = +[NSUserDefaults cps_clipServicesDefaults];
    [v3 setCps_didShowFirstTimeLocationConsent:1];
  }

  v4 = *(*(v2 + 32) + 16);

  return v4();
}

void sub_10000B43C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error when try to find the app clip requesting location confirmation: %@", &v2, 0xCu);
}

void sub_10000B4C8(void *a1, void *a2)
{
  v3 = a1;
  v4[0] = 67109120;
  v4[1] = [a2 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "ServerController: Connection rejected (disabled) for pid %d", v4, 8u);
}