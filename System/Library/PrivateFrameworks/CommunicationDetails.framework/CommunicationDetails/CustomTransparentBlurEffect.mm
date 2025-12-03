@interface CustomTransparentBlurEffect
- (_TtC20CommunicationDetailsP33_DC4BAC6700B115C68288899ABB1FCF9E27CustomTransparentBlurEffect)init;
- (_TtC20CommunicationDetailsP33_DC4BAC6700B115C68288899ABB1FCF9E27CustomTransparentBlurEffect)initWithCoder:(id)coder;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
@end

@implementation CustomTransparentBlurEffect

- (_TtC20CommunicationDetailsP33_DC4BAC6700B115C68288899ABB1FCF9E27CustomTransparentBlurEffect)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  descriptorCopy = descriptor;
  environmentCopy = environment;
  selfCopy = self;
  CustomTransparentBlurEffect._update(_:for:usage:)(descriptorCopy, environmentCopy, usage);
}

- (_TtC20CommunicationDetailsP33_DC4BAC6700B115C68288899ABB1FCF9E27CustomTransparentBlurEffect)init
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