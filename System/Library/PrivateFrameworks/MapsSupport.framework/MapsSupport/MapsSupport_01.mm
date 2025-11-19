void sub_10002FDE4(id a1)
{
  v1 = MNGetProcessHandlingLog();
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProcessMemoryPressureWarning", " enableTelemetry=YES ", v2, 2u);
  }
}

void sub_10002FE5C(id a1)
{
  v1 = MNGetProcessHandlingLog();
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProcessMemoryPressureCritical", " enableTelemetry=YES ", v2, 2u);
  }
}

void sub_100030054(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 8) = 0;
    v1 = objc_alloc_init(NavdNotificationManager);
    [(NavdNotificationManager *)v1 clearMapsSuggestionsBulletin];
  }
}

void sub_1000301B0(void *a1)
{
  if ((*(a1[4] + 8) & 1) == 0)
  {
    v2 = objc_alloc_init(NavdNotificationManager);
    [(NavdNotificationManager *)v2 showMapsSuggestionsBulletinWithTitle:a1[5] message:a1[6] actionURL:a1[7]];

    *(a1[4] + 8) = 1;
  }
}

void sub_1000302B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    sub_100030054(WeakRetained);
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "NavdRealVehicleBluetoothNotifier.mm";
      v6 = 1026;
      v7 = 53;
      v8 = 2082;
      v9 = "[NavdRealVehicleBluetoothNotifier clear]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongself went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_100030464(id a1)
{
  v1 = [MapsSuggestionsNavdLBALocationManager alloc];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("MapsSuggestionsNavdLBALocationManagerQueue", v5);
  v3 = [(MapsSuggestionsNavdLBALocationManager *)v1 initWithName:@"MapsSuggestionsNavdLBALocationManager" queue:v2];
  v4 = qword_1000759A8;
  qword_1000759A8 = v3;
}

void sub_10003063C(id a1)
{
  v1 = +[MNFilePaths navdCacheDirectoryPath];
  v2 = qword_1000759B8;
  qword_1000759B8 = v1;

  v10 = 0;
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:qword_1000759B8 isDirectory:&v10];
  v5 = v10;

  if ((v4 & 1) == 0 && !v5)
  {
    v6 = +[NSFileManager defaultManager];
    v9 = 0;
    [v6 createDirectoryAtPath:qword_1000759B8 withIntermediateDirectories:1 attributes:0 error:&v9];
    v7 = v9;

    if (v7)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v12 = qword_1000759B8;
        v13 = 2114;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot create cache dir at: %{public}@, error: %{public}@", buf, 0x16u);
      }
    }
  }
}

void sub_100030B20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NavdLocationAuthorizationMonitor sharedMonitor];
  if ([v4 isAuthorizedForLocationWithClientBundleIdentifier:*(*(a1 + 32) + 40)])
  {

    goto LABEL_4;
  }

  v5 = [*(a1 + 32) checkDebugEntitlement];

  if (v5)
  {
LABEL_4:
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  [v3 _clearHypothesisAndSetErrorWithCode:-1502];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
LABEL_7:
    v7 = [v3 description];
    v8 = 138477827;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Calling update handler with hypothesis: %{private}@", &v8, 0xCu);
  }

LABEL_8:

  [*(*(a1 + 32) + 24) navdProxyReceivedHypothesis:v3 forClient:*(a1 + 40)];
}

void sub_100031470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000314A0(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "InvalidationHandler called.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100031604;
  v11 = &unk_1000650C0;
  v12 = v4;
  v13 = WeakRetained;
  v6 = WeakRetained;
  dispatch_sync(v5, &v8);
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "InvalidationHandler called (peer removed).", buf, 2u);
  }

  [*(*(a1 + 32) + 16) shouldPostDarwinNotificationForNextUpdate:{1, v8, v9, v10, v11, v12}];
}

void sub_100031C38(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Arrival airport offline area is not in a supported market", &v9, 2u);
    }
  }

  else
  {
    [*(a1[4] + 16) spendNow];
    v5 = a1[5];
    v3 = MapsSuggestionsLocalizedTitleFormatForAirportArrivalNotification();
    v6 = MapsSuggestionsLocalizedMessageForAirportArrivalNotification();
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Now telling mapspushd to display notification with the following data:\nTitle: %@\nMessage: %@", &v9, 0x16u);
    }

    v8 = objc_alloc_init(NavdNotificationManager);
    [(NavdNotificationManager *)v8 showAirportArrivalBulletinWithTitle:v3 message:v6 mapRegion:a1[6] regionName:a1[5]];
  }
}

