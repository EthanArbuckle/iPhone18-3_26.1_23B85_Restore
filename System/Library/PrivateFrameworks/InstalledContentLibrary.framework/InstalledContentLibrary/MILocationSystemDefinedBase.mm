@interface MILocationSystemDefinedBase
- (BOOL)isEqual:(id)equal;
- (MILocationSystemDefinedBase)init;
- (id)initInternal;
@end

@implementation MILocationSystemDefinedBase

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = MILocationSystemDefinedBase;
  return [(MILocationSystemDefinedBase *)&v3 init];
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

  v6 = MILocationSystemDefinedBase.isEqual(_:)(v8);

  sub_1B16A3F74(v8);
  return v6 & 1;
}

- (MILocationSystemDefinedBase)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end