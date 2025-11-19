@interface ListeningModeControl
- (_TtC19HeadphoneSettingsUI20ListeningModeControl)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC19HeadphoneSettingsUI20ListeningModeControl)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)localizedBothBudsInEarAdaptiveString;
- (id)localizedBothBudsInEarNCString;
@end

@implementation ListeningModeControl

- (id)localizedBothBudsInEarAdaptiveString
{
  MEMORY[0x1E69E5928](self);
  sub_1AC240890();
  MEMORY[0x1E69E5920](self);
  v4 = sub_1AC30A91C();

  return v4;
}

- (id)localizedBothBudsInEarNCString
{
  MEMORY[0x1E69E5928](self);
  sub_1AC240A70();
  MEMORY[0x1E69E5920](self);
  v4 = sub_1AC30A91C();

  return v4;
}

- (_TtC19HeadphoneSettingsUI20ListeningModeControl)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  if (a4)
  {
    v7 = sub_1AC30A92C();
    v8 = v5;
    MEMORY[0x1E69E5920](a4);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return sub_1AC240D2C(a3, v9, v10, a5);
}

- (_TtC19HeadphoneSettingsUI20ListeningModeControl)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  MEMORY[0x1E69E5928](a4);
  if (a4)
  {
    v6 = sub_1AC30A92C();
    v7 = v4;
    MEMORY[0x1E69E5920](a4);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return sub_1AC241074(a3, v8, v9);
}

@end