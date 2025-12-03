@interface HMDAccessoryFirmwareUpdateManagerWingman
- (HMDAccessoryFirmwareUpdateManagerWingman)init;
- (id)newAccessoryFirmwareUpdateSessionWithHAPAccessory:(id)accessory uarpAccessory:(id)uarpAccessory accessoryFirmwareUpdateManager:(id)manager logEventManager:(id)eventManager;
@end

@implementation HMDAccessoryFirmwareUpdateManagerWingman

- (id)newAccessoryFirmwareUpdateSessionWithHAPAccessory:(id)accessory uarpAccessory:(id)uarpAccessory accessoryFirmwareUpdateManager:(id)manager logEventManager:(id)eventManager
{
  eventManagerCopy = eventManager;
  managerCopy = manager;
  uarpAccessoryCopy = uarpAccessory;
  accessoryCopy = accessory;
  v13 = [[HMDAccessoryFirmwareUpdateSession alloc] initWithHAPAccessory:accessoryCopy uarpAccessory:uarpAccessoryCopy accessoryFirmwareUpdateManager:managerCopy logEventManager:eventManagerCopy];

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