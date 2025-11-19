@interface PlatformTopEdgeBlurView
- (_TtC20CommunicationDetails23PlatformTopEdgeBlurView)initWithCoder:(id)a3;
- (_TtC20CommunicationDetails23PlatformTopEdgeBlurView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PlatformTopEdgeBlurView

- (_TtC20CommunicationDetails23PlatformTopEdgeBlurView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = PlatformTopEdgeBlurView.init(frame:)(x, y, width, height);

  return v7;
}

- (_TtC20CommunicationDetails23PlatformTopEdgeBlurView)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = PlatformTopEdgeBlurView.init(coder:)(a3);

  return v4;
}

- (void)layoutSubviews
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for PlatformTopEdgeBlurView();
  v3 = self;
  [(PlatformTopEdgeBlurView *)&v7 layoutSubviews];
  v4 = OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView;
  v5 = *(&v3->super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView);
  [(PlatformTopEdgeBlurView *)v3 bounds:v7.receiver];
  [v5 setFrame_];
  v6 = *(&v3->super.super.super.isa + v4);
  [v6 frame];
  [v6 setFrame_];
  [(PlatformTopEdgeBlurView *)v3 setClipsToBounds:1];
}

@end