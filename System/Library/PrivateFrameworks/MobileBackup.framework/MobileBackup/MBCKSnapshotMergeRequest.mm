@interface MBCKSnapshotMergeRequest
+ (id)snapshotMergeRequestForDevice:(id)device;
- (BOOL)addSnapshotToMerge:(id)merge;
- (MBCKDevice)device;
- (MBCKSnapshotMergeRequest)initWithDevice:(id)device;
- (id)recordRepresentation;
@end

@implementation MBCKSnapshotMergeRequest

+ (id)snapshotMergeRequestForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[MBCKSnapshotMergeRequest alloc] initWithDevice:deviceCopy];

  return v4;
}

- (MBCKSnapshotMergeRequest)initWithDevice:(id)device
{
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = MBCKSnapshotMergeRequest;
  v5 = [(MBCKModel *)&v12 initWithRecord:0 cache:0];
  v6 = v5;
  if (v5)
  {
    [(MBCKSnapshotMergeRequest *)v5 setDevice:deviceCopy];
    v7 = MBRandomUUID();
    uuid = v6->_uuid;
    v6->_uuid = v7;

    v9 = objc_alloc_init(NSMutableArray);
    snapshotsToMerge = v6->_snapshotsToMerge;
    v6->_snapshotsToMerge = v9;
  }

  return v6;
}

- (BOOL)addSnapshotToMerge:(id)merge
{
  snapshotsToMerge = self->_snapshotsToMerge;
  mergeCopy = merge;
  v5 = [CKReference alloc];
  recordID = [mergeCopy recordID];

  v7 = [v5 initWithRecordID:recordID action:0];
  [(NSMutableArray *)snapshotsToMerge addObject:v7];

  return 1;
}

- (id)recordRepresentation
{
  v10.receiver = self;
  v10.super_class = MBCKSnapshotMergeRequest;
  recordRepresentation = [(MBCKModel *)&v10 recordRepresentation];
  v4 = [recordRepresentation objectForKeyedSubscript:@"device"];

  if (!v4)
  {
    v5 = [CKReference alloc];
    device = [(MBCKSnapshotMergeRequest *)self device];
    recordID = [device recordID];
    v8 = [v5 initWithRecordID:recordID action:0];
    [recordRepresentation setObject:v8 forKeyedSubscript:@"device"];
  }

  [recordRepresentation setObject:self->_snapshotsToMerge forKeyedSubscript:@"snapshotsToMerge"];

  return recordRepresentation;
}

- (MBCKDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end