@interface HKHRHypertensionNotificationsWatchSettings
- (HKHRHypertensionNotificationsWatchSettings)initWithSettingsVisible:(BOOL)a3 settingsEnabled:(BOOL)a4 userInteractionEnabled:(BOOL)a5 footer:(id)a6;
@end

@implementation HKHRHypertensionNotificationsWatchSettings

- (HKHRHypertensionNotificationsWatchSettings)initWithSettingsVisible:(BOOL)a3 settingsEnabled:(BOOL)a4 userInteractionEnabled:(BOOL)a5 footer:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = HKHRHypertensionNotificationsWatchSettings;
  v12 = [(HKHRHypertensionNotificationsWatchSettings *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_settingVisible = a3;
    v12->_settingEnabled = a4;
    v12->_userInteractionEnabled = a5;
    objc_storeStrong(&v12->_footer, a6);
  }

  return v13;
}

@end