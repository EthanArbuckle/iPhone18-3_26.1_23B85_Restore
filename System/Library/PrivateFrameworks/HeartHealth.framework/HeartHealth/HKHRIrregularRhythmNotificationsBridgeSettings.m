@interface HKHRIrregularRhythmNotificationsBridgeSettings
- (HKHRIrregularRhythmNotificationsBridgeSettings)initWithSettingHidden:(BOOL)a3 notificationsOn:(BOOL)a4 shouldLinkToOnboarding:(BOOL)a5 userInteractionEnabled:(BOOL)a6 headerText:(id)a7 footer:(id)a8;
@end

@implementation HKHRIrregularRhythmNotificationsBridgeSettings

- (HKHRIrregularRhythmNotificationsBridgeSettings)initWithSettingHidden:(BOOL)a3 notificationsOn:(BOOL)a4 shouldLinkToOnboarding:(BOOL)a5 userInteractionEnabled:(BOOL)a6 headerText:(id)a7 footer:(id)a8
{
  v14 = a7;
  v15 = a8;
  v23.receiver = self;
  v23.super_class = HKHRIrregularRhythmNotificationsBridgeSettings;
  v16 = [(HKHRIrregularRhythmNotificationsBridgeSettings *)&v23 init];
  v17 = v16;
  if (v16)
  {
    v16->_isSettingHidden = a3;
    v16->_areNotificationsOn = a4;
    v16->_shouldLinkToOnboarding = a5;
    v16->_isUserInteractionEnabled = a6;
    v18 = [v14 copy];
    headerText = v17->_headerText;
    v17->_headerText = v18;

    v20 = [v15 copy];
    footer = v17->_footer;
    v17->_footer = v20;
  }

  return v17;
}

@end