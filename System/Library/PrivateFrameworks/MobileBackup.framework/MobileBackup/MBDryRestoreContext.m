@interface MBDryRestoreContext
- (_TtC7backupd19MBDryRestoreContext)init;
- (id)domainForName:(id)a3 containerID:(id)a4 domainManager:(id)a5;
@end

@implementation MBDryRestoreContext

- (_TtC7backupd19MBDryRestoreContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)domainForName:(id)a3 containerID:(id)a4 domainManager:(id)a5
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a4)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = a5;
  v14 = self;
  v15 = sub_1000114B4(v8, v10, v11, a4);

  return v15;
}

@end