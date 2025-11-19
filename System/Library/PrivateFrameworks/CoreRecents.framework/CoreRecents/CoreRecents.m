uint64_t sub_100001444(sqlite3 *a1, const char *a2, int (__cdecl *a3)(void *, int, char **, char **), void *a4, char **a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  while (1)
  {
    result = sqlite3_exec(a1, a2, a3, a4, a5);
    if (result != 5)
    {
      break;
    }

    usleep(0x14u);
    a1 = v9;
    a2 = v8;
    a3 = v7;
    a4 = v6;
    a5 = v5;
  }

  return result;
}

id sub_10000172C(uint64_t a1)
{
  if (qword_1000343A8 != -1)
  {
    sub_10001910C();
  }

  v2 = qword_1000343A0;

  return [v2 objectForKey:a1];
}

uint64_t sub_100001B28(uint64_t a1, sqlite3_stmt *a2, int a3)
{
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, a3, v5, -1, 0);
}

uint64_t sub_100001B78(sqlite3_stmt *a1, int a2, void *a3)
{
  if (a3)
  {
    v5 = [a3 UTF8String];

    return sqlite3_bind_text(a1, a2, v5, -1, 0);
  }

  else
  {

    return sqlite3_bind_null(a1, a2);
  }
}

id sub_100002054(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _updateLockStateWithToken:a2];
}

void sub_10000210C(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(*(a1 + 32) + 24) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [v2 objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        dispatch_source_set_timer(*(*(&v8 + 1) + 8 * v7), 0, 0xFFFFFFFFFFFFFFFFLL, 0);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

id sub_100002284(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 8) allAddresses];

  return [v1 addObjectsFromArray:v2];
}

uint64_t sub_10000236C(sqlite3_stmt *a1, const char *a2, void *a3)
{
  result = sqlite3_bind_parameter_index(a1, a2);
  if (result >= 1)
  {

    return sub_100001B78(a1, result, a3);
  }

  return result;
}

uint64_t sub_1000023CC(sqlite3_stmt *a1, const char *a2, sqlite3_int64 a3)
{
  result = sqlite3_bind_parameter_index(a1, a2);
  if (result >= 1)
  {

    return sqlite3_bind_int64(a1, result, a3);
  }

  return result;
}

uint64_t sub_100002484(sqlite3_stmt *a1, const char *a2, void *a3)
{
  result = sqlite3_bind_parameter_index(a1, a2);
  if (result >= 1)
  {
    v6 = result;
    [a3 timeIntervalSinceReferenceDate];

    return sqlite3_bind_int64(a1, v6, ((v7 + 978307200.0) * 1000.0));
  }

  return result;
}

void sub_1000025A8(id *a1, void *a2)
{
  v4 = *a1;
  if (v4)
  {
    if ([v4 isGroup])
    {
      v5 = objc_autoreleasePoolPush();
      [*a1 setMembers:{objc_msgSend(objc_msgSend(*a1, "members"), "arrayByAddingObject:", a2)}];

      objc_autoreleasePoolPop(v5);
    }

    else
    {
      v6 = [CRRecentContact alloc];
      v8[0] = *a1;
      v8[1] = a2;
      v7 = [v6 initWithMembers:+[NSArray arrayWithObjects:count:](NSArray displayName:"arrayWithObjects:count:" recentDate:v8 recentsDomain:{2), objc_msgSend(*a1, "groupName"), 0, objc_msgSend(*a1, "recentsDomain")}];

      [v7 setRecentDates:{objc_msgSend(*a1, "recentDates")}];
      [v7 setRecentID:{objc_msgSend(*a1, "recentID")}];
      *a1 = v7;
    }
  }

  else
  {
    *a1 = a2;
  }
}

uint64_t sub_10000271C(sqlite3_stmt *a1, void *a2, uint64_t a3, sqlite3_int64 a4)
{
  sub_1000023CC(a1, ":recent_id", a4);
  sub_10000236C(a1, ":key", a2);
  v7 = [NSPropertyListSerialization dataWithPropertyList:a3 format:200 options:0 error:0];
  result = sqlite3_bind_parameter_index(a1, ":value");
  if (result >= 1)
  {
    v9 = result;
    if (v7)
    {
      v10 = [(NSData *)v7 bytes];
      v11 = [(NSData *)v7 length];
      if (v11 >= 0x7FFFFFFF)
      {
        sub_100018568();
      }

      return sqlite3_bind_blob(a1, v9, v10, v11, 0);
    }

    else
    {

      return sqlite3_bind_null(a1, result);
    }
  }

  return result;
}

void sub_100002C58(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  v2 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v2);
}

uint64_t sub_100002CA8(void *a1)
{
  (*(a1[6] + 16))();
  (*(a1[7] + 16))();
  v2 = a1[4];
  objc_opt_self();
  v3 = a1[5];

  return objc_opt_self();
}

uint64_t sub_100002D04(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  objc_opt_self();
  v3 = a1[5];

  return objc_opt_self();
}

void sub_10000324C(id a1, NSError *a2)
{
  v2 = a2;
  if ([CNFoundationError isTimeoutError:?])
  {
    NSLog(@"failed to get account information after 10 seconds");
  }

  else
  {
    NSLog(@"Error loading Mail account information: %@", v2);
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(CRAgent);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000037A0;
  v5[3] = &unk_10002CAB0;
  v5[4] = v1;
  v2 = [v5 copy];
  sub_1000037BC(2u, v2);
  sub_1000037BC(0xFu, v2);
  global_queue = dispatch_get_global_queue(0, 0);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", global_queue, &stru_10002CB30);
  [(CRAgent *)v1 start];
  objc_autoreleasePoolPop(v0);
  [+[NSRunLoop mainRunLoop](NSRunLoop run];
  return 1;
}

void sub_1000037BC(unsigned int a1, void *a2)
{
  signal(a1, 1);
  v4 = dispatch_source_create(&_dispatch_source_type_signal, a1, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler(v4, a2);

  dispatch_resume(v4);
}

void sub_1000038DC(uint64_t a1)
{
  v3 = [[CRProcessTransaction alloc] initWithDescription:@"com.apple.corerecents.launch"];
  *(*(a1 + 32) + 16) = [[_CRRecentsLibrary alloc] initWithPath:+[_CRRecentsLibrary defaultPath]];
  *(*(a1 + 32) + 40) = objc_alloc_init(NSMutableSet);
  v2 = +[CRPowerMonitor sharedMonitor];
  [*(a1 + 32) _adjustLibraryStoreSyncBehaviorWithLockedState:{objc_msgSend(v2, "isLocked")}];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:*(a1 + 32) name:"_lockStateChanged:" object:@"CRPowerMonitorDeviceWillLockNotification", v2];
  *(*(a1 + 32) + 24) = 1;
}

void sub_100003B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003EFC(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [*(a1 + 40) object];
  v4 = +[CRLogging log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = v3;
    v9 = 2114;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Connection %p for %{public}@ was invalidated.", &v7, 0x16u);
  }

  v5 = *(a1 + 48);
  objc_sync_enter(v5);
  [*(*(a1 + 48) + 40) removeObject:v2];
  return objc_sync_exit(v5);
}

uint64_t sub_100004004(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [*(a1 + 40) object];
  v4 = +[CRLogging log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = v3;
    v9 = 2114;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Connection %p for %{public}@ was interrupted.", &v7, 0x16u);
  }

  v5 = *(a1 + 48);
  objc_sync_enter(v5);
  [*(*(a1 + 48) + 40) removeObject:v2];
  return objc_sync_exit(v5);
}

uint64_t sub_100004374(uint64_t a1, int a2)
{
  v4 = +[CRLogging log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "received first-unlock notification", v6, 2u);
  }

  dispatch_async(*(*(a1 + 32) + 32), *(a1 + 40));
  return notify_cancel(a2);
}

uint64_t sub_1000044A4()
{
  if (qword_100034318 != -1)
  {
    sub_1000180BC();
  }

  v0 = dlsym(qword_100034310, "MKBDeviceUnlockedSinceBoot");
  off_100033FA0 = v0;

  return v0();
}

void sub_1000044FC(id a1)
{
  qword_100034310 = dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 1);
  if (!qword_100034310 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000180D0();
  }
}

void sub_100004644(id a1)
{
  v1 = +[NSFileManager defaultManager];
  qword_100034320 = [[NSString alloc] initWithFormat:@"%@/Library/Recents", CPSharedResourcesDirectory()];
  if (![(NSFileManager *)v1 fileExistsAtPath:qword_100034320])
  {

    CPFileBuildDirectoriesToPath();
  }
}

void sub_100005504()
{
  if (v0)
  {
    JUMPOUT(0x10000550CLL);
  }

  JUMPOUT(0x100005510);
}

void sub_100005CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100005CFC(uint64_t a1, void *a2)
{
  v27 = 0;
  v4 = [*(a1 + 32) _whereClauseFromPredicate:*(a1 + 40) inDomains:*(a1 + 48) bindings:&v27 error:*(a1 + 72)];
  if (v4)
  {
    v5 = [a2 preparedStatementForPattern:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %@", @"SELECT recents.ROWID, \n       recents.bundle_identifier, \n       recents.dates, \n       recents.display_name, \n       recents.sending_address, \n       recents.original_source, \n       recents.weight, \n       recents.group_kind, \n       contacts.ROWID, \n       contacts.kind, \n       contacts.display_name, \n       contacts.address\n  FROM recents\n  JOIN contacts ON contacts.recent_id = recents.ROWID\n", v4)}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v27;
    v7 = [v27 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v24;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v6);
          }

          ++v9;
          (*(*(*(&v23 + 1) + 8 * i) + 16))();
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 80);
    v14 = *(a1 + 88);
    v21[0] = xmmword_10001F430;
    v21[1] = unk_10001F440;
    v21[2] = xmmword_10001F450;
    v22 = 11;
    *(*(*(a1 + 64) + 8) + 40) = [v12 copyContactRecentsFromStatement:v5 selectIndexes:v21 groupThreshold:v13 options:v14];
    sqlite3_reset(v5);
  }

  if ([*(a1 + 56) pageRange])
  {
    v15 = [*(*(*(a1 + 64) + 8) + 40) _cn_skip:{objc_msgSend(*(a1 + 56), "pageRange")}];

    *(*(*(a1 + 64) + 8) + 40) = [v15 copy];
  }

  [*(a1 + 56) pageRange];
  if (v16 != -1)
  {
    v17 = *(*(*(a1 + 64) + 8) + 40);
    [*(a1 + 56) pageRange];
    v19 = [v17 _cn_take:v18];

    *(*(*(a1 + 64) + 8) + 40) = [v19 copy];
  }

  return v4 != 0;
}

