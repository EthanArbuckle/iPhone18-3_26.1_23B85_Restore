@interface DBDockController
- (BOOL)hidden;
- (NSArray)traitOverridableObjects;
- (NSString)nowRecordingBundleIdentifier;
- (_TtC9DashBoard16DBDockController)init;
- (_TtC9DashBoard16DBDockController)initWithWindowScene:(id)a3 dockLocalScene:(id)a4 layoutEngine:(id)a5 iconProvider:(id)a6 environment:(id)a7;
- (_TtC9DashBoard27DBPersistentElementsManager)persistentElementsManager;
- (double)cornerRadius;
- (id)prepareForSlideAnimation;
- (void)acquireFocus;
- (void)acquireFocusWithHeading:(unint64_t)a3 focusedFrame:(CGRect)a4;
- (void)dashboardRootViewController:(id)a3 didUpdateActiveBundleIdentifier:(id)a4 animated:(BOOL)a5;
- (void)dockRootViewController:(id)a3 requestFocusUpdate:(id)a4;
- (void)invalidate;
- (void)relinquishFocus;
- (void)relinquishFocusWithHeading:(unint64_t)a3 focusedFrame:(CGRect)a4;
- (void)resetAlwaysVisibleSecondaryDockWindowLevel;
- (void)setAlwaysVisibleSecondaryDockWindowLevel;
- (void)setCornerRadius:(double)a3;
- (void)setHidden:(BOOL)a3;
- (void)setPersistentElementsManager:(id)a3;
- (void)siriPresentedIntentForBundleIdentifier:(id)a3;
- (void)updateAppearanceForWallpaper;
- (void)updateLayoutForCurrentViewArea;
@end

@implementation DBDockController

- (void)setCornerRadius:(double)a3
{
  v4 = self;
  DBDockController.cornerRadius.setter(a3);
}

- (void)siriPresentedIntentForBundleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_248383960();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  DBDockController.siriPresentedIntent(forBundleIdentifier:)(v8);
}

- (void)dashboardRootViewController:(id)a3 didUpdateActiveBundleIdentifier:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  if (a4)
  {
    sub_248383960();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(self + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockViewController);
  v12 = self;
  v10 = [v9 appDockViewController];
  if (v8)
  {
    v11 = sub_248383930();
  }

  else
  {
    v11 = 0;
  }

  [v10 setActiveBundleIdentifier:v11 animated:v5];
}

- (_TtC9DashBoard16DBDockController)initWithWindowScene:(id)a3 dockLocalScene:(id)a4 layoutEngine:(id)a5 iconProvider:(id)a6 environment:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return DBDockController.init(windowScene:dockLocalScene:layoutEngine:iconProvider:environment:)(v11, v12, v13, a6, a7);
}

- (_TtC9DashBoard27DBPersistentElementsManager)persistentElementsManager
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

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
    DBPersistentElementsManager.addObserver(_:for:)(v8, 1);
  }
}

- (void)updateLayoutForCurrentViewArea
{
  v2 = self;
  DBDockController.updateLayoutForCurrentViewArea()();
}

- (void)updateAppearanceForWallpaper
{
  v2 = self;
  DBDockController.updateAppearanceForWallpaper()();
}

- (BOOL)hidden
{
  v3 = OBJC_IVAR____TtC9DashBoard16DBDockController_isHidden;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHidden:(BOOL)a3
{
  v4 = self;
  DBDockController.isHidden.setter(a3);
}

- (double)cornerRadius
{
  v3 = OBJC_IVAR____TtC9DashBoard16DBDockController_cornerRadius;
  swift_beginAccess();
  return *(self + v3);
}

- (NSArray)traitOverridableObjects
{
  v2 = self;
  DBDockController.traitOverridableObjects.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE911D8);
  v3 = sub_248383B00();

  return v3;
}

- (id)prepareForSlideAnimation
{
  type metadata accessor for DBDockSlideAnimator();
  v3 = *(self + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow);
  v4 = *(self + OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow);
  v5 = *(self + OBJC_IVAR____TtC9DashBoard16DBDockController__layoutEngine);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = v4;
  v8 = v5;
  v9 = self;
  v10 = v3;
  v11 = [Strong environmentConfiguration];
  swift_unknownObjectRelease();
  v12 = DBDockSlideAnimator.__allocating_init(driverDockWindow:passengerDockWindow:layoutEngine:environmentConfiguration:)(v10, v4, v8, v11);
  (*((*MEMORY[0x277D85000] & *v12) + 0x88))();

  return v12;
}

- (void)acquireFocus
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0x170);
  v3 = self;
  v2(0, 0.0, 0.0, 0.0, 0.0);
}

- (void)acquireFocusWithHeading:(unint64_t)a3 focusedFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = self;
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  DBDockController.acquireFocus(heading:focusedFrame:)(a3, v11);
}

- (void)relinquishFocus
{
  v3 = OBJC_IVAR____TtC9DashBoard16DBDockController__focusAssertion;
  v4 = *(self + OBJC_IVAR____TtC9DashBoard16DBDockController__focusAssertion);
  v5 = self;
  if (v4)
  {
    [v4 invalidate];
  }

  *(self + v3) = 0;

  swift_unknownObjectRelease();
}

- (void)relinquishFocusWithHeading:(unint64_t)a3 focusedFrame:(CGRect)a4
{
  v5 = OBJC_IVAR____TtC9DashBoard16DBDockController__focusAssertion;
  v6 = *(self + OBJC_IVAR____TtC9DashBoard16DBDockController__focusAssertion);
  if (v6)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v12 = self;
    [v6 invalidateWithHeading:a3 focusedFrame:{x, y, width, height}];
  }

  else
  {
    v13 = self;
  }

  *(self + v5) = 0;

  swift_unknownObjectRelease();
}

- (NSString)nowRecordingBundleIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarStateProvider);
  v3 = self;
  v4 = [v2 nowRecordingBundleIdentifier];
  if (v4)
  {
    v5 = v4;
    sub_248383960();

    v6 = sub_248383930();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)setAlwaysVisibleSecondaryDockWindowLevel
{
  v2 = self;
  DBDockController.setAlwaysVisibleSecondaryDockWindowLevel()();
}

- (void)resetAlwaysVisibleSecondaryDockWindowLevel
{
  v2 = *(self + OBJC_IVAR____TtC9DashBoard16DBDockController__dockSceneHostWindow);
  v3 = self;
  [v2 setWindowLevel_];
}

- (_TtC9DashBoard16DBDockController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)invalidate
{
  v2 = self;
  DBDockController.invalidate()();
}

- (void)dockRootViewController:(id)a3 requestFocusUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2482876A8(v7);
}

@end