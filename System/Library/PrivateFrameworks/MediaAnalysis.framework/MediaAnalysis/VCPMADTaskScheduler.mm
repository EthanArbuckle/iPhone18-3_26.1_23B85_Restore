@interface VCPMADTaskScheduler
+ (id)sharedInstance;
- (BOOL)taskIsAuxiliaryCompatible:(id)a3 runningTask:(id)a4;
- (BOOL)validateTask:(id)a3;
- (VCPMADTaskScheduler)init;
- (unint64_t)addBackgroundTask:(id)a3 withQoS:(unsigned int)a4;
- (unint64_t)addForegroundTask:(id)a3 withQoS:(unsigned int)a4 completionHandler:(id)a5;
- (unint64_t)currentOutstandingTasks;
- (unsigned)validateQoS:(unsigned int)a3;
- (void)_checkBackgroundTasksForTask:(id)a3;
- (void)_runTask:(id)a3;
- (void)_schedule;
- (void)_tryFreeingResourcesForQOS:(id)a3 resourceRequirement:(float)a4;
- (void)cancelAllTasks;
- (void)cancelBackgroundTasks;
- (void)cancelTaskWithID:(unint64_t)a3;
- (void)dealloc;
@end

@implementation VCPMADTaskScheduler

- (VCPMADTaskScheduler)init
{
  v23.receiver = self;
  v23.super_class = VCPMADTaskScheduler;
  v2 = [(VCPMADTaskScheduler *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.VCPMADTaskScheduler.management", v3);
    managementQueue = v2->_managementQueue;
    v2->_managementQueue = v4;

    v6 = dispatch_group_create();
    runningGroup = v2->_runningGroup;
    v2->_runningGroup = v6;

    v8 = +[NSMutableArray array];
    runningTasks = v2->_runningTasks;
    v2->_runningTasks = v8;

    v10 = +[NSMutableDictionary dictionary];
    pendingTasks = v2->_pendingTasks;
    v2->_pendingTasks = v10;

    v2->_nextTaskID = 1;
    v2->_resourceBudget = 1.0;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [objc_opt_class() qosArray];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v13)
    {
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v19 + 1) + 8 * v15);
          v17 = +[NSMutableArray array];
          [(NSMutableDictionary *)v2->_pendingTasks setObject:v17 forKeyedSubscript:v16];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v13);
    }
  }

  return v2;
}

- (void)dealloc
{
  [(VCPMADTaskScheduler *)self cancelAllTasks];
  v3.receiver = self;
  v3.super_class = VCPMADTaskScheduler;
  [(VCPMADTaskScheduler *)&v3 dealloc];
}

+ (id)sharedInstance
{
  if (qword_1002B8128 != -1)
  {
    sub_10001F0FC();
  }

  v3 = qword_1002B8120;

  return v3;
}

- (void)_tryFreeingResourcesForQOS:(id)a3 resourceRequirement:(float)a4
{
  v69 = a3;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v5 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = [v69 intValue];
      resourceBudget = self->_resourceBudget;
      *buf = 67109632;
      *v80 = v6;
      *&v80[4] = 2048;
      *&v80[6] = a4;
      *&v80[14] = 2048;
      *&v80[16] = resourceBudget;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[Scheduler] Attempting to terminate low-priority tasks to unblock high-priority request [QoS: %d Cost: %0.3f][Budget: %0.3f]", buf, 0x1Cu);
    }
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v8 = self->_runningTasks;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (!v9)
  {
    v12 = 0.0;
    goto LABEL_20;
  }

  v10 = *v75;
  v11 = VCPLogToOSLogType[7];
  v12 = 0.0;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v75 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v74 + 1) + 8 * i);
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v11))
      {
        v15 = [v14 task];
        v16 = objc_opt_class();
        NSStringFromClass(v16);
        v68 = v15;
        v18 = v17 = v11;
        v19 = [v14 taskID];
        LODWORD(v15) = [v14 qos];
        v20 = [v14 task];
        [v20 resourceRequirement];
        *buf = 138413058;
        *v80 = v18;
        *&v80[8] = 2048;
        *&v80[10] = v19;
        *&v80[18] = 1024;
        *&v80[20] = v15;
        v81 = 2048;
        v82 = v21;
        v11 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[Scheduler] Evaluating candidate %@ (%lu) [QoS: %d Cost: %0.3f]", buf, 0x26u);
      }

      v22 = [v14 task];
      if ([v22 autoCancellable])
      {
        v23 = [v14 qos];
        v24 = v23 < [v69 intValue];

        if (!v24)
        {
          continue;
        }

        v22 = [v14 task];
        [v22 resourceRequirement];
        v12 = v12 + v25;
      }
    }

    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v74 objects:v83 count:16];
  }

  while (v9);
