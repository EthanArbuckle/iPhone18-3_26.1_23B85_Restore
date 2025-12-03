@interface DBGSnapshotManager
+ (DBGSnapshotManager)snapshotManagerWithSnapshot:(id)snapshot primaryDataCoordinator:(id)coordinator;
- (DBGSnapshotManager)initWithSnapshot:(id)snapshot primaryDataCoordinator:(id)coordinator;
- (void)cancelAllRequests;
- (void)clearData;
- (void)setPrimaryDataCoordinator:(id)coordinator;
@end

@implementation DBGSnapshotManager

+ (DBGSnapshotManager)snapshotManagerWithSnapshot:(id)snapshot primaryDataCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  snapshotCopy = snapshot;
  v8 = [[self alloc] initWithSnapshot:snapshotCopy primaryDataCoordinator:coordinatorCopy];

  return v8;
}

- (DBGSnapshotManager)initWithSnapshot:(id)snapshot primaryDataCoordinator:(id)coordinator
{
  snapshotCopy = snapshot;
  coordinatorCopy = coordinator;
  v17.receiver = self;
  v17.super_class = DBGSnapshotManager;
  v9 = [(DBGSnapshotManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snapshot, snapshot);
    snapshot = v10->_snapshot;
    if (!snapshot)
    {
      v12 = objc_alloc_init(DBGSnapshot);
      v13 = v10->_snapshot;
      v10->_snapshot = v12;

      snapshot = v10->_snapshot;
    }

    [(DBGSnapshot *)snapshot setSnapshotManager:v10];
    v14 = objc_alloc_init(DebugHierarchyRuntimeInfo);
    runtimeInfo = v10->_runtimeInfo;
    v10->_runtimeInfo = v14;

    objc_storeStrong(&v10->_primaryDataCoordinator, coordinator);
    [(DBGDataCoordinator *)v10->_primaryDataCoordinator setSnapshotManager:v10];
  }

  return v10;
}

- (void)clearData
{
  snapshot = [(DBGSnapshotManager *)self snapshot];
  [snapshot clearData];

  runtimeInfo = [(DBGSnapshotManager *)self runtimeInfo];
  [runtimeInfo clearData];
}

- (void)cancelAllRequests
{
  primaryDataCoordinator = [(DBGSnapshotManager *)self primaryDataCoordinator];
  [primaryDataCoordinator cancelAllRequests];
}

- (void)setPrimaryDataCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  [(DBGDataCoordinator *)coordinatorCopy setSnapshotManager:self];
  primaryDataCoordinator = self->_primaryDataCoordinator;
  self->_primaryDataCoordinator = coordinatorCopy;
}

@end