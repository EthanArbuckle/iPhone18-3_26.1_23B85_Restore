@interface HPSHeaderView
- (_TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView)initWithTitle:(id)title detailText:(id)text symbolName:(id)name animated:(BOOL)animated;
@end

@implementation HPSHeaderView

- (_TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  MEMORY[0x1E69E5928](title);
  MEMORY[0x1E69E5928](text);
  MEMORY[0x1E69E5928](icon);
  v16 = sub_1AC30A92C();
  v17 = v5;
  if (text)
  {
    v9 = sub_1AC30A92C();
    v10 = v6;
    MEMORY[0x1E69E5920](text);
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v8 = sub_1AC2BF82C(v16, v17, v11, v12, icon);
  MEMORY[0x1E69E5920](title);
  return v8;
}

- (_TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView)initWithTitle:(id)title detailText:(id)text symbolName:(id)name animated:(BOOL)animated
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
    MEMORY[0x1E69E5920](name);
  }

  v6 = sub_1AC30910C();
  sub_1AC2C1B50(v6);
}

@end