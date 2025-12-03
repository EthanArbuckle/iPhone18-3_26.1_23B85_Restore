@interface DBClimateOverlayController
- (BOOL)isDeactivated;
- (_TtC9DashBoard26DBClimateOverlayController)init;
- (_TtC9DashBoard26DBClimateOverlayController)initWithWindowScene:(id)scene windowFrame:(CGRect)frame climateScene:(id)climateScene layoutEngine:(id)engine environment:(id)environment;
- (void)dockDidUpdateHidden:(BOOL)hidden;
- (void)invalidate;
- (void)persistentElementsManager:(id)manager didRequestElements:(id)elements;
- (void)requestQuickControlWithZone:(id)zone;
- (void)resetAlwaysVisibleClimateWindowLevel;
- (void)setAlwaysVisibleClimateWindowLevel;
- (void)setIsDeactivated:(BOOL)deactivated;
- (void)setPersistentElementsManager:(id)manager;
- (void)updateLayoutForCurrentViewArea;
- (void)updatePersistentElements:(id)elements;
@end

@implementation DBClimateOverlayController

- (void)setPersistentElementsManager:(id)manager
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    managerCopy = manager;
    selfCopy = self;
    DBPersistentElementsManager.addObserver(_:for:)(selfCopy, 0);
  }
}

- (_TtC9DashBoard26DBClimateOverlayController)initWithWindowScene:(id)scene windowFrame:(CGRect)frame climateScene:(id)climateScene layoutEngine:(id)engine environment:(id)environment
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sceneCopy = scene;
  climateSceneCopy = climateScene;
  engineCopy = engine;
  swift_unknownObjectRetain();
  return DBClimateOverlayController.init(windowScene:windowFrame:climateScene:layoutEngine:environment:)(sceneCopy, climateSceneCopy, engineCopy, x, y, width, height);
}

- (BOOL)isDeactivated
{
  v3 = OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_isDeactivated;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsDeactivated:(BOOL)deactivated
{
  deactivatedCopy = deactivated;
  v5 = OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_isDeactivated;
  swift_beginAccess();
  *(self + v5) = deactivatedCopy;
  if (deactivatedCopy)
  {
    v6 = 128;
  }

  else
  {
    v6 = 0;
  }

  [*(self + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController) updateWithDeactivationReasons_];
}

- (void)updatePersistentElements:(id)elements
{
  v3 = *(self + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController);
  if (v3)
  {
    elementsCopy = elements;
    selfCopy = self;
    v7 = v3;
    v10.value.super.super.isa = elements;
    DBClimateViewController.update(persistentElements:)(v10);
  }
}

- (void)setAlwaysVisibleClimateWindowLevel
{
  selfCopy = self;
  DBClimateOverlayController.setAlwaysVisibleClimateWindowLevel()();
}

- (void)resetAlwaysVisibleClimateWindowLevel
{
  v2 = *(self + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_climateWindow);
  selfCopy = self;
  [v2 setWindowLevel_];
}

- (void)requestQuickControlWithZone:(id)zone
{
  v4 = sub_248383960();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  DBClimateOverlayController.requestQuickControl(zone:)(v8);
}

- (void)updateLayoutForCurrentViewArea
{
  selfCopy = self;
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

- (void)dockDidUpdateHidden:(BOOL)hidden
{
  v3 = *(self + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController);
  if (v3)
  {
    hiddenCopy = hidden;
    selfCopy = self;
    view = [v3 view];
    if (view)
    {
      v6 = view;
      [view setHidden_];
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)persistentElementsManager:(id)manager didRequestElements:(id)elements
{
  v6 = *((*MEMORY[0x277D85000] & *self) + 0x100);
  elementsCopy = elements;
  selfCopy = self;
  v6(elements);
}

@end