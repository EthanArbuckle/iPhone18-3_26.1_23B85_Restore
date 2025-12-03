@interface MILocationUserDefinedDirectory
+ (NSString)plistTypeName;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualWithLocationUserDefinedDirectory:(id)directory;
- (MILocationUserDefinedDirectory)init;
- (MILocationUserDefinedDirectory)initWithTargetDirectoryURL:(id)l error:(id *)error;
- (MILocationUserDefinedDirectory)initWithTargetDirectoryURLInternal:(id)internal;
- (NSDictionary)plistDictionary;
- (NSString)description;
- (NSURL)targetDirectoryURL;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MILocationUserDefinedDirectory

- (NSURL)targetDirectoryURL
{
  v3 = sub_1B1756EE8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  _targetDirectoryURL = [(MILocationUserDefinedDirectory *)selfCopy _targetDirectoryURL];
  sub_1B1756EB8();

  v9 = sub_1B1756EA8();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (MILocationUserDefinedDirectory)initWithTargetDirectoryURL:(id)l error:(id *)error
{
  v5 = sub_1B1756EE8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1756EB8();
  *(&self->super.isa + OBJC_IVAR___MILocationUserDefinedDirectory__targetDirectoryURL) = sub_1B1756EA8();
  v11.receiver = self;
  v11.super_class = MILocationUserDefinedDirectory;
  v9 = [(MILocationUserDefinedDirectory *)&v11 init];
  (*(v6 + 8))(v8, v5);
  return v9;
}

- (MILocationUserDefinedDirectory)initWithTargetDirectoryURLInternal:(id)internal
{
  v4 = sub_1B1756EE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1756EB8();
  *(&self->super.isa + OBJC_IVAR___MILocationUserDefinedDirectory__targetDirectoryURL) = sub_1B1756EA8();
  v10.receiver = self;
  v10.super_class = MILocationUserDefinedDirectory;
  v8 = [(MILocationUserDefinedDirectory *)&v10 init];
  (*(v5 + 8))(v7, v4);
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  MILocationUserDefinedDirectory.encode(with:)(coderCopy);
}

- (id)copyWithZone:(void *)zone
{
  swift_getObjectType();
  v4 = sub_1B1756EE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  targetDirectoryURL = [(MILocationUserDefinedDirectory *)selfCopy targetDirectoryURL];
  sub_1B1756EB8();

  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_1B1756EA8();
  initWithTargetDirectoryURLInternal_ = [v10 initWithTargetDirectoryURLInternal_];

  (*(v5 + 8))(v7, v4);
  v15[1] = initWithTargetDirectoryURLInternal_;
  v13 = sub_1B1757038();

  return v13;
}

- (BOOL)isEqualWithLocationUserDefinedDirectory:(id)directory
{
  directoryCopy = directory;
  selfCopy = self;
  LOBYTE(self) = sub_1B174FD38(directoryCopy);

  return self & 1;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B1756FC8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = MILocationUserDefinedDirectory.isEqual(_:)(v8);

  sub_1B1750E60(v8, &unk_1EB759C90);
  return v6 & 1;
}

- (int64_t)hash
{
  v3 = sub_1B1756EE8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  targetDirectoryURL = [(MILocationUserDefinedDirectory *)selfCopy targetDirectoryURL];
  sub_1B1756EB8();

  v9 = sub_1B1756EC8();
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  v14[0] = v9;
  v14[1] = v11;
  sub_1B17502D0();
  v12 = sub_1B1756FB8();

  return v12 ^ 4;
}

- (NSString)description
{
  selfCopy = self;
  MILocationUserDefinedDirectory.description.getter();

  v3 = sub_1B1756F58();

  return v3;
}

- (MILocationUserDefinedDirectory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSDictionary)plistDictionary
{
  v3 = sub_1B1756EE8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB759F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B175DC60;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001B1783EC0;
  selfCopy = self;
  targetDirectoryURL = [(MILocationUserDefinedDirectory *)selfCopy targetDirectoryURL];
  sub_1B1756EB8();

  v10 = sub_1B1756EC8();
  v12 = v11;
  (*(v4 + 8))(v6, v3);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  sub_1B174EB18(inited);
  swift_setDeallocating();
  sub_1B1750E60(inited + 32, &unk_1EB759EC0);

  v13 = sub_1B1756F28();

  return v13;
}

+ (NSString)plistTypeName
{
  v2 = sub_1B1756F58();

  return v2;
}

@end