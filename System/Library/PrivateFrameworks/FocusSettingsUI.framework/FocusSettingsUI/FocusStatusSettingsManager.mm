@interface FocusStatusSettingsManager
- (_TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager)init;
- (void)dealloc;
- (void)modeConfigurationService:(id)service didReceiveAvailableModesUpdate:(id)update;
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
    selfCopy = self;
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

- (void)modeConfigurationService:(id)service didReceiveAvailableModesUpdate:(id)update
{
  serviceCopy = service;
  selfCopy = self;
  sub_24BA2BB90();
}

@end