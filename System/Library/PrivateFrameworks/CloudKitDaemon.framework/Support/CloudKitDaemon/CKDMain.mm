@interface CKDMain
+ (id)sharedMain;
- (BOOL)systemAvailabilityChanged:(unint64_t)a3;
- (CKDMain)init;
- (void)_setupNotifydEventHandler;
- (void)_setupTCCEventHandler;
- (void)uploadContent;
@end

@implementation CKDMain

+ (id)sharedMain
{
  if (qword_100014F78 != -1)
  {
    dispatch_once(&qword_100014F78, &stru_100010D38);
  }

  v3 = qword_100014F70;

  return v3;
}

- (CKDMain)init
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "Wed Dec 31 16:00:00 1969";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "CloudKit daemon binary was built at %s", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = CKDMain;
  v4 = [(CKDMain *)&v9 init];
  if (v4)
  {
    v5 = objc_opt_new();
    swiftMain = v4->_swiftMain;
    v4->_swiftMain = v5;

    v7 = +[CKDSystemAvailabilityMonitor sharedMonitor];
    [v7 registerWatcher:v4];
  }

  return v4;
}

- (void)_setupNotifydEventHandler
{
  v4 = +[CKDDaemonProcess currentProcess];
  if ([v4 isSystemInstalledBinary])
  {
    v2 = +[CKDDaemonProcess currentProcess];
    v3 = [v2 processType];

    if (v3 != 2)
    {

      xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100010D78);
    }
  }

  else
  {
  }
}

- (void)_setupTCCEventHandler
{
  v2 = +[CKDDaemonProcess currentProcess];
  v3 = [v2 processType];

  if (v3 != 1)
  {
    v4 = +[CKDAuthorizationObserver defaultObserver];
    [v4 registerWithBlock:&stru_100010E18];
  }
}

