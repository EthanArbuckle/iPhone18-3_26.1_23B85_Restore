@interface UITraitCollection(MobileSafariExtras)
+ (id)safari_traitsAffectingTextAppearance;
+ (void)safari_removeAllCustomTraits:()MobileSafariExtras;
- (id)sf_traitCollectionWithAlternateUserInterfaceColorAsPrimary;
- (uint64_t)safari_barTintStyle;
- (uint64_t)sf_alternateTintColor;
- (uint64_t)sf_alternateUserInterfaceStyle;
- (uint64_t)sf_backgroundBlurEffect;
@end

@implementation UITraitCollection(MobileSafariExtras)

- (uint64_t)sf_alternateUserInterfaceStyle
{
  v2 = objc_opt_class();

  return [a1 valueForNSIntegerTrait:v2];
}

- (uint64_t)sf_alternateTintColor
{
  v2 = objc_opt_class();

  return [a1 objectForTrait:v2];
}

- (uint64_t)sf_backgroundBlurEffect
{
  v2 = objc_opt_class();

  return [a1 objectForTrait:v2];
}

+ (void)safari_removeAllCustomTraits:()MobileSafariExtras
{
  v3 = a3;
  [v3 removeTrait:objc_opt_class()];
  [v3 removeTrait:objc_opt_class()];
  [v3 removeTrait:objc_opt_class()];
  [v3 removeTrait:objc_opt_class()];
}

+ (id)safari_traitsAffectingTextAppearance
{
  if (safari_traitsAffectingTextAppearance_onceToken != -1)
  {
    +[UITraitCollection(MobileSafariExtras) safari_traitsAffectingTextAppearance];
  }

  v1 = safari_traitsAffectingTextAppearance_traits;

  return v1;
}

- (id)sf_traitCollectionWithAlternateUserInterfaceColorAsPrimary
{
  v2 = [a1 sf_alternateUserInterfaceStyle];
  if (v2)
  {
    v3 = [a1 traitCollectionByReplacingNSIntegerValue:v2 forTrait:objc_opt_class()];
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

- (uint64_t)safari_barTintStyle
{
  v2 = objc_opt_class();

  return [a1 valueForNSIntegerTrait:v2];
}

@end