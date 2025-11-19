@interface URLBasedImage
- (_TtC9MomentsUI13URLBasedImage)init;
- (_TtC9MomentsUI13URLBasedImage)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation URLBasedImage

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  URLBasedImage.encode(with:)(v4);
}

- (_TtC9MomentsUI13URLBasedImage)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized URLBasedImage.init(coder:)(v3);

  return v4;
}

- (_TtC9MomentsUI13URLBasedImage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end