@interface CKKeepMessagesPreferenceManager
+ (IMSyncedSettingsManaging)syncedSettingsManager;
+ (id)keepMessagesPreference;
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
    v3 = objc_alloc_init(MEMORY[0x277D18DE8]);
    v4 = _syncedSettingsManager;
    _syncedSettingsManager = v3;

    v2 = _syncedSettingsManager;
  }

  return v2;
}

@end