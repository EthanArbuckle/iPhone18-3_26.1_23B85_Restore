@interface DaemonLifecycleManager
- (NSString)description;
- (_TtC10healthappd22DaemonLifecycleManager)init;
- (void)applicationsDidUninstall:(id)a3;
@end

@implementation DaemonLifecycleManager

- (NSString)description
{
  v2 = self;
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

- (void)applicationsDidUninstall:(id)a3
{
  if (a3)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_100009B20(v4);
}

@end