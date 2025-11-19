@interface FirmwareSeedingController
- (_TtC19HeadphoneSettingsUI25FirmwareSeedingController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)getFWSeedingBetaUpdate;
- (id)getFirmwareLoggingEnabled;
- (id)specifiers;
- (void)agreePrivacyConsent;
- (void)doneWithLegalConsent;
- (void)notNowToPrivacyConsent;
- (void)setFWSeedingBetaUpdateWithEnabled:(id)a3;
- (void)setFirmwareLoggingEnabledWithEnabled:(id)a3;
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

- (void)setFWSeedingBetaUpdateWithEnabled:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1AC2EA02C(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (id)getFirmwareLoggingEnabled
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC2EA8D0();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setFirmwareLoggingEnabledWithEnabled:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1AC2EAA38(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
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

- (_TtC19HeadphoneSettingsUI25FirmwareSeedingController)initWithNibName:(id)a3 bundle:(id)a4
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

  return FirmwareSeedingController.init(nibName:bundle:)(v8, v9, a4);
}

@end