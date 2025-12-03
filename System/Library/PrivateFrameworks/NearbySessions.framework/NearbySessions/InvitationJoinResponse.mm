@interface InvitationJoinResponse
- (_TtC14NearbySessions22InvitationJoinResponse)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation InvitationJoinResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  InvitationJoinResponse.encode(with:)(coderCopy);
}

- (_TtC14NearbySessions22InvitationJoinResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end