uint64_t NavdDoomCanRun()
{
  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    *v19 = 0;
    v14 = "NavdDoomCanRun is explicitly NO (via NavdDoomRoutesEnabledKey).";
    goto LABEL_18;
  }

  v0 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.Maps" allowPlaceholder:0 error:0];
  v1 = [v0 applicationState];
  v2 = [v1 isInstalled];

  if ((v2 & 1) == 0)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    *v19 = 0;
    v14 = "NavdDoomCanRun is implicitly NO (via isInstalled).";
    goto LABEL_18;
  }

  v3 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
  v4 = [v3 hasLocationAccess];

  if (v4)
  {
    v5 = +[MNFamiliarRouteAuthorizationChecker isEligible];
    v6 = GEOFindOrCreateLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if ((v5 & 1) == 0)
    {
      if (!v7)
      {
        goto LABEL_22;
      }

      *v19 = 0;
      v15 = "Device is NOT eligible to run DOoM. OS Eligibility says so.";
      goto LABEL_21;
    }

    if (v7)
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Device __IS__ eligible to run DOoM. OS Eligibility says so. Checking more conditions.", v19, 2u);
    }

    v8 = +[GEOCountryConfiguration sharedConfiguration];
    v9 = [v8 currentCountrySupportsCommute];

    if (v9)
    {
      v10 = GEOGetUserTransportTypePreference();
      if (v10 > 4 || ((1 << v10) & 0x16) == 0)
      {
        if (qword_1000759D0 != -1)
        {
          sub_10003EA8C();
        }

        v18 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "_mapsNotifactionsEnabled", v19, 2u);
        }

        if (qword_1000759C8)
        {
          v6 = [qword_1000759C8 notificationSettings];
          if ([v6 authorizationStatus]== 2 && ([v6 alertSetting]!= 1 || [v6 notificationCenterSetting]== 2 || [v6 lockScreenSetting]== 2))
          {
            v16 = 1;
            goto LABEL_23;
          }
        }

        else
        {
          v6 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "navd unable to access notification center for Maps app settings", v19, 2u);
          }
        }

        v11 = GEOFindOrCreateLog();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_29;
        }

        *v19 = 0;
        v12 = "NavdDoomCanRequestDirections is implicitly NO (via NotificationCenter).";
        goto LABEL_28;
      }

      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *v19 = 0;
        v12 = "NavdDoomCanRequestDirections is implicitly NO (via GEOTransportTypePreference).";
LABEL_28:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, v12, v19, 2u);
      }
    }

    else
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *v19 = 0;
        v12 = "NavdDoomCanRequestDirections is explicitly NO (via GEOCountryConfiguration).";
        goto LABEL_28;
      }
    }

LABEL_29:

    v6 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    *v19 = 0;
    v15 = "NavdDoomCanRequestDirections is explicitly NO (via primary kill-switch).";
    goto LABEL_21;
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *v19 = 0;
    v14 = "NavdDoomCanRun is implicitly NO (via NavdMapsHasLocationAccess).";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, v14, v19, 2u);
  }

LABEL_19:

  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v19 = 0;
    v15 = "NavdDoomCanRun is implicitly NO.";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, v15, v19, 2u);
  }

LABEL_22:
  v16 = 0;
LABEL_23:

  return v16;
}

void sub_100032300(id a1)
{
  qword_1000759C8 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.Maps"];

  _objc_release_x1();
}

