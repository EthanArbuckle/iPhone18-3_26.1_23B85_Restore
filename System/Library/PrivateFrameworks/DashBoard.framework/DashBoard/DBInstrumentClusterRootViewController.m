@interface DBInstrumentClusterRootViewController
- (_TtC9DashBoard37DBInstrumentClusterRootViewController)initWithCoder:(id)a3;
- (_TtC9DashBoard37DBInstrumentClusterRootViewController)initWithEnvironment:(id)a3 workspaceIdentifier:(id)a4;
- (_TtC9DashBoard37DBInstrumentClusterRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_showUIOverrideDefault;
- (void)_showUIOverrideInstructionCard;
- (void)_showUIOverrideMap;
- (void)_wallpaperChanged;
- (void)applicationController:(id)a3 addedApplications:(id)a4 updatedApplications:(id)a5 removedApplications:(id)a6;
- (void)environmentConfiguration:(id)a3 appearanceStyleDidChange:(int64_t)a4;
- (void)environmentConfiguration:(id)a3 mapsAppearanceStyleDidChange:(int64_t)a4;
- (void)invalidate;
- (void)navigationStateProvider:(id)a3 frontmostIdentifierDidChange:(id)a4;
- (void)navigationStateProvider:(id)a3 navigatingIdentifiersDidChange:(id)a4;
- (void)processMonitor:(id)a3 didHandleDeathOfBundleIdentifier:(id)a4;
- (void)processMonitor:(id)a3 shouldHandleDeathOfBundleIdentifier:(id)a4 isCrash:(BOOL)a5;
- (void)session:(id)a3 receivedUnhandledRemoteEvent:(id)a4 withPayload:(id)a5;
- (void)session:(id)a3 showUIForScreenInfo:(id)a4 withURL:(id)a5;
- (void)session:(id)a3 stopUIForScreenInfo:(id)a4;
- (void)updateViewAreaFrame:(CGRect)a3 safeAreaInsets:(UIEdgeInsets)a4;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation DBInstrumentClusterRootViewController

- (_TtC9DashBoard37DBInstrumentClusterRootViewController)initWithEnvironment:(id)a3 workspaceIdentifier:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = sub_2482C8E94(a3, v6);
  swift_unknownObjectRelease();

  return v7;
}

- (_TtC9DashBoard37DBInstrumentClusterRootViewController)initWithCoder:(id)a3
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

- (void)updateViewAreaFrame:(CGRect)a3 safeAreaInsets:(UIEdgeInsets)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self;
  _s9DashBoard37DBInstrumentClusterRootViewControllerC06updateF9AreaFrame_04safeI6InsetsySo6CGRectV_So06UIEdgeL0VtF_0(x, y, width, height);
}

- (_TtC9DashBoard37DBInstrumentClusterRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  DBInstrumentClusterRootViewController.viewDidLoad()();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  DBInstrumentClusterRootViewController.viewIsAppearing(_:)(a3);
}

- (void)invalidate
{
  v2 = self;
  DBInstrumentClusterRootViewController.invalidate()();
}

- (void)session:(id)a3 showUIForScreenInfo:(id)a4 withURL:(id)a5
{
  v8 = sub_248381170();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248381120();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_2482C9288(v13, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)session:(id)a3 stopUIForScreenInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2482C95F0(v7);
}

- (void)session:(id)a3 receivedUnhandledRemoteEvent:(id)a4 withPayload:(id)a5
{
  v7 = sub_248383960();
  v9 = v8;
  v10 = sub_2483838A0();
  v11 = a3;
  v12 = self;
  sub_2482C988C(v7, v9, v10);
}

- (void)applicationController:(id)a3 addedApplications:(id)a4 updatedApplications:(id)a5 removedApplications:(id)a6
{
  v7 = a3;
  v8 = self;
  _s9DashBoard37DBInstrumentClusterRootViewControllerC011applicationG0_17addedApplications07updatedJ007removedJ0ySo013DBApplicationG0C_ShySo0M0CGA2LtF_0();
}

- (void)environmentConfiguration:(id)a3 appearanceStyleDidChange:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_2482C9E70(a4);
}

- (void)environmentConfiguration:(id)a3 mapsAppearanceStyleDidChange:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_2482CA10C(a4);
}

- (void)navigationStateProvider:(id)a3 navigatingIdentifiersDidChange:(id)a4
{
  v5 = a3;
  v6 = self;
  _s9DashBoard37DBInstrumentClusterRootViewControllerC23navigationStateProvider_30navigatingIdentifiersDidChangeySo012DBNavigationiJ0C_SaySSGtF_0(v5);
}

- (void)navigationStateProvider:(id)a3 frontmostIdentifierDidChange:(id)a4
{
  v6 = sub_248383960();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  DBInstrumentClusterRootViewController.navigationStateProvider(_:frontmostIdentifierDidChange:)(v9, v11);
}

- (void)processMonitor:(id)a3 shouldHandleDeathOfBundleIdentifier:(id)a4 isCrash:(BOOL)a5
{
  v8 = sub_248383960();
  v10 = v9;
  v11 = a3;
  v12 = self;
  sub_2482CA534(v8, v10, a5);
}

- (void)processMonitor:(id)a3 didHandleDeathOfBundleIdentifier:(id)a4
{
  v6 = sub_248383960();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_2482CAAE8(v6, v8);
}

- (void)_wallpaperChanged
{
  v2 = self;
  sub_2482C84CC();
}

- (void)_showUIOverrideDefault
{
  v2 = self;
  sub_2482C88DC();
}

- (void)_showUIOverrideInstructionCard
{
  v2 = self;
  sub_2482C8AC4();
}

- (void)_showUIOverrideMap
{
  v2 = self;
  sub_2482C8CAC();
}

@end