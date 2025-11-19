void sub_1000017A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = psd_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = psd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received IDS stats for sync start", v9, 2u);
    }
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v3;
}

void sub_100001AF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 1 && *(v2 + 16))
  {
    v3 = psd_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = psd_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting IDS stats for sync finish", buf, 2u);
      }
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 8);
    IDSGetDeliveryStatsWithCompletionBlock();
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 16);

      v8();
    }
  }
}

void sub_100001C48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = psd_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = psd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received IDS stats for sync finish", v8, 2u);
    }
  }

  [*(a1 + 32) _diffWithStatistics:v3];
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

void sub_100001FFC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 channelName];
  [v2 _logStatistics:v4 channelName:v5];
}

id sub_10000284C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100038018 != -1)
  {
    sub_10001AB00();
  }

  v4 = [qword_100038010 newMetricContainerWithIdentifier:a1];
  [v4 setMetric:v3];
  if (v4)
  {
    v5 = [qword_100038010 submitMetric:v4];
    v6 = psd_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = psd_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = @"FAILURE";
        if (v5)
        {
          v9 = @"SUCCESS";
        }

        v13 = 138412546;
        v14 = v9;
        v15 = 2114;
        v16 = v3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Metric submission %@ %{public}@", &v13, 0x16u);
      }

LABEL_13:
    }
  }

  else
  {
    v10 = psd_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    v5 = 0;
    if (v11)
    {
      v8 = psd_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Could not create report container for metric %{public}@", &v13, 0xCu);
      }

      v5 = 0;
      goto LABEL_13;
    }
  }

  return v5;
}

void sub_100002A18(id a1)
{
  qword_100038010 = [[AWDServerConnection alloc] initWithComponentId:62 andBlockOnConfiguration:1];

  _objc_release_x1();
}

uint64_t sub_100002A60()
{
  if (qword_100038028 != -1)
  {
    sub_10001AB14();
  }

  return byte_100038020;
}

void sub_100002A98(id a1)
{
  if (CFPreferencesGetAppBooleanValue(@"_ShowInternalAutomationUI", @"com.apple.nanobuddy.automationhelper", 0))
  {
    byte_100038020 = 1;
  }
}

uint64_t sub_100002B74(uint64_t a1)
{
  qword_100038030 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_100002E98(uint64_t a1)
{
  v2 = psd_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = psd_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received com.apple.nanoregistry.pairedsync.isokaytosync", v6, 2u);
    }
  }

  *(*(a1 + 32) + 32) = 0;
  return [*(a1 + 32) _startSyncIfNeeded];
}

void sub_100002F3C(uint64_t a1)
{
  v2 = psd_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = psd_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received com.apple.nanoregistry.watchdidbecomeactive notification.", buf, 2u);
    }
  }

  if (*(*(a1 + 32) + 32) == 1)
  {
    v5 = psd_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = psd_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Previous check failed due to missing flag, start sync if needed.", v8, 2u);
      }
    }

    *(*(a1 + 32) + 32) = 0;
    [*(a1 + 32) _startSyncIfNeeded];
  }
}

id sub_100003054(uint64_t a1)
{
  v2 = psd_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = psd_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MKB First Unlock", v6, 2u);
    }
  }

  return [*(a1 + 32) _startSyncIfNeeded];
}

id sub_100003220(uint64_t a1)
{
  result = objc_storeWeak((*(a1 + 32) + 72), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 64);
  return result;
}

void sub_1000034D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 56) & 1) == 0)
  {
    *(v2 + 56) = 1;
    v3 = psd_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = psd_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v62 = 136315138;
        v63 = "[PSDSyncInitiator _startSyncIfNeeded]_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s suspending syncStarterQueue", &v62, 0xCu);
      }
    }

    dispatch_suspend(*(*(a1 + 32) + 48));
  }

  v6 = +[PSDaemon sharedInstance];
  [v6 setShouldRelaunch:1];

  v7 = [*(a1 + 32) needsSync];
  v8 = *(a1 + 32);
  if (v7)
  {
    if (v7 == 3)
    {
      [v8 setState:0];
      v9 = *(a1 + 32);
      if (*(v9 + 56) == 1)
      {
        *(v9 + 56) = 0;
        v10 = psd_log();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

        if (v11)
        {
          v12 = psd_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v62 = 136315138;
            v63 = "[PSDSyncInitiator _startSyncIfNeeded]_block_invoke";
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s resuming syncStarterQueue", &v62, 0xCu);
          }
        }

        dispatch_resume(*(*(a1 + 32) + 48));
      }

      return;
    }

    [v8 setState:1];
    v16 = MKBDeviceUnlockedSinceBoot();
    v17 = v16;
    if ((v7 != 2 || !v16) && ![*(a1 + 32) canSync])
    {
      v49 = psd_log();
      v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);

      if (v50)
      {
        v51 = psd_log();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v62) = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "PSDSyncInitiator - startSyncIfNeeded - needs sync - can't sync.", &v62, 2u);
        }
      }

      v52 = +[PSDaemon sharedInstance];
      [v52 setShouldRelaunch:0];

      v53 = *(a1 + 32);
      if (*(v53 + 56) == 1)
      {
        *(v53 + 56) = 0;
        v54 = psd_log();
        v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);

        if (v55)
        {
          v56 = psd_log();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v62 = 136315138;
            v63 = "[PSDSyncInitiator _startSyncIfNeeded]_block_invoke";
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%s resuming syncStarterQueue", &v62, 0xCu);
          }
        }

        dispatch_resume(*(*(a1 + 32) + 48));
      }

      goto LABEL_56;
    }

    v18 = psd_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v20 = psd_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = "can";
        if (v7 == 2)
        {
          v21 = "must resume";
        }

        v62 = 136315138;
        v63 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PSDSyncInitiator needs sync & %s sync.", &v62, 0xCu);
      }
    }

    v22 = [*(*(a1 + 32) + 16) syncSession];
    if ([v22 syncSessionState] == 2)
    {
      [*(*(a1 + 32) + 16) reset];
    }

    else if (v22)
    {
LABEL_55:
      v47 = +[PSDScheduler sharedScheduler];
      [v47 scheduleSyncSession:v22];

LABEL_56:
      if (v17)
      {
        v48 = *(*(a1 + 32) + 36);
        if (v48 != -1)
        {
          notify_cancel(v48);
          *(*(a1 + 32) + 36) = -1;
        }
      }

      return;
    }

    v30 = +[PSYRegistrySingleton registry];
    v31 = [v30 pairingID];

    v32 = +[PSDSyncStateManager sharedSyncStateManager];
    v33 = [v32 isInitialSyncCompleteForPairingID:v31];

    if ([v33 BOOLValue])
    {
      if ([*(a1 + 32) _hasWatchMigrationCounterChanged])
      {
        v34 = 2;
      }

      else
      {
        v34 = 1;
      }
    }

    else
    {
      if (!v33)
      {
        v35 = psd_log();
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

        if (v36)
        {
          v37 = psd_log();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v62) = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "PSDSyncInitiator - not syncing because sync status is unknown", &v62, 2u);
          }
        }

        v38 = +[PSDaemon sharedInstance];
        [v38 setShouldRelaunch:0];

        v39 = *(a1 + 32);
        if (*(v39 + 56) == 1)
        {
          *(v39 + 56) = 0;
          v40 = psd_log();
          v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

          if (v41)
          {
            v42 = psd_log();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v62 = 136315138;
              v63 = "[PSDSyncInitiator _startSyncIfNeeded]_block_invoke";
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%s resuming syncStarterQueue", &v62, 0xCu);
            }
          }

          dispatch_resume(*(*(a1 + 32) + 48));
        }
      }

      v34 = 0;
    }

    v22 = [*(a1 + 32) defaultSyncSessionForType:v34];
    v43 = psd_log();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);

    if (v44)
    {
      v45 = psd_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = NSStringfromPSYSyncSessionType();
        v62 = 138412290;
        v63 = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "PSDSyncInitiator - sync session is nil (not resuming) starting new sync of type %@", &v62, 0xCu);
      }
    }

    goto LABEL_55;
  }

  v13 = v8[9];
  if (v13 != -1)
  {
    notify_cancel(v13);
    *(*(a1 + 32) + 36) = -1;
  }

  v14 = +[PSDScheduler sharedScheduler];
  v15 = [v14 syncSession];

  if (v15)
  {
    [*(a1 + 32) setState:1];
    return;
  }

  v23 = +[PSYRegistrySingleton registry];
  v24 = [v23 pairingID];

  v25 = +[PSDSyncStateManager sharedSyncStateManager];
  v26 = [v25 isSyncCompleteForPairingID:v24];

  if (!v26)
  {
    v28 = *(a1 + 32);
    goto LABEL_70;
  }

  v27 = [v26 BOOLValue];
  v28 = *(a1 + 32);
  if (v27)
  {
LABEL_70:
    v29 = 3;
    goto LABEL_71;
  }

  v29 = 2;
