@interface MTPairedDevicePreferences
+ (id)sharedInstance;
- (BOOL)_isPushAlertsEnabledInPreferences;
- (BOOL)isPushAlertsEnabled;
- (MTPairedDevicePreferences)init;
- (void)_handlePrefsChanged;
- (void)_notifyClientsOfChange;
- (void)dealloc;
@end

@implementation MTPairedDevicePreferences

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[MTPairedDevicePreferences sharedInstance];
  }

  v3 = sharedInstance___preferences;

  return v3;
}

uint64_t __43__MTPairedDevicePreferences_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance___preferences;
  sharedInstance___preferences = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MTPairedDevicePreferences)init
{
  v5.receiver = self;
  v5.super_class = MTPairedDevicePreferences;
  v2 = [(MTPairedDevicePreferences *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _MTPairedDevicePreferences_HandlePreferencesChanged, @"BulletinDistributorBBSectionsDidChangeNotification", v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    v2->_pushAlertsEnabled = [(MTPairedDevicePreferences *)v2 _isPushAlertsEnabledInPreferences];
  }

  return v2;
}

- (BOOL)isPushAlertsEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  pushAlertsEnabled = v2->_pushAlertsEnabled;
  objc_sync_exit(v2);

  return pushAlertsEnabled;
}

- (BOOL)_isPushAlertsEnabledInPreferences
{
  v2 = [objc_alloc(MEMORY[0x1E69B3588]) initWithDomain:@"com.apple.bulletinboard.apps"];
  v3 = [v2 dictionaryForKey:@"com.apple.mobiletimer"];
  v4 = [v3 objectForKey:@"BPSNanoBulletinShowsAlerts"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)_handlePrefsChanged
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(MTPairedDevicePreferences *)self _isPushAlertsEnabledInPreferences];
  v4 = MTLogForCategory(6);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v9 = self;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ _handlePrefsChanged: pushAlertsEnabled = %d", buf, 0x12u);
  }

  v5 = self;
  objc_sync_enter(v5);
  v5->_pushAlertsEnabled = v3;
  objc_sync_exit(v5);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MTPairedDevicePreferences__handlePrefsChanged__block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_notifyClientsOfChange
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"MTPairedDevicePreferencesChanged" object:self];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = MTPairedDevicePreferences;
  [(MTPairedDevicePreferences *)&v4 dealloc];
}

@end