@interface IdentityImageDimension
- (_TtC13CoreIDVShared22IdentityImageDimension)init;
- (_TtC13CoreIDVShared22IdentityImageDimension)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityImageDimension

- (_TtC13CoreIDVShared22IdentityImageDimension)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B6C3FC(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityImageDimension.encode(with:)(v4);
}

- (_TtC13CoreIDVShared22IdentityImageDimension)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end