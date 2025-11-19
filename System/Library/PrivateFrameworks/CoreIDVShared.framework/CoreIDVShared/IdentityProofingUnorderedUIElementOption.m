@interface IdentityProofingUnorderedUIElementOption
- (_TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption)init;
- (_TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityProofingUnorderedUIElementOption

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityProofingUnorderedUIElementOption.encode(with:)(v4);
}

- (_TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B73E0C();

  return v4;
}

- (_TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end