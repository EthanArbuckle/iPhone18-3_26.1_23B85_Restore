@interface ActuatorFeedback
- (_TtC11DockKitCore16ActuatorFeedback)init;
- (_TtC11DockKitCore16ActuatorFeedback)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ActuatorFeedback

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ActuatorFeedback.encode(with:)(coderCopy);
}

- (_TtC11DockKitCore16ActuatorFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_2245C8674();

  return v4;
}

- (_TtC11DockKitCore16ActuatorFeedback)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end