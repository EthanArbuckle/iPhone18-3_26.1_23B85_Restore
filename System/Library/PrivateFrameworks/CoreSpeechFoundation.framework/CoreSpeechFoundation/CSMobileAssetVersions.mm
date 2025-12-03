@interface CSMobileAssetVersions
+ (id)getVoiceTriggerAssetTypeString;
+ (id)getVoiceTriggerAssetTypeStringWithSupportMphAssets:(BOOL)assets deviceIsIPad:(BOOL)pad deviceIsWatch:(BOOL)watch deviceIsHorseman:(BOOL)horseman deviceIsOSX:(BOOL)x deviceIsASMac:(BOOL)mac deviceIsTV:(BOOL)v deviceIsIOS:(BOOL)self0;
+ (unint64_t)getVoiceTriggerCurrentCompatibilityVersion;
+ (unint64_t)getVoiceTriggerCurrentCompatibilityVersionWithSupportMphAssets:(BOOL)assets deviceIsIPad:(BOOL)pad deviceIsWatch:(BOOL)watch deviceIsHorseman:(BOOL)horseman deviceIsOSX:(BOOL)x deviceIsASMac:(BOOL)mac deviceIsTV:(BOOL)v deviceIsIOS:(BOOL)self0;
@end

@implementation CSMobileAssetVersions

+ (unint64_t)getVoiceTriggerCurrentCompatibilityVersion
{
  v2 = +[CSUtils supportMphAssets];
  if (CSIsIPad_onceToken != -1)
  {
    dispatch_once(&CSIsIPad_onceToken, &__block_literal_global_22);
  }

  v3 = CSIsIPad_isIPad;
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  LOWORD(v5) = 256;
  return [CSMobileAssetVersions getVoiceTriggerCurrentCompatibilityVersionWithSupportMphAssets:v2 deviceIsIPad:v3 deviceIsWatch:0 deviceIsHorseman:CSIsHorseman_isHorseman deviceIsOSX:0 deviceIsASMac:0 deviceIsTV:v5 deviceIsIOS:?];
}

+ (id)getVoiceTriggerAssetTypeString
{
  v2 = +[CSUtils supportMphAssets];
  if (CSIsIPad_onceToken != -1)
  {
    dispatch_once(&CSIsIPad_onceToken, &__block_literal_global_22);
  }

  v3 = CSIsIPad_isIPad;
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  LOWORD(v5) = 256;
  return [CSMobileAssetVersions getVoiceTriggerAssetTypeStringWithSupportMphAssets:v2 deviceIsIPad:v3 deviceIsWatch:0 deviceIsHorseman:CSIsHorseman_isHorseman deviceIsOSX:0 deviceIsASMac:0 deviceIsTV:v5 deviceIsIOS:?];
}

+ (unint64_t)getVoiceTriggerCurrentCompatibilityVersionWithSupportMphAssets:(BOOL)assets deviceIsIPad:(BOOL)pad deviceIsWatch:(BOOL)watch deviceIsHorseman:(BOOL)horseman deviceIsOSX:(BOOL)x deviceIsASMac:(BOOL)mac deviceIsTV:(BOOL)v deviceIsIOS:(BOOL)self0
{
  if (pad)
  {
    return 19;
  }

  v11 = 19;
  if (v)
  {
    v11 = 17;
  }

  if (x)
  {
    v11 = 15;
  }

  if (horseman)
  {
    v11 = 20;
  }

  v12 = 13;
  if (assets)
  {
    v12 = 14;
  }

  if (watch)
  {
    return v12;
  }

  else
  {
    return v11;
  }
}

+ (id)getVoiceTriggerAssetTypeStringWithSupportMphAssets:(BOOL)assets deviceIsIPad:(BOOL)pad deviceIsWatch:(BOOL)watch deviceIsHorseman:(BOOL)horseman deviceIsOSX:(BOOL)x deviceIsASMac:(BOOL)mac deviceIsTV:(BOOL)v deviceIsIOS:(BOOL)self0
{
  if (pad)
  {
    v10 = @"com.apple.MobileAsset.VoiceTriggerHSAssetsIPad";
    v11 = @"com.apple.MobileAsset.VoiceTriggerAssetsIPad";
    goto LABEL_5;
  }

  if (watch)
  {
    v10 = @"com.apple.MobileAsset.VoiceTriggerHSAssetsWatch";
    v11 = @"com.apple.MobileAsset.VoiceTriggerAssetsWatch";
LABEL_5:
    if (assets)
    {
      return v11;
    }

    else
    {
      return v10;
    }
  }

  v13 = @"com.apple.MobileAsset.VoiceTriggerAssetsASMac";
  if (horseman)
  {
    v13 = @"com.apple.MobileAsset.VoiceTriggerAssetsMarsh";
  }

  if (!s || assets)
  {
    v14 = @"com.apple.MobileAsset.VoiceTriggerAssets";
  }

  else
  {
    v14 = @"com.apple.MobileAsset.VoiceTriggerHSAssets";
  }

  if (v)
  {
    v14 = @"com.apple.MobileAsset.VoiceTriggerAssetsTV";
  }

  if (x)
  {
    v14 = v13;
  }

  if (horseman)
  {
    return v13;
  }

  else
  {
    return v14;
  }
}

@end