id sub_1000323E0(uint64_t a1)
{
  v4 = @"value";
  v1 = [NSNumber numberWithUnsignedInteger:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_1000326B4(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = a1;
  v8 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:v7];

  [v8 setPriority:2];
  [v8 setRequiresExternalPower:0];
  [v8 setRequiresNetworkConnectivity:a2];
  if (a2)
  {
    [v8 setRequiresInexpensiveNetworkConnectivity:0];
    v9 = NavigationConfig_NavdXPCDownloadSizeBytes[1];
    [v8 setNetworkDownloadSize:GEOConfigGetInteger()];
    [v8 setNetworkUploadSize:0];
  }

  [v8 setShouldWakeDevice:1];
  [v8 setScheduleAfter:a3];
  [v8 setTrySchedulingBefore:a4 + a3];

  return v8;
}

void sub_1000328D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_100032A80(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100033604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100033628(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) coordinate];
      v18 = v17;
      [*(a1 + 32) coordinate];
      *buf = 134218498;
      v28 = v18;
      v29 = 2048;
      *v30 = v19;
      *&v30[8] = 2112;
      *&v30[10] = v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to Request Waypoint for location <%.6f,%.6f> with error:%@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v10 = *(WeakRetained + 1);
      v11 = *(a1 + 72);
      v12 = *(a1 + 40);
      v13 = [*(a1 + 48) automobileOptions];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100033B50;
      v21[3] = &unk_1000678E8;
      v14 = &v22;
      v22 = *(a1 + 32);
      v15 = &v23;
      v23 = *(a1 + 56);
      [v10 ETAFromWaypoint:v5 toWaypoint:v12 transportType:v11 automobileOptions:v13 completion:v21];
    }

    else
    {
      v20 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v28 = "NavdNetworkRequester.m";
        v29 = 1026;
        *v30 = 154;
        *&v30[4] = 2082;
        *&v30[6] = "[NavdNetworkRequester requestEtaForWaypoint:at:transportType:attributes:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
      }

      v25[1] = _NSConcreteStackBlock;
      v25[2] = 3221225472;
      v25[3] = sub_100033978;
      v25[4] = &unk_1000660A0;
      v14 = &v26;
      v26 = *(a1 + 56);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100033A64;
      v24[3] = &unk_1000660A0;
      v15 = v25;
      v25[0] = *(a1 + 56);
      sub_100033A64(v24);
    }
  }
}

void sub_100033978(uint64_t a1)
{
  v2 = [NSError alloc];
  v3 = GEOErrorDomain();
  v6 = NSLocalizedFailureReasonErrorKey;
  v7 = @"Self went away";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v5 = [v2 initWithDomain:v3 code:-13 userInfo:v4];

  (*(*(a1 + 32) + 16))();
}

void sub_100033A64(uint64_t a1)
{
  v2 = [NSError alloc];
  v3 = GEOErrorDomain();
  v6 = NSLocalizedFailureReasonErrorKey;
  v7 = @"Self went away";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v5 = [v2 initWithDomain:v3 code:-13 userInfo:v4];

  (*(*(a1 + 32) + 16))();
}

void sub_100033B50(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) coordinate];
      v10 = v9;
      [*(a1 + 32) coordinate];
      v12 = 134218498;
      v13 = v10;
      v14 = 2048;
      v15 = v11;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to Request ETA for location <%.6f,%.6f> with error:%@", &v12, 0x20u);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

void sub_100034090(uint64_t a1)
{
  if ([*(*(a1 + 32) + 56) hasBeenFulfilled] && !objc_msgSend(*(*(a1 + 32) + 56), "failed"))
  {
    v3 = *(a1 + 32);
    v4 = [v3[7] location];
    [v3 _updateWithLocation:v4];

    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = 0;
  }

  else
  {
    v2 = *(a1 + 32);

    [v2 _setState:0];
  }
}

void sub_1000348AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, char a19)
{
  objc_sync_exit(v19);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_100034910(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      if (*(a1 + 56))
      {
        v6 = 1;
      }

      else
      {
        v6 = [v5 localUpdatesOnly];
      }

      [v5 _recievedUpdatedHypothesis:v7 updateRefreshTimeStamp:v6];
      dispatch_group_leave(*(a1 + 32));
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    objc_sync_exit(v5);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

id sub_10003525C(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 localUpdatesOnly];
  if (result)
  {
    ++*(*(a1 + 32) + 48);
  }

  return result;
}

void sub_1000360F8(id a1)
{
  qword_1000759D8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Maps.commute"];

  _objc_release_x1();
}

void sub_100036420(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[NavdLocationLeecher sharedLeecher];
    [v2 removeObserver:WeakRetained];

    v3 = GEOConfigMapsSuggestionsLocationManagerSLCEnabled[1];
    BOOL = GEOConfigGetBOOL();
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      if (BOOL)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] SLC Enabled? %@", &v14, 0xCu);
    }

    if (BOOL)
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] Stopping SLC monitoring", &v14, 2u);
      }

      [WeakRetained[1] stopMonitoringSignificantLocationChanges];
    }

    v8 = GEOConfigMapsSuggestionsLocationManagerVMEnabled[1];
    v9 = GEOConfigGetBOOL();
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (v9)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] VM Enabled? %@", &v14, 0xCu);
    }

    if (v9)
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] Stopping visit monitoring", &v14, 2u);
      }

      [WeakRetained[1] stopMonitoringVisits];
    }
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446722;
      v15 = "MapsSuggestionsNavdLocationManager.m";
      v16 = 1026;
      v17 = 92;
      v18 = 2082;
      v19 = "[MapsSuggestionsNavdLocationManager onStopImplementation]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v14, 0x1Cu);
    }
  }
}

