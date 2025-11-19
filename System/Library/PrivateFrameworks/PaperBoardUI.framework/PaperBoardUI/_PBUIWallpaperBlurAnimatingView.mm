@interface _PBUIWallpaperBlurAnimatingView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation _PBUIWallpaperBlurAnimatingView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _PBUIWallpaperBlurAnimatingView;
    v5 = [(_PBUIWallpaperBlurAnimatingView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end