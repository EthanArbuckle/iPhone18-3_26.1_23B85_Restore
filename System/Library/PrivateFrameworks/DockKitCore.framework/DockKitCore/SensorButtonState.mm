@interface SensorButtonState
- (_TtC11DockKitCore17SensorButtonState)init;
- (_TtC11DockKitCore17SensorButtonState)initWithCoder:(id)a3;
- (_TtC11DockKitCore17SensorButtonState)initWithState:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SensorButtonState

- (_TtC11DockKitCore17SensorButtonState)initWithState:(int64_t)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11DockKitCore17SensorButtonState_state) = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SensorButtonState();
  return [(SensorData *)&v4 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11DockKitCore17SensorButtonState_state);
  v5 = a3;
  v7 = self;
  v6 = sub_224627CB8();
  [v5 encodeInteger:v4 forKey:v6];
}

- (_TtC11DockKitCore17SensorButtonState)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_2245BB290(v3);

  return v4;
}

- (_TtC11DockKitCore17SensorButtonState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end