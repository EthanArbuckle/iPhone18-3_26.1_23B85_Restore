@interface CKKeepMessagesPreferenceManager
+ (IMSyncedSettingsManaging)syncedSettingsManager;
+ (id)keepMessagesPreference;
- (void)_setLegacyKeepMessagesPreference:(id)a3;
- (void)addSyncedSettingObserver:(id)a3 selector:(SEL)a4 key:(int64_t)a5;
- (void)dealloc;
- (void)removeSyncedSettingObserver:(id)a3 key:(int64_t)a4;
- (void)updateKeepMessagesPreference:(id)a3;
@end

@implementation CKKeepMessagesPreferenceManager

- (void)dealloc
{
  [CKKeepMessagesPreferenceManager setSyncedSettingsManager:0];
  v3.receiver = self;
  v3.super_class = CKKeepMessagesPreferenceManager;
  [(CKKeepMessagesPreferenceManager *)&v3 dealloc];
}

- (void)updateKeepMessagesPreference:(id)a3
{
  v3 = a3;
  v4 = +[CKKeepMessagesPreferenceManager syncedSettingsManager];
  [v4 setSettingValue:v3 forKey:0];
}

+ (id)keepMessagesPreference
{
  v2 = +[CKKeepMessagesPreferenceManager syncedSettingsManager];
  v3 = [v2 settingValueForKey:0];

  return v3;
}

- (void)addSyncedSettingObserver:(id)a3 selector:(SEL)a4 key:(int64_t)a5
{
  v7 = a3;
  v8 = +[CKKeepMessagesPreferenceManager syncedSettingsManager];
  [v8 addObserver:v7 selector:a4 key:a5];
}

- (void)removeSyncedSettingObserver:(id)a3 key:(int64_t)a4
{
  v5 = a3;
  v6 = +[CKKeepMessagesPreferenceManager syncedSettingsManager];
  [v6 removeObserver:v5 key:a4];
}

+ (IMSyncedSettingsManaging)syncedSettingsManager
{
  v2 = _syncedSettingsManager;
  if (!_syncedSettingsManager)
  {
    v3 = [MEMORY[0x277D18DE8] sharedManager];
    v4 = _syncedSettingsManager;
    _syncedSettingsManager = v3;

    v2 = _syncedSettingsManager;
  }

  return v2;
}

- (void)_setLegacyKeepMessagesPreference:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x259C9B360](@"com.apple.MobileSMS", @"KeepMessagesVersionID");
  v7 = v4;
  if (v4)
  {
    v5 = [v4 integerValue] + 1;
  }

  else
  {
    v5 = 1;
  }

  CFPreferencesSetAppValue(@"KeepMessagesVersionID", [MEMORY[0x277CCABB0] numberWithInteger:v5], @"com.apple.MobileSMS");
  CFPreferencesSetAppValue(@"KeepMessageForDays", v3, @"com.apple.MobileSMS");

  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  notify_post("com.apple.MobileSMS.KeepMessages.shouldUpdateDevices");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.KeepMessages.changed", 0, 0, 1u);
}

@end