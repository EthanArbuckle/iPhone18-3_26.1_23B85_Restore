__CFString *IXStringForPlaceholderDisposition(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [NSString stringWithFormat:@"Unknown IXPlaceholderDisposition value: %lu", a1];
  }

  else
  {
    v2 = off_100100D20[a1];
  }

  return v2;
}

uint64_t sub_100001FC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100121C28 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

id sub_1000027E0(uint64_t a1, void *a2)
{
  v3 = [a2 personaUniqueString];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100002A70(uint64_t a1)
{
  v1 = a1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v23;
    p_info = IXGlobalConfiguration.info;
    v6 = &off_100121958;
    v7 = IXGlobalConfiguration.info;
    v20 = v1;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [objc_alloc((p_info + 26)) initWithBundleIdentifier:*(*(&v22 + 1) + 8 * i)];
        v10 = sub_1000031B0(*v6);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = sub_100032DE8(*(v1 + 40));
          IXStringForClientID(*(v1 + 48));
          v12 = v3;
          v13 = v4;
          v14 = v7;
          v15 = v6;
          v17 = v16 = p_info;
          *buf = 136315906;
          v27 = "[IXSErrorPresenter _presentErrorHighlightingLocalizedAppName:withHighlightedAppRecord:bundleIDs:code:errorSource:underlyingError:]_block_invoke";
          v28 = 2112;
          v29 = v9;
          v30 = 2112;
          v31 = v11;
          v32 = 2112;
          v33 = v17;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Uninstall of %@ requested by user due to error %@, client %@", buf, 0x2Au);

          p_info = v16;
          v6 = v15;
          v7 = v14;
          v4 = v13;
          v3 = v12;
          v1 = v20;
        }

        v18 = [v7 + 141 sharedUninstaller];
        v19 = IXStringForClientID(*(v1 + 48));
        [v18 uninstallAppWithIdentity:v9 clientName:v19 options:2 completion:0];
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v3);
  }
}

void sub_100002F18(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_1000030E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) seed];
  [v3 setArchiveBytesConsumed:v2];

  v4 = [*(a1 + 32) seed];
  v5 = [v4 archiveSizeBytes];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) seed];
    [*(a1 + 32) setPercentComplete:{v6 / objc_msgSend(v7, "archiveSizeBytes")}];
  }
}

id sub_1000031B0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003250;
  block[3] = &unk_100100D40;
  block[4] = a1;
  if (qword_100121C38 != -1)
  {
    dispatch_once(&qword_100121C38, block);
  }

  v1 = off_100121550;

  return v1;
}

uint64_t sub_100003250(uint64_t a1)
{
  off_100121550 = os_log_create(*(a1 + 32), "daemon");

  return _objc_release_x1();
}

uint64_t start(uint64_t a1, uint64_t *a2)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  targetq = dispatch_queue_create("com.apple.installcoordinationd.notifications", v3);

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.InstallCoordination.StateDumpQueue", v4);

  bzero(v86, 0x400uLL);
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    sub_1000975AC(v87, buf);
  }

  if (!confstr(65537, v86, 0x400uLL))
  {
    v6 = *__error();
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = strerror(v6);
      *buf = 136315650;
      *&buf[4] = "main";
      *&buf[12] = 1024;
      *&buf[14] = v6;
      *&buf[18] = 2080;
      *&buf[20] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to initialize temporary directory: error = %d (%s), attempting to continue...", buf, 0x1Cu);
    }
  }

  context = objc_autoreleasePoolPush();
  v60 = os_transaction_create();
  v9 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a2;
    *buf = 136315906;
    *&buf[4] = "main";
    *&buf[12] = 2080;
    *&buf[14] = v10;
    *&buf[22] = 2080;
    *&buf[24] = "Oct 10 2025";
    LOWORD(v96[0]) = 2080;
    *(v96 + 2) = "22:16:07";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: %s starting, built %s %s", buf, 0x2Au);
  }

  v11 = +[IXGlobalConfiguration sharedInstance];
  [v11 createDirectories];

  v12 = +[IXSDataPromiseManager sharedInstance];
  +[IXSCoordinatorManager sharedInstance];
  v73 = _NSConcreteStackBlock;
  v74 = 3221225472;
  v75 = sub_100003D8C;
  v77 = v76 = &unk_100100E48;
  os_state_add_handler();
  v62 = v5;
  os_state_add_handler();
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_100004568;
  v70[3] = &unk_100100ED8;
  v59 = v12;
  v71 = v59;
  v13 = v77;
  v72 = v13;
  if (!sub_10003AD98(@"installcoordinationd.run", v70))
  {
    v14 = v13;
    v16 = sub_1000405FC("_DumpCoordinatorsAndPurgeProcessScoped", 306, @"IXErrorDomain", 0x21uLL, 0, 0, @"Coordinator orphaned by installcoordinationd restart", v15, v58);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1000054C4;
    *&buf[24] = &unk_100101078;
    v96[0] = v16;
    v17 = v16;
    [v14 enumerateCoordinators:buf];
  }

  v67 = v13;
  v18 = [LSApplicationRecord enumeratorWithOptions:0];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v82 objects:buf count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v83;
    v64 = *v83;
    v65 = v18;
    do
    {
      v22 = 0;
      v66 = v20;
      do
      {
        if (*v83 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v82 + 1) + 8 * v22);
        if ([v23 hasParallelPlaceholder])
        {
          v24 = [v23 bundleIdentifier];
          if (v24)
          {
            v25 = [v67 coordinatorsForBundleIdentifier:v24];
            v26 = v25;
            if (!v25 || ![v25 count])
            {
              v68 = v26;
              v69 = v22;
              v27 = [v23 managedPersonas];
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v81 = 0u;
              v28 = [v27 countByEnumeratingWithState:&v78 objects:v87 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = *v79;
                do
                {
                  for (i = 0; i != v29; i = i + 1)
                  {
                    if (*v79 != v30)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v32 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v24 personaUniqueString:*(*(&v78 + 1) + 8 * i)];
                    v33 = [NSString stringWithFormat:@"Uninstalling orphaned parallel placeholder for %@", v32, v59, v60, context, v62];
                    v34 = +[IXSAppUninstaller sharedUninstaller];
                    [v34 uninstallParallelPlaceholderForIdentity:v32 reason:v33];
                  }

                  v29 = [v27 countByEnumeratingWithState:&v78 objects:v87 count:16];
                }

                while (v29);
              }

              v35 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v24];
              v36 = [NSString stringWithFormat:@"Uninstalling orphaned parallel placeholder for %@", v35];
              v37 = +[IXSAppUninstaller sharedUninstaller];
              [v37 uninstallParallelPlaceholderForIdentity:v35 reason:v36];

              v21 = v64;
              v18 = v65;
              v20 = v66;
              v26 = v68;
              v22 = v69;
            }
          }

          else
          {
            v26 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *v91 = 136315394;
              v92 = "_RemoveOrphanedParallelPlaceholders";
              v93 = 2112;
              v94 = v23;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s: Got LSApplicationRecord %@ without bundle ID", v91, 0x16u);
            }
          }
        }

        else
        {
          v24 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *v91 = 136315394;
            v92 = "_RemoveOrphanedParallelPlaceholders";
            v93 = 2112;
            v94 = v23;
            _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%s: Skipping because it doesn't have a parallel placeholder: %@", v91, 0x16u);
          }
        }

        v22 = v22 + 1;
      }

      while (v22 != v20);
      v20 = [v18 countByEnumeratingWithState:&v82 objects:buf count:16];
    }

    while (v20);
  }

  v38 = v67;
  *&v82 = 0;
  v39 = MobileInstallationGetAllStagedUpdateIdentifiers();
  v40 = v82;
  if (v39)
  {
    if ([v39 count])
    {
      v41 = [v39 mutableCopy];
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10000562C;
      *&buf[24] = &unk_100101078;
      v42 = v41;
      v96[0] = v42;
      [v38 enumerateCoordinators:buf];
      if ([v42 count])
      {
        v43 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          sub_10009767C();
        }

        v44 = [v42 copy];
        *&v78 = v40;
        v45 = MobileInstallationCancelUpdateForStagedIdentifiersWithError();
        v46 = v78;

        if ((v45 & 1) == 0)
        {
          v47 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *v87 = 136315394;
            v88 = "_RemoveOrphanedStagedUpdates";
            v89 = 2112;
            v90 = v46;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%s: Failed to clean up abandoned staged updates %@", v87, 0x16u);
          }
        }
      }

      else
      {
        v46 = v40;
      }

      v40 = v46;
    }

    else
    {
      v42 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "_RemoveOrphanedStagedUpdates";
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%s: No tracked staged updates with installd", buf, 0xCu);
      }
    }
  }

  else
  {
    v42 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1000976FC();
    }
  }

  +[IXSClientConnectionManager configureService];
  v48 = dispatch_get_global_queue(21, 0);
  signal(15, 1);
  v49 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v48);
  dispatch_source_set_event_handler(v49, &stru_100100F18);
  dispatch_activate(v49);
  v50 = +[IXSAppDeletionEligibilityManager sharedInstance];
  [v50 reconcileAppRemovabilityForSystemAppPlaceholders];

  xpc_set_event_stream_handler("com.apple.notifyd.matching", targetq, &stru_100100F58);
  v51 = +[NSNotificationCenter defaultCenter];
  v52 = +[NSOperationQueue mainQueue];
  v53 = [v51 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:v52 usingBlock:&stru_100100FD8];

  v54 = sub_10003FB30();
  [v54 resume];

  objc_autoreleasePoolPop(context);
  v55 = +[IXSCacheDelete configureService];
  v56 = +[NSRunLoop mainRunLoop];
  [v56 run];

  return 0;
}

_DWORD *sub_100003D8C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003F6C;
  v24 = sub_100003F7C;
  v25 = @"Coordinators";
  v3 = [*(a1 + 32) coordinatorCount];
  v4 = objc_opt_new();
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100003F6C;
  v18 = sub_100003F7C;
  v19 = sub_100003F84(v4);
  v5 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004078;
  v9[3] = &unk_100100E20;
  v6 = v4;
  v10 = v6;
  v11 = &v14;
  v12 = &v20;
  v13 = v3;
  [v5 enumerateCoordinators:v9];
  v7 = sub_10000414C(v15[5], v21[5]);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void sub_100003F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003F6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100003F84(void *a1)
{
  v1 = a1;
  v7 = 0;
  v2 = [NSPropertyListSerialization dataWithPropertyList:v1 format:200 options:0 error:&v7];
  v3 = v7;
  if (v2)
  {
    if ([v2 length] - 32569 >= 0xFFFF7FFF)
    {
      v4 = v2;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100097770();
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

BOOL sub_100004078(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 description];
  [v3 addObject:v4];

  v5 = sub_100003F84(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Coordinators [%lu of %lu]", [*(a1 + 32) count] - 1, *(a1 + 56));
    v11 = *(*(a1 + 48) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  return v6 != 0;
}

_DWORD *sub_10000414C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  v6 = v5 + 200;
  if (v6 <= 0x8000)
  {
    v8 = malloc_type_calloc(1uLL, v6, 0x1000040BEF03554uLL);
    [v4 UTF8String];
    __strlcpy_chk();
    *v8 = 1;
    v8[1] = v5;
    memcpy(v8 + 50, [v3 bytes], v5);
  }

  else
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000977EC();
    }

    v8 = 0;
  }

  return v8;
}

os_state_data_s *__cdecl sub_100004254(id a1, os_state_hints_s *a2)
{
  if (a2->var2 != 3)
  {
    return 0;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003F6C;
  v24 = sub_100003F7C;
  v25 = @"Removability";
  v2 = +[IXSAppRemovabilityManager sharedInstance];
  v3 = [v2 removabilityInfoForAllIdentities];

  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100003F6C;
  v18 = sub_100003F7C;
  v19 = sub_100003F84(v4);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004468;
  v9[3] = &unk_100100EB0;
  v5 = v4;
  v10 = v5;
  v12 = &v14;
  v13 = &v20;
  v6 = v3;
  v11 = v6;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = sub_10000414C(v15[5], v21[5]);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void sub_100004468(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *(a1 + 32);
  v7 = [NSString stringWithFormat:@"%@: %@", a2, a3];
  [v6 addObject:v7];

  v8 = sub_100003F84(*(a1 + 32));
  v15 = v8;
  if (v8)
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = v8;
    v11 = 0;
    v12 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Removability [%lu of %lu]", [*(a1 + 32) count] - 1, objc_msgSend(*(a1 + 40), "count"));
    v14 = *(*(a1 + 56) + 8);
    v12 = *(v14 + 40);
    *(v14 + 40) = v13;
    v11 = 1;
  }

  *a4 = v11;
}

void sub_100004568(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100004D80;
  v42[3] = &unk_100101000;
  v4 = objc_opt_new();
  v43 = v4;
  [v2 enumeratePromises:v42];
  v5 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v49 = "_DoFirstRunCleanup";
    v50 = 2112;
    v51 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Found existing promise UUIDs: %@", buf, 0x16u);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = +[MIHelperServiceFrameworkClient sharedInstance];
  v41 = 0;
  v8 = [v7 allStagingLocationsWithinSubsystem:2 error:&v41];
  v9 = v41;

  if (v8)
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100004DC4;
    v39[3] = &unk_100101028;
    v40 = v4;
    [v8 enumerateObjectsUsingBlock:v39];
    v10 = v40;
  }

  else
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100097860();
    }
  }

  objc_autoreleasePoolPop(v6);
  v12 = sub_1000405FC("_DoFirstRunCleanup", 221, @"IXErrorDomain", 0x21uLL, 0, 0, @"Coordinator orphaned by device reboot", v11, v26);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000052C4;
  v36[3] = &unk_100101050;
  v13 = v4;
  v37 = v13;
  v27 = v12;
  v38 = v27;
  [v3 enumerateCoordinators:v36];
  v15 = sub_1000405FC("_DoFirstRunCleanup", 244, @"IXErrorDomain", 0x12uLL, 0, 0, @"Promise orphaned", v14, v27);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:buf count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        v22 = [v2 promiseForUUID:v21];
        v23 = sub_1000031B0(off_100121958);
        v24 = v23;
        if (v22)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *v44 = 136315394;
            v45 = "_DoFirstRunCleanup";
            v46 = 2112;
            v47 = v22;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: Canceling orphaned data promise %@", v44, 0x16u);
          }

          v25 = [v22 accessQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000054B0;
          block[3] = &unk_100100ED8;
          v30 = v22;
          v31 = v15;
          dispatch_sync(v25, block);

          v24 = v30;
        }

        else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *v44 = 136315394;
          v45 = "_DoFirstRunCleanup";
          v46 = 2112;
          v47 = v21;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s: Failed to locate orphaned data promise with UUID %@", v44, 0x16u);
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:buf count:16];
    }

    while (v18);
  }
}

void sub_100004AB0(id a1)
{
  v1 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "main_block_invoke_5";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s: Got SIGTERM; Exiting when clean.", &v2, 0xCu);
  }

  xpc_transaction_exit_clean();
}

void sub_100004B68(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  v3 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "main_block_invoke";
    v7 = 2080;
    v8 = string;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Got darwin notification %s", &v5, 0x16u);
  }

  if (!strcmp(string, "com.apple.mobile.keybagd.first_unlock"))
  {
    v4 = +[IXSCoordinatorManager sharedInstance];
    [v4 enumerateCoordinators:&stru_100100F98];
  }

  else
  {
    if (strcmp(string, "com.apple.os-eligibility-domain.change"))
    {
      return;
    }

    v4 = +[IXSAppDeletionEligibilityManager sharedInstance];
    [v4 eligibilityDidChange];
  }
}

void sub_100004CC8(id a1, NSNotification *a2)
{
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "main_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: User changed locale; exiting when clean to reload locale", &v3, 0xCu);
  }

  xpc_transaction_exit_clean();
}

uint64_t sub_100004D80(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  [v2 addObject:v3];

  return 1;
}

void sub_100004DC4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v36 = *(a1 + 32);
  v44 = 0;
  v6 = [v5 resolveWithError:&v44];
  v7 = v44;
  v8 = +[IXFileManager defaultManager];
  v9 = v8;
  if (v6)
  {
    v43 = v7;
    v10 = [v8 urlsForItemsInDirectoryAtURL:v6 ignoringSymlinks:1 error:&v43];
    v11 = v43;

    if (v10)
    {
      v32 = v11;
      v33 = v6;
      v34 = v5;
      v35 = a3;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (!v13)
      {
        goto LABEL_25;
      }

      v14 = v13;
      v15 = *v40;
      while (1)
      {
        v16 = 0;
        do
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v39 + 1) + 8 * v16);
          v18 = [v17 lastPathComponent];
          v19 = [[NSUUID alloc] initWithUUIDString:v18];
          if (v19)
          {
            if ([v36 containsObject:v19])
            {
              v20 = 0;
              goto LABEL_21;
            }

            v24 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [v17 path];
              *buf = 136315394;
              v46 = "_CleanStagingLocation";
              v47 = 2112;
              v48 = v25;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: Removing orphaned promise staging directory: %@", buf, 0x16u);
            }

            v37 = 0;
            v26 = [v9 removeItemAtURL:v17 error:&v37];
            v20 = v37;
            if ((v26 & 1) == 0)
            {
              v23 = sub_1000031B0(off_100121958);
              if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_20;
              }

              goto LABEL_23;
            }
          }

          else
          {
            v21 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v27 = [v17 path];
              *buf = 136315394;
              v46 = "_CleanStagingLocation";
              v47 = 2112;
              v48 = v27;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: Removing non-UUID item found in promise staging: %@", buf, 0x16u);
            }

            v38 = 0;
            v22 = [v9 removeItemAtURL:v17 error:&v38];
            v20 = v38;
            if ((v22 & 1) == 0)
            {
              v23 = sub_1000031B0(off_100121958);
              if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
LABEL_20:

                goto LABEL_21;
              }

LABEL_23:
              v28 = [v17 path];
              *buf = 136315650;
              v46 = "_CleanStagingLocation";
              v47 = 2112;
              v48 = v28;
              v49 = 2112;
              v50 = v20;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: Failed to purge %@ : %@", buf, 0x20u);

              goto LABEL_20;
            }
          }

LABEL_21:

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v29 = [v12 countByEnumeratingWithState:&v39 objects:v51 count:16];
        v14 = v29;
        if (!v29)
        {
LABEL_25:
          v30 = v12;

          v5 = v34;
          a3 = v35;
          v11 = v32;
          v6 = v33;
          goto LABEL_32;
        }
      }
    }

    v31 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1000978D4();
    }

    v30 = 0;
  }

  else
  {
    v30 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100097950();
    }

    v11 = v7;
  }

LABEL_32:

  *a3 = 0;
}

uint64_t sub_1000052C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "_DoFirstRunCleanup_block_invoke_2";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Found coordinator: %@", &v9, 0x16u);
  }

  v5 = [v3 promiseUUIDs];
  [*(a1 + 32) minusSet:v5];
  if ([v3 creator] == 12)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "_DoFirstRunCleanup_block_invoke";
      v11 = 2112;
      v12 = v3;
      v7 = "%s: Canceling orphaned IXClientSimpleSPI coordinator %@";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, &v9, 0x16u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if ([v3 coordinatorScope] == 1)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "_DoFirstRunCleanup_block_invoke";
      v11 = 2112;
      v12 = v3;
      v7 = "%s: Canceling process-scoped coordinator %@";
      goto LABEL_9;
    }

