@interface HKHRIrregularRhythmNotificationsBridgeSettings
- (HKHRIrregularRhythmNotificationsBridgeSettings)initWithSettingHidden:(BOOL)hidden notificationsOn:(BOOL)on shouldLinkToOnboarding:(BOOL)onboarding userInteractionEnabled:(BOOL)enabled headerText:(id)text footer:(id)footer;
@end

@implementation HKHRIrregularRhythmNotificationsBridgeSettings

- (HKHRIrregularRhythmNotificationsBridgeSettings)initWithSettingHidden:(BOOL)hidden notificationsOn:(BOOL)on shouldLinkToOnboarding:(BOOL)onboarding userInteractionEnabled:(BOOL)enabled headerText:(id)text footer:(id)footer
{
  textCopy = text;
  footerCopy = footer;
  v23.receiver = self;
  v23.super_class = HKHRIrregularRhythmNotificationsBridgeSettings;
  v16 = [(HKHRIrregularRhythmNotificationsBridgeSettings *)&v23 init];
  v17 = v16;
  if (v16)
  {
    v16->_isSettingHidden = hidden;
    v16->_areNotificationsOn = on;
    v16->_shouldLinkToOnboarding = onboarding;
    v16->_isUserInteractionEnabled = enabled;
    v18 = [textCopy copy];
    headerText = v17->_headerText;
    v17->_headerText = v18;

    v20 = [footerCopy copy];
    footer = v17->_footer;
    v17->_footer = v20;
  }

  return v17;
}

@end