@interface DBInstrumentClusterRootViewController
- (_TtC9DashBoard37DBInstrumentClusterRootViewController)initWithCoder:(id)coder;
- (_TtC9DashBoard37DBInstrumentClusterRootViewController)initWithEnvironment:(id)environment workspaceIdentifier:(id)identifier;
- (_TtC9DashBoard37DBInstrumentClusterRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_showUIOverrideDefault;
- (void)_showUIOverrideInstructionCard;
- (void)_showUIOverrideMap;
- (void)_wallpaperChanged;
- (void)applicationController:(id)controller addedApplications:(id)applications updatedApplications:(id)updatedApplications removedApplications:(id)removedApplications;
- (void)environmentConfiguration:(id)configuration appearanceStyleDidChange:(int64_t)change;
- (void)environmentConfiguration:(id)configuration mapsAppearanceStyleDidChange:(int64_t)change;
- (void)invalidate;
- (void)navigationStateProvider:(id)provider frontmostIdentifierDidChange:(id)change;
- (void)navigationStateProvider:(id)provider navigatingIdentifiersDidChange:(id)change;
- (void)processMonitor:(id)monitor didHandleDeathOfBundleIdentifier:(id)identifier;
- (void)processMonitor:(id)monitor shouldHandleDeathOfBundleIdentifier:(id)identifier isCrash:(BOOL)crash;
- (void)session:(id)session receivedUnhandledRemoteEvent:(id)event withPayload:(id)payload;
- (void)session:(id)session showUIForScreenInfo:(id)info withURL:(id)l;
- (void)session:(id)session stopUIForScreenInfo:(id)info;
- (void)updateViewAreaFrame:(CGRect)frame safeAreaInsets:(UIEdgeInsets)insets;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation DBInstrumentClusterRootViewController

- (_TtC9DashBoard37DBInstrumentClusterRootViewController)initWithEnvironment:(id)environment workspaceIdentifier:(id)identifier
{
  swift_unknownObjectRetain();
  identifierCopy = identifier;
  v7 = sub_2482C8E94(environment, identifierCopy);
  swift_unknownObjectRelease();

  return v7;
}

- (_TtC9DashBoard37DBInstrumentClusterRootViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__application) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__scene) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController) = 0;
  v4 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__lastShowUIURL;
  v5 = sub_248381170();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)updateViewAreaFrame:(CGRect)frame safeAreaInsets:(UIEdgeInsets)insets
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  _s9DashBoard37DBInstrumentClusterRootViewControllerC06updateF9AreaFrame_04safeI6InsetsySo6CGRectV_So06UIEdgeL0VtF_0(x, y, width, height);
}

- (_TtC9DashBoard37DBInstrumentClusterRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  DBInstrumentClusterRootViewController.viewDidLoad()();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  DBInstrumentClusterRootViewController.viewIsAppearing(_:)(appearing);
}

- (void)invalidate
{
  selfCopy = self;
  DBInstrumentClusterRootViewController.invalidate()();
}

- (void)session:(id)session showUIForScreenInfo:(id)info withURL:(id)l
{
  v8 = sub_248381170();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248381120();
  sessionCopy = session;
  infoCopy = info;
  selfCopy = self;
  sub_2482C9288(infoCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)session:(id)session stopUIForScreenInfo:(id)info
{
  sessionCopy = session;
  infoCopy = info;
  selfCopy = self;
  sub_2482C95F0(infoCopy);
}

- (void)session:(id)session receivedUnhandledRemoteEvent:(id)event withPayload:(id)payload
{
  v7 = sub_248383960();
  v9 = v8;
  v10 = sub_2483838A0();
  sessionCopy = session;
  selfCopy = self;
  sub_2482C988C(v7, v9, v10);
}

- (void)applicationController:(id)controller addedApplications:(id)applications updatedApplications:(id)updatedApplications removedApplications:(id)removedApplications
{
  controllerCopy = controller;
  selfCopy = self;
  _s9DashBoard37DBInstrumentClusterRootViewControllerC011applicationG0_17addedApplications07updatedJ007removedJ0ySo013DBApplicationG0C_ShySo0M0CGA2LtF_0();
}

- (void)environmentConfiguration:(id)configuration appearanceStyleDidChange:(int64_t)change
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_2482C9E70(change);
}

- (void)environmentConfiguration:(id)configuration mapsAppearanceStyleDidChange:(int64_t)change
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_2482CA10C(change);
}

- (void)navigationStateProvider:(id)provider navigatingIdentifiersDidChange:(id)change
{
  providerCopy = provider;
  selfCopy = self;
  _s9DashBoard37DBInstrumentClusterRootViewControllerC23navigationStateProvider_30navigatingIdentifiersDidChangeySo012DBNavigationiJ0C_SaySSGtF_0(providerCopy);
}

- (void)navigationStateProvider:(id)provider frontmostIdentifierDidChange:(id)change
{
  v6 = sub_248383960();
  v8 = v7;
  providerCopy = provider;
  selfCopy = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  DBInstrumentClusterRootViewController.navigationStateProvider(_:frontmostIdentifierDidChange:)(providerCopy, v11);
}

- (void)processMonitor:(id)monitor shouldHandleDeathOfBundleIdentifier:(id)identifier isCrash:(BOOL)crash
{
  v8 = sub_248383960();
  v10 = v9;
  monitorCopy = monitor;
  selfCopy = self;
  sub_2482CA534(v8, v10, crash);
}

- (void)processMonitor:(id)monitor didHandleDeathOfBundleIdentifier:(id)identifier
{
  v6 = sub_248383960();
  v8 = v7;
  monitorCopy = monitor;
  selfCopy = self;
  sub_2482CAAE8(v6, v8);
}

- (void)_wallpaperChanged
{
  selfCopy = self;
  sub_2482C84CC();
}

- (void)_showUIOverrideDefault
{
  selfCopy = self;
  sub_2482C88DC();
}

- (void)_showUIOverrideInstructionCard
{
  selfCopy = self;
  sub_2482C8AC4();
}

- (void)_showUIOverrideMap
{
  selfCopy = self;
  sub_2482C8CAC();
}

@end