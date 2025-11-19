@interface DBInstrumentClusterSceneCoordinator
- (_TtC9DashBoard35DBInstrumentClusterSceneCoordinator)init;
- (void)invalidate;
- (void)navigationStateProvider:(id)a3 frontmostIdentifierDidChange:(id)a4;
- (void)navigationStateProvider:(id)a3 navigatingIdentifiersDidChange:(id)a4;
- (void)processMonitor:(id)a3 didHandleDeathOfBundleIdentifier:(id)a4;
- (void)processMonitor:(id)a3 shouldHandleDeathOfBundleIdentifier:(id)a4 isCrash:(BOOL)a5;
@end

@implementation DBInstrumentClusterSceneCoordinator

- (_TtC9DashBoard35DBInstrumentClusterSceneCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)invalidate
{
  v2 = self;
  sub_2482CF574();
}

- (void)navigationStateProvider:(id)a3 navigatingIdentifiersDidChange:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_2482D3B40(v5);
}

- (void)navigationStateProvider:(id)a3 frontmostIdentifierDidChange:(id)a4
{
  v6 = sub_248383960();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_2482D01C8(v9, v6, v8);
}

- (void)processMonitor:(id)a3 shouldHandleDeathOfBundleIdentifier:(id)a4 isCrash:(BOOL)a5
{
  v8 = sub_248383960();
  v10 = v9;
  v11 = a3;
  v12 = self;
  sub_2482D3C58(v8, v10, a5);
}

- (void)processMonitor:(id)a3 didHandleDeathOfBundleIdentifier:(id)a4
{
  sub_248383960();
  v6 = a3;
  v7 = self;
  sub_2482D41D8();
}

@end