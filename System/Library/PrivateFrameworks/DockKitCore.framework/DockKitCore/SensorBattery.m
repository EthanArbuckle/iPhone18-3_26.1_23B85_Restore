@interface SensorBattery
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
- (void)setState:(id)a3;
@end

@implementation SensorBattery

- (void)setState:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11DockKitCore13SensorBattery_state);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11DockKitCore13SensorBattery_state) = a3;
  v3 = a3;
}

- (NSString)description
{
  v2 = self;
  sub_22456294C();

  v3 = sub_224627CB8();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11DockKitCore13SensorBattery_state);
  v6 = a3;
  v8 = self;
  v7 = sub_224627CB8();
  [v6 encodeObject:v5 forKey:v7];

  sub_2245B3720(v6);
}

@end