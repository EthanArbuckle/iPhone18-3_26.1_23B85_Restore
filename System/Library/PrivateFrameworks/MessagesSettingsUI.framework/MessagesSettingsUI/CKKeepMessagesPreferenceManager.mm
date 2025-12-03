@interface CKKeepMessagesPreferenceManager
+ (IMSyncedSettingsManaging)syncedSettingsManager;
+ (id)keepMessagesPreference;
- (void)_setLegacyKeepMessagesPreference:(id)preference;
- (void)addSyncedSettingObserver:(id)observer selector:(SEL)selector key:(int64_t)key;
- (void)dealloc;
- (void)removeSyncedSettingObserver:(id)observer key:(int64_t)key;
- (void)updateKeepMessagesPreference:(id)preference;
@end

@implementation CKKeepMessagesPreferenceManager

- (void)dealloc
{
  [CKKeepMessagesPreferenceManager setSyncedSettingsManager:0];
  v3.receiver = self;
  v3.super_class = CKKeepMessagesPreferenceManager;
  [(CKKeepMessagesPreferenceManager *)&v3 dealloc];
}

- (void)updateKeepMessagesPreference:(id)preference
{
  preferenceCopy = preference;
  v4 = +[CKKeepMessagesPreferenceManager syncedSettingsManager];
  [v4 setSettingValue:preferenceCopy forKey:0];
}

+ (id)keepMessagesPreference
{
  v2 = +[CKKeepMessagesPreferenceManager syncedSettingsManager];
  v3 = [v2 settingValueForKey:0];

  return v3;
}

- (void)addSyncedSettingObserver:(id)observer selector:(SEL)selector key:(int64_t)key
{
  observerCopy = observer;
  v8 = +[CKKeepMessagesPreferenceManager syncedSettingsManager];
  [v8 addObserver:observerCopy selector:selector key:key];
}

- (void)removeSyncedSettingObserver:(id)observer key:(int64_t)key
{
  observerCopy = observer;
  v6 = +[CKKeepMessagesPreferenceManager syncedSettingsManager];
  [v6 removeObserver:observerCopy key:key];
}

+ (IMSyncedSettingsManaging)syncedSettingsManager
{
  v2 = _syncedSettingsManager;
  if (!_syncedSettingsManager)
  {
    mEMORY[0x277D18DE8] = [MEMORY[0x277D18DE8] sharedManager];
    v4 = _syncedSettingsManager;
    _syncedSettingsManager = mEMORY[0x277D18DE8];

    v2 = _syncedSettingsManager;
  }

  return v2;
}

- (void)_setLegacyKeepMessagesPreference:(id)preference
{
  preferenceCopy = preference;
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
  CFPreferencesSetAppValue(@"KeepMessageForDays", preferenceCopy, @"com.apple.MobileSMS");

  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  notify_post("com.apple.MobileSMS.KeepMessages.shouldUpdateDevices");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.KeepMessages.changed", 0, 0, 1u);
}

@end