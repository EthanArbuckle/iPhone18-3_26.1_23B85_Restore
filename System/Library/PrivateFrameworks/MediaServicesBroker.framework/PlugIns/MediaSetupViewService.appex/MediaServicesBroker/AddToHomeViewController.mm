@interface AddToHomeViewController
- (void)selectAddToHomes;
@end

@implementation AddToHomeViewController

- (void)selectAddToHomes
{
  v2 = *(*&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC21MediaSetupViewService23SetupBaseViewController_mainController] + OBJC_IVAR___MediaSetupNavigationController_setupSession);
  if (v2)
  {
    memset(v6, 0, sizeof(v6));
    v3 = self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC21MediaSetupViewService23AddToHomeViewController_trigger];
    v5 = self;
    v4 = v2;
    sub_1000056D4(v3, v6);
  }
}

@end