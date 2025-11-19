@interface IXSAppUpdateScheduler
+ (id)sharedInstance;
- (BOOL)_onQueue_registerUpdateRequestForTask:(id)a3;
- (BOOL)_onQueue_scheduleUpdateRequestForTask:(id)a3 error:(id *)a4;
- (BOOL)scheduleUpdateInstallForCoordinatorUUID:(id)a3 error:(id *)a4;
- (IXSAppUpdateScheduler)init;
- (void)_onQueue_deregisterTaskWithDASWithIdentifier:(id)a3;
- (void)_onQueue_invokeInstallerForTask:(id)a3;
- (void)removeUpdateRequestForCoordinatorUUID:(id)a3;
@end

@implementation IXSAppUpdateScheduler

- (IXSAppUpdateScheduler)init
{
  v13.receiver = self;
  v13.super_class = IXSAppUpdateScheduler;
  v2 = [(IXSAppUpdateScheduler *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.installcoordination.appUpdateScheduler.internal", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.installcoordination.appUpdateScheduler.schedule", v6);
    scheduleQueue = v2->_scheduleQueue;
    v2->_scheduleQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.installcoordination.appUpdateScheduler.coordinator", v9);
    coordinatorQueue = v2->_coordinatorQueue;
    v2->_coordinatorQueue = v10;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100048B88;
  block[3] = &unk_100100D40;
  block[4] = a1;
  if (qword_100121DF0 != -1)
  {
    dispatch_once(&qword_100121DF0, block);
  }

  v2 = qword_100121DE8;

  return v2;
}

- (void)_onQueue_deregisterTaskWithDASWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IXSAppUpdateScheduler *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[BGSystemTaskScheduler sharedScheduler];
  v7 = [v6 taskRequestForIdentifier:v4];
  if (!v7)
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10009FD04();
    }

    goto LABEL_7;
  }

  if (([v6 deregisterTaskWithIdentifier:v4] & 1) == 0)
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[IXSAppUpdateScheduler _onQueue_deregisterTaskWithDASWithIdentifier:]";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to cancel the request for %@", &v9, 0x16u);
    }

LABEL_7:
  }
}

