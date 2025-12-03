@interface MUEVChargingViewModel
- (_TtC6MapsUI21MUEVChargingViewModel)init;
- (void)dealloc;
- (void)evChargerAvailabilityProvider:(id)provider didUpdateAvailability:(id)availability;
@end

@implementation MUEVChargingViewModel

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availabilityProvider);
  selfCopy = self;
  v6 = v4;
  MUEVChargerAvailabilityProvider.unregisterObserver(_:)(selfCopy);

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(MUEVChargingViewModel *)&v7 dealloc];
}

- (_TtC6MapsUI21MUEVChargingViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)evChargerAvailabilityProvider:(id)provider didUpdateAvailability:(id)availability
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability);
  *(&self->super.isa + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability) = availability;
  availabilityCopy = availability;
  selfCopy = self;

  sub_1C5634B14();
}

@end