- (BOOL)systemAvailabilityChanged:(unint64_t)a3
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v74 = _os_activity_create(&_mh_execute_header, "systemAvailabilityChanged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v74, &state);
  v5 = [(CKDMain *)self canRunGivenAvailabilityState:a3];
  v75 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(CKDMain *)v6 upAndRunning];
  [(CKDMain *)v6 setUpAndRunning:v5];
  objc_sync_exit(v6);
  v76 = v6;

  if (!((v7 ^ 1) & v5))
  {
    goto LABEL_44;
  }

  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = dispatch_semaphore_create(0);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v86) = 0;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Begin cleaning up background tasks", &v86, 2u);
    }

    *v95 = _NSConcreteStackBlock;
    v96 = 3221225472;
    v97 = sub_100008B4C;
    v98 = &unk_100010E68;
    v99 = v9;
    v11 = v9;
    [NSURLSession _getActiveSessionIdentifiersWithCompletionHandler:v95];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);

    objc_autoreleasePoolPop(v8);
    v12 = +[CKDDaemonProcess currentProcess];
    if ([v12 isSystemInstalledBinary])
    {
      v13 = +[CKDDaemonProcess currentProcess];
      v14 = [v13 processType] == 2;

      if (!v14)
      {
        v73 = CKGetCacheDir();
        v15 = +[CKDLogicalDeviceContext defaultContext];
        v16 = [v15 metadataCache];
        v17 = [v16 knownContainerizedApplicationIDs];

        v18 = +[NSMutableSet set];
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v86 objects:v95 count:16];
        if (v20)
        {
          v21 = *v87;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v87 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v86 + 1) + 8 * i);
              v24 = +[CKDLogicalDeviceContext defaultContext];
              v25 = [v24 metadataCache];
              v26 = [v25 applicationMetadataForApplicationID:v23];

              if (v26)
              {
                v27 = [v26 applicationContainerPath];
                v28 = [v27 stringByAppendingPathComponent:@"Library/Caches/CloudKit"];
                [v18 addObject:v28];
              }
            }

            v20 = [v19 countByEnumeratingWithState:&v86 objects:v95 count:16];
          }

          while (v20);
        }

        v29 = [NSURL fileURLWithPath:v73];
        v30 = [v29 URLByAppendingPathComponent:@"tmp"];

        if (v30)
        {
          v31 = [v30 lastPathComponent];
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v32 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
          {
            v33 = v32;
            v34 = [v30 CKSanitizedPath];
            *buf = 138412546;
            v92 = v31;
            v93 = 2112;
            v94 = v34;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Purging %@ directory at %@", buf, 0x16u);
          }

          [CKDirectoryPurger purgeDirectoryAtURL:v30];
        }

        v35 = +[CKDLogicalDeviceContext defaultContext];
        v36 = [v35 metadataCache];
        v37 = [v36 hasMigrated];

        if (((v73 != 0) & v37) == 1)
        {
          v38 = +[CKDMetadataCache dbFileName];
          v39 = +[CKDOperationInfoCache dbFileName];
          v40 = +[CKDDirectoryContext daemonDatabaseDirectoryName];
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v41 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
          {
            v42 = v41;
            v43 = [v38 CKSanitizedPath];
            v44 = [v73 CKSanitizedPath];
            *buf = 138412546;
            v92 = v43;
            v93 = 2112;
            v94 = v44;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Migrated %@ db, now purging the cache directory at %@", buf, 0x16u);
          }

          v45 = [NSURL fileURLWithPath:v73 isDirectory:1];
          v46 = [CKDirectoryPurger alloc];
          v90 = v45;
          v47 = [NSArray arrayWithObjects:&v90 count:1];
          v48 = [v46 initWithDirectoryURLs:v47];

          v82[0] = _NSConcreteStackBlock;
          v82[1] = 3221225472;
          v82[2] = sub_100008E70;
          v82[3] = &unk_100010E90;
          v83 = v38;
          v84 = v39;
          v85 = v40;
          v49 = v40;
          v50 = v39;
          v51 = v38;
          [v48 setShouldSkipFileBlock:v82];
          [v48 setShouldRemoveFileBlock:&stru_100010ED0];
          [v48 purge];
        }
      }
    }

    else
    {
    }
  }

  [(CKDMain *)v76 _setupNotifydEventHandler];
  [(CKDMain *)v76 _setupDistnotedEventHandler];
  [(CKDMain *)v76 _setupTCCEventHandler];
  v52 = +[CKDDaemonProcess currentProcess];
  if ([v52 isSystemInstalledBinary])
  {
    v53 = +[CKDDaemonProcess currentProcess];
    v54 = [v53 processType] == 2;

    if (v54)
    {
      goto LABEL_36;
    }

    v55 = +[CKDLogicalDeviceContext defaultContext];
    v56 = [v55 tokenRegistrationScheduler];
    [v56 registerTokenRefresh];

    v57 = +[CKDLogicalDeviceContext defaultContext];
    v58 = [v57 metadataCache];

    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_100009A0C;
    v79[3] = &unk_100010EF8;
    v52 = v58;
    v80 = v52;
    v59 = objc_retainBlock(v79);
    v60 = +[CKDAccountNotifier sharedNotifier];
    [v60 registerObserver:v52 forAccountChangeNotification:v59];

    (v59[2])(v59, 0, 0);
    [v52 expungeStaleAccountIDs];
    v61 = +[CKDLogicalDeviceContext defaultContext];
    v62 = [v61 operationInfoCache];

    [v62 registerCacheEviction];
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_100009A24;
    v77[3] = &unk_100010EF8;
    v63 = v62;
    v78 = v63;
    v64 = objc_retainBlock(v77);
    v65 = +[CKDAccountNotifier sharedNotifier];
    [v65 registerObserver:v63 forAccountChangeNotification:v64];

    (v64[2])(v64, 0, 1);
  }

LABEL_36:
  v66 = +[CKDDaemonProcess currentProcess];
  if ([v66 isSystemInstalledBinary])
  {
    v67 = +[CKDDaemonProcess currentProcess];
    v68 = [v67 processType] == 2;

    if (!v68)
    {
      if (CKIsRunningInSyncBubble())
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v69 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
        {
          *v95 = 0;
          _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "We're in a sync bubble. Waiting to be asked to upload content before kicking off pending long lived operations", v95, 2u);
        }
      }

      else
      {
        v72 = +[CKDProcessScopedStateManager sharedManager];
        [v72 kickOffPendingLongLivedOperations];
      }
    }
  }

  else
  {
  }

LABEL_44:
  if (v75 == 3)
  {
    v70 = [(CKDMain *)v76 swiftMain];
    [v70 markSystemAvailableForCacheDelete];
  }

  os_activity_scope_leave(&state);

  return 1;
}

- (void)uploadContent
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Requested to upload content. Kicking off unfinished long-lived operations", v4, 2u);
  }

  v3 = +[CKDProcessScopedStateManager sharedManager];
  [v3 kickOffPendingLongLivedOperations];
}

@end