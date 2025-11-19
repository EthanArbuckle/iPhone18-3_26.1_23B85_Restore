@interface NTKSnapshotCachePathProvider
- (NSURL)cachesPath;
- (NSURL)defaultPath;
- (NSURL)libraryPath;
@end

@implementation NTKSnapshotCachePathProvider

- (NSURL)defaultPath
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = BSCurrentUserDirectory();
  v4 = [v2 fileURLWithPath:v3];

  return v4;
}

- (NSURL)libraryPath
{
  v2 = [(NTKSnapshotCachePathProvider *)self defaultPath];
  v3 = [v2 URLByAppendingPathComponent:@"Library"];

  return v3;
}

- (NSURL)cachesPath
{
  v2 = [(NTKSnapshotCachePathProvider *)self libraryPath];
  v3 = [v2 URLByAppendingPathComponent:@"Caches"];

  return v3;
}

@end