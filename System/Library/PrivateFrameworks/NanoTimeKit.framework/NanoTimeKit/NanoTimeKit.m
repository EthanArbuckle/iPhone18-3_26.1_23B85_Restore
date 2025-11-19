void sub_1000017A8(id a1)
{
  qword_100066B38 = +[NSMutableDictionary dictionary];

  _objc_release_x1();
}

void sub_100001F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001F28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInvalidation];
}

void sub_10000207C(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setExportedObject:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  [*(*(a1 + 32) + 24) removeObserver:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = *(*(a1 + 32) + 32);
  if (v6)
  {
    (*(v6 + 16))();
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;
  }
}

void sub_1000023B4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NTKFace faceWithInstanceDescriptor:*(a1 + 32)];
  [*(*(a1 + 40) + 24) updateSnapshotForFace:v3];

  objc_autoreleasePoolPop(v2);
}

void sub_1000028B4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NTKFace faceWithInstanceDescriptor:a1[4]];
  [*(a1[5] + 24) snapshotFace:v3 options:a1[6] completion:a1[7]];

  objc_autoreleasePoolPop(v2);
}

void sub_100002B70(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    v2 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = *(a1 + 40);
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ faceSnapshotChangedForKey:%@", &v8, 0x16u);
    }

    v7 = [*(*(a1 + 32) + 8) remoteObjectProxy];
    [v7 faceSnapshotChangedForKey:*(a1 + 40)];
  }
}

void sub_100002D24(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.facesnapshotclient.busy");
}

uint64_t sub_100003004(uint64_t a1)
{
  qword_100066B48 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100003220(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [LSApplicationProxy applicationProxyForIdentifier:v3];
  v5 = [v4 applicationType];
  v6 = [v5 isEqualToString:LSSystemApplicationType];

  if ((v6 & 1) == 0)
  {
    v12 = 0;
    v7 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v12];
    v8 = v12;
    if (v7)
    {
      v9 = [INAppInfo appInfoWithApplicationRecord:v7];
      v10 = [v9 supportedActionsByExtensions];
      v11 = [v10 count];

      if (v11)
      {
        [*(a1 + 32) addObject:v3];
      }
    }

    else
    {
      v9 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10003DCC0(v3, v8, v9);
      }
    }
  }
}

id sub_100003500(uint64_t a1)
{
  [*(a1 + 32) queue_buildInitialSetOfIdentifiersIfNeeded];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v11 + 1) + 8 * v6) bundleIdentifier];
        [*(*(a1 + 32) + 16) addObject:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "applicationsDidInstall will rewrite available data sources to NPS", v10, 2u);
  }

  return [*(a1 + 32) queue_updateDeviceDataSourcesInNanoPreferences];
}

id sub_10000370C(uint64_t a1)
{
  [*(a1 + 32) queue_buildInitialSetOfIdentifiersIfNeeded];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v11 + 1) + 8 * v6) bundleIdentifier];
        [*(*(a1 + 32) + 16) removeObject:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "applicationsDidUninstall will rewrite available data sources to NPS", v10, 2u);
  }

  return [*(a1 + 32) queue_updateDeviceDataSourcesInNanoPreferences];
}

void sub_1000038F0(id a1)
{
  v1 = [NSXPCListener alloc];
  v2 = [v1 initWithMachServiceName:NTKCollectionMachService];
  v3 = qword_100066B58;
  qword_100066B58 = v2;

  v4 = qword_100066B58;
  v5 = +[NTKDCollectionCoordinator sharedInstance];
  [v4 setDelegate:v5];

  v6 = qword_100066B58;

  [v6 resume];
}

void sub_1000039C0(id a1)
{
  qword_100066B68 = objc_alloc_init(NTKDCollectionCoordinator);

  _objc_release_x1();
}

void sub_100003BD8(uint64_t a1)
{
  v2 = [[NTKDCollectionClient alloc] initWithConnection:*(a1 + 32)];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003C94;
  v3[3] = &unk_10005CBC0;
  v3[4] = *(a1 + 40);
  [(NTKDCollectionClient *)v2 setInvalidationHandler:v3];
  [*(*(a1 + 40) + 8) addObject:v2];
  [*(a1 + 32) _setQueue:*(*(a1 + 40) + 64)];
  [*(a1 + 32) resume];
}

void sub_100003C94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003D30;
  v7[3] = &unk_10005CA98;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_100003E1C(uint64_t a1)
{
  v2 = [NTKDCollectionStoreKey keyWithCollectionIdentifier:*(a1 + 32) deviceUUID:*(a1 + 40)];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000040B4;
  v15[3] = &unk_10005CC10;
  v3 = *(a1 + 56);
  v15[4] = *(a1 + 48);
  v16 = v3;
  v4 = objc_retainBlock(v15);
  v5 = [*(*(a1 + 48) + 16) objectForKey:v2];
  if (v5)
  {
    v6 = v5;
    (v4[2])(v4, v5);
  }

  else
  {
    [*(a1 + 48) _queue_addCheckoutHandler:v4 forStoreKey:v2];
    v7 = [*(*(a1 + 48) + 24) objectForKey:v2];

    v6 = _NTKLoggingObjectForDomain();
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v8)
      {
        *buf = 138412290;
        v18 = v2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "added new checkout handler pending curation of store key %@", buf, 0xCu);
      }
    }

    else
    {
      if (v8)
      {
        *buf = 138412290;
        v18 = v2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "curating store for key %@", buf, 0xCu);
      }

      v9 = [[NTKDCollectionStore alloc] initWithCollectionIdentifier:*(a1 + 32) deviceUUID:*(a1 + 40)];
      [*(*(a1 + 48) + 24) setObject:v9 forKey:v2];
      v10 = *(a1 + 48);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100004184;
      v11[3] = &unk_10005CC38;
      v12 = v2;
      v13 = v9;
      v14 = *(a1 + 48);
      v6 = v9;
      [v10 _queue_curateStore:v6 withCompletion:v11];
    }
  }
}

void sub_1000040B4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) checkoutStore:v3];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004170;
  v7[3] = &unk_10005CBE8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 _onCalloutQueue_async:v7];
}

id sub_100004184(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "finished curation for store key %@ : %@", &v6, 0x16u);
  }

  [*(*(a1 + 48) + 16) setObject:*(a1 + 40) forKey:*(a1 + 32)];
  [*(*(a1 + 48) + 24) removeObjectForKey:*(a1 + 32)];
  [*(a1 + 48) _queue_notifyObserversStoreCreated:*(a1 + 40)];
  return [*(a1 + 48) _queue_invokeCheckoutHandlersForStoreKey:*(a1 + 32) withStore:*(a1 + 40)];
}

void sub_1000045E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(a1 + 56) & 1) != 0 || [*(a1 + 32) containsObject:v6])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100004770;
    v22 = sub_100004780;
    v23 = 0;
    v7 = dispatch_semaphore_create(0);
    v8 = *(a1 + 40);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100004788;
    v15 = &unk_10005CC60;
    v17 = &v18;
    v9 = v7;
    v16 = v9;
    [v8 checkoutStoreForCollectionIdentifier:v5 deviceUUID:v6 withHandler:&v12];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    (*(*(a1 + 48) + 16))(*(a1 + 48), v19[5], v10, v11);
    [*(a1 + 40) relinquishStore:{v19[5], v12, v13, v14, v15}];

    _Block_object_dispose(&v18, 8);
  }
}

void sub_100004758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004770(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100004788(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000487C(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000491C;
  v5[3] = &unk_10005CCB0;
  v5[4] = v3;
  v6 = v2;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_10000491C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000049CC;
  v7[3] = &unk_10005CA98;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v4;
  v6 = v4;
  [v5 _onCalloutQueue_async:v7];
}

void sub_100004B10(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(a1 + 40) collectionIdentifier];
  v4 = [v2 objectForKey:v3];

  if (objc_opt_respondsToSelector())
  {
    [v4 resetStoreDefaults:*(a1 + 40)];
  }
}

void sub_100004F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [NTKDCollectionStoreKey keyWithCollectionIdentifier:a2 deviceUUID:a3];
  [v3 addObject:v4];
}

void sub_100004F98(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [NTKDCollectionStoreKey keyWithCollectionIdentifier:v8 deviceUUID:v5];
  LODWORD(v6) = [v6 containsObject:v7];

  if (v6)
  {
    [*(a1 + 40) checkoutStoreForCollectionIdentifier:v8 deviceUUID:v5 withHandler:&stru_10005CD18];
  }
}

void sub_1000050F4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.collectioncoordinator.busy");
}

void sub_1000051D8(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.collectioncoordinator.callout");
}

void sub_100005740(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "beginning curation of store %@", buf, 0xCu);
  }

  sub_10000729C(@"com.apple.ntkd.curatecollection.", *(a1 + 40));
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005894;
  v7[3] = &unk_10005CD68;
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7[4] = *(a1 + 56);
  v9 = v6;
  v8 = *(a1 + 40);
  [v5 curateCollectionStore:v4 completion:v7];
}

void sub_100005894(uint64_t a1)
{
  [*(a1 + 32) _onQueue_async:*(a1 + 48)];
  v2 = *(a1 + 40);

  sub_1000074E8(@"com.apple.ntkd.curatecollection.", v2);
}

id sub_100005974()
{
  v0 = +[PDRRegistry sharedInstance];
  v1 = [v0 getActivePairedDeviceExcludingAltAccount];

  return v1;
}

id sub_1000059C8()
{
  v0 = sub_100005974();
  v1 = [v0 pairingID];

  return v1;
}

void sub_100005A28(void *a1, void *a2, void *a3, char a4, void *a5, char a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a5;
  if (NTKInternalBuild())
  {
    v15 = dispatch_get_global_queue(33, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005B60;
    block[3] = &unk_10005CDE0;
    v21 = a6;
    v17 = v11;
    v18 = v12;
    v22 = a4;
    v19 = v14;
    v20 = v13;
    dispatch_async(v15, block);
  }
}

void sub_100005B60(uint64_t a1)
{
  v30 = 0;
  if (*(a1 + 64) != 1 || (CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, *(a1 + 32), *(a1 + 40), @"OK", @"Cancel", 0, &v30), !v30))
  {
    BOMCopierNew();
    v35 = @"createPKZip";
    v36 = &__kCFBooleanTrue;
    v2 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v3 = +[NSFileManager defaultManager];
    v4 = NSTemporaryDirectory();
    v5 = +[NSUUID UUID];
    v6 = [v5 UUIDString];
    v7 = [v4 stringByAppendingPathComponent:v6];

    [v3 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];
    v8 = [v7 stringByAppendingPathComponent:@"NanoTimeKit.zip"];
    v9 = NTKHomeDirectory();
    [v9 fileSystemRepresentation];
    [(__CFString *)v8 fileSystemRepresentation];
    LODWORD(v6) = BOMCopierCopyWithOptions();

    BOMCopierFree();
    v10 = [NSMutableString stringWithString:@"tap-to-radar://new?ComponentName=Watch Faces&ComponentVersion=all&ComponentID=568147&Classification=Serious Bug&Reproducibility=Not Applicable&AutoDiagnostics=phone, watch&Description=Summary: \n\nSteps to Reproduce: "];
    v11 = +[NSMutableString string];
    v12 = v11;
    if (v6)
    {
      if (*(a1 + 65) != 1)
      {
        goto LABEL_10;
      }

      v13 = @"\n\n(NOTE: Please attach contents of /var/mobile/Library/NanoTimeKit from both devices to this radar.)&";
      v11 = v10;
    }

    else
    {
      v13 = v8;
    }

    [v11 appendString:v13];
LABEL_10:
    v14 = *(a1 + 48);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100005FD0;
    v28[3] = &unk_10005CDB8;
    v15 = v12;
    v29 = v15;
    [v14 enumerateObjectsUsingBlock:v28];
    if ([v15 length])
    {
      [v10 appendFormat:@"&Attachments=%@&", v15];
    }

    [v10 appendFormat:@"Title=%@", *(a1 + 56)];
    v16 = +[NSCharacterSet URLQueryAllowedCharacterSet];
    v17 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v16];
    v18 = [NSURL URLWithString:v17];

    v19 = +[LSApplicationWorkspace defaultWorkspace];
    v27 = 0;
    v20 = [v19 openURL:v18 withOptions:&__NSDictionary0__struct error:&v27];
    v21 = v27;

    v22 = _NTKLoggingObjectForDomain();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v23)
      {
        *buf = 138412290;
        v32 = v18;
        v24 = "successfully launched Tap-to-Radar: %@";
        v25 = v22;
        v26 = 12;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
      }
    }

    else if (v23)
    {
      *buf = 138412546;
      v32 = v18;
      v33 = 2112;
      v34 = v21;
      v24 = "failed to launch Tap-to-Radar: %@ %@";
      v25 = v22;
      v26 = 22;
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "user declined to open Tap-to-Radar", buf, 2u);
  }

LABEL_19:
}

void sub_100005FD0(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  if (v3)
  {
    v4 = v3;
    if ([*(a1 + 32) length])
    {
      [*(a1 + 32) appendString:{@", "}];
    }

    [*(a1 + 32) appendString:v4];
    v3 = v4;
  }
}

id sub_100006048()
{
  v6 = 0;
  v0 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.Bridge" allowPlaceholder:0 error:&v6];
  v1 = v6;
  if (!v0)
  {
    v2 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10003DD70();
    }
  }

  v3 = [v0 applicationState];
  v4 = [v3 isInstalled];

  return v4;
}

id sub_10000610C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = +[NTKDZIPArchivist sharedArchivist];
    }

    v10 = [v5 JSONObjectRepresentation];
    v32 = 0;
    v11 = [NSJSONSerialization dataWithJSONObject:v10 options:0 error:&v32];
    v12 = v32;

    if (v12)
    {
      v13 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10003DDD8(v5, v12, v13);
      }
    }

    v14 = NSTemporaryDirectory();
    v15 = +[NSUUID UUID];
    v16 = [v15 UUIDString];
    v17 = [v14 stringByAppendingPathComponent:v16];

    v18 = +[NSFileManager defaultManager];

    v31 = 0;
    [v18 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v31];
    v19 = v31;
    if (v19)
    {
      v20 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v27 = [v5 faceStyle];
        *buf = 134218498;
        v34 = v27;
        v35 = 2114;
        v36 = v17;
        v37 = 2114;
        v38 = v19;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to create directory at path to backup face data. Face style: %lu - bundle location: %{public}@ - error: %{public}@", buf, 0x20u);
      }
    }

    v21 = [v17 stringByAppendingPathComponent:@"face.json"];
    [v11 writeToFile:v21 atomically:1];

    v22 = [v5 resourceDirectory];
    if (v22)
    {

      v23 = +[NSFileManager defaultManager];
      v24 = [v17 stringByAppendingPathComponent:@"Resources"];
      v30 = 0;
      [v23 copyItemAtPath:v22 toPath:v24 error:&v30];
      v19 = v30;

      if (v19)
      {
        v25 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v28 = [v5 faceStyle];
          *buf = 134218498;
          v34 = v28;
          v35 = 2114;
          v36 = v22;
          v37 = 2114;
          v38 = v19;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to link resource path for face. Face style: %lu - resource Path: %{public}@ - error: %{public}@", buf, 0x20u);
        }
      }
    }

    v9 = [v29 zippedDataForPath:v17 toZipFile:v7];
    [v18 removeItemAtPath:v17 error:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1000064C4(uint64_t a1)
{
  key = [@"DateOfLastActivity_" stringByAppendingString:a1];
  v1 = +[NSDate date];
  CFPreferencesSetAppValue(key, v1, NTKDaemonPreferencesDomain);
}

void sub_100006530(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [@"DateOfLastActivity_" stringByAppendingString:v5];
  v8 = CFPreferencesCopyAppValue(v7, NTKDaemonPreferencesDomain);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  v9 = +[NSDate date];
  v10 = v9;
  if (v8 && ([v9 timeIntervalSinceDate:v8], v11 <= a3))
  {
    v13 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = v5;
      v16 = 2048;
      v17 = a3;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "not performing activity for identifier %@ because minimum interval %g has not elapsed since last performed (%@)", &v14, 0x20u);
    }
  }

  else
  {
    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = v5;
      v16 = 2048;
      v17 = a3;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "performing activity for identifier %@ because minimum interval %g has elapsed since last performed (%@)", &v14, 0x20u);
    }

    v6[2](v6);
    sub_1000064C4(v5);
  }
}

void sub_100006784(id a1)
{
  qword_100066B78 = objc_alloc_init(NTKDActivityTracker);

  _objc_release_x1();
}

void sub_100006A24(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    state = xpc_activity_get_state(v2);
    v5 = "checkin";
    if (state == 2)
    {
      v5 = "run";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "checkin complete with state = %s", &v6, 0xCu);
  }
}

void sub_100006AFC(uint64_t a1)
{
  [*(a1 + 32) _queue_beginActivity:@"guard-early-jetsam"];
  v2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 8));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = *(*(a1 + 32) + 32);
  v6 = dispatch_time(0, 15000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100006BFC;
  handler[3] = &unk_10005CA70;
  handler[4] = v7;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_resume(*(*(a1 + 32) + 32));
}

id sub_100006BFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 _queue_endActivity:@"guard-early-jetsam"];
}

void sub_1000070C4(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "xpc activity handler unexpectedly invoked -- we should have adjusted it further into the future before it fired", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007194;
  block[3] = &unk_10005CA70;
  block[4] = v3;
  dispatch_async(v4, block);
}

_BYTE *sub_10000719C(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "adjust xpc activity criteria timer fired", v6, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  result = *(a1 + 32);
  if (result[40] == 1)
  {
    return [result _queue_setOrUpdateActivityAndTimer];
  }

  return result;
}

void sub_10000729C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = sub_100007344();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007388;
  v6[3] = &unk_10005CA98;
  v6[4] = v4;
  v6[5] = v3;
  dispatch_sync(v5, v6);
}

id sub_100007344()
{
  if (qword_100066B90 != -1)
  {
    sub_10003DE84();
  }

  v1 = qword_100066B88;

  return v1;
}

void sub_100007388(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  v4 = v2;
  v5 = v4;
  v6 = v4;
  if (v3)
  {
    v6 = [v4 stringByAppendingString:v3];
  }

  v7 = sub_100007840();
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = sub_100007840();
    [v9 setObject:v8 forKey:v6];
  }

  v13 = v5;
  v10 = v13;
  if (v3)
  {
    v10 = [v13 stringByAppendingString:v3];
  }

  [v10 UTF8String];

  v11 = os_transaction_create();
  [v8 addObject:v11];
  v12 = +[NTKJetsamMonitor sharedJetsamMonitor];
  [v12 incrementTransactionCount];
}

void sub_1000074E8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = sub_100007344();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007590;
  v6[3] = &unk_10005CA98;
  v6[4] = v4;
  v6[5] = v3;
  dispatch_sync(v5, v6);
}

void sub_100007590(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (*(a1 + 40))
  {
    v4 = [v2 stringByAppendingString:?];

    v3 = v4;
  }

  v5 = [v3 stringByAppendingString:@"--30s-extension"];

  [v5 UTF8String];
  v6 = os_transaction_create();
  v7 = +[NTKJetsamMonitor sharedJetsamMonitor];
  [v7 incrementTransactionCount];

  v8 = dispatch_time(0, 30000000000);
  v9 = sub_100007344();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000077B8;
  block[3] = &unk_10005CA70;
  v10 = v6;
  v22 = v10;
  dispatch_after(v8, v9, block);

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v11;
  v14 = v12;
  v15 = v13;
  v16 = v15;
  v17 = v15;
  if (v14)
  {
    v17 = [v15 stringByAppendingString:v14];
  }

  v18 = sub_100007840();
  v19 = [v18 objectForKey:v17];

  if ([v19 count])
  {
    [v19 removeLastObject];
    v20 = +[NTKJetsamMonitor sharedJetsamMonitor];
    [v20 decrementTransactionCount];
  }

  else
  {
    v20 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10003DE98();
    }
  }
}

