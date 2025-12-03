@interface InvitationBlob
- (_TtC14NearbySessions14InvitationBlob)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation InvitationBlob

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  InvitationBlob.encode(with:)(coderCopy);
}

- (_TtC14NearbySessions14InvitationBlob)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end