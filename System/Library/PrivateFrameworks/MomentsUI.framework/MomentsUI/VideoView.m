@interface VideoView
- (_TtC9MomentsUI9VideoView)init;
- (_TtC9MomentsUI9VideoView)initWithCoder:(id)a3;
@end

@implementation VideoView

- (_TtC9MomentsUI9VideoView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for VideoStaticView()) init];
  v5 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for VideoPlayerView()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC9MomentsUI9VideoView)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end