void sub_1000077B8()
{
  v0 = +[NTKJetsamMonitor sharedJetsamMonitor];
  [v0 decrementTransactionCount];
}

void sub_100007800(id a1)
{
  qword_100066B88 = dispatch_queue_create("com.apple.nanotimekit.daemon-transaction-queue", 0);

  _objc_release_x1();
}

id sub_100007840()
{
  if (qword_100066BA0 != -1)
  {
    sub_10003DF00();
  }

  v1 = qword_100066B98;

  return v1;
}

void sub_100007884(id a1)
{
  qword_100066B98 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void sub_1000078C0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

__CFString *sub_100007BCC()
{
  if (qword_100066BA8 != -1)
  {
    sub_10003DF28();
  }

  v1 = off_100066350;

  return v1;
}

void sub_100007C10(id a1)
{
  off_100066350 = CFPreferencesCopyAppValue(@"LastSystemVersionMigrated", NTKFacePreferencesDomain);

  _objc_release_x1();
}

void sub_100007C58(id a1)
{
  v2 = NTKBuildVersion();
  v1 = sub_100007BCC();
  byte_100066BB8 = [v2 isEqualToString:v1] ^ 1;
}

void sub_100007F94(id a1)
{
  qword_100066BC8 = [[NTKFirstUnlockQueue alloc] initWithName:"com.apple.ntkd.galleryphotosfacescurator"];

  _objc_release_x1();
}

uint64_t sub_100008190(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 40) collectionIdentifier];
    v4 = [*(*(a1 + 32) + 40) deviceUUID];
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore: initialCurationWithCompletion(%@-%@)", &v9, 0x16u);
  }

  [*(a1 + 32) _queue_setStoreDataForStore:*(*(a1 + 32) + 40)];
  [*(a1 + 32) _queue_setSyncedAlbumDataForStore:*(*(a1 + 32) + 40)];
  [*(a1 + 32) _queue_syncStoreWithSyncedAlbum];
  [*(*(a1 + 32) + 40) markInitialSetupComplete];
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(*(a1 + 32) + 40) collectionIdentifier];
    v7 = [*(*(a1 + 32) + 40) deviceUUID];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore: finished initialCurationWithCompletion(%@-%@)", &v9, 0x16u);
  }

  sub_1000074E0(@"com.apple.ntkd.galleryphotosfacecurator.asyncwork");
  return (*(*(a1 + 40) + 16))();
}

void sub_100008414(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_1000059C8();
  v4 = [v2 isEqual:v3];

  v5 = _NTKLoggingObjectForDomain();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore: collectionTargetLibraryDidUpdate(%@)", &v9, 0xCu);
    }

    [*(a1 + 40) _queue_setSyncedAlbumDataForStore:*(*(a1 + 40) + 40)];
    [*(a1 + 40) _queue_syncStoreWithSyncedAlbum];
  }

  else
  {
    if (v6)
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore: collectionTargetLibraryDidUpdate(%@) ignored; not the active device", &v9, 0xCu);
    }
  }

  sub_1000074E0(@"com.apple.ntkd.galleryphotosfacecurator.asyncwork");
}

void sub_100008630(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v2 = [*(a1 + 40) changeDetailsForFetchResult:?];
    v3 = _NTKLoggingObjectForDomain();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v4)
      {
        v5 = *(a1 + 48);
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore: photoLibraryDidChange(%@)", &v10, 0xCu);
      }

      v6 = [v2 fetchResultAfterChanges];
      v7 = *(a1 + 32);
      v8 = *(v7 + 32);
      *(v7 + 32) = v6;

      [*(a1 + 32) _queue_syncStoreWithSyncedAlbum];
    }

    else
    {
      if (v4)
      {
        v9 = *(a1 + 48);
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore: photoLibraryDidChange(%@), but no real changes", &v10, 0xCu);
      }
    }
  }

  sub_1000074E0(@"com.apple.ntkd.galleryphotosfacecurator.asyncwork");
}

void sub_10000890C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000892C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if (a3)
  {
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      v13 = a3;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore:   face %ld is over the limit, removing %@", &v12, 0x16u);
    }

    [*(*(a1 + 32) + 40) removeFaceForUUID:v6];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v8 = [*(*(a1 + 32) + 40) faceForUUID:v6];
    if (NTKPhotosIsSyncedAlbumPhotosFace())
    {
      objc_storeStrong((*(a1 + 32) + 48), a2);
      v9 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 48);
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore:   found synced album photos face, keeping %@", &v12, 0xCu);
      }
    }

    else
    {
      v11 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore:   first face is not a synced album photos face, removing %@", &v12, 0xCu);
      }

      [*(*(a1 + 32) + 40) removeFaceForUUID:v6];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

void sub_100009860(id a1)
{
  qword_100066BD0 = objc_alloc_init(NTKDCompanionGalleryPhotosFacesCurator);

  _objc_release_x1();
}

void sub_100009B5C(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);
  v2 = dispatch_queue_create("com.apple.ntkd.collectionclient.shared", v1);
  v3 = qword_100066BE0;
  qword_100066BE0 = v2;
}

void sub_100009D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009D70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInvalidation];
}

void sub_100009E24(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setExportedObject:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  [*(*(a1 + 32) + 24) removeObserver:?];
  v4 = +[NTKDCollectionCoordinator sharedInstance];
  [v4 relinquishStore:*(*(a1 + 32) + 24)];

  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;

  v7 = *(*(a1 + 32) + 40);
  if (v7)
  {
    (*(v7 + 16))();
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_100009FE0(int8x16_t *a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[2].i64[0];
    v4 = a1[2].i64[1];
    v5 = a1[3].i64[0];
    *buf = 138412802;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "register for <%@,%@> with seqId %@", buf, 0x20u);
  }

  v6 = +[NTKDCollectionCoordinator sharedInstance];
  v7 = a1[2].i64[0];
  v8 = a1[2].i64[1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000A158;
  v11[3] = &unk_10005CF98;
  v10 = a1[3];
  v9 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  [v6 checkoutStoreForCollectionIdentifier:v7 deviceUUID:v8 withHandler:v11];

  sub_1000074E0(@"com.apple.ntkd.collectionclient.register");
}

void sub_10000A158(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A210;
  block[3] = &unk_10005CC38;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

id sub_10000A210(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  [*(*(a1 + 32) + 24) addObserver:*(a1 + 32) withSeqId:*(a1 + 48)];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 32);
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

        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 32) removeAllObjects];
}

void sub_10000A448(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.collectionclient.busy");
}

void sub_10000A484(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(v2 + 32);
    v5 = [*(a1 + 40) copy];
    [v4 addObject:v5];
  }
}

void sub_10000A5A8(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.collectionclient.busy");
}

id sub_10000A680(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 24) collectionIdentifier];
    v4 = [*(*(a1 + 32) + 24) deviceUUID];
    v5 = v4;
    v6 = *(a1 + 40);
    v7 = @"NO";
    v8 = *(a1 + 48);
    v10 = 138413058;
    if (v8)
    {
      v7 = @"YES";
    }

    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<%@,%@> setSelectedFaceUUID: %@, suppressingCallback: %@", &v10, 0x2Au);
  }

  return [*(*(a1 + 32) + 24) setSelectedUUID:*(a1 + 40) suppressingCallbackToObserver:?];
}

id sub_10000A860(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 24) collectionIdentifier];
    v4 = [*(*(a1 + 32) + 24) deviceUUID];
    v5 = *(a1 + 40);
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<%@,%@> setOrderedFaceUUIDs: %@", &v7, 0x20u);
  }

  return [*(*(a1 + 32) + 24) setOrderedUUIDs:*(a1 + 40)];
}

void sub_10000AA2C(void *a1)
{
  v2 = [*(a1[4] + 24) faceForUUID:a1[5]];
  v3 = [v2 device];
  v4 = [v2 faceStyle];
  v5 = +[NTKFaceBundleManager sharedManager];
  if (v4 == 44)
  {
    v6 = [v2 bundleIdentifier];
    v7 = [v5 faceBundleForBundleIdentifier:v6 onDevice:v3];
  }

  else
  {
    v8 = [v5 faceBundleForFaceStyle:objc_msgSend(v2 onDevice:{"faceStyle"), v3}];
  }

  v9 = [[NTKFaceConfiguration alloc] initWithJSONDictionary:a1[6] editModeMapping:v2 forDevice:v3];
  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1[4] + 24) collectionIdentifier];
    v12 = [*(a1[4] + 24) deviceUUID];
    v13 = a1[5];
    v14 = 138413058;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%@,%@> updateFaceForUUID: %@ withConfiguration: %@", &v14, 0x2Au);
  }

  [*(a1[4] + 24) updateFaceForUUID:a1[5] withConfiguration:v9];
}

id sub_10000ACD8(void *a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1[4] + 24) collectionIdentifier];
    v4 = [*(a1[4] + 24) deviceUUID];
    v5 = a1[5];
    v6 = a1[6];
    v8 = 138413058;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<%@,%@> updateFaceForUUID: %@ withResourceDirectory: %@", &v8, 0x2Au);
  }

  return [*(a1[4] + 24) updateFaceForUUID:a1[5] withResourceDirectory:a1[6]];
}

void sub_10000AEB4(void *a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1[4] + 24) collectionIdentifier];
    v4 = [*(a1[4] + 24) deviceUUID];
    v5 = a1[5];
    v6 = a1[6];
    v8 = 138413058;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<%@,%@> upgradeFaceInstanceDescriptor:ForUUID: %@  face: %@ ", &v8, 0x2Au);
  }

  v7 = [NTKFace faceWithInstanceDescriptor:a1[6]];
  [*(a1[4] + 24) upgradeFace:v7 forUUID:a1[5]];
}

void sub_10000B0AC(void *a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1[4] + 24) collectionIdentifier];
    v4 = [*(a1[4] + 24) deviceUUID];
    v5 = a1[5];
    v6 = a1[6];
    v8 = 138413058;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<%@,%@> addFaceInstanceDescriptor: %@ face: %@", &v8, 0x2Au);
  }

  v7 = [NTKFace faceWithInstanceDescriptor:a1[6]];
  [*(a1[4] + 24) addFace:v7 forUUID:a1[5]];
}

id sub_10000B274(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 24) collectionIdentifier];
    v4 = [*(*(a1 + 32) + 24) deviceUUID];
    v5 = *(a1 + 40);
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<%@,%@> removeFaceForUUID: %@", &v7, 0x20u);
  }

  return [*(*(a1 + 32) + 24) removeFaceForUUID:*(a1 + 40)];
}

void sub_10000B3EC(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 24) collectionIdentifier];
    v4 = [*(*(a1 + 32) + 24) deviceUUID];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<%@,%@> resetCollection", &v6, 0x16u);
  }

  v5 = +[NTKDCollectionCoordinator sharedInstance];
  [v5 resetStoreDefaults:*(*(a1 + 32) + 24)];
}

void sub_10000B598(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 24) collectionIdentifier];
    v4 = [*(*(a1 + 32) + 24) deviceUUID];
    v5 = *(a1 + 40);
    *buf = 138412802;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<%@,%@> flushUpdatesWithIdentifier: %@", buf, 0x20u);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 24);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B704;
  v9[3] = &unk_10005CA98;
  v9[4] = v7;
  v10 = v6;
  [v8 flushWithObserverCallback:v9];
}

void sub_10000B704(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000B794;
  v2[3] = &unk_10005CA98;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _onQueue:v2];
}

void sub_10000B794(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) remoteObjectProxy];
  [v2 flushCompleteForIdentifier:*(a1 + 40)];
}

void sub_10000B950(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) collectionIdentifier];
    v4 = [*(a1 + 32) deviceUUID];
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) count]);
    v6 = *(a1 + 48);
    *buf = 138413058;
    v36 = v3;
    v37 = 2112;
    v38 = v4;
    v39 = 2112;
    v40 = v5;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "outgoing to client: <%@,%@> load %@ faces (seqId = %@)", buf, 0x2Au);
  }

  v7 = *(*(a1 + 56) + 8);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10000BC94;
  v32[3] = &unk_10005D010;
  v33 = *(a1 + 80);
  v8 = [v7 remoteObjectProxyWithErrorHandler:v32];
  context = objc_autoreleasePoolPush();
  v9 = +[NSMutableDictionary dictionary];
  v10 = [*(a1 + 40) copy];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [v11 objectForKey:v16];
        v18 = [v17 instanceDescriptor];
        v19 = v18;
        if (v16)
        {
          v20 = v18 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          [v9 setObject:v18 forKey:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v13);
  }

  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v23 = [v9 copy];
  v24 = *(a1 + 48);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000BCA4;
  v26[3] = &unk_10005CB10;
  v27 = *(a1 + 80);
  [v8 loadFullCollectionWithOrderedUUIDs:v21 selectedUUID:v22 facesDescriptorsByUUID:v23 seqId:v24 completion:v26];

  objc_autoreleasePoolPop(context);
}

void sub_10000BD94(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) collectionIdentifier];
    v4 = [*(a1 + 32) deviceUUID];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = 138413058;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "outgoing to client: <%@,%@> update selected uuid to %@ (seqId = %@)", &v8, 0x2Au);
  }

  v7 = [*(*(a1 + 56) + 8) remoteObjectProxy];
  [v7 updateSelectedFaceUUID:*(a1 + 40) seqId:*(a1 + 48)];
}

void sub_10000BF94(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) collectionIdentifier];
    v4 = [*(a1 + 32) deviceUUID];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = 138413058;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "outgoing to client: <%@,%@> update ordered uuids to %@ (seqId = %@)", &v8, 0x2Au);
  }

  v7 = [*(*(a1 + 56) + 8) remoteObjectProxy];
  [v7 updateOrderedFaceUUIDs:*(a1 + 40) seqId:*(a1 + 48)];
}

void sub_10000C1C0(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) collectionIdentifier];
    v4 = [*(a1 + 32) deviceUUID];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v12 = 138413314;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "outgoing to client: <%@,%@> update face for UUID %@ to config %@ (seqId = %@)", &v12, 0x34u);
  }

  v8 = [*(a1 + 32) faceForUUID:*(a1 + 40)];
  if (v8)
  {
    v9 = [*(*(a1 + 64) + 8) remoteObjectProxy];
    v10 = *(a1 + 40);
    v11 = [v8 configurationJSONRepresentation];
    [v9 updateFaceForUUID:v10 withConfigurationJSONRepresentation:v11 seqId:*(a1 + 56)];
  }

  else
  {
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003E010(v9);
    }
  }
}

void sub_10000C490(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) collectionIdentifier];
    v4 = [*(a1 + 32) deviceUUID];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    *buf = 138413314;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "outgoing to client: <%@,%@> update face for UUID %@ with resource directory %@ (seqId = %@)", buf, 0x34u);
  }

  v8 = *(*(a1 + 64) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C694;
  v15[3] = &unk_10005D010;
  v16 = *(a1 + 72);
  v9 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000C6A4;
  v13[3] = &unk_10005CB10;
  v14 = *(a1 + 72);
  [v9 updateFaceForUUID:v10 withResourceDirectory:v11 seqId:v12 completion:v13];
}

void sub_10000C7C0(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) collectionIdentifier];
    v4 = [*(a1 + 32) deviceUUID];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v10 = 138413314;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "outgoing to client: <%@,%@> upgrade face %@ for UUID %@ (seqId = %@)", &v10, 0x34u);
  }

  v8 = [*(*(a1 + 64) + 8) remoteObjectProxy];
  v9 = [*(a1 + 40) instanceDescriptor];
  [v8 upgradeFaceInstanceDescriptor:v9 forUUID:*(a1 + 48) seqID:*(a1 + 56)];
}

void sub_10000CA14(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) collectionIdentifier];
    v4 = [*(a1 + 32) deviceUUID];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v10 = 138413314;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "outgoing to client: <%@,%@> add face %@ for UUID %@ (seqId = %@)", &v10, 0x34u);
  }

  v8 = [*(*(a1 + 64) + 8) remoteObjectProxy];
  v9 = [*(a1 + 40) instanceDescriptor];
  [v8 addFaceInstanceDescriptor:v9 forUUID:*(a1 + 48) seqId:*(a1 + 56)];
}

void sub_10000CC6C(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) collectionIdentifier];
    v4 = [*(a1 + 32) deviceUUID];
    v5 = *(a1 + 72);
    v6 = NTKFaceStyleDescription();
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    *buf = 138413314;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "outgoing to client: <%@,%@> remove face of style %@ for UUID %@ (seqId = %@)", buf, 0x34u);
  }

  v9 = *(*(a1 + 56) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000CE78;
  v15[3] = &unk_10005D010;
  v16 = *(a1 + 64);
  v10 = [v9 remoteObjectProxyWithErrorHandler:v15];
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000CE88;
  v13[3] = &unk_10005CB10;
  v14 = *(a1 + 64);
  [v10 removeFaceForUUID:v11 seqId:v12 completion:v13];
}

void sub_10000CF58(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) collectionIdentifier];
    v4 = [*(a1 + 32) deviceUUID];
    *buf = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "outgoing to client: <%@,%@> reset collection store ", buf, 0x16u);
  }

  v5 = *(*(a1 + 40) + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000D120;
  v9[3] = &unk_10005D010;
  v10 = *(a1 + 48);
  v6 = [v5 remoteObjectProxyWithErrorHandler:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000D19C;
  v7[3] = &unk_10005CB10;
  v8 = *(a1 + 48);
  [v6 resetClientCollectionWithCompletion:v7];
}

void sub_10000D120(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003E054(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000D250(id a1)
{
  v1 = [NSXPCListener alloc];
  v2 = [v1 initWithMachServiceName:NTKFaceSnapshotMachService];
  v3 = qword_100066BF0;
  qword_100066BF0 = v2;

  v4 = +[NTKDFaceSnapshotCoordinator sharedInstance];
  [v4 _setupXPCEventListner];
  [qword_100066BF0 setDelegate:v4];
  [qword_100066BF0 resume];
}

void sub_10000D324(id a1)
{
  qword_100066C00 = objc_alloc_init(NTKDFaceSnapshotCoordinator);

  _objc_release_x1();
}

void sub_10000D6AC(uint64_t a1)
{
  v2 = [[NTKDFaceSnapshotClientHandler alloc] initWithConnection:*(a1 + 32) snapshotController:*(*(a1 + 40) + 16)];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000D76C;
  v3[3] = &unk_10005D140;
  v3[4] = *(a1 + 40);
  [(NTKDFaceSnapshotClientHandler *)v2 setInvalidationHandler:v3];
  [*(*(a1 + 40) + 8) addObject:v2];
  [*(a1 + 32) _setQueue:*(*(a1 + 40) + 32)];
  [*(a1 + 32) resume];
}

void sub_10000D76C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 134218242;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NTKDFaceSnapshotClientHandler %p invalidated %@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000D8AC;
  v9[3] = &unk_10005CA98;
  v9[4] = v6;
  v10 = v3;
  v8 = v3;
  dispatch_async(v7, v9);
}

void sub_10000DA0C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updated gallery snapshots - %ld", &v4, 0xCu);
  }
}

