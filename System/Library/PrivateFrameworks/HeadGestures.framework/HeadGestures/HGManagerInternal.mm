@interface HGManagerInternal
- (HGConfigurationInternal)configuration;
- (HGManagerInternal)init;
- (HGManagerInternal)initWithDelegate:(id)delegate config:(id)config;
- (void)muteAudioFeedbackWithSetting:(BOOL)setting;
- (void)setConfiguration:(id)configuration;
- (void)start;
- (void)stopWith:(id)with;
@end

@implementation HGManagerInternal

- (HGConfigurationInternal)configuration
{
  v3 = OBJC_IVAR___HGManagerInternal_configuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setConfiguration:(id)configuration
{
  v5 = OBJC_IVAR___HGManagerInternal_configuration;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = configuration;
  configurationCopy = configuration;
}

- (HGManagerInternal)initWithDelegate:(id)delegate config:(id)config
{
  swift_unknownObjectRetain();
  configCopy = config;
  v7 = sub_2511247C8(delegate, configCopy);
  swift_unknownObjectRelease();

  return v7;
}

- (void)start
{
  selfCopy = self;
  sub_251121984();
}

- (void)stopWith:(id)with
{
  v4 = _Block_copy(with);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_251125034;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_251122774(v7, v6);
  sub_251102FFC(v7);
}

- (void)muteAudioFeedbackWithSetting:(BOOL)setting
{
  selfCopy = self;
  sub_251123CF4(setting);
}

- (HGManagerInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end