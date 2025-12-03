@interface _LocationSignificantChangeMonitorImpl
- (_TtC10ChronoCore37_LocationSignificantChangeMonitorImpl)init;
- (void)dealloc;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation _LocationSignificantChangeMonitorImpl

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_manager))
  {
    __break(1u);
  }

  else
  {
    v3.receiver = self;
    v3.super_class = swift_getObjectType();
    v2 = v3.receiver;
    [(_LocationSignificantChangeMonitorImpl *)&v3 dealloc];
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  selfCopy = self;
  sub_224BA4910();
}

- (_TtC10ChronoCore37_LocationSignificantChangeMonitorImpl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end