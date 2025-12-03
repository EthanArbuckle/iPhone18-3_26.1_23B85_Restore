@interface HMDHome.DefaultSwiftExtensions
- (_TtCE19HomeKitDaemonLegacyCSo7HMDHomeP33_957716E028C4BEBA7E0C7DA065DD87AC22DefaultSwiftExtensions)init;
- (void)configureWithHome:(id)home;
@end

@implementation HMDHome.DefaultSwiftExtensions

- (void)configureWithHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  remoteEventRouterClientController = [(HMDHome.DefaultSwiftExtensions *)homeCopy remoteEventRouterClientController];
  if (remoteEventRouterClientController)
  {
    v6 = remoteEventRouterClientController;
    v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo7HMDHomeP33_957716E028C4BEBA7E0C7DA065DD87AC22DefaultSwiftExtensions_accessoryInfoFetchController);
    msgDispatcher = [(HMDHome.DefaultSwiftExtensions *)homeCopy msgDispatcher];
    if (!msgDispatcher)
    {
      __break(1u);
      return;
    }

    v9 = msgDispatcher;
    sub_25321CA58(msgDispatcher, v6);
  }

  else
  {
    v9 = homeCopy;
    homeCopy = selfCopy;
  }
}

- (_TtCE19HomeKitDaemonLegacyCSo7HMDHomeP33_957716E028C4BEBA7E0C7DA065DD87AC22DefaultSwiftExtensions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end