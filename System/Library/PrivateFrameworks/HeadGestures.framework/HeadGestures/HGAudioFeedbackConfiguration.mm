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

    v4 = [(HGAudioFeedbackConfiguration *)v2 internal];
    -[HGAudioFeedbackConfiguration setAudioSessionID:](v2, "setAudioSessionID:", [v4 audioSessionID]);

    v5 = [(HGAudioFeedbackConfiguration *)v2 internal];
    -[HGAudioFeedbackConfiguration setEnableAudioFeedback:](v2, "setEnableAudioFeedback:", [v5 enableAudioFeedback]);

    v6 = [(HGAudioFeedbackConfiguration *)v2 internal];
    -[HGAudioFeedbackConfiguration setEnableWaitingTone:](v2, "setEnableWaitingTone:", [v6 enableWaitingTone]);
  }

  return v2;
}

- (BOOL)enableWaitingTone
{
  v2 = [(HGAudioFeedbackConfiguration *)self internal];
  v3 = [v2 enableWaitingTone];

  return v3;
}

- (BOOL)enableAudioFeedback
{
  v2 = [(HGAudioFeedbackConfiguration *)self internal];
  v3 = [v2 enableAudioFeedback];

  return v3;
}

- (unsigned)audioSessionID
{
  v2 = [(HGAudioFeedbackConfiguration *)self internal];
  v3 = [v2 audioSessionID];

  return v3;
}

- (BOOL)invertedConfirmationAudioFeedbackMode
{
  v2 = [(HGAudioFeedbackConfiguration *)self internal];
  v3 = [v2 invertedConfirmationAudioFeedbackMode];

  return v3;
}

@end