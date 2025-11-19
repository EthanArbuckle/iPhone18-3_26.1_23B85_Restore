uint64_t sub_100001D58(int a1)
{
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  LODWORD(v4) = 0;
  *v34 = 0xE00000001;
  v35 = 1;
  v36 = a1;
  v2 = 648;
  if (sysctl(v34, 4u, v3, &v2, 0, 0))
  {
    sub_10002F73C();
  }

  return (v4 >> 11) & 1;
}

BOOL sub_100001E3C(_OWORD *a1, unsigned int a2)
{
  v10 = 0;
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v4 = [LSBundleProxy bundleProxyWithAuditToken:v9 error:&v10];
  if (v10)
  {
    v5 = DRLogTarget();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to fetch LSBundleProxy for destination process audit_token during drop session.", v9, 2u);
    }
  }

  if (v4)
  {
    v6 = [v4 sdkVersion];
    v7 = _UIApplicationPackedDeploymentVersionFromString() >= a2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_100001F18(void *a1)
{
  v1 = [a1 valueForEntitlement:@"com.apple.UIKit.dragging-system-connection"];
  v2 = [v1 isEqual:&__kCFBooleanTrue];

  return v2;
}

__CFString *sub_100001F60(void *a1)
{
  v1 = [a1 screen];
  v2 = [v1 displayConfiguration];

  v3 = [v2 hardwareIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = off_100062738;
  }

  v6 = v5;

  return v5;
}

uint64_t sub_100001FD4(void *a1)
{
  if (![a1 _isEmbeddedScreen])
  {
    return 1;
  }

  v1 = +[DROrientationObserver sharedObserver];
  v2 = [v1 interfaceOrientation];

  return v2;
}

double sub_100002024(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  if (v5 != v6)
  {
    v7 = [v5 displayIdentity];
    if ([v7 isContinuityDisplay])
    {

LABEL_5:
      a3 = kSBSCGPointInvalid[0];
      v10 = kSBSCGPointInvalid[1];
      goto LABEL_15;
    }

    v8 = [v6 displayIdentity];
    v9 = [v8 isContinuityDisplay];

    if (v9)
    {
      goto LABEL_5;
    }

    v11 = v5;
    v12 = sub_100001FD4(v11);
    v13 = [v11 displayConfiguration];

    [v13 bounds];
    if (v12 != 1)
    {
      _UIConvertRectFromOrientationToOrientation();
    }

    v14 = v6;
    v15 = sub_100001FD4(v14);
    v16 = [v14 displayConfiguration];

    [v16 bounds];
    if (v15 != 1)
    {
      _UIConvertRectFromOrientationToOrientation();
    }

    v17 = [v11 displayConfiguration];
    v18 = [v14 displayConfiguration];
    if (sub_100001FD4(v11) != 1)
    {
      [v11 bounds];
      _UIConvertPointFromOrientationToOrientation();
    }

    SBSConvertPointFromDisplayToNeighboringDisplay();
    a3 = v19;
    if (sub_100001FD4(v14) != 1)
    {
      [v14 bounds];
      _UIConvertPointFromOrientationToOrientation();
      a3 = v20;
    }
  }

LABEL_15:

  return a3;
}

id sub_1000022FC(void *a1)
{
  v1 = [a1 displayIdentity];
  v2 = [v1 isContinuityDisplay];

  return v2;
}

CGFloat sub_100002334(void *a1, void *a2, CGFloat x)
{
  v5 = a1;
  v6 = a2;
  if (v5 != v6)
  {
    v7 = [v5 displayIdentity];
    v8 = [v7 isContinuityDisplay];

    if ((v8 & 1) != 0 || ([v6 displayIdentity], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isContinuityDisplay"), v9, v10))
    {
      x = CGRectNull.origin.x;
      y = CGRectNull.origin.y;
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
    }

    else
    {
      v14 = v5;
      v15 = sub_100001FD4(v14);
      v16 = [v14 displayConfiguration];

      [v16 bounds];
      if (v15 != 1)
      {
        _UIConvertRectFromOrientationToOrientation();
      }

      v17 = v6;
      v18 = sub_100001FD4(v17);
      v19 = [v17 displayConfiguration];

      [v19 bounds];
      if (v18 != 1)
      {
        _UIConvertRectFromOrientationToOrientation();
      }

      v20 = [v14 displayConfiguration];
      v21 = [v17 displayConfiguration];
      if (sub_100001FD4(v14) != 1)
      {
        [v14 bounds];
        _UIConvertRectFromOrientationToOrientation();
      }

      SBSConvertRectFromDisplayToNeighboringDisplay();
      x = v22;
      if (sub_100001FD4(v17) != 1)
      {
        [v17 bounds];
        _UIConvertRectFromOrientationToOrientation();
        x = v23;
      }
    }
  }

  return x;
}

void sub_100002840(id a1)
{
  v1 = DRLogTarget();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "launchCompletionWatchdogTimer: Failed to receive -application:didFinishLaunchingWithOptions in the expected time. Exiting...", v2, 2u);
  }

  exit(1);
}

void sub_100002A18(id a1)
{
  pthread_self();

  BSPthreadSetFixedPriority();
}

void sub_10000371C(uint64_t a1)
{
  v2 = objc_alloc_init(FBSWorkspaceSceneUpdateResponse);
  (*(*(a1 + 32) + 16))();
}

void sub_100004438(id a1)
{
  qword_1000634A8 = [[DROrientationObserver alloc] _init];

  _objc_release_x1();
}

void sub_100004578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000045A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveOrientationUpdate:v3];
}

void sub_10000482C(uint64_t a1)
{
  *(*(a1 + 32) + 24) = [*(a1 + 40) orientation];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) orientationObserver:*(a1 + 32) orientationDidChange:{*(a1 + 40), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

id sub_100004980()
{
  v0 = +[NSBundle mainBundle];
  v1 = [v0 localizedStringForKey:@"PASTE_ANNOUNCEMENT_NOT_ALLOWED" value:@"Pasting this content is restricted" table:@"Localizable"];

  return v1;
}

id sub_1000049EC(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"PASTE_ANNOUNCEMENT_MANAGED_BY" value:@"Managed by ”%@”" table:@"Localizable"];

  v4 = [NSString stringWithFormat:v3, v1];

  return v4;
}

BOOL sub_100004A98(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004B7C;
  v4[3] = &unk_100054C78;
  v4[4] = &v5;
  [v1 enumerateSubstringsInRange:0 options:objc_msgSend(v1 usingBlock:{"length"), 2, v4}];
  v2 = *(v6 + 6) > 0x10u;
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_100004B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004E14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setConnection:0];
    WeakRetained = v2;
  }
}

void sub_10000515C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DRLogTarget();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002F7F8(a1);
  }

  [*(*(a1 + 32) + 40) invalidate];
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000051DC(uint64_t a1)
{
  v2 = DRLogTarget();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    v5 = [*(v3 + 40) processIdentifier];
    v7 = 138412546;
    v8 = v4;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notified %@, pid %d", &v7, 0x12u);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1000053A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DRLogTarget();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002F7F8(a1);
  }

  [*(*(a1 + 32) + 40) invalidate];
}

uint64_t sub_100005678()
{
  if (qword_1000634C8 != -1)
  {
    sub_10002F890();
  }

  if ((byte_1000634D0 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"NotifyPhoneMirroringOutsideContinuityShell"];
    v2 = v1;
    if (v1)
    {
      LOBYTE(v1) = [v1 BOOLValue];
    }

    byte_1000634D1 = v1;
    byte_1000634D0 = 1;
  }

  return byte_1000634D1;
}

void sub_100005708(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100054D78);
}

void sub_100005758(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1000057A4, @"com.apple.DragUI.NotifyPhoneMirroringOutsideContinuityShell", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_1000057A4()
{
  byte_1000634D0 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

void sub_100005804(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = DRLogTarget();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "druid launched", v12, 2u);
  }

  _set_user_dir_suffix();
  BSSetMainThreadPriorityFixedForUI();
  pthread_self();
  BSPthreadSetFixedPriority();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = UIApplicationMain(a1, a2, v7, v9);

  objc_autoreleasePoolPop(v4);
  return v10;
}

void sub_100005ADC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a1;
  v6 = a4;
  v7 = [a3 bundleID];
  v8 = [v6 bundleID];

  LOBYTE(v6) = _UIDropAllowedBetweenApps();
  if ((v6 & 1) == 0)
  {
    [v9 setOperation:0];
    [v9 setForbidden:1];
  }
}

id sub_1000065B0(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  v3 = *(*(a1 + 40) + 8);
  v4 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
  [v3 setObject:0 forKeyedSubscript:v4];

  v5 = [*(a1 + 40) pendingRemovalControllers];
  [v5 removeObject:*(a1 + 32)];

  result = [*(*(a1 + 40) + 8) count];
  if (!result)
  {

    return __UIUpdateRequestDeactivate(&unk_10003DDC8, 1048577);
  }

  return result;
}

void sub_1000083DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_100008414(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[2];
    if (v2)
    {
      (*(v2 + 16))(v2, 0);
    }
  }

  return _objc_release_x1();
}

uint64_t sub_100008470(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[2];
    if (v2)
    {
      (*(v2 + 16))(v2, 0);
    }
  }

  return _objc_release_x1();
}

uint64_t sub_1000085A0(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_10000A848(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [UTType _typeWithIdentifier:a2 allowUndeclared:1];
  v5 = v4;
  v6 = UTTypeItem;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  if (![v3 length])
  {
    v8 = [(UTType *)v7 localizedDescription];

    v3 = v8;
  }

  v9 = [v3 stringByAppendingPathExtensionForType:v7];

  return v9;
}

void sub_10000A9D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000AA3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 16) = 1;
  }

  [NSFileCoordinator addFilePresenter:WeakRetained];
  [objc_opt_class() presenterValiditySeconds];
  v5 = dispatch_time(0, (v4 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AB58;
  block[3] = &unk_100054CA0;
  objc_copyWeak(&v7, (a1 + 40));
  dispatch_after(v5, &_dispatch_main_q, block);
  [NSFileCoordinator _itemHasPresentersAtURL:*(*(a1 + 32) + 32)];
  objc_destroyWeak(&v7);
}

void sub_10000AB58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [DROnDemandFileProviderPresenter presentedItemOperationQueue]_0();
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000ABF0;
    v3[3] = &unk_100054B50;
    v3[4] = WeakRetained;
    [v2 addOperationWithBlock:v3];
  }
}

void sub_10000ABF0(uint64_t a1)
{
  v2 = +[NSFileCoordinator filePresenters];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  if ([v2 indexOfObjectIdenticalTo:v4] != 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(*v3, "operationQueue_hasObservedEvent") & 1) == 0)
  {
    v5 = DRLogTarget();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002FC44(v3);
    }

    [NSFileCoordinator removeFilePresenter:*v3];
    [*v3 _operationQueue_invalidate];
  }
}

void sub_10000B204(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000B2A0;
  v5[3] = &unk_100054C50;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  (*(v2 + 16))(v2, v5);
}

void sub_10000B2A0(uint64_t a1)
{
  v2 = DRLogTarget();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Reader has relinquished access to URL %@", buf, 0xCu);
  }

  v4 = [DROnDemandFileProviderPresenter presentedItemOperationQueue]_0();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000B3AC;
  v5[3] = &unk_100054B50;
  v5[4] = *(a1 + 40);
  [v4 addOperationWithBlock:v5];
}

void sub_10000B3B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DRLogTarget();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10002FCD8(a1);
    }
  }

  else
  {
    v5 = [*(a1 + 32) url];
    v6 = [v5 path];
    v7 = [v6 fileSystemRepresentation];
    v8 = [*(a1 + 40) path];
    LODWORD(v7) = copyfile(v7, [v8 fileSystemRepresentation], 0, 0x100800Fu);

    v9 = DRLogTarget();
    v4 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10002FD84((a1 + 32), (a1 + 40));
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Successfully cloned file from file provider to temporary location.", buf, 2u);
    }
  }

  v11 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
  if (*(a1 + 64) == 1)
  {
    v10 = [*(*(a1 + 48) + 8) url];
    [v10 stopAccessingSecurityScopedResource];
  }
}

void sub_10000B58C(uint64_t a1)
{
  v2 = [DROnDemandFileProviderPresenter presentedItemOperationQueue]_0();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000B618;
  v3[3] = &unk_100054B50;
  v3[4] = *(a1 + 32);
  [v2 addOperationWithBlock:v3];
}

void sub_10000B698(id a1)
{
  qword_1000634E0 = objc_alloc_init(NSOperationQueue);

  _objc_release_x1();
}

int64_t sub_10000C454(id a1, DRItemViewModel *a2, DRItemViewModel *a3)
{
  v4 = a3;
  v5 = [(DRItemViewModel *)a2 preferredStackOrder];
  v6 = [(DRItemViewModel *)v4 preferredStackOrder];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_10000D0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000D144(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateElasticProperties];
}