LABEL_71:
  [v28 setState:v29];
  v57 = +[PSDaemon sharedInstance];
  [v57 setShouldRelaunch:0];

  v58 = *(a1 + 32);
  if (*(v58 + 56) == 1)
  {
    *(v58 + 56) = 0;
    v59 = psd_log();
    v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);

    if (v60)
    {
      v61 = psd_log();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = 136315138;
        v63 = "[PSDSyncInitiator _startSyncIfNeeded]_block_invoke";
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%s resuming syncStarterQueue", &v62, 0xCu);
      }
    }

    dispatch_resume(*(*(a1 + 32) + 48));
  }
}

void sub_1000046A8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

id sub_100004728(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 label];
  v8 = [v5 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &off_10002E670;
  }

  v10 = *(a1 + 32);
  v11 = [v6 label];

  v12 = [v10 objectForKeyedSubscript:v11];

  if (!v12)
  {
    v12 = &off_10002E670;
  }

  v13 = [v9 compare:v12];

  return v13;
}

id sub_100005770(uint64_t a1)
{
  [*(a1 + 32) setState:1];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) switchIndex]);
  v3 = PSYPairedSyncDomainName;
  CFPreferencesSetValue(@"lastSwitchIndex", v2, PSYPairedSyncDomainName, @"mobile", kCFPreferencesAnyHost);
  CFPreferencesSynchronize(v3, @"mobile", kCFPreferencesAnyHost);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _queue_saveResumeContextWithSyncSession:v5];
}

void sub_100005AB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) updatedSession];
  [v1 _queue_saveResumeContextWithSyncSession:v2];
}

void sub_100005B04(uint64_t a1)
{
  v5 = [*(a1 + 40) updatedSession];
  v2 = [v5 pairingIdentifier];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100005CD8(id *a1)
{
  [a1[4] setState:3];
  [*(a1[4] + 2) reset];
  v2 = *(a1[4] + 5);
  v3 = [a1[5] pairingIdentifier];
  LODWORD(v2) = [v2 isEqual:v3];

  v4 = a1[4];
  if (v2)
  {
    v5 = v4[5];
    v4[5] = 0;
    v6 = v5;

    v7 = +[PSDSyncStateManager sharedSyncStateManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100005EC4;
    v11[3] = &unk_10002C6D0;
    v11[4] = a1[4];
    v12 = a1[6];
    [v7 setSyncCompleteForPairingID:v6 withBlock:v11];
  }

  else
  {
    if (*(v4 + 56) == 1)
    {
      *(v4 + 56) = 0;
      v8 = psd_log();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

      if (v9)
      {
        v10 = psd_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v14 = "[PSDSyncInitiator scheduler:didClearSyncSession:withBlock:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s resuming syncStarterQueue", buf, 0xCu);
        }
      }

      dispatch_resume(*(a1[4] + 6));
    }

    (*(a1[6] + 2))();
  }
}

uint64_t sub_100005EC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 56) == 1)
  {
    *(v2 + 56) = 0;
    v3 = psd_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = psd_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = "[PSDSyncInitiator scheduler:didClearSyncSession:withBlock:]_block_invoke_2";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s resuming syncStarterQueue", &v7, 0xCu);
      }
    }

    dispatch_resume(*(*(a1 + 32) + 48));
  }

  return (*(*(a1 + 40) + 16))();
}

id sub_100006200(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 jobs];
  v5 = [v3 label];

  v6 = [v4 containsObject:v5];
  return v6;
}

void sub_100006308(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100006374(id a1)
{
  v1 = +[PSDFileManager defaultManager];
  v2 = [v1 storageURL];
  v3 = [v2 URLByAppendingPathComponent:@"AWDLogger.dat"];

  v15 = objc_opt_class();
  v4 = [NSArray arrayWithObjects:&v15 count:1];
  v5 = [NSSet setWithArray:v4];
  v6 = [v3 path];
  v7 = [NSKeyedUnarchiver secureUnarchiveObjectOfClasses:v5 withFile:v6];

  v8 = psd_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    if (v9)
    {
      v10 = psd_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Succeeded at unarchiving AWDLogger", &v13, 2u);
      }
    }
  }

  else
  {
    if (v9)
    {
      v11 = psd_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No AWDLogger at %{public}@.  Creating a new one.", &v13, 0xCu);
      }
    }

    v7 = objc_alloc_init(PSDSchedulerAWDLogger);
  }

  v12 = qword_100038040;
  qword_100038040 = v7;
}

uint64_t sub_100006A84(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionState];
  [v2 noteActivityStarted:0 syncSession:*(a1 + 40)];

  v3 = *(*(a1 + 32) + 32);
  return IDSGetDeliveryStatsWithCompletionBlock();
}

id sub_100006B24(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) bookmarkCurrentStatistics:a2];
  v3 = *(a1 + 32);

  return [v3 saveSessionState];
}

