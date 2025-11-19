@interface DBDynamicContentController
- (BOOL)hidden;
- (CGRect)sceneFrameForApplication:(id)a3;
- (CGRect)sceneFrameForApplication:(id)a3 proxyApplication:(id)a4;
- (FBSDisplayConfiguration)displayConfiguration;
- (FBSDisplayIdentity)displayIdentity;
- (UIEdgeInsets)safeAreaInsetsForApplication:(id)a3;
- (UIEdgeInsets)safeAreaInsetsForApplication:(id)a3 proxyApplication:(id)a4;
- (_TtC9DashBoard26DBDynamicContentController)init;
- (_TtC9DashBoard26DBDynamicContentController)initWithWindowScene:(id)a3 windowFrame:(CGRect)a4 layoutEngine:(id)a5 environment:(id)a6;
- (double)cornerRadius;
- (id)sceneIdentifierForApplication:(id)a3;
- (void)invalidate;
- (void)setCornerRadius:(double)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation DBDynamicContentController

- (_TtC9DashBoard26DBDynamicContentController)initWithWindowScene:(id)a3 windowFrame:(CGRect)a4 layoutEngine:(id)a5 environment:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = a5;
  swift_unknownObjectRetain();
  v14 = sub_248263644(v12, v13, a6, x, y, width, height);

  swift_unknownObjectRelease();
  return v14;
}

- (BOOL)hidden
{
  v3 = OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_isHidden;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_isHidden;
  swift_beginAccess();
  *(&self->super.isa + v5) = v3;
  [*(&self->super.isa + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__window) setHidden_];
}

- (double)cornerRadius
{
  v3 = OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_cornerRadius;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCornerRadius:(double)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard26DBDynamicContentController_cornerRadius;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__window);
  v7 = self;
  v8 = [v6 layer];
  [v8 setCornerRadius_];
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
    v3 = self;
    [v2 invalidate];
    [*(&v3->super.isa + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__window) setHidden_];
  }

  else
  {
    __break(1u);
  }
}

- (FBSDisplayIdentity)displayIdentity
{
  v2 = [*(&self->super.isa + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__environmentConfiguration) displayIdentity];

  return v2;
}

- (FBSDisplayConfiguration)displayConfiguration
{
  v2 = [*(&self->super.isa + OBJC_IVAR____TtC9DashBoard26DBDynamicContentController__environmentConfiguration) displayConfiguration];

  return v2;
}

- (id)sceneIdentifierForApplication:(id)a3
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = a3;
  v7 = self;
  v8 = [Strong sceneIdentifierForApplication_];
  swift_unknownObjectRelease();
  sub_248383960();

  MEMORY[0x24C1CAFD0](0x72657473756C633ALL, 0xE800000000000000);

  v9 = sub_248383930();

  return v9;
}

- (CGRect)sceneFrameForApplication:(id)a3
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

- (CGRect)sceneFrameForApplication:(id)a3 proxyApplication:(id)a4
{
  [(DBDynamicContentController *)self sceneFrameForApplication:a3, a4];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsForApplication:(id)a3
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

- (UIEdgeInsets)safeAreaInsetsForApplication:(id)a3 proxyApplication:(id)a4
{
  [(DBDynamicContentController *)self safeAreaInsetsForApplication:a3, a4];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

@end