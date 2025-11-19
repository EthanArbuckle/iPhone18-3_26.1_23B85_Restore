@interface ActuatorFeedback
- (_TtC11DockKitCore16ActuatorFeedback)init;
- (_TtC11DockKitCore16ActuatorFeedback)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ActuatorFeedback

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ActuatorFeedback.encode(with:)(v4);
}

- (_TtC11DockKitCore16ActuatorFeedback)initWithCoder:(id)a3
{
  v3 = a3;
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