void sub_100036894(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateLocationIfAllowed:*(a1 + 32)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsNavdLocationManager.m";
      v7 = 1026;
      v8 = 132;
      v9 = 2082;
      v10 = "[MapsSuggestionsNavdLocationManager locationLeecher:receivedLocation:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_100036CDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (MapsSuggestionsIsValidVisit())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      -[NSObject considerMyAllowanceAsLimited:](WeakRetained, "considerMyAllowanceAsLimited:", [*(a1 + 40) _hasMapsCoarseLocationEnabled]);
      [WeakRetained considerMyNewVisit:*(a1 + 32)];
    }

    else
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 136446722;
        v7 = "MapsSuggestionsNavdLocationManager.m";
        v8 = 1026;
        v9 = 177;
        v10 = 2082;
        v11 = "[MapsSuggestionsNavdLocationManager locationManager:didVisit:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
      }
    }
  }

  else
  {
    WeakRetained = GEOFindOrCreateLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Dropping invalid visit: %@", &v6, 0xCu);
    }
  }
}

BOOL sub_100037CAC(id a1, MapsSuggestionsEntry *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MapsSuggestionsOfflineService);
  v4 = [(MapsSuggestionsOfflineService *)v3 shouldKeepEntryWhenOffline:v2];

  return v4;
}

void sub_100037FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10003804C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = MapsSuggestionsCurrentBestLocation();

    if (v5)
    {
      [WeakRetained[10] stop];
      v6 = WeakRetained[10];
      WeakRetained[10] = 0;

      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Received a location, starting streamers", &v16, 2u);
      }

      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      startEventKitStreamer();
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      startWalletStreamer();
      v3[2](v3, 0);
    }

    else
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Got called with a location but somehow MapsSuggestionsCurrentBestLocation() is still nil. Restarting location updates.", &v16, 2u);
      }

      v14 = WeakRetained[10];
      v15 = GEOConfigNavdVenueAnnouncerLocationForceTime[1];
      GEOConfigGetDouble();
      [v14 restartWithUpdateTime:?];
    }
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446722;
      v17 = "NavdVenueAnnouncer.mm";
      v18 = 1026;
      v19 = 342;
      v20 = 2082;
      v21 = "[NavdVenueAnnouncer _startStreamersWithNotificationName:resourceDepot:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v16, 0x1Cu);
    }
  }
}

void sub_100038400(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _processEntries:*(a1 + 32)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "NavdVenueAnnouncer.mm";
      v7 = 1026;
      v8 = 401;
      v9 = 2082;
      v10 = "[NavdVenueAnnouncer engineRunner:stoppedWithEntries:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_10003930C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 32) departingAirportCode];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Left Airport:%@, cleaning up", &v8, 0xCu);
    }

    [WeakRetained cleanupAirportArrival];
    v3[2](v3, 0);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "NavdVenueAnnouncer.mm";
      v10 = 1026;
      v11 = 550;
      v12 = 2082;
      v13 = "[NavdVenueAnnouncer _startTrackingLeavingTheAirport:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void sub_100039B00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v4) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Offline notification sent, cleaning up", &v4, 2u);
    }

    [WeakRetained cleanupAirportArrival];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "NavdVenueAnnouncer.mm";
      v6 = 1026;
      v7 = 576;
      v8 = 2082;
      v9 = "[NavdVenueAnnouncer _setupOfflineDownloadNotificationCircuitForEntry:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_10003A138(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 32) arrivingAirportCode];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Arrived at Airport:%@", &v9, 0xCu);
    }

    v7 = *(WeakRetained + 14);
    *(WeakRetained + 14) = 0;

    [WeakRetained _setupOfflineDownloadNotificationCircuitForEntry:*(a1 + 32)];
    [WeakRetained _startTrackingLeavingTheAirport:*(a1 + 32)];
    [*(WeakRetained + 9) fire];
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446722;
      v10 = "NavdVenueAnnouncer.mm";
      v11 = 1026;
      v12 = 618;
      v13 = 2082;
      v14 = "[NavdVenueAnnouncer _trackArrivalAirportForEntry:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v9, 0x1Cu);
    }
  }
}

