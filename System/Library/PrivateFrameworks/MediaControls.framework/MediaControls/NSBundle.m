@interface NSBundle
@end

@implementation NSBundle

uint64_t __46__NSBundle_MediaRemoteUI__mediaRemoteUIBundle__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaControls"];
  v1 = mediaRemoteUIBundle___mediaRemoteUIBundle;
  mediaRemoteUIBundle___mediaRemoteUIBundle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __46__NSBundle_MediaControls__mediaControlsBundle__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaControls"];
  v1 = mediaControlsBundle___mediaControlsBundle;
  mediaControlsBundle___mediaControlsBundle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end