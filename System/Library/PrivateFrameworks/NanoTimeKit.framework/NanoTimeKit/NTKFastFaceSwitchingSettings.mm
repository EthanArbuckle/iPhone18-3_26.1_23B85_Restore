@interface NTKFastFaceSwitchingSettings
+ (id)sharedInstance;
- (NTKFastFaceSwitchingSettings)init;
- (void)_handlePrefsChanged;
- (void)_notifyClientsOfChange;
- (void)_readValue;
- (void)dealloc;
@end

@implementation NTKFastFaceSwitchingSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_18 != -1)
  {
    +[NTKFastFaceSwitchingSettings sharedInstance];
  }

  v3 = sharedInstance_fastFaceSettings;

  return v3;
}

void __46__NTKFastFaceSwitchingSettings_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_fastFaceSettings;
  sharedInstance_fastFaceSettings = v0;
}

- (NTKFastFaceSwitchingSettings)init
{
  v5.receiver = self;
  v5.super_class = NTKFastFaceSwitchingSettings;
  v2 = [(NTKFastFaceSwitchingSettings *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _handleSettingsChanged, @"FaceSupportFastSwitching", v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(NTKFastFaceSwitchingSettings *)v2 _readValue];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"FaceSupportFastSwitching", self);
  v4.receiver = self;
  v4.super_class = NTKFastFaceSwitchingSettings;
  [(NTKFastFaceSwitchingSettings *)&v4 dealloc];
}

- (void)_readValue
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoTimeKit.face"];
  synchronize = [v3 synchronize];
  v8 = 0;
  v5 = [v3 BOOLForKey:@"FaceSupportFastSwitching" keyExistsAndHasValidFormat:&v8];
  self->_fastFaceSwitchingEnabled = v8 & v5;
  v6 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_fastFaceSwitchingEnabled];
    *buf = 136315394;
    v10 = "[NTKFastFaceSwitchingSettings _readValue]";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "%s - fastFaceSwitchingEnabled:%@", buf, 0x16u);
  }
}

- (void)_handlePrefsChanged
{
  [(NTKFastFaceSwitchingSettings *)self _readValue];

  [(NTKFastFaceSwitchingSettings *)self _notifyClientsOfChange];
}

- (void)_notifyClientsOfChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"NTKFastFaceSwitchingEnabledChanged" object:self];
}

@end