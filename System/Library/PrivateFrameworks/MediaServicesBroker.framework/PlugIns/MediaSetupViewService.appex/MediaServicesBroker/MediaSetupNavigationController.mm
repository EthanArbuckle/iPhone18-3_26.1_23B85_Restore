@interface MediaSetupNavigationController
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (MediaSetupNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (MediaSetupNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (MediaSetupNavigationController)initWithRootViewController:(id)controller;
- (void)_willAppearInRemoteViewController;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation MediaSetupNavigationController

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_10000F7D8(contextCopy);
}

- (void)_willAppearInRemoteViewController
{
  selfCopy = self;
  sub_100010018();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100010394();
}

- (MediaSetupNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
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
    return sub_1000106C4(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!toolbarClass)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_1000106C4(ObjCClassMetadata, v6);
}

- (MediaSetupNavigationController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v4 = sub_100015240(controllerCopy);

  return v4;
}

- (MediaSetupNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1000258CC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000108E4(v5, v7, bundle);
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_10001539C();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_1000154A8();
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  LOBYTE(self) = sub_1000155B4();

  return self & 1;
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_1000156B4();
}

@end