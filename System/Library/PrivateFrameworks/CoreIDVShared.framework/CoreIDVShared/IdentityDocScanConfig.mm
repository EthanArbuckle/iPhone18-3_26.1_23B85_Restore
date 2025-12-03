@interface IdentityDocScanConfig
- (_TtC13CoreIDVShared21IdentityDocScanConfig)init;
- (_TtC13CoreIDVShared21IdentityDocScanConfig)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityDocScanConfig

- (_TtC13CoreIDVShared21IdentityDocScanConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B5630C(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityDocScanConfig.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared21IdentityDocScanConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end