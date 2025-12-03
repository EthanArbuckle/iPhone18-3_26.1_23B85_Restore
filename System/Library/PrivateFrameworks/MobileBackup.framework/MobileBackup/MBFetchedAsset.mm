@interface MBFetchedAsset
- (NSString)description;
- (_TtC7backupd14MBFetchedAsset)init;
- (_TtC7backupd14MBFetchedAsset)initWithMetadata:(id)metadata protectionClass:(unsigned __int8)class originalFileSize:(int64_t)size originalInode:(unint64_t)inode linkCount:(unsigned int)count rpath:(id)rpath;
@end

@implementation MBFetchedAsset

- (_TtC7backupd14MBFetchedAsset)initWithMetadata:(id)metadata protectionClass:(unsigned __int8)class originalFileSize:(int64_t)size originalInode:(unint64_t)inode linkCount:(unsigned int)count rpath:(id)rpath
{
  ObjectType = swift_getObjectType();
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&self->super.isa + OBJC_IVAR____TtC7backupd14MBFetchedAsset_metadata) = metadata;
  *(&self->super.isa + OBJC_IVAR____TtC7backupd14MBFetchedAsset_protectionClass) = class;
  *(&self->super.isa + OBJC_IVAR____TtC7backupd14MBFetchedAsset_originalFileSize) = size;
  *(&self->super.isa + OBJC_IVAR____TtC7backupd14MBFetchedAsset_originalInode) = inode;
  *(&self->super.isa + OBJC_IVAR____TtC7backupd14MBFetchedAsset__linkCount) = count;
  v16 = (self + OBJC_IVAR____TtC7backupd14MBFetchedAsset__debugRpath);
  *v16 = v15;
  v16[1] = v17;
  v20.receiver = self;
  v20.super_class = ObjectType;
  metadataCopy = metadata;
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
  selfCopy = self;
  sub_10000A4DC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end