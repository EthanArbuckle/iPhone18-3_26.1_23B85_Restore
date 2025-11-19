@interface DSAssetVersion
- (BOOL)isEqual:(id)a3;
- (DSAssetVersion)init;
- (NSString)description;
- (int64_t)hash;
@end

@implementation DSAssetVersion

- (NSString)description
{
  v2 = self;
  AssetVersion.description.getter();

  v3 = sub_248A42C68();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_248A42E08();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = AssetVersion.isEqual(_:)(v8);

  sub_248A39B48(v8);
  return v6;
}

- (int64_t)hash
{
  v2 = *(self + OBJC_IVAR___DSAssetVersion_major);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *(self + OBJC_IVAR___DSAssetVersion_minor);
  if (v3 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(self + OBJC_IVAR___DSAssetVersion_patch);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return v3 ^ v2 ^ v4;
  }

LABEL_7:
  __break(1u);
  return self;
}

- (DSAssetVersion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end