LABEL_10:

    [v3 cancelForReason:*(a1 + 40) client:15 error:0];
  }

  return 1;
}

uint64_t sub_1000054C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "_DumpCoordinatorsAndPurgeProcessScoped_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Found coordinator: %@", &v7, 0x16u);
  }

  if ([v3 coordinatorScope] == 1)
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "_DumpCoordinatorsAndPurgeProcessScoped_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Canceling process-scoped coordinator %@", &v7, 0x16u);
    }

    [v3 cancelForReason:*(a1 + 32) client:15 error:0];
  }

  return 1;
}

uint64_t sub_10000562C(uint64_t a1, void *a2)
{
  v3 = [a2 trackingStagedUpdateIdentifier];
  if (v3)
  {
    [*(a1 + 32) removeObject:v3];
  }

  return 1;
}

void sub_100005688(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_1000056A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100005E5C(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) coordinatorForIdentity:*(a1 + 40)];
  if (v3)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100097AE8();
    }

    v6 = sub_1000405FC("[IXSRevertManager _revertAppWithIdentity:forClientWithName:completion:]_block_invoke", 92, @"IXErrorDomain", 5uLL, 0, 0, @"Failed to revert app because a coordinator %@ already existed", v5, v3);
    v7 = 0;
    goto LABEL_5;
  }

  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v22 = 0;
  v7 = [v9 _acquireTerminationAssertionForIdentity:v10 withError:&v22];
  v6 = v22;
  if (!v7)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_12;
  }

  v11 = [*(a1 + 48) internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000615C;
  block[3] = &unk_100100ED8;
  block[4] = *(a1 + 48);
  v7 = v7;
  v21 = v7;
  dispatch_sync(v11, block);

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100006164;
  v19[3] = &unk_1001010A0;
  v19[4] = *(a1 + 48);
  v12 = objc_retainBlock(v19);
  v13 = [*(a1 + 40) miAppIdentity];
  v14 = MobileInstallationRevertApplicationWithIdentityAndAssertionBlockWithError();
  v8 = 0;
  v15 = v6;

  if ((v14 & 1) == 0)
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100097B70(v2, v15, v16);
    }

    v18 = sub_1000405FC("[IXSRevertManager _revertAppWithIdentity:forClientWithName:completion:]_block_invoke", 114, @"IXErrorDomain", 0x28uLL, v15, 0, @"Failed to revert application with identity %@", v17, *v2);

    (v12[2])(v12);
    v15 = v18;
  }

  v6 = v15;
LABEL_12:
  (*(*(a1 + 56) + 16))();
}

void sub_100006164(uint64_t a1)
{
  v2 = [*(a1 + 32) internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000061F4;
  block[3] = &unk_1001010A0;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

BOOL sub_100007900(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 != 0) == (v4 != 0) && (!v3 || !v4 || [v3 isEqual:v4]);

  return v6;
}

uint64_t sub_100008620(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100121C40 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

uint64_t sub_100009648()
{

  return _os_log_send_and_compose_impl();
}

double sub_10000966C(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_1000096AC()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_1000096D4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_1000096EC()
{
  v2 = *v0;

  return _os_crash_msg();
}

void sub_100009824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000983C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 trackingStagedUpdateIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 isUpdateScheduled];

    if (v6)
    {
      *(*(*(a1 + 40) + 8) + 24) += [v3 stagedUpdateSizeOnDisk];
      [*(a1 + 32) addObject:v3];
    }
  }

  return 1;
}

void sub_100009CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_100009D18(uint64_t a1)
{
  os_unfair_lock_lock((*(*(a1 + 40) + 8) + 32));
  *(*(*(a1 + 48) + 8) + 24) += *(a1 + 64);
  if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 72))
  {
    v2 = *(*(a1 + 56) + 8);
    if ((*(v2 + 24) & 1) == 0)
    {
      *(v2 + 24) = 1;
      dispatch_semaphore_signal(*(a1 + 32));
    }
  }

  v3 = (*(*(a1 + 40) + 8) + 32);

  os_unfair_lock_unlock(v3);
}

void sub_10000A0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A0B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A0D0(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  if (![*(a1 + 40) _onQueue_validateVolumeKey:v3])
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[IXSCacheDelete _purge:urgency:]_block_invoke";
      v17 = 2112;
      v18 = v2;
      v6 = "%s: Value for CACHE_DELETE_AMOUNT_KEY is not of type NSNumber: %@";
      v7 = v5;
      v8 = 22;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }

LABEL_10:

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  if (![v2 unsignedLongValue])
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[IXSCacheDelete _purge:urgency:]_block_invoke";
      v6 = "%s: Value for CACHE_DELETE_AMOUNT_KEY is 0";
      v7 = v5;
      v8 = 12;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v4 = [*(a1 + 40) _onQueue_purge:objc_msgSend(v2 urgency:{"unsignedLongValue"), *(a1 + 56)}];
LABEL_12:
  v9 = [NSNumber numberWithUnsignedLongLong:v4, @"CACHE_DELETE_VOLUME", @"CACHE_DELETE_AMOUNT", v3];
  v14[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:&v13 count:2];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_10000A428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A440(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  if ([*(a1 + 40) _onQueue_validateVolumeKey:v2])
  {
    v3 = [*(a1 + 40) _onQueue_sizeForPurgeableCoordinators:0];
  }

  else
  {
    v3 = 0;
  }

  v8[0] = @"CACHE_DELETE_VOLUME";
  v8[1] = @"CACHE_DELETE_AMOUNT";
  v9[0] = v2;
  v4 = [NSNumber numberWithUnsignedLongLong:v3];
  v9[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t sub_10000A6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100098298(v6);
  }

  [*(a1 + 32) _purgeable:a3 urgency:a2];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t sub_10000A754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10009831C(v6);
  }

  [*(a1 + 32) _purge:a3 urgency:a2];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t sub_10000A90C(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100121C50 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

id sub_10000A95C(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:@"IXUserPresentableErrorDomain"])
  {
    v3 = [v1 code];

    if (v3 == 11)
    {
      v4 = v1;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v5 = v1;
  v4 = v5;
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      v7 = [v6 domain];
      if ([v7 isEqualToString:NSPOSIXErrorDomain])
      {
        v8 = [v6 code];

        if (v8 == 28)
        {
          v11 = [v4 domain];
          v12 = [v11 isEqual:@"IXUserPresentableErrorDomain"];

          if (v12)
          {
            v13 = [v4 userInfo];
            v14 = [v13 objectForKeyedSubscript:@"AlertUser"];
            v12 = sub_10008F068(v14, 0);
          }

          v4 = IXCreateUserPresentableError(0xBuLL, v12, v4);

          break;
        }
      }

      else
      {
      }

      v9 = [v6 userInfo];
      v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v6 = v10;
      if (!v10)
      {
        v4 = 0;
        break;
      }
    }
  }

LABEL_16:

  return v4;
}

uint64_t sub_10000AC4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100121C60 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

id sub_10000AF1C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) _onQueue_setRemovabilityForAppWithIdentity:a2 usingEligibilityAnswer:*(a1 + 40)];
  *a3 = 0;
  return result;
}

void sub_10000B404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B42C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = [NSNumber numberWithLongLong:0];
  v9 = [*(a1 + 32) _eligibilityAnswerForDomain:{objc_msgSend(v15, "longLongValue")}];
  if (v9)
  {
    v10 = v9;
    if (v9 != [v7 longLongValue])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v11 = [NSNumber numberWithLongLong:v10];

      v12 = [*(a1 + 32) domainToEligibilityAnswerMap];
      [v12 setObject:v11 forKey:v15];

      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) objectForKeyedSubscript:v15];
      [v13 _onQueue_updateRemovabilityForAppIdentities:v14 usingEligibilityAnswer:v10];

      v8 = v11;
    }
  }

  *a4 = 0;
}

void sub_10000BA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000BA68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000BA80(uint64_t a1)
{
  v5 = [*(a1 + 32) domainToEligibilityAnswerMap];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000BBA0(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  [*(a1 + 32) setDomainToEligibilityAnswerMap:v2];
}

void sub_10000D01C(id a1)
{
  v32 = 0;
  v1 = sub_10000D41C("com.apple.mobile.usermanagerd.xpc", &v32);
  v2 = v32;
  v31 = 0;
  v3 = sub_10000D41C("com.apple.mobile.keybagd.UserManager.xpc", &v31);
  v4 = v31;
  *error = 0;
  v5 = SecTaskCreateFromSelf(0);
  if (!v5)
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100098CA8();
    }

    v14 = sub_1000405FC("_ProcessHasUMEntitlement", 361, @"IXErrorDomain", 1uLL, 0, 0, @"SecTaskCreateFromSelf returned NULL when attempting to fetch UM entitlement", v13, v30);
    goto LABEL_14;
  }

  v6 = v5;
  v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.usermanagerd.persona.fetch", error);
  if (!v7)
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100098C20(error);
    }

    v16 = *error;
    v14 = sub_1000405FC("_ProcessHasUMEntitlement", 367, @"IXErrorDomain", 1uLL, *error, 0, @"SecTaskCopyValueForEntitlement returned NULL when attempting to fetch the value for the entitlement com.apple.usermanagerd.persona.fetch in the current process.", v17, v30);

    CFRelease(v6);
LABEL_14:
    v21 = v14;

    v11 = 0;
    v10 = v14;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = sub_10008F068(v7, 0);

  if (v9)
  {
    CFRelease(v6);
    v10 = 0;
    v11 = 1;
    goto LABEL_15;
  }

  v18 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_100098BA4();
  }

  v11 = 1;
  v20 = sub_1000405FC("_ProcessHasUMEntitlement", 373, @"IXErrorDomain", 1uLL, 0, 0, @"Client process has a value other than true for the entitlement com.apple.usermanagerd.persona.fetch.", v19, v30);

  CFRelease(v6);
  v14 = 0;
  v10 = 0;
  if (!v20)
  {
    goto LABEL_14;
  }

LABEL_15:
  v22 = v10;
  if (v1)
  {
    byte_100121C70 = v3 & v11;
    if (v3 & v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
    byte_100121C70 = 0;
  }

  v23 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *error = 136316930;
    *&error[4] = "_ProcessCanAccessUM_block_invoke";
    v34 = 1024;
    if (v1)
    {
      v24 = 89;
    }

    else
    {
      v24 = 78;
    }

    v35 = v24;
    if (v3)
    {
      v28 = 89;
    }

    else
    {
      v28 = 78;
    }

    v36 = 1024;
    if (v11)
    {
      v29 = 89;
    }

    else
    {
      v29 = 78;
    }

    v37 = v28;
    v38 = 1024;
    v39 = v29;
    v40 = 2112;
    v41 = v2;
    v42 = 2112;
    v43 = v4;
    v44 = 2112;
    v45 = v22;
    v46 = 2112;
    v47 = 0;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: This process can't access UM (mach-lookup com.apple.mobile.usermanagerd.xpc: %c, mach-lookup com.apple.mobile.keybagd.UserManager.xpc: %c, entitlement com.apple.usermanagerd.persona.fetch: %c): (%@, %@, %@) : %@", error, 0x46u);
  }

  else if (v1)
  {
    v24 = 89;
  }

  else
  {
    v24 = 78;
  }

  v26 = sub_1000405FC("_ProcessCanAccessUM_block_invoke", 433, @"IXErrorDomain", 1uLL, 0, 0, @"This process can't access UM (mach-lookup com.apple.mobile.usermanagerd.xpc: %c, mach-lookup com.apple.mobile.keybagd.UserManager.xpc: %c, entitlement com.apple.usermanagerd.persona.fetch: %c): (%@, %@, %@)", v25, v24);
  v27 = qword_100121C78;
  qword_100121C78 = v26;

LABEL_24:
}

uint64_t sub_10000D41C(uint64_t a1, void *a2)
{
  getpid();
  v4 = sandbox_check();
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100098D24(a1, v5);
      }

      sub_1000405FC("_ClientProcessLookupMachPortName", 400, @"IXErrorDomain", 1uLL, 0, 0, @"This process does not have sandbox access to mach-lookup %s", v6, a1);
    }

    else
    {
      v9 = *__error();
      v10 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100098DBC(a1, v9, v10);
      }

      strerror(v9);
      sub_1000405FC("_ClientProcessLookupMachPortName", 405, @"IXErrorDomain", 1uLL, 0, 0, @"sandbox_check returned an error when checking if this process can mach-lookup %s : %s", v11, a1);
    }
    v7 = ;
    if (a2)
    {
      v7 = v7;
      v8 = 0;
      *a2 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  return v8;
}

__CFString *sub_10000D5C4()
{
  v0 = __chkstk_darwin();
  v1 = proc_pidpath(v0, buffer, 0x1000u);
  if (v1 < 1)
  {
    v3 = @"Unknown Process Name";
  }

  else
  {
    v2 = [[NSString alloc] initWithBytes:buffer length:v1 encoding:4];
    v3 = [v2 lastPathComponent];
  }

  return v3;
}

id sub_10000D6A0(void *a1)
{
  v1 = [a1 processIdentifier];
  v2 = sub_10000D5C4();
  v3 = [NSString stringWithFormat:@"%@ (pid %d)", v2, v1];

  return v3;
}

id sub_10000D71C(void *a1, uint64_t a2)
{
  v2 = [a1 valueForEntitlement:a2];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_10000D774(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 valueForEntitlement:@"com.apple.private.mobileinstall.allowedSPI"];
  if (!v4)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([v4 isEqualToString:v3] & 1) == 0)
    {
LABEL_8:
      v5 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 containsObject:v3] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v5 = 1;
LABEL_9:

  return v5;
}

id sub_10000D834(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (sub_10000D774(v3, v4))
  {
    v5 = 0;
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100098E70(v3, v4, v6);
    }

    v7 = sub_10000D6A0(v3);
    v5 = sub_1000405FC("IXValidateMobileInstallationSPIEntitlement", 84, @"IXErrorDomain", 0x19uLL, 0, 0, @"Process %@ is required to have an entitlement named %@ with an array containing %@ to call this SPI.", v8, v7);
  }

  return v5;
}

