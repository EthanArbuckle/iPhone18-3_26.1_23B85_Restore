@interface FreezeFramePageFlippingController
- (_TtC16MagnifierSupport33FreezeFramePageFlippingController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (void)didTapPageControl:(id)a3;
- (void)handleNoTextDetected;
- (void)handleShareFreezeFrameMenuItemActionWithMenuLocation:(CGRect)a3;
- (void)loadView;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4;
- (void)singleTap:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation FreezeFramePageFlippingController

- (void)singleTap:(id)a3
{
  v4 = objc_opt_self();
  v6 = self;
  v5 = [v4 defaultCenter];
  if (qword_281543EE0 != -1)
  {
    swift_once();
  }

  [v5 postNotificationName:qword_281548090 object:0];

  sub_257BDB830();
}

- (void)didTapPageControl:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_257ED0160();
  swift_unknownObjectRelease();
  sub_257BDD5C0(v5);

  __swift_destroy_boxed_opaque_existential_0(v5);
}

- (void)loadView
{
  v2 = self;
  sub_257BDD7E0();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_257BDD954();
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_257BDDC34(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(FreezeFramePageFlippingController *)&v5 viewDidAppear:v3];
  sub_257BDDE4C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_257BDE770(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(FreezeFramePageFlippingController *)&v5 viewWillDisappear:v3];
  sub_257DF5CD8(0, 0xE000000000000000);
}

- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4
{
  sub_257BD2C2C(0, &unk_281543F40);
  v6 = sub_257ECF810();
  v7 = a3;
  v8 = self;
  sub_257BE331C(v6);
}

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  v9 = a3;
  v10 = self;
  sub_257BE3668(v9, a4, a6);
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_257BE3960(v7);

  return v9;
}

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_257BE3AF4(v7);

  return v9;
}

- (_TtC16MagnifierSupport33FreezeFramePageFlippingController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleNoTextDetected
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = self;
    sub_257E1BA40();
    swift_unknownObjectRelease();
  }
}

- (void)handleShareFreezeFrameMenuItemActionWithMenuLocation:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_257BDF858(x, y, width, height);
}

@end