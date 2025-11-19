@interface HGManagerInternal
- (HGConfigurationInternal)configuration;
- (HGManagerInternal)init;
- (HGManagerInternal)initWithDelegate:(id)a3 config:(id)a4;
- (void)muteAudioFeedbackWithSetting:(BOOL)a3;
- (void)setConfiguration:(id)a3;
- (void)start;
- (void)stopWith:(id)a3;
@end

@implementation HGManagerInternal

- (HGConfigurationInternal)configuration
{
  v3 = OBJC_IVAR___HGManagerInternal_configuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setConfiguration:(id)a3
{
  v5 = OBJC_IVAR___HGManagerInternal_configuration;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (HGManagerInternal)initWithDelegate:(id)a3 config:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = sub_2511247C8(a3, v6);
  swift_unknownObjectRelease();

  return v7;
}

- (void)start
{
  v2 = self;
  sub_251121984();
}

- (void)stopWith:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_251122774(v7, v6);
  sub_251102FFC(v7);
}

- (void)muteAudioFeedbackWithSetting:(BOOL)a3
{
  v4 = self;
  sub_251123CF4(a3);
}

- (HGManagerInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end