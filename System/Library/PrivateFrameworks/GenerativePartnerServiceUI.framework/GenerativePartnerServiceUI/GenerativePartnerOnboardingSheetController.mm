@interface GenerativePartnerOnboardingSheetController
- (_TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController)initWithWillDismissAction:(id)action;
- (void)viewDidLoad;
@end

@implementation GenerativePartnerOnboardingSheetController

- (_TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController)initWithWillDismissAction:(id)action
{
  v3 = _Block_copy(action);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return GenerativePartnerOnboardingSheetController.init(willDismissAction:)(sub_1BE4C810C, v4);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BE4C7B34();
}

- (_TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1BE54C70C();
  }

  bundleCopy = bundle;
  GenerativePartnerOnboardingSheetController.init(nibName:bundle:)();
}

@end