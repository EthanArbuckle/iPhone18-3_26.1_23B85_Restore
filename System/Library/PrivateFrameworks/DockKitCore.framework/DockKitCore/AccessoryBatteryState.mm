@interface AccessoryBatteryState
- (_TtC11DockKitCore21AccessoryBatteryState)init;
- (_TtC11DockKitCore21AccessoryBatteryState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AccessoryBatteryState

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AccessoryBatteryState.encode(with:)(coderCopy);
}

- (_TtC11DockKitCore21AccessoryBatteryState)initWithCoder:(id)coder
{
  coderCopy = coder;
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