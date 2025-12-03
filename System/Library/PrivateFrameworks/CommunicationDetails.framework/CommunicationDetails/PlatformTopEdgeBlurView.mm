@interface PlatformTopEdgeBlurView
- (_TtC20CommunicationDetails23PlatformTopEdgeBlurView)initWithCoder:(id)coder;
- (_TtC20CommunicationDetails23PlatformTopEdgeBlurView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PlatformTopEdgeBlurView

- (_TtC20CommunicationDetails23PlatformTopEdgeBlurView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC20CommunicationDetails23PlatformTopEdgeBlurView)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = PlatformTopEdgeBlurView.init(coder:)(coder);

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
  selfCopy = self;
  [(PlatformTopEdgeBlurView *)&v7 layoutSubviews];
  v4 = OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView;
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView);
  [(PlatformTopEdgeBlurView *)selfCopy bounds:v7.receiver];
  [v5 setFrame_];
  v6 = *(&selfCopy->super.super.super.isa + v4);
  [v6 frame];
  [v6 setFrame_];
  [(PlatformTopEdgeBlurView *)selfCopy setClipsToBounds:1];
}

@end