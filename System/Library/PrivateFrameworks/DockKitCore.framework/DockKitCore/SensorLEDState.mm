@interface SensorLEDState
- (_TtC11DockKitCore14SensorLEDState)init;
- (_TtC11DockKitCore14SensorLEDState)initWithCoder:(id)coder;
- (_TtC11DockKitCore14SensorLEDState)initWithState:(int64_t)state brightness:(double)brightness color:(double)color;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SensorLEDState

- (_TtC11DockKitCore14SensorLEDState)initWithState:(int64_t)state brightness:(double)brightness color:(double)color
{
  v5 = OBJC_IVAR____TtC11DockKitCore14SensorLEDState_brightness;
  v6 = OBJC_IVAR____TtC11DockKitCore14SensorLEDState_color;
  *(&self->super.super.isa + OBJC_IVAR____TtC11DockKitCore14SensorLEDState_state) = state;
  *(&self->super.super.isa + v5) = brightness;
  *(&self->super.super.isa + v6) = color;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SensorLEDState();
  return [(SensorData *)&v8 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2245B2A38(coderCopy);
}

- (_TtC11DockKitCore14SensorLEDState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_2245B342C(coderCopy);

  return v4;
}

- (_TtC11DockKitCore14SensorLEDState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end