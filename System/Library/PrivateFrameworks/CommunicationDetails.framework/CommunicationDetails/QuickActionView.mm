@interface QuickActionView
- (BOOL)enabled;
- (NSString)title;
- (_TtC20CommunicationDetails15QuickActionView)initWithCoder:(id)coder;
- (void)setEnabled:(BOOL)enabled;
- (void)setTitle:(id)title;
@end

@implementation QuickActionView

- (BOOL)enabled
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  isEnabled = [*(self + OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_button) isEnabled];

  return isEnabled;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(self + OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_button) setEnabled_];
}

- (NSString)title
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = (self + OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_title);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = MEMORY[0x193AEA8E0](v5, v4);

  return v6;
}

- (void)setTitle:(id)title
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_title);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (_TtC20CommunicationDetails15QuickActionView)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (self + OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_title);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end