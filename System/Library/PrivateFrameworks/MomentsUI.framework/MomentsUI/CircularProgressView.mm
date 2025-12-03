@interface CircularProgressView
- (_TtC9MomentsUI20CircularProgressView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)touchPlayback:(id)playback;
@end

@implementation CircularProgressView

- (void)touchPlayback:(id)playback
{
  playbackCopy = playback;
  selfCopy = self;
  specialized CircularProgressView.touchPlayback(_:)();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  CircularProgressView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (void)layoutSubviews
{
  selfCopy = self;
  CircularProgressView.layoutSubviews()();
}

- (_TtC9MomentsUI20CircularProgressView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end