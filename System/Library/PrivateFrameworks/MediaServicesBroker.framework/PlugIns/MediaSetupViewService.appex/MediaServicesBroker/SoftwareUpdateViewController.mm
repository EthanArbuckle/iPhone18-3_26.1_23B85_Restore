@interface SoftwareUpdateViewController
- (void)selectContinue;
@end

@implementation SoftwareUpdateViewController

- (void)selectContinue
{
  v2 = *(*&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC21MediaSetupViewService23SetupBaseViewController_mainController] + OBJC_IVAR___MediaSetupNavigationController_setupSession);
  if (v2)
  {
    memset(v5, 0, sizeof(v5));
    selfCopy = self;
    v3 = v2;
    sub_1000056D4(7u, v5);
  }
}

@end