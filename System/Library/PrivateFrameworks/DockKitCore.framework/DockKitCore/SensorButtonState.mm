@interface SensorButtonState
- (_TtC11DockKitCore17SensorButtonState)init;
- (_TtC11DockKitCore17SensorButtonState)initWithCoder:(id)coder;
- (_TtC11DockKitCore17SensorButtonState)initWithState:(int64_t)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SensorButtonState

- (_TtC11DockKitCore17SensorButtonState)initWithState:(int64_t)state
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11DockKitCore17SensorButtonState_state) = state;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SensorButtonState();
  return [(SensorData *)&v4 init];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11DockKitCore17SensorButtonState_state);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_224627CB8();
  [coderCopy encodeInteger:v4 forKey:v6];
}

- (_TtC11DockKitCore17SensorButtonState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_2245BB290(coderCopy);

  return v4;
}

- (_TtC11DockKitCore17SensorButtonState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end