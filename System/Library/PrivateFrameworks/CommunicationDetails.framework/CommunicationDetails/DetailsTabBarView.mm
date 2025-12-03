@interface DetailsTabBarView
- (CGPoint)autoscrollContentOffset;
- (CGRect)contentFrameForView:(id)view;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20CommunicationDetails17DetailsTabBarView)initWithCoder:(id)coder;
- (_TtC20CommunicationDetails17DetailsTabBarView)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)layoutSubviews;
- (void)longPressWithRecognizer:(id)recognizer;
- (void)setAutoscrollContentOffset:(CGPoint)offset;
@end

@implementation DetailsTabBarView

- (_TtC20CommunicationDetails17DetailsTabBarView)initWithFrame:(CGRect)frame
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

  v7 = DetailsTabBarView.init(frame:)(x, y, width, height);

  return v7;
}

- (void)longPressWithRecognizer:(id)recognizer
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  recognizerCopy = recognizer;
  selfCopy = self;
  state = [recognizerCopy state];
  if (state <= 2)
  {
    if (state == 1)
    {
      DetailsTabBarView.longPressRecognizerBegin(_:)(recognizerCopy);
    }

    else if (state == 2)
    {
      DetailsTabBarView.longPressRecognizerChanged(_:)(recognizerCopy);
    }
  }

  else if (state == 3)
  {
    DetailsTabBarView.longPressRecognizerEnded(_:)(recognizerCopy);
  }

  else if (state == 4 || state == 5)
  {
    DetailsTabBarView.scrubEnded()();
  }
}

- (_TtC20CommunicationDetails17DetailsTabBarView)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  specialized DetailsTabBarView.init(coder:)();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

  selfCopy = self;
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

- (void)setAutoscrollContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails17DetailsTabBarView_scrollView) setContentOffset_];
}

- (CGRect)contentFrameForView:(id)view
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (view)
  {
    selfCopy = self;
    viewCopy = view;
    [viewCopy bounds];
    [viewCopy convertRect:selfCopy toCoordinateSpace:?];
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

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  selfCopy = self;
  v13 = specialized DetailsTabBarView.pointerInteraction(_:regionFor:defaultRegion:)(requestCopy);

  return v13;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v10 = specialized DetailsTabBarView.pointerInteraction(_:styleFor:)();

  return v10;
}

@end