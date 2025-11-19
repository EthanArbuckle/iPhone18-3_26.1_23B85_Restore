@interface DBGSnapshotManager
+ (DBGSnapshotManager)snapshotManagerWithSnapshot:(id)a3 primaryDataCoordinator:(id)a4;
- (DBGSnapshotManager)initWithSnapshot:(id)a3 primaryDataCoordinator:(id)a4;
- (void)cancelAllRequests;
- (void)clearData;
- (void)setPrimaryDataCoordinator:(id)a3;
@end

@implementation DBGSnapshotManager

+ (DBGSnapshotManager)snapshotManagerWithSnapshot:(id)a3 primaryDataCoordinator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithSnapshot:v7 primaryDataCoordinator:v6];

  return v8;
}

- (DBGSnapshotManager)initWithSnapshot:(id)a3 primaryDataCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = DBGSnapshotManager;
  v9 = [(DBGSnapshotManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snapshot, a3);
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

    objc_storeStrong(&v10->_primaryDataCoordinator, a4);
    [(DBGDataCoordinator *)v10->_primaryDataCoordinator setSnapshotManager:v10];
  }

  return v10;
}

- (void)clearData
{
  v3 = [(DBGSnapshotManager *)self snapshot];
  [v3 clearData];

  v4 = [(DBGSnapshotManager *)self runtimeInfo];
  [v4 clearData];
}

- (void)cancelAllRequests
{
  v2 = [(DBGSnapshotManager *)self primaryDataCoordinator];
  [v2 cancelAllRequests];
}

- (void)setPrimaryDataCoordinator:(id)a3
{
  v4 = a3;
  [(DBGDataCoordinator *)v4 setSnapshotManager:self];
  primaryDataCoordinator = self->_primaryDataCoordinator;
  self->_primaryDataCoordinator = v4;
}

@end