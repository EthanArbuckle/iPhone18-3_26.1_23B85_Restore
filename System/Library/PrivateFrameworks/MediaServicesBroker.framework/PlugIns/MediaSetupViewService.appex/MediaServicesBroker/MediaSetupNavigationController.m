@interface MediaSetupNavigationController
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (MediaSetupNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (MediaSetupNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (MediaSetupNavigationController)initWithRootViewController:(id)a3;
- (void)_willAppearInRemoteViewController;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)viewDidLoad;
@end

@implementation MediaSetupNavigationController

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000F7D8(v4);
}

- (void)_willAppearInRemoteViewController
{
  v2 = self;
  sub_100010018();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100010394();
}

- (MediaSetupNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  if (!a3)
  {
    ObjCClassMetadata = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return sub_1000106C4(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_1000106C4(ObjCClassMetadata, v6);
}

- (MediaSetupNavigationController)initWithRootViewController:(id)a3
{
  v3 = a3;
  v4 = sub_100015240(v3);

  return v4;
}

- (MediaSetupNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1000258CC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000108E4(v5, v7, a4);
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001539C();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000154A8();
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1000155B4();

  return self & 1;
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000156B4();
}

@end