@interface NearbyInvitationData
- (_TtC14NearbySessions20NearbyInvitationData)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NearbyInvitationData

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  NearbyInvitationData.encode(with:)(coderCopy);
}

- (_TtC14NearbySessions20NearbyInvitationData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end