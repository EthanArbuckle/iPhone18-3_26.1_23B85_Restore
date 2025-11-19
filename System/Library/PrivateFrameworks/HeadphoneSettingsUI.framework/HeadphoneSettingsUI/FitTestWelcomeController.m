@interface FitTestWelcomeController
- (_TtC19HeadphoneSettingsUI24FitTestWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC19HeadphoneSettingsUI24FitTestWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidLoad;
@end

@implementation FitTestWelcomeController

- (void)viewDidLoad
{
  MEMORY[0x1E69E5928](self);
  sub_1AC2DAC48();
  MEMORY[0x1E69E5920](self);
}

- (_TtC19HeadphoneSettingsUI24FitTestWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  sub_1AC30A92C();
  if (a4)
  {
    sub_1AC30A92C();
    MEMORY[0x1E69E5920](a4);
  }

  if (a5)
  {
    sub_1AC30A92C();
    v8 = v6;
    MEMORY[0x1E69E5920](a5);
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  sub_1AC2DBE58(v7);
}

- (_TtC19HeadphoneSettingsUI24FitTestWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  sub_1AC30A92C();
  if (a4)
  {
    sub_1AC30A92C();
    v8 = v6;
    MEMORY[0x1E69E5920](a4);
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  sub_1AC2DC09C(v7);
}

@end