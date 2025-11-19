@interface GesturePassthroughSegmentedControl
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl)initWithCoder:(id)a3;
- (_TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl)initWithFrame:(CGRect)a3;
- (_TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl)initWithItems:(id)a3;
@end

@implementation GesturePassthroughSegmentedControl

- (BOOL)gestureRecognizerShouldBegin:(id)a3
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
    v12 = a3;
    v13 = self;
    goto LABEL_7;
  }

  v6 = *(v5 + 1);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 8);
  v9 = a3;
  v10 = self;
  LOBYTE(v6) = v8(v9, ObjectType, v6);
  swift_unknownObjectRelease();
  if ((v6 & 1) == 0)
  {
LABEL_7:
    v15.receiver = self;
    v15.super_class = type metadata accessor for GesturePassthroughSegmentedControl();
    v11 = [(GesturePassthroughSegmentedControl *)&v15 gestureRecognizerShouldBegin:a3];

    goto LABEL_8;
  }

  v11 = 1;
LABEL_8:

  return v11;
}

- (_TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl)initWithFrame:(CGRect)a3
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

  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_delegate) = 0;
  swift_unknownObjectWeakInit();
  v8 = self + OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex;
  *v8 = 0;
  v8[8] = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_pressStartedOnSelectedSegment) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_cachedSegmentFrames) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for GesturePassthroughSegmentedControl();
  v9 = [(GesturePassthroughSegmentedControl *)&v11 initWithFrame:x, y, width, height];

  return v9;
}

- (_TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = GesturePassthroughSegmentedControl.init(coder:)(a3);

  return v4;
}

- (_TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl)initWithItems:(id)a3
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