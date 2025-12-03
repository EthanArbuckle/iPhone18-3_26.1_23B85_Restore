@interface GesturePassthroughSegmentedControl
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl)initWithCoder:(id)coder;
- (_TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl)initWithFrame:(CGRect)frame;
- (_TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl)initWithItems:(id)items;
@end

@implementation GesturePassthroughSegmentedControl

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self + OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    beginCopy = begin;
    selfCopy = self;
    goto LABEL_7;
  }

  v6 = *(v5 + 1);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 8);
  beginCopy2 = begin;
  selfCopy2 = self;
  LOBYTE(v6) = v8(beginCopy2, ObjectType, v6);
  swift_unknownObjectRelease();
  if ((v6 & 1) == 0)
  {
LABEL_7:
    v15.receiver = self;
    v15.super_class = type metadata accessor for GesturePassthroughSegmentedControl();
    v11 = [(GesturePassthroughSegmentedControl *)&v15 gestureRecognizerShouldBegin:begin];

    goto LABEL_8;
  }

  v11 = 1;
LABEL_8:

  return v11;
}

- (_TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl)initWithFrame:(CGRect)frame
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

  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_delegate) = 0;
  swift_unknownObjectWeakInit();
  v8 = self + OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex;
  *v8 = 0;
  v8[8] = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_pressStartedOnSelectedSegment) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_cachedSegmentFrames) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for GesturePassthroughSegmentedControl();
  height = [(GesturePassthroughSegmentedControl *)&v11 initWithFrame:x, y, width, height];

  return height;
}

- (_TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = GesturePassthroughSegmentedControl.init(coder:)(coder);

  return v4;
}

- (_TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl)initWithItems:(id)items
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (items)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = GesturePassthroughSegmentedControl.init(items:)(v4);

  return v5;
}

@end