@interface SensorTrackerState
- (_TtC11DockKitCore18SensorTrackerState)init;
- (_TtC11DockKitCore18SensorTrackerState)initWithState:(int64_t)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SensorTrackerState

- (_TtC11DockKitCore18SensorTrackerState)initWithState:(int64_t)state
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11DockKitCore18SensorTrackerState_state) = state;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SensorTrackerState();
  return [(SensorData *)&v4 init];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11DockKitCore18SensorTrackerState_state);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_224627CB8();
  [coderCopy encodeInteger:v4 forKey:v6];
}

- (_TtC11DockKitCore18SensorTrackerState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end