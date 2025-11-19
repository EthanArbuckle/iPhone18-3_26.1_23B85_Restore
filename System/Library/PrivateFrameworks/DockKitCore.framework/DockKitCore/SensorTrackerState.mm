@interface SensorTrackerState
- (_TtC11DockKitCore18SensorTrackerState)init;
- (_TtC11DockKitCore18SensorTrackerState)initWithState:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SensorTrackerState

- (_TtC11DockKitCore18SensorTrackerState)initWithState:(int64_t)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11DockKitCore18SensorTrackerState_state) = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SensorTrackerState();
  return [(SensorData *)&v4 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11DockKitCore18SensorTrackerState_state);
  v5 = a3;
  v7 = self;
  v6 = sub_224627CB8();
  [v5 encodeInteger:v4 forKey:v6];
}

- (_TtC11DockKitCore18SensorTrackerState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end