- (void)_onQueue_invokeInstallerForTask:(id)a3
{
  v4 = a3;
  v5 = [(IXSAppUpdateScheduler *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100048F64(v4);
  if (!v6)
  {
    v10 = sub_1000031B0(off_100121958);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315394;
    v17 = "[IXSAppUpdateScheduler _onQueue_invokeInstallerForTask:]";
    v18 = 2112;
    v19 = v4;
    v11 = "%s: Failed to get coordinator uuid from app update task identifier: %@";
    v12 = v10;
    v13 = 22;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    goto LABEL_9;
  }

  v7 = +[IXSCoordinatorManager sharedInstance];
  v8 = [v7 coordinatorForUUID:v6];

  if (!v8)
  {
    v10 = sub_1000031B0(off_100121958);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315650;
    v17 = "[IXSAppUpdateScheduler _onQueue_invokeInstallerForTask:]";
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v4;
    v11 = "%s: No coordinator found for %@. Marking task as completed: %@";
    v12 = v10;
    v13 = 32;
    goto LABEL_8;
  }

  [(IXSAppUpdateScheduler *)self _onQueue_deregisterTaskWithDASWithIdentifier:v4];
  v9 = [(IXSAppUpdateScheduler *)self coordinatorQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100049000;
  v14[3] = &unk_1001010A0;
  v15 = v8;
  v10 = v8;
  sub_100071134(v9, v14);

LABEL_9:
}

- (BOOL)_onQueue_registerUpdateRequestForTask:(id)a3
{
  v4 = a3;
  v5 = [(IXSAppUpdateScheduler *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IXSAppUpdateScheduler _onQueue_registerUpdateRequestForTask:]";
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Registering opportunistic install for %@", buf, 0x16u);
  }

  v7 = +[BGSystemTaskScheduler sharedScheduler];
  v8 = [(IXSAppUpdateScheduler *)self scheduleQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000491D4;
  v13[3] = &unk_100102880;
  v9 = v4;
  v14 = v9;
  v15 = self;
  v10 = [v7 registerForTaskWithIdentifier:v9 usingQueue:v8 launchHandler:v13];

  if ((v10 & 1) == 0)
  {
    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10009FD84();
    }
  }

  return v10;
}

- (BOOL)_onQueue_scheduleUpdateRequestForTask:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IXSAppUpdateScheduler *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[BGSystemTaskScheduler sharedScheduler];
  v9 = [v8 taskRequestForIdentifier:v6];
  if (!v9)
  {
    v10 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:v6];
    [v10 setRequiresNetworkConnectivity:0];
    [v10 setRequiresExternalPower:0];
    [v10 setPriority:1];
    v13 = +[IXSCoordinatorManager sharedInstance];
    v14 = sub_100048F64(v6);
    v15 = [v13 coordinatorForUUID:v14];

    if (v15)
    {
      v16 = [v15 identity];
      v17 = [v16 bundleID];
      v36 = 0;
      v18 = sub_10003AF28(v17, 15, &v36);
      v19 = v36;

      if (v18)
      {
        v20 = [v19 objectForKeyedSubscript:@"TEST_MODE_BG_UPDATE_SCHEDULE_AFTER"];
        v21 = [v19 objectForKeyedSubscript:@"TEST_MODE_BG_UPDATE_SCHEDULE_BEFORE"];
        if (v20)
        {
          [v20 doubleValue];
          [v10 setScheduleAfter:?];
        }

        if (v21)
        {
          [v21 doubleValue];
          [v10 setTrySchedulingBefore:?];
        }
      }

      else
      {
        v25 = [v15 identity];
        v26 = [v25 bundleID];
        v41 = v26;
        v27 = [NSArray arrayWithObjects:&v41 count:1];
        [v10 setRelatedApplications:v27];

        [v10 setApplicationRelationship:3];
      }

      v28 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v38 = "[IXSAppUpdateScheduler _onQueue_scheduleUpdateRequestForTask:error:]";
        v39 = 2112;
        v40 = v15;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s: Scheduling opportunistic install for %@", buf, 0x16u);
      }

      v35 = 0;
      v29 = [v8 submitTaskRequest:v10 error:&v35];
      v11 = v35;
      if (v29)
      {
        v12 = 1;
        goto LABEL_25;
      }

      v30 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10009FE90(v15, v11, v30);
      }

      v31 = [v15 uniqueIdentifier];
      v33 = sub_1000405FC("[IXSAppUpdateScheduler _onQueue_scheduleUpdateRequestForTask:error:]", 188, @"IXErrorDomain", 1uLL, v11, 0, @"Failed to submit background update request for %@", v32, v31);

      v11 = v33;
      if (!a4)
      {
LABEL_24:
        v12 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v22 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10009FF44();
      }

      v11 = sub_1000405FC("[IXSAppUpdateScheduler _onQueue_scheduleUpdateRequestForTask:error:]", 167, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to locate coordinator for task name %@", v23, v6);
      v19 = 0;
      if (!a4)
      {
        goto LABEL_24;
      }
    }

    v24 = v11;
    v12 = 0;
    *a4 = v11;
LABEL_25:

    goto LABEL_26;
  }

  v10 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10009FE04();
  }

  v11 = 0;
  v12 = 1;
LABEL_26:

  return v12;
}

- (BOOL)scheduleUpdateInstallForCoordinatorUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100049A7C;
  v20 = sub_100049A8C;
  v21 = 0;
  v7 = [(IXSAppUpdateScheduler *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100049A94;
  v11[3] = &unk_1001028A8;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v14 = &v22;
  v15 = &v16;
  dispatch_sync(v7, v11);

  v9 = *(v23 + 24);
  if (a4 && (v23[3] & 1) == 0)
  {
    *a4 = v17[5];
    v9 = *(v23 + 24);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9 & 1;
}

- (void)removeUpdateRequestForCoordinatorUUID:(id)a3
{
  v4 = a3;
  v5 = [(IXSAppUpdateScheduler *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100049D9C;
  v7[3] = &unk_100100ED8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

@end