id sub_10000D944(void *a1)
{
  v1 = [a1 valueForEntitlement:@"com.apple.private.mobileinstall.allowed-linked-parents"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (objc_opt_class(), sub_10008EBE8(v3)))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *sub_10000DA00(uint64_t a1)
{
  if (a1 > 20)
  {
    switch(a1)
    {
      case 0x15:
        v2 = @"QOS_CLASS_DEFAULT";

        break;
      case 0x21:
        v2 = @"QOS_CLASS_USER_INTERACTIVE";

        break;
      case 0x19:
        v2 = @"QOS_CLASS_USER_INITIATED";

        break;
      default:
LABEL_20:
        v2 = [NSString stringWithFormat:@"Unknown Class: %u", a1];

        return v2;
    }
  }

  else if (a1)
  {
    if (a1 != 9)
    {
      if (a1 == 17)
      {
        v2 = @"QOS_CLASS_UTILITY";

        return v2;
      }

      goto LABEL_20;
    }

    v2 = @"QOS_CLASS_BACKGROUND";
  }

  else
  {
    v2 = @"QOS_CLASS_UNSPECIFIED";
  }

  return v2;
}

id sub_10000DB10(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a1;
  v10 = [v9 copy];
  v11 = sub_10000D71C(v7, @"com.apple.private.install.distributor-info-source");
  v12 = [v9 distributorInfo];

  if ((v11 & 1) != 0 || !v12)
  {
    v18 = v10;
    v17 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v13 = [v12 distributorID];
  v14 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v21 = sub_10000D6A0(v7);
    *buf = 136316418;
    v23 = "IXSanitizeAndValidateRestrictedStoreMetadata";
    v24 = 2112;
    v25 = v21;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = @"com.apple.private.install.distributor-info-source";
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: Client %@ setting the %@ did not have the required entitlement %@ = TRUE to allow the distribution info in the store metadata to be set (supplied distributor ID was '%@'). : %@", buf, 0x3Eu);
  }

  v15 = sub_10000D6A0(v7);
  v17 = sub_1000405FC("IXSanitizeAndValidateRestrictedStoreMetadata", 142, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ setting the %@ did not have the required entitlement %@ = TRUE to allow the distribution info in the store metadata to be set (supplied distributor ID was '%@').", v16, v15);

  v18 = 0;
  if (a4)
  {
LABEL_8:
    if (!v18)
    {
      v19 = v17;
      *a4 = v17;
    }
  }

LABEL_10:

  return v18;
}

uint64_t sub_10000DFCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100121C88 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_10000E0C8(uint64_t a1)
{
  v2 = [*(a1 + 32) identityToCoordinatorMap];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

void sub_10000F880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F898(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000F8B0(uint64_t a1)
{
  v5 = [*(a1 + 32) uuidToCoordinatorMap];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000FA1C(id *a1)
{
  v2 = [a1[4] identityToCoordinatorMap];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000FAD0;
  v3[3] = &unk_1001012D8;
  v4 = a1[5];
  v5 = a1[6];
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_10000FAD0(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 bundleID];
  LODWORD(v5) = [v5 isEqualToString:v6];

  if (v5)
  {
    [*(a1 + 40) addObject:v7];
  }
}

void sub_10000FC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000FC9C(uint64_t a1)
{
  v5 = [*(a1 + 32) identityToCoordinatorMap];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100010044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010070(uint64_t a1)
{
  v2 = [*(a1 + 32) identityToCoordinatorMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v8 = [*(*(*(a1 + 48) + 8) + 40) scopedToConnection];
  v6 = [*(*(*(a1 + 48) + 8) + 40) coordinatorScope] != 1 || v8 == 0;
  if (!v6 && ([v8 clientProcessExists] & 1) == 0)
  {
    if ([*(a1 + 32) _onMapQueue_removeCoordinatorFromMaps:*(*(*(a1 + 48) + 8) + 40)])
    {
      [*(a1 + 32) _onMapQueue_saveIdentityPriority];
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return _objc_release_x1();
}

void sub_100010414(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v46 = 0;
  v5 = [v2 _lookupCoordinatorForIdentity:v3 checkingScopeForConnection:v4 error:&v46];
  v6 = v46;
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v9 = [v6 domain];
    if ([v9 isEqualToString:@"IXErrorDomain"])
    {
      v10 = [v6 code];

      if (v10 == 6)
      {

        v11 = *(a1 + 56);
        v12 = *(*(a1 + 72) + 8);
        obj = *(v12 + 40);
        v13 = (*(v11 + 16))();
        objc_storeStrong((v12 + 40), obj);
        v14 = *(*(a1 + 64) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        v16 = *(*(*(a1 + 64) + 8) + 40);
        if (!v16)
        {
          v6 = 0;
          goto LABEL_12;
        }

        v17 = [v16 coordinatorScope];
        v18 = [*(*(*(a1 + 64) + 8) + 40) uniqueIdentifier];
        v19 = [*(a1 + 48) connectionUUID];
        v20 = [*(a1 + 32) mapQueue];
        block = _NSConcreteStackBlock;
        v36 = 3221225472;
        v37 = sub_1000107FC;
        v38 = &unk_100101350;
        v21 = *(a1 + 32);
        v22 = *(a1 + 40);
        v43 = *(a1 + 64);
        v39 = v21;
        v40 = v22;
        v23 = v18;
        v41 = v23;
        v44 = v17;
        v24 = v19;
        v42 = v24;
        dispatch_sync(v20, &block);

        v25 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(*(*(a1 + 64) + 8) + 40);
          *buf = 136315394;
          v48 = "[IXSCoordinatorManager coordinatorForIdentity:connection:error:creatingIfNotExisting:]_block_invoke";
          v49 = 2112;
          v50 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s: Registered coordinator: %@", buf, 0x16u);
        }

        v27 = [*(*(*(a1 + 64) + 8) + 40) seed];
        v28 = [v27 intent];

        if (v28 >= 8)
        {
          v29 = [NSString stringWithFormat:@"Unknown intent value %lu", v28];
        }

        else
        {
          v29 = off_1001013E8[v28];
        }

        v31 = IXStringForClientID([*(*(*(a1 + 64) + 8) + 40) creator]);
        v32 = [NSString stringWithFormat:@"Created coordinator with intent %@ for client %@", v29, v31, block, v36, v37, v38, v39];

        if (v28 - 1 > 6)
        {
          v33 = 18;
        }

        else
        {
          v33 = qword_1000BAC00[v28 - 1];
        }

        v34 = [*(a1 + 40) bundleID];
        [AITransactionLog logStep:v33 byParty:4 phase:1 success:1 forBundleID:v34 description:v32];

        v6 = 0;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v30 = *(*(a1 + 72) + 8);
    v6 = v6;
    v23 = *(v30 + 40);
    *(v30 + 40) = v6;
LABEL_11:
  }

LABEL_12:
}

id sub_1000107FC(uint64_t a1)
{
  [*(*(*(a1 + 64) + 8) + 40) setIsTracked:1];
  v2 = *(*(*(a1 + 64) + 8) + 40);
  v3 = [*(a1 + 32) identityToCoordinatorMap];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = [*(a1 + 32) uuidToCoordinatorMap];
  [v5 setObject:v4 forKeyedSubscript:*(a1 + 48)];

  if (*(a1 + 72) == 1)
  {
    v6 = [*(a1 + 32) connectionToProcessScopedCoordinatorMap];
    v7 = [v6 objectForKeyedSubscript:*(a1 + 56)];

    if (!v7)
    {
      v7 = objc_opt_new();
      v8 = [*(a1 + 32) connectionToProcessScopedCoordinatorMap];
      [v8 setObject:v7 forKeyedSubscript:*(a1 + 56)];
    }

    [v7 addObject:*(*(*(a1 + 64) + 8) + 40)];
  }

  v9 = [*(a1 + 32) identityPriority];
  [v9 addObject:*(a1 + 40)];

  v10 = *(a1 + 32);

  return [v10 _onMapQueue_saveIdentityPriority];
}

void sub_100010B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100010BA8(uint64_t a1)
{
  result = [*(a1 + 32) _onMapQueue_removeCoordinatorFromMaps:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _onMapQueue_saveIdentityPriority];
  }

  return result;
}

void sub_100010DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010DD4(uint64_t a1)
{
  v2 = [*(a1 + 32) identityPriority];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) identityPriority];
    [v4 removeObject:*(a1 + 40)];

    v5 = [*(a1 + 32) identityPriority];
    [v5 insertObject:*(a1 + 40) atIndex:0];

    [*(a1 + 32) _onMapQueue_saveIdentityPriority];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_1000110EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011118(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) identityPriority];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v14;
    *&v4 = 136315394;
    v12 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [*(a1 + 32) identityToCoordinatorMap];
        v10 = [v9 objectForKeyedSubscript:v8];

        if (v10)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
        }

        else
        {
          v11 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            *buf = v12;
            v18 = "[IXSCoordinatorManager _enumerateCoordinatorsForConnection:usingBlock:]_block_invoke";
            v19 = 2112;
            v20 = v8;
            _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%s: Identity %@ found in identityPriority array was not found in identityToCoordinatorMap", buf, 0x16u);
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }
}

void sub_1000115BC(uint64_t a1)
{
  v5 = [*(a1 + 32) identityToCoordinatorMap];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000118B4(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionToProcessScopedCoordinatorMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) connectionToProcessScopedCoordinatorMap];
    [v6 removeObjectForKey:*(a1 + 40)];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v10 |= [*(a1 + 32) _onMapQueue_removeCoordinatorFromMaps:{*(*(&v13 + 1) + 8 * i), v13}];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);

      if (v10)
      {
        [*(a1 + 32) _onMapQueue_saveIdentityPriority];
      }
    }

    else
    {
    }
  }
}

void sub_100011B1C(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionToProcessScopedCoordinatorMap];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v4 removeObject:*(a1 + 48)];
  if (![v4 count])
  {
    v3 = [*(a1 + 32) connectionToProcessScopedCoordinatorMap];
    [v3 removeObjectForKey:*(a1 + 40)];
  }
}

const __CFString *IXStringForCoordinatorImportance(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unhandled";
  }

  else
  {
    return off_100101428[a1];
  }
}

uint64_t sub_100012E4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100121C98 = [objc_alloc(objc_opt_class()) initWithWidth:5];

  return _objc_release_x1();
}

uint64_t sub_100012F30(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100121CA8 = [objc_alloc(objc_opt_class()) initWithWidth:5];

  return _objc_release_x1();
}

void sub_1000136AC(id *a1)
{
  v2 = [a1[4] block];
  v2[2]();

  v3 = [a1[5] internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100013784;
  v6[3] = &unk_100101300;
  v7 = a1[6];
  v4 = a1[4];
  v5 = a1[5];
  v8 = v4;
  v9 = v5;
  sub_100071134(v3, v6);
}

id sub_100013784(uint64_t a1)
{
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100099440(a1);
  }

  v3 = [*(a1 + 48) activeIdentities];
  [v3 removeObject:*(a1 + 32)];

  return [*(a1 + 48) _onQueue_deQueueIfNeeded];
}

void sub_100013A14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_100013A40(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (sub_10007127C())
  {
    v18 = 0;
    *__s = 0;
    v25 = 0;
    v27 = 0;
    v26 = 0;
    time(&v18);
    ctime_r(&v18, __s);
    v5 = strlen(__s);
    if (v5)
    {
      __s[v5 - 1] = 0;
    }

    v6 = MGCopyAnswer();
    v7 = MGCopyAnswer();
    v8 = MGCopyAnswer();
    v9 = [NSString stringWithFormat:@"INTERNAL-ONLY MESSAGE: InstallCoordination has encountered an error"];
    v10 = [NSString stringWithFormat:@"%@\n\nPlease file a bug! It's quick and easy.", v3];
    if (v4)
    {
      v11 = [v4 domain];
      v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"InstallCoordination error: %@ %@:%ld", v3, v11, [v4 code]);
    }

    else
    {
      v12 = [NSString stringWithFormat:@"InstallCoordination error: %@", v3];
    }

    v13 = [NSString stringWithFormat:@"Steps to reproduce:\n\n\n\nAuto-Gathered Info:\nReason %@\nTime: %s\nDevice Info: %@ %@ (%@)\nError: %@", v3, __s, v6, v7, v8, v4];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014630;
    block[3] = &unk_1001014C0;
    v20 = v9;
    v21 = v10;
    v22 = v12;
    v23 = v13;
    v14 = v13;
    v15 = v12;
    v16 = v10;
    v17 = v9;
    dispatch_async(&_dispatch_main_q, block);
  }
}

CFStringRef sub_100013CC4(const __CFString *a1, uint64_t a2)
{
  bzero(buffer, 0x400uLL);
  bzero(chars, 0x800uLL);
  if (a2 > 1023)
  {
    return 0;
  }

  MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(kCFAllocatorDefault, chars, 0, 1024, kCFAllocatorNull);
  if (!MutableWithExternalCharactersNoCopy)
  {
    return 0;
  }

  v5 = MutableWithExternalCharactersNoCopy;
  Length = CFStringGetLength(a1);
  if (Length >= 1 && a2 >= 1)
  {
    v7 = Length;
    v8 = 0;
    v9 = buffer;
    while (1)
    {
      RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(a1, v8);
      if (RangeOfComposedCharactersAtIndex.length > 1024)
      {
        v12 = 0;
        goto LABEL_15;
      }

      CFStringGetCharacters(a1, RangeOfComposedCharactersAtIndex, chars);
      CFStringSetExternalCharactersNoCopy(v5, chars, RangeOfComposedCharactersAtIndex.length, 1024);
      if (!CFStringGetFileSystemRepresentation(v5, v9, a2 + 1))
      {
        break;
      }

      v8 += RangeOfComposedCharactersAtIndex.length;
      v11 = strlen(v9);
      if (v8 < v7)
      {
        v9 += v11;
        a2 -= v11;
        if (a2 > 0)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    *v9 = 0;
  }

LABEL_14:
  v12 = CFStringCreateWithFileSystemRepresentation(kCFAllocatorDefault, buffer);
LABEL_15:
  CFRelease(v5);
  return v12;
}

uint64_t sub_100013E64(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v35 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = [v6 objectForKeyedSubscript:kMIUninstallParallelPlaceholderKey];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v6 objectForKeyedSubscript:@"UninstallPlaceholdersOnly"];
    v9 = v10 == 0;
  }

  v11 = [v5 bundleID];
  v34 = [NSNumber numberWithUnsignedInt:geteuid()];
  if (v9)
  {
    v12 = objc_alloc_init(LSOperationRequestContext);
    [v12 setTargetUserID:v34];
    v37 = 0;
    v13 = [v35 sendNotificationOfType:2 forApplicationWithBundleIdentifier:v11 requestContext:v12 error:&v37];
    v14 = v37;
    if ((v13 & 1) == 0)
    {
      v15 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10009957C();
      }
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v16 = off_100121CB8;
    v41 = off_100121CB8;
    if (!off_100121CB8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100014A30;
      v44 = &unk_1001014E8;
      v45 = &v38;
      sub_100014A30(buf);
      v16 = v39[3];
    }

    _Block_object_dispose(&v38, 8);
    if (!v16)
    {
      sub_1000996D8();
      __break(1u);
    }

    v17 = v16();
    v18 = [v17 writeUserConsentedRegulatoryDisclosureVersion:0 forBundleIdentifier:v11];

    if (v18)
    {
      v19 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000995F0();
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v20 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IXUninstallIdentityWithOptions";
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Uninstallation reason: %@", buf, 0x16u);
  }

  v21 = [NSMutableDictionary dictionaryWithDictionary:v6];
  [v21 setObject:v7 forKeyedSubscript:@"UninstallReasonString"];
  v22 = [v21 copy];

  if (!+[ICLFeatureFlags appReferencesEnabled])
  {
    v42 = v11;
    v30 = [NSArray arrayWithObjects:&v42 count:1];
    v31 = MobileInstallationUninstallForInstallCoordinationWithError();
    v32 = v31 == 0;

    if (v32)
    {
      goto LABEL_22;
    }

LABEL_29:
    v25 = [[NSString alloc] initWithFormat:@"Uninstall of %@", v5];
    sub_10001554C(v25);
    v29 = 1;
    goto LABEL_30;
  }

  v23 = [v5 miAppIdentity];
  v24 = MobileInstallationUninstallAppWithIdentity();

  if (v24)
  {
    goto LABEL_29;
  }

LABEL_22:
  if (!v9)
  {
    v29 = 0;
    goto LABEL_32;
  }

  v25 = objc_alloc_init(LSOperationRequestContext);
  [v25 setTargetUserID:v34];
  v36 = v14;
  v26 = [v35 sendNotificationOfType:4 forApplicationWithBundleIdentifier:v11 requestContext:v25 error:&v36];
  v27 = v36;

  if ((v26 & 1) == 0)
  {
    v28 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_100099664();
    }
  }

  v29 = 0;
  v14 = v27;
LABEL_30:

LABEL_32:
  return v29;
}

void sub_100014330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014350(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = objc_alloc_init(SDRDiagnosticReporter);
  v12 = [v11 signatureWithDomain:v10 type:v9 subType:v8 subtypeContext:v7 detectedProcess:@"installcoordinationd" triggerThresholdValues:0];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000144B4;
  v15[3] = &unk_100101470;
  v13 = v12;
  v16 = v13;
  if (([v11 snapshotWithSignature:v13 duration:0 event:0 payload:v15 reply:0.0] & 1) == 0)
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000996FC(v13, v14);
    }
  }
}

void sub_1000144B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:kSymptomDiagnosticReplySuccess];
  v5 = [v4 BOOLValue];

  v6 = sub_1000031B0(off_100121958);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v3 objectForKeyedSubscript:kSymptomDiagnosticReplySessionID];
      v10 = 136315650;
      v11 = "IXReportIncidentUsingAutoBugCapture_block_invoke";
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Successfully reported incident for signature %@ (Session identifier: %@)", &v10, 0x20u);
    }
  }

  else if (v7)
  {
    v10 = 136315394;
    v11 = "IXReportIncidentUsingAutoBugCapture_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Request to report incident rejected %@", &v10, 0x16u);
  }
}

void sub_100014630(uint64_t a1)
{
  v20 = 0;
  CFUserNotificationDisplayAlert(0.0, 2uLL, 0, 0, 0, *(a1 + 32), *(a1 + 40), @"File A Bug", @"No Thanks", 0, &v20);
  if (!v20)
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = objc_alloc_init(NSURLComponents);
    [v5 setScheme:@"tap-to-radar"];
    [v5 setHost:@"new"];
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [[NSURLQueryItem alloc] initWithName:@"ComponentName" value:@"InstallCoordination"];
    [v6 addObject:v7];

    v8 = [[NSURLQueryItem alloc] initWithName:@"ComponentVersion" value:@"all"];
    [v6 addObject:v8];

    v9 = [[NSURLQueryItem alloc] initWithName:@"ComponentID" value:@"807410"];
    [v6 addObject:v9];

    v10 = [[NSURLQueryItem alloc] initWithName:@"Classification" value:@"Serious Bug"];
    [v6 addObject:v10];

    v11 = [[NSURLQueryItem alloc] initWithName:@"Reproducibility" value:@"I Didn't Try"];
    [v6 addObject:v11];

    v12 = [[NSURLQueryItem alloc] initWithName:@"AutoDiagnostics" value:@"phone"];
    [v6 addObject:v12];

    if (v3 && [v3 length])
    {
      v13 = [[NSURLQueryItem alloc] initWithName:@"Title" value:v3];
      [v6 addObject:v13];
    }

    if (v4)
    {
      if ([v4 length])
      {
        v14 = [[NSURLQueryItem alloc] initWithName:@"Description" value:v4];
        [v6 addObject:v14];
      }
    }

    [v5 setQueryItems:v6];
    v15 = [v5 URL];

    v16 = +[LSApplicationWorkspace defaultWorkspace];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100014948;
    v18[3] = &unk_100101498;
    v19 = v15;
    v17 = v15;
    [v16 openURL:v17 configuration:0 completionHandler:v18];
  }
}

void sub_100014948(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 136315650;
      v8 = "_ShowUserNoticeWithTapToRadarButton_block_invoke_2";
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to open url %@ : %@", &v7, 0x20u);
    }
  }
}

void *sub_100014A30(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_100121CC0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100014B70;
    v5[4] = &unk_100100D40;
    v5[5] = v5;
    v6 = off_100101508;
    v7 = 0;
    qword_100121CC0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_100121CC0;
    if (qword_100121CC0)
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

  v2 = qword_100121CC0;
LABEL_5:
  result = dlsym(v2, "PDCGlobalConsentStoreInstance");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100121CB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100014B70(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100121CC0 = result;
  return result;
}

void sub_10001554C(void *a1)
{
  v1 = a1;
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "IXSyncLSDatabase";
    v7 = 2112;
    v8 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: %@; re-fetching local LS database", &v5, 0x16u);
  }

  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 acquireDatabase];

  v4 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "IXSyncLSDatabase";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Fetch of local LS database complete", &v5, 0xCu);
  }
}

id sub_100015690(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v9 = @"Did not receive a LSRecordPromise";
    goto LABEL_19;
  }

  v34 = 0;
  v5 = [v3 fulfillReturningError:&v34];
  v6 = v34;
  v7 = v6;
  if (!v5)
  {
    v10 = [v6 domain];
    if ([v10 isEqualToString:NSOSStatusErrorDomain])
    {
      v11 = [v7 code];

      if (v11 == -10814)
      {
        v12 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v37 = "_FulfillLSRecordPromise";
          v38 = 2112;
          v39 = v3;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Could not fulfill record promise %@; the record was likely superseded or the app was uninstalled. Falling back to fetching the current record", buf, 0x16u);
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_100099AF8();
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_100099A24(v3, v5, v12);
    }

LABEL_15:

    v8 = 0;
    goto LABEL_16;
  }

  v8 = v5;
LABEL_16:

  if (v8)
  {
    v28 = v3;
    v13 = v4;
    v14 = 0;
LABEL_22:
    v16 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = [v8 applicationExtensionRecords];
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          v23 = [v22 extensionPointRecord];
          if (v23)
          {
            [v16 addObject:v23];
          }

          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v19);
    }

    [v16 addObject:v8];
    v24 = [v16 copy];
    [LSRecord resolveAllPropertiesOfRecords:v24 andDetachOnQueue:0];

    v4 = v13;
    v3 = v28;
    goto LABEL_32;
  }

  v9 = @"Could not fulfill LSRecordPromise";
LABEL_19:
  sub_10001554C(v9);
  if (v4)
  {
    v33 = 0;
    v8 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v33];
    v15 = v33;
    v14 = v15;
    if (v8)
    {
      v28 = v3;
      v13 = v4;
      goto LABEL_22;
    }

    v26 = [v15 domain];
    if ([v26 isEqualToString:NSOSStatusErrorDomain])
    {
      v27 = [v14 code];

      if (v27 == -10814)
      {
        v16 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v37 = "IXApplicationRecordForRecordPromise";
          v38 = 2112;
          v39 = v4;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Application record for %@ was not found and its LSRecordPromise could not be fulfilled; likely the application was uninstalled. Caller will get a nil LSApplicationRecord", buf, 0x16u);
        }

LABEL_44:
        v8 = 0;
LABEL_32:

        goto LABEL_34;
      }
    }

    else
    {
    }

    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_100099B6C();
    }

    goto LABEL_44;
  }

  v14 = 0;
  v8 = 0;
LABEL_34:

  return v8;
}

