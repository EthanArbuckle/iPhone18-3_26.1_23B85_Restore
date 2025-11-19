void sub_1000033EC(uint64_t a1, void *a2)
{
  object = a2;
  v3 = objc_autoreleasePoolPush();
  if (xpc_get_type(object) != &_xpc_type_connection)
  {
    v4 = +[MailXPCServices log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      string = xpc_dictionary_get_string(object, "XPCErrorDescription");
      sub_1000D37F4(string, buf, v4);
    }

    exit(0);
  }

  [*(a1 + 32) _registerConnection:object];
  objc_autoreleasePoolPop(v3);
}

id sub_100003B30(id a1, EMMailboxObjectID *a2)
{
  v2 = [(EMMailboxObjectID *)a2 url];
  v3 = [v2 absoluteString];
  v4 = [MailAccount mailboxUidFromActiveAccountsForURL:v3];

  return v4;
}

BOOL sub_100003BC4(id a1, MFMailboxUid *a2)
{
  v2 = [(MFMailboxUid *)a2 account];
  v3 = [AutoFetchController shouldSyncAccountByMailbox:v2];

  return v3;
}

void sub_100004740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFXPCConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_10000527C(unint64_t a1)
{
  v1 = a1;
  if (a1 < 5)
  {
    return *(&off_100157440 + a1);
  }

  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#Warning unable to create string for autofetch state %d!", v4, 8u);
  }

  return 0;
}

id sub_100005C24(uint64_t a1)
{
  v1 = [NSMutableSet setWithSet:a1];
  v2 = [v1 objectsPassingTest:&stru_100157420];
  [v1 minusSet:v2];

  return v1;
}

id sub_100005CBC(id a1, MFXPCClient *a2)
{
  v2 = +[MFDAutosave sharedInstance];

  return v2;
}

uint64_t sub_100005F68(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void sub_100005F90(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100005FAC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_100005FE4(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_100006000(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

_BYTE *sub_100006030(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_100006040(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_10000633C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000637C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006488()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000064C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006560()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000065A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000065E0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100006678()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000066B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006750()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006790()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006854()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006894()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000692C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000696C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006A04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006A44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006AB0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100006B48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006B88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006C20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006C60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006CA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006CE0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100006D78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006DB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006DF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006E38()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100006ED0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006F10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100006F50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_100007410(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1001854B0;
  qword_1001854B0 = v1;
}

void sub_100007764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = AppBadgeController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100007940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_100007998(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 badgeSetting] != 2)
  {
    if ([v8 isEqualToString:MSUserNotificationCenterTopicVIP])
    {
      v6 = 0;
      v7 = 40;
LABEL_8:
      *(*(*(a1 + v7) + 8) + 24) = v6;
      goto LABEL_9;
    }

    if ([v8 isEqualToString:MSUserNotificationCenterTopicNotifiedThreads])
    {
      v6 = 0;
      v7 = 48;
      goto LABEL_8;
    }

    if ([v8 isEqualToString:MSUserNotificationCenterTopicAllMessages])
    {
      v6 = 1;
      v7 = 56;
      goto LABEL_8;
    }

    if (([v8 isEqualToString:MSUserNotificationCenterTopicFavoriteMailboxes] & 1) == 0)
    {
      [*(a1 + 32) addObject:v8];
    }
  }

LABEL_9:
}

void sub_100007D38(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != [*(a1 + 32) oldBadgeCount])
  {
    objc_initWeak(&location, *(a1 + 32));
    v3 = *(*(a1 + 32) + 88);
    v4 = [NSNumber numberWithInteger:*(a1 + 40)];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100007E44;
    v5[3] = &unk_100156338;
    objc_copyWeak(v6, &location);
    v6[1] = *(a1 + 40);
    [v3 setBadgeNumber:v4 withCompletionHandler:v5];

    objc_destroyWeak(v6);
    objc_destroyWeak(&location);
  }
}

void sub_100007E1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));

  objc_destroyWeak((v3 - 40));
  _Unwind_Resume(a1);
}

void sub_100007E44(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = +[AppBadgeController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000D0618(v3, a1, v5);
    }
  }

  else
  {
    v6 = +[AppBadgeController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = 134217984;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updated badge to %ld", &v8, 0xCu);
    }

    [WeakRetained setOldBadgeCount:*(a1 + 40)];
  }
}

void sub_1000089AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 isInboxMailbox])
  {
    goto LABEL_3;
  }

  v4 = [*(a1 + 32) bucketBarController];
  v8 = v3;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [v4 isBucketBarHiddenForMailboxes:v5];

  if ((v6 & 1) == 0)
  {
    v7 = 40;
  }

  else
  {
LABEL_3:
    v7 = 48;
  }

  [*(a1 + v7) addObject:v3];
}

id sub_100008AB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) focusedAccountIdentifiers];
  v5 = [v3 account];
  v6 = [v5 objectID];
  v7 = [v6 representedObjectID];
  v8 = [v4 containsObject:v7];

  return v8;
}

id sub_100009090(uint64_t a1)
{
  v2 = +[AppBadgeController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Settings changed. Updating query based on current topics", v4, 2u);
  }

  [*(a1 + 32) setNotificationSettingsByTopic:*(a1 + 40)];
  return [*(a1 + 32) _createCountQueryPredicateFromNotificationTopics];
}

id sub_1000092FC(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 104), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _createCountQueryPredicateFromNotificationTopics];
}

void sub_100009714(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"AutoFetchDisabled"];

  if (v2)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#Warning fetching disabled (AutoFetchDisabled = YES)", v6, 2u);
    }
  }

  else
  {
    v4 = objc_alloc_init(AutoFetchController);
    v5 = qword_1001854C0;
    qword_1001854C0 = v4;
  }
}

void sub_1000099F0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100009AD4(uint64_t a1, void *a2)
{
  [a2 update:*(a1 + 40)];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v3 = v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = MFAutoFetchLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v15 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Posting notification %@", buf, 0xCu);
        }

        v9 = +[NSNotificationCenter defaultCenter];
        [v9 postNotificationName:v7 object:*(a1 + 32)];
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_10000A0A8(uint64_t a1)
{
  v2 = [*(a1 + 32) networkController];
  v3 = [v2 isFatPipe];

  v4 = sub_10000A284();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 40) name];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: network up, transitioned to WiFi, closing WWAN connections", &v10, 0xCu);
    }

    v4 = [*(a1 + 32) activeAccountsToSyncByMailbox];
    [v4 makeObjectsPerformSelector:"releaseAllForcedConnections"];
  }

  else
  {
    if (v5)
    {
      v7 = [*(a1 + 40) name];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: network up, transitioned to WWAN", &v10, 0xCu);
    }
  }

  v8 = [*(a1 + 32) mailboxController];
  [v8 networkConfigurationChanged];

  v9 = +[MFDeliveryQueue sharedDeliveryQueue];
  [v9 processQueue];
}

id sub_10000A284()
{
  if (qword_1001854D8 != -1)
  {
    sub_1000D06B8();
  }

  v1 = qword_1001854D0;

  return v1;
}

void sub_10000A39C(uint64_t a1)
{
  v2 = [*(a1 + 32) mailboxController];
  v3 = [v2 isIdle];

  v4 = [*(a1 + 32) activeAccountsToSyncByMailbox];
  [v4 makeObjectsPerformSelector:"releaseAllConnections"];

  if ((v3 & 1) == 0)
  {
    v5 = sub_10000A284();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "RNF: triggering autofetch", v7, 2u);
    }

    v6 = [*(a1 + 32) mailboxController];
    [v6 fetchNow:EMFetchTypeStandardMailbox withAccounts:0];
  }
}

BOOL sub_10000A688(id a1, MFMailboxUid *a2)
{
  v2 = [(MFMailboxUid *)a2 account];
  v3 = [AutoFetchController shouldSyncAccountByMailbox:v2];

  return v3;
}

void sub_10000AA94(uint64_t a1, void *a2)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v4)
  {
    v6 = *v16;
    *&v5 = 138412546;
    v14 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = *(a1 + 32);
        v23[0] = @"AutoFetchJobAccount";
        v23[1] = @"AutoFetchJobMailboxUid";
        v24[0] = v9;
        v24[1] = v8;
        v23[2] = @"AutoFetchJobNewMessagesState";
        v10 = [v3 objectForKeyedSubscript:{v14, v15}];
        v24[2] = v10;
        v11 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];

        v12 = MFAutoFetchLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v20 = @"AutoFetchProcessJobCompletedNotification";
          v21 = 2112;
          v22 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Posting notification %@ with user info %@", buf, 0x16u);
        }

        v13 = +[NSNotificationCenter defaultCenter];
        [v13 postNotificationName:@"AutoFetchProcessJobCompletedNotification" object:*(a1 + 40) userInfo:v11];

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) _updateState:1];
}

MailAccount *__cdecl sub_10000B158(id a1, MFMailboxUid *a2)
{
  v2 = [(MFMailboxUid *)a2 account];

  return v2;
}

void sub_10000B188(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v19[0] = @"AutoFetchJobAccount";
        v19[1] = @"AutoFetchJobMailboxUid";
        v20[0] = v8;
        v20[1] = v7;
        v19[2] = @"AutoFetchDontNotify";
        v9 = [NSNumber numberWithBool:*(a1 + 64)];
        v20[2] = v9;
        v19[3] = @"AutoFetchJobNewMessagesState";
        v10 = [v3 objectForKeyedSubscript:v7];
        v11 = v10;
        v12 = &off_1001631D8;
        if (v10)
        {
          v12 = v10;
        }

        v20[3] = v12;
        v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

        [*(a1 + 48) postNotificationName:@"AutoFetchPushCompletedNotification" object:*(a1 + 56) userInfo:v13];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v4);
  }
}

void sub_10000B80C(id a1)
{
  v1 = os_log_create("com.apple.email", "AutoFetchController");
  v2 = qword_1001854D0;
  qword_1001854D0 = v1;
}

void sub_10000B850(void *a1, uint64_t a2)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = +[MFInvocationQueue sharedInvocationQueue];
        v9 = [MFMonitoredInvocation mf_invocationWithSelector:a2 target:v7];
        [v8 addInvocation:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_10000BA44(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10000BA5C(id a1)
{
  v1 = objc_alloc_init(NSMutableSet);
  v2 = qword_1001854E0;
  qword_1001854E0 = v1;
}

void sub_10000BBD0(_Unwind_Exception *a1)
{
  v4 = v3;
  objc_sync_exit(v4);

  _Unwind_Resume(a1);
}

void sub_10000BC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = AutoFetchRequestPrivate;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10000CD38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = sub_100027C70();
  v4 = [v3 mailboxProvider];
  v5 = [v4 mailboxFromLegacyMailbox:*(WeakRetained + 2)];
  v6 = [v5 objectID];

  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = +[MailPersistentStorage sharedStorage];
    v9 = [*(WeakRetained + 2) URLString];
    v10 = [v8 fetchDateForSource:v9];

    [v7 setObject:v6 forKeyedSubscript:EMActivityMailboxObjectIDKey];
    v11 = [NSNumber numberWithInteger:*(a1 + 40)];
    [v7 setObject:v11 forKeyedSubscript:EMActivityFetchStateKey];

    if (v10)
    {
      [v7 setObject:v10 forKeyedSubscript:EMActivityLastSuccessfulUpdateKey];
    }

    v12 = [*(WeakRetained + 11) startActivityOfType:1 userInfo:v7];
    v13 = *(WeakRetained + 10);
    *(WeakRetained + 10) = v12;

    v14 = MFAutoFetchLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(WeakRetained + 10);
      v16 = [v15 objectID];
      v17 = [v16 stringHash];
      v32 = 134218496;
      v33 = WeakRetained;
      v34 = 2048;
      v35 = v15;
      v36 = 2048;
      v37 = [v17 int64Value];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%p Current #Activity %p (hash: %llx): Starting New Activity", &v32, 0x20u);
    }

    v18 = MFAutoFetchLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(WeakRetained + 1);
      v20 = *(WeakRetained + 2);
      v21 = *(WeakRetained + 3);
      v22 = *(WeakRetained + 4);
      v32 = 134219010;
      v33 = WeakRetained;
      v34 = 2112;
      v35 = v19;
      v36 = 2112;
      v37 = v20;
      v38 = 2112;
      v39 = v21;
      v40 = 2112;
      v41 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%p Remote '%@', mailbox '%@', store '%@', key '%@'", &v32, 0x34u);
    }

    v23 = MFAutoFetchLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v6 ef_publicDescription];
      v32 = 138543618;
      v33 = v24;
      v34 = 2112;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updated last updated time for mailbox object ID %{public}@ with %@", &v32, 0x16u);
    }

    v25 = EFFetchSignpostLog();
    v26 = v25;
    v27 = *(WeakRetained + 12);
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      v28 = *(WeakRetained + 10);
      v29 = [v28 objectID];
      v30 = [v29 stringHash];
      v31 = [v30 int64Value];
      v32 = 134349312;
      v33 = v28;
      v34 = 2050;
      v35 = v31;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_BEGIN, v27, "AutoFetchRequest", "activity=%{signpost.description:attribute,public}p hash=%{signpost.description:attribute,public}llx", &v32, 0x16u);
    }
  }
}

uint64_t sub_10000D480(uint64_t a1, int a2)
{
  v4 = EFFetchSignpostLog();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v8[0] = 67240192;
    v8[1] = a2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "AutoFetchHeal", "success=%{signpost.description:attribute,public}d", v8, 8u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10000E360(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_10000E7D0(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1001854F0;
  qword_1001854F0 = v1;
}

void sub_10000ED1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000ED40(id a1, OS_xpc_object *a2)
{
  xdict = a2;
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_DELAY, 1);
  xpc_dictionary_set_string(xdict, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_MIN);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRES_CLASS_A, 0);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRES_CLASS_B, 0);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRES_CLASS_C, 0);
}

void sub_10000EE60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[33] resetSendLaterAlarmIfNeeded];
  v1 = [WeakRetained[4] remindMeNotificationController];
  [v1 resetRemindMeAlarmIfNeeded];
}

void sub_10000FA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, char a31)
{
  objc_destroyWeak((v34 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000FBE8(id a1, BOOL a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  [PrivacyProxyClient setTrafficState:32 proxyTraffic:v2 queue:0 completionHandler:0];
}

void sub_10000FC0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained[25] beginSyncing];
  }
}

id sub_10000FC74(uint64_t a1)
{
  v2 = [MFServerMessagesIndexer alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v2 initWithAccountsProvider:WeakRetained];

  [v4 registerSystemTasks];

  return v4;
}

id sub_10000FD04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained result];

  return v2;
}

uint64_t sub_10000FD60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000FD78(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) messageFilesAreClassC]);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  return [v2 BOOLValue] ^ 1;
}

void sub_10000FDF0()
{
  v13 = +[MailAccount activeAccounts];
  v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v13, "count")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v0 = v13;
  v1 = [v0 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v1)
  {
    v2 = *v16;
    do
    {
      v3 = 0;
      do
      {
        if (*v16 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v15 + 1) + 8 * v3);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v14 addObject:v4];
        }

        v3 = v3 + 1;
      }

      while (v1 != v3);
      v1 = [v0 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v1);
  }

  if ([v14 count])
  {
    v5 = v14;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          v11 = +[MFInvocationQueue sharedInvocationQueue];
          v12 = [MFMonitoredInvocation mf_invocationWithSelector:"startListeningForNotifications" target:v10];
          [v11 addInvocation:v12];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v7);
    }
  }
}

void sub_10001010C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = DaemonAppController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100010244(id a1)
{
  v1 = +[DaemonAppController log];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "bye bye!", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_1000105C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 16) persistence];
  v5 = [FileProtectionClassMigrator alloc];
  v6 = [v4 database];
  v7 = [v4 messagePersistence];
  v8 = [v4 attachmentPersistenceManager];
  v9 = [(FileProtectionClassMigrator *)v5 initWithTask:v3 database:v6 messagePersistence:v7 attachmentPersistenceManager:v8 library:*(*(a1 + 32) + 16)];
  [*(a1 + 32) setFileProtectionClassMigrator:v9];

  v10 = [*(a1 + 32) fileProtectionClassMigrator];
  v15 = 0;
  LODWORD(v8) = [v10 startWithError:&v15];
  v11 = v15;

  if (v8)
  {
    v12 = +[DaemonAppController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "File protection class migration finished running", buf, 2u);
    }

    [*(a1 + 32) setFileProtectionClassMigrator:0];
  }

  else
  {
    v13 = +[DaemonAppController log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v11 ef_publicDescription];
      sub_1000D0824(v14, buf, v13);
    }
  }
}

void sub_1000108AC(uint64_t a1)
{
  v2 = MFUserAgent();
  v3 = *(a1 + 32);

  if (v2 != v3)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"DaemonAppController.m" lineNumber:459 description:{@"Invalid parameter not satisfying: %@", @"MFUserAgent() == self"}];
  }

  v4 = +[MailXPCServices sharedServer];
  [v4 registerServiceClass:objc_opt_class()];
  [v4 registerServiceClass:objc_opt_class()];
  [v4 registerServiceClass:objc_opt_class()];
  sub_10004C9E0(v4);
  sub_10005DEF8(v4);
  [v4 start];
}

void sub_100010BEC(void *a1)
{
  v3 = a1;
  v1 = +[BGSystemTaskScheduler sharedScheduler];
  [v1 registerForTaskWithIdentifier:v3 usingQueue:0 launchHandler:&stru_1001569D0];

  v2 = +[BGSystemTaskScheduler sharedScheduler];
  [v2 deregisterTaskWithIdentifier:v3];
}

id sub_100011288(uint64_t a1)
{
  [*(a1 + 32) _delayedStartupTasks];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

void sub_1000118B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_1000118EC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[DaemonAppController log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000D0908(v2, v3, v4);
    }
  }
}

