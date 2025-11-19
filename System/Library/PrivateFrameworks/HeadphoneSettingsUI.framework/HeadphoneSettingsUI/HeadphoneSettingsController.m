@interface HeadphoneSettingsController
- (_TtC19HeadphoneSettingsUI27HeadphoneSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)presentViewController:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HeadphoneSettingsController

- (void)presentViewController:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  HeadphoneSettingsController.present(_:)(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  MEMORY[0x1E69E5928](self);
  v3 = sub_1AC30910C();
  sub_1AC25225C(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (void)viewDidLoad
{
  MEMORY[0x1E69E5928](self);
  sub_1AC252604();
  MEMORY[0x1E69E5920](self);
}

- (void)viewDidDisappear:(BOOL)a3
{
  MEMORY[0x1E69E5928](self);
  v3 = sub_1AC30910C();
  sub_1AC2526C8(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (_TtC19HeadphoneSettingsUI27HeadphoneSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  if (a3)
  {
    v6 = sub_1AC30A92C();
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

  return HeadphoneSettingsController.init(nibName:bundle:)(v8, v9, a4);
}

- (id)specifiers
{
  MEMORY[0x1E69E5928](self);
  v6 = sub_1AC253854();
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

@end