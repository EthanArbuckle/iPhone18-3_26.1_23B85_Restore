@interface SensorBattery
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
- (void)setState:(id)state;
@end

@implementation SensorBattery

- (void)setState:(id)state
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11DockKitCore13SensorBattery_state);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11DockKitCore13SensorBattery_state) = state;
  stateCopy = state;
}

- (NSString)description
{
  selfCopy = self;
  sub_22456294C();

  v3 = sub_224627CB8();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11DockKitCore13SensorBattery_state);
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_224627CB8();
  [coderCopy encodeObject:v5 forKey:v7];

  sub_2245B3720(coderCopy);
}

@end