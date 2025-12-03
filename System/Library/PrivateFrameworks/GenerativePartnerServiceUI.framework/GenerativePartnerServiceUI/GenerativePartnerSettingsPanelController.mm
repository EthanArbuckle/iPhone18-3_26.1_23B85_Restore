@interface GenerativePartnerSettingsPanelController
- (_TtC26GenerativePartnerServiceUI40GenerativePartnerSettingsPanelController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleURL:(NSDictionary *)l withCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation GenerativePartnerSettingsPanelController

- (void)handleURL:(NSDictionary *)l withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = l;
  v7[3] = v6;
  v7[4] = self;
  lCopy = l;
  selfCopy = self;

  sub_1BE4E2DBC(&unk_1BE54F520, v7);
}

- (_TtC26GenerativePartnerServiceUI40GenerativePartnerSettingsPanelController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1BE54C70C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return GenerativePartnerSettingsPanelController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  GenerativePartnerSettingsPanelController.viewDidLoad()();
}

@end