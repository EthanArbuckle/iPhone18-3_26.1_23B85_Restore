@interface HGConfigurationInternal
- (BOOL)enableRawDataLogging;
- (BOOL)requestPartGestures;
- (BOOL)singleDelivery;
- (HGAudioFeedbackConfigurationInternal)audioFeedbackConfig;
- (HGConfigurationInternal)init;
- (HGMLConfigurationInternal)mlConfig;
- (void)setAudioFeedbackConfig:(id)a3;
- (void)setEnableRawDataLogging:(BOOL)a3;
- (void)setMlConfig:(id)a3;
- (void)setRequestPartGestures:(BOOL)a3;
- (void)setSingleDelivery:(BOOL)a3;
@end

@implementation HGConfigurationInternal

- (HGMLConfigurationInternal)mlConfig
{
  v3 = OBJC_IVAR___HGConfigurationInternal_mlConfig;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMlConfig:(id)a3
{
  v5 = OBJC_IVAR___HGConfigurationInternal_mlConfig;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (HGAudioFeedbackConfigurationInternal)audioFeedbackConfig
{
  v3 = OBJC_IVAR___HGConfigurationInternal_audioFeedbackConfig;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAudioFeedbackConfig:(id)a3
{
  v5 = OBJC_IVAR___HGConfigurationInternal_audioFeedbackConfig;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (BOOL)requestPartGestures
{
  v3 = OBJC_IVAR___HGConfigurationInternal_requestPartGestures;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRequestPartGestures:(BOOL)a3
{
  v5 = OBJC_IVAR___HGConfigurationInternal_requestPartGestures;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)singleDelivery
{
  v3 = OBJC_IVAR___HGConfigurationInternal_singleDelivery;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSingleDelivery:(BOOL)a3
{
  v5 = OBJC_IVAR___HGConfigurationInternal_singleDelivery;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)enableRawDataLogging
{
  v3 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setEnableRawDataLogging:(BOOL)a3
{
  v5 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
  v6 = self;
  sub_2510F7DE4();
}

- (HGConfigurationInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end