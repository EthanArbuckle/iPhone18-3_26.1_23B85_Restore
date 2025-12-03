@interface SecureBackupAnalyticsReporterRTC
+ (id)rtcAnalyticsReporter;
+ (void)sendMetricWithEvent:(id)event success:(BOOL)success error:(id)error;
@end

@implementation SecureBackupAnalyticsReporterRTC

+ (id)rtcAnalyticsReporter
{
  if (qword_100084B20 != -1)
  {
    sub_10004E56C();
  }

  v3 = qword_100084B18;

  return v3;
}

+ (void)sendMetricWithEvent:(id)event success:(BOOL)success error:(id)error
{
  eventCopy = event;
  errorCopy = error;
  if ([eventCopy permittedToSendMetrics])
  {
    queue = [eventCopy queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100041E90;
    block[3] = &unk_100076168;
    v11 = eventCopy;
    successCopy = success;
    v12 = errorCopy;
    dispatch_sync(queue, block);
  }
}

@end