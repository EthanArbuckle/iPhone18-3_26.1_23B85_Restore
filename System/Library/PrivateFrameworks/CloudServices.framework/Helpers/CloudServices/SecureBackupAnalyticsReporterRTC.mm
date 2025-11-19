@interface SecureBackupAnalyticsReporterRTC
+ (id)rtcAnalyticsReporter;
+ (void)sendMetricWithEvent:(id)a3 success:(BOOL)a4 error:(id)a5;
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

+ (void)sendMetricWithEvent:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 permittedToSendMetrics])
  {
    v9 = [v7 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100041E90;
    block[3] = &unk_100076168;
    v11 = v7;
    v13 = a4;
    v12 = v8;
    dispatch_sync(v9, block);
  }
}

@end