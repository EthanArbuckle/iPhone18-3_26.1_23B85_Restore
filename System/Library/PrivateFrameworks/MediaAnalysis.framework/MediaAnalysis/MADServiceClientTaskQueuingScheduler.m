@interface MADServiceClientTaskQueuingScheduler
- (BOOL)scheduleTask:(id)a3;
- (MADServiceClientTaskQueuingScheduler)initWithClientBundleID:(id)a3;
- (unint64_t)cancelAllTasks;
- (unint64_t)currentOutstandingTasks;
- (unint64_t)currentPendingTasks;
- (void)cancelTaskWithRequestID:(unint64_t)a3;
- (void)completeTaskWithInfo:(id)a3 madTaskID:(unint64_t)a4;
- (void)submitClientTask:(id)a3 withRequestID:(unint64_t)a4 schedulingErrorHandler:(id)a5;
@end

@implementation MADServiceClientTaskQueuingScheduler

- (unint64_t)cancelAllTasks
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000C5C5C;
  v21 = sub_1000C5C6C;
  v22 = 0;
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000030A0;
  block[3] = &unk_100285A80;
  block[4] = self;
  block[5] = &v17;
  block[6] = &v23;
  dispatch_sync(managementQueue, block);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v18[5];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v27 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = +[VCPMADTaskScheduler sharedInstance];
        v9 = [v7 scheduledTaskID];
        [v8 cancelTaskWithID:{objc_msgSend(v9, "unsignedIntegerValue")}];

        ++v24[3];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v12 objects:v27 count:16];
    }

    while (v4);
  }

  v10 = v24[3];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v10;
}

- (MADServiceClientTaskQueuingScheduler)initWithClientBundleID:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = MADServiceClientTaskQueuingScheduler;
  v6 = [(MADServiceClientTaskQueuingScheduler *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientBundleID, a3);
    v8 = +[NSMutableArray array];
    pendingTaskList = v7->_pendingTaskList;
    v7->_pendingTaskList = v8;

    v10 = +[NSMutableDictionary dictionary];
    requestIDToScheduledTask = v7->_requestIDToScheduledTask;
    v7->_requestIDToScheduledTask = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.MADServiceClientTaskQueuingScheduler.management", v12);
    managementQueue = v7->_managementQueue;
    v7->_managementQueue = v13;
  }

  return v7;
}

- (void)completeTaskWithInfo:(id)a3 madTaskID:(unint64_t)a4
{
  v6 = a3;
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C4CA0;
  block[3] = &unk_100285450;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(managementQueue, block);
}

