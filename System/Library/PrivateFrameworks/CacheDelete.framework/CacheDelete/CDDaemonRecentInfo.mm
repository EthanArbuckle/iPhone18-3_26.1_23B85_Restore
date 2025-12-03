@interface CDDaemonRecentInfo
+ (id)fetchAllowedClassesSet;
+ (id)recentInfoForVolumes:(id)volumes;
- (BOOL)isInvalidForVolume:(id)volume;
- (id)_createNewRecentVolumeInfo;
- (void)addInvalidVolume:(id)volume;
- (void)invalidateForVolume:(id)volume;
- (void)prunePreserving:(id)preserving;
- (void)updateInvalidVolumes;
@end

@implementation CDDaemonRecentInfo

- (void)updateInvalidVolumes
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  invalidVolumes = [(CDDaemonRecentInfo *)self invalidVolumes];
  allObjects = [invalidVolumes allObjects];

  v5 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [CacheDeleteDaemonVolume volumeWithMountpoint:v9];
        if ([v10 validate])
        {
          invalidVolumes2 = [(CDDaemonRecentInfo *)self invalidVolumes];
          [invalidVolumes2 removeObject:v9];
        }
      }

      v6 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

+ (id)recentInfoForVolumes:(id)volumes
{
  volumesCopy = volumes;
  v4 = [[CDDaemonRecentInfo alloc] initWithVolumes:volumesCopy];

  return v4;
}

+ (id)fetchAllowedClassesSet
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [NSSet setWithObjects:v2, v3, v4, objc_opt_class(), 0];
}

- (id)_createNewRecentVolumeInfo
{
  v2 = [CDDaemonRecentVolumeInfo alloc];

  return v2;
}

- (void)prunePreserving:(id)preserving
{
  preservingCopy = preserving;
  volumes = [(CDDaemonRecentInfo *)self volumes];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __38__CDDaemonRecentInfo_prunePreserving___block_invoke;
  v7[3] = &unk_100061CA0;
  v8 = preservingCopy;
  v6 = preservingCopy;
  [volumes enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)invalidateForVolume:(id)volume
{
  volumeCopy = volume;
  volumes = [(CDDaemonRecentInfo *)self volumes];
  v6 = [volumes objectForKeyedSubscript:volumeCopy];

  [v6 invalidate];
}

- (BOOL)isInvalidForVolume:(id)volume
{
  v3 = [CacheDeleteDaemonVolume volumeWithMountpoint:volume];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 validate] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)addInvalidVolume:(id)volume
{
  volumeCopy = volume;
  invalidVolumes = [(CDDaemonRecentInfo *)self invalidVolumes];
  [invalidVolumes addObject:volumeCopy];
}

@end