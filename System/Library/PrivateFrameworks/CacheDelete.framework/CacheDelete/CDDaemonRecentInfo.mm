@interface CDDaemonRecentInfo
+ (id)fetchAllowedClassesSet;
+ (id)recentInfoForVolumes:(id)a3;
- (BOOL)isInvalidForVolume:(id)a3;
- (id)_createNewRecentVolumeInfo;
- (void)addInvalidVolume:(id)a3;
- (void)invalidateForVolume:(id)a3;
- (void)prunePreserving:(id)a3;
- (void)updateInvalidVolumes;
@end

@implementation CDDaemonRecentInfo

- (void)updateInvalidVolumes
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(CDDaemonRecentInfo *)self invalidVolumes];
  v4 = [v3 allObjects];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [CacheDeleteDaemonVolume volumeWithMountpoint:v9];
        if ([v10 validate])
        {
          v11 = [(CDDaemonRecentInfo *)self invalidVolumes];
          [v11 removeObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

+ (id)recentInfoForVolumes:(id)a3
{
  v3 = a3;
  v4 = [[CDDaemonRecentInfo alloc] initWithVolumes:v3];

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

- (void)prunePreserving:(id)a3
{
  v4 = a3;
  v5 = [(CDDaemonRecentInfo *)self volumes];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __38__CDDaemonRecentInfo_prunePreserving___block_invoke;
  v7[3] = &unk_100061CA0;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)invalidateForVolume:(id)a3
{
  v4 = a3;
  v5 = [(CDDaemonRecentInfo *)self volumes];
  v6 = [v5 objectForKeyedSubscript:v4];

  [v6 invalidate];
}

- (BOOL)isInvalidForVolume:(id)a3
{
  v3 = [CacheDeleteDaemonVolume volumeWithMountpoint:a3];
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

- (void)addInvalidVolume:(id)a3
{
  v4 = a3;
  v5 = [(CDDaemonRecentInfo *)self invalidVolumes];
  [v5 addObject:v4];
}

@end