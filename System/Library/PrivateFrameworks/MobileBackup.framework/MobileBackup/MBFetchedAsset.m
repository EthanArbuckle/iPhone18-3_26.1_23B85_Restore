@interface MBFetchedAsset
- (NSString)description;
- (_TtC7backupd14MBFetchedAsset)init;
- (_TtC7backupd14MBFetchedAsset)initWithMetadata:(id)a3 protectionClass:(unsigned __int8)a4 originalFileSize:(int64_t)a5 originalInode:(unint64_t)a6 linkCount:(unsigned int)a7 rpath:(id)a8;
@end

@implementation MBFetchedAsset

- (_TtC7backupd14MBFetchedAsset)initWithMetadata:(id)a3 protectionClass:(unsigned __int8)a4 originalFileSize:(int64_t)a5 originalInode:(unint64_t)a6 linkCount:(unsigned int)a7 rpath:(id)a8
{
  ObjectType = swift_getObjectType();
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&self->super.isa + OBJC_IVAR____TtC7backupd14MBFetchedAsset_metadata) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC7backupd14MBFetchedAsset_protectionClass) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC7backupd14MBFetchedAsset_originalFileSize) = a5;
  *(&self->super.isa + OBJC_IVAR____TtC7backupd14MBFetchedAsset_originalInode) = a6;
  *(&self->super.isa + OBJC_IVAR____TtC7backupd14MBFetchedAsset__linkCount) = a7;
  v16 = (self + OBJC_IVAR____TtC7backupd14MBFetchedAsset__debugRpath);
  *v16 = v15;
  v16[1] = v17;
  v20.receiver = self;
  v20.super_class = ObjectType;
  v18 = a3;
  return [(MBFetchedAsset *)&v20 init];
}

- (_TtC7backupd14MBFetchedAsset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  sub_10000A4DC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end