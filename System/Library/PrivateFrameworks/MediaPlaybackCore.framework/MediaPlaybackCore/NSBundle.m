@interface NSBundle
@end

@implementation NSBundle

void __52__NSBundle_MediaPlayerCore__mediaPlaybackCoreBundle__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlaybackCore"];
  v3 = mediaPlaybackCoreBundle___mediaPlayerCoreBundle;
  mediaPlaybackCoreBundle___mediaPlayerCoreBundle = v2;

  if (!mediaPlaybackCoreBundle___mediaPlayerCoreBundle)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"NSBundle+MediaPlaybackCore.m" lineNumber:18 description:@"unable to find MediaPlaybackCore framework"];
  }
}

@end