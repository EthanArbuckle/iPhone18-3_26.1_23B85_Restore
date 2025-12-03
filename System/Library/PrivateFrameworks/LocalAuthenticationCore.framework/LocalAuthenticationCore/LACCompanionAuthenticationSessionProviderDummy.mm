@interface LACCompanionAuthenticationSessionProviderDummy
- (_TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy)init;
- (void)dealloc;
- (void)notificationCenter:(id)center didReceiveNotification:(const __CFString *)notification;
@end

@implementation LACCompanionAuthenticationSessionProviderDummy

- (void)notificationCenter:(id)center didReceiveNotification:(const __CFString *)notification
{
  notificationCopy = notification;
  selfCopy = self;
  if (LACDarwinNotificationsEqual(notificationCopy, @"com.apple.LocalAuthentication.GlobalDomainDidChange"))
  {
    (*((*MEMORY[0x1E69E7D40] & selfCopy->super.isa) + 0xC0))(destructiveProjectEnumData for LACLog, 0);
  }
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for LACCompanionAuthenticationSessionProviderDummy();
  [(LACCompanionAuthenticationSessionProviderDummy *)&v6 dealloc];
}

- (_TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end