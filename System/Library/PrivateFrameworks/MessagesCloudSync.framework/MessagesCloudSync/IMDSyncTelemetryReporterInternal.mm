@interface IMDSyncTelemetryReporterInternal
- (BOOL)postMessage:(id)message category:(int64_t)category error:(id *)error;
@end

@implementation IMDSyncTelemetryReporterInternal

- (BOOL)postMessage:(id)message category:(int64_t)category error:(id *)error
{
  v7 = sub_22BA0FF6C();
  selfCopy = self;
  SyncTelemetryReporter.postMessage(payload:category:)(v7, category);

  return 1;
}

@end