@interface MBRestoreDepot
+ (BOOL)disposeAllDepotsForPersona:(id)persona error:(id *)error;
+ (id)restoreDepotWithPersona:(id)persona destination:(id)destination restoreDepotOverridePath:(id)path error:(id *)error;
- (BOOL)containsAsset:(id)asset alreadyPresentOut:(BOOL *)out error:(id *)error;
- (BOOL)depositWithAsset:(id)asset assetPath:(id)path error:(id *)error;
- (BOOL)disposeWithShouldDelete:(BOOL)delete error:(id *)error;
- (NSString)description;
- (_TtC7backupd14MBRestoreDepot)init;
- (id)stagingTemporaryDirectoryWithIdentifier:(id)identifier error:(id *)error;
@end

@implementation MBRestoreDepot

+ (id)restoreDepotWithPersona:(id)persona destination:(id)destination restoreDepotOverridePath:(id)path error:(id *)error
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (path)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    path = v12;
  }

  else
  {
    v11 = 0;
  }

  personaCopy = persona;
  v14 = sub_10002E0EC(personaCopy, v8, v10, v11, path);

  return v14;
}

- (BOOL)disposeWithShouldDelete:(BOOL)delete error:(id *)error
{
  selfCopy = self;
  sub_1000289A8(delete);

  return 1;
}

+ (BOOL)disposeAllDepotsForPersona:(id)persona error:(id *)error
{
  swift_getObjCClassMetadata();
  personaCopy = persona;
  sub_1000299B0(personaCopy);

  return 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_10002A2B0();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (id)stagingTemporaryDirectoryWithIdentifier:(id)identifier error:(id *)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  selfCopy = self;
  v9 = sub_10002A85C(v5, v7);

  return v9;
}

- (BOOL)containsAsset:(id)asset alreadyPresentOut:(BOOL *)out error:(id *)error
{
  assetCopy = asset;
  selfCopy = self;
  sub_100028AC8(assetCopy, out);

  return 1;
}

- (BOOL)depositWithAsset:(id)asset assetPath:(id)path error:(id *)error
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  assetCopy = asset;
  selfCopy = self;
  sub_100028BE4(assetCopy);

  return 1;
}

- (_TtC7backupd14MBRestoreDepot)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end