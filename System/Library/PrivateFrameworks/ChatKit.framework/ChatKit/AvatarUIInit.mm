@interface AvatarUIInit
@end

@implementation AvatarUIInit

void *___AvatarUIInit_block_invoke()
{
  _CKAVTAvatarStore = MEMORY[0x193AF5EC0](@"AVTAvatarStore", @"AvatarUI");
  _CKAVTAvatarFetchRequest = MEMORY[0x193AF5EC0](@"AVTAvatarFetchRequest", @"AvatarUI");
  _CKAVTAvatarEditorViewController = MEMORY[0x193AF5EC0](@"AVTAvatarEditorViewController", @"AvatarUI");
  _CKAVPlayerViewController = MEMORY[0x193AF5EC0](@"AVPlayerViewController", @"AVKit");
  _CKAVTUISetHasDisplayedSplashScreen = MEMORY[0x193AF5ED0]("AVTUISetHasDisplayedSplashScreen", @"AvatarUI");
  result = MEMORY[0x193AF5ED0]("AVTAvatarEditorSplashVideo", @"AvatarUI");
  _CKAVTAvatarEditorSplashVideo = result;
  return result;
}

@end