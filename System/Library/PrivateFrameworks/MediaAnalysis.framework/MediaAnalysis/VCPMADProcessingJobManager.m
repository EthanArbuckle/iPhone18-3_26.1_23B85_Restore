@interface VCPMADProcessingJobManager
+ (id)sharedManager;
- (VCPMADProcessingJobManager)init;
- (id)getJobScheduler;
- (void)registerQueueGroupWithName:(id)a3 andNumberOfQueues:(unint64_t)a4;
@end

@implementation VCPMADProcessingJobManager

- (VCPMADProcessingJobManager)init
{
  v8.receiver = self;
  v8.super_class = VCPMADProcessingJobManager;
  v2 = [(VCPMADProcessingJobManager *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    queueNameToQueueGroup = v2->_queueNameToQueueGroup;
    v2->_queueNameToQueueGroup = v3;

    v5 = dispatch_semaphore_create(8);
    inProcessAssetBudget = v2->_inProcessAssetBudget;
    v2->_inProcessAssetBudget = v5;
  }

  return v2;
}

+ (id)sharedManager
{
  if (qword_1002B8438 != -1)
  {
    sub_10012F858();
  }

  v3 = qword_1002B8440;

  return v3;
}

- (void)registerQueueGroupWithName:(id)a3 andNumberOfQueues:(unint64_t)a4
{
  v6 = a3;
  if (a4 - 5 > 0xFFFFFFFFFFFFFFFBLL)
  {
    v8 = a4;
  }

  else
  {
    if (a4 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = a4;
    }

    if (v7 >= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = v7;
    }

    if (MediaAnalysisLogLevel() >= 4)
    {
      v9 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 134218498;
        v25 = a4;
        v26 = 2112;
        v27 = v6;
        v28 = 2048;
        v29 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "Invalid number of queues %lu for QueueGroup %@, clipping to %lu", buf, 0x20u);
      }
    }
  }

  v10 = [(NSMutableDictionary *)self->_queueNameToQueueGroup objectForKeyedSubscript:v6];

  if (v10)
  {
    v11 = [(NSMutableDictionary *)self->_queueNameToQueueGroup objectForKeyedSubscript:v6];
    v12 = [v11 queues];
    v13 = [v12 count];

    if (v8 != v13 && MediaAnalysisLogLevel() >= 4)
    {
      v14 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        *buf = 138412802;
        v25 = v6;
        v26 = 2048;
        v27 = v13;
        v28 = 2048;
        v29 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "QueueGroup %@ has been registered with %lu queues, not allowed to change to %lu queues as requested", buf, 0x20u);
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v15 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 138412546;
        v25 = v6;
        v26 = 2048;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "Registering QueueGroup %@ with %lu queues", buf, 0x16u);
      }
    }

    v23 = objc_alloc_init(QueueGroup);
    v16 = +[NSMutableArray array];
    v17 = 0;
    do
    {
      v18 = objc_autoreleasePoolPush();
      v19 = [NSString stringWithFormat:@"com.apple.mediaanalysis.%@_%lu", v6, v17];
      v20 = dispatch_queue_create([v19 UTF8String], 0);
      v21 = qos_class_self();
      v22 = dispatch_get_global_queue(v21, 0);
      dispatch_set_target_queue(v20, v22);

      [v16 addObject:v20];
      objc_autoreleasePoolPop(v18);
      ++v17;
    }

    while (v8 != v17);
    [(QueueGroup *)v23 setQueues:v16];
    [(NSMutableDictionary *)self->_queueNameToQueueGroup setObject:v23 forKeyedSubscript:v6];
  }
}

- (id)getJobScheduler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10012F778;
  v4[3] = &unk_100286F58;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

@end