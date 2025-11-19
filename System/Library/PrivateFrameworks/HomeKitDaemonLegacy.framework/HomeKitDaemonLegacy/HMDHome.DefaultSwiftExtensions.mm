@interface HMDHome.DefaultSwiftExtensions
- (_TtCE19HomeKitDaemonLegacyCSo7HMDHomeP33_957716E028C4BEBA7E0C7DA065DD87AC22DefaultSwiftExtensions)init;
- (void)configureWithHome:(id)a3;
@end

@implementation HMDHome.DefaultSwiftExtensions

- (void)configureWithHome:(id)a3
{
  v10 = a3;
  v4 = self;
  v5 = [(HMDHome.DefaultSwiftExtensions *)v10 remoteEventRouterClientController];
  if (v5)
  {
    v6 = v5;
    v7 = *(&v4->super.isa + OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo7HMDHomeP33_957716E028C4BEBA7E0C7DA065DD87AC22DefaultSwiftExtensions_accessoryInfoFetchController);
    v8 = [(HMDHome.DefaultSwiftExtensions *)v10 msgDispatcher];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    sub_25321CA58(v8, v6);
  }

  else
  {
    v9 = v10;
    v10 = v4;
  }
}

- (_TtCE19HomeKitDaemonLegacyCSo7HMDHomeP33_957716E028C4BEBA7E0C7DA065DD87AC22DefaultSwiftExtensions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end