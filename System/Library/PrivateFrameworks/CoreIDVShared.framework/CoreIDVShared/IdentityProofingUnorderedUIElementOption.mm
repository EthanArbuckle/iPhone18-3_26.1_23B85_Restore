@interface IdentityProofingUnorderedUIElementOption
- (_TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption)init;
- (_TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityProofingUnorderedUIElementOption

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityProofingUnorderedUIElementOption.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared40IdentityProofingUnorderedUIElementOption)initWithCoder:(id)coder
{
  coderCopy = coder;
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