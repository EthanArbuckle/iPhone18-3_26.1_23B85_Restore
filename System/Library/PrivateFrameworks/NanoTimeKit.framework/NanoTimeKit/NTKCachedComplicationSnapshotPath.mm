@interface NTKCachedComplicationSnapshotPath
@end

@implementation NTKCachedComplicationSnapshotPath

void ___NTKCachedComplicationSnapshotPath_block_invoke()
{
  v4 = BSCurrentUserDirectory();
  v0 = [v4 stringByAppendingPathComponent:@"/Library/Caches"];
  v1 = [v0 stringByAppendingPathComponent:@"NanoTimeKit"];
  v2 = [v1 stringByAppendingPathComponent:@"Complications"];
  v3 = _NTKCachedComplicationSnapshotPath_snapshotPath;
  _NTKCachedComplicationSnapshotPath_snapshotPath = v2;
}

@end