@interface MBRestorePerformer
- (BOOL)disposeAndReturnError:(id *)error;
- (BOOL)placeAsset:(id)asset isHardlink:(BOOL)hardlink metadata:(id)metadata error:(id *)error;
- (BOOL)placeWithSymlink:(id)symlink symlinkTarget:(id)target isHardlink:(BOOL)hardlink error:(id *)error;
- (BOOL)placeWithZeroByteFile:(id)file isHardlink:(BOOL)hardlink error:(id *)error;
- (NSString)description;
- (_TtC7backupd18MBRestorePerformer)init;
- (_TtC7backupd18MBRestorePerformer)initWithIdentifier:(id)identifier destinationPath:(id)path policy:(id)policy depot:(id)depot decrypter:(id)decrypter progressModel:(id)model logger:(id)logger error:(id *)self0;
- (void)recordPlacingDurationWithStart:(id)start end:(id)end;
@end

@implementation MBRestorePerformer

- (_TtC7backupd18MBRestorePerformer)initWithIdentifier:(id)identifier destinationPath:(id)path policy:(id)policy depot:(id)depot decrypter:(id)decrypter progressModel:(id)model logger:(id)logger error:(id *)self0
{
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  policyCopy = policy;
  depotCopy = depot;
  swift_unknownObjectRetain();
  modelCopy = model;
  loggerCopy = logger;
  return sub_100033230(v14, v16, v17, v19, policyCopy, depotCopy, decrypter, model, logger);
}

- (BOOL)disposeAndReturnError:(id *)error
{
  selfCopy = self;
  sub_10003247C();

  return 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_100033A64();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)recordPlacingDurationWithStart:(id)start end:(id)end
{
  v5 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  v6 = v5 - 8;
  v28 = *(v5 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v5);
  v9 = &selfCopy - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &selfCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &selfCopy - v16;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = *(&self->super.isa + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
  v19 = *(v6 + 56);
  v20 = v11[2];
  v20(v9, v17, v10);
  v20(&v9[v19], v15, v10);
  v21 = OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations;
  v22 = *(v18 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations);
  selfCopy = self;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v18 + v21) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_10000F2D8(0, v22[2] + 1, 1, v22);
    *(v18 + v21) = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_10000F2D8(v24 > 1, v25 + 1, 1, v22);
  }

  v22[2] = v25 + 1;
  sub_100023344(v9, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25);
  *(v18 + v21) = v22;
  v26 = v11[1];
  v26(v15, v10);
  v26(v17, v10);
}

- (BOOL)placeWithSymlink:(id)symlink symlinkTarget:(id)target isHardlink:(BOOL)hardlink error:(id *)error
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100032A38(symlink, v9, v11, hardlink);

  swift_unknownObjectRelease();
  return 1;
}

- (BOOL)placeWithZeroByteFile:(id)file isHardlink:(BOOL)hardlink error:(id *)error
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000327E4(file, hardlink);

  swift_unknownObjectRelease();
  return 1;
}

- (BOOL)placeAsset:(id)asset isHardlink:(BOOL)hardlink metadata:(id)metadata error:(id *)error
{
  swift_unknownObjectRetain();
  metadataCopy = metadata;
  selfCopy = self;
  sub_100032C9C(asset, hardlink, metadataCopy);

  swift_unknownObjectRelease();
  return 1;
}

- (_TtC7backupd18MBRestorePerformer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end