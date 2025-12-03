@interface NSBundle(MediaPlayerCore)
+ (id)mediaPlaybackCoreBundle;
@end

@implementation NSBundle(MediaPlayerCore)

+ (id)mediaPlaybackCoreBundle
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__NSBundle_MediaPlayerCore__mediaPlaybackCoreBundle__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = self;
  if (mediaPlaybackCoreBundle___once != -1)
  {
    dispatch_once(&mediaPlaybackCoreBundle___once, v4);
  }

  v2 = mediaPlaybackCoreBundle___mediaPlayerCoreBundle;

  return v2;
}

@end