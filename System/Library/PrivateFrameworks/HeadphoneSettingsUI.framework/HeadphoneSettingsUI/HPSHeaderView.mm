@interface HPSHeaderView
- (_TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 animated:(BOOL)a6;
@end

@implementation HPSHeaderView

- (_TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  v16 = sub_1AC30A92C();
  v17 = v5;
  if (a4)
  {
    v9 = sub_1AC30A92C();
    v10 = v6;
    MEMORY[0x1E69E5920](a4);
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v8 = sub_1AC2BF82C(v16, v17, v11, v12, a5);
  MEMORY[0x1E69E5920](a3);
  return v8;
}

- (_TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 animated:(BOOL)a6
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
    MEMORY[0x1E69E5920](a5);
  }

  v6 = sub_1AC30910C();
  sub_1AC2C1B50(v6);
}

@end