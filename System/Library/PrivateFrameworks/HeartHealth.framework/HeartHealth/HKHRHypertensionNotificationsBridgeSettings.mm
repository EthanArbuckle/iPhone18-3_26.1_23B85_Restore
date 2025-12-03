@interface HKHRHypertensionNotificationsBridgeSettings
- (HKHRHypertensionNotificationsBridgeSettings)initWithSettingsVisible:(BOOL)visible settingsEnabled:(BOOL)enabled showOnboarding:(BOOL)onboarding userInteractionEnabled:(BOOL)interactionEnabled footer:(id)footer;
@end

@implementation HKHRHypertensionNotificationsBridgeSettings

- (HKHRHypertensionNotificationsBridgeSettings)initWithSettingsVisible:(BOOL)visible settingsEnabled:(BOOL)enabled showOnboarding:(BOOL)onboarding userInteractionEnabled:(BOOL)interactionEnabled footer:(id)footer
{
  footerCopy = footer;
  v17.receiver = self;
  v17.super_class = HKHRHypertensionNotificationsBridgeSettings;
  v14 = [(HKHRHypertensionNotificationsBridgeSettings *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_settingVisible = visible;
    v14->_settingEnabled = enabled;
    v14->_showOnboarding = onboarding;
    v14->_userInteractionEnabled = interactionEnabled;
    objc_storeStrong(&v14->_footer, footer);
  }

  return v15;
}

@end