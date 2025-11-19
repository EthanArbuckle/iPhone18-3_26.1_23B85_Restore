@interface MAAutoAssetSetShortTermLock
- (id)initForAssetSetAtomicInstance:(id)a3 withLockedFilename:(id)a4 withLockedFileDescriptor:(int)a5 forFirstLockReason:(id)a6;
- (id)summary;
@end

@implementation MAAutoAssetSetShortTermLock

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MAAutoAssetSetShortTermLock *)self assetSetAtomicInstance];
  v5 = [(MAAutoAssetSetShortTermLock *)self lockedFilename];
  v6 = [(MAAutoAssetSetShortTermLock *)self lockedFileDescriptor];
  v7 = [(MAAutoAssetSetShortTermLock *)self lockCountByReason];
  v8 = [v7 safeSummary];
  v9 = [v3 stringWithFormat:@"assetSetAtomicInstance:%@|lockedFilename:%@|lockedFileDescriptor:%d|lockCountByReason:%@|totalLockCount:%ld", v4, v5, v6, v8, -[MAAutoAssetSetShortTermLock totalLockCount](self, "totalLockCount")];

  return v9;
}

- (id)initForAssetSetAtomicInstance:(id)a3 withLockedFilename:(id)a4 withLockedFileDescriptor:(int)a5 forFirstLockReason:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = MAAutoAssetSetShortTermLock;
  v14 = [(MAAutoAssetSetShortTermLock *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_assetSetAtomicInstance, a3);
    objc_storeStrong(&v15->_lockedFilename, a4);
    v15->_lockedFileDescriptor = a5;
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lockCountByReason = v15->_lockCountByReason;
    v15->_lockCountByReason = v16;

    v18 = v15->_lockCountByReason;
    v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:1];
    [(NSMutableDictionary *)v18 setSafeObject:v19 forKey:v13];

    v15->_totalLockCount = 1;
  }

  return v15;
}

@end