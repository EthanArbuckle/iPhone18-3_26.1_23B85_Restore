@interface LACLocalizationUtils
+ (id)decodeLocalizationKeyFromString:(id)string shouldUseDeviceVariant:(BOOL *)variant;
+ (id)encodeLocalizationKey:(id)key shouldUseDeviceVariant:(BOOL)variant;
@end

@implementation LACLocalizationUtils

+ (id)encodeLocalizationKey:(id)key shouldUseDeviceVariant:(BOOL)variant
{
  v4 = &stru_1F2652748;
  if (variant)
  {
    v4 = @"__LAC_LOCALIZATION_DEVICE_VARIANT__";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"__LAC_LOCALIZATION_KEY__", v4, key];
}

+ (id)decodeLocalizationKeyFromString:(id)string shouldUseDeviceVariant:(BOOL *)variant
{
  stringCopy = string;
  if ([self isLocalizationKey:stringCopy])
  {
    if (variant)
    {
      *variant = 0;
    }

    v7 = [stringCopy substringFromIndex:{objc_msgSend(@"__LAC_LOCALIZATION_KEY__", "length")}];
    if ([self _shouldUseDeviceVariantForKey:v7])
    {
      if (variant)
      {
        *variant = 1;
      }

      v8 = [v7 substringFromIndex:{objc_msgSend(@"__LAC_LOCALIZATION_DEVICE_VARIANT__", "length")}];
    }

    else
    {
      v8 = v7;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end