uint64_t sub_10000DB3C(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (!strcmp(string, "LanguageChange") || !strcmp(string, "LocaleChange") || (result = strcmp(string, "SignificantTimeChange"), !result))
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = string;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update all snapshots due to %s", &v6, 0xCu);
    }

    return [*(a1 + 32) _updateAllSnapshots];
  }

  return result;
}

void sub_10000E1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000E22C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Snapshot delay elapsed; starting", v4, 2u);
    }

    v3 = [WeakRetained queue];
    dispatch_activate(v3);

    sub_1000074E0(@"delaying-snapshots");
  }
}

void sub_10000E2D8(uint64_t a1)
{
  v2 = +[NTKDCollectionCoordinator sharedInstance];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000E9C0;
  v31[3] = &unk_10005D1F0;
  v32 = *(a1 + 32);
  [v2 enumerateAllStoresWithHandler:v31];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:"_loadComplicationCollection" name:CLKActiveDeviceChangedNotification object:0];

  [*(a1 + 32) _loadComplicationCollection];
  if (NTKDebugRegenerateAllSnapshots())
  {
    v4 = +[NSMutableDictionary dictionary];
  }

  else
  {
    v5 = [NSData alloc];
    v6 = sub_1000133D4();
    v7 = [v5 initWithContentsOfFile:v6 options:1 error:0];

    v8 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v7 error:0];
    [v8 setDecodingFailurePolicy:0];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v9, v10, objc_opt_class(), 0];
    v4 = [v8 decodeObjectOfClasses:v11 forKey:NSKeyedArchiveRootObjectKey];
    if (v4)
    {
      objc_opt_class();
      objc_opt_class();
      NTKValidateDictionary();
    }

    if (!v4)
    {
      v4 = +[NSMutableDictionary dictionary];
    }
  }

  objc_storeStrong((*(a1 + 32) + 24), v4);

  v12 = [NSData alloc];
  v13 = sub_1000134E8();
  v14 = [v12 initWithContentsOfFile:v13 options:1 error:0];

  v15 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v14 error:0];
  [v15 setDecodingFailurePolicy:0];
  v16 = objc_opt_class();
  v17 = [NSSet setWithObjects:v16, objc_opt_class(), 0];
  v18 = [v15 decodeObjectOfClasses:v17 forKey:NSKeyedArchiveRootObjectKey];
  if (v18)
  {
    objc_opt_class();
    NTKValidateArray();
  }

  v19 = *(a1 + 32);
  v20 = *(v19 + 16);
  *(v19 + 16) = v18;

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000EA44;
  v29[3] = &unk_10005CA70;
  v30 = *(a1 + 32);
  sub_100006530(@"CleanSnapshotCache", v29, 432000.0);
  v21 = [*(a1 + 32) _currentContext];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v22 = *(*(a1 + 32) + 24);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000EB00;
  v26[3] = &unk_10005D218;
  v23 = v21;
  v27 = v23;
  v28 = &v33;
  [v22 enumerateKeysAndObjectsUsingBlock:v26];
  if (*(v34 + 24) == 1)
  {
    v24 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "update all snapshots as context is stale", buf, 2u);
    }

    [*(a1 + 32) _queue_updateAllSnapshots];
  }

  _Block_object_dispose(&v33, 8);
}

void sub_10000E9C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _preferencesKeyForCollectionStore:v4];
  v6 = CFPreferencesCopyAppValue(v5, NTKDaemonPreferencesDomain);
  [v4 addObserver:*(a1 + 32) withSeqId:v6];
}

id sub_10000EA44(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = 5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Clean snapshot caches due not having been cleaned in the last %lu days", &v4, 0xCu);
  }

  return [*(a1 + 32) _queue_cleanCache];
}

void sub_10000EB00(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if (![v6 localeMatchesContext:*(a1 + 32)] || (objc_msgSend(v6, "buildVersionMatchesContext:", *(a1 + 32)) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10000EFAC(uint64_t a1)
{
  v2 = objc_opt_new();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) key];
        [v2 addObject:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) _queue_cleanCacheExcludingKeys:v2];
  sub_1000064C4(@"CleanAllFaceSnapshots");
}

void sub_10000F198(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 snapshot];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_10000F95C(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 40);
    *buf = 138412802;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = "[NTKDFaceSnapshotController requestSnapshotOfFace:options:completion:]_block_invoke_2";
    *&buf[22] = 2112;
    v54 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: %s operation block started with face: %@", buf, 0x20u);
  }

  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v54 = sub_10000FE84;
  v55 = sub_10000FE94;
  v56 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.NTKFaceSnapshotService"];
  v8 = +[NSXPCInterface faceSnapshotServiceInterface];
  [*(*&buf[8] + 40) setRemoteObjectInterface:v8];

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10000FE9C;
  v35[3] = &unk_10005D2B8;
  v42 = *(a1 + 64);
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v36 = v9;
  v37 = v10;
  v40 = v43;
  v39 = *(a1 + 56);
  v41 = buf;
  v11 = v7;
  v38 = v11;
  v12 = objc_retainBlock(v35);
  [*(*&buf[8] + 40) resume];
  v13 = *(*&buf[8] + 40);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100010330;
  v33[3] = &unk_10005D010;
  v14 = v12;
  v34 = v14;
  v15 = [v13 remoteObjectProxyWithErrorHandler:v33];
  v16 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = *(a1 + 40);
    *v45 = 138413058;
    v46 = v19;
    v47 = 2080;
    v48 = "[NTKDFaceSnapshotController requestSnapshotOfFace:options:completion:]_block_invoke";
    v49 = 2112;
    v50 = v20;
    v51 = 2112;
    v52 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: %s face: %@ calling proxy: %@", v45, 0x2Au);
  }

  v21 = [*(a1 + 40) instanceDescriptor];
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000103B4;
  v30[3] = &unk_10005D2E0;
  v30[4] = *(a1 + 32);
  v31 = v22;
  v24 = v14;
  v32 = v24;
  [v15 requestSnapshotOfFaceInstanceDescriptor:v21 options:v23 completion:v30];
  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v25 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 32);
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = *(a1 + 40);
    *v45 = 138412802;
    v46 = v28;
    v47 = 2080;
    v48 = "[NTKDFaceSnapshotController requestSnapshotOfFace:options:completion:]_block_invoke";
    v49 = 2112;
    v50 = v29;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@: %s face: %@ Done!", v45, 0x20u);
  }

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(buf, 8);
}

void sub_10000FE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FE84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000FE9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    if (*(a1 + 80) == 1)
    {
      v10 = *(a1 + 32);
      v11 = NTKCacheSnapshotResultOfFace();
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v8;
      }

      v9 = v13;
    }
  }

  else
  {
    v9 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001001C;
  block[3] = &unk_10005D290;
  v18 = *(a1 + 32);
  v14 = v18.i64[0];
  v21 = vextq_s8(v18, v18, 8uLL);
  v19 = *(a1 + 56);
  v15 = v19;
  v25 = v19;
  v22 = v9;
  v23 = v6;
  v26 = *(a1 + 72);
  v24 = *(a1 + 48);
  v16 = v6;
  v17 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10001001C(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 40);
    v7 = *(*(*(a1 + 80) + 8) + 24);
    *buf = 138413058;
    v20 = v5;
    v21 = 2080;
    v22 = "[NTKDFaceSnapshotController requestSnapshotOfFace:options:completion:]_block_invoke_2";
    v23 = 2112;
    v24 = v6;
    v25 = 1024;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: %s face: %@ callbackExecuted: %d.", buf, 0x26u);
  }

  v8 = *(*(a1 + 80) + 8);
  if ((*(v8 + 24) & 1) == 0)
  {
    *(v8 + 24) = 1;
    v9 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001021C;
    block[3] = &unk_10005D268;
    v10 = *(a1 + 72);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v18 = *(a1 + 88);
    *&v13 = *(a1 + 64);
    *(&v13 + 1) = v10;
    *&v14 = v11;
    *(&v14 + 1) = v12;
    v16 = v14;
    v17 = v13;
    dispatch_async(v9, block);
  }
}

void sub_10001021C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
  [*(*(*(a1 + 64) + 8) + 40) invalidate];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  if (NTKUseComplicationSnapshotService())
  {
    v6 = *(a1 + 48);

    dispatch_group_leave(v6);
  }

  else
  {
    v7 = dispatch_time(0, 250000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010328;
    block[3] = &unk_10005CA70;
    v9 = *(a1 + 48);
    dispatch_after(v7, &_dispatch_main_q, block);
  }
}

void sub_100010330(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003E1AC();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000103B4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = a1[5];
    v12 = 138413314;
    v13 = v10;
    v14 = 2080;
    v15 = "[NTKDFaceSnapshotController requestSnapshotOfFace:options:completion:]_block_invoke";
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: %s face: %@ requestSnapshotOfFaceInstanceDescriptor competionBlock: %@ %@.", &v12, 0x34u);
  }

  (*(a1[6] + 16))();
}

void sub_100010700(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 selectedUUID];
  if (v4)
  {
    v5 = v4;
LABEL_4:
    v7 = [v3 faceForUUID:v5];
    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 name];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "snapshot selected face:%@", &v11, 0xCu);
    }

    [*(a1 + 40) snapshotFace:v7 options:*(a1 + 48) completion:*(a1 + 56)];
    goto LABEL_7;
  }

  v6 = [v3 orderedUUIDs];
  v5 = [v6 firstObject];

  if (v5)
  {
    goto LABEL_4;
  }

  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10003E260(v3, a1, v10);
  }

  (*(*(a1 + 56) + 16))();
LABEL_7:
}

void sub_100010E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose((v14 - 208), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100010E54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collectionIdentifier];
  v5 = [v4 isEqualToString:NTKCollectionIdentifierLibraryFaces];

  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 collectionIdentifier];
    v8 = 138412546;
    v9 = v7;
    v10 = 2048;
    v11 = v5 ^ 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Prewarm: Checking if %@ needs snapshot prewarm. %lu", &v8, 0x16u);
  }

  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) checkoutStore:v3];
    [*(a1 + 40) addObject:v3];
  }
}

uint64_t sub_100010F84(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_100010F9C(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100010FD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000110C4;
  v8[3] = &unk_10005D3D0;
  v3 = *(a1 + 56);
  v12 = *(a1 + 72);
  v4 = *(a1 + 40);
  v11 = *(a1 + 64);
  v13 = *(a1 + 80);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 32);
  *(&v6 + 1) = v3;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 _onQueue_async:v8];
}

void sub_1000110C4(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && ((*(v2 + 16))() & 1) == 0)
  {
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      [*(a1 + 32) relinquishStore:?];
      v17 = *(*(a1 + 72) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = 0;
    }

    (*(*(a1 + 64) + 16))();
    v19 = *(*(a1 + 80) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = 0;
  }

  else
  {
    v3 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(*(*(a1 + 72) + 8) + 40) collectionIdentifier];
      *buf = 138412290;
      v43 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Prewarm: Snapshotting next face in store %@….", buf, 0xCu);
    }

    if ([*(*(*(a1 + 88) + 8) + 40) count])
    {
      v5 = [*(*(*(a1 + 88) + 8) + 40) firstObject];
      [*(*(*(a1 + 88) + 8) + 40) removeObjectAtIndex:0];
      v6 = [*(*(*(a1 + 72) + 8) + 40) faceForUUID:v5];
      v7 = [v6 device];
      v8 = [v7 pairingID];
      v9 = [*(*(*(a1 + 72) + 8) + 40) deviceUUID];
      v10 = [v8 isEqual:v9];

      if (v10)
      {
        v11 = +[NTKFaceSnapshotter defaultModernSnapshotOptions];
        v12 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*(*(*(a1 + 72) + 8) + 40) collectionIdentifier];
          *buf = 138412546;
          v43 = v13;
          v44 = 2112;
          v45 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Prewarm: Store %@ will snapshot face %@.", buf, 0x16u);
        }

        v14 = *(a1 + 48);
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10001166C;
        v38[3] = &unk_10005D3A8;
        v40 = *(a1 + 72);
        v15 = v6;
        v16 = *(a1 + 80);
        v39 = v15;
        v41 = v16;
        [v14 snapshotFace:v15 options:v11 completion:v38];
      }

      else
      {
        v35 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_10003E2EC(v6, a1 + 72, v35);
        }

        (*(*(*(*(a1 + 80) + 8) + 40) + 16))();
      }
    }

    else
    {
      v21 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [*(*(*(a1 + 72) + 8) + 40) collectionIdentifier];
        *buf = 138412290;
        v43 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Prewarm: Store %@ finished.", buf, 0xCu);
      }

      if (*(*(*(a1 + 72) + 8) + 40))
      {
        [*(a1 + 32) relinquishStore:?];
        v23 = *(*(a1 + 72) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = 0;
      }

      if ([*(a1 + 40) count])
      {
        v25 = [*(a1 + 40) objectAtIndex:0];
        v26 = *(*(a1 + 72) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;

        [*(a1 + 40) removeObjectAtIndex:0];
        v28 = [*(*(*(a1 + 72) + 8) + 40) orderedUUIDs];
        v29 = [v28 mutableCopy];
        v30 = *(*(a1 + 88) + 8);
        v31 = *(v30 + 40);
        *(v30 + 40) = v29;

        v32 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [*(*(*(a1 + 72) + 8) + 40) collectionIdentifier];
          v34 = [*(*(*(a1 + 88) + 8) + 40) count];
          *buf = 138412546;
          v43 = v33;
          v44 = 2048;
          v45 = v34;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Prewarm: Store %@ has %lu face UUIDs to enumerate.", buf, 0x16u);
        }

        (*(*(*(*(a1 + 80) + 8) + 40) + 16))();
      }

      else
      {
        (*(*(a1 + 64) + 16))();
        v36 = *(*(a1 + 80) + 8);
        v37 = *(v36 + 40);
        *(v36 + 40) = 0;
      }
    }
  }
}

void sub_10001166C(void *a1, void *a2)
{
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(*(a1[5] + 8) + 40) collectionIdentifier];
    v6 = a1[4];
    v7 = 138412802;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Prewarm: Store %@ generated snapshot %@ face %@.", &v7, 0x20u);
  }

  (*(*(*(a1[6] + 8) + 40) + 16))();
}

void sub_100011810(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011894;
  block[3] = &unk_10005CB10;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100011894(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100011B98(uint64_t a1)
{
  v2 = [*(a1 + 32) _preferencesKeyForCollectionStore:*(a1 + 40)];
  v3 = CFPreferencesCopyAppValue(v2, NTKDaemonPreferencesDomain);
  [*(a1 + 40) addObserver:*(a1 + 32) withSeqId:v3];
}

void sub_10001217C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012230;
  v4[3] = &unk_10005D448;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 _enumerateAllFacesForDeviceUUID:v3 block:v4];
}

void sub_100012230(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000122EC;
  v6[3] = &unk_10005D420;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v5 = v3;
  [v4 _enumerateRemoteComplicationsForFace:v5 block:v6];
}

void sub_1000122EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 clientIdentifier];
      v8 = *(a1 + 40);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating snapshot due to updated template for client identifier %@ and face %@", &v9, 0x16u);
    }

    [*(a1 + 48) _queue_updateSnapshotForFace:*(a1 + 40) complicationTemplateChanged:1];
  }
}

void sub_10001246C(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000125AC;
  v4[3] = &unk_10005D470;
  v4[4] = *(a1 + 32);
  v4[5] = &v5;
  sub_100006530(@"CleanAllFaceSnapshots", v4, 86400.0);
  if ((v6[3] & 1) == 0 && *(*(a1 + 32) + 40) == 1)
  {
    v2 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "updating all snapshots as updatedSnapshotsDueToMinimalTimeInterval has not elapsed and needToupdateForFacesWithThirdPartyComplications", v3, 2u);
    }

    [*(a1 + 32) _queue_updateAllSnapshots];
  }

  _Block_object_dispose(&v5, 8);
}

id sub_1000125AC(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting flag to clean all snapshots due to not having been cleaned in last day", v4, 2u);
  }

  result = [*(a1 + 32) _queue_updateAllSnapshots];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void sub_100012B98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 orderedUUIDs];
  v5 = [v4 mutableCopy];

  v6 = [v3 selectedUUID];
  if (v6 && [v5 indexOfObject:v6] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 exchangeObjectAtIndex:0 withObjectAtIndex:{objc_msgSend(v5, "indexOfObject:", v6)}];
  }

  v7 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v3 faceForUUID:{v13, v21}];
        if (v15)
        {
          [v7 addObject:v15];
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v16 = [v3 deviceUUID];
  v17 = [v16 isEqual:*(a1 + 32)];
  v18 = [v3 collectionIdentifier];
  v19 = [v18 isEqualToString:NTKCollectionIdentifierLibraryFaces];

  if (v19 && v17)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
  }

  else if (v19)
  {
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v16];
  }

  else
  {
    v20 = [*(a1 + 48) objectForKeyedSubscript:v16];
    if (!v20)
    {
      v20 = objc_opt_new();
      [*(a1 + 48) setObject:v20 forKeyedSubscript:v16];
    }

    [v20 addObjectsFromArray:{v7, v21}];
  }
}

void sub_100012E18(uint64_t a1, void *a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [*(a1 + 32) _queue_snapshotObjectsForFace:{v8, v11}];
        [*(a1 + 40) addObjectsFromArray:v10];

        objc_autoreleasePoolPop(v9);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

id sub_1000133D4()
{
  v0 = NTKCacheDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"SnapshotContexts.archive"];

  return v1;
}

id sub_1000134E8()
{
  v0 = NTKCacheDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"SnapshotKeysWithBlankComplications.archive"];

  return v1;
}

void sub_100013610(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 orderedUUIDs];
  v5 = [v4 mutableCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v3 faceForUUID:{*(*(&v17 + 1) + 8 * v10), v17}];
        v12 = v11;
        if (v11)
        {
          v13 = *(a1 + 32);
          v14 = [v11 dailySnapshotKey];
          [v13 addObject:v14];

          if ([v12 wantsUnadornedSnapshot])
          {
            v15 = *(a1 + 32);
            v16 = [v12 unadornedSnapshotKey];
            [v15 addObject:v16];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

void sub_100013934(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    sub_100007294(@"com.apple.ntkd.facesnapshotcontroller.asyncmappedimagecachework");
    v4 = NTKSnapshotMappedImageCache();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000139F8;
    v5[3] = &unk_10005CA70;
    v6 = v3;
    [v4 removeImageForKey:v6 withCompletion:v5];
  }
}

void sub_1000139F8(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing snapshot for key: %@", &v4, 0xCu);
  }

  sub_1000074E0(@"com.apple.ntkd.facesnapshotcontroller.asyncmappedimagecachework");
}

void sub_100013AB8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(*(a1 + 40) + 24) removeObjectForKey:v3];
    [*(a1 + 40) _queue_cleanContexts];
  }
}

void sub_100013BD8(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.facesnapshotcontroller.asyncwork");
}

void sub_100013CBC(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.facesnapshotcontroller.asyncobservercallback");
}

void sub_100013ECC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 deviceUUID];
  LODWORD(v4) = [v4 isEqual:v5];

  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v3 orderedUUIDs];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [v3 faceForUUID:*(*(&v12 + 1) + 8 * v10)];
          (*(*(a1 + 40) + 16))();

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

