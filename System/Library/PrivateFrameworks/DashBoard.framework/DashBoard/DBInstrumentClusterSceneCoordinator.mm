@interface DBInstrumentClusterSceneCoordinator
- (_TtC9DashBoard35DBInstrumentClusterSceneCoordinator)init;
- (void)invalidate;
- (void)navigationStateProvider:(id)provider frontmostIdentifierDidChange:(id)change;
- (void)navigationStateProvider:(id)provider navigatingIdentifiersDidChange:(id)change;
- (void)processMonitor:(id)monitor didHandleDeathOfBundleIdentifier:(id)identifier;
- (void)processMonitor:(id)monitor shouldHandleDeathOfBundleIdentifier:(id)identifier isCrash:(BOOL)crash;
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
  selfCopy = self;
  sub_2482CF574();
}

- (void)navigationStateProvider:(id)provider navigatingIdentifiersDidChange:(id)change
{
  providerCopy = provider;
  selfCopy = self;
  sub_2482D3B40(providerCopy);
}

- (void)navigationStateProvider:(id)provider frontmostIdentifierDidChange:(id)change
{
  v6 = sub_248383960();
  v8 = v7;
  providerCopy = provider;
  selfCopy = self;
  sub_2482D01C8(providerCopy, v6, v8);
}

- (void)processMonitor:(id)monitor shouldHandleDeathOfBundleIdentifier:(id)identifier isCrash:(BOOL)crash
{
  v8 = sub_248383960();
  v10 = v9;
  monitorCopy = monitor;
  selfCopy = self;
  sub_2482D3C58(v8, v10, crash);
}

- (void)processMonitor:(id)monitor didHandleDeathOfBundleIdentifier:(id)identifier
{
  sub_248383960();
  monitorCopy = monitor;
  selfCopy = self;
  sub_2482D41D8();
}

@end