@interface NearbySessionInvitation
- (NSString)description;
- (_TtC14NearbySessions23NearbySessionInvitation)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NearbySessionInvitation

- (NSString)description
{
  selfCopy = self;
  v3 = NearbySessionInvitation.description.getter();
  v5 = v4;

  v6 = MEMORY[0x25F86F000](v3, v5);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  NearbySessionInvitation.encode(with:)(coderCopy);
}

- (_TtC14NearbySessions23NearbySessionInvitation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end