LABEL_20:

  if ((v12 + self->_resourceBudget) >= a4)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v26 = self->_runningTasks;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v70 objects:v78 count:16];
    if (!v27)
    {
      goto LABEL_43;
    }

    v29 = *v71;
    v30 = VCPLogToOSLogType[7];
    *&v28 = 138413058;
    v65 = v28;
    type = v30;
    while (1)
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v71 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v32 = *(*(&v70 + 1) + 8 * j);
        v33 = [v32 task];
        if ([v33 autoCancellable])
        {
          v34 = [v32 qos];
          v35 = v34 < [v69 intValue];

          if (!v35)
          {
            continue;
          }

          v36 = [v32 task];
          v37 = objc_opt_respondsToSelector();

          if (v37)
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v30))
            {
              v38 = [v32 task];
              v39 = objc_opt_class();
              v40 = NSStringFromClass(v39);
              v41 = [v32 taskID];
              v42 = [v32 qos];
              v43 = [v32 task];
              [v43 resourceRequirement];
              *buf = v65;
              *v80 = v40;
              *&v80[8] = 2048;
              *&v80[10] = v41;
              *&v80[18] = 1024;
              *&v80[20] = v42;
              v81 = 2048;
              v82 = v44;
              v30 = type;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Scheduler] Interrupting %@ (%lu) [QoS: %d Cost: %0.3f]", buf, 0x26u);
            }

            v45 = [v32 task];
            [v45 interrupt];

            v46 = [v32 taskGroup];
            dispatch_group_wait(v46, 0xFFFFFFFFFFFFFFFFLL);

            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v30))
            {
              v47 = [v32 task];
              v48 = objc_opt_class();
              v49 = NSStringFromClass(v48);
              v50 = [v32 taskID];
              v51 = [v32 qos];
              v52 = [v32 task];
              [v52 resourceRequirement];
              *buf = v65;
              *v80 = v49;
              *&v80[8] = 2048;
              *&v80[10] = v50;
              *&v80[18] = 1024;
              *&v80[20] = v51;
              v81 = 2048;
              v82 = v53;
              v30 = type;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Scheduler] Reschedule interrupted task %@ (%lu) [QoS: %d Cost: %0.3f]", buf, 0x26u);
            }

            pendingTasks = self->_pendingTasks;
            v55 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v32 qos]);
            v56 = [(NSMutableDictionary *)pendingTasks objectForKeyedSubscript:v55];
            [v56 addObject:v32];

            v33 = [v32 task];
            [v33 resetInterruption];
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v30))
            {
              v57 = [v32 task];
              v58 = objc_opt_class();
              v59 = NSStringFromClass(v58);
              v60 = [v32 taskID];
              v61 = [v32 qos];
              v62 = [v32 task];
              [v62 resourceRequirement];
              *buf = v65;
              *v80 = v59;
              *&v80[8] = 2048;
              *&v80[10] = v60;
              *&v80[18] = 1024;
              *&v80[20] = v61;
              v81 = 2048;
              v82 = v63;
              v30 = type;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Scheduler] Cancelling %@ (%lu) [QoS: %d Cost: %0.3f]", buf, 0x26u);
            }

            v64 = [v32 task];
            [v64 cancel];

            v33 = [v32 taskGroup];
            dispatch_group_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
          }
        }
      }

      v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (!v27)
      {
LABEL_43:

        break;
      }
    }
  }
}