void sub_1000140CC(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) complicationForSlot:?];
  if ([v3 complicationType] == 31)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000146E8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _endSnapshottingActivityDidTakeSnapshot:a2];
  v3 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  [v3 setDevice:0];

  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  *(v4 + 72) = 0;

  v6 = *(*(a1 + 32) + 80);
  v7 = *(a1 + 32);
  v8 = *(v7 + 80);
  *(v7 + 80) = 0;

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        v14 = 0;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = (*(*(*(&v30 + 1) + 8 * v14) + 16))();
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);
    }
  }

  if ([*(*(a1 + 32) + 88) count])
  {
    v16 = *(*(a1 + 32) + 88);
    v17 = *(a1 + 32);
    v18 = *(v17 + 88);
    *(v17 + 88) = 0;

    v19 = *(*(a1 + 32) + 96);
    v20 = *(a1 + 32);
    v21 = *(v20 + 96);
    *(v20 + 96) = 0;

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000149B8;
    v28[3] = &unk_10005CA70;
    v22 = v19;
    v29 = v22;
    v23 = objc_retainBlock(v28);
    if ([v16 count])
    {
      v24 = *(a1 + 32);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100014AB4;
      v25[3] = &unk_10005D0D8;
      v25[4] = v24;
      v26 = v16;
      v27 = v23;
      [v24 _onQueue_async:v25];
    }

    else
    {
      (v23[2])(v23);
    }
  }
}

void sub_1000149B8(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = (*(*(*(&v7 + 1) + 8 * v5) + 16))(*(*(&v7 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

uint64_t sub_100014AC4(uint64_t a1)
{
  [*(a1 + 32) _queue_cleanContexts];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100014D2C(uint64_t a1)
{
  if ([*(a1 + 32) count] < 2)
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 32) subarrayWithRange:{1, objc_msgSend(*(a1 + 32), "count") - 1}];
    [*(a1 + 40) _queue_snapshotFaces:v3 completion:*(a1 + 48)];
  }
}

void sub_100014DD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hasBlankComplications];
  v5 = [v3 snapshot];

  v6 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100014EEC;
  v9[3] = &unk_10005D650;
  v9[4] = v6;
  v7 = *(a1 + 40);
  v15 = v4;
  v10 = v7;
  v11 = v5;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v8 = v5;
  [v6 _onQueue_async:v9];
}

void sub_100014EEC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)])
  {
    if (*(a1 + 80))
    {
      goto LABEL_7;
    }

    [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  }

  else
  {
    if (!*(a1 + 80))
    {
      goto LABEL_7;
    }

    [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  }

  [*(a1 + 32) _queue_cleanSnapshotKeysWithBlankComplications];
LABEL_7:
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "writing snapshot to disk", buf, 2u);
  }

  dispatch_semaphore_wait(*(*(a1 + 32) + 64), 0xFFFFFFFFFFFFFFFFLL);
  sub_100007294(@"com.apple.ntkd.facesnapshotcontroller.asyncmappedimagecachework");
  v3 = NTKSnapshotMappedImageCache();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000150DC;
  v13[3] = &unk_10005D608;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v12 = *(a1 + 32);
  v6 = v12.i64[1];
  v7 = *(a1 + 56);
  v8.i64[0] = v5;
  v8.i64[1] = v7;
  v9 = vzip2q_s64(v12, v8);
  v8.i64[1] = v12.i64[0];
  v14 = v8;
  v15 = v9;
  [v3 setImage:v5 forKey:v4 withCompletion:v13];

  v10 = *(*(a1 + 32) + 24);
  v11 = [*(a1 + 64) context];
  [v10 setObject:v11 forKey:*(a1 + 40)];

  [*(a1 + 32) _queue_cleanContexts];
  dispatch_sync(&_dispatch_main_q, &stru_10005D628);
  (*(*(a1 + 72) + 16))();
}

void sub_1000150DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a1 + 32))
  {
    v5 = _NTKLoggingObjectForDomain();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "did write snapshot to disk", v8, 2u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003E410();
    }
  }

  if (NTKDebugWriteSnapshotsToDiskAsPNGs())
  {
    [*(a1 + 40) _writeImageToDisk:v4 imageName:*(a1 + 48)];
  }

  v7 = NTKSnapshotMappedImageCache();
  [v7 _noteExternalChangeForKey:*(a1 + 48)];

  [*(a1 + 40) _notifyFaceSnapshotChangedForKey:*(a1 + 48)];
  sub_1000074E0(@"com.apple.ntkd.facesnapshotcontroller.asyncmappedimagecachework");
  [*(a1 + 56) logCurrentInterval];
  dispatch_semaphore_signal(*(*(a1 + 40) + 64));
}

void sub_1000151E4(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:CLKClearCacheRequestNotification object:0];
}

void sub_100015DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a69, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100015E0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100015E24()
{
  if (qword_100066C38 != -1)
  {
    sub_10003E450();
  }

  v1 = qword_100066C30;

  return v1;
}

id sub_100015E68(uint64_t a1)
{
  v2 = sub_100016570();
  v3 = sub_100020644(v2);

  v4 = [v3 mutableCopy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  result = [*(*(*(a1 + 32) + 8) + 40) indexOfObject:NTKCollectionIdentifierLibraryFaces];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = result;
    v9 = *(*(*(a1 + 32) + 8) + 40);

    return [v9 exchangeObjectAtIndex:0 withObjectAtIndex:v8];
  }

  return result;
}

uint64_t sub_100015F28(uint64_t a1)
{
  v2 = sub_100015F70();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id sub_100015F70()
{
  v0 = objc_alloc_init(NSMutableArray);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = +[NSFileManager defaultManager];
  v2 = sub_100020408();
  v3 = [v1 contentsOfDirectoryAtPath:v2 error:0];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[NSUUID alloc] initWithUUIDString:*(*(&v10 + 1) + 8 * i)];
        if (v8)
        {
          [v0 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v0;
}

id sub_1000160E8(uint64_t a1)
{
  v2 = sub_1000164F4(*(a1 + 32));
  v3 = sub_100020644(v2);

  v4 = [v3 mutableCopy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  result = [*(*(*(a1 + 40) + 8) + 40) indexOfObject:NTKCollectionIdentifierLibraryFaces];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = result;
    v9 = *(*(*(a1 + 40) + 8) + 40);

    return [v9 exchangeObjectAtIndex:0 withObjectAtIndex:v8];
  }

  return result;
}

void sub_100016250(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up orphaned face collection stores...", buf, 2u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = sub_100015F70();
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v20;
    *&v5 = 138412290;
    v18 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if (([*(a1 + 32) containsObject:{v9, v18, v19}] & 1) == 0)
        {
          v10 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v24 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "...deleting face collection stores for device uuid %@", buf, 0xCu);
          }

          v11 = +[NSFileManager defaultManager];
          v12 = sub_1000164F4(v9);
          [v11 removeItemAtPath:v12 error:0];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  v13 = sub_100015F70();
  v14 = [v13 count];

  if (v14)
  {
    v15 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "...deleting GLOBAL face collection stores", buf, 2u);
    }

    v16 = +[NSFileManager defaultManager];
    v17 = sub_100016570();
    [v16 removeItemAtPath:v17 error:0];
  }
}

id sub_1000164F4(void *a1)
{
  v1 = a1;
  v2 = sub_100020408();
  v3 = [v1 UUIDString];

  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

id sub_100016570()
{
  v0 = sub_1000203B4();
  v1 = [v0 stringByAppendingPathComponent:@"GlobalStores"];

  return v1;
}

void sub_100016608(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.ntkd.collectionstore.shared", v3);
  v2 = qword_100066C10;
  qword_100066C10 = v1;
}

void sub_1000166B0(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.ntkd.collectionstore.observers", v3);
  v2 = qword_100066C20;
  qword_100066C20 = v1;
}

void sub_100016DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint8_t buf)
{
  if (a2 == 1)
  {
    v32 = objc_begin_catch(exception_object);
    if (a13)
    {
      v33 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = [a10 stringByAppendingPathComponent:@"deleted.plist"];
        v35 = [v32 reason];
        sub_10003E48C(v34, v35, &buf, v33);
      }
    }

    [v31 removeAllObjects];

    objc_end_catch();
    JUMPOUT(0x100016CA0);
  }

  _Unwind_Resume(exception_object);
}

void sub_100016EA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 56) & 1) == 0)
  {
    v3 = *(v1 + 16);
    v4 = +[NSFileManager defaultManager];
    [v4 removeItemAtPath:v3 error:0];

    v1 = *(a1 + 32);
  }

  v5 = *(v1 + 16);
  v8 = +[NSFileManager defaultManager];
  [v8 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];
  v6 = [v5 stringByAppendingPathComponent:@"Faces"];
  [v8 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

  v7 = [v5 stringByAppendingPathComponent:@"Resources"];

  [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];
}

id sub_100016FD0(uint64_t a1)
{
  v1 = [NSString stringWithContentsOfFile:a1 encoding:4 error:0];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 integerValue]);

  return v2;
}

void sub_100017104(uint64_t a1)
{
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  if (*(a1 + 48))
  {
    if (([*(a1 + 48) isEqual:v2[3]] & 1) == 0)
    {
      v4 = [*(*(a1 + 32) + 16) stringByAppendingPathComponent:@"last-delete-sequence-id.string"];
      v8 = sub_100016FD0(v4);

      v5 = sub_1000171F8(*(a1 + 48), v8);
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      if (v5)
      {
        [v6 _queue_loadFullCollectionForObserver:v7 completion:0];
      }

      else
      {
        [v6 _queue_playbackChangesForObserver:v7 fromSeqId:*(a1 + 48)];
      }
    }
  }

  else
  {
    v3 = *(a1 + 40);

    [v2 _queue_loadFullCollectionForObserver:v3 completion:0];
  }
}

BOOL sub_1000171F8(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 unsignedIntegerValue];
  v5 = [v3 unsignedIntegerValue];

  if (v4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if ((v6 - v7) >= 0x7FFFFFFFFFFFFFFFLL)
  {
    return v4 > v5;
  }

  else
  {
    return v4 < v5;
  }
}

id sub_100017470(id *a1)
{
  objc_storeStrong(a1[4] + 5, a1[5]);
  v2 = a1[4];
  if (a1[6])
  {
    if (([a1[6] isEqual:v2[3]] & 1) == 0)
    {
      [a1[4] _queue_playbackChangesForObserver:a1[5] fromSeqId:a1[6]];
    }
  }

  else
  {
    [v2 _queue_loadFullCollectionForObserver:a1[5] completion:0];
  }

  v3 = a1[4];
  v4 = a1[6];

  return [v3 _queue_clearRemovalsThroughSeqId:v4];
}

void sub_100017560(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10001761C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) stringByAppendingPathComponent:@"version.string"];
  v3 = [NSString stringWithContentsOfFile:v2 encoding:4 error:0];

  [v3 floatValue];
  v5 = v4;

  *(*(*(a1 + 40) + 8) + 24) = v5;
}

void sub_10001771C(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = *(v3 + 96);
    v4 = *(v3 + 104);
    v6 = *(a1 + 40);
    *buf = 138412802;
    v12 = v5;
    v13 = 2112;
    v14 = v4;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "store<%@,%@> set version: %f", buf, 0x20u);
  }

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 16);
  v9 = [NSString stringWithFormat:@"%f", *&v7];
  v10 = [v8 stringByAppendingPathComponent:@"version.string"];

  [v9 writeToFile:v10 atomically:1 encoding:4 error:0];
}

void sub_100017974(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) stringByAppendingPathComponent:@"build-version.string"];
  v3 = [NSString stringWithContentsOfFile:v2 encoding:4 error:0];

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100017B60(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(v3 + 96);
    v5 = *(v3 + 104);
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "store<%@,%@> set build version: %@", &v11, 0x20u);
  }

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 16);
  v9 = v7;
  v10 = [v8 stringByAppendingPathComponent:@"build-version.string"];
  [v9 writeToFile:v10 atomically:1 encoding:4 error:0];
}

void sub_100017FA8(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = *(v3 + 96);
    v4 = *(v3 + 104);
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "store<%@,%@> mark initial setup complete", &v10, 0x16u);
  }

  v6 = *(a1 + 32);
  if ((*(v6 + 56) & 1) == 0)
  {
    *(v6 + 56) = 1;
    v7 = *(*(a1 + 32) + 16);
    v8 = +[NSData data];
    v9 = [v7 stringByAppendingPathComponent:@"setup-complete"];

    [v8 writeToFile:v9 atomically:1];
  }
}

id sub_100018190(uint64_t a1)
{
  result = [*(a1 + 32) _queue_isEmpty];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000182B4(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 64) orderedUUIDs];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_1000184F0(void *a1)
{
  result = [*(a1[4] + 64) faceStyleForUUID:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_100018638(uint64_t a1)
{
  v5 = [*(a1 + 32) _queue_faceForUUID:*(a1 + 40)];
  v2 = [v5 copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000187C8(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = v2[2];
  v8 = [v2 deviceUUID];
  v5 = sub_100018850(v4, v3, v8, 1);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

NSObject *sub_100018850(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [NSData alloc];
  v11 = sub_10002053C(v7, v8);
  v25 = 0;
  v12 = [v10 initWithContentsOfFile:v11 options:1 error:&v25];
  v13 = v25;

  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 == 0;
  }

  if (v14)
  {
    if (v12)
    {
      v24 = v13;
      v16 = [NSJSONSerialization JSONObjectWithData:v12 options:0 error:&v24];
      v15 = v24;

      v13 = v15;
      if (v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v16 = 0;
    }

    if (v13)
    {
      v19 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10003E568();
      }

      v18 = 0;
      goto LABEL_21;
    }

LABEL_17:
    if (v9)
    {
      [CLKDevice deviceForPairingID:v9];
    }

    else
    {
      +[CLKDevice currentDevice];
    }
    v20 = ;
    v21 = [NTKFace faceWithJSONObjectRepresentation:v16 forDevice:v20 forMigration:a4 allowFallbackFromInvalidFaceStyle:1];

    v22 = sub_10001A564(v7, v8);
    [v21 setResourceDirectory:v22];
    v19 = v21;

    v18 = v19;
LABEL_21:

    goto LABEL_22;
  }

  v16 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10003E5D0();
  }

  v18 = 0;
LABEL_22:

  return v18;
}

void sub_100018DEC(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v3 = [*(*(a1 + 32) + 64) orderedUUIDs];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100018EC4;
  v5[3] = &unk_10005D7A8;
  v5[4] = *(a1 + 32);
  v6 = v2;
  v4 = v2;
  [v3 enumerateObjectsUsingBlock:v5];

  sub_100018F54(*(*(a1 + 32) + 16), v4);
}

void sub_100018EC4(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) _queue_faceForUUID:a2];
  v3 = [v7 resourceDirectory];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = [v3 lastPathComponent];
    [v5 addObject:v6];
  }
}

void sub_100018F54(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NSFileManager defaultManager];
  v17 = v3;
  v6 = [v3 stringByAppendingPathComponent:@"Resources"];
  v18 = v5;
  [v5 contentsOfDirectoryAtPath:v6 error:0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 lastPathComponent];
        v13 = [v6 stringByAppendingPathComponent:v11];
        LOBYTE(v11) = [v4 containsObject:v12];
        v14 = _NTKLoggingObjectForDomain();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          if (v15)
          {
            *buf = 138412290;
            v26 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_RemoveResourceDirectoriesExceptUUIDs: Keeping %@", buf, 0xCu);
          }
        }

        else
        {
          if (v15)
          {
            *buf = 138412290;
            v26 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_RemoveResourceDirectoriesExceptUUIDs: Removing %@", buf, 0xCu);
          }

          v20 = 0;
          [v18 removeItemAtPath:v13 error:&v20];
          v14 = v20;
          if (v14)
          {
            v16 = _NTKLoggingObjectForDomain();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v26 = v13;
              v27 = 2112;
              v28 = v14;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not remove Resources directory at path (%@) with error (%@)", buf, 0x16u);
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }
}

void sub_100019378(uint64_t a1)
{
  if ([*(a1 + 32) _queue_setOrderedUUIDs:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v4 = [v2[8] orderedUUIDs];
    v3 = [v4 copy];
    [v2 _queue_notifyDidUpdateOrderedUUIDs:v3 skipSyncObserver:*(a1 + 48)];
  }
}

id sub_1000194E0(uint64_t a1)
{
  result = [*(a1 + 32) _queue_setSelectedUUID:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = v3[10];
    v5 = *(a1 + 56);
    v6 = *(a1 + 48);

    return [v3 _queue_notifyDidUpdateSelectedUUID:v4 skipSyncObserver:v5 suppressingCallbackToObserver:v6];
  }

  return result;
}

void sub_100019604(uint64_t a1)
{
  if ([*(a1 + 32) _queue_addFace:*(a1 + 40) forUUID:*(a1 + 48)])
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) copy];
    [v2 _queue_notifyDidAddFace:v3 forUUID:*(a1 + 48) skipSyncObserver:*(a1 + 56)];
  }
}

void sub_100019748(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_faceForUUID:*(a1 + 40)];
  if ([v2 applyConfiguration:*(a1 + 48)])
  {
    sub_1000198CC(*(*(a1 + 32) + 16), *(a1 + 40), v2);
    [*(a1 + 32) _queue_incrementSeqId];
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    v5 = sub_100019A10(*(v3 + 16), *(a1 + 40));
    sub_100019988(v4, v5);

    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = v7[12];
      v10 = v7[13];
      v11 = v7[3];
      v12 = *(a1 + 48);
      v16 = 138544642;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v12;
      v26 = 2114;
      v27 = v2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@, %{public}@, %{public}@> update face for UUID %{public}@: configuration = %{public}@ - face = %{public}@", &v16, 0x3Eu);
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = [*(a1 + 48) copy];
    [v13 _queue_notifyDidUpdateFaceForUUID:v14 withConfiguration:v15 skipSyncObserver:*(a1 + 56)];
  }
}

void sub_1000198CC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v9 = [a3 JSONObjectRepresentation];
  v7 = [NSJSONSerialization dataWithJSONObject:v9 options:0 error:0];
  v8 = sub_10002053C(v6, v5);

  [v7 writeToFile:v8 atomically:1];
}

void sub_100019988(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithFormat:@"%@", a1];
  [v4 writeToFile:v3 atomically:1 encoding:4 error:0];
}

id sub_100019A10(void *a1, void *a2)
{
  v2 = sub_10002045C(a1, a2);
  v3 = [v2 stringByAppendingPathComponent:@"configuration-sequence-id.string"];

  return v3;
}

void sub_100019B2C(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_faceForUUID:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 resourceDirectory];
    v5 = sub_100019D58(*(*(a1 + 32) + 16), *(a1 + 40), *(a1 + 48));
    [v3 setResourceDirectory:v5];
    [*(a1 + 32) _queue_incrementSeqId];
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v8 = sub_100019ECC(*(v6 + 16), *(a1 + 40));
    sub_100019988(v7, v8);

    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = v10[12];
      v13 = v10[13];
      v14 = v10[3];
      *buf = 138413314;
      v26 = v12;
      v27 = 2112;
      v28 = v13;
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<%@,%@,%@> update face for UUID %@: new resource directory = %@", buf, 0x34u);
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(a1 + 56);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100019F20;
    v23[3] = &unk_10005CA70;
    v24 = v4;
    v18 = v4;
    [v15 _queue_notifyDidUpdateFaceForUUID:v16 withResourceDirectory:v5 skipSyncObserver:v17 completion:v23];
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = [v3 configuration];
    v22 = [v21 copy];
    [v19 _queue_notifyDidUpdateFaceForUUID:v20 withConfiguration:v22 skipSyncObserver:*(a1 + 56)];
  }
}

