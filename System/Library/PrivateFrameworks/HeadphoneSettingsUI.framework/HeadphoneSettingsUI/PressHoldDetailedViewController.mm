@interface PressHoldDetailedViewController
- (_TtC19HeadphoneSettingsUI31PressHoldDetailedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation PressHoldDetailedViewController

- (id)specifiers
{
  MEMORY[0x1E69E5928](self);
  v6 = sub_1AC2F1D34();
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

- (void)viewDidAppear:(BOOL)a3
{
  MEMORY[0x1E69E5928](self);
  v3 = sub_1AC30910C();
  sub_1AC2F2FF4(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (_TtC19HeadphoneSettingsUI31PressHoldDetailedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  if (a3)
  {
    sub_1AC30A92C();
    MEMORY[0x1E69E5920](a3);
  }

  sub_1AC2F31C8();
}

@end