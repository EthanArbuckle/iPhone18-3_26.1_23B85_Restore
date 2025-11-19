void sub_100001154(id a1)
{
  qword_100016E68 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.nanonews.sync"];

  _objc_release_x1();
}

void sub_10000127C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100001294(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100016E80)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000013D8;
    v4[4] = &unk_1000103B8;
    v4[5] = v4;
    v5 = off_1000103A0;
    v6 = 0;
    qword_100016E80 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100016E80)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NPSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100008ED0();
  }

  qword_100016E78 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000013D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100016E80 = result;
  return result;
}

uint64_t sub_100001F14(uint64_t a1)
{
  qword_100016E88 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100002120(uint64_t a1)
{
  v2 = +[NanoNewsSettingsManager articleIdentifiersOnGizmo];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NSSet set];
  }

  v17 = v4;

  v5 = +[NanoNewsSettingsManager seenHeadlineIdentifiers];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[NSSet set];
  }

  v8 = v7;

  v9 = +[NanoNewsSettingsManager gizmoSavedHeadlineIdentifiers];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[NSSet set];
  }

  v12 = v11;

  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = [v17 allObjects];
    v15 = [v8 allObjects];
    v16 = [v12 allObjects];
    (*(v13 + 16))(v13, v14, v15, v16);
  }
}

uint64_t sub_100002320(uint64_t a1)
{
  +[NanoNewsSettingsManager resetSeen];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_10000244C(uint64_t a1)
{
  [NanoNewsSettingsManager setSavedIdentifiers:*(a1 + 32)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10000257C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = &__NSArray0__struct;
  }

  v6 = [NSSet setWithArray:v2];
  v3 = +[NanoNewsSettingsManager preferredRefreshDates];
  v4 = [NSSet setWithArray:v3];

  if (v4 != v6 && ([v4 isEqualToSet:v6] & 1) == 0)
  {
    [NanoNewsSettingsManager setPreferredRefreshDates:*(a1 + 32)];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void sub_100002750(uint64_t a1)
{
  if ([*(a1 + 32) count] || objc_msgSend(*(a1 + 40), "count"))
  {
    v2 = +[NanoNewsSettingsManager articleIdentifiersOnGizmo];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v24;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v23 + 1) + 8 * i);
          if ([v2 containsObject:v8])
          {
            [NanoNewsSettingsManager addSavedIdentifier:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v5);
    }

    v9 = +[NanoNewsSettingsManager gizmoSavedHeadlineIdentifiers];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = *(a1 + 40);
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * j);
          if (([v2 containsObject:{v15, v19}] & 1) != 0 || objc_msgSend(v9, "containsObject:", v15))
          {
            [NanoNewsSettingsManager removeSavedIdentifier:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v12);
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      (*(v16 + 16))();
    }
  }

  else
  {
    v17 = *(a1 + 48);
    if (v17)
    {
      v18 = *(v17 + 16);

      v18();
    }
  }
}

uint64_t sub_100002AA0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
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

        [NanoNewsSettingsManager removeSeenIdentifier:*(*(&v8 + 1) + 8 * v6), v8];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  +[NanoNewsSettingsManager synchronizeSeenHeadlineIdentifiers];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 bundleIdentifier];
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "NanoNews Daemon - Bundle identifier %@…", &v16, 0xCu);
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100010470);
  v7 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Starting CompanionSync service…", &v16, 2u);
  }

  v8 = +[NNCompanionSyncService sharedCompanionSyncService];
  [v8 resumeSync];

  v9 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Starting XPC listener…", &v16, 2u);
  }

  v10 = objc_opt_new();
  v11 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nanonews.service.companion"];
  [v11 setDelegate:v10];
  [v11 resume];
  v12 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Running the run loop…", &v16, 2u);
  }

  v13 = +[NSRunLoop currentRunLoop];
  [v13 run];

  v14 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Passing out!", &v16, 2u);
  }

  objc_autoreleasePoolPop(v3);
  return 0;
}

void sub_100003568(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingSyncFileURL];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [v3 writeToURL:v2 atomically:1];
    v5 = NNSetupCompanionSyncLog();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v6)
      {
        v7 = [v2 absoluteString];
        v9 = 138412290;
        v10 = v7;
        v8 = "Wrote headlines to %@";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v8, &v9, 0xCu);
      }
    }

    else if (v6)
    {
      v7 = [v2 absoluteString];
      v9 = 138412290;
      v10 = v7;
      v8 = "Couldn't write to %@";
      goto LABEL_9;
    }
  }

  else
  {
    v5 = NNSetupCompanionSyncLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [v2 absoluteString];
      v9 = 138412290;
      v10 = v7;
      v8 = "No headlines given to companion sync service for %@";
      goto LABEL_9;
    }
  }
}

void sub_100003E90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = [v2 resume:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = NNSetupCompanionSyncLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 40) UUIDString];
      *buf = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Couldn't resume SYService with pairingID: %@ error: %@", buf, 0x16u);
    }
  }
}