id sub_100019D58(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = +[NSUUID UUID];
    v9 = [v5 stringByAppendingPathComponent:@"Resources"];
    v10 = [v8 UUIDString];
    v11 = [v9 stringByAppendingPathComponent:v10];

    v12 = +[NSFileManager defaultManager];
    LOBYTE(v10) = [v12 copyItemAtPath:v7 toPath:v11 error:0];

    if ((v10 & 1) == 0)
    {

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = sub_1000204E8(v5, v6);
  v14 = +[NSFileManager defaultManager];
  [v14 removeItemAtPath:v13 error:0];

  if (v11)
  {
    v15 = +[NSFileManager defaultManager];
    [v15 createSymbolicLinkAtPath:v13 withDestinationPath:v11 error:0];
  }

  return v11;
}

id sub_100019ECC(void *a1, void *a2)
{
  v2 = sub_10002045C(a1, a2);
  v3 = [v2 stringByAppendingPathComponent:@"resources-sequence-id.string"];

  return v3;
}

void sub_100019F20(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtPath:*(a1 + 32) error:0];
}

id sub_10001A044(id result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = result;
    sub_1000198CC(*(*(result + 5) + 16), *(result + 6), v1);
    [v2[5] _queue_incrementSeqId];
    v3 = v2[5];
    v4 = *(v3 + 3);
    v5 = sub_10001A174(*(v3 + 2), v2[6]);
    sub_100019988(v4, v5);

    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v2[5];
      v8 = v2[6];
      v9 = v7[12];
      v10 = v7[13];
      v11 = v7[3];
      v12 = 138413058;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%@,%@,%@> upgrade face for UUID %@", &v12, 0x2Au);
    }

    return [v2[5] _queue_notifyDidUpgradeFace:v2[4] forUUID:v2[6] skipSyncObserver:*(v2 + 56)];
  }

  return result;
}

id sub_10001A174(void *a1, void *a2)
{
  v2 = sub_10002045C(a1, a2);
  v3 = [v2 stringByAppendingPathComponent:@"upgrade-sequence-id.string"];

  return v3;
}

void sub_10001A264(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 57) == 1 && (v3 = [v2 _queue_isEmptyExceptForUUID:*(a1 + 40)], v2 = *(a1 + 32), v3))
  {
    v4 = [v2 _queue_faceForUUID:*(a1 + 40)];
    v5 = *(a1 + 40);
    v26 = v4;
    [*(a1 + 32) _queue_notifyDidAddFace:? forUUID:? skipSyncObserver:?];
  }

  else
  {
    v6 = [*(v2 + 64) faceStyleForUUID:*(a1 + 40)];
    if ([*(*(a1 + 32) + 64) removeUUID:*(a1 + 40)])
    {
      v7 = sub_10001A564(*(*(a1 + 32) + 16), *(a1 + 40));
      [*(*(a1 + 32) + 72) removeObjectForKey:*(a1 + 40)];
      sub_10001A5D8(*(*(a1 + 32) + 16), *(*(a1 + 32) + 64));
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 32) + 16);
      v10 = v8;
      v11 = +[NSFileManager defaultManager];
      v12 = sub_10002045C(v9, v10);

      [v11 removeItemAtPath:v12 error:0];
      [*(a1 + 32) _queue_incrementSeqId];
      v13 = *(a1 + 32);
      v14 = *(v13 + 24);
      v15 = [*(v13 + 16) stringByAppendingPathComponent:@"last-delete-sequence-id.string"];
      sub_100019988(v14, v15);

      [*(*(a1 + 32) + 88) setObject:*(*(a1 + 32) + 24) forKey:*(a1 + 40)];
      sub_10001A648(*(*(a1 + 32) + 16), *(*(a1 + 32) + 88));
      v16 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        v19 = v17[12];
        v20 = v17[13];
        v21 = v17[3];
        *buf = 138413058;
        v30 = v19;
        v31 = 2112;
        v32 = v20;
        v33 = 2112;
        v34 = v21;
        v35 = 2112;
        v36 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "<%@,%@,%@> remove face for UUID %@", buf, 0x2Au);
      }

      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      v24 = *(a1 + 48);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10001A7A4;
      v27[3] = &unk_10005CA70;
      v28 = v7;
      v25 = v7;
      [v22 _queue_notifyDidRemoveFaceOfStyle:v6 forUUID:v23 skipSyncObserver:v24 completion:v27];
    }
  }
}

id sub_10001A564(void *a1, void *a2)
{
  v2 = sub_1000204E8(a1, a2);
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 destinationOfSymbolicLinkAtPath:v2 error:0];

  return v4;
}

void sub_10001A5D8(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 stringByAppendingPathComponent:@"manifest.plist"];
  [v3 writeToFile:v4 atomically:1];
}

void sub_10001A648(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (+[UIApplication isRunningInStoreDemoMode](UIApplication, "isRunningInStoreDemoMode") && +[UIApplication runningInStoreDemoModeFProgramNumber]!= 300)
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not executing _WriteRemovals as we are in demo mode and have no companion", buf, 2u);
    }
  }

  else
  {
    +[NSMutableDictionary dictionary];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100020590;
    v8 = v7[3] = &unk_10005DAA0;
    v5 = v8;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];
    v6 = [v3 stringByAppendingPathComponent:@"deleted.plist"];
    [v5 writeToFile:v6 atomically:1];
  }
}

void sub_10001A7A4(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtPath:*(a1 + 32) error:0];
}

void sub_10001A8E0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = +[NSFileManager defaultManager];
  v4 = [v2 stringByAppendingPathComponent:@"Faces"];
  [v3 removeItemAtPath:v4 error:0];

  v5 = [v2 stringByAppendingPathComponent:@"Faces"];

  [v3 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];
  [*(*(a1 + 32) + 64) removeAllUUIDs];
  sub_10001A5D8(*(*(a1 + 32) + 16), *(*(a1 + 32) + 64));
  [*(a1 + 32) _queue_clearRemovalsThroughSeqId:*(*(a1 + 32) + 24)];
  [*(a1 + 32) _queue_incrementSeqId];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  v8 = [*(v6 + 16) stringByAppendingPathComponent:@"last-delete-sequence-id.string"];
  sub_100019988(v7, v8);

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10001AD40;
  v40[3] = &unk_10005D7F8;
  v9 = *(a1 + 40);
  v40[4] = *(a1 + 32);
  [v9 enumerateKeysAndObjectsUsingBlock:v40];
  [*(a1 + 32) _queue_setOrderedUUIDs:*(a1 + 48)];
  [*(a1 + 32) _queue_setSelectedUUID:*(a1 + 56)];
  [*(*(a1 + 32) + 40) collectionStore:*(a1 + 32) didSuppressNotificationForSeqId:*(*(a1 + 32) + 24)];
  v10 = dispatch_group_create();
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = a1;
  v12 = *(*(a1 + 32) + 32);
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      v16 = 0;
      do
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v36 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          dispatch_group_enter(v10);
          v18 = *(v11 + 32);
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_10001AD4C;
          v34[3] = &unk_10005CA70;
          v35 = v10;
          [v18 _queue_reloadFullCollectionForObserver:v17 completion:v34];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v14);
  }

  v19 = +[NSMutableSet set];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10001AD54;
  v28[3] = &unk_10005D820;
  v28[4] = *(v11 + 32);
  v31 = v32;
  v29 = *(v11 + 48);
  v30 = v19;
  v20 = v19;
  v21 = objc_retainBlock(v28);
  v22 = *(*(v11 + 32) + 8);
  dispatch_group_notify(v10, v22, v21);
  v23 = dispatch_time(0, 60000000000);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10001AF20;
  v25[3] = &unk_10005D848;
  v26 = v21;
  v27 = v32;
  v25[4] = *(v11 + 32);
  v24 = v21;
  dispatch_after(v23, v22, v25);

  _Block_object_dispose(v32, 8);
}

void sub_10001AD54(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = *(*(v2 + 24) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003E638(v2);
    }
  }

  else
  {
    *(v4 + 24) = 1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001AE90;
    v7[3] = &unk_10005D7A8;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = *(a1 + 48);
    [v6 enumerateObjectsUsingBlock:v7];
    sub_100018F54(*(*(a1 + 32) + 16), *(a1 + 48));
  }

  objc_sync_exit(v3);
}

void sub_10001AE90(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) _queue_faceForUUID:a2];
  v3 = [v7 resourceDirectory];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = [v3 lastPathComponent];
    [v5 addObject:v6];
  }
}

uint64_t sub_10001AF20(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10003E6B4(v1);
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

void sub_10001B04C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001B0D4;
  v2[3] = &unk_10005CB10;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _onObserverQueue_async:v2];
}

void sub_10001B178(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_computeValidationHash];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001B230;
  v6[3] = &unk_10005CBE8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [v3 _onObserverQueue_async:v6];
}

void sub_10001B2EC(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.collectionstore.asyncwork");
}

void sub_10001B3D0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.collectionstore.asyncobservercallback");
}

id sub_10001B93C(void *a1, void *a2)
{
  v2 = sub_10002045C(a1, a2);
  v3 = [v2 stringByAppendingPathComponent:@"added-sequence-id.string"];

  return v3;
}

void sub_10001C0A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!sub_1000171F8(*(a1 + 32), a3))
  {
    [*(a1 + 40) addObject:v5];
  }
}

void sub_10001C6EC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) complicationForSlot:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 complication];
    [*(a1 + 32) setComplication:v4 forSlot:v5];
  }
}

void sub_10001CFD4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [a3 copy];
  v6 = objc_retainBlock(v7);
  [v4 setObject:v6 forKey:v5];
}

void sub_10001D050(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[playback changes - seqId %@] update selected uuid: %@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001D1BC;
  v10[3] = &unk_10005CFC0;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v13 = v2;
  v14 = v8;
  v9 = v2;
  [v5 _onObserverQueue_async:v10];
}

void sub_10001D1CC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) orderedUUIDs];
  v3 = [v2 copy];

  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [v3 firstObject];
    *buf = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[playback changes - seqId %@] update ordered uuids (first uuid = %@))", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001D364;
  v12[3] = &unk_10005CFC0;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v8;
  v14 = v9;
  v15 = v3;
  v16 = v10;
  v11 = v3;
  [v7 _onObserverQueue_async:v12];
}

void sub_10001D374(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_faceForUUID:*(a1 + 40)];
  v3 = [v2 copy];

  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    *buf = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[playback changes - seqId %@] add face %@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D4F4;
  v11[3] = &unk_10005D060;
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v7;
  v13 = v8;
  v14 = v3;
  v15 = v9;
  v16 = *(a1 + 48);
  v10 = v3;
  [v6 _onObserverQueue_async:v11];
}

void sub_10001D508(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_faceForUUID:*(a1 + 40)];
  v3 = [v2 copy];

  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    *buf = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[playback changes - seqId %@] upgrade face %@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D688;
  v11[3] = &unk_10005D060;
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v7;
  v13 = v8;
  v14 = v3;
  v15 = v9;
  v16 = *(a1 + 48);
  v10 = v3;
  [v6 _onObserverQueue_async:v11];
}

void sub_10001D69C(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _queue_faceForUUID:*(a1 + 40)];
  v4 = [v3 configuration];
  v5 = [v4 copy];

  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    *buf = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[playback changes - seqId %@] update face configuration %@", buf, 0x16u);
  }

  if (v5)
  {
    v8 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001D878;
    v10[3] = &unk_10005D060;
    v11 = *(a1 + 56);
    v12 = *(a1 + 32);
    v13 = v5;
    v14 = *(a1 + 48);
    [v8 _onObserverQueue_async:v10];

    v9 = v11;
  }

  else
  {
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10003E7A4(v2, a1, v9);
    }
  }
}

void sub_10001D88C(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_faceForUUID:*(a1 + 40)];
  v3 = [v2 resourceDirectory];

  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[playback changes - seqId %@] update face resource directory %@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001DA14;
  v8[3] = &unk_10005D060;
  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  v11 = v3;
  v12 = *(a1 + 48);
  v7 = v3;
  [v6 _onObserverQueue_async:v8];
}

void sub_10001DA34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (sub_1000171F8(*(a1 + 32), v6))
  {
    v7 = *(a1 + 56);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001DB30;
    v11[3] = &unk_10005CFC0;
    v12 = v6;
    v8 = v5;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    (*(v7 + 16))(v7, v12, v11);
  }
}

void sub_10001DB30(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[playback changes - seqId %@] remove face for uuid %@", buf, 0x16u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001DC8C;
  v8[3] = &unk_10005CFC0;
  v5 = *(a1 + 48);
  v9 = *(a1 + 56);
  v7 = *(a1 + 40);
  v6 = v7.i64[0];
  v10 = vextq_s8(v7, v7, 8uLL);
  v11 = *(a1 + 32);
  [v5 _onObserverQueue_async:v8];
}

int64_t sub_10001DCAC(id a1, NSNumber *a2, NSNumber *a3)
{
  if (sub_1000171F8(a2, a3))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_10001DE48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001DF00;
  v7[3] = &unk_10005CB10;
  v8 = *(a1 + 80);
  [v1 collectionStore:v2 loadOrderedUUIDs:v3 selectedUUID:v4 facesByUUID:v5 seqId:v6 acknowledge:v7];
}

uint64_t sub_10001DF00(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10001E020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001E03C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10001E0F0;
    v3[3] = &unk_10005D0D8;
    v4 = a1[4];
    v5 = WeakRetained;
    v6 = a1[5];
    [WeakRetained _onObserverQueue_async:v3];
  }
}

void sub_10001E0F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001E180;
  v3[3] = &unk_10005CB10;
  v4 = *(a1 + 48);
  [v1 resetCollectionStore:v2 acknowledge:v3];
}

uint64_t sub_10001E180(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_10001E3E4(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 collectionStore:v4 didSuppressNotificationForSeqId:*(a1 + 48)];
  }

  else
  {
    return [v3 collectionStore:v4 didUpdateSelectedUUID:*(a1 + 56) seqId:*(a1 + 48)];
  }
}

id sub_10001E64C(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 collectionStore:v4 didSuppressNotificationForSeqId:*(a1 + 48)];
  }

  else
  {
    return [v3 collectionStore:v4 didUpdateOrderedUUIDs:*(a1 + 56) seqId:*(a1 + 48)];
  }
}

id sub_10001E8EC(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 collectionStore:v4 didSuppressNotificationForSeqId:*(a1 + 48)];
  }

  else
  {
    return [v3 collectionStore:v4 didUpdateFaceForUUID:*(a1 + 56) withConfiguration:*(a1 + 64) seqId:*(a1 + 48)];
  }
}

id sub_10001EB94(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 collectionStore:v4 didSuppressNotificationForSeqId:*(a1 + 48)];
  }

  else
  {
    return [v3 collectionStore:v4 didUpgradeFace:*(a1 + 56) forUUID:*(a1 + 64) seqId:*(a1 + 48)];
  }
}

void sub_10001EF44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001EFF4;
  v6[3] = &unk_10005CA70;
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  [v1 collectionStore:v2 didUpdateFaceForUUID:v3 withResourceDirectory:v4 seqId:v5 acknowledge:v6];
}

void sub_10001EFFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001F0AC;
  v6[3] = &unk_10005CA70;
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  [v1 collectionStore:v2 didUpdateFaceForUUID:v3 withResourceDirectory:v4 seqId:v5 acknowledge:v6];
}

id sub_10001F31C(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 collectionStore:v4 didSuppressNotificationForSeqId:*(a1 + 48)];
  }

  else
  {
    return [v3 collectionStore:v4 didAddFace:*(a1 + 56) forUUID:*(a1 + 64) seqId:*(a1 + 48)];
  }
}

void sub_10001F69C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001F74C;
  v6[3] = &unk_10005CA70;
  v5 = *(a1 + 72);
  v7 = *(a1 + 64);
  [v1 collectionStore:v2 didRemoveFaceOfStyle:v5 forUUID:v3 seqId:v4 acknowledge:v6];
}

void sub_10001F754(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001F804;
  v6[3] = &unk_10005CA70;
  v5 = *(a1 + 72);
  v7 = *(a1 + 64);
  [v1 collectionStore:v2 didRemoveFaceOfStyle:v5 forUUID:v3 seqId:v4 acknowledge:v6];
}

void sub_10001FF4C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10003E834();
    }

    objc_end_catch();
    JUMPOUT(0x10001FF08);
  }

  _Unwind_Resume(exception_object);
}

id sub_1000203B4()
{
  v0 = NTKHomeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"CollectionStores"];

  return v1;
}

id sub_100020408()
{
  v0 = sub_1000203B4();
  v1 = [v0 stringByAppendingPathComponent:@"PerDeviceStores"];

  return v1;
}

id sub_10002045C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 stringByAppendingPathComponent:@"Faces"];
  v5 = [v3 UUIDString];

  v6 = [v4 stringByAppendingPathComponent:v5];

  return v6;
}

id sub_1000204E8(void *a1, void *a2)
{
  v2 = sub_10002045C(a1, a2);
  v3 = [v2 stringByAppendingPathComponent:@"Resources"];

  return v3;
}

id sub_10002053C(void *a1, void *a2)
{
  v2 = sub_10002045C(a1, a2);
  v3 = [v2 stringByAppendingPathComponent:@"face.json"];

  return v3;
}

void sub_100020590(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 UUIDString];
  [v4 setObject:v5 forKey:v6];
}

void sub_100020604(id a1)
{
  qword_100066C30 = dispatch_queue_create("com.apple.ntkd.collectionstorecreation", 0);

  _objc_release_x1();
}

id sub_100020644(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = +[NSFileManager defaultManager];
    v38 = 0;
    v3 = [v2 contentsOfDirectoryAtPath:v1 error:&v38];
    v4 = v38;
    v5 = v4;
    if (v3)
    {
      v24 = v4;
      v26 = v2;
      v27 = v1;
      v6 = +[NSMutableArray array];
      v7 = +[NSMutableArray array];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v25 = v3;
      obj = v3;
      v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      v29 = v7;
      if (v8)
      {
        v9 = v8;
        v10 = *v35;
        v11 = NTKCollectionIdentifierLibraryFaces;
        v12 = NTKCollectionIdentifierPhotosFaces;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            v14 = v6;
            if (*v35 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v34 + 1) + 8 * i);
            v40[0] = v11;
            v40[1] = v12;
            v16 = [NSArray arrayWithObjects:v40 count:2];
            v17 = [v16 containsObject:v15];

            v18 = v17 == 0;
            v6 = v14;
            v7 = v29;
            if (v18)
            {
              v19 = v29;
            }

            else
            {
              v19 = v14;
            }

            [v19 addObject:v15];
          }

          v9 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v9);
      }

      v2 = v26;
      v1 = v27;
      if ([v7 count])
      {
        if (qword_100066C48 != -1)
        {
          sub_10003E89C();
        }

        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_1000209F4;
        v30[3] = &unk_10005CC38;
        v31 = v7;
        v32 = v27;
        v33 = v26;
        v20 = objc_retainBlock(v30);
        v21 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, v20);
        dispatch_async(qword_100066C40, v21);

        v7 = v29;
      }

      v22 = [v6 copy];

      v5 = v24;
      v3 = v25;
    }

    else
    {
      v6 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10003E8C4();
      }

      v22 = &__NSArray0__struct;
    }
  }

  else
  {
    v2 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10003E92C();
    }

    v22 = &__NSArray0__struct;
  }

  return v22;
}

void sub_1000209B4(id a1)
{
  qword_100066C40 = dispatch_queue_create("com.apple.nanotimekit.collectionstore.cleanup", 0);

  _objc_release_x1();
}

