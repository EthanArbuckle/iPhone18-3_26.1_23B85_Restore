@interface CacheDeleteSnapshotInfo
- (CacheDeleteSnapshotInfo)initWithName:(id)name uid:(unint64_t)uid;
@end

@implementation CacheDeleteSnapshotInfo

- (CacheDeleteSnapshotInfo)initWithName:(id)name uid:(unint64_t)uid
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = CacheDeleteSnapshotInfo;
  v8 = [(CacheDeleteSnapshotInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_uid = uid;
  }

  return v9;
}

@end