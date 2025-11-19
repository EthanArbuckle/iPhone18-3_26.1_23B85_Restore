@interface NTKCachedSnapshotPath
@end

@implementation NTKCachedSnapshotPath

void ___NTKCachedSnapshotPath_block_invoke()
{
  v4 = BSCurrentUserDirectory();
  v0 = [v4 stringByAppendingPathComponent:@"/Library/Caches"];
  v1 = [v0 stringByAppendingPathComponent:@"NanoTimeKit"];
  v2 = [v1 stringByAppendingPathComponent:@"GallerySnapshots"];
  v3 = _NTKCachedSnapshotPath_snapshotPath;
  _NTKCachedSnapshotPath_snapshotPath = v2;
}

@end