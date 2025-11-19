@interface UARPAssetID(HMDAccessoryFirmwareUpdate)
- (id)softwareVersion;
@end

@implementation UARPAssetID(HMDAccessoryFirmwareUpdate)

- (id)softwareVersion
{
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [a1 isMatterAsset])
  {
    v2 = [a1 assetVersionNumber];

    if (!v2)
    {
      goto LABEL_9;
    }

    v3 = objc_alloc(MEMORY[0x277D0F8F8]);
    v4 = [a1 assetVersionNumber];
    v5 = [v3 initWithMajorVersion:objc_msgSend(v4 minorVersion:"unsignedLongValue") updateVersion:{0, 0}];
  }

  else
  {
    v2 = [a1 assetVersion];

    if (!v2)
    {
      goto LABEL_9;
    }

    v6 = objc_alloc(MEMORY[0x277D0F8F8]);
    v4 = [a1 assetVersion];
    v5 = [v6 initWithString:v4];
  }

  v2 = v5;

LABEL_9:

  return v2;
}

@end