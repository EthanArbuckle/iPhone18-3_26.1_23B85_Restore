@interface LearnMoreViewController
- (void)selectLearnMore;
@end

@implementation LearnMoreViewController

- (void)selectLearnMore
{
  v2 = *(*&self->super.OBWelcomeController_opaque[OBJC_IVAR____TtC21MediaSetupViewService23SetupBaseViewController_mainController] + OBJC_IVAR___MediaSetupNavigationController_setupSession);
  if (v2)
  {
    memset(v5, 0, sizeof(v5));
    v4 = self;
    v3 = v2;
    sub_1000056D4(5u, v5);
  }
}

@end