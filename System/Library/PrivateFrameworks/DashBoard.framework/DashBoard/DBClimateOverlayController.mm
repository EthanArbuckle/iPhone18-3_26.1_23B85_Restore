@interface DBClimateOverlayController
- (BOOL)isDeactivated;
- (_TtC9DashBoard26DBClimateOverlayController)init;
- (_TtC9DashBoard26DBClimateOverlayController)initWithWindowScene:(id)a3 windowFrame:(CGRect)a4 climateScene:(id)a5 layoutEngine:(id)a6 environment:(id)a7;
- (void)dockDidUpdateHidden:(BOOL)a3;
- (void)invalidate;
- (void)persistentElementsManager:(id)a3 didRequestElements:(id)a4;
- (void)requestQuickControlWithZone:(id)a3;
- (void)resetAlwaysVisibleClimateWindowLevel;
- (void)setAlwaysVisibleClimateWindowLevel;
- (void)setIsDeactivated:(BOOL)a3;
- (void)setPersistentElementsManager:(id)a3;
- (void)updateLayoutForCurrentViewArea;
- (void)updatePersistentElements:(id)a3;
@end

@implementation DBClimateOverlayController

- (void)setPersistentElementsManager:(id)a3
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a3;
    v8 = self;
    DBPersistentElementsManager.addObserver(_:for:)(v8, 0);
  }
}

- (_TtC9DashBoard26DBClimateOverlayController)initWithWindowScene:(id)a3 windowFrame:(CGRect)a4 climateScene:(id)a5 layoutEngine:(id)a6 environment:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  swift_unknownObjectRetain();
  return DBClimateOverlayController.init(windowScene:windowFrame:climateScene:layoutEngine:environment:)(v13, v14, v15, x, y, width, height);
}

- (BOOL)isDeactivated
{
  v3 = OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_isDeactivated;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsDeactivated:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_isDeactivated;
  swift_beginAccess();
  *(self + v5) = v3;
  if (v3)
  {
    v6 = 128;
  }

  else
  {
    v6 = 0;
  }

  [*(self + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController) updateWithDeactivationReasons_];
}

- (void)updatePersistentElements:(id)a3
{
  v3 = *(self + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController);
  if (v3)
  {
    v6 = a3;
    v8 = self;
    v7 = v3;
    v10.value.super.super.isa = a3;
    DBClimateViewController.update(persistentElements:)(v10);
  }
}

- (void)setAlwaysVisibleClimateWindowLevel
{
  v2 = self;
  DBClimateOverlayController.setAlwaysVisibleClimateWindowLevel()();
}

- (void)resetAlwaysVisibleClimateWindowLevel
{
  v2 = *(self + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_climateWindow);
  v3 = self;
  [v2 setWindowLevel_];
}

- (void)requestQuickControlWithZone:(id)a3
{
  v4 = sub_248383960();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  DBClimateOverlayController.requestQuickControl(zone:)(v8);
}

- (void)updateLayoutForCurrentViewArea
{
  v2 = self;
  DBClimateOverlayController.updateLayoutForCurrentViewArea()();
}

- (_TtC9DashBoard26DBClimateOverlayController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)invalidate
{
  v2 = *(self + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController);
  if (v2)
  {
    [v2 invalidate];
  }
}

- (void)dockDidUpdateHidden:(BOOL)a3
{
  v3 = *(self + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController);
  if (v3)
  {
    v4 = a3;
    v7 = self;
    v5 = [v3 view];
    if (v5)
    {
      v6 = v5;
      [v5 setHidden_];
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)persistentElementsManager:(id)a3 didRequestElements:(id)a4
{
  v6 = *((*MEMORY[0x277D85000] & *self) + 0x100);
  v7 = a4;
  v8 = self;
  v6(a4);
}

@end