void sub_100006BFC(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100006DA4;
  v9[3] = &unk_10002C978;
  v6 = *(a1 + 32);
  v10 = vextq_s8(v6, v6, 8uLL);
  [v6.i64[0] enumerateNewlyRunningActivitiesWithBlock:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006E28;
  v8[3] = &unk_10002C9A0;
  v2 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  [v2 enumerateChangedActivitiesWithBlock:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006F10;
  v7[3] = &unk_10002C9A0;
  v3 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  [v3 enumerateNewlyCompletedActivitiesWithBlock:v7];
  if ([*(a1 + 32) didUpdateCompleteSyncSession])
  {
    v4 = [*(a1 + 40) sessionState];
    [v4 noteActivityFinished:0];

    v5 = *(*(a1 + 40) + 32);
    IDSGetDeliveryStatsWithCompletionBlock();
  }
}

id sub_100006DA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 sessionState];
  v7 = [*(a1 + 40) updatedSession];
  [v6 noteActivityStarted:v5 syncSession:v7];

  v8 = *(a1 + 32);

  return [v8 saveSessionState];
}

void sub_100006E28(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v10 interruptionCount];
  if (v6 != [v5 interruptionCount])
  {
    v7 = [*(a1 + 32) sessionState];
    [v7 noteActivityInterrupted:v5];

    [*(a1 + 32) saveSessionState];
  }

  v8 = [v10 sawADropout];
  if (v8 != [v5 sawADropout] && objc_msgSend(v5, "sawADropout"))
  {
    v9 = [*(a1 + 32) sessionState];
    [v9 noteActivityDropout:v5];

    [*(a1 + 32) saveSessionState];
  }
}

uint64_t sub_100006F10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 sessionState];
  [v6 noteActivityFinished:v5];

  v7 = *(*(a1 + 32) + 32);
  return IDSGetDeliveryStatsWithCompletionBlock();
}

id sub_100006FC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 accumulateStatisticsForSegment:v4];
  [*(a1 + 32) bookmarkCurrentStatistics:v4];

  v5 = *(a1 + 32);

  return [v5 saveSessionState];
}

id sub_100007028(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) accumulateStatisticsForSegment:a2];
  [*(a1 + 32) logAWDDurationsForSync];
  v3 = *(a1 + 32);

  return [v3 clearSessionState];
}

uint64_t sub_100007974(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000798C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![*(a1 + 32) hasDurationForActivity:v3])
  {
    goto LABEL_34;
  }

  v41 = a1;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  [v5 durationForActivity:v3];
  v7 = v6;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_100007974;
  v77 = sub_100007984;
  v36 = v3;
  v78 = [*v4 retryCountForActivity:?];
  v8 = [*v4 syncTypeForActivity:v3];
  v9 = *(*(v41 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v35 = [*(v41 + 32) errorCodeForActivity:v3];
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = [*(v41 + 32) wasDropoutForActivity:v3];
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v63 = 0;
  v64[0] = &v63;
  v64[1] = 0x2020000000;
  v64[2] = 0;
  v61 = 0;
  v62[0] = &v61;
  v62[1] = 0x2020000000;
  v62[2] = 0;
  v59 = 0;
  v60[0] = &v59;
  v60[1] = 0x2020000000;
  v60[2] = 0;
  if (([v3 isEqualToString:@"initialSyncSession"] & 1) == 0)
  {
    [*(v41 + 40) objectForKeyedSubscript:v3];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    obj = v56 = 0u;
    v39 = [obj countByEnumeratingWithState:&v55 objects:v81 count:16];
    if (!v39)
    {
      goto LABEL_32;
    }

    v38 = *v56;
    while (1)
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v56 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v55 + 1) + 8 * i);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v21 = +[PSDIDSServiceStatisticsCollection knownChannelNames];
        v22 = [v21 countByEnumeratingWithState:&v51 objects:v80 count:16];
        if (v22)
        {
          v23 = *v52;
          do
          {
            for (j = 0; j != v22; j = j + 1)
            {
              if (*v52 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v51 + 1) + 8 * j);
              v26 = [*(*(v41 + 48) + 8) objectForKeyedSubscript:v25];
              v27 = [v26 statisticsForServiceName:v20];

              v28 = [v27 deliveredMessageCount];
              v66[3] += v28;
              if ([v25 isEqualToString:@"syncMessagesStats"])
              {
                v29 = [v27 deliveredBytes];
                v30 = v64;
              }

              else if ([v25 isEqualToString:@"defaultMessagesStats"])
              {
                v29 = [v27 deliveredBytes];
                v30 = v62;
              }

              else
              {
                if (![v25 isEqualToString:@"urgentMessagesStats"])
                {
                  goto LABEL_28;
                }

                v29 = [v27 deliveredBytes];
                v30 = v60;
              }

              *(*v30 + 24) += v29;
LABEL_28:
            }

            v22 = [v21 countByEnumeratingWithState:&v51 objects:v80 count:16];
          }

          while (v22);
        }
      }

      v39 = [obj countByEnumeratingWithState:&v55 objects:v81 count:16];
      if (!v39)
      {
LABEL_32:

        v19 = obj;
        goto LABEL_33;
      }
    }
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = +[PSDIDSServiceStatisticsCollection knownChannelNames];
  v12 = [v11 countByEnumeratingWithState:&v47 objects:v79 count:16];
  if (v12)
  {
    v13 = *v48;
    do
    {
      for (k = 0; k != v12; k = k + 1)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v47 + 1) + 8 * k);
        v16 = [*(*(v41 + 48) + 8) objectForKeyedSubscript:v15];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_1000080D0;
        v46[3] = &unk_10002C9C8;
        v46[4] = v15;
        v46[5] = &v65;
        v46[6] = &v63;
        v46[7] = &v61;
        v46[8] = &v59;
        [v16 enumerateServiceStatisticsWithBlock:v46];
      }

      v12 = [v11 countByEnumeratingWithState:&v47 objects:v79 count:16];
    }

    while (v12);
  }

  *(v70 + 24) = 0;
  v17 = v74[5];
  v74[5] = 0;

  v18 = *(v41 + 32);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000081AC;
  v42[3] = &unk_10002C9F0;
  v44 = &v69;
  v43 = v18;
  v45 = &v73;
  [v43 enumerateActivityNamesWithBlock:v42];
  v19 = v43;
LABEL_33:

  v31 = [v74[5] integerValue];
  v32 = [v35 integerValue];
  v33 = [*(*(*(v41 + 56) + 8) + 40) integerValue];
  LOBYTE(v34) = *(v70 + 24) != 0;
  [AWDPairedSyncSyncReport submitWithActivityName:v36 syncDuration:v31 timeoutCount:v32 syncErrorCode:v33 syncType:*(v66 + 6) recordCount:*(v64[0] + 24) syncByteCount:v7 defaultByteCount:__PAIR64__(*(v60[0] + 24) urgentByteCount:*(v62[0] + 24)) sawADropout:v34];
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);

  _Block_object_dispose(&v73, 8);
  v3 = v36;