void sub_100006098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000060B0(uint64_t a1, void *a2)
{
  v19 = 0;
  v4 = [*(a1 + 32) _whereClauseFromPredicate:*(a1 + 40) inDomains:*(a1 + 48) bindings:&v19 error:*(a1 + 64)];
  if (!v4)
  {
    return 0;
  }

  v5 = [a2 preparedStatementForPattern:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %@", @"SELECT COUNT(*)\n  FROM recents\n  JOIN contacts ON contacts.recent_id = recents.ROWID\n", v4)}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v19;
  v7 = [v19 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        ++v9;
        (*(*(*(&v15 + 1) + 8 * i) + 16))();
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = sub_10000235C(v5);
  v13 = v12 == 100;
  if (v12 == 100)
  {
    *(*(*(a1 + 56) + 8) + 24) = sqlite3_column_int64(v5, 0);
  }

  else if ((v12 - 102) <= 0xFFFFFFFD)
  {
    [*(a1 + 32) _handleSQLiteErrorCode:v12];
  }

  sqlite3_reset(v5);
  return v13;
}

BOOL sub_1000062F8(uint64_t a1, void *a2)
{
  v4 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"SELECT recent_id, key, value FROM metadata WHERE recent_id IN (?");
  if (*(a1 + 48) >= 2uLL)
  {
    v5 = 1;
    do
    {
      [(NSMutableString *)v4 appendString:@", ?"];
      ++v5;
    }

    while (v5 < *(a1 + 48));
  }

  [(NSMutableString *)v4 appendString:@" ORDER BY recent_id"]);
  v6 = [a2 preparedStatementForPattern:v4];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        sqlite3_bind_int64(v6, ++v9, [*(*(&v26 + 1) + 8 * i) longLongValue]);
      }

      v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = sub_100005CE0;
  v20 = sub_100005CF0;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000065D0;
  v15[3] = &unk_10002CCD0;
  v15[4] = *(a1 + 32);
  v15[5] = &v22;
  v15[6] = &v16;
  v12 = [CRSQLRow enumerateRowsInStatement:v6 usingBlock:v15];
  if (v23[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [*(a1 + 32) objectForKey:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:")}];
    [v13 setMetadata:v17[5]];
  }

  if (v12 != 101)
  {
    [*(a1 + 40) _handleSQLiteErrorCode:v12];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v12 == 101;
}

void sub_1000065A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

id sub_1000065D0(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(a2 numberWithIntegerAtIndex:{0), "cr_CRRecentIDValue"}];
  if (v4 != *(*(*(a1 + 40) + 8) + 24))
  {
    v5 = v4;
    [objc_msgSend(*(a1 + 32) objectForKey:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:")), "setMetadata:", *(*(*(a1 + 48) + 8) + 40)}];
    *(*(*(a1 + 40) + 8) + 24) = v5;
    *(*(*(a1 + 48) + 8) + 40) = +[NSMutableDictionary dictionary];
  }

  v6 = [a2 stringAtIndex:1];
  result = [a2 objectAtIndex:2];
  if (v6)
  {
    v8 = result;
    if (result)
    {
      v9 = *(*(*(a1 + 48) + 8) + 40);

      return [v9 setObject:v8 forKey:v6];
    }
  }

  return result;
}

void sub_100006798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000067B0(uint64_t a1, void *a2)
{
  v3 = [a2 preparedStatementForPattern:{+[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"SELECT value FROM metadata WHERE recent_id = ? AND key = ?"}];
  sqlite3_bind_int64(v3, 1, *(a1 + 48));
  sqlite3_bind_text(v3, 2, [CRRecentContactMetadataUpcomingEventIdentifier UTF8String], -1, 0);
  while (1)
  {
    v4 = sub_10000235C(v3);
    if (v4 != 100)
    {
      break;
    }

    v5 = [CRSQLRow objectAtIndex:0 statement:v3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(*(a1 + 40) + 8) + 40) = v5;
LABEL_6:
      v6 = 1;
      goto LABEL_8;
    }
  }

  if ((v4 & 0xFFFFFFFE) == 0x64)
  {
    goto LABEL_6;
  }

  [*(a1 + 32) _handleSQLiteErrorCode:v4];
  v6 = 0;
LABEL_8:
  sqlite3_reset(v3);
  return v6;
}

void sub_100006A70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);
  v8[0] = *(a1 + 56);
  v8[1] = v4;
  v8[2] = *(a1 + 88);
  v9 = *(a1 + 104);
  v5 = [v2 copyRecentContactFromStatement:v3 columnIndexes:v8 populateMetadata:0];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 40) objectForKey:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", objc_msgSend(v5, "recentID"))}];
    if (v7)
    {
      [v7 addObject:v6];
    }

    else
    {
      [*(a1 + 40) setObject:+[NSMutableArray arrayWithObject:](NSMutableArray forKey:{"arrayWithObject:", v6), +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", objc_msgSend(v6, "recentID"))}];
    }
  }
}

void sub_100006B5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 count];
  v6 = [a3 objectAtIndex:0];
  v7 = [v6 groupKind];
  if (v7 == 2)
  {
    if (v5 <= 1)
    {
      goto LABEL_28;
    }

LABEL_12:
    v20 = v5;
    v21 = v7;
    v9 = +[NSMutableIndexSet indexSet];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v23;
      v14 = CRAddressKindEmail;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(a3);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          if ([v14 isEqualToString:{objc_msgSend(v16, "kind")}] && objc_msgSend(*(a1 + 40), "containsObject:", objc_msgSend(v16, "address")))
          {
            [v9 addIndex:v12];
          }

          ++v12;
        }

        v11 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    if (v20 != [v9 count])
    {
      v17 = v6;
      [a3 removeObjectsAtIndexes:v9];
      if ([a3 count] < 2)
      {
        v18 = 0;
      }

      else
      {
        v18 = [[CRRecentContact alloc] initWithMembers:a3 displayName:objc_msgSend(v6 recentDate:"groupName") recentsDomain:{0, objc_msgSend(v6, "recentsDomain")}];
        [v18 setRecentID:{objc_msgSend(v6, "recentID")}];
        [v18 setRecentDates:{objc_msgSend(v6, "recentDates")}];
        v19 = v21 == 2 ? 2 : 1;
        [v18 setGroupKind:v19];
      }

      if (v18)
      {
        goto LABEL_30;
      }
    }

    return;
  }

  if (*(a1 + 64))
  {
    if (v5 < 2)
    {
      goto LABEL_28;
    }

    goto LABEL_9;
  }

  if (*(a1 + 65) == 1 && v5 > 1)
  {
LABEL_9:
    v8 = *(a1 + 56);
    if (v8 > [objc_msgSend(v6 "recentDates")] && (*(a1 + 65) != 1 || !objc_msgSend(*(a1 + 32), "upcomingEventIdentifierForRecentID:", objc_msgSend(v6, "recentID"))))
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_28:
  if (v5 == 1)
  {
    v18 = [a3 objectAtIndex:0];
    if (v18)
    {
LABEL_30:
      [*(a1 + 48) setObject:v18 forKey:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", objc_msgSend(v18, "recentID"))}];
    }
  }
}

void sub_10000716C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007184(uint64_t a1, void *a2)
{
  v16 = 11;
  v13 = xmmword_10001F430;
  v14 = unk_10001F440;
  v15 = xmmword_10001F450;
  v3 = [a2 preparedStatementForPattern:{objc_msgSend(@"SELECT recents.ROWID, \n       recents.bundle_identifier, \n       recents.dates, \n       recents.display_name, \n       recents.sending_address, \n       recents.original_source, \n       recents.weight, \n       recents.group_kind, \n       contacts.ROWID, \n       contacts.kind, \n       contacts.display_name, \n       contacts.address\n  FROM recents\n  JOIN contacts ON contacts.recent_id = recents.ROWID\n", "stringByAppendingString:", @" WHERE recents.record_hash = :record_hash AND recents.bundle_identifier = :bundle_identifier"}];
  sub_10000236C(v3, ":record_hash", *(a1 + 32));
  sub_10000236C(v3, ":bundle_identifier", *(a1 + 40));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000732C;
  v10[3] = &unk_10002CD98;
  v12 = v3;
  v11 = *(a1 + 48);
  v4 = [CRSQLRow enumerateRowsInStatement:v3 usingBlock:v10];
  if (v4 == 101)
  {
    v5 = *(*(*(a1 + 56) + 8) + 40);
    if (v5)
    {
      v6 = *(a1 + 48);
      v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 recentID]);
      v8 = *(*(*(a1 + 56) + 8) + 40);
      v17 = v7;
      v18 = v8;
      [v6 populateMetadataForRecents:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}];
    }
  }

  else
  {
    [*(a1 + 48) _handleSQLiteErrorCode:v4];
  }

  return 1;
}

void sub_10000732C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);
  v6[0] = *(a1 + 56);
  v6[1] = v4;
  v6[2] = *(a1 + 88);
  v7 = *(a1 + 104);
  v5 = [v2 copyRecentContactFromStatement:v3 columnIndexes:v6 populateMetadata:0];
  sub_1000025A8((*(*(a1 + 40) + 8) + 40), v5);
}

void sub_10000746C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007484(uint64_t a1, void *a2)
{
  v15 = 11;
  v12 = xmmword_10001F430;
  v13 = unk_10001F440;
  v14 = xmmword_10001F450;
  v3 = [a2 preparedStatementForPattern:{objc_msgSend(@"SELECT recents.ROWID, \n       recents.bundle_identifier, \n       recents.dates, \n       recents.display_name, \n       recents.sending_address, \n       recents.original_source, \n       recents.weight, \n       recents.group_kind, \n       contacts.ROWID, \n       contacts.kind, \n       contacts.display_name, \n       contacts.address\n  FROM recents\n  JOIN contacts ON contacts.recent_id = recents.ROWID\n", "stringByAppendingString:", @" WHERE recents.ROWID = :rowid"}];
  sub_1000023CC(v3, ":rowid", *(a1 + 48));
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100007618;
  v9[3] = &unk_10002CD98;
  v11 = v3;
  v10 = *(a1 + 32);
  v4 = [CRSQLRow enumerateRowsInStatement:v3 usingBlock:v9];
  if (v4 == 101)
  {
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v5 = *(a1 + 32);
      v6 = [NSNumber numberWithLongLong:*(a1 + 48)];
      v7 = *(*(*(a1 + 40) + 8) + 40);
      v16 = v6;
      v17 = v7;
      [v5 populateMetadataForRecents:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v17, &v16, 1)}];
    }
  }

  else
  {
    [*(a1 + 32) _handleSQLiteErrorCode:v4];
  }

  sqlite3_reset(v3);
  return 1;
}

void sub_100007618(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);
  v6[0] = *(a1 + 56);
  v6[1] = v4;
  v6[2] = *(a1 + 88);
  v7 = *(a1 + 104);
  v5 = [v2 copyRecentContactFromStatement:v3 columnIndexes:v6 populateMetadata:0];
  sub_1000025A8((*(*(a1 + 40) + 8) + 40), v5);
}

uint64_t sub_100007704(uint64_t a1, void *a2)
{
  v3 = [a2 preparedStatementForPattern:{objc_msgSend(@"SELECT recents.ROWID, \n       recents.bundle_identifier, \n       recents.dates, \n       recents.display_name, \n       recents.sending_address, \n       recents.original_source, \n       recents.weight, \n       recents.group_kind, \n       contacts.ROWID, \n       contacts.kind, \n       contacts.display_name, \n       contacts.address\n  FROM recents\n  JOIN contacts ON contacts.recent_id = recents.ROWID\n", "stringByAppendingString:", @" WHERE recents.bundle_identifier = :bundle_identifier"}];
  sub_10000236C(v3, ":bundle_identifier", *(a1 + 32));
  v12 = 0;
  while (1)
  {
    v4 = sub_10000235C(v3);
    if (v4 != 100)
    {
      break;
    }

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v10[0] = xmmword_10001F430;
    v10[1] = unk_10001F440;
    v10[2] = xmmword_10001F450;
    v11 = 11;
    v7 = [v6 copyRecentContactFromStatement:v3 columnIndexes:v10 populateMetadata:1];
    if (v7)
    {
      v8 = v7;
      (*(*(a1 + 48) + 16))();
    }

    objc_autoreleasePoolPop(v5);
    if (v12)
    {
      goto LABEL_9;
    }
  }

  if ((v4 - 102) <= 0xFFFFFFFD)
  {
    [*(a1 + 40) _handleSQLiteErrorCode:v4];
  }

LABEL_9:
  sqlite3_reset(v3);
  return 1;
}

BOOL sub_100007EC8(uint64_t a1, void *a2)
{
  v3 = [a2 preparedStatementForPattern:@"SELECT value FROM properties WHERE key = :key"];
  sub_10000236C(v3, ":key", *(a1 + 32));
  v4 = sub_10000235C(v3);
  v5 = v4;
  if (v4 == 100)
  {
    *(*(*(a1 + 48) + 8) + 24) = sqlite3_column_int64(v3, 0);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = -1;
    if ((v4 - 102) <= 0xFFFFFFFD)
    {
      [*(a1 + 40) _handleSQLiteErrorCode:v4];
    }
  }

  sqlite3_reset(v3);
  return v5 == 100;
}

uint64_t sub_100008040(uint64_t a1, void *a2)
{
  v3 = [a2 preparedStatementForPattern:{@"INSERT OR REPLACE INTO properties (key, value) VALUES (:key, :value)"}];
  sub_10000236C(v3, ":key", *(a1 + 32));
  sub_1000023CC(v3, ":value", *(a1 + 56));
  v4 = sub_10000235C(v3);
  *(*(*(a1 + 48) + 8) + 24) = v4 == 101;
  if ((v4 - 102) <= 0xFFFFFFFD)
  {
    [*(a1 + 40) _handleSQLiteErrorCode:v4];
  }

  sqlite3_reset(v3);
  return *(*(*(a1 + 48) + 8) + 24);
}

id sub_1000085D8(uint64_t a1)
{
  v2 = +[CRLogging log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "performing pending expunge for domain %{public}@", &v5, 0xCu);
  }

  result = [*(a1 + 40) expungeRecentsOverLimitsForDomain:*(a1 + 32) forcibly:0 expungedRecentIDs:0];
  if (result)
  {
    return [*(a1 + 40) _synchronizeStore:{objc_msgSend(*(a1 + 40), "_storeForRecentsDomain:", *(a1 + 32))}];
  }

  return result;
}