void sub_1000209F4(id *a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v18;
    *&v4 = 138412546;
    v15 = v4;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [a1[5] stringByAppendingPathComponent:{*(*(&v17 + 1) + 8 * i), v15}];
        v9 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to remove store at path %@", buf, 0xCu);
        }

        if (([a1[6] fileExistsAtPath:v8] & 1) == 0)
        {
          v14 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10003E9A4();
          }

          goto LABEL_19;
        }

        v10 = a1[6];
        v16 = 0;
        v11 = [v10 removeItemAtPath:v8 error:&v16];
        v12 = v16;
        if ((v11 & 1) == 0)
        {
          v13 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v22 = v8;
            v23 = 2112;
            v24 = v12;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Couldn't remove store at path %@ - %@", buf, 0x16u);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
}

void sub_100020C74(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100020CE0(id a1)
{
  v1 = [NSXPCListener alloc];
  v2 = [v1 initWithMachServiceName:NTKComplicationStoreMachService];
  v3 = qword_100066C50;
  qword_100066C50 = v2;

  v4 = qword_100066C50;
  v5 = +[NTKDComplicationStoreCoordinator sharedInstance];
  [v4 setDelegate:v5];

  v6 = qword_100066C50;

  [v6 resume];
}

void sub_100020DB0(id a1)
{
  qword_100066C60 = objc_alloc_init(NTKDComplicationStoreCoordinator);

  _objc_release_x1();
}

void sub_100020F6C(uint64_t a1)
{
  v2 = [[NTKDComplicationCollectionClient alloc] initWithConnection:*(a1 + 32)];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002101C;
  v3[3] = &unk_10005DB48;
  v3[4] = *(a1 + 40);
  [(NTKDComplicationCollectionClient *)v2 setInvalidationHandler:v3];
  [*(*(a1 + 40) + 8) addObject:v2];
  [*(a1 + 32) resume];
}

void sub_10002101C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000210B8;
  v7[3] = &unk_10005CA98;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1000211A4(void *a1)
{
  v2 = [NTKDCollectionStoreKey keyWithCollectionIdentifier:a1[4] deviceUUID:a1[5]];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000212CC;
  v10 = &unk_10005DB70;
  v3 = a1[7];
  v11 = a1[6];
  v12 = v3;
  v4 = objc_retainBlock(&v7);
  v5 = [*(a1[6] + 16) objectForKey:{v2, v7, v8, v9, v10, v11}];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [[NTKDComplicationStore alloc] initWithCollectionIdentifier:a1[4] deviceUUID:a1[5]];
    [*(a1[6] + 16) setObject:v6 forKey:v2];
    [a1[6] _queue_notifyObserversStoreCreated:v6];
  }

  (v4[2])(v4, v6);
}

void sub_1000212CC(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) checkoutStore:v3];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021388;
  v7[3] = &unk_10005CBE8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 _onCalloutQueue_async:v7];
}

void sub_100021438(uint64_t a1)
{
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000214D8;
  v5[3] = &unk_10005DB98;
  v5[4] = v3;
  v6 = v2;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_1000214D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021588;
  v7[3] = &unk_10005CA98;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v4;
  v6 = v4;
  [v5 _onCalloutQueue_async:v7];
}

void sub_1000216E0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.complicationcollectioncoordinator.busy");
}

void sub_1000217C4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.complicationcollectioncoordinator.callout");
}

uint64_t sub_100021A94(uint64_t a1)
{
  qword_100066C70 = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

void sub_100021C54(uint64_t a1)
{
  v2 = [NSXPCListener alloc];
  v3 = [v2 initWithMachServiceName:NTKTrackedPhotosMachServiceName];
  v4 = qword_100066C80;
  qword_100066C80 = v3;

  [qword_100066C80 setDelegate:*(a1 + 32)];
  [qword_100066C80 resume];
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Started XPC listener for Tracked Photos service…", v6, 2u);
  }
}

void sub_100021F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100021F44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExportedObject:0];
}

void sub_1000222A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Faces loaded in collection %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) _priorityListFromCollection:v3];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000223E4;
  v9[3] = &unk_10005CA98;
  v9[4] = v6;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

uint64_t sub_10002296C(uint64_t a1)
{
  qword_100066C90 = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

void sub_100022B38(uint64_t a1)
{
  v2 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nanotimekit.devicelibraryserver"];
  v3 = qword_100066CA0;
  qword_100066CA0 = v2;

  [qword_100066CA0 setDelegate:*(a1 + 32)];
  [qword_100066CA0 resume];
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Started XPC listener for Device Library service…", v5, 2u);
  }
}

void sub_100022E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100022E94(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 instanceDescriptor];
  v6 = [NSNumber numberWithInt:*(*(a1[5] + 8) + 24) == a1[6]];
  v7 = [v5 faceJSONRepresentation];
  v12 = 0;
  v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v12];
  v9 = v12;
  if (v8)
  {
    v10 = a1[4];
    v13[0] = @"selected";
    v13[1] = @"faceJSON";
    v14[0] = v6;
    v14[1] = v8;
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v10 addObject:v11];
  }

  else
  {
    v11 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003EAB8(v9, v11);
    }
  }

  ++*(*(a1[5] + 8) + 24);
  objc_autoreleasePoolPop(v4);
}

void sub_1000234DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100023504(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExportedObject:0];
}

void sub_100023754(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Face loaded for JSON in collection %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v15 = 0;
  v6 = [v5 _jsonFromCollection:v3 error:&v15];
  v7 = v15;
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000238C4;
  v12[3] = &unk_10005CC38;
  v12[4] = v8;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, v12);
}

id sub_1000239C8()
{
  if (qword_100066CB8 != -1)
  {
    sub_10003EB30();
  }

  v1 = qword_100066CB0;

  return v1;
}

void sub_100023A0C(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up orphaned complication stores...", buf, 2u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = objc_alloc_init(NSMutableArray);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = +[NSFileManager defaultManager];
  v5 = sub_10002A53C();
  v6 = [v4 contentsOfDirectoryAtPath:v5 error:0];

  v7 = [v6 countByEnumeratingWithState:&v26 objects:buf count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [[NSUUID alloc] initWithUUIDString:*(*(&v26 + 1) + 8 * i)];
        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:buf count:16];
    }

    while (v8);
  }

  v12 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v23;
    *&v13 = 138412290;
    v21 = v13;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v3);
        }

        v17 = *(*(&v22 + 1) + 8 * j);
        if (([*(a1 + 32) containsObject:{v17, v21, v22}] & 1) == 0)
        {
          v18 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v32 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "...deleting complication stores for device uuid %@", buf, 0xCu);
          }

          v19 = +[NSFileManager defaultManager];
          v20 = sub_100023D08(v17);
          [v19 removeItemAtPath:v20 error:0];
        }
      }

      v14 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }
}

id sub_100023D08(void *a1)
{
  v1 = a1;
  v2 = sub_10002A53C();
  v3 = [v1 UUIDString];

  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

id sub_10002408C(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    sub_100023D08(a2);
  }

  else
  {
    sub_10002A4E8();
  }
  v4 = ;
  v5 = [v4 stringByAppendingPathComponent:v3];

  return v5;
}

void sub_100024114(void *a1)
{
  v1 = a1;
  v4 = +[NSFileManager defaultManager];
  [v4 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:0];
  v2 = [v1 stringByAppendingPathComponent:@"Complications"];
  [v4 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0];

  v3 = [v1 stringByAppendingPathComponent:@"ComplicationDescriptors"];

  [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];
}

_NTKDComplicationCollectionManifest *sub_1000241EC(void *a1)
{
  v1 = a1;
  v2 = [_NTKDComplicationCollectionManifest alloc];
  v3 = [v1 stringByAppendingPathComponent:@"manifest.plist"];

  v4 = [(_NTKDComplicationCollectionManifest *)v2 initWithContentsOfFile:v3];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[_NTKDComplicationCollectionManifest emptyManifest];
  }

  v6 = v5;

  return v6;
}

id sub_100024290(void *a1)
{
  v1 = a1;
  v2 = [v1 stringByAppendingPathComponent:@"deleted.plist"];
  v3 = [NSMutableDictionary dictionaryWithContentsOfFile:v2];

  v4 = +[NSMutableDictionary dictionary];
  if (v3)
  {
    objc_opt_class();
    objc_opt_class();
    NTKValidateDictionary();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002A848;
    v6[3] = &unk_10005DE58;
    v7 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v6];
  }

  return v4;
}

void sub_1000245D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 64) complicationDescriptorIdentifiersForClientIdentifier:v3];
  v5 = [v4 copy];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000246A4;
  v7[3] = &unk_10005DC38;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v7];
}

void sub_1000246A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NTKComplicationKey alloc] initWithClientIdentifier:*(a1 + 32) complicationIdentifier:v3];
  v5 = objc_autoreleasePoolPush();
  v6 = sub_10002482C(*(*(a1 + 40) + 16), *(a1 + 32), v3);
  if (v6)
  {

    objc_autoreleasePoolPop(v5);
    v7 = [*(*(a1 + 40) + 64) familiesWithSampleTemplateForKey:v4];
    v8 = [v7 copy];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000248B4;
    v12[3] = &unk_10005DC10;
    v12[4] = *(a1 + 40);
    v9 = v4;
    v10 = *(a1 + 48);
    v13 = v9;
    v14 = v10;
    [v8 enumerateObjectsUsingBlock:v12];
  }

  else
  {
    v11 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003EBB8(v4, v11);
    }

    [*(*(a1 + 40) + 64) removeSampleTemplatesForKey:v4];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    objc_autoreleasePoolPop(v5);
  }
}

id sub_10002482C(void *a1, void *a2, void *a3)
{
  v3 = sub_10002A78C(a1, a2, a3);
  v4 = [[NSDictionary alloc] initWithContentsOfFile:v3];
  if (v4)
  {
    v5 = [[CLKComplicationDescriptor alloc] initWithJSONObjectRepresentation:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000248B4(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[5];
  v9 = *(a1[4] + 16);
  [v6 intValue];
  v10 = sub_1000249A0(v9, v8);
  if (!v10)
  {
    v11 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003EC30(v6, a1 + 5);
    }

    [*(a1[4] + 64) removeSampleTemplatesForKey:a1[5]];
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v7);
}

id sub_1000249A0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_100025030(v3, v4);
  v12 = 0;
  v6 = [[NSData alloc] initWithContentsOfFile:v5 options:1 error:&v12];
  v7 = v12;
  if (v7)
  {
    v8 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003ECC8();
    }

    v9 = 0;
  }

  else
  {
    v10 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:0];
    [v10 setDecodingFailurePolicy:0];
    v9 = [v10 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
  }

  return v9;
}

void sub_100024B68(uint64_t a1)
{
  [*(a1 + 32) _queue_incrementSeqId];
  objc_storeStrong((*(a1 + 32) + 32), *(*(a1 + 32) + 24));
  sub_10001A5D8(*(*(a1 + 32) + 16), *(*(a1 + 32) + 64));
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4 = [*(v2 + 16) stringByAppendingPathComponent:@"reset-sequence-id.string"];
  sub_100019988(v3, v4);

  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  v7 = [*(v5 + 16) stringByAppendingPathComponent:@"manifest-sequence-id.string"];
  sub_100019988(v6, v7);

  v8 = *(a1 + 32);
  if (*(v8 + 48))
  {
    [v8 _queue_loadFullCollectionForObserver:?];
    v8 = *(a1 + 32);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(v8 + 40);
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(a1 + 32) _queue_loadFullCollectionForObserver:{*(*(&v14 + 1) + 8 * v13), v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

id sub_100025030(void *a1, void *a2)
{
  v2 = sub_10002A650(a1, a2);
  v3 = [v2 stringByAppendingPathComponent:@"sample-template"];

  return v3;
}

void sub_1000253DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100025400(void *a1, void *a2)
{
  v3 = a2;
  v5 = [[NTKComplicationKey alloc] initWithClientIdentifier:a1[4] descriptor:v3];

  (*(a1[5] + 16))();
  v4 = [v5 complicationIdentifier];
  LODWORD(v3) = [v4 isEqualToString:CLKDefaultComplicationIdentifier];

  if (v3)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_100025660(uint64_t a1)
{
  [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 16) stringByAppendingPathComponent:@"last-delete-sequence-id.string"];
  v5 = sub_100016FD0(v2);

  if (sub_1000171F8(v5, *(*(a1 + 32) + 32)))
  {
    v3 = *(*(a1 + 32) + 32);

    v4 = v3;
  }

  else
  {
    v4 = v5;
  }

  v6 = v4;
  [*(a1 + 32) _setupObserver:*(a1 + 40) withSeqId:*(a1 + 48) reloadSeqId:v4];
}

id sub_100025888(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  [*(a1 + 32) _setupObserver:*(a1 + 40) withSeqId:*(a1 + 48) reloadSeqId:*(*(a1 + 32) + 32)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _queue_clearRemovalsThroughSeqId:v3];
}

void sub_100025A00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
}

float sub_100025AF4(void *a1)
{
  v1 = [a1 stringByAppendingPathComponent:@"version.string"];
  v2 = [NSString stringWithContentsOfFile:v1 encoding:4 error:0];

  [v2 floatValue];
  v4 = v3;

  return v4;
}

void sub_100025BEC(void *a1, float a2)
{
  v2 = a2;
  v3 = a1;
  v5 = [NSString stringWithFormat:@"%f", *&v2];
  v4 = [v3 stringByAppendingPathComponent:@"version.string"];

  [v5 writeToFile:v4 atomically:1 encoding:4 error:0];
}

uint64_t sub_100025D84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100025D9C(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 64) clientIds];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100025F60(uint64_t a1)
{
  v5 = [*(a1 + 32) _queue_sampleTemplateForKey:*(a1 + 40) family:*(a1 + 56)];
  v2 = [v5 copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_1000260E4(uint64_t a1)
{
  result = [*(a1 + 32) _queue_hasSampleTemplateForKey:*(a1 + 40) family:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_100026230(uint64_t a1)
{
  v5 = [*(a1 + 32) _queue_complicationDescriptorsForClientIdentifier:*(a1 + 40)];
  v2 = [v5 copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000266B0(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableOrderedSet);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = [*(a1 + 32) supportedFamilies];
  v42 = v2;
  v46 = [obj countByEnumeratingWithState:&v56 objects:v70 count:16];
  if (v46)
  {
    v4 = *v57;
    *&v3 = 138544130;
    v40 = v3;
    v41 = *v57;
    do
    {
      for (i = 0; i != v46; i = i + 1)
      {
        if (*v57 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v56 + 1) + 8 * i);
        v7 = [v6 integerValue];
        if ([*(*(a1 + 40) + 64) addKey:*(a1 + 48) supportForSampleTemplateForFamily:v7])
        {
          [v2 addObject:v6];
        }

        v8 = [*(a1 + 32) templatePathForFamily:v7];
        if (!v8)
        {
          v8 = sub_100025030(*(*(a1 + 40) + 16), *(a1 + 48));
          [*(a1 + 32) setTemplatePath:v8 forFamily:v7];
        }

        sub_100026C4C(*(*(a1 + 40) + 16), *(a1 + 48));
        context = objc_autoreleasePoolPush();
        v9 = [*(a1 + 32) templateForFamily:v7];
        if (_os_feature_enabled_impl())
        {
          v10 = objc_alloc_init(NTKKeyedHashingEncoder);
          [v10 encodeRootObject:v9];
          v45 = v10;
          v44 = [v10 encodedData];
          v11 = [v44 clk_hexEncodedString];
          v12 = sub_100026CBC(*(*(a1 + 40) + 16), *(a1 + 48), v7);
          LODWORD(v10) = [v12 isEqualToString:v11];
          v13 = _NTKLoggingObjectForDomain();
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          if (v10)
          {
            if (v14)
            {
              v15 = *(a1 + 48);
              v16 = CLKStringForComplicationFamily();
              *buf = 138543618;
              v63 = v15;
              v64 = 2114;
              v65 = v16;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipped updating sample template for key %{public}@, family %{public}@: previously-stored template content is identical.", buf, 0x16u);
            }

            v4 = v41;
            v2 = v42;
            goto LABEL_22;
          }

          if (v14)
          {
            v17 = *(a1 + 48);
            v18 = CLKStringForComplicationFamily();
            *buf = v40;
            v63 = v17;
            v64 = 2114;
            v65 = v18;
            v19 = v18;
            v66 = 2114;
            v67 = v12;
            v68 = 2114;
            v69 = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating sample template for key %{public}@, family %{public}@: previously-stored template content hash %{public}@ differs from new hash %{public}@.", buf, 0x2Au);
          }

          v4 = v41;
          v2 = v42;
        }

        else
        {
          v11 = 0;
        }

        sub_100026E94(*(*(a1 + 40) + 16), v9, *(a1 + 48));
        if (v11)
        {
          sub_100027018(*(*(a1 + 40) + 16), v11, *(a1 + 48));
        }

        [v2 addObject:v6];
LABEL_22:

        objc_autoreleasePoolPop(context);
      }

      v46 = [obj countByEnumeratingWithState:&v56 objects:v70 count:16];
    }

    while (v46);
  }

  if ([v2 count])
  {
    sub_10001A5D8(*(*(a1 + 40) + 16), *(*(a1 + 40) + 64));
    [*(a1 + 40) _queue_incrementSeqId];
    v20 = *(a1 + 40);
    v21 = *(v20 + 24);
    v22 = [*(v20 + 16) stringByAppendingPathComponent:@"manifest-sequence-id.string"];
    sub_100019988(v21, v22);

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v23 = v2;
    v24 = [v23 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v53;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v53 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(a1 + 40);
          v29 = *(a1 + 48);
          v31 = *(v28 + 16);
          v30 = *(v28 + 24);
          [*(*(&v52 + 1) + 8 * j) integerValue];
          v32 = sub_100027180(v31, v29);
          sub_100019988(v30, v32);
        }

        v25 = [v23 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v25);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v33 = v23;
    v34 = [v33 countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v49;
      do
      {
        for (k = 0; k != v35; k = k + 1)
        {
          if (*v49 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v48 + 1) + 8 * k) integerValue];
          v39 = [*(a1 + 32) templateReferenceForFamily:v38];
          [*(a1 + 40) _queue_notifyDidUpdateSampleTemplateReference:v39 forKey:*(a1 + 48) family:v38 skipSyncObserver:*(a1 + 56)];
        }

        v35 = [v33 countByEnumeratingWithState:&v48 objects:v60 count:16];
      }

      while (v35);
    }

    v2 = v42;
  }
}

void sub_100026C4C(void *a1, void *a2)
{
  v3 = sub_10002A650(a1, a2);
  v2 = +[NSFileManager defaultManager];
  [v2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];
}

NSObject *sub_100026CBC(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = sub_10002A6C4(a1, v5);
  v15 = 0;
  v7 = [[NSData alloc] initWithContentsOfFile:v6 options:0 error:&v15];
  v8 = v15;
  if (v7)
  {
    v9 = [[NSString alloc] initWithData:v7 encoding:4];
    v10 = v9;
    if (v9)
    {
      v10 = v9;
      v11 = v10;
    }

    else
    {
      v12 = CLKLoggingObjectForDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10003EDA0(v5, a3, v12);
      }

      v11 = 0;
    }
  }

  else
  {
    v10 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = CLKStringForComplicationFamily();
      *buf = 138543874;
      v17 = v5;
      v18 = 2114;
      v19 = v14;
      v20 = 2114;
      v21 = v8;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Failed to load complication sample template content hash for key %{public}@, family %{public}@: %{public}@. This error is expected on fresh pairing or if the complication store has been removed.", buf, 0x20u);
    }

    v11 = 0;
  }

  return v11;
}

void sub_100026E94(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
  v8 = sub_100025030(v5, v6);
  v9 = [v7 writeToFile:v8 atomically:1];

  v10 = CLKLoggingObjectForDomain();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = CLKStringForComplicationFamily();
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully wrote complication sample template for key %@, family %@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10003EE54();
  }

  sub_10002A7E0(v5, v6);
}