void sub_10003A32C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [*(a1 + 32) arrivingAirportCode];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Arrival at %@ timed out", &v6, 0xCu);
    }

    [WeakRetained cleanupAirportArrival];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "NavdVenueAnnouncer.mm";
      v8 = 1026;
      v9 = 633;
      v10 = 2082;
      v11 = "[NavdVenueAnnouncer _trackArrivalAirportForEntry:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void sub_10003A654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10003A69C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (v6 || ![v5 count])
    {
      v8 = [v6 description];
      [WeakRetained _logStateForStep:@"no Terminal found" stopReason:v8];
    }

    else
    {
      v10 = [v5 firstObject];
      [a1[4] setGeoMapItem:v10];

      [a1[5] _fireNotificationIfAtEntry:a1[4]];
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446722;
      v12 = "NavdVenueAnnouncer.mm";
      v13 = 1026;
      v14 = 660;
      v15 = 2082;
      v16 = "[NavdVenueAnnouncer _treatAirportEntry:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v11, 0x1Cu);
    }
  }
}

void sub_10003A950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v16 - 40));

  _Unwind_Resume(a1);
}

void sub_10003A980(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6 || ![v5 count])
    {
      v8 = [v6 description];
      [WeakRetained _logStateForStep:@"no Airport found" stopReason:v8];

      [WeakRetained _fireNotificationIfAtEntry:*(a1 + 32)];
    }

    else
    {
      v10 = [v5 firstObject];
      v11 = [v10 _venueInfo];
      v12 = [v11 venueIdentifier];

      if (!v12)
      {
        [WeakRetained _logStateForStep:@"Airport is not avenue stopReason:{using Terminal", 0}];
        [WeakRetained _fireNotificationIfAtEntry:*(a1 + 32)];
      }

      v13 = [v5 firstObject];
      v14 = [v13 _browseCategories];
      v15 = [v14 count];

      if (!v15)
      {
        [WeakRetained _logStateForStep:@"Airport has no Browse info stopReason:{using Terminal", 0}];
        [WeakRetained _fireNotificationIfAtEntry:*(a1 + 32)];
      }

      v16 = [v5 firstObject];
      [*(a1 + 32) setGeoMapItem:v16];

      [WeakRetained _treatAirportEntry:*(a1 + 32)];
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 136446722;
      v18 = "NavdVenueAnnouncer.mm";
      v19 = 1026;
      v20 = 675;
      v21 = 2082;
      v22 = "[NavdVenueAnnouncer _treatTerminalEntry:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v17, 0x1Cu);
    }
  }
}

void sub_10003AD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v16 - 40));

  _Unwind_Resume(a1);
}

void sub_10003AD30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6 || ![v5 count])
    {
      v8 = [v6 description];
      [WeakRetained _logStateForStep:@"no Airport found" stopReason:v8];

      v9 = *(a1 + 32);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10003AFA0;
      v12[3] = &unk_100067A10;
      objc_copyWeak(&v14, (a1 + 40));
      v13 = *(a1 + 32);
      [WeakRetained _terminalMapItemForEntry:v9 completion:v12];

      objc_destroyWeak(&v14);
    }

    else
    {
      v11 = [v5 firstObject];
      [*(a1 + 32) setGeoMapItem:v11];

      [WeakRetained _treatAirportEntry:*(a1 + 32)];
    }
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "NavdVenueAnnouncer.mm";
      v17 = 1026;
      v18 = 699;
      v19 = 2082;
      v20 = "[NavdVenueAnnouncer _treatGateEntry:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_10003AFA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6 || ![v5 count])
    {
      v8 = [v6 description];
      [WeakRetained _logStateForStep:@"no Terminal found" stopReason:v8];

      [WeakRetained _fireNotificationIfAtEntry:*(a1 + 32)];
    }

    else
    {
      v10 = [v5 firstObject];
      [*(a1 + 32) setGeoMapItem:v10];

      [WeakRetained _treatTerminalEntry:*(a1 + 32)];
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446722;
      v12 = "NavdVenueAnnouncer.mm";
      v13 = 1026;
      v14 = 703;
      v15 = 2082;
      v16 = "[NavdVenueAnnouncer _treatGateEntry:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v11, 0x1Cu);
    }
  }
}