void sub_100008878(uint64_t a1, void *a2)
{
  v4 = [a2 numberWithIntegerAtIndex:0];
  v5 = [a2 stringAtIndex:1];
  v6 = [objc_msgSend(a2 numberWithIntegerAtIndex:{2), "intValue"}];
  v7 = CRAddressKindGroup;
  if (v6 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = CRAddressKindGroup;
  }

  if (v5)
  {
    [*(a1 + 32) addObject:v4];
    v9 = *(a1 + 40);
    if ([v8 isEqualToString:v7])
    {
      v10 = @"GP_";
    }

    else
    {
      v10 = @"MR_";
    }

    v11 = [(__CFString *)v10 stringByAppendingString:v5];

    [v9 addObject:v11];
  }

  else if (os_log_type_enabled(+[CRLogging log], OS_LOG_TYPE_ERROR))
  {
    sub_1000182F8();
  }
}

void sub_100008B54(uint64_t a1, void *a2)
{
  v4 = [a2 numberWithIntegerAtIndex:0];
  v5 = [a2 stringAtIndex:1];
  if (v5)
  {
    v6 = v5;
    [*(a1 + 32) addObject:v4];
    v7 = *(a1 + 40);
    if ([0 isEqualToString:CRAddressKindGroup])
    {
      v8 = @"GP_";
    }

    else
    {
      v8 = @"MR_";
    }

    v9 = [(__CFString *)v8 stringByAppendingString:v6];

    [v7 addObject:v9];
  }

  else if (os_log_type_enabled(+[CRLogging log], OS_LOG_TYPE_ERROR))
  {
    sub_10001837C();
  }
}

void sub_100008E04(uint64_t a1, void *a2)
{
  v4 = [a2 numberWithIntegerAtIndex:0];
  v5 = [a2 stringAtIndex:1];
  if (v5)
  {
    v6 = v5;
    [*(a1 + 32) addObject:v4];
    v7 = *(a1 + 40);
    if ([CRAddressKindGroup isEqualToString:CRAddressKindGroup])
    {
      v8 = @"GP_";
    }

    else
    {
      v8 = @"MR_";
    }

    v9 = [(__CFString *)v8 stringByAppendingString:v6];

    [v7 addObject:v9];
  }

  else if (os_log_type_enabled(+[CRLogging log], OS_LOG_TYPE_ERROR))
  {
    sub_1000183E4();
  }
}

void sub_1000090B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000090E8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    *buf = 0;
    result = [*(a1 + 40) _nts_expungeRecentsOlderThanDate:v4 domain:*(a1 + 48) storeKeys:buf connection:a2];
    if (!result)
    {
      return result;
    }

    [*(a1 + 56) addObjectsFromArray:result];
    [*(a1 + 64) addObjectsFromArray:*buf];
  }

  *buf = 0;
  result = [*(a1 + 40) _nts_expungeGroupRecentsOverLimit:*(a1 + 80) domain:*(a1 + 48) storeKeys:buf connection:a2];
  if (result)
  {
    [*(a1 + 56) addObjectsFromArray:result];
    [*(a1 + 64) addObjectsFromArray:*buf];
    *buf = 0;
    result = [*(a1 + 40) _nts_expungeIndividualRecentsOverLimit:*(a1 + 88) domain:*(a1 + 48) storeKeys:buf connection:a2];
    if (result)
    {
      [*(a1 + 56) addObjectsFromArray:result];
      [*(a1 + 64) addObjectsFromArray:*buf];
      if ([*(a1 + 56) count])
      {
        v6 = +[CRLogging log];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [*(a1 + 56) count];
          v8 = *(a1 + 48);
          *buf = 134218242;
          *&buf[4] = v7;
          v27 = 2114;
          v28 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Expunging %lu recents over limit for bundle identifier %{public}@", buf, 0x16u);
        }

        [*(a1 + 40) _deleteRecentsWithRecentIDs:objc_msgSend(*(a1 + 56) storeKeys:"allObjects") recentsDomain:*(a1 + 64) deleteInUbiquitousStore:{*(a1 + 48), 1}];
        *(*(*(a1 + 72) + 8) + 24) = 1;
      }

      if (*(a1 + 96) == 1 && (v9 = [*(a1 + 40) _storeForRecentsDomain:*(a1 + 48)]) != 0)
      {
        v10 = v9;
        v11 = [[NSMutableSet alloc] initWithArray:{objc_msgSend(objc_msgSend(v9, "dictionaryRepresentation"), "allKeys")}];
        v12 = [a2 preparedStatementForPattern:{@"                    SELECT recents.record_hash, recents.count \n                    FROM recents \n                    WHERE recents.bundle_identifier = :bundle_identifier                 "}];
        sub_10000236C(v12, ":bundle_identifier", *(a1 + 48));
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10000947C;
        v24[3] = &unk_10002CEB0;
        v24[4] = v11;
        v13 = [CRSQLRow enumerateRowsInStatement:v12 usingBlock:v24];
        v19 = (v13 & 0xFFFFFFFE) == 100;
        if ((v13 & 0xFFFFFFFE) == 0x64)
        {
          if ([v11 count])
          {
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v14 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v21;
              do
              {
                for (i = 0; i != v15; i = i + 1)
                {
                  if (*v21 != v16)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v18 = *(*(&v20 + 1) + 8 * i);
                  if (([v18 hasPrefix:@"GP_"] & 1) != 0 || objc_msgSend(v18, "hasPrefix:", @"MR_"))
                  {
                    [v10 removeObjectForKey:v18];
                    *(*(*(a1 + 72) + 8) + 24) = 1;
                  }
                }

                v15 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
              }

              while (v15);
            }
          }
        }

        else
        {
          [*(a1 + 40) _handleSQLiteErrorCode:v13];
        }

        return v19;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_10000947C(uint64_t a1, void *a2)
{
  v4 = [a2 stringAtIndex:0];
  v5 = [objc_msgSend(a2 numberWithIntegerAtIndex:{0), "intValue"}];
  if (v4)
  {
    if (v5 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = CRAddressKindGroup;
    }

    if ([v6 isEqualToString:?])
    {
      v7 = @"GP_";
    }

    else
    {
      v7 = @"MR_";
    }

    v8 = [(__CFString *)v7 stringByAppendingString:v4];
    v9 = *(a1 + 32);

    [v9 removeObject:v8];
  }

  else if (os_log_type_enabled(+[CRLogging log], OS_LOG_TYPE_ERROR))
  {
    sub_10001844C();
  }
}

uint64_t sub_10000997C(uint64_t a1, void *a2)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  v4 = [a2 preparedStatementForPattern:{@"INSERT INTO recents (display_name, bundle_identifier, original_source, dates, last_date, sending_address, count, weight, record_hash, group_kind)             VALUES (:display_name, :bundle_identifier, :original_source, :dates, :last_date, :sending_address, :count, :weight, :record_hash, :group_kind)"}];
  v5 = [a2 preparedStatementForPattern:{@"INSERT INTO contacts (recent_id, display_name, kind, address)             VALUES (:recent_id, :display_name, :kind, :address)"}];
  v6 = [a2 preparedStatementForPattern:{@"INSERT INTO metadata (recent_id, key, value) VALUES (:recent_id, :key, :value)"}];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v30 = a2;
  obj = *(a1 + 32);
  v7 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v7)
  {
    v9 = *v34;
    v29 = CRAddressKindGroup;
    *&v8 = 136315138;
    v28 = v8;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        insert_rowid = [v11 recentID];
        [*(a1 + 40) _bindRecent:v11 forStatement:v4];
        if ([v11 members])
        {
          v13 = [objc_msgSend(v11 "members")];
        }

        else
        {
          v13 = 1;
        }

        sub_1000023CC(v4, ":count", v13);
        v14 = sub_10000235C(v4);
        v15 = *(v38 + 24);
        if (v14 != 101)
        {
          v15 = 0;
        }

        *(v38 + 24) = v15;
        if (v15 == 1)
        {
          insert_rowid = sqlite3_last_insert_rowid([v30 db]);
          if (v29 == [v11 kind])
          {
            v20 = [objc_msgSend(v11 "members")];
            while (1)
            {
              v21 = [v20 nextObject];
              if (!v21 || *(v38 + 24) != 1)
              {
                break;
              }

              [*(a1 + 40) _bindContact:v21 withRecentID:insert_rowid forStatement:v5];
              v22 = sub_10000235C(v5);
              v23 = *(v38 + 24);
              if (v22 != 101)
              {
                v23 = 0;
              }

              *(v38 + 24) = v23;
              sqlite3_reset(v5);
            }
          }

          else
          {
            [*(a1 + 40) _bindContact:v11 withRecentID:insert_rowid forStatement:v5];
            v16 = sub_10000235C(v5);
            v17 = *(v38 + 24);
            if (v16 != 101)
            {
              v17 = 0;
            }

            *(v38 + 24) = v17;
          }

          v18 = [v11 metadata];
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_100009D74;
          v32[3] = &unk_10002CF00;
          v32[5] = v6;
          v32[6] = insert_rowid;
          v32[4] = &v37;
          [v18 enumerateKeysAndObjectsUsingBlock:v32];
        }

        else
        {
          v19 = +[CRLogging log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v24 = sqlite3_errmsg([v30 db]);
            *buf = v28;
            v42 = v24;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "**** SQLITE ERROR: %s", buf, 0xCu);
          }
        }

        if (insert_rowid != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v11 setRecentID:insert_rowid];
        }

        sqlite3_reset(v5);
        sqlite3_reset(v4);
        sqlite3_reset(v6);
        v10 = v10 + 1;
      }

      while (v10 != v7);
      v25 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      v7 = v25;
    }

    while (v25);
  }

  v26 = *(v38 + 24);
  _Block_object_dispose(&v37, 8);
  return v26;
}

uint64_t sub_100009D74(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  sub_10000271C(*(a1 + 40), a2, a3, *(a1 + 48));
  v6 = sub_10000235C(*(a1 + 40)) == 101;
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 24);
  if (!v6)
  {
    v9 = 0;
  }

  *(v8 + 24) = v9;
  result = sqlite3_reset(v7);
  *a4 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  return result;
}

uint64_t sub_100009E48(uint64_t a1, void *a2)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v4 = [a2 preparedStatementForPattern:@"            UPDATE contacts             SET display_name = :display_name             WHERE ROWID = :recent_id         "];
  v5 = [a2 preparedStatementForPattern:{@"            UPDATE recents             SET                 weight = COALESCE(MAX(weight, :weight), weight, :weight), display_name    = :display_name, dates           = :dates, last_date       = :last_date, sending_address = :sending_address, group_kind      = :group_kind             WHERE ROWID = :recent_id         "}];
  v6 = [a2 preparedStatementForPattern:{@"INSERT OR REPLACE INTO metadata (recent_id, key, value) VALUES (:recent_id, :key, :value)"}];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v7 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 contactID];
        v12 = [v10 recentID];
        [*(a1 + 40) _bindContact:v10 withRecentID:v11 forStatement:v4];
        v13 = sub_10000235C(v4);
        v14 = *(v27 + 24);
        if (v13 != 101)
        {
          v14 = 0;
        }

        *(v27 + 24) = v14;
        if (v14 == 1)
        {
          [*(a1 + 40) _bindRecent:v10 forStatement:v5];
          sub_1000023CC(v5, ":recent_id", v12);
          v15 = sub_10000235C(v5);
          v16 = *(v27 + 24);
          if (v15 != 101)
          {
            v16 = 0;
          }

          *(v27 + 24) = v16;
          if (v16 == 1)
          {
            v17 = [v10 metadata];
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_10000A108;
            v21[3] = &unk_10002CF00;
            v21[5] = v6;
            v21[6] = v12;
            v21[4] = &v26;
            [v17 enumerateKeysAndObjectsUsingBlock:v21];
          }
        }

        sqlite3_reset(v5);
        sqlite3_reset(v4);
        sqlite3_reset(v6);
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v7);
  }

  v18 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);
  return v18;
}

uint64_t sub_10000A108(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  sub_10000271C(*(a1 + 40), a2, a3, *(a1 + 48));
  v6 = sub_10000235C(*(a1 + 40)) == 101;
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 24);
  if (!v6)
  {
    v9 = 0;
  }

  *(v8 + 24) = v9;
  result = sqlite3_reset(v7);
  *a4 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  return result;
}

uint64_t sub_10000A350(id *a1)
{
  if ([a1[4] count])
  {
    [a1[5] _insertRecentContacts:a1[4]];
  }

  if ([a1[6] count])
  {
    [a1[5] _updateRecentContacts:a1[6]];
  }

  return 1;
}

