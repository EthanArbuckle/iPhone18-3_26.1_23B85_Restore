@interface VCPProgressReporter
+ (id)reporterWithIntervalSeconds:(unint64_t)a3 andTotalJobCount:(int64_t)a4 andBlock:(id)a5;
- (VCPProgressReporter)initWithIntervalSeconds:(unint64_t)a3 andTotalJobCount:(int64_t)a4 andBlock:(id)a5;
- (void)_reportProgressWithBlock:(id)a3;
- (void)dealloc;
@end

@implementation VCPProgressReporter

- (VCPProgressReporter)initWithIntervalSeconds:(unint64_t)a3 andTotalJobCount:(int64_t)a4 andBlock:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (!a4)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_16;
    }

    v19 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v19))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v20 = "VCPProgressReporter: totalJobCount must be non-zero";
    goto LABEL_15;
  }

  if (!v8)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_16;
    }

    v19 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v19))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v20 = "VCPProgressReporter: report block must be non-nil";
LABEL_15:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v19, v20, buf, 2u);
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v26.receiver = self;
  v26.super_class = VCPProgressReporter;
  v10 = [(VCPProgressReporter *)&v26 init];
  v11 = v10;
  if (v10)
  {
    v10->_totalJobCount = a4;
    atomic_store(0, &v10->_processedJobCount);
    v10->_processedJobCountOnLastUpdate = -1;
    v12 = dispatch_queue_create("com.apple.mediaanalysisd.progressreport", 0);
    queue = v11->_queue;
    v11->_queue = v12;

    objc_initWeak(&location, v11);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10001F578;
    v22[3] = &unk_1002831A0;
    objc_copyWeak(&v24, &location);
    v23 = v9;
    v14 = [VCPTimer timerWithIntervalSeconds:a3 isOneShot:0 andBlock:v22];
    timer = v11->_timer;
    v11->_timer = v14;

    if (MediaAnalysisLogLevel() >= 7)
    {
      v16 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        totalJobCount = v11->_totalJobCount;
        *buf = 134217984;
        v28 = totalJobCount;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "Initialized VCPProgressReporter %lu", buf, 0xCu);
      }
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  self = v11;
  v18 = self;
LABEL_17:

  return v18;
}

+ (id)reporterWithIntervalSeconds:(unint64_t)a3 andTotalJobCount:(int64_t)a4 andBlock:(id)a5
{
  v7 = a5;
  v8 = [objc_alloc(objc_opt_class()) initWithIntervalSeconds:a3 andTotalJobCount:a4 andBlock:v7];

  return v8;
}

- (void)dealloc
{
  [(VCPTimer *)self->_timer destroy];
  v3.receiver = self;
  v3.super_class = VCPProgressReporter;
  [(VCPProgressReporter *)&v3 dealloc];
}

- (void)_reportProgressWithBlock:(id)a3
{
  v4 = a3;
  v5 = atomic_load(&self->_processedJobCount);
  if (self->_processedJobCountOnLastUpdate != v5)
  {
    self->_processedJobCountOnLastUpdate = v5;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v6 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      processedJobCountOnLastUpdate = self->_processedJobCountOnLastUpdate;
      totalJobCount = self->_totalJobCount;
      *buf = 134218240;
      v14 = processedJobCountOnLastUpdate;
      v15 = 2048;
      v16 = totalJobCount;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "VCPProgressReporter report: %lu / %lu", buf, 0x16u);
    }
  }

  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001F86C;
  v11[3] = &unk_1002831C8;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_async(queue, v11);
}

@end