void sub_100027018(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = sub_10002A6C4(a1, v5);
  v8 = [v6 dataUsingEncoding:4];

  v13 = 0;
  v9 = [v8 writeToFile:v7 options:1 error:&v13];
  v10 = v13;
  if ((v9 & 1) == 0)
  {
    v11 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = CLKStringForComplicationFamily();
      *buf = 138543874;
      v15 = v5;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to write complication sample template content hash for key %{public}@, family %{public}@: %{public}@", buf, 0x20u);
    }
  }
}

id sub_100027180(void *a1, void *a2)
{
  v2 = sub_10002A650(a1, a2);
  v3 = [v2 stringByAppendingPathComponent:@"sample-template-sequence-id.string"];

  return v3;
}

void sub_1000272CC(uint64_t a1)
{
  [*(*(a1 + 32) + 64) addKey:*(a1 + 40) supportForSampleTemplateForFamily:*(a1 + 64)];
  v2 = [*(a1 + 48) templatePathForFamily:*(a1 + 64)];
  if (!v2)
  {
    v3 = *(a1 + 64);
    v2 = sub_100025030(*(*(a1 + 32) + 16), *(a1 + 40));
    [*(a1 + 48) setTemplatePath:v2 forFamily:*(a1 + 64)];
  }

  v4 = *(a1 + 64);
  sub_100026C4C(*(*(a1 + 32) + 16), *(a1 + 40));
  if (_os_feature_enabled_impl())
  {
    v5 = objc_alloc_init(NTKKeyedHashingEncoder);
    [v5 encodeRootObject:*(a1 + 56)];
    v6 = [v5 encodedData];
    v7 = [v6 clk_hexEncodedString];
    v8 = sub_100026CBC(*(*(a1 + 32) + 16), *(a1 + 40), *(a1 + 64));
    v9 = [v8 isEqualToString:v7];
    v10 = _NTKLoggingObjectForDomain();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12 = *(a1 + 40);
        v13 = *(a1 + 64);
        v14 = CLKStringForComplicationFamily();
        v27 = 138543618;
        v28 = v12;
        v29 = 2114;
        v30 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skipped updating sample template for key %{public}@, family %{public}@: previously-stored template content is identical.", &v27, 0x16u);
      }

      goto LABEL_15;
    }

    if (v11)
    {
      v15 = *(a1 + 40);
      v16 = *(a1 + 64);
      v17 = CLKStringForComplicationFamily();
      v27 = 138544130;
      v28 = v15;
      v29 = 2114;
      v30 = v17;
      v31 = 2114;
      v32 = v8;
      v33 = 2114;
      v34 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating sample template for key %{public}@, family %{public}@: previously-stored template content hash %{public}@ differs from new hash %{public}@.", &v27, 0x2Au);
    }
  }

  else
  {
    v7 = 0;
  }

  v18 = *(a1 + 64);
  sub_100026E94(*(*(a1 + 32) + 16), *(a1 + 56), *(a1 + 40));
  if (v7)
  {
    v19 = *(a1 + 64);
    sub_100027018(*(*(a1 + 32) + 16), v7, *(a1 + 40));
  }

  sub_10001A5D8(*(*(a1 + 32) + 16), *(*(a1 + 32) + 64));
  [*(a1 + 32) _queue_incrementSeqId];
  v20 = *(a1 + 32);
  v21 = *(v20 + 24);
  v22 = [*(v20 + 16) stringByAppendingPathComponent:@"manifest-sequence-id.string"];
  sub_100019988(v21, v22);

  v23 = *(a1 + 32);
  v24 = *(v23 + 24);
  v25 = *(a1 + 64);
  v26 = sub_100027180(*(v23 + 16), *(a1 + 40));
  sub_100019988(v24, v26);

  v5 = [*(a1 + 48) templateReferenceForFamily:*(a1 + 64)];
  [*(a1 + 32) _queue_notifyDidUpdateSampleTemplateReference:v5 forKey:*(a1 + 40) family:*(a1 + 64) skipSyncObserver:*(a1 + 72)];
LABEL_15:
}

void sub_100027800(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = sub_100027B90(*(*(a1 + 32) + 16), *(a1 + 40));
  [v2 removeItemAtPath:v3 error:0];

  v4 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = *(a1 + 48);
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    v31 = 138412802;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        v11 = [v10 identifier];
        if (v11)
        {
          [v4 addObject:v11];
          sub_100027C04(*(*(a1 + 32) + 16), *(a1 + 40), v11);
          sub_100027C74(*(*(a1 + 32) + 16), v10, *(a1 + 40), v11);
        }

        else
        {
          v12 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = [v10 displayName];
            v14 = *(a1 + 40);
            *buf = v31;
            v43 = v10;
            v44 = 2112;
            v45 = v13;
            v46 = 2112;
            v47 = v14;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No identifier for descriptor %@ (%@) of client %@", buf, 0x20u);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v7);
  }

  v32 = v4;
  [*(*(a1 + 32) + 64) setClientId:*(a1 + 40) supportForComplicationDescriptorIdentifiers:v4];
  sub_10001A5D8(*(*(a1 + 32) + 16), *(*(a1 + 32) + 64));
  [*(a1 + 32) _queue_incrementSeqId];
  v15 = *(a1 + 32);
  v16 = *(v15 + 24);
  v17 = [*(v15 + 16) stringByAppendingPathComponent:@"manifest-sequence-id.string"];
  sub_100019988(v16, v17);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = *(a1 + 48);
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v33 + 1) + 8 * j);
        v24 = objc_autoreleasePoolPush();
        v25 = *(a1 + 32);
        v26 = *(a1 + 40);
        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        v29 = [v23 identifier];
        v30 = sub_100027DF0(v28, v26, v29);
        sub_100019988(v27, v30);

        objc_autoreleasePoolPop(v24);
      }

      v20 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v20);
  }

  [*(a1 + 32) _queue_notifyDidUpdateComplicationDescriptors:*(a1 + 56) forClientIdentifier:*(a1 + 40) skipSyncObserver:*(a1 + 64)];
}

id sub_100027B90(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 stringByAppendingPathComponent:@"ComplicationDescriptors"];
  v5 = [v4 stringByAppendingPathComponent:v3];

  return v5;
}

void sub_100027C04(void *a1, void *a2, void *a3)
{
  v4 = sub_10002A718(a1, a2, a3);
  v3 = +[NSFileManager defaultManager];
  [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
}

void sub_100027C74(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = [v7 JSONObjectRepresentation];
  v12 = sub_10002A78C(v10, v8, v9);

  LODWORD(v9) = [v11 writeToFile:v12 atomically:1];
  v13 = CLKLoggingObjectForDomain();
  v14 = v13;
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v7 identifier];
      v16 = 138412546;
      v17 = v15;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Successfully wrote complication descriptor %@ for %@", &v16, 0x16u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10003EF00(v7);
  }
}

id sub_100027DF0(void *a1, void *a2, void *a3)
{
  v3 = sub_10002A718(a1, a2, a3);
  v4 = [v3 stringByAppendingPathComponent:@"descriptor-sequence-id.string"];

  return v4;
}

id sub_100027EE0(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) removeSampleTemplatesForKey:*(a1 + 40)];
  if (result)
  {
    v3 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) clientIdentifier];
      v5 = [*(a1 + 40) complicationIdentifier];
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NTKDComplicationStore, removing sample data for %@, %@", &v9, 0x16u);
    }

    os_unfair_lock_lock((*(a1 + 32) + 80));
    [*(*(a1 + 32) + 72) removeObjectForKey:*(a1 + 40)];
    sub_10001A5D8(*(*(a1 + 32) + 16), *(*(a1 + 32) + 64));
    sub_10002807C(*(*(a1 + 32) + 16), *(a1 + 40));
    os_unfair_lock_unlock((*(a1 + 32) + 80));
    [*(a1 + 32) _queue_incrementSeqId];
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v8 = [*(v6 + 16) stringByAppendingPathComponent:@"last-delete-sequence-id.string"];
    sub_100019988(v7, v8);

    [*(*(a1 + 32) + 104) setObject:*(*(a1 + 32) + 24) forKey:*(a1 + 40)];
    sub_1000281EC(*(*(a1 + 32) + 16), *(*(a1 + 32) + 104));
    return [*(a1 + 32) _queue_notifyDidRemoveComplicationForKey:*(a1 + 40) skipSyncObserver:*(a1 + 48)];
  }

  return result;
}

void sub_10002807C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[NSFileManager defaultManager];
  v6 = sub_10002A590(v4, v3);

  v7 = [v5 removeItemAtPath:v6 error:0];
  v8 = CLKLoggingObjectForDomain();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v3 clientIdentifier];
      v11 = [v3 complicationIdentifier];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully removed complication sample data for %@, %@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10003EF9C(v3);
  }
}

void sub_1000281EC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  +[NSMutableDictionary dictionary];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A958;
  v8 = v7[3] = &unk_10005DE80;
  v5 = v8;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  v6 = [v4 stringByAppendingPathComponent:@"deleted.plist"];

  [v5 writeToFile:v6 atomically:1];
}

void sub_100028528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100028548(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 identifier];
  v8 = [*(a1 + 32) complicationIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1000286B4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.complicationstore.asyncwork");
}

void sub_100028798(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.complicationstore.asyncobservercallback");
}

void sub_100028C38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!sub_1000171F8(*(a1 + 32), a3))
  {
    [*(a1 + 40) addObject:v5];
  }
}

void sub_100029198(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [a3 copy];
  v6 = objc_retainBlock(v7);
  [v4 setObject:v6 forKey:v5];
}

void sub_100029214(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_complicationDescriptorsForClientIdentifier:*(a1 + 40)];
  v3 = [v2 copy];

  v4 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000292FC;
  v9[3] = &unk_10005D060;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = v3;
  v13 = v7;
  v14 = *(a1 + 56);
  v8 = v3;
  [v4 _onObserverQueue_async:v9];
}

void sub_100029310(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [*(*(a1 + 32) + 64) familiesWithSampleTemplateForKey:v3];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v18 + 1) + 8 * v8) integerValue];
        v10 = sub_100027180(*(*(a1 + 32) + 16), v3);
        v11 = sub_100016FD0(v10);

        if (v11 && sub_1000171F8(*(a1 + 40), v11))
        {
          v12 = *(a1 + 56);
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_10002951C;
          v13[3] = &unk_10005DD98;
          v13[4] = *(a1 + 32);
          v14 = v3;
          v17 = v9;
          v15 = *(a1 + 48);
          v16 = v11;
          (*(v12 + 16))(v12, v16, v13);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }
}

void sub_10002951C(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_sampleTemplateReferenceForKey:*(a1 + 40) family:*(a1 + 64)];
  v3 = [v2 copy];

  v4 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002961C;
  v12[3] = &unk_10005DA78;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = v3;
  v8 = v7;
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  v16 = v8;
  v18 = v9;
  v17 = v10;
  v11 = v3;
  [v4 _onObserverQueue_async:v12];
}

void sub_10002961C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [*(a1 + 56) clientIdentifier];
  v5 = [*(a1 + 40) _descriptorForKey:*(a1 + 56)];
  [v2 complicationStore:v3 didUpdateSampleTemplateReference:v4 forClientIdentifier:v6 descriptor:v5 family:*(a1 + 72) seqId:*(a1 + 64)];
}

void sub_1000296B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (sub_1000171F8(*(a1 + 32), v6))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000297A4;
    v9[3] = &unk_10005CFC0;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9[4] = *(a1 + 40);
    v10 = v7;
    v11 = v5;
    v12 = v6;
    (*(v8 + 16))(v8, v12, v9);
  }
}

void sub_1000297A4(uint64_t a1)
{
  v2 = (a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100029878;
  v9[3] = &unk_10005CFC0;
  v3 = *(a1 + 32);
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 _onObserverQueue_async:v9];
}

void sub_100029878(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [*(a1 + 48) clientIdentifier];
  v4 = [*(a1 + 40) _descriptorForKey:*(a1 + 48)];
  [v2 complicationStore:v3 didRemoveComplicationSampleTemplatesForClientIdentifier:v5 descriptor:v4 seqId:*(a1 + 56)];
}

int64_t sub_1000298FC(id a1, NSNumber *a2, NSNumber *a3)
{
  if (sub_1000171F8(a2, a3))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_1000299E8(uint64_t a1)
{
  [*(a1 + 32) _faultInAllClientData];
  os_unfair_lock_lock((*(a1 + 32) + 80));
  v3 = [*(*(a1 + 32) + 72) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 80));
  os_unfair_lock_lock((*(a1 + 32) + 96));
  v2 = [*(*(a1 + 32) + 88) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 96));
  [*(a1 + 40) complicationStore:*(a1 + 32) loadFullCollectionWithLocalizableSampleTemplates:v3 complicationDescriptors:v2 seqId:*(a1 + 48)];
}

void sub_100029D08(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(a1 + 80) == 1)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);

    [v5 complicationStore:v3 didSuppressNotificationForSeqId:v4];
  }

  else
  {
    v6 = *(a1 + 56);
    v8 = [*(a1 + 64) clientIdentifier];
    v7 = [*(a1 + 40) _descriptorForKey:*(a1 + 64)];
    [v2 complicationStore:v3 didUpdateSampleTemplateReference:v6 forClientIdentifier:v8 descriptor:v7 family:*(a1 + 72) seqId:*(a1 + 48)];
  }
}

void sub_100029DE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [*(a1 + 56) clientIdentifier];
  v5 = [*(a1 + 40) _descriptorForKey:*(a1 + 56)];
  [v2 complicationStore:v3 didUpdateSampleTemplateReference:v4 forClientIdentifier:v6 descriptor:v5 family:*(a1 + 72) seqId:*(a1 + 64)];
}

id sub_10002A0DC(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 complicationStore:v4 didSuppressNotificationForSeqId:*(a1 + 48)];
  }

  v5 = *(a1 + 64);
  v6 = *(a1 + 48);
  return [v3 complicationStore:v4 didUpdateComplicationDescriptors:*(a1 + 56) forClientIdentifier:? seqId:?];
}

void sub_10002A34C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(a1 + 64) == 1)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);

    [v5 complicationStore:v3 didSuppressNotificationForSeqId:v4];
  }

  else
  {
    v7 = [*(a1 + 56) clientIdentifier];
    v6 = [*(a1 + 40) _descriptorForKey:*(a1 + 56)];
    [v2 complicationStore:v3 didRemoveComplicationSampleTemplatesForClientIdentifier:v7 descriptor:v6 seqId:*(a1 + 48)];
  }
}

void sub_10002A410(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [*(a1 + 48) clientIdentifier];
  v4 = [*(a1 + 40) _descriptorForKey:*(a1 + 48)];
  [v2 complicationStore:v3 didRemoveComplicationSampleTemplatesForClientIdentifier:v5 descriptor:v4 seqId:*(a1 + 56)];
}

id sub_10002A494()
{
  v0 = NTKHomeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"ComplicationCollectionStores"];

  return v1;
}

id sub_10002A4E8()
{
  v0 = sub_10002A494();
  v1 = [v0 stringByAppendingPathComponent:@"GlobalStores"];

  return v1;
}

id sub_10002A53C()
{
  v0 = sub_10002A494();
  v1 = [v0 stringByAppendingPathComponent:@"PerDeviceStores"];

  return v1;
}

id sub_10002A590(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 stringByAppendingPathComponent:@"Complications"];
  v5 = [v3 clientIdentifier];
  v6 = [v4 stringByAppendingPathComponent:v5];
  v7 = [v3 complicationIdentifier];

  v8 = [v6 stringByAppendingPathComponent:v7];

  return v8;
}

id sub_10002A650(void *a1, void *a2)
{
  v2 = sub_10002A590(a1, a2);
  v3 = CLKStringForComplicationFamily();
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

id sub_10002A6C4(void *a1, void *a2)
{
  v2 = sub_10002A650(a1, a2);
  v3 = [v2 stringByAppendingPathComponent:@"sample-template-content-hash.string"];

  return v3;
}

id sub_10002A718(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_100027B90(a1, a2);
  v7 = [v6 stringByAppendingPathComponent:v5];

  return v7;
}

id sub_10002A78C(void *a1, void *a2, void *a3)
{
  v3 = sub_10002A718(a1, a2, a3);
  v4 = [v3 stringByAppendingPathComponent:@"descriptor"];

  return v4;
}

void sub_10002A7E0(void *a1, void *a2)
{
  v3 = sub_10002A6C4(a1, a2);
  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtPath:v3 error:0];
}

void sub_10002A848(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_class();
  objc_opt_class();
  NTKValidateDictionary();
  v7 = [NTKComplicationKey alloc];
  v8 = [v6 objectForKeyedSubscript:@"clientID"];
  v9 = [v6 objectForKeyedSubscript:@"typeID"];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = CLKDefaultComplicationIdentifier;
  }

  v11 = [v7 initWithClientIdentifier:v8 complicationIdentifier:v10];

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v11];
}

void sub_10002A958(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v11[0] = @"clientID";
  v5 = a3;
  v6 = a2;
  v7 = [v6 clientIdentifier];
  v11[1] = @"typeID";
  v12[0] = v7;
  v8 = [v6 complicationIdentifier];

  v9 = CLKDefaultComplicationIdentifier;
  if (v8)
  {
    v9 = v8;
  }

  v12[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v4 setObject:v5 forKey:v10];
}

void sub_10002B3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003F058();
    }

    objc_end_catch();
    JUMPOUT(0x10002B310);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002B478(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  objc_opt_class();
  NTKValidateDictionary();
  [*(*(a1 + 32) + 8) addObject:v5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002B57C;
  v8[3] = &unk_10005DEA8;
  v9 = v5;
  v10 = *(a1 + 32);
  v7 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

void sub_10002B57C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_class();
  NTKValidateArray();
  v9 = [[NTKComplicationKey alloc] initWithClientIdentifier:*(a1 + 32) complicationIdentifier:v6];

  v7 = *(*(a1 + 40) + 16);
  v8 = [v5 mutableCopy];

  [v7 setObject:v8 forKey:v9];
}

void sub_10002B904(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 clientIdentifier];
  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
    if (!v8)
    {
      v8 = +[NSMutableDictionary dictionary];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
    }

    v9 = [v5 complicationIdentifier];
    v10 = v9;
    v11 = CLKDefaultComplicationIdentifier;
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    [v8 setObject:v6 forKeyedSubscript:v12];
  }

  else
  {
    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003F0C4(v8);
    }
  }
}

void sub_10002BA70(id a1)
{
  qword_100066CB0 = dispatch_queue_create("com.apple.ntkd.collectionstorecreation", 0);

  _objc_release_x1();
}

void sub_10002C1FC(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (!a2)
  {
    v10 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003F178(a1);
    }

    goto LABEL_14;
  }

  v9 = *(a1 + 40);
  switch(v9)
  {
    case 3:
      v10 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = 138412290;
        v16 = v14;
        v12 = "sent up next log collection message to companion: %@";
        goto LABEL_13;
      }

      goto LABEL_14;
    case 2:
      v10 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v15 = 138412290;
        v16 = v13;
        v12 = "sent memory viewed with collection identifier to companion: %@";
        goto LABEL_13;
      }

