@interface DSAppPermissionsDescriptor(DigitalSeparationUI)
+ (id)iconAppBundleForPermission:()DigitalSeparationUI;
+ (id)iconAssetNameForPermission:()DigitalSeparationUI;
+ (id)iconForPermission:()DigitalSeparationUI tableFormat:;
+ (id)stringKeyForPermission:()DigitalSeparationUI;
@end

@implementation DSAppPermissionsDescriptor(DigitalSeparationUI)

+ (id)iconAppBundleForPermission:()DigitalSeparationUI
{
  v3 = iconAppBundleForPermission__token;
  v4 = a3;
  if (v3 != -1)
  {
    +[DSAppPermissionsDescriptor(DigitalSeparationUI) iconAppBundleForPermission:];
  }

  v5 = [iconAppBundleForPermission__icons objectForKey:v4];

  return v5;
}

+ (id)iconAssetNameForPermission:()DigitalSeparationUI
{
  v3 = iconAssetNameForPermission__token;
  v4 = a3;
  if (v3 != -1)
  {
    +[DSAppPermissionsDescriptor(DigitalSeparationUI) iconAssetNameForPermission:];
  }

  v5 = [iconAssetNameForPermission__icons objectForKey:v4];

  return v5;
}

+ (id)iconForPermission:()DigitalSeparationUI tableFormat:
{
  v5 = a3;
  v6 = [MEMORY[0x277D05478] iconAppBundleForPermission:v5];
  if (v6 && ![DSUIUtilities isPlaceholderForApp:v6])
  {
    if (a4)
    {
      v15 = 0;
    }

    else
    {
      v15 = 12;
    }

    v10 = [DSUIUtilities appIconForAppID:v6 format:v15];
  }

  else
  {
    v7 = [MEMORY[0x277D05478] iconAssetNameForPermission:v5];
    v8 = MEMORY[0x277D755B8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v8 imageNamed:v7 inBundle:v9];

    if (a4)
    {
      v11 = [DSUIUtilities appIconForAppID:&stru_285BA4988 format:0];
      [v11 size];
      v13 = v12;
      [v11 size];
      v14 = [v10 imageByPreparingThumbnailOfSize:v13];

      v10 = v14;
    }
  }

  return v10;
}

+ (id)stringKeyForPermission:()DigitalSeparationUI
{
  v3 = stringKeyForPermission__token;
  v4 = a3;
  if (v3 != -1)
  {
    +[DSAppPermissionsDescriptor(DigitalSeparationUI) stringKeyForPermission:];
  }

  v5 = [stringKeyForPermission__icons objectForKey:v4];

  return v5;
}

@end