void sub_10001195C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[DaemonAppController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000D0978(v3, v4, v5);
    }
  }

  else
  {
    v4 = +[DaemonAppController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing app succeeded", v6, 2u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100011B4C(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:MSUserNotificationCenterTopicVIP];
  if ([v3 alertSetting] != 2 && objc_msgSend(v3, "notificationCenterSetting") != 2)
  {
    [v3 lockScreenSetting];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100011EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_100011F28(uint64_t a1, char a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if ((a2 & 1) != 0 || a3)
  {
    v8 = +[DaemonAppController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000D09E8(a2, a3, v8);
    }

    v7 = [v6 snapshotInvalidator];
    [v7 setEnabled:0];
  }

  else
  {
    v7 = [WeakRetained snapshotInvalidator];
    [v7 setEnabled:1];
  }
}

void sub_100012000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = +[EDClientState sharedInstance];
  (*(v4 + 16))(v4, [v5 isRunningTests], a3);
}

void sub_100012084(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:NSKeyValueChangeNewKey];
  v5 = v3;
  if (v3)
  {
    [v3 BOOLValue];
  }

  else
  {
    v4 = +[EDClientState sharedInstance];
    [v4 isRunningTests];
  }

  [EMInternalPreferences preferenceEnabled:11];
  (*(*(a1 + 32) + 16))();
}

void sub_100012288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000122BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reportWorkloadToDAS];
  v1 = [WeakRetained searchableIndexManager];
  v2 = [v1 analytics];
  [v2 sendAnalyticsEvents];
}

void sub_10001232C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1000126D4(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185510;
  qword_100185510 = v1;
}

id sub_100012988(uint64_t a1)
{
  sub_1000129C4(*(a1 + 32));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 registerAccountChangeHookResponder:v3];
}

void sub_1000129C4(id *a1)
{
  if (a1)
  {
    v2 = +[DaemonFetchController log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "initializing fetching", buf, 2u);
    }

    v3 = +[AutoFetchController sharedController];
    [v3 setDataSource:a1];

    objc_initWeak(buf, a1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100012B78;
    handler[3] = &unk_100156748;
    objc_copyWeak(&v6, buf);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, handler);
    sub_100012DF4(a1);
    sub_100012EC4(a1);
    [a1[9] schedule];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:a1 selector:"_autoFetchProcessFinished:" name:@"AutoFetchProcessFinishedNotification" object:0];

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void sub_100012B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012B78(uint64_t a1, xpc_object_t xdict)
{
  v3 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, _xpc_event_key_name)];
  if ([v3 isEqualToString:@"PCPreferencesDidChangeNotification"])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    sub_1000D0A78(WeakRetained);
    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"com.apple.mobilemail.afc.poll"])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained performFetchOfType:sub_100012D0C(WeakRetained, 1)];
LABEL_12:

    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"com.apple.exchangesyncd.ping"])
  {
    WeakRetained = +[DaemonFetchController log];
    if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v8 = 0;
    v5 = "received ping notification from exchangesyncd";
    v6 = &v8;
LABEL_10:
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"MFNanoMailImportantBridgeSettingHasChangedDarwinNotification"])
  {
    WeakRetained = +[DaemonFetchController log];
    if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v7 = 0;
    v5 = "received notification about important NanoMail Bridge setting change";
    v6 = &v7;
    goto LABEL_10;
  }

LABEL_13:
}

uint64_t sub_100012D0C(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v5 = +[MFPowerController sharedInstance];
    v6 = [v5 isPluggedIn];
    v3 = EMFetchTypeScheduled;
    if (v6)
    {
      v7 = +[MFNetworkController sharedInstance];
      v8 = [v7 isFatPipe];

      if (v8)
      {
        return v3 | 0x80;
      }

      else
      {
        return v3;
      }
    }

    else
    {
    }
  }

  else
  {
    if (a2 == 3)
    {
      v2 = &EMFetchTypeCompacting;
    }

    else
    {
      if (a2 != 2)
      {
        sub_1000D104C();
      }

      v2 = &EMFetchTypePowerNap;
    }

    return *v2;
  }

  return v3;
}

id sub_100012DF4(id result)
{
  if (result)
  {
    v1 = result;
    v2 = +[DaemonFetchController log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating push state.", buf, 2u);
    }

    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100013414;
    v3[3] = &unk_1001569F8;
    v3[4] = v1;
    return [v1 resetPushStateWithCompletion:v3];
  }

  return result;
}

void sub_100012EC4(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_100013018(a1);
    os_unfair_lock_lock((a1 + 24));
    [*(a1 + 56) interval];
    if (v3 == v2)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a1 + 56);
      v4 = *(a1 + 56);
      *(a1 + 56) = 0;
    }

    if (*(a1 + 56))
    {
      v5 = 0;
    }

    else
    {
      v5 = [[FetchXPCActivityScheduler alloc] initWithType:2 interval:a1 delegate:v2];
      objc_storeStrong((a1 + 56), v5);
    }

    os_unfair_lock_unlock((a1 + 24));
    [v6 unregisterAndTearDown];
    [(FetchXPCActivityScheduler *)v5 schedule];
  }
}

void sub_100012FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock((v10 + v11));

  _Unwind_Resume(a1);
}

double sub_100013018(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = +[NSUserDefaults em_userDefaults];
  v2 = [v1 objectForKey:@"PowerNapFetchesInterval"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 7200.0;
  }

  return v3;
}

void sub_1000130D4(uint64_t a1)
{
  if (a1)
  {
    v2 = +[DaemonFetchController log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Canceling periodic fetches.", v5, 2u);
    }

    os_unfair_lock_lock((a1 + 24));
    v3 = *(a1 + 64);
    v4 = *(a1 + 64);
    *(a1 + 64) = 0;

    os_unfair_lock_unlock((a1 + 24));
    if (v3)
    {
      [v3 unregisterAndTearDown];
    }

    else
    {
      [FetchXPCActivityScheduler unregisterXPCActivityForType:1];
    }
  }
}

void sub_1000131C4(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1000D0B88(a1);
    os_unfair_lock_lock((a1 + 24));
    [*(a1 + 64) interval];
    if (v3 == v2)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 64);
      v5 = *(a1 + 64);
      *(a1 + 64) = 0;
    }

    if (*(a1 + 64))
    {
      v6 = 0;
    }

    else
    {
      v6 = [[FetchXPCActivityScheduler alloc] initWithType:1 interval:a1 delegate:v2];
      objc_storeStrong((a1 + 64), v6);
    }

    os_unfair_lock_unlock((a1 + 24));
    [v4 unregisterAndTearDown];
    sub_1000D1078(a1, &v7, v6, v4);
  }
}

void sub_100013304(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 24));
    v3 = *(a1 + 64);
    os_unfair_lock_unlock((a1 + 24));
    if (v3 == v4)
    {
      [v4 schedule];
    }
  }
}

void sub_100013414(uint64_t a1, char a2, int a3, int a4, void *a5)
{
  v9 = a5;
  if (a2)
  {
    v10 = +[DaemonFetchController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 67109376;
      v15[1] = a3;
      v16 = 1024;
      v17 = a4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "resetPushState: success (schedulePeriodicFetches: %{BOOL}d, pollInterval: %d)", v15, 0xEu);
    }

    *(*(a1 + 32) + 16) = a3;
    *(*(a1 + 32) + 20) = a4;
    if (a3)
    {
      v11 = +[DaemonFetchController log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Detected at least one non-manual account: starting periodic fetches.", v15, 2u);
      }

      sub_1000131C4(*(a1 + 32));
    }

    else
    {
      v14 = +[DaemonFetchController log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "All accounts are manual: stopping periodic fetches.", v15, 2u);
      }

      sub_1000130D4(*(a1 + 32));
    }
  }

  else
  {
    v12 = +[DaemonFetchController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v9 ef_publicDescription];
      sub_1000D1140(v13, v15, v12);
    }
  }
}

BOOL sub_1000137BC(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isActive];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100013828(uint64_t a1)
{
  v2 = +[AutoFetchController sharedController];
  [v2 fetchNow:EMFetchTypeStandardMailbox withAccounts:*(a1 + 32)];
}

double sub_10001390C(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = +[NSUserDefaults em_userDefaults];
  v2 = [v1 integerForKey:@"DelayFetchOTCInterval"];

  return v2;
}

void sub_100013978(id a1)
{
  v1 = +[AutoFetchController sharedController];
  [v1 fetchNow:EMFetchTypeResume];
}

id sub_100013A80(id a1, NSString *a2)
{
  v2 = [MailAccount accountWithUniqueId:a2];

  return v2;
}

void sub_100013AC8(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = a3;
  v8 = v7;
  if (a1)
  {
    v9 = [v7 ef_compactMap:&stru_100156AD8];
    if ([v9 count])
    {
      v10 = +[DaemonFetchController log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109634;
        v21 = a2;
        v22 = 1024;
        v23 = a4;
        v24 = 2112;
        v25 = v8;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "performFetchOfType:%i (%{BOOL}d), uids for %@", buf, 0x18u);
      }

      v11 = +[AutoFetchController sharedController];
      [v11 fetchNow:a2 withMailboxes:v9];
    }

    else
    {
      v12 = +[DaemonFetchController log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        v21 = a2;
        v22 = 1024;
        v23 = a4;
        v24 = 2112;
        v25 = v8;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "performFetchOfType:%i (%{BOOL}d) failed to find uids for %@", buf, 0x18u);
      }

      if (!a4)
      {
        goto LABEL_13;
      }

      v13 = +[DaemonFetchController log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_1000D11F0(v13);
      }

      v14 = dispatch_time(0, 1000000000);
      v15 = *(a1 + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100013DFC;
      block[3] = &unk_100156B00;
      v19 = a2;
      v17 = v8;
      v18 = a1;
      dispatch_after(v14, v15, block);
      v11 = v17;
    }

LABEL_13:
  }
}

id sub_100013D68(id a1, EMMailboxObjectID *a2)
{
  v2 = [(EMMailboxObjectID *)a2 url];
  v3 = [v2 absoluteString];
  v4 = [MailAccount mailboxUidFromActiveAccountsForURL:v3];

  return v4;
}

uint64_t sub_100013DFC(uint64_t a1)
{
  v2 = +[DaemonFetchController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D1234(a1, v2);
  }

  return sub_100013AC8(*(a1 + 40), *(a1 + 48), *(a1 + 32), 0);
}

void sub_1000142FC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185520;
  qword_100185520 = v1;
}

void sub_100014C44(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100015DC8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_100015F24(void *a1)
{
  v1 = a1;
  if (qword_100185538 != -1)
  {
    sub_1000D13AC();
  }

  v2 = [qword_100185530 objectForKey:v1];
  if (!v2)
  {
    v2 = [v1 uniqueID];
    [qword_100185530 setObject:v2 forKey:v1];
  }

  return v2;
}

void sub_100016190(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_100016CFC()
{
  if (qword_100185548 != -1)
  {
    sub_1000D13C0();
  }

  v1 = qword_100185540;

  return v1;
}

void sub_100016D40(uint64_t a1)
{
  v3 = [*(a1 + 32) account];
  v2 = [NSSet setWithObject:*(a1 + 40)];
  [v3 changePushedMailboxUidsAdded:v2 deleted:0];
}

void sub_100016F58(uint64_t a1)
{
  v3 = [*(a1 + 32) account];
  v2 = [NSSet setWithObject:*(a1 + 40)];
  [v3 changePushedMailboxUidsAdded:0 deleted:v2];
}

void sub_1000170DC(uint64_t a1)
{
  v3 = +[NSNotificationCenter defaultCenter];
  v2 = [*(a1 + 32) account];
  [v3 postNotificationName:@"MailApplicationAccountFavoritesDidChange" object:v2];
}

void sub_1000185C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = FavoriteItem_SharedMailbox;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100019060(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100019720(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100019DA8(id a1)
{
  v1 = [NSMapTable mapTableWithKeyOptions:517 valueOptions:0];
  v2 = qword_100185530;
  qword_100185530 = v1;
}

void sub_100019DF0(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mobilemail.pushStatusUpdates", v3);
  v2 = qword_100185540;
  qword_100185540 = v1;
}

void *sub_100019E54(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = FavoritesCollection;
  v3 = objc_msgSendSuper2(&v6, "init");
  v4 = v3;
  if (v3)
  {
    v3[1] = a2;
    sub_100019EE0(v3, a2);
  }

  return v4;
}

void sub_100019EE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [EFLocked alloc];
    v7 = [[FavoritesCollectionState alloc] initWithType:a2];
    v5 = [v4 initWithObject:?];
    v6 = *(a1 + 32);
    *(a1 + 32) = v5;
  }
}

void sub_10001A6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10001A7A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001A7C0(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 dictionaryRepresentations];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10001A960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10001A990(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 orderedAccountIds];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10001AA04(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 isEditing];
}

void sub_10001AA6C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != [v3 isEditing])
  {
    [v3 setEditing:?];
    [v3 invalidateVisibleItems];
  }
}

void sub_10001AB00(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 addItem:*(a1 + 32) ordered:*(a1 + 48)];
}

void sub_10001AB70(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    [v3 wasAddedToCollection:a1];
    [a1 invalidateVisibleItems];
  }
}

void sub_10001ABE0(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 addExpandedItem:*(a1 + 32)];
}

void sub_10001AC4C(void *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 addOrUpdateItem:a1[4] didAdd:*(a1[6] + 8) + 24 didReplace:*(a1[7] + 8) + 24];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10001ACD8(void *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 addOrUpdateExpandedItem:a1[4] didAdd:*(a1[6] + 8) + 24 didReplace:*(a1[7] + 8) + 24];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10001AEC8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 removeItem:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10001AF40(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    [v3 wasRemovedFromCollecion:a1];
    [a1 invalidateVisibleItems];
  }
}

void sub_10001AFB0(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 removeExpandedItem:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10001B028(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 removeItemWithSyncKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10001B0A0(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 itemWithSyncKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10001B118(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 items];
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10001B1A4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 expandedItems];
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10001B230(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 visibleItems];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10001B2A4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 selectedItems];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id *sub_10001B3CC(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_10001A7A8;
    v13 = sub_10001A7B8;
    v14 = 0;
    v4 = a1[4];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001BBF8;
    v6[3] = &unk_100156E38;
    v8 = &v9;
    v7 = v3;
    [v4 performWhileLocked:v6];

    a1 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

void sub_10001B4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id sub_10001B5A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == *(a1 + 32))
  {
    v4 = [v3 isVisible];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10001B6D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 displayName];
  LOBYTE(v4) = [v4 ef_caseInsensitiveIsEqualToString:v5];

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 representingMailbox];
    v8 = +[MFMailboxUid specialNameForType:](MFMailboxUid, "specialNameForType:", [v7 mailboxType]);

    if (v8)
    {
      v6 = [*(a1 + 32) ef_caseInsensitiveIsEqualToString:v8];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id *sub_10001B7C0(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_10001A7A8;
    v13 = sub_10001A7B8;
    v14 = objc_alloc_init(NSMutableArray);
    v4 = a1[4];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001BC8C;
    v6[3] = &unk_100156E60;
    v7 = v3;
    v8 = &v9;
    [v4 performWhileLocked:v6];

    a1 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

void sub_10001B8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10001B9F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 displayName];
  v5 = [v4 localizedCaseInsensitiveContainsString:*(a1 + 32)];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 representingMailbox];
    v8 = +[MFMailboxUid specialNameForType:](MFMailboxUid, "specialNameForType:", [v7 mailboxType]);

    if (v8)
    {
      v6 = [v8 localizedCaseInsensitiveContainsString:*(a1 + 32)];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id sub_10001BBA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 itemURLString];
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_10001BBF8(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 items];
  v4 = [v3 ef_filter:*(a1 + 32)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10001BC8C(uint64_t a1, void *a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [a2 items];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        if ((*(*(a1 + 32) + 16))())
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
        }

        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v8 = [v7 subItems];
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = *v14;
          do
          {
            v11 = 0;
            do
            {
              if (*v14 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v13 + 1) + 8 * v11);
              if ((*(*(a1 + 32) + 16))())
              {
                [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
              }

              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v9);
        }

        v6 = v6 + 1;
      }

      while (v6 != v4);
      v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }
}

void sub_10001BEA8(uint64_t a1, void *a2)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [a2 items];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        v8 = [v7 subItems];
        v9 = [v8 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v9)
        {
          v10 = *v13;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v13 != v10)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(*(a1 + 32) + 8) + 40) addObject:*(*(&v12 + 1) + 8 * j)];
            }

            v9 = [v8 countByEnumeratingWithState:&v12 objects:v20 count:16];
          }

          while (v9);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }
}

id sub_10001C098(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  if (a2 == 3)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"ACCOUNTS" value:&stru_10015BEC8 table:@"Main"];
    goto LABEL_9;
  }

  if (a2 == 2)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"__OUTBOX__" value:&stru_10015BEC8 table:@"Main"];
    goto LABEL_9;
  }

  if (a2 != 1)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_10;
  }

  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INBOXES" value:&stru_10015BEC8 table:@"Main"];
LABEL_9:
  v4 = v3;

LABEL_10:

  return v4;
}

void sub_10001C390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C3F4(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 countOfVisibleItems];
}

void sub_10001C854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  _Block_object_dispose(va, 8);
}

void sub_10001C8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  _Block_object_dispose(va, 8);
}

void sub_10001C8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
}

void sub_10001C908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
}

void sub_10001C92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
}

void sub_10001C9E4(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185550;
  qword_100185550 = v1;
}

void sub_10001D328(id a1)
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v3 count:4];
  v2 = qword_100185560;
  qword_100185560 = v1;
}

void sub_10001D53C(id a1)
{
  v1 = [FavoriteItem itemForUnifiedMailboxWithType:7 selected:0];
  v2 = qword_100185570;
  qword_100185570 = v1;
}