LABEL_14:

      break;
    case 1:
      v10 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v15 = 138412290;
        v16 = v11;
        v12 = "sent library validation hash to companion: %@";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, &v15, 0xCu);
        goto LABEL_14;
      }

      goto LABEL_14;
  }
}

id sub_10002C49C(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "reset sync successfully requested", v4, 2u);
  }

  return [*(*(a1 + 32) + 16) setNeedsResetSync];
}

id sub_10002C590(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "delta sync successfully requested", v4, 2u);
  }

  return [*(*(a1 + 32) + 16) setHasChangesAvailable];
}

void sub_10002C684(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "delta sync request queued", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C754;
  block[3] = &unk_10005CA70;
  block[4] = v3;
  dispatch_async(v4, block);
}

uint64_t sub_10002C9F4(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  *(*(a1 + 32) + 48) = 0;
  return result;
}

void *sub_10002DAEC(void *result)
{
  if (*(result[4] + 32) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "requesting new reset sync after previous failure", v5, 2u);
    }

    ++*(v3[4] + 40);
    *(v3[4] + 32) = 0;
    return [v3[4] _queue_resetSync];
  }

  return result;
}

id sub_10002EA1C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    ++*(v2 + 40);
  }

  else
  {
    *(v2 + 40) = 0;
    [*(a1 + 40) _resetBackoffPeriod];
  }

  result = [*(a1 + 48) isResetSync];
  if (result)
  {
    *(*(a1 + 40) + 32) = 0;
  }

  if (!*(a1 + 32))
  {
    v4 = *(a1 + 40);
    if (*(v4 + 64) == 1)
    {
      *(v4 + 64) = 0;
      v5 = *(a1 + 40);

      return [v5 _queue_deltaSync];
    }

    else if (*(v4 + 65) == 1)
    {
      *(v4 + 65) = 0;
      v6 = *(a1 + 40);

      return [v6 _queue_resetSync];
    }
  }

  return result;
}

void sub_10002EC40(uint64_t a1)
{
  if (*(*(a1 + 32) + 32) == 1)
  {
    v6 = v1;
    v7 = v2;
    v4 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pairing ID did switched. Reset _resetSyncRequested to NO.", v5, 2u);
    }

    *(*(a1 + 32) + 32) = 0;
  }
}

id sub_10002F050()
{
  if (qword_100066CC8 != -1)
  {
    sub_10003F8A0();
  }

  v1 = qword_100066CC0;

  return v1;
}

void sub_10002FA94(id a1)
{
  v1 = NSTemporaryDirectory();
  v2 = [v1 stringByAppendingPathComponent:@"sync.wideloadstaging"];
  v3 = qword_100066CC0;
  qword_100066CC0 = v2;

  v4 = +[NSFileManager defaultManager];
  [v4 createDirectoryAtPath:qword_100066CC0 withIntermediateDirectories:1 attributes:0 error:0];
}

void sub_10002FB48(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

id sub_10002FD44(uint64_t a1)
{
  if (sub_100006048())
  {
    v2 = NTKDebugDaemonRunningSnapshotTestingTool();
    v3 = *(a1 + 32);
    if (v2)
    {

      return [v3 runSnapshotTool];
    }

    else
    {

      return [v3 runDaemon];
    }
  }

  else
  {
    v4 = *(a1 + 32);

    return [v4 killDaemon];
  }
}

void sub_100030014(id a1)
{
  v1 = +[NSMutableSet set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = +[PDRRegistry sharedInstance];
  v3 = [v2 devices];
  v4 = [v3 all];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) pairingID];
        [v1 addObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v1;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cleaning up orphaned stores and sync data with current device uuids: %@", buf, 0xCu);
  }

  [NTKDCollectionStore cleanupOrphanedStoresWithCurrentDeviceUUIDs:v1];
  [NTKDComplicationStore cleanupOrphanedStoresWithCurrentDeviceUUIDs:v1];
  [NTKDSyncController cleanupOrphanedSyncDirectoriesWithCurrentDeviceUUIDs:v1];
}

void sub_1000301F8(id a1)
{
  v1 = +[NTKDCollectionCoordinator sharedInstance];
  [v1 removeOrphanedResourceDirectories];
}

void sub_100030240(id a1)
{
  v1 = +[NTKDSiriDataSourcesObserver sharedInstance];
  [v1 updateDeviceDataSourcesInNanoPreferences];

  v2 = +[NTKSiriDefaults sharedInstance];
  [v2 migrateIfNecessary];
}

void sub_1000302AC(id a1)
{
  qword_100066CD8 = objc_opt_new();

  _objc_release_x1();
}

void sub_100030468(id a1, NSTimer *a2)
{
  v2 = a2;
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "daemon exiting", v4, 2u);
  }

  exit(0);
}

void sub_100030744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100030764(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInvalidation];
}

void sub_100030818(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setExportedObject:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  [*(*(a1 + 32) + 24) removeObserver:?];
  v4 = +[NTKDComplicationStoreCoordinator sharedInstance];
  [v4 relinquishStore:*(*(a1 + 32) + 24)];

  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;

  v7 = *(*(a1 + 32) + 40);
  if (v7)
  {
    (*(v7 + 16))();
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_1000309EC(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.complicationcollectionclient.busy");
}

void sub_100030A28(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(v2 + 32);
    v5 = [*(a1 + 40) copy];
    [v4 addObject:v5];
  }
}

void sub_100030B4C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.complicationcollectionclient.busy");
}

void sub_100030C84(void *a1)
{
  v2 = +[NTKDComplicationStoreCoordinator sharedInstance];
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100030D4C;
  v6[3] = &unk_10005E0C8;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [v2 checkoutStoreForComplicationCollectionIdentifier:v3 deviceUUID:v4 withHandler:v6];

  sub_1000074E0(@"com.apple.ntkd.complicaitoncollectionclient.register");
}

void sub_100030D4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030E04;
  block[3] = &unk_10005CC38;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

id sub_100030E04(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  [*(*(a1 + 32) + 24) addObserver:*(a1 + 32) withSeqId:*(a1 + 48)];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 32);
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

        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 32) removeAllObjects];
}

void sub_1000312B8(void *a1)
{
  v2 = [*(a1[4] + 8) remoteObjectProxy];
  [v2 loadFullCollectionWithLocalizableSampleTemplates:a1[5] complicationDescriptors:a1[6] seqId:a1[7]];
}

void sub_100031480(void *a1)
{
  v2 = [*(a1[4] + 8) remoteObjectProxy];
  [v2 updateSampleTemplateReference:a1[5] forClientIdentifier:a1[6] descriptor:a1[7] family:a1[9] seqId:a1[8]];
}

void sub_1000315C0(void *a1)
{
  v2 = [*(a1[4] + 8) remoteObjectProxy];
  [v2 updateComplicationDescriptors:a1[5] forClientIdentifier:a1[6] seqId:a1[7]];
}

void sub_1000316FC(void *a1)
{
  v2 = [*(a1[4] + 8) remoteObjectProxy];
  [v2 removeComplicationSampleTemplatesForClientIdentifier:a1[5] descriptor:a1[6] seqId:a1[7]];
}

void sub_100031814(id a1)
{
  qword_100066CE0 = objc_alloc_init(NTKDSyncController);

  _objc_release_x1();
}

id sub_100031AE4()
{
  v0 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = +[NSFileManager defaultManager];
  v2 = sub_10003D76C();
  v3 = [v1 contentsOfDirectoryAtPath:v2 error:0];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[NSUUID alloc] initWithUUIDString:*(*(&v10 + 1) + 8 * i)];
        if (v8)
        {
          [v0 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v0;
}

void sub_100031D70(uint64_t a1)
{
  if ([*(a1 + 32) shouldEnableSyncPrintingLogs:1])
  {
    [*(a1 + 32) setUp];
  }

  else
  {
    v2 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SYNC DISABLED.", v5, 2u);
    }
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:"handleDeviceTinkerStateChangedNotification" name:CLKActiveDeviceChangedTinkerState object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:"handleActiveDeviceChangedNotification" name:CLKActiveDeviceChangedNotification object:0];
}

id sub_1000320CC(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldEnableSyncPrintingLogs:1];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 setUp];
  }

  else
  {

    return [v3 tearDown];
  }
}

id sub_1000321FC(uint64_t a1)
{
  v2 = +[CLKDevice currentDevice];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = [*(a1 + 32) shouldEnableSyncPrintingLogs:1];
  v6 = *(a1 + 32);
  if (v5)
  {

    return [v6 setUp];
  }

  else
  {

    return [v6 tearDown];
  }
}

id sub_1000329D4(uint64_t a1)
{
  v2 = objc_alloc_init(NTKPigmentSyncReceiver);
  v3 = *(a1 + 32);
  v4 = *(v3 + 192);
  *(v3 + 192) = v2;

  [*(a1 + 32) _queue_applyIncomingMessageLists];
  [*(*(a1 + 32) + 8) resume];
  v5 = *(a1 + 32);

  return [v5 _queue_requestSyncIfNecessary];
}

id sub_100032C3C(uint64_t a1)
{
  [*(*(a1 + 32) + 72) enumerateKeysAndObjectsUsingBlock:&stru_10005E128];
  [*(*(a1 + 32) + 72) removeAllObjects];
  [*(*(a1 + 32) + 80) enumerateKeysAndObjectsUsingBlock:&stru_10005E168];
  v2 = *(*(a1 + 32) + 80);

  return [v2 removeAllObjects];
}

id sub_100032E5C(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if ([*(a1 + 32) syncSessionType])
    {
      v3 = "QWS";
    }

    else
    {
      v3 = "RESET";
    }

    v4 = [*(a1 + 32) sessionIdentifier];
    v8 = 136315394;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "starting paired sync %s session with ID = %@", &v8, 0x16u);
  }

  if ([*(a1 + 40) shouldEnableSync])
  {
    return [*(*(a1 + 40) + 8) syncCoordinator:*(a1 + 48) beginSyncSession:*(a1 + 32)];
  }

  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) sessionIdentifier];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notifying pairedSync session completed with ID = %@", &v8, 0xCu);
  }

  return [*(a1 + 32) syncDidComplete];
}

void sub_100033234(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000332C4;
  v2[3] = &unk_10005CA98;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 ensureSyncIsActive:v2];
}

id sub_1000332C4(uint64_t a1)
{
  [*(a1 + 32) setUp];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);

  return [v3 syncCoordinatorDidChangeSyncRestriction:v2];
}

uint64_t sub_1000334BC(uint64_t a1)
{
  +[CLKDevice resetCurrentDevice];
  v2 = +[CLKDevice currentDevice];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10003FCA8(a1 + 32, v5);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10003366C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100033688(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] requestDeltaSync];
    WeakRetained = v2;
  }
}

void sub_100033794(uint64_t a1)
{
  v9 = [*(a1 + 32) deviceUUID];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 72);
  v4 = sub_100033858(v9);
  [v3 setObject:v2 forKey:v4];

  v5 = [*(a1 + 40) _queue_storeStatusForDeviceUUID:v9];
  [*(a1 + 32) clearSyncObserver];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = [v5 seqId];
  [v7 setSyncObserver:v6 withSeqId:v8];
}

id sub_100033858(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NSNull null];
  }

  v4 = v3;

  return v4;
}

void sub_10003397C(uint64_t a1)
{
  [*(a1 + 32) clearSyncObserver];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 72);
  v5 = [v2 deviceUUID];
  v4 = sub_100033858(v5);
  [v3 removeObjectForKey:v4];
}

void sub_100033A84(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceUUID];
  v3 = *(*(a1 + 40) + 80);
  v20 = v2;
  v4 = sub_100033858(v2);
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  v10 = *(a1 + 32);
  v11 = [v10 collectionIdentifier];
  [v9 setObject:v10 forKeyedSubscript:v11];

  v12 = *(*(a1 + 40) + 80);
  v13 = sub_100033858(v20);
  [v12 setObject:v9 forKey:v13];

  v14 = *(a1 + 40);
  v15 = [*(a1 + 32) collectionIdentifier];
  v16 = [v14 _queue_complicationStoreStatusForDeviceUUID:v20 identifier:v15];

  [*(a1 + 32) clearSyncObserver];
  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  v19 = [v16 seqId];
  [v18 setSyncObserver:v17 withSeqId:v19];
}

void sub_100033C88(uint64_t a1)
{
  [*(a1 + 32) clearSyncObserver];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 80);
  v5 = [v2 deviceUUID];
  v4 = sub_100033858(v5);
  [v3 removeObjectForKey:v4];
}

void sub_100033E70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v4 = [v2 _queue_storeStatusForDeviceUUID:v3];

  [v4 setNeedsResetSync:1];
  [v4 setSeqId:*(a1 + 48)];
  [*(a1 + 32) _queue_requestSyncIfNecessary];
  (*(*(a1 + 56) + 16))();
}

void sub_10003407C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v8 = [v2 _queue_outgoingMessageListForDeviceUUID:v3];

  v4 = [NTKDSyncMessage messageOfType:4];
  [v8 enqueueMessage:v4];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) deviceUUID];
  v7 = [v5 _queue_storeStatusForDeviceUUID:v6];

  [v7 setSeqId:*(a1 + 48)];
  [*(a1 + 32) _queue_requestSyncIfNecessary];
}

void sub_10003429C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v8 = [v2 _queue_outgoingMessageListForDeviceUUID:v3];

  v4 = [NTKDSyncMessage messageOfType:5];
  [v8 enqueueMessage:v4];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) deviceUUID];
  v7 = [v5 _queue_storeStatusForDeviceUUID:v6];

  [v7 setSeqId:*(a1 + 48)];
  [*(a1 + 32) _queue_requestSyncIfNecessary];
}

void sub_100034508(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v8 = [v2 _queue_outgoingMessageListForDeviceUUID:v3];

  v4 = [NTKDSyncMessage messageOfType:1 withFaceUUID:*(a1 + 48)];
  [v8 enqueueMessage:v4];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) deviceUUID];
  v7 = [v5 _queue_storeStatusForDeviceUUID:v6];

  [v7 setSeqId:*(a1 + 56)];
  [*(a1 + 32) _queue_requestSyncIfNecessary];
}

void sub_1000347A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v8 = [v2 _queue_outgoingMessageListForDeviceUUID:v3];

  v4 = [NTKDSyncMessage messageOfType:2 withFaceUUID:*(a1 + 48)];
  [v8 enqueueMessage:v4];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) deviceUUID];
  v7 = [v5 _queue_storeStatusForDeviceUUID:v6];

  [v7 setSeqId:*(a1 + 56)];
  [*(a1 + 32) _queue_requestSyncIfNecessary];
  (*(*(a1 + 64) + 16))();
}

void sub_100034A24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v8 = [v2 _queue_outgoingMessageListForDeviceUUID:v3];

  v4 = [NTKDSyncMessage messageOfType:9 withFaceUUID:*(a1 + 48)];
  [v8 enqueueMessage:v4];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) deviceUUID];
  v7 = [v5 _queue_storeStatusForDeviceUUID:v6];

  [v7 setSeqId:*(a1 + 56)];
  [*(a1 + 32) _queue_requestSyncIfNecessary];
}

void sub_100034C94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v9 = [v2 _queue_outgoingMessageListForDeviceUUID:v3];

  v4 = [NTKDSyncMessage messageOfType:0 withFaceUUID:*(a1 + 48)];
  [v9 enqueueMessage:v4];

  v5 = [NTKDSyncMessage messageOfType:5];
  [v9 enqueueMessage:v5];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) deviceUUID];
  v8 = [v6 _queue_storeStatusForDeviceUUID:v7];

  [v8 setSeqId:*(a1 + 56)];
  [*(a1 + 32) _queue_requestSyncIfNecessary];
}

void sub_100034F5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v8 = [v2 _queue_outgoingMessageListForDeviceUUID:v3];

  v4 = [NTKDSyncMessage messageOfType:3 withFaceUUID:*(a1 + 48)];
  [v8 enqueueMessage:v4];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) deviceUUID];
  v7 = [v5 _queue_storeStatusForDeviceUUID:v6];

  [v7 setSeqId:*(a1 + 56)];
  [*(a1 + 32) _queue_requestSyncIfNecessary];
  (*(*(a1 + 64) + 16))();
}

void sub_1000351B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v4 = [v2 _queue_storeStatusForDeviceUUID:v3];

  [v4 setSeqId:*(a1 + 48)];
}

void sub_100035398(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v4 = [*(a1 + 40) collectionIdentifier];
  v5 = [v2 _queue_complicationStoreStatusForDeviceUUID:v3 identifier:v4];

  [v5 setNeedsResetSync:1];
  [v5 setSeqId:*(a1 + 48)];
  [*(a1 + 32) _queue_requestSyncIfNecessary];
}

void sub_100035624(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v13 = [v2 _queue_outgoingMessageListForDeviceUUID:v3];

  v4 = [*(a1 + 40) collectionIdentifier];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = [NSNumber numberWithInteger:*(a1 + 72)];
  v8 = [NTKDSyncMessage messageOfType:8 withCollectionIdentifier:v4 clientId:v5 descriptor:v6 family:v7];
  [v13 enqueueMessage:v8];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) deviceUUID];
  v11 = [*(a1 + 40) collectionIdentifier];
  v12 = [v9 _queue_complicationStoreStatusForDeviceUUID:v10 identifier:v11];

  [v12 setSeqId:*(a1 + 64)];
  [*(a1 + 32) _queue_requestSyncIfNecessary];
}

void sub_1000358F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v10 = [v2 _queue_outgoingMessageListForDeviceUUID:v3];

  v4 = [*(a1 + 40) collectionIdentifier];
  v5 = [NTKDSyncMessage messageOfType:10 withCollectionIdentifier:v4 clientId:*(a1 + 48)];
  [v10 enqueueMessage:v5];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) deviceUUID];
  v8 = [*(a1 + 40) collectionIdentifier];
  v9 = [v6 _queue_complicationStoreStatusForDeviceUUID:v7 identifier:v8];

  [v9 setSeqId:*(a1 + 56)];
  [*(a1 + 32) _queue_requestSyncIfNecessary];
}

void sub_100035BC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v10 = [v2 _queue_outgoingMessageListForDeviceUUID:v3];

  v4 = [*(a1 + 40) collectionIdentifier];
  v5 = [NTKDSyncMessage messageOfType:7 withCollectionIdentifier:v4 clientId:*(a1 + 48) descriptor:*(a1 + 56) family:0];
  [v10 enqueueMessage:v5];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) deviceUUID];
  v8 = [*(a1 + 40) collectionIdentifier];
  v9 = [v6 _queue_complicationStoreStatusForDeviceUUID:v7 identifier:v8];

  [v9 setSeqId:*(a1 + 64)];
  [*(a1 + 32) _queue_requestSyncIfNecessary];
}

void sub_100035E44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v4 = [*(a1 + 40) collectionIdentifier];
  v5 = [v2 _queue_complicationStoreStatusForDeviceUUID:v3 identifier:v4];

  [v5 setSeqId:*(a1 + 48)];
}

id sub_100036010(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceUUID];
  v4 = [*(a1 + 40) collectionIdentifier];
  v5 = [v2 _queue_complicationStoreStatusForDeviceUUID:v3 identifier:v4];
  [v5 setNeedsResetSync:1];

  v6 = *(a1 + 32);

  return [v6 _queue_requestSyncIfNecessary];
}