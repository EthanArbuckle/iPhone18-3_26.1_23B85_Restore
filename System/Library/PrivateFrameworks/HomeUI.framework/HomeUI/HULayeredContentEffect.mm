@interface HULayeredContentEffect
+ (id)contentWithTintColor:(id)color;
+ (id)contentWithVibrancyEffect:(id)effect;
@end

@implementation HULayeredContentEffect

+ (id)contentWithVibrancyEffect:(id)effect
{
  effectCopy = effect;
  v4 = objc_alloc_init(HULayeredContentEffect);
  [(HULayeredContentEffect *)v4 setVibrancyEffect:effectCopy];

  return v4;
}

+ (id)contentWithTintColor:(id)color
{
  colorCopy = color;
  v4 = objc_alloc_init(HULayeredContentEffect);
  [(HULayeredContentEffect *)v4 setTintColor:colorCopy];

  return v4;
}

@end