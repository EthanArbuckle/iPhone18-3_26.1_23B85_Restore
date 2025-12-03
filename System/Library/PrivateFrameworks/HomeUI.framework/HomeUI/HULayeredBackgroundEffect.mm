@interface HULayeredBackgroundEffect
+ (id)backgroundWithBlurEffect:(id)effect;
+ (id)backgroundWithFillColor:(id)color;
@end

@implementation HULayeredBackgroundEffect

+ (id)backgroundWithFillColor:(id)color
{
  colorCopy = color;
  v4 = objc_alloc_init(HULayeredBackgroundEffect);
  [(HULayeredBackgroundEffect *)v4 setFillColor:colorCopy];

  return v4;
}

+ (id)backgroundWithBlurEffect:(id)effect
{
  effectCopy = effect;
  v4 = objc_alloc_init(HULayeredBackgroundEffect);
  [(HULayeredBackgroundEffect *)v4 setBlurEffect:effectCopy];

  return v4;
}

@end