@interface InvitationApprovalRequest
- (_TtC14NearbySessions25InvitationApprovalRequest)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation InvitationApprovalRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  InvitationApprovalRequest.encode(with:)(coderCopy);
}

- (_TtC14NearbySessions25InvitationApprovalRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end