void sub_10000D184(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateElasticTransform];
}

id sub_10000D1C4(uint64_t a1)
{
  [*(*(a1 + 32) + 296) setValue:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 304);

  return [v3 setValue:v2];
}

id sub_10000D3C8(uint64_t a1)
{
  [*(*(a1 + 32) + 320) setValue:*(a1 + 48) * -4.0 / 2000.0 + 100.0];
  v2 = *(a1 + 48) * 12.0 / 2000.0 + 100.0;
  v3 = *(*(a1 + 32) + 328);

  return [v3 setValue:v2];
}

void sub_10000DC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000DC8C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSceneIdentifiersWithLayout:v4];
}

double sub_10000E34C()
{
  if (qword_100063500 != -1)
  {
    sub_10002FE9C();
  }

  if ((byte_100063508 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"PrecisionModeUpOffset"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 25.0;
    }

    qword_100063510 = *&v3;
    byte_100063508 = 1;
  }

  return *&qword_100063510;
}

void sub_10000E3E4(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100054F50);
}

void sub_10000E434(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10000E480, @"com.apple.DragUI.PrecisionModeUpOffset", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_10000E480()
{
  byte_100063508 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_10000E4F0()
{
  if (qword_100063518 != -1)
  {
    sub_10002FEB0();
  }

  if ((byte_100063520 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"PrecisionModeDownOffset"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 25.0;
    }

    qword_100063528 = *&v3;
    byte_100063520 = 1;
  }

  return *&qword_100063528;
}

void sub_10000E588(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100054FB0);
}

void sub_10000E5D8(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10000E624, @"com.apple.DragUI.PrecisionModeDownOffset", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_10000E624()
{
  byte_100063520 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_10000E694()
{
  if (qword_100063530 != -1)
  {
    sub_10002FEC4();
  }

  if ((byte_100063538 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"PrecisionModeUpAnchor"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 0x3FB999999999999ALL;
    }

    qword_100063540 = v3;
    byte_100063538 = 1;
  }

  return *&qword_100063540;
}

void sub_10000E730(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055010);
}

void sub_10000E780(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10000E7CC, @"com.apple.DragUI.PrecisionModeUpAnchor", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_10000E7CC()
{
  byte_100063538 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_10000E83C()
{
  if (qword_100063548 != -1)
  {
    sub_10002FED8();
  }

  if ((byte_100063550 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"PrecisionModeDownAnchor"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 0x3FB999999999999ALL;
    }

    qword_100063558 = v3;
    byte_100063550 = 1;
  }

  return *&qword_100063558;
}

void sub_10000E8D8(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055070);
}

void sub_10000E928(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10000E974, @"com.apple.DragUI.PrecisionModeDownAnchor", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_10000E974()
{
  byte_100063550 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_10000EFFC()
{
  if (qword_100063570 != -1)
  {
    sub_10002FF3C();
  }

  if ((byte_100063578 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"RandomStackPadding"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 6.0;
    }

    qword_100063580 = *&v3;
    byte_100063578 = 1;
  }

  return *&qword_100063580;
}

void sub_10000F094(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_1000550D0);
}

void sub_10000F0E4(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10000F130, @"com.apple.DragUI.RandomStackPadding", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_10000F130()
{
  byte_100063578 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_10000F1A0()
{
  if (qword_100063588 != -1)
  {
    sub_10002FF50();
  }

  if ((byte_100063590 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"RandomStackRotation"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 0x3FB1EB851EB851ECLL;
    }

    qword_100063598 = v3;
    byte_100063590 = 1;
  }

  return *&qword_100063598;
}

void sub_10000F23C(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055130);
}

void sub_10000F28C(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10000F2D8, @"com.apple.DragUI.RandomStackRotation", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_10000F2D8()
{
  byte_100063590 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

void sub_10000F97C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (_UIIsOpenInRestrictionInEffect())
  {
    [v3 originatorDataOwner];
    v5 = [v4 bundleID];
    [v3 setOriginatorDataOwner:_UIEffectiveSourceDataOwnerForReportedDataOwner()];

    v6 = DRLogTarget();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10002FF64(v3, v6);
    }
  }
}

void sub_100010088(id a1)
{
  v3 = kUINSUserActivityInternalType;
  v1 = [NSArray arrayWithObjects:&v3 count:1];
  v2 = qword_1000635A0;
  qword_1000635A0 = v1;
}

void sub_1000104D8(id a1)
{
  v3 = PBMetadataTeamDataKey;
  v1 = [NSArray arrayWithObjects:&v3 count:1];
  v2 = qword_1000635B0;
  qword_1000635B0 = v1;
}

id sub_100010558(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained representationConformingToType:a1[4]];
    if (v7)
    {
      v8 = objc_loadWeakRetained(a1 + 7);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000106A8;
      v12[3] = &unk_100055208;
      v9 = a1[4];
      v13 = a1[5];
      v14 = v7;
      v16 = v4;
      v15 = a1[4];
      v10 = [v8 _registerRequestFromSourceItem:v6 typeIdentifier:v9 completionHandler:v12];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1000106A8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v10;
  v14 = v13;
  if (v13 && !v11 && [v13 isBackedByFileProvider])
  {
    v15 = [v14 fpItem];

    if (v15)
    {
      v16 = [v14 fpItem];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = sub_100010FF0;
      v51 = sub_100011000;
      v52 = 0;
      v17 = dispatch_semaphore_create(0);
      v18 = +[FPItemManager defaultManager];
      v44 = _NSConcreteStackBlock;
      v45 = 3221225472;
      v46 = sub_1000120DC;
      v47 = &unk_100055318;
      v49 = buf;
      v19 = v17;
      v48 = v19;
      [v18 fetchURLForItem:v16 completionHandler:&v44];

      dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
      v20 = *(*&buf[8] + 40);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v20 = [v14 url];
    }

    v22 = *(a1 + 32);
    if (v22)
    {
      [v22 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    if ([DRDataTransferSession _shouldRestrictOpenInPlaceFor:v20 destinationAuditToken:buf])
    {
      goto LABEL_18;
    }

    if ([v14 isReadonly])
    {
      goto LABEL_18;
    }

    if ([*(a1 + 40) preferredRepresentation] != 2)
    {
      goto LABEL_18;
    }

    v23 = v20;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    LOBYTE(v47) = 0;
    v24 = dispatch_semaphore_create(0);
    v25 = +[FPItemManager defaultManager];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10001213C;
    *&buf[24] = &unk_100055340;
    v52 = &v44;
    v26 = v24;
    v51 = v26;
    [v25 fetchItemForURL:v23 completionHandler:buf];
    v34 = v23;

    dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    LOBYTE(v23) = *(v45 + 24);

    _Block_object_dispose(&v44, 8);
    if ((v23 & 1) == 0)
    {
LABEL_18:
      v31 = DRLogTarget();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Creating a local exported clone.", buf, 2u);
      }

      v32 = *(a1 + 48);
      v40[0] = v14;
      v30 = [DROnDemandFileProviderPresenter presenterPresentingURLWrapper:v14 type:v32 outURLWrapper:v40];
      v33 = v40[0];

      [v30 setShouldEvictWhenDone:1];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100010D98;
      block[3] = &unk_1000551E0;
      v38 = *(a1 + 56);
      v21 = v33;
      v36 = v21;
      v37 = 0;
      v39 = v12;
      if (qword_1000635C8 != -1)
      {
        sub_100030028();
      }

      dispatch_async(qword_1000635C0, block);
    }

    else
    {
      v27 = DRLogTarget();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [*(a1 + 32) bundleID];
        *buf = 138543618;
        *&buf[4] = v34;
        *&buf[12] = 2114;
        *&buf[14] = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Extending file provider ACL for %{public}@ to %{public}@", buf, 0x16u);
      }

      v29 = [*(a1 + 32) bundleID];
      v40[1] = _NSConcreteStackBlock;
      v40[2] = 3221225472;
      v40[3] = sub_100010C9C;
      v40[4] = &unk_1000551B8;
      v43 = *(a1 + 56);
      v41 = v9;
      v21 = v14;
      v42 = v21;
      FPExtendBookmarkForDocumentURL();

      v30 = v43;
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    v21 = v14;
  }
}

uint64_t sub_100010C9C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = DRLogTarget();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = a2;
    v12 = 2112;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "File provider ACL extension result: %@, error: %@", &v10, 0x16u);
  }

  if (!a3)
  {
    v7 = a1[4];
    v8 = a1[5];
  }

  return (*(a1[6] + 16))();
}

void sub_100010FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010FF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100011008()
{
  if (qword_1000635D8 != -1)
  {
    sub_100030050();
  }

  v1 = qword_1000635D0;

  return v1;
}

void sub_10001104C(uint64_t a1)
{
  v6 = objc_alloc_init(DRDataTransferRequest);
  [(DRDataTransferRequest *)v6 setSourceItem:*(a1 + 32)];
  [(DRDataTransferRequest *)v6 setTypeIdentifier:*(a1 + 40)];
  [(DRDataTransferRequest *)v6 setCompletionHandler:*(a1 + 56)];
  v2 = [NSProgress discreteProgressWithTotalUnitCount:100];
  [(DRDataTransferRequest *)v6 setProgress:v2];

  v3 = [(DRDataTransferRequest *)v6 progress];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(*(a1 + 48) + 48) addObject:v6];
  [*(a1 + 48) _transferQueue_scheduleNextTransfer];
}

void sub_100011684(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = a2;
  v13 = DRLogTarget();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    *buf = 138412802;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Completed load for type %@ from item UUID %@. Error: %@", buf, 0x20u);
  }

  v16 = [*(a1 + 48) completionHandler];
  (v16)[2](v16, v12, v11, v9, v10);

  v17 = sub_100011008();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011840;
  block[3] = &unk_100054C50;
  v19 = *(a1 + 48);
  v18 = v19.i64[0];
  v21 = vextq_s8(v19, v19, 8uLL);
  dispatch_async(v17, block);
}

id sub_100011840(uint64_t a1)
{
  [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _transferQueue_scheduleNextTransfer];
}

void sub_100011880(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100011A88;
  v25[3] = &unk_1000552A8;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v29 = v14;
  v30 = v12;
  v15 = v13;
  v16 = v25;
  v17 = dispatch_get_global_queue(0, 0);
  v18 = v12;
  v19 = v11;
  v20 = v10;
  v21 = v9;
  v22 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v17);

  dispatch_source_set_timer(v22, 0, 0x1DCD6500uLL, 0xEE6B280uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100012520;
  handler[3] = &unk_100055468;
  v32 = v15;
  v33 = v22;
  v34 = v16;
  v23 = v15;
  v24 = v22;
  dispatch_source_set_event_handler(v24, handler);
  dispatch_resume(v24);
}

void sub_100011C30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 72));
    [v4 dataTransferSessionBegan:*(a1 + 32)];
  }
}

void sub_100011CC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 72));
    [v4 dataTransferSessionFinished:*(a1 + 32)];
  }
}

id sub_100011DE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 64) == 1)
  {
    sub_1000300B4();
  }

  *(v1 + 64) = 1;
  [*(a1 + 32) _transferQueue_sendDelegateCallbacksIfNeeded];
  v3 = *(*(a1 + 32) + 40);

  return [v3 sendDelegateEventsIfNeeded];
}

