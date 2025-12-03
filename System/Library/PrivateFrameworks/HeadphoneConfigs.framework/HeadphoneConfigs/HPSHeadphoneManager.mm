@interface HPSHeadphoneManager
+ (NSDictionary)allDevicesEverConnected;
+ (id)sharedInstance;
+ (void)setAllDevicesEverConnected:(id)connected;
- (BOOL)allowReplayAccessory;
- (HPSHeadphoneManager)init;
- (id)weakHashTblCopy;
- (void)addDelegate:(id)delegate;
- (void)addTopLevelEntryWithHpDevice:(id)device;
- (void)removeTopLevelEntryWithHpDevice:(id)device;
- (void)updateHPSDevice:(id)device;
- (void)updateTopLevelEntryWithHpDevice:(id)device;
@end

@implementation HPSHeadphoneManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[HPSHeadphoneManager sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __37__HPSHeadphoneManager_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance = objc_alloc_init(HPSHeadphoneManager);

  return MEMORY[0x2821F96F8]();
}

- (HPSHeadphoneManager)init
{
  v9.receiver = self;
  v9.super_class = HPSHeadphoneManager;
  v2 = [(HPSHeadphoneManager *)&v9 init];
  if (v2)
  {
    mEMORY[0x277D0FC00] = [MEMORY[0x277D0FC00] shared];
    [mEMORY[0x277D0FC00] setTopLevelUIHandler:v2];

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    weakHashTbl = v2->_weakHashTbl;
    v2->_weakHashTbl = weakObjectsHashTable;

    v2->_ffValue = _os_feature_enabled_impl();
    v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.settings.headphone.HeadphoneManager.Mock"];
    defaults = v2->_defaults;
    v2->_defaults = v6;
  }

  return v2;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  weakHashTbl = [(HPSHeadphoneManager *)self weakHashTbl];
  [weakHashTbl addObject:delegateCopy];
}

- (BOOL)allowReplayAccessory
{
  if (!os_variant_has_internal_ui())
  {
    return 0;
  }

  v3 = [(NSUserDefaults *)self->_defaults valueForKey:@"root"];
  v4 = v3 != 0;

  return v4;
}

- (void)updateHPSDevice:(id)device
{
  v25 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v4 = +[HPSHeadphoneManager allDevicesEverConnected];
  address = [deviceCopy address];
  v6 = [address stringByReplacingOccurrencesOfString:@":" withString:@"-"];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (v7 && [deviceCopy isExclusivelyDeeplink])
  {
    [deviceCopy setIsExclusivelyDeeplink:0];
  }

  if ([deviceCopy isExclusivelyDeeplink])
  {
    headphoneDevice = [deviceCopy headphoneDevice];

    v7 = headphoneDevice;
  }

  else if (([v7 hasBackend] & 1) == 0)
  {

    v9 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Connected Headphones: updateHPSDevice device not conncted", &v19, 2u);
    }

    v7 = 0;
  }

  [deviceCopy setHeadphoneDevice:v7];
  if (_os_feature_enabled_impl())
  {
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    address2 = [deviceCopy address];
    v12 = [address2 stringByReplacingOccurrencesOfString:@"-" withString:@":"];
    v13 = [mEMORY[0x277CF3248] deviceFromAddressString:v12];

    if (v13)
    {
      v14 = [BTSDeviceClassic deviceWithDevice:v13];
      [deviceCopy setBtsDevice:v14];
    }
  }

  v15 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = +[HPSHeadphoneManager allDevicesEverConnected];
    headphoneDevice2 = [deviceCopy headphoneDevice];
    v19 = 138412802;
    v20 = v16;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = headphoneDevice2;
    _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "Connected Headphones: updateHPSDevice %@ %@ %@", &v19, 0x20u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)weakHashTblCopy
{
  v2 = [(NSHashTable *)self->_weakHashTbl copy];

  return v2;
}

+ (NSDictionary)allDevicesEverConnected
{
  if (qword_27F4239F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_25121102C();

  v2 = sub_25121171C();

  return v2;
}

+ (void)setAllDevicesEverConnected:(id)connected
{
  sub_25121102C();
  v3 = sub_25121172C();
  if (qword_27F4239F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27F425690 = v3;
}

- (void)addTopLevelEntryWithHpDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  HPSHeadphoneManager.addTopLevelEntry(hpDevice:)(deviceCopy);
}

- (void)updateTopLevelEntryWithHpDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  HPSHeadphoneManager.updateTopLevelEntry(hpDevice:)(deviceCopy);
}

- (void)removeTopLevelEntryWithHpDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  HPSHeadphoneManager.removeTopLevelEntry(hpDevice:)(deviceCopy);
}

@end