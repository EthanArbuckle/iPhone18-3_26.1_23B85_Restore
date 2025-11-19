@interface MUEVChargerAvailabilityProvider
- (BOOL)isActive;
- (_TtC6MapsUI23MUEVChargerAvailability)availability;
- (_TtC6MapsUI31MUEVChargerAvailabilityProvider)init;
- (void)dealloc;
- (void)didDownloadEVChargerAvailabilityWithEvCharger:(id)a3;
- (void)setAvailability:(id)a3;
- (void)setIsActive:(BOOL)a3;
- (void)virtualGarageDidUpdate:(id)a3;
@end

@implementation MUEVChargerAvailabilityProvider

- (_TtC6MapsUI23MUEVChargerAvailability)availability
{
  v3 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availability;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAvailability:(id)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availability;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (BOOL)isActive
{
  v3 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_isActive;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsActive:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_isActive;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availabilityRefresher);
  v7 = self;
  EVChargerAvailabilityDownloader.isActive.setter(a3);
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
    v5 = self;
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

- (void)didDownloadEVChargerAvailabilityWithEvCharger:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_evCharger);
  *(&self->super.isa + OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_evCharger) = a3;
  v5 = a3;
  v6 = self;

  sub_1C56641C0();
}

- (void)virtualGarageDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  MUEVChargerAvailabilityProvider.virtualGarageDidUpdate(_:)(v4);
}

@end