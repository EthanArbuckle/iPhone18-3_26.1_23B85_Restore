@interface UARPAssetID(HMDAccessoryFirmwareUpdate)
- (id)softwareVersion;
@end

@implementation UARPAssetID(HMDAccessoryFirmwareUpdate)

- (id)softwareVersion
{
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [self isMatterAsset])
  {
    assetVersionNumber = [self assetVersionNumber];

    if (!assetVersionNumber)
    {
      goto LABEL_9;
    }

    v3 = objc_alloc(MEMORY[0x277D0F8F8]);
    assetVersionNumber2 = [self assetVersionNumber];
    v5 = [v3 initWithMajorVersion:objc_msgSend(assetVersionNumber2 minorVersion:"unsignedLongValue") updateVersion:{0, 0}];
  }

  else
  {
    assetVersionNumber = [self assetVersion];

    if (!assetVersionNumber)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc(MEMORY[0x277D0F8F8]);
    assetVersionNumber2 = [self assetVersion];
    v5 = [v6 initWithString:assetVersionNumber2];
  }

  assetVersionNumber = v5;

LABEL_9:

  return assetVersionNumber;
}

@end