void sub_1000120DC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100012158(id a1)
{
  v1 = dispatch_queue_create("com.apple.DragUI.druid.transferCallbackQueue", 0);
  v2 = qword_1000635C0;
  qword_1000635C0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100012198(id a1)
{
  v1 = dispatch_queue_create("com.apple.DragUI.druid.transferQueue", 0);
  v2 = qword_1000635D0;
  qword_1000635D0 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100012200()
{
  if (qword_1000635F0 != -1)
  {
    sub_1000300E0();
  }

  if ((byte_1000635F8 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"maxSimultaneousTransfers"];
    v2 = v1;
    if (v1)
    {
      v3 = [v1 integerValue];
    }

    else
    {
      v3 = 3;
    }

    qword_100063600 = v3;
    byte_1000635F8 = 1;
  }

  return qword_100063600;
}

void sub_100012298(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_1000553E0);
}

void sub_1000122E8(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100012334, @"com.apple.DragUI.maxSimultaneousTransfers", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_100012334()
{
  byte_1000635F8 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_1000123A4()
{
  if (qword_100063608 != -1)
  {
    sub_1000300F4();
  }

  if ((byte_100063610 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"slowDownTransferTime"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 0;
    }

    qword_100063618 = v3;
    byte_100063610 = 1;
  }

  return *&qword_100063618;
}

void sub_10001243C(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055440);
}

void sub_10001248C(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1000124D8, @"com.apple.DragUI.slowDownTransferTime", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_1000124D8()
{
  byte_100063610 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

id sub_100012520(uint64_t a1)
{
  v2 = [*(a1 + 32) completedUnitCount];
  if (v2 == [*(a1 + 32) totalUnitCount])
  {
    dispatch_source_cancel(*(a1 + 40));
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [v5 completedUnitCount] + 1;

    return [v5 setCompletedUnitCount:v6];
  }
}

id sub_1000130BC(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  v3 = [v2 presentationLayer];
  [v3 position];
  [*(a1 + 32) setCenter:?];

  v4 = [*(a1 + 32) layer];
  v5 = [v4 presentationLayer];
  [v5 anchorPoint];
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 40) layer];
  [v10 setAnchorPoint:{v7, v9}];

  [*(a1 + 32) center];
  v11 = *(a1 + 40);

  return [v11 setCenter:?];
}

void sub_100013188(uint64_t a1)
{
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000132BC;
  v13 = &unk_100055490;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v2 = objc_retainBlock(&v10);
  v3 = v2;
  if (*(a1 + 80) == 1)
  {
    [UIView _performWithoutRetargetingAnimations:v2, v10, v11, v12, v13, v14];
  }

  else
  {
    (v2[2])(v2);
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = [*(a1 + 32) layer];
  [v6 setAnchorPoint:{v4, v5}];

  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = [*(a1 + 40) layer];
  [v9 setAnchorPoint:{v7, v8}];
}

id sub_1000132BC(uint64_t a1)
{
  [*(a1 + 40) alpha];
  [*(a1 + 32) setAlpha:?];
  [*(a1 + 32) setOverrideSize:{CGSizeZero.width, CGSizeZero.height}];
  [*(a1 + 40) stackRotation];
  [*(a1 + 32) setStackRotation:?];
  [*(a1 + 40) setOverrideSize:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

void sub_100013334(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  [v2 removeObject:a1[6]];
  if (![v2 count])
  {
    [*(a1[4] + 16) removeObjectForKey:a1[5]];
  }
}

id sub_100013FA8(uint64_t a1)
{
  [*(a1 + 32) setConstrainSize:{objc_msgSend(*(a1 + 40), "constrainSize")}];
  [*(a1 + 40) anchorPoint];
  v3 = v2;
  v5 = v4;
  v6 = [*(a1 + 32) layer];
  [v6 setAnchorPoint:{v3, v5}];

  [*(a1 + 40) stackRotation];
  [*(a1 + 32) setStackRotation:?];
  [*(a1 + 32) setAppliesOriginalRotation:{objc_msgSend(*(a1 + 40), "applyOriginalRotation")}];
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);

  return [v8 setOrientationRotation:v7];
}

id sub_100014050(uint64_t a1)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v23 + 1) + 8 * i) setCenter:{*(a1 + 56), *(a1 + 64)}];
      }

      v4 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 48) model];
  v8 = v7;
  if (v7)
  {
    [v7 appliedTransform];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
  }

  v9 = *(a1 + 40);
  v17 = v20;
  v18 = v21;
  v19 = v22;
  [v9 setAppliedTransform:&v17];

  v10 = [*(a1 + 48) model];
  v11 = v10;
  if (v10)
  {
    [v10 elasticTransform];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
  }

  v12 = *(a1 + 40);
  v17 = v14;
  v18 = v15;
  v19 = v16;
  [v12 setAdditionalTransform:{&v17, v14, v15, v16}];

  return [*(a1 + 40) setCenter:{*(a1 + 56), *(a1 + 64)}];
}

id sub_100014F30(id *a1)
{
  [a1[4] center];
  v3 = v2;
  v5 = v4;
  [a1[5] center];
  v7 = v3 - v6;
  v9 = v5 - v8;
  [a1[6] center];
  v11 = v7 + v10;
  v13 = v9 + v12;
  v14 = a1[6];

  return [v14 setCenter:{v11, v13}];
}

id sub_100014F9C(uint64_t a1)
{
  [*(a1 + 40) center];
  v2 = *(a1 + 32);

  return [v2 setCenter:?];
}

id sub_100014FD8(uint64_t a1)
{
  if ((*(a1 + 40) & 1) != 0 || (v1 = 0.0, *(a1 + 41) == 1))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

void sub_100014FFC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 56);
  }

  else
  {
    [*(a1 + 32) badgeLocation];
    v2 = v4;
    v3 = v5;
  }

  v6 = *(a1 + 32);
  v13 = [v6 superview];
  [v6 convertPoint:v13 toView:{v2, v3}];
  v8 = v7;
  v10 = v9;
  [*(a1 + 32) center];
  [*(a1 + 40) setCenter:{v8 - v11, v10 - v12}];
}

void sub_1000150AC(uint64_t a1)
{
  [*(a1 + 32) setBounds:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 88);
  v8[0] = *(a1 + 72);
  v8[1] = v2;
  v8[2] = *(a1 + 104);
  [*(a1 + 32) setTransform:v8];
  [*(a1 + 32) anchorPointForAlignment];
  v4 = v3;
  v6 = v5;
  v7 = [*(a1 + 32) layer];
  [v7 setAnchorPoint:{v4, v6}];
}

id sub_10001513C(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v1;
  v3[2] = *(a1 + 72);
  return [*(a1 + 32) setTransform:v3];
}

id sub_100015B40(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  [*(a1 + 32) setCancelHandler:&stru_100055618];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) queue];
  [v2 setDispatchQueue:v3];

  v4 = *(a1 + 32);

  return [v4 activate];
}

void sub_100015BB8(id a1)
{
  v1 = DRLogTarget();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Virtual HID Service cancelled.", v2, 2u);
  }
}

void sub_100015D00(uint64_t a1)
{
  v2 = [*(a1 + 32) eventService];
  [v2 dispatchEvent:*(a1 + 40)];
}

void sub_100016CE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100016D38(uint64_t a1)
{
  v2 = +[NSXPCConnection currentConnection];
  if (v2 == *(a1 + 32))
  {
    v4 = v2;
    v3 = [v2 valueForEntitlement:@"com.apple.DragUI.accessibility"];
    *(*(*(a1 + 40) + 8) + 24) = [v3 isEqual:&__kCFBooleanTrue];

    v2 = v4;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_100016DD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[6])
  {
    v2 = WeakRetained;
    [WeakRetained _touchWatchdogFired];
    WeakRetained = v2;
  }
}

__CFString *sub_100016F14(unint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [NSString stringWithFormat:@"Unknown (%lu)", a1];
  }

  else
  {
    v2 = off_100055A68[a1];
  }

  return v2;
}

void sub_100017230(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100017254(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSetDownAnimationState:2];
}

void sub_100017298(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dragSessionSetDownAnimationDidEnd:*(a1 + 32)];
}

void sub_100017ACC(uint64_t a1)
{
  v2 = DRLogTarget();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 52);
    v4 = *(a1 + 40);
    v5 = *(a1 + 44);
    v6 = *(a1 + 48);
    v14[0] = 67109888;
    v14[1] = v4;
    v15 = 1024;
    v16 = v3;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Observed touch up for touch %d detached %d context %u pid %d", v14, 0x1Au);
  }

  v8 = (a1 + 32);
  v7 = *(a1 + 32);
  v9 = *(v7 + 56);
  if (v9)
  {
    *(v7 + 56) = v9 - 1;
    v10 = *v8;
    if (!*(*v8 + 7) && (v10[64] & 1) == 0)
    {
      v10[202] = 1;
      *(*(a1 + 32) + 204) = *(a1 + 48);
      v11 = NSAllMapTableValues(*(*(a1 + 32) + 104));
      v12 = [v11 count];

      if (v12)
      {
        [*v8 _runBlocksWaitingForLastTouchAndDestinationToEndIfPossible];
      }

      else
      {
        v13 = DRLogTarget();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000302F8(v8);
        }

        [*v8 _cancelDrag];
      }
    }
  }
}

void sub_100018040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018064(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[1]);
    [(dispatch_queue_t *)v7 _acceptDragPreviews:v8 fence:v5 fromClient:*(a1 + 32)];
  }
}

void sub_100019668(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = [*(a1 + 48) connection];
  [v1 _performDropOperation:v3 layerContext:v2 forConnection:v4];
}

void sub_100019768(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) dataTransferSession];
  [v1 _endDragWithOperation:1 dataTransferSession:v2];
}

void sub_100019D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak(&a36);
  objc_destroyWeak((v36 - 152));
  objc_destroyWeak((v36 - 128));
  _Unwind_Resume(a1);
}

void sub_100019DB8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = DRLogTarget();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Session %@: destination performed drop and replied", buf, 0xCu);
    }

    v6 = WeakRetained[29];
    if (v6)
    {
      [v6 cancel];
      v7 = WeakRetained[29];
      WeakRetained[29] = 0;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001A00C;
    v17[3] = &unk_100055508;
    v8 = *(a1 + 48);
    v17[4] = WeakRetained;
    v19 = v8;
    v18 = *(a1 + 32);
    v9 = objc_retainBlock(v17);
    if ([WeakRetained state] == 2)
    {
      v10 = *(a1 + 56);
      v11 = [WeakRetained delegate];
      v12 = v11;
      if (v10 == 1)
      {
        v13 = WeakRetained[1];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001A02C;
        v14[3] = &unk_100055748;
        v14[4] = WeakRetained;
        v15 = *(a1 + 32);
        v16 = v9;
        [v12 dragSession:WeakRetained removeVisibleDroppedItemsInSpaceOfLayerContext:v3 replyingOnQueue:v13 with:v14];
      }

      else
      {
        [v11 dragSession:WeakRetained animateOutVisibleItemsWithOperation:*(a1 + 48)];

        (v9[2])(v9);
      }
    }

    else
    {
      [WeakRetained _endDragWithOperation:0 destination:*(a1 + 32)];
    }
  }
}

id sub_10001A00C(void *a1)
{
  v2 = a1[4];
  if (v2[20])
  {
    return [v2 setState:5];
  }

  else
  {
    return [v2 _endDragWithOperation:a1[6] destination:a1[5]];
  }
}

uint64_t sub_10001A02C(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  [v5 setSetDownAnimationState:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001A0F4;
  v10[3] = &unk_100054B50;
  v8 = a1[5];
  v10[4] = a1[4];
  [v8 handOffDroppedItems:v7 withFence:v6 completion:v10];

  return (*(a1[6] + 16))();
}

void sub_10001A100(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = DRLogTarget();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10003073C();
    }
  }

  [*(a1 + 32) invalidate];
}

void sub_10001A170(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = DRLogTarget();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000307AC(a1);
    }

    [WeakRetained _endDragWithOperation:0 destination:*(a1 + 40)];
  }
}

void sub_10001A1F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataTransferSession];
  v5 = *(a1 + 40);
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  [v4 setDestinationAuditToken:v19];
  v6 = [*(a1 + 48) takeProcessAssertionOnPID:*(a1 + 88)];
  v7 = *(a1 + 48);
  v8 = *(v7 + 112);
  *(v7 + 112) = v6;

  v9 = DRLogTarget();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    LODWORD(v19[0]) = 138412546;
    *(v19 + 4) = v10;
    WORD6(v19[0]) = 2112;
    *(v19 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %@: telling destination %@ to perform drop", v19, 0x16u);
  }

  if ((*(a1 + 92) & 1) == 0)
  {

    v3 = &__NSArray0__struct;
  }

  v12 = *(a1 + 64);
  v13 = [v4 destinationItemCollection];
  v14 = [v4 destinationDataProviderEndpoint];
  [v12 performDropWithItemCollection:v13 dataProviderEndpoint:v14 visibleDroppedItems:v3 completion:*(a1 + 72)];

  if ((sub_100001D58(*(a1 + 88)) & 1) == 0)
  {
    if (qword_100063628 != -1)
    {
      sub_100030814();
    }

    v15 = 10.0;
    if (byte_100063630 == 1)
    {
      v15 = sub_10001F4A8();
    }

    v16 = [[DRDispatchTimer alloc] initWithQueue:*(*(a1 + 48) + 8) eventHandler:*(a1 + 80)];
    [(DRDispatchTimer *)v16 resetWithTimeout:v15 leeway:v15 * 0.1];
    [(DRDispatchTimer *)v16 activate];
    v17 = *(a1 + 48);
    v18 = *(v17 + 232);
    *(v17 + 232) = v16;
  }
}

id sub_10001A5E8(uint64_t a1)
{
  v1 = (a1 + 32);
  result = [*(a1 + 32) state];
  if (result == 1)
  {
    v3 = DRLogTarget();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10003083C(v1);
    }

    return [*v1 _endDragByCancelling];
  }

  return result;
}

void sub_10001A98C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DRLogTarget();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2048;
    v10 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Session %@: requested visible items, got %ld", &v7, 0x16u);
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v6);
}

