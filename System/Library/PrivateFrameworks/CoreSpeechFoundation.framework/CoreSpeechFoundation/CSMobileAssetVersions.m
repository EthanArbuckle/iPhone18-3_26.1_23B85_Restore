@interface CSMobileAssetVersions
+ (id)getVoiceTriggerAssetTypeString;
+ (id)getVoiceTriggerAssetTypeStringWithSupportMphAssets:(BOOL)a3 deviceIsIPad:(BOOL)a4 deviceIsWatch:(BOOL)a5 deviceIsHorseman:(BOOL)a6 deviceIsOSX:(BOOL)a7 deviceIsASMac:(BOOL)a8 deviceIsTV:(BOOL)a9 deviceIsIOS:(BOOL)a10;
+ (unint64_t)getVoiceTriggerCurrentCompatibilityVersion;
+ (unint64_t)getVoiceTriggerCurrentCompatibilityVersionWithSupportMphAssets:(BOOL)a3 deviceIsIPad:(BOOL)a4 deviceIsWatch:(BOOL)a5 deviceIsHorseman:(BOOL)a6 deviceIsOSX:(BOOL)a7 deviceIsASMac:(BOOL)a8 deviceIsTV:(BOOL)a9 deviceIsIOS:(BOOL)a10;
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

+ (unint64_t)getVoiceTriggerCurrentCompatibilityVersionWithSupportMphAssets:(BOOL)a3 deviceIsIPad:(BOOL)a4 deviceIsWatch:(BOOL)a5 deviceIsHorseman:(BOOL)a6 deviceIsOSX:(BOOL)a7 deviceIsASMac:(BOOL)a8 deviceIsTV:(BOOL)a9 deviceIsIOS:(BOOL)a10
{
  if (a4)
  {
    return 19;
  }

  v11 = 19;
  if (a9)
  {
    v11 = 17;
  }

  if (a7)
  {
    v11 = 15;
  }

  if (a6)
  {
    v11 = 20;
  }

  v12 = 13;
  if (a3)
  {
    v12 = 14;
  }

  if (a5)
  {
    return v12;
  }

  else
  {
    return v11;
  }
}

+ (id)getVoiceTriggerAssetTypeStringWithSupportMphAssets:(BOOL)a3 deviceIsIPad:(BOOL)a4 deviceIsWatch:(BOOL)a5 deviceIsHorseman:(BOOL)a6 deviceIsOSX:(BOOL)a7 deviceIsASMac:(BOOL)a8 deviceIsTV:(BOOL)a9 deviceIsIOS:(BOOL)a10
{
  if (a4)
  {
    v10 = @"com.apple.MobileAsset.VoiceTriggerHSAssetsIPad";
    v11 = @"com.apple.MobileAsset.VoiceTriggerAssetsIPad";
    goto LABEL_5;
  }

  if (a5)
  {
    v10 = @"com.apple.MobileAsset.VoiceTriggerHSAssetsWatch";
    v11 = @"com.apple.MobileAsset.VoiceTriggerAssetsWatch";
LABEL_5:
    if (a3)
    {
      return v11;
    }

    else
    {
      return v10;
    }
  }

  v13 = @"com.apple.MobileAsset.VoiceTriggerAssetsASMac";
  if (a6)
  {
    v13 = @"com.apple.MobileAsset.VoiceTriggerAssetsMarsh";
  }

  if (!a10 || a3)
  {
    v14 = @"com.apple.MobileAsset.VoiceTriggerAssets";
  }

  else
  {
    v14 = @"com.apple.MobileAsset.VoiceTriggerHSAssets";
  }

  if (a9)
  {
    v14 = @"com.apple.MobileAsset.VoiceTriggerAssetsTV";
  }

  if (a7)
  {
    v14 = v13;
  }

  if (a6)
  {
    return v13;
  }

  else
  {
    return v14;
  }
}

@end