@interface CPUIArtworkBackgroundView
- (_TtC9CarPlayUI25CPUIArtworkBackgroundView)initWithCoder:(id)coder;
- (_TtC9CarPlayUI25CPUIArtworkBackgroundView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)scheduleAnimationPauseTimer;
- (void)setPaused:(BOOL)paused;
- (void)updateWithImage:(id)image animated:(BOOL)animated;
@end

@implementation CPUIArtworkBackgroundView

- (_TtC9CarPlayUI25CPUIArtworkBackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_renderer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_animationPauseTimer) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CPUIArtworkBackgroundView();
  height = [(CPUIArtworkBackgroundView *)&v9 initWithFrame:x, y, width, height];
  CPUIArtworkBackgroundView.buildBackgroundView()();

  return height;
}

- (_TtC9CarPlayUI25CPUIArtworkBackgroundView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_renderer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_animationPauseTimer) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_animationPauseTimer);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for CPUIArtworkBackgroundView();
  [(CPUIArtworkBackgroundView *)&v5 dealloc];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v5 = OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView);
  selfCopy = self;
  [v6 setEnableSetNeedsDisplay_];
  [*(&self->super.super.super.isa + v5) setPaused_];
}

- (void)updateWithImage:(id)image animated:(BOOL)animated
{
  imageCopy = image;
  selfCopy = self;
  v9 = selfCopy;
  v10 = selfCopy;
  v12.value.super.isa = image;
  v12.is_nil = animated;
  CPUIArtworkBackgroundView.update(image:animated:)(v12, v9);
}

- (void)scheduleAnimationPauseTimer
{
  selfCopy = self;
  CPUIArtworkBackgroundView.scheduleAnimationPauseTimer()();
}

@end