void sub_10001AB38(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[24] && !v2[49])
  {
    v3 = [v2 delegate];
    [v3 dragSession:*(a1 + 32) transformedPointFromContextID:*(*(a1 + 32) + 92) point:{*(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = DRLogTarget();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = [NSString stringWithFormat:@"{%.3f, %.3f, %.3f}", *&v5, *&v7, *&v9];
      *buf = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Session %@: AX starting touch at %@", buf, 0x16u);
    }

    [*(a1 + 40) beginAtPoint:{v5, v7, v9}];
    objc_storeStrong((*(a1 + 32) + 392), *(a1 + 40));
  }
}

void sub_10001ADC8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  [*(*(a1 + 32) + 392) moveToLocation:{v2, v3, 0.0}];
  v4 = [*(a1 + 32) delegate];
  [v4 dragSession:*(a1 + 32) moveToLocation:{v2, v3, 0.0}];
}

id sub_10001AF44(uint64_t a1)
{
  [*(*(a1 + 32) + 392) lift];
  v2 = *(a1 + 32);

  return [v2 _lastTouchEndedNormally:1];
}

void sub_10001B0F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 266) == 1 && !*(v1 + 392))
  {
    v3 = DRLogTarget();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [NSString stringWithFormat:@"{%.3f, %.3f, %.3f}", *(a1 + 48), *(a1 + 56), *(a1 + 64)];
      *buf = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session %@: Pointer drag starting touch at %@", buf, 0x16u);
    }

    [*(a1 + 40) beginAtPoint:{*(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    objc_storeStrong((*(a1 + 32) + 392), *(a1 + 40));
  }
}

void sub_10001B494(uint64_t a1)
{
  [*(a1 + 32) _resetTouchWatchdogWithTimeout:20.0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  if (v2 == *(*(a1 + 32) + 392))
  {
    [*(*(a1 + 32) + 392) moveToLocation:{v3, v4, v5}];
  }

  else
  {
    [v2 beginAtPoint:{v3, v4, v5}];
    *(*(a1 + 32) + 64) = 1;
    v6 = [*(a1 + 40) screen];
    v7 = [*(*(a1 + 32) + 392) screen];
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    sub_1000022D4(v6, v7, *(a1 + 48));
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [*(*(a1 + 32) + 392) liftAtLocation:{v11, v13, v15}];
    v16 = [*(a1 + 40) screen];
    v17 = [v16 displayConfiguration];

    v18 = [*(*(a1 + 32) + 392) screen];
    v19 = [v18 displayConfiguration];

    v20 = DRLogTarget();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v17 hardwareIdentifier];
      v22 = [NSString stringWithFormat:@"{%.3f, %.3f, %.3f}", *(a1 + 48), *(a1 + 56), *(a1 + 64)];
      v23 = [v19 hardwareIdentifier];
      v24 = [NSString stringWithFormat:@"{%.3f, %.3f, %.3f}", *&v11, *&v13, *&v15];
      *buf = 138413058;
      v38 = v21;
      v39 = 2112;
      v40 = v22;
      v41 = 2112;
      v42 = v23;
      v43 = 2112;
      v44 = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "movePointer: display: %@ point: %@ -- previous display: %@ converted point: %@", buf, 0x2Au);
    }

    objc_storeStrong((*(a1 + 32) + 392), *(a1 + 40));
  }

  v25 = [*(a1 + 40) screen];
  v26 = [*(a1 + 32) sourceInteractionWindow];
  v27 = [v26 screen];
  v28 = *(a1 + 56);
  v29 = *(a1 + 64);
  sub_1000022D4(v25, v27, *(a1 + 48));
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = [*(a1 + 32) delegate];
  [v36 dragSession:*(a1 + 32) moveToLocation:{v31, v33, v35}];
}

id sub_10001B874(uint64_t a1)
{
  [*(a1 + 32) _resetTouchWatchdogWithTimeout:20.0];
  [*(*(a1 + 32) + 392) lift];
  v2 = *(a1 + 32);

  return [v2 _lastTouchEndedNormally:1];
}

id sub_10001B96C(uint64_t a1)
{
  [*(a1 + 32) _resetTouchWatchdogWithTimeout:20.0];
  v2 = *(a1 + 32);

  return [v2 _lastTouchEndedNormally:0];
}

void sub_10001BF9C(uint64_t a1)
{
  v2 = [*(a1 + 32) canLoadObjectOfClass:objc_opt_class()];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = objc_opt_class();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001C164;
    v15[3] = &unk_100055838;
    v5 = *(a1 + 48);
    v15[4] = *(a1 + 40);
    v16 = v5;
    v6 = [v3 loadObjectOfClass:v4 completionHandler:v15];
  }

  else
  {
    v7 = [*(a1 + 32) registeredTypeIdentifiersWithFileOptions:1];
    if ([v7 count])
    {
      v8 = *(a1 + 32);
      v9 = [v7 firstObject];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10001C1F0;
      v13[3] = &unk_100055860;
      v10 = *(a1 + 48);
      v13[4] = *(a1 + 40);
      v14 = v10;
      v11 = [v8 loadInPlaceFileRepresentationForTypeIdentifier:v9 completionHandler:v13];
    }

    else
    {
      v12 = DRLogTarget();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100030A40(a1);
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void sub_10001C164(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DRLogTarget();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100030AC4(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001C1F0(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = DRLogTarget();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100030B2C(a1);
    }
  }

  else
  {
    if (a3)
    {
      v10 = *(*(a1 + 40) + 16);
    }

    else
    {
      v11 = DRLogTarget();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100030B94(a1);
      }

      v10 = *(*(a1 + 40) + 16);
    }

    v10();
  }
}

void sub_10001C4B4(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_class();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001C56C;
  v6[3] = &unk_1000558D8;
  v4 = a1[6];
  v6[4] = a1[5];
  v7 = v4;
  v5 = [v2 loadObjectOfClass:v3 completionHandler:v6];
}

void sub_10001C56C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DRLogTarget();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100030C04(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001C680;
    v11[3] = &unk_1000558B0;
    v8 = v5;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = v8;
    v13 = v9;
    v14 = v10;
    [v8 _createUserActivityDataWithOptions:0 completionHandler:v11];
  }
}

void sub_10001C680(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = DRLogTarget();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100030C6C(a1);
    }

    v7 = *(*(a1 + 48) + 16);
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);
  }

  v7();
}

void sub_10001D29C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) interactionWindow];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = [*(a1 + 32) sourceInteractionWindow];
  v7 = [*(a1 + 32) interactionWindow];

  if (v6 == v7)
  {
LABEL_4:
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10001D3C8;
    v14 = &unk_100055928;
    v8 = *(a1 + 40);
    v15 = *(a1 + 32);
    v16 = v8;
    v9 = objc_retainBlock(&v11);
    v10 = [*(a1 + 32) clientSource];
    [v10 canHandOffCancelledItems:v3 withReply:v9];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10001D3C8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) delegate];
    v7 = *(*(a1 + 32) + 8);
    [v6 dragSession:? removeVisibleDroppedItemsInSpaceOfLayerContext:? replyingOnQueue:? with:?];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

id sub_10001D490(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setSetDownAnimationState:1];
  v8 = [*(a1 + 32) clientSource];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001D56C;
  v10[3] = &unk_100054B50;
  v10[4] = *(a1 + 32);
  [v8 handOffCancelledItems:v7 withFence:v6 completion:v10];

  return [*(a1 + 32) _endDragWithOperation:0 destination:0];
}

id sub_10001D9EC(uint64_t a1)
{
  if ([*(a1 + 32) state] != 4)
  {
    sub_100030D14();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 184);
  if (*(a1 + 40) != v3)
  {
    sub_100030D40();
  }

  *(v2 + 184) = 0;

  v4 = [*(a1 + 32) clientSource];
  [v4 dataTransferSessionFinished];

  v5 = *(a1 + 32);

  return [v5 _transitionToDoneIfPossible];
}

