@interface LACLocalizationUtils
+ (id)decodeLocalizationKeyFromString:(id)a3 shouldUseDeviceVariant:(BOOL *)a4;
+ (id)encodeLocalizationKey:(id)a3 shouldUseDeviceVariant:(BOOL)a4;
@end

@implementation LACLocalizationUtils

+ (id)encodeLocalizationKey:(id)a3 shouldUseDeviceVariant:(BOOL)a4
{
  v4 = &stru_1F2652748;
  if (a4)
  {
    v4 = @"__LAC_LOCALIZATION_DEVICE_VARIANT__";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"__LAC_LOCALIZATION_KEY__", v4, a3];
}

+ (id)decodeLocalizationKeyFromString:(id)a3 shouldUseDeviceVariant:(BOOL *)a4
{
  v6 = a3;
  if ([a1 isLocalizationKey:v6])
  {
    if (a4)
    {
      *a4 = 0;
    }

    v7 = [v6 substringFromIndex:{objc_msgSend(@"__LAC_LOCALIZATION_KEY__", "length")}];
    if ([a1 _shouldUseDeviceVariantForKey:v7])
    {
      if (a4)
      {
        *a4 = 1;
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