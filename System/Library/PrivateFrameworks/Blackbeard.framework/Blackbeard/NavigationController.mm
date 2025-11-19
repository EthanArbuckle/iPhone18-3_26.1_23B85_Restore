@interface NavigationController
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC10Blackbeard20NavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC10Blackbeard20NavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC10Blackbeard20NavigationController)initWithRootViewController:(id)a3;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation NavigationController

- (UIViewController)childViewControllerForStatusBarStyle
{
  ObjectType = swift_getObjectType();
  v4 = self;
  v5 = [(NavigationController *)v4 topViewController];
  if (!v5)
  {
    v8.receiver = v4;
    v8.super_class = ObjectType;
    v5 = [(NavigationController *)&v8 childViewControllerForStatusBarStyle];
  }

  v6 = v5;

  return v6;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v10.receiver;
  [(NavigationController *)&v10 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = *&v7[OBJC_IVAR____TtC10Blackbeard20NavigationController_paletteViewController];
  if (v8)
  {
    v9 = v8;
    [v9 viewWillTransitionToSize:a4 withTransitionCoordinator:{width, height, v10.receiver, v10.super_class}];
  }

  swift_unknownObjectRelease();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1E64C1914(a3);
}

- (void)didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1E64C2160(a3);
}

- (_TtC10Blackbeard20NavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10Blackbeard20NavigationController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10Blackbeard20NavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_1E65E6708();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = self;
  }

  sub_1E64C2B74(a3, v16, v17);

  sub_1E5DFE50C(v16, &qword_1ED072B28, &unk_1E65F06A0);
  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_1E65E6BF8();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end