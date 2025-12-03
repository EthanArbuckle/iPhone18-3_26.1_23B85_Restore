@interface HUAddAccessoryUtilities
+ (id)addAccessoryLocalizationStringKey;
+ (id)addAccessoryString;
@end

@implementation HUAddAccessoryUtilities

+ (id)addAccessoryString
{
  addAccessoryLocalizationStringKey = [self addAccessoryLocalizationStringKey];
  v3 = _HULocalizedStringWithDefaultValue(addAccessoryLocalizationStringKey, addAccessoryLocalizationStringKey, 1);

  return v3;
}

+ (id)addAccessoryLocalizationStringKey
{
  if (MGGetBoolAnswer())
  {
    return @"HUAddOrScanAccessory";
  }

  else
  {
    return @"HUAddAccessory";
  }
}

@end