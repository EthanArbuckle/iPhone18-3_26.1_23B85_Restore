@interface UITraitCollection(Wallpaper)
- (unint64_t)wallpaperAppearanceType;
@end

@implementation UITraitCollection(Wallpaper)

- (unint64_t)wallpaperAppearanceType
{
  result = [a1 valueForNSIntegerTrait:objc_opt_class()];
  if (result >= 3)
  {
    return 0;
  }

  return result;
}

@end