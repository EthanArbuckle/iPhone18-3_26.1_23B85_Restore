@interface MFTheme
+ (Class)visualEffectClassAllowingBlur:(BOOL)a3;
+ (id)visualEffectViewAllowingBlur:(BOOL)a3;
+ (id)visualEffectViewAllowingBlur:(BOOL)a3 withBlurEffect:(id)a4;
@end

@implementation MFTheme

+ (Class)visualEffectClassAllowingBlur:(BOOL)a3
{
  v3 = objc_opt_class();

  return v3;
}

+ (id)visualEffectViewAllowingBlur:(BOOL)a3
{
  v4 = objc_alloc([a1 visualEffectClassAllowingBlur:a3]);
  v5 = [a1 defaultBlurEffect];
  v6 = [v4 initWithEffect:v5];

  [v6 _setGroupName:@"default-background-group"];

  return v6;
}

+ (id)visualEffectViewAllowingBlur:(BOOL)a3 withBlurEffect:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_msgSend(a1 visualEffectClassAllowingBlur:{v4)), "initWithEffect:", v6}];

  [v7 _setGroupName:@"default-background-group"];

  return v7;
}

@end