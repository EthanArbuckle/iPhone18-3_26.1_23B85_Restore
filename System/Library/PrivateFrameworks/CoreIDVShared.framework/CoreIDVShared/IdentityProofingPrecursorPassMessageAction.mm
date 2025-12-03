@interface IdentityProofingPrecursorPassMessageAction
- (_TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityProofingPrecursorPassMessageAction

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityProofingPrecursorPassMessageAction.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared42IdentityProofingPrecursorPassMessageAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end