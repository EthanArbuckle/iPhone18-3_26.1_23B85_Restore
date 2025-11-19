@interface HGAudioFeedbackConfigurationInternal
- (BOOL)enableAudioFeedback;
- (BOOL)enableWaitingTone;
- (BOOL)invertedConfirmationAudioFeedbackMode;
- (HGAudioFeedbackConfigurationInternal)init;
- (unsigned)audioSessionID;
- (void)enableAudioFeedbackForGestureWithGesture:(unint64_t)a3 enable:(BOOL)a4;
- (void)enableAudioFeedbackForPartGestureWithPart:(unint64_t)a3 enable:(BOOL)a4;
- (void)setAudioSessionID:(unsigned int)a3;
- (void)setEnableAudioFeedback:(BOOL)a3;
- (void)setEnableWaitingTone:(BOOL)a3;
- (void)setInvertedConfirmationAudioFeedbackMode:(BOOL)a3;
@end

@implementation HGAudioFeedbackConfigurationInternal

- (BOOL)enableAudioFeedback
{
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setEnableAudioFeedback:(BOOL)a3
{
  v5 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)invertedConfirmationAudioFeedbackMode
{
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setInvertedConfirmationAudioFeedbackMode:(BOOL)a3
{
  v5 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)enableWaitingTone
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_251130CA8();

  return v5;
}

- (void)setEnableWaitingTone:(BOOL)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_251130CB8();
}

- (unsigned)audioSessionID
{
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAudioSessionID:(unsigned int)a3
{
  v5 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)enableAudioFeedbackForGestureWithGesture:(unint64_t)a3 enable:(BOOL)a4
{
  v6 = self;
  sub_2510F97C8(a3, a4);
}

- (void)enableAudioFeedbackForPartGestureWithPart:(unint64_t)a3 enable:(BOOL)a4
{
  v6 = self;
  sub_2510F9AF0(a3, a4);
}

- (HGAudioFeedbackConfigurationInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end