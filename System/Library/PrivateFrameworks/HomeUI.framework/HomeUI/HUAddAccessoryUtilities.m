@interface HUAddAccessoryUtilities
+ (id)addAccessoryLocalizationStringKey;
+ (id)addAccessoryString;
@end

@implementation HUAddAccessoryUtilities

+ (id)addAccessoryString
{
  v2 = [a1 addAccessoryLocalizationStringKey];
  v3 = _HULocalizedStringWithDefaultValue(v2, v2, 1);

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