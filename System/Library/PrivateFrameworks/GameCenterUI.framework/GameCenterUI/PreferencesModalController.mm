@interface PreferencesModalController
- (_TtC12GameCenterUIP33_C2AB98B87AF2030AFF6D71CAC9E6FA9326PreferencesModalController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (void)didTapDone;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation PreferencesModalController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24E057C1C();
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_24E057D28(controllerCopy, viewControllerCopy);
}

- (void)didTapDone
{
  selfCopy = self;
  sub_24E057EAC();
}

- (_TtC12GameCenterUIP33_C2AB98B87AF2030AFF6D71CAC9E6FA9326PreferencesModalController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  if (class)
  {
    swift_getObjCClassMetadata();
    if (!toolbarClass)
    {
      goto LABEL_5;
    }
  }

  else if (!toolbarClass)
  {
LABEL_5:
    sub_24E058048();
  }

  swift_getObjCClassMetadata();
  goto LABEL_5;
}

@end