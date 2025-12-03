@interface SensorLED
- (void)encodeWithCoder:(id)coder;
- (void)setState:(id)state;
@end

@implementation SensorLED

- (void)setState:(id)state
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11DockKitCore9SensorLED_state);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11DockKitCore9SensorLED_state) = state;
  stateCopy = state;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11DockKitCore9SensorLED_state);
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_224627CB8();
  [coderCopy encodeObject:v5 forKey:v7];

  sub_2245B3720(coderCopy);
}

@end