BOOL sub_10000A6D0(uint64_t a1, void *a2)
{
  v3 = [a2 preparedStatementForPattern:@"DELETE FROM recents WHERE recents.record_hash = :record_hash AND recents.bundle_identifier = :bundle_identifier"];
  sub_10000236C(v3, ":record_hash", *(a1 + 32));
  sub_10000236C(v3, ":bundle_identifier", *(a1 + 40));
  v4 = sub_10000235C(v3) == 101;
  sqlite3_reset(v3);
  return v4;
}

BOOL sub_10000A9A0(uint64_t a1, void *a2)
{
  v3 = [a2 preparedStatementForPattern:@"            DELETE FROM recents \n            WHERE recents.ROWID IN (:row_ids) \n            AND recents.bundle_identifier = :bundle_identifier"];
  sub_10000236C(v3, ":row_ids", [*(a1 + 32) componentsJoinedByString:{@", "}]);
  sub_10000236C(v3, ":bundle_identifier", *(a1 + 40));
  v4 = sub_10000235C(v3) == 101;
  sqlite3_reset(v3);
  return v4;
}

id sub_10000B4D0(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) objectForKey:a2];
  if (!result)
  {
    v5 = [*(a1 + 40) _copyRecentContactForRecordHash:a2 recentsDomain:*(a1 + 48)];

    return v5;
  }

  return result;
}

id sub_10000B52C(uint64_t a1, void *a2, void *a3)
{
  if ([a3 length] || (v6 = objc_msgSend(a2, "recentsDomain"), objc_msgSend(v6, "isEqualToString:", CRRecentsDomainAcceptedIntroductions)))
  {
    [*(a1 + 32) setDisplayName:a3];
  }

  if (*(a1 + 40))
  {
    [a2 setMetadata:?];
  }

  [a2 applyWeight:*(a1 + 48)];
  [a2 recordRecentEventForDate:*(a1 + 56) userInitiated:*(a1 + 80)];
  v7 = [*(a1 + 64) hashForContact:a2];
  v8 = *(a1 + 72);

  return [v8 setObject:a2 forKey:v7];
}

const __CFString *sub_10000B9BC(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) recentsHashForExternalAddress:objc_msgSend(a2 kind:{"address"), objc_msgSend(a2, "kind")}];
  if (!result)
  {
    return &stru_10002DA70;
  }

  return result;
}

void sub_10000BB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000BB7C(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a3)
  {
    *(*(*(result + 40) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

NSNull *sub_10000C3E0(uint64_t a1, void *a2, NSNull *a3)
{
  if (([a2 hasPrefix:@"MR_"] & 1) != 0 || objc_msgSend(a2, "hasPrefix:", @"GP_"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (result = +[NSNull null], result == a3))
    {
      if (+[NSNull null](NSNull, "null") != a3 || (result = +[NSNull null], result == a3) && (*(a1 + 56) & 1) == 0)
      {
        v7 = *(a1 + 32);

        return [v7 setObject:a3 forKey:a2];
      }
    }
  }

  else
  {
    result = [a2 isEqualToString:@"MAX_RECENTS"];
    if (result)
    {
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        v8 = [(NSNull *)a3 objectForKey:@"m"];
        result = objc_opt_respondsToSelector();
        if (result)
        {
          v9 = [v8 unsignedIntegerValue];
          v10 = *(a1 + 40);
          v11 = *(a1 + 48);

          return [v10 setMaximumRecents:v9 forRecentsDomain:v11];
        }
      }
    }
  }

  return result;
}

id sub_10000C540(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) keyForContact:a2];
  if (result)
  {
    result = [*(a1 + 40) objectForKey:result];
    if (!result)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);

      return [v5 _syncContact:a2 withStore:v6];
    }
  }

  return result;
}

uint64_t sub_10000C6E4(uint64_t a1, void *a2, NSNull *a3)
{
  NSPushAutoreleasePool();
  v5 = [a2 substringFromIndex:3];
  if (+[NSNull null]== a3)
  {
    v8 = +[CRLogging log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Recent with hash '%{public}@' was removed from the cloud store, removing from local store", buf, 0xCu);
    }

    if ([a2 hasPrefix:@"GP_"])
    {
      v9 = CRAddressKindGroup;
    }

    else
    {
      v9 = 0;
    }

    [*(a1 + 32) _deleteRecentWithRecordHash:v5 kind:v9 recentsDomain:*(a1 + 40)];
  }

  else
  {
    v6 = [(NSNull *)a3 objectForKey:@"k"];
    if (v6)
    {
      v65[0] = @"e";
      v65[1] = @"p";
      *buf = CRAddressKindEmail;
      *&buf[8] = CRAddressKindPhoneNumber;
      v65[2] = @"i";
      v65[3] = @"m";
      *&buf[16] = CRAddressKindInstantMessage;
      v67 = CRAddressKindMapLocation;
      v65[4] = @"u";
      v65[5] = @"gr";
      v68 = CRAddressKindURL;
      v69 = CRAddressKindGroup;
      v7 = [[NSDictionary dictionaryWithObjects:v65 forKeys:6 count:?], "objectForKey:", v6];
    }

    else
    {
      v7 = CRAddressKindEmail;
    }

    v10 = [(NSNull *)a3 objectForKey:@"a"];
    v11 = [(NSNull *)a3 objectForKey:@"S"];
    v12 = [(NSNull *)a3 objectForKey:@"mrs"];
    if ([v12 count] < 2)
    {
      v20 = [*(a1 + 32) recentsHashForExternalAddress:v10 kind:v7];
      if (v20)
      {
        v21 = v20;
        goto LABEL_32;
      }

      if (![CRAddressKindGroup isEqualToString:v7])
      {
        v21 = 0;
LABEL_32:
        if ([v5 isEqualToString:v21])
        {
          v24 = [*(a1 + 32) _copyRecentContactForRecordHash:v21 recentsDomain:*(a1 + 40)];
          if (!v24)
          {
            if ([v12 count] < 2)
            {
              v24 = [[CRRecentContact alloc] initWithAddress:v10 displayName:0 kind:v7 recentDate:0 recentsDomain:*(a1 + 40)];
            }

            else
            {
              v48 = v11;
              v50 = [(NSNull *)a3 objectForKey:@"gK"];
              v25 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              v26 = [v12 countByEnumeratingWithState:&v54 objects:v63 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v55;
                do
                {
                  for (i = 0; i != v27; i = i + 1)
                  {
                    if (*v55 != v28)
                    {
                      objc_enumerationMutation(v12);
                    }

                    v30 = [[CRRecentContact alloc] initWithAddress:objc_msgSend(*(*(&v54 + 1) + 8 * i) displayName:"objectForKeyedSubscript:" kind:@"a" recentDate:objc_msgSend(*(*(&v54 + 1) + 8 * i) recentsDomain:{"objectForKeyedSubscript:", @"n", objc_msgSend(*(*(&v54 + 1) + 8 * i), "objectForKeyedSubscript:", @"k", 0, *(a1 + 40)}];
                    [(NSMutableArray *)v25 addObject:v30];
                  }

                  v27 = [v12 countByEnumeratingWithState:&v54 objects:v63 count:16];
                }

                while (v27);
              }

              v24 = [[CRRecentContact alloc] initWithMembers:v25 displayName:0 recentDate:0 recentsDomain:*(a1 + 40)];
              [v24 setGroupKind:{objc_msgSend(v50, "unsignedIntegerValue")}];
              v11 = v48;
            }
          }

          if (v11)
          {
            [v24 setOriginalSource:v11];
          }

          v32 = [v24 recentDates];
          v33 = [objc_msgSend(-[NSNull objectForKey:](a3 objectForKey:{@"t", "_cn_filter:", &stru_10002D1E8), "sortedArrayUsingComparator:", &stru_10002D228}];
          v34 = [v32 firstObject];
          if (!v34)
          {
            v34 = +[NSDate distantPast];
          }

          v35 = [v33 firstObject];
          if (!v35)
          {
            v35 = +[NSDate distantPast];
          }

          v36 = +[CRLogging log];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v34;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "-- Most recent date (local): '%{public}@'", buf, 0xCu);
          }

          v37 = +[CRLogging log];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v35;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "-- Most recent date (remote): '%{public}@'", buf, 0xCu);
          }

          if ([(NSDate *)v34 compare:v35]== 1)
          {
            v38 = +[CRLogging log];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Based on timestamp analysis, there may be local changes that have not been synced to the server. Applying conflict resolution policy server wins.", buf, 2u);
            }
          }

          if ([v33 count])
          {
            [v24 setRecentDates:v33];
            [v24 setDisplayName:{-[NSNull objectForKeyedSubscript:](a3, "objectForKeyedSubscript:", @"n"}];
            [v24 setLastSendingAddress:{-[NSNull objectForKeyedSubscript:](a3, "objectForKeyedSubscript:", @"s"}];
            [v24 setMetadata:{-[NSNull objectForKeyedSubscript:](a3, "objectForKeyedSubscript:", @"m"}];
            [v24 setGroupKind:{objc_msgSend(-[NSNull objectForKeyedSubscript:](a3, "objectForKeyedSubscript:", @"gK", "unsignedIntegerValue")}];
            [v24 applyWeight:{-[NSNull objectForKeyedSubscript:](a3, "objectForKeyedSubscript:", @"w"}];
            if ([objc_msgSend(v24 "address")])
            {
              v39 = +[CRLogging log];
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v40 = [v24 sanitizedDescription];
                v41 = [v24 displayName];
                *buf = 138543619;
                *&buf[4] = v40;
                *&buf[12] = 2113;
                *&buf[14] = v41;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "MERGE: Skipping display name for %{public}@ %{private}@", buf, 0x16u);
              }

              [v24 setDisplayName:0];
            }

            v42 = *(a1 + 32);
            v62 = v24;
            [v42 _saveRecentContacts:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v62, 1)}];
          }

          else
          {
            v43 = +[CRLogging log];
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = [v24 sanitizedDescription];
              *buf = 138543875;
              *&buf[4] = v44;
              *&buf[12] = 2113;
              *&buf[14] = v24;
              *&buf[22] = 2113;
              v67 = a3;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "MERGE: Skipping merging contact %{public}@ %{private}@ because we saw no dates %{private}@", buf, 0x20u);
            }
          }
        }

        else
        {
          v31 = +[CRLogging log];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543875;
            *&buf[4] = v5;
            *&buf[12] = 2114;
            *&buf[14] = v21;
            *&buf[22] = 2113;
            v67 = a3;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "calculated hash doesn't match reference key: %{public}@ != %{public}@, %{private}@", buf, 0x20u);
          }
        }

        return NSPopAutoreleasePool();
      }
    }

    else
    {
      v49 = v10;
      v51 = a3;
      v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v14 = [v12 countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v14)
      {
        v15 = v14;
        v46 = v5;
        v47 = a2;
        v16 = *v59;
        obj = v7;
        while (2)
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v59 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = [*(a1 + 32) recentsHashForExternalAddress:objc_msgSend(*(*(&v58 + 1) + 8 * j) kind:{"objectForKeyedSubscript:", @"a", objc_msgSend(*(*(&v58 + 1) + 8 * j), "objectForKeyedSubscript:", @"k", v46, v47)}];
            if (([(NSMutableArray *)v13 containsObject:v18]& 1) != 0)
            {
              v19 = 1;
              v5 = v46;
              a2 = v47;
              v7 = obj;
              goto LABEL_25;
            }

            [(NSMutableArray *)v13 insertObject:v18 atIndex:[(NSMutableArray *)v13 indexOfObject:v18 inSortedRange:0 options:[(NSMutableArray *)v13 count] usingComparator:1024, &stru_10002D080]];
          }

          v15 = [v12 countByEnumeratingWithState:&v58 objects:v64 count:16];
          v7 = obj;
          if (v15)
          {
            continue;
          }

          break;
        }

        v19 = 0;
        v5 = v46;
        a2 = v47;
      }

      else
      {
        v19 = 0;
      }

LABEL_25:
      v22 = [objc_msgSend(-[NSMutableArray componentsJoinedByString:](v13 componentsJoinedByString:{&stru_10002DA70), "dataUsingEncoding:", 4), "cr_md5DigestHexString"}];
      a3 = v51;
      if ((v19 & 1) == 0)
      {
        v21 = v22;
        v10 = v49;
        goto LABEL_32;
      }
    }

    v23 = +[CRLogging log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      *&buf[4] = a2;
      *&buf[12] = 2112;
      *&buf[14] = a3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "removing corrupted recent group %{private}@: %@", buf, 0x16u);
    }

    [*(a1 + 48) removeObjectForKey:a2];
  }

  return NSPopAutoreleasePool();
}