LABEL_34:
}

void sub_100008028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000080D0(uint64_t a1, void *a2)
{
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) += [v6 deliveredMessageCount];
  if ([*(a1 + 32) isEqualToString:@"syncMessagesStats"])
  {
    v3 = 48;
LABEL_5:
    v4 = v6;
LABEL_6:
    *(*(*(a1 + v3) + 8) + 24) += [v4 deliveredBytes];
    goto LABEL_7;
  }

  if ([*(a1 + 32) isEqualToString:@"defaultMessagesStats"])
  {
    v3 = 56;
    goto LABEL_5;
  }

  if ([*(a1 + 32) isEqualToString:@"urgentMessagesStats"])
  {
    v3 = 64;
    v4 = v6;
    goto LABEL_6;
  }

LABEL_7:

  return _objc_release_x1();
}

void sub_1000081AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) |= [v3 wasDropoutForActivity:v4];
  v8 = [*(a1 + 32) retryCountForActivity:v4];

  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 integerValue] + objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "integerValue"));
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10000827C(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 bytes] >= 1)
  {
    v3 = *(a1 + 32);
    v4 = [v5 serviceName];
    [v3 addObject:v4];
  }
}

void sub_100008714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008734(uint64_t a1, void *a2)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = a2;
    v6 = [v5 serviceName];
    v13 = [v4 statisticsForServiceName:v6];

    v7 = [v5 statisticsByDiffingStatistics:v13];

    if ([v7 statisticsAreBogus])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      v8 = *(a1 + 40);
      v9 = [v7 serviceName];
      v10 = [v8 statisticsForServiceName:v9];

      if (v10)
      {
        v11 = [v7 statisticsBySummingStatistics:v10];
      }

      else
      {
        v11 = v7;
      }

      v12 = v11;
      if (([v11 statisticsAreZero] & 1) == 0)
      {
        [*(a1 + 48) addServiceStatistics:v12];
      }
    }
  }
}

uint64_t sub_1000097F0(uint64_t a1)
{
  qword_100038050 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100009F54(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [[PSYDeviceSyncStateEntry alloc] initWithPairingID:*(a1 + 32) syncState:3];
  [*(*(a1 + 40) + 16) setObject:v3 forKeyedSubscript:*(a1 + 32)];
  v4 = [*(a1 + 40) domainAccessorForPairingID:*(a1 + 32)];
  v5 = psd_log();
  v6 = v5;
  if (v4)
  {
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = psd_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *v2;
        v14 = 138412546;
        v15 = v9;
        v16 = 2112;
        v17 = v3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating %@: %@", &v14, 0x16u);
      }
    }

    [v4 setBool:objc_msgSend(v3 forKey:{"initialSyncState") == 3, @"hasCompletedInitialSync"}];
    [v4 setInteger:objc_msgSend(v3 forKey:{"syncSwitchIndex"), @"syncSwitchIndex"}];
    [v4 setInteger:objc_msgSend(v3 forKey:{"migrationIndex"), @"migrationCount"}];
    v10 = [v4 synchronize];
    [*(a1 + 40) _updateMigrationCounter];
  }

  else
  {
    v11 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = psd_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10001AF94((a1 + 32));
      }
    }
  }

  [*(a1 + 40) _queue_tellRemoteObserversDidCompleteSyncForPairingID:*(a1 + 32)];
  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

uint64_t sub_10000A278(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A290(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_deviceSyncStateEntryForPairingID:*(a1 + 40)];
  if (v2)
  {
    v6 = v2;
    v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 hasCompletedSync]);
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

void sub_10000A438(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_deviceSyncStateEntryForPairingID:*(a1 + 40)];
  if (v2)
  {
    v6 = v2;
    v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 hasCompletedInitialSync]);
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

void sub_10000A92C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_10000A95C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained connectionInterrupted:v2];
}

void sub_10000AB34(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [*(a1 + 32) count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    *&v5 = 136315650;
    v15 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [*(a1 + 40) _queue_deviceSyncStateEntryForPairingID:{v9, v15, v16}];
        v11 = psy_log();
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

        if (v12)
        {
          v13 = psy_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v9 UUIDString];
            *buf = v15;
            v21 = "[PSDSyncStateManager requestDeviceSyncStateEntriesForPairingIDs:completion:]_block_invoke";
            v22 = 2114;
            v23 = v14;
            v24 = 2114;
            v25 = v10;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ %{public}@", buf, 0x20u);
          }
        }

        [v2 setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 48) + 16))();
}

const __CFString *sub_10000B940(uint64_t a1)
{
  v1 = @"Reunion";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Full";
  }
}

void sub_10000C7F4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [PSDIDSServiceStatistics statisticsWithServiceName:v7 serviceStatisticsDictionary:v5];
      [*(a1 + 32) addServiceStatistics:v6];
    }
  }
}

void sub_10000CC30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 serviceName];
  v7 = [v3 statisticsForServiceName:v5];

  v6 = [v4 statisticsByDiffingStatistics:v7];

  [*(a1 + 40) addServiceStatistics:v6];
}

uint64_t sub_10000CEF8(uint64_t a1)
{
  qword_100038068 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10000D17C(uint64_t a1)
{
  v2 = +[PSDSyncInitiator sharedSyncInitiator];
  [v2 setDelegate:*(a1 + 32)];
}

void sub_10000D3F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 96) != v3)
  {
    *(v2 + 96) = v3;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    if (v4 == 1)
    {
      [v5 _acquireStayAliveTransaction];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000D528;
      block[3] = &unk_10002C840;
      block[4] = *(a1 + 32);
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      [v5 _clearStayAliveTransaction];
    }
  }

  if (*(a1 + 40) == 1)
  {
    +[KeepAliveManager createPathFile];
  }

  else
  {
    +[KeepAliveManager deletePathFile];
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000D538;
  v6[3] = &unk_10002C840;
  v6[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v6);
}

_BYTE *sub_10000D538(uint64_t a1)
{
  *(*(a1 + 32) + 84) = 0;
  result = *(a1 + 32);
  if (result[85] == 1)
  {
    v10 = v2;
    v11 = v1;
    v12 = v3;
    v13 = v4;
    [result _clearStayAliveTransaction];
    v6 = psd_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = psd_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PSDaemon has a pending SIGTERM and has completed updating file for relaunch, exiting now", v9, 2u);
      }
    }

    exit(0);
  }

  return result;
}

void sub_10000D814(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = string;
    v4 = psd_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = psd_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136446210;
        v8 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PSDaemon got xpc stream event: %{public}s", &v7, 0xCu);
      }
    }
  }
}

void sub_10000D8F8(id a1)
{
  v1 = +[PSDaemon sharedInstance];
  [v1 sigTermHandler];
}

