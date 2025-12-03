@interface MADPhotosProcessingBackgroundSystemTask
+ (BOOL)enabled;
+ (BOOL)frequentProgressReporting;
+ (void)reportProgressForTasks:(id)tasks cancelOrExtendTimeoutBlock:(id)block;
+ (void)unimplementedExceptionForMethodName:(id)name;
+ (void)updateTaskSpecificBGSystemTaskRequest:(id)request;
- (id)reportingTaskIDs;
- (void)executeWithSystemTask:(id)task cancelBlock:(id)block completionHandler:(id)handler;
@end

@implementation MADPhotosProcessingBackgroundSystemTask

+ (BOOL)enabled
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011CBC;
  block[3] = &unk_100282998;
  block[4] = self;
  if (qword_1002B80D8 != -1)
  {
    dispatch_once(&qword_1002B80D8, block);
  }

  return byte_1002B80D0;
}

+ (void)updateTaskSpecificBGSystemTaskRequest:(id)request
{
  requestCopy = request;
  if (+[MADProgressManager taskHasReachedSteadyState:](MADProgressManager, "taskHasReachedSteadyState:", [self taskID]))
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v5 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        identifier = [self identifier];
        v7 = 138412290;
        v8 = identifier;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Task %@ has reached steady-state, relaxing task requirements", &v7, 0xCu);
      }
    }

    [requestCopy setExpectedDuration:{objc_msgSend(self, "steadyStateExpedtedDurationSeconds")}];
    [requestCopy setTrySchedulingBefore:{objc_msgSend(self, "activityDelayInSeconds") + objc_msgSend(self, "steadyStateActivityRepeatGracePeriodSeconds")}];
    [requestCopy setBacklogged:0];
  }
}

+ (BOOL)frequentProgressReporting
{
  if (qword_1002B80E0 != -1)
  {
    sub_1000132F8();
  }

  return 0;
}

- (id)reportingTaskIDs
{
  if ([objc_opt_class() taskID] == 2 || objc_msgSend(objc_opt_class(), "taskID") == 3 || objc_msgSend(objc_opt_class(), "taskID") == 10 || objc_msgSend(objc_opt_class(), "taskID") == 12)
  {
    return &off_100295F90;
  }

  if ([objc_opt_class() taskID] == 1)
  {
    return &off_100295FA8;
  }

  return 0;
}

+ (void)reportProgressForTasks:(id)tasks cancelOrExtendTimeoutBlock:(id)block
{
  tasksCopy = tasks;
  blockCopy = block;
  v8 = +[VCPPhotoLibraryManager sharedManager];
  allPhotoLibraries = [v8 allPhotoLibraries];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = allPhotoLibraries;
  v30 = [v10 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v30)
  {
    v11 = *v39;
    selfCopy = self;
    v28 = tasksCopy;
    v25 = *v39;
    v26 = v10;
    type = VCPLogToOSLogType[5];
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        if ([v13 isSystemPhotoLibrary])
        {
          if (![self frequentProgressReporting])
          {
            [MADProgressManager requestProgressUpdateForTasks:tasksCopy];
            v23 = +[MADProgressReporterBackgroundSystemTask sharedTask];
            v32 = 0;
            [v23 submitTask:&v32];
            v22 = v32;

            if (v22 && MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
            {
LABEL_24:
              identifier = [self identifier];
              *buf = 138412546;
              selfCopy2 = self;
              v44 = 2112;
              v45 = identifier;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][%@] Failed to request workload progress report task", buf, 0x16u);
            }

LABEL_25:

            goto LABEL_26;
          }

          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v14 = tasksCopy;
          v15 = [v14 countByEnumeratingWithState:&v34 objects:v46 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v35;
            do
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v35 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v34 + 1) + 8 * j);
                v20 = objc_autoreleasePoolPush();
                +[MADProgressManager updateProgressForTask:photoLibrary:reuseCachedValue:cancelOrExtendTimeoutBlock:](MADProgressManager, "updateProgressForTask:photoLibrary:reuseCachedValue:cancelOrExtendTimeoutBlock:", [v19 unsignedIntegerValue], v13, 0, blockCopy);
                objc_autoreleasePoolPop(v20);
              }

              v16 = [v14 countByEnumeratingWithState:&v34 objects:v46 count:16];
            }

            while (v16);
          }

          [MADProgressManager updateProgressForTask:16 photoLibrary:v13 reuseCachedValue:0 cancelOrExtendTimeoutBlock:blockCopy];
          self = selfCopy;
          tasksCopy = v28;
          v11 = v25;
          v10 = v26;
          if (blockCopy && blockCopy[2](blockCopy))
          {
            [MADProgressManager requestProgressUpdateForTasks:v14];
            v21 = +[MADProgressReporterBackgroundSystemTask sharedTask];
            v33 = 0;
            [v21 submitTask:&v33];
            v22 = v33;

            if (v22 && MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
            {
              goto LABEL_24;
            }

            goto LABEL_25;
          }
        }

LABEL_26:
        MediaAnalysisDaemonReleaseSharedDataStores(v13);
        objc_autoreleasePoolPop(context);
      }

      v30 = [v10 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v30);
  }
}

- (void)executeWithSystemTask:(id)task cancelBlock:(id)block completionHandler:(id)handler
{
  taskCopy = task;
  blockCopy = block;
  handlerCopy = handler;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  identifier = [objc_opt_class() identifier];
  v12 = [NSString stringWithFormat:@"[%@][%@]", v10, identifier];

  if ([objc_opt_class() enabled])
  {
    reportingTaskIDs = [(MADPhotosProcessingBackgroundSystemTask *)self reportingTaskIDs];
    if (!reportingTaskIDs)
    {
      taskID = [objc_opt_class() taskID];
      v14 = &off_100295FC0;
      if (taskID != 16)
      {
        v14 = 0;
      }

      reportingTaskIDs = v14;
    }

    v15 = +[MADThroughputManager throughputManagerForTask:BGSystemTask:](MADThroughputManager, "throughputManagerForTask:BGSystemTask:", [objc_opt_class() taskID], taskCopy);
    v16 = +[NSDate now];
    if (VCPIsRemoteIOSTask())
    {
      v17 = 0;
    }

    else
    {
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_100012C70;
      v71[3] = &unk_100282E10;
      v72 = v12;
      selfCopy = self;
      v74 = v16;
      v17 = [VCPTimer timerWithIntervalSeconds:60 isOneShot:0 andBlock:v71];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v80 = 0x3032000000;
    v81 = sub_100012D48;
    v82 = sub_100012D58;
    identifier2 = [objc_opt_class() identifier];
    v83 = VCPTransactionWithName(identifier2);

    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100012D60;
    v69[3] = &unk_1002828A8;
    v20 = v12;
    v70 = v20;
    v48 = objc_retainBlock(v69);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100012E34;
    v67[3] = &unk_100282A08;
    v21 = blockCopy;
    v68 = v21;
    v50 = objc_retainBlock(v67);
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100012E44;
    v58[3] = &unk_100282E38;
    v47 = v16;
    v59 = v47;
    v43 = v20;
    v60 = v43;
    v44 = v15;
    v61 = v44;
    v45 = v17;
    v62 = v45;
    selfCopy2 = self;
    p_buf = &buf;
    v64 = v21;
    v22 = handlerCopy;
    v65 = v22;
    v23 = objc_retainBlock(v58);
    context = objc_autoreleasePoolPush();
    v24 = +[VCPPhotoLibraryManager sharedManager];
    allPhotoLibraries = [v24 allPhotoLibraries];

    if (_os_feature_enabled_impl())
    {
      v25 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
      v26 = [MADPhotosDataStoreClient sharedContextForPhotoLibrary:v25];

      if ([v26 mad_hasChanges])
      {
        v27 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          v28 = objc_opt_class();
          taskID2 = [objc_opt_class() taskID];
          sub_10001330C(taskID2, v78, v28, v28);
        }
      }
    }

    if (+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      v30 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
      v31 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v30];

      if ([v31 hasOutstandingTransactions])
      {
        v32 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          v33 = objc_opt_class();
          taskID3 = [objc_opt_class() taskID];
          sub_100013364(taskID3, v77, v33, v33);
        }
      }
    }

    else
    {
      v31 = 0;
    }

    if (VCPIsRemoteIOSTask())
    {
      taskID4 = [objc_opt_class() taskID];
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_10001318C;
      v56[3] = &unk_100282858;
      v57 = v23;
      v36 = [VCPMADRemoteActivityTask taskWithActivityType:taskID4 andCompletionHandler:v56];
      [v36 setCancelBlock:v50];
      v37 = &v57;
    }

    else
    {
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_1000131D4;
      v54[3] = &unk_100282E60;
      v55 = v23;
      v38 = objc_retainBlock(v54);
      v36 = [objc_opt_class() taskWithPhotoLibraries:allPhotoLibraries cancelBlock:v50 progressHandler:v48 andCompletionHandler:v38];
      if (+[MADManagedBackgroundActivitySchedule isMACDPersistEnabled])
      {
        +[MADManagedBackgroundActivitySchedule updateSessionLogWithTaskID:startTime:duration:exitStatus:](MADManagedBackgroundActivitySchedule, "updateSessionLogWithTaskID:startTime:duration:exitStatus:", [objc_opt_class() taskID], v47, 0, -1.0);
      }

      else
      {
        [v31 storeSchedulingHistoryForActivityID:objc_msgSend(objc_opt_class() andStartTime:{"taskID"), v47}];
        [v31 purgeExcessiveSchedulingRecordsForActivityID:{objc_msgSend(objc_opt_class(), "taskID")}];
      }

      v37 = &v55;
    }

    if (+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      [v31 commit];
    }

    v39 = +[VCPMADTaskScheduler sharedInstance];
    v40 = [v39 addBackgroundTask:v36 withQoS:17] == 0;

    if (v40)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v42 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v42))
        {
          *v75 = 138412290;
          v76 = v43;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "%@ Failed to submit background task to task scheduler; prepare to reschedule", v75, 0xCu);
        }
      }

      (*(v22 + 2))(v22, 4294967168);
    }

    else if (MediaAnalysisLogLevel() >= 7)
    {
      v41 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v41))
      {
        *v75 = 138412290;
        v76 = v43;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "%@ Successfully submitted background task to task scheduler.", v75, 0xCu);
      }
    }

    objc_autoreleasePoolPop(context);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v18 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ BackgroundSystemTask disabled; quitting background processing", &buf, 0xCu);
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

+ (void)unimplementedExceptionForMethodName:(id)name
{
  [NSString stringWithFormat:@"[MADPhotosProcessingBackgroundSystemTask %@] should not be called", name];
  v3 = [NSException exceptionWithName:@"NotImplementedException" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v3);
}

@end