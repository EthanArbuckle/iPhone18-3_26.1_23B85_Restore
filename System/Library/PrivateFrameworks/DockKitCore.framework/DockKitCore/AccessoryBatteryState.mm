@interface AccessoryBatteryState
- (_TtC11DockKitCore21AccessoryBatteryState)init;
- (_TtC11DockKitCore21AccessoryBatteryState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AccessoryBatteryState

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AccessoryBatteryState.encode(with:)(v4);
}

- (_TtC11DockKitCore21AccessoryBatteryState)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_224530A00();

  return v4;
}

- (_TtC11DockKitCore21AccessoryBatteryState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end