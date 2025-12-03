@interface HDCloudSyncDeleteOrphanedRecordsOperation
- (HDCloudSyncDeleteOrphanedRecordsOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (void)main;
@end

@implementation HDCloudSyncDeleteOrphanedRecordsOperation

- (void)main
{
  selfCopy = self;
  HDCloudSyncDeleteOrphanedRecordsOperation.main()();
}

- (HDCloudSyncDeleteOrphanedRecordsOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5.receiver = self;
  v5.super_class = HDCloudSyncDeleteOrphanedRecordsOperation;
  return [(HDCloudSyncOperation *)&v5 initWithConfiguration:configuration cloudState:state];
}

@end