void sub_10000DCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DCE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000DD00(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10000DE00(id a1, PSDSchedulerObserver *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = +[PSDScheduler sharedScheduler];
  [v5 addSchedulerObserver:v4];
}

id sub_10000DFE8(uint64_t a1)
{
  v2 = psd_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = psd_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[PSDaemon syncInitiatorStateChangedTo:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
    }
  }

  return [*(*(a1 + 32) + 56) setSyncComplete];
}

const __CFString *sub_10000E280(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_10002CC50[a1 - 1];
  }
}

void sub_10000E348(uint64_t a1)
{
  v2 = +[PSDFileManager defaultManager];
  v3 = [v2 storageURL];

  v4 = [v3 URLByAppendingPathComponent:@"coreAnalyticsLogger.dat"];

  v17 = objc_opt_class();
  v5 = [NSArray arrayWithObjects:&v17 count:1];
  v6 = [NSSet setWithArray:v5];
  v7 = [v4 path];
  v8 = [NSKeyedUnarchiver secureUnarchiveObjectOfClasses:v6 withFile:v7];

  v9 = psd_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    if (v10)
    {
      v11 = psd_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Succeeded at unarchiving PSDSchedulerCoreAnalyticsLogger", &v15, 2u);
      }
    }
  }

  else
  {
    if (v10)
    {
      v12 = psd_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = v4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No PSDSchedulerCoreAnalyticsLogger at %{public}@.  Creating a new one.", &v15, 0xCu);
      }
    }

    v8 = objc_alloc_init(PSDSchedulerCoreAnalyticsSessionState);
  }

  v13 = [objc_alloc(*(a1 + 32)) initWithSessionState:v8 URL:v4];
  v14 = qword_100038078;
  qword_100038078 = v13;
}

void sub_10000E6F0(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:@"initialSyncSession"];
  v2 = [*(a1 + 32) sessionState];
  [v2 noteActivityStarted:@"initialSyncSession"];

  [*(a1 + 32) saveSessionState];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) pairingIdentifier];
  [v3 _setupLinkMonitorWithPairingIdentifier:v4];
}

void sub_10000E8F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (([a2 isFinishedSending] & 1) == 0 && objc_msgSend(v5, "isFinishedSending"))
  {
    [*(a1 + 32) activityDidCompleteSending:v5];
  }
}

void sub_10000E960(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a3;
  v6 = [v4 updatedSession];
  [v3 didFinishActivity:v5 inSession:v6];
}

id sub_10000EDD8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [*(a1 + 40) activityInfo];
  v4 = [v3 label];
  [v2 addObject:v4];

  v5 = [*(a1 + 32) sessionState];
  v6 = [*(a1 + 40) activityInfo];
  v7 = [v6 label];
  [v5 noteActivityStarted:v7];

  v8 = *(a1 + 32);

  return [v8 saveSessionState];
}

void sub_10000EF24(uint64_t a1)
{
  v2 = [*(a1 + 32) activityInfo];
  v4 = [v2 label];

  v3 = [*(a1 + 40) sessionState];
  [v3 noteActivityCompletedSending:v4];
}

void sub_10000F060(uint64_t a1)
{
  v2 = [*(a1 + 32) activityInfo];
  v4 = [v2 label];

  v3 = [*(a1 + 40) sessionState];
  [v3 noteActivityFinished:v4];

  [*(a1 + 40) _updateCurrentLinkStats];
  [*(*(a1 + 40) + 48) removeObject:v4];
  [*(a1 + 40) logDurationForActivityWithIdentifier:v4 bins:&unk_100037D00 binCount:8 inSession:*(a1 + 48)];
  [*(a1 + 40) saveSessionState];
}

id sub_10000F1A8(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionState];
  [v2 noteActivityFinished:@"initialSyncSession"];

  [*(a1 + 32) _updateCurrentLinkStats];
  [*(*(a1 + 32) + 48) removeObject:@"initialSyncSession"];
  [*(a1 + 32) logDurationForActivityWithIdentifier:@"initialSyncSession" bins:&unk_100037D20 binCount:18 inSession:*(a1 + 40)];
  [*(a1 + 32) _resetLinkMonitor];
  [*(a1 + 32) saveSessionState];
  v3 = *(a1 + 32);

  return [v3 clearSessionState];
}

uint64_t sub_10001120C(uint64_t a1)
{
  qword_100038088 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10001144C(uint64_t a1)
{
  v2 = [*(a1 + 32) schedulerObservers];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_100011538(uint64_t a1)
{
  v2 = [*(a1 + 32) schedulerObservers];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_100011A34(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    v2 = psd_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = psd_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        *buf = 138543362;
        v40 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Tried to schedule a sync session %{public}@", buf, 0xCu);
      }
    }

    v6 = psd_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = psd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 8);
      *buf = 138543362;
      v40 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " while one already exists %{public}@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = [v10 syncSessionState];
    v12 = psd_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v11 == 2)
    {
      if (!v13)
      {
        return;
      }

      v14 = psd_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 40);
        *buf = 138543362;
        v40 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Tried to schedule a completed sync session %{public}@", buf, 0xCu);
      }

LABEL_34:

      return;
    }

    if (v13)
    {
      v18 = psd_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 40);
        *buf = 138543362;
        v40 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Scheduling syncSession %{public}@", buf, 0xCu);
      }
    }

    objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
    v20 = *(a1 + 32);
    v21 = [v20[1] pairingIdentifier];
    v14 = [v20 nrDeviceForPairingIdentifier:v21];

    if (v14)
    {
      v22 = [v14 pairingID];
      [*(a1 + 32) setMonitoredPairing:v22];

      [PSYRegistrySingleton addDelegate:*(a1 + 32)];
      v23 = [v14 valueForProperty:PDRDevicePropertyKeyWatchBuddyStage];
      *(*(a1 + 32) + 40) = [v23 unsignedIntValue];
      *(*(a1 + 32) + 34) = *(*(a1 + 32) + 40) & 1;
      *(*(a1 + 32) + 33) = (*(*(a1 + 32) + 40) & 2) != 0;
      *(*(a1 + 32) + 35) = (*(*(a1 + 32) + 40) & 4) != 0;
      *(*(a1 + 32) + 36) = (*(*(a1 + 32) + 40) & 8) != 0;
      [*(a1 + 32) _setupLinkMonitorForDevice:v14];
    }

    else
    {
      v24 = psd_log();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
LABEL_30:
        v26 = [*(*(a1 + 32) + 8) incompleteActivities];
        v27 = [*(a1 + 32) activitiesForSessionActivites:v26];
        if ([v27 count] < 2)
        {
          v30 = 0;
        }

        else
        {
          v28 = [v27 objectAtIndex:0];
          v29 = [v28 activityInfo];
          v30 = [v29 label];
        }

        *(*(a1 + 32) + 32) = [v30 isEqualToString:@"com.apple.pairedsync.nanoprefsyncdfirst"] ^ 1;
        v31 = *(a1 + 32);
        v32 = [v27 mutableCopy];
        [v31 setActivityQueue:v32];

        v33 = objc_alloc_init(NSMutableArray);
        v34 = *(a1 + 32);
        v35 = *(v34 + 64);
        *(v34 + 64) = v33;

        v36 = *(a1 + 32);
        v37 = *(v36 + 16);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100011F30;
        block[3] = &unk_10002C840;
        block[4] = v36;
        dispatch_async(v37, block);

        goto LABEL_34;
      }

      v23 = psd_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10001B3B0();
      }
    }

    goto LABEL_30;
  }

  v16 = psd_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v17)
  {
    v8 = psd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001B3EC();
    }

