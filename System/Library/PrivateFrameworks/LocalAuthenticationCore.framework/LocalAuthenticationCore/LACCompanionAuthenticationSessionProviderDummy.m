@interface LACCompanionAuthenticationSessionProviderDummy
- (_TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy)init;
- (void)dealloc;
- (void)notificationCenter:(id)a3 didReceiveNotification:(const __CFString *)a4;
@end

@implementation LACCompanionAuthenticationSessionProviderDummy

- (void)notificationCenter:(id)a3 didReceiveNotification:(const __CFString *)a4
{
  v5 = a4;
  v6 = self;
  if (LACDarwinNotificationsEqual(v5, @"com.apple.LocalAuthentication.GlobalDomainDidChange"))
  {
    (*((*MEMORY[0x1E69E7D40] & v6->super.isa) + 0xC0))(destructiveProjectEnumData for LACLog, 0);
  }
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedInstance];
  [v5 removeObserver_];

  v6.receiver = v4;
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