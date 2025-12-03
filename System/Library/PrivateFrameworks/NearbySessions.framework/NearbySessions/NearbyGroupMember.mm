@interface NearbyGroupMember
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC14NearbySessions17NearbyGroupMember)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NearbyGroupMember

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = NearbyGroupMember.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = NearbyGroupMember.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  NearbyGroupMember.encode(with:)(coderCopy);
}

- (_TtC14NearbySessions17NearbyGroupMember)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  v3 = NearbyGroupMember.description.getter();
  v5 = v4;

  v6 = MEMORY[0x25F86F000](v3, v5);

  return v6;
}

@end