@interface VCPMADProcessingJobManager
+ (id)sharedManager;
- (VCPMADProcessingJobManager)init;
- (id)getJobScheduler;
- (void)registerQueueGroupWithName:(id)name andNumberOfQueues:(unint64_t)queues;
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

- (void)registerQueueGroupWithName:(id)name andNumberOfQueues:(unint64_t)queues
{
  nameCopy = name;
  if (queues - 5 > 0xFFFFFFFFFFFFFFFBLL)
  {
    queuesCopy = queues;
  }

  else
  {
    if (queues <= 1)
    {
      queuesCopy2 = 1;
    }

    else
    {
      queuesCopy2 = queues;
    }

    if (queuesCopy2 >= 4)
    {
      queuesCopy = 4;
    }

    else
    {
      queuesCopy = queuesCopy2;
    }

    if (MediaAnalysisLogLevel() >= 4)
    {
      v9 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 134218498;
        queuesCopy3 = queues;
        v26 = 2112;
        v27 = nameCopy;
        v28 = 2048;
        v29 = queuesCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "Invalid number of queues %lu for QueueGroup %@, clipping to %lu", buf, 0x20u);
      }
    }
  }

  v10 = [(NSMutableDictionary *)self->_queueNameToQueueGroup objectForKeyedSubscript:nameCopy];

  if (v10)
  {
    v11 = [(NSMutableDictionary *)self->_queueNameToQueueGroup objectForKeyedSubscript:nameCopy];
    queues = [v11 queues];
    v13 = [queues count];

    if (queuesCopy != v13 && MediaAnalysisLogLevel() >= 4)
    {
      v14 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        *buf = 138412802;
        queuesCopy3 = nameCopy;
        v26 = 2048;
        v27 = v13;
        v28 = 2048;
        v29 = queuesCopy;
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
        queuesCopy3 = nameCopy;
        v26 = 2048;
        v27 = queuesCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "Registering QueueGroup %@ with %lu queues", buf, 0x16u);
      }
    }

    v23 = objc_alloc_init(QueueGroup);
    v16 = +[NSMutableArray array];
    v17 = 0;
    do
    {
      v18 = objc_autoreleasePoolPush();
      v19 = [NSString stringWithFormat:@"com.apple.mediaanalysis.%@_%lu", nameCopy, v17];
      v20 = dispatch_queue_create([v19 UTF8String], 0);
      v21 = qos_class_self();
      v22 = dispatch_get_global_queue(v21, 0);
      dispatch_set_target_queue(v20, v22);

      [v16 addObject:v20];
      objc_autoreleasePoolPop(v18);
      ++v17;
    }

    while (queuesCopy != v17);
    [(QueueGroup *)v23 setQueues:v16];
    [(NSMutableDictionary *)self->_queueNameToQueueGroup setObject:v23 forKeyedSubscript:nameCopy];
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