@interface IdentityProofingStatus
- (_TtC13CoreIDVShared22IdentityProofingStatus)init;
- (_TtC13CoreIDVShared22IdentityProofingStatus)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityProofingStatus

- (_TtC13CoreIDVShared22IdentityProofingStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B64EC8(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityProofingStatus.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared22IdentityProofingStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end