void sub_10003B314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003B35C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || [v5 count] != 1)
  {
    v8 = [[NSString alloc] initWithFormat:@"Could not get Airport code in %u mapItems, error: %@", objc_msgSend(v5, "count"), v6];
    v10 = [NSError GEOErrorWithCode:-8 reason:v8];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v9 = WeakRetained[3];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003B63C;
      block[3] = &unk_100065AC0;
      objc_copyWeak(&v16, (a1 + 40));
      v14 = v5;
      v15 = *(a1 + 32);
      dispatch_async(v9, block);

      objc_destroyWeak(&v16);
    }

    else
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v18 = "NavdVenueAnnouncer.mm";
        v19 = 1026;
        v20 = 737;
        v21 = 2082;
        v22 = "[NavdVenueAnnouncer _airportMapItemForEntry:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
      }
    }
  }
}

void sub_10003B63C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) firstObject];
    v4 = MapsSuggestionsMapItemConvertIfNeeded();

    if (MapsSuggestionsMapItemIsAirport())
    {
      if ((MapsSuggestionsMapItemIsVenue() & 1) == 0)
      {
        v5 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v6 = [v4 name];
          *buf = 138412290;
          v15 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Airport '%@' is not a Venue, but that's ok", buf, 0xCu);
        }
      }

      v7 = *(a1 + 40);
      v13 = v4;
      v8 = [NSArray arrayWithObjects:&v13 count:1];
      (*(v7 + 16))(v7, v8, 0);
    }

    else
    {
      v9 = [NSString alloc];
      v10 = [v4 name];
      v8 = [v9 initWithFormat:@"Airport '%@' is not actually an Airport", v10];

      v11 = [NSError GEOErrorWithCode:-11 reason:v8];
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "NavdVenueAnnouncer.mm";
      v16 = 1026;
      v17 = 739;
      v18 = 2082;
      v19 = "[NavdVenueAnnouncer _airportMapItemForEntry:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v4 = v8;
  }
}

void sub_10003BB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003BB8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || [v5 count] != 1)
  {
    v8 = [[NSString alloc] initWithFormat:@"Could not get Terminal in %u mapItems, error: %@", objc_msgSend(v5, "count"), v6];
    v10 = [NSError GEOErrorWithCode:-8 reason:v8];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v9 = WeakRetained[3];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003BE6C;
      block[3] = &unk_100065AC0;
      objc_copyWeak(&v16, (a1 + 40));
      v14 = v5;
      v15 = *(a1 + 32);
      dispatch_async(v9, block);

      objc_destroyWeak(&v16);
    }

    else
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v18 = "NavdVenueAnnouncer.mm";
        v19 = 1026;
        v20 = 778;
        v21 = 2082;
        v22 = "[NavdVenueAnnouncer _terminalMapItemForEntry:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
      }
    }
  }
}

void sub_10003BE6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) firstObject];
    v4 = MapsSuggestionsMapItemConvertIfNeeded();

    if (MapsSuggestionsMapItemIsTerminal() && (MapsSuggestionsMapItemIsVenue() & 1) != 0)
    {
      v5 = *(a1 + 40);
      v11 = v4;
      v6 = [NSArray arrayWithObjects:&v11 count:1];
      (*(v5 + 16))(v5, v6, 0);
    }

    else
    {
      v7 = [NSString alloc];
      v8 = [v4 name];
      v6 = [v7 initWithFormat:@"Terminal '%@' is not actually an Terminal or venue", v8];

      v9 = [NSError GEOErrorWithCode:-11 reason:v6];
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "NavdVenueAnnouncer.mm";
      v14 = 1026;
      v15 = 780;
      v16 = 2082;
      v17 = "[NavdVenueAnnouncer _terminalMapItemForEntry:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v4 = v6;
  }
}

