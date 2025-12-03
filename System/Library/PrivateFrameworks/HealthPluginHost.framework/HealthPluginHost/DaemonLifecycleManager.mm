@interface DaemonLifecycleManager
- (NSString)description;
- (_TtC10healthappd22DaemonLifecycleManager)init;
- (void)applicationsDidUninstall:(id)uninstall;
@end

@implementation DaemonLifecycleManager

- (NSString)description
{
  selfCopy = self;
  sub_100008C6C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC10healthappd22DaemonLifecycleManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)applicationsDidUninstall:(id)uninstall
{
  if (uninstall)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_100009B20(v4);
}

@end