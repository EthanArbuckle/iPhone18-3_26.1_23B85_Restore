@interface FirmwareSeedingController
- (_TtC19HeadphoneSettingsUI25FirmwareSeedingController)initWithNibName:(id)name bundle:(id)bundle;
- (id)getFWSeedingBetaUpdate;
- (id)getFirmwareLoggingEnabled;
- (id)specifiers;
- (void)agreePrivacyConsent;
- (void)doneWithLegalConsent;
- (void)notNowToPrivacyConsent;
- (void)setFWSeedingBetaUpdateWithEnabled:(id)enabled;
- (void)setFirmwareLoggingEnabledWithEnabled:(id)enabled;
- (void)showLegalConsent;
- (void)showPrivacyConsent;
@end

@implementation FirmwareSeedingController

- (id)specifiers
{
  MEMORY[0x1E69E5928](self);
  v6 = sub_1AC2E7EB0();
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

- (id)getFWSeedingBetaUpdate
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC2E9EC4();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setFWSeedingBetaUpdateWithEnabled:(id)enabled
{
  MEMORY[0x1E69E5928](enabled);
  MEMORY[0x1E69E5928](self);
  sub_1AC2EA02C(enabled);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](enabled);
}

- (id)getFirmwareLoggingEnabled
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC2EA8D0();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setFirmwareLoggingEnabledWithEnabled:(id)enabled
{
  MEMORY[0x1E69E5928](enabled);
  MEMORY[0x1E69E5928](self);
  sub_1AC2EAA38(enabled);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](enabled);
}

- (void)showLegalConsent
{
  MEMORY[0x1E69E5928](self);
  sub_1AC2EAD18();
  MEMORY[0x1E69E5920](self);
}

- (void)doneWithLegalConsent
{
  MEMORY[0x1E69E5928](self);
  sub_1AC2EB218();
  MEMORY[0x1E69E5920](self);
}

- (void)showPrivacyConsent
{
  MEMORY[0x1E69E5928](self);
  sub_1AC2EB2B4();
  MEMORY[0x1E69E5920](self);
}

- (void)agreePrivacyConsent
{
  MEMORY[0x1E69E5928](self);
  sub_1AC2EB970();
  MEMORY[0x1E69E5920](self);
}

- (void)notNowToPrivacyConsent
{
  MEMORY[0x1E69E5928](self);
  sub_1AC2EBB50();
  MEMORY[0x1E69E5920](self);
}

- (_TtC19HeadphoneSettingsUI25FirmwareSeedingController)initWithNibName:(id)name bundle:(id)bundle
{
  MEMORY[0x1E69E5928](name);
  MEMORY[0x1E69E5928](bundle);
  if (name)
  {
    v6 = sub_1AC30A92C();
    v7 = v4;
    MEMORY[0x1E69E5920](name);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return FirmwareSeedingController.init(nibName:bundle:)(v8, v9, bundle);
}

@end