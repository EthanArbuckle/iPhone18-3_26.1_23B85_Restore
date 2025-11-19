@interface HFSnapshotInfo
- (HFSnapshotInfo)initWithSnapshot:(id)a3;
@end

@implementation HFSnapshotInfo

- (HFSnapshotInfo)initWithSnapshot:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFSnapshotInfo;
  v6 = [(HFSnapshotInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseSnapshot, a3);
  }

  return v7;
}

@end