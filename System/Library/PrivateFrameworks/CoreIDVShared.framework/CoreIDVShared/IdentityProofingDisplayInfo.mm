@interface IdentityProofingDisplayInfo
- (_TtC13CoreIDVShared27IdentityProofingDisplayInfo)init;
- (_TtC13CoreIDVShared27IdentityProofingDisplayInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityProofingDisplayInfo

- (_TtC13CoreIDVShared27IdentityProofingDisplayInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B69378(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityProofingDisplayInfo.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared27IdentityProofingDisplayInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end