void sub_10001DFA0(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(*(a1 + 32) + 104) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [*(a1 + 32) delegate];
        v9 = *(a1 + 32);
        v10 = [v7 connection];
        LODWORD(v9) = [v8 dragSession:v9 destinationIsOnenessConnection:{objc_msgSend(v10, "processIdentifier")}];

        if (v9)
        {
          v11 = [v7 clientSession];
          [v11 updatedPresentation:*(a1 + 40)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v12 = *(a1 + 32);
  if (*(v12 + 96) == 1)
  {
    [*(v12 + 280) updatedPresentation:*(a1 + 40)];
  }
}

id sub_10001E538(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 216);
  *(v2 + 216) = 0;

  v4 = *(a1 + 32);

  return [v4 _endDragByCancelling];
}

uint64_t sub_10001E57C(uint64_t a1)
{
  v2 = DRLogTarget();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100030E90(a1);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_10001F158()
{
  if (qword_100063638 != -1)
  {
    sub_100030F54();
  }

  if ((byte_100063640 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"EnableWatchdog"];
    v2 = v1;
    if (v1)
    {
      v3 = [v1 BOOLValue];
    }

    else
    {
      v3 = 1;
    }

    byte_100063641 = v3;
    byte_100063640 = 1;
  }

  return byte_100063641;
}

void sub_10001F1F8(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055988);
}

void sub_10001F248(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10001F294, @"com.apple.DragUI.EnableWatchdog", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_10001F294()
{
  byte_100063640 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_10001F304()
{
  if (qword_100063648 != -1)
  {
    sub_100030F68();
  }

  if ((byte_100063650 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"SetDownAnimationTimeout"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 5.0;
    }

    qword_100063658 = *&v3;
    byte_100063650 = 1;
  }

  return *&qword_100063658;
}

void sub_10001F39C(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_1000559E8);
}

void sub_10001F3EC(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10001F438, @"com.apple.DragUI.SetDownAnimationTimeout", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_10001F438()
{
  byte_100063650 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_10001F4A8()
{
  if (qword_100063660 != -1)
  {
    sub_100030F7C();
  }

  if ((byte_100063668 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"PerformDropTimeout"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 10.0;
    }

    qword_100063670 = *&v3;
    byte_100063668 = 1;
  }

  return *&qword_100063670;
}

void sub_10001F540(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055A48);
}

void sub_10001F590(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10001F5DC, @"com.apple.DragUI.PerformDropTimeout", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_10001F5DC()
{
  byte_100063668 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

uint64_t sub_10001F654@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_10001FCF4(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v5 = [v17 position];
  if (([v17 isNewItem] & 1) != 0 || *(a1 + 64) == 1)
  {
    [v17 center];
    if (v7 == CGPointZero.x && v6 == CGPointZero.y)
    {
      [*(a1 + 32) _runWithoutRetargeting:v5];
      goto LABEL_18;
    }

    if ([v17 needsImmediateTracking])
    {
LABEL_8:
      [*(a1 + 32) _runAnimatableWithBarelyBouncyAnimation:v5];
      goto LABEL_18;
    }

    v10 = [*(a1 + 40) itemLayouts];
    if ([v10 count])
    {
    }

    else
    {
      v11 = [v17 constrainSize];

      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_17;
  }

  if ([v17 startingPreviewTransition])
  {
LABEL_17:
    [*(a1 + 32) _runAnimatableWithBouncyAnimation:v5];
    goto LABEL_18;
  }

  v9 = *(a1 + 56) - a3;
  if (v9 && *(a1 + 65) != 1)
  {
    [*(a1 + 32) _runAnimatableWithOneToOneTracking:v5 response:v9 * 0.031];
  }

  else
  {
    [*(a1 + 32) _runAnimatableWithOneToOneTracking:v5];
  }

LABEL_18:
  v12 = [v17 isInPreviewTransition];
  v13 = v17;
  if (v12)
  {
    v14 = [v17 preview];
    if (v14)
    {
      [*(a1 + 32) _runAnimatableWithBouncyAnimation:v14];
    }

    v13 = v17;
  }

  if (![v13 isInPreviewTransition] || objc_msgSend(*(a1 + 48), "animatesFlockItemSizeAlongsidePreviewTransition"))
  {
    v15 = *(a1 + 32);
    v16 = [v17 size];
    [v15 _runAnimatableWithBouncyAnimation:v16];
  }
}

void sub_100020394(uint64_t a1)
{
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v10.minimum;
  maximum = v10.maximum;
  preferred = v10.preferred;
  v8 = [*(a1 + 32) animationBlock];
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048577 updateReason:v8 animations:v5, v6, v7];
}

void sub_100020614(uint64_t a1)
{
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v10.minimum;
  maximum = v10.maximum;
  preferred = v10.preferred;
  v8 = [*(a1 + 32) animationBlock];
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048577 updateReason:v8 animations:v5, v6, v7];
}

void sub_1000208E8(uint64_t a1)
{
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v10.minimum;
  maximum = v10.maximum;
  preferred = v10.preferred;
  v8 = [*(a1 + 32) animationBlock];
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048577 updateReason:v8 animations:v5, v6, v7];
}

double sub_100020AA4()
{
  if (qword_100063688 != -1)
  {
    sub_100030FE0();
  }

  if ((byte_100063690 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"FlockBadgeResponse"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 0x3FD6666666666666;
    }

    qword_100063698 = v3;
    byte_100063690 = 1;
  }

  return *&qword_100063698;
}

void sub_100020B40(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055B18);
}

void sub_100020B90(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100020BDC, @"com.apple.DragUI.FlockBadgeResponse", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_100020BDC()
{
  byte_100063690 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_100020C4C()
{
  if (qword_1000636A0 != -1)
  {
    sub_100030FF4();
  }

  if ((byte_1000636A8 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"FlockTopStackResponse"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 0x3F589374BC6A7EFALL;
    }

    qword_1000636B0 = v3;
    byte_1000636A8 = 1;
  }

  return *&qword_1000636B0;
}

void sub_100020CE8(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055B78);
}

void sub_100020D38(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100020D84, @"com.apple.DragUI.FlockTopStackResponse", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_100020D84()
{
  byte_1000636A8 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_100020DF4()
{
  if (qword_1000636B8 != -1)
  {
    sub_100031008();
  }

  if ((byte_1000636C0 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"FlockTopStackDampingRatio"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 1.0;
    }

    qword_1000636C8 = *&v3;
    byte_1000636C0 = 1;
  }

  return *&qword_1000636C8;
}

void sub_100020E8C(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055BD8);
}

void sub_100020EDC(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100020F28, @"com.apple.DragUI.FlockTopStackDampingRatio", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_100020F28()
{
  byte_1000636C0 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_100020F98()
{
  if (qword_1000636D0 != -1)
  {
    sub_10003101C();
  }

  if ((byte_1000636D8 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"FlockInitialTopStackDampingRatio"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 0x3FE6A09E667E556ELL;
    }

    qword_1000636E0 = v3;
    byte_1000636D8 = 1;
  }

  return *&qword_1000636E0;
}

void sub_100021034(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055C38);
}

void sub_100021084(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1000210D0, @"com.apple.DragUI.FlockInitialTopStackDampingRatio", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_1000210D0()
{
  byte_1000636D8 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_100021140()
{
  if (qword_1000636E8 != -1)
  {
    sub_100031030();
  }

  if ((byte_1000636F0 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"FlockInitialTopStackResponse"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 0x3FE4CCCCCCCCCCCDLL;
    }

    qword_1000636F8 = v3;
    byte_1000636F0 = 1;
  }

  return *&qword_1000636F8;
}

void sub_1000211DC(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055C98);
}

void sub_10002122C(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100021278, @"com.apple.DragUI.FlockInitialTopStackResponse", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_100021278()
{
  byte_1000636F0 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_1000212E8()
{
  if (qword_100063700 != -1)
  {
    sub_100031044();
  }

  if ((byte_100063708 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"FlockTopStackDampingRatioSmoothing"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 1.0;
    }

    qword_100063710 = *&v3;
    byte_100063708 = 1;
  }

  return *&qword_100063710;
}

void sub_100021380(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055CF8);
}

void sub_1000213D0(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10002141C, @"com.apple.DragUI.FlockTopStackDampingRatioSmoothing", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_10002141C()
{
  byte_100063708 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_10002148C()
{
  if (qword_100063718 != -1)
  {
    sub_100031058();
  }

  if ((byte_100063720 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"FlockTopStackResponseSmoothing"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 1.0;
    }

    qword_100063728 = *&v3;
    byte_100063720 = 1;
  }

  return *&qword_100063728;
}

void sub_100021524(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055D58);
}

void sub_100021574(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1000215C0, @"com.apple.DragUI.FlockTopStackResponseSmoothing", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_1000215C0()
{
  byte_100063720 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_100021630()
{
  if (qword_100063730 != -1)
  {
    sub_10003106C();
  }

  if ((byte_100063738 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"FlockFirstItemDampingRatio"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 0x3FE9DE00D1B71759;
    }

    qword_100063740 = v3;
    byte_100063738 = 1;
  }

  return *&qword_100063740;
}

void sub_1000216CC(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055DB8);
}

void sub_10002171C(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100021768, @"com.apple.DragUI.FlockFirstItemDampingRatio", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_100021768()
{
  byte_100063738 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_1000217D8()
{
  if (qword_100063748 != -1)
  {
    sub_100031080();
  }

  if ((byte_100063750 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"FlockFirstItemResponse"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 0x3FCAFEC56D5CFAADLL;
    }

    qword_100063758 = v3;
    byte_100063750 = 1;
  }

  return *&qword_100063758;
}

void sub_100021874(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055E18);
}

void sub_1000218C4(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100021910, @"com.apple.DragUI.FlockFirstItemResponse", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_100021910()
{
  byte_100063750 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

void sub_1000221E8(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1[6])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000224C0;
    v10[3] = &unk_100054C50;
    v7 = a1[4];
    v10[4] = a1[5];
    v11 = v5;
    [v7 addAnimations:v10];
    v8 = v11;
  }

  else
  {
    v9 = a1[4];
    if (a3)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100022410;
      v12[3] = &unk_100054B50;
      v13 = v5;
      [v9 addAnimations:v12];
      v8 = v13;
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100022360;
      v14[3] = &unk_100054B50;
      v15 = v5;
      [v9 addAnimations:v14];
      v8 = v15;
    }
  }
}

void sub_100022360(uint64_t a1)
{
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v10.minimum;
  maximum = v10.maximum;
  preferred = v10.preferred;
  v8 = [_UIDragSetDownAnimation defaultSingleItemAnimationForPlatterView:*(a1 + 32)];
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048577 updateReason:v8 animations:v5, v6, v7];
}

void sub_100022410(uint64_t a1)
{
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v10.minimum;
  maximum = v10.maximum;
  preferred = v10.preferred;
  v8 = [_UIDragSetDownAnimation defaultMultiItemAnimationForPlatterView:*(a1 + 32)];
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048577 updateReason:v8 animations:v5, v6, v7];
}

void sub_1000224C0(uint64_t a1)
{
  v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v11.minimum;
  maximum = v11.maximum;
  preferred = v11.preferred;
  v5 = *(a1 + 32);
  v9 = [objc_opt_class() systemDropAnimationForView:*(a1 + 40)];
  *&v6 = minimum;
  *&v7 = maximum;
  *&v8 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048577 updateReason:v9 animations:v6, v7, v8];
}

void sub_100022570(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v9 + 1) + 8 * v6) + 16))();
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;
}

void sub_100022FC4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100024490;
  v11[3] = &unk_100055F98;
  v5 = v3;
  v12 = v5;
  [v4 enumerateObjectsUsingBlock:v11];
  v6 = [v5 subviews];
  v7 = [v6 count];
  v8 = [v4 count];
  v9 = v7 - v8;
  if (v7 > v8)
  {
    do
    {
      v10 = [v6 lastObject];
      [v10 removeFromSuperview];

      --v9;
    }

    while (v9);
  }
}

void sub_100023430(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = a2;
  v5 = [v20 clientItemViewModelForClient:*(a1 + 32)];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  if ([v5 imageDirty])
  {
    if ([v6 createImageRequest])
    {
      [*(a1 + 40) addIndex:{objc_msgSend(v20, "itemIndex")}];
    }

    v7 = [v20 currentClient];
    v8 = v7 == *(a1 + 32);
  }

  else
  {
    v8 = 0;
  }

  if ([v6 imageDirty] && !v8)
  {
    goto LABEL_14;
  }

  v10 = [v6 imageComponent];

  if (!v10 || (v11 = *(a1 + 32), [v6 imageComponent], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hidesImage"), v12, !v11))
  {
LABEL_14:
    v15 = [v20 clientItemViewModelForClient:*(a1 + 48)];
    v16 = v15;
    if (v15)
    {
      if ([v15 imageDirty])
      {
        if ([v16 createImageRequest])
        {
          [*(a1 + 56) addIndex:{objc_msgSend(v20, "itemIndex")}];
        }

        v11 = *(a1 + 48);
        v14 = 1;
LABEL_21:

        if (!v11)
        {
          goto LABEL_28;
        }

        goto LABEL_22;
      }

      v17 = [v16 imageComponent];

      if (v17)
      {
        v11 = *(a1 + 48);
        v18 = [v16 imageComponent];
        v14 = [v18 hidesImage] ^ 1;

        goto LABEL_21;
      }
    }

    v11 = 0;
    goto LABEL_28;
  }

  v14 = v13 ^ 1;
LABEL_22:
  v19 = [v20 currentClient];

  if (v19 != v11)
  {
    NSLog(@"client changed");
  }

  [v20 setCurrentClient:v11];
  if (v14)
  {
    if (++*(*(*(a1 + 64) + 8) + 24) >= 5uLL)
    {
      *a3 = 1;
    }
  }

LABEL_28:
}

void sub_100023678(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "count") + ~a2}];
  (*(*(a1 + 40) + 16))();
}

void sub_100023C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100023C6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = DRLogTarget();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_1000312F8(WeakRetained);
    }

    [WeakRetained _usePrecisionMode:WeakRetained[7]];
    v3 = WeakRetained[7];
    WeakRetained[7] = 0;

    [WeakRetained[6] cancel];
    v4 = WeakRetained[6];
    WeakRetained[6] = 0;
  }
}

id sub_100024260(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 index];

  return [v2 addIndex:v3];
}

id sub_1000242A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 index];

  return [v2 addIndex:v3];
}

BOOL sub_1000242E0(id a1, _DUIPreviewAndImageComponent *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(_DUIPreviewAndImageComponent *)a2 imageComponent:a3];
  v5 = [v4 slotID] == 0;

  return v5;
}

void sub_100024320(uint64_t a1, uint64_t a2)
{
  v5 = objc_alloc_init(_DUIPreviewAndImageComponent);
  [v5 setIndex:a2];
  v4 = [[_DUIPreviewAndImageComponentUpdate alloc] initWithPreviewAndImageComponent:v5 isFromSource:0];
  [*(a1 + 32) addObject:v4];
}

double sub_1000244C8()
{
  if (qword_100063770 != -1)
  {
    sub_1000313F4();
  }

  if ((byte_100063778 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"PrecisionModeHeuristicDelay"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 0x3FB1111111111111;
    }

    qword_100063780 = v3;
    byte_100063778 = 1;
  }

  return *&qword_100063780;
}

void sub_100024564(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100055FF8);
}

void sub_1000245B4(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100024600, @"com.apple.DragUI.PrecisionModeHeuristicDelay", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_100024600()
{
  byte_100063778 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_100024670()
{
  if (qword_100063788 != -1)
  {
    sub_100031408();
  }

  if ((byte_100063790 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"PrecisionModeHeuristicDistance"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 5.0;
    }

    qword_100063798 = *&v3;
    byte_100063790 = 1;
  }

  return *&qword_100063798;
}

void sub_100024708(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100056058);
}

void sub_100024758(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1000247A4, @"com.apple.DragUI.PrecisionModeHeuristicDistance", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_1000247A4()
{
  byte_100063790 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_100024814()
{
  if (qword_1000637A0 != -1)
  {
    sub_10003141C();
  }

  if ((byte_1000637A8 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"PrecisionModeEnterHysteresis"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 0x3FC999999999999ALL;
    }

    qword_1000637B0 = v3;
    byte_1000637A8 = 1;
  }

  return *&qword_1000637B0;
}

void sub_1000248B0(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_1000560B8);
}

void sub_100024900(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10002494C, @"com.apple.DragUI.PrecisionModeEnterHysteresis", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_10002494C()
{
  byte_1000637A8 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

double sub_1000249BC()
{
  if (qword_1000637B8 != -1)
  {
    sub_100031430();
  }

  if ((byte_1000637C0 & 1) == 0)
  {
    v0 = sub_100024B48();
    v1 = [v0 objectForKey:@"PrecisionModeExitHysteresis"];
    v2 = v1;
    if (v1)
    {
      [v1 doubleValue];
    }

    else
    {
      v3 = 0x3FC999999999999ALL;
    }

    qword_1000637C8 = v3;
    byte_1000637C0 = 1;
  }

  return *&qword_1000637C8;
}

void sub_100024A58(id a1)
{
  v1 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v1, &stru_100056118);
}

void sub_100024AA8(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100024AF4, @"com.apple.DragUI.PrecisionModeExitHysteresis", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_100024AF4()
{
  byte_1000637C0 = 0;
  v0 = sub_100024B48();
  [v0 synchronize];
}

id sub_100024B48()
{
  if (qword_1000637D8 != -1)
  {
    sub_100031444();
  }

  v1 = qword_1000637D0;

  return v1;
}

void sub_100024B8C(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.DragUI"];
  v2 = qword_1000637D0;
  qword_1000637D0 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100024C74(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1000637E0;
  qword_1000637E0 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100024DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100024DE0(uint64_t a1)
{
  v2 = DRLogTarget();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Received MDM org changed notification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateMDMName];
}

void sub_10002597C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000637F0;
  qword_1000637F0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100025B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100025BC0(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _cancelAllDragSessions];
  }
}

void sub_100025CC0(uint64_t a1)
{
  [*(*(a1 + 32) + 48) resume];
  [*(*(a1 + 32) + 56) resume];
  v2 = DRLogTarget();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Listening for source and destination connections.", v3, 2u);
  }
}

void sub_100026304(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  objc_destroyWeak((v3 - 64));
  _Unwind_Resume(a1);
}

void sub_100026348(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = DRLogTarget();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = [WeakRetained processIdentifier];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Source connection interrupted from PID %d", v3, 8u);
  }

  [WeakRetained invalidate];
}

void sub_100026408(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = DRLogTarget();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = [WeakRetained processIdentifier];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Source connection invalidated from PID %d", buf, 8u);
  }

  if (WeakRetained && v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3[3] copy];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = [v10 sourceConnection];

          if (v11 == WeakRetained)
          {
            [v10 sourceConnectionWasInvalidated];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

void sub_100026874(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  objc_destroyWeak((v3 - 64));
  _Unwind_Resume(a1);
}

void sub_1000268B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = DRLogTarget();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = [WeakRetained processIdentifier];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Destination connection interrupted from PID %d", v3, 8u);
  }

  [WeakRetained invalidate];
}

