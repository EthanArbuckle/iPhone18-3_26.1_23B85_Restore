@interface MusicRestrictionsObserver
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation MusicRestrictionsObserver

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  if (a4)
  {
    sub_1D5614BB8();
  }

  v6 = a3;
  v7 = self;
  sub_1D528D648();
}

@end