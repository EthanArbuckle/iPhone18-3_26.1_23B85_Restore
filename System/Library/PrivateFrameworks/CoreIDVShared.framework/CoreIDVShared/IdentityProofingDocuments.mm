@interface IdentityProofingDocuments
- (_TtC13CoreIDVShared25IdentityProofingDocuments)init;
- (_TtC13CoreIDVShared25IdentityProofingDocuments)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityProofingDocuments

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityProofingDocuments.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared25IdentityProofingDocuments)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B6B478();

  return v4;
}

- (_TtC13CoreIDVShared25IdentityProofingDocuments)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end