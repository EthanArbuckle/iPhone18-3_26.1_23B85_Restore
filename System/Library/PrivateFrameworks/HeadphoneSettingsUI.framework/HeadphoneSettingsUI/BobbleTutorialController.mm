@interface BobbleTutorialController
- (_TtC19HeadphoneSettingsUI24BobbleTutorialController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC19HeadphoneSettingsUI24BobbleTutorialController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BobbleTutorialController

- (void)viewWillAppear:(BOOL)appear
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

- (_TtC19HeadphoneSettingsUI24BobbleTutorialController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  MEMORY[0x1E69E5928](title);
  MEMORY[0x1E69E5928](text);
  MEMORY[0x1E69E5928](name);
  sub_1AC30A92C();
  if (text)
  {
    sub_1AC30A92C();
    MEMORY[0x1E69E5920](text);
  }

  if (name)
  {
    sub_1AC30A92C();
    v8 = v6;
    MEMORY[0x1E69E5920](name);
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  sub_1AC27E64C(v7);
}

- (_TtC19HeadphoneSettingsUI24BobbleTutorialController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  MEMORY[0x1E69E5928](title);
  MEMORY[0x1E69E5928](text);
  MEMORY[0x1E69E5928](icon);
  sub_1AC30A92C();
  if (text)
  {
    sub_1AC30A92C();
    v8 = v6;
    MEMORY[0x1E69E5920](text);
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  sub_1AC27E9A4(v7);
}

@end