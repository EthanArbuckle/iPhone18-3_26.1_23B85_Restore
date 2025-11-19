@interface IMDSyncTelemetryReporterInternal
- (BOOL)postMessage:(id)a3 category:(int64_t)a4 error:(id *)a5;
@end

@implementation IMDSyncTelemetryReporterInternal

- (BOOL)postMessage:(id)a3 category:(int64_t)a4 error:(id *)a5
{
  v7 = sub_22BA0FF6C();
  v8 = self;
  SyncTelemetryReporter.postMessage(payload:category:)(v7, a4);

  return 1;
}

@end