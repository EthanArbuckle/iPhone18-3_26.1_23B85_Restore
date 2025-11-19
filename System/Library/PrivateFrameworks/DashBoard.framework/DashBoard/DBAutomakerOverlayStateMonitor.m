@interface DBAutomakerOverlayStateMonitor
- (BOOL)lockOut;
- (NSArray)overlays;
- (void)carDidUpdateAccessories:(id)a3;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)overlayViewService:(id)a3 didUpdateOn:(BOOL)a4;
- (void)setLockOut:(BOOL)a3;
- (void)setOverlays:(id)a3;
@end

@implementation DBAutomakerOverlayStateMonitor

- (BOOL)lockOut
{
  v3 = OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_lockOut;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLockOut:(BOOL)a3
{
  v4 = self;
  sub_24830B768(a3);
}

- (NSArray)overlays
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE938E0);
  v2 = sub_248383B00();

  return v2;
}

- (void)setOverlays:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE938E0);
  v4 = sub_248383B10();
  v5 = OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_overlays;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
  v7 = self;
  sub_24830BBF8(v6);
}

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_24830E1D4(a4);
}

- (void)carDidUpdateAccessories:(id)a3
{
  v4 = a3;
  v5 = self;
  _s9DashBoard30DBAutomakerOverlayStateMonitorC23carDidUpdateAccessoriesyySo6CAFCarCF_0();
}

- (void)overlayViewService:(id)a3 didUpdateOn:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  DBAutomakerOverlayStateMonitor.overlayViewService(_:didUpdateOn:)(v6, a4);
}

@end