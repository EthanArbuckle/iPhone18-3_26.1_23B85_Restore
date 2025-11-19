@interface MADBGSTAtomicThroughputMetric
+ (id)metricForTask:(unint64_t)a3 subCategory:(id)a4 startsKey:(id)a5 durationKey:(id)a6 BGSystemTask:(id)a7;
- (BOOL)updateWithSessionLog:(id)a3;
- (MADBGSTAtomicThroughputMetric)initWithTask:(unint64_t)a3 subCategory:(id)a4 startsKey:(id)a5 durationKey:(id)a6 BGSystemTask:(id)a7;
@end

@implementation MADBGSTAtomicThroughputMetric

- (MADBGSTAtomicThroughputMetric)initWithTask:(unint64_t)a3 subCategory:(id)a4 startsKey:(id)a5 durationKey:(id)a6 BGSystemTask:(id)a7
{
  v10 = a4;
  v11 = a7;
  v18.receiver = self;
  v18.super_class = MADBGSTAtomicThroughputMetric;
  v12 = [(MADBGSTThroughputMetric *)&v18 initWithTask:a3 subCategory:v10 keys:0 BGSystemTask:v11];
  v13 = v12;
  if (v12)
  {
    [(MADBGSTThroughputMetric *)v12 setTaskID:a3];
    [(MADBGSTThroughputMetric *)v13 setSystemTask:v11];
    v14 = MADTaskIdentifierForBackgroundTask(a3);
    v15 = [NSString stringWithFormat:@"%@.%@", v14, v10];

    v16 = throughputMetricForTask(v15);
    [(MADBGSTThroughputMetric *)v13 setMetric:v16];
  }

  return v13;
}

+ (id)metricForTask:(unint64_t)a3 subCategory:(id)a4 startsKey:(id)a5 durationKey:(id)a6 BGSystemTask:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [[a1 alloc] initWithTask:a3 subCategory:v15 startsKey:v14 durationKey:v13 BGSystemTask:v12];

  return v16;
}

- (BOOL)updateWithSessionLog:(id)a3
{
  v4 = a3;
  v5 = [(MADBGSTThroughputMetric *)self systemTask];

  if (!v5)
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

  v6 = [(MADBGSTThroughputMetric *)self sessionLogKey];
  v7 = [v4 objectForKeyedSubscript:v6];

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

    v16 = [(MADBGSTThroughputMetric *)self sessionLogKey];
    v24 = [(MADBGSTThroughputMetric *)self subcategory];
    *buf = 138412546;
    v33 = v16;
    v34 = 2112;
    v35 = v24;
    v25 = "[MADBGSTThroughputMetric] No key %@ in current session log. No throughput for metric %@";
    v26 = v23;
    v27 = 22;
    goto LABEL_19;
  }

  v8 = [(MADBGSTThroughputMetric *)self sessionLogKey];
  v9 = [v4 objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:self->_startsKey];
  v11 = [v10 unsignedIntegerValue];

  if (![(MADBGSTThroughputMetric *)self isRegistered]&& v11)
  {
    v12 = [(MADBGSTThroughputMetric *)self systemTask];
    v13 = [(MADBGSTThroughputMetric *)self metric];
    v14 = +[NSDate now];
    v31 = 0;
    v15 = [v12 registerThroughputTrackingFor:v13 withStartTime:v14 error:&v31];
    v16 = v31;

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

    v24 = [(MADBGSTThroughputMetric *)self metric];
    *buf = 138412290;
    v33 = v24;
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

  v17 = [(MADBGSTThroughputMetric *)self sessionLogKey];
  v18 = [v4 objectForKeyedSubscript:v17];
  v19 = [v18 objectForKeyedSubscript:self->_durationKey];

  v20 = [(MADBGSTThroughputMetric *)self metric];
  v21 = v20;
  if (v19)
  {
    [v20 addItemCount:{-[MADBGSTThroughputMetric count](self, "count") - v11}];

    [(MADBGSTThroughputMetric *)self setCount:v11];
    [(MADBGSTThroughputMetric *)self flush];
  }

  else
  {
    [v20 addItemCount:0];
  }

  v29 = 1;
LABEL_22:

  return v29;
}

@end