- (BOOL)scheduleTask:(id)a3
{
  v4 = a3;
  requestIDToScheduledTask = self->_requestIDToScheduledTask;
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 requestID]);
  v7 = [(NSMutableDictionary *)requestIDToScheduledTask objectForKeyedSubscript:v6];

  if (!v7)
  {
    objc_initWeak(&location, self);
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1000C55F4;
    v49[3] = &unk_100285A08;
    objc_copyWeak(&v51, &location);
    v22 = v4;
    v50 = v22;
    v23 = objc_retainBlock(v49);
    v24 = +[VCPMADTaskScheduler sharedInstance];
    v25 = [v22 task];
    v26 = [v24 addForegroundTask:v25 withQoS:qos_class_self() completionHandler:v23];

    v21 = v26 != 0;
    if (v26)
    {
      v27 = [NSNumber numberWithUnsignedInteger:v26];
      [v22 setScheduledTaskID:v27];

      v28 = self->_requestIDToScheduledTask;
      v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 requestID]);
      [(NSMutableDictionary *)v28 setObject:v22 forKeyedSubscript:v29];

      if (MediaAnalysisLogLevel() < 5)
      {
LABEL_18:

        objc_destroyWeak(&v51);
        objc_destroyWeak(&location);
        goto LABEL_19;
      }

      v30 = VCPPersistentLogInstance();
      v31 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(v30, v31))
      {
        v32 = [v22 task];
        v33 = objc_opt_class();
        v34 = [v22 requestID];
        v35 = [v22 scheduledTaskID];
        clientBundleID = self->_clientBundleID;
        *buf = 138413058;
        v54 = v33;
        v55 = 2048;
        v56 = v34;
        v57 = 2112;
        v58 = v35;
        v59 = 2112;
        v60 = clientBundleID;
        _os_log_impl(&_mh_execute_header, v30, v31, "[QueuingScheduler] Scheduled foreground task %@ (MADRequestID %lu, VCPMADTaskID %@) for client %@", buf, 0x2Au);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v37 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v37))
        {
          v38 = [v22 task];
          v39 = objc_opt_class();
          v40 = [v22 requestID];
          v41 = self->_clientBundleID;
          *buf = 138412802;
          v54 = v39;
          v55 = 2048;
          v56 = v40;
          v57 = 2112;
          v58 = v41;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "[QueuingScheduler] Failed to schedule foreground task %@ (MADRequestID %lu) for client %@", buf, 0x20u);
        }
      }

      v42 = [v22 schedulingErrorHandler];
      v43 = v42 == 0;

      if (v43)
      {
        goto LABEL_18;
      }

      v30 = [v22 schedulingErrorHandler];
      v61 = NSLocalizedDescriptionKey;
      v44 = [v22 task];
      v45 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Failed to schedule foreground task %@ (MADRequestID %lu)", objc_opt_class(), [v22 requestID]);
      v62 = v45;
      v46 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v47 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v46];
      (*(v30 + 16))(v30, v47);
    }

    goto LABEL_18;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v8 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      v9 = self->_clientBundleID;
      v10 = [v4 requestID];
      v11 = [v4 task];
      *buf = 138412802;
      v54 = v9;
      v55 = 2048;
      v56 = v10;
      v57 = 2112;
      v58 = objc_opt_class();
      v12 = v58;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[QueuingScheduler] Client %@ MADRequestID %lu already registered; abandon task %@", buf, 0x20u);
    }
  }

  v13 = [v4 schedulingErrorHandler];
  v14 = v13 == 0;

  if (!v14)
  {
    v15 = [v4 schedulingErrorHandler];
    v63 = NSLocalizedDescriptionKey;
    v16 = [v4 requestID];
    v17 = [v4 task];
    v18 = [NSString stringWithFormat:@"Client MADRequestID %lu already registered abandon task %@", v16, objc_opt_class()];;
    v64 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v20 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v19];
    (v15)[2](v15, v20);
  }

  LOBYTE(v21) = 0;
LABEL_19:

  return v21;
}

- (void)submitClientTask:(id)a3 withRequestID:(unint64_t)a4 schedulingErrorHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    managementQueue = self->_managementQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C58BC;
    block[3] = &unk_100285A30;
    v17 = v8;
    v20 = a4;
    v18 = self;
    v19 = v9;
    dispatch_sync(managementQueue, block);

    v11 = v17;
LABEL_8:

    goto LABEL_9;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v12 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      clientBundleID = self->_clientBundleID;
      *buf = 134218242;
      v24 = a4;
      v25 = 2112;
      v26 = clientBundleID;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[QueuingScheduler] MADRequestID %lu registered an invalid task for client %@", buf, 0x16u);
    }
  }

  if (v9)
  {
    v21 = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithFormat:@"MADRequestID %lu registered an invalid task", a4];
    v22 = v11;
    v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v14];
    (*(v9 + 2))(v9, v15);

    goto LABEL_8;
  }

LABEL_9:
}

- (void)cancelTaskWithRequestID:(unint64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000C5C5C;
  v10 = sub_1000C5C6C;
  v11 = 0;
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C5C74;
  block[3] = &unk_100285A58;
  block[5] = &v6;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(managementQueue, block);
  if (v7[5])
  {
    v4 = +[VCPMADTaskScheduler sharedInstance];
    [v4 cancelTaskWithID:{objc_msgSend(v7[5], "unsignedIntegerValue")}];
  }

  _Block_object_dispose(&v6, 8);
}

- (unint64_t)currentPendingTasks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managementQueue = self->_managementQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C6088;
  v5[3] = &unk_100283178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(managementQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)currentOutstandingTasks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managementQueue = self->_managementQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C616C;
  v5[3] = &unk_100283178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(managementQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end