void sub_10003D6D0(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

uint64_t sub_10003D9DC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = v1[208];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id *sub_10003DA24(id *result)
{
  if (result)
  {
    v1 = result;
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10001A984(&_mh_execute_header, v3, v4, "Stopping RouteGenius", v5, v6, v7, v8, 0);
    }

    notify_post([@"RouteGeniusStopped" UTF8String]);
    [v1[8] unregisterAppTracker:v1];
    [v1[10] kickCanBySameTime];
    [v1[22] cancel];
    v9 = v1[13];
    v1[13] = 0;

    v10 = v1[14];
    v1[14] = 0;

    v11 = v1[17];
    v1[17] = 0;

    v12 = v1[16];
    v1[16] = 0;

    *(v1 + 152) = 0;
    v13 = v1[20];
    v1[20] = 0;

    v14 = v1[22];
    v1[22] = 0;

    v15 = v1[23];
    v1[23] = 0;

    v16 = v1[18];
    v1[18] = 0;

    *(v1 + 208) = 0;
    *(v1 + 153) = 0;
    v17 = v1[27];
    v1[27] = 0;

    v18 = v1[2];
    v1[2] = 0;

    return [v1[4] didUpdateRouteGenius:0];
  }

  return result;
}

void sub_10003DB58(dispatch_queue_t *val)
{
  if (val)
  {
    objc_initWeak(&location, val);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000160F4;
    block[3] = &unk_1000655F8;
    objc_copyWeak(&v3, &location);
    block[4] = val;
    dispatch_async(val[11], block);
    objc_destroyWeak(&v3);
    objc_destroyWeak(&location);
  }
}

void sub_10003DC04(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    v1 = obj[27];
    obj[27] = 0;

    objc_sync_exit(obj);
  }
}

void sub_10003DC74(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A9BC(&_mh_execute_header, v2, v3, "Unable to convert currentLocation in to geoLocation", v4, v5, v6, v7, 0);
  }
}

void sub_10003DCC4()
{
  sub_10001A9B0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A984(&_mh_execute_header, v3, v4, "We don't know where we are, so we can not get a route", v5, v6, v7, v8, 0);
  }

  *v0 = v1;
}

void sub_10003DD14()
{
  sub_10001A9B0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A984(&_mh_execute_header, v3, v4, "We have no entry to get a route for", v5, v6, v7, v8, 0);
  }

  *v0 = v1;
}

void sub_10003DD8C()
{
  sub_10001A9B0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10001A9A4();
    _os_log_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
  }

  *v0 = v1;
}

void sub_10003DDE8()
{
  sub_10001A9B0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_10001A9EC();
    sub_10001A9DC();
    sub_10001A9A4();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  *v0 = v1;
}

void sub_10003DEA8()
{
  sub_10001A9B0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_10001A9EC();
    sub_10001A9DC();
    sub_10001A9A4();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  *v0 = v1;
}

void sub_10003DF68(void *a1, uint64_t a2)
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A984(&_mh_execute_header, v4, v5, "Route loaded, all entries have routes", v6, v7, v8, v9, 0);
  }

  *(a2 + 153) = 1;
  sub_10003DB58(a2);
}

id sub_10003DFEC(void *a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A984(&_mh_execute_header, v3, v4, "No entries left after route loading, stopping RouteGenius", v5, v6, v7, v8, 0);
  }

  return [a1 stop];
}

void sub_10003E064(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "No route loaded for %@", buf, 0xCu);
}

void sub_10003E0BC(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A9BC(&_mh_execute_header, v2, v3, "///// Scoring Dump End/////", v4, v5, v6, v7, 0);
  }
}

void sub_10003E10C()
{
  sub_10001A9B0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10001A9A4();
    _os_log_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
  }

  *v0 = v1;
}

void sub_10003E168(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Route match's route does not match route parameter.", v2, 2u);
  }
}

void sub_10003E1C8(NSObject *a1, NSObject **a2, void *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    v6[0] = 136446978;
    sub_10001A9EC();
    *(&v6[3] + 2) = 1294;
    sub_10001A9DC();
    v7 = "nil == (route)";
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Unable to create ETATrafficUpdateRequest because route is nil.", v6, 0x26u);
  }

  *a3 = 0;
  *a2 = a1;
}

void sub_10003E2A0(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A9BC(&_mh_execute_header, v1, v2, "No routes, stopping route genius", v3, v4, v5, v6, 0);
  }
}

void sub_10003E2EC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Arrived at %@", buf, 0xCu);
}