void sub_100026978(uint64_t a1)
{
  v2 = DRLogTarget();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    *buf = 67109120;
    v18 = [WeakRetained processIdentifier];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Destination connection invalidated from PID %d", buf, 8u);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v4 && v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [v5[3] copy];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11) destinationConnectionWasInvalidated:v4];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

void sub_1000275B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id location)
{
  objc_destroyWeak((v63 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000275F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pointerWatchdogTimer];

  if (v1)
  {
    [WeakRetained _pointerBeganWatchdogFired];
  }
}

void sub_100028464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak((v57 + 32));
  objc_destroyWeak((v56 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v58 - 160));
  _Unwind_Resume(a1);
}

void sub_1000284A0(uint64_t a1)
{
  v2 = DRLogTarget();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AX connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void sub_100028520(uint64_t a1)
{
  v2 = DRLogTarget();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AX connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

id sub_1000285A0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 88);
  if (*(a1 + 40))
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = &__NSArray0__struct;
  }

  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) routingPolicy];
  v5 = [v1 detachTouchesWithTouchIdentifiers:v2 session:v3 routingPolicy:v4 touchOffset:{CGPointZero.x, CGPointZero.y}];

  return v5;
}

void sub_100028618(uint64_t a1)
{
  v2 = [*(a1 + 32) itemCollection];
  v3 = [v2 items];
  v4 = [v3 count];

  v5 = [*(a1 + 40) clientSource];
  [*(a1 + 32) _initialCentroid];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*(a1 + 32) initialCentroidInSourceWindow];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *(a1 + 48);
  v19 = [*(a1 + 32) coordinateSpaceSourceLayerContext];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000287B0;
  v23[3] = &unk_100056240;
  v22 = *(a1 + 40);
  v20 = v22.i64[0];
  v24 = vextq_s8(v22, v22, 8uLL);
  v28 = v7;
  v29 = v9;
  v30 = v11;
  v25 = v5;
  v26 = *(a1 + 56);
  v31 = v4;
  v27 = *(a1 + 32);
  v32 = v13;
  v33 = v15;
  v34 = v17;
  v21 = v5;
  [v18 _getTransformForLayerContext:v19 completion:v23];
}

void sub_1000287B0(uint64_t a1, __int128 *a2)
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = [*(a1 + 32) delegate];
  v5 = [v4 sourceViewControllerForSession:*(a1 + 40)];

  if (v5)
  {
    v6 = a2[5];
    v31 = a2[4];
    v32 = v6;
    v7 = a2[7];
    v33 = a2[6];
    v34 = v7;
    v8 = a2[1];
    v27 = *a2;
    v28 = v8;
    v9 = a2[3];
    v29 = a2[2];
    v30 = v9;
    [v5 transformToLocalWindowForCoordinateSpaceTransformToDisplay:&v27];
  }

  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  CAPointApplyTransform();
  v15 = v13 / v14;
  v17 = v16 / v14;
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = *(a1 + 96);
  v21 = *(a1 + 56);
  v23 = v22 / v14;
  v24 = [*(a1 + 64) coordinateSpaceSourceLayerContext];
  v25 = [v24 contextID];
  v26 = [*(a1 + 64) preferredPreviewIndexes];
  [v5 addSession:v18 withSourceClient:v19 touchIDs:v21 itemCount:v20 centroid:v25 sourceContextID:v26 initialCentroidInSourceContext:v15 preferredPreviewIndexes:{v17, v23, *(a1 + 104), *(a1 + 112), *(a1 + 120)}];

  [*(a1 + 32) configurePortalViewsForDragSessionOriginatingFromViewController:v5];
}

void sub_1000293CC(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) outsideAppSourceOperationMask];
  v5 = [*(a1 + 32) sourceConnection];
  v6 = [v5 processIdentifier];
  v7 = *(a1 + 56);

  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == v7;
  }

  v9 = !v8;
  v10 = DRLogTarget();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!a2 || (v9 & 1) != 0)
  {
    if (v11)
    {
      v18 = *(a1 + 56);
      v19 = 67109888;
      v20 = v18;
      v21 = 1024;
      *v22 = a2;
      *&v22[4] = 1024;
      *&v22[6] = v4 == 0;
      v23 = 1024;
      v24 = v6 != v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Replying to destination PID %d sawFirstDragEvent with no session: receivedMask %d, maskIsNone %d, isOtherApp %d", &v19, 0x1Au);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48));
  }

  else
  {
    if (v11)
    {
      v12 = *(a1 + 56);
      v13 = *(a1 + 32);
      v19 = 67109378;
      v20 = v12;
      v21 = 2112;
      *v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Replying to destination PID %d sawFirstDragEvent with session %@", &v19, 0x12u);
    }

    v14 = [*(a1 + 32) originatedFromAccessibility];
    if ([*(a1 + 32) originatedFromPointer])
    {
      v14 |= 2uLL;
    }

    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    v17 = [v16 itemCollectionForDestination:*(a1 + 40)];
    (*(v15 + 16))(v15, v16, v17, [*(a1 + 32) outsideAppSourceOperationMask], v14);
  }
}

void sub_100029B48(uint64_t a1, __int128 *a2)
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = a2[5];
    v15 = a2[4];
    v16 = v5;
    v6 = a2[7];
    v17 = a2[6];
    v18 = v6;
    v7 = a2[1];
    v11 = *a2;
    v12 = v7;
    v8 = a2[3];
    v13 = a2[2];
    v14 = v8;
    [v4 transformToLocalWindowForCoordinateSpaceTransformToDisplay:&v11];
  }

  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v18 = v26;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  v14 = v22;
  CA_CGPointApplyTransform();
  [*(a1 + 40) setOriginalCenter:?];
  dispatch_group_leave(*(a1 + 48));
}

void sub_100029C0C(uint64_t a1)
{
  v2 = [*(a1 + 32) viewModelForSessionID:{objc_msgSend(*(a1 + 40), "identifier")}];
  v11 = v2;
  if (*(a1 + 48))
  {
    [*(a1 + 32) fenceForSession:objc_msgSend(*(a1 + 40) withHandle:{"identifier"), *(a1 + 48)}];
    v2 = v11;
  }

  v3 = [v2 clientModelForClient:*(a1 + 56)];
  [v11 takePreviewAndImageComponents:*(a1 + 64) forClient:v3];
  v4 = [*(a1 + 72) delegate];
  v5 = [*(a1 + 32) view];
  v6 = [v5 window];
  v7 = [v4 virtualHIDServiceForWindow:v6];

  v8 = [*(a1 + 40) originatedFromAccessibility];
  v9 = *(a1 + 40);
  if (v8)
  {
    [v11 initialAccessibilityCentroid];
    [v9 beginAccessibilityDragAtLocationIfNeeded:v7 hidService:?];
  }

  else if ([*(a1 + 40) originatedFromPointer])
  {
    v10 = *(a1 + 40);
    [v11 centroid];
    [v10 beginPointerDragAtLocationIfNeeded:v7 hidService:?];
  }
}

void sub_100029E20(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v5 = [v2 sourceViewControllerForSession:*(a1 + 40)];

  v3 = [v5 viewModelForSessionID:{objc_msgSend(*(a1 + 40), "identifier")}];
  v4 = [v3 clientModelForClient:*(a1 + 48)];
  [v3 invalidateImageForClient:v4 itemIndex:*(a1 + 56)];
}

void sub_100029F6C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v14 = [v2 sourceViewControllerForSession:*(a1 + 40)];

  v3 = [v14 viewModelForSessionID:{objc_msgSend(*(a1 + 40), "identifier")}];
  v4 = [v3 itemModels];
  [v4 count];

  if (*(a1 + 48))
  {
    v5 = 0;
    do
    {
      [v3 addItem];
      v6 = [*(a1 + 32) delegate];
      v7 = [v14 view];
      v8 = [v7 window];
      v9 = [v6 virtualHIDServiceForWindow:v8];

      v10 = [*(a1 + 40) originatedFromAccessibility];
      v11 = *(a1 + 40);
      if (v10)
      {
        [v3 initialAccessibilityCentroid];
        [v11 beginAccessibilityDragAtLocationIfNeeded:v9 hidService:?];
      }

      else if ([*(a1 + 40) originatedFromPointer])
      {
        v12 = *(a1 + 40);
        [v3 centroid];
        [v12 beginPointerDragAtLocationIfNeeded:v9 hidService:?];
      }

      ++v5;
    }

    while (v5 < *(a1 + 48));
  }

  v13 = [v3 delegate];
  [v13 viewModelInvalidated:v3];
}

void sub_10002A1DC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v5 = [v2 sourceViewControllerForSession:*(a1 + 40)];

  v3 = [v5 viewModelForSessionID:{objc_msgSend(*(a1 + 40), "identifier")}];
  v4 = [v3 clientModelForClient:*(a1 + 48)];
  [v3 setPotentialDrop:*(a1 + 56)];
  [v3 setPotentialDropDestinationClient:v4];
}

void sub_10002A328(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v9 = [v2 sourceViewControllerForSession:*(a1 + 40)];

  v3 = [v9 viewModelForSessionID:{objc_msgSend(*(a1 + 40), "identifier")}];
  v4 = objc_opt_new();
  [v3 setPotentialDrop:v4];

  v5 = [v3 potentialDrop];
  [v5 setPrefersFullSizePreview:1];

  v6 = [v3 potentialDropDestinationClient];
  v7 = [v3 itemModels];
  if ([v7 count])
  {
    v8 = 0;
    do
    {
      [v3 invalidateImageForClient:v6 itemIndex:v8++];
    }

    while (v8 < [v7 count]);
  }

  [v3 setPotentialDropDestinationClient:0];
}

void sub_10002A650(uint64_t a1, _OWORD *a2)
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = [*(a1 + 32) delegate];
  v5 = [v4 sourceViewControllerForSession:*(a1 + 40)];

  v6 = [*(a1 + 32) delegate];
  v7 = [v6 targetViewControllerForSession:*(a1 + 40)];

  v8 = [v7 view];
  v9 = [v8 _screen];

  v10 = *&CATransform3DIdentity.m33;
  *&v32.m31 = *&CATransform3DIdentity.m31;
  *&v32.m33 = v10;
  v11 = *&CATransform3DIdentity.m43;
  *&v32.m41 = *&CATransform3DIdentity.m41;
  *&v32.m43 = v11;
  v12 = *&CATransform3DIdentity.m13;
  *&v32.m11 = *&CATransform3DIdentity.m11;
  *&v32.m13 = v12;
  v13 = *&CATransform3DIdentity.m23;
  *&v32.m21 = *&CATransform3DIdentity.m21;
  *&v32.m23 = v13;
  v14 = a2[5];
  *&v31.m31 = a2[4];
  *&v31.m33 = v14;
  v15 = a2[7];
  *&v31.m41 = a2[6];
  *&v31.m43 = v15;
  v16 = a2[1];
  *&v31.m11 = *a2;
  *&v31.m13 = v16;
  v17 = a2[3];
  *&v31.m21 = a2[2];
  *&v31.m23 = v17;
  if (!CATransform3DIsIdentity(&v31))
  {
    memset(&v31, 0, sizeof(v31));
    if (v7)
    {
      v18 = a2[5];
      *&v30.m31 = a2[4];
      *&v30.m33 = v18;
      v19 = a2[7];
      *&v30.m41 = a2[6];
      *&v30.m43 = v19;
      v20 = a2[1];
      *&v30.m11 = *a2;
      *&v30.m13 = v20;
      v21 = a2[3];
      *&v30.m21 = a2[2];
      *&v30.m23 = v21;
      [v7 transformToLocalWindowForCoordinateSpaceTransformToDisplay:&v30];
    }

    v30 = v31;
    CATransform3DInvert(&v32, &v30);
  }

  v22 = *(a1 + 64);
  v31 = v32;
  v23 = [v5 visibleDroppedItemsForSession:v22 transform:&v31 targetScreen:v9];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10002A890;
  v27[3] = &unk_100056328;
  v24 = *(a1 + 48);
  v25 = *(a1 + 56);
  v28 = v23;
  v29 = v25;
  v26 = v23;
  dispatch_async(v24, v27);
}

