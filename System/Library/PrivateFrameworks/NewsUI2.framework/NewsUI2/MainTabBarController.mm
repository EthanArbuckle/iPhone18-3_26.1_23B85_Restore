@interface MainTabBarController
- (_TtC7NewsUI220MainTabBarController)initWithCoder:(id)coder;
- (void)accessibilityReduceTransparencyDidChange;
- (void)dealloc;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MainTabBarController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2187C3E70();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(MainTabBarController *)&v7 viewDidAppear:appearCopy];
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

- (_TtC7NewsUI220MainTabBarController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI220MainTabBarController_followingEngagementView) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;

  sub_219BE58F4();

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(MainTabBarController *)&v5 dealloc];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(MainTabBarController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  sub_219BE5914();

  swift_unknownObjectRelease();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MainTabBarController *)&v5 viewWillDisappear:disappearCopy];
  sub_219BE5904();
}

- (void)accessibilityReduceTransparencyDidChange
{
  __swift_project_boxed_opaque_existential_1((&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI220MainTabBarController_styler), *(&self->super.super.super._view + OBJC_IVAR____TtC7NewsUI220MainTabBarController_styler));
  selfCopy = self;
  tabBar = [(MainTabBarController *)selfCopy tabBar];
  sub_219BE6D74();
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_21898C8E8(controllerCopy, viewControllerCopy);
}

@end