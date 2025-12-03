@interface MBRestoreDomainCommand
+ (BOOL)restoreWithDomain:(id)domain rootPath:(id)path snapshotUUID:(id)d deviceUUID:(id)iD verified:(BOOL)verified account:(id)account connection:(id)connection error:(id *)self0;
- (_TtC7backupd22MBRestoreDomainCommand)init;
@end

@implementation MBRestoreDomainCommand

+ (BOOL)restoreWithDomain:(id)domain rootPath:(id)path snapshotUUID:(id)d deviceUUID:(id)iD verified:(BOOL)verified account:(id)account connection:(id)connection error:(id *)self0
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  accountCopy = account;
  connectionCopy = connection;
  sub_1000414E4(v11, v13, v14, v16, v17, v19, v20, v22, verified, accountCopy, connectionCopy);

  return 1;
}

- (_TtC7backupd22MBRestoreDomainCommand)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MBRestoreDomainCommand *)&v3 init];
}

@end