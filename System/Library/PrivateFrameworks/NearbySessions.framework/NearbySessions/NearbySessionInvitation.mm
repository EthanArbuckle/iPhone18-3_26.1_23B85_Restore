@interface NearbySessionInvitation
- (NSString)description;
- (_TtC14NearbySessions23NearbySessionInvitation)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NearbySessionInvitation

- (NSString)description
{
  v2 = self;
  v3 = NearbySessionInvitation.description.getter();
  v5 = v4;

  v6 = MEMORY[0x25F86F000](v3, v5);

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  NearbySessionInvitation.encode(with:)(v4);
}

- (_TtC14NearbySessions23NearbySessionInvitation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end