uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  xpc_track_activity();
  IMDSetIsRunningInDatabaseServerProcess();
  v1 = MKBDeviceUnlockedSinceBoot();
  v2 = IMOSLoggingEnabled();
  if (v1 == 1)
  {
    if (v2)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17[0]) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "ProtectionMerge: Device has been unlocked, loading real database", v17, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ProtectionDelete: Checking to see if we need to delete the temp db", v17, 2u);
      }
    }

    if (IMDPersistenceProtectionMerge_UnprotectedDatabaseExists())
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          LOWORD(v17[0]) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "ProtectionDelete: device unlocked after boot and need to delete temp db", v17, 2u);
        }
      }

      IMDPersistenceProtectionMerge_DeleteUnprotectedDatabase();
      notify_post("com.apple.imdpersistenceagent.notification.switchcompleted");
    }
  }

  else if (v1)
  {
    if (v2)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v17[0] = 67109120;
        v17[1] = v1;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "ProtectionMerge: unable to get device unlock state from MobileKeyBag: %d\n", v17, 8u);
      }
    }
  }

  else
  {
    if (v2)
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17[0]) = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "ProtectionMerge: Device has not been unlocked since boot, registering for lock state notifications", v17, 2u);
      }
    }

    dispatch_assert_queue_V2(&_dispatch_main_q);
    notify_register_dispatch(kMobileKeyBagLockStatusNotifyToken, &dword_100008058, &_dispatch_main_q, &stru_1000041F0);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  notify_register_dispatch("AppleLanguagePreferencesChangedNotification", &dword_10000805C, &_dispatch_main_q, &stru_100004210);

  IMSetAppBoolForKey();
  IMSyncronizeAppPreferences();
  IMSetEmbeddedTempDirectory();
  v8 = +[IMImagePreviewGenerator UTITypes];
  v9 = [v8 mutableCopy];

  v10 = +[IMAnimatedImagePreviewGenerator UTITypes];
  [v9 addObjectsFromArray:v10];

  CGImageSourceSetAllowableTypes();
  +[IMDLegacyRecordBridge prewarm];

  objc_autoreleasePoolPop(v0);
  v11 = objc_autoreleasePoolPush();
  v12 = +[IMFeatureFlags sharedFeatureFlags];
  LODWORD(v10) = [v12 isModernPersistenceXPCEnabled];

  if (!v10)
  {
    xpc_main(sub_100000FE4);
  }

  v13 = objc_alloc_init(IMDPersistenceServiceListener);
  v14 = [v13 listenerQueue];
  v15 = +[IMDSpotlightActivityPublisher sharedPublisher];
  [v15 setQueue:v14];

  [v13 resume];
  objc_autoreleasePoolPop(v11);
  return 0;
}

void sub_100000FE4(void *a1)
{
  v1 = a1;
  if (qword_100008068 != -1)
  {
    sub_100001434();
  }

  xpc_connection_set_target_queue(v1, qword_100008060);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001320;
  handler[3] = &unk_100004298;
  v4 = v1;
  v2 = v1;
  xpc_connection_set_event_handler(v2, handler);
  xpc_connection_resume(v2);
}

void sub_1000010A4(id a1, int a2)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = kMobileKeyBagLockStatusNotifyToken;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "ProtectionMerge: %s notification\n", &v4, 0xCu);
    }
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(v4) = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "ProtectionMerge: device unlocked after boot, IMDPersistenceAgent dying\n", &v4, 2u);
      }
    }

    sub_100001208();
    +[IMDPersistenceService reset];
    exit(0);
  }
}

uint64_t sub_100001208()
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  result = dword_100008058;
  if (dword_100008058 != -1)
  {
    result = notify_cancel(dword_100008058);
    dword_100008058 = -1;
  }

  return result;
}

void sub_10000124C(id a1, int a2)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "AppleLanguagePreferencesChangedNotification", v3, 2u);
    }
  }

  +[IMDPersistenceService reset];
  exit(0);
}

void sub_1000012E0(id a1)
{
  qword_100008060 = dispatch_queue_create("IMDPersistenceAgentConnectionQueue", 0);

  _objc_release_x1();
}

void sub_100001320(uint64_t a1, void *a2)
{
  v4 = a2;
  if (MKBDeviceUnlockedSinceBoot() == 1 && qword_100008070 != -1)
  {
    sub_100001448();
  }

  v3 = *(a1 + 32);
  __IMDPersistenceIPCServer_peer_event_handler();
}

void sub_100001394(id a1)
{
  if (IMDPersistenceProtectionMerge_CurrentlyUsingUnprotectedDatabase())
  {
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        *v2 = 0;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "We are past first unlock but still using the unprotected database. Restarting", v2, 2u);
      }
    }

    exit(0);
  }
}