@interface BobbleTutorialController
- (_TtC19HeadphoneSettingsUI24BobbleTutorialController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC19HeadphoneSettingsUI24BobbleTutorialController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BobbleTutorialController

- (void)viewWillAppear:(BOOL)a3
{
  MEMORY[0x1E69E5928](self);
  v3 = sub_1AC30910C();
  sub_1AC276D20(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (void)viewDidLoad
{
  MEMORY[0x1E69E5928](self);
  sub_1AC277CC4();
  MEMORY[0x1E69E5920](self);
}

- (_TtC19HeadphoneSettingsUI24BobbleTutorialController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
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

  sub_1AC27E64C(v7);
}

- (_TtC19HeadphoneSettingsUI24BobbleTutorialController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
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

  sub_1AC27E9A4(v7);
}

@end