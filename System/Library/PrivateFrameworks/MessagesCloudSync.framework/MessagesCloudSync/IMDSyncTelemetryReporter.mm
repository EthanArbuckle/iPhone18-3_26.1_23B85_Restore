@interface IMDSyncTelemetryReporter
- (IMDSyncTelemetryReporter)init;
@end

@implementation IMDSyncTelemetryReporter

- (IMDSyncTelemetryReporter)init
{
  v6.receiver = self;
  v6.super_class = IMDSyncTelemetryReporter;
  v2 = [(IMDSyncTelemetryReporter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(IMDSyncTelemetryReporterInternal);
    telemetryReporter = v2->_telemetryReporter;
    v2->_telemetryReporter = v3;
  }

  return v2;
}

@end