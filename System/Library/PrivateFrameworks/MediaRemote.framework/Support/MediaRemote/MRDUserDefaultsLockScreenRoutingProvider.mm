@interface MRDUserDefaultsLockScreenRoutingProvider
- (MRDUserDefaultsLockScreenRoutingProvider)init;
- (NSArray)nearbyDeviceIdentifiers;
- (void)setNearbyDeviceIdentifiers:(id)a3;
- (void)update;
@end

@implementation MRDUserDefaultsLockScreenRoutingProvider

- (NSArray)nearbyDeviceIdentifiers
{
  v3 = OBJC_IVAR___MRDUserDefaultsLockScreenRoutingProvider_nearbyDeviceIdentifiers;
  swift_beginAccess();
  v4 = *(self + v3);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setNearbyDeviceIdentifiers:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___MRDUserDefaultsLockScreenRoutingProvider_nearbyDeviceIdentifiers;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (void)update
{
  v2 = self;
  sub_10034C150();
}

- (MRDUserDefaultsLockScreenRoutingProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end