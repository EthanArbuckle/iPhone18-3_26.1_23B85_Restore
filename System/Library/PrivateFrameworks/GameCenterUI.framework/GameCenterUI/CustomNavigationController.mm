@interface CustomNavigationController
- (_TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (void)donePressed:(id)pressed;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation CustomNavigationController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24E0BCA68();
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_24E0BCF5C(controllerCopy, viewControllerCopy);
}

- (void)donePressed:(id)pressed
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_24E3487A8();
  swift_unknownObjectRelease();
  sub_24E0BCFF0();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  if (!class)
  {
    ObjCClassMetadata = 0;
    if (toolbarClass)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return sub_24E0BD0BC(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!toolbarClass)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_24E0BD0BC(ObjCClassMetadata, v6);
}

- (_TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_24E347CF8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_24E0BD27C(v5, v7, bundle);
}

@end