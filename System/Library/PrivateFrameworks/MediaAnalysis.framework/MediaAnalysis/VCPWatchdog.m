@interface VCPWatchdog
+ (id)sharedWatchdog;
- (VCPWatchdog)init;
- (void)disable;
- (void)enable;
- (void)pet;
- (void)petWithCrashCallback:(id)a3;
- (void)petWithMessage:(id)a3;
@end

@implementation VCPWatchdog

- (VCPWatchdog)init
{
  v8.receiver = self;
  v8.super_class = VCPWatchdog;
  v2 = [(VCPWatchdog *)&v8 init];
  if (v2)
  {
    if (signal(14, sub_10001F9E0))
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v3 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v3))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Hijacked SIGALRM; this may be a problem...", v7, 2u);
        }
      }
    }

    v4 = dispatch_queue_create("WatchdogLastPetMessage", 0);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

+ (id)sharedWatchdog
{
  if (qword_1002B8148 != -1)
  {
    sub_10001FE1C();
  }

  v3 = qword_1002B8140;

  return v3;
}

- (void)enable
{
  if (alarm(0x78u) && MediaAnalysisLogLevel() >= 4)
  {
    v2 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Watchdog already enabled", v3, 2u);
    }
  }
}

- (void)petWithMessage:(id)a3
{
  v4 = a3;
  alarm(0x78u);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FBF4;
  block[3] = &unk_100283210;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, block);
}

- (void)pet
{
  dispatch_sync(self->_queue, &stru_100283230);

  alarm(0x78u);
}

- (void)petWithCrashCallback:(id)a3
{
  v4 = a3;
  alarm(0x78u);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FD30;
  block[3] = &unk_100283258;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, block);
}

- (void)disable
{
  dispatch_sync(self->_queue, &stru_100283278);
  if (!alarm(0) && MediaAnalysisLogLevel() >= 4)
  {
    v2 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "Watchdog already disabled", v3, 2u);
    }
  }
}

@end