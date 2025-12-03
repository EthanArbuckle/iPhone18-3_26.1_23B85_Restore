@interface ActivityConfigurationManager.StateListener
- (_TtCC15FocusSettingsUI28ActivityConfigurationManagerP33_2D32E0A4A8017E0B91C01818CA0AAB7813StateListener)init;
- (void)modeConfigurationService:(id)service didReceiveAvailableModesUpdate:(id)update;
@end

@implementation ActivityConfigurationManager.StateListener

- (void)modeConfigurationService:(id)service didReceiveAvailableModesUpdate:(id)update
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCC15FocusSettingsUI28ActivityConfigurationManagerP33_2D32E0A4A8017E0B91C01818CA0AAB7813StateListener_stateDidChange);
  selfCopy = self;

  v4(v5);
}

- (_TtCC15FocusSettingsUI28ActivityConfigurationManagerP33_2D32E0A4A8017E0B91C01818CA0AAB7813StateListener)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtCC15FocusSettingsUI28ActivityConfigurationManagerP33_2D32E0A4A8017E0B91C01818CA0AAB7813StateListener_stateDidChange);
  *v2 = nullsub_1;
  v2[1] = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ActivityConfigurationManager.StateListener();
  return [(ActivityConfigurationManager.StateListener *)&v4 init];
}

@end