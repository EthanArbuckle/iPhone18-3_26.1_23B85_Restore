@interface BatteryChargingViewController
- (_TtC19HeadphoneSettingsUI29BatteryChargingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)viewDidLoad;
@end

@implementation BatteryChargingViewController

- (_TtC19HeadphoneSettingsUI29BatteryChargingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  MEMORY[0x1E69E5928](name);
  MEMORY[0x1E69E5928](bundle);
  if (name)
  {
    v6 = sub_1AC30A92C();
    v7 = v4;
    MEMORY[0x1E69E5920](name);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return sub_1AC25C41C(v8, v9, bundle);
}

- (id)specifiers
{
  MEMORY[0x1E69E5928](self);
  v6 = sub_1AC25CC3C();
  MEMORY[0x1E69E5920](self);
  if (v6)
  {
    v3 = sub_1AC30AAFC();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewDidLoad
{
  MEMORY[0x1E69E5928](self);
  sub_1AC263850();
  MEMORY[0x1E69E5920](self);
}

@end