- (void)_schedule
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v3 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[Scheduler] Evaluating scheduling", buf, 2u);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [objc_opt_class() qosArray];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      v7 = 0;
      while (2)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        while (1)
        {
          v9 = [(NSMutableDictionary *)self->_pendingTasks objectForKeyedSubscript:v8];
          v10 = [v9 count] == 0;

          if (v10)
          {
            break;
          }

          v11 = [(NSMutableDictionary *)self->_pendingTasks objectForKeyedSubscript:v8];
          v12 = [v11 objectAtIndexedSubscript:0];
          v13 = [v12 task];
          [v13 resourceRequirement];
          v15 = v14 > self->_resourceBudget;

          if (v15)
          {
            if ([v8 intValue] >= 0x19)
            {
              v18 = [(NSMutableDictionary *)self->_pendingTasks objectForKeyedSubscript:v8];
              v19 = [v18 objectAtIndexedSubscript:0];
              v20 = [v19 task];
              [v20 resourceRequirement];
              [(VCPMADTaskScheduler *)self _tryFreeingResourcesForQOS:v8 resourceRequirement:?];
            }

            goto LABEL_18;
          }

          v16 = [(NSMutableDictionary *)self->_pendingTasks objectForKeyedSubscript:v8];
          v17 = [v16 objectAtIndexedSubscript:0];
          [(VCPMADTaskScheduler *)self _runTask:v17];
        }

        if (++v7 != v5)
        {
          continue;
        }

        break;
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

LABEL_18:
}

- (void)_runTask:(id)a3
{
  v4 = a3;
  v5 = +[VCPWatchdog sharedWatchdog];
  v6 = [v4 task];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [NSString stringWithFormat:@"Task: %@", v8];
  [v5 petWithMessage:v9];

  if (MediaAnalysisLogLevel() >= 5)
  {
    v10 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      v11 = [v4 task];
      v12 = objc_opt_class();
      *buf = 138412802;
      v52 = v12;
      v53 = 2048;
      v54 = [v4 taskID];
      v55 = 1024;
      v56 = [v4 qos];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "Running task %@ (%lu) [QoS: %d]", buf, 0x1Cu);
    }
  }

  v13 = +[MADStateHandler sharedStateHandler];
  v14 = [v4 task];
  [v13 addBreadcrumb:{@"Running task %@ with qos %u", objc_opt_class(), objc_msgSend(v4, "qos")}];

  if (![(NSMutableArray *)self->_runningTasks count])
  {
    v15 = objc_alloc_init(MADScopedWatchdog);
    scopedWatchdog = self->_scopedWatchdog;
    self->_scopedWatchdog = v15;

    v17 = +[VCPCPUMonitor sharedCPUMonitor];
    self->_cpuMonitorID = [v17 disableWithTimeoutSeconds:86400];
  }

  v18 = [v4 task];
  if (objc_opt_respondsToSelector())
  {
    v19 = [v4 task];
    v20 = [v19 cachesResources];

    if (v20)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v21 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v21))
    {
      v22 = [v4 task];
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [v4 taskID];
      *buf = 138412546;
      v52 = v24;
      v53 = 2048;
      v54 = v25;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[Scheduler] %@ (%lu) does not use resource cache; purging if necessary", buf, 0x16u);
    }
  }

  v26 = +[VCPMADResourceManager sharedManager];
  v27 = [v4 task];
  [v27 resourceRequirement];
  [v26 reserveBudgetNormalized:v28];

