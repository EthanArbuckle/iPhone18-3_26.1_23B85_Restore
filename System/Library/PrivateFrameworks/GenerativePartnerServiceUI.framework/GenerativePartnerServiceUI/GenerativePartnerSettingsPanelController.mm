@interface GenerativePartnerSettingsPanelController
- (_TtC26GenerativePartnerServiceUI40GenerativePartnerSettingsPanelController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleURL:(NSDictionary *)a3 withCompletion:(id)a4;
- (void)viewDidLoad;
@end

@implementation GenerativePartnerSettingsPanelController

- (void)handleURL:(NSDictionary *)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1BE4E2DBC(&unk_1BE54F520, v7);
}

- (_TtC26GenerativePartnerServiceUI40GenerativePartnerSettingsPanelController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1BE54C70C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return GenerativePartnerSettingsPanelController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  GenerativePartnerSettingsPanelController.viewDidLoad()();
}

@end