@interface MBRestorePerformer
- (BOOL)disposeAndReturnError:(id *)a3;
- (BOOL)placeAsset:(id)a3 isHardlink:(BOOL)a4 metadata:(id)a5 error:(id *)a6;
- (BOOL)placeWithSymlink:(id)a3 symlinkTarget:(id)a4 isHardlink:(BOOL)a5 error:(id *)a6;
- (BOOL)placeWithZeroByteFile:(id)a3 isHardlink:(BOOL)a4 error:(id *)a5;
- (NSString)description;
- (_TtC7backupd18MBRestorePerformer)init;
- (_TtC7backupd18MBRestorePerformer)initWithIdentifier:(id)a3 destinationPath:(id)a4 policy:(id)a5 depot:(id)a6 decrypter:(id)a7 progressModel:(id)a8 logger:(id)a9 error:(id *)a10;
- (void)recordPlacingDurationWithStart:(id)a3 end:(id)a4;
@end

@implementation MBRestorePerformer

- (_TtC7backupd18MBRestorePerformer)initWithIdentifier:(id)a3 destinationPath:(id)a4 policy:(id)a5 depot:(id)a6 decrypter:(id)a7 progressModel:(id)a8 logger:(id)a9 error:(id *)a10
{
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = a5;
  v21 = a6;
  swift_unknownObjectRetain();
  v22 = a8;
  v23 = a9;
  return sub_100033230(v14, v16, v17, v19, v20, v21, a7, a8, a9);
}

- (BOOL)disposeAndReturnError:(id *)a3
{
  v3 = self;
  sub_10003247C();

  return 1;
}

- (NSString)description
{
  v2 = self;
  sub_100033A64();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)recordPlacingDurationWithStart:(id)a3 end:(id)a4
{
  v5 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  v6 = v5 - 8;
  v28 = *(v5 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = *(&self->super.isa + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
  v19 = *(v6 + 56);
  v20 = v11[2];
  v20(v9, v17, v10);
  v20(&v9[v19], v15, v10);
  v21 = OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations;
  v22 = *(v18 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations);
  v27 = self;
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

- (BOOL)placeWithSymlink:(id)a3 symlinkTarget:(id)a4 isHardlink:(BOOL)a5 error:(id *)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  swift_unknownObjectRetain();
  v12 = self;
  sub_100032A38(a3, v9, v11, a5);

  swift_unknownObjectRelease();
  return 1;
}

- (BOOL)placeWithZeroByteFile:(id)a3 isHardlink:(BOOL)a4 error:(id *)a5
{
  swift_unknownObjectRetain();
  v8 = self;
  sub_1000327E4(a3, a4);

  swift_unknownObjectRelease();
  return 1;
}

- (BOOL)placeAsset:(id)a3 isHardlink:(BOOL)a4 metadata:(id)a5 error:(id *)a6
{
  swift_unknownObjectRetain();
  v10 = a5;
  v11 = self;
  sub_100032C9C(a3, a4, v10);

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