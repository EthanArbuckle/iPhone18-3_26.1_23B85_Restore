@interface MFTheme
+ (Class)visualEffectClassAllowingBlur:(BOOL)blur;
+ (id)visualEffectViewAllowingBlur:(BOOL)blur;
+ (id)visualEffectViewAllowingBlur:(BOOL)blur withBlurEffect:(id)effect;
@end

@implementation MFTheme

+ (Class)visualEffectClassAllowingBlur:(BOOL)blur
{
  v3 = objc_opt_class();

  return v3;
}

+ (id)visualEffectViewAllowingBlur:(BOOL)blur
{
  v4 = objc_alloc([self visualEffectClassAllowingBlur:blur]);
  defaultBlurEffect = [self defaultBlurEffect];
  v6 = [v4 initWithEffect:defaultBlurEffect];

  [v6 _setGroupName:@"default-background-group"];

  return v6;
}

+ (id)visualEffectViewAllowingBlur:(BOOL)blur withBlurEffect:(id)effect
{
  blurCopy = blur;
  effectCopy = effect;
  v7 = [objc_alloc(objc_msgSend(self visualEffectClassAllowingBlur:{blurCopy)), "initWithEffect:", effectCopy}];

  [v7 _setGroupName:@"default-background-group"];

  return v7;
}

@end