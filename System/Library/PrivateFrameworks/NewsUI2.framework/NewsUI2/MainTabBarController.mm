@interface MainTabBarController
- (_TtC7NewsUI220MainTabBarController)initWithCoder:(id)a3;
- (void)accessibilityReduceTransparencyDidChange;
- (void)dealloc;
- (void)tabBarController:(id)a3 didSelectViewController:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MainTabBarController

- (void)viewDidLoad
{
  v2 = self;
  sub_2187C3E70();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(MainTabBarController *)&v7 viewDidAppear:v3];
  if (qword_280EE3858 != -1)
  {
    swift_once();
  }

  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_219BE6A84();
  sub_2187B1C64(v5, &qword_280EE5AD0, &qword_280EE5AE0);
  sub_219BE5964();
}

- (_TtC7NewsUI220MainTabBarController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI220MainTabBarController_followingEngagementView) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;

  sub_219BE58F4();

  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(MainTabBarController *)&v5 dealloc];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(MainTabBarController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  sub_219BE5914();

  swift_unknownObjectRelease();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MainTabBarController *)&v5 viewWillDisappear:v3];
  sub_219BE5904();
}

- (void)accessibilityReduceTransparencyDidChange
{
  __swift_project_boxed_opaque_existential_1((&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI220MainTabBarController_styler), *(&self->super.super.super._view + OBJC_IVAR____TtC7NewsUI220MainTabBarController_styler));
  v4 = self;
  v3 = [(MainTabBarController *)v4 tabBar];
  sub_219BE6D74();
}

- (void)tabBarController:(id)a3 didSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21898C8E8(v6, v7);
}

@end