char *NNSystemDirectoryDirectoryPath()
{
  v0 = malloc_type_malloc(0x400uLL, 0x362579F0uLL);
  if (v0)
  {
    started = sysdir_start_search_path_enumeration_private();
    sysdir_get_next_search_path_enumeration(started, v0);
  }

  return v0;
}

id NNURLForSystemDirectoriesPath(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [NSString stringWithCString:a1 encoding:4];
    free(v1);
    v1 = [NSURL fileURLWithPath:v2 isDirectory:1];
  }

  return v1;
}

id NNURLForFeldsparUserAccountHomeDirectory()
{
  v0 = NNSystemDirectoryDirectoryPath();
  v1 = NNURLForSystemDirectoriesPath(v0);
  v2 = [v1 URLByAppendingPathComponent:@"News" isDirectory:1];

  return v2;
}

id NNURLForNanonewscdContent()
{
  v0 = NNURLForFeldsparUserAccountHomeDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"nanonewscd" isDirectory:1];

  v2 = +[NSFileManager defaultManager];
  v4 = 0;
  [v2 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:&v4];

  return v1;
}

uint64_t sub_100004DB0(uint64_t a1)
{
  qword_100016E98 = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

uint64_t sub_10000526C(uint64_t a1)
{
  v2 = [*(a1 + 32) service];
  [v2 setHasChangesAvailable];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1000053D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000053F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100005408(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceManager];
  v3 = [v2 shouldResumeSync];

  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000054AC;
    v5[3] = &unk_100010380;
    v4 = *(a1 + 32);
    v5[4] = *(a1 + 40);
    [v4 attemptSyncWithCompletion:v5];
  }
}

void sub_1000054AC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_1000057D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100005824(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) serviceManager];
  v8 = [v7 syncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005920;
  block[3] = &unk_1000104E8;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

void sub_100005920(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = NNCompanionSyncableResultFromDaemonResults(*(a1 + 32), *(a1 + 40), 1);
    v19 = 0;
    v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:&v19];
    v5 = v19;
    v6 = [*(a1 + 40) allValues];
    NTDeleteOnDiskAssets();

    if (!v4)
    {
      v7 = NNSetupCompanionSyncLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100009080(v5, v7);
      }
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v4 = 0;
  }

  v8 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Preparing headlines (%@) for gizmo.", buf, 0xCu);
  }

  v10 = [*(a1 + 48) serviceManager];
  [v10 enqueueHeadlineSyncWithData:v4];

  v11 = [*(a1 + 48) service];
  v12 = [v11 currentSession];
  v13 = v12 == 0;

  if (v13)
  {
    [*(a1 + 48) resumeSync];
  }

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;

  v18 = *(a1 + 48);
  objc_sync_enter(v18);
  [*(a1 + 48) setUpdatingHeadlines:0];
  objc_sync_exit(v18);
}

id NNCompanionSyncableResultFromDaemonResults(void *a1, void *a2, int a3)
{
  if (a1)
  {
    v5 = a2;
    v6 = a1;
    v7 = [[NNNewsDaemonHeadlineResultWrapper alloc] initWithResult:v6 assetFileURLsByRemoteURL:v5];

    v8 = NNHeadlineSyncableResultFromResult(v7, a3);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100006684(id a1)
{
  qword_100016EA8 = [[NNArticleIdentifierSyncManager alloc] initWithReadonlyResetKey:@"gizmoSavedResetDate" readwriteResetKey:@"companionSavedResetDate" readonlyKey:@"gizmoSavedStates" readwriteKey:@"companionSavedStates"];

  _objc_release_x1();
}

void sub_100006728(id a1)
{
  qword_100016EB8 = [[NNArticleIdentifierSyncManager alloc] initWithReadonlyResetKey:@"gizmoSeenResetDate" readwriteResetKey:@"companionSeenResetDate" readonlyKey:@"gizmoSeenStates" readwriteKey:@"companionSeenStates"];

  _objc_release_x1();
}

id NNSetupCompanionSyncLog()
{
  if (qword_100016ED0 != -1)
  {
    sub_100009120();
  }

  v1 = qword_100016EC8;

  return v1;
}

void sub_100007818(id a1)
{
  qword_100016EC8 = os_log_create("com.apple.nanonews", "CompanionSync");

  _objc_release_x1();
}

id NNHeadlineSyncableResultFromResult(void *a1, int a2)
{
  v3 = a1;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 sync_expirationDate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setObject:v5 forKeyedSubscript:@"sync_expirationDate"];
  }

  v6 = [v3 sync_sections];
  v7 = [v6 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v4;
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          if (![v14 conformsToProtocol:&OBJC_PROTOCOL___NNSyncableSection])
          {
            v4 = v20;
            goto LABEL_14;
          }

          v15 = NNHeadlineSyncableSectionFromSection(v14, a2);
          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v9 = [v8 copy];
    v4 = v20;
    [v20 setObject:v9 forKeyedSubscript:@"sync_sections"];
LABEL_14:
  }

  v16 = [v3 sync_headlineCount];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [NSNumber numberWithUnsignedInteger:v16];
    [v4 setObject:v17 forKeyedSubscript:@"sync_headlineCount"];
  }

  v18 = [v4 copy];

  return v18;
}

