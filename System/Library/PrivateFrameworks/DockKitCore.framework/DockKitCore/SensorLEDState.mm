@interface SensorLEDState
- (_TtC11DockKitCore14SensorLEDState)init;
- (_TtC11DockKitCore14SensorLEDState)initWithCoder:(id)a3;
- (_TtC11DockKitCore14SensorLEDState)initWithState:(int64_t)a3 brightness:(double)a4 color:(double)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SensorLEDState

- (_TtC11DockKitCore14SensorLEDState)initWithState:(int64_t)a3 brightness:(double)a4 color:(double)a5
{
  v5 = OBJC_IVAR____TtC11DockKitCore14SensorLEDState_brightness;
  v6 = OBJC_IVAR____TtC11DockKitCore14SensorLEDState_color;
  *(&self->super.super.isa + OBJC_IVAR____TtC11DockKitCore14SensorLEDState_state) = a3;
  *(&self->super.super.isa + v5) = a4;
  *(&self->super.super.isa + v6) = a5;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SensorLEDState();
  return [(SensorData *)&v8 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2245B2A38(v4);
}

- (_TtC11DockKitCore14SensorLEDState)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_2245B342C(v3);

  return v4;
}

- (_TtC11DockKitCore14SensorLEDState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end