id *sub_10000DB8C(id *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    return [result[4] setObject:a2 forKey:a3];
  }

  return result;
}

void sub_10000DF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000DF54(uint64_t a1)
{
  result = [*(a1 + 32) _synchronizeStore:?];
  *(*(*(a1 + 40) + 8) + 24) &= result;
  return result;
}

id sub_10000E15C(id a1, CRRecentContact *a2)
{
  v2 = [(CRRecentContact *)a2 recentID];

  return [NSNumber numberWithLongLong:v2];
}

void sub_10000E390(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v6 = NSUbiquitousKeyValueStoreChangeReasonKey;
  v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = *(*(a1 + 32) + 88);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000E494;
  v5[3] = &unk_10002D160;
  v5[4] = v3;
  v5[5] = v2;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

id sub_10000E494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [NSNotification notificationWithName:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:a3 userInfo:*(a1 + 32)];
  v5 = *(a1 + 40);

  return [v5 postNotification:v4];
}

void sub_10000E56C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_10000EB24(sqlite3 *db)
{
  ppStmt = 0;
  do
  {
    v2 = sqlite3_prepare_v2(db, "SELECT value FROM properties WHERE key = 'version'", -1, &ppStmt, 0);
  }

  while ((v2 - 7) > 0xFFFFFFFD);
  if (v2)
  {
    return 0;
  }

  if (sub_10000235C(ppStmt) == 100)
  {
    v3 = sqlite3_column_int(ppStmt, 0);
  }

  else
  {
    v3 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v3;
}

void sub_10000EBBC(sqlite3 *a1, uint64_t a2)
{
  v4 = sqlite3_errcode(a1);
  if ((v4 - 100) >= 2 && v4 != 0)
  {
    v6 = v4;
    v7 = sqlite3_errmsg(a1);
    NSLog(@"Error %d %@: %s", v6, a2, v7);
  }
}

uint64_t sub_10000EC24(sqlite3 *a1)
{
  v2 = [[NSBundle bundleForClass:?]withExtension:"URLForResource:withExtension:", @"recents", @"sql"];
  v5 = 0;
  v3 = [NSString stringWithContentsOfURL:v2 encoding:4 error:&v5];
  if (v3)
  {
    if (sub_10000FCA8(a1, v3))
    {
      return 1;
    }

    sub_10000EBBC(a1, [NSString stringWithFormat:@"executing SQL from file: %@", v2]);
  }

  else
  {
    NSLog(@"Error loading SQL: %@", v5);
  }

  return 0;
}

BOOL sub_10000ED00(sqlite3 *a1)
{
  ppStmt = 0;
  v3 = sqlite3_prepare_v2(a1, "ALTER TABLE recents ADD COLUMN address_hash TEXT;", -1, &ppStmt, 0) == 0;
  v2 = v3;
  v3 = !v3 || ppStmt == 0;
  if (!v3)
  {
    v2 = sub_10000235C(ppStmt) == 101;
    sub_10000EBBC(a1, @"adding address_hash to recents table");
    sqlite3_finalize(ppStmt);
  }

  return v2;
}

BOOL sub_10000ED80(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "DROP INDEX IF EXISTS recents_last_name; DROP INDEX IF EXISTS recents_first_name; ALTER TABLE recents ADD COLUMN display_name TEXT;", 0, 0, 0);
  sub_10000EBBC(a1, @"dropping indexes, adding display name columns");
  if (v2)
  {
    return 0;
  }

  ppStmt = 0;
  v4 = sqlite3_prepare_v2(a1, "UPDATE recents SET display_name = NULLIF(IFNULL(first_name, '') || ' ' || IFNULL(last_name, ''), ' '), last_name = NULL, middle_name = NULL, first_name = NULL, suffix = NULL;", -1, &ppStmt, 0);
  v3 = v4 == 0;
  if (!v4 && ppStmt)
  {
    v3 = sub_10000235C(ppStmt) == 101;
    sub_10000EBBC(a1, @"updating recents with display names");
    sqlite3_finalize(ppStmt);
  }

  return v3;
}

BOOL sub_10000EE3C(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE recents ADD COLUMN sending_address TEXT;", 0, 0, 0) == 0;
  sub_10000EBBC(a1, @"adding sending address column");
  return v2;
}

BOOL sub_10000EE90(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "DROP TABLE IF EXISTS new_recents;\nCREATE TABLE new_recents (ROWID INTEGER PRIMARY KEY AUTOINCREMENT,\n\tdisplay_name TEXT,\n\tbundle_identifier TEXT,\n\tproperty INTEGER,\n\taddress TEXT,\n\taddress_hash TEXT,\n\tsending_address TEXT,\n\tdates TEXT NOT NULL,\n\tlast_date INTEGER,\n\tUNIQUE (bundle_identifier, address_hash)\n);INSERT INTO new_recents (bundle_identifier, display_name, property, address, address_hash, sending_address, dates, last_date)SELECT 'com.apple.mobilemail', display_name, property, address, address_hash, sending_address, dates, last_date FROM recents;DROP TABLE recents; ALTER TABLE new_recents RENAME TO recents;", 0, 0, 0);
  sub_10000EBBC(a1, @"migrating data to recents table with new contraints");
  if (v2)
  {
    return 0;
  }

  v3 = sqlite3_exec(a1, "CREATE INDEX recents_address_hash ON recents(bundle_identifier, address_hash, property);CREATE INDEX recents_expunge ON recents(bundle_identifier, last_date DESC);", 0, 0, 0) == 0;
  sub_10000EBBC(a1, @"adding new index");
  return v3;
}

