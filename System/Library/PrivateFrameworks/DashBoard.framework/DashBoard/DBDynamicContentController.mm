@interface DBDynamicContentController
- (BOOL)hidden;
- (CGRect)sceneFrameForApplication:(id)application;
- (CGRect)sceneFrameForApplication:(id)application proxyApplication:(id)proxyApplication;
- (FBSDisplayConfiguration)displayConfiguration;
- (FBSDisplayIdentity)displayIdentity;
- (UIEdgeInsets)safeAreaInsetsForApplication:(id)application;
- (UIEdgeInsets)safeAreaInsetsForApplication:(id)application proxyApplication:(id)proxyApplication;
- (_TtC9DashBoard26DBDynamicContentController)init;
- (_TtC9DashBoard26DBDynamicContentController)initWithWindowScene:(id)scene windowFrame:(CGRect)frame layoutEngine:(id)engine environment:(id)environment;
- (double)cornerRadius;
- (id)sceneIdentifierForApplication:(id)application;
- (void)invalidate;
- (void)setCornerRadius:(double)radius;
- (void)setHidden:(BOOL)hidden;
@end

@implementation DBDynamicContentController

- (_TtC9DashBoard26DBDynamicContentController)initWithWindowScene:(id)scene windowFrame:(CGRect)frame layoutEngine:(id)engine environment:(id)environment
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sceneCopy = scene;
  engineCopy = engine;
  swift_unknownObjectRetain();
  v14 = sub_248263644(sceneCopy, engineCopy, environment, x, y, width, height);

  swift_unknownObjectRelease();
  return v14;
}

- (BOOL)hidden
{
  v3 = OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_isHidden;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5 = OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_isHidden;
  swift_beginAccess();
  *(&self->super.isa + v5) = hiddenCopy;
  [*(&self->super.isa + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__window) setHidden_];
}

- (double)cornerRadius
{
  v3 = OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_cornerRadius;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCornerRadius:(double)radius
{
  v5 = OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_cornerRadius;
  swift_beginAccess();
  *(&self->super.isa + v5) = radius;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__window);
  selfCopy = self;
  layer = [v6 layer];
  [layer setCornerRadius_];
}

- (_TtC9DashBoard26DBDynamicContentController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)invalidate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__sceneCoordinator);
  if (v2)
  {
    selfCopy = self;
    [v2 invalidate];
    [*(&selfCopy->super.isa + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__window) setHidden_];
  }

  else
  {
    __break(1u);
  }
}

- (FBSDisplayIdentity)displayIdentity
{
  displayIdentity = [*(&self->super.isa + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__environmentConfiguration) displayIdentity];

  return displayIdentity;
}

- (FBSDisplayConfiguration)displayConfiguration
{
  displayConfiguration = [*(&self->super.isa + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__environmentConfiguration) displayConfiguration];

  return displayConfiguration;
}

- (id)sceneIdentifierForApplication:(id)application
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  applicationCopy = application;
  selfCopy = self;
  sceneIdentifierForApplication_ = [Strong sceneIdentifierForApplication_];
  swift_unknownObjectRelease();
  sub_248383960();

  MEMORY[0x24C1CAFD0](0x72657473756C633ALL, 0xE800000000000000);

  v9 = sub_248383930();

  return v9;
}

- (CGRect)sceneFrameForApplication:(id)application
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)sceneFrameForApplication:(id)application proxyApplication:(id)proxyApplication
{
  [(DBDynamicContentController *)self sceneFrameForApplication:application, proxyApplication];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsForApplication:(id)application
{
  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsForApplication:(id)application proxyApplication:(id)proxyApplication
{
  [(DBDynamicContentController *)self safeAreaInsetsForApplication:application, proxyApplication];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

@end