id sub_10001D69C(uint64_t a1, void *a2)
{
  v3 = [a2 syncKey];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10001E0E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL sub_10001E630(id a1, FavoriteItem *a2)
{
  v2 = a2;
  if ([(FavoriteItem *)v2 isVisible])
  {
    v3 = [(FavoriteItem *)v2 isSelected];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10001E9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id sub_10001EB38()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EBDC;
  block[3] = &unk_1001562E8;
  block[4] = objc_opt_self();
  if (qword_100185588 != -1)
  {
    dispatch_once(&qword_100185588, block);
  }

  v0 = qword_100185580;

  return v0;
}

void sub_10001EBDC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_100185580;
  qword_100185580 = v1;
}

void sub_10001F338(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  [*(a1 + 120) lock];
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;

  v3 = *(a1 + 104);
  *(a1 + 10) = [v3 isDisplayingMultipleAccounts] ^ 1;

  v4 = objc_alloc_init(NSMutableArray);
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;

  v47 = [[NSDictionary alloc] initWithContentsOfFile:*(a1 + 32)];
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v49 = [[NSMutableString alloc] initWithString:@"_reload"];
  if (!v47)
  {
    v8 = sub_10001EB38();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = __error();
      v17 = strerror(*v16);
      sub_1000D3044(v17, buf, v15, v8);
    }

    v7 = 0;
    goto LABEL_12;
  }

  v6 = [v47 objectForKeyedSubscript:@"version"];

  if (!v6)
  {
    v18 = 0;
    goto LABEL_15;
  }

  v7 = [v47 objectForKeyedSubscript:@"collections"];
  if (!*(a1 + 24))
  {
    v8 = [v47 objectForKeyedSubscript:@"lastSelectedItem"];
    if (v8)
    {
      v9 = [FavoriteItem itemFromDictionary:v8];
      v10 = *(a1 + 24);
      *(a1 + 24) = v9;

      v11 = sub_10001EB38();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 24);
        v13 = objc_opt_class();
        *buf = 134218242;
        v71 = v12;
        v72 = 2112;
        v73 = v13;
        v14 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Loaded _lastSelectedItem : <%p> %@", buf, 0x16u);
      }
    }

LABEL_12:
  }

  v18 = v7;
LABEL_15:
  v48 = v18;
  if ([v18 count])
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v48;
    v19 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v19)
    {
      v20 = *v61;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v61 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v60 + 1) + 8 * i);
          v23 = [[FavoritesCollection alloc] initWithDictionary:v22];
          v24 = [v22 objectForKeyedSubscript:@"expandedItems"];
          [(FavoritesCollection *)v23 addExpandedItemsFromDictionaryRepresentations:v24];
          [*(a1 + 16) addObject:v23];
        }

        v19 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v19);
    }

    v25 = +[NSMutableArray array];
    v26 = +[NSMutableArray array];
    v27 = +[MailAccount mailAccounts];
    v28 = [v27 ef_filter:&stru_100156FB0];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v30)
    {
      v31 = *v57;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v57 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v56 + 1) + 8 * j);
          v34 = [FavoriteItem itemForAccount:v33];
          [v25 addObject:v34];

          v35 = [FavoriteItem itemForInboxWithAccount:v33 selected:1];
          [v26 addObject:v35];
        }

        v30 = [v29 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v30);
    }

    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100020700;
    v53[3] = &unk_100157000;
    v55 = &v64;
    v36 = v49;
    v54 = v36;
    v37 = objc_retainBlock(v53);
    v38 = [a1 mailboxesCollection];
    v39 = objc_opt_class();
    (v37[2])(v37, v38, v26, v39);

    v40 = sub_100020A08(a1);
    v41 = objc_opt_class();
    (v37[2])(v37, v40, v25, v41);

    v42 = sub_100020A9C(a1);
    *(v65 + 24) |= v42;
    if (v42)
    {
      [v36 appendString:@" << adding shared mailbox items >>"];
    }
  }

  else
  {
    v43 = sub_10001EB38();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Creating default mailbox collection", v52, 2u);
    }

    sub_1000211EC(a1);
    sub_10002151C(a1);
    [v49 appendString:@" << Creating default mailbox collections >>"];
    *(v65 + 24) = 1;
  }

  [*(a1 + 120) unlock];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021730;
  block[3] = &unk_100156400;
  block[4] = a1;
  dispatch_async(&_dispatch_main_q, block);
  v44 = sub_10001FE60(a1);
  if (v44)
  {
    *(v65 + 24) = 1;
    [v49 appendString:v44];
  }

  if (*(v65 + 24) == 1)
  {
    v45 = MFUserAgent();
    v46 = [v45 isMaild];

    if ((v46 & 1) == 0)
    {
      [*(a1 + 120) lock];
      sub_1000217A8(a1, v49);
      [*(a1 + 120) unlock];
    }
  }

  _Block_object_dispose(&v64, 8);
}

void sub_10001FA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a43, 8);

  _Unwind_Resume(a1);
}

id sub_10001FBEC(uint64_t a1)
{
  sub_10001F338(*(a1 + 32));
  v2 = sub_10001EB38();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FavoritesPersistence collection reloaded.", v4, 2u);
  }

  return [*(a1 + 40) postNotificationName:@"MailApplicationFavoritesDidChange" object:*(a1 + 32)];
}

void sub_10001FC78(uint64_t a1)
{
  v3 = NSUbiquitousKeyValueStoreChangeReasonKey;
  v4 = &off_100163280;
  v2 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  [*(a1 + 32) postNotificationName:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:*(*(a1 + 40) + 112) userInfo:v2];
}

void sub_10001FD3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[12] = [*(a1 + 32) BOOLForKey:EMUserDefaultDisableFollowUp];
    sub_10001F338(WeakRetained);
  }
}

void sub_10001FE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = FavoritesPersistence;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_10001FE60(id *a1)
{
  if (a1)
  {
    v2 = [a1[13] displayedAccounts];
    if ([v2 count])
    {
      v3 = sub_10001FF30(a1, 0);
      v4 = [a1 mailboxPersistence];
      [v4 fetchMailboxListsWithKind:0];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10001FF08(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_10001FF30(uint64_t a1, char a2)
{
  if (a1)
  {
    if (pthread_main_np() != 1)
    {
      v36 = +[NSAssertionHandler currentHandler];
      [v36 handleFailureInMethod:"_loadMailboxesForcibly:" object:a1 file:@"FavoritesPersistence.m" lineNumber:886 description:@"Current thread must be main"];
    }

    Current = CFAbsoluteTimeGetCurrent();
    v38 = [*(a1 + 104) displayedAccounts];
    v5 = sub_100020A08(a1);
    v39 = [v5 items];

    if ([v38 count] || objc_msgSend(v39, "count"))
    {
      v37 = [v39 ef_filter:&stru_1001570E0];
      if (a2)
      {
        goto LABEL_18;
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v6 = v37;
      v7 = [v6 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v7)
      {
        v8 = *v58;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v58 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = [*(*(&v57 + 1) + 8 * i) subItems];
            v11 = [v10 count] == 0;

            if (v11)
            {

              goto LABEL_18;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v57 objects:v66 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      if (Current - *&qword_100185590 > 5.0)
      {
LABEL_18:
        qword_100185590 = *&Current;
        *(a1 + 11) = 1;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        obj = v37;
        v13 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
        if (v13)
        {
          v41 = *v54;
          do
          {
            v42 = v13;
            for (j = 0; j != v42; j = j + 1)
            {
              if (*v54 != v41)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v53 + 1) + 8 * j);
              v44 = [v21 account];
              v22 = +[MailChangeManager sharedChangeManager];
              v43 = [v22 allMailboxUidsSortedWithSpecialsAtTopForAccount:v44 includingLocals:1 client:a1 outbox:0];

              v23 = sub_10001EB38();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = [v43 count];
                *buf = 134217984;
                v64 = v24;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "loaded sortedMailboxes.count:%lu", buf, 0xCu);
              }

              v25 = +[NSMutableArray array];
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v26 = v43;
              v27 = [v26 countByEnumeratingWithState:&v49 objects:v62 count:16];
              if (v27)
              {
                v28 = *v50;
                do
                {
                  for (k = 0; k != v27; k = k + 1)
                  {
                    if (*v50 != v28)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v30 = [FavoriteItem itemForMailbox:*(*(&v49 + 1) + 8 * k) selected:1];
                    [v25 addObject:v30];
                  }

                  v27 = [v26 countByEnumeratingWithState:&v49 objects:v62 count:16];
                }

                while (v27);
              }

              v31 = MFLogGeneral();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = [v44 ef_publicDescription];
                *buf = 138543362;
                v64 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#Favorites Settings mailbox items for account: %{public}@", buf, 0xCu);
              }

              [*(a1 + 120) lock];
              [v21 setSubItems:v25];
              v33 = *(a1 + 56);
              *(a1 + 56) = 0;

              [*(a1 + 120) unlock];
            }

            v13 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
          }

          while (v13);
        }

        *(a1 + 11) = 0;
        v14 = objc_alloc_init(NSMutableArray);
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v15 = obj;
        v16 = [v15 countByEnumeratingWithState:&v45 objects:v61 count:16];
        if (v16)
        {
          v17 = *v46;
          do
          {
            for (m = 0; m != v16; m = m + 1)
            {
              if (*v46 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v45 + 1) + 8 * m);
              if (sub_100022828(a1, v19))
              {
                [v14 addObject:v19];
              }
            }

            v16 = [v15 countByEnumeratingWithState:&v45 objects:v61 count:16];
          }

          while (v16);
        }

        if ([v14 count])
        {
          v34 = [v14 ef_map:&stru_100157120];
          v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Refreshing due to item expansion on %lu items:%@", [v34 count], v34);
        }

        else
        {
          v12 = 0;
        }

        sub_1000D2414(a1, 0);
        sub_10002385C(a1);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL sub_1000206A4(id a1, MailAccount *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

void sub_100020700(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v19 = a3;
  v8 = [v7 items];
  v9 = [v8 mutableCopy];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000209A4;
  v24[3] = &unk_100156FD8;
  v26 = a4;
  v10 = v19;
  v25 = v10;
  v11 = [v9 ef_filter:v24];
  v12 = [v11 count];
  *(*(*(a1 + 40) + 8) + 24) |= v12 != 0;
  if (v12)
  {
    [*(a1 + 32) appendFormat:@" << removingItems %@ from collection %@ >>", v11, v7];
  }

  [v9 removeObjectsInArray:v11];
  [v7 setItems:v9];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v14)
  {
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        v18 = [v7 addItem:v17 ordered:1];
        *(*(*(a1 + 40) + 8) + 24) |= v18;
        if (v18)
        {
          [*(a1 + 32) appendFormat:@" << addingItem %@ to collection %@ >>", v17, v7];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v14);
  }
}

uint64_t sub_1000209A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (objc_opt_isKindOfClass())
  {
    v5 = [*(a1 + 32) containsObject:v3] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100020A08(uint64_t a1)
{
  if (a1)
  {
    [*(a1 + 120) lock];
    if ([*(a1 + 16) count])
    {
      v2 = [*(a1 + 16) objectAtIndex:2];
    }

    else
    {
      v2 = 0;
    }

    [*(a1 + 120) unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100020A9C(_BYTE *a1)
{
  if (a1)
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    v2 = [v1 integerForKey:@"FlaggedMailboxControllerBadgeCount"];

    v3 = [a1 mailboxesCollection];
    v4 = [a1 conversationSubscriptionProvider];
    v32 = [v4 hasSubscribedConversations];

    v41 = [FavoriteItem itemForSharedMailboxWithType:1 selected:1];
    v55[0] = v41;
    v40 = [FavoriteItem itemForSharedMailboxWithType:2 selected:v2 > 0];
    v55[1] = v40;
    v39 = [FavoriteItem itemForSharedMailboxWithType:16 selected:0];
    v55[2] = v39;
    v38 = [FavoriteItem itemForSharedMailboxWithType:17 selected:0];
    v55[3] = v38;
    v37 = [FavoriteItem itemForSharedMailboxWithType:18 selected:0];
    v55[4] = v37;
    v36 = [FavoriteItem itemForSharedMailboxWithType:19 selected:0];
    v55[5] = v36;
    v35 = [FavoriteItem itemForSharedMailboxWithType:20 selected:0];
    v55[6] = v35;
    v34 = [FavoriteItem itemForSharedMailboxWithType:21 selected:0];
    v55[7] = v34;
    v33 = [FavoriteItem itemForSharedMailboxWithType:22 selected:0];
    v55[8] = v33;
    v5 = [FavoriteItem itemForSharedMailboxWithType:3 selected:0];
    v55[9] = v5;
    v6 = [FavoriteItem itemForSharedMailboxWithType:4 selected:0];
    v55[10] = v6;
    v7 = [FavoriteItem itemForSharedMailboxWithType:5 selected:0];
    v55[11] = v7;
    v8 = [FavoriteItem itemForUnifiedMailboxWithType:5 selected:0];
    v55[12] = v8;
    v9 = [FavoriteItem itemForUnifiedMailboxWithType:2 selected:0];
    v55[13] = v9;
    v10 = [FavoriteItem itemForUnifiedMailboxWithType:4 selected:0];
    v55[14] = v10;
    v11 = [FavoriteItem itemForUnifiedMailboxWithType:3 selected:0];
    v55[15] = v11;
    v12 = [FavoriteItem itemForUnifiedMailboxWithType:1 selected:0];
    v55[16] = v12;
    v42 = [NSArray arrayWithObjects:v55 count:17];

    v13 = [FavoriteItem itemForSharedMailboxWithType:6 selected:v32];
    v54[0] = v13;
    v14 = [FavoriteItem itemForSharedMailboxWithType:15 selected:0];
    v54[1] = v14;
    v15 = [FavoriteItem itemForSharedMailboxWithType:23 selected:0];
    v54[2] = v15;
    v16 = [FavoriteItem itemForSharedMailboxWithType:25 selected:0];
    v54[3] = v16;
    v17 = [FavoriteItem itemForSharedMailboxWithType:8 selected:0];
    v54[4] = v17;
    v18 = [FavoriteItem itemForSharedMailboxWithType:7 selected:0];
    v54[5] = v18;
    v19 = [NSArray arrayWithObjects:v54 count:6];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v20 = v42;
    v21 = 0;
    v22 = [v20 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v22)
    {
      v23 = *v49;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v49 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v21 |= [v3 addItem:*(*(&v48 + 1) + 8 * i)];
        }

        v22 = [v20 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v22);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = v19;
    v26 = [v25 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v26)
    {
      v27 = *v45;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v45 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v21 |= [v3 addItem:*(*(&v44 + 1) + 8 * j) ordered:1];
        }

        v26 = [v25 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v26);
    }

    if (a1[12] == 1)
    {
      v29 = [FavoriteItem itemForSharedMailboxWithType:23 selected:0];
      v30 = [v3 removeItem:v29];
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21 & 1;
}

void sub_1000211EC(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 104) displayedAccounts];
    v3 = +[FavoritesCollection mailboxesCollection];
    [*(a1 + 120) lock];
    [*(a1 + 16) addObject:v3];
    [*(a1 + 120) unlock];
    v4 = [FavoriteItem itemForUnifiedMailboxWithType:7 selected:1];
    [v3 addItem:v4];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = v2;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [FavoriteItem itemForInboxWithAccount:*(*(&v22 + 1) + 8 * v8) selected:1];
          [v3 addItem:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    sub_100020A9C(a1);
    [*(a1 + 120) lock];
    v10 = *(a1 + 16);
    v11 = +[FavoritesCollection outboxCollection];
    [v10 addObject:v11];

    [*(a1 + 120) unlock];
    v12 = +[FavoritesCollection accountsCollection];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v14)
    {
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [FavoriteItem itemForAccount:*(*(&v18 + 1) + 8 * v16), v18];
          [v12 addItem:v17];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }

    [*(a1 + 120) lock];
    [*(a1 + 16) addObject:v12];
    [*(a1 + 120) unlock];
  }
}

void sub_10002151C(void *a1)
{
  if (a1)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v3 = [v2 objectForKey:@"InboxesOrder"];

    if (v3)
    {
      v4 = +[NSUserDefaults standardUserDefaults];
      [v4 removeObjectForKey:@"InboxesOrder"];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100021954;
      v12[3] = &unk_100157028;
      v13 = v3;
      v5 = objc_retainBlock(v12);
      v6 = [a1 mailboxesCollection];
      v7 = [v6 items];
      v8 = [v7 mutableCopy];

      [v8 sortUsingComparator:v5];
      [v6 setItems:v8];
      v9 = sub_100020A08(a1);

      v10 = [v9 items];
      v11 = [v10 mutableCopy];

      [v11 sortUsingComparator:v5];
      [v9 setItems:v11];
    }
  }
}

void sub_1000216C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v19 = v16;

  _Unwind_Resume(a1);
}

void sub_100021730(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:off_100183408 object:*(a1 + 32) userInfo:0];
}

void sub_1000217A8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    [*(a1 + 120) lock];
    v3 = [*(a1 + 16) mutableCopy];
    [*(a1 + 120) unlock];
    sub_1000221E4(a1, v3, v4);
  }
}

uint64_t sub_100021954(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 persistentIDForMigration];
  v7 = [v5 persistentIDForMigration];
  v8 = v7;
  if (v6)
  {
    v9 = [*(a1 + 32) indexOfObject:v6];
    if (v8)
    {
LABEL_3:
      v10 = [*(a1 + 32) indexOfObject:v8];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:
  if (v9 < v10)
  {
    v11 = -1;
  }

  else
  {
    v11 = v10 < v9;
  }

  return v11;
}

id sub_100021A2C(uint64_t a1)
{
  if (!a1)
  {
    v10 = 0;
    goto LABEL_17;
  }

  [*(a1 + 120) lock];
  v2 = *(a1 + 56);
  if (v2)
  {
    goto LABEL_16;
  }

  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 16), "count")}];
  v4 = *(a1 + 56);
  *(a1 + 56) = v3;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a1 + 16);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = *v13;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v12 + 1) + 8 * i);
      if (![v9 isOutboxCollection])
      {
        if (![v9 isVisible])
        {
          continue;
        }

LABEL_12:
        [*(a1 + 56) addObject:v9];
        continue;
      }

      if (*(a1 + 8))
      {
        goto LABEL_12;
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v6);
LABEL_15:

  v2 = *(a1 + 56);
