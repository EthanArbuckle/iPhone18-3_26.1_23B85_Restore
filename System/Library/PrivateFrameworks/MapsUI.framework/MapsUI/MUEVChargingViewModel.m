@interface MUEVChargingViewModel
- (_TtC6MapsUI21MUEVChargingViewModel)init;
- (void)dealloc;
- (void)evChargerAvailabilityProvider:(id)a3 didUpdateAvailability:(id)a4;
@end

@implementation MUEVChargingViewModel

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availabilityProvider);
  v5 = self;
  v6 = v4;
  MUEVChargerAvailabilityProvider.unregisterObserver(_:)(v5);

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(MUEVChargingViewModel *)&v7 dealloc];
}

- (_TtC6MapsUI21MUEVChargingViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)evChargerAvailabilityProvider:(id)a3 didUpdateAvailability:(id)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability);
  *(&self->super.isa + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability) = a4;
  v6 = a4;
  v7 = self;

  sub_1C5634B14();
}

@end