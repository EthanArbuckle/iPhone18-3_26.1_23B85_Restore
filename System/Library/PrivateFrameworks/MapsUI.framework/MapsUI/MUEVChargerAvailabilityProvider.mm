@interface MUEVChargerAvailabilityProvider
- (BOOL)isActive;
- (_TtC6MapsUI23MUEVChargerAvailability)availability;
- (_TtC6MapsUI31MUEVChargerAvailabilityProvider)init;
- (void)dealloc;
- (void)didDownloadEVChargerAvailabilityWithEvCharger:(id)charger;
- (void)setAvailability:(id)availability;
- (void)setIsActive:(BOOL)active;
- (void)virtualGarageDidUpdate:(id)update;
@end

@implementation MUEVChargerAvailabilityProvider

- (_TtC6MapsUI23MUEVChargerAvailability)availability
{
  v3 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availability;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAvailability:(id)availability
{
  v5 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availability;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = availability;
  availabilityCopy = availability;
}

- (BOOL)isActive
{
  v3 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_isActive;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsActive:(BOOL)active
{
  v5 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_isActive;
  swift_beginAccess();
  *(&self->super.isa + v5) = active;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availabilityRefresher);
  selfCopy = self;
  EVChargerAvailabilityDownloader.isActive.setter(active);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_virtualGarageService);
  if (v4)
  {
    [v4 unregisterObserver_];
  }

  else
  {
    selfCopy = self;
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(MUEVChargerAvailabilityProvider *)&v6 dealloc];
}

- (_TtC6MapsUI31MUEVChargerAvailabilityProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didDownloadEVChargerAvailabilityWithEvCharger:(id)charger
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_evCharger);
  *(&self->super.isa + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_evCharger) = charger;
  chargerCopy = charger;
  selfCopy = self;

  sub_1C56641C0();
}

- (void)virtualGarageDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  MUEVChargerAvailabilityProvider.virtualGarageDidUpdate(_:)(updateCopy);
}

@end