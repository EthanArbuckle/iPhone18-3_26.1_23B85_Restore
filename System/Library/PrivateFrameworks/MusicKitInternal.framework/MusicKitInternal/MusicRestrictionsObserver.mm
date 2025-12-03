@interface MusicRestrictionsObserver
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation MusicRestrictionsObserver

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  if (info)
  {
    sub_1D5614BB8();
  }

  notificationCopy = notification;
  selfCopy = self;
  sub_1D528D648();
}

@end