LABEL_16:
  v10 = [v2 copy];
  [*(a1 + 120) unlock];
LABEL_17:

  return v10;
}

id sub_100021C88(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = objc_alloc_init(NSMutableArray);
    [*(a1 + 120) lock];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = *(a1 + 16);
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) itemsOfType:{a2, v11}];
          [v4 addObjectsFromArray:v9];
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [*(a1 + 120) unlock];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100021E20(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [*(a1 + 104) displayedAccounts];
    v4 = [v3 allObjects];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100021F24;
    v10[3] = &unk_100157048;
    v10[4] = a2;
    v5 = [v4 ef_compactMap:v10];
    v6 = v5;
    v7 = &__NSArray0__struct;
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_100021F24(uint64_t a1, void *a2)
{
  v2 = [a2 mailboxUidOfType:*(a1 + 32) createIfNeeded:0];

  return v2;
}

void sub_1000221E4(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v26 = a3;
  if (a1)
  {
    v5 = MFUserAgent();
    v6 = [v5 isMaild];

    if (v6)
    {
      v7 = sub_10001EB38();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000D309C(v7);
      }
    }

    else
    {
      v24 = objc_alloc_init(NSMutableDictionary);
      v8 = objc_alloc_init(NSMutableArray);
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = v25;
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v10)
      {
        v11 = *v31;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v30 + 1) + 8 * i);
            [v13 prepareForWriting];
            if (([v13 transient] & 1) == 0)
            {
              v14 = [v13 dictionaryRepresentation];
              [v8 addObject:v14];
              v15 = [a1 mailboxesCollection];
              v16 = v13 == v15;

              if (v16)
              {
                v17 = MFLogGeneral();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v37 = v26;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#Favorites Writing mailboxes collection with reason: << %@ >>", buf, 0xCu);
                }
              }
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v10);
      }

      v35[0] = v8;
      v34[0] = @"collections";
      v34[1] = @"buildVersion";
      v18 = _CFCopySystemVersionDictionary();
      v19 = [v18 objectForKeyedSubscript:_kCFSystemVersionBuildVersionKey];

      v34[2] = @"version";
      v35[1] = v19;
      v35[2] = &off_100163298;
      v20 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
      [v24 setDictionary:v20];

      v21 = *(a1 + 24);
      if (v21)
      {
        v22 = [v21 dictionaryRepresentation];
        if ([v22 count])
        {
          [v24 setObject:v22 forKey:@"lastSelectedItem"];
        }
      }

      v23 = *(a1 + 96);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100022624;
      v27[3] = &unk_1001563D8;
      v7 = v24;
      v28 = v7;
      v29 = a1;
      [v23 performBlock:v27];
    }
  }
}

void sub_100022624(uint64_t a1)
{
  v2 = [NSPropertyListSerialization dataWithPropertyList:*(a1 + 32) format:200 options:0 error:0];
  [v2 writeToFile:*(*(a1 + 40) + 32) options:1073741825 error:0];
  v3 = sub_10001EB38();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FavoritesPersistence collection changed", v4, 2u);
  }

  notify_post([@"FavoritePersistenceShouldReload" UTF8String]);
}

uint64_t sub_100022828(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_100021A2C(a1);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v4 = v15 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = *v15;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [v8 items];
        v10 = [v9 indexOfObject:v3];

        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v11 = v8;

      if (!v11)
      {
        goto LABEL_13;
      }

      [*(a1 + 120) lock];
      [v11 addOrUpdateItem:v3 replacedItem:0];
      [*(a1 + 120) unlock];
      a1 = 1;
    }

    else
    {
LABEL_10:

LABEL_13:
      v12 = MFLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000D30E0(v3, v12);
      }

      v11 = 0;
      a1 = 0;
    }
  }

  return a1;
}

void sub_100022C04(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = sub_10001EB38();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v33 = [v5 count];
      v34 = 2048;
      v35 = [v6 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Syncing local changes (%lu added, %lu removed)", buf, 0x16u);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v5;
    v9 = 0;
    v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v10)
    {
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = [v13 syncKey];
          if (v14)
          {
            v15 = sub_100023038(a1, v13);
            [a1[14] setDictionary:v15 forKey:v14];

            v9 = 1;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v17)
    {
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = [*(*(&v22 + 1) + 8 * j) syncKey];
          if (v20)
          {
            v21 = [a1[14] dictionaryForKey:v20];
            if (v21)
            {
              [a1[14] removeObjectForKey:v20];
              v9 = 1;
            }
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }

    if (v9)
    {
      [a1[14] synchronize];
    }
  }
}

id sub_100023038(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [NSMutableDictionary alloc];
    v5 = [v3 syncValue];
    a1 = [v4 initWithDictionary:v5];

    [a1 setObject:&off_1001632B0 forKey:@"version"];
    +[NSDate timeIntervalSinceReferenceDate];
    v6 = [NSNumber numberWithDouble:?];
    [a1 setObject:v6 forKey:@"modified"];

    v7 = sub_10001EB38();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 syncKey];
      sub_1000D3158(v8, a1, v10, v7);
    }
  }

  return a1;
}

void sub_100023170(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000231BC(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = sub_10001EB38();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v12 = a2;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "merging external changes (reason: %lu) %@", buf, 0x16u);
    }

    objc_initWeak(buf, a1);
    v7 = a1[17];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000D24B0;
    v8[3] = &unk_1001570C0;
    objc_copyWeak(v10, buf);
    v9 = v5;
    v10[1] = a2;
    [v7 performBlock:v8];

    objc_destroyWeak(v10);
    objc_destroyWeak(buf);
  }
}

void sub_100023320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100023358(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = +[NSNull null];

  if (v8 == v6)
  {
    v19 = [*(a1 + 32) itemWithSyncKey:v7];
    v20 = [v19 representingMailbox];
    if ([v19 type] == 2 && objc_msgSend(*(a1 + 40), "containsObject:", v20) && (+[FavoriteItem itemForMailbox:selected:shouldSync:](FavoriteItem, "itemForMailbox:selected:shouldSync:", v20, objc_msgSend(v19, "isSelected"), 0), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      *(*(*(a1 + 56) + 8) + 24) |= [*(a1 + 32) addOrUpdateItem:v21 replacedItem:0];
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v22 = [*(a1 + 32) removeItemWithSyncKey:v7];
    }
  }

  else
  {
    v9 = v6;
    v10 = [FavoriteItem itemFromDictionary:v9];
    if (v10)
    {
      v11 = *(a1 + 32);
      v23 = 0;
      v12 = [v11 addOrUpdateItem:v10 replacedItem:&v23];
      v13 = v23;
      *(*(*(a1 + 56) + 8) + 24) |= v12;
      if (v13)
      {
        v14 = sub_10001EB38();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v13 syncKey];
          v16 = [v10 syncKey];
          *buf = 138412546;
          v25 = v15;
          v26 = 2112;
          v27 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "item %@ was replaced by %@", buf, 0x16u);
        }

        v17 = *(*(a1 + 48) + 112);
        v18 = [v13 syncKey];
        [v17 removeObjectForKey:v18];
      }
    }

    else
    {
      v13 = sub_10001EB38();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000D31C0(v7, v9, v13);
      }
    }
  }
}

BOOL sub_1000237E0(id a1, FavoriteItem *a2)
{
  v2 = [(FavoriteItem *)a2 account];
  v3 = [v2 isActive];

  return v3;
}

NSString *__cdecl sub_10002382C(id a1, FavoriteItem *a2)
{
  v2 = [(FavoriteItem *)a2 ef_publicDescription];

  return v2;
}

void sub_10002385C(id *a1)
{
  if (!a1)
  {
    return;
  }

  v18 = MFUserAgent();
  if ([v18 isMaild])
  {
    goto LABEL_5;
  }

  v3 = objc_getProperty(a1, v2, 80, 1);
  if (v3)
  {

LABEL_5:

    return;
  }

  Property = objc_getProperty(a1, v4, 88, 1);

  if (!Property)
  {
    v6 = a1[8];
    v7 = [v6 mailboxRepository];

    v8 = +[EFPromise promise];
    v9 = +[EFScheduler globalAsyncScheduler];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100025070;
    v23[3] = &unk_1001563D8;
    v10 = v7;
    v24 = v10;
    v11 = v8;
    v25 = v11;
    [v9 performBlock:v23];

    v12 = [v11 future];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100025140;
    v21[3] = &unk_100157198;
    v13 = v10;
    v22 = v13;
    v14 = [v12 then:v21];
    objc_setProperty_atomic(a1, v15, v14, 88);

    v17 = objc_getProperty(a1, v16, 88, 1);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100025174;
    v20[3] = &unk_1001571C0;
    v20[4] = a1;
    [v17 addSuccessBlock:v20];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000254A0;
    v19[3] = &unk_100156918;
    v19[4] = a1;
    [v17 addFailureBlock:v19];
  }
}

void sub_100023BE0(uint64_t a1, char a2)
{
  if (a1)
  {
    LOBYTE(v4) = a2;
    v2 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v2 performBlock:&v3];
  }
}

void sub_100023C8C(uint64_t a1)
{
  v2 = sub_10001FF30(*(a1 + 32), *(a1 + 40));
  if (v2)
  {
    sub_1000217A8(*(a1 + 32), v2);
  }
}

void sub_100023E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_100023F88(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    [a1[15] lock];
    v15 = [a1 mailboxesCollection];
    sub_100021C88(a1, 2);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v4 = v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    v14 = a1;
    v6 = 0;
    if (v5)
    {
      v7 = *v17;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 representingMailbox];
          if (v10 && [v3 containsObject:v10])
          {
            v11 = sub_10001EB38();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [v10 ef_publicDescription];
              *buf = 138543362;
              v21 = v12;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "removing orphaned mailbox from favorites: %{public}@", buf, 0xCu);
            }

            v13 = [v15 removeItem:v9];
            if (!v6)
            {
              v6 = +[NSMutableArray array];
            }

            [v6 addObject:v9];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v5);
    }

    if ([v6 count])
    {
      sub_100022C04(v14, 0, v6);
      sub_1000217A8(v14, @"Removing orphaned mailboxes");
      sub_1000D2414(v14, 0);
    }

    [v14[15] unlock];
  }
}

void sub_100024268(id *a1, void *a2)
{
  v18 = a2;
  if (a1)
  {
    [a1[15] lock];
    v20 = [a1 mailboxesCollection];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v18;
    v3 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    v17 = a1;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = *v22;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          v9 = [FavoriteItem itemForMailbox:v8 selected:1, v17];
          v10 = [v20 items];
          v11 = [v10 indexOfObject:v9];
          if (v11 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = sub_10001EB38();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [v8 ef_publicDescription];
              *buf = 138543362;
              v26 = v13;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "item not found for mailbox: %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v14 = sub_10001EB38();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [v8 ef_publicDescription];
              *buf = 138543362;
              v26 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "updating existing item with new mailbox data: %{public}@", buf, 0xCu);
            }

            v12 = [v10 objectAtIndex:v11];
            [v12 setMailbox:v8];
            if (!v4)
            {
              v4 = +[NSMutableArray array];
            }

            [v4 addObject:v12];
            v5 = 1;
          }
        }

        v3 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v3);

      if (v5)
      {
        v16 = v17;
        sub_1000217A8(v17, @"_processNewMailboxes");
        sub_1000D2414(v17, 0);
LABEL_21:
        [*(v16 + 120) unlock];

        goto LABEL_22;
      }
    }

    else
    {

      v4 = 0;
    }

    v16 = v17;
    goto LABEL_21;
  }

LABEL_22:
}

void sub_100024758(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"OldChildren"];
  v4 = [v2 objectForKeyedSubscript:@"NewChildren"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [NSMutableArray arrayWithArray:v3];
    [v7 removeObjectsInArray:v5];
    if ([v7 count])
    {
      v8 = [*(a1 + 32) object];
      v9 = [v8 account];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = sub_10001EB38();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "delaying processing of orphaned mailboxes for Exchange account", buf, 2u);
        }

        v11 = dispatch_get_global_queue(0, 0);
        v12 = dispatch_time(0, 5000000000);
        v14 = _NSConcreteStackBlock;
        v15 = 3221225472;
        v16 = sub_100024A04;
        v17 = &unk_1001563D8;
        v18 = *(a1 + 40);
        v19 = v7;
        dispatch_after(v12, v11, &v14);
      }

      else
      {
        sub_100023F88(*(a1 + 40), v7);
      }
    }

    v13 = [NSMutableArray arrayWithArray:v5, v14, v15, v16, v17, v18];
    [v13 removeObjectsInArray:v3];
    if ([v13 count])
    {
      sub_100024268(*(a1 + 40), v13);
    }
  }

  [*(a1 + 40) _loadMailboxesAfterMailboxListingChanged];
  *(*(a1 + 40) + 11) = 0;
}

void sub_100024A04(uint64_t a1)
{
  v2 = sub_10001EB38();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting processing of orphaned mailboxes for Exchange account", v3, 2u);
  }

  sub_100023F88(*(a1 + 32), *(a1 + 40));
}

void sub_100024EB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v5 = @"FavoritesPersistenceCollectionChangedSourceKey";
    v6 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:off_100183408 object:*(a1 + 40) userInfo:v3];
}

void sub_100025070(uint64_t a1)
{
  v2 = [*(a1 + 32) mailboxObjectIDsForMailboxType:6];
  v5 = [v2 anyObject];

  v3 = *(a1 + 40);
  if (v5)
  {
    [v3 finishWithResult:?];
  }

  else
  {
    v4 = [NSError em_internalErrorWithReason:@"outbox does not exist"];
    [v3 finishWithError:v4];
  }
}

id sub_100025140(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) mailboxForObjectID:a2];

  return v2;
}

void sub_100025174(uint64_t a1, void *a2)
{
  v8 = a2;
  v4 = sub_100025218(*(a1 + 32), v8);
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_setProperty_atomic(v5, v3, v4, 80);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    objc_setProperty_atomic(v7, v6, 0, 88);
  }
}

id *sub_100025218(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    [objc_getProperty(a1 v3];
    v17 = v4;
    v5 = [NSArray arrayWithObjects:&v17 count:1];
    v6 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:v5];

    v7 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v6 sortDescriptors:&__NSArray0__struct queryOptions:0 label:@"Outbox (Observing)"];
    v8 = [v4 objectID];
    v16 = v8;
    v9 = [NSArray arrayWithObjects:&v16 count:1];
    v10 = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v9 forExclusion:0];

    v11 = [a1[8] messageRepository];
    a1 = [v11 startCountingQuery:v7 includingServerCountsForMailboxScope:v10 withObserver:a1];
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#Favorites Started observing outbox using predicate: %@", &v14, 0xCu);
    }
  }

  return a1;
}

void sub_10002541C(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_1000254A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [v3 ef_publicDescription];
    sub_1000D328C(v5, v10, v4);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    objc_setProperty_atomic(v7, v6, 0, 80);
    v9 = *(a1 + 32);
    if (v9)
    {
      objc_setProperty_atomic(v9, v8, 0, 88);
    }
  }
}

BOOL sub_100025CE8(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = v3 == *(a1 + 32);

  return v4;
}

BOOL sub_1000260AC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_100026424(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _runXPCActivity:v3];
}

void sub_10002711C(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_INTERVAL, *(a1 + 32));
}

void sub_1000271B8(uint64_t a1, void *a2)
{
  v3 = a2;
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, *(a1 + 32));
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = qword_100185598;
  v12 = qword_100185598;
  if (!qword_100185598)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000275CC;
    v8[3] = &unk_100157290;
    v8[4] = &v9;
    sub_1000275CC(v8);
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v4)
  {
    v5 = *v4;
    xpc_dictionary_set_BOOL(v3, [v5 UTF8String], 1);

    if (*(a1 + 40) == 1)
    {
      xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 0);
      xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
    }
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"NSString *get_DASCTSMailFetchKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"FetchXPCActivityScheduler.m" lineNumber:18 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10002737C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1000273CC(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_ALLOW_BATTERY, 0);
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_INTERVAL, *(a1 + 32));
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_GRACE_PERIOD, *(a1 + 40));
}

void *sub_1000275CC(void *a1)
{
  v5[0] = 0;
  if (!qword_1001855A0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10002776C;
    v5[4] = &unk_1001562E8;
    v5[5] = v5;
    v5[7] = 0;
    v5[8] = 0;
    v5[6] = "/System/Library/PrivateFrameworks/DuetActivityScheduler.framework/DuetActivityScheduler";
    qword_1001855A0 = _sl_dlopen();
  }

  v2 = qword_1001855A0;
  if (!qword_1001855A0)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *DuetActivitySchedulerLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"FetchXPCActivityScheduler.m" lineNumber:17 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "_DASCTSMailFetchKey");
  *(*(a1[4] + 8) + 24) = result;
  qword_100185598 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_10002776C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1001855A0 = result;
  return result;
}

id sub_100027A08(id a1, MailAccount *a2)
{
  v2 = a2;
  v3 = [(MailAccount *)v2 primaryMailboxUid];
  v4 = [[MFNanoBridgeSettingsAccountSpecificMailbox alloc] initWithMailboxUid:v3 account:v2];

  return v4;
}

BOOL sub_100027A94(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t sub_100028610(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a1 primaryMailboxUid];
  v7 = [v6 uniqueId];

  if (v7)
  {
    v8 = [a3 objectForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 primaryMailboxUid];
  v10 = [v9 uniqueId];

  if (v10)
  {
    v11 = [a3 objectForKey:v10];
    v12 = v11;
    if (v8 && v11)
    {
      v13 = [v8 compare:v11];
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7)
  {
    v13 = -1;
  }

  else
  {
    v13 = v10 != 0;
  }

LABEL_12:

  return v13;
}

void sub_10002870C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_100028858(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1001855B8;
  qword_1001855B8 = v1;
}

void sub_1000288DC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = qword_1001855C8;
  qword_1001855C8 = v1;
}

void sub_100028AE0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100028B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MailboxAutoFetchController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_100029080(uint64_t result, int a2)
{
  v2 = *(*(result + 40) + 8);
  if (*(v2 + 24) == 1 && (*(result + 48) & a2) != 0)
  {
    v3 = *(result + 32);
    if ((*(v3 + 40) & a2) == 0 && *(v3 + 32) >= 3)
    {
      *(v2 + 24) = 0;
    }
  }

  return result;
}

void sub_1000292A4(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = MFAutoFetchLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "maild fetching mailboxObjectIDs: %@", &v8, 0xCu);
    }

    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 account];
    [v4 _fetchChangedMailboxes:v5 forAccount:v7 options:*(a1 + 48)];
  }
}