id NNHeadlineSyncableSectionFromSection(void *a1, int a2)
{
  v3 = a1;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 sync_identifier];
  v6 = [v5 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setObject:v6 forKeyedSubscript:@"sync_identifier"];
  }

  v7 = [v3 sync_name];
  v8 = [v7 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setObject:v8 forKeyedSubscript:@"sync_name"];
  }

  v9 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v35 = v8;
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Creating Syncable Section with name=%@ and ID = %@…", buf, 0x16u);
  }

  v10 = [v3 sync_type];
  if (v10 > 5)
  {
    v11 = NNSetupCompanionSyncLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v35 = v3;
      v36 = 2048;
      v37 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Didn't know what this section type was: %@ %lu", buf, 0x16u);
    }
  }

  else
  {
    v11 = [NSNumber numberWithUnsignedInteger:v10];
    [v4 setObject:v11 forKeyedSubscript:@"sync_type"];
  }

  v12 = [v3 sync_colorHexString];
  v13 = [v12 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setObject:v13 forKeyedSubscript:@"sync_colorHexString"];
  }

  v14 = [v3 sync_headlines];
  v15 = [v14 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v13;
    v27 = v8;
    v28 = v6;
    v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v15 count]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
LABEL_16:
      v21 = 0;
      while (1)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v29 + 1) + 8 * v21);
        if (![v22 conformsToProtocol:&OBJC_PROTOCOL___NNSyncableHeadline])
        {
          break;
        }

        v23 = NNHeadlineSyncableResultFromHeadline(v22, a2);
        [v16 addObject:v23];

        if (v19 == ++v21)
        {
          v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v19)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:

      v17 = [v16 copy];
      [v4 setObject:v17 forKeyedSubscript:@"sync_headlines"];
    }

    v8 = v27;
    v6 = v28;
    v13 = v26;
  }

  v24 = [v4 copy];

  return v24;
}

id NNHeadlineSyncableResultFromHeadline(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 sync_identifier];
  v5 = [v3 sync_title];
  v6 = [v3 sync_excerpt];
  v15 = a2;
  if (a2)
  {
    v7 = [v3 sync_thumbnailImageData];
    v8 = [v3 sync_publisherLogoImageData];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = [v3 sync_publisherName];
  v10 = [v3 sync_publisherIdentifier];
  v11 = [v3 sync_NewsURLString];
  v12 = v4;
  v13 = NNCreateHeadlineSyncableHeadline(v4, v5, v6, v7, v8, v9, v10, v11);

  if (v15)
  {
  }

  return v13;
}

id NNCreateHeadlineSyncableHeadline(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a2;
  v38 = a3;
  v16 = a4;
  v17 = a5;
  v37 = a6;
  v36 = a7;
  v18 = a8;
  v19 = a1;
  v20 = +[NSMutableDictionary dictionary];
  v21 = [v19 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v20 setObject:v21 forKeyedSubscript:@"sync_identifier"];
  }

  v32 = v21;
  v35 = v15;
  v22 = [v15 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v20 setObject:v22 forKeyedSubscript:@"sync_title"];
  }

  v23 = [v38 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v20 setObject:v23 forKeyedSubscript:@"sync_excerpt"];
  }

  v33 = v18;
  v24 = [v18 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v20 setObject:v24 forKeyedSubscript:@"sync_NewsURLString"];
  }

  v34 = v16;
  v25 = [v16 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v20 setObject:v25 forKeyedSubscript:@"sync_thumbnailImageData"];
  }

  v26 = v17;
  v27 = [v17 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v20 setObject:v27 forKeyedSubscript:@"sync_publisherLogoImageData"];
  }

  v28 = [v37 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v20 setObject:v28 forKeyedSubscript:@"sync_publisherName"];
  }

  v29 = [v36 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v20 setObject:v29 forKeyedSubscript:@"sync_publisherIdentifier"];
  }

  v30 = [v20 copy];

  return v30;
}

void sub_100008EF8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error writing changed headlines %@", &v2, 0xCu);
}

void sub_100008F70(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Couldn't make property list from change %@. %@", &v3, 0x16u);
}

void sub_100008FF8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Couldn't make property list of last known result %@. %@", &v3, 0x16u);
}

void sub_100009080(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error writing headlines %@", &v2, 0xCu);
}

void sub_100009134(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown state. Already enqueued results for session. %p", &v2, 0xCu);
}

void sub_1000091AC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Couldn't make property list to enqueue change %@. %@", &v3, 0x16u);
}