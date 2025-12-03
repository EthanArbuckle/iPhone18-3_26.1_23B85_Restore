@interface MADBGSTAtomicThroughputMetric
+ (id)metricForTask:(unint64_t)task subCategory:(id)category startsKey:(id)key durationKey:(id)durationKey BGSystemTask:(id)systemTask;
- (BOOL)updateWithSessionLog:(id)log;
- (MADBGSTAtomicThroughputMetric)initWithTask:(unint64_t)task subCategory:(id)category startsKey:(id)key durationKey:(id)durationKey BGSystemTask:(id)systemTask;
@end

@implementation MADBGSTAtomicThroughputMetric

- (MADBGSTAtomicThroughputMetric)initWithTask:(unint64_t)task subCategory:(id)category startsKey:(id)key durationKey:(id)durationKey BGSystemTask:(id)systemTask
{
  categoryCopy = category;
  systemTaskCopy = systemTask;
  v18.receiver = self;
  v18.super_class = MADBGSTAtomicThroughputMetric;
  v12 = [(MADBGSTThroughputMetric *)&v18 initWithTask:task subCategory:categoryCopy keys:0 BGSystemTask:systemTaskCopy];
  v13 = v12;
  if (v12)
  {
    [(MADBGSTThroughputMetric *)v12 setTaskID:task];
    [(MADBGSTThroughputMetric *)v13 setSystemTask:systemTaskCopy];
    v14 = MADTaskIdentifierForBackgroundTask(task);
    categoryCopy = [NSString stringWithFormat:@"%@.%@", v14, categoryCopy];

    v16 = throughputMetricForTask(categoryCopy);
    [(MADBGSTThroughputMetric *)v13 setMetric:v16];
  }

  return v13;
}

+ (id)metricForTask:(unint64_t)task subCategory:(id)category startsKey:(id)key durationKey:(id)durationKey BGSystemTask:(id)systemTask
{
  systemTaskCopy = systemTask;
  durationKeyCopy = durationKey;
  keyCopy = key;
  categoryCopy = category;
  v16 = [[self alloc] initWithTask:task subCategory:categoryCopy startsKey:keyCopy durationKey:durationKeyCopy BGSystemTask:systemTaskCopy];

  return v16;
}

- (BOOL)updateWithSessionLog:(id)log
{
  logCopy = log;
  systemTask = [(MADBGSTThroughputMetric *)self systemTask];

  if (!systemTask)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v22 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v22))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[MADBGSTThroughputMetric] system task is null, skipping", buf, 2u);
      }
    }

    goto LABEL_21;
  }

  sessionLogKey = [(MADBGSTThroughputMetric *)self sessionLogKey];
  v7 = [logCopy objectForKeyedSubscript:sessionLogKey];

  if (!v7)
  {
    if (MediaAnalysisLogLevel() < 7)
    {
      goto LABEL_21;
    }

    v23 = VCPLogToOSLogType[7];
    if (!os_log_type_enabled(&_os_log_default, v23))
    {
      goto LABEL_21;
    }

    sessionLogKey2 = [(MADBGSTThroughputMetric *)self sessionLogKey];
    subcategory = [(MADBGSTThroughputMetric *)self subcategory];
    *buf = 138412546;
    v33 = sessionLogKey2;
    v34 = 2112;
    v35 = subcategory;
    v25 = "[MADBGSTThroughputMetric] No key %@ in current session log. No throughput for metric %@";
    v26 = v23;
    v27 = 22;
    goto LABEL_19;
  }

  sessionLogKey3 = [(MADBGSTThroughputMetric *)self sessionLogKey];
  v9 = [logCopy objectForKeyedSubscript:sessionLogKey3];
  v10 = [v9 objectForKeyedSubscript:self->_startsKey];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  if (![(MADBGSTThroughputMetric *)self isRegistered]&& unsignedIntegerValue)
  {
    systemTask2 = [(MADBGSTThroughputMetric *)self systemTask];
    metric = [(MADBGSTThroughputMetric *)self metric];
    v14 = +[NSDate now];
    v31 = 0;
    v15 = [systemTask2 registerThroughputTrackingFor:metric withStartTime:v14 error:&v31];
    sessionLogKey2 = v31;

    if (v15)
    {
      [(MADBGSTThroughputMetric *)self setIsRegistered:1];

      goto LABEL_7;
    }

    if (MediaAnalysisLogLevel() < 3 || (v28 = VCPLogToOSLogType[3], !os_log_type_enabled(&_os_log_default, v28)))
    {
LABEL_20:

      goto LABEL_21;
    }

    subcategory = [(MADBGSTThroughputMetric *)self metric];
    *buf = 138412290;
    v33 = subcategory;
    v25 = "[MADBGSTThroughputMetric] Unable to register throughput reporting for %@";
    v26 = v28;
    v27 = 12;
LABEL_19:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v26, v25, buf, v27);

    goto LABEL_20;
  }

LABEL_7:
  if (![(MADBGSTThroughputMetric *)self isRegistered])
  {
LABEL_21:
    v29 = 0;
    goto LABEL_22;
  }

  sessionLogKey4 = [(MADBGSTThroughputMetric *)self sessionLogKey];
  v18 = [logCopy objectForKeyedSubscript:sessionLogKey4];
  v19 = [v18 objectForKeyedSubscript:self->_durationKey];

  metric2 = [(MADBGSTThroughputMetric *)self metric];
  v21 = metric2;
  if (v19)
  {
    [metric2 addItemCount:{-[MADBGSTThroughputMetric count](self, "count") - unsignedIntegerValue}];

    [(MADBGSTThroughputMetric *)self setCount:unsignedIntegerValue];
    [(MADBGSTThroughputMetric *)self flush];
  }

  else
  {
    [metric2 addItemCount:0];
  }

  v29 = 1;
LABEL_22:

  return v29;
}

@end