@interface MADBGSTThroughputMetric
+ (id)metricForTask:(unint64_t)task subCategory:(id)category keys:(id)keys BGSystemTask:(id)systemTask;
- (BOOL)reportThroughputWithItemCount:(unint64_t)count;
- (BOOL)updateWithSessionLog:(id)log;
- (MADBGSTThroughputMetric)initWithTask:(unint64_t)task subCategory:(id)category keys:(id)keys BGSystemTask:(id)systemTask;
- (void)dealloc;
- (void)flush;
@end

@implementation MADBGSTThroughputMetric

- (MADBGSTThroughputMetric)initWithTask:(unint64_t)task subCategory:(id)category keys:(id)keys BGSystemTask:(id)systemTask
{
  categoryCopy = category;
  keysCopy = keys;
  systemTaskCopy = systemTask;
  v25.receiver = self;
  v25.super_class = MADBGSTThroughputMetric;
  v14 = [(MADBGSTThroughputMetric *)&v25 init];
  v15 = v14;
  if (v14)
  {
    v14->_taskID = task;
    objc_storeStrong(&v14->_subcategory, category);
    v16 = VCPTaskIDDescription();
    sessionLogKey = v15->_sessionLogKey;
    v15->_sessionLogKey = v16;

    objc_storeStrong(&v15->_systemTask, systemTask);
    v18 = MADTaskIdentifierForBackgroundTask(task);
    categoryCopy = [NSString stringWithFormat:@"%@.%@", v18, categoryCopy];

    v20 = throughputMetricForTask(categoryCopy);
    metric = v15->_metric;
    v15->_metric = v20;

    v22 = +[NSDate now];
    startTime = v15->_startTime;
    v15->_startTime = v22;

    objc_storeStrong(&v15->_keys, keys);
  }

  return v15;
}

+ (id)metricForTask:(unint64_t)task subCategory:(id)category keys:(id)keys BGSystemTask:(id)systemTask
{
  systemTaskCopy = systemTask;
  keysCopy = keys;
  categoryCopy = category;
  v13 = [[self alloc] initWithTask:task subCategory:categoryCopy keys:keysCopy BGSystemTask:systemTaskCopy];

  return v13;
}

- (BOOL)updateWithSessionLog:(id)log
{
  logCopy = log;
  v5 = [logCopy objectForKeyedSubscript:self->_sessionLogKey];

  if (v5)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_keys;
    v7 = [(NSSet *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v21;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [logCopy objectForKeyedSubscript:{self->_sessionLogKey, v20}];
          v14 = [v13 objectForKeyedSubscript:v12];
          v9 += [v14 unsignedIntegerValue];
        }

        v8 = [(NSSet *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v18 = [(MADBGSTThroughputMetric *)self reportThroughputWithItemCount:v9];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v15 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        subcategory = self->_subcategory;
        sessionLogKey = self->_sessionLogKey;
        *buf = 138412546;
        v26 = sessionLogKey;
        v27 = 2112;
        v28 = subcategory;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MADBGSTThroughputMetric] No key %@ in current session log. No throughput for metric %@", buf, 0x16u);
      }
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)reportThroughputWithItemCount:(unint64_t)count
{
  if (!count)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v14 = VCPLogToOSLogType[7];
      v13 = os_log_type_enabled(&_os_log_default, v14);
      if (!v13)
      {
        return v13;
      }

      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[MADBGSTThroughputMetric] Total count for task equal to 0. Skipping report", buf, 2u);
    }

LABEL_16:
    LOBYTE(v13) = 0;
    return v13;
  }

  if (self->_isRegistered)
  {
    goto LABEL_5;
  }

  systemTask = self->_systemTask;
  metric = self->_metric;
  startTime = self->_startTime;
  v18 = 0;
  v8 = [(BGSystemTask *)systemTask registerThroughputTrackingFor:metric withStartTime:startTime error:&v18];
  v9 = v18;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v15 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        v16 = self->_metric;
        *buf = 138412290;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MADBGSTThroughputMetric] Unable to register throughput reporting for %@", buf, 0xCu);
      }
    }

    goto LABEL_16;
  }

  self->_isRegistered = 1;

LABEL_5:
  if (MediaAnalysisLogLevel() >= 6)
  {
    v11 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      v12 = count - LODWORD(self->_count);
      *buf = 67109120;
      LODWORD(v20) = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[MADBGSTThroughputMetric] Adding count %d", buf, 8u);
    }
  }

  [(BGSystemTaskThroughputMetrics *)self->_metric addItemCount:count - self->_count];
  self->_count = count;
  LOBYTE(v13) = 1;
  return v13;
}

- (void)flush
{
  if (self->_systemTask && self->_isRegistered)
  {
    v3 = +[NSDate now];
    systemTask = self->_systemTask;
    metric = self->_metric;
    v16 = 0;
    v6 = [(BGSystemTask *)systemTask deregisterThroughputTrackingFor:metric withEndTime:v3 error:&v16];
    v7 = v16;
    v8 = MediaAnalysisLogLevel();
    if (v6)
    {
      if (v8 < 6)
      {
        goto LABEL_11;
      }

      v9 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v9))
      {
        goto LABEL_11;
      }

      sessionLogKey = self->_sessionLogKey;
      *buf = 138412290;
      v18 = sessionLogKey;
      v11 = "[MADBGSTThroughputMetric] Successfully reported throughput for task %@";
      v12 = v9;
      v13 = 12;
    }

    else
    {
      if (v8 < 4)
      {
        goto LABEL_11;
      }

      v14 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v14))
      {
        goto LABEL_11;
      }

      v15 = self->_sessionLogKey;
      *buf = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v7;
      v11 = "[MADBGSTThroughputMetric] Unable to report throughput for %@, %@";
      v12 = v14;
      v13 = 22;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v12, v11, buf, v13);
LABEL_11:
  }
}

- (void)dealloc
{
  [(MADBGSTThroughputMetric *)self flush];
  v3.receiver = self;
  v3.super_class = MADBGSTThroughputMetric;
  [(MADBGSTThroughputMetric *)&v3 dealloc];
}

@end