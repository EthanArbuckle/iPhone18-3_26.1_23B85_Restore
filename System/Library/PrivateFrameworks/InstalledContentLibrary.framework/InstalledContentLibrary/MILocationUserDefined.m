@interface MILocationUserDefined
+ (NSString)plistTypeName;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualWithLocationUserDefined:(id)a3;
- (MILocationUserDefined)init;
- (MILocationUserDefined)initWithAppBundleURL:(id)a3 error:(id *)a4;
- (MILocationUserDefined)initWithAppBundleURLInternal:(id)a3;
- (NSDictionary)plistDictionary;
- (NSString)description;
- (NSURL)appBundleURL;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MILocationUserDefined

- (NSURL)appBundleURL
{
  v3 = sub_1B1756EE8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  v8 = [(MILocationUserDefined *)v7 _appBundleURL];
  sub_1B1756EB8();

  v9 = sub_1B1756EA8();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (MILocationUserDefined)initWithAppBundleURL:(id)a3 error:(id *)a4
{
  v4 = sub_1B1756EE8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1756EB8();
  return sub_1B1752B0C(v6);
}

- (MILocationUserDefined)initWithAppBundleURLInternal:(id)a3
{
  v4 = sub_1B1756EE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1756EB8();
  *(&self->super.isa + OBJC_IVAR___MILocationUserDefined__appBundleURL) = sub_1B1756EA8();
  v10.receiver = self;
  v10.super_class = MILocationUserDefined;
  v8 = [(MILocationUserDefined *)&v10 init];
  (*(v5 + 8))(v7, v4);
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = sub_1B1756EE8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v10 = self;
  v11 = [(MILocationUserDefined *)v10 appBundleURL];
  sub_1B1756EB8();

  sub_1B1756EC8();
  (*(v6 + 8))(v8, v5);
  v12 = sub_1B1756F58();

  v13 = sub_1B1756F58();
  [v9 encodeObject:v12 forKey:v13];
}

- (id)copyWithZone:(void *)a3
{
  swift_getObjectType();
  v4 = sub_1B1756EE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  v9 = [(MILocationUserDefined *)v8 appBundleURL];
  sub_1B1756EB8();

  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_1B1756EA8();
  v12 = [v10 initWithAppBundleURLInternal_];

  (*(v5 + 8))(v7, v4);
  v15[1] = v12;
  v13 = sub_1B1757038();

  return v13;
}

- (BOOL)isEqualWithLocationUserDefined:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1B1753A6C(v4);

  return self & 1;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1B1756FC8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = MILocationUserDefined.isEqual(_:)(v8);

  sub_1B1750E60(v8, &unk_1EB759C90);
  return v6 & 1;
}

- (int64_t)hash
{
  v3 = sub_1B1756EE8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  v8 = [(MILocationUserDefined *)v7 appBundleURL];
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
  v2 = self;
  MILocationUserDefined.description.getter();

  v3 = sub_1B1756F58();

  return v3;
}

- (MILocationUserDefined)init
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
  strcpy((inited + 32), "appBundleURL");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v8 = self;
  v9 = [(MILocationUserDefined *)v8 appBundleURL];
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