@interface DetailsTabBarView.SelectionView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtCC20CommunicationDetails17DetailsTabBarView13SelectionView)initWithCoder:(id)coder;
- (_TtCC20CommunicationDetails17DetailsTabBarView13SelectionView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation DetailsTabBarView.SelectionView

- (_TtCC20CommunicationDetails17DetailsTabBarView13SelectionView)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_isActive) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_punchoutView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView13SelectionView_contentView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
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

  selfCopy = self;
  DetailsTabBarView.SelectionView.layoutSubviews()();
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for DetailsTabBarView.SelectionView();
  eventCopy = event;
  selfCopy = self;
  v10 = [(DetailsTabBarView.SelectionView *)&v16 pointInside:eventCopy withEvent:x, y];
  if (v10)
  {

    v12 = 1;
  }

  else
  {
    v13 = (*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.super.super.isa) + 0xB8))(v10, v11);
    if (v13)
    {
      v14 = v13;
      [v13 convertPoint:selfCopy fromCoordinateSpace:{x, y, v16.receiver, v16.super_class}];
      v12 = [v14 pointInside:eventCopy withEvent:?];
    }

    else
    {

      v12 = 0;
    }
  }

  return v12;
}

- (_TtCC20CommunicationDetails17DetailsTabBarView13SelectionView)initWithFrame:(CGRect)frame
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end