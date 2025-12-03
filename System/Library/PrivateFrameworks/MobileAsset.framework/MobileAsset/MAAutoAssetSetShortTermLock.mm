@interface MAAutoAssetSetShortTermLock
- (id)initForAssetSetAtomicInstance:(id)instance withLockedFilename:(id)filename withLockedFileDescriptor:(int)descriptor forFirstLockReason:(id)reason;
- (id)summary;
@end

@implementation MAAutoAssetSetShortTermLock

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  assetSetAtomicInstance = [(MAAutoAssetSetShortTermLock *)self assetSetAtomicInstance];
  lockedFilename = [(MAAutoAssetSetShortTermLock *)self lockedFilename];
  lockedFileDescriptor = [(MAAutoAssetSetShortTermLock *)self lockedFileDescriptor];
  lockCountByReason = [(MAAutoAssetSetShortTermLock *)self lockCountByReason];
  safeSummary = [lockCountByReason safeSummary];
  v9 = [v3 stringWithFormat:@"assetSetAtomicInstance:%@|lockedFilename:%@|lockedFileDescriptor:%d|lockCountByReason:%@|totalLockCount:%ld", assetSetAtomicInstance, lockedFilename, lockedFileDescriptor, safeSummary, -[MAAutoAssetSetShortTermLock totalLockCount](self, "totalLockCount")];

  return v9;
}

- (id)initForAssetSetAtomicInstance:(id)instance withLockedFilename:(id)filename withLockedFileDescriptor:(int)descriptor forFirstLockReason:(id)reason
{
  instanceCopy = instance;
  filenameCopy = filename;
  reasonCopy = reason;
  v21.receiver = self;
  v21.super_class = MAAutoAssetSetShortTermLock;
  v14 = [(MAAutoAssetSetShortTermLock *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_assetSetAtomicInstance, instance);
    objc_storeStrong(&v15->_lockedFilename, filename);
    v15->_lockedFileDescriptor = descriptor;
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lockCountByReason = v15->_lockCountByReason;
    v15->_lockCountByReason = v16;

    v18 = v15->_lockCountByReason;
    v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:1];
    [(NSMutableDictionary *)v18 setSafeObject:v19 forKey:reasonCopy];

    v15->_totalLockCount = 1;
  }

  return v15;
}

@end