BOOL sub_10000EF20(sqlite3 *a1, void *pApp)
{
  v2 = a1;
  function_v2 = sqlite3_create_function_v2(a1, "_migration_hash", 2, 1, pApp, sub_100010034, 0, 0, 0);
  sub_10000EBBC(v2, @"registering hash function");
  if (function_v2)
  {
    return 0;
  }

  v4 = sqlite3_exec(v2, "DROP TABLE IF EXISTS new_recents;\nCREATE TABLE new_recents (ROWID INTEGER PRIMARY KEY AUTOINCREMENT,\n\tdisplay_name TEXT,\n\tbundle_identifier TEXT,\n\tkind TEXT,\n\taddress TEXT,\n\taddress_hash TEXT NOT NULL,\n\tsending_address TEXT,\n\tdates TEXT NOT NULL,\n\tlast_date INTEGER,\n\tUNIQUE (bundle_identifier, address_hash)\n);", 0, 0, 0);
  sub_10000EBBC(v2, @"creating new_recents table with new constraints");
  if (v4)
  {
    return 0;
  }

  v31 = objc_alloc_init(NSMutableDictionary);
  ppStmt = 0;
  sqlite3_prepare_v2(v2, "SELECT bundle_identifier, display_name, CASE WHEN property = 4 THEN 'email' WHEN property = 3 THEN 'phone' END, address, _migration_hash(CASE WHEN property = 4 THEN 'email' WHEN property = 3 THEN 'phone' END, address), sending_address, dates, last_date FROM recents;", -1, &ppStmt, 0);
  if (!ppStmt)
  {
    goto LABEL_32;
  }

  v5 = sub_10000235C(ppStmt);
  if (v5 == 100)
  {
    v29 = v2;
    do
    {
      v6 = sqlite3_column_text(ppStmt, 0);
      v7 = sqlite3_column_text(ppStmt, 1);
      v8 = sqlite3_column_text(ppStmt, 2);
      v9 = sqlite3_column_text(ppStmt, 3);
      v10 = sqlite3_column_text(ppStmt, 4);
      v11 = sqlite3_column_text(ppStmt, 5);
      v12 = sqlite3_column_text(ppStmt, 6);
      v13 = sqlite3_column_int64(ppStmt, 7);
      if (v6)
      {
        if (v8)
        {
          if (v9)
          {
            if (v10)
            {
              if (v12)
              {
                v14 = v13;
                if (v13)
                {
                  v32 = [NSString stringWithFormat:@"%s-%s", v6, v10];
                  v15 = objc_alloc_init(NSMutableDictionary);
                  [v15 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", v6), @"bundle_identifier"}];
                  [v15 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", v8), @"kind"}];
                  [v15 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", v9), @"address"}];
                  [v15 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", v10), @"address_hash"}];
                  [v15 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", v12), @"dates"}];
                  [v15 setObject:+[NSNumber numberWithLongLong:](NSNumber forKeyedSubscript:{"numberWithLongLong:", v14), @"last_date"}];
                  if (v7)
                  {
                    [v15 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", v7), @"display_name"}];
                  }

                  if (v11)
                  {
                    [v15 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", v11), @"sending_address"}];
                  }

                  [v31 setObject:v15 forKeyedSubscript:v32];
                }
              }
            }
          }
        }
      }

      v16 = sub_10000235C(ppStmt);
    }

    while (v16 == 100);
    v17 = v16;
    v2 = v29;
  }

  else
  {
    v17 = v5;
  }

  sqlite3_finalize(ppStmt);
  ppStmt = 0;
  if (v17 != 101 || (sqlite3_prepare_v2(v2, "INSERT INTO new_recents (bundle_identifier, display_name, kind, address, address_hash, sending_address, dates, last_date)VALUES (?, ?, ?, ?, ?, ?, ?, ?);", -1, &ppStmt, 0), !ppStmt))
  {
LABEL_32:
    v27 = v2;
LABEL_33:
    sub_10000EBBC(v27, @"transferring recents to new_recents");

    return 0;
  }

  v30 = v2;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = [v31 objectEnumerator];
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v33 + 1) + 8 * i);
        sqlite3_bind_text(ppStmt, 1, [objc_msgSend(v23 objectForKeyedSubscript:{@"bundle_identifier", "UTF8String"}], -1, 0);
        sqlite3_bind_text(ppStmt, 2, [objc_msgSend(v23 objectForKeyedSubscript:{@"display_name", "UTF8String"}], -1, 0);
        sqlite3_bind_text(ppStmt, 3, [objc_msgSend(v23 objectForKeyedSubscript:{@"kind", "UTF8String"}], -1, 0);
        sqlite3_bind_text(ppStmt, 4, [objc_msgSend(v23 objectForKeyedSubscript:{@"address", "UTF8String"}], -1, 0);
        sqlite3_bind_text(ppStmt, 5, [objc_msgSend(v23 objectForKeyedSubscript:{@"address_hash", "UTF8String"}], -1, 0);
        sqlite3_bind_text(ppStmt, 6, [objc_msgSend(v23 objectForKeyedSubscript:{@"sending_address", "UTF8String"}], -1, 0);
        sqlite3_bind_text(ppStmt, 7, [objc_msgSend(v23 objectForKeyedSubscript:{@"dates", "UTF8String"}], -1, 0);
        sqlite3_bind_int64(ppStmt, 8, [objc_msgSend(v23 objectForKeyedSubscript:{@"last_date", "longLongValue"}]);
        v24 = sub_10000235C(ppStmt);
        sqlite3_reset(ppStmt);
        if (v24 != 101)
        {
          sqlite3_finalize(ppStmt);
          v27 = v30;
          goto LABEL_33;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  sqlite3_finalize(ppStmt);
  sub_10000EBBC(v30, @"transferring recents to new_recents");

  v25 = sqlite3_exec(v30, "DROP TABLE IF EXISTS recents; ALTER TABLE new_recents RENAME TO recents;CREATE INDEX recents_address_hash ON recents(bundle_identifier, address_hash, kind);CREATE INDEX recents_expunge ON recents(bundle_identifier, last_date DESC);", 0, 0, 0);
  sub_10000EBBC(v30, @"dropping old recents table, rename new_recents to recents, adding new indexes");
  if (v25)
  {
    return 0;
  }

  v26 = sqlite3_create_function_v2(v30, "_migration_hash", 2, 1, 0, 0, 0, 0, 0) == 0;
  sub_10000EBBC(v30, @"unregistering hash function");
  return v26;
}

BOOL sub_10000F598(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "DROP TABLE IF EXISTS new_recents;\nDROP TABLE IF EXISTS contacts;\n        CREATE TABLE new_recents(           ROWID INTEGER PRIMARY KEY AUTOINCREMENT,             display_name TEXT,             bundle_identifier TEXT,             sending_address TEXT,                         dates TEXT NOT NULL,             last_date INTEGER,                         count INTEGER        );                INSERT INTO new_recents (ROWID, display_name, bundle_identifier, sending_address, dates, last_date, count)         SELECT ROWID, display_name, bundle_identifier, sending_address, dates, last_date, 1 FROM recents;   CREATE TABLE contacts(            ROWID INTEGER PRIMARY KEY AUTOINCREMENT,                         recent_id INTEGER,                         display_name TEXT,             kind TEXT,             address TEXT,             address_hash TEXT NOT NULL,                         FOREIGN KEY (recent_id) REFERENCES new_recents (ROWID) ON DELETE CASCADE        );                 INSERT INTO contacts (recent_id, display_name, kind, address, address_hash)         SELECT ROWID, display_name, kind, address, address_hash FROM recents;                 DROP TABLE recents; ALTER TABLE new_recents RENAME TO recents;                 DROP INDEX IF EXISTS recents_address_hash;         DROP INDEX IF EXISTS recents_expunge;     ", 0, 0, 0);
  sub_10000EBBC(a1, @"creating separate contacts and recents tables");
  if (v2)
  {
    return 0;
  }

  v3 = sqlite3_exec(a1, "            CREATE INDEX contacts_recentsidx ON contacts(recent_id);             CREATE INDEX contacts_address_hash ON contacts(address_hash, kind);             CREATE INDEX contacts_search ON contacts(display_name, address);                    CREATE INDEX recents_expunge ON recents(bundle_identifier, last_date DESC);         ", 0, 0, 0) == 0;
  sub_10000EBBC(a1, @"adding new index for contacts table");
  return v3;
}

BOOL sub_10000F628(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "DROP TABLE IF EXISTS metadata;\nCREATE TABLE metadata (\n    ROWID INTEGER PRIMARY KEY AUTOINCREMENT,\n\n    recent_id INTEGER,\n    key TEXT,\n    value,\n\n    FOREIGN KEY (recent_id) REFERENCES recents (ROWID) ON DELETE CASCADE,\n    UNIQUE (recent_id, key)\n);\nDROP INDEX IF EXISTS contacts_search;\nDROP INDEX IF EXISTS contacts_address;\nDROP INDEX IF EXISTS metadata_recents;\nCREATE INDEX metadata_recents ON metadata(recent_id);\nCREATE INDEX contacts_address ON contacts(kind, display_name, address);", 0, 0, 0) == 0;
  sub_10000EBBC(a1, @"creating metadata tables and indexes");
  return v2;
}

BOOL sub_10000F67C(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE recents ADD COLUMN original_source TEXT;", 0, 0, 0) == 0;
  sub_10000EBBC(a1, @"adding original_source column");
  return v2;
}

BOOL sub_10000F6D0(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE recents ADD COLUMN weight FLOAT;", 0, 0, 0) == 0;
  sub_10000EBBC(a1, @"adding weight column");
  return v2;
}

BOOL sub_10000F724(sqlite3 *a1, void *a2)
{
  v4 = sqlite3_exec(a1, "PRAGMA foreign_keys = OFF;", 0, 0, 0);
  sub_10000EBBC(a1, @"0. Disable foreign key constraints.");
  if (v4)
  {
    return 0;
  }

  v5 = sqlite3_exec(a1, "DROP TABLE IF EXISTS new_recents; \nCREATE TABLE new_recents(\n   ROWID INTEGER PRIMARY KEY AUTOINCREMENT, \n   display_name TEXT, \n   bundle_identifier TEXT, \n   sending_address TEXT, \n   original_source TEXT, \n   dates TEXT NOT NULL, \n   last_date INTEGER, \n   weight FLOAT, \n   record_hash TEXT NOT NULL, \n   count INTEGER \n);INSERT INTO new_recents (ROWID, display_name, bundle_identifier, sending_address, \n                         original_source, dates, last_date, weight, count, record_hash) SELECT recents.ROWID, \n       recents.display_name, \n       recents.bundle_identifier, \n        recents.sending_address, \n        recents.original_source, \n        recents.dates, \n        recents.last_date, \n        recents.weight, \n        recents.count, \n        contacts.address_hash \n FROM recents \n INNER JOIN contacts \n         ON contacts.recent_id = recents.ROWID \nGROUP BY recents.ROWID;", 0, 0, 0);
  sub_10000EBBC(a1, @"1. Add record_hash column to recents");
  if (v5)
  {
    return 0;
  }

  ppStmt = 0;
  sqlite3_prepare_v2(a1, "SELECT recents.ROWID, contacts.address_hash, contacts.kind FROM recents INNER JOIN contacts ON contacts.recent_id = recents.ROWID WHERE recents.count > 1", -1, &ppStmt, 0);
  v8 = objc_alloc_init(NSMutableDictionary);
  while (sub_10000235C(ppStmt) == 100)
  {
    v9 = sqlite3_column_int64(ppStmt, 0);
    v10 = sqlite3_column_text(ppStmt, 1);
    v11 = sqlite3_column_text(ppStmt, 2);
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = [a2 recentsHashForAddress:+[NSString stringWithUTF8String:](NSString kind:{"stringWithUTF8String:", v10), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v11)}];
      if (v13)
      {
        v14 = v13;
        v15 = [v8 objectForKey:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", v9)}];
        if (!v15)
        {
          v15 = +[NSMutableArray array];
          [v8 setObject:v15 forKey:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", v9)}];
        }

        [v15 insertObject:v14 atIndex:{objc_msgSend(v15, "indexOfObject:inSortedRange:options:usingComparator:", v14, 0, objc_msgSend(v15, "count"), 1024, &stru_10002D268)}];
      }
    }
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100010258;
  v17[3] = &unk_10002D290;
  v17[4] = &v18;
  v17[5] = a1;
  [v8 enumerateKeysAndObjectsUsingBlock:v17];
  sub_10000EBBC(a1, @"2. Generate new hashes for each group");
  if ((v19[3] & 1) != 0 && (v16 = sqlite3_exec(a1, "DROP TABLE IF EXISTS new_contacts; \nCREATE TABLE new_contacts(\n    ROWID INTEGER PRIMARY KEY AUTOINCREMENT, \n    recent_id INTEGER, \n    display_name TEXT, \n    kind TEXT, \n     address TEXT, \n    FOREIGN KEY (recent_id) REFERENCES new_recents (ROWID) ON DELETE CASCADE \n);INSERT INTO new_contacts (ROWID, recent_id, display_name, kind, address) SELECT ROWID, recent_id, display_name, kind, address FROM contacts; \nDROP TABLE contacts; ALTER TABLE new_contacts RENAME TO contacts; \nDROP TABLE recents; ALTER TABLE new_recents RENAME TO recents; \nDROP INDEX IF EXISTS contacts_address_hash; \nDROP INDEX IF EXISTS recents_record_hash; \nDROP INDEX IF EXISTS recents_expunge; \nCREATE INDEX recents_record_hash ON recents(record_hash); \nCREATE INDEX recents_expunge ON recents(bundle_identifier, last_date DESC); \n", 0, 0, 0), sub_10000EBBC(a1, @"3. Remove contacts' address_hash column"), !v16))
  {
    v6 = sqlite3_exec(a1, "PRAGMA foreign_keys = ON;", 0, 0, 0) == 0;
    sub_10000EBBC(a1, @"4. Re-enable foreign key constraints.");
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v18, 8);
  return v6;
}

void sub_10000FA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10000FA54(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "DROP INDEX IF EXISTS contacts_recentsidx;\nDROP INDEX IF EXISTS contacts_address;\nCREATE INDEX contacts_recentsidx ON contacts(recent_id);\nCREATE INDEX contacts_address ON contacts(kind, display_name, address);\n", 0, 0, 0) == 0;
  sub_10000EBBC(a1, @"creating contacts indexes");
  return v2;
}

BOOL sub_10000FAA8(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE recents ADD COLUMN group_kind INTEGER;", 0, 0, 0) == 0;
  sub_10000EBBC(a1, @"adding group kind column");
  return v2;
}

BOOL sub_10000FAFC(sqlite3 *a1)
{
  if (sub_10000FCA8(a1, @"DELETE FROM recents WHERE bundle_identifier='com.apple.eventkit.ios'"))
  {
    v2 = sub_10000FCA8(a1, @"UPDATE recents SET bundle_identifier='com.apple.eventkit.ios' WHERE bundle_identifier='com.apple.reminders';");
    v3 = @"renaming iOS reminders domain";
  }

  else
  {
    v2 = 0;
    v3 = @"deleting pre-existing com.apple.eventkit.ios records";
  }

  sub_10000EBBC(a1, v3);
  return v2;
}

uint64_t sub_10000FB64(sqlite3 *a1)
{
  if (sub_10000FCA8(a1, @"DELETE FROM contacts WHERE rowid IN (SELECT c.rowid FROM contacts c LEFT JOIN recents r ON (c.recent_id = r.rowid) WHERE r.rowid IS NULL)"))
  {
    if (sub_10000FCA8(a1, @"DELETE FROM metadata WHERE rowid IN (SELECT m.rowid FROM metadata m LEFT JOIN recents r ON (m.recent_id = r.rowid) WHERE r.rowid IS NULL)"))
    {
      return 1;
    }

    v3 = @"deleting dangling metadata";
  }

  else
  {
    v3 = @"deleting dangling contacts";
  }

  sub_10000EBBC(a1, v3);
  return 0;
}

BOOL sub_10000FBD0(sqlite3 *a1)
{
  v2 = sub_10000FCA8(a1, @"DELETE FROM recents WHERE bundle_identifier IN ('com.apple.MobileSMS', 'com.apple.messages')");
  if (!v2)
  {
    sub_10000EBBC(a1, @"deleting messages recents");
  }

  return v2;
}

void sub_10000FC18(sqlite3 *a1, int a2)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(a1, "INSERT OR REPLACE INTO properties (key, value) values ('version', ?)", -1, &ppStmt, 0))
  {
    sub_10000EBBC(a1, @"preparing library version insert statement");
  }

  else
  {
    sqlite3_bind_int(ppStmt, 1, a2);
    sub_10000235C(ppStmt);
    sub_10000EBBC(a1, @"setting library version");
    sqlite3_finalize(ppStmt);
  }
}

BOOL sub_10000FCA8(sqlite3 *a1, void *a2)
{
  if (!a2)
  {
    sub_1000187C8();
  }

  v3 = sqlite3_exec(a1, [a2 UTF8String], 0, 0, 0);
  if (v3)
  {
    sub_10000EBBC(a1, [NSString stringWithFormat:@"executing SQL statements"]);
  }

  return v3 == 0;
}

void sub_100010034(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 2)
  {
    v5 = sqlite3_value_text(*a3);
    v6 = sqlite3_value_text(a3[1]);
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7 || (v8 = v6, v9 = sqlite3_user_data(a1), v10 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v5, 0x8000100u, kCFAllocatorNull), v11 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v8, 0x8000100u, kCFAllocatorNull), v12 = [v9 recentsHashForAddress:v11 kind:v10], v11, v10, !v12))
    {

      sqlite3_result_null(a1);
    }

    else
    {
      v13 = [v12 UTF8String];

      sqlite3_result_text(a1, v13, -1, 0);
    }
  }

  else
  {
    sqlite3_result_null(a1);
    v15 = +[CRLogging log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16[0] = 67109378;
      v16[1] = a2;
      v17 = 2080;
      v18 = "__recentsHashFunction";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "wrong number of arguments (%d) to %s", v16, 0x12u);
    }
  }
}

uint64_t sub_100010258(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  result = sqlite3_exec(*(a1 + 40), -[NSString UTF8String](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"UPDATE new_recents SET record_hash = '%@' WHERE ROWID = %ld", [objc_msgSend(objc_msgSend(a3 componentsJoinedByString:{&stru_10002DA70), "dataUsingEncoding:", 4), "cr_md5DigestHexString"}], objc_msgSend(a2, "integerValue")), "UTF8String"), 0, 0, 0);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 24);
  if (result)
  {
    v8 = 0;
  }

  *(v7 + 24) = v8;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

void sub_100010400(id a1)
{
  qword_100034338 = os_log_create("com.apple.corerecents", "daemon");

  _objc_release_x1();
}

void sub_100010D88(id a1)
{
  v1 = CRAcceptedIntroductionsDidChangeNotification;
  v2 = objc_autoreleasePoolPush();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010E9C;
  v9[3] = &unk_10002D2F0;
  v9[4] = v1;
  v3 = objc_retainBlock(v9);
  v4 = +[CNSchedulerProvider defaultProvider];
  v5 = [CNCoalescingTimer alloc];
  v6 = [v4 backgroundScheduler];
  v7 = [v5 initWithDelay:1 options:v3 block:v4 schedulerProvider:v6 downstreamScheduler:1.0];

  objc_autoreleasePoolPop(v2);
  v8 = qword_100034348;
  qword_100034348 = v7;
}

void sub_100010E9C(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 0);
}

void sub_1000110B0(id a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v1 = sub_100011AA4();
  block = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100011AE0;
  v22 = &unk_10002CB58;
  v23 = @"CoreRecentsVFS";
  v24 = &v15;
  dispatch_sync(v1, &block);
  v2 = v16[3];
  _Block_object_dispose(&v15, 8);
  if (!v2)
  {
    v3 = malloc_type_calloc(1uLL, 0xA8uLL, 0x10F0040C767261AuLL);
    v4 = sqlite3_vfs_find(0);
    v6 = *&v4->pNext;
    v5 = *&v4->pAppData;
    *v3 = *&v4->iVersion;
    v3[1] = v6;
    v3[2] = v5;
    v7 = *&v4->xDlClose;
    v9 = *&v4->xDelete;
    v8 = *&v4->xFullPathname;
    v3[5] = *&v4->xDlError;
    v3[6] = v7;
    v3[3] = v9;
    v3[4] = v8;
    v11 = *&v4->xGetLastError;
    v10 = *&v4->xSetSystemCall;
    v12 = *&v4->xSleep;
    *(v3 + 20) = v4->xNextSystemCall;
    v3[8] = v11;
    v3[9] = v10;
    v3[7] = v12;
    *(v3 + 1) = v4->szOsFile;
    *(v3 + 3) = strdup([@"CoreRecentsVFS" UTF8String]);
    *v3 = 1;
    v13 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    *(v3 + 4) = v13;
    *v13 = v4;
    *(v3 + 5) = sub_10001128C;
    v14 = sub_100011AA4();
    block = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100011B50;
    v22 = &unk_10002D358;
    v23 = @"CoreRecentsVFS";
    v24 = v3;
    dispatch_barrier_sync(v14, &block);
  }
}

uint64_t sub_100011AA4()
{
  if (qword_100034368 != -1)
  {
    sub_100018E94();
  }

  result = qword_100034360;
  if (!qword_100034360)
  {
    sub_100018EA8();
  }

  return result;
}

const void *sub_100011AE0(uint64_t a1)
{
  result = qword_100034358;
  if (qword_100034358)
  {
    result = CFDictionaryGetValue(qword_100034358, *(a1 + 32));
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

uint64_t sub_100011B50(uint64_t a1)
{
  Mutable = qword_100034358;
  if (!qword_100034358)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
    qword_100034358 = Mutable;
  }

  CFDictionaryAddValue(Mutable, *(a1 + 32), *(a1 + 40));
  v3 = *(a1 + 40);

  return sqlite3_vfs_register(v3, 0);
}

void sub_100011BE4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

id sub_100012458(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  qword_100034380 = result;
  return result;
}

void sub_10001258C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void CRLogSQLiteError(sqlite3 *a1, uint64_t a2)
{
  v4 = sqlite3_errcode(a1);
  if (v4 == 10)
  {
    __errnum = 0;
    sqlite3_file_control(a1, 0, 4, &__errnum);
    v5 = +[CRLogging log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sqlite3_errmsg(a1);
      v7 = __errnum;
      v8 = strerror(__errnum);
      *buf = 67110402;
      v15 = v4;
      v16 = 2048;
      v17 = a1;
      v18 = 2114;
      v19 = a2;
      v20 = 2080;
      v21 = v6;
      v22 = 1024;
      v23 = v7;
      v24 = 2080;
      v25 = v8;
      v9 = "Error %d on connection %p %{public}@: %s - I/O error %d (%s)";
      v10 = v5;
      v11 = 54;
LABEL_7:
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
    }
  }

  else
  {
    v12 = +[CRLogging log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109890;
      v15 = v4;
      v16 = 2048;
      v17 = a1;
      v18 = 2114;
      v19 = a2;
      v20 = 2080;
      v21 = sqlite3_errmsg(a1);
      v9 = "Error %d on connection %p %{public}@: %s";
      v10 = v12;
      v11 = 38;
      goto LABEL_7;
    }
  }
}

void sub_1000137F4(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  if (a2 == 3)
  {
    v5 = sqlite3_value_text(*a3);
    v6 = sqlite3_value_text(a3[1]);
    v7 = sqlite3_value_int(a3[2]);
    v8 = v7;
    if (v5)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v18 = sqlite3_user_data(a1);
      v19 = sub_100017BA4(v5, v6, -1, v8, v18);
      v20 = a1;
LABEL_13:

      sqlite3_result_int(v20, v19);
      return;
    }

    if (v6 && v7 == 1)
    {
      v20 = a1;
      v19 = 1;
      goto LABEL_13;
    }

    sqlite3_result_null(a1);
  }

  else
  {
    sqlite3_result_null(a1);
    v11 = +[CRLogging log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100018F40(a2, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

void sub_100013928(uint64_t a1)
{
  if (a1)
  {

    v2 = *(a1 + 8);
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

void sub_100013980(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  if (a2 == 3)
  {
    v5 = sqlite3_value_text(*a3);
    v6 = sqlite3_value_text(a3[1]);
    v7 = sqlite3_value_int(a3[2]);
    v8 = v7;
    if (v5)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v20 = sqlite3_user_data(a1);
      v21 = v20;
      if (v20[2] && !strcmp(v6, v20[1]))
      {
        v26 = *v21;
      }

      else
      {
        v22 = strlen(v6);
        if (v22)
        {
          v23 = v22;
          v24 = v21[1];
          if (v24)
          {
            free(v24);
          }

          v21[1] = strdup(v6);
          v21[2] = v23;
          v25 = [[NSData alloc] initWithBytesNoCopy:v21[1] length:v23 freeWhenDone:0];
          v26 = [v21[3] objectForKey:v25];
          if (!v26)
          {
            v26 = [[CRSearchMatcher alloc] initWithSearchString:[NSString options:"stringWithUTF8String:" stringWithUTF8String:v6], 7];
            v27 = v21[3];
            if (!v27)
            {
              v27 = objc_alloc_init(NSMutableDictionary);
              v21[3] = v27;
            }

            [v27 setObject:v26 forKey:{+[NSData dataWithData:](NSData, "dataWithData:", v25)}];
          }

          if (*v21 != v26)
          {

            *v21 = v26;
          }
        }

        else
        {
          v26 = 0;
        }
      }

      v11 = [(CRSearchMatcher *)v26 matchesUTF8String:v5 matchType:v8];
      v10 = a1;
      goto LABEL_30;
    }

    if (v6 && v7 == 1)
    {
      v10 = a1;
      v11 = 1;
LABEL_30:

      sqlite3_result_int(v10, v11);
      return;
    }

    sqlite3_result_null(a1);
  }

  else
  {
    sqlite3_result_null(a1);
    v13 = +[CRLogging log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100018FAC(a2, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

void sub_100013DC8(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  if (a2 == 3)
  {
    v5 = sqlite3_value_text(*a3);
    v6 = sqlite3_value_text(a3[1]);
    v7 = sqlite3_value_int(a3[2]);
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {

      sqlite3_result_null(a1);
    }

    else
    {
      v17 = v7;
      v18 = [sqlite3_user_data(a1) copySearcherForPattern:v6];
      v19 = [v18 matchesUTF8String:v5 matchType:v17];

      sqlite3_result_int(a1, v19);
    }
  }

  else
  {
    sqlite3_result_null(a1);
    v10 = +[CRLogging log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100019018(a2, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

id CRRemoveDatabase(void *a1)
{
  v2 = +[CRLogging log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing database %{public}@", buf, 0xCu);
  }

  if (a1)
  {
    *buf = 0;
    if (![+[NSFileManager removeItemAtPath:"removeItemAtPath:error:"]
    {
      v3 = *buf;
      if (*buf)
      {
        v4 = +[CRLogging log];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_100019084(a1, v3, v4);
        }
      }
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [&off_10002F670 countByEnumeratingWithState:&v14 objects:v21 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v15;
    *&v6 = 138543618;
    v13 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(&off_10002F670);
        }

        v10 = [a1 stringByAppendingString:{*(*(&v14 + 1) + 8 * v9), v13}];
        if (v10)
        {
          *buf = 0;
          if ([+[NSFileManager removeItemAtPath:"removeItemAtPath:error:"]
          {
            v11 = 0;
          }

          else
          {
            v11 = *buf;
          }
        }

        else
        {
          v11 = 0;
        }

        if (([CNFoundationError isFileNotFoundError:v11]& 1) == 0)
        {
          v12 = +[CRLogging log];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v13;
            *&buf[4] = v10;
            v19 = 2114;
            v20 = v11;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error deleting database support file at path %{public}@: %{public}@", buf, 0x16u);
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [&off_10002F670 countByEnumeratingWithState:&v14 objects:v21 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

void sub_10001413C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t sub_100014368(uint64_t a1, sqlite3_stmt *a2, int a3)
{
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, a3, v5, -1, 0);
}

uint64_t sub_1000143B8(uint64_t a1, sqlite3_stmt *a2, int a3)
{
  [*(a1 + 32) objCType];
  v6 = [*(a1 + 32) longLongValue];

  return sqlite3_bind_int64(a2, a3, v6);
}

void sub_100015358(id a1)
{
  v11[0] = @"kind";
  v9[0] = @"sql";
  v9[1] = @"count";
  v10[0] = @"kind";
  v10[1] = &off_10002F5F8;
  v9[2] = @"operator";
  v10[2] = &off_10002F610;
  v12[0] = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  v11[1] = @"address";
  v7[0] = @"sql";
  v7[1] = @"count";
  v8[0] = @"contacts.address";
  v8[1] = &off_10002F5F8;
  v12[1] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v11[2] = @"displayName";
  v5[0] = @"sql";
  v5[1] = @"count";
  v6[0] = @"contacts.display_name";
  v6[1] = &off_10002F5F8;
  v12[2] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v11[3] = @"groupName";
  v3[0] = @"sql";
  v3[1] = @"count";
  v4[0] = @"recents.display_name";
  v4[1] = &off_10002F5F8;
  v12[3] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v11[4] = @"sendingAddress";
  v1[0] = @"sql";
  v1[1] = @"count";
  v2[0] = @"recents.sending_address";
  v2[1] = &off_10002F5F8;
  v12[4] = [NSDictionary dictionaryWithObjects:v2 forKeys:v1 count:2];
  qword_1000343A0 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5];
}

const __CFString *sub_100016094(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @".SignedOut";
  }

  else
  {
    return off_10002D540[a1 - 1];
  }
}

void sub_100016374(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

id sub_1000163A0(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _resetCachedAccountInfo];
}

id sub_1000163CC(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _delegateAccountChanges];
}

id sub_1000163F8(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _delegateAccountChanges];
}

id sub_100016568(void *a1)
{
  result = [*(a1[4] + 8) isAddressRestricted:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_100016608(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 8);
  objc_exception_rethrow();
}

void sub_100016C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100016C48(uint64_t result, uint64_t a2)
{
  v18 = 0;
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (*result)
    {
      v5 = 0;
      v6 = 1;
      v7 = result;
      v8 = 1;
      while (1)
      {
        v9 = v8;
        v10 = v4;
        if (v4 < 0)
        {
          v12 = __maskrune(v4, 0x8000uLL) == 0;
          LOBYTE(v13) = __maskrune(v10, 0x1000uLL) != 0;
          result = __maskrune(v10, 0x4000uLL);
          if (result)
          {
LABEL_8:
            v14 = v6 & !v12;
            goto LABEL_11;
          }

          result = __maskrune(v10, 0x2000uLL);
        }

        else
        {
          v11 = _DefaultRuneLocale.__runetype[v4];
          v12 = (v11 & 0x8000) == 0;
          v13 = (v11 >> 12) & 1;
          if ((v11 & 0x4000) != 0)
          {
            goto LABEL_8;
          }

          result = v11 & 0x2000;
        }

        v14 = v6 & !v12;
        if (!result)
        {
          v8 = 0;
          v15 = 1;
          v6 = v13;
          goto LABEL_12;
        }

LABEL_11:
        v8 = 1;
        v6 = v13;
        v15 = v14;
LABEL_12:
        if (v9)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14;
        }

        if ((v9 & 1) == 0)
        {
          v14 |= v8;
        }

        if ((v14 & 1) != 0 && v5)
        {
          result = (*(a2 + 16))(a2, v5, v7 - v5, &v18);
          if (v18)
          {
            return result;
          }

          v5 = 0;
        }

        if (v16)
        {
          v5 = v3;
        }

        v17 = *++v3;
        v4 = v17;
        ++v7;
        if (!v17)
        {
          goto LABEL_27;
        }
      }
    }

    v5 = 0;
LABEL_27:
    if (v5)
    {
      return (*(a2 + 16))(a2, v5, v3 - v5, &v18);
    }
  }

  return result;
}

uint64_t sub_100016DD8(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (*(result + 64) == 6)
  {
    if (v6 != a3)
    {
      return result;
    }
  }

  else
  {
    v7 = v6 > a3;
    v8 = *(result + 40);
    if (v7)
    {
      return result;
    }
  }

  result = (*(result + 48))(a2, *(result + 56));
  if (!result)
  {
    *(*(*(v5 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

id sub_100017388(uint64_t a1, const char *a2, size_t a3, _BYTE *a4)
{
  v8 = [NSMutableData dataWithLength:a3 + 1];
  strncpy([(NSMutableData *)v8 mutableBytes], a2, a3);
  result = [*(*(a1 + 32) + 24) addObject:v8];
  *a4 = 0;
  return result;
}

uint64_t sub_100017494@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (a1)
  {
    __strlcpy_chk();
  }

  else
  {
    v3 = CFPreferencesCopyAppValue(@"AppleCollationOrder", kCFPreferencesCurrentApplication);
    if (v3)
    {
      ValueAtIndex = v3;
    }

    else
    {
      v7 = CFPreferencesCopyAppValue(@"AppleLanguages", kCFPreferencesCurrentApplication);
      if (!v7 || (v8 = v7, ValueAtIndex = CFArrayGetValueAtIndex(v7, 0), CFRetain(ValueAtIndex), CFRelease(v8), !ValueAtIndex))
      {
        LOBYTE(v10[0]) = 0;
        goto LABEL_11;
      }
    }

    CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(kCFAllocatorDefault, ValueAtIndex);
    if (CanonicalLanguageIdentifierFromString)
    {
      v6 = CanonicalLanguageIdentifierFromString;
      CFStringGetCString(CanonicalLanguageIdentifierFromString, v10, 257, 0x600u);
      CFRelease(v6);
    }

    CFRelease(ValueAtIndex);
  }

LABEL_11:
  uloc_setKeywordValue();
  *a2 = ucol_open();
  return ucol_setStrength();
}

CNCancelable *__cdecl sub_100017880(id a1, CNObserver *a2)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = CFStringCreateWithCString(0, kMFMailAccountsChangedNotification, 0x8000100u);
  if (v4)
  {
    v5 = v4;
    CFNotificationCenterAddObserver(DarwinNotifyCenter, a2, sub_100017964, v4, 0, CFNotificationSuspensionBehaviorDrop);
    CFRelease(v5);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017974;
  v7[3] = &unk_10002D358;
  v7[4] = a2;
  v7[5] = DarwinNotifyCenter;
  return [CNCancelationToken tokenWithCancelationBlock:v7];
}

void sub_100017980(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    usearch_close();
    v3 = a1[4];
    ubrk_close();
    sub_10001748C(a1);
    v4 = a1[5];
    if (v4)
    {
      utext_close(v4);
    }

    v5 = a1[25];
    if (v5)
    {
      free(v5);
    }

    v6 = a1[27];
    if (v6 && v6 != a1 + 28)
    {
      free(v6);
    }

    v7 = a1[22];
    if (v7 && v7 != a1 + 6)
    {
      free(v7);
    }

    free(a1);
  }
}

void *sub_100017A1C(uint64_t a1, char a2)
{
  v14 = U_ZERO_ERROR;
  v4 = malloc_type_malloc(0x2E8uLL, 0x10B0040F856FD53uLL);
  v4[3] = 0;
  *(v4 + 24) = 65;
  v4[22] = v4 + 6;
  v4[23] = 128;
  v4[5] = 0;
  v4[25] = 0;
  v4[26] = 0;
  *(v4 + 192) = 1;
  v4[27] = v4 + 28;
  v4[92] = 256;
  sub_100017494(a1, &v12);
  *v4 = v12;
  v4[2] = v13;
  v4[4] = ubrk_open();
  if (a2)
  {
    v6 = *v4;
    ucol_setAttribute();
    if ((a2 & 2) != 0)
    {
      goto LABEL_7;
    }

    v7 = *v4;
  }

  else
  {
    if ((a2 & 2) == 0)
    {
      goto LABEL_7;
    }

    v5 = *v4;
  }

  ucol_setAttribute();
LABEL_7:
  if ((a2 & 4) != 0)
  {
    v8 = *v4;
    ucol_setAttribute();
  }

  v9 = *v4;
  v4[3] = usearch_openFromCollator();
  if (v14 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    sub_100017980(v4);
    v10 = u_errorName(v14);
    NSLog(@"Failed to open ICUSQLite collator: %s", v10);
    return 0;
  }

  return v4;
}

UChar *sub_100017BA4(const char *a1, char *__s, int32_t a3, int a4, uint64_t a5)
{
  v7 = a3;
  pErrorCode = U_ZERO_ERROR;
  if (a3 == -1)
  {
    v7 = strlen(__s);
  }

  v10 = *(a5 + 176);
  v11 = strlen(v10);
  if (v11 != v7 || strncmp(v10, __s, v11) || !*(a5 + 200))
  {
    pDestLength = 0;
    if (v7 >= 1)
    {
      v12 = (v7 + 1);
      if (*(a5 + 184) < v12)
      {
        v13 = malloc_type_malloc((v7 + 1), 0x100004077774924uLL);
        if (!v13)
        {
          return 0;
        }

        v10 = v13;
        v14 = *(a5 + 176);
        if (v14 != (a5 + 48))
        {
          free(v14);
        }

        *(a5 + 176) = v10;
        *(a5 + 184) = v12;
      }

      memcpy(v10, __s, v7);
      *(*(a5 + 176) + v7) = 0;
      u_strFromUTF8(*(a5 + 200), *(a5 + 208), &pDestLength, __s, v7, &pErrorCode);
      if (pErrorCode == U_BUFFER_OVERFLOW_ERROR || !*(a5 + 200))
      {
        v15 = malloc_type_malloc(2 * pDestLength + 2, 0x1000040BDFB0063uLL);
        if (!v15)
        {
          return 0;
        }

        v16 = v15;
        v17 = *(a5 + 200);
        if (v17)
        {
          free(v17);
        }

        v18 = pDestLength + 1;
        *(a5 + 200) = v16;
        *(a5 + 208) = v18;
        pErrorCode = U_ZERO_ERROR;
        u_strFromUTF8(v16, v18, &pDestLength, __s, v7, &pErrorCode);
        v19 = *(a5 + 200);
      }

      v20 = *(a5 + 24);
      usearch_setPattern();
      *(a5 + 192) = 1;
      v21 = pDestLength;
      if (pDestLength >= 1)
      {
        v22 = *(a5 + 200);
        do
        {
          v24 = *v22++;
          v23 = v24;
          if ((v24 + 160) < 0x50u || (v23 & 0xFF80) == 0xE00 || ((v23 - 11904) >> 7) <= 0x196u)
          {
            *(a5 + 192) = 0;
          }

          --v21;
        }

        while (v21);
      }

      if (pErrorCode <= U_ZERO_ERROR)
      {
        goto LABEL_27;
      }

      **(a5 + 176) = 0;
    }

    return 0;
  }

LABEL_27:
  v60 = 0;
  v25 = strlen(a1);
  if (v25 < 1)
  {
    return 0;
  }

  u_strFromUTF8(*(a5 + 216), *(a5 + 736), &v60, a1, v25, &pErrorCode);
  if (pErrorCode == U_BUFFER_OVERFLOW_ERROR)
  {
    result = malloc_type_malloc(2 * v60 + 2, 0x1000040BDFB0063uLL);
    if (!result)
    {
      return result;
    }

    v27 = result;
    v28 = *(a5 + 216);
    if (v28 != (a5 + 224))
    {
      free(v28);
    }

    *(a5 + 216) = v27;
    v29 = v60 + 1;
    *(a5 + 736) = v29;
    pErrorCode = U_ZERO_ERROR;
    u_strFromUTF8(v27, v29, &v60, a1, v25, &pErrorCode);
  }

  v30 = *(a5 + 24);
  v31 = *(a5 + 216);
  usearch_setText();
  v32 = *(a5 + 24);
  if (a4 == 3)
  {
    v33 = usearch_last();
    if (v33 != -1)
    {
      v34 = v33;
      v35 = *(a5 + 24);
      v36 = usearch_getMatchedLength() + v34 == v60;
      goto LABEL_36;
    }

LABEL_72:
    v37 = 0;
    return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v37);
  }

  v38 = usearch_first();
  v39 = v38;
  v37 = 0;
  if (a4 > 3)
  {
    if ((a4 - 5) >= 2)
    {
      if (a4 != 4)
      {
        return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v37);
      }

      if (!v38)
      {
        v59 = *(a5 + 24);
        v36 = usearch_getMatchedLength() == v60;
        goto LABEL_36;
      }

      goto LABEL_72;
    }

    if (*(a5 + 192) == 1)
    {
      if (v38 != -1)
      {
        v40 = *(a5 + 32);
        v41 = *(a5 + 216);
        ubrk_setText();
        if (pErrorCode <= U_ZERO_ERROR)
        {
          v42 = 0;
          while (1)
          {
            v43 = *(a5 + 32);
            if (ubrk_isBoundary())
            {
              if (a4 == 5 || (v44 = *(a5 + 24), v45 = *(a5 + 32), usearch_getMatchedLength(), ubrk_isBoundary()))
              {
LABEL_76:
                v37 = 1;
                return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v37);
              }
            }

            else
            {
              v46 = *(a5 + 40);
              if ((v42 & 1) == 0)
              {
                v46 = utext_openUChars(v46, *(a5 + 216), v60, &pErrorCode);
                *(a5 + 40) = v46;
              }

              utext_setNativeIndex(v46, v39);
              utext_moveIndex32(*(a5 + 40), -1);
              v47 = utext_next32(*(a5 + 40));
              isUUppercase = u_isUUppercase(v47);
              v49 = utext_next32(*(a5 + 40));
              v50 = u_isUUppercase(v49);
              v51 = utext_next32(*(a5 + 40));
              v52 = u_isUUppercase(v51);
              if (isUUppercase)
              {
                v53 = v52 == 0;
              }

              else
              {
                v53 = 1;
              }

              v54 = v53;
              v42 = 1;
              if (v50 && v54)
              {
                if (a4 == 5)
                {
                  goto LABEL_76;
                }

                v55 = *(a5 + 24);
                v56 = *(a5 + 32);
                usearch_getMatchedLength();
                isBoundary = ubrk_isBoundary();
                v37 = 1;
                if (isBoundary)
                {
                  return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v37);
                }
              }
            }

            v58 = *(a5 + 24);
            v39 = usearch_next();
            v37 = 0;
            if (v39 == -1)
            {
              return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v37);
            }
          }
        }
      }

      goto LABEL_72;
    }

LABEL_69:
    v37 = v38 != -1;
    return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v37);
  }

  switch(a4)
  {
    case 0:
      goto LABEL_69;
    case 1:
      v36 = v38 == -1;
      break;
    case 2:
      v36 = v38 == 0;
      break;
    default:
      return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v37);
  }

LABEL_36:
  v37 = v36;
  return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v37);
}

void sub_1000180D0()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag (%d)", v1, 8u);
}

void sub_1000182F8()
{
  sub_10000E588();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "No hash for old recent with rowid %{public}@ and kind %{public}@", v2, 0x16u);
}

void sub_1000184B4(void *a1, NSObject *a2)
{
  [a1 sanitizedDescription];
  sub_10000E588();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No hash for recent %{public}@", v3, 0xCu);
}

id sub_100018568()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"void _bindData(sqlite3_stmt *, const char *, NSData *)"];

  return [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"_CRRecentsLibrary.m" lineNumber:734 description:@"data length is more than INT_MAX"];
}

void sub_1000186C0(void *a1, uint64_t a2, NSObject *a3)
{
  [a1 address];
  sub_10000E588();
  v6 = 2113;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Contact with address %{public}@ has kind we don't know how to sync, %{private}@", v5, 0x16u);
}

void sub_100018808(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 uuid];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Query %{public}@ failed: %{public}@", &v6, 0x16u);
}

void sub_1000189D4(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Statement cache grew too large to %li values", &v2, 0xCu);
}

void sub_100018C08(int a1)
{
  strerror(a1);
  sub_100011BCC();
  sub_100011BE4(&_mh_execute_header, v1, v2, "SQLite error (%d): %s", v3, v4, v5, v6, v7);
}

void sub_100018C84(int *a1)
{
  strerror(*a1);
  sub_100011BCC();
  sub_100011BE4(&_mh_execute_header, v1, v2, "SQLite I/O error (%d): %s", v3, v4, v5, v6, v7);
}

void sub_100019084(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error deleting database at path %{public}@: %{public}@", &v3, 0x16u);
}