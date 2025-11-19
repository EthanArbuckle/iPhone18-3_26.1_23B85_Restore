@interface MBCKSnapshotMergeRequest
+ (id)snapshotMergeRequestForDevice:(id)a3;
- (BOOL)addSnapshotToMerge:(id)a3;
- (MBCKDevice)device;
- (MBCKSnapshotMergeRequest)initWithDevice:(id)a3;
- (id)recordRepresentation;
@end

@implementation MBCKSnapshotMergeRequest

+ (id)snapshotMergeRequestForDevice:(id)a3
{
  v3 = a3;
  v4 = [[MBCKSnapshotMergeRequest alloc] initWithDevice:v3];

  return v4;
}

- (MBCKSnapshotMergeRequest)initWithDevice:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MBCKSnapshotMergeRequest;
  v5 = [(MBCKModel *)&v12 initWithRecord:0 cache:0];
  v6 = v5;
  if (v5)
  {
    [(MBCKSnapshotMergeRequest *)v5 setDevice:v4];
    v7 = MBRandomUUID();
    uuid = v6->_uuid;
    v6->_uuid = v7;

    v9 = objc_alloc_init(NSMutableArray);
    snapshotsToMerge = v6->_snapshotsToMerge;
    v6->_snapshotsToMerge = v9;
  }

  return v6;
}

- (BOOL)addSnapshotToMerge:(id)a3
{
  snapshotsToMerge = self->_snapshotsToMerge;
  v4 = a3;
  v5 = [CKReference alloc];
  v6 = [v4 recordID];

  v7 = [v5 initWithRecordID:v6 action:0];
  [(NSMutableArray *)snapshotsToMerge addObject:v7];

  return 1;
}

- (id)recordRepresentation
{
  v10.receiver = self;
  v10.super_class = MBCKSnapshotMergeRequest;
  v3 = [(MBCKModel *)&v10 recordRepresentation];
  v4 = [v3 objectForKeyedSubscript:@"device"];

  if (!v4)
  {
    v5 = [CKReference alloc];
    v6 = [(MBCKSnapshotMergeRequest *)self device];
    v7 = [v6 recordID];
    v8 = [v5 initWithRecordID:v7 action:0];
    [v3 setObject:v8 forKeyedSubscript:@"device"];
  }

  [v3 setObject:self->_snapshotsToMerge forKeyedSubscript:@"snapshotsToMerge"];

  return v3;
}

- (MBCKDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end