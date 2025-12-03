@interface DBAutomakerOverlayStateMonitor
- (BOOL)lockOut;
- (NSArray)overlays;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)overlayViewService:(id)service didUpdateOn:(BOOL)on;
- (void)setLockOut:(BOOL)out;
- (void)setOverlays:(id)overlays;
@end

@implementation DBAutomakerOverlayStateMonitor

- (BOOL)lockOut
{
  v3 = OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_lockOut;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLockOut:(BOOL)out
{
  selfCopy = self;
  sub_24830B768(out);
}

- (NSArray)overlays
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE938E0);
  v2 = sub_248383B00();

  return v2;
}

- (void)setOverlays:(id)overlays
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE938E0);
  v4 = sub_248383B10();
  v5 = OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_overlays;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
  selfCopy = self;
  sub_24830BBF8(v6);
}

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  managerCopy = manager;
  carCopy = car;
  selfCopy = self;
  sub_24830E1D4(car);
}

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  selfCopy = self;
  _s9DashBoard30DBAutomakerOverlayStateMonitorC23carDidUpdateAccessoriesyySo6CAFCarCF_0();
}

- (void)overlayViewService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  DBAutomakerOverlayStateMonitor.overlayViewService(_:didUpdateOn:)(serviceCopy, on);
}

@end