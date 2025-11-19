@interface IdentityProofingStatus
- (_TtC13CoreIDVShared22IdentityProofingStatus)init;
- (_TtC13CoreIDVShared22IdentityProofingStatus)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityProofingStatus

- (_TtC13CoreIDVShared22IdentityProofingStatus)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B64EC8(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityProofingStatus.encode(with:)(v4);
}

- (_TtC13CoreIDVShared22IdentityProofingStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end