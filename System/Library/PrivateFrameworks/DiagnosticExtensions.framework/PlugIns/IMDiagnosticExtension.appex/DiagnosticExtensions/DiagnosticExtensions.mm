uint64_t sub_100001B24(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100001BA0;
  v3[3] = &unk_100008318;
  v1 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  return (*(v1 + 16))(v1, v3);
}

void sub_100001BA0(uint64_t a1)
{
  v1 = [*(a1 + 32) group];
  dispatch_group_leave(v1);
}

void sub_100001E28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 _dumpDefaultsForDomain:@"com.apple.IMCoreSpotlight"];
  v5 = [*(a1 + 32) _temporaryPathWithFileName:@"com.apple.IMCoreSpotlight.plist"];
  [v3 _writeDictionary:v4 toPath:v5];

  v6[2]();
}

void sub_100001F3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMDPersistenceService spotlightQueryProvider];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001FF8;
  v6[3] = &unk_100008390;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 fetchSpotlightClientStateWithCompletion:v6];
}

void sub_100001FF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100003288(v6, v7);
    }
  }

  else
  {
    v8 = IMLogHandleForCategory();
    v9 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got Spotlight client state back from IMDPersistence %@", &v13, 0xCu);
      }

      v10 = *(a1 + 32);
      v11 = [IMDiagnosticSwiftBridge dictionaryForCodingObject:v5];
      v12 = [*(a1 + 32) _temporaryPathWithFileName:@"com.apple.SpotlightClientState.plist"];
      [v10 _writeDictionary:v11 toPath:v12];

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100003300(v9);
      }
    }
  }
}

void sub_1000021F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMDPersistenceService pTaskQueryProvider];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000022C0;
  v6[3] = &unk_1000083B8;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 loadPTaskReportsForGroups:0 excludingReasons:0 loadFullReports:1 completionBlock:v6];
}

uint64_t sub_1000022C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Got task reports back from IMDPersistence", v8, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [v5 _temporaryPathWithFileName:@"com.apple.IMDPTaskReport.plist"];
  [v5 _writeArrayOfCodingObjects:v3 rootKey:@"reports" toPath:v6];

  return (*(*(a1 + 40) + 16))();
}

void sub_1000023FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMDPersistenceService databaseQueryProvider];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000024B8;
  v6[3] = &unk_1000083E0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 generateUnreadCountReportsWithCompletionHandler:v6];
}

void sub_1000024B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = IMLogHandleForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100003344(v6, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = [v5 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Got %llu unread count reports back from IMDPersistence", &v11, 0xCu);
  }

  v9 = *(a1 + 32);
  v10 = [v9 _temporaryPathWithFileName:@"com.apple.IMUnreadCountReports.plist"];
  [v9 _writeArrayOfCodingObjects:v5 rootKey:@"reports" toPath:v10];

  (*(*(a1 + 40) + 16))();
}

void sub_10000266C(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = objc_alloc_init(IMDPersistentTaskBatchFetcher);
  v25 = a1;
  v26 = [*(a1 + 32) _temporarySubdirectory];
  [v3 setBatchSize:100];
  v4 = 0;
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v5;
    v8 = objc_autoreleasePoolPush();
    v5 = [v3 nextBatch];

    if ([v5 count])
    {
      v29 = @"tasks";
      v30 = v5;
      v9 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v10 = [IMDiagnosticSwiftBridge dictionaryForCodingObject:v9];
      v11 = [v10 mutableCopy];

      v12 = [v11 objectForKeyedSubscript:@"tasks"];
      v13 = [v12 __imArrayByApplyingBlock:&stru_100008420];
      [v11 setObject:v13 forKeyedSubscript:@"tasks"];

      v4 += [v5 count];
      v14 = *(v25 + 32);
      v15 = [NSString stringWithFormat:@"IMDPersistentTaskDump-%ld.plist", v6];
      v16 = [v26 stringByAppendingPathComponent:v15];
      [v14 _writeDictionary:v11 toPath:v16];

      ++v6;
    }

    objc_autoreleasePoolPop(v8);
  }

  while ([v5 count]);
  if (v4 >= 1)
  {
    v17 = [*(v25 + 32) _temporaryPathWithFileName:@"PTaskDump.aar"];
    v18 = +[NSFileManager defaultManager];
    v19 = [NSURL fileURLWithPath:v26];
    v20 = [NSURL fileURLWithPath:v17];
    v28 = 0;
    [v18 __im_createArchiveOfDirectoryAtURL:v19 withOutputURL:v20 archiveFilePermissions:420 withError:&v28];
    v21 = v28;

    v22 = +[NSFileManager defaultManager];
    v27 = 0;
    [v22 removeItemAtPath:v26 error:&v27];
    v23 = v27;

    if (v23)
    {
      printf("asdf %p", v23);
    }

    if (!v21)
    {
      [*(v25 + 32) _captureAttachmentAtPath:v17];
    }
  }

  v24[2](v24);
}

id sub_10000298C(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[IMDPersistentTask keyPathsToColumns];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002A74;
  v10[3] = &unk_100008448;
  v11 = v2;
  v5 = v3;
  v12 = v5;
  v6 = v2;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];

  v7 = v12;
  v8 = v5;

  return v5;
}

void sub_100002A74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_100002CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002CBC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002CD4(uint64_t a1)
{
  v5 = [*(a1 + 32) attachments];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

IMDiagnosticSwiftBridge __swiftcall IMDiagnosticSwiftBridge.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_100002F3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000342C();
  sub_10000340C();
  v6 = sub_10000343C();

  return sub_100002FB4(a1, a2, v6);
}

unint64_t sub_100002FB4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000341C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000306C(uint64_t a1)
{
  sub_1000033DC();
  v2 = sub_1000033CC();
  [v2 encodeObject:a1 forKey:NSKeyedArchiveRootObjectKey];
  v3 = sub_1000033BC();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = sub_1000033FC();
  if (!*(v4 + 16))
  {

    goto LABEL_8;
  }

  v7 = sub_100002F3C(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_8:

LABEL_9:

    return 0;
  }

  sub_1000031E4(*(v4 + 56) + 32 * v7, v12);

  sub_100003240(&qword_10000C538, &qword_100004030);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

unint64_t type metadata accessor for IMDiagnosticSwiftBridge()
{
  result = qword_10000C540;
  if (!qword_10000C540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C540);
  }

  return result;
}

uint64_t sub_1000031E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003240(uint64_t *a1, uint64_t *a2)
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

void sub_100003288(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch Spotlight client state with error %@", &v2, 0xCu);
}

void sub_100003344(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Got error trying to generate unread count report: %@", &v2, 0xCu);
}