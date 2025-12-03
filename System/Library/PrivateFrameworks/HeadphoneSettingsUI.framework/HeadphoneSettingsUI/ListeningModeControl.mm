@interface ListeningModeControl
- (_TtC19HeadphoneSettingsUI20ListeningModeControl)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC19HeadphoneSettingsUI20ListeningModeControl)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
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

- (_TtC19HeadphoneSettingsUI20ListeningModeControl)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  MEMORY[0x1E69E5928](identifier);
  MEMORY[0x1E69E5928](specifier);
  if (identifier)
  {
    v7 = sub_1AC30A92C();
    v8 = v5;
    MEMORY[0x1E69E5920](identifier);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return sub_1AC240D2C(style, v9, v10, specifier);
}

- (_TtC19HeadphoneSettingsUI20ListeningModeControl)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  MEMORY[0x1E69E5928](identifier);
  if (identifier)
  {
    v6 = sub_1AC30A92C();
    v7 = v4;
    MEMORY[0x1E69E5920](identifier);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return sub_1AC241074(style, v8, v9);
}

@end