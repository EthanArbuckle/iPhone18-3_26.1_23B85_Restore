@interface IdentityImageQuality
- (_TtC13CoreIDVShared20IdentityImageQuality)init;
- (_TtC13CoreIDVShared20IdentityImageQuality)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityImageQuality

- (_TtC13CoreIDVShared20IdentityImageQuality)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B590DC(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityImageQuality.encode(with:)(v4);
}

- (_TtC13CoreIDVShared20IdentityImageQuality)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end