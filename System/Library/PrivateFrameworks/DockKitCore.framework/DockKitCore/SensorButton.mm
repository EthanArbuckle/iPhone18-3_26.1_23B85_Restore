@interface SensorButton
- (void)encodeWithCoder:(id)coder;
- (void)setState:(id)state;
@end

@implementation SensorButton

- (void)setState:(id)state
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11DockKitCore12SensorButton_state);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11DockKitCore12SensorButton_state) = state;
  stateCopy = state;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11DockKitCore12SensorButton_state);
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_224627CB8();
  [coderCopy encodeObject:v5 forKey:v7];

  sub_2245B3720(coderCopy);
}

@end