@interface CKKeepMessagesPreferenceManager
+ (IMSyncedSettingsManaging)syncedSettingsManager;
+ (id)keepMessagesPreference;
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
    v3 = objc_alloc_init(MEMORY[0x277D18DE8]);
    v4 = _syncedSettingsManager;
    _syncedSettingsManager = v3;

    v2 = _syncedSettingsManager;
  }

  return v2;
}

@end