LABEL_17:
  }

LABEL_18:
  *(*(*(a1 + 48) + 8) + 24) = 0;
}

void sub_100011F30(uint64_t a1)
{
  [*(a1 + 32) _queue_tellObserversWillStartSyncSession];
  v2 = [*(*(a1 + 32) + 8) syncSessionByUpdatingSyncSessionState:1];
  [*(a1 + 32) _queue_updateWithSyncSession:v2];
  [*(a1 + 32) _dequeueNextActivityAfter:0];
}

uint64_t sub_1000122C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100013100(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = psd_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = psd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [v5 psy_safeDescription];
      v11 = 138543874;
      v12 = v9;
      v13 = 1024;
      v14 = a2;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ finished with success: %d error %{public}@", &v11, 0x1Cu);
    }
  }

  [*(a1 + 40) _finishActivity:*(a1 + 32) success:a2 error:v5];
}

void sub_100013224(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = psd_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = psd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001B454(a1, v3);
    }
  }

  [*(a1 + 40) _activityWasInterrupted:*(a1 + 32)];
}

void sub_10001355C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = psd_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = psd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [NSNumber numberWithBool:a2];
      v11 = [v5 psy_safeDescription];
      v12 = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ aborted with success: %{public}@ error %{public}@", &v12, 0x20u);
    }
  }

  [*(a1 + 40) _finishActivity:*(a1 + 32) success:a2 error:v5];
}

void sub_1000136A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = psd_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = psd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001B514(a1, v3);
    }
  }

  [*(a1 + 40) _activityWasInterrupted:*(a1 + 32)];
}

void sub_1000137F0(uint64_t a1)
{
  [*(a1 + 32) _clearActivityTimer:*(a1 + 40)];
  if ([*(a1 + 32) _shouldHandleCallbackForActivity:*(a1 + 40)])
  {
    v2 = [*(a1 + 40) activityInfo];
    v3 = [v2 label];

    v4 = [*(*(a1 + 32) + 8) activityForLabel:v3];
    v12 = 0;
    v5 = [PDRConnectivityStatus getDropoutCounter:&v12];
    v6 = 1;
    if (([v4 sawADropout] & 1) == 0 && (v5 & 1) == 0)
    {
      v7 = [v4 startDropoutCount];
      v6 = v7 != v12;
    }

    v8 = [PSYSyncSessionActivity alloc];
    v9 = [v4 activityInfo];
    LOBYTE(v11) = v6;
    v10 = [v8 initWithActivityInfo:v9 progress:*(a1 + 48) error:2 state:objc_msgSend(v4 finishedSending:"isFinishedSending") interruptionCount:objc_msgSend(v4 startDropoutCount:"interruptionCount") sawADropout:{objc_msgSend(v4, "startDropoutCount"), 1.0, v11}];

    [*(a1 + 32) _queue_updateSyncSessionActivity:v10];
    [*(a1 + 32) _dequeueNextActivityAfter:*(a1 + 40)];
  }
}

void sub_1000141AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000141C4(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%@ (%ld of %ld)", *(a1 + 32), *(*(*(a1 + 40) + 8) + 24), 3];
  WriteStackshotReport_async();

  ++*(*(*(a1 + 40) + 8) + 24);
}

void sub_1000142CC(uint64_t a1)
{
  v13 = 0;
  if (*(a1 + 32))
  {
    v2 = "switching";
  }

  else
  {
    v2 = "pairing";
  }

  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, @"INTERNAL: Help Improve PairedSync Performance", [NSString stringWithFormat:@"Some information took longer than expected to sync while %s your Apple Watch. Help improve future sync performance by filing a report.", v2], @"File Radar", @"Ignore", 0, &v13);
  if ((v13 & 3) == 0)
  {
    v3 = [NSMutableString stringWithString:@"tap-to-radar://new"];
    [v3 appendString:@"?Title=TTR: PairedSync Timeout for Triage"];
    [v3 appendFormat:@"&ComponentID=%@&ComponentName=%@&ComponentVersion=%@", &off_10002E6A0, @"Pepper PairedSync", @"Timeout Triage"];
    [v3 appendString:@"&Classification=Performance&Reproducibility=I Didn't Try"];
    if (*(a1 + 32))
    {
      v4 = "reunion";
    }

    else
    {
      v4 = "initial";
    }

    v5 = [NSString stringWithFormat:@"One or more PairedSync clients timed out during %s sync.", v4];
    [v3 appendFormat:@"&Description=%@", v5];

    [v3 appendString:{@"&AutoDiagnostics=phone, watch"}];
    v6 = +[NSCharacterSet URLQueryAllowedCharacterSet];
    v7 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v6];

    v8 = psd_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = psd_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "TTR URL: %@", buf, 0xCu);
      }
    }

    v11 = [NSURL URLWithString:v7];
    v12 = +[LSApplicationWorkspace defaultWorkspace];
    [v12 openURL:v11];
  }
}

void sub_1000145EC(id a1)
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"disableSyncShame", @"com.apple.PairedSync", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    byte_100037DC8 = AppBooleanValue != 0;
  }
}

void sub_1000150C4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = +[PSDaemon sharedInstance];
    [v1 setShouldRelaunch:0];
  }
}

void sub_100015190(uint64_t a1)
{
  [*(a1 + 32) _abortRunningActivities];
  [*(a1 + 32) _queue_cleanup];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PSDSchedulerDidCancelNotification" object:0];
}

