@interface HGAudioFeedbackConfiguration
- (BOOL)enableAudioFeedback;
- (BOOL)enableWaitingTone;
- (BOOL)invertedConfirmationAudioFeedbackMode;
- (HGAudioFeedbackConfiguration)init;
- (unsigned)audioSessionID;
@end

@implementation HGAudioFeedbackConfiguration

- (HGAudioFeedbackConfiguration)init
{
  v8.receiver = self;
  v8.super_class = HGAudioFeedbackConfiguration;
  v2 = [(HGAudioFeedbackConfiguration *)&v8 init];
  if (v2)
  {
    v3 = [[HGAudioFeedbackConfigurationInternal alloc] initWithEnableAudioFeedback:0 enableWaitingTone:0 audioSessionID:0];
    [(HGAudioFeedbackConfiguration *)v2 setInternal:v3];

    internal = [(HGAudioFeedbackConfiguration *)v2 internal];
    -[HGAudioFeedbackConfiguration setAudioSessionID:](v2, "setAudioSessionID:", [internal audioSessionID]);

    internal2 = [(HGAudioFeedbackConfiguration *)v2 internal];
    -[HGAudioFeedbackConfiguration setEnableAudioFeedback:](v2, "setEnableAudioFeedback:", [internal2 enableAudioFeedback]);

    internal3 = [(HGAudioFeedbackConfiguration *)v2 internal];
    -[HGAudioFeedbackConfiguration setEnableWaitingTone:](v2, "setEnableWaitingTone:", [internal3 enableWaitingTone]);
  }

  return v2;
}

- (BOOL)enableWaitingTone
{
  internal = [(HGAudioFeedbackConfiguration *)self internal];
  enableWaitingTone = [internal enableWaitingTone];

  return enableWaitingTone;
}

- (BOOL)enableAudioFeedback
{
  internal = [(HGAudioFeedbackConfiguration *)self internal];
  enableAudioFeedback = [internal enableAudioFeedback];

  return enableAudioFeedback;
}

- (unsigned)audioSessionID
{
  internal = [(HGAudioFeedbackConfiguration *)self internal];
  audioSessionID = [internal audioSessionID];

  return audioSessionID;
}

- (BOOL)invertedConfirmationAudioFeedbackMode
{
  internal = [(HGAudioFeedbackConfiguration *)self internal];
  invertedConfirmationAudioFeedbackMode = [internal invertedConfirmationAudioFeedbackMode];

  return invertedConfirmationAudioFeedbackMode;
}

@end