void sub_100029464(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained displayedAccountsToSyncByMailbox];
  v4 = sub_100005C24(v3);

  if ([v4 count])
  {
    v5 = [*(a1 + 32) fetchProcessorScheduler];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100029600;
    v11[3] = &unk_1001563D8;
    v6 = v4;
    v7 = *(a1 + 32);
    v12 = v6;
    v13 = v7;
    [v5 performBlock:v11];

    v8 = v12;
  }

  else
  {
    v9 = MFAutoFetchLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "powernap: no eligible accounts were found", v10, 2u);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"MailboxAutoFetchProcessFinishedNotification" object:*(a1 + 32)];
  }
}

void sub_100029600(uint64_t a1)
{
  v4 = +[MFFetchProcessor powernapProcessor];
  [v4 setAccounts:*(a1 + 32)];
  v2 = [*(a1 + 40) favoritesPersistence];
  [v4 setFavoritesPersistence:v2];

  [v4 runSynchronouslyWithDuration:1800.0];
  v3 = +[MFMessageBodyProcessor powernapProcessor];
  [v3 runSynchronouslyWithDuration:1800];
}

void sub_1000296A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

_BYTE *sub_100029798(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[104] & 1) == 0)
  {
    return [result _tryFetch:EMFetchTypeBackground withAccounts:0];
  }

  return result;
}

void sub_10002A3A8(uint64_t a1)
{
  if ([*(a1 + 32) gotNewMessagesState])
  {
    v2 = MFPowerLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) ef_publicDescription];
      v4 = [*(a1 + 32) mailbox];
      v5 = [v4 accountRelativePath];
      v19 = 138543618;
      v20 = v3;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Push Received] account=%{public}@ mailbox=%@", &v19, 0x16u);
    }
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  [v6 setObject:*(a1 + 40) forKeyedSubscript:@"AutoFetchJobAccount"];
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) gotNewMessagesState]);
  [v6 setObject:v7 forKeyedSubscript:@"AutoFetchJobNewMessagesState"];

  v8 = [*(a1 + 32) mailbox];
  [v6 setObject:v8 forKeyedSubscript:@"AutoFetchJobMailboxUid"];

  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) dontNotify]);
  [v6 setObject:v9 forKeyedSubscript:@"AutoFetchDontNotify"];

  v10 = *(a1 + 48);
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"AutoFetchError"];
  }

  v11 = [[NSDictionary alloc] initWithDictionary:v6];
  v12 = *(a1 + 56);
  v13 = [*(a1 + 32) mailbox];
  [v12 _endSignpostForMailboxFetch:v13];

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 postNotificationName:@"AutoFetchPushCompletedNotification" object:*(a1 + 56) userInfo:v11];

  [*(a1 + 32) markAsDone];
  if ([*(a1 + 32) isPush])
  {
    v15 = [*(a1 + 32) mailbox];
    v16 = [v15 fullPath];

    if (v16)
    {
      sub_10002A774(qword_1001855B0, v16, *(a1 + 32));
    }
  }

  if (*(a1 + 48))
  {
    *(*(a1 + 56) + 48) = 1;
    if ([*(a1 + 32) displayErrors])
    {
      v17 = sub_100027C70();
      [v17 displayError:*(a1 + 48) forAccount:*(a1 + 40) mode:0];
    }
  }

  v18 = +[MFPowerController sharedInstance];
  [v18 releaseAssertionWithIdentifier:@"com.apple.mail.fetchchangeduids"];
}

void sub_10002A774(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  obj = v5;
  objc_sync_enter(obj);
  v8 = [obj objectForKey:v6];
  if (!v8)
  {
    v8 = [[AutoFetchHistoryEntry alloc] initWithMailboxPath:v6];
    [obj setObject:v8 forKey:v6];
  }

  [(AutoFetchHistoryEntry *)v8 setFrequency:[(AutoFetchHistoryEntry *)v8 frequency]+ 1];
  [(AutoFetchHistoryEntry *)v8 setLastFetchTime:CFAbsoluteTimeGetCurrent()];
  [v7 responsiveness];
  [(AutoFetchHistoryEntry *)v8 setLastFetchDuration:?];
  -[AutoFetchHistoryEntry setNewMessagesState:](v8, "setNewMessagesState:", [v7 gotNewMessagesState]);

  objc_sync_exit(obj);
}

void sub_10002A884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

_BYTE *sub_10002AD44(uint64_t a1)
{
  v2 = [*(a1 + 40) userInfo];
  v3 = [v2 objectForKeyedSubscript:CPNetworkObserverReachable];
  *(*(a1 + 32) + 104) = [v3 BOOLValue];

  v4 = [*(a1 + 32) autoFetchState];
  result = *(a1 + 32);
  if (v4 == 2)
  {
    if (result[104] == 1)
    {
      [result _cleanUpReachabilityTimer];
      v6 = *(a1 + 32);

      return [v6 _checkForWiFi];
    }
  }

  else
  {
    result = [result autoFetchState];
    if (!result)
    {
      result = *(a1 + 32);
      if (result[106] == 1 && result[104] == 1)
      {
        v7 = EMFetchTypeBackground;

        return [result _tryFetch:v7 withAccounts:0];
      }
    }
  }

  return result;
}

id sub_10002B7C0(uint64_t a1)
{
  v2 = [*(a1 + 32) mailbox];
  if ([v2 type] == 7)
  {
    v3 = 8;
  }

  else
  {
    v3 = 6;
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v4 _scheduleRetryRequest:v5 priority:v3 selector:"_reportSynchronousFetchCompletion:"];
}

void sub_10002B840(uint64_t a1)
{
  v2 = [*(a1 + 32) key];
  if (v2)
  {
    v3 = [*(*(a1 + 40) + 24) objectForKey:v2];
    [v3 doubleValue];
    v5 = v4;

    v6 = *(*(a1 + 40) + 24);
    [*(a1 + 32) responsiveness];
    v8 = [NSNumber numberWithDouble:v5 + v7];
    [v6 setObject:v8 forKey:v2];
  }

  v9 = [*(a1 + 32) mailbox];
  v10 = [v9 fullPath];

  if (v10)
  {
    sub_10002A774(qword_1001855A8, v10, *(a1 + 32));
  }

  if ([*(a1 + 32) gotNewMessagesState])
  {
    v11 = MFAutoFetchLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) mailbox];
      v13 = [v12 ef_publicDescription];
      v14 = [*(a1 + 48) ef_publicDescription];
      v27 = 138543618;
      v28 = v13;
      v29 = 2114;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Request got new messages for mailbox %{public}@ of %{public}@", &v27, 0x16u);
    }
  }

  v15 = objc_alloc_init(NSMutableDictionary);
  [v15 setObject:*(a1 + 48) forKeyedSubscript:@"AutoFetchJobAccount"];
  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) gotNewMessagesState]);
  [v15 setObject:v16 forKeyedSubscript:@"AutoFetchJobNewMessagesState"];

  v17 = [*(a1 + 32) mailbox];
  [v15 setObject:v17 forKeyedSubscript:@"AutoFetchJobMailboxUid"];

  v18 = *(a1 + 56);
  if (v18)
  {
    [v15 setObject:v18 forKeyedSubscript:@"AutoFetchError"];
  }

  v19 = [[NSDictionary alloc] initWithDictionary:v15];
  v20 = *(a1 + 40);
  v21 = [*(a1 + 32) mailbox];
  [v20 _endSignpostForMailboxFetch:v21];

  v22 = +[NSNotificationCenter defaultCenter];
  [v22 postNotificationName:@"AutoFetchProcessJobCompletedNotification" object:*(a1 + 40) userInfo:v19];

  [*(a1 + 32) markAsDone];
  --*(*(a1 + 40) + 88);
  v23 = *(a1 + 40);
  if (!v23[11])
  {
    [v23 _finishAutoFetch];
  }

  if (*(a1 + 56))
  {
    *(*(a1 + 40) + 48) = 1;
    if ((*(*(a1 + 40) + 40) & 2) != 0 || [*(a1 + 32) displayErrors])
    {
      v24 = [*(a1 + 32) mailbox];
      v25 = [v24 type] == 7;

      if (v25)
      {
        v26 = sub_100027C70();
        [v26 displayError:*(a1 + 56) forAccount:*(a1 + 48) mode:0];
      }
    }
  }
}

id sub_10002C090(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 userInfo];
    v4 = [v3 objectForKeyedSubscript:MonitoredActivityInvocation];

    v5 = [v4 target];
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) object];
    [v6 removeObserver:v7 name:MonitoredActivityEnded object:v8];

    v9 = [v5 jobList];
    [*(a1 + 40) setPushedMailboxJobList:v9];
  }

  v10 = *(a1 + 40);

  return [v10 _scheduleAllJobs];
}

void sub_10002C1C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = +[NSDate date];
  [v2 setLastAdditionalMailboxesFetchDate:?];

  v5 = +[MFFetchProcessor intelligentSkeletonFetchProcessor];
  v3 = [*(a1 + 40) favoritesPersistence];
  [v5 setFavoritesPersistence:v3];

  [v5 setAccounts:*(a1 + 48)];
  [v5 runSynchronouslyWithDuration:15.0];
}

void sub_10002C378(uint64_t a1)
{
  v2 = sub_100027C70();
  v3 = [v2 isFrontmost];

  if (v3)
  {
    v4 = [*(a1 + 32) userInfo];
    v5 = [v4 objectForKeyedSubscript:MSNewNotificationSoundKeySuppressionContexts];
    v6 = [*(a1 + 40) currentAlertSuppresionContexts];
    v7 = [v5 intersectsSet:v6];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:MSNewNotificationSoundKeyAccountIDOfSoundToPlay];
      v9 = [v4 objectForKeyedSubscript:MSNewNotificationSoundKeyLoudestState];
      v10 = [v9 unsignedIntegerValue];

      v11 = MFAutoFetchLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "**DING** Auto fetch notifying user of new mail.", v12, 2u);
      }

      [MFSoundController playNewMailSoundStyle:v10 forAccount:v8];
    }
  }
}

void sub_10002C8B8(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_10002C94C(void *a1, void *a2)
{
  v10 = a1;
  v3 = a2;
  v4 = [v10 mailbox];
  [v3 appendFormat:@"  mailbox: %@\n", v4];

  v5 = [v10 account];
  [v3 appendFormat:@"    account: %@\n", v5];

  if ([v10 isVisibleFetch])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"    isVisibleFetch: %@\n", v6];
  if ([v10 isUserRequested])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"    isUserRequested: %@\n", v7];
  if ([v10 isForegroundRequest])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"    isForegroundRequest: %@\n", v8];
  if ([v10 shouldGrowFetchWindow])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 appendFormat:@"    shouldGrowFetchWindow: %@\n", v9];
}

void sub_10002CA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10002CAC0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 mailboxPath];
  [v4 appendFormat:@"  %@\n", v5];

  [v4 appendFormat:@"    frequency  : %lu\n", objc_msgSend(v3, "frequency")];
  [v3 lastFetchTime];
  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  [v4 appendFormat:@"    last fetch : %@\n", v6];

  [v3 lastFetchDuration];
  [v4 appendFormat:@"    duration   : %.2fs\n", v7];
  v8 = [v3 newMessagesState];
  v9 = v8;
  if (v8 >= 6)
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#Warning unable to create string for new messages state %lu!", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v10 = *(&off_100157468 + v8);
  }

  [v4 appendFormat:@"    result     : %@\n", v10];
}

void sub_10002CC88(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"AutoFetchDisabled"];

  if (v2)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#Warning fetching disabled (AutoFetchDisabled = YES)", v13, 2u);
    }
  }

  else
  {
    v4 = [MailboxAutoFetchController alloc];
    v5 = sub_100027C70();
    v6 = [v5 favoritesPersistence];
    v7 = [(MailboxAutoFetchController *)v4 initWithFavoritesPersistence:v6];
    v8 = qword_1001855D8;
    qword_1001855D8 = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = qword_1001855A8;
    qword_1001855A8 = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    v12 = qword_1001855B0;
    qword_1001855B0 = v11;
  }
}

BOOL sub_10002D2CC(id a1, MailAccount *a2, BOOL *a3)
{
  v3 = a2;
  [(MailAccount *)v3 uniqueIdForPersistentConnection];
  v4 = PCSettingsGetPollInterval() == -1;

  return v4;
}

void sub_10002D580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10002DC68(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_10002DD44(void *a1, void *a2)
{
  v4 = [a1 mailbox];
  v5 = [a2 mailbox];
  v6 = [v4 type];
  v7 = [v5 type];
  if (v6 | v7)
  {
    if (v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = v7 != 0;
    }
  }

  else
  {
    v9 = [a1 displayName];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v4 displayName];
    }

    v12 = v11;

    v13 = [a2 displayName];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v5 displayName];
    }

    v16 = v15;

    v8 = [v12 localizedCaseInsensitiveCompare:v16];
  }

  return v8;
}

id sub_10002FA14(int a1, int a2)
{
  v4 = [NSMutableString stringWithString:@"FOUND_IN_MAILBOX_FORMAT"];
  v5 = v4;
  if (a1)
  {
    [v4 appendString:@"_WITH_ACCOUNT"];
  }

  if (a2)
  {
    [v5 appendString:@"_SHORT"];
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:v5 value:&stru_10015BEC8 table:@"Main"];

  return v7;
}

void sub_10002FC3C(id a1)
{
  v1 = objc_alloc_init(MailChangeManager);
  v2 = qword_100185608;
  qword_100185608 = v1;
}

void sub_100030924()
{
  objc_end_catch();

  JUMPOUT(0x100030A28);
}

void sub_100030B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_10003118C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100031418(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100032DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MailPersistentStorageSaveOperation;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100033008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  v21 = v19;
  objc_destroyWeak((v20 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100033070(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isFinished])
  {
    v1 = [WeakRetained taskAssertion];
    [v1 invalidate];

    [WeakRetained setTaskAssertion:0];
  }
}

void sub_100033298(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_10003346C()
{
  v0 = [MailPersistentStorage alloc];
  v3 = +[MailPersistentStorage defaultFilePath];
  v1 = [(MailPersistentStorage *)v0 initWithFilePath:?];
  v2 = qword_100185618;
  qword_100185618 = v1;
}

void sub_10003409C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185620;
  qword_100185620 = v1;
}

void sub_1000341C0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100185630;
  qword_100185630 = v1;
}

void sub_100034328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MailXPCServices;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000345B0(id a1, Class a2)
{
  if (objc_opt_respondsToSelector())
  {

    [(objc_class *)a2 shutdown];
  }
}

char *sub_10003485C(void *a1)
{
  v1 = a1;
  v2 = xpc_copy_description(v1);
  if (v2)
  {
    v2 = [[NSString alloc] initWithBytesNoCopy:v2 length:strlen(v2) encoding:4 freeWhenDone:1];
  }

  return v2;
}

void sub_1000348F0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 code];
  if (v5 <= 1001)
  {
    if (v5 != 1000)
    {
      if (v5 != 1001)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_10:
    v7 = +[MailXPCServices log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v3 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1000D3880();
    }

LABEL_13:
    [*(*(a1 + 32) + 40) lock];
    [*(*(a1 + 32) + 32) removeObject:WeakRetained];
    [*(*(a1 + 32) + 40) unlock];
    [WeakRetained stop];
    goto LABEL_14;
  }

  if ((v5 - 1002) < 2)
  {
    goto LABEL_10;
  }

  if (v5 == 1004)
  {
    v6 = +[MailXPCServices log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [v3 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1000D383C();
    }
  }

LABEL_14:
}

void sub_10003528C(uint64_t a1, int a2, void *a3, void *a4)
{
  reply = a3;
  v8 = a4;
  if (reply)
  {
    if (a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    if (a2)
    {
      goto LABEL_8;
    }
  }

  if (!v8)
  {
    v8 = [NSError errorWithDomain:MSMailServiceErrorDomain code:1500 userInfo:0];
  }

  v9 = [_MSMailServiceKeyErrorDomain UTF8String];
  v10 = [v8 domain];
  xpc_dictionary_set_string(reply, v9, [v10 UTF8String]);

  xpc_dictionary_set_int64(reply, [_MSMailServiceKeyErrorCode UTF8String], objc_msgSend(v8, "code"));
LABEL_8:
  v11 = +[MailXPCServices log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      pid = xpc_connection_get_pid(v12);
    }

    else
    {
      pid = -1;
    }

    int64 = xpc_dictionary_get_int64(*(a1 + 32), [_MSMailServiceMessageIndex UTF8String]);
    v15 = *(a1 + 40);
    if (a2)
    {
      v16 = &stru_10015BEC8;
    }

    else
    {
      v16 = @"un";
    }

    if (a2)
    {
      v17 = @"reply";
    }

    else
    {
      v17 = @"error";
    }

    v18 = v8;
    if (a2)
    {
      v21 = *(a1 + 40);
      v22 = int64;
      v19 = reply;
      v18 = xpc_copy_description(v19);
      if (v18)
      {
        v18 = [[NSString alloc] initWithBytesNoCopy:v18 length:strlen(v18) encoding:4 freeWhenDone:1];
      }

      int64 = v22;
      v15 = v21;
    }

    *buf = 67110402;
    v24 = pid;
    v25 = 2048;
    v26 = int64;
    v27 = 2048;
    v28 = v15;
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v17;
    v33 = 2112;
    v34 = v18;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "PID %d (%lld) : <connection: %p> handled message %@successfully sending %@ %@", buf, 0x3Au);
    if (a2)
    {
    }
  }

  v20 = *(a1 + 40);
  if (v20)
  {
    xpc_connection_send_message(v20, reply);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000355A4(void *a1)
{
  v2 = a1[7];
  v3 = objc_opt_respondsToSelector();
  v4 = a1[7];
  v5 = a1[4];
  v6 = a1[5];
  if (v3)
  {
    v7 = a1[6];

    [v4 handleMessage:v5 connectionState:v6 reply:v7];
  }

  else
  {
    v10 = 0;
    v11 = 0;
    [v4 handleMessage:v5 connectionState:v6 replyObject:&v11 error:&v10];
    v8 = v11;
    v9 = v10;
    (*(a1[6] + 16))();
  }
}

void sub_100035700(uint64_t a1)
{
  v2 = [*(a1 + 40) serviceName];
  v3 = [*(*(a1 + 32) + 24) objectForKey:v2];

  if (v3)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MailXPCServices.m" lineNumber:319 description:{@"multiple services attempted to register for service name '%@'", v2}];
  }

  v4 = +[MailXPCServices log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    *buf = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "registering class %@ for service name %@", buf, 0x16u);
  }

  [*(*(a1 + 32) + 24) setObject:*(a1 + 40) forKey:v2];
}