id sub_100015B38(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100015E80;
  v37 = sub_100015E90;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100015E80;
  v31 = sub_100015E90;
  v32 = 0;
  v6 = [v5 bundleID];
  switch(a2)
  {
    case 1:
      v7 = 0;
      break;
    case 2:
LABEL_10:
      v13 = +[LSDatabaseContext sharedDatabaseContext];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100015E98;
      v22[3] = &unk_100101528;
      v24 = &v27;
      v25 = &v33;
      v23 = v6;
      [v13 accessSystemScopeUsingBlock:v22];

LABEL_14:
      goto LABEL_15;
    case 3:
      v7 = 1;
      break;
    default:
      v14 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = MIStringForInstallationDomain();
        sub_100099BE0(v15, buf, v14);
      }

      v16 = MIStringForInstallationDomain();
      v18 = sub_1000405FC("IXApplicationRecordForIdentityInDomain", 140, @"IXErrorDomain", 1uLL, 0, 0, @"Unexpected value for installation domain: %@", v17, v16);

      v13 = v28[5];
      v28[5] = v18;
      goto LABEL_14;
  }

  v8 = [LSApplicationRecord alloc];
  v9 = (v28 + 5);
  obj = v28[5];
  v10 = [v8 initWithBundleIdentifier:v6 allowPlaceholder:1 error:&obj];
  objc_storeStrong(v9, obj);
  v11 = v34[5];
  v34[5] = v10;

  if (v34[5])
  {
    v12 = 1;
  }

  else
  {
    v12 = v7;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_15:
  v19 = v34[5];
  if (a3 && !v19)
  {
    *a3 = v28[5];
    v19 = v34[5];
  }

  v20 = v19;

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v20;
}

void sub_100015E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100015E80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100015E98(void *a1, char a2, void *a3)
{
  v6 = a3;
  if (v6 || (a2 & 1) == 0)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    v7 = [LSApplicationRecord alloc];
    v8 = a1[4];
    v9 = *(a1[5] + 8);
    obj = *(v9 + 40);
    v10 = [v7 initWithBundleIdentifier:v8 allowPlaceholder:1 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

id sub_100015F48(void *a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v4 = sub_100015B38(a1, a2, &v11);
  v5 = v11;
  if (v4)
  {
    v10 = v5;
    v6 = [[LSRecordPromise alloc] initWithRecord:v4 error:&v10];
    v7 = v10;

    v5 = v7;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v8 = v5;
    *a3 = v5;
  }

LABEL_7:

  return v6;
}

void sub_100016014(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x20u);
}

uint64_t sub_100018820(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100121CC8 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_100018B60(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_10003E49C(a2);
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 40);
    v13 = 136315906;
    v14 = "[IXSAppUninstaller _promptViewHealthKitDataWithIdentity:record:]_block_invoke";
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Received disposition %@ from %@ for identity:%@", &v13, 0x2Au);
  }

  if (a2 == 1)
  {
    v12 = [*(a1 + 40) bundleID];
    [IXSHealthKitDataUninstallAlert viewHealthKitDataForAppWithBundleID:v12];
LABEL_8:

    goto LABEL_9;
  }

  if (!a2)
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[IXSAppUninstaller _promptViewHealthKitDataWithIdentity:record:]_block_invoke";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Prompting for HealthKit related data failed (non-fatal): %@", &v13, 0x16u);
    }

    goto LABEL_8;
  }

LABEL_9:
}

id *sub_100018E18(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _promptViewHealthKitDataWithIdentity:result[5] record:result[6]];
  }

  return result;
}

void sub_100019780(uint64_t a1)
{
  v3 = [*(a1 + 32) coordinatorForIdentity:*(a1 + 40)];
  if (v3)
  {
    v49 = *(a1 + 56);
    v4 = sub_1000405FC("[IXSAppUninstaller _performUninstallOfAppWithIdentity:clientName:withFlags:record:completion:]_block_invoke", 343, @"IXErrorDomain", 0x18uLL, 0, 0, @"Client %@ requested uninstall for %@", v2, *(a1 + 48));
    [v3 cancelForReason:v4 client:15 error:0];
  }

  v5 = [NSString stringWithFormat:@"Uninstalling %@ for %@ (flags: 0x%lx)", *(a1 + 40), *(a1 + 48), *(a1 + 88)];
  v6 = (*(a1 + 88) >> 4) & 1;
  v65 = @"WaitForStorageDeletion";
  v7 = [NSNumber numberWithBool:v6];
  v66 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
  v9 = [NSMutableDictionary dictionaryWithDictionary:v8];

  if ((*(a1 + 88) & 0x40) != 0)
  {
    [v9 setObject:@"UninstallReasonSystemAppNotAllowed" forKeyedSubscript:@"UninstallReason"];
  }

  if ([*(a1 + 64) isDeletableSystemApplication])
  {
    v10 = [*(a1 + 40) bundleID];
    v54 = v9;
    if (qword_100121D00 != -1)
    {
      sub_100099CD8();
    }

    v11 = [v10 stringByAppendingString:@".appremoval"];
    v53 = [v11 stringByAppendingString:@".xpc"];
    v12 = [@"/System/Library/AppRemovalServices/" stringByAppendingPathComponent:?];
    v13 = [NSURL fileURLWithPath:v12 isDirectory:1];
    v64 = 0;
    v14 = +[IXFileManager defaultManager];
    v63 = 0;
    v15 = [v14 itemExistsAtURL:v13 isDirectory:&v64 error:&v63];
    v52 = v63;

    if (v15)
    {
      if ((v64 & 1) == 0)
      {
        v18 = sub_1000031B0(off_100121958);
        v27 = v52;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          sub_100099D00();
        }

        v9 = v54;
        goto LABEL_27;
      }

      if (([qword_100121CF8 containsObject:v12] & 1) == 0)
      {
        [qword_100121CF8 addObject:v12];
        v16 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sub_100099D74();
        }

        [v13 fileSystemRepresentation];
        xpc_add_bundle();
        v17 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_100099DF4();
        }
      }

      v51 = v5;
      v18 = [[NSXPCConnection alloc] initWithServiceName:v11];
      v19 = _LSAppRemovalServiceXPCInterface();
      [v18 setRemoteObjectInterface:v19];

      [v18 resume];
      v20 = dispatch_semaphore_create(0);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10001CE48;
      v68 = &unk_1001017E0;
      v50 = v11;
      *&v69 = v50;
      v21 = v20;
      *(&v69 + 1) = v21;
      v22 = [v18 remoteObjectProxyWithErrorHandler:buf];
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_10001CEC0;
      v61[3] = &unk_100101808;
      v23 = v21;
      v62 = v23;
      [v22 removeAppWithReply:v61];

      v24 = dispatch_time(0, 15000000000);
      if (dispatch_semaphore_wait(v23, v24))
      {
        v25 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_100099E74();
        }

        sub_100014350(@"IXErrorDomain", @"UninstallError", @"UninstallErrorXPCRemovalTimeout", v50);
      }

      v26 = [v18 _xpcConnection];
      xpc_connection_kill();

      [v18 invalidate];
      v5 = v51;
      v9 = v54;
    }

    else
    {
      v18 = sub_1000031B0(off_100121958);
      v9 = v54;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "_InvokeSystemAppRemovalXPCService";
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        v27 = v52;
        v68 = v52;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: App deletion service does not exist at %@ : %@", buf, 0x20u);
LABEL_27:

        goto LABEL_28;
      }
    }

    v27 = v52;
    goto LABEL_27;
  }

LABEL_28:
  v28 = *(a1 + 72);
  v29 = *(a1 + 40);
  v60 = 0;
  v30 = [v28 _acquireTerminationAssertionForIdentity:v29 withError:&v60];
  v31 = v60;
  if (v30)
  {
    v32 = *(a1 + 40);
    v59 = v31;
    v33 = sub_100013E64(v32, v9, v5);
    v34 = v31;

    [v30 invalidate];
    if (v33)
    {
      if ((*(a1 + 88) & 2) != 0)
      {
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_10001A08C;
        v55[3] = &unk_1001015A0;
        v55[4] = *(a1 + 72);
        v35 = *(a1 + 40);
        v36 = *(a1 + 88);
        v56 = v35;
        v58 = v36;
        v57 = *(a1 + 64);
        sub_100071134(&_dispatch_main_q, v55);
      }

      v37 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = sub_10003E49C(3uLL);
        v39 = *(a1 + 56);
        *buf = 136315650;
        *&buf[4] = "[IXSAppUninstaller _performUninstallOfAppWithIdentity:clientName:withFlags:record:completion:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v38;
        *&buf[22] = 2112;
        v68 = v39;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%s: Uninstall succeeded with disposition:%@ for bundleID:%@", buf, 0x20u);
      }

      v40 = *(a1 + 80);
      if (!v40)
      {
        goto LABEL_47;
      }

      v41 = *(v40 + 16);
    }

    else
    {
      if (!v34)
      {
        v43 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          sub_100099F14(a1);
        }

        v34 = sub_1000405FC("[IXSAppUninstaller _performUninstallOfAppWithIdentity:clientName:withFlags:record:completion:]_block_invoke", 390, @"IXErrorDomain", 0xEuLL, 0, 0, @"[LSApplicationWorkspace uninstallApplication:] for %@ returned NO but did not set an error.", v44, *(a1 + 56));
      }

      v45 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = sub_10003E49C(0);
        v47 = *(a1 + 56);
        *buf = 136315906;
        *&buf[4] = "[IXSAppUninstaller _performUninstallOfAppWithIdentity:clientName:withFlags:record:completion:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v46;
        *&buf[22] = 2112;
        v68 = v47;
        LOWORD(v69) = 2112;
        *(&v69 + 2) = v34;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%s: Uninstall failed with disposition:%@ for bundleID:%@ with error:%@", buf, 0x2Au);
      }

      v48 = *(a1 + 80);
      if (!v48)
      {
        goto LABEL_47;
      }

      v41 = *(v48 + 16);
    }

    v41();
LABEL_47:
    v31 = v34;
    goto LABEL_48;
  }

  v42 = *(a1 + 80);
  if (v42)
  {
    (*(v42 + 16))(v42, 0, v31);
  }

LABEL_48:
}

void sub_10001A2CC(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 3)
  {
    [*(a1 + 48) _promptForDeletionWithRecord:*(a1 + 56) identity:*(a1 + 40) clientName:*(a1 + 64) flags:*(a1 + 80) completion:*(a1 + 72) removability:*(a1 + 88)];
  }

  else if (*(a1 + 72))
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_10003E49C(a2);
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 40);
      v12 = 136315906;
      v13 = "[IXSAppUninstaller _promptForMoveOrDeleteAppRecord:identity:clientName:flags:completion:removability:]_block_invoke";
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Received disposition %@ from %@ for identity:%@", &v12, 0x2Au);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void sub_10001A684(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    [*(a1 + 32) _promptForMoveOrDeleteAppRecord:*(a1 + 40) identity:*(a1 + 48) clientName:*(a1 + 56) flags:*(a1 + 72) completion:*(a1 + 64) removability:*(a1 + 80)];
  }

  else
  {
    v6 = [*(a1 + 40) localizedName];
    [v5 _displayAuthenticationErrorForApp:v6];

    v7 = *(a1 + 64);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v8);
    }
  }
}

void sub_10001A7D0(id a1)
{
  if (dlopen("/System/Library/PrivateFrameworks/ScreenTimeCore.framework/ScreenTimeCore", 1))
  {
    qword_100121CD8 = NSClassFromString(@"STManagementState");
    if (qword_100121CD8)
    {
      return;
    }

    v1 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_10009A130();
    }
  }

  else
  {
    dlerror();
    v1 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_10009A1B0();
    }
  }
}

void sub_10001A924(id a1)
{
  if (dlopen("/System/Library/PrivateFrameworks/WebBookmarks.framework/WebBookmarks", 1))
  {
    qword_100121CE8 = NSClassFromString(@"WBWebFilterSettings");
    if (qword_100121CE8)
    {
      return;
    }

    v1 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_10009A2B8();
    }
  }

  else
  {
    dlerror();
    v1 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_10009A338();
    }
  }
}

void sub_10001AE98(void *a1, unint64_t a2, void *a3)
{
  if (a1[6])
  {
    v5 = off_100121958;
    v6 = a3;
    v7 = sub_1000031B0(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_10003E49C(a2);
      v9 = a1[4];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = a1[5];
      v13 = 136315906;
      v14 = "[IXSAppUninstaller _finalDeletionPromptWithRecord:identity:clientName:flags:removability:completion:]_block_invoke";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Received disposition %@ from %@ for %@", &v13, 0x2Au);
    }

    (*(a1[6] + 16))();
  }
}

void sub_10001AFE0(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 3)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v11 = *(a1 + 72);
    v10 = *(a1 + 80);
    if (*(a1 + 88) == 1)
    {
      [v6 _promptToOverrideManagedSettingsOfAppWithRecord:v7 identity:v8 clientName:v9 flags:v10 completion:v11];
    }

    else
    {
      [v6 _promptForRelatedDataAndUninstallAppWithRecord:v7 identity:v8 clientName:v9 flags:v10 completion:v11];
    }
  }

  else if (*(a1 + 72))
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_10003E49C(a2);
      v14 = *(a1 + 64);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = *(a1 + 48);
      v18 = 136315906;
      v19 = "[IXSAppUninstaller _finalDeletionPromptWithRecord:identity:clientName:flags:removability:completion:]_block_invoke";
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Received disposition %@ from %@ for %@", &v18, 0x2Au);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void sub_10001B55C(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 4)
  {
    [*(a1 + 32) openSettingsWithBundleID:*(a1 + 40)];
  }

  if (*(a1 + 56))
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_10003E49C(a2);
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 48);
      v12 = 136315906;
      v13 = "[IXSAppUninstaller _promptForGatingDefaultAppDeletionWithRecord:identity:clientName:flags:removability:completion:]_block_invoke";
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Received disposition %@ from %@ for %@", &v12, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10001B6B0(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 3)
  {
    [*(a1 + 32) _promptForRelatedDataAndUninstallAppWithRecord:*(a1 + 40) identity:*(a1 + 48) clientName:*(a1 + 56) flags:*(a1 + 80) completion:*(a1 + 72)];
  }

  else if (*(a1 + 72))
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_10003E49C(a2);
      v8 = *(a1 + 64);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 48);
      v12 = 136315906;
      v13 = "[IXSAppUninstaller _promptForGatingDefaultAppDeletionWithRecord:identity:clientName:flags:removability:completion:]_block_invoke";
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Received disposition %@ from %@ for %@", &v12, 0x2Au);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void sub_10001B810(void *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 4)
  {
    v6 = a1[4];
    v19 = 0;
    v7 = [v6 openDefaultAppStoreWithError:&v19];
    v8 = v19;
    if ((v7 & 1) == 0)
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10009A42C();
      }

      v11 = sub_1000405FC("[IXSAppUninstaller _promptForGatingDefaultAppDeletionWithRecord:identity:clientName:flags:removability:completion:]_block_invoke", 690, @"IXErrorDomain", 1uLL, v8, 0, @"Failed to open default app marketplace", v10, v18);

      v5 = v11;
    }
  }

  if (a1[6])
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_10003E49C(a2);
      v14 = a1[4];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = a1[5];
      *buf = 136315906;
      v21 = "[IXSAppUninstaller _promptForGatingDefaultAppDeletionWithRecord:identity:clientName:flags:removability:completion:]_block_invoke";
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Received disposition %@ from %@ for %@", buf, 0x2Au);
    }

    (*(a1[6] + 16))();
  }
}

void sub_10001BC30(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 - 3) < 2 || a2 == 2)
  {
LABEL_9:
    (*(*(a1 + 64) + 16))();
    goto LABEL_10;
  }

  if (a2 != 1)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10009A55C();
    }

    v8 = sub_1000405FC("[IXSAppUninstaller _promptForDeletionWithRecord:identity:clientName:flags:completion:removability:]_block_invoke", 745, @"IXErrorDomain", 1uLL, v5, 0, @"Failed to identify sheet disposition from user response", v7, v9);

    v5 = v8;
    goto LABEL_9;
  }

  [*(a1 + 32) _promptForGatingDefaultAppDeletionWithRecord:*(a1 + 40) identity:*(a1 + 48) clientName:*(a1 + 56) flags:*(a1 + 72) removability:*(a1 + 80) completion:*(a1 + 64)];
LABEL_10:
}

void sub_10001BDD0(uint64_t a1)
{
  error = 0;
  v2 = sub_100032CFC();
  v16[0] = kCFUserNotificationAlertHeaderKey;
  v3 = [v2 localizedStringForKey:@"COULD_NOT_AUTHENTICATE" value:&stru_100105BA0 table:@"IXUninstallAlert"];
  v4 = [NSString localizedStringWithFormat:v3, *(a1 + 32)];
  v17[0] = v4;
  v16[1] = kCFUserNotificationAlertMessageKey;
  v5 = [v2 localizedStringForKey:@"AUTHENTICATE_TO_DELETE_APP_MESSAGE" value:&stru_100105BA0 table:@"IXUninstallAlert"];
  v17[1] = v5;
  v17[2] = &__kCFBooleanTrue;
  v16[2] = SBUserNotificationAllowMenuButtonDismissal;
  v16[3] = SBUserNotificationDismissOnLock;
  v17[3] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];

  CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, &error, v6);
  v7 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 136315394;
    v13 = "[IXSAppUninstaller _displayAuthenticationErrorForApp:]_block_invoke";
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Showing user alert of type:%@", buf, 0x16u);
  }
}

void sub_10001C2A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10009A65C(a1);
    }

    sub_1000405FC("[IXSAppUninstaller _promptToOverrideManagedSettingsOfAppWithRecord:identity:clientName:flags:completion:]_block_invoke", 789, @"IXErrorDomain", 1uLL, v5, 0, @"Request to override unremovability failed for app with bundle ID %@", v7, *(a1 + 32));
    goto LABEL_17;
  }

  v8 = [a2 integerValue];
  v9 = sub_1000031B0(off_100121958);
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009A6DC(a1);
    }

    v16 = *(a1 + 32);
    v13 = @"Request to override unremovability denied for app with bundle ID %@";
    v14 = 798;
    goto LABEL_16;
  }

  if (v8 != 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009A75C(a1);
    }

    v16 = *(a1 + 32);
    v13 = @"Unknown override response received from ManagedSettings for app with bundle ID %@";
    v14 = 802;
LABEL_16:
    sub_1000405FC("[IXSAppUninstaller _promptToOverrideManagedSettingsOfAppWithRecord:identity:clientName:flags:completion:]_block_invoke", v14, @"IXErrorDomain", 1uLL, 0, 0, v13, v12, v16);
    v15 = LABEL_17:;
    (*(*(a1 + 72) + 16))();

    goto LABEL_18;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 136315394;
    v18 = "[IXSAppUninstaller _promptToOverrideManagedSettingsOfAppWithRecord:identity:clientName:flags:completion:]_block_invoke";
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Request to override unremovability approved for app with bundle ID %@", buf, 0x16u);
  }

  [*(a1 + 40) _promptForRelatedDataAndUninstallAppWithRecord:*(a1 + 48) identity:*(a1 + 56) clientName:*(a1 + 64) flags:*(a1 + 80) completion:*(a1 + 72)];
LABEL_18:
}

uint64_t sub_10001CCF4(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v5 = +[IXSRemoteDeletionPromptManager sharedInstance];
  v6 = [*(a1 + 32) bundleID];
  if (![v5 isValidBundleIDForRemoteAlert:v6 withAppType:0 numAppsInstalled:0] || *(a1 + 48) != 1)
  {

    goto LABEL_6;
  }

  v7 = *(a1 + 56);

  if ((v7 & 0x400) == 0)
  {
    v5 = +[IXSRemoteDeletionPromptManager sharedInstance];
    [v5 dismissRemoteAlert];
LABEL_6:
  }

  if (a2 == 3 && !v11)
  {
    v8 = sub_10003FB30();
    [v8 identityWasUninstalled:*(a1 + 32)];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v11);
  }

  return _objc_release_x1();
}

