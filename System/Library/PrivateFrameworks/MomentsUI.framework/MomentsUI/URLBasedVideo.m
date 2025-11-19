@interface URLBasedVideo
- (_TtC9MomentsUI13URLBasedVideo)init;
- (_TtC9MomentsUI13URLBasedVideo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation URLBasedVideo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  URLBasedVideo.encode(with:)(v4);
}

- (_TtC9MomentsUI13URLBasedVideo)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized URLBasedVideo.init(coder:)();

  return v4;
}

- (_TtC9MomentsUI13URLBasedVideo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end