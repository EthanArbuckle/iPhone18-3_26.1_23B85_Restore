@interface NTKCTinCanSettings
+ (id)sharedInstance;
- (NTKCTinCanSettings)init;
- (void)_handlePrefsChanged;
- (void)_notifyClientsOfChange;
- (void)_readValue;
- (void)dealloc;
@end

@implementation NTKCTinCanSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_10 != -1)
  {
    +[NTKCTinCanSettings sharedInstance];
  }

  v3 = sharedInstance_tinCanSettings;

  return v3;
}

void __36__NTKCTinCanSettings_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_tinCanSettings;
  sharedInstance_tinCanSettings = v0;
}

- (NTKCTinCanSettings)init
{
  v6.receiver = self;
  v6.super_class = NTKCTinCanSettings;
  v2 = [(NTKCTinCanSettings *)&v6 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _NTKCTinCanSettings_HandleSettingsChanged, *MEMORY[0x277D71528], v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel__handlePrefsChanged name:*MEMORY[0x277D37C08] object:0];

    [(NTKCTinCanSettings *)v2 _readValue];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D71528], self);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D37C08] object:0];

  v5.receiver = self;
  v5.super_class = NTKCTinCanSettings;
  [(NTKCTinCanSettings *)&v5 dealloc];
}

- (void)_readValue
{
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = [v3 isPaired];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D2BA58]);
    v6 = [v5 initWithDomain:*MEMORY[0x277D71538]];
    v7 = [v6 synchronize];
    v9 = 0;
    v8 = [v6 BOOLForKey:*MEMORY[0x277D71530] keyExistsAndHasValidFormat:&v9];
    self->_tinCanEnabled = v8 & 1 | ((v9 & 1) == 0);
  }

  else
  {
    self->_tinCanEnabled = 1;
  }
}

- (void)_handlePrefsChanged
{
  [(NTKCTinCanSettings *)self _readValue];

  [(NTKCTinCanSettings *)self _notifyClientsOfChange];
}

- (void)_notifyClientsOfChange
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"NTKCTinCanSettingsChangedNotification" object:self];
}

@end