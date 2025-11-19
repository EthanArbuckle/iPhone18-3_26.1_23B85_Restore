@interface SFSafariNonContaineredSettingsDirectoryPath
@end

@implementation SFSafariNonContaineredSettingsDirectoryPath

void ___SFSafariNonContaineredSettingsDirectoryPath_block_invoke()
{
  v0 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Safari/"];
  v1 = _SFSafariNonContaineredSettingsDirectoryPath::path;
  _SFSafariNonContaineredSettingsDirectoryPath::path = v0;
}

@end