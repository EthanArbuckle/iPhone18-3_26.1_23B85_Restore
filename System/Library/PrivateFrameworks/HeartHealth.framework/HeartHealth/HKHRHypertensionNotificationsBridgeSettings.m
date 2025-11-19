@interface HKHRHypertensionNotificationsBridgeSettings
- (HKHRHypertensionNotificationsBridgeSettings)initWithSettingsVisible:(BOOL)a3 settingsEnabled:(BOOL)a4 showOnboarding:(BOOL)a5 userInteractionEnabled:(BOOL)a6 footer:(id)a7;
@end

@implementation HKHRHypertensionNotificationsBridgeSettings

- (HKHRHypertensionNotificationsBridgeSettings)initWithSettingsVisible:(BOOL)a3 settingsEnabled:(BOOL)a4 showOnboarding:(BOOL)a5 userInteractionEnabled:(BOOL)a6 footer:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = HKHRHypertensionNotificationsBridgeSettings;
  v14 = [(HKHRHypertensionNotificationsBridgeSettings *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_settingVisible = a3;
    v14->_settingEnabled = a4;
    v14->_showOnboarding = a5;
    v14->_userInteractionEnabled = a6;
    objc_storeStrong(&v14->_footer, a7);
  }

  return v15;
}

@end