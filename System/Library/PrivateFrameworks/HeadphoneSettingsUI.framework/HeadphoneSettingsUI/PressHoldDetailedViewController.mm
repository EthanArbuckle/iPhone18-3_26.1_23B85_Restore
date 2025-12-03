@interface PressHoldDetailedViewController
- (_TtC19HeadphoneSettingsUI31PressHoldDetailedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)viewDidAppear:(BOOL)appear;
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

- (void)viewDidAppear:(BOOL)appear
{
  MEMORY[0x1E69E5928](self);
  v3 = sub_1AC30910C();
  sub_1AC2F2FF4(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (_TtC19HeadphoneSettingsUI31PressHoldDetailedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  MEMORY[0x1E69E5928](name);
  MEMORY[0x1E69E5928](bundle);
  if (name)
  {
    sub_1AC30A92C();
    MEMORY[0x1E69E5920](name);
  }

  sub_1AC2F31C8();
}

@end