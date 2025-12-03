@interface IdentityProofingPrecursorPassMessage
- (_TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage)init;
- (_TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityProofingPrecursorPassMessage

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityProofingPrecursorPassMessage.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B6469C();

  return v4;
}

- (_TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end