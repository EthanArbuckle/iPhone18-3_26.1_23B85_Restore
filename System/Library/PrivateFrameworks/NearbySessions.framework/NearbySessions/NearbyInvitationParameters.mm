@interface NearbyInvitationParameters
- (_TtC14NearbySessions26NearbyInvitationParameters)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NearbyInvitationParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  NearbyInvitationParameters.encode(with:)(coderCopy);
}

- (_TtC14NearbySessions26NearbyInvitationParameters)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end