id sub_100035954(void *a1)
{
  result = [*(a1[4] + 24) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_100035A2C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100035AD4;
  v2[3] = &unk_100157640;
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsWithOptions:1 usingBlock:v2];
}

void sub_100035D4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  type = xpc_get_type(v3);
  if (type == &_xpc_type_error)
  {
    if (v3 == &_xpc_error_connection_invalid)
    {
      v19 = 1001;
    }

    else if (v3 == &_xpc_error_connection_interrupted)
    {
      v19 = 1002;
    }

    else
    {
      if (v3 != &_xpc_error_termination_imminent)
      {
        v12 = v3;
        v13 = xpc_copy_description(v12);
        if (v13)
        {
          v13 = [[NSString alloc] initWithBytesNoCopy:v13 length:strlen(v13) encoding:4 freeWhenDone:1];

          if (v13)
          {
            v23 = NSLocalizedDescriptionKey;
            v24 = v13;
            v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
LABEL_19:
            v20 = [NSError errorWithDomain:@"XPCConnectionErrorDomain" code:1000 userInfo:v14];

            goto LABEL_20;
          }
        }

        else
        {
        }

        v14 = 0;
        goto LABEL_19;
      }

      v19 = 1003;
    }

    v20 = [NSError errorWithDomain:@"XPCConnectionErrorDomain" code:v19 userInfo:0];
LABEL_20:
    [*(a1 + 32) handleError:v20];

    goto LABEL_21;
  }

  if (type == &_xpc_type_dictionary)
  {
    v15 = [[MFTaskAssertion alloc] initWithName:@"com.apple.mobilemail.services.connection"];
    v16 = *(a1 + 32);
    v17 = v16[7];
    v18 = v16[3];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000360E4;
    v21[3] = &unk_100157690;
    v22 = v16;
    [v17 _dispatchMessage:v3 onQueue:v18 connectionState:v22 completion:v21];
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v9 = a1 + 32;
    v7 = *(a1 + 32);
    v8 = *(v9 + 8);
    v10 = v3;
    v11 = xpc_copy_description(v10);
    if (v11)
    {
      v11 = [[NSString alloc] initWithBytesNoCopy:v11 length:strlen(v11) encoding:4 freeWhenDone:1];
    }

    [v6 handleFailureInMethod:v8 object:v7 file:@"MailXPCServices.m" lineNumber:408 description:{@"unexpected type encountered %@", v11}];
  }

LABEL_21:
  objc_autoreleasePoolPop(v4);
}

void sub_1000360E4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = [NSDictionary dictionaryWithObject:v5 forKey:NSUnderlyingErrorKey];
    v8 = [NSError errorWithDomain:@"XPCConnectionErrorDomain" code:1004 userInfo:v7];

    [*(a1 + 32) handleError:?];
    v5 = v8;
  }
}

void sub_1000364C0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100036DCC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100036F24(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100037290(_Unwind_Exception *a1)
{
  v10 = v8;

  _Unwind_Resume(a1);
}

void sub_100037B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = [[NSString alloc] initWithFormat:@"Flags to set: %@ Flags to clear: %@" arguments:&a9];
  v10 = MFLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#Warning MCSAssert: %@", buf, 0xCu);
  }
}

void sub_100038E80(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1000390F0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10003A444(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v17 = a3;
  v16 = [v17 mutableCopy];
  [v16 minusSet:*(a1 + 32)];
  if ([v16 count])
  {
    v5 = [v16 allObjects];
    [v14 messagesWereDeleted:v5];
  }

  v6 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v17 count]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v17 allObjects];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = *(a1 + 40);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10003A6DC;
        v18[3] = &unk_100157768;
        v18[4] = v11;
        v13 = [v12 objectsPassingTest:v18];
        [v6 unionSet:v13];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  [v17 removeAllObjects];
  [v17 unionSet:v6];
}

BOOL sub_10003A6DC(uint64_t a1, void *a2)
{
  v3 = [a2 messageIDHeader];
  v4 = [*(a1 + 32) messageIDHeader];
  v5 = [v3 compare:v4] == 0;

  return v5;
}

void sub_10003AE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_10003AE94()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100185688;
  v9 = qword_100185688;
  if (!qword_100185688)
  {
    v1 = sub_10003D924();
    v7[3] = dlsym(v1, "CRRecentsDomainMaps");
    qword_100185688 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getCRRecentsDomainMaps(void)"];
    [v4 handleFailureInFunction:v5 file:@"MessageAddressScanner.m" lineNumber:35 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10003AFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003B018(uint64_t a1, void *a2)
{
  v21 = a2;
  v22 = +[NSMutableArray array];
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v30 = [v21 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "performRecentsSearch results: %ld", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v21;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v8 metadata];
        v10 = sub_10003B3C0();
        v11 = [v9 objectForKey:v10];

        if (v11)
        {
          v12 = [NSURL URLWithString:v11];
          v13 = [v12 em_messageIDHeader];
          v14 = MFStringHashForMessageIDHeader();
          if (v14 && [*(a1 + 32) containsIndex:v14])
          {
            [v22 addObject:v8];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }

  v15 = MFLogGeneral();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v22 count];
    *buf = 134217984;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%ld recents to remove", buf, 0xCu);
  }

  if ([v22 count])
  {
    v17 = *(a1 + 40);
    v23 = 0;
    v18 = [v17 removeRecentContacts:v22 error:&v23];
    v19 = v23;
    if ((v18 & 1) == 0)
    {
      v20 = MFLogGeneral();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#Warning failed to remove MessageAddressScanner recents: %@", buf, 0xCu);
      }
    }
  }
}

void sub_10003B3C0()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100185690;
  v9 = qword_100185690;
  if (!qword_100185690)
  {
    v1 = sub_10003D924();
    v7[3] = dlsym(v1, "CRRecentContactMetadataReferenceURL");
    qword_100185690 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getCRRecentContactMetadataReferenceURL(void)"];
    [v4 handleFailureInFunction:v5 file:@"MessageAddressScanner.m" lineNumber:39 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10003B514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003BE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_10003C308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_10003C424(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100185668;
  qword_100185668 = v1;
}

void sub_10003C5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MessageAddressScanner;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10003C61C(uint64_t a1)
{
  ABAddressBookUnregisterExternalChangeCallback(*(a1 + 40), sub_10003C674, *(*(*(a1 + 32) + 8) + 24));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

id sub_10003C894(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) flush];
  *(*(a1 + 32) + 40) &= ~1u;
  return result;
}

id sub_10003C8F8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1001856D8;
  v7 = qword_1001856D8;
  if (!qword_1001856D8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10003DE28;
    v3[3] = &unk_100157290;
    v3[4] = &v4;
    sub_10003DE28(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10003C9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003CDC8(uint64_t a1)
{
  v6 = [*(a1 + 32) userInfo];
  v2 = [v6 objectForKeyedSubscript:MailMessageStoreChangedFlagsKey];
  v3 = [v6 objectForKeyedSubscript:MailMessageStoreMessageKey];
  v4 = [v2 objectForKeyedSubscript:MessageIsDeleted];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    [*(a1 + 40) _scheduleRemovalOfDetectedAddressesInMessages:v3];
  }
}

void sub_10003CF68(uint64_t a1)
{
  v3 = [*(a1 + 32) userInfo];
  v2 = [v3 objectForKeyedSubscript:MailMessageStoreMessageKey];
  [*(a1 + 40) _scheduleRemovalOfDetectedAddressesInMessages:v2];
}

void sub_10003D074(uint64_t a1)
{
  v1 = [*(a1 + 32) addressBook];

  ABAddressBookRevert(v1);
}

void sub_10003D1A8(uint64_t a1)
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) messageIDHash];
    v4 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    *buf = 134218240;
    v23 = v3;
    v24 = 2048;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#BodyLoading scanning summary for message %lld - enqueued %f secs ago", buf, 0x16u);
  }

  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  if (DDScannerScanString())
  {
    v7 = *(a1 + 64);
    v8 = DDScannerCopyResultsWithOptions();
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v8 count];
      v11 = [*(a1 + 32) messageIDHash];
      *buf = 134218240;
      v23 = v10;
      v24 = 2048;
      v25 = *&v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#BodyLoading found %ld DD results for message %lld", buf, 0x16u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v17 + 1) + 8 * v15);
          if (DDResultGetCategory() == 3)
          {
            [*(a1 + 48) _addAddressDetectorResult:v16 forMessage:{*(a1 + 32), v17}];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }
}

void sub_10003D70C(_Unwind_Exception *a1)
{
  v10 = v6;

  _Unwind_Resume(a1);
}

void sub_10003D840(uint64_t a1)
{
  sub_10003D924();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CRSearchQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100185678 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getCRSearchQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MessageAddressScanner.m" lineNumber:32 description:{@"Unable to find class %s", "CRSearchQuery"}];

    __break(1u);
  }
}

void *sub_10003D924()
{
  v4[0] = 0;
  if (!qword_100185680)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10003DA9C;
    v4[4] = &unk_1001562E8;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/PrivateFrameworks/CoreRecents.framework/CoreRecents";
    qword_100185680 = _sl_dlopen();
  }

  v0 = qword_100185680;
  if (!qword_100185680)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *CoreRecentsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MessageAddressScanner.m" lineNumber:30 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_10003DA9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100185680 = result;
  return result;
}

void *sub_10003DB08(uint64_t a1)
{
  v2 = sub_10003D924();
  result = dlsym(v2, "CRRecentsDomainMaps");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100185688 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003DB58(uint64_t a1)
{
  v2 = sub_10003D924();
  result = dlsym(v2, "CRRecentContactMetadataReferenceURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100185690 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003DBA8(uint64_t a1)
{
  v2 = sub_10003D924();
  result = dlsym(v2, "CRRecentContactMetadataFromAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100185698 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003DBF8(uint64_t a1)
{
  v2 = sub_10003D924();
  result = dlsym(v2, "CRAddressKindEmail");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001856A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003DC48(uint64_t a1)
{
  v2 = sub_10003D924();
  result = dlsym(v2, "CRRecentContactMetadataFromAddressKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001856A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003DC98(uint64_t a1)
{
  v2 = sub_10003D924();
  result = dlsym(v2, "CRRecentContactMetadataFromDisplayName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001856B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003DCE8(uint64_t a1)
{
  v2 = sub_10003D924();
  result = dlsym(v2, "CRRecentContactMetadataFrom");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001856B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003DD38(uint64_t a1)
{
  v2 = sub_10003D924();
  result = dlsym(v2, "CRRecentContactMetadataSubject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001856C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003DD88(uint64_t a1)
{
  v2 = sub_10003D924();
  result = dlsym(v2, "CRRecentWeightMailReceivedTrustedAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001856C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003DDD8(uint64_t a1)
{
  v2 = sub_10003D924();
  result = dlsym(v2, "CRRecentWeightMailReceivedAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001856D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10003DE28(uint64_t a1)
{
  sub_10003D924();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CRRecentContactsLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1001856D8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getCRRecentContactsLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MessageAddressScanner.m" lineNumber:31 description:{@"Unable to find class %s", "CRRecentContactsLibrary"}];

    __break(1u);
  }
}

void *sub_10003DF0C(uint64_t a1)
{
  v2 = sub_10003D924();
  result = dlsym(v2, "CRAddressKindMapLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001856E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10003DFFC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = qword_1001856E8;
  qword_1001856E8 = v1;
}

void sub_10003E164(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1001856F8;
  qword_1001856F8 = v1;
}

void sub_10003E480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_10003E51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_10003EA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10003EAF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003EB0C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v105 = v7;
  v106 = v6;
  if (v6)
  {
    v107 = [v6 content];
    v8 = [v107 count];
    v9 = *(*(*(a1 + 40) + 8) + 40);
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (!v10)
    {
      v11 = 1;
      while (![0 length])
      {
        v12 = [v107 objectAtIndex:v11 - 1];
        v13 = +[MessageBodyLoader log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218242;
          *&buf[4] = v11 - 1;
          *&buf[12] = 2114;
          *&buf[14] = v12;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Content[%lu]: %{public}@", buf, 0x16u);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v12 htmlData];
          v15 = [v12 preferredCharacterSet];
          MFEncodingForCharset();
          v16 = MFCreateStringWithData();
          v17 = *(*(a1 + 40) + 8);
          v18 = *(v17 + 40);
          *(v17 + 40) = v16;

          v19 = +[MessageBodyLoader log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v21 = @"nil";
            v99 = *(*(*(a1 + 40) + 8) + 40);
            if (v99)
            {
              v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v99 length]);
              v21 = v4;
            }

            v22 = @"nil";
            if (v14)
            {
              v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 length]);
              v22 = v3;
            }

            *buf = 138543618;
            *&buf[4] = v21;
            *&buf[12] = 2114;
            *&buf[14] = v22;
            _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Creating bodyHTML: bodyHTML=%{public}@, data=%{public}@", buf, 0x16u);
            if (v14)
            {
            }

            if (v99)
            {
            }
          }
        }

        v9 = *(*(*(a1 + 40) + 8) + 40);
        if (!v9 && v11++ < v8)
        {
          continue;
        }

        goto LABEL_28;
      }

      v9 = *(*(*(a1 + 40) + 8) + 40);
    }

LABEL_28:
    if ([v9 length])
    {
      v23 = +[NSUserDefaults standardUserDefaults];
      v24 = [v23 BOOLForKey:@"LogPreviewGenerationTime"];

      +[NSDate timeIntervalSinceReferenceDate];
      v26 = v25;
      v27 = [[ECMessageBodyHTMLParser alloc] initWithHTML:*(*(*(a1 + 40) + 8) + 40)];
      v28 = objc_alloc_init(ECMessageBodyOriginalTextSubparser);
      [v27 addSubparser:v28];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v127 = 0;
      v29 = [v27 newStringAccumulatorWithOptions:17 lengthLimit:500];
      v115[0] = _NSConcreteStackBlock;
      v115[1] = 3221225472;
      v115[2] = sub_10003FC20;
      v115[3] = &unk_100157830;
      v30 = v29;
      v116 = v30;
      v117 = buf;
      [v28 setFoundTextBlock:v115];
      v113[0] = _NSConcreteStackBlock;
      v113[1] = 3221225472;
      v113[2] = sub_10003FCDC;
      v113[3] = &unk_100157858;
      v31 = v30;
      v114 = v31;
      [v28 setFoundWhitespaceBlock:v113];
      v32 = [v27 parse];
      if (v32)
      {
        v33 = [v31 accumulatedString];
        v34 = +[MessageBodyLoader log];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          if (v33)
          {
            v35 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v33 length]);
          }

          else
          {
            v35 = @"nil";
          }

          *v119 = 138543362;
          v120 = *&v35;
          _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "Parsed summary=%{public}@", v119, 0xCu);
          if (v33)
          {
          }
        }
      }

      else
      {
        v34 = +[MessageBodyLoader log];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v36 = [v27 parserError];
          v37 = [v36 ef_publicDescription];
          sub_1000D3918(v37, v125, v34, v36);
        }

        v33 = 0;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v39 = v38;
      v40 = ((*(*&buf[8] + 24) & 1) != 0 || v32 != 1) && [v33 length] == 0;
      v41 = 0.0;
      if ((v40 | v24))
      {
        +[NSDate timeIntervalSinceReferenceDate];
        v43 = v42;
        v44 = [MFHTMLParser plainTextFromHTML:*(*(*(a1 + 40) + 8) + 40) limit:500];
        v45 = MFCreateStringByCondensingWhitespace();
        v46 = v45;
        if (v40)
        {
          v47 = v45;

          v48 = +[MessageBodyLoader log];
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            if (v47)
            {
              v97 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v47 length]);
            }

            else
            {
              v97 = @"nil";
            }

            v104 = v97;
            *v119 = 138543362;
            v120 = *&v97;
            _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Parsed summary (old method)=%{public}@", v119, 0xCu);
            if (v47)
            {
            }
          }
        }

        else
        {
          v47 = v33;
        }

        +[NSDate timeIntervalSinceReferenceDate];
        v53 = v52;

        v41 = v53 - v43;
      }

      else
      {
        v47 = v33;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v47);
      if (v24)
      {
        v54 = +[MessageBodyLoader log];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = [v47 length];
          if (v55 >= 0x50)
          {
            v56 = 80;
          }

          else
          {
            v56 = v55;
          }

          v57 = [v47 substringToIndex:v56];
          *v119 = 134218498;
          v120 = v41;
          v121 = 2048;
          v122 = v39 - v26;
          v123 = 2112;
          v124 = v57;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%0.4fs\t%0.4fs\t\t%@", v119, 0x20u);
        }
      }

      _Block_object_dispose(buf, 8);
    }

    if (![*(*(*(a1 + 40) + 8) + 40) length])
    {
      v58 = [v106 context];
      v103 = [v58 messageBody];

      v101 = [v103 topLevelPart];
      v59 = +[MessageBodyLoader attachmentManager];
      v60 = [v101 attachmentURLs];
      v100 = [v59 attachmentsForURLs:v60 error:0];

      v61 = objc_alloc_init(NSMutableArray);
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v62 = v100;
      v63 = [v62 countByEnumeratingWithState:&v109 objects:v118 count:16];
      if (v63)
      {
        v64 = *v110;
        do
        {
          for (i = 0; i != v63; i = i + 1)
          {
            if (*v110 != v64)
            {
              objc_enumerationMutation(v62);
            }

            v66 = *(*(&v109 + 1) + 8 * i);
            if (![v66 isPass])
            {
              goto LABEL_67;
            }

            v67 = +[MessageBodyLoader attachmentManager];
            v68 = [v66 url];
            v69 = [v67 attachmentForURL:v68 error:0];

            v70 = [v69 passWithError:0];
            v71 = [v70 localizedName];

            if (!v71)
            {
LABEL_67:
              v71 = [v66 filenameStrippingZipIfNeededUseApplications:0];
            }

            if ([v71 length])
            {
              [v61 addObject:v71];
            }
          }

          v63 = [v62 countByEnumeratingWithState:&v109 objects:v118 count:16];
        }

        while (v63);
      }

      if (![v62 count])
      {
        v72 = [v101 firstChildPart];
        if (v72)
        {
          v73 = 0;
          do
          {
            v74 = [v72 disposition];
            v75 = [v74 isEqualToString:@"attachment"];

            if (v75)
            {
              v76 = [v72 subtype];
              v77 = [v76 isEqualToString:@"pkcs7-signature"];

              if ((v77 & 1) == 0)
              {
                v78 = [v72 dispositionParameterForKey:@"filename"];
                if ([v78 length])
                {
                  [v61 addObject:v78];
                }
              }
            }

            v79 = [v72 nextSiblingPart];

            if (v73 > 0x13)
            {
              break;
            }

            ++v73;
            v72 = v79;
          }

          while (v79);
        }
      }

      v80 = [v61 count];
      if (v80 < 2)
      {
        if (v80 != 1)
        {
          v94 = *(*(a1 + 40) + 8);
          v81 = *(v94 + 40);
          *(v94 + 40) = 0;
          goto LABEL_90;
        }

        v81 = MFLookupLocalizedString();
        v89 = [NSString alloc];
        v90 = [v61 objectAtIndex:0];
        v91 = [v89 initWithFormat:v81, v90];
        v92 = *(*(a1 + 40) + 8);
        v93 = *(v92 + 40);
        *(v92 + 40) = v91;

        v88 = +[MessageBodyLoader log];
        if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG) || ((v98 = *(*(*(a1 + 40) + 8) + 40)) != 0 ? (+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v98 length]), v96 = objc_claimAutoreleasedReturnValue()) : (v96 = @"nil"), *buf = 138543362, *&buf[4] = v96, _os_log_debug_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEBUG, "bodyHTML from attachment=%{public}@", buf, 0xCu), !v98))
        {
LABEL_85:

LABEL_90:
          goto LABEL_91;
        }
      }

      else
      {
        v81 = MFLookupLocalizedString();
        v82 = [NSString alloc];
        v83 = MFLookupLocalizedString();
        v84 = [v61 componentsJoinedByString:v83];
        v85 = [v82 initWithFormat:v81, v84];
        v86 = *(*(a1 + 40) + 8);
        v87 = *(v86 + 40);
        *(v86 + 40) = v85;

        v88 = +[MessageBodyLoader log];
        if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_85;
        }

        v95 = *(*(*(a1 + 40) + 8) + 40);
        if (v95)
        {
          v96 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v95 length]);
        }

        else
        {
          v96 = @"nil";
        }

        *buf = 138543362;
        *&buf[4] = v96;
        _os_log_debug_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEBUG, "bodyHTML from attachments=%{public}@", buf, 0xCu);
        if (!v95)
        {
          goto LABEL_85;
        }
      }

      goto LABEL_85;
    }
  }

  else
  {
    if (v7)
    {
      v128 = NSUnderlyingErrorKey;
      v129 = v7;
      v107 = [NSDictionary dictionaryWithObjects:&v129 forKeys:&v128 count:1];
    }

    else
    {
      v107 = 0;
    }

    v49 = +[MessageBodyLoader log];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = [v105 ef_publicDescription];
      sub_1000D3978(v50, buf, v49);
    }

    v51 = *(a1 + 32);
    v102 = [MFError errorWithDomain:MFMessageErrorDomain code:1030 localizedDescription:0 title:0 userInfo:v107];
    [v51 setError:?];
  }

