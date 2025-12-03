@interface DSAssetVersionRange
- (BOOL)isEqual:(id)equal;
- (DSAssetVersionRange)init;
- (NSString)description;
@end

@implementation DSAssetVersionRange

- (NSString)description
{
  selfCopy = self;
  AssetVersionRange.description.getter();

  v3 = sub_248A42C68();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_248A42E08();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = AssetVersionRange.isEqual(_:)(v8);

  sub_248A39B48(v8);
  return v6;
}

- (DSAssetVersionRange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end