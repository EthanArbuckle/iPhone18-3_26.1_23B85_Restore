@interface _PBUIWallpaperBlurAnimatingView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation _PBUIWallpaperBlurAnimatingView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _PBUIWallpaperBlurAnimatingView;
    v5 = [(_PBUIWallpaperBlurAnimatingView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end