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

  return [self valueForNSIntegerTrait:v2];
}

- (uint64_t)sf_alternateTintColor
{
  v2 = objc_opt_class();

  return [self objectForTrait:v2];
}

- (uint64_t)sf_backgroundBlurEffect
{
  v2 = objc_opt_class();

  return [self objectForTrait:v2];
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
  sf_alternateUserInterfaceStyle = [self sf_alternateUserInterfaceStyle];
  if (sf_alternateUserInterfaceStyle)
  {
    selfCopy = [self traitCollectionByReplacingNSIntegerValue:sf_alternateUserInterfaceStyle forTrait:objc_opt_class()];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)safari_barTintStyle
{
  v2 = objc_opt_class();

  return [self valueForNSIntegerTrait:v2];
}

@end