LABEL_91:
}

void sub_10003FC20(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    [*(a1 + 32) appendCustomEntityWithTag:0 stringRepresentation:@" "];
  }

  else if (![v7 valueForAttributes:64])
  {
    [*(a1 + 32) appendInnerTextWithConsumableNode:v8];
  }

  *a4 = [*(a1 + 32) isFull];
}

void sub_10003FFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10004003C(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v4 isPluggedIn])
  {
    [WeakRetained resume];
  }
}

void sub_100040260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MessageBodyLoader;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100040348(uint64_t a1)
{
  if (*(*(a1 + 32) + 104))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v2 = +[MFNetworkController sharedInstance];
    *(*(*(a1 + 40) + 8) + 24) = [v2 isDataAvailable];
  }
}

void sub_100040ABC(uint64_t a1)
{
  if ((*(*(a1 + 32) + 120) & 2) != 0)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) object];
    [v3 removeObserver:v4 name:MonitoredActivityEnded object:v5];

    v6 = *(a1 + 32);

    [v6 _getNextClientOrMessage];
  }

  else
  {
    v1 = +[MessageBodyLoader log];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3A04();
    }
  }
}

void sub_100040C50(uint64_t a1)
{
  if ((*(*(a1 + 32) + 120) & 2) != 0)
  {
    v3 = [*(a1 + 40) userInfo];
    v4 = [v3 objectForKey:MonitoredActivityInvocation];
    v1 = [v4 target];

    v5 = +[NSNotificationCenter defaultCenter];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) object];
    [v5 removeObserver:v6 name:MonitoredActivityEnded object:v7];

    if (!*(*(a1 + 32) + 48))
    {
      v16 = +[NSAssertionHandler currentHandler];
      [v16 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MessageBodyLoader.m" lineNumber:512 description:@"should have a current monitor at this point."];
    }

    v8 = [v1 client];
    v9 = [v8 message];

    if (v9)
    {
      [*(a1 + 32) _recordStats:v9];
    }

    v10 = +[MessageBodyLoader signpostLog];
    v11 = [v1 signpostID];
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "MBL CLIENT LOAD", "", v17, 2u);
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 48);
    *(v12 + 48) = 0;

    v14 = *(a1 + 32);
    v15 = *(v14 + 136);
    *(v14 + 136) = 0;

    *(*(a1 + 32) + 120) &= ~2u;
    *(*(a1 + 32) + 120) |= 4u;
    [*(a1 + 32) _tryProcessingQueues];
  }

  else
  {
    v1 = +[MessageBodyLoader log];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3A38();
    }
  }
}

void sub_100040F84(uint64_t a1)
{
  if ((*(*(a1 + 32) + 120) & 2) != 0)
  {
    v3 = [*(a1 + 40) userInfo];
    v4 = [v3 objectForKey:MonitoredActivityInvocation];
    v1 = [v4 target];

    v5 = +[NSNotificationCenter defaultCenter];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) object];
    [v5 removeObserver:v6 name:MonitoredActivityEnded object:v7];

    if (!*(*(a1 + 32) + 48))
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MessageBodyLoader.m" lineNumber:540 description:@"should have a current monitor at this point."];
    }

    v8 = [v1 message];
    [*(a1 + 32) _recordStats:v8];
    v9 = +[MessageBodyLoader signpostLog];
    v10 = [v1 signpostID];
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "MBL MESSAGE LOAD", "", v19, 2u);
    }

    if ([*(*(a1 + 32) + 48) shouldCancel])
    {
      [*(*(a1 + 32) + 16) insertObject:v8 atIndex:0];
      [*(*(a1 + 32) + 24) addObject:v8];
      v11 = *(*(a1 + 32) + 32);
      v12 = [v8 mailbox];
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = @"No Mailbox";
      }

      [v11 addObject:v13];
    }

    v14 = *(a1 + 32);
    v15 = *(v14 + 48);
    *(v14 + 48) = 0;

    v16 = *(a1 + 32);
    v17 = *(v16 + 136);
    *(v16 + 136) = 0;

    *(*(a1 + 32) + 120) &= ~2u;
    *(*(a1 + 32) + 120) |= 4u;
    [*(a1 + 32) _tryProcessingQueues];
  }

  else
  {
    v1 = +[MessageBodyLoader log];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3A6C();
    }
  }
}

void sub_100041304(uint64_t a1)
{
  if ((*(*(a1 + 32) + 120) & 2) != 0)
  {
    v3 = [*(a1 + 40) userInfo];
    v4 = [v3 objectForKey:MonitoredActivityInvocation];
    v1 = [v4 target];

    v5 = +[NSNotificationCenter defaultCenter];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) object];
    v8 = MonitoredActivityEnded;
    [v5 removeObserver:v6 name:MonitoredActivityEnded object:v7];

    if (*(*(a1 + 32) + 48))
    {
      v34 = +[NSAssertionHandler currentHandler];
      [v34 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MessageBodyLoader.m" lineNumber:570 description:@"should not have a current monitor at this point."];
    }

    v9 = [v1 nextClient];

    if (v9)
    {
      v10 = [_MBLLoadForClientJob alloc];
      v11 = [v1 nextClient];
      v12 = [(_MBLLoadForClientJob *)v10 initForClient:v11 forMBLMailbox:*(a1 + 32)];

      v13 = [v1 nextClient];
      v14 = [v13 message];
      v15 = *(a1 + 32);
      v16 = *(v15 + 136);
      *(v15 + 136) = v14;

      v17 = +[MessageBodyLoader signpostLog];
      v18 = [v12 signpostID];
      v19 = "_clientLoadFinished:";
      if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        v20 = [*(*(a1 + 32) + 136) messageID];
        v35 = 138412290;
        v36 = v20;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, "MBL CLIENT LOAD", "Message=%@", &v35, 0xCu);
      }
    }

    else
    {
      v21 = [v1 nextMessage];

      if (!v21)
      {
        goto LABEL_16;
      }

      v22 = [_MBLLoadMessageJob alloc];
      v23 = [v1 nextMessage];
      v12 = [(_MBLLoadMessageJob *)v22 initForMessage:v23 forMBLMailbox:*(a1 + 32)];

      v24 = [v1 nextMessage];
      v25 = *(a1 + 32);
      v26 = *(v25 + 136);
      *(v25 + 136) = v24;

      v17 = +[MessageBodyLoader signpostLog];
      v27 = [v12 signpostID];
      v19 = "_messageLoadFinished:";
      if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        v28 = [*(*(a1 + 32) + 136) messageID];
        v35 = 138412290;
        v36 = v28;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v27, "MBL MESSAGE LOAD", "Message=%@", &v35, 0xCu);
      }
    }

    if (v12)
    {
      v29 = [MFMonitoredInvocation mf_invocationWithSelector:"run" target:v12];
      v30 = [v29 monitor];
      v31 = *(a1 + 32);
      v32 = *(v31 + 48);
      *(v31 + 48) = v30;

      [*(*(a1 + 32) + 48) setCanBeCancelled:1];
      [*(*(a1 + 32) + 48) setPriority:6];
      v33 = +[NSNotificationCenter defaultCenter];
      [v33 addObserver:*(a1 + 32) selector:v19 name:v8 object:*(*(a1 + 32) + 48)];

      [*(*(a1 + 32) + 72) addInvocation:v29];
      goto LABEL_17;
    }

LABEL_16:
    *(*(a1 + 32) + 120) &= ~2u;
    [*(a1 + 32) _tryProcessingQueues];
    goto LABEL_17;
  }

  v1 = +[MessageBodyLoader log];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1000D3AA0();
  }

LABEL_17:
}

void sub_1000418C8(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:MailMessageStoreMessageKey];

  [*(a1 + 40) addMessages_nts:v3];
}

void sub_100041CB8(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:MailMessageStoreMessageKey];

  if ([v3 count])
  {
    [*(a1 + 40) _removeNewMessages_nts:v3];
  }
}

void sub_100041DF0(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:MailMessageStoreMessageKey];

  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [*(*(a1 + 40) + 24) member:{v9, v12}];
        v11 = v10;
        if (v10)
        {
          [v10 setMutableInfoFromMessage:v9];
          if (([v11 messageFlags] & 2) != 0)
          {
            [v4 addObject:v9];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) _removeNewMessages_nts:v4];
}

id sub_100042078(uint64_t a1)
{
  [*(a1 + 32) _nts_insertClient:*(a1 + 40)];
  *(*(a1 + 32) + 120) |= 4u;
  v2 = *(a1 + 32);

  return [v2 _start];
}

id sub_100042160(uint64_t a1)
{
  [*(a1 + 32) _nts_removeClient:*(a1 + 40)];
  *(*(a1 + 32) + 120) |= 4u;
  v2 = *(a1 + 32);

  return [v2 _start];
}

uint64_t sub_1000423F4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_getAssociatedObject(v3, off_100183720);
  v6 = objc_getAssociatedObject(v4, off_100183720);
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"priority"];
    v8 = [v7 integerValue];

    if (v6)
    {
LABEL_3:
      v9 = [v6 objectForKeyedSubscript:@"priority"];
      v10 = [v9 integerValue];

      goto LABEL_6;
    }
  }

  else
  {
    v8 = [v3 priority];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = [v4 priority];
LABEL_6:
  if (v8 <= v10)
  {
    if (v8 < v10)
    {
      goto LABEL_9;
    }

    if (v5)
    {
      v13 = [v5 objectForKeyedSubscript:@"ordering"];
      [v13 doubleValue];
      v15 = v14;

      if (v6)
      {
LABEL_13:
        v16 = [v6 objectForKeyedSubscript:@"ordering"];
        [v16 doubleValue];
        v18 = v17;

LABEL_16:
        if (v15 > v18)
        {
          goto LABEL_7;
        }

        if (v15 >= v18)
        {
          if (v3 >= v4)
          {
            v11 = v3 > v4;
            goto LABEL_10;
          }

          goto LABEL_7;
        }

LABEL_9:
        v11 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      [v3 ordering];
      v15 = v19;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    [v4 ordering];
    v18 = v20;
    goto LABEL_16;
  }

LABEL_7:
  v11 = -1;
LABEL_10:

  return v11;
}

id sub_100042B04(uint64_t a1)
{
  result = [*(a1 + 32) _nts_isProcessingMessage:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

id sub_100042C24(uint64_t a1, void *a2)
{
  v3 = [a2 message];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_100042D10(uint64_t a1)
{
  if (!*(*(a1 + 32) + 56))
  {
    v2 = objc_alloc_init(NSCountedSet);
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;
  }

  v9 = [*(a1 + 40) mailbox];
  if (![*(*(a1 + 32) + 56) countForObject:?])
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:*(a1 + 32) selector:"_messagesAdded:" name:MailMessageStoreMessagesAdded object:*(a1 + 40)];
  }

  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 56);
  v8 = [v6 mailbox];
  [v7 addObject:v8];
}

void sub_100042EAC(uint64_t a1)
{
  v3 = [*(a1 + 32) mailbox];
  if ([*(*(a1 + 40) + 56) countForObject:?] == 1)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 removeObserver:*(a1 + 40) name:MailMessageStoreMessagesAdded object:*(a1 + 32)];
  }

  [*(*(a1 + 40) + 56) removeObject:v3];
}

id sub_100043004(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(*(a1 + 32) + 40) count];
  if (result)
  {
    *(*(a1 + 32) + 120) |= 4u;
    v6 = *(a1 + 32);

    return [v6 _start];
  }

  return result;
}

void sub_1000430F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10004373C(uint64_t a1)
{
  --*(*(a1 + 32) + 104);
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if ((v3 & 0x80000000) == 0)
  {
    if (v3)
    {
      return;
    }

LABEL_7:
    *(v2 + 120) |= 4u;
    [*(a1 + 32) _start];
    return;
  }

  v4 = +[MessageBodyLoader log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000D3B00();
  }

  *(*(a1 + 32) + 104) = 0;
  v2 = *(a1 + 32);
  if (!*(v2 + 104))
  {
    goto LABEL_7;
  }
}

void *sub_10004384C(void *result)
{
  ++*(result[4] + 104);
  v1 = result[4];
  if (*(v1 + 104) >= 1)
  {
    v2 = result;
    result = *(v1 + 48);
    if (result)
    {
      result = [result shouldCancel];
      if ((result & 1) == 0)
      {
        v3 = *(v2[4] + 48);

        return [v3 cancel];
      }
    }
  }

  return result;
}

void sub_100043934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

id sub_1000439D0(uint64_t a1)
{
  [*(a1 + 32) mf_lock];
  [*(a1 + 32) _clearResumeTime];
  [*(a1 + 32) resume];
  v2 = *(a1 + 32);

  return [v2 mf_unlock];
}

void sub_100043A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_100043C0C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id sub_1000442E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    [*(v2 + 48) cancel];
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = 0;

    v2 = *(a1 + 32);
  }

  if ((*(v2 + 120) & 2) != 0)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:*(a1 + 32) name:MonitoredActivityEnded object:0];

    *(*(a1 + 32) + 120) &= ~2u;
    v2 = *(a1 + 32);
  }

  [v2 _clearResumeTime];
  v6 = [NSDate dateWithTimeIntervalSinceNow:3600.0];
  v7 = *(a1 + 32);
  v8 = *(v7 + 112);
  *(v7 + 112) = v6;

  v9 = +[MessageBodyLoader log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = v10[14];
    v12 = [v10 account];
    v13 = [*(*(a1 + 32) + 24) count];
    v14 = *(*(a1 + 32) + 24);
    *buf = 138413058;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2048;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "assertionDidExpire: pausing until %@\nAccount:%@ \nnewMessageSet [%ld]:%@", buf, 0x2Au);
  }

  v18[0] = @"assertionDidExpire";
  v18[1] = @"resumeTime";
  v15 = *(*(a1 + 32) + 112);
  v19[0] = &off_1001633A0;
  v19[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  [MFPowerController powerlog:@"MBL" eventData:v16];

  [*(a1 + 32) pause];
  return [*(a1 + 32) _setIsRunning:0];
}

