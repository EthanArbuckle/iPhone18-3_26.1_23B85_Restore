@interface HMDHome.DefaultSwiftExtensions
- (_TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions)init;
- (void)configureWithHome:(id)a3;
- (void)unconfigureWithHome:(id)a3;
@end

@implementation HMDHome.DefaultSwiftExtensions

- (void)configureWithHome:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2297A4F88(v4);
}

- (void)unconfigureWithHome:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_userPresenceSubscriptionManager);
  if (v3)
  {
    v5 = objc_opt_self();
    v7 = self;
    v6 = [v5 defaultCenter];
    [v6 removeObserver_];

    [*(v3 + OBJC_IVAR____TtC13HomeKitDaemon37UserPresenceUpdateSubscriptionManager_messageDispatcher) deregisterReceiver_];
  }
}

- (_TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end