@interface HDCloudSyncDeleteOrphanedRecordsOperation
- (HDCloudSyncDeleteOrphanedRecordsOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (void)main;
@end

@implementation HDCloudSyncDeleteOrphanedRecordsOperation

- (void)main
{
  v2 = self;
  HDCloudSyncDeleteOrphanedRecordsOperation.main()();
}

- (HDCloudSyncDeleteOrphanedRecordsOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5.receiver = self;
  v5.super_class = HDCloudSyncDeleteOrphanedRecordsOperation;
  return [(HDCloudSyncOperation *)&v5 initWithConfiguration:a3 cloudState:a4];
}

@end