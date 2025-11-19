@interface SecureSpeakerRecognitionPhraseConfig
- (NSString)name;
- (SecureSpeakerRecognitionPhraseConfig)init;
- (SecureSpeakerRecognitionPhraseConfig)initWithName:(id)a3 satThreshold:(float)a4 satStrongAcceptThreshold:(float)a5 satStrongRejectThreshold:(float)a6 multiUserLowScoreThreshold:(int64_t)a7 multiUserHighScoreThreshold:(int64_t)a8 multiUserConfidentScoreThreshold:(int64_t)a9 multiUserDeltaScoreThreshold:(int64_t)a10;
@end

@implementation SecureSpeakerRecognitionPhraseConfig

- (NSString)name
{
  v2 = *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_name);
  v3 = *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_name + 8);

  v4 = sub_247994E74();

  return v4;
}

- (SecureSpeakerRecognitionPhraseConfig)initWithName:(id)a3 satThreshold:(float)a4 satStrongAcceptThreshold:(float)a5 satStrongRejectThreshold:(float)a6 multiUserLowScoreThreshold:(int64_t)a7 multiUserHighScoreThreshold:(int64_t)a8 multiUserConfidentScoreThreshold:(int64_t)a9 multiUserDeltaScoreThreshold:(int64_t)a10
{
  v18 = sub_247994E84();
  v19 = (self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_name);
  *v19 = v18;
  v19[1] = v20;
  *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_satThreshold) = a4;
  *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_satStrongAcceptThreshold) = a5;
  *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_satStrongRejectThreshold) = a6;
  *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_multiUserLowScoreThreshold) = a7;
  *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_multiUserHighScoreThreshold) = a8;
  *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_multiUserConfidentScoreThreshold) = a9;
  *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_multiUserDeltaScoreThreshold) = a10;
  v22.receiver = self;
  v22.super_class = SecureSpeakerRecognitionPhraseConfig;
  return [(SecureSpeakerRecognitionPhraseConfig *)&v22 init];
}

- (SecureSpeakerRecognitionPhraseConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end