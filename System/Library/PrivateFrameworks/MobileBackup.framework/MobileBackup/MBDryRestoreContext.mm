@interface MBDryRestoreContext
- (_TtC7backupd19MBDryRestoreContext)init;
- (id)domainForName:(id)name containerID:(id)d domainManager:(id)manager;
@end

@implementation MBDryRestoreContext

- (_TtC7backupd19MBDryRestoreContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)domainForName:(id)name containerID:(id)d domainManager:(id)manager
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (d)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v12;
  }

  else
  {
    v11 = 0;
  }

  managerCopy = manager;
  selfCopy = self;
  v15 = sub_1000114B4(v8, v10, v11, d);

  return v15;
}

@end