void sub_10001CE0C(id a1)
{
  qword_100121CF8 = objc_alloc_init(NSMutableSet);

  _objc_release_x1();
}

void sub_10001CE48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10009A8DC(a1);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10001CEC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10009A95C();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001CF6C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

uint64_t sub_10001CFA8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

uint64_t sub_10001F1AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001F1C4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 200);
  v9 = 0;
  v4 = [v3 awakeFromSerializationWithLookupBlock:v2 error:&v9];
  v5 = v9;
  v6 = v9;
  if (v4)
  {
    [*(*(a1 + 32) + 200) setDelegate:?];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    [*(a1 + 32) setIconPromiseUUID:0];
    v7 = *(a1 + 32);
    v8 = *(v7 + 200);
    *(v7 + 200) = 0;
  }
}

void sub_10001F270(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 208);
  v9 = 0;
  v4 = [v3 awakeFromSerializationWithLookupBlock:v2 error:&v9];
  v5 = v9;
  v6 = v9;
  if (v4)
  {
    [*(*(a1 + 32) + 208) setDelegate:?];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    [*(a1 + 32) setIconResourcesPromiseUUID:0];
    v7 = *(a1 + 32);
    v8 = *(v7 + 208);
    *(v7 + 208) = 0;
  }
}

void sub_10001F31C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 216);
  v9 = 0;
  v4 = [v3 awakeFromSerializationWithLookupBlock:v2 error:&v9];
  v5 = v9;
  v6 = v9;
  if (v4)
  {
    [*(*(a1 + 32) + 216) setDelegate:?];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    [*(a1 + 32) setInfoPlistIconContentPromiseUUID:0];
    v7 = *(a1 + 32);
    v8 = *(v7 + 216);
    *(v7 + 216) = 0;
  }
}

void sub_10001F3C8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 224);
  v9 = 0;
  v4 = [v3 awakeFromSerializationWithLookupBlock:v2 error:&v9];
  v5 = v9;
  v6 = v9;
  if (v4)
  {
    [*(*(a1 + 32) + 224) setDelegate:?];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    [*(a1 + 32) setEntitlementsPromiseUUID:0];
    v7 = *(a1 + 32);
    v8 = *(v7 + 224);
    *(v7 + 224) = 0;
  }
}

void sub_10001F474(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 232);
  v9 = 0;
  v4 = [v3 awakeFromSerializationWithLookupBlock:v2 error:&v9];
  v5 = v9;
  v6 = v9;
  if (v4)
  {
    [*(*(a1 + 32) + 232) setDelegate:?];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    [*(a1 + 32) setInfoPlistLoctablePromiseUUID:0];
    v7 = *(a1 + 32);
    v8 = *(v7 + 232);
    *(v7 + 232) = 0;
  }
}

void sub_10001F520(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 256);
  v9 = 0;
  v4 = [v3 awakeFromSerializationWithLookupBlock:v2 error:&v9];
  v5 = v9;
  v6 = v9;
  if (v4)
  {
    [*(*(a1 + 32) + 256) setDelegate:?];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    [*(a1 + 32) setMetadataPromiseUUID:0];
    v7 = *(a1 + 32);
    v8 = *(v7 + 256);
    *(v7 + 256) = 0;
  }
}

void sub_10001F5CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 264);
  v9 = 0;
  v4 = [v3 awakeFromSerializationWithLookupBlock:v2 error:&v9];
  v5 = v9;
  v6 = v9;
  if (v4)
  {
    [*(*(a1 + 32) + 264) setDelegate:?];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    [*(a1 + 32) setSinfPromiseUUID:0];
    v7 = *(a1 + 32);
    v8 = *(v7 + 264);
    *(v7 + 264) = 0;
  }
}

void sub_10001F678(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 272);
  v9 = 0;
  v4 = [v3 awakeFromSerializationWithLookupBlock:v2 error:&v9];
  v5 = v9;
  v6 = v9;
  if (v4)
  {
    [*(*(a1 + 32) + 272) setDelegate:?];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    [*(a1 + 32) setLocalizationDictionaryPromiseUUID:0];
    v7 = *(a1 + 32);
    v8 = *(v7 + 272);
    *(v7 + 272) = 0;
  }
}

void sub_10001F724(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v7 = 0;
  v4 = [v2 awakeFromSerializationWithLookupBlock:v3 error:&v7];
  v5 = v7;
  v6 = v7;
  if (v4)
  {
    [*(a1 + 32) setDelegate:*(a1 + 40)];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v5);
    [*(a1 + 48) addObject:*(a1 + 56)];
  }
}

id sub_10001F9EC(uint64_t a1)
{
  [*(a1 + 32) setStagedPathMayNotExistWhenAwakening:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setDelegate:v3];
}

id sub_10001FC60(uint64_t a1)
{
  [*(a1 + 32) setStagedPathMayNotExistWhenAwakening:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setDelegate:v3];
}

id sub_10001FED4(uint64_t a1)
{
  [*(a1 + 32) setStagedPathMayNotExistWhenAwakening:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setDelegate:v3];
}

id sub_1000201E0(uint64_t a1)
{
  [*(a1 + 32) setStagedPathMayNotExistWhenAwakening:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setDelegate:v3];
}

id sub_10002045C(uint64_t a1)
{
  [*(a1 + 32) setStagedPathMayNotExistWhenAwakening:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setDelegate:v3];
}

id sub_1000206D8(uint64_t a1)
{
  [*(a1 + 32) setStagedPathMayNotExistWhenAwakening:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setDelegate:v3];
}

id sub_10002095C(uint64_t a1)
{
  [*(a1 + 32) setStagedPathMayNotExistWhenAwakening:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setDelegate:v3];
}

id sub_100020BE0(uint64_t a1)
{
  [*(a1 + 32) setStagedPathMayNotExistWhenAwakening:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setDelegate:v3];
}

void sub_100020FE4(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleID];
  v3 = [v2 hasPrefix:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 56);
    v5 = [*(a1 + 32) uniqueIdentifier];
    [v4 addObject:v5];

    [*(a1 + 32) setStagedPathMayNotExistWhenAwakening:1];
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);

    [v7 setDelegate:v6];
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      *buf = 136316162;
      v16 = "[IXSPlaceholder setAppExtensionPlaceholders:]_block_invoke";
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: Attempted to set placeholder %@ which does not have the required bundle identifier prefix of %@ for parent %@ : %@", buf, 0x34u);
    }

    v14 = *(a1 + 48);
    v10 = sub_1000405FC("[IXSPlaceholder setAppExtensionPlaceholders:]_block_invoke", 687, @"IXErrorDomain", 8uLL, 0, 0, @"Attempted to set placeholder %@ which does not have the required bundle identifier prefix of %@ for parent %@", v9, *(a1 + 32));
    [*(a1 + 32) cancelForReason:v10 client:15 error:0];
  }
}

void sub_100021720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100021758(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100021A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100021A60(uint64_t a1)
{
  v5 = [*(a1 + 32) sinfPromise];
  v2 = [v5 data];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100021CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100021D04(uint64_t a1)
{
  v5 = [*(a1 + 32) localizationDictionaryPromise];
  v2 = [v5 dictionary];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100022314(uint64_t a1)
{
  if ([*(a1 + 32) isComplete] && (objc_msgSend(*(a1 + 32), "error"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v4 = 1;
  }

  else
  {
    v3 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10009B18C(a1);
    }

    v4 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v4;
}

void sub_1000223A8(uint64_t a1)
{
  if ([*(a1 + 32) isComplete] && (objc_msgSend(*(a1 + 32), "error"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v4 = 1;
  }

  else
  {
    v3 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10009B228(a1);
    }

    v4 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v4;
}

void sub_10002243C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) entitlements];
  v4 = [v3 isComplete];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10009B2C4(v2);
    }

    v5 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
}

void sub_1000224D8(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) infoPlistLoctable];
  v4 = [v3 isComplete];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10009B360(v2);
    }

    v5 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
}

void sub_100022574(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) isComplete])
  {
    v3 = 1;
  }

  else
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10009B3FC(a1, v2);
    }

    v3 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

double sub_100022C1C(uint64_t a1)
{
  [*(a1 + 32) percentComplete];
  result = v2 * 0.300000012;
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100022C5C(uint64_t a1)
{
  v3 = [*(a1 + 32) entitlements];
  [v3 percentComplete];
  *(*(*(a1 + 40) + 8) + 24) = v2 * 0.200000003;
}

double sub_100022CC4(uint64_t a1)
{
  [*(a1 + 32) percentComplete];
  *(*(*(a1 + 40) + 8) + 24) = v2 + *(*(*(a1 + 40) + 8) + 24);
  v3 = *(*(a1 + 48) + 8);
  result = *(v3 + 24) + 1.0;
  *(v3 + 24) = result;
  return result;
}

void sub_100022E2C(uint64_t a1)
{
  [*(a1 + 32) setDelegate:0];
  v2 = [*(a1 + 32) error];

  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v3 cancelForReason:v4 client:v5 error:0];
  }
}

void sub_100023578(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002B4B4;
    v6[3] = &unk_100100DF8;
    v8 = a2;
    v7 = v4;
    dispatch_sync(v5, v6);
  }
}

void sub_100023774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002378C(uint64_t a1)
{
  v6 = [*(a1 + 32) subPromiseUUIDs];
  v2 = [*(a1 + 32) uniqueIdentifier];
  v3 = [v6 setByAddingObject:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10002529C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002530C(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionary];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100025358(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (!v2)
  {
    v3 = [*(a1 + 32) stagedPath];
    v4 = *(a1 + 40);
    v43 = 0;
    v5 = [v4 urlsForItemsInDirectoryAtURL:v3 ignoringSymlinks:1 error:&v43];
    v6 = v43;
    v7 = v43;
    if (v5)
    {
      v35 = v3;
      v8 = *(*(a1 + 64) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = 0;

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v34 = v5;
      obj = v5;
      v10 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
      if (v10)
      {
        v11 = v10;
        v37 = *v40;
        while (2)
        {
          v12 = 0;
          v13 = v7;
          do
          {
            if (*v40 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v39 + 1) + 8 * v12);
            v15 = [v14 lastPathComponent];
            v16 = [*(a1 + 48) URLByAppendingPathComponent:v15 isDirectory:0];
            v17 = *(a1 + 40);
            v38 = v13;
            v18 = [v17 moveItemAtURL:v14 toURL:v16 error:&v38];
            v19 = v38;
            v7 = v38;

            v20 = sub_1000031B0(off_100121958);
            v21 = v20;
            if (!v18)
            {
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v32 = [v14 path];
                v33 = [v16 path];
                *buf = 136315906;
                v45 = "[IXSPlaceholder _materialize]_block_invoke";
                v46 = 2112;
                v47 = v32;
                v48 = 2112;
                v49 = v33;
                v50 = 2112;
                v51 = v7;
                _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: Failed to move icon asset from %@ to %@ : %@", buf, 0x2Au);
              }

              objc_storeStrong((*(*(a1 + 64) + 8) + 40), v19);
              goto LABEL_17;
            }

            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v22 = *(a1 + 56);
              *buf = 136315650;
              v45 = "[IXSPlaceholder _materialize]_block_invoke";
              v46 = 2112;
              v47 = v22;
              v48 = 2112;
              v49 = v15;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: %@: Using icon resource %@", buf, 0x20u);
            }

            v12 = v12 + 1;
            v13 = v7;
          }

          while (v11 != v12);
          v11 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:

      v5 = v34;
      v3 = v35;
    }

    else
    {
      v23 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10009B860();
      }

      v24 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v3 path];
        v26 = [*(a1 + 40) itemExistsAtURL:v3];
        *buf = 136315650;
        v45 = "[IXSPlaceholder _materialize]_block_invoke";
        if (v26)
        {
          v27 = 89;
        }

        else
        {
          v27 = 78;
        }

        v46 = 2112;
        v47 = v25;
        v48 = 1024;
        LODWORD(v49) = v27;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: %@ exists: %c", buf, 0x1Cu);
      }

      v28 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v3 path];
        v30 = [*(a1 + 40) itemExistsAtURL:v3];
        *buf = 136315650;
        v45 = "[IXSPlaceholder _materialize]_block_invoke";
        if (v30)
        {
          v31 = 89;
        }

        else
        {
          v31 = 78;
        }

        v46 = 2112;
        v47 = v29;
        v48 = 1024;
        LODWORD(v49) = v31;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s: %@ exists: %c", buf, 0x1Cu);
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
    }
  }
}

void sub_100025818(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (!v2)
  {
    v3 = [*(a1 + 40) URLByAppendingPathComponent:@"Icon.png" isDirectory:0];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) stagedPath];
    v26 = 0;
    v6 = [v4 moveItemAtURL:v5 toURL:v3 error:&v26];
    v7 = v26;

    v8 = sub_1000031B0(off_100121958);
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 56);
        *buf = 136315394;
        v28 = "[IXSPlaceholder _materialize]_block_invoke";
        v29 = 2112;
        v30 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: %@: Using single PNG icon promise", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v25 = [*(a1 + 32) stagedPath];
        *buf = 136315906;
        v28 = "[IXSPlaceholder _materialize]_block_invoke";
        v29 = 2112;
        v30 = v25;
        v31 = 2112;
        v32 = v3;
        v33 = 2112;
        v34 = v7;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Failed to move icon from %@ to %@ : %@", buf, 0x2Au);
      }

      v11 = sub_1000031B0(off_100121958);
      v12 = &off_1000BA000;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) stagedPath];
        v14 = [v13 path];
        v15 = *(a1 + 48);
        v16 = [*(a1 + 32) stagedPath];
        v12 = &off_1000BA000;
        v17 = [v15 itemExistsAtURL:v16];
        *buf = 136315650;
        if (v17)
        {
          v18 = 89;
        }

        else
        {
          v18 = 78;
        }

        v28 = "[IXSPlaceholder _materialize]_block_invoke";
        v29 = 2112;
        v30 = v14;
        v31 = 1024;
        LODWORD(v32) = v18;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: %@ exists: %c", buf, 0x1Cu);
      }

      v19 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v3 path];
        v21 = [*(a1 + 48) itemExistsAtURL:v3];
        *buf = *(v12 + 371);
        if (v21)
        {
          v22 = 89;
        }

        else
        {
          v22 = 78;
        }

        v28 = "[IXSPlaceholder _materialize]_block_invoke";
        v29 = 2112;
        v30 = v20;
        v31 = 1024;
        LODWORD(v32) = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: %@ exists: %c", buf, 0x1Cu);
      }

      v23 = *(*(a1 + 64) + 8);
      v24 = v7;
      v9 = *(v23 + 40);
      *(v23 + 40) = v24;
    }
  }
}

void sub_100025B80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v36 = 0;
  v3 = [v2 _validateClientEntitlements:&v36];
  v4 = v36;
  v5 = v4;
  if (v3)
  {
    v6 = [*(a1 + 40) URLByAppendingPathComponent:@"PlaceholderEntitlements.plist" isDirectory:0];
    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) entitlements];
    v9 = [v8 stagedPath];
    v35 = 0;
    v10 = [v7 moveItemAtURL:v9 toURL:v6 error:&v35];
    v11 = v35;

    v12 = sub_1000031B0(off_100121958);
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        *buf = 136315394;
        v38 = "[IXSPlaceholder _materialize]_block_invoke";
        v39 = 2112;
        v40 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: %@: Added entitlements", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v31 = [*(a1 + 32) entitlements];
        v32 = [v31 stagedPath];
        v33 = *(a1 + 56);
        *buf = 136315906;
        v38 = "[IXSPlaceholder _materialize]_block_invoke";
        v39 = 2112;
        v40 = v32;
        v41 = 2112;
        v42 = v6;
        v43 = 2112;
        v44 = v33;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: Failed to move entitlements from %@ to %@ : %@", buf, 0x2Au);
      }

      v17 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [*(a1 + 32) entitlements];
        v18 = [v34 stagedPath];
        v19 = [v18 path];
        v20 = *(a1 + 48);
        v21 = [*(a1 + 32) entitlements];
        v22 = [v21 stagedPath];
        v23 = [v20 itemExistsAtURL:v22];
        *buf = 136315650;
        if (v23)
        {
          v24 = 89;
        }

        else
        {
          v24 = 78;
        }

        v38 = "[IXSPlaceholder _materialize]_block_invoke";
        v39 = 2112;
        v40 = v19;
        v41 = 1024;
        LODWORD(v42) = v24;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: %@ exists: %c", buf, 0x1Cu);
      }

      v25 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v6 path];
        v27 = [*(a1 + 48) itemExistsAtURL:v6];
        *buf = 136315650;
        if (v27)
        {
          v28 = 89;
        }

        else
        {
          v28 = 78;
        }

        v38 = "[IXSPlaceholder _materialize]_block_invoke";
        v39 = 2112;
        v40 = v26;
        v41 = 1024;
        LODWORD(v42) = v28;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s: %@ exists: %c", buf, 0x1Cu);
      }

      v29 = *(*(a1 + 64) + 8);
      v30 = v11;
      v13 = *(v29 + 40);
      *(v29 + 40) = v30;
    }
  }

  else
  {
    v15 = *(*(a1 + 64) + 8);
    v16 = v4;
    v11 = 0;
    v6 = *(v15 + 40);
    *(v15 + 40) = v16;
  }
}

void sub_100025F64(uint64_t a1)
{
  v2 = [*(a1 + 32) URLByAppendingPathComponent:@"InfoPlist.loctable" isDirectory:0];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) stagedPath];
  v25 = 0;
  v5 = [v3 moveItemAtURL:v4 toURL:v2 error:&v25];
  v6 = v25;

  v7 = sub_1000031B0(off_100121958);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      *buf = 136315394;
      v27 = "[IXSPlaceholder _materialize]_block_invoke";
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@: Added InfoPlist.loctable", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v24 = [*(a1 + 48) stagedPath];
      *buf = 136315906;
      v27 = "[IXSPlaceholder _materialize]_block_invoke";
      v28 = 2112;
      v29 = v24;
      v30 = 2112;
      v31 = v2;
      v32 = 2112;
      v33 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: Failed to move loctable from %@ to %@ : %@", buf, 0x2Au);
    }

    v10 = sub_1000031B0(off_100121958);
    v11 = &off_1000BA000;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 48) stagedPath];
      v13 = [v12 path];
      v14 = *(a1 + 40);
      v15 = [*(a1 + 48) stagedPath];
      v11 = &off_1000BA000;
      v16 = [v14 itemExistsAtURL:v15];
      *buf = 136315650;
      if (v16)
      {
        v17 = 89;
      }

      else
      {
        v17 = 78;
      }

      v27 = "[IXSPlaceholder _materialize]_block_invoke";
      v28 = 2112;
      v29 = v13;
      v30 = 1024;
      LODWORD(v31) = v17;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %@ exists: %c", buf, 0x1Cu);
    }

    v18 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v2 path];
      v20 = [*(a1 + 40) itemExistsAtURL:v2];
      *buf = *(v11 + 371);
      if (v20)
      {
        v21 = 89;
      }

      else
      {
        v21 = 78;
      }

      v27 = "[IXSPlaceholder _materialize]_block_invoke";
      v28 = 2112;
      v29 = v19;
      v30 = 1024;
      LODWORD(v31) = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: %@ exists: %c", buf, 0x1Cu);
    }

    v22 = *(*(a1 + 64) + 8);
    v23 = v6;
    v8 = *(v22 + 40);
    *(v22 + 40) = v23;
  }
}