void sub_100044DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54)
{
  _Block_object_dispose(&a46, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100044EB0(uint64_t a1)
{
  v1 = [*(a1 + 32) networkFetchingAllowed];
  v2 = +[MFPowerController sharedInstance];
  if ([v2 isBatterySaverModeEnabled])
  {
    v3 = [v2 isPluggedIn] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 gameModeEnabled];

  return v3 | v1 ^ 1 | v4;
}

uint64_t sub_100044F3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = [v3 message];
    v6 = [v5 isMessageContentsLocallyAvailable] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v7 = [v4 priority] == -100 && objc_msgSend(*(*(a1 + 32) + 24), "count") != 0;
  v8 = v6 | v7;

  return v8 & 1;
}

BOOL sub_100044FFC(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];
  v3 = [v2 mailboxType];

  v4 = MFUserAgent();
  v5 = [v4 isForeground];

  v7 = v3 == 104 || v3 == 4;
  return (v5 & 1) == 0 && v7;
}

void sub_1000455B4(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = qword_100185710;
  qword_100185710 = v1;
}

void sub_10004571C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185720;
  qword_100185720 = v1;
}

void sub_100045E90(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = qword_100185730;
  qword_100185730 = v1;
}

void sub_100045FF8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185740;
  qword_100185740 = v1;
}

void sub_100046E1C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void *sub_100046FF4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  if (!v11)
  {
    v14 = +[UIApplication sharedApplication];
    v11 = [v14 preferredContentSizeCategory];
  }

  v15 = v11;
  v16 = v12;
  v17 = v13;
  if (!qword_100185750)
  {
    qword_100185750 = CFDictionaryCreateMutable(0, 0, 0, &kCFTypeDictionaryValueCallBacks);
  }

  if (a6 == 0.0)
  {
    key = ((997 * a5) ^ (31 * a1) ^ [v15 hash]);
    v18 = CFDictionaryGetValue(qword_100185750, key);
    if (v18)
    {
      goto LABEL_13;
    }
  }

  else
  {
    key = 0;
  }

  v19 = v15;
  v57 = v16;
  v54 = v19;
  v56 = v17;
  v20 = sub_1000477D4(v19);
  v60[0] = NSFontAttributeName;
  v60[1] = NSForegroundColorAttributeName;
  v61[0] = v20;
  v61[1] = v56;
  v21 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
  v59 = 0;
  v22 = sub_10004789C(a1, v21, &v59, v57, a6);
  v58 = v23;
  v24 = v22;
  v25 = v59;
  [v20 pointSize];
  v27 = v26 * 0.17;
  v63.origin.x = sub_100047A14(v20);
  x = v63.origin.x;
  y = v63.origin.y;
  height = v63.size.height;
  v32 = fmax(a6, v31);
  v63.size.width = v32;
  CGRectGetWidth(v63);
  UIRoundToViewScale();
  v53 = v33;
  [v20 capHeight];
  v52 = v34;
  [v20 ascender];
  v51 = v35;
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = v32;
  v64.size.height = height;
  v50 = CGRectGetHeight(v64);
  [v20 capHeight];
  v49 = v36;
  v62.width = v32;
  v62.height = height;
  UIGraphicsBeginImageContextWithOptions(v62, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [v56 setStroke];
  v38 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v19];
  v39 = +[UIFontMetrics defaultMetrics];
  [v39 scaledValueForValue:v38 compatibleWithTraitCollection:2.0];
  v41 = v40;

  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = v32;
  v65.size.height = height;
  v66 = CGRectInset(v65, 1.5, 1.5);
  v42 = [UIBezierPath bezierPathWithRoundedRect:v66.origin.x cornerRadius:v66.origin.y, v66.size.width, v66.size.height, fmax(fmin(v41, 4.0), 2.0)];
  v43 = v42;
  v44 = [v42 CGPath];

  CGContextAddPath(CurrentContext, v44);
  CGContextSetLineWidth(CurrentContext, v27);
  CGContextStrokePath(CurrentContext);
  [v25 drawWithRect:33 options:v21 attributes:0 context:{v53, v52 - v51 + (v50 - v49) * 0.5, v24, v58}];
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  if (a6 == 0.0)
  {
    if (v18)
    {
      CFDictionarySetValue(qword_100185750, key, v18);
    }

    else
    {
      v18 = 0;
      CFDictionarySetValue(qword_100185750, key, +[NSNull null]);
    }
  }

LABEL_13:
  v45 = +[NSNull null];
  if (v45 == v18)
  {
    v46 = 0;
  }

  else
  {
    v46 = v18;
  }

  v47 = v46;

  return v46;
}

double sub_1000475A4(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = +[NSBundle mainBundle];
  v7 = sub_100047634(a1, v5, v6, a3);

  return v7;
}

double sub_100047634(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  if (!v7)
  {
    v9 = +[UIApplication sharedApplication];
    v7 = [v9 preferredContentSizeCategory];
  }

  v10 = sub_1000477D4(v7);
  v14 = NSFontAttributeName;
  v15 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  sub_10004789C(a1, v11, 0, v8, a4);

  [v10 pointSize];
  v16.origin.x = sub_100047A14(v10);
  Width = CGRectGetWidth(v16);

  return Width;
}

id sub_1000477D4(uint64_t a1)
{
  v1 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:a1];
  v2 = [UIFont boldSystemFontOfSize:7.5];
  v3 = +[UIFontMetrics defaultMetrics];
  v4 = [v3 scaledFontForFont:v2 compatibleWithTraitCollection:v1];

  return v4;
}

void sub_100047870(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double sub_10004789C(uint64_t a1, void *a2, void *a3, void *a4, double a5)
{
  v9 = a2;
  v10 = a4;
  v11 = 0.0;
  if (a5 > 0.0)
  {
    v12 = +[UIScreen mainScreen];
    [v12 scale];
    v14 = 1.0 / (v13 + v13);

    if (v14 + a5 + -6.0 >= 0.0)
    {
      v11 = v14 + a5 + -6.0;
    }

    else
    {
      v11 = 0.0;
    }
  }

  v15 = sub_100047AE8(a1, 0, v10);
  v16 = sub_100047C1C(v15, v9, 0.0);
  v17 = v16;
  if (v11 <= 0.0 || v16 <= v11)
  {
    v21 = v15;
    if (!a3)
    {
      goto LABEL_12;
    }

LABEL_11:
    v19 = v21;
    *a3 = v21;
    goto LABEL_12;
  }

  v21 = sub_100047AE8(a1, 1, v10);

  v17 = sub_100047C1C(v21, v9, v11);
  if (a3)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v17;
}

CGFloat sub_100047A14(void *a1)
{
  v1 = a1;
  [v1 capHeight];
  [v1 capHeight];
  UIRoundToViewScale();
  UIRoundToViewScale();
  [v1 capHeight];
  UIRoundToViewScale();
  y = CGPointZero.y;

  return CGPointZero.x;
}

id sub_100047AE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a1 == 3 || a1 == 2)
  {
    v6 = MFLookupLocalizedString();
  }

  else
  {
    if (a1 != 1)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v6 = [v4 localizedStringForKey:@"FROM_LABEL" value:&stru_10015BEC8 table:@"Main"];
  }

  v7 = v6;
LABEL_10:

  return v7;
}

double sub_100047C1C(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  if (a3 <= 0.0)
  {
    [v5 sizeWithAttributes:v6];
    v8 = v9;
  }

  else
  {
    [v5 boundingRectWithSize:33 options:v6 attributes:0 context:{a3, 0.0}];
    v8 = v7;
  }

  return v8;
}

void sub_100047D68(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100047F48(uint64_t a1)
{
  [*(a1 + 32) setNumberOfLoadAttempts:{objc_msgSend(*(a1 + 32), "numberOfLoadAttempts") + 1}];
  v2 = [*(a1 + 32) _bodyLoader];
  [v2 addSingleMessageClient:*(a1 + 32)];
}

void sub_10004806C(uint64_t a1)
{
  [*(a1 + 32) setNumberOfLoadAttempts:0];
  [*(a1 + 32) setSummaryPromise:0];
  v2 = [*(a1 + 32) _bodyLoader];
  [v2 removeSingleMessageClient:*(a1 + 32)];
}

void sub_1000481F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_10004822C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) message];

  if (v2 == v3)
  {
    objc_storeStrong((*(a1 + 40) + 16), *(a1 + 48));
    v4 = [*(a1 + 40) summaryPromise];
    [v4 finishWithResult:*(a1 + 48) error:0];
  }
}

void sub_1000483B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_1000483E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) message];

  if (v2 == v3)
  {
    if (*(a1 + 48) || [*(a1 + 40) numberOfLoadAttempts] > 3)
    {
      v5 = [*(a1 + 40) message];
      v6 = [v5 summary];
      v7 = *(a1 + 40);
      v8 = *(v7 + 16);
      *(v7 + 16) = v6;

      v9 = *(a1 + 48);
      if (v9)
      {
        v15 = NSUnderlyingErrorKey;
        v16 = v9;
        v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      }

      else
      {
        v10 = 0;
      }

      v11 = [*(a1 + 40) summaryPromise];
      v12 = [*(a1 + 40) message];
      v13 = [v12 summary];
      v14 = [NSError errorWithDomain:EMErrorDomain code:2048 userInfo:v10];
      [v11 finishWithResult:v13 error:v14];
    }

    else
    {
      v4 = [*(a1 + 40) requestSummary];
    }
  }
}

void sub_100048578(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_100048D6C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185760;
  qword_100185760 = v1;
}

uint64_t sub_10004919C(uint64_t a1, int a2)
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) account];
    v6 = [v5 ef_publicDescription];
    v7 = v6;
    v8 = @"failed";
    if (a2)
    {
      v8 = @"completed";
    }

    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Credential renewal for account %{public}@  %@", &v10, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1000494C4(uint64_t a1)
{
  v2 = [*(a1 + 32) validationInvocation];
  [v2 invoke];

  if ([*(a1 + 32) accountIsValid])
  {
    v3 = [*(a1 + 40) account];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = *(a1 + 40);
    v6 = [v5 account];
    if (isKindOfClass)
    {
      [v5 _overwriteAccount:v6 withAlternateAccount:*(a1 + 48)];

      v7 = +[MFAccountHealer log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 40) account];
        v9 = [v8 hostname];
        v10 = [*(a1 + 40) account];
        v11 = [v10 portNumber];
        v12 = [*(a1 + 40) account];
        *buf = 138412802;
        v35 = v9;
        v36 = 1024;
        v37 = v11;
        v38 = 1024;
        v39 = [v12 usesSSL];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User allow us to heal their account to: %@:%i %i", buf, 0x18u);
      }

      v13 = 1;
LABEL_16:

      goto LABEL_17;
    }

    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if (v14)
    {
      v7 = [*(a1 + 40) account];
      v15 = [*(a1 + 40) _getMailAccountFromDeliveryAccount:v7];
      v13 = v15 != 0;
      if (v15)
      {
        [*(a1 + 40) _overwriteAccount:v7 withAlternateAccount:*(a1 + 48)];
        v16 = +[MFAccountHealer log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [*(a1 + 40) account];
          v18 = [v17 hostname];
          v19 = [*(a1 + 40) account];
          v20 = [v19 portNumber];
          v21 = [*(a1 + 40) account];
          *buf = 138412802;
          v35 = v18;
          v36 = 1024;
          v37 = v20;
          v38 = 1024;
          v39 = [v21 usesSSL];
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "User allow us to heal their account to: %@:%i %i", buf, 0x18u);
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, MFMailDefaultSendingAccountDidChange, 0, 0, 1u);
      }

      else
      {
        v23 = +[MFAccountHealer log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [*(a1 + 40) account];
          v25 = [v24 hostname];
          v26 = [*(a1 + 40) account];
          v27 = [v26 portNumber];
          v28 = [*(a1 + 40) account];
          *buf = 138412802;
          v35 = v25;
          v36 = 1024;
          v37 = v27;
          v38 = 1024;
          v39 = [v28 usesSSL];
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Unable to find account that is related to this SMTP server: %@:%i %i", buf, 0x18u);
        }
      }

      goto LABEL_16;
    }
  }

  v13 = 0;
LABEL_17:
  v29 = +[EFScheduler mainThreadScheduler];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100049A0C;
  v31[3] = &unk_1001579B8;
  v30 = *(a1 + 56);
  v33 = v13;
  v31[4] = *(a1 + 40);
  v32 = v30;
  [v29 performBlock:v31];
}

id sub_100049A0C(uint64_t a1)
{
  v2 = *(a1 + 48);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
  return objc_opt_self();
}

void sub_10004A138(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id sub_10004A3D4(uint64_t a1, void *a2)
{
  v3 = [a2 deliveryAccount];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) identifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

void sub_10004A448(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10004A5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_10004A71C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
LABEL_6:
    (*(*(a1 + 32) + 16))();
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#Warning credential renewal failed: %@", &v7, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
}

void sub_10004A9BC(id a1)
{
  v3[0] = @"uniqueID";
  v3[1] = @"name";
  v4[0] = &stru_100157A90;
  v4[1] = &stru_100157AB0;
  v3[2] = @"fullUserName";
  v3[3] = @"username";
  v4[2] = &stru_100157AD0;
  v4[3] = &stru_100157AF0;
  v3[4] = @"emailAddresses";
  v3[5] = @"emailAddressAndAliases";
  v4[4] = &stru_100157B10;
  v4[5] = &stru_100157B30;
  v3[6] = @"fromEmailAddresses";
  v3[7] = @"fromEmailAddressesIncludingDisabled";
  v4[6] = &stru_100157B50;
  v4[7] = &stru_100157B70;
  v3[8] = @"defaultAddress";
  v3[9] = @"isActive";
  v4[8] = &stru_100157B90;
  v4[9] = &stru_100157BB0;
  v3[10] = @"isDefaultSendingAccount";
  v3[11] = @"restrictsRepliesAndForwards";
  v4[10] = &stru_100157BD0;
  v4[11] = &stru_100157BF0;
  v3[12] = @"sendingRestricted";
  v3[13] = @"supportsThreadOperations";
  v4[12] = &stru_100157C10;
  v4[13] = &stru_100157C30;
  v3[14] = @"syncsReadState";
  v3[15] = @"restrictedRecentsSyncing";
  v4[14] = &stru_100157C50;
  v4[15] = &stru_100157C70;
  v3[16] = @"supportsMailDrop";
  v3[17] = @"isManaged";
  v4[16] = &stru_100157C90;
  v4[17] = &stru_100157CB0;
  v3[18] = @"canFetch";
  v3[19] = @"pcStyle";
  v4[18] = &stru_100157CD0;
  v4[19] = &stru_100157CF0;
  v3[20] = @"restrictedMailDrop";
  v4[20] = &stru_100157D10;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:21];
  v2 = qword_100185770;
  qword_100185770 = v1;
}

id sub_10004AC38(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _accountReference:a3];

  return v3;
}

id sub_10004AC68(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _displayName:a3];

  return v3;
}

id sub_10004AC98(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _fullUserName:a3];

  return v3;
}

id sub_10004ACC8(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _username:a3];

  return v3;
}

id sub_10004ACF8(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _emailAddresses:a3];

  return v3;
}

id sub_10004AD28(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _emailAddressesAndAliases:a3];

  return v3;
}

id sub_10004AD58(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _fromEmailAddresses:a3];

  return v3;
}

id sub_10004AD88(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _fromEmailAddressesIncludingDisabled:a3];

  return v3;
}

id sub_10004ADB8(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _defaultAddress:a3];

  return v3;
}

id sub_10004ADE8(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _isActive:a3];

  return v3;
}

id sub_10004AE18(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _isDefaultSendingAccount:a3];

  return v3;
}

id sub_10004AE48(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _restrictsRepliesAndForwards:a3];

  return v3;
}

id sub_10004AE78(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _restrictedFromSendingExternally:a3];

  return v3;
}

id sub_10004AEA8(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _supportsThreadOperations:a3];

  return v3;
}

id sub_10004AED8(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _syncsReadState:a3];

  return v3;
}

id sub_10004AF08(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _restrictedFromSyncingRecents:a3];

  return v3;
}

id sub_10004AF38(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _supportsMailDrop:a3];

  return v3;
}

id sub_10004AF68(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _isManaged:a3];

  return v3;
}

id sub_10004AF98(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _canFetch:a3];

  return v3;
}

id sub_10004AFC8(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _pcStyle:a3];

  return v3;
}

id sub_10004AFF8(id a1, MFAccountResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFAccountResultsGenerator *)a2 _restrictedFromMailDrop:a3];

  return v3;
}

void sub_10004B6FC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185780;
  qword_100185780 = v1;
}

void sub_10004C2B0(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v5 = 0;
  if (v4)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 isActive])
        {
          v9 = [v8 statisticsKind];
          if (v9)
          {
            v10 = [v2 valueForKey:v9];
            v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 intValue] + 1);

            [v2 setValue:v11 forKey:v9];
            v5 = (v5 + 1);
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v12 = [NSNumber numberWithInt:v5];
  [v2 setObject:v12 forKeyedSubscript:@"totalCount"];

  v13 = v2;
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
}

NSDictionary *__cdecl sub_10004C568(id a1)
{
  v1 = [NSNumber numberWithInt:PCSettingsGetClassPollInterval()];
  v2 = [NSNumber numberWithBool:PCSettingsGetClassPushEnabled() == 0];
  v5[0] = @"fetchInterval";
  v5[1] = @"pushDisabled";
  v6[0] = v1;
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}