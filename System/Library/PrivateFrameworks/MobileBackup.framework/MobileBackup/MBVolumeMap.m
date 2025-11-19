@interface MBVolumeMap
+ (id)createOrLoadForPersona:(id)a3 outLoadType:(int64_t *)a4 error:(id *)a5;
+ (id)createOrLoadFromPlistPath:(id)a3 volumesToBackUp:(id)a4 outLoadType:(int64_t *)a5 error:(id *)a6;
+ (id)loadTypeToStringWithLoadType:(int64_t)a3;
- (_TtC7backupd11MBVolumeMap)init;
- (id)volumeIdentifierForVolumeUUID:(id)a3;
@end

@implementation MBVolumeMap

- (_TtC7backupd11MBVolumeMap)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC7backupd11MBVolumeMap__volumeIdentifiersByAPFSVolumeUUID) = sub_10003E2AC(&_swiftEmptyArrayStorage);
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(MBVolumeMap *)&v5 init];
}

- (id)volumeIdentifierForVolumeUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = sub_100007014(v8);

  (*(v5 + 8))(v8, v4);

  return v10;
}

+ (id)createOrLoadForPersona:(id)a3 outLoadType:(int64_t *)a4 error:(id *)a5
{
  v6 = a3;
  sub_100009C90(v6, a4);
  v8 = v7;

  return v8;
}

+ (id)createOrLoadFromPlistPath:(id)a3 volumesToBackUp:(id)a4 outLoadType:(int64_t *)a5 error:(id *)a6
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_10000972C(v7, v9, v10, a5);

  return v11;
}

+ (id)loadTypeToStringWithLoadType:(int64_t)a3
{
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end