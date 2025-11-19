@interface NSBundle(MediaControls)
+ (id)mediaControlsBundle;
@end

@implementation NSBundle(MediaControls)

+ (id)mediaControlsBundle
{
  if (mediaControlsBundle___once != -1)
  {
    +[NSBundle(MediaControls) mediaControlsBundle];
  }

  v1 = mediaControlsBundle___mediaControlsBundle;

  return v1;
}

@end