void sub_10002A9C4(uint64_t a1, _OWORD *a2)
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = [*(a1 + 32) delegate];
  v5 = [v4 sourceViewControllerForSession:*(a1 + 40)];

  v6 = [*(a1 + 32) delegate];
  v7 = [v6 targetViewControllerForSession:*(a1 + 40)];

  if ([*(a1 + 40) state] == 3)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  [v9 configureSetDownAnimationPortalForLayerContext:*(a1 + 48) sessionIdentifier:*(a1 + 72)];
  v10 = [v9 view];
  v11 = [v10 _screen];

  v12 = 0uLL;
  memset(&v30, 0, sizeof(v30));
  if (v9)
  {
    v13 = a2[5];
    *&v29.m31 = a2[4];
    *&v29.m33 = v13;
    v14 = a2[7];
    *&v29.m41 = a2[6];
    *&v29.m43 = v14;
    v15 = a2[1];
    *&v29.m11 = *a2;
    *&v29.m13 = v15;
    v16 = a2[3];
    *&v29.m21 = a2[2];
    *&v29.m23 = v16;
    [v9 transformToLocalWindowForCoordinateSpaceTransformToDisplay:&v29];
    v12 = 0uLL;
  }

  v28 = v30;
  *&v29.m41 = v12;
  *&v29.m43 = v12;
  *&v29.m31 = v12;
  *&v29.m33 = v12;
  *&v29.m21 = v12;
  *&v29.m23 = v12;
  *&v29.m11 = v12;
  *&v29.m13 = v12;
  CATransform3DInvert(&v29, &v28);
  v17 = *(a1 + 72);
  v28 = v29;
  v18 = [v5 visibleDroppedItemsForSession:v17 transform:&v28 targetScreen:v11];
  v19 = +[UIScene _synchronizedDrawingFence];
  [v5 removeSession:*(a1 + 72) immediately:1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AC3C;
  block[3] = &unk_100056378;
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v26 = v19;
  v27 = v21;
  v25 = v18;
  v22 = v19;
  v23 = v18;
  dispatch_async(v20, block);
}

void sub_10002AD94(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 sourceViewControllerForSession:*(a1 + 40)];

  [v3 moveSessionWithID:objc_msgSend(*(a1 + 40) toLocation:{"identifier"), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

void sub_10002AEC4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 sourceViewControllerForSession:*(a1 + 40)];

  [v3 animateOutVisibleItemsForSession:*(a1 + 56) withOperation:*(a1 + 48)];
}

void sub_10002AFD8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 sourceViewControllerForSession:*(a1 + 40)];

  [v3 removeSession:*(a1 + 48) immediately:0];
}

void sub_10002B118(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 sourceViewControllerForSession:*(a1 + 40)];

  [v3 removeSession:*(a1 + 48) immediately:1];
  if (([v3 hasActiveDragSession] & 1) == 0)
  {
    [*(a1 + 32) teardownPortalViewsForDragSessionOriginatingFromViewController:v3];
  }
}

void sub_10002B494(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DRLogTarget();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100031744(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Session successfully set keyboard enabled", v6, 2u);
  }
}

void sub_10002B538(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DRLogTarget();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000317B0(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Session successfully set keyboard disabled", v6, 2u);
  }
}

void sub_10002B9E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DRLogTarget();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    [v3 locationInView:*(a1 + 32)];
    v5 = NSStringFromCGPoint(v11);
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "trackedTouchesBegan: pointer touch at %@", buf, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = *(v6 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BB0C;
  block[3] = &unk_100054B50;
  block[4] = v6;
  dispatch_async(v7, block);
}

void sub_10002BB0C(uint64_t a1)
{
  [*(a1 + 32) _cancelPointerBeganWatchdog];
  v2 = [*(a1 + 32) xpcQueue_pointerDragSessionForEvents];
  [v2 beganPointerDrag];
}

void sub_10002BCD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DRLogTarget();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "trackedTouchesMoved: pointer touch", buf, 2u);
  }

  v5 = [*(a1 + 32) view];
  [v3 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [*(a1 + 40) delegate];
  v11 = [v10 virtualHIDServiceForWindow:*(a1 + 48)];

  v12 = *(a1 + 40);
  v13 = *(v12 + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002BE1C;
  v15[3] = &unk_100055490;
  v17 = v7;
  v18 = v9;
  v15[4] = v12;
  v16 = v11;
  v14 = v11;
  dispatch_async(v13, v15);
}

void sub_10002BE1C(uint64_t a1)
{
  [*(a1 + 32) _cancelPointerBeganWatchdog];
  v2 = [*(a1 + 32) xpcQueue_pointerDragSessionForEvents];
  [v2 movePointerDragToPoint:*(a1 + 40) hidService:{*(a1 + 48), *(a1 + 56), 0.0}];
}

void sub_10002C3A8(uint64_t a1)
{
  v2 = DRLogTarget();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "trackedTouchesEnded: pointer touch", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C46C;
  block[3] = &unk_100054B50;
  block[4] = v3;
  dispatch_async(v4, block);
}

void sub_10002C46C(uint64_t a1)
{
  v1 = [*(a1 + 32) xpcQueue_pointerDragSessionForEvents];
  [v1 endPointerDrag];
}

void sub_10002C4B0(uint64_t a1)
{
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [*(*(a1 + 32) + 24) copy];
  v26 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v26)
  {
    v25 = *v36;
    do
    {
      v2 = 0;
      do
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v35 + 1) + 8 * v2);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v4 = *(a1 + 40);
        v5 = [v4 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v32;
          do
          {
            v8 = 0;
            do
            {
              if (*v32 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v31 + 1) + 8 * v8);
              v10 = [v3 touchIDs];
              v11 = [v10 containsObject:v9];

              if (v11)
              {
                v12 = [*(a1 + 48) objectForKeyedSubscript:v9];
                v13 = [*(a1 + 56) objectForKeyedSubscript:v9];
                [v3 touchEndedWithID:v9 contextID:v12 pid:v13 likelyMovingOffscreen:0];
              }

              v8 = v8 + 1;
            }

            while (v6 != v8);
            v6 = [v4 countByEnumeratingWithState:&v31 objects:v40 count:16];
          }

          while (v6);
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v14 = *(a1 + 64);
        v15 = [v14 countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v28;
          do
          {
            v18 = 0;
            do
            {
              if (*v28 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v27 + 1) + 8 * v18);
              v20 = [v3 touchIDs];
              v21 = [v20 containsObject:v19];

              if (v21)
              {
                v22 = [*(a1 + 48) objectForKeyedSubscript:v19];
                v23 = [*(a1 + 56) objectForKeyedSubscript:v19];
                [v3 touchEndedWithID:v19 contextID:v22 pid:v23 likelyMovingOffscreen:1];
              }

              v18 = v18 + 1;
            }

            while (v16 != v18);
            v16 = [v14 countByEnumeratingWithState:&v27 objects:v39 count:16];
          }

          while (v16);
        }

        v2 = v2 + 1;
      }

      while (v2 != v26);
      v26 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v26);
  }
}

void sub_10002CAE4(uint64_t a1)
{
  v2 = DRLogTarget();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "trackedTouchesCancelled: pointer touch", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002CBA8;
  block[3] = &unk_100054B50;
  block[4] = v3;
  dispatch_async(v4, block);
}

void sub_10002CBA8(uint64_t a1)
{
  v1 = [*(a1 + 32) xpcQueue_pointerDragSessionForEvents];
  [v1 cancelPointerDrag];
}

void sub_10002CBEC(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [*(*(a1 + 32) + 24) copy];
  v1 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v1)
  {
    v2 = v1;
    v14 = *v21;
    do
    {
      v3 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v20 + 1) + 8 * v3);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v5 = *(a1 + 40);
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v17;
          do
          {
            v9 = 0;
            do
            {
              if (*v17 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v16 + 1) + 8 * v9);
              v11 = [v4 touchIDs];
              v12 = [v11 containsObject:v10];

              if (v12)
              {
                [v4 touchCancelledWithID:v10];
              }

              v9 = v9 + 1;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v7);
        }

        v3 = v3 + 1;
      }

      while (v3 != v2);
      v2 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v2);
  }
}

void sub_10002CE28(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v1 = [*(*(a1 + 32) + 24) copy];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) cancelDrag];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_10002D0FC(uint64_t a1)
{
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(*(a1 + 32) + 24) copy];
  v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v14)
  {
    v13 = *v20;
    do
    {
      v2 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v19 + 1) + 8 * v2);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v4 = *(a1 + 40);
        v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v16;
          do
          {
            v8 = 0;
            do
            {
              if (*v16 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v15 + 1) + 8 * v8);
              v10 = [v3 touchIDs];
              v11 = [v10 containsObject:v9];

              if (v11)
              {
                (*(*(a1 + 48) + 16))();
              }

              v8 = v8 + 1;
            }

            while (v6 != v8);
            v6 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v6);
        }

        v2 = v2 + 1;
      }

      while (v2 != v14);
      v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v14);
  }
}

void sub_10002D788(uint64_t a1)
{
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = [v2 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v34;
    y = CGPointZero.y;
    *&v4 = 138412546;
    v30 = v4;
    v31 = *v34;
    v32 = v2;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = [v9 identifier];
        if ([*(a1 + 40) containsIndex:v10])
        {
          v11 = *(a1 + 48);
          v12 = [NSNumber numberWithUnsignedInt:v10];
          v13 = [v11 objectForKey:v12];

          if ([v13 touchesCount] <= 1 && (objc_msgSend(v13, "canAddManipulatedTouch") & 1) == 0)
          {
            v14 = *(a1 + 56);
            v15 = [NSNumber numberWithUnsignedInt:v10];
            v16 = [v14 objectForKey:v15];

            v17 = [v13 precisionMode];
            x = CGPointZero.x;
            v19 = y;
            if (v17)
            {
              v20 = [v13 precisionMode];
              [v20 touchOffset];
              x = v21;
              v19 = v22;
            }

            v23 = DRLogTarget();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = v30;
              v39 = v16;
              v40 = 2048;
              v41 = v10;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Detaching touch ID %@ for session %lu", buf, 0x16u);
            }

            [v9 setInteractionWindow:*(a1 + 64)];
            v24 = *(*(a1 + 32) + 88);
            v37 = v16;
            v25 = [NSArray arrayWithObjects:&v37 count:1];
            v26 = [v9 routingPolicy];
            LODWORD(v24) = [v24 detachTouchesWithTouchIdentifiers:v25 session:v9 routingPolicy:v26 touchOffset:{x, v19}];

            if (v24)
            {
              [v9 addTouchID:v16];
              if ([v13 usesSynthesizedTouch])
              {
                v27 = [*(a1 + 64) windowScene];
                v28 = sub_100001F60(v27);

                [v9 setInteractionWindow:*(a1 + 64)];
                [v9 setDisplayIdentifierForSynthesizedTouch:v28];
                [v13 setDisplayIdentifierForSynthesizedTouch:v28];
              }

              else
              {
                [v13 addTouchID:v16];
              }

              v2 = v32;
              [*(a1 + 32) xpcQueue_validateTouchStreamForDragSession:v9];
            }

            else
            {
              v29 = DRLogTarget();
              v2 = v32;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = v30;
                v39 = v16;
                v40 = 2048;
                v41 = v10;
                _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "FAILED to detach touch ID %@ for session %lu", buf, 0x16u);
              }
            }

            v6 = v31;
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v5);
  }
}

