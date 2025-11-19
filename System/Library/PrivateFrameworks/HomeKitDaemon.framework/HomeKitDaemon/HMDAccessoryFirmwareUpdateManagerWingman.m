@interface HMDAccessoryFirmwareUpdateManagerWingman
- (HMDAccessoryFirmwareUpdateManagerWingman)init;
- (id)newAccessoryFirmwareUpdateSessionWithHAPAccessory:(id)a3 uarpAccessory:(id)a4 accessoryFirmwareUpdateManager:(id)a5 logEventManager:(id)a6;
@end

@implementation HMDAccessoryFirmwareUpdateManagerWingman

- (id)newAccessoryFirmwareUpdateSessionWithHAPAccessory:(id)a3 uarpAccessory:(id)a4 accessoryFirmwareUpdateManager:(id)a5 logEventManager:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[HMDAccessoryFirmwareUpdateSession alloc] initWithHAPAccessory:v12 uarpAccessory:v11 accessoryFirmwareUpdateManager:v10 logEventManager:v9];

  return v13;
}

- (HMDAccessoryFirmwareUpdateManagerWingman)init
{
  v8.receiver = self;
  v8.super_class = HMDAccessoryFirmwareUpdateManagerWingman;
  v2 = [(HMDAccessoryFirmwareUpdateManagerWingman *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D02620]);
    defaultUARPController = v2->_defaultUARPController;
    v2->_defaultUARPController = v3;

    v2->_registerDelay = 6.0e10;
    if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      v5 = objc_alloc_init(MEMORY[0x277D02620]);
      matterUARPController = v2->_matterUARPController;
      v2->_matterUARPController = v5;
    }
  }

  return v2;
}

@end