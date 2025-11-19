@interface IdentityProofingPrecursorPassMessage
- (_TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage)init;
- (_TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityProofingPrecursorPassMessage

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityProofingPrecursorPassMessage.encode(with:)(v4);
}

- (_TtC13CoreIDVShared36IdentityProofingPrecursorPassMessage)initWithCoder:(id)a3
{
  v3 = a3;
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