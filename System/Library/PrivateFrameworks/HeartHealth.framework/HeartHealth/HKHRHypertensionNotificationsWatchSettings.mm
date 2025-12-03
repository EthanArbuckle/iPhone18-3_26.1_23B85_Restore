@interface HKHRHypertensionNotificationsWatchSettings
- (HKHRHypertensionNotificationsWatchSettings)initWithSettingsVisible:(BOOL)visible settingsEnabled:(BOOL)enabled userInteractionEnabled:(BOOL)interactionEnabled footer:(id)footer;
@end

@implementation HKHRHypertensionNotificationsWatchSettings

- (HKHRHypertensionNotificationsWatchSettings)initWithSettingsVisible:(BOOL)visible settingsEnabled:(BOOL)enabled userInteractionEnabled:(BOOL)interactionEnabled footer:(id)footer
{
  footerCopy = footer;
  v15.receiver = self;
  v15.super_class = HKHRHypertensionNotificationsWatchSettings;
  v12 = [(HKHRHypertensionNotificationsWatchSettings *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_settingVisible = visible;
    v12->_settingEnabled = enabled;
    v12->_userInteractionEnabled = interactionEnabled;
    objc_storeStrong(&v12->_footer, footer);
  }

  return v13;
}

@end