@interface IdentityDocScanConfig
- (_TtC13CoreIDVShared21IdentityDocScanConfig)init;
- (_TtC13CoreIDVShared21IdentityDocScanConfig)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityDocScanConfig

- (_TtC13CoreIDVShared21IdentityDocScanConfig)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B5630C(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityDocScanConfig.encode(with:)(v4);
}

- (_TtC13CoreIDVShared21IdentityDocScanConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end