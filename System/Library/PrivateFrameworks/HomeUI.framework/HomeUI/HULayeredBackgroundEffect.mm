@interface HULayeredBackgroundEffect
+ (id)backgroundWithBlurEffect:(id)a3;
+ (id)backgroundWithFillColor:(id)a3;
@end

@implementation HULayeredBackgroundEffect

+ (id)backgroundWithFillColor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HULayeredBackgroundEffect);
  [(HULayeredBackgroundEffect *)v4 setFillColor:v3];

  return v4;
}

+ (id)backgroundWithBlurEffect:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HULayeredBackgroundEffect);
  [(HULayeredBackgroundEffect *)v4 setBlurEffect:v3];

  return v4;
}

@end