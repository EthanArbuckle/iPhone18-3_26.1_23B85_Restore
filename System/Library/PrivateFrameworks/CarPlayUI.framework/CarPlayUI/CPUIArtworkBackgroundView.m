@interface CPUIArtworkBackgroundView
- (_TtC9CarPlayUI25CPUIArtworkBackgroundView)initWithCoder:(id)a3;
- (_TtC9CarPlayUI25CPUIArtworkBackgroundView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)scheduleAnimationPauseTimer;
- (void)setPaused:(BOOL)a3;
- (void)updateWithImage:(id)a3 animated:(BOOL)a4;
@end

@implementation CPUIArtworkBackgroundView

- (_TtC9CarPlayUI25CPUIArtworkBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_renderer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_animationPauseTimer) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CPUIArtworkBackgroundView();
  v7 = [(CPUIArtworkBackgroundView *)&v9 initWithFrame:x, y, width, height];
  CPUIArtworkBackgroundView.buildBackgroundView()();

  return v7;
}

- (_TtC9CarPlayUI25CPUIArtworkBackgroundView)initWithCoder:(id)a3
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
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for CPUIArtworkBackgroundView();
  [(CPUIArtworkBackgroundView *)&v5 dealloc];
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView);
  v7 = self;
  [v6 setEnableSetNeedsDisplay_];
  [*(&self->super.super.super.isa + v5) setPaused_];
}

- (void)updateWithImage:(id)a3 animated:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  v9 = v8;
  v10 = v8;
  v12.value.super.isa = a3;
  v12.is_nil = a4;
  CPUIArtworkBackgroundView.update(image:animated:)(v12, v9);
}

- (void)scheduleAnimationPauseTimer
{
  v2 = self;
  CPUIArtworkBackgroundView.scheduleAnimationPauseTimer()();
}

@end