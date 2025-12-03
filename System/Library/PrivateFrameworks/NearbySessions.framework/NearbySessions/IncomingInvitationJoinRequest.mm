@interface IncomingInvitationJoinRequest
- (_TtC14NearbySessions29IncomingInvitationJoinRequest)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IncomingInvitationJoinRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IncomingInvitationJoinRequest.encode(with:)(coderCopy);
}

- (_TtC14NearbySessions29IncomingInvitationJoinRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end