void sub_10001557C(uint64_t a1)
{
  v2 = [*(a1 + 32) activityInfo];
  v3 = [v2 label];

  v4 = [*(*(a1 + 40) + 8) activityForLabel:v3];
  v19 = 0;
  v5 = [PDRConnectivityStatus getDropoutCounter:&v19];
  v6 = 1;
  if (([v4 sawADropout] & 1) == 0 && (v5 & 1) == 0)
  {
    v7 = [v4 startDropoutCount];
    v6 = v7 != v19;
  }

  v8 = [PSYSyncSessionActivity alloc];
  v9 = [v4 activityInfo];
  [v4 activityProgress];
  v11 = v10;
  v12 = [v4 error];
  LOBYTE(v17) = v6;
  v13 = [v8 initWithActivityInfo:v9 progress:v12 error:objc_msgSend(v4 state:"activityState") finishedSending:1 interruptionCount:objc_msgSend(v4 startDropoutCount:"interruptionCount") sawADropout:{objc_msgSend(v4, "startDropoutCount"), v11, v17}];

  [*(a1 + 40) _queue_updateSyncSessionActivity:v13];
  if ([v3 isEqualToString:@"com.apple.pairedsync.nanoprefsyncdfirst"])
  {
    v14 = psd_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = psd_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "nanopreferences completed sending out. Checking if we can scheudle more", buf, 2u);
      }
    }

    *(*(a1 + 40) + 32) = 1;
    [*(a1 + 40) _scheduleNextActivityIfPossible];
  }
}

void sub_100015C64(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015D44;
  v8[3] = &unk_10002CDD8;
  v7 = *(a1 + 48);
  v4 = v7;
  v9 = v7;
  v8[4] = *(a1 + 32);
  v5 = objc_retainBlock(v8);
  v6 = v5;
  if (v3)
  {
    [v3 scheduler:*(a1 + 32) didClearSyncSession:*(a1 + 40) withBlock:v5];
  }

  else
  {
    (v5[2])(v5);
  }
}

void sub_100015D44(void *a1)
{
  if (atomic_fetch_add((*(a1[6] + 8) + 24), 0xFFFFFFFF) == 1)
  {
    v3 = a1[5];
    if (v3)
    {
      v7 = v1;
      v8 = v2;
      v4 = *(a1[4] + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100015DF8;
      block[3] = &unk_10002CCF8;
      v6 = v3;
      dispatch_async(v4, block);
    }
  }
}

void sub_100015FD4(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForProperty:PDRDevicePropertyKeyWatchBuddyStage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 unsignedIntValue];
    if ((v3 & 2) != 0 && (*(*(a1 + 40) + 33) & 1) == 0)
    {
      v8 = psd_log();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

      if (v9)
      {
        v10 = psd_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Buddy past Apple ID", buf, 2u);
        }
      }

      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    *(*(a1 + 40) + 33) = (v3 & 2) >> 1;
    if ((v3 & 1) != 0 && (*(*(a1 + 40) + 34) & 1) == 0)
    {
      v11 = psd_log();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        v13 = psd_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Buddy past Activation", v25, 2u);
        }
      }

      v4 = 1;
    }

    *(*(a1 + 40) + 34) = v3 & 1;
    if ((v3 & 4) != 0 && (*(*(a1 + 40) + 35) & 1) == 0)
    {
      v14 = psd_log();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

      if (v15)
      {
        v16 = psd_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Buddy past install all apps selection", v24, 2u);
        }
      }

      v4 = 1;
    }

    *(*(a1 + 40) + 35) = (v3 & 4) >> 2;
    v17 = v3 & 8;
    v18 = *(a1 + 40);
    if ((v3 & 8) != 0 && (*(v18 + 36) & 1) == 0)
    {
      v19 = psd_log();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (v20)
      {
        v21 = psd_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Buddy past apple pay offering", v23, 2u);
        }
      }

      *(*(a1 + 40) + 36) = v17 >> 3;
    }

    else
    {
      *(v18 + 36) = (v3 & 8) >> 3;
      if ((v4 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v22 = *(a1 + 40);
    if (v22[1])
    {
      [v22 _scheduleNextActivityIfPossible];
    }
  }

  else
  {
    v5 = psd_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = psd_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10001B8BC();
      }
    }
  }

LABEL_39:
}

uint64_t sub_100016B74(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_10002CE20 + a1);
  }
}

void sub_1000175D4(id a1)
{
  v4[0] = @"PSYWatchSyncState";
  v4[1] = @"PSYWatchSyncClientState";
  v1 = [NSArray arrayWithObjects:v4 count:2];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1000380B0;
  qword_1000380B0 = v2;
}

id sub_100018010(uint64_t a1)
{
  v2 = psy_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = psy_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PSDSyncSessionObserver: invalidation handler called", v6, 2u);
    }
  }

  return [*(*(a1 + 32) + 8) setExportedObject:0];
}

uint64_t sub_100018174(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(*(a1 + 32) + 32) syncSession];
  v3 = *(*(a1 + 32) + 16);
  if (v3 != v2)
  {
    obj = v2;
    if (([v3 isEqual:v2] & 1) == 0)
    {
      v4 = [*(a1 + 32) observer];
      [v4 updateSyncSession:obj];

      objc_storeStrong((*(a1 + 32) + 16), obj);
    }
  }

  return _objc_release_x1();
}

void sub_1000182C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {
    v20 = [*(v2 + 32) syncSession];
    v3 = +[NSMutableSet set];
    v4 = +[PSYRegistrySingleton registry];
    v5 = [v4 getPairedDevices];

    v6 = +[PSDSyncStateManager sharedSyncStateManager];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v21 + 1) + 8 * v11) pairingID];
          v13 = [v6 isSyncCompleteForPairingID:v12];
          v14 = [v13 BOOLValue];

          if (v14)
          {
            [v3 addObject:v12];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 40) + 16))();
    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    *(v15 + 16) = v20;
  }

  else
  {
    v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(v2 + 8) processIdentifier]);
    v3 = [NSString stringWithFormat:@"Client for pid %@ is missing entitlement %@", v17, @"com.apple.pairedsync.progressObserver"];

    v18 = *(a1 + 40);
    v19 = PSYErrorDomain;
    v26 = NSLocalizedDescriptionKey;
    v27 = v3;
    v7 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v6 = [NSError errorWithDomain:v19 code:3 userInfo:v7];
    (*(v18 + 16))(v18, 0, 0, v6);
  }
}

void sub_10001860C(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 syncSessionWillStart:*(a1 + 40)];

  v3 = *(a1 + 40);
  v4 = (*(a1 + 32) + 16);

  objc_storeStrong(v4, v3);
}

void sub_1000186F8(uint64_t a1)
{
  v2 = [*(a1 + 32) updatedSession];
  v3 = [*(a1 + 40) observer];
  [v3 updateSyncSession:v2];

  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  *(v4 + 16) = v2;
}

uint64_t sub_10001882C(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 invalidateSyncSession:*(a1 + 40)];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

id sub_1000188E8(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  v12 = objc_alloc_init(NSFileManager);
  v3 = [v12 contentsOfDirectoryAtURL:v1 includingPropertiesForKeys:0 options:1 error:0];
  v4 = [v3 pathsMatchingExtensions:&off_10002E6C0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [NSDictionary dictionaryWithContentsOfURL:*(*(&v13 + 1) + 8 * i)];
        v10 = [PSYActivityInfo activityWithPlist:v9];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v2;
}

void sub_100018D8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = psy_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = psy_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PSDSwitchAssertionManager: Got switch assertion %@ with error %@", &v12, 0x16u);
    }
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  *(v10 + 8) = v6;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[PSDaemon sharedInstance];
  objc_autoreleasePoolPop(v0);
  [v1 run];

  return 0;
}

