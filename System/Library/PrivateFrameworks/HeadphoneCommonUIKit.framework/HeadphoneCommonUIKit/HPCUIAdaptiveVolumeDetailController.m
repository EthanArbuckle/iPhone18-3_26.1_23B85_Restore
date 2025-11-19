@interface HPCUIAdaptiveVolumeDetailController
- (_TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)viewDidLoad;
@end

@implementation HPCUIAdaptiveVolumeDetailController

- (_TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController)initWithNibName:(id)a3 bundle:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  if (a3)
  {
    v6 = sub_1AC3B7EF4();
    v7 = v4;
    MEMORY[0x1E69E5920](a3);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return HPCUIAdaptiveVolumeDetailController.init(nibName:bundle:)(v8, v9, a4);
}

- (void)viewDidLoad
{
  MEMORY[0x1E69E5928](self);
  sub_1AC3A8548();
  MEMORY[0x1E69E5920](self);
}

- (id)specifiers
{
  MEMORY[0x1E69E5928](self);
  v6 = sub_1AC3A9380();
  MEMORY[0x1E69E5920](self);
  if (v6)
  {
    v3 = sub_1AC3B8074();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end