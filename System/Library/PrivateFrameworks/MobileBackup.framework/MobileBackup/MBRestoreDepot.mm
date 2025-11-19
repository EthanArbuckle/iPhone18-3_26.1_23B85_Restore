@interface MBRestoreDepot
+ (BOOL)disposeAllDepotsForPersona:(id)a3 error:(id *)a4;
+ (id)restoreDepotWithPersona:(id)a3 destination:(id)a4 restoreDepotOverridePath:(id)a5 error:(id *)a6;
- (BOOL)containsAsset:(id)a3 alreadyPresentOut:(BOOL *)a4 error:(id *)a5;
- (BOOL)depositWithAsset:(id)a3 assetPath:(id)a4 error:(id *)a5;
- (BOOL)disposeWithShouldDelete:(BOOL)a3 error:(id *)a4;
- (NSString)description;
- (_TtC7backupd14MBRestoreDepot)init;
- (id)stagingTemporaryDirectoryWithIdentifier:(id)a3 error:(id *)a4;
@end

@implementation MBRestoreDepot

+ (id)restoreDepotWithPersona:(id)a3 destination:(id)a4 restoreDepotOverridePath:(id)a5 error:(id *)a6
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a5)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = a3;
  v14 = sub_10002E0EC(v13, v8, v10, v11, a5);

  return v14;
}

- (BOOL)disposeWithShouldDelete:(BOOL)a3 error:(id *)a4
{
  v5 = self;
  sub_1000289A8(a3);

  return 1;
}

+ (BOOL)disposeAllDepotsForPersona:(id)a3 error:(id *)a4
{
  swift_getObjCClassMetadata();
  v5 = a3;
  sub_1000299B0(v5);

  return 1;
}

- (NSString)description
{
  v2 = self;
  sub_10002A2B0();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (id)stagingTemporaryDirectoryWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = self;
  v9 = sub_10002A85C(v5, v7);

  return v9;
}

- (BOOL)containsAsset:(id)a3 alreadyPresentOut:(BOOL *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = self;
  sub_100028AC8(v7, a4);

  return 1;
}

- (BOOL)depositWithAsset:(id)a3 assetPath:(id)a4 error:(id *)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100028BE4(v7);

  return 1;
}

- (_TtC7backupd14MBRestoreDepot)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end