void *sub_10003E344(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[5];
    if (!v3)
    {
      v4 = [MapsSuggestionsETARequirements alloc];
      v5 = GEOConfigNavdVehicleBTNotificationDestinationMaxAge[1];
      GEOConfigGetDouble();
      v7 = v6;
      v8 = GEOConfigNavdVehicleBTNotificationDestinationMaxDistance[1];
      GEOConfigGetDouble();
      v10 = v9;
      v11 = GEOConfigNavdVehicleBTNotificationDestinationMaxAccuracy[1];
      GEOConfigGetDouble();
      v13 = [v4 initWithMaxAge:v7 maxDistance:v10 minAccuracy:v12];
      v14 = v2[5];
      v2[5] = v13;

      v3 = v2[5];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void sub_10003E3F8(dispatch_queue_t *val, id *a2, void *a3)
{
  objc_initWeak(&location, val);
  *a2 = _NSConcreteStackBlock;
  a2[1] = 3221225472;
  a2[2] = sub_10001BCD8;
  a2[3] = &unk_100065AC0;
  objc_copyWeak(a2 + 6, &location);
  a2[4] = val;
  a2[5] = a3;
  dispatch_async(val[1], a2);

  objc_destroyWeak(a2 + 6);
  objc_destroyWeak(&location);
}

void sub_10003E4CC(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    v4 = 136446978;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/NavdVehicleBluetooth/NavdVehicleBluetoothConnectAction.mm";
    v6 = 1024;
    v7 = 357;
    v8 = 2082;
    v9 = "[NavdVehicleBluetoothConnectAction fireNotificationForDestination:]";
    v10 = 2082;
    v11 = "! [entry containsKey:MapsSuggestionsETAKey]";
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a destination with an ETA", &v4, 0x26u);
  }

  *a2 = a1;
}

uint64_t sub_10003E5A4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (MapsFeature_IsEnabled_LocationIntelligenceMaps() && +[MNFamiliarRouteAuthorizationChecker isEligible])
  {
    v1 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "OS_Eligibility for Bluetooth Notification: ELIGIBLE", &v6, 2u);
    }

    v2 = [MNFamiliarRouteAuthorizationChecker isAuthorizedForPurpose:1];
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = @"Not Authorized. Not running the Bluetooth Notification feature until navd restarts.";
      if (v2)
      {
        v4 = @"Authorized";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "FR Authorized for Bluetooth Notification: %@", &v6, 0xCu);
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "OS_Eligibility for Bluetooth Notification: NOT ELIGIBLE. Allowing feature to run.", &v6, 2u);
    }

    v2 = 1;
  }

  return v2;
}

void sub_10003E760(char a1, id *a2, id *from, id *a4)
{
  if (a1)
  {
    *a2 = _NSConcreteStackBlock;
    a2[1] = 3221225472;
    a2[2] = sub_10001E148;
    a2[3] = &unk_100065B78;
    objc_copyWeak(a2 + 10, from);
    v6 = a4[4];
    v7 = a4[5];
    v8 = a4[6];
    v9 = a4[7];
    *&v10 = v8;
    *(&v10 + 1) = v9;
    *&v11 = v6;
    *(&v11 + 1) = v7;
    *(a2 + 2) = v11;
    *(a2 + 3) = v10;
    a2[8] = a4[8];
    a2[9] = a4[9];
    dispatch_async(&_dispatch_main_q, a2);

    objc_destroyWeak(a2 + 10);
  }
}

void sub_10003E888(void **a1, void **a2, void *a3)
{
  v4 = *a1;
  *a1 = 0;

  v5 = *a2;
  *a2 = 0;

  objc_sync_exit(a3);
}

void sub_10003E8E8(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "No current Location", v2, 2u);
  }
}

void sub_10003E948(id a1)
{
  v8 = +[NSFileManager defaultManager];
  v1 = +[MNFilePaths navdCacheDirectoryPath];
  if ([v8 fileExistsAtPath:v1])
  {
    v2 = +[MNFilePaths fileAttributes];
    [v8 setAttributes:v2 ofItemAtPath:v1 error:0];
    v3 = [v8 enumeratorAtPath:v1];
    v4 = [v3 nextObject];
    if (v4)
    {
      v5 = v4;
      do
      {
        v6 = [v1 stringByAppendingPathComponent:v5];
        [v8 setAttributes:v2 ofItemAtPath:v6 error:0];

        v7 = [v3 nextObject];

        v5 = v7;
      }

      while (v7);
    }
  }
}

uint64_t MSg::jsonFor()
{
  return MSg::jsonFor();
}

{
  return MSg::jsonFor();
}