@interface HFSnapshotInfo
- (HFSnapshotInfo)initWithSnapshot:(id)snapshot;
@end

@implementation HFSnapshotInfo

- (HFSnapshotInfo)initWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v9.receiver = self;
  v9.super_class = HFSnapshotInfo;
  v6 = [(HFSnapshotInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseSnapshot, snapshot);
  }

  return v7;
}

@end