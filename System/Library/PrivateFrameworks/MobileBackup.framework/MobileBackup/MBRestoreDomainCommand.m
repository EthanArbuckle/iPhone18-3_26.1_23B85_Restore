@interface MBRestoreDomainCommand
+ (BOOL)restoreWithDomain:(id)a3 rootPath:(id)a4 snapshotUUID:(id)a5 deviceUUID:(id)a6 verified:(BOOL)a7 account:(id)a8 connection:(id)a9 error:(id *)a10;
- (_TtC7backupd22MBRestoreDomainCommand)init;
@end

@implementation MBRestoreDomainCommand

+ (BOOL)restoreWithDomain:(id)a3 rootPath:(id)a4 snapshotUUID:(id)a5 deviceUUID:(id)a6 verified:(BOOL)a7 account:(id)a8 connection:(id)a9 error:(id *)a10
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = a8;
  v24 = a9;
  sub_1000414E4(v11, v13, v14, v16, v17, v19, v20, v22, a7, v23, v24);

  return 1;
}

- (_TtC7backupd22MBRestoreDomainCommand)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MBRestoreDomainCommand *)&v3 init];
}

@end