void sub_100019278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000192B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];

  if (v2)
  {
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100019374;
    block[3] = &unk_10002C840;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

id sub_100019374(uint64_t a1)
{
  v2 = psd_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = psd_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Connection was invalidated for %{public}@.", &v7, 0xCu);
    }
  }

  return [*(a1 + 32) setConnection:0];
}

void sub_10001958C(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001969C;
  block[3] = &unk_10002CF00;
  v14 = v4;
  v12 = a1[4];
  v6 = a1[6];
  v7 = a1[5];
  v8 = a1[7];
  *&v9 = v6;
  *(&v9 + 1) = v8;
  *&v10 = v12;
  *(&v10 + 1) = v7;
  v15 = v10;
  v16 = v9;
  v11 = v4;
  dispatch_async(v5, block);
}

id sub_10001969C(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (!v3)
  {
    return [v2 _beginSyncJustDoItWithOptions:a1[6] completion:a1[8] interruptionHandler:a1[7]];
  }

  v4 = a1[7];
  return [v2 _handleInterruptionWithError:? interruptionHandler:?];
}

void sub_1000197CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000198A8;
  v9[3] = &unk_10002CF50;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v4;
  v11 = v6;
  v12 = v7;
  v13 = *(a1 + 48);
  v8 = v4;
  dispatch_async(v5, v9);
}

id sub_1000198A8(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (!v3)
  {
    return [v2 _abortSyncJustDoItWithCompletion:a1[7] interruptionHandler:a1[6]];
  }

  v4 = a1[6];
  return [v2 _handleInterruptionWithError:? interruptionHandler:?];
}

void sub_100019A24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019AEC;
  block[3] = &unk_10002C908;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_100019AFC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100019BD0;
  v10[3] = &unk_10002CFC8;
  v7 = *(a1 + 40);
  v14 = a2;
  v8 = *(a1 + 32);
  v11 = v5;
  v12 = v8;
  v13 = v7;
  v9 = v5;
  dispatch_async(v6, v10);
}

id sub_100019BD0(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v4 = psd_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = psd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - invalidating the connection as part of our completion block.", &v9, 0xCu);
    }
  }

  return [*(*(a1 + 40) + 32) invalidate];
}

void sub_100019DEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019EB4;
  block[3] = &unk_10002C908;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_100019EC4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100019F98;
  v10[3] = &unk_10002CFC8;
  v7 = *(a1 + 40);
  v14 = a2;
  v8 = *(a1 + 32);
  v11 = v5;
  v12 = v8;
  v13 = v7;
  v9 = v5;
  dispatch_async(v6, v10);
}

id sub_100019F98(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v4 = psd_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = psd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - invalidating the connection as part of our completion block.", &v9, 0xCu);
    }
  }

  return [*(*(a1 + 40) + 32) invalidate];
}

void sub_10001A6DC(id a1)
{
  qword_1000380C0 = objc_alloc_init(PSDFileManager);

  _objc_release_x1();
}

void sub_10001A9FC(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[PSDSyncRestrictionNotifier notifyTokenWithName:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Failed to get notify token for %{public}@", &v2, 0x16u);
}

void sub_10001AA88(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Can't update token %{public}@, == NOTIFY_TOKEN_INVALID", &v2, 0xCu);
}

void sub_10001AB28(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[PSDSyncInitiator registerNotifyTokenWithName:withQueue:withBlock:]";
  v4 = 2082;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Failed to register block and get notify token for %{public}s", &v2, 0x16u);
}

void sub_10001ABB4(void *a1)
{
  v1 = [a1 UUIDString];
  sub_100006308(&_mh_execute_header, v2, v3, "Failed to create NPSDomainAccessor for pairingID %{public}@ while reading initial sync status", v4, v5, v6, v7, 2u);
}

void sub_10001AC3C(void *a1)
{
  v1 = [a1 psy_safeDescription];
  sub_100006308(&_mh_execute_header, v2, v3, "Could not save resume context after starting sync session: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_10001AD18(void *a1, NSObject *a2)
{
  v3 = [a1 psy_safeDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PSDSchedulerAWDLogger - error clearing session state %{public}@", &v4, 0xCu);
}

void sub_10001AED8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Setting sync state complete for pairingID %{public}@", &v2, 0xCu);
}

void sub_10001AF94(id *a1)
{
  v6 = [*a1 UUIDString];
  sub_10000B1AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10001B028(void *a1)
{
  v6 = [a1 UUIDString];
  sub_10000B1AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10001B0CC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Caught exception (%{public}@) unarchiving legacy sync state.", buf, 0xCu);
}

void sub_10001B124(uint64_t a1, void *a2)
{
  v7 = [a2 psy_safeDescription];
  sub_10000B1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10001B25C(void *a1, NSObject *a2)
{
  v3 = [a1 psy_safeDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PSDSchedulerCoreAnalyticsLogger - error clearing session state %{public}@", &v4, 0xCu);
}

void sub_10001B2F4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PSDSchedulerCoreAnalyticsLogger - asked to log duration for activity %{public}@ but didn't have one.", &v2, 0xCu);
}

void sub_10001B3B0()
{
  sub_1000165CC();
  sub_100009744();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001B3EC()
{
  sub_1000165CC();
  sub_100009744();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001B454(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) activityInfo];
  v4 = [v3 label];
  v5 = [a2 psy_safeDescription];
  sub_1000165B4();
  sub_10000B1AC();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10001B514(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) activityInfo];
  v4 = [v3 label];
  v5 = [a2 psy_safeDescription];
  sub_1000165B4();
  sub_10000B1AC();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10001B5D4(void *a1)
{
  v1 = [a1 activityInfo];
  v2 = [v1 label];
  sub_1000165D8();
  sub_10000B1AC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10001B678()
{
  sub_1000165CC();
  sub_100009744();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001B6B4(uint64_t a1, void *a2)
{
  [a2 interruptionCount];
  sub_10000B1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10001B74C()
{
  sub_1000165D8();
  v3 = 2080;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Activity %{public}@ timed out - moving on to next activity. dropout=%s", v2, 0x16u);
}

void sub_10001B7E8()
{
  sub_1000165D8();
  sub_100009744();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001B880()
{
  sub_1000165CC();
  sub_100009744();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001B8BC()
{
  sub_1000165D8();
  sub_100009744();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001B940(void *a1, NSObject *a2)
{
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a1 processIdentifier]);
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Client %{public}@ is not entitled to be a progress observer", &v4, 0xCu);
}

void sub_10001B9EC(void *a1, NSObject *a2)
{
  v3 = [a1 activityInfo];
  v4 = [v3 label];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@ sent NaN progress", &v5, 0xCu);
}