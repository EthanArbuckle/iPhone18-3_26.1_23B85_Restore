@interface DBDockController
- (BOOL)hidden;
- (NSArray)traitOverridableObjects;
- (NSString)nowRecordingBundleIdentifier;
- (_TtC9DashBoard16DBDockController)init;
- (_TtC9DashBoard16DBDockController)initWithWindowScene:(id)scene dockLocalScene:(id)localScene layoutEngine:(id)engine iconProvider:(id)provider environment:(id)environment;
- (_TtC9DashBoard27DBPersistentElementsManager)persistentElementsManager;
- (double)cornerRadius;
- (id)prepareForSlideAnimation;
- (void)acquireFocus;
- (void)acquireFocusWithHeading:(unint64_t)heading focusedFrame:(CGRect)frame;
- (void)dashboardRootViewController:(id)controller didUpdateActiveBundleIdentifier:(id)identifier animated:(BOOL)animated;
- (void)dockRootViewController:(id)controller requestFocusUpdate:(id)update;
- (void)invalidate;
- (void)relinquishFocus;
- (void)relinquishFocusWithHeading:(unint64_t)heading focusedFrame:(CGRect)frame;
- (void)resetAlwaysVisibleSecondaryDockWindowLevel;
- (void)setAlwaysVisibleSecondaryDockWindowLevel;
- (void)setCornerRadius:(double)radius;
- (void)setHidden:(BOOL)hidden;
- (void)setPersistentElementsManager:(id)manager;
- (void)siriPresentedIntentForBundleIdentifier:(id)identifier;
- (void)updateAppearanceForWallpaper;
- (void)updateLayoutForCurrentViewArea;
@end

@implementation DBDockController

- (void)setCornerRadius:(double)radius
{
  selfCopy = self;
  DBDockController.cornerRadius.setter(radius);
}

- (void)siriPresentedIntentForBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_248383960();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  DBDockController.siriPresentedIntent(forBundleIdentifier:)(v8);
}

- (void)dashboardRootViewController:(id)controller didUpdateActiveBundleIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  if (identifier)
  {
    sub_248383960();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(self + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockViewController);
  selfCopy = self;
  appDockViewController = [v9 appDockViewController];
  if (v8)
  {
    v11 = sub_248383930();
  }

  else
  {
    v11 = 0;
  }

  [appDockViewController setActiveBundleIdentifier:v11 animated:animatedCopy];
}

- (_TtC9DashBoard16DBDockController)initWithWindowScene:(id)scene dockLocalScene:(id)localScene layoutEngine:(id)engine iconProvider:(id)provider environment:(id)environment
{
  sceneCopy = scene;
  localSceneCopy = localScene;
  engineCopy = engine;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return DBDockController.init(windowScene:dockLocalScene:layoutEngine:iconProvider:environment:)(sceneCopy, localSceneCopy, engineCopy, provider, environment);
}

- (_TtC9DashBoard27DBPersistentElementsManager)persistentElementsManager
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

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
    DBPersistentElementsManager.addObserver(_:for:)(selfCopy, 1);
  }
}

- (void)updateLayoutForCurrentViewArea
{
  selfCopy = self;
  DBDockController.updateLayoutForCurrentViewArea()();
}

- (void)updateAppearanceForWallpaper
{
  selfCopy = self;
  DBDockController.updateAppearanceForWallpaper()();
}

- (BOOL)hidden
{
  v3 = OBJC_IVAR____TtC9DashBoard16DBDockController_isHidden;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHidden:(BOOL)hidden
{
  selfCopy = self;
  DBDockController.isHidden.setter(hidden);
}

- (double)cornerRadius
{
  v3 = OBJC_IVAR____TtC9DashBoard16DBDockController_cornerRadius;
  swift_beginAccess();
  return *(self + v3);
}

- (NSArray)traitOverridableObjects
{
  selfCopy = self;
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
  selfCopy = self;
  v10 = v3;
  environmentConfiguration = [Strong environmentConfiguration];
  swift_unknownObjectRelease();
  v12 = DBDockSlideAnimator.__allocating_init(driverDockWindow:passengerDockWindow:layoutEngine:environmentConfiguration:)(v10, v4, v8, environmentConfiguration);
  (*((*MEMORY[0x277D85000] & *v12) + 0x88))();

  return v12;
}

- (void)acquireFocus
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0x170);
  selfCopy = self;
  v2(0, 0.0, 0.0, 0.0, 0.0);
}

- (void)acquireFocusWithHeading:(unint64_t)heading focusedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  DBDockController.acquireFocus(heading:focusedFrame:)(heading, v11);
}

- (void)relinquishFocus
{
  v3 = OBJC_IVAR____TtC9DashBoard16DBDockController__focusAssertion;
  v4 = *(self + OBJC_IVAR____TtC9DashBoard16DBDockController__focusAssertion);
  selfCopy = self;
  if (v4)
  {
    [v4 invalidate];
  }

  *(self + v3) = 0;

  swift_unknownObjectRelease();
}

- (void)relinquishFocusWithHeading:(unint64_t)heading focusedFrame:(CGRect)frame
{
  v5 = OBJC_IVAR____TtC9DashBoard16DBDockController__focusAssertion;
  v6 = *(self + OBJC_IVAR____TtC9DashBoard16DBDockController__focusAssertion);
  if (v6)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    selfCopy = self;
    [v6 invalidateWithHeading:heading focusedFrame:{x, y, width, height}];
  }

  else
  {
    selfCopy2 = self;
  }

  *(self + v5) = 0;

  swift_unknownObjectRelease();
}

- (NSString)nowRecordingBundleIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC9DashBoard16DBDockController__statusBarStateProvider);
  selfCopy = self;
  nowRecordingBundleIdentifier = [v2 nowRecordingBundleIdentifier];
  if (nowRecordingBundleIdentifier)
  {
    v5 = nowRecordingBundleIdentifier;
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
  selfCopy = self;
  DBDockController.setAlwaysVisibleSecondaryDockWindowLevel()();
}

- (void)resetAlwaysVisibleSecondaryDockWindowLevel
{
  v2 = *(self + OBJC_IVAR____TtC9DashBoard16DBDockController__dockSceneHostWindow);
  selfCopy = self;
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
  selfCopy = self;
  DBDockController.invalidate()();
}

- (void)dockRootViewController:(id)controller requestFocusUpdate:(id)update
{
  controllerCopy = controller;
  updateCopy = update;
  selfCopy = self;
  sub_2482876A8(updateCopy);
}

@end