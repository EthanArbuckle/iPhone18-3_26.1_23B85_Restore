@interface HGAudioFeedbackConfigurationInternal
- (BOOL)enableAudioFeedback;
- (BOOL)enableWaitingTone;
- (BOOL)invertedConfirmationAudioFeedbackMode;
- (HGAudioFeedbackConfigurationInternal)init;
- (unsigned)audioSessionID;
- (void)enableAudioFeedbackForGestureWithGesture:(unint64_t)gesture enable:(BOOL)enable;
- (void)enableAudioFeedbackForPartGestureWithPart:(unint64_t)part enable:(BOOL)enable;
- (void)setAudioSessionID:(unsigned int)d;
- (void)setEnableAudioFeedback:(BOOL)feedback;
- (void)setEnableWaitingTone:(BOOL)tone;
- (void)setInvertedConfirmationAudioFeedbackMode:(BOOL)mode;
@end

@implementation HGAudioFeedbackConfigurationInternal

- (BOOL)enableAudioFeedback
{
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setEnableAudioFeedback:(BOOL)feedback
{
  v5 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  swift_beginAccess();
  *(&self->super.isa + v5) = feedback;
}

- (BOOL)invertedConfirmationAudioFeedbackMode
{
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setInvertedConfirmationAudioFeedbackMode:(BOOL)mode
{
  v5 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode;
  swift_beginAccess();
  *(&self->super.isa + v5) = mode;
}

- (BOOL)enableWaitingTone
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_251130CA8();

  return v5;
}

- (void)setEnableWaitingTone:(BOOL)tone
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_251130CB8();
}

- (unsigned)audioSessionID
{
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAudioSessionID:(unsigned int)d
{
  v5 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  swift_beginAccess();
  *(&self->super.isa + v5) = d;
}

- (void)enableAudioFeedbackForGestureWithGesture:(unint64_t)gesture enable:(BOOL)enable
{
  selfCopy = self;
  sub_2510F97C8(gesture, enable);
}

- (void)enableAudioFeedbackForPartGestureWithPart:(unint64_t)part enable:(BOOL)enable
{
  selfCopy = self;
  sub_2510F9AF0(part, enable);
}

- (HGAudioFeedbackConfigurationInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end