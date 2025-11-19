@interface HPSHeadphoneManager
+ (NSDictionary)allDevicesEverConnected;
+ (id)sharedInstance;
+ (void)setAllDevicesEverConnected:(id)a3;
- (BOOL)allowReplayAccessory;
- (HPSHeadphoneManager)init;
- (id)weakHashTblCopy;
- (void)addDelegate:(id)a3;
- (void)addTopLevelEntryWithHpDevice:(id)a3;
- (void)removeTopLevelEntryWithHpDevice:(id)a3;
- (void)updateHPSDevice:(id)a3;
- (void)updateTopLevelEntryWithHpDevice:(id)a3;
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
    v3 = [MEMORY[0x277D0FC00] shared];
    [v3 setTopLevelUIHandler:v2];

    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    weakHashTbl = v2->_weakHashTbl;
    v2->_weakHashTbl = v4;

    v2->_ffValue = _os_feature_enabled_impl();
    v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.settings.headphone.HeadphoneManager.Mock"];
    defaults = v2->_defaults;
    v2->_defaults = v6;
  }

  return v2;
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HPSHeadphoneManager *)self weakHashTbl];
  [v5 addObject:v4];
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

- (void)updateHPSDevice:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[HPSHeadphoneManager allDevicesEverConnected];
  v5 = [v3 address];
  v6 = [v5 stringByReplacingOccurrencesOfString:@":" withString:@"-"];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (v7 && [v3 isExclusivelyDeeplink])
  {
    [v3 setIsExclusivelyDeeplink:0];
  }

  if ([v3 isExclusivelyDeeplink])
  {
    v8 = [v3 headphoneDevice];

    v7 = v8;
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

  [v3 setHeadphoneDevice:v7];
  if (_os_feature_enabled_impl())
  {
    v10 = [MEMORY[0x277CF3248] sharedInstance];
    v11 = [v3 address];
    v12 = [v11 stringByReplacingOccurrencesOfString:@"-" withString:@":"];
    v13 = [v10 deviceFromAddressString:v12];

    if (v13)
    {
      v14 = [BTSDeviceClassic deviceWithDevice:v13];
      [v3 setBtsDevice:v14];
    }
  }

  v15 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = +[HPSHeadphoneManager allDevicesEverConnected];
    v17 = [v3 headphoneDevice];
    v19 = 138412802;
    v20 = v16;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v17;
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

+ (void)setAllDevicesEverConnected:(id)a3
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

- (void)addTopLevelEntryWithHpDevice:(id)a3
{
  v4 = a3;
  v5 = self;
  HPSHeadphoneManager.addTopLevelEntry(hpDevice:)(v4);
}

- (void)updateTopLevelEntryWithHpDevice:(id)a3
{
  v4 = a3;
  v5 = self;
  HPSHeadphoneManager.updateTopLevelEntry(hpDevice:)(v4);
}

- (void)removeTopLevelEntryWithHpDevice:(id)a3
{
  v4 = a3;
  v5 = self;
  HPSHeadphoneManager.removeTopLevelEntry(hpDevice:)(v4);
}

@end