void sub_1000262AC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = [a2 stringByAppendingString:@".lproj"];
  v9 = [*(a1 + 32) URLByAppendingPathComponent:v8 isDirectory:1];
  v10 = [v9 URLByAppendingPathComponent:@"InfoPlist.strings" isDirectory:0];
  v11 = *(a1 + 40);
  v25 = 0;
  v12 = [v11 createDirectoryAtURL:v9 withIntermediateDirectories:0 mode:493 class:4 error:&v25];
  v13 = v25;
  if ((v12 & 1) == 0)
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10009B8DC(v9);
    }

    v17 = [v9 path];
    v19 = sub_1000405FC("[IXSPlaceholder _materialize]_block_invoke", 1501, @"IXErrorDomain", 0x14uLL, v13, 0, @"Failed to create lproj directory at %@", v18, v17);
    goto LABEL_9;
  }

  if ((*(a1 + 56) & 1) == 0 && [v7 count])
  {
    v24 = v13;
    v14 = [v7 IX_writeToURL:v10 format:200 options:0x10000000 error:&v24];
    v15 = v24;

    if (v14)
    {
      v13 = v15;
      goto LABEL_10;
    }

    v22 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10009B984(v10);
    }

    v17 = [v10 path];
    v19 = sub_1000405FC("[IXSPlaceholder _materialize]_block_invoke", 1516, @"IXErrorDomain", 0x14uLL, v15, 0, @"Failed to write %@", v23, v17);
    v13 = v15;
LABEL_9:

    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    *a4 = 1;
  }

LABEL_10:
}

void sub_100026524(uint64_t a1)
{
  v2 = [*(a1 + 32) seed];
  v3 = [v2 placeholderType];

  if (v3 == 2)
  {
    v4 = a1 + 80;
    v5 = *(*(*(a1 + 80) + 8) + 40);
    if (!v5)
    {
      v6 = @"PlugIns";
      goto LABEL_11;
    }

LABEL_6:
    v7 = v5;
LABEL_13:
    v25 = [*(a1 + 32) stagedPath];
    v26 = [v25 lastPathComponent];

    v27 = [v7 URLByAppendingPathComponent:v26 isDirectory:1];
    v28 = *(a1 + 48);
    v29 = [*(a1 + 32) stagedPath];
    v58 = 0;
    v30 = [v28 moveItemAtURL:v29 toURL:v27 error:&v58];
    v31 = v58;

    v32 = sub_1000031B0(off_100121958);
    v33 = v32;
    if (v30)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a1 + 56);
        *buf = 136315650;
        v61 = "[IXSPlaceholder _materialize]_block_invoke";
        v62 = 2112;
        v63 = v34;
        v64 = 2112;
        v65 = v26;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s: %@: added appex %@", buf, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v51 = v31;
        v52 = *(a1 + 32);
        v57 = [v52 stagedPath];
        v53 = [v57 path];
        v54 = [v27 path];
        v55 = *(a1 + 64);
        *buf = 136316162;
        v61 = "[IXSPlaceholder _materialize]_block_invoke";
        v62 = 2112;
        v63 = v52;
        v31 = v51;
        v64 = 2112;
        v65 = v53;
        v66 = 2112;
        v67 = v54;
        v68 = 2112;
        v69 = v55;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s: Failed to move app extension placeholder %@ from %@ to %@ : %@", buf, 0x34u);
      }

      v35 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [*(a1 + 32) stagedPath];
        [v36 path];
        v37 = v56 = v31;
        v38 = *(a1 + 48);
        v39 = [*(a1 + 32) stagedPath];
        v40 = [v38 itemExistsAtURL:v39];
        *buf = 136315650;
        v61 = "[IXSPlaceholder _materialize]_block_invoke";
        if (v40)
        {
          v41 = 89;
        }

        else
        {
          v41 = 78;
        }

        v62 = 2112;
        v63 = v37;
        v64 = 1024;
        LODWORD(v65) = v41;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s: %@ exists: %c", buf, 0x1Cu);

        v31 = v56;
      }

      v42 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [v27 path];
        v44 = [*(a1 + 48) itemExistsAtURL:v27];
        *buf = 136315650;
        v61 = "[IXSPlaceholder _materialize]_block_invoke";
        if (v44)
        {
          v45 = 89;
        }

        else
        {
          v45 = 78;
        }

        v62 = 2112;
        v63 = v43;
        v64 = 1024;
        LODWORD(v65) = v45;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%s: %@ exists: %c", buf, 0x1Cu);
      }

      v46 = *(*(a1 + 88) + 8);
      v47 = v31;
      v33 = *(v46 + 40);
      *(v46 + 40) = v47;
    }

    goto LABEL_30;
  }

  if (v3 != 3)
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10009BA2C(v3, v8, v9, v10, v11, v12, v13, v14);
    }

    v16 = sub_1000405FC("[IXSPlaceholder _materialize]_block_invoke", 1562, @"IXErrorDomain", 0x14uLL, 0, 0, @"Placeholder type of %lu in list of app extension placeholders is not supported", v15, v3);
    v17 = *(*(a1 + 88) + 8);
    v7 = *(v17 + 40);
    *(v17 + 40) = v16;
    goto LABEL_30;
  }

  v4 = a1 + 72;
  v5 = *(*(*(a1 + 72) + 8) + 40);
  if (v5)
  {
    goto LABEL_6;
  }

  v6 = @"Extensions";
LABEL_11:
  v18 = [*(a1 + 40) URLByAppendingPathComponent:v6 isDirectory:1];
  v19 = *(*v4 + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v7 = *(*(*v4 + 8) + 40);
  v21 = *(a1 + 48);
  v59 = 0;
  v22 = [v21 createDirectoryAtURL:v7 withIntermediateDirectories:0 mode:493 error:&v59];
  v23 = v59;
  v24 = v23;
  if (v22)
  {

    goto LABEL_13;
  }

  v48 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v61 = "[IXSPlaceholder _materialize]_block_invoke";
    v62 = 2112;
    v63 = v7;
    v64 = 2112;
    v65 = v24;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s: Failed to create directory at %@ : %@", buf, 0x20u);
  }

  v49 = *(*(a1 + 88) + 8);
  v50 = *(v49 + 40);
  *(v49 + 40) = v24;

LABEL_30:
}

void sub_100026B90(uint64_t a1)
{
  if (([*(a1 + 32) sentDidBegin] & 1) == 0)
  {
    [*(a1 + 32) setSentDidBegin:1];
    v2 = [*(a1 + 32) delegate];
    if (v2)
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [*(a1 + 32) delegateDeliveryQueue];
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 3221225472;
        v6[2] = sub_100026C7C;
        v6[3] = &unk_100100ED8;
        v4 = v2;
        v5 = *(a1 + 32);
        v7 = v4;
        v8 = v5;
        sub_100071134(v3, v6);
      }
    }
  }
}

void sub_100026DD0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [*(a1 + 32) delegateDeliveryQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100026EA4;
    v6[3] = &unk_100100ED8;
    v4 = v2;
    v5 = *(a1 + 32);
    v7 = v4;
    v8 = v5;
    sub_100071134(v3, v6);
  }
}

void sub_100026F50(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 32) percentComplete];
    v4 = v3;
    v5 = [*(a1 + 32) delegateDeliveryQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002703C;
    v8[3] = &unk_1001018D0;
    v6 = v2;
    v7 = *(a1 + 32);
    v9 = v6;
    v10 = v7;
    v11 = v4;
    sub_100071134(v5, v8);
  }
}

id sub_100027148(uint64_t a1)
{
  v2 = [*(a1 + 32) icon];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v14 = 136315394;
      v15 = "[IXSPlaceholder promise:didCancelForReason:client:]_block_invoke";
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %@: got icon promise cancelation; ignoring", &v14, 0x16u);
    }

    return [*(a1 + 32) setIcon:0];
  }

  else
  {
    v4 = [*(a1 + 32) iconResourcesPromise];
    v5 = *(a1 + 40);

    if (v4 == v5)
    {
      v12 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = 136315394;
        v15 = "[IXSPlaceholder promise:didCancelForReason:client:]_block_invoke";
        v16 = 2112;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: %@: got icon resources promise cancelation; ignoring", &v14, 0x16u);
      }

      return [*(a1 + 32) setIconResourcesPromise:0];
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);

      return [v6 cancelForReason:v7 client:v8 error:0];
    }
  }
}

id sub_100027ECC(uint64_t a1)
{
  result = [*(a1 + 32) isComplete];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100028034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002804C(uint64_t a1)
{
  v2 = [*(a1 + 32) metadata];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000283D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000283EC(uint64_t a1)
{
  v2 = [*(a1 + 32) sinfData];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10002850C(uint64_t a1)
{
  v2 = [*(a1 + 32) attributes];

  if (v2)
  {
    v3 = [*(a1 + 32) attributes];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  [v3 setLaunchProhibited:*(a1 + 40)];
  [*(a1 + 32) setAttributes:v4];
}

void sub_10002868C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000286A4(uint64_t a1)
{
  v2 = [*(a1 + 32) attributes];
  *(*(*(a1 + 40) + 8) + 24) = [v2 launchProhibited];
}

void sub_10002891C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100028934(uint64_t a1)
{
  v2 = [*(a1 + 32) attributes];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100028C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100028C94(uint64_t a1)
{
  v2 = [*(a1 + 32) icon];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_100028E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100028E20(uint64_t a1)
{
  v2 = [*(a1 + 32) icon];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accessQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100028EE4;
    v5[3] = &unk_100101268;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_sync(v4, v5);
  }
}

uint64_t sub_100028EE4(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSeed];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10002936C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100029384(uint64_t a1)
{
  v2 = [*(a1 + 32) iconResourcesPromise];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_100029554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100029578(uint64_t a1)
{
  v2 = [*(a1 + 32) iconResourcesPromise];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000296DC;
    block[3] = &unk_100101268;
    v13 = *(a1 + 40);
    v12 = v3;
    dispatch_sync(v4, block);
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [*(a1 + 32) infoPlistIconContentPromise];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 accessQueue];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100029728;
      v8[3] = &unk_100101268;
      v10 = *(a1 + 48);
      v9 = v6;
      dispatch_sync(v7, v8);
    }
  }
}

uint64_t sub_1000296DC(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSeed];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100029728(uint64_t a1)
{
  v5 = [*(a1 + 32) dictionary];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100029AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100029ACC(uint64_t a1)
{
  v2 = [*(a1 + 32) localizationDictionary];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100029E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100029E2C(uint64_t a1)
{
  v2 = [*(a1 + 32) entitlements];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_100029FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100029FB8(uint64_t a1)
{
  v2 = [*(a1 + 32) entitlements];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accessQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10002A07C;
    v5[3] = &unk_100101268;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_sync(v4, v5);
  }
}

uint64_t sub_10002A07C(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSeed];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10002A3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002A3DC(uint64_t a1)
{
  v2 = [*(a1 + 32) infoPlistLoctable];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_10002A550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002A568(uint64_t a1)
{
  v2 = [*(a1 + 32) infoPlistLoctable];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accessQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10002A62C;
    v5[3] = &unk_100101268;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_sync(v4, v5);
  }
}

uint64_t sub_10002A62C(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSeed];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10002B014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002B02C(uint64_t a1)
{
  v2 = [*(a1 + 32) appExtensionPlaceholders];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_10002B1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002B1B8(uint64_t a1)
{
  v2 = [*(a1 + 32) appExtensionPlaceholders];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) appExtensionPlaceholders];
    v5 = [v4 count];

    if (v5)
    {
      v6 = objc_opt_new();
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = [*(a1 + 32) appExtensionPlaceholders];
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            v15 = [v14 accessQueue];
            v17[0] = _NSConcreteStackBlock;
            v17[1] = 3221225472;
            v17[2] = sub_10002B380;
            v17[3] = &unk_100101268;
            v16 = *(a1 + 40);
            v17[4] = v14;
            v17[5] = v16;
            dispatch_sync(v15, v17);
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v11);
      }
    }
  }
}

void sub_10002B380(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2 = [*(a1 + 32) clientSeed];
  [v1 addObject:v2];
}

id sub_10002B4B4(uint64_t a1)
{
  result = [*(a1 + 32) totalBytesNeededOnDisk];
  **(a1 + 40) += result;
  return result;
}

uint64_t sub_10002B4EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = v3;
  *(a3 + 12) = 2112;
  *(a3 + 14) = result;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
  *(a3 + 32) = 2112;
  *(a3 + 34) = 0;
  return result;
}

uint64_t sub_10002B544(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = v3;
  *(a3 + 12) = 2112;
  *(a3 + 14) = result;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
  return result;
}

void sub_10002B584(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_10002B5A0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x2Au);
}

void sub_10002B5CC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x2Au);
}

void sub_10002B6CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 stagingBaseDir];
  v2 = [v3 URLByAppendingPathComponent:@"extract" isDirectory:1];
  [v1 _internal_setStagedPath:v2];
}

void sub_10002B930(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) seed];
  [v3 setArchiveBytesConsumed:v2];

  v4 = [*(a1 + 32) seed];
  v5 = [v4 archiveSizeBytes];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) seed];
    [*(a1 + 32) setPercentComplete:{v6 / objc_msgSend(v7, "archiveSizeBytes")}];
  }
}

uint64_t sub_10002BA9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100121D08 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_10002C0E8(id a1, NSNumber *a2, NSSet *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = IXStringForClientID([(NSNumber *)v5 unsignedIntegerValue]);
    v9 = 136315650;
    v10 = "[IXSAppInstallObserverManager init]_block_invoke";
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Client ID %@ has interested services: %@", &v9, 0x20u);
  }
}

void sub_10002C1EC(id a1, NSString *a2, NSNumber *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_10002C2F0([(NSNumber *)v6 unsignedIntegerValue]);
    v9 = 136315650;
    v10 = "[IXSAppInstallObserverManager init]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Service name %@ implements selectors %@", &v9, 0x20u);
  }
}

id sub_10002C2F0(uint64_t a1)
{
  v2 = [NSMutableString stringWithString:@"["];
  v3 = v2;
  if (a1)
  {
    if ([v2 length] <= 1)
    {
      v7 = @"%s";
    }

    else
    {
      v7 = @" %s";
    }

    [v3 appendFormat:v7, "Prioritize"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  if ([v3 length] <= 1)
  {
    v8 = @"%s";
  }

  else
  {
    v8 = @" %s";
  }

  [v3 appendFormat:v8, "Resume"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_30:
  if ([v3 length] <= 1)
  {
    v9 = @"%s";
  }

  else
  {
    v9 = @" %s";
  }

  [v3 appendFormat:v9, "Pause"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_34:
  if ([v3 length] <= 1)
  {
    v10 = @"%s";
  }

  else
  {
    v10 = @" %s";
  }

  [v3 appendFormat:v10, "PromiseBegin"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_38:
  if ([v3 length] <= 1)
  {
    v11 = @"%s";
  }

  else
  {
    v11 = @" %s";
  }

  [v3 appendFormat:v11, "InstallPlaceholder"];
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_42:
  if ([v3 length] <= 1)
  {
    v12 = @"%s";
  }

  else
  {
    v12 = @" %s";
  }

  [v3 appendFormat:v12, "Complete"];
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_46:
  if ([v3 length] <= 1)
  {
    v13 = @"%s";
  }

  else
  {
    v13 = @" %s";
  }

  [v3 appendFormat:v13, "Cancel"];
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_50:
  if ([v3 length] <= 1)
  {
    v14 = @"%s";
  }

  else
  {
    v14 = @" %s";
  }

  [v3 appendFormat:v14, "PrioritizeBundleID"];
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_54:
  if ([v3 length] <= 1)
  {
    v15 = @"%s";
  }

  else
  {
    v15 = @" %s";
  }

  [v3 appendFormat:v15, "BeginRestoringUserData"];
  if ((a1 & 0x800) == 0)
  {
LABEL_11:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

LABEL_58:
  if ([v3 length] <= 1)
  {
    v16 = @"%s";
  }

  else
  {
    v16 = @" %s";
  }

  [v3 appendFormat:v16, "InstallPlaceholderForRecord"];
  if ((a1 & 0x1000) == 0)
  {
LABEL_12:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_66;
  }

LABEL_62:
  if ([v3 length] <= 1)
  {
    v17 = @"%s";
  }

  else
  {
    v17 = @" %s";
  }

  [v3 appendFormat:v17, "CompleteForRecord"];
  if ((a1 & 0x2000) == 0)
  {
LABEL_13:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

LABEL_70:
    if ([v3 length] <= 1)
    {
      v19 = @"%s";
    }

    else
    {
      v19 = @" %s";
    }

    [v3 appendFormat:v19, "ShouldBeginPostProcessing"];
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

LABEL_66:
  if ([v3 length] <= 1)
  {
    v18 = @"%s";
  }

  else
  {
    v18 = @" %s";
  }

  [v3 appendFormat:v18, "PrioritizeAppWithIdentity"];
  if ((a1 & 0x4000) != 0)
  {
    goto LABEL_70;
  }

LABEL_14:
  if ((a1 & 0x8000) != 0)
  {
LABEL_15:
    if ([v3 length] <= 1)
    {
      v4 = @"%s";
    }

    else
    {
      v4 = @" %s";
    }

    [v3 appendFormat:v4, "MayUninstallAppWithIdentity"];
  }

LABEL_19:
  [v3 appendFormat:@" (%lu)]", a1];
  v5 = [v3 copy];

  return v5;
}

void sub_10002C7B8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v2 = objc_begin_catch(exception_object);
      v3 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10009C524();
      }

      objc_end_catch();
      JUMPOUT(0x10002C784);
    }

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10002C93C(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [*(a1 + 40) clientToObserverServiceNameMap];
        v10 = [v9 objectForKeyedSubscript:v8];

        if (([v10 containsObject:*(a1 + 48)] & 1) == 0)
        {
          v11 = [v10 mutableCopy];
          if (!v11)
          {
            v11 = objc_opt_new();
          }

          [v11 addObject:*(a1 + 48)];
          v12 = [v11 copy];

          v13 = [*(a1 + 40) clientToObserverServiceNameMap];
          [v13 setObject:v12 forKeyedSubscript:v8];

          v5 = 1;
          v10 = v12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v14 = [*(a1 + 40) serviceRespondsToMap];
  v15 = [v14 objectForKeyedSubscript:*(a1 + 48)];

  v16 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  if (v15 && ([v15 isEqualToNumber:v16] & 1) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = [*(a1 + 40) serviceRespondsToMap];
    [v17 setObject:v16 forKeyedSubscript:*(a1 + 48)];
  }

  [*(a1 + 40) _saveMapping];
LABEL_20:
}

void sub_10002CC50(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = [*(a1 + 40) clientToObserverEndpointMap];
        v8 = [v7 objectForKeyedSubscript:v6];

        v9 = [v8 mutableCopy];
        if (!v9)
        {
          v9 = objc_opt_new();
        }

        [v9 addObject:*(a1 + 48)];
        v10 = [v9 copy];

        v11 = [*(a1 + 40) clientToObserverEndpointMap];
        [v11 setObject:v10 forKeyedSubscript:v6];

        v12 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
        v13 = [*(a1 + 40) listenerRespondsToMap];
        v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) hash]);
        [v13 setObject:v12 forKeyedSubscript:v14];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }
}

void sub_10002CEF0(uint64_t a1)
{
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[IXSAppInstallObserverManager registerClientConnection:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: Adding client %@", &v5, 0x16u);
  }

  v4 = [*(a1 + 40) clientConnections];
  [v4 addObject:*(a1 + 32)];
}

void sub_10002D088(uint64_t a1)
{
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[IXSAppInstallObserverManager unregisterClientConnection:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: Removing client %@", &v5, 0x16u);
  }

  v4 = [*(a1 + 40) clientConnections];
  [v4 removeObject:*(a1 + 32)];
}

void sub_10002D420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_10002D460(uint64_t a1)
{
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[IXSAppInstallObserverManager _onQueue_connectionForServiceName:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: Connection interrupted to %@", &v5, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void sub_10002D53C(uint64_t a1)
{
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v10 = "[IXSAppInstallObserverManager _onQueue_connectionForServiceName:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: Connection invalidated to %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained internalQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002D69C;
    v7[3] = &unk_100100ED8;
    v7[4] = v5;
    v8 = *(a1 + 32);
    dispatch_async(v6, v7);
  }
}

void sub_10002D69C(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceToConnectionMap];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_10002DA20(uint64_t a1)
{
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[IXSAppInstallObserverManager _onQueue_connectionForObserverEndpoint:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: Connection interrupted to %@", &v4, 0x16u);
  }
}

void sub_10002DAE8(uint64_t a1)
{
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10009C5A8(a1, v2);
  }
}

void sub_10002DF8C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10009C638();
  }
}

