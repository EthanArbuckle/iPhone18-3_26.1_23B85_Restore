@interface FreezeFramePageFlippingController
- (_TtC16MagnifierSupport33FreezeFramePageFlippingController)initWithNibName:(id)name bundle:(id)bundle;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (void)didTapPageControl:(id)control;
- (void)handleNoTextDetected;
- (void)handleShareFreezeFrameMenuItemActionWithMenuLocation:(CGRect)location;
- (void)loadView;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers;
- (void)singleTap:(id)tap;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation FreezeFramePageFlippingController

- (void)singleTap:(id)tap
{
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  if (qword_281543EE0 != -1)
  {
    swift_once();
  }

  [defaultCenter postNotificationName:qword_281548090 object:0];

  sub_257BDB830();
}

- (void)didTapPageControl:(id)control
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_257ED0160();
  swift_unknownObjectRelease();
  sub_257BDD5C0(v5);

  __swift_destroy_boxed_opaque_existential_0(v5);
}

- (void)loadView
{
  selfCopy = self;
  sub_257BDD7E0();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257BDD954();
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_257BDDC34(controller);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(FreezeFramePageFlippingController *)&v5 viewDidAppear:appearCopy];
  sub_257BDDE4C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257BDE770(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(FreezeFramePageFlippingController *)&v5 viewWillDisappear:disappearCopy];
  sub_257DF5CD8(0, 0xE000000000000000);
}

- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers
{
  sub_257BD2C2C(0, &unk_281543F40);
  v6 = sub_257ECF810();
  controllerCopy = controller;
  selfCopy = self;
  sub_257BE331C(v6);
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  controllerCopy = controller;
  selfCopy = self;
  sub_257BE3668(controllerCopy, animating, completed);
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  v9 = sub_257BE3960(viewControllerCopy);

  return v9;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  v9 = sub_257BE3AF4(viewControllerCopy);

  return v9;
}

- (_TtC16MagnifierSupport33FreezeFramePageFlippingController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleNoTextDetected
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_257E1BA40();
    swift_unknownObjectRelease();
  }
}

- (void)handleShareFreezeFrameMenuItemActionWithMenuLocation:(CGRect)location
{
  height = location.size.height;
  width = location.size.width;
  y = location.origin.y;
  x = location.origin.x;
  selfCopy = self;
  sub_257BDF858(x, y, width, height);
}

@end