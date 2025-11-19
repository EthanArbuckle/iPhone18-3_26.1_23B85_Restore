@interface PBUIWallpaperRemoteViewControllerSceneWorkspace
@end

@implementation PBUIWallpaperRemoteViewControllerSceneWorkspace

uint64_t ___PBUIWallpaperRemoteViewControllerSceneWorkspace_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D0AAE8]) initWithIdentifier:@"PBUIWallpaperWorkspace"];
  v1 = _PBUIWallpaperRemoteViewControllerSceneWorkspace_workspace;
  _PBUIWallpaperRemoteViewControllerSceneWorkspace_workspace = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end