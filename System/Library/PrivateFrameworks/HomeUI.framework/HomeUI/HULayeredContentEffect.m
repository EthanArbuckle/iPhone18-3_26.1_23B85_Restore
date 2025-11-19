@interface HULayeredContentEffect
+ (id)contentWithTintColor:(id)a3;
+ (id)contentWithVibrancyEffect:(id)a3;
@end

@implementation HULayeredContentEffect

+ (id)contentWithVibrancyEffect:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HULayeredContentEffect);
  [(HULayeredContentEffect *)v4 setVibrancyEffect:v3];

  return v4;
}

+ (id)contentWithTintColor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HULayeredContentEffect);
  [(HULayeredContentEffect *)v4 setTintColor:v3];

  return v4;
}

@end