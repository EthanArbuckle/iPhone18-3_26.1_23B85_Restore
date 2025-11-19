@interface MADPhotosProcessingBackgroundSystemTask
+ (BOOL)enabled;
+ (BOOL)frequentProgressReporting;
+ (void)reportProgressForTasks:(id)a3 cancelOrExtendTimeoutBlock:(id)a4;
+ (void)unimplementedExceptionForMethodName:(id)a3;
+ (void)updateTaskSpecificBGSystemTaskRequest:(id)a3;
- (id)reportingTaskIDs;
- (void)executeWithSystemTask:(id)a3 cancelBlock:(id)a4 completionHandler:(id)a5;
@end

@implementation MADPhotosProcessingBackgroundSystemTask

+ (BOOL)enabled
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011CBC;
  block[3] = &unk_100282998;
  block[4] = a1;
  if (qword_1002B80D8 != -1)
  {
    dispatch_once(&qword_1002B80D8, block);
  }

  return byte_1002B80D0;
}

+ (void)updateTaskSpecificBGSystemTaskRequest:(id)a3
{
  v4 = a3;
  if (+[MADProgressManager taskHasReachedSteadyState:](MADProgressManager, "taskHasReachedSteadyState:", [a1 taskID]))
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v5 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v6 = [a1 identifier];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Task %@ has reached steady-state, relaxing task requirements", &v7, 0xCu);
      }
    }

    [v4 setExpectedDuration:{objc_msgSend(a1, "steadyStateExpedtedDurationSeconds")}];
    [v4 setTrySchedulingBefore:{objc_msgSend(a1, "activityDelayInSeconds") + objc_msgSend(a1, "steadyStateActivityRepeatGracePeriodSeconds")}];
    [v4 setBacklogged:0];
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

+ (void)reportProgressForTasks:(id)a3 cancelOrExtendTimeoutBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[VCPPhotoLibraryManager sharedManager];
  v9 = [v8 allPhotoLibraries];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = v9;
  v30 = [v10 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v30)
  {
    v11 = *v39;
    v27 = a1;
    v28 = v6;
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
          if (![a1 frequentProgressReporting])
          {
            [MADProgressManager requestProgressUpdateForTasks:v6];
            v23 = +[MADProgressReporterBackgroundSystemTask sharedTask];
            v32 = 0;
            [v23 submitTask:&v32];
            v22 = v32;

            if (v22 && MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
            {
LABEL_24:
              v24 = [a1 identifier];
              *buf = 138412546;
              v43 = a1;
              v44 = 2112;
              v45 = v24;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][%@] Failed to request workload progress report task", buf, 0x16u);
            }

LABEL_25:

            goto LABEL_26;
          }

          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v14 = v6;
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
                +[MADProgressManager updateProgressForTask:photoLibrary:reuseCachedValue:cancelOrExtendTimeoutBlock:](MADProgressManager, "updateProgressForTask:photoLibrary:reuseCachedValue:cancelOrExtendTimeoutBlock:", [v19 unsignedIntegerValue], v13, 0, v7);
                objc_autoreleasePoolPop(v20);
              }

              v16 = [v14 countByEnumeratingWithState:&v34 objects:v46 count:16];
            }

            while (v16);
          }

          [MADProgressManager updateProgressForTask:16 photoLibrary:v13 reuseCachedValue:0 cancelOrExtendTimeoutBlock:v7];
          a1 = v27;
          v6 = v28;
          v11 = v25;
          v10 = v26;
          if (v7 && v7[2](v7))
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

- (void)executeWithSystemTask:(id)a3 cancelBlock:(id)a4 completionHandler:(id)a5
{
  v53 = a3;
  v52 = a4;
  v8 = a5;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [objc_opt_class() identifier];
  v12 = [NSString stringWithFormat:@"[%@][%@]", v10, v11];

  if ([objc_opt_class() enabled])
  {
    v51 = [(MADPhotosProcessingBackgroundSystemTask *)self reportingTaskIDs];
    if (!v51)
    {
      v13 = [objc_opt_class() taskID];
      v14 = &off_100295FC0;
      if (v13 != 16)
      {
        v14 = 0;
      }

      v51 = v14;
    }

    v15 = +[MADThroughputManager throughputManagerForTask:BGSystemTask:](MADThroughputManager, "throughputManagerForTask:BGSystemTask:", [objc_opt_class() taskID], v53);
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
      v73 = self;
      v74 = v16;
      v17 = [VCPTimer timerWithIntervalSeconds:60 isOneShot:0 andBlock:v71];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v80 = 0x3032000000;
    v81 = sub_100012D48;
    v82 = sub_100012D58;
    v19 = [objc_opt_class() identifier];
    v83 = VCPTransactionWithName(v19);

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
    v21 = v52;
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
    v63 = self;
    p_buf = &buf;
    v64 = v21;
    v22 = v8;
    v65 = v22;
    v23 = objc_retainBlock(v58);
    context = objc_autoreleasePoolPush();
    v24 = +[VCPPhotoLibraryManager sharedManager];
    v49 = [v24 allPhotoLibraries];

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
          v29 = [objc_opt_class() taskID];
          sub_10001330C(v29, v78, v28, v28);
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
          v34 = [objc_opt_class() taskID];
          sub_100013364(v34, v77, v33, v33);
        }
      }
    }

    else
    {
      v31 = 0;
    }

    if (VCPIsRemoteIOSTask())
    {
      v35 = [objc_opt_class() taskID];
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_10001318C;
      v56[3] = &unk_100282858;
      v57 = v23;
      v36 = [VCPMADRemoteActivityTask taskWithActivityType:v35 andCompletionHandler:v56];
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
      v36 = [objc_opt_class() taskWithPhotoLibraries:v49 cancelBlock:v50 progressHandler:v48 andCompletionHandler:v38];
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

    (*(v8 + 2))(v8, 0);
  }
}

+ (void)unimplementedExceptionForMethodName:(id)a3
{
  [NSString stringWithFormat:@"[MADPhotosProcessingBackgroundSystemTask %@] should not be called", a3];
  v3 = [NSException exceptionWithName:@"NotImplementedException" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v3);
}

@end