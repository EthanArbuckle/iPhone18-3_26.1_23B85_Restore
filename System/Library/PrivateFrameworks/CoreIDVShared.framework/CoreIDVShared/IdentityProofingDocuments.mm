@interface IdentityProofingDocuments
- (_TtC13CoreIDVShared25IdentityProofingDocuments)init;
- (_TtC13CoreIDVShared25IdentityProofingDocuments)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityProofingDocuments

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityProofingDocuments.encode(with:)(v4);
}

- (_TtC13CoreIDVShared25IdentityProofingDocuments)initWithCoder:(id)a3
{
  v3 = a3;
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