LABEL_14:
  pendingTasks = self->_pendingTasks;
  v30 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 qos]);
  v31 = [(NSMutableDictionary *)pendingTasks objectForKeyedSubscript:v30];
  [v31 removeObject:v4];

  [(NSMutableArray *)self->_runningTasks addObject:v4];
  if (([v4 background] & 1) == 0)
  {
    v32 = [v4 task];
    [v32 resourceRequirement];
    self->_resourceBudget = self->_resourceBudget - v33;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v34 = VCPPersistentLogInstance();
    v35 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(v34, v35))
    {
      v36 = [v4 task];
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = [v4 taskID];
      v40 = [v4 qos];
      v41 = [v4 task];
      [v41 resourceRequirement];
      resourceBudget = self->_resourceBudget;
      *buf = 138413314;
      v52 = v38;
      v53 = 2048;
      v54 = v39;
      v55 = 1024;
      v56 = v40;
      v57 = 2048;
      v58 = v43;
      v59 = 2048;
      v60 = resourceBudget;
      _os_log_impl(&_mh_execute_header, v34, v35, "[Scheduler] Running %@ (%lu) [QoS: %d Cost: %0.3f]; remaining resource: %.2f", buf, 0x30u);
    }
  }

  v44 = [v4 taskGroup];
  dispatch_group_enter(v44);

  runningGroup = self->_runningGroup;
  v46 = dispatch_get_global_queue([v4 qos], 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C8D0;
  block[3] = &unk_100282BC8;
  v49 = v4;
  v50 = self;
  v47 = v4;
  dispatch_group_async(runningGroup, v46, block);
}

- (void)cancelBackgroundTasks
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_runningTasks;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 background])
        {
          v7 = [v6 task];
          [v7 cancel];

          v8 = [v6 taskGroup];
          dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

- (void)_checkBackgroundTasksForTask:(id)a3
{
  v35 = a3;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = self->_runningTasks;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v4)
  {
    v36 = *v38;
    *&v5 = 138412546;
    v33 = v5;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v38 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        if ([v7 background])
        {
          if ((objc_opt_respondsToSelector() & 1) != 0 && ![v35 interruptBackgroundTasks])
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
              v28 = objc_opt_class();
              v29 = NSStringFromClass(v28);
              v30 = [v7 task];
              v31 = objc_opt_class();
              v32 = NSStringFromClass(v31);
              *buf = v33;
              v42 = v29;
              v43 = 2112;
              v44 = v32;
              _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[Scheduler] Foreground task (%@) running concurrently with DAS activity (%@)", buf, 0x16u);
            }
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              v25 = [v7 task];
              v26 = objc_opt_class();
              v27 = NSStringFromClass(v26);
              *buf = v33;
              v42 = v24;
              v43 = 2112;
              v44 = v27;
              _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[Scheduler] Foreground task (%@) interrupting DAS activity (%@)", buf, 0x16u);
            }

            v8 = [v7 task];
            [v8 cancel];

            v9 = VCPSignPostPersistentLog();
            v10 = VCPSignPostPersistentLog();
            v11 = os_signpost_id_generate(v10);

            if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
            {
              v12 = mach_continuous_time();
              v13 = objc_opt_class();
              v14 = NSStringFromClass(v13);
              v15 = v14;
              v16 = [v14 UTF8String];
              v17 = [v7 task];
              v18 = objc_opt_class();
              v19 = NSStringFromClass(v18);
              v20 = v19;
              v21 = [v19 UTF8String];
              *buf = 134349570;
              v42 = v12;
              v43 = 2082;
              v44 = v16;
              v45 = 2082;
              v46 = v21;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, v11, "InterruptRunningBGST", "%{public, signpost.description:begin_time}llu Foreground=%{public, signpost.telemetry:string1}s Background=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", buf, 0x20u);
            }

            v22 = [v7 taskGroup];
            dispatch_group_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
          }
        }
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v4);
  }
}

- (BOOL)validateTask:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    if (MediaAnalysisLogLevel() < 4)
    {
      goto LABEL_11;
    }

    v12 = VCPLogToOSLogType[4];
    if (!os_log_type_enabled(&_os_log_default, v12))
    {
      goto LABEL_11;
    }

    LOWORD(v15) = 0;
    v9 = "[Scheduler] Invalid task (nil); dropping task request";
    v10 = v12;
    v11 = 2;
    goto LABEL_10;
  }

  [v3 resourceRequirement];
  if (v5 >= 0.0)
  {
    [v4 resourceRequirement];
    if (v6 <= 1.0)
    {
      v13 = 1;
      goto LABEL_12;
    }
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v7 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      [v4 resourceRequirement];
      v15 = 134217984;
      v16 = v8;
      v9 = "[Scheduler] Invalid resource requirement (%0.1f); dropping task request";
      v10 = v7;
      v11 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, v9, &v15, v11);
    }
  }

