@interface NTKFaceSnapshotCacheRequestOptions
- (NTKFaceSnapshotCacheRequestOptions)initWithPriority:(unint64_t)a3;
- (id)ntk_asDictionaryOptions;
@end

@implementation NTKFaceSnapshotCacheRequestOptions

- (id)ntk_asDictionaryOptions
{
  v3 = +[NTKFaceSnapshotter defaultModernSnapshotOptions];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NTKFaceSnapshotCacheRequestOptions priority](self, "priority")}];
  [v4 setObject:v5 forKey:@"NTKSnapshotPriorityKey"];

  v6 = [v4 copy];

  return v6;
}

- (NTKFaceSnapshotCacheRequestOptions)initWithPriority:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = NTKFaceSnapshotCacheRequestOptions;
  result = [(NTKFaceSnapshotCacheRequestOptions *)&v5 init];
  if (result)
  {
    result->_priority = a3;
  }

  return result;
}

@end