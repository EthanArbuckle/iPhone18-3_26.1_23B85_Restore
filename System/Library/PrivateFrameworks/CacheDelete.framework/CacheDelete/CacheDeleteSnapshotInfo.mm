@interface CacheDeleteSnapshotInfo
- (CacheDeleteSnapshotInfo)initWithName:(id)a3 uid:(unint64_t)a4;
@end

@implementation CacheDeleteSnapshotInfo

- (CacheDeleteSnapshotInfo)initWithName:(id)a3 uid:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CacheDeleteSnapshotInfo;
  v8 = [(CacheDeleteSnapshotInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_uid = a4;
  }

  return v9;
}

@end