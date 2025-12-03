@interface URLBasedVideo
- (_TtC9MomentsUI13URLBasedVideo)init;
- (_TtC9MomentsUI13URLBasedVideo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation URLBasedVideo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  URLBasedVideo.encode(with:)(coderCopy);
}

- (_TtC9MomentsUI13URLBasedVideo)initWithCoder:(id)coder
{
  coderCopy = coder;
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