void sub_10002DE20(uint64_t a1)
{
  memset(&v10, 0, sizeof(v10));
  v2 = +[BKSTouchEventService sharedInstance];
  v3 = v2;
  if (v2)
  {
    [v2 transformForDisplayUUID:*(a1 + 32) layerID:*(a1 + 48) contextID:*(a1 + 56)];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  v9 = v10;
  if (CATransform3DIsIdentity(&v9))
  {
    v4 = DRLogTarget();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000318B0();
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DFA4;
  block[3] = &unk_1000564F0;
  v5 = *(a1 + 40);
  v8 = v10;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_10002DFA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v3 = *(a1 + 120);
  v8[4] = *(a1 + 104);
  v8[5] = v3;
  v4 = *(a1 + 152);
  v8[6] = *(a1 + 136);
  v8[7] = v4;
  v5 = *(a1 + 56);
  v8[0] = *(a1 + 40);
  v8[1] = v5;
  v6 = *(a1 + 88);
  v8[2] = *(a1 + 72);
  v8[3] = v6;
  return v2(v1, v8);
}

uint64_t sub_10002E008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v10 = *&CATransform3DIdentity.m33;
  v15[4] = *&CATransform3DIdentity.m31;
  v15[5] = v10;
  v11 = *&CATransform3DIdentity.m43;
  v15[6] = *&CATransform3DIdentity.m41;
  v15[7] = v11;
  v12 = *&CATransform3DIdentity.m13;
  v15[0] = *&CATransform3DIdentity.m11;
  v15[1] = v12;
  v13 = *&CATransform3DIdentity.m23;
  v15[2] = *&CATransform3DIdentity.m21;
  v15[3] = v13;
  return v9(v8, v15, a3, a4, a5, a6, a7, a8);
}

void sub_10002E318(uint64_t a1)
{
  v2 = [NSDictionary dictionaryWithObject:kCFBooleanTrue forKey:@"ExtendedDeviceLockState"];
  v3 = MKBGetDeviceLockState();
  v5 = v3 == 6 || (v3 - 1) < 2;

  v6 = *(a1 + 32);
  if (*(v6 + 24) != v5)
  {
    *(v6 + 24) = v5;
    v7 = *(*(*(a1 + 32) + 16) + 16);

    v7();
  }
}

void sub_10002E5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10002E60C(uint64_t a1)
{
  v2 = DRLogTarget();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000318F0(v2);
  }

  result = objc_loadWeakRetained((a1 + 32));
  if (result)
  {
    [result setConnection:0];
    v4 = DRLogTarget();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100031934(v4);
    }

    exit(1);
  }

  return result;
}

void sub_10002E860(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DRLogTarget();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "DRSystemConnection got error %@", &v5, 0xCu);
  }

  [*(*(a1 + 32) + 8) invalidate];
}

void sub_10002E924(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) updateRoutingPolicy:v3];
    v4 = DRLogTarget();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "DRSystemConnection received system routing policy (%@)", &v5, 0xCu);
    }
  }
}

void sub_10002EB54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DRLogTarget();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "DRSystemConnection got error %@", &v5, 0xCu);
  }

  [*(*(a1 + 32) + 8) invalidate];
}

id sub_10002EC40(void *a1)
{
  sub_10002EFDC(a1);
  v3 = v2;
  v4 = [objc_allocWithZone(BKSHIDTouchRoutingPolicy) init];
  v5 = *(v3 + 16);
  if (v5)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = 32;
    do
    {
      [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v3 + v6)];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v6 += 4;
      --v5;
    }

    while (v5);
  }

  sub_10002F2FC();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setContextIDsToAlwaysSendTouches:isa];

  v9 = [v1 contextIDsToExcludeFromHitTesting];
  if (!v9)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v4 setContextIDsToExcludeFromHitTesting:v9];

  [v4 setAvoidHitTesting:{objc_msgSend(v1, "isHitTestingDisabled")}];
  return v4;
}

id sub_10002EF84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DRTouchDetacher();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002EFDC(void *a1)
{
  v3 = [v1 contextIDsToAlwaysSendTouchesByDisplayIdentifier];
  sub_10002F348(&qword_100063498, &qword_10003DF78);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = [a1 interactionWindow];
    if (v6 || (v6 = [a1 sourceInteractionWindow]) != 0)
    {
      v7 = v6;
      v8 = [v6 _screen];
      if (!v8)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v9 = v8;
      v10 = [v8 displayConfiguration];

      if (!v10)
      {
LABEL_29:
        __break(1u);
        return;
      }

      v11 = [v10 hardwareIdentifier];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      if (v11)
      {
      }

      v15 = [v1 contextIDsToAlwaysSendTouchesByDisplayIdentifier];
      v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v16 + 16))
      {
        v17 = sub_10002F4B4(v12, v14);
        v19 = v18;

        if (v19)
        {
          v20 = *(*(v16 + 56) + 8 * v17);

          if (v20 >> 62)
          {
            v21 = _CocoaArrayWrapper.endIndex.getter();
            if (v21)
            {
              goto LABEL_12;
            }
          }

          else
          {
            v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v21)
            {
LABEL_12:
              v28 = v7;
              sub_10002F390(0, v21 & ~(v21 >> 63), 0);
              if ((v21 & 0x8000000000000000) == 0)
              {
                for (i = 0; i != v21; ++i)
                {
                  if ((v20 & 0xC000000000000001) != 0)
                  {
                    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v23 = *(v20 + 8 * i + 32);
                  }

                  v24 = v23;
                  v25 = [v23 unsignedIntValue];

                  v27 = *(&_swiftEmptyArrayStorage + 2);
                  v26 = *(&_swiftEmptyArrayStorage + 3);
                  if (v27 >= v26 >> 1)
                  {
                    sub_10002F390((v26 > 1), v27 + 1, 1);
                  }

                  *(&_swiftEmptyArrayStorage + 2) = v27 + 1;
                  *(&_swiftEmptyArrayStorage + v27 + 8) = v25;
                }

                goto LABEL_25;
              }

              __break(1u);
              goto LABEL_28;
            }
          }

LABEL_25:

          return;
        }
      }

      else
      {
      }
    }
  }
}

unint64_t sub_10002F2FC()
{
  result = qword_100063490;
  if (!qword_100063490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100063490);
  }

  return result;
}

uint64_t sub_10002F348(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *sub_10002F390(char *a1, int64_t a2, char a3)
{
  result = sub_10002F3B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002F3B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002F348(&qword_1000634A0, &unk_10003DF80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unint64_t sub_10002F4B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10002F530(a1, a2, v6);
}

unint64_t sub_10002F530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10002F5E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      [objc_allocWithZone(NSNumber) initWithUnsignedInt:v6];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  sub_10002F2FC();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 identifier];
  v9 = sub_10002EC40(a2);
  v10 = BKSHIDEventDigitizerDetachTouches();

  return v10;
}

void sub_10002F768(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "WARNING: Using process name %{public}@ as bundle ID.", &v3, 0xCu);
}

void sub_10002F7F8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  sub_1000057EC();
  sub_100005804(&_mh_execute_header, v2, v3, "DRDragMonitorConnection for %@ got error %@");
}

void sub_10002F8A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = +[NSUUID UUID];
    v10 = [v9 UUIDString];
    v11 = *(a1 + 8);
    *(a1 + 8) = v10;

    objc_storeStrong((a1 + 24), a4);
    v12 = objc_opt_new();
    v13 = *(a1 + 16);
    *(a1 + 16) = v12;

    v14 = objc_alloc_init(NSMutableArray);
    v15 = [a1 authorizationReplyBlock];

    v16 = [[PLPillContentItem alloc] initWithText:v23 style:1];
    [v14 addObject:v16];

    if (v15)
    {
      v17 = [PLPillContentItem alloc];
      v18 = [a1 authorizationDecisionView];
      v19 = [v17 initWithText:0 style:2 accessoryView:v18];
      [v14 addObject:v19];
    }

    else
    {
      if (v7)
      {
        v20 = [[PLPillContentItem alloc] initWithText:v7 style:2];
        [v14 addObject:v20];
      }

      v21 = [a1 authorizationReplyBlock];

      if (v21)
      {
        v22 = [a1 authorizationReplyBlock];
        v22[2](v22, 1);

        [a1 setAuthorizationReplyBlock:0];
      }
    }

    [*(a1 + 16) setCenterContentItems:v14];
  }
}

void sub_10002FAB4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_100004A98(a1);
  v9 = 2.0;
  if (v8)
  {
    v9 = 2.5;
  }

  *(a2 + 32) = v9;
  v10 = sub_1000049EC(a1);
  *a4 = v10;
  v11 = sub_100004980();
  sub_10002F8A4(a2, v11, v10, a3);
}

void sub_10002FB40(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not post paste announcement: %{public}@", &v2, 0xCu);
}

void sub_10002FBB8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not obtain layout for paste announcement: %{public}@", &v2, 0xCu);
}

void sub_10002FC44(id *a1)
{
  v6 = [*a1 fileURL];
  sub_10000B6D4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002FCD8(uint64_t a1)
{
  v6 = [*(a1 + 32) url];
  sub_10000B6D4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002FD84(id *a1, uint64_t *a2)
{
  v3 = [*a1 url];
  v4 = *a2;
  v5 = __error();
  strerror(*v5);
  sub_10000B6D4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_10002FF64(void *a1, NSObject *a2)
{
  [a1 originatorDataOwner];
  v3 = _UIDataOwnerDescription();
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Setting source data ownership: %@", &v4, 0xCu);
}

void sub_100030170()
{
  sub_10001F630();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000301AC(uint64_t a1, unint64_t *a2, NSObject *a3)
{
  v5 = sub_100016F14(*a2);
  v6 = 134218242;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Session %p: Deallocated in non-terminal state %@", &v6, 0x16u);
}

void sub_100030288()
{
  sub_10001F63C();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000302F8(uint64_t *a1)
{
  v1 = *a1;
  sub_10001F648();
  sub_10001F624();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003036C()
{
  sub_10001F63C();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000303DC()
{
  sub_10001F630();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030418()
{
  sub_10001F630();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030454(void *a1)
{
  [a1 processIdentifier];
  sub_10000B6D4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000304E8()
{
  sub_10001F63C();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030558()
{
  v0 = +[NSXPCConnection currentConnection];
  [v0 processIdentifier];
  sub_10000B6D4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000305F4()
{
  sub_10001F63C();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030664(void *a1, int *a2)
{
  [a1 processIdentifier];
  v8 = *a2;
  sub_10000B6D4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_100030700()
{
  sub_10001F630();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003073C()
{
  sub_10001F63C();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000307AC(uint64_t a1)
{
  sub_10001F654(a1, __stack_chk_guard);
  sub_1000057EC();
  sub_100005804(&_mh_execute_header, v1, v2, "Session %@: received error instead of reply from destination when performing drop: %@");
}

void sub_10003083C(uint64_t *a1)
{
  v1 = *a1;
  sub_10001F648();
  sub_10001F624();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000308B0()
{
  sub_10001F63C();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030920()
{
  sub_10001F63C();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030990()
{
  sub_10001F630();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030A40(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 56);
  sub_10001F648();
  sub_10001F624();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100030AC4(uint64_t a1)
{
  sub_10001F654(a1, __stack_chk_guard);
  sub_1000057EC();
  sub_100005804(&_mh_execute_header, v1, v2, "System session %@ - Received error attempting to load item %@");
}

void sub_100030B2C(uint64_t a1)
{
  sub_10001F654(a1, __stack_chk_guard);
  sub_1000057EC();
  sub_100005804(&_mh_execute_header, v1, v2, "System session %@ - Received error attempting to load file representation for item %@");
}

void sub_100030B94(uint64_t a1)
{
  sub_10001F654(a1, __stack_chk_guard);
  sub_10001F648();
  sub_10001F624();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100030C04(uint64_t a1)
{
  sub_10001F654(a1, __stack_chk_guard);
  sub_1000057EC();
  sub_100005804(&_mh_execute_header, v1, v2, "System session %@ - Received error attempting to load user activity %@");
}

void sub_100030C6C(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_1000057EC();
  sub_100005804(&_mh_execute_header, v2, v3, "System session %@ - Received error attempting to serialize user activity %@");
}

void sub_100030CD8()
{
  sub_10001F630();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030D6C()
{
  sub_10001F630();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030DA8(uint64_t a1)
{
  [*(a1 + 104) count];
  sub_10001F63C();
  sub_10000B6D4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100030E54()
{
  sub_10001F630();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030E90(uint64_t a1)
{
  sub_10001F654(a1, __stack_chk_guard);
  v7 = *(v1 + 208);
  v8 = *(v1 + 202);
  sub_10001F624();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100030F18()
{
  sub_10001F630();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000311F8(uint64_t a1)
{
  v6 = *(a1 + 64);
  sub_100024B3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100031270(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "_updatePrecisionMode from %@ to %@, no change, removing pending timer", &v3, 0x16u);
}

void sub_1000312F8(uint64_t a1)
{
  v6 = *(a1 + 56);
  sub_100024B3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100031370(uint64_t *a1)
{
  v6 = *a1;
  sub_100024B3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10003146C()
{
  sub_10001F63C();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000314DC()
{
  sub_10001F63C();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003154C()
{
  sub_10001F63C();
  sub_10001F624();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000315BC(uint64_t a1, int a2, NSObject *a3)
{
  v5 = [*(a1 + 64) systemProcessIdentifier];
  v6[0] = 67109376;
  v6[1] = a2;
  v7 = 1024;
  v8 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Destination PID (%d) claims to be policy driven, but is not the system connection PID (%d)", v6, 0xEu);
}

void sub_100031744(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000057EC();
  sub_100005804(&_mh_execute_header, v2, v3, "Session %@ failed to set keyboard enabled: %@");
}

void sub_1000317B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000057EC();
  sub_100005804(&_mh_execute_header, v2, v3, "Session %@ failed to set keyboard disabled: %@");
}

void sub_10003181C(void *a1, NSObject *a2)
{
  v3 = [a1 systemShellHostingSpaceIdentifier];
  sub_10001F63C();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to locate a display correspending to system shell hosting space identifier %@", v4, 0xCu);
}