void sub_10002E334(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10009C6E4();
  }
}

void sub_10002E460(uint64_t a1)
{
  v2 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [*(a1 + 32) clientToObserverServiceNameMap];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) _onQueue_messageMachServices:*(*(&v20 + 1) + 8 * v8) forMethod:*(a1 + 48) callMethodOnProxy:*(a1 + 40) exceptServices:v2];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v9 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [*(a1 + 32) clientToObserverEndpointMap];
  v11 = [v10 allValues];

  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(a1 + 32) _onQueue_messageXPCListenerEndpoints:*(*(&v16 + 1) + 8 * v15) forMethod:*(a1 + 48) callMethodOnProxy:*(a1 + 40) exceptEndpoints:v9];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

void sub_10002E734(uint64_t a1)
{
  v2 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        v9 = [*(a1 + 40) clientToObserverServiceNameMap];
        v10 = [v9 objectForKeyedSubscript:v8];

        [*(a1 + 40) _onQueue_messageMachServices:v10 forMethod:*(a1 + 56) callMethodOnProxy:*(a1 + 48) exceptServices:v2];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v11 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = *(a1 + 32);
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        v18 = [*(a1 + 40) clientToObserverEndpointMap];
        v19 = [v18 objectForKeyedSubscript:v17];

        [*(a1 + 40) _onQueue_messageXPCListenerEndpoints:v19 forMethod:*(a1 + 56) callMethodOnProxy:*(a1 + 48) exceptEndpoints:v11];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }
}

void sub_10002EA08(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) clientConnections];
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

        v7 = *(*(&v8 + 1) + 8 * v6);
        (*(*(a1 + 40) + 16))();
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_10002EC98(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 seed];
  [v3 _client_coordinatorShouldPrioritizeWithSeed:v4];
}

void sub_10002EE20(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 bundleID];
  [v3 _client_shouldPrioritizeAppWithBundleID:v4];
}

void sub_10002F0C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 seed];
  [v3 _client_coordinatorShouldResumeWithSeed:v4];
}

void sub_10002F2C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 seed];
  [v3 _client_coordinatorShouldPauseWithSeed:v4];
}

void sub_10002F4C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 seed];
  [v4 _client_coordinatorWithSeed:v5 configuredPromiseDidBeginFulfillment:*(a1 + 40)];
}

void sub_10002F6B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 seed];
  [v3 _client_coordinatorShouldBeginRestoringUserDataWithSeed:v4];
}

void sub_10002F8EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 seed];
  [v4 _client_coordinatorDidInstallPlaceholderWithSeed:v5 forRecordPromise:*(a1 + 40)];
}

void sub_10002FB28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 seed];
  [v4 _client_coordinatorShouldBeginPostProcessingWithSeed:v5 forRecordPromise:*(a1 + 40)];
}

void sub_10002FD74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 seed];
  [v4 _client_coordinatorDidCompleteSuccessfullyWithSeed:v5 forRecordPromise:*(a1 + 40)];
}

void sub_10002FFD0(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 seed];
  [v4 _client_coordinatorWithSeed:v5 didCancelWithReason:a1[5] client:a1[6]];
}

void sub_10003038C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100030B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100030BB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100030BC8(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _onQueue_initWithSeedWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if ((v4 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_100031C50(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) path];
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = [v5 seed];
  v7 = [v6 stagingBaseDir];
  v8 = [v7 path];
  v9 = [v3 hasPrefix:v8];

  if (v9)
  {
    v10 = *v2;
    v11 = *v4;

    [v11 setStagedPath:v10];
  }

  else
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10009CADC(v2, v4, v12);
    }

    v13 = [*v2 path];
    v14 = [*v4 seed];
    v15 = [v14 stagingBaseDir];
    v18 = [v15 path];
    v17 = sub_1000405FC("[IXSOwnedDataPromise(IXSOwnedDataPromiseIPCMethods) _remote_setStagedPath:]_block_invoke", 401, @"IXErrorDomain", 1uLL, 0, 0, @"Attempt to set the stagedPath to %@ which does not start with the staged item prefix %@", v16, v13);

    [*v4 cancelForReason:v17 client:15 error:0];
  }
}

void sub_100031F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100031F80(uint64_t a1)
{
  v2 = [*(a1 + 32) stagedPath];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100032290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000322A8(uint64_t a1)
{
  v2 = [*(a1 + 32) targetLastPathComponent];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id IXStringForClientID(unint64_t a1)
{
  if (a1 < 0x1F && ((0x5FFFFFFFu >> a1) & 1) != 0)
  {
    v2 = *(&off_100101C90 + a1);
  }

  else
  {
    v2 = [NSString stringWithFormat:@"Unknown IXClientIdentifier: %lu", a1];
  }

  return v2;
}

id sub_100032CFC()
{
  if (qword_100121D20 != -1)
  {
    sub_10009D030();
  }

  v1 = qword_100121D18;

  return v1;
}

void sub_100032D40(id a1)
{
  v1 = +[IXGlobalConfiguration sharedInstance];
  v2 = [v1 frameworkURL];

  v3 = [NSBundle bundleWithURL:v2];
  v4 = qword_100121D18;
  qword_100121D18 = v3;

  if (!qword_100121D18)
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10009D044();
    }
  }
}

const __CFString *sub_100032DE8(uint64_t a1)
{
  if ((a1 - 1) > 0x11)
  {
    return @"kIXUserPresentableUnknownError";
  }

  else
  {
    return *(&off_100101E78 + a1 - 1);
  }
}

void IXPresentErrorHighlightingLocalizedAppName(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032F58;
  block[3] = &unk_100101DF0;
  v27 = [v13 count];
  v28 = a4;
  v22 = v11;
  v23 = v15;
  v25 = v13;
  v26 = v14;
  v24 = v12;
  v16 = v13;
  v17 = v12;
  v18 = v14;
  v19 = v15;
  v20 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100032F58(uint64_t a1)
{
  v2 = sub_100032CFC();
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"DismissOnLock"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SBUserNotificationAllowMenuButtonDismissal"];
  v4 = sub_100033520(*(a1 + 32), *(a1 + 72), *(a1 + 80));
  [v3 setObject:v4 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

  v5 = *(a1 + 80);
  if (v5 == 16)
  {
    sub_100033608(*(a1 + 40), *(a1 + 32), *(a1 + 72));
  }

  else
  {
    sub_10003375C(*(a1 + 32), *(a1 + 72), v5);
  }
  v6 = ;
  [v3 setObject:v6 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

  v7 = *(a1 + 80);
  if (v7 - 4 < 6)
  {
LABEL_7:
    if (*(a1 + 72) == 1)
    {
      v8 = [v2 localizedStringForKey:@"BUTTON_TITLE_DELETE" value:&stru_100105BA0 table:@"IXUserPresentableErrors"];
      [v3 setObject:v8 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

      [v3 setObject:&off_10010DDC8 forKeyedSubscript:@"SBUserNotificationDefaultButtonPresentationStyle"];
      v9 = [v2 localizedStringForKey:@"BUTTON_TITLE_KEEP" value:&stru_100105BA0 table:@"IXUserPresentableErrors"];
      [v3 setObject:v9 forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000339A4;
      v27[3] = &unk_1001013A0;
      v28 = *(a1 + 64);
      v10 = objc_retainBlock(v27);
      v11 = v28;
LABEL_9:

      goto LABEL_17;
    }

LABEL_16:
    v16 = [v2 localizedStringForKey:@"BUTTON_TITLE_OK" value:&stru_100105BA0 table:@"IXUserPresentableErrors"];
    [v3 setObject:v16 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

    v10 = 0;
    goto LABEL_17;
  }

  if (v7 > 0x12)
  {
LABEL_13:
    if (v7 == 10 && *(a1 + 72) == 1)
    {
      v14 = [v2 localizedStringForKey:@"BUTTON_TITLE_VIEW_IN_APP_STORE" value:&stru_100105BA0 table:@"IXUserPresentableErrors"];
      [v3 setObject:v14 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

      v15 = [v2 localizedStringForKey:@"BUTTON_TITLE_OK" value:&stru_100105BA0 table:@"IXUserPresentableErrors"];
      [v3 setObject:v15 forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000339BC;
      v23[3] = &unk_1001018D0;
      v26 = *(a1 + 72);
      v24 = *(a1 + 48);
      v25 = *(a1 + 56);
      v10 = objc_retainBlock(v23);

      v11 = v24;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (((1 << v7) & 0x6A000) != 0)
  {
    goto LABEL_7;
  }

  if (v7 != 11)
  {
    if (v7 == 16)
    {
      v12 = [v2 localizedStringForKey:@"BUTTON_TITLE_SETTINGS" value:&stru_100105BA0 table:@"IXUserPresentableErrors"];
      [v3 setObject:v12 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

      v13 = [v2 localizedStringForKey:@"BUTTON_TITLE_OK" value:&stru_100105BA0 table:@"IXUserPresentableErrors"];
      [v3 setObject:v13 forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];

      v10 = &stru_100101DC8;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v21 = [v2 localizedStringForKey:@"BUTTON_TITLE_SETTINGS" value:&stru_100105BA0 table:@"IXUserPresentableErrors"];
  [v3 setObject:v21 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

  v22 = [v2 localizedStringForKey:@"BUTTON_TITLE_OK" value:&stru_100105BA0 table:@"IXUserPresentableErrors"];
  [v3 setObject:v22 forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];

  v10 = &stru_100101DA8;
LABEL_17:
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 56) objectAtIndexedSubscript:0];
  }

  else
  {
    [NSString stringWithFormat:@"<%lu bundleIDs>", *(a1 + 72)];
  }
  v17 = ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033E64;
  block[3] = &unk_100101E18;
  v30 = v3;
  v31 = v17;
  v32 = v10;
  v33 = 0;
  v18 = v10;
  v19 = v3;
  v20 = v17;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100033520(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = sub_100032DE8(a3);
  v7 = v6;
  if (a2 >= 2)
  {
    v8 = @"_TITLE_MULTIPLE";
  }

  else
  {
    v8 = @"_TITLE";
  }

  v9 = [v6 stringByAppendingString:v8];
  v10 = sub_100032CFC();
  v11 = [v10 localizedStringForKey:v9 value:&stru_100105BA0 table:@"IXUserPresentableErrors"];

  v12 = [NSString stringWithFormat:v11, v5];

  return v12;
}

id sub_100033608(void *a1, void *a2, unint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = [v5 userInfo];
    v8 = [v7 objectForKeyedSubscript:MIRequiredOSVersionErrorKey];

    v9 = [v5 userInfo];
    v10 = [v9 objectForKeyedSubscript:MIRequiredOSErrorKey];

    v11 = @"kIXUserPresentableDeviceOSVersionTooLowError";
    if (v10)
    {
      if ([v10 unsignedIntegerValue] != 1 && a3 < 2)
      {
        v11 = @"kIXUserPresentableDeviceOSVersionTooLowDiffPlatformError";
      }
    }
  }

  else
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10009D0C4();
    }

    v8 = 0;
    v11 = @"kIXUserPresentableDeviceOSVersionTooLowError";
  }

  v14 = sub_100033D58(v11, v8, v6, a3);

  return v14;
}

id sub_10003375C(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = sub_100032DE8(a3);
  v7 = sub_100033D58(v6, v5, v5, a2);

  return v7;
}

void sub_1000337D4(id a1)
{
  v1 = [NSURL URLWithString:@"prefs:root=General&path=STORAGE_MGMT"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v6 = 0;
  v3 = [v2 openSensitiveURL:v1 withOptions:0 error:&v6];
  v4 = v6;

  if ((v3 & 1) == 0)
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10009D154();
    }
  }
}

void sub_10003389C(id a1)
{
  v1 = [NSURL URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [v2 openSensitiveURL:v1 withOptions:0];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "IXPresentErrorHighlightingLocalizedAppName_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to open software update Settings", &v5, 0xCu);
    }
  }
}

uint64_t sub_1000339A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000339BC(uint64_t a1)
{
  if (*(a1 + 48) == 1 && (v2 = *(a1 + 32)) != 0 && ([v2 iTunesMetadata], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "storeItemIdentifier"), v3, v4))
  {
    v5 = objc_alloc_init(NSURLComponents);
    v6 = [[NSURLQueryItem alloc] initWithName:@"action" value:@"lookup"];
    v7 = [NSURLQueryItem alloc];
    v8 = [NSString stringWithFormat:@"%llu", v4];
    v9 = [v7 initWithName:@"ids" value:v8];

    [v5 setScheme:@"itms-apps"];
    [v5 setHost:&stru_100105BA0];
    v15[0] = v6;
    v15[1] = v9;
    v10 = [NSArray arrayWithObjects:v15 count:2];
    [v5 setQueryItems:v10];

    v11 = [v5 URL];

    v12 = +[LSApplicationWorkspace defaultWorkspace];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100033C5C;
    v13[3] = &unk_100101498;
    v14 = *(a1 + 40);
    [v12 openURL:v11 configuration:0 completionHandler:v13];
  }

  else
  {

    sub_100033C00();
  }
}

void sub_100033C00()
{
  v0 = +[LSApplicationWorkspace defaultWorkspace];
  [v0 openApplicationWithBundleIdentifier:@"com.apple.AppStore" configuration:0 completionHandler:&stru_100101E58];
}

void sub_100033C5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:0];
      v7 = 136315650;
      v8 = "IXPresentErrorHighlightingLocalizedAppName_block_invoke_3";
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to open app with bundle ID %@ in the App Store. Error: %@", &v7, 0x20u);
    }
  }
}

id sub_100033D58(void *a1, void *a2, void *a3, unint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (a4 >= 2)
  {
    v10 = @"_BODY_MULTIPLE";
  }

  else
  {
    v10 = @"_BODY";
  }

  v11 = [v7 stringByAppendingString:v10];
  v12 = sub_100032CFC();
  v13 = [v12 localizedStringForKey:v11 value:&stru_100105BA0 table:@"IXUserPresentableErrors"];

  if (a4 > 1)
  {
    [NSString localizedStringWithFormat:v13, v9, a4 - 1];
  }

  else
  {
    [NSString localizedStringWithFormat:v13, v8, v16];
  }
  v14 = ;

  return v14;
}

void sub_100033E64(uint64_t a1)
{
  error = 0;
  v2 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 2uLL, &error, *(a1 + 32));
  if (v2)
  {
    v3 = v2;
    v13 = 0;
    if (CFUserNotificationReceiveResponse(v2, 0.0, &v13))
    {
      v4 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        *buf = 136315650;
        v16 = "_ShowUserNotice_block_invoke";
        v17 = 2112;
        v18 = v5;
        v19 = 1024;
        v20 = error;
        v6 = "%s: Failed to recieve notification response for error presentation alert for app with bundle ID %@, error code %d";
        v7 = v4;
        v8 = 28;
LABEL_5:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }

    else
    {
      if (v13 != 2)
      {
        if (v13 == 1)
        {
          v11 = *(a1 + 56);
          if (!v11)
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (v13)
          {
            goto LABEL_7;
          }

          v11 = *(a1 + 48);
          if (!v11)
          {
            goto LABEL_7;
          }
        }

        (*(v11 + 16))();
        goto LABEL_7;
      }

      v4 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        *buf = 136315394;
        v16 = "_ShowUserNotice_block_invoke";
        v17 = 2112;
        v18 = v12;
        v6 = "%s: Received an invalid response (kCFUserNotificationOtherResponse) from the error presentation alert for app with bundleID %@";
        v7 = v4;
        v8 = 22;
        goto LABEL_5;
      }
    }

LABEL_7:
    CFRelease(v3);
    return;
  }

  v9 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    *buf = 136315650;
    v16 = "_ShowUserNotice_block_invoke";
    v17 = 2112;
    v18 = v10;
    v19 = 1024;
    v20 = error;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to create error presentation alert for app with bundle ID %@, error code %d", buf, 0x1Cu);
  }
}

void sub_1000340C0(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (v4 && !a2)
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "_LaunchAppStore_block_invoke";
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to open App Store : %@", &v6, 0x16u);
    }
  }
}

void sub_100034D74(id a1)
{
  if (dlopen("/System/Library/PrivateFrameworks/HeadBoardModel.framework/HeadBoardModel", 1))
  {
    qword_100121D38 = NSClassFromString(@"HBMCloudSyncUtility");
  }

  else
  {
    v1 = dlerror();
    qword_100121D30 = sub_1000405FC("+[IXSAppUninstallAlert _loadHBMCloudSyncUtilityClass]_block_invoke", 111, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to dlopen HeadBoardModel: %s", v2, v1);

    _objc_release_x1();
  }
}

uint64_t sub_100035E98(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  return (*(v2 + 16))(v2, v3, 0);
}

void sub_100036010(id a1)
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.installcoordinationd"];
  v1 = objc_opt_new();
  v2 = qword_100121D40;
  qword_100121D40 = v1;

  [v3 setDelegate:qword_100121D40];
  [v3 resume];
}

void sub_1000363F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100036424(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[IXSClientConnectionManager listener:shouldAcceptNewConnection:]_block_invoke_2";
      v14 = 2112;
      v15 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Connection invalidated: %@", buf, 0x16u);
    }

    v4 = [*(a1 + 32) allConnectionsQueue];
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_10003658C;
    v9 = &unk_100100ED8;
    v10 = *(a1 + 32);
    v5 = WeakRetained;
    v11 = v5;
    dispatch_sync(v4, &v6);

    [v5 connectionInvalidated];
  }
}

void sub_10003658C(uint64_t a1)
{
  v2 = [*(a1 + 32) allConnections];
  [v2 removeObject:*(a1 + 40)];
}

void sub_1000365E0(uint64_t a1)
{
  v2 = [*(a1 + 32) allConnections];
  [v2 addObject:*(a1 + 40)];
}

void sub_1000368E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100036900(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100036918(uint64_t a1)
{
  v2 = [*(a1 + 32) stagingBaseDir];
  v3 = [v2 URLByAppendingPathComponent:@"Dictionary.plist" isDirectory:0];

  v4 = a1 + 48;
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v5 IX_writeToURL:v3 format:200 options:268435457 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    [*(a1 + 32) _internal_setStagedPath:v3];
    [*(a1 + 32) setComplete:1];
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10009D2A8(v3, v4, v8);
    }

    v9 = *(*(*v4 + 8) + 40);
    v10 = [v3 path];
    v12 = sub_1000405FC("[IXSPromisedInMemoryDictionary initWithSeed:dictionary:error:]_block_invoke", 59, @"IXErrorDomain", 1uLL, v9, 0, @"Could not write dictionary promise dictionary to disk at %@", v11, v10);

    v13 = *(*v4 + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

id sub_100036BE4()
{
  if (qword_100121D50)
  {
    v0 = qword_100121D50;
  }

  else
  {
    v1 = +[IXGlobalConfiguration sharedInstance];
    v6 = 0;
    v2 = [v1 removabilityDirectoryWithError:&v6];
    v3 = v6;

    if (v2)
    {
      v0 = [v2 URLByAppendingPathComponent:@"RemovabilityMetadataWithMultipleSources.plist" isDirectory:0];
    }

    else
    {
      v4 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10009D374();
      }

      v0 = 0;
    }
  }

  return v0;
}

id sub_100036CDC()
{
  if (qword_100121D58)
  {
    v0 = qword_100121D58;
  }

  else
  {
    v1 = +[IXGlobalConfiguration sharedInstance];
    v6 = 0;
    v2 = [v1 removabilityDirectoryWithError:&v6];
    v3 = v6;

    if (v2)
    {
      v0 = [v2 URLByAppendingPathComponent:@"ClockedRemovabilityMetadata.plist" isDirectory:0];
    }

    else
    {
      v4 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10009D3E8();
      }

      v0 = 0;
    }
  }

  return v0;
}

id sub_100036DD4()
{
  if (qword_100121D68)
  {
    v0 = qword_100121D68;
  }

  else
  {
    v1 = +[IXGlobalConfiguration sharedInstance];
    v6 = 0;
    v2 = [v1 removabilityDirectoryWithError:&v6];
    v3 = v6;

    if (v2)
    {
      v0 = [v2 URLByAppendingPathComponent:@"RemovabilityMetadata.plist" isDirectory:0];
    }

    else
    {
      v4 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10009D45C();
      }

      v0 = 0;
    }
  }

  return v0;
}

id sub_100036ECC()
{
  if (qword_100121D60)
  {
    v0 = qword_100121D60;
  }

  else
  {
    v1 = +[IXGlobalConfiguration sharedInstance];
    v6 = 0;
    v2 = [v1 dataDirectoryWithError:&v6];
    v3 = v6;

    if (v2)
    {
      v0 = [v2 URLByAppendingPathComponent:@"removability.plist" isDirectory:0];
    }

    else
    {
      v4 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10009D4D0();
      }

      v0 = 0;
    }
  }

  return v0;
}

id sub_100037004(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000371F0;
  v15[3] = &unk_100101FE0;
  v5 = objc_opt_new();
  v16 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v15];

  v17[0] = @"RemovabilityEntries";
  v6 = [v5 copy];
  v17[1] = @"RemovabilityChangeClock";
  v18[0] = v6;
  v7 = [v3 dictionaryRepresentation];

  v18[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

  v14 = 0;
  v9 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:&v14];
  v10 = v14;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10009D544();
    }
  }

  return v9;
}

void sub_1000371F0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [a3 propertyListRepresentation];
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v10 canonicalSerializationForPlistKey];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  *a4 = 0;
}

id sub_100037288(void *a1)
{
  v1 = a1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000373CC;
  v9[3] = &unk_100101FE0;
  v2 = objc_opt_new();
  v10 = v2;
  [v1 enumerateKeysAndObjectsUsingBlock:v9];

  v8 = 0;
  v3 = [NSPropertyListSerialization dataWithPropertyList:v2 format:200 options:0 error:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10009D5B8();
    }
  }

  return v3;
}

void sub_1000373CC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [a3 mostRestrictiveRemovabilityMetadata];
  v8 = [v7 dictionaryRepresentation];
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [v13 canonicalSerializationForPlistKey];
    [v11 setObject:v10 forKeyedSubscript:v12];
  }

  *a4 = 0;
}

id sub_1000374B8(void *a1)
{
  v1 = a1;
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

NSObject *sub_100037514(NSObject **a1, BOOL *a2)
{
  v4 = 3;
  v5 = sub_100037878(3);
  if (v5 || (v4 = 2, sub_100037878(2), (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (v4 = 1, sub_100037878(1), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    v6 = sub_100037878(0);
    if (!v6)
    {
      v11 = 0;
      v4 = 0;
      goto LABEL_20;
    }

    v4 = 0;
  }

  v24 = 0;
  v7 = [NSPropertyListSerialization propertyListWithData:v6 options:0 format:0 error:&v24];
  v8 = v24;
  if (!v7)
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10009D6A0();
    }

    v11 = 0;
    goto LABEL_20;
  }

  objc_opt_class();
  v9 = v7;
  if (objc_opt_isKindOfClass())
  {
    if ((v4 - 2) >= 2)
    {
      v11 = +[IXDataStoreClock newClock];
      v12 = v9;
      v14 = objc_opt_new();
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      if (v4)
      {
        v15 = sub_100038B1C;
      }

      else
      {
        v15 = sub_100038CC8;
      }

      v25[2] = v15;
      v25[3] = &unk_100102030;
      v26 = v14;
      v16 = v14;
      [v12 enumerateKeysAndObjectsUsingBlock:v25];

      v10 = [v16 copy];
    }

    else
    {
      v22 = 0;
      v23 = 0;
      sub_100037904(v9, &v23, &v22, v4);
      v10 = v23;
      v11 = v22;
      v12 = v9;
    }
  }

  else
  {

    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10009D62C();
    }

    v11 = 0;
    v10 = 0;
  }

  if (!v10)
  {
LABEL_20:
    v10 = objc_opt_new();
    v17 = +[IXDataStoreClock newClock];

    v11 = v17;
  }

  if (a2)
  {
    v18 = v4 != 3 && [v10 count]!= 0;
    *a2 = v18;
  }

  if (a1)
  {
    v19 = v11;
    *a1 = v11;
  }

  v20 = v10;

  return v10;
}

id sub_100037878(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = sub_100036DD4();
  }

  else if (a1 == 2)
  {
    v1 = sub_100036CDC();
  }

  else
  {
    if (a1 == 3)
    {
      sub_100036BE4();
    }

    else
    {
      sub_100036ECC();
    }
    v1 = ;
  }

  v2 = v1;
  v3 = sub_100038570(v1, 1);

  return v3;
}

uint64_t sub_100037904(void *a1, NSObject **a2, NSObject **a3, uint64_t a4)
{
  v7 = a1;
  v8 = [v7 objectForKeyedSubscript:@"RemovabilityEntries"];
  if (v8)
  {
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = [v7 objectForKeyedSubscript:@"RemovabilityChangeClock"];
      if (v11)
      {
        objc_opt_class();
        v12 = v11;
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          v15 = sub_1000387E0(v9, a4);
          if (v15)
          {
            v16 = [IXDataStoreClock newClockWithDictionary:v12];
            v17 = v16;
            if (v16)
            {
              if (a3)
              {
                v18 = v16;
                *a3 = v17;
              }

              if (a2)
              {
                v19 = v15;
                *a2 = v15;
              }

              v14 = 1;
              goto LABEL_34;
            }

            v20 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_10009D714();
            }
          }

          else
          {
            v17 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_10009D788();
            }
          }

          v14 = 0;
LABEL_34:

          goto LABEL_35;
        }

        v15 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10009D7FC();
        }
      }

      else
      {
        v15 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10009D870();
        }
      }

      v14 = 0;
LABEL_35:

      goto LABEL_36;
    }

    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10009D8F8();
    }
  }

  else
  {
    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10009D96C();
    }
  }

  v14 = 0;
LABEL_36:

  return v14;
}

IXAppRemovabilityMetadata *sub_100037BC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 objectForKeyedSubscript:a2];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mostRestrictiveRemovabilityMetadata];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [[IXAppRemovabilityMetadata alloc] initWithRemovability:a3 client:a4];
    }

    v11 = v10;
  }

  else
  {
    v11 = [[IXAppRemovabilityMetadata alloc] initWithRemovability:a3 client:a4];
  }

  return v11;
}

id sub_100037C78(void *a1, uint64_t a2, id a3, uint64_t a4)
{
  v6 = [a1 objectForKeyedSubscript:a2];
  v7 = v6;
  if (v6)
  {
    a3 = [v6 removabilityForClient:a4 notFoundRemovability:a3];
  }

  return a3;
}

id sub_100037CD4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = sub_100037D4C(v7, a4);
  v9 = v8;
  if (v8)
  {
    v10 = sub_100037C78(v8, v7, a3, a2);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_100037D4C(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_100036BE4();
  v5 = sub_100038570(v4, 0);

  if (v5)
  {
    v29 = 0;
    v6 = [v3 resolvePersonaRespectingSandboxingWithError:&v29];
    v7 = v29;
    v8 = v7;
    if (v6)
    {
      v22 = a2;
      v23 = v3;
      v24 = v7;
      v9 = [v3 possibleSerializationsForPlistKey];
      v10 = objc_opt_new();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [NSString stringWithFormat:@"%@:%@", @"RemovabilityEntries", *(*(&v25 + 1) + 8 * i)];
            [v10 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v13);
      }

      v17 = [NSString stringWithFormat:@"%@:%@", @"RemovabilityChangeClock", @"sequenceNumber"];
      [v10 addObject:v17];

      v18 = [NSString stringWithFormat:@"%@:%@", @"RemovabilityChangeClock", @"guid"];
      [v10 addObject:v18];

      v19 = [v10 copy];
      _CFPropertyListCreateFiltered();

      v20 = sub_1000031B0(off_100121958);
      v3 = v23;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10009DA7C();
      }

      if (v22)
      {
        *v22 = 0;
      }

      v8 = 0;
    }

    else
    {
      v19 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_10009D9F4();
      }
    }
  }

  return 0;
}

IXAppRemovabilityMetadata *sub_100038338(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = sub_100037D4C(v7, a4);
  v9 = v8;
  if (v8)
  {
    v10 = sub_100037BC4(v8, v7, a2, a3);
  }

  else
  {
    v10 = [[IXAppRemovabilityMetadata alloc] initWithRemovability:0 client:0];
  }

  v11 = v10;

  return v11;
}

NSObject *sub_1000383D8(NSObject **a1)
{
  v2 = sub_100036BE4();
  v3 = sub_100038570(v2, 0);

  if (!v3)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v13 = 0;
  v4 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:&v13];
  v5 = v13;
  if (v4)
  {
    objc_opt_class();
    v6 = v4;
    if (objc_opt_isKindOfClass())
    {
      v12 = 0;
      v7 = sub_100037904(v6, &v12, a1, 3);
      v8 = v12;
      v9 = v8;
      v10 = 0;
      if (v7)
      {
        v10 = v8;
      }

      goto LABEL_13;
    }

    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10009DE08();
    }
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10009DE88();
    }
  }

  v10 = 0;
LABEL_13:

LABEL_14:

  return v10;
}

id sub_100038570(void *a1, int a2)
{
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    v19 = 0;
    v5 = [NSData dataWithContentsOfURL:v3 options:v4 error:&v19];
    v6 = v19;
    v7 = v6;
    if (v5)
    {
      goto LABEL_24;
    }

    v8 = [v6 domain];
    if ([v8 isEqualToString:NSCocoaErrorDomain] && -[NSObject code](v7, "code") == 257)
    {
      v9 = [v7 userInfo];
      v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];
      v11 = [v10 domain];
      if ([v11 isEqualToString:NSPOSIXErrorDomain])
      {
        v12 = [v7 userInfo];
        v13 = [v12 objectForKeyedSubscript:NSUnderlyingErrorKey];
        v18 = [v13 code];

        if (v18 == 1)
        {
          v14 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            sub_10009DFB0(v3, v14);
          }

LABEL_23:

          goto LABEL_24;
        }

LABEL_17:
        v15 = [v7 domain];
        if ([v15 isEqualToString:NSCocoaErrorDomain])
        {
          v16 = [v7 code];

          if (v16 == 260)
          {
            goto LABEL_24;
          }
        }

        else
        {
        }

        v14 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10009DEFC(v3, v7, v14);
        }

        goto LABEL_23;
      }
    }

    goto LABEL_17;
  }

  v7 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    sub_10009E050(v7);
  }

  v5 = 0;
LABEL_24:

  return v5;
}

id sub_1000387E0(void *a1, uint64_t a2)
{
  v3 = a1;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000388B4;
  v10 = &unk_100102008;
  v11 = objc_opt_new();
  v12 = a2;
  v4 = v11;
  [v3 enumerateKeysAndObjectsUsingBlock:&v7];

  v5 = [v4 copy];

  return v5;
}

void sub_1000388B4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  v9 = v7;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    objc_opt_class();
    v11 = v8;
    if (objc_opt_isKindOfClass())
    {
      if (v11)
      {
        v12 = [[IXApplicationIdentity alloc] initWithPlistKeySerialization:v9];
        if (v12)
        {
          v13 = *(a1 + 40);
          v14 = v11;
          v15 = v12;
          if (v13 == 2)
          {
            v17 = [[IXAppRemovabilityMetadata alloc] initWithMetadataDictionary:v14];
            v16 = [[IXAppRemovabilityMetadataList alloc] initWithInitialRemovabilityMetadata:v17];
          }

          else if (v13 == 3)
          {
            v16 = [[IXAppRemovabilityMetadataList alloc] initWithSerializedDictionary:v14];
          }

          else
          {
            v18 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_10009E0D4();
            }

            v16 = 0;
          }

          [*(a1 + 32) setObject:v16 forKeyedSubscript:v15];
        }

        else
        {
          v16 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
          {
            sub_10009E150();
          }
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10009E1C4();
    }
  }

  else
  {
    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10009E238();
    }
  }

LABEL_24:

  *a4 = 0;
}

void sub_100038B1C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  v9 = v7;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    objc_opt_class();
    v11 = v8;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_16:

      goto LABEL_17;
    }

    if (v11)
    {
      v12 = [[IXApplicationIdentity alloc] initWithPlistKeySerialization:v9];
      if (v12)
      {
        v13 = [[IXAppRemovabilityMetadata alloc] initWithMetadataDictionary:v11];
        v14 = [[IXAppRemovabilityMetadataList alloc] initWithInitialRemovabilityMetadata:v13];
        [*(a1 + 32) setObject:v14 forKeyedSubscript:v12];
      }

      else
      {
        v16 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10009E2B0();
        }
      }

      goto LABEL_16;
    }
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10009E324();
    }
  }

LABEL_17:
  *a4 = 0;
}

void sub_100038CC8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  v9 = v8;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  if (v9)
  {
    v10 = [v9 unsignedIntegerValue];
    v11 = [[IXApplicationIdentity alloc] initWithPlistKeySerialization:v7];
    if (v11)
    {
      v12 = [[IXAppRemovabilityMetadataList alloc] initWithInitialRemovability:v10 client:1];
      [*(a1 + 32) setObject:v12 forKeyedSubscript:v11];
    }

    else
    {
      v13 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10009E39C();
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  *a4 = 0;
}

__CFString *IXStringForPlaceholderType(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [NSString stringWithFormat:@"Unknown IXPlaceholderType value %lu", a1];
  }

  else
  {
    v2 = off_100102050[a1];
  }

  return v2;
}

__CFString *IXStringForAppRemovability(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [NSString stringWithFormat:@"Unknown IXAppRemovability value: %lu", a1];
  }

  else
  {
    v2 = off_100102070[a1];
  }

  return v2;
}

__CFString *IXStringForAppRemovabilityClient(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [NSString stringWithFormat:@"Unknown IXAppRemovabilityClient value: %lu", a1];
  }

  else
  {
    v2 = off_100102090[a1];
  }

  return v2;
}

__CFString *IXStringForIXError(void *a1, unint64_t a2)
{
  v3 = a1;
  if ([v3 isEqualToString:@"IXUserPresentableErrorDomain"])
  {
    v4 = @"Unknown error.";
    switch(a2)
    {
      case 0uLL:
        break;
      case 1uLL:
        v4 = @"Could not install at this time.";
        break;
      case 2uLL:
        v4 = @"Could not install.";
        break;
      case 3uLL:
        v4 = @"User canceled.";
        break;
      case 4uLL:
        v4 = @"Incompatible device architecture.";
        break;
      case 5uLL:
        v4 = @"Device lacks required capabilities.";
        break;
      case 6uLL:
        v4 = @"Incompatible platform.";
        break;
      case 7uLL:
        v4 = @"Needs reinstallation from MDM.";
        break;
      case 8uLL:
        v4 = @"Needs manual reinstallation.";
        break;
      case 9uLL:
        v4 = @"No longer available in App Store.";
        break;
      case 0xAuLL:
        v4 = @"Content is not owned by this user.";
        break;
      case 0xBuLL:
        v4 = @"Insufficient storage.";
        break;
      case 0xCuLL:
        v4 = @"User data for this app failed to restore from backup.";
        break;
      case 0xDuLL:
        v4 = @"Forbidden.";
        break;
      case 0xEuLL:
        v4 = @"Unable to verify integrity.";
        break;
      case 0xFuLL:
        v4 = @"SINF not for this platform.";
        break;
      case 0x10uLL:
        v4 = @"Device OS version is too low to run this app.";
        break;
      case 0x11uLL:
        v4 = @"Code signature version is no longer supported.";
        break;
      case 0x12uLL:
        v4 = @"Device is not eligible to install this app.";
        break;
      default:
        if (a2 != 54)
        {
          [NSString stringWithFormat:@"Unhandled reason for code: %lu in domain IXUserPresentableErrorDomain", a2, v6];
          goto LABEL_9;
        }

        v4 = @"Reached code meant only for testing.";
        break;
    }
  }

  else
  {
    if ([v3 isEqualToString:@"IXErrorDomain"])
    {
      if (a2 < 0x3E)
      {
        v4 = off_1001020F8[a2];
        goto LABEL_10;
      }

      [NSString stringWithFormat:@"Unhandled reason for code: %lu in domain IXErrorDomain", a2, v6];
    }

    else
    {
      [NSString stringWithFormat:@"Unhandled error domain %@, code %lu", v3, a2];
    }

    v4 = LABEL_9:;
  }

LABEL_10:

  return v4;
}