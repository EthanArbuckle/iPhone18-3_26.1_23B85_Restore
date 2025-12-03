@interface HGConfigurationInternal
- (BOOL)enableRawDataLogging;
- (BOOL)requestPartGestures;
- (BOOL)singleDelivery;
- (HGAudioFeedbackConfigurationInternal)audioFeedbackConfig;
- (HGConfigurationInternal)init;
- (HGMLConfigurationInternal)mlConfig;
- (void)setAudioFeedbackConfig:(id)config;
- (void)setEnableRawDataLogging:(BOOL)logging;
- (void)setMlConfig:(id)config;
- (void)setRequestPartGestures:(BOOL)gestures;
- (void)setSingleDelivery:(BOOL)delivery;
@end

@implementation HGConfigurationInternal

- (HGMLConfigurationInternal)mlConfig
{
  v3 = OBJC_IVAR___HGConfigurationInternal_mlConfig;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMlConfig:(id)config
{
  v5 = OBJC_IVAR___HGConfigurationInternal_mlConfig;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = config;
  configCopy = config;
}

- (HGAudioFeedbackConfigurationInternal)audioFeedbackConfig
{
  v3 = OBJC_IVAR___HGConfigurationInternal_audioFeedbackConfig;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAudioFeedbackConfig:(id)config
{
  v5 = OBJC_IVAR___HGConfigurationInternal_audioFeedbackConfig;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = config;
  configCopy = config;
}

- (BOOL)requestPartGestures
{
  v3 = OBJC_IVAR___HGConfigurationInternal_requestPartGestures;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRequestPartGestures:(BOOL)gestures
{
  v5 = OBJC_IVAR___HGConfigurationInternal_requestPartGestures;
  swift_beginAccess();
  *(&self->super.isa + v5) = gestures;
}

- (BOOL)singleDelivery
{
  v3 = OBJC_IVAR___HGConfigurationInternal_singleDelivery;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSingleDelivery:(BOOL)delivery
{
  v5 = OBJC_IVAR___HGConfigurationInternal_singleDelivery;
  swift_beginAccess();
  *(&self->super.isa + v5) = delivery;
}

- (BOOL)enableRawDataLogging
{
  v3 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setEnableRawDataLogging:(BOOL)logging
{
  v5 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  swift_beginAccess();
  *(&self->super.isa + v5) = logging;
  selfCopy = self;
  sub_2510F7DE4();
}

- (HGConfigurationInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end