LABEL_11:
  v13 = 0;
LABEL_12:

  return v13;
}

- (unsigned)validateQoS:(unsigned int)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [objc_opt_class() qosArray];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) unsignedIntValue];
        v9 = v8;
        if (v8 <= a3)
        {
          if (v8 < a3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            sub_10001F110();
          }

          return v9;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_10001F190();
  }

  return 9;
}

- (BOOL)taskIsAuxiliaryCompatible:(id)a3 runningTask:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 auxiliaryBackgroundEligible];
  }

  else
  {
    v7 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 auxiliaryBackgroundEligible];
  }

  else
  {
    v8 = 0;
  }

  return v7 ^ v8;
}

- (unint64_t)addForegroundTask:(id)a3 withQoS:(unsigned int)a4 completionHandler:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  if ([(VCPMADTaskScheduler *)self validateTask:v8])
  {
    v10 = [(VCPMADTaskScheduler *)self validateQoS:v6];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    managementQueue = self->_managementQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001D6D4;
    block[3] = &unk_1002830D8;
    v17 = &v19;
    block[4] = self;
    v15 = v8;
    v18 = v10;
    v16 = v9;
    dispatch_sync(managementQueue, block);
    v12 = v20[3];

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)addBackgroundTask:(id)a3 withQoS:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  if ([(VCPMADTaskScheduler *)self validateTask:v6])
  {
    v7 = [(VCPMADTaskScheduler *)self validateQoS:v4];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    managementQueue = self->_managementQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001D9F0;
    v11[3] = &unk_100283100;
    v11[4] = self;
    v12 = v6;
    v13 = &v15;
    v14 = v7;
    dispatch_sync(managementQueue, v11);
    v9 = v16[3];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)cancelTaskWithID:(unint64_t)a3
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[Scheduler] Cancelling task %lu", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x3032000000;
  v21 = sub_10001E408;
  v22 = sub_10001E418;
  v23 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10001E408;
  v17 = sub_10001E418;
  v18 = 0;
  managementQueue = self->_managementQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001E420;
  v12[3] = &unk_100283128;
  v12[4] = self;
  v12[5] = &buf;
  v12[6] = &v13;
  v12[7] = a3;
  dispatch_sync(managementQueue, v12);
  v7 = *(*(&buf + 1) + 40);
  if (v7)
  {
    v8 = [v7 taskGroup];
    dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
LABEL_6:

    goto LABEL_7;
  }

  v9 = v14[5];
  if (v9)
  {
    v10 = [v9 completionHandler];
    v11 = v10 == 0;

    if (!v11)
    {
      v8 = [v14[5] completionHandler];
      (*(v8 + 16))(v8, [v14[5] taskID], 4294967168);
      goto LABEL_6;
    }
  }

LABEL_7:
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&buf, 8);
}

- (void)cancelAllTasks
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[Scheduler] Cancelling all tasks", buf, 2u);
    }
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = sub_10001E408;
  v23 = sub_10001E418;
  v24 = +[NSMutableArray array];
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EB68;
  block[3] = &unk_100283150;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(managementQueue, block);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(v20 + 5);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v25 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 completionHandler];
        v12 = v11 == 0;

        if (!v12)
        {
          v13 = [v9 completionHandler];
          (v13)[2](v13, [v9 taskID], 4294967168);
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v25 count:16];
    }

    while (v6);
  }

  dispatch_group_wait(self->_runningGroup, 0xFFFFFFFFFFFFFFFFLL);
  _Block_object_dispose(buf, 8);
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
  v5[2] = sub_10001EF08;
  v5[3] = &unk_100283178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(managementQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end