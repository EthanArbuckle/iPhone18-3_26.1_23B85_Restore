@interface GenerativePartnerOnboardingSheetController
- (_TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController)initWithWillDismissAction:(id)a3;
- (void)viewDidLoad;
@end

@implementation GenerativePartnerOnboardingSheetController

- (_TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController)initWithWillDismissAction:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return GenerativePartnerOnboardingSheetController.init(willDismissAction:)(sub_1BE4C810C, v4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BE4C7B34();
}

- (_TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1BE54C70C();
  }

  v5 = a4;
  GenerativePartnerOnboardingSheetController.init(nibName:bundle:)();
}

@end