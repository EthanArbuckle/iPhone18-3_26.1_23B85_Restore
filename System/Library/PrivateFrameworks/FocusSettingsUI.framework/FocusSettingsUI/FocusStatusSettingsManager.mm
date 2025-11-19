@interface FocusStatusSettingsManager
- (_TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager)init;
- (void)dealloc;
- (void)modeConfigurationService:(id)a3 didReceiveAvailableModesUpdate:(id)a4;
@end

@implementation FocusStatusSettingsManager

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_isListeningToModeConfigurationService) == 1)
  {
    [*(&self->super.isa + OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_modeConfigurationService) removeListener_];
  }

  else
  {
    v3 = self;
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for FocusStatusSettingsManager();
  [(FocusStatusSettingsManager *)&v4 dealloc];
}

- (_TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)modeConfigurationService:(id)a3 didReceiveAvailableModesUpdate:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_24BA2BB90();
}

@end