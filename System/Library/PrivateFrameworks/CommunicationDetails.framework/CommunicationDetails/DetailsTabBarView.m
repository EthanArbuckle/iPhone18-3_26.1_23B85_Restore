@interface DetailsTabBarView
- (CGPoint)autoscrollContentOffset;
- (CGRect)contentFrameForView:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20CommunicationDetails17DetailsTabBarView)initWithCoder:(id)a3;
- (_TtC20CommunicationDetails17DetailsTabBarView)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)layoutSubviews;
- (void)longPressWithRecognizer:(id)a3;
- (void)setAutoscrollContentOffset:(CGPoint)a3;
@end

@implementation DetailsTabBarView

- (_TtC20CommunicationDetails17DetailsTabBarView)initWithFrame:(CGRect)a3
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

  v7 = DetailsTabBarView.init(frame:)(x, y, width, height);

  return v7;
}

- (void)longPressWithRecognizer:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  v7 = [v5 state];
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      DetailsTabBarView.longPressRecognizerBegin(_:)(v5);
    }

    else if (v7 == 2)
    {
      DetailsTabBarView.longPressRecognizerChanged(_:)(v5);
    }
  }

  else if (v7 == 3)
  {
    DetailsTabBarView.longPressRecognizerEnded(_:)(v5);
  }

  else if (v7 == 4 || v7 == 5)
  {
    DetailsTabBarView.scrubEnded()();
  }
}

- (_TtC20CommunicationDetails17DetailsTabBarView)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  specialized DetailsTabBarView.init(coder:)();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_tabSegmentViewForSizing) sizeThatFits_];
  v7 = v6;

  v8 = width;
  v9 = v7;
  result.height = v9;
  result.width = v8;
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

  v3 = self;
  DetailsTabBarView.layoutSubviews()();
}

- (CGPoint)autoscrollContentOffset
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_scrollView) contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setAutoscrollContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_scrollView) setContentOffset_];
}

- (CGRect)contentFrameForView:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v9 = self;
    v10 = a3;
    [v10 bounds];
    [v10 convertRect:v9 toCoordinateSpace:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v5 = v12;
    v6 = v14;
    v7 = v16;
    v8 = v18;
  }

  else
  {
    __break(1u);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  v13 = specialized DetailsTabBarView.pointerInteraction(_:regionFor:defaultRegion:)(v10);

  return v13;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